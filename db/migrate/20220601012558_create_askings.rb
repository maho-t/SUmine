class CreateAskings < ActiveRecord::Migration[6.0]
  def change
    create_table :askings do |t|
      t.text :question,       null: false
      t.text :answer,          null: false
      t.references :team,     null: false, foreign_key: true
      t.references :user,     null: false, foreign_key: true
      t.timestamps
    end
  end
end
