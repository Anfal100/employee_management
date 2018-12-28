class CreateEmployeeDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :employee_details do |t|
      t.string :name
      t.string :photo
      t.integer :age
      t.string :marriage_status
      t.string :state
      t.string :address
      t.integer :employee_id

      t.timestamps
    end
  end
end
