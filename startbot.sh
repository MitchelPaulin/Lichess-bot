#!/bin/bash
curl https://sh.rustup.rs -sSf > install_cargo.sh
chmod 777 install_cargo.sh
./install_cargo.sh -y
source $HOME/.cargo/env
git clone https://github.com/MitchelPaulin/Walleye --depth=1
cd Walleye
cargo build --release
mv target/release/walleye ../engines/walleye
cd ..
rm -rf Walleye
chmod a+x engines/walleye
ls engines -l
python3 lichess-bot.py -u