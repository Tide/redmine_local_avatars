require 'redmine'
require_dependency 'attachments_controller'

module LocalAvatarsPlugin
  module AttachmentsPatch
    def self.included(base) # :nodoc:    
      base.send(:include, InstanceMethods)     
      base.class_eval do      
        unloadable
        alias_method_chain :destroy, :avatar
      end
    end
    module InstanceMethods    
      def destroy_with_avatar
        if @attachment.container.respond_to?(:init_journal)
          @attachment.container.init_journal(User.current)
        end
        # Make sure association callbacks are called
        @attachment.container.attachments.delete(@attachment)
        path = project_path(@project) rescue nil
        redirect_to_referer_or path
      end
    end
  end
end

AttachmentsController.send(:include, LocalAvatarsPlugin::AttachmentsPatch)
