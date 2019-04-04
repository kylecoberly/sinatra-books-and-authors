class AuthorsController < Sinatra::Base
  set :views, Proc.new { File.join(root, "../views") }

  get "/authors" do
    @authors = Author.all
    erb :"authors/index"
  end

  get "/authors/new" do
    erb :"authors/new"
  end

  get "/authors/:id/edit" do
    @author = Author.find(params[:id])
    erb :"authors/edit"
  end

  post "/authors" do
    author.create(params)

    redirect "/authors"
  end

  put "/authors/:id" do
    author = Author.find(params[:id])
    author.update(
      name: params[:name]
    )

    redirect "/authors"
  end

  delete "/authors/:id" do
    author = Author.find(params[:id])
    author.destroy

    redirect "/authors"
  end
end

