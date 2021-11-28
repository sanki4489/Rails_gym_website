class CreatePrograms < ActiveRecord::Migration[6.1]
  def change
    create_table :programs do |t|
      t.belongs_to :client
      t.string :name
      t.integer :duration
      t.string :instructor

      t.timestamps
    end
  end
end
