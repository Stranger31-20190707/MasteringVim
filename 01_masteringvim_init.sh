# �S��root�ł̎��s��z��
yum install make -y
yum install git-core -y

# �ȉ���python3���g�p���邽�߂̃C���X�g�[��
yum install python3 -y
yum install python36-devel.x86_64
yum install ncurses-devel

git clone https://github.com/vim/vim.git
cd vim/src/
# python���g�p����֌W�ł������ݒ�ǉ�
./configure --with-features=huge --enable-python3interp --with-python3-command=/usr/bin/python3 --with-python3-config-dir=/usr/lib64/python3.6/config-3.6m-x86_64-linux-gnu --enable-fail-if-missing
make
make install
vim --version

