#!/bin/bash -x

VERSION=1.0

mkdir -p ~/.kube/plugins

curl -Ls https://github.com/schaefec/unreadypods/archive/${VERSION}.tar.gz | tar -C ~/.kube/plugins -zxf -

mv ~/.kube/plugins/unreadypods-$VERSION ~/.kube/plugins/unreadypods

chmod 755 ~/.kube/plugins/unreadypods/readypods.sh

echo "Done"
echo ""
echo "Try it out with:"
echo ""
echo "          kubectl plugin unreadypods"
echo ""

