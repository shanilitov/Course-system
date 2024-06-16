-- ����� CHECK ����� ������ ����� ��� ����� 0 ����� Courses
ALTER TABLE Courses
ADD CONSTRAINT check_course_price CHECK (price >= 0);

-- ����� DEFAULT ������ ����� Rooms
ALTER TABLE Rooms
MODIFY r_location DEFAULT 'Unknown';

-- ����� CHECK ����� ����� ������ ���� ����� 9 ����� ����� Kids
ALTER TABLE Kids
ADD CONSTRAINT check_kid_phone CHECK (LENGTH(phone) = 9);


