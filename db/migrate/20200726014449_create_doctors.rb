class CreateDoctors < ActiveRecord::Migration[6.0]
  def change
    create_table :doctors do |t|
      t.string :username
      t.string :name
      t.string :dob
      t.integer :age
      t.string :phone
      t.string :ext
      t.string :email
      t.string :language
      t.string :specialty

      t.timestamps
    end
  end
end
