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
	session[:delivery] = params[:delivery]
	redirect '/confrm' 
end
#######################################################
get '/confrm' do
erb :confrm, locals:{meat:session[:meat],
		vegs:session[:vegs],
		cheeze:session[:cheeze],
		crust:session[:crust],
		delivery:session[:delivery]
		}
end
post '/chozen' do
	checked = params[:pickem]
	session[:address] = params[:address]
	session[:pickem] = checked.values
	redirect '/gotit'
end	
#######################################################
get '/gotit' do
	erb :results, locals:{pickem:session[:pickem],
			address:session[:address]	
			}
end	