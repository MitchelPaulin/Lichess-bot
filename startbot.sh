#!/bin/bash
git clone https://github.com/MitchelPaulin/Walleye --depth=1
cd Walleye
cargo build --release
mv target/release/walleye ../engines/walleye
cd ..
rm -rf Walleye
chmod a+x engines/walleye
ls engines -l
python3 lichess-bot.py -u