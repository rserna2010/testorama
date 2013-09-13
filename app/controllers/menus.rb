get '/' do
  @menus = Menu.all
  erb :index
end

post '/menus' do
  @menu = Menu.new params
  if @menu.save
    redirect '/'
  else
    @menus = Menu.all
    @errors = @menu.errors.full_messages
    erb :index
  end
end

get '/menus/:id' do
  @menu = Menu.find params[:id]
  erb :show
end

get "/menu_items/:id" do
  @menu_item = MenuItem.find(params[:id])
  @menu = Menu.find(@menu_item.menu_id)

  erb :show_menu_items
end

