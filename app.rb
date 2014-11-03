require 'sinatra'

require 'date'

before do
	@year = DateTime.now.strftime('%Y')
	@month = DateTime.now.strftime('%m')
	@day = DateTime.now.strftime('%d')
	@author = 'Mandela'
end

get '/' do
    @siteTitle = 'Herzlich Willkommen'
    erb :index
end

get '/about' do
    @siteTitle = 'About'
     erb :about
end

get '/contact' do
    @siteTitle = 'Contact'
    @email = 'info@sehrdunkel.ch'
    @name = 'Samuel'
    erb :contact
end

get '/users/:id' do
	user_id = params[:id].to_i
	
	if user_id == 1
	@user = 'Olaf'
	elsif user_id == 2
	@user = 'Falo'
	end
	
    erb :users
end

get '/form' do
	erb :form
end

post '/check_password' do
	password = params[:password]
	if password == 'yo'
		erb :success
	else
		erb :failure
	end	
end
