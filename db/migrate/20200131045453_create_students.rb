class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.integer :roll_no, null: false
      t.jsonb :details, default: {}

      t.timestamps
    end
    add_index :students, :roll_no, unique: true
  end
end
