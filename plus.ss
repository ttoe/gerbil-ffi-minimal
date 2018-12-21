;; We export our procedure because we want to use it.
(export plus-one)
(extern plus-one)

(begin-foreign
 ;; The namespace apparently needs to be: <package-name>/<this-file's-name>#
 ;; After that we export the procedure 'plus-one' as defined below.
 (namespace ("tt/plus#" plus-one))

 ;; We include the header file containing the procedure declaration.
 ;; Without '(c-declare ...)' there is a compiler warning about an implicit declaration of 'plus_one'.
 ;; 'c-declare' seems to need an absolute path though. Therefore the makefile adds the include path.
 (c-declare "#include \"libplus.h\"")
 ;; Alternatively the following would also work.
 ;; (c-declare "int plus_one(int x);")

 ;; (define <procedure-name> (c-lambda (<argument-type> ...) <return-type> <c-procedure-name-string>)
 (define plus-one (c-lambda (int) int "plus_one")))
