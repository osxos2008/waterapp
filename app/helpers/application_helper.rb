module ApplicationHelper


    def project_author(project)
        user_signed_in? && current_user.id == project.user_id
    end

    def project_admin(project)
        user_signed_in? && current_user.admin?
    end
end
