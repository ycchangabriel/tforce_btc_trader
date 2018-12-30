make sure virtualenv is not using anacoder python
that environment messed up GPy

make sure python version == 3.6
tensorflow incompatible with 3.7
README instructed 3.6+

install with `pip install -r requirements.txt` first
then manual `pip install` missing dependencies

tensorforce working after debugging at commit c6a1b2ebeeadb3f7453e4a6dee21a68648f4508a
should try latest commit after first test

for flask client, need webpack-dev-server@2. newer version incompatible
npm i webpack-dev-server@2
