class CreateCustomUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :custom_users do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.string :title
      t.text :description
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
