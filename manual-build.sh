COQ_VERSION=8.11.1

TAG=blaisorblade/coq:$COQ_VERSION
docker build --pull --rm \
  --build-arg COQ_VERSION="${COQ_VERSION}" \
  -t $TAG .
docker push $TAG
