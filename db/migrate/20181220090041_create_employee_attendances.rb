class CreateEmployeeAttendances < ActiveRecord::Migration[5.2]
  def change
    create_table :employee_attendances do |t|
      t.string :status
      t.date :date
      t.integer :employee_id

      t.timestamps
    end
  end
end
