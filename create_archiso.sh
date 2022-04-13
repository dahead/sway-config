# Create arch iso
sudo su
pacman -S archiso
mkdir archlive
cp -r /usr/share/archiso/configs/releng/* archlive
cd archlive/
# remove entries from previous build
# rm -v work/bu8ild.make_*
ls
nano packages.x86_64
nano airootfs/root/customize_airootfs.sh
./build.sh -v

# built iso is in folder "out"
cd out/

# mount iso

# boot from iso

# install arch linux