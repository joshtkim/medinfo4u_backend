class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.string :date
      t.string :time
      t.string :visitor_symptom
      t.string :observation
      t.string :note
      t.string :public
      t.belongs_to :doctor, null: false, foreign_key: true
      t.belongs_to :nurse, null: false, foreign_key: true
      t.belongs_to :visitor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
