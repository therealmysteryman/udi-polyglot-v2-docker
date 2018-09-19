## Docker Image for UDI Polyglot V2

It required that you run MongoDB (using MongoDB Docker from Community Plugins) in another Docker named mongo. 

## Tags
- latest - Docker Image based on Debian:Stretch
- apline - Docker Image based on Alpine - **Currently not working 

## Note

Some nodeserver still store data outside of the MongoDB, I suggest that you create a volume for the /root/.polyglot/ on your system to have the data persist a image update.
