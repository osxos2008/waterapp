module ApplicationHelper

    def project_admin(project)
        user_signed_in? && current_user.admin?
    end
end
