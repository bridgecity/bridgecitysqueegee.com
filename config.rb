set :css_dir, 'css'
set :js_dir, 'js'
set :images_dir, 'img'
set :relative_links, true
set :markdown_engine, :kramdown
set :markdown, :fenced_code_blocks => true, :smartypants => true, :autolink => true,
    :quote => true, :footnotes => true
set :layouts_dir, 'layouts'
set :layout, 'layout'
set :trailing_slash, true
activate :directory_indexes

# helpers do
#   def some_helper
#     "Helping"
#   end
# end

configure :build do
  set :build_dir, "public"
  activate :relative_assets
  ignore "layouts/layout.haml"
  ignore "css/octicons/LICENSE.txt"
  ignore "css/octicons/README.md"
end

activate :livereload
activate :syntax
