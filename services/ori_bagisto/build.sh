version=$1
if [ ! -n "$version" ]; then
    echo "version is null"
    echo "Usage: $0 1.0.0"
    exit
fi
docker build --build-arg BUILDVERSION=$version --no-cache -t base_laravel:$version .

if [ $? -eq 0 ];then
  echo `date '+%Y-%m-%d %H:%M:%S'` build base_laravel:$buildVersion >> /opt/base_laravel.log
fi

#docker push base_laravel:$version
#docker save base_laravel:$version | gzip > /tmp/base_laravel_$version.tar.gz
