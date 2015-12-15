class RenameSelfColumn < ActiveRecord::Migration
  def change
    rename_column :users, :self, :selfmotivate
  end
end
