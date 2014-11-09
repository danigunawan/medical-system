ActiveAdmin.register_page "Personal" do
  menu priority: 1, label: proc{ "Personal" }

  content title: proc{ "Personal Services" } do
    columns do
      column do
        panel "Sleep" do
          para "Find the nearest bed that\'s free"
        end
      end
      column do
        panel "Book time off" do
          para "You have 28 days remaining"
        end
      end
    end
  end
end
