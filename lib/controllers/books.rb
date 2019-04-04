class BooksController < Sinatra::Base
  set :views, Proc.new { File.join(root, "../views") }

  get "/books" do
    @books = Book.all
    erb :"books/index" 
  end

  get "/books/new" do
    erb :"books/new"
  end

  get "/books/:id/edit" do
    @book = Book.find(params[:id])
    @authors = Author.all
    erb :"books/edit"
  end

  get "/books/:id" do
    @book = Book.find(params[:id])

    erb :"books/show"
  end

  post "/books" do
    Book.create(params)

    redirect "/books"
  end

  put "/books/:id" do
    book = Book.find(params[:id])
    author = Author.find(params[:author_id])
    book.update(
      title: params[:title],
      author: author
    )

    redirect "/books"
  end

  delete "/books/:id" do
    book = Book.find(params[:id])
    book.destroy

    redirect "/books"
  end
end

