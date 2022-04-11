class ApplicationController < ActionController::Base
    # def tailwind_classes_for(flash_type)
    #     {
    #       notice: "bg-green-400 border-l-4 border-green-700 text-white",
    #       error:   "bg-red-400 border-l-4 border-red-700 text-black",
    #       alert: "bg-red-400 border-l-4 border-red-700 text-black",
    #     }.stringify_keys[flash_type.to_s] || flash_type.to_s
    # end

    def require_user_logged_in!
        redirect_to new_user_session_path, alert: "You must be logged in to do that!" if current_user.nil?
    end
end
