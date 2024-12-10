# hydrogreen-rp-buildroot

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
make hydrogreen_defconfig
```

Compile

```
make
```