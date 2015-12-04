pushd .
cp -r ./ ~/.bup
rm -rf ./.bup
cd ~/.bup
bundle install
popd
echo "Installed"