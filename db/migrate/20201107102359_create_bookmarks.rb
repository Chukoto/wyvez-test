class CreateBookmarks < ActiveRecord::Migration[6.0]
  def change
    create_table :bookmarks do |t|
      t.integer :user, null: false
      t.integer :question, null: false
      t.timestamps
    end
  end
end
