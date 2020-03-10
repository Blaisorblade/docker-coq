FROM coqorg/base:4.09.0-flambda
LABEL maintainer="erik@martin-dorel.org"

ENV COQ_VERSION="8.11.0"
ENV COQ_EXTRA_OPAM="coq-bignums"

RUN ["/bin/bash", "--login", "-c", "set -x \
  && eval $(opam env --switch=${COMPILER} --set-switch) \
  && opam update -y -u \
  && opam pin add -n -k version coq ${COQ_VERSION} \
  && opam install -y -v -j ${NJOBS} coq ${COQ_EXTRA_OPAM} \
  && opam clean -a -c -s --logs \
  && opam config list && opam list"]
