#!/usr/bin/env bash

registry=registry.cn-hangzhou.aliyuncs.com
image_name=shiyanlou22/python
image_tag=robot-framework-base

image=${registry}/${image_name}:${image_tag}

proxy_args="--build-arg http_proxy=http://109.105.4.65:8118 --build-arg https_proxy=http://109.105.4.65:8118 "

docker build ${proxy_args} -t ${image} .

docker push ${image}
