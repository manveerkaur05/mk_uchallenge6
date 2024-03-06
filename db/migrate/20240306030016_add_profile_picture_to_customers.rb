class AddProfilePictureToCustomers < ActiveRecord::Migration[7.1]
  def change
    add_column :customers, :profile_picture, :string
  end
end
