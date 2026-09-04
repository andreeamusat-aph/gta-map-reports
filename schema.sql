-- ============================================================
-- GTA MAP Reports — Supabase Schema
-- ============================================================

-- Students with guide assignments
CREATE TABLE students (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  student_id TEXT UNIQUE NOT NULL,
  name TEXT NOT NULL,
  email TEXT UNIQUE NOT NULL,
  guide TEXT,
  grade_level INT,
  campus TEXT DEFAULT 'GT Anywhere',
  created_at TIMESTAMPTZ DEFAULT now(),
  updated_at TIMESTAMPTZ DEFAULT now()
);

-- MAP test scores
CREATE TABLE map_scores (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  student_id TEXT NOT NULL REFERENCES students(student_id),
  subject TEXT NOT NULL,
  rit_score INT NOT NULL,
  achievement_percentile INT,
  cohort_percentile NUMERIC(5,1),
  test_season TEXT NOT NULL,
  test_date TIMESTAMPTZ NOT NULL,
  map_test_type TEXT,
  growth_multiple NUMERIC(6,2),
  growth_percentile INT,
  created_at TIMESTAMPTZ DEFAULT now(),
  UNIQUE(student_id, subject, test_date)
);

-- GT Bucks awards
CREATE TABLE gt_bucks_awards (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  student_id TEXT NOT NULL REFERENCES students(student_id),
  award_amount INT NOT NULL,
  tier TEXT NOT NULL,
  qualifying_subjects JSONB NOT NULL,
  season TEXT NOT NULL,
  awarded_at TIMESTAMPTZ,
  awarded_by TEXT,
  created_at TIMESTAMPTZ DEFAULT now(),
  UNIQUE(student_id, season, tier)
);

-- 3X pace projections
CREATE TABLE pace_projections (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  student_id TEXT NOT NULL REFERENCES students(student_id),
  subject TEXT NOT NULL,
  total_xp INT,
  goal_xp INT,
  pace_vs_goal NUMERIC(6,2),
  gl_per_year NUMERIC(6,2),
  school_days_elapsed INT,
  snapshot_date DATE NOT NULL DEFAULT CURRENT_DATE,
  created_at TIMESTAMPTZ DEFAULT now(),
  UNIQUE(student_id, subject, snapshot_date)
);

-- Enable Row Level Security
ALTER TABLE students ENABLE ROW LEVEL SECURITY;
ALTER TABLE map_scores ENABLE ROW LEVEL SECURITY;
ALTER TABLE gt_bucks_awards ENABLE ROW LEVEL SECURITY;
ALTER TABLE pace_projections ENABLE ROW LEVEL SECURITY;

-- Allow read access for authenticated and anon (public report)
CREATE POLICY "Public read" ON students FOR SELECT USING (true);
CREATE POLICY "Public read" ON map_scores FOR SELECT USING (true);
CREATE POLICY "Public read" ON gt_bucks_awards FOR SELECT USING (true);
CREATE POLICY "Public read" ON pace_projections FOR SELECT USING (true);

-- Indexes
CREATE INDEX idx_map_scores_student ON map_scores(student_id);
CREATE INDEX idx_map_scores_season ON map_scores(test_season, test_date);
CREATE INDEX idx_gt_bucks_season ON gt_bucks_awards(season);
CREATE INDEX idx_pace_date ON pace_projections(snapshot_date);
