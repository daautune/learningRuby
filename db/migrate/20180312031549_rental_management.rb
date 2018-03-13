class CreateRentals < ActiveRecord::Migration[5.1]
  def change
    create_table :rentals do |t|
      t.string :name
      t.string :size
      t.string :color
      t.double :price
      t.double :amount

      t.timestamps
    end
  end
end
