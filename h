[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://github.com/jasnow/atlrug4.git
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master
[remote "heroku"]
	url = git@heroku.com:atlrug4.git
	fetch = +refs/heads/*:refs/remotes/heroku/*
