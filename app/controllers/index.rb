get '/' do
  #create new user and have existing user login button
  erb :index
end

get '/user' do 
  #secret user page access if user login is successful
  #otherwise back to index
end

post '/create' do
  #code to create user
  #redirect to user_page if user create is successful
end

post '/logout' do 
  # code to logout
end




