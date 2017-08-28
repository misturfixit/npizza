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
		session[:cost] = params[:cost]
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
			cost:session[:cost],
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
		session[:pickem] = session[:checked].values
	redirect '/gotit'
end	
#######################################################
get '/gotit' do
		@params = params
		print @params
		session[:cost] = params[:cost]
	erb :results, locals:{pickem:session[:pickem],
			address:session[:address], cost:session[:cost]	
			}
end	
#######################################################
post '/gotit' do
		if session[:pizzas] == nil  
		 session[:pizzas] = []
		 session[:pizzas] << session[:pickem].values
		else
		  session[:pizzas] << session[:pickem].values
		end   
		@params = params
		print @params
	redirect '/finale'
end
#######################################################
get '/finale' do
	 "hullloo wuurrllld"
	erb :final, locals:{pizzas:session[pizzas]

	} 
end	