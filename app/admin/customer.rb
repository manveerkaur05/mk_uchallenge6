ActiveAdmin.register Customer do
  permit_params :full_name, :phone_number, :email_address, :notes, :profile_picture

  form do |f|
    f.inputs "Customer Details" do
      f.input :full_name
      f.input :phone_number
      f.input :email_address
      f.input :notes
      f.file_field :profile_picture # Use file_field for profile_picture attribute
    end
    f.actions
  end

  filter :email_address, as: :string

  # Other configurations, such as filters and forms, can go here
end
