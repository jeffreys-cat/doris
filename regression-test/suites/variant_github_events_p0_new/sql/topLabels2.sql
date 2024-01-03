-- SELECT
--     label,
--     count() AS c
-- FROM github_events
-- LATERAL VIEW explode_split(labels, ',') t AS label
-- WHERE (cast(v["type"] as string) IN ('IssuesEvent', 'PullRequestEvent', 'IssueCommentEvent')) AND (action IN ('created', 'opened', 'labeled')) AND ((lower(label) LIKE '%bug%') OR (lower(label) LIKE '%feature%'))
-- GROUP BY label
-- ORDER BY c DESC
-- LIMIT 50