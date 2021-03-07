echo 1112345678999

 git fetch
 HEADHASH=$(git rev-parse HEAD)
 UPSTREAMHASH=$(git rev-parse main@{upstream})

 if [ "$HEADHASH" != "$UPSTREAMHASH" ]
 then
   echo -e ${ERROR}[bash_syncer] Not up to date with origin.${NOCOLOR}
   echo
   git pull origin main
   exit 0
 else
   echo -e ${FINISHED}[bash_syncer] Current branch is up to date with origin/main.${NOCOLOR}
 fi