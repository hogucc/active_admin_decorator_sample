ActiveAdmin.register Book do
  decorate_with BookDecorator

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :author
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :author]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  index do
    id_column
    %i[title author].each {|col_name| column col_name }
    column '著者（敬称あり）', &:author_name_with_honor

    actions
  end
end
