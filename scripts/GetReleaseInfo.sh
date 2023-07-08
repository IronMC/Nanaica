sha1() {
  sha1sum $1 | awk '{print $1}'
}

md5() {
  md5sum $1 | awk '{print $1}'
}

prop() {
  grep "${1}" gradle.properties | cut -d'=' -f2 | sed 's/\r//'
}

commitid=$(git log --pretty='%h' -1)
mcversion=$(prop mcVersion)
gradleVersion=$(prop version)
preVersion=$(prop preVersion)
tagid="$mcversion-$commitid"
jarName="Iron-$mcversion.jar"
Ironid="Iron-$commitid"
releaseinfo="releaseinfo.md"
discordmes="discordmes.json"
make_latest=$([ $preVersion = "true" ] && echo "false" || echo "true")

rm -f $discordmes
rm -f $releaseinfo

mv build/libs/Iron-paperclip-$gradleVersion-reobf.jar $jarName
echo "name=$Ironid" >> $GITHUB_ENV
echo "tag=$tagid" >> $GITHUB_ENV
echo "jar=$jarName" >> $GITHUB_ENV
echo "info=$releaseinfo" >> $GITHUB_ENV
echo "discordmes=$discordmes" >> $GITHUB_ENV
echo "pre=$preVersion" >> $GITHUB_ENV
echo "make_latest=$make_latest" >> $GITHUB_ENV

echo "$Ironid [![download](https://img.shields.io/github/downloads/IronMC/Iron/$tagid/total?color=0)](https://github.com/IronMC/Iron/releases/download/$tagid/$jarName)" >> $releaseinfo
echo "=====" >> $releaseinfo
echo "" >> $releaseinfo
if [ $preVersion = "true" ]; then
  echo "> This is early, experimental build. It is only recommended for usage on test servers and should be used with caution." >> $releaseinfo
  echo "> **Backups are mandatory!**" >> $releaseinfo
  echo "" >> $releaseinfo
fi
echo "### Commit Message" >> $releaseinfo

number=$(git log --oneline master ^`git describe --tags --abbrev=0` | wc -l)
echo "$(git log --pretty='> [%h] %s' -$number)" >> $releaseinfo

echo "" >> $releaseinfo
echo "### Checksum" >> $releaseinfo
echo "| File | $jarName |" >> $releaseinfo
echo "| ---- | ---- |" >> $releaseinfo
echo "| MD5 | `md5 $jarName` |" >> $releaseinfo
echo "| SHA1 | `sha1 $jarName` |" >> $releaseinfo

echo -n "{\"content\":\"Iron New Release\",\"embeds\":[{\"title\":\"$Ironid\",\"url\":\"https://github.com/IronMC/Iron/releases/tag/$tagid\",\"fields\":[{\"name\":\"Changelog\",\"value\":\"" >> $discordmes
echo -n $(git log --oneline --pretty='> [%h] %s\\n' -$number) >> $discordmes
echo "\",\"inline\":true}]}]}" >> $discordmes
