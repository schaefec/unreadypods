VERSION=1.0

mkdir -p ~/.kube/plugins/unreadypods

curl -Ls https://github.com/schaefec/unreadypods/archive/${VERSION}.tar.gz | tar -C ~/.kube/plugins -zxf -

mv ~/.kube/plugins/unreadypods-$VERSION ~/.kube/plugins/unreadypods

chmod 755 ~/plugins/unreadypods/readypods.sh

echo "Done"
echo ""
echo "Try it out with:"
echo ""
echo "          kubectl plugin unreadypods"
echo ""

