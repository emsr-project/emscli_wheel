pip install rospkg
pip install mpi4py
pip install future
pip install rosdep
mkdir -p /root/ros_ws && cd /root/ros_ws && git clone https://github.com/QinjieLin-NU/carl-stage2.git
mkdir -p /root/ros_ws/catkin_ws/src && cp -r /root/ros_ws/carl-stage2/stage_ros-add_pose_and_crash /root/ros_ws/catkin_ws/src/.
# bash /opt/ros/melodic/setup.bash
# cd /root/ros_ws/catkin_ws && rosdep init && rosdep update && rosdep install --from-paths src --ignore-src -r -y
# cd /root/ros_ws/catkin_ws && catkin_make
# echo "/root/ros_ws/catkin_ws/devel/setup.bash" >> ~/.bashrc
