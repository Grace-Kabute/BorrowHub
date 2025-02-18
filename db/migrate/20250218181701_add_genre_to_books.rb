class AddGenreToBooks < ActiveRecord::Migration[8.0]
  def change
    add_column :books, :genre, :string
    add_column :books, :description, :text
    add_column :books, :published_year, :integer
  end
end
