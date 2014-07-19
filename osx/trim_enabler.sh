# Taken from: https://gist.github.com/return1/4058659
#
# Original version by Grant Parnell is offline (http://digitaldj.net/2011/07/21/trim-enabler-for-lion/)
# Update July 2014: no longer offline, see https://digitaldj.net/blog/2011/11/17/trim-enabler-for-os-x-lion-mountain-lion-mavericks/
#
# Looks for "Apple" string in HD kext, changes it to a wildcard match for anything
#
# Alternative to http://www.groths.org/trim-enabler-3-0-released/
# Method behind this madness described: http://forums.macrumors.com/showthread.php?t=1409151&page=4
# See discussion in comments here: https://www.macupdate.com/app/mac/39654/lion-tweaks
# And here: http://forums.macrumors.com/showthread.php?t=1410459
# And here: http://forums.macrumors.com/showthread.php?t=1480302

sudo cp /System/Library/Extensions/IOAHCIFamily.kext/Contents/PlugIns/IOAHCIBlockStorage.kext/Contents/MacOS/IOAHCIBlockStorage /System/Library/Extensions/IOAHCIFamily.kext/Contents/PlugIns/IOAHCIBlockStorage.kext/Contents/MacOS/IOAHCIBlockStorage.original

# for Mavericks 10.9.4 (thanks Tobi)
sudo perl -pi -e 's|(^\x00{1,20})[^\x00]{9}(\x00{1,20}\x54)|$1\x00\x00\x00\x00\x00\x00\x00\x00\x00$2|sg' /System/Library/Extensions/IOAHCIFamily.kext/Contents/PlugIns/IOAHCIBlockStorage.kext/Contents/MacOS/IOAHCIBlockStorage

# for Mavericks and Mountain Lion from 10.8.3 to 10.9.3 
#sudo perl -pi -e 's|(\x52\x6F\x74\x61\x74\x69\x6F\x6E\x61\x6C\x00{1,20})[^\x00]{9}(\x00{1,20}\x54)|$1\x00\x00\x00\x00\x00\x00\x00\x00\x00$2|sg' /System/Library/Extensions/IOAHCIFamily.kext/Contents/PlugIns/IOAHCIBlockStorage.kext/Contents/MacOS/IOAHCIBlockStorage

# for Mountain Lion from 10.8.1 to 10.8.2 and Lion 10.7.5
#sudo perl -pi -e 's|(\x52\x6F\x74\x61\x74\x69\x6F\x6E\x61\x6C\x00{1,20})[^\x00]{9}(\x00{1,20}\x4D)|$1\x00\x00\x00\x00\x00\x00\x00\x00\x00$2|sg' /System/Library/Extensions/IOAHCIFamily.kext/Contents/PlugIns/IOAHCIBlockStorage.kext/Contents/MacOS/IOAHCIBlockStorage

# for Mountain Lion 10.8.0 and Lion 10.7.4 BELOW
#sudo perl -pi -e 's|(\x52\x6F\x74\x61\x74\x69\x6F\x6E\x61\x6C\x00{1,20})[^\x00]{9}(\x00{1,20}\x51)|$1\x00\x00\x00\x00\x00\x00\x00\x00\x00$2|sg' /System/Library/Extensions/IOAHCIFamily.kext/Contents/PlugIns/IOAHCIBlockStorage.kext/Contents/MacOS/IOAHCIBlockStorage

sudo touch /System/Library/Extensions/

# now reboot!
