class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.references :country
      t.references :user
      t.string :food_name
      t.integer :evaluation
      t.text :review

      t.timestamps
    end
  end
end
