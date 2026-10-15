--2.1 PERF_REVIEWS cədvəlini yaradın: düzgün tiplər (review_date DATE, perf_score  NUMBER(2,1)) və constraint-lər: PRIMARY KEY, NOT NULL (employee_id,  review_year), CHECK (bal 1–5), CHECK (rating_label IN  ('Exceeds','Meets','Below')), CHECK (overtime 0–400), CHECK (projects ≥ 0),  UNIQUE (employee_id, review_year). Constraint-lərə ad verin (məs. chk_score).--
CREATE TABLE PERF_REVIEWS (
    REVIEW_ID NUMBER,
    EMPLOYEE_ID NUMBER NOT NULL,
    REVIEW_YEAR NUMBER NOT NULL,
    REVIEW_DATE DATE,
    PERF_SCORE NUMBER(2,1),
    RATING_LABEL VARCHAR2(20),
    PROJECTS_COMPLETED NUMBER,
    OVERTIME_HOURS NUMBER,
    CONSTRAINT PK_PERF_REVIEWS PRIMARY KEY (REVIEW_ID),
    CONSTRAINT CHK_PERF_SCORE CHECK (PERF_SCORE BETWEEN 1 AND 5),
    CONSTRAINT CHK_RATING_LABEL CHECK (RATING_LABEL IN ('Exceeds', 'Meets', 'Below')),
    CONSTRAINT CHK_OVERTIME CHECK (OVERTIME_HOURS BETWEEN 0 AND 400),
    CONSTRAINT CHK_PROJECTS CHECK (PROJECTS_COMPLETED >= 0),
    CONSTRAINT UQ_EMPLOYEE_YEAR UNIQUE (EMPLOYEE_ID, REVIEW_YEAR)
);

--2.2 perf_review_seq SEQUENCE yaradın və yeni review_id üçün istifadə edin.--
CREATE SEQUENCE perf_review_seq
START WITH 1
INCREMENT BY 1

SELECT perf_review_seq.NEXTVAL 
FROM DUAL

--2.3 Dublikatları aradan qaldırın: ROW_NUMBER() OVER (PARTITION BY employee_id,  review_year ORDER BY review_id) — yalnız rn = 1 qalır.--
SELECT *
FROM (SELECT review_id, employee_id, review_year,
ROW_NUMBER() OVER ( PARTITION BY employee_id, review_year ORDER BY review_id ) AS rn
FROM perf_reviews_raw
)
WHERE rn = 1;

--2.4 Orphan sətirləri çıxarın: hr.employees-də olmayan employee_id-lər. Yoxlama  SELECT-ində orphan-ları NOT EXISTS ilə tapın; INSERT-də isə EXISTS ilə yalnız  mövcud işçiləri saxlayın.--
SELECT p.*
FROM perf_reviews_raw p
WHERE NOT EXISTS (
    SELECT 1
    FROM hr.employees e
    WHERE e.employee_id = p.employee_id
);

--2.5 Tarixi mətndən DATE-ə çevirin. İki format var: YYYY-MM-DD və DD.MM.YYYY. CASE  + TO_DATE ilə hər formatı ayrıca çevirin. İli review_year-a uyğun gəlməyən tarix  → NULL.--
SELECT employee_id, review_date, review_year,
CASE WHEN SUBSTR(review_date, 1, 4) = TO_CHAR(review_year)
     THEN TO_DATE(review_date, 'YYYY-MM-DD')
     WHEN SUBSTR(review_date, 7, 4) = TO_CHAR(review_year)
     THEN TO_DATE(review_date, 'DD.MM.YYYY')
     ELSE NULL
     END AS yoxlanmis_tarix
FROM perf_reviews_raw;


--2.6 Aralıqdan kənar dəyərləri NULL edin: perf_score, overtime_hours, projects_completed (Bölmə 3.2 qaydaları).--
SELECT employee_id, perf_score,
CASE WHEN perf_score BETWEEN 1 AND 5 THEN perf_score ELSE NULL
END AS yoxlanmis_bal,
       overtime_hours,
CASE WHEN overtime_hours BETWEEN 0 AND 400 THEN overtime_hours ELSE NULL
END AS yoxlanmis_overtime,
       projects_completed,
CASE WHEN projects_completed >= 0 THEN projects_completed ELSE NULL END AS yoxlanmis_layihe
FROM perf_reviews_raw;

--2.7 rating_label-i baldan yenidən hesablayın (CASE). Əlavə: köhnə label-i TRIM  + INITCAP ilə standartlaşdırıb yeni label ilə müqayisə edin — neçə sətirdə  uyğunsuzluq var? (Uyğunsuzluq = hər ikisi NULL olmayan və bir-birindən fərqli  olan label-lər.)--
SELECT employee_id, perf_score,
INITCAP(TRIM(rating_label)) AS old_label,
CASE    WHEN perf_score >= 4 THEN 'Exceeds'
        WHEN perf_score >= 3 THEN 'Meets'
        WHEN perf_score < 3 THEN 'Below'
        ELSE NULL
       END AS new_label
FROM perf_reviews_raw;

--2.8 Bütün təmizləməni INSERT INTO perf_reviews ... SELECT ... ilə yerinə  yetirin və COMMIT edin. Constraint xətası çıxırsa — təmizləmə tam deyil (bax  FAQ).--
INSERT INTO perf_reviews (review_id, employee_id, review_year, review_date, perf_score, rating_label, projects_completed, overtime_hours
)
SELECT  perf_review_seq.NEXTVAL, employee_id, review_year, yoxlanmis_tarix, yoxlanmis_bal,  new_rating_label, yoxlanmis_layihe, yoxlanmis_overtime
FROM (
    SELECT review_id,  employee_id, review_year, review_date, perf_score, rating_label, projects_completed, overtime_hours,
        ROW_NUMBER() OVER (PARTITION BY employee_id, review_year ORDER BY review_id ) AS rn,
        CASE
            WHEN SUBSTR(review_date, 1, 4) = TO_CHAR(review_year)
            THEN TO_DATE(review_date, 'YYYY-MM-DD')
            WHEN SUBSTR(review_date, 7, 4) = TO_CHAR(review_year)
            THEN TO_DATE(review_date, 'DD.MM.YYYY')
            ELSE NULL
        END AS yoxlanmis_tarix,
        CASE WHEN perf_score BETWEEN 1 AND 5 THEN perf_score ELSE NULL
        END AS yoxlanmis_bal,
        CASE WHEN overtime_hours BETWEEN 0 AND 400 THEN overtime_hours ELSE NULL
        END AS yoxlanmis_overtime,
        CASE WHEN projects_completed >= 0 THEN projects_completed ELSE NULL
        END AS yoxlanmis_layihe,
        CASE
            WHEN perf_score >= 4 THEN 'Exceeds'
            WHEN perf_score >= 3 THEN 'Meets'
            WHEN perf_score < 3 THEN 'Below'
            ELSE NULL
        END AS new_rating_label
    FROM perf_reviews_raw
) cleaned
WHERE rn = 1
  AND EXISTS (
      SELECT 1
      FROM hr.employees e
      WHERE e.employee_id = cleaned.employee_id
  );

COMMIT;

-- 2.9 Before/After hesabı: Raw sətir sayı, silinən dublikat, silinən orphan,NULL edilən dəyərlər və təmiz sətir sayı.--

SELECT 'Raw rows' AS metric, COUNT(*) AS total
FROM perf_reviews_raw

UNION ALL

SELECT 'Clean rows', COUNT(*)
FROM perf_reviews;
