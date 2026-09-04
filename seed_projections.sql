-- seed_projections.sql — 3X pace projections for Fall 2026
-- Generated 2026-09-04

INSERT INTO pace_projections (student_id, subject, total_xp, goal_xp, pace_vs_goal, school_days_elapsed, snapshot_date)
VALUES
  ('3be3a041-5723-4ba5-84c7-18b0d0c02b61', 'Reading', 1094, 350, 3.13, 14, '2026-09-04'),
  ('a73ee36c-44f7-48ba-8519-8d62175366b4', 'Math', 84, 25, 3.36, 14, '2026-09-04'),
  ('c25ca09f-318d-4cac-991d-e21b17cb21a3', 'Reading', 745, 200, 3.73, 14, '2026-09-04')
ON CONFLICT (student_id, subject, snapshot_date) DO UPDATE SET
  total_xp = EXCLUDED.total_xp,
  goal_xp = EXCLUDED.goal_xp,
  pace_vs_goal = EXCLUDED.pace_vs_goal,
  school_days_elapsed = EXCLUDED.school_days_elapsed;