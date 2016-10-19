require ('sinatra')
require ('sinatra/contrib/all')
require( 'pry-byebug' )

require_relative('./controllers/artists')
require_relative('./controllers/albums')

require_relative( './models/album' )
require_relative( './models/artist' )

get '/library' do
  
end



