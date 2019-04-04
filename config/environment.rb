require "bundler"
Bundler.require

require_all "lib"
require_relative "../app"

ActiveRecord::Base.establish_connection(
  adapter: "sqlite3",
  database: "db/bookstore.db"
)
