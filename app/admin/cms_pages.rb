ActiveAdmin.register CmsPage do
  filter :title
  filter :reference_string
  index :as => :blog
end
