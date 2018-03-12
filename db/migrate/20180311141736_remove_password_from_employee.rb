class RemovePasswordFromEmployee < ActiveRecord::Migration[5.1]
  def change
    remove_column :employees, :Passwork, :string
  end
end
