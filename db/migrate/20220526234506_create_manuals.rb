class CreateManuals < ActiveRecord::Migration[6.0]
  def change
    create_table :manuals do |t|
      t.string :title,        null: false
      t.integer :manual_text, null: false
      t.references :team,     null: false
      t.references :user,     null: false
      t.timestamps
    end
  end
end
