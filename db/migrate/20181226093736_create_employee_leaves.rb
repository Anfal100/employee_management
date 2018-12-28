class CreateEmployeeLeaves < ActiveRecord::Migration[5.2]
  def change
    create_table :employee_leaves do |t|

      t.timestamps
    end
  end
end
