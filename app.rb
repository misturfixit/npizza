require "sinatra"
enable :sessions
#######################################################
get '/' do
  erb :stuff
end
post '/stuff' do
	session[:flesh] = params[:meat]
	redirect '/confrm' 
end
#######################################################
