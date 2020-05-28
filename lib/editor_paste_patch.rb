# Editor paste text

require_dependency 'application_helper'

Rails.logger.warn("EDITOR PASTE PATCH INIT")

class EditorPasteCSS < Redmine::Hook::ViewListener
  Rails.logger.warn("EDITOR PASTE CSS")
  render_on :view_layouts_base_html_head, :partial => "redmine_paste_text/redmine_paste_text_partial"
end
