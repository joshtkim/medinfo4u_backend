class CreateSymptoms < ActiveRecord::Migration[6.0]
  def change
    create_table :symptoms do |t|
      t.string :location
      t.string :visitor_symptom
      t.string :observation
      t.string :note
      t.string :public
      t.belongs_to :appointment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
