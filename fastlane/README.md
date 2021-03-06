fastlane documentation
================
# Installation

Make sure you have the latest version of the Xcode command line tools installed:

```
xcode-select --install
```

## Choose your installation method:

<table width="100%" >
<tr>
<th width="33%"><a href="http://brew.sh">Homebrew</a></td>
<th width="33%">Installer Script</td>
<th width="33%">Rubygems</td>
</tr>
<tr>
<td width="33%" align="center">macOS</td>
<td width="33%" align="center">macOS</td>
<td width="33%" align="center">macOS or Linux with Ruby 2.0.0 or above</td>
</tr>
<tr>
<td width="33%"><code>brew cask install fastlane</code></td>
<td width="33%"><a href="https://download.fastlane.tools/fastlane.zip">Download the zip file</a>. Then double click on the <code>install</code> script (or run it in a terminal window).</td>
<td width="33%"><code>sudo gem install fastlane -NV</code></td>
</tr>
</table>
# Available Actions
## iOS
### ios test
```
fastlane ios test
```
Runs all the tests
### ios incrementBuildNumber
```
fastlane ios incrementBuildNumber
```
Bump build number, commit & push to remote
### ios incrementVersionNumber
```
fastlane ios incrementVersionNumber
```
Increment the version number of your project
### ios addGitTag
```
fastlane ios addGitTag
```
Add git tag, commit & push to remote
### ios buildApp
```
fastlane ios buildApp
```
Easily build and sign your app using gym
### ios buildToDevice
```
fastlane ios buildToDevice
```
Auto build .ipa into device by ios-deploy
### ios compressSource
```
fastlane ios compressSource
```
Zip source
### ios sendMail
```
fastlane ios sendMail
```
Mail
### ios beta
```
fastlane ios beta
```
Submit a new Beta Build to Apple TestFlight

This will also make sure the profile is up to date
### ios release
```
fastlane ios release
```
Deploy a new version to the App Store

----

This README.md is auto-generated and will be re-generated every time [fastlane](https://fastlane.tools) is run.
More information about fastlane can be found on [fastlane.tools](https://fastlane.tools).
The documentation of fastlane can be found on [docs.fastlane.tools](https://docs.fastlane.tools).
