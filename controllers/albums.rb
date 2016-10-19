# INDEX
require('pry-byebug')
get '/albums' do
  @albums = Album.all()
  erb(:'albums/index')
end

# NEW
get '/albums/new' do
  @artists = Artist.all()
  #grab all the artists
  erb(:'albums/new')
end

# CREATE
post '/albums' do
  @album = Album.new(params)
  @album.save()
  erb(:'albums/create')
end

# SHOW

get '/albums/:id' do
  @album = Album.find(params[:id])
  erb(:'albums/show')
end

# EDIT

get '/albums/:id/edit' do
  @album = Album.find(params[:id])
  erb(:'albums/edit')
end

# UPDATE

put '/albums/:id' do
  @album = Album.update(params)
  redirect to("/albums/#{params[:id]}")
end

# DELETE

delete '/albums/:id' do
  Album.destroy(params[:id])
  redirect to("/albums")
end


# binding.pry
# nil