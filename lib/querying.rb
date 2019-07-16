def select_books_titles_and_years_in_first_series_order_by_year
  "select title, year from books where series_id = 1 order by year asc"
end

def select_name_and_motto_of_char_with_longest_motto
  "select motto from characters where length(motto) > 25"
end


def select_value_and_count_of_most_prolific_species
  "select species, count(*) as cnt from characters group by species order by cnt desc LIMIT 1 "
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name from subgenres
inner join authors on authors.id = subgenres.id
"
end

def select_series_title_with_most_human_characters
  "select id, title from series where id in
(select series_id from characters group by series_id order by count(*) LIMIT 1)"
end

def select_character_names_and_number_of_books_they_are_in
  "select characters.name, count(book_id) from character_books
inner join books on books.id = character_books.book_id
inner join characters on characters.id = character_books.character_id
group by character_id
order by count(book_id) desc, characters.name  "
end
