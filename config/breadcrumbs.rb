crumb :root do
  link "TOP", root_path
end

# ユーザー
crumb :users do
  link "ユーザー一覧", users_path
  parent :root
end

crumb :user_show do |user|
  link "プロフィール", user_path(user)
  parent :root
end

# チーム
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

# マニュアル
crumb :manual_index do |manual|
  link "マニュアル一覧", manuals_path
  parent :root
end

crumb :manual_show do |manual|
  link "#{manual.title}", manual_path(manual)
  parent :manual_index, manual
end

crumb :manual_new do |manual|
  link "新規マニュアル作成", new_manual_path
  parent :manual_index
end

crumb :manual_edit do |manual|
  link "#{manual.title}の編集", edit_manual_path(manual)
  parent :manual_show, manual
end

# 問い合わせ
crumb :asking_index do |asking|
  link "所属チーム一覧", team_askings_path
  parent :root
end

crumb :asking_choose do |team|
  link "#{team.name}の問い合わせ一覧", choose_team_askings_path(team)
  parent :asking_index, team
end

crumb :asking_show do |team, asking|
  link "Q&A", team_asking_path(team.id, asking.id)
  parent :asking_choose, team, asking
end

crumb :asking_new do |team|
  link "問い合わせ作成", new_team_asking_path(team)
  parent :asking_choose, team
end

crumb :asking_edit do |team, asking|
  link "問い合わせ編集", edit_team_asking_path(team.id, asking.id)
  parent :asking_show, team, asking
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