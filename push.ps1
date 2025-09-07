param(
  [Parameter(Mandatory=$true)][string]$User,
  [Parameter(Mandatory=$true)][string]$Repo
)

git init
git add .
git commit -m "init resume site"
git branch -M main
git remote add origin "https://github.com/$User/$Repo.git"
git push -u origin main

Write-Host ""
Write-Host "推送完成！接著到 GitHub → Settings → Pages，Source 選 main /root。"
