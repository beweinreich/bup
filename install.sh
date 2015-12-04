pushd .
cp -r ./ ~/.bup
cd ~/.bup
bundle install
popd
echo "Installed"