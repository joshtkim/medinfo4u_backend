class CreateVisitors < ActiveRecord::Migration[6.0]
  def change
    create_table :visitors do |t|
      t.string :username
      t.string :name
      t.string :dob
      t.integer :age
      t.string :phone
      t.string :email
      t.string :language
      t.string :healthcare

      t.timestamps
    end
  end
end
