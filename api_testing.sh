curl -Lo /dev/null -skw "\ntime_connect: %{time_connect}s\ntime_namelookup: %{time_namelookup}s\ntime_starttransfer: %{time_starttransfer}s\ntime_total: %{time_total}s\nDownload size: %{size_download}\n\n" \
'http://localhost:8000/drf/' 

curl -Lo /dev/null -skw "\ntime_connect: %{time_connect}s\ntime_namelookup: %{time_namelookup}s\ntime_starttransfer: %{time_starttransfer}s\ntime_total: %{time_total}s\nDownload size: %{size_download}\n\n" \
'http://localhost:8000/django/' 

curl -Lo /dev/null -skw "\ntime_connect: %{time_connect}s\ntime_namelookup: %{time_namelookup}s\ntime_starttransfer: %{time_starttransfer}s\ntime_total: %{time_total}s\nDownload size: %{size_download}\n\n" \
'http://localhost:8000/simple/' 

curl -Lo /dev/null -skw "\ntime_connect: %{time_connect}s\ntime_namelookup: %{time_namelookup}s\ntime_starttransfer: %{time_starttransfer}s\ntime_total: %{time_total}s\nDownload size: %{size_download}\n\n" \
'http://localhost:8000/drf/1/' 

curl -Lo /dev/null -skw "\ntime_connect: %{time_connect}s\ntime_namelookup: %{time_namelookup}s\ntime_starttransfer: %{time_starttransfer}s\ntime_total: %{time_total}s\nDownload size: %{size_download}\n\n" \
'http://localhost:8000/django/1/' 

curl -Lo /dev/null -skw "\ntime_connect: %{time_connect}s\ntime_namelookup: %{time_namelookup}s\ntime_starttransfer: %{time_starttransfer}s\ntime_total: %{time_total}s\nDownload size: %{size_download}\n\n" \
'http://localhost:8000/django-invalid/1/' 

curl -Lo /dev/null -skw "\ntime_connect: %{time_connect}s\ntime_namelookup: %{time_namelookup}s\ntime_starttransfer: %{time_starttransfer}s\ntime_total: %{time_total}s\nDownload size: %{size_download}\n\n" \
'http://localhost:8000/simple/1/' 



