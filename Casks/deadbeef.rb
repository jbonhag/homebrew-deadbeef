cask 'deadbeef' do
  version '1.8.3'
  sha256 '9cd31ef07b7d1e8e597eed10fd62edc0699d3005f313a23a2bd26fa92b5115df'

  url "https://downloads.sourceforge.net/deadbeef/travis/osx/#{version}/deadbeef-#{version}-osx-x86_64.zip"
  name 'DeaDBeeF'
  homepage 'https://deadbeef.sourceforge.io/'

  app 'DeaDBeeF.app'

  zap trash: [
               '~/Library/Preferences/com.deadbeef.DeaDBeeF.plist',
               '~/Library/Preferences/deadbeef',
               '~/Library/Saved Application State/com.deadbeef.deadbeef.savedState',
             ]
end
