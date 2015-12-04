pushd .
cp -r ./ /usr/local/bup
cd /usr/local/bup
bundle install
popd

for file in $(startup_files); do
  [ -f $HOME/$file ] || continue
  (grep "Added by Bup" $HOME/$file >/dev/null) && break

  cat <<MESSAGE >>$HOME/$file

### Added by Bup
export PATH="/usr/local/bup/bin:\$PATH"
MESSAGE

  break
done

echo "You installed Bup!"