require "sinatra"
enable :sessions
#######################################################
get '/' do
  erb :stuff
end
post '/stuff' do
	session[:meat] = params[:meat]
	session[:vegs] = params[:veggies]
	session[:cheeze] = params[:cheeze]
	session[:crust] = params[:crust]
	redirect '/confrm' 
end
#######################################################
get '/confrm' do
erb :confrm, locals:{meat:session[:meat],vegs:session[:vegs],
cheeze:session[:cheeze],crust:session[:crust]}
end
post '/chozen' do
	choze = params[:pickem]
	session[:checked] = params[:pickem]
	redirect '/gotit'
end	
#######################################################
get '/gotit' do
	erb :results, locals:{checked:session[:checked]}
end	