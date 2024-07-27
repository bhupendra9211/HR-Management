class CreateEmployees < ActiveRecord::Migration[7.1]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :personal_email
      t.string :district
      t.string :zone
      t.string :province
      t.string :temporary_address
      t.string :permanent_address
      t.string :country

      t.timestamps
    end
  end
end
