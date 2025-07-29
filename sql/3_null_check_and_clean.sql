SELECT COUNTIF(post_id IS NULL) AS null_post_id, COUNTIF(platform IS NULL) AS null_platform FROM `your_project.dataset.raw_social_media_engagement`;

CREATE OR REPLACE TABLE `your_project.dataset.cleaned_step1` AS
SELECT * FROM `your_project.dataset.raw_social_media_engagement`
WHERE post_id IS NOT NULL AND platform IS NOT NULL;