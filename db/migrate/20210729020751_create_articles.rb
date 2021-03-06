class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.string :category

      t.timestamps
    end
    add_reference :articles, :user
  end
end
