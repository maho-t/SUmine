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
  parent :root, team
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
crumb :manual_index do |team, manual|
  link "マニュアル一覧", manuals_path(team, manual)
  parent :root, team, manual
end

crumb :manual_new do
  link "新規マニュアル作成", new_manual_path
  parent :manual_index
end

crumb :manual_each do |team, manual|
  link "#{team.name}", each_manuals_path(team.id, manual)
  parent :manual_index, team, manual
end

crumb :manual_show do |team, manual|
  link "#{manual.title}", manual_path(team.id, manual.id)
  parent :manual_each, team, manual
end

crumb :manual_edit do |team, manual|
  link "編集", edit_manual_path(team.id, manual.id)
  parent :manual_show, team, manual
end

crumb :manual_search do |manual|
  link "検索結果", search_manuals_path
  parent :manual_index
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

crumb :asking_search do |team|
  link "検索結果", search_team_askings_path(team)
  parent :asking_choose, team
end

# メール
crumb :email_index do |email|
  link "所属チーム一覧", team_emails_path
  parent :root
end

crumb :email_choose do |team|
  link "#{team.name}のメール管理一覧", choose_team_emails_path(team)
  parent :email_index, team
end

crumb :email_show do |team, email|
  link "保存メール", team_email_path(team.id, email.id)
  parent :email_choose, team, email
end

crumb :email_new do |team|
  link "メールの新規保存", new_team_email_path(team)
  parent :email_choose, team
end

crumb :email_edit do |team, email|
  link "管理メールの編集", edit_team_email_path(team.id, email.id)
  parent :email_show, team, email
end

crumb :email_search do |team|
  link "検索結果", search_team_emails_path(team)
  parent :email_choose, team
end