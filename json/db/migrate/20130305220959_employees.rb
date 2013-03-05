class Employees < ActiveRecord::Migration
  def up
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :department
      t.string :job
    end
  end

  def down
    drop_table :employees
  end
end
