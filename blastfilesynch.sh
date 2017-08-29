#!/bin/sh

# This is a classic use case for rsync:
# 
# rsync -av /source-path/source-dir /destination-path
# rsync will copy only new and changed files to the new location.
# 
# It is important to understand how a trailing slash on the source argument functions. 
# If there is a trailing slash then the contents of /source-path/source-dir will be copied to destination-path. 
# If there is no trailing slash then source-dir itself will be copied to the destination and its contents will 
# be another level down in the destination hierarchy.
# 
# So if you want to replicate one path to another include the trailing slash as follows:
# 
# rsync -av /sourcepath/sourcedir/ /duplicatpath/sourcedir/

src="/Volumes/Mac_2TB_SSD"
dst="/Volumes/5TB-ExFAT"
src="/Volumes/MAC"
dst="/Volumes/GOPROCAMERA"
dst="/Volumes/MAC"
rsync -av "${src}/Automation/blast-nga-universal-ios/NextGenIOSUniversal/NGABaseballUITests/" "${dst}/Automation/BlastAuto/Baseball_iOS"
dst="/Volumes/Mac-boot-SSD"
rsync -av "${src}/Automation/blast-nga-universal-ios/NextGenIOSUniversal/NGABaseballUITests/" "${dst}/Automation/BlastAuto/Baseball_iOS"
dst="/Volumes/Mac-boot-SSD"
rsync -av "${src}/Automation/blast-nga-universal-ios/" "${dst}/Automation/blast-nga-universal-ios"

#rsync -av "${src}/Automation/blast-nga-universal-ios/NextGenIOSUniversal/NGABaseballUITests/" "${dst}/Documents"

#rsync -av "${src}/MyMacBackupstuff/" "${dst}MyMacBackupstuff"



# rsync -av "/Applications/" "/Volumes/1TB_USB3/gopromac/Applications"
# rsync -av "/Library/" "/Volumes/1TB_USB3/gopromac/Library"
# rsync -av "/Developer/" "/Volumes/1TB_USB3/gopromac/Developer"
# rsync -av "/Users/keithfisher/Downloads/" "/Volumes/1TB_USB3/gopromac/kfischer/Downloads"
# rsync -av "/Users/keithfisher/Documents/" "/Volumes/1TB_USB3/gopromac/kfischer/Documents"
# rsync -av "/Users/keithfisher/Pictures/" "/Volumes/1TB_USB3/gopromac/kfischer/Pictures"
# rsync -av "/Users/keithfisher/Desktop/" "/Volumes/1TB_USB3/gopromac/kfischer/Desktop"
# rsync -av "/Users/keithfisher/workspace/" "/Volumes/1TB_USB3/gopromac/kfischer/workspace"
# rsync -av "/Users/keithfisher/Applications/" "/Volumes/1TB_USB3/gopromac/kfischer/Applications"
# rsync -av "/Users/keithfisher/Library/" "/Volumes/1TB_USB3/gopromac/kfischer/Library"
# rsync -av "/Users/keithfisher/Dev/" "/Volumes/1TB_USB3/gopromac/kfischer/Dev"
# rsync -av "/Users/keithfisher/DCIM/" "/Volumes/1TB_USB3/gopromac/kfischer/DCIM"
# rsync -av "/Users/keithfisher/DropboxSync/" "/Volumes/1TB_USB3/gopromac/kfischer/DropboxSync"
# rsync -av "/Users/keithfisher/Music/" "/Volumes/1TB_USB3/gopromac/kfischer/Music"
# rsync -av "/Users/keithfisher/NetBeansProjects/" "/Volumes/1TB_USB3/gopromac/kfischer/NetBeansProjects"
# rsync -av "/Users/keithfisher/Projects/" "/Volumes/1TB_USB3/gopromac/kfischer/Projects"
# rsync -av "/Users/keithfisher/Public/" "/Volumes/1TB_USB3/gopromac/kfischer/Public"
# rsync -av "/Users/keithfisher/PycharmProjects/" "/Volumes/1TB_USB3/gopromac/kfischer/PycharmProjects"
# rsync -av "/Users/keithfisher/qtprojects/" "/Volumes/1TB_USB3/gopromac/kfischer/qtprojects"
# rsync -av "/Users/keithfisher/VirtualBox VMs/" "/Volumes/1TB_USB3/gopromac/kfischer/VirtualBox VMs"
# rsync -av "/Users/keithfisher/WebstormProjects/" "/Volumes/1TB_USB3/gopromac/kfischer/WebstormProjects"
# rsync -av "/Users/keithfisher/workspace/" "/Volumes/1TB_USB3/gopromac/kfischer/workspace"
# rsync -av "/Users/keithfisher/Git/" "/Volumes/1TB_USB3/gopromac/kfischer/Git"
# rsync -av "/Users/keithfisher/ios_dev/" "/Volumes/1TB_USB3/gopromac/kfischer/ios_dev"
# rsync -av "/Users/keithfisher/Movies/" "/Volumes/1TB_USB3/gopromac/kfischer/Movies"
# rsync -av "/Users/keithfisher/Dropbox (GoPro)/" "/Volumes/1TB_USB3/gopromac/kfischer/Dropbox (GoPro)"
read -rsp $'Press enter to continue...\n'

