#!/bin/bash


<< task

	deploy a Django app and handle errors 
task

code_clone(){
	echo "Cloning the Repo..."
	git clone https://github.com/LondheShubham153/django-notes-app.git

}

install_req(){
	echo "Installing Dependencies"
	sudo apt-get install docker.io nginx -y
}

required_restart(){
	sudo chown $USER /var/run/docker.sock
	sudo systemctl enable docker
	sudo systemctl enable nginx
	sudo systemctl restart docker
}

deploy(){
	docker build -t notes-app .
	docker run -d -p 8000:8000 notes-app:latest
}
echo "~~~~~~~~~~~~Deployment Started~~~~~~~~"
if ! code_clone ; then 
	echo "The Folder Already Exits..."
	cd django-notes-app
fi

if ! install_req ; then 
	echo "Error While Installing Dependencies..."
	exit 1
fi

if ! required_restart ; then
	echo "Theres an Issue in the System !!"
	exit 1
fi

deploy
echo "~~~~~~~~~~~deployment done~~~~~~~~~~~~"

