# docker-sshd
defines a docker container with sshd installed

The user should be aware that this is a pretty dangerous container; it allows the root user to use ssh to login to the container without any sort of password or key challenge. 

## Usage

1. [**Install docker**](https://docs.docker.com/installation/)
1. **Download and start the ssh server instance**  
`docker run --name sshd -p 2234:22 -d greyltc/sshd`
1. **Test the ssh server**  
Using your favorite ssh client, loginto localhost, port 2234 with `root` as the username and a blank password
1. **[Optional] Stop the ssh docker server instance**  
`docker stop sshd`
1. **[Optional] Delete the ssh docker server instance (after stopping it)**  
`docker rm sshd`
1. **Profit.**
