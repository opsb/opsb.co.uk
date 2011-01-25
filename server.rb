require 'sinatra'
require 'erb'

URL_MAPPINGS = {
	'176' => 'introducing-butler-io',
	'165' => 'follow-table-links-in-cucumber',
	'163' => 'rcov-for-cucumber-and-shoulda',
	'149' => 'validates-uniqueness-of-multiple-columns',
	'122' => 'put-your-team-back-together-with-some-promisc',
	'88' => 'getting-started-with-ruby-dbi-and-mysql',
	'75' => 'useful-regular-expressions-with-egrep',
	'56' => 'pimp-my-git',
	'53' => 'git-rebase-from-another-repository',
	'50' => 'native-ruby-gems-on-ubuntu',
	'41' => 'instant-remote-git-repository-using-ssh',
	'32' => 'getting-started-with-git-github-and-eclipse-o',
	'3' => 'getting-started-with-git-github-and-eclipse-p'
}

get '/' do
  if params['p']
    redirect "http://blog.opsb.co.uk/" + URL_MAPPINGS[params['p']].to_s, 301
  else
    erb :index
  end
end

__END__

@@ index
<html>
  <head>
    <link rel="openid.server" href="http://www.myopenid.com/server" />
    <link rel="openid.delegate" href="http://opsb.myopenid.com/" />
    <meta http-equiv="REFRESH" content="0;url=http://blog.opsb.co.uk">
  </head>
  <body>
    &nbsp;
  </body>
</html>