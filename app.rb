require('sinatra')
require('sinatra/contrib/all')
require( 'pry-byebug' )

require_relative('./controllers/artists')
require_relative('./controllers/albums')

require_relative( './models/album' )
require_relative( './models/artist' )

# ----- Home route ---------------------------------------
get( '/library' ) do 
  @artists = Artist.all()
  @albums = Album.all()
  erb( :index )
end



