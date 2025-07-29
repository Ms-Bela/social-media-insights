CREATE OR REPLACE TABLE `your_project.dataset.social_engagement_cleaned` AS
SELECT
  post_id, platform, post_type, TIMESTAMP(post_time) AS post_time,
  likes, comments, shares, post_day,
  sentiment_score_clean AS sentiment_score,
  post_hour, post_month, post_date
FROM `your_project.dataset.cleaned_step3`;