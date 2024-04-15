img="nvcr.io/nvidia/pytorch:21.03-py3" 

docker run --gpus all  --privileged=true   --workdir /git --name "time_gan"  -e DISPLAY --ipc=host -d --rm  -p 6433:8889\
 -v /home/ggzhang/TimeGAN:/git/time_gan \
 -v /home/ggzhang/datasets:/git/datasets \
 $img sleep infinity

docker exec -it time_gan /bin/bash

#docker images  |grep "time_gan"  |grep "21."

#docker stop  time_gan

