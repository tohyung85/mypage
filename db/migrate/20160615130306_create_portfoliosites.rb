class CreatePortfoliosites < ActiveRecord::Migration
  def change
    create_table :portfoliosites do |t|
      t.string :site
      t.string :name

      t.timestamps null: false
    end
  end
end
