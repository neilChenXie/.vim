# recompile vim

Main purpose: many vim doesn't have **lua**.
this tutorial make the whole thing start from the ground.

## Download

* vim Source:
    * [github](https://github.com/vim/vim)  
    * [ftp](ftp://ftp.vim.org/pub/vim/unix/)
* LuaJit
    * [offical site](http://luajit.org/download/)

## ENV

Try **Compile** if not sure, missing component will course **failure**

Make it complete with my experience growth

### lua

* apt-get

* yum

    ```sh
    sudo yum install lua
    sudo yum install lua-devel
    ```

* source code

### LuaJit

* source code

    * check version from [offical site](http://luajit.org/download/)

    ```sh
    # 使用默认安装路径/usr/local/
    make
    sudo make install
    ```

## Compile

* Failure: check **Bug** section, **Google** it if not there.

```sh
# --enable-fail-if-missing否则lua missing不报错
./configure \
--prefix=/data/vim74 \
--with-features=huge \
--with-luajit \
--enable-luainterp=yes \
--enable-fail-if-missing

# Explanation
## --prefix where to install
```

## Bug

### no terminal library found

* yum

    ```sh
    sudo yum install ncurses-devel
    ```

### libluajit-5.1.so.2

* error

    ```bash
    /data/vim74/bin/vim: error whle loading shared libraries: libluajit-5.1.so.2: cannot open shared object file: No such file or directory
    ```

* link to **/lib64/**

    ```sh
    sudo ln -s /usr/local/lib/libluajit-5.1.so.2 /lib64/libluajit-5.1.so.2
    ```
