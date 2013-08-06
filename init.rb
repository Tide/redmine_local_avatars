require 'redmine'
require 'users_helper_avatar_patch'
require 'users_avatar_patch'
require 'users_controller_patch'
require 'attachments_controller_patch'
require 'application_helper_avatar_patch'
require 'my_account_hook'
require 'my_account_patch'

Redmine::Plugin.register :redmine_local_avatars do
  name 'Redmine Local Avatars plugin'
  author 'A. Chaika'
  description 'This is a plugin for Redmine'
  version '0.0.4-forked'
end
