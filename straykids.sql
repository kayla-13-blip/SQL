CREATE TABLE StraKids (
    MemberID INT PRIMARY KEY,
    StageName VARCHAR(50),
    RealName VARCHAR(100),
    Position VARCHAR(100)
);
INSERT INTO StraKids (MemberID, StageName, RealName, Position) VALUES
(1, 'Bang Chan', 'Christopher Bang', 'Leader, Producer, Vocalist'),
(2, 'Lee Know', 'Lee Min-ho', 'Main Dancer, Vocalist'),
(3, 'Changbin', 'Seo Chang-bin', 'Main Rapper, Producer'),
(4, 'Hyunjin', 'Hwang Hyun-jin', 'Main Dancer, Visual'),
(5, 'Han', 'Han Ji-sung', 'Main Rapper, Vocalist'),
(6, 'Felix', 'Lee Yong-bok', 'Lead Dancer, Rapper'),
(7, 'Seungmin', 'Kim Seung-min', 'Main Vocalist'),
(8, 'I.N', 'Yang Jeong-in', 'Vocalist, Maknae');
SELECT StageName, Position 
FROM StraKids 
WHERE Position LIKE '%Rapper%';
SELECT * 
FROM StraKids 
WHERE StageName = 'Bang Chan';
