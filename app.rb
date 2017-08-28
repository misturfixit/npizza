require "sinatra"
enable :sessions
#######################################################
get '/' do
  erb :stuff
end
post '/stuff' do
		@params = params
		print @params
		session[:meat] = params[:meat]
		session[:vegs] = params[:veggies]
		session[:cheeze] = params[:cheeze]
		session[:crust] = params[:crust]
		session[:delivery] = params[:delivery]
		session[:size] = params[:size]
	redirect '/confrm' 
end
#######################################################
get '/confrm' do
		@params = params
		print @params
	erb :confrm, locals:{meat:session[:meat],
				vegs:session[:vegs],
					cheeze:session[:cheeze],
					crust:session[:crust],
				size:session[:size],
			delivery:session[:delivery]
			}
end
post '/chozen' do
		@params = params
		print @params
		session[:checked] = []
		#session[:pickem] = []
		session[:checked] = params[:pickem]
		session[:address] = params[:address]
		session[:cost] = params[:cost]
		session[:pickem] = checked.values
	redirect '/gotit'
end	
#######################################################
get '/gotit' do
		@params = params
		print @params
	erb :results, locals:{pickem:session[:pickem],
			address:session[:address], cost:session[:cost]	
			}
end	
#######################################################
post '/gotit' do
		pizzaz = {}
		pizzaz << session[:pickem]
		@params = params
		print @params
	redirect '/finale'
end
#######################################################
get '/finale' do

##erb :final, locals:{*-*:session[:*-*]}
end	