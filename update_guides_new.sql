-- GT Anywhere guide assignments from new rostering spreadsheet (2026-09-04)
-- Source: https://docs.google.com/spreadsheets/d/1vJvVgbhV_3tdIdDq0Hf58fZB4T74RLaPBQwPc2YjvZg

-- First, clear all existing guide assignments
UPDATE students SET guide = NULL;

-- Alexandra Mahanna (23 students)
UPDATE students SET guide = 'Alexandra Mahanna'
WHERE name IN ('Adrian Haynes', 'Aiden Haynes', 'Alexander Philip', 'Aubrey Guajardo', 'Eli Cramer', 'Grace Berhe', 'Hadiya Jamshaid', 'Hagen Matta', 'Husayn Cheraif', 'Isabell Cardwell', 'Jett Posey', 'Kunal Bhangale', 'Lauren Roth', 'Leo Falkenstein', 'Marcel Andrews', 'Mckay Fischer', 'Merrit Cramer', 'Nathan Berhe', 'Peter Abdulai', 'Thea Green', 'Tori Guajardo', 'True Smith', 'Wolfgang Minor');

-- Andreea Musat (30 students)
UPDATE students SET guide = 'Andreea Musat'
WHERE name IN ('Abelardo Ruiz', 'Adeline Kugler', 'Adriel Andre Barreto Colon', 'Alex Endler', 'Amy Holmes', 'Ashbel Carter', 'Aylen Axline', 'Banks Carter', 'Bodhi Nguyen', 'Carson Ryan', 'Charlie Collins', 'Clara Muse', 'Daario Salvato', 'Drake Rebo', 'Emerson Davis', 'Emilia Marie', 'Enis O''Hegarty', 'Isaac Cruz', 'Isadora Sahmel', 'Jaci Waire', 'Jasper Newman', 'Levi Robison', 'Liam Parke', 'Lillian Falkson', 'Logan Sahmel', 'Musa Selim', 'Nathan Lowe', 'Scarlet Garcia', 'Willis Robertson', 'Yi Yang Lim');

-- Craig Lundberg (29 students)
UPDATE students SET guide = 'Craig Lundberg'
WHERE name IN ('Aadhav Karunanithi', 'Abdullah Nisar', 'Alexander Henderson', 'Annalyn Girkin', 'Asher Fial', 'Aubrey Adame', 'Charlotte Azar', 'Cooper Kottke', 'Eli Barzani', 'Elizabeth Eid', 'Emile Gallo', 'Erin Ritz', 'Galene Alemu', 'Georgia Sekulow', 'Golda Sekulow', 'Greta Moeschberger', 'Kai Pederson', 'Kyle Lu', 'Luca Gallo', 'Matteo Zeller', 'Miles Pape', 'Nyla Duncan', 'Olivia Aarya Kalapala', 'Sheela Nagarajan', 'Sonia Nagarajan', 'Sultan Oladeni', 'Tor Hoven', 'Vishnu Vinay', 'Yergadu Alemu');

-- David Zook (35 students)
UPDATE students SET guide = 'David Zook'
WHERE name IN ('Abdul Hanan Yusufzai', 'Adoniah Hronis', 'Amelia Cruz', 'Annabelle Hackworth', 'Asher Hackworth', 'Avery Yee', 'Barron Wideman', 'Blake Barclay', 'Camden Bell', 'Caradoc Kuperman', 'Chloe Libman', 'Christopher Myton', 'Cooper Wideman', 'Dahjh Hammonds', 'Elliott Wendt', 'Emma Murphy', 'Ethan Guo', 'Ethan Parke', 'Faris Al-Hashim', 'Gustavo Cordeiro', 'Jack Rayden', 'Jackson Garcia', 'Maximillian O''Hegarty', 'Nathanael Meisser', 'Nova Porter', 'Rowan Thurman', 'Ryker Sekulow', 'Saanjali Vinay', 'Samuel Agboola-Iliya', 'Sanah Rajesh', 'Saoirse Hackworth', 'Sarah Ocampo Delfin', 'Taysom Jensen', 'Troy Tanner', 'Vihan Valloppillil');

-- Holly Haygood (8 students)
UPDATE students SET guide = 'Holly Haygood'
WHERE name IN ('Carlee Watson', 'Cormac Kuperman', 'Evelyn Cook', 'Jack Stage', 'Maryam Yusufzai', 'Solaris Richman', 'Solomon Jones', 'Zachary Bui');

-- Joseph Livingstone (Yeti) (11 students)
UPDATE students SET guide = 'Joseph Livingstone (Yeti)'
WHERE name IN ('Ariela Belakovsky', 'Ashya Kothari', 'Emma Ruiz', 'Eugenia Robledo', 'Hunter Sahmel', 'Imran Allahwali', 'Izak Bernal', 'Kathryn McDonough', 'Livia Cabri', 'Milo Huang', 'Ronan Huang');

-- Mackenzie Post (20 students)
UPDATE students SET guide = 'Mackenzie Post'
WHERE name IN ('Abigail Milot', 'Amia Duncan', 'Brayvin Axline', 'Cayden Pacheco', 'Davian Smith', 'Eden Duncan', 'Enoch Doxey', 'Eztly Ayala Rivera', 'Kellan O''Rourke', 'Kylie Wallace', 'Matias Pina-Carrasquel', 'Nikolas Kalantari', 'Nora Milot', 'Rocky Shore', 'Rosemary Broyles', 'Santiago Pina-Carrasquel', 'Whitaker Boca', 'Willow Knoll', 'Wyatt Courtney', 'Zechariah Little');

-- Melissa Muir (16 students)
UPDATE students SET guide = 'Melissa Muir'
WHERE name IN ('Brady Hutton', 'Brevan Falco', 'Cedric Kuperman', 'Dominic Pasquarell', 'Ethan Ganzhorn', 'Kalan Porter', 'Katherine Ruhland', 'Kyla Kuhn', 'Luca Kuhn', 'Quinn O''Neal', 'Rafaela Resendes', 'Robin O''Neal', 'Ryan Hill', 'Scarlett O''Neal', 'Sheppard Groce', 'Titus Tanner');

-- Patricia McRhoads (19 students)
UPDATE students SET guide = 'Patricia McRhoads'
WHERE name IN ('Arias Benavides', 'Arya Bhangale', 'Atlantis Kingsley', 'Bannon Matta', 'Capri Lee', 'Charles Lutz', 'David Gordon', 'Everest Clopton', 'Hadley Reaves', 'Henry Linderbaum', 'Kavion Mason', 'Luke Martin', 'Merit Howley', 'Natalia O''Rourke', 'Phoenix Lee', 'Skyler Jones', 'Sylvan Gail', 'Zachary Shields', 'Zainab Dogan');

-- Ratih Larasati (19 students)
UPDATE students SET guide = 'Ratih Larasati'
WHERE name IN ('Allison Cruz', 'Amara Butt', 'Arthur Chung', 'Ben Groce', 'Carson Lesniewski', 'Charlotte Groce', 'Cleo Rondello', 'Henry Muse', 'Islana Moore', 'Ivan Musat', 'James Davis', 'Lakelyn Howley', 'Liam Bui', 'Samuel Gitcho', 'Sovereign Agboola-odeh', 'Stella Chavez', 'Storm Robertson', 'Thomas Lesniewski', 'Willow Hackworth');

-- Ruchi Shukla (21 students)
UPDATE students SET guide = 'Ruchi Shukla'
WHERE name IN ('Abhay Ram Ganti', 'Alexander Merizalde', 'Alya Lal', 'Arabella Mali Phillips', 'Bjorn Erickson', 'Clair Barsoum', 'Colin Edwards', 'Cooper Jordan Stan', 'Earl Henry', 'Ethan Hackworth', 'Evangeline Tanner', 'Finnegan Cottrell', 'Kabir Sheth', 'Lucca Armogida', 'Mara Edwards', 'Max Miramon', 'Maxim Petersen', 'Niam Shukla', 'Rebecca McAndrew', 'Ryleigh Brister', 'Zealand Ruling');

-- Sarah Langdon (36 students)
UPDATE students SET guide = 'Sarah Langdon'
WHERE name IN ('Adelynn Yen', 'Alexandra Richline', 'Antonio Spano', 'Asher Stone', 'Ava Dixon', 'Avalon Libman', 'Avery Baker', 'Ayden Bridgemon', 'Bodhi Smith', 'Cooper Lehmann', 'Cooper North', 'Donovan Wilson', 'Duke Eissler', 'Elle Calderwood', 'Elliot Cho', 'Erick Montejano', 'Ethan Hahn', 'Hazel Smith', 'Jackson Brister', 'Jaelynn Jones', 'Janie Robertson', 'John Petito', 'Jose Alejandro Robledo Pretelt', 'Kaz Watson-Aarhus', 'Kristian Long', 'Lennon Kraus', 'Lincoln Wiswell', 'Michael Lowe', 'Mylo Yeske', 'Nicholas D''Anna', 'Olive Anderson', 'Sadie Harden', 'Sophia Chung', 'Titus Quinn', 'Zachary Blackmon', 'Zachary Wilson');

-- Tori Jones (31 students)
UPDATE students SET guide = 'Tori Jones'
WHERE name IN ('Aria Hizmo', 'Avi Jain', 'Caspian Rojas-Avery', 'Daniel Lunev', 'Giovanna Bonassi', 'Graham Hayden', 'Hannah Zhou', 'Jai Krishan', 'Jaxon Paul', 'Juan Ignacio Robledo Pretelt', 'Juan Sanchez', 'Jude Lobato', 'Kalib Mason', 'Korbin Fulcher', 'Leonardo Lourenco', 'Liam Oben', 'Mia Salvato', 'Muhammad Yusufzai', 'Mustafa Alimov', 'Nellie May Howley', 'Nevaeh Hart', 'Noah Roh', 'Olivia Hizmo', 'Quentin Reaves', 'Sage Agboola-Odeh', 'Samuel Freishtat', 'Shyla Jain', 'Theodore Broyles', 'Valentina Aleman Martinez', 'Warren Meyer', 'Wyatt Mather');

-- Victoria Martinez (35 students)
UPDATE students SET guide = 'Victoria Martinez'
WHERE name IN ('Abiela Aduo', 'Adi Veeranna', 'Alan Buchanan-Curlee', 'Aubrey Axline', 'Benjamin Westmoreland', 'Bennett Lehmann', 'Bradley Axline', 'Cade Fial', 'Ezra Spark', 'Genevieve Dempsey', 'Hamna Qasim', 'Hawthorne Carter', 'Henry Kole', 'Jack Collins', 'JeanCarlo Talley', 'Josey Parks', 'Kaleila Kirkwood', 'Kali Lockett', 'Ke''Lil Wheeler', 'Landon Jordan', 'Luna Cornwell', 'Nathan Silva', 'Noel Morales', 'Noor Allahwali', 'Olivia Cruz', 'Paul Corley-Tullus III', 'Rayan Zawatieh', 'Robert Weiss', 'Ronnie Robertson', 'Rowyn Crites', 'Selah Beyer', 'Serenity Rose Taylor', 'Travis Cagle', 'Vivienne Kole', 'Yahya Nisar');
