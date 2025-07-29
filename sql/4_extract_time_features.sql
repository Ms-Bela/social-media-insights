CREATE OR REPLACE TABLE `your_project.dataset.cleaned_step2` AS
SELECT *,
  EXTRACT(HOUR FROM TIMESTAMP(post_time)) AS post_hour,
  EXTRACT(MONTH FROM TIMESTAMP(post_time)) AS post_month,
  DATE(TIMESTAMP(post_time)) AS post_date
FROM `your_project.dataset.cleaned_step1`;