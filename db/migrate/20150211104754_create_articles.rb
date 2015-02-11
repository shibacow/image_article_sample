class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :name
      t.string :email
      t.string :title
      t.text :comment
      t.string :url
      t.string :delete_key

      t.timestamps null: false
    end
  end
end
