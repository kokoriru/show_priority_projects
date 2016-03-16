Dir[File.expand_path('../lib/show_priority_projects', __FILE__) << '/*.rb'].each do |file|
  require_dependency file
end

Redmine::Plugin.register :show_priority_projects do
  name 'Show Priority Projects plugin'
  author 'Author name'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'
end