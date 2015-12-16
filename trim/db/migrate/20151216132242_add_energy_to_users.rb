class AddEnergyToUsers < ActiveRecord::Migration
  def change
    add_column :users, :energy, :integer
  end
end
