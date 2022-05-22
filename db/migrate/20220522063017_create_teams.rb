class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :name,     null: false
      t.string :prof,     null: false
      t.string :email
      t.timestamps
    end
  end
end
