SELECT cast(repo:name as string) FROM github_events WHERE type = 'WatchEvent' ORDER BY created_at, cast(repo:name as string)  LIMIT 50