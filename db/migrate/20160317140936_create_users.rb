class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :team
      t.string :email
      t.string :phone
      t.boolean :paid
      t.datetime :date_paid

      t.timestamps null: false
    end
  end
end
