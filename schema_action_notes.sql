-- Action plan notes — editable by guides
CREATE TABLE action_notes (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  action_key TEXT UNIQUE NOT NULL,   -- "email|subject" e.g. "peter.abdulai@gt.school|Math"
  note TEXT NOT NULL DEFAULT '',
  updated_at TIMESTAMPTZ DEFAULT now(),
  created_at TIMESTAMPTZ DEFAULT now()
);

ALTER TABLE action_notes ENABLE ROW LEVEL SECURITY;

-- Allow public read + write (site is password-protected already)
CREATE POLICY "Public read" ON action_notes FOR SELECT USING (true);
CREATE POLICY "Public insert" ON action_notes FOR INSERT WITH CHECK (true);
CREATE POLICY "Public update" ON action_notes FOR UPDATE USING (true);

CREATE INDEX idx_action_notes_key ON action_notes(action_key);
