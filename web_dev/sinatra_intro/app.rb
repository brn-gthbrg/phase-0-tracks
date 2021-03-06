# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  p params
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

get '/contact' do
  "111 Lincoln St. San Jose, CA, 54321"
end

get '/great_job' do
  name = params[:name]
  if name
    "Great job, #{params[:name]}!"
  else
    "Good job!"
  end
end

get '/add/:numb1/:numb2' do
  int1 = params[:numb1].to_i
  int2 = params[:numb2].to_i
  sum = int1 + int2
  p "#{int1} + #{int2} = #{sum}"
end

get '/search' do
  id = params[:id]
  if id
  students = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])
  else
  students = db.execute("SELECT * FROM students")
  end
  response = ""
    students.each do |student|
      response << "ID: #{student['id']}<br>"
      response << "Name: #{student['name']}<br>"
      response << "Age: #{student['age']}<br>"
      response << "Campus: #{student['campus']}<br><br>"
    end
  response
end


# There are many web app libraries in Ruby. Ruby on Rails is the main one but there is also Sinatra, Padrino, Rack, Camping, Merb, Hobo, Ramaze, etc.

# There are many gem options that can be used with Sinatra. MySQL is a big one.

# A web stack is all the software necessary for web development. There are many different combinations that can make up a web stack but they all use an operating system, a program language, database, and server.