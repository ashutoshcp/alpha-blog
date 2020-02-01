class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.integer :roll_no, null: false
      t.string :details, default: ''

      t.timestamps null: false
    end
    add_index :students, :roll_no, unique: true
  end
end
