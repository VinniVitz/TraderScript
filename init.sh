read -p "Enter a name for the docker image [traderscript]:" docker_image
docker_image=${docker_image:-"traderscript"}
docker build -t $docker_image ./data
cp ./data/startup.sh .
rm -r data
rm init.cmd
rm init.sh
