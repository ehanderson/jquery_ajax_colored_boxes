get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/color' do

  cell= rand(1..9)
  color= "#" + "%06x" % (rand * 0xffffff)
  
  data =  {cell: cell, color: color}
  
  if request.xhr?
    data.to_json


  else
    redirect ('/')
  end  
  #Create and return a JSON object 
  # with the random cell and color given below.


end
