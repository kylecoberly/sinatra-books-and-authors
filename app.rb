class Application < Sinatra::Base
  use Rack::MethodOverride

  use BooksController
  use AuthorsController
end
