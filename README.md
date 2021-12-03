# ROS-1&ROS-2 學習筆記

Linux環境 : `Ubuntu 18.04`

ROS-1 version : `Medolic`

## 安裝ROS-1 Melodic
```shell
sh build_ros1.sh
```

## Workspace 
### 建立Workspace
```shell
mkdir -p {workspace name}/src
cd {workspace name}/src
catkin_init_workspace
catkin_create_pkg {project_name} rospy # rospy後面可加入其他package
```

### 編譯Workspace
```shell
cd {workspace name} # 到workspace的根目錄
catkin_make
sorce devel/setup.bash
rosrun {project_name} {Python_file}.py # rosrun時要確認roscore是否在執行中
```

## Reference
* https://www.ros.org/
