ActiveAdmin.register Patient do
  menu priority: 2
  permit_params :first_name, :last_name, :dob, :ni

  index do
    #which column is used for the box/multi select?
    column :id
    column :first_name
    column :last_name
    column ("Age") { |record| "xx" }
    column ("Weight") {|record| "110lb on 24/11/2013" }
    column ("Date of Birth") { |record| record.dob }
    actions
  end

  show title: :first_name do |patient|
    attributes_table do
      row(:id)
      row(:first_name)
      row(:last_name)
      row("Date of Birth") { patient.dob }
    end

    panel "Prescriptions" do
      para "Morphine, everybody loves morphine."
    end

    panel "Comments" do
    end
  end


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
