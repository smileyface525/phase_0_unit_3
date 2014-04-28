# U3.W7: BONUS Using the SQLite Gem

# I worked on this challenge by myself

require 'sqlite3'


$db = SQLite3::Database.open "congress_poll_results.db"


def print_arizona_reps
  puts "AZ REPRESENTATIVES"
  az_reps = $db.execute("SELECT name FROM congress_members WHERE location = ?", ['AZ'])
  az_reps.each { |rep| puts rep }
end

def print_longest_serving_reps(minimum_years)  #sorry guys, oracle needs me, i didn't finish this!
  puts "LONGEST SERVING REPRESENTATIVES"
  longest_reps = $db.execute("SELECT name, years_in_congress FROM congress_members WHERE years_in_congress > ?", [minimum_years])
  longest_reps.each { |rep| puts "#{rep[0]} - #{rep[1]} years"}
end

def print_lowest_grade_level_speakers(grade, state)
  puts "LOWEST GRADE LEVEL SPEAKERS in #{state} (less than < 8th grade)"
  speakers = $db.execute("SELECT name FROM congress_members WHERE grade_current < ? AND  location = ?", [grade, state])
  speakers.each { |speaker| puts speaker }
end

def print_number_of_votes(politician)
  puts "TOTAL NUMBER OF VOTES #{politician} HAS"
  politicians = $db.execute("SELECT name, COUNT(voter_id) FROM congress_members c JOIN votes v ON c.id = v.politician_id
                              WHERE  name = ? ", [politician])
  politicians.each { |politician| puts "#{politician[0]} - #{politician[1]} votes" }
end

def print_politician_thier_voter(politician)
  puts "LIST OF VOTERS WHO VOTED FOR #{politician}"
  voters = $db.execute("SELECT voters.first_name, voters.last_name FROM voters 
  	                    JOIN votes ON votes.voter_id = voters.id
  	                    JOIN congress_members c ON votes.politician_id = c.id
  	                    WHERE c.name=?", [politician])
  voters.each { |voter| puts "- #{voter[0]} #{voter[1]}"}
end

def print_separator
  puts 
  puts "------------------------------------------------------------------------------"
  puts 
end


print_arizona_reps

print_separator

print_longest_serving_reps(35)
## TODO - Print out the number of years served as well as the name of the longest running reps
## output should look like:  Rep. C. W. Bill Young - 41 years

print_separator

print_lowest_grade_level_speakers(10, 'NJ')

print_separator

print_lowest_grade_level_speakers(10, 'NY')

print_separator

print_lowest_grade_level_speakers(10, 'MI')

print_separator

print_lowest_grade_level_speakers(10, 'FL')

print_separator

print_lowest_grade_level_speakers(10, 'AL') 
## TODO - Need to be able to pass the grade level as an argument, look in schema for "grade_current" column

## TODO - Make a method to print the following states representatives as well:
# (New Jersey, New York, Maine, Florida, and Alaska)


##### BONUS #######
## TODO (bonus) - Stop SQL injection attacks!  Statmaster learned that interpolation of variables in SQL statements leaves some security vulnerabilities.  Use the google to figure out how to protect from this type of attack.

# TODO (bonus)
# Create a listing of all of the Politicians and the number of votes they recieved
# output should look like:  Sen. John McCain - 7,323 votes (This is an example, yours will not return this value, it should just 
#    have a similar format)
# Create a listing of each Politician and the voter that voted for them
# output should include the senators name, then a long list of voters separated by a comma
#
# * you'll need to do some join statements to complete these last queries!

print_separator

print_number_of_votes( 'Sen. John McCain')

print_separator

print_politician_thier_voter( 'Sen. John McCain')

# REFLECTION- Include your reflection as a comment below.
# How does the sqlite3 gem work?  What is the variable `$db` holding? 
# =>  The gem allows Ruby to communicate with the database, and inside Ruby code, 
#     '$db' is an instance of Sqlite3 class which actually comuunicates with the database. 
# Try to use your knowledge of ruby and OO to decipher this as well as h
# ow the `#execute` method works.  Take a stab at explaining the line 
# `$db.execute("SELECT name FROM congress_members WHERE years_in_congress 
#   > #{minimum_years}")`.  Try to explain this as clearly as possible for 
# your fellow students.  
# => '#execute' tells the database to execute the query and stores the result it gets back
#     from the database(sqlite3).
# If you're having trouble, find someone to pair on this explanation with you.