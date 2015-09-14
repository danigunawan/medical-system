# require 'chartkick'

ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    #div class: "blank_slate_container", id: "dashboard_default_message" do
    #  span class: "blank_slate" do
    #    span I18n.t("active_admin.dashboard_welcome.welcome")
    #    small I18n.t("active_admin.dashboard_welcome.call_to_action")
    #  end
    #end

    # Here is an example of a simple dashboard with columns and panels.
    #
     columns do
       #column do
       #  panel "Recent Posts" do
       #    ul do
       #      Post.recent(5).map do |post|
       #        li link_to(post.title, admin_post_path(post))
       #      end
       #    end
       #  end
       #end

       column do
         panel "News" do
           para "Welcome to Medical System."
           # timeline [
           #   ["Washington", "1789-04-29", "1797-03-03"],
           #   ["Adams", "1797-03-03", "1801-03-03"],
           #   ["Jefferson", "1801-03-03", "1809-03-03"]
           # ]
         end

         panel "Available Staff" do
           ul do
             li "Joseph Smith"
           end
         end

         panel "Events" do
           para "Today we are serving real food in the canteen"
         end

         panel "Task History" do
           para "You have been on call for the past 7 hours."
           para "In the past 14 days you have worked 214 hours"
         end

         panel "Recent Patients" do
           table_for Patient.order('updated_at DESC') do
             column :id
             column :first_name
             column :last_name
             column :created_at
             column :updated_at
           end
         end

         panel "Help and FAQs section" do
           para "How do I order a consultation?"
           para "How do I order a mortician?"
           para "How do I avoid 'biters'?"
         end

       end
     end
  end # content
end
