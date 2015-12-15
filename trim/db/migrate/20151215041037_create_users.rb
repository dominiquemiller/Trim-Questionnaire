class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :fullname
      t.string :email
      t.string :repo
      t.string :url
      t.integer :oop
      t.integer :modular
      t.integer :workflow
      t.integer :testing
      t.integer :database
      t.integer :problem
      t.integer :javascript
      t.integer :html
      t.integer :css
      t.integer :team
      t.integer :self
      t.integer :communication
      t.integer :debugging

      t.timestamps null: false
    end
  end
end
