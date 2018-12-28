class AddEmployeeIdToEmployeeLeaves < ActiveRecord::Migration[5.2]
  def change
    add_column :employee_leaves, :employee_id, :integer
  end
end
