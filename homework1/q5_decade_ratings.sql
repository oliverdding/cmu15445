select ((titles.premiered / 10) * 10) || 's' as DECADE, avg(ratings.rating) as AVG_RATING, max(ratings.rating) as TOP_RATING, min(ratings.rating) as MIN_RATING, count(*) as NUM_RELEASES
from titles left join ratings on titles.title_id = ratings.title_id
where titles.premiered is not NULL
group by DECADE
order by AVG_RATING DESC,  DECADE ASC;
