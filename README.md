## atlrug Web Site (atlrug)

This is a Ruby-on-Rails web application for the ATLRUG (Atlanta Ruby User Group).

[<img src="https://codeclimate.com/github/atlrug/atlrug.png" />]([https://codeclimate.com/github/atlrug/atlrug)
[<img src="https://gemnasium.com/atlrug/atlrug.png?travis" />](https://gemnasium.com/atlrug/atlrug.png?travis)
[<img src="https://travis-ci.org/atlrug/atlrug.png" />](https://travis-ci.org/atlrug/atlrug.png)
[<img src="https://www.herokucdn.com/deploy/button.png" />](https://heroku.com/deploy)
[Wiki](https://github.com/atlrug/atlrug/wiki)

## Setup

On 12/27/2017, the requirements were: Ruby 2.5.0 and Rails 5.1.4.

Note: Install Ruby 2.5.0 via RVM checkout https://coderwall.com/p/tptocq.

1. To install gems, run:
    bundle install

2. Create databases and tables:

    rake db:create
    rake db:migrate

3. Run the tests by typing <b>rake</b> (when we write them -- smile)

4. Project is on Github at https://github.com/atlrug/atlrug.

5. Follow these instructions regarding Heroku and Rails 4 (avoid "bundle --binstubs"): https://gist.github.com/peter/3025502

6. There are five variables to set
  * AR4_S_K_B (secret key base),
  * MEETUP_KEY (ENV var for meetup.com API key),
  * GITHUB_KEY,
  * GITHUB_SECRET,
  * YOUTUBE_KEY

7. To set AR4_S_K_B variable, run **rake secret** command.

8. Get an meetup.com API key ofr MEETUP_KEY at: http://www.meetup.com/meetup_api/key

9. Use GITHUB_KEY and GITHUB_SECRET when setting up talk proposal submittals.

10. Grab a developer API key from Google at: https://developers.google.com/youtube/v3/

11. You can put these 5 variables in a **.env** file and it is NOT checked into Github.

12. For more detail about <b>Guard LiveReload</b>, go to: https://github.com/guard/guard-livereload

## To Contribute

1. Sign in at http://contribhub.co and click "I Wanna Help!" button at top.

2. Find a project you like.

3. Fork project on Github.

4. Clone it locally.

5. Make change.

6. Push it back to Github.

7. The following command will encrypt and add it to atlrug/.travis.yml file. Note, you may have to do this twice. The first time may create $HOME/.travis/config.yml and if that has your repos in it, it will lock down your key to only your repos. So delete or edit that config.yml in your home directory and rerun this command:

    travis encrypt MEETUP_KEY=your_meetup_key_here --add

8. Create a Pull Request to original repo.

## To Contribute to Wiki

1. Clone https://github.com/atlrug/atlrug.wiki.git

2. Add your information.

3. Push it back to Github.

## DISCUSSION

If you have questions, please use this [Linkedin group](http://www.linkedin.com/groups/Atlanta-Ruby-Users-Group-106945/about)

## License

atlrug is released under the [MIT License](MIT-LICENSE.txt).
Reference: http://www.opensource.org/licenses/mit-license

