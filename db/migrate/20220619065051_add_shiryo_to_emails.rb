class AddShiryoToEmails < ActiveRecord::Migration[6.0]
  def change
    add_column :emails, :shiryo, :string
  end
end
