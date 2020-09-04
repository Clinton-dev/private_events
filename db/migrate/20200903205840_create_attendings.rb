class CreateAttendings < ActiveRecord::Migration[5.2]
  def change
    create_table :attendings do |t|
      t.references :event
      t.references :attendee, foreign_key: true

      t.timestamps
    end
  end
end
