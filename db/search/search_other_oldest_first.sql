select p.id as post_id, title, content, img, profile_pic, date_created, upvotes, username as author_username from helo_posts p
join helo_users u on u.id = p.author_id
WHERE author_id != $1
order by date_created desc;