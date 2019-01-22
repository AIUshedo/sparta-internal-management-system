class LoginController < Sinatra::Base

  # Fixes reloader
  configure :development do
    register Sinatra::Reloader
  end

  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  # INDEX
  get "/" do
    erb :"login/index.html"

  end

  # NEW
  get "/new" do
    erb :"login/new.html"

  end

  # SHOW
  get "/:id" do
    erb :"login/show.html"

  end

  # EDIT
  get "/:id/edit" do
    erb :"login/edit.html"

  end

  # CREATE
  post "/" do
    redirect "/"

  end

  # UPDATE
  put "/:id" do
    redirect "/#{id}"

  end

  # DESTROY
  delete "/:id" do
    redirect "/"

  end


end