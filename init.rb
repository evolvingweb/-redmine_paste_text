require 'redmine'

Rails.configuration.to_prepare do
  require_dependency "editor_paste_patch"
end

Redmine::Plugin.register :redmine_paste_text do
  name 'Redmine Paste Text'
  author 'Kevin Porras'
  url 'https://github.com/evolvingweb/redmine_paste_text'
  author_url 'http://evolvingweb.ca'
  description 'Contains paste extension inspired by https://puppypaste.com/'
  version '0.0.2'
  requires_redmine :version_or_higher => '3.4'

end
