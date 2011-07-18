class MyAccountHook < Redmine::Hook::ViewListener
  render_on :view_my_account, :partial => 'my/avatar'
end

