if (wget -t 2 -b -o tmp -O - http://eloy-mp.com) then
# wait a bit for server to load the page
  sleep 5
  if (grep 'ERROR 500: Internal Server Error' tmp) then
    echo `date`-\>Ejecucion verificacion site Eloy-mp.com ERROR DETECTADO.....!!!!!!!!
  fi
  # Remove temporal file
  rm tmp
fi
