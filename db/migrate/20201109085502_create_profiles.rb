class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.integer    :trans_exp_id, null: false
      t.integer    :papa_exp_id, null: false
      t.text       :text, null: true
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
