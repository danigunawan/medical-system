ActiveAdmin.register_page "Personal" do
  menu priority: 1, label: proc{ "Personal" }

  content title: proc{ "Personal Services" } do
    columns do
      column do
        panel "Sleep" do
          para "Find the nearest bed that\'s free"
        end
      end
    end
  end
end
