class AuthorsController < Sinatra::Base
  set :views, Proc.new { File.join(root, "../views") }

  get "/authors" do
    @authors = Author.all
    erb :"authors/index"
  end
end

