# cflags-buildgomodule
Demonstration of CFLAGS not being picked up correctly from within pkgs.buildGoModule of a dependency

```sh
nix-build
```
fails with
```
vendor/github.com/supranational/blst/bindings/go/blst.go:16:11: fatal error: 'blst.h' file not found
 #include "blst.h"
          ^~~~~~~~
1 error generated.
```

However, the following works fine:
```
nix-shell --run "go build"
```