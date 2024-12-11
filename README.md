# hydrogreen-rp-buildroot

The goal of this project is to create a lightweight embedded linux distribution for the raspberry pi 4.

### Build

The first step to building the project is making sure that submodules are initialized:
```
git submodule update --init
```

After that we change into Buildroot directory:
```
cd buildroot
```

Initialize with custom defconfig
```
make BR2_EXTERNAL=$PWD/../ hydrogreen_defconfig
```

Compile

```
make
```