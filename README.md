# Minimal [Gerbil](https://github.com/vyzo/gerbil) C FFI example

**Tested on:**  _macOS_

Run `make` to compile the awesome single-function library `libplus`.
See `Makefile` to see what happens behind the scenes.
On _macOS_ the compiled library is put into `~/.gerbil/lib`.
Now the following should work in `gxi` or code.

```scheme
(import :tt/plus)

(plus-one 1)

(def (plus-two x) (plus-one (plus-one x)))

(plus-two 1)
```
