-- ParamsQueries.sql

-- ������ 1
-- ������ ������� �� �� ������ ������ ���� ����� ����� ���� ����� ���� "D".
SELECT *
FROM Teachers
WHERE date_Of_Birth > TO_DATE('1979-01-01', 'YYYY-MM-DD')  -- ��� ���� ����� �����
  AND t_name LIKE 'D%';  

--������ 2
--������ ������� �� �� ������ ������ ��� ��� ������� ������.
SELECT *
FROM Kids
WHERE date_of_birth BETWEEN TO_DATE('2010-01-01', 'YYYY-MM-DD') AND TO_DATE('2015-01-01', 'YYYY-MM-DD');

-- ������ 3
--������ ������� �� �� ������� ������ ����� ������ ���� ���� ������� ������� ��� �����.
SELECT *
FROM Courses
WHERE price BETWEEN 100 AND 500  -- ��� ������ ����� ������� �������� ��������
  AND age_Min >= 10  -- ��� ����� ��� ������� ������
  AND age_Max <= 15;  -- ��� ����� ��� ������� ������

-- ������ 4: ������ SELECT �� ��� (hint)
--������ ������� �� �� ����� ���� ����� �� ������ �������, ��� ����� ���� ������ ��������.
SELECT /*+ INDEX(group_In_Schedulle idx_group_schedule) */
  s_hour, s_day
FROM Schedule
JOIN group_In_Schedulle ON Schedule.id_Schedule = group_In_Schedulle.id_Schedule
WHERE group_In_Schedulle.Id_Group = 1105;  -- ��� ����� ���� ����� ������
