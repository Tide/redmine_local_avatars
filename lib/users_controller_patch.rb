require 'redmine'
#require_dependency 'users_controller' 

module LocalAvatarsPlugin
  module UsersControllerPatch
    def self.included(base) # :nodoc:    
      base.send(:include, InstanceMethods)     
      base.class_eval do      
        unloadable
      end
    end
    module InstanceMethods    
      def save_avatar
        @user = User.find(params[:id])
        file_field = params[:avatar] rescue nil
        @user.attachments.clear
        attachments = Attachment.attach_files(@user, {'first' => {'file' => file_field, 'description' => 'avatar'}}) 
        flash[:notice] = l :message_avatar_uploaded
        @user.save
        redirect_to :action => 'edit', :id => @user
      end
    end
  end
end

UsersController.send(:include, LocalAvatarsPlugin::UsersControllerPatch)
