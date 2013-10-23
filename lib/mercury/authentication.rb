module Mercury
  module Authentication

    def can_edit?
      current_admin_user
    end

  end
end