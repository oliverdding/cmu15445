select name as NAME, coalesce(died, strftime('%Y', CURRENT_DATE)) - born as AGE
from people
where born > 1900
order by AGE DESC, NAME ASC
limit 20;
