#!/bin/bash

clone_repo() {
    echo "Cloning the repo..."
    git clone https://github.com/KunalAsude/Flipkart_Clone.git
}

deploy(){
	sudo systemctl restart nginx
    	echo "Deployment complete! Your site should be accessible."
}

# Execute functions
echo "~~~~~~~~~~~~~~~~~~Deployment Started ~~~~~~~~~~~~~"
if ! clone_repo; then
	echo "The repo already exits"
fi

if ! deploy ; then 
	echo "The Deployment Failed"
	exit 1
fi
