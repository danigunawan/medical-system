ActiveAdmin.register_page "Learning & Events" do
  menu priority: 3, label: proc{ "Learning & Events" }

  content title: proc{ "Learning & Event" } do
    columns do
      column do
        panel "Welcome" do
          para "This is an area where you can catch up on research and book events for yourself and others."
        end
      end
    end

    columns do
      column do
        panel "General Care" do
          para ""
        end
      end
      column do
        panel "Other Sources" do
          para link_to("Medical Research Council", "http://www.mrc.ac.uk/")
        end
      end
    end
  end
end
