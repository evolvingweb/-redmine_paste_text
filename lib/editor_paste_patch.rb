# Editor paste text

require_dependency 'application_helper'

class EditorPastePatch < Redmine::Hook::ViewListener
  render_on :view_layouts_base_html_head, :partial => "redmine_paste_text/redmine_paste_text_partial"
end
