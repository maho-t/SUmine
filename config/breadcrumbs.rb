crumb :root do
  link "TOP", root_path
end

crumb :users do
  link "ユーザー一覧", users_index_path
  parent :root
end

crumb :user_show do |user|
  link "プロフィール", user_path(user)
  parent :root
end

crumb :team_show do |team|
  link "#{team.name}の詳細", team_path(team)
  parent :root
end

crumb :team_edit do |team|
  link "#{team.name}の編集", edit_team_path(team)
  parent :team_show, team
end

crumb :team_new do
  link "新規チーム作成", new_team_path
  parent :root
end


# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).