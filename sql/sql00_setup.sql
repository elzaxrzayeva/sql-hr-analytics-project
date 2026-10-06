-- =====================================================================
-- BDA Data Analitika | SQL Final Layihe | Setup skripti
-- Cedvel: PERF_REVIEWS_RAW (ishchi performans qiymetlendirmeleri, xam data)
-- Bu skripti FreeSQL-de oz schema-nizda BIR DEFE tam ishledin (Run Script).
-- Diqqet: data qesden 'chirkli'dir (dirty data). Onu temizlemek sizin taskinizdir.
-- =====================================================================

BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE perf_reviews_raw PURGE';
EXCEPTION
   WHEN OTHERS THEN NULL;
END;
/

CREATE TABLE perf_reviews_raw (
   review_id           NUMBER,
   employee_id         NUMBER,
   review_year         NUMBER,
   review_date         VARCHAR2(20),
   perf_score          NUMBER,
   rating_label        VARCHAR2(20),
   projects_completed  NUMBER,
   overtime_hours      NUMBER
);

INSERT INTO perf_reviews_raw VALUES (1, 164, 2024, '2024-12-06', 3.7, 'MEETS', 10, 87);
INSERT INTO perf_reviews_raw VALUES (2, 170, 2024, '2024-12-13', 4.0, 'exceeds', 15, 83);
INSERT INTO perf_reviews_raw VALUES (3, 131, 2025, '2025-12-03', 3.8, 'MEETS', 5, 159);
INSERT INTO perf_reviews_raw VALUES (4, 201, 2025, '20.12.2025', 3.8, 'meets ', 8, 90);
INSERT INTO perf_reviews_raw VALUES (5, 166, 2025, '2025-12-18', 4.7, 'EXCEEDS ', 17, 71);
INSERT INTO perf_reviews_raw VALUES (6, 107, 2025, '2025-12-09', 5.0, 'exceeds', 11, 173);
INSERT INTO perf_reviews_raw VALUES (7, 192, 2024, '12.12.2024', 4.0, 'Exceeds', 6, 202);
INSERT INTO perf_reviews_raw VALUES (8, 171, 2025, '2025-12-08', 4.8, '  Exceeds', 16, 95);
INSERT INTO perf_reviews_raw VALUES (9, 151, 2024, '18.12.2024', 3.8, 'meets ', 10, 100);
INSERT INTO perf_reviews_raw VALUES (10, 112, 2025, '2025-12-07', 3.8, ' Meets', 9, 57);
INSERT INTO perf_reviews_raw VALUES (11, 207, 2025, '2025-12-05', 4.2, 'Exceeds', 6, 90);
INSERT INTO perf_reviews_raw VALUES (12, 118, 2024, '2024-12-01', 2.7, 'Below', 1, 33);
INSERT INTO perf_reviews_raw VALUES (13, 191, 2024, '2024-12-16', 4.5, '  Exceeds', 5, 283);
INSERT INTO perf_reviews_raw VALUES (14, 149, 2025, '2025-12-12', 4.3, 'exceeds', 12, 103);
INSERT INTO perf_reviews_raw VALUES (15, 177, 2024, '09.12.2024', 3.3, 'meets ', 10, 106);
INSERT INTO perf_reviews_raw VALUES (16, 189, 2024, '2024-12-08', 4.0, 'EXCEEDS ', 6, 290);
INSERT INTO perf_reviews_raw VALUES (17, 111, 2025, '2025-12-13', 4.2, 'exceeds', 7, 59);
INSERT INTO perf_reviews_raw VALUES (18, 206, 2025, '2025-12-17', 3.7, 'Meets', 6, 25);
INSERT INTO perf_reviews_raw VALUES (19, 152, 2025, '2025-12-05', 2.9, ' BELOW', 15, 130);
INSERT INTO perf_reviews_raw VALUES (20, 191, 2025, '2025-12-09', 4.0, 'EXCEEDS ', 8, 174);
INSERT INTO perf_reviews_raw VALUES (21, 122, 2025, '13.12.2025', 4.2, 'EXCEEDS ', 7, 119);
INSERT INTO perf_reviews_raw VALUES (22, 140, 2025, '2025-12-09', 4.6, 'Exceeds', 3, 142);
INSERT INTO perf_reviews_raw VALUES (23, 199, 2025, '2025-12-17', 3.3, ' Meets', 7, 186);
INSERT INTO perf_reviews_raw VALUES (24, 188, 2024, '2024-12-04', 4.1, 'exceeds', 5, 173);
INSERT INTO perf_reviews_raw VALUES (25, 132, 2025, '2025-12-10', 4.2, '  Exceeds', 4, 169);
INSERT INTO perf_reviews_raw VALUES (26, 163, 2025, '2025-12-10', 3.1, NULL, 17, 55);
INSERT INTO perf_reviews_raw VALUES (27, 202, 2024, '2024-12-05', 4.1, 'exceeds', 3, 93);
INSERT INTO perf_reviews_raw VALUES (28, 186, 2024, '2024-12-04', 3.8, 'MEETS', 5, 189);
INSERT INTO perf_reviews_raw VALUES (29, 167, 2025, '2025-12-18', 4.5, 'exceeds', 8, 68);
INSERT INTO perf_reviews_raw VALUES (30, 170, 2025, '2025-12-10', 4.1, 'Exceeds', 7, 132);
INSERT INTO perf_reviews_raw VALUES (31, 200, 2024, '2024-12-16', 3.5, ' Meets', 7, 37);
INSERT INTO perf_reviews_raw VALUES (32, 139, 2024, '12.12.2024', 3.1, 'Meets', 4, 202);
INSERT INTO perf_reviews_raw VALUES (33, 122, 2024, '2024-12-10', 4.0, 'EXCEEDS ', 6, 164);
INSERT INTO perf_reviews_raw VALUES (34, 123, 2024, '04.12.2024', 4.1, '  Exceeds', 3, 149);
INSERT INTO perf_reviews_raw VALUES (35, 124, 2025, '2025-12-16', 3.9, ' Meets', 8, 141);
INSERT INTO perf_reviews_raw VALUES (36, 100, 2025, '2025-12-20', 3.9, 'Meets', 7, 99);
INSERT INTO perf_reviews_raw VALUES (37, 126, 2024, '14.12.2024', 3.2, ' Meets', 5, 189);
INSERT INTO perf_reviews_raw VALUES (38, 105, 2024, '2024-12-01', 4.8, '  Exceeds', 9, 210);
INSERT INTO perf_reviews_raw VALUES (39, 110, 2024, '2024-12-04', 3.9, ' Meets', 8, 100);
INSERT INTO perf_reviews_raw VALUES (40, 146, 2024, '2024-12-04', 4.2, 'Exceeds', 18, 88);
INSERT INTO perf_reviews_raw VALUES (41, 127, 2025, '06.12.2025', 4.2, 'exceeds', 8, 115);
INSERT INTO perf_reviews_raw VALUES (42, 137, 2025, '07.12.2025', 3.2, 'Meets', 5, 182);
INSERT INTO perf_reviews_raw VALUES (43, 165, 2025, '01.12.2025', 4.5, 'Exceeds', 16, 127);
INSERT INTO perf_reviews_raw VALUES (44, 175, 2024, '2024-12-12', 3.5, 'meets ', 18, 147);
INSERT INTO perf_reviews_raw VALUES (45, 143, 2025, '2025-12-11', 3.8, ' Meets', 4, 187);
INSERT INTO perf_reviews_raw VALUES (46, 106, 2024, '18.12.2024', 4.5, 'exceeds', 13, 183);
INSERT INTO perf_reviews_raw VALUES (47, 160, 2025, '2025-12-05', 3.0, ' Meets', 17, 141);
INSERT INTO perf_reviews_raw VALUES (48, 173, 2025, '2025-12-14', 4.8, '  Exceeds', 14, 114);
INSERT INTO perf_reviews_raw VALUES (49, 134, 2024, '15.12.2024', 3.3, 'Meets', 5, -15);
INSERT INTO perf_reviews_raw VALUES (50, 145, 2024, '2024-12-12', 3.9, 'MEETS', 17, 57);
INSERT INTO perf_reviews_raw VALUES (51, 144, 2025, '2025-12-17', 3.7, 'meets ', 5, 197);
INSERT INTO perf_reviews_raw VALUES (52, 109, 2024, '2024-12-04', 3.2, 'MEETS', NULL, 99);
INSERT INTO perf_reviews_raw VALUES (53, 161, 2025, '19.12.2025', 3.2, ' Meets', 15, 89);
INSERT INTO perf_reviews_raw VALUES (54, 152, 2024, '2024-12-14', 2.9, 'Below', 11, 1200);
INSERT INTO perf_reviews_raw VALUES (55, 153, 2025, '2025-12-09', 2.8, 'below', 16, 93);
INSERT INTO perf_reviews_raw VALUES (56, 194, 2024, '2024-12-17', 4.3, NULL, 7, 257);
INSERT INTO perf_reviews_raw VALUES (57, 120, 2025, '2025-12-08', 4.0, 'Exceeds', 7, 160);
INSERT INTO perf_reviews_raw VALUES (58, 187, 2024, '2024-12-10', -1, 'Meets', 7, 180);
INSERT INTO perf_reviews_raw VALUES (59, 115, 2025, '2025-12-10', 2.5, 'Below', 4, 25);
INSERT INTO perf_reviews_raw VALUES (60, 141, 2024, '2024-12-09', 3.0, 'meets ', 3, 163);
INSERT INTO perf_reviews_raw VALUES (61, 177, 2025, '05.12.2025', 3.1, 'MEETS', 16, 119);
INSERT INTO perf_reviews_raw VALUES (62, 153, 2024, '2024-12-02', 3.0, 'MEETS', 14, 133);
INSERT INTO perf_reviews_raw VALUES (63, 132, 2024, '15.12.2024', 4.4, 'Exceeds', 6, 173);
INSERT INTO perf_reviews_raw VALUES (64, 154, 2025, '08.12.2025', 3.7, ' Meets', 6, 110);
INSERT INTO perf_reviews_raw VALUES (65, 174, 2024, '2024-12-16', 2.6, 'below', 11, 101);
INSERT INTO perf_reviews_raw VALUES (66, 138, 2025, '04.12.2025', 3.7, ' Meets', 4, 165);
INSERT INTO perf_reviews_raw VALUES (67, 185, 2024, '20.12.2024', 4.2, 'Below', 5, 250);
INSERT INTO perf_reviews_raw VALUES (68, 103, 2025, '2025-12-17', 4.5, 'exceeds', 7, 100);
INSERT INTO perf_reviews_raw VALUES (69, 117, 2025, '2025-12-07', 2.9, 'Below', 2, 31);
INSERT INTO perf_reviews_raw VALUES (70, 999, 2025, '2025-12-02', 3.9, 'Meets', 5, 75);
INSERT INTO perf_reviews_raw VALUES (71, 120, 2024, '2024-12-16', 4.0, '  Exceeds', 7, 117);
INSERT INTO perf_reviews_raw VALUES (72, 250, 2025, '11.12.2025', 3.1, 'Meets', 4, 40);
INSERT INTO perf_reviews_raw VALUES (73, 176, 2025, '05.12.2025', 3.5, 'MEETS', NULL, 105);
INSERT INTO perf_reviews_raw VALUES (74, 112, 2024, '16.12.2024', 3.8, 'MEETS', 6, 71);
INSERT INTO perf_reviews_raw VALUES (75, 168, 2024, '2024-12-01', 2.4, ' BELOW', 7, 97);
INSERT INTO perf_reviews_raw VALUES (76, 142, 2025, '11.12.2025', 2.8, 'Below', 6, 209);
INSERT INTO perf_reviews_raw VALUES (77, 124, 2024, '2024-12-01', 3.7, ' Meets', 7, 103);
INSERT INTO perf_reviews_raw VALUES (78, 126, 2025, '15.12.2025', 3.2, 'meets ', 4, 186);
INSERT INTO perf_reviews_raw VALUES (79, 118, 2025, '2025-12-20', 2.7, ' BELOW', 2, 17);
INSERT INTO perf_reviews_raw VALUES (80, 175, 2025, '12.12.2025', 3.7, 'meets ', 18, 102);
INSERT INTO perf_reviews_raw VALUES (81, 138, 2024, '2024-12-05', 3.6, 'Meets', 5, 122);
INSERT INTO perf_reviews_raw VALUES (82, 129, 2025, '07.12.2025', 3.8, 'MEETS', 8, 171);
INSERT INTO perf_reviews_raw VALUES (83, 108, 2025, '2025-12-08', 3.9, 'meets ', 9, 36);
INSERT INTO perf_reviews_raw VALUES (84, 102, 2024, '2024-12-04', 3.8, 'MEETS', 3, 77);
INSERT INTO perf_reviews_raw VALUES (85, 173, 2024, '08.12.2024', 4.6, 'Exceeds', 11, 71);
INSERT INTO perf_reviews_raw VALUES (86, 169, 2025, '2025-12-11', 2.8, 'below', 7, 112);
INSERT INTO perf_reviews_raw VALUES (87, 159, 2025, '2025-12-14', 3.3, 'Meets', 16, 54);
INSERT INTO perf_reviews_raw VALUES (88, 120, 2025, '2025-12-08', 4.0, 'Exceeds', 7, 160);
INSERT INTO perf_reviews_raw VALUES (89, 198, 2024, '04.12.2024', 4.6, 'Exceeds', 7, 288);
INSERT INTO perf_reviews_raw VALUES (90, 146, 2025, '2025-12-14', 4.1, 'Exceeds', 15, 90);
INSERT INTO perf_reviews_raw VALUES (91, 107, 2024, '2024-12-16', 4.8, 'exceeds', 11, 170);
INSERT INTO perf_reviews_raw VALUES (92, 159, 2024, '2024-12-12', 3.1, ' Meets', 17, 116);
INSERT INTO perf_reviews_raw VALUES (93, 192, 2025, '2025-12-07', 3.7, 'meets ', 5, 217);
INSERT INTO perf_reviews_raw VALUES (94, 203, 2025, '2025-12-12', 3.8, 'meets ', 6, 36);
INSERT INTO perf_reviews_raw VALUES (95, 108, 2024, '2024-12-17', 3.9, ' Meets', 7, 23);
INSERT INTO perf_reviews_raw VALUES (96, 119, 2024, '2024-12-18', 2.4, 'below', 3, 22);
INSERT INTO perf_reviews_raw VALUES (97, 201, 2024, '2024-12-18', 3.7, ' Meets', 4, 44);
INSERT INTO perf_reviews_raw VALUES (98, 156, 2025, '12.12.2025', 4.3, 'exceeds', 14, 79);
INSERT INTO perf_reviews_raw VALUES (99, 141, 2024, '2024-12-09', 3.0, 'meets ', 3, 163);
INSERT INTO perf_reviews_raw VALUES (100, 193, 2024, '2024-12-10', 4.0, 'exceeds', 7, 197);
INSERT INTO perf_reviews_raw VALUES (101, 135, 2025, '19.12.2025', 2.9, 'Below', 4, 178);
INSERT INTO perf_reviews_raw VALUES (102, 141, 2025, '2025-12-02', 3.2, 'MEETS', 4, 122);
INSERT INTO perf_reviews_raw VALUES (103, 205, 2025, '2025-12-03', 3.9, ' Meets', 8, 79);
INSERT INTO perf_reviews_raw VALUES (104, 169, 2024, '2024-12-08', 2.7, ' BELOW', 7, 66);
INSERT INTO perf_reviews_raw VALUES (105, 130, 2025, '2025-12-05', 3.4, 'Meets', 8, 130);
INSERT INTO perf_reviews_raw VALUES (106, 137, 2024, '2024-12-18', 3.1, 'Meets', 7, 206);
INSERT INTO perf_reviews_raw VALUES (107, 187, 2025, '2025-12-14', 3.2, 'MEETS', 7, 261);
INSERT INTO perf_reviews_raw VALUES (108, 200, 2025, '2025-12-11', 3.7, 'Meets', 8, 66);
INSERT INTO perf_reviews_raw VALUES (109, 180, 2025, '2025-12-16', 3.6, 'Meets', 8, 286);
INSERT INTO perf_reviews_raw VALUES (110, 103, 2024, '2024-12-12', 4.3, 'Exceeds', 10, 111);
INSERT INTO perf_reviews_raw VALUES (111, 111, 2024, '2024-12-18', 3.9, 'MEETS', 7, 52);
INSERT INTO perf_reviews_raw VALUES (112, 168, 2025, '2025-12-12', 2.2, 'exceeds', 9, 88);
INSERT INTO perf_reviews_raw VALUES (113, 104, 2025, '2025-12-15', 4.5, 'Exceeds', 12, 69);
INSERT INTO perf_reviews_raw VALUES (114, 103, 2025, '2025-12-17', 4.5, 'exceeds', 7, 100);
INSERT INTO perf_reviews_raw VALUES (115, 203, 2024, '2024-12-05', 3.6, 'meets ', 7, 54);
INSERT INTO perf_reviews_raw VALUES (116, 301, 2025, '2025-12-15', 2.8, 'below', 2, 30);
INSERT INTO perf_reviews_raw VALUES (117, 185, 2025, '03.12.2025', 3.7, 'Meets', 8, 241);
INSERT INTO perf_reviews_raw VALUES (118, 116, 2025, '2025-12-06', 0, 'MEETS', 4, 32);
INSERT INTO perf_reviews_raw VALUES (119, 147, 2025, '2025-12-02', 4.3, 'EXCEEDS ', 7, 142);
INSERT INTO perf_reviews_raw VALUES (120, 178, 2024, '05.12.2024', 3.2, 'MEETS', 18, 121);
INSERT INTO perf_reviews_raw VALUES (121, 194, 2025, '10.12.2025', 3.7, 'meets ', 7, 231);
INSERT INTO perf_reviews_raw VALUES (122, 119, 2025, '05.12.2025', 2.4, 'Exceeds', 3, 5);
INSERT INTO perf_reviews_raw VALUES (123, 125, 2024, '04.12.2024', 3.3, 'MEETS', 6, 173);
INSERT INTO perf_reviews_raw VALUES (124, 117, 2024, '2024-12-16', NULL, 'Meets', 1, 28);
INSERT INTO perf_reviews_raw VALUES (125, 129, 2024, '2024-12-15', 3.6, 'meets ', 8, 206);
INSERT INTO perf_reviews_raw VALUES (126, 121, 2025, '2027-12-10', 3.7, 'MEETS', 4, 120);
INSERT INTO perf_reviews_raw VALUES (127, 174, 2025, '2025-12-06', 2.8, 'Below', 18, 75);
INSERT INTO perf_reviews_raw VALUES (128, 115, 2024, '2024-12-14', 2.7, ' BELOW', 1, 40);
INSERT INTO perf_reviews_raw VALUES (129, 106, 2025, '04.12.2025', 4.8, 'exceeds', 11, 174);
INSERT INTO perf_reviews_raw VALUES (130, 140, 2024, '2024-12-10', 4.4, '  Exceeds', 4, 150);
INSERT INTO perf_reviews_raw VALUES (131, 102, 2025, '2025-12-16', 3.7, 'MEETS', 4, 60);
INSERT INTO perf_reviews_raw VALUES (132, 105, 2025, '2025-12-12', 5.0, '  Exceeds', 10, 179);
INSERT INTO perf_reviews_raw VALUES (133, 163, 2024, '2024-12-11', 3.0, 'meets ', 10, 120);
INSERT INTO perf_reviews_raw VALUES (134, 193, 2025, '2025-12-02', NULL, 'Exceeds', 6, 274);
INSERT INTO perf_reviews_raw VALUES (135, 148, 2025, '2025-12-12', 3.5, 'MEETS', 16, 126);
INSERT INTO perf_reviews_raw VALUES (136, 101, 2024, '16.12.2024', 4.0, 'Exceeds', 6, 95);
INSERT INTO perf_reviews_raw VALUES (137, 164, 2025, '2025-12-18', 3.9, ' Meets', 11, 86);
INSERT INTO perf_reviews_raw VALUES (138, 195, 2025, '2025-12-16', 3.9, ' Meets', 8, 210);
INSERT INTO perf_reviews_raw VALUES (139, 147, 2024, '2024-12-11', 4.3, 'Exceeds', -3, 75);
INSERT INTO perf_reviews_raw VALUES (140, 151, 2025, '05.12.2025', 4.1, '  Exceeds', 6, 79);
INSERT INTO perf_reviews_raw VALUES (141, 196, 2025, '2025-12-09', 3.5, 'meets ', 7, 281);
INSERT INTO perf_reviews_raw VALUES (142, 101, 2025, '2025-12-08', 4.0, 'EXCEEDS ', 7, 20);
INSERT INTO perf_reviews_raw VALUES (143, 189, 2025, '11.12.2025', 3.5, 'Meets', 5, 213);
INSERT INTO perf_reviews_raw VALUES (144, 180, 2024, '2024-12-11', 4.2, 'exceeds', 8, 182);
INSERT INTO perf_reviews_raw VALUES (145, 144, 2024, '2024-12-04', 3.7, 'Meets', 5, 197);
INSERT INTO perf_reviews_raw VALUES (146, 161, 2024, '2024-12-18', 3.0, 'Meets', 17, 77);
INSERT INTO perf_reviews_raw VALUES (147, 158, 2025, '2025-12-06', 9, '  Exceeds', 12, 130);
INSERT INTO perf_reviews_raw VALUES (148, 150, 2024, '08.12.2024', 3.4, 'MEETS', 8, 149);
INSERT INTO perf_reviews_raw VALUES (149, 114, 2024, '2024-12-16', 3.0, 'Meets', 4, 66);
INSERT INTO perf_reviews_raw VALUES (150, 150, 2025, '2025-12-06', 3.6, ' Meets', 6, 119);
INSERT INTO perf_reviews_raw VALUES (151, 162, 2025, '2025-12-06', 2.3, 'below', 7, 115);
INSERT INTO perf_reviews_raw VALUES (152, 157, 2025, '2027-12-10', 3.9, 'meets ', 13, 131);
INSERT INTO perf_reviews_raw VALUES (153, 154, 2024, '2024-12-02', 3.6, 'Meets', 6, 134);
INSERT INTO perf_reviews_raw VALUES (154, 196, 2024, '2024-12-18', 3.9, 'Meets', 4, 280);
INSERT INTO perf_reviews_raw VALUES (155, 116, 2024, '2024-12-17', 3.0, 'Meets', 4, 21);
INSERT INTO perf_reviews_raw VALUES (156, 204, 2025, '2025-12-20', 3.6, 'MEETS', 7, 82);
INSERT INTO perf_reviews_raw VALUES (157, 145, 2025, '2025-12-14', 4.2, 'Exceeds', 10, 53);
INSERT INTO perf_reviews_raw VALUES (158, 181, 2025, '2025-12-14', 3.6, 'Meets', 8, 215);
INSERT INTO perf_reviews_raw VALUES (159, 182, 2024, '2024-12-06', 4.5, '  Exceeds', 5, 171);
INSERT INTO perf_reviews_raw VALUES (160, 125, 2025, '2025-12-19', 3.2, 'MEETS', 4, 189);
INSERT INTO perf_reviews_raw VALUES (161, 100, 2024, '2024-12-17', 3.9, 'Meets', 4, 33);
INSERT INTO perf_reviews_raw VALUES (162, 133, 2024, '2024-12-04', 3.4, ' Meets', 7, 177);
INSERT INTO perf_reviews_raw VALUES (163, 183, 2024, '20.12.2024', 3.7, 'MEETS', 6, 223);
INSERT INTO perf_reviews_raw VALUES (164, 114, 2025, '2025-12-09', 3.0, 'meets ', 6, 82);
INSERT INTO perf_reviews_raw VALUES (165, 188, 2025, '14.12.2025', 3.6, 'Meets', 4, 175);
INSERT INTO perf_reviews_raw VALUES (166, 205, 2024, '2024-12-17', 4.0, 'exceeds', 7, 66);
INSERT INTO perf_reviews_raw VALUES (167, 202, 2025, '2025-12-02', 4.2, 'exceeds', 9, 55);
INSERT INTO perf_reviews_raw VALUES (168, 171, 2024, '2024-12-04', 4.6, 'exceeds', 14, 121);
INSERT INTO perf_reviews_raw VALUES (169, 148, 2024, '2024-12-02', 3.7, 'meets ', 14, 66);
INSERT INTO perf_reviews_raw VALUES (170, 121, 2024, '2024-12-17', 3.6, 'meets ', 3, 137);
INSERT INTO perf_reviews_raw VALUES (171, 160, 2024, '2024-12-18', NULL, 'exceeds', 10, 143);
INSERT INTO perf_reviews_raw VALUES (172, 181, 2024, '2024-12-18', 4.3, 'exceeds', 4, 236);
INSERT INTO perf_reviews_raw VALUES (173, 127, 2024, '2024-12-13', 4.5, 'Exceeds', 4, 114);
INSERT INTO perf_reviews_raw VALUES (174, 134, 2025, '2025-12-14', 3.6, 'MEETS', 8, 179);
INSERT INTO perf_reviews_raw VALUES (175, 150, 2025, '2025-12-06', 3.6, ' Meets', 6, 119);
INSERT INTO perf_reviews_raw VALUES (176, 139, 2025, '2025-12-04', NULL, '  Exceeds', 5, 174);
INSERT INTO perf_reviews_raw VALUES (177, 162, 2024, '2024-12-18', 2.4, 'Below', 18, 116);
INSERT INTO perf_reviews_raw VALUES (178, 201, 2024, '2024-12-18', 3.7, ' Meets', 4, 44);
INSERT INTO perf_reviews_raw VALUES (179, 198, 2025, '2025-12-07', 4.1, 'Exceeds', 6, 173);
INSERT INTO perf_reviews_raw VALUES (180, 183, 2025, '2025-12-16', 3.2, ' Meets', 3, -40);
INSERT INTO perf_reviews_raw VALUES (181, 176, 2024, '15.12.2024', 3.7, 'Meets', 15, 145);
INSERT INTO perf_reviews_raw VALUES (182, 104, 2024, '2024-12-18', 4.4, 'exceeds', 9, 78);
INSERT INTO perf_reviews_raw VALUES (183, 133, 2025, '2025-12-09', 3.4, 'MEETS', 4, 122);
INSERT INTO perf_reviews_raw VALUES (184, 157, 2024, '2024-12-07', 4.0, '  Exceeds', 11, 97);
INSERT INTO perf_reviews_raw VALUES (185, 172, 2025, '03.12.2025', 4.3, 'BELOW', 18, 113);
INSERT INTO perf_reviews_raw VALUES (186, 123, 2025, '2025-12-02', 4.0, 'Exceeds', 8, 144);
INSERT INTO perf_reviews_raw VALUES (187, 172, 2024, '12.12.2024', 4.0, '  Exceeds', 7, 60);
INSERT INTO perf_reviews_raw VALUES (188, 182, 2025, '18.12.2025', 3.8, 'Meets', 5, 259);
INSERT INTO perf_reviews_raw VALUES (189, 131, 2024, '14.12.2024', 3.9, 'MEETS', 6, 178);
INSERT INTO perf_reviews_raw VALUES (190, 142, 2024, '2024-12-18', 3.0, NULL, 5, 183);
INSERT INTO perf_reviews_raw VALUES (191, 179, 2025, '2025-12-13', 3.7, 'MEETS', 14, 52);
INSERT INTO perf_reviews_raw VALUES (192, 184, 2024, '04.12.2024', 3.6, 'Meets', 5, 254);
INSERT INTO perf_reviews_raw VALUES (193, 158, 2024, '19.12.2024', 3.6, 'Meets', 9, 89);
INSERT INTO perf_reviews_raw VALUES (194, 143, 2024, '20.12.2024', 3.7, 'Meets', 6, 114);
INSERT INTO perf_reviews_raw VALUES (195, 135, 2024, '2024-12-06', 3.2, 'MEETS', 7, 155);
INSERT INTO perf_reviews_raw VALUES (196, 184, 2025, '2025-12-11', 3.2, 'meets ', 4, 172);
INSERT INTO perf_reviews_raw VALUES (197, 206, 2024, '11.12.2024', 3.9, 'Meets', 8, 38);
INSERT INTO perf_reviews_raw VALUES (198, 178, 2025, '2025-12-04', 3.1, 'Meets', 10, 84);
INSERT INTO perf_reviews_raw VALUES (199, 110, 2025, '2025-12-15', 45, '  Exceeds', 8, 80);
INSERT INTO perf_reviews_raw VALUES (200, 186, 2025, '2025-12-08', 3.2, 'Meets', 6, 999);
INSERT INTO perf_reviews_raw VALUES (201, 156, 2024, '2024-12-05', 4.2, 'exceeds', 12, 145);
INSERT INTO perf_reviews_raw VALUES (202, 109, 2025, '2025-12-16', 3.3, 'meets ', 6, 38);
INSERT INTO perf_reviews_raw VALUES (203, 204, 2024, '06.12.2024', NULL, '  Exceeds', 6, 39);
INSERT INTO perf_reviews_raw VALUES (204, 149, 2024, '14.12.2024', 4.4, '  Exceeds', 8, 124);
INSERT INTO perf_reviews_raw VALUES (205, 130, 2024, '2024-12-17', 6.5, '  Exceeds', 7, 137);
INSERT INTO perf_reviews_raw VALUES (206, 195, 2024, '2024-12-17', 4.4, '  Exceeds', 5, 246);
INSERT INTO perf_reviews_raw VALUES (207, 113, 2025, '20.12.2025', 3.1, ' Meets', 9, 78);
INSERT INTO perf_reviews_raw VALUES (208, 184, 2025, '2025-12-11', 3.2, 'meets ', 4, 172);

COMMIT;

-- Yoxlama: asagidaki sorgu 208 qaytarmalidir.
SELECT COUNT(*) AS setir_sayi FROM perf_reviews_raw;
