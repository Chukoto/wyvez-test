class CreatePapaEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :papa_events do |t|
      t.integer    :date,            null: false
      t.integer    :start_time_id,   null: false
      t.integer    :end_time_id,     null: true
      t.integer    :action_id,       null: false
      t.text       :todo,            null: true
      t.text       :place,           null: true
      t.integer    :expected_reward, null: false
      t.integer    :reward,          null: true
      t.integer    :status_id,       null: false
      t.references :papa, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
