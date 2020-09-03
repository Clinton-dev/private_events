class CreateEventAttendings < ActiveRecord::Migration[5.2]
  def change
    create_table :event_attendings do |t|
      t.integer :event_attendee_id
      t.integer :attending_event_id

      t.timestamps
    end
  end
end
