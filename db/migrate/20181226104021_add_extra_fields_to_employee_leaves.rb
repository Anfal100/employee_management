class AddExtraFieldsToEmployeeLeaves < ActiveRecord::Migration[5.2]
  def change
    add_column :employee_leaves, :leave_type, :string
    add_column :employee_leaves, :start_date, :date
    add_column :employee_leaves, :end_date, :date
    add_column :employee_leaves, :description, :text
  end
end
