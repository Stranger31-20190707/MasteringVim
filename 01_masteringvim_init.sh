# 全てrootでの実行を想定
yum install make -y
yum install git-core -y

# 以下はpython3を使用するためのインストール
yum install python3 -y
yum install python36-devel.x86_64
yum install ncurses-devel

git clone https://github.com/vim/vim.git
cd vim/src/
# pythonを使用する関係でもろもろ設定追加
./configure --with-features=huge --enable-python3interp --with-python3-command=/usr/bin/python3 --with-python3-config-dir=/usr/lib64/python3.6/config-3.6m-x86_64-linux-gnu --enable-fail-if-missing
make
make install
vim --version

