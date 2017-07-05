#!/bin/sh

clean(){
  rm -rf build
}

makeBuildDir(){
  mkdir -p build
  cd build/
}

makeBody(){
  out=$1
  shift
  
  cat ../instructions/$1 > $out
  echo "\newpage" >> $out
  shift
  
  for f in $@; do
    cat ../instructions/$f >> $out
    echo "" >> $out
  done
}

makeNativeInstr(){
  touch native.md
  
  makeBody native.md \
    native/front.md \
    native/basics/R.md \
    native/basics/packages.md \
    native/pbdR/prereqs.md \
    native/pbdR/pbdR.md
  
  cat ../instructions/native/problems.md >> native.md
  
  pandoc native.md -o native.html
  pandoc native.md -o native.pdf
}

makeDockerInstr(){
  touch docker.md
  
  makeBody docker.md \
    docker/front.md \
    docker/docker.md \
    docker/pbdR.md
  
  pandoc docker.md -o docker.html
  pandoc docker.md -o docker.pdf
}



makeBuildDir
makeNativeInstr
makeDockerInstr
