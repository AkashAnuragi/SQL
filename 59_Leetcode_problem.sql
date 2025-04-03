select results from (
    -- Get the top user with most ratings
    select name AS results
    from Users
    join MovieRating on Users.user_id = MovieRating.user_id
    group by name
    order by COUNT(*) desc, name
) where ROWNUM = 1

union all

select results from (
    -- Get the highest-rated movie in Feb 2020
    select title as results
    from MovieRating
    join Movies on MovieRating.movie_id = Movies.movie_id
    where TO_CHAR(created_at, 'YYYY-MM') = '2020-02'  
    group by title
    order by AVG(rating) desc, title
) where ROWNUM = 1;
