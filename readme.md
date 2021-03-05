# Building Packages

```cmd
# Configure FX
fx --service --packages -v=%BUILD% -a %ACK% -f %ROOT_SERVER% --root %PKG_ROOT% --fetch %PKG_FETCH% --run %PKG_ROOT%../com.mfd.packages.cfg.fx --full

# Build the packages
fx --service --packages --with-config=%PKG_CFG_OUT% --build=FULL --build=ALL_CPUS
```
