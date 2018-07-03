VERSION=1.0

mkdir -p ~/plugins/unreadypods

curl -Ls https://github.com/schaefec/unreadypods/archive/${VERSION}.tar.gz | tar -C ~/.kube/plugins -zxf -

mv ~/plugins/unreadypods-$VERSION ~/plugins/unreadypods

echo "Done"
echo ""
echo "Try it out with:"
echo ""
echo "          kubectl plugin unreadypods"
echo ""

