class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.integer :phone
      t.string :address
      t.integer :weight
      t.string :level
      t.string :sex
      t.integer :height
      t.integer :age
      t.string :goals
      t.string :email
      t.string :timings

      t.timestamps
    end
  end
end
