class BooksController < Sinatra::Base
  set :views, Proc.new { File.join(root, "../views") }
  get "/books" do
    @books = Book.all
    erb :"books/index" 
  end
end

