class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.integer    :experience_id, null: false
      t.text       :text, null: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
