require 'redmine'

require File.dirname(__FILE__) + '/lib/editor_paste_patch'

Redmine::Plugin.register :redmine_paste_text do
  name 'Redmine Paste Text'
  author 'Kevin Porras'
  url 'https://github.com/evolvingweb/redmine_paste_text'
  author_url 'http://evolvingweb.ca'
  description 'Contains paste extension inspired by https://puppypaste.com/'
  version '0.0.1'
  requires_redmine :version_or_higher => '3.4'

end
