class CreateInstructors < ActiveRecord::Migration[6.1]
  def change
    create_table :instructors do |t|
      t.string :name
      t.integer :phone
      t.string :speciality
      t.integer :salary

      t.timestamps
    end
  end
end
