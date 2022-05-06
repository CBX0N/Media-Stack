Write-Host "Creating Basic Paths"
New-Item -ItemType Directory c:\media-stack -ErrorAction SilentlyContinue
New-Item -ItemType Directory C:\media-stack\conf -ErrorAction SilentlyContinue
New-Item -ItemType Directory c:\media-stack\data -ErrorAction SilentlyContinue


Write-Host "Creating Config Paths"
New-Item -ItemType Directory C:\media-stack\conf\radarr -ErrorAction SilentlyContinue
New-Item -ItemType Directory C:\media-stack\conf\jackett -ErrorAction SilentlyContinue


Write-Host "Creating Media Paths"
New-Item -ItemType Directory c:\media-stack\data\downloads\torrents -ErrorAction SilentlyContinue
New-Item -ItemType Directory c:\media-stack\data\Movies -ErrorAction SilentlyContinue

docker-compose up --detach 