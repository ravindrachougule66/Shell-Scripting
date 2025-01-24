#!/bin/bash


code_clone() {
	echo "Cloning the application from Github..."
	git clone https://github.com/ravindrachougule66/django-notes-app.git
}

install_req() {
	echo "installing requirements"
	sudo apt-get install docker.io nginx -y
}

req_restart() {
	sudo chown $USER /var/run/docker.sock 
	sudo systemctl enable docker
	sudo systemctl enable nginx
	sudo systemctl restart docker
}

deploy() {
	docker build -t notes-app .
	docker run -d -p 8000:8002 notes-app:latest
}

if ! code_clone; then
	echo "Directory already exists"
	cd django-notes-app
fi

if ! install_req; then
	echo "Installation failed"
	exit 1
fi

if ! req_restart; then
	echo "System issue"
	exit 1
fi

deploy

echo "***********deployment done*********"
