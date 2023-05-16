apt-get install -y lsb-release
apt-get install -y git
sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | apt-key add -
apt update -y
apt install -y ros-melodic-ros-base
echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
