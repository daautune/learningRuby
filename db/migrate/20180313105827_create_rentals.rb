class CreateRentals < ActiveRecord::Migration[5.1]
  def change
    create_table :rentals do |t|
      t.string :name
      t.string :size
      t.double :price
      t.string :color
      t.double :amount

      t.timestamps
    end
  end
end
