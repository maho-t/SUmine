class AddShiryoToManuals < ActiveRecord::Migration[6.0]
  def change
    add_column :manuals, :shiryo, :string
  end
end
