-- Drop old projections table and policy
DROP POLICY IF EXISTS "Public read" ON pace_projections;
DROP TABLE IF EXISTS pace_projections;

-- RIT targets from NWEA MAP norms
CREATE TABLE rit_targets (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  student_name TEXT NOT NULL,
  grade INT,
  level TEXT,
  subject TEXT NOT NULL,
  rit_score INT,
  target_2x INT,
  typical_growth INT,
  target_3x INT,
  percentile INT,
  status TEXT NOT NULL DEFAULT 'Complete',
  created_at TIMESTAMPTZ DEFAULT now(),
  UNIQUE(student_name, subject)
);

ALTER TABLE rit_targets ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Public read" ON rit_targets FOR SELECT USING (true);
CREATE INDEX idx_rit_targets_student ON rit_targets(student_name);
CREATE INDEX idx_rit_targets_subject ON rit_targets(subject);
