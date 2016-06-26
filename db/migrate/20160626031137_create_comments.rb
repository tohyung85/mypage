class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|

      t.string :title
      t.text :content
      t.string :poster_name

      t.timestamps null: false
    end
  end
end
