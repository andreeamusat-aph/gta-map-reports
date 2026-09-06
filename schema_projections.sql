-- Drop the old table
DROP TABLE IF EXISTS rit_targets;

-- Create the new projections table
CREATE TABLE map_projections (
  id SERIAL PRIMARY KEY,
  student_name TEXT NOT NULL,
  student_id TEXT,
  grade INT,
  subject TEXT NOT NULL,
  fall_rit INT,
  fall_percentile INT,
  winter_projected_rit INT,
  winter_projected_growth INT,
  spring_projected_rit INT,
  spring_projected_growth INT,
  guide TEXT,
  UNIQUE(student_name, subject)
);

ALTER TABLE map_projections ENABLE ROW LEVEL SECURITY;
CREATE POLICY "public read" ON map_projections FOR SELECT USING (true);
