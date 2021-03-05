echo 1112345678999

 #color variables here...

 git fetch
 HEADHASH=$(git rev-parse HEAD)
 UPSTREAMHASH=$(git rev-parse main@{upstream})

 if [ "$HEADHASH" != "$UPSTREAMHASH" ]
 then
   echo -e ${ERROR}Not up to date with origin. Aborting.${NOCOLOR}
   echo
   git pull origin main
   exit 0
 else
   echo -e ${FINISHED}Current branch is up to date with origin/main.${NOCOLOR}
 fi