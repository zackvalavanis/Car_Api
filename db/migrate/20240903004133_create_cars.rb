class CreateCars < ActiveRecord::Migration[7.1]
  def change
    create_table :cars do |t|
      t.string :make
      t.string :name
      t.string :price
      t.string :color
      t.integer :year

      t.timestamps
    end
  end
end
