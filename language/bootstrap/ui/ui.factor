USING: alien namespaces system combinators kernel sequences
vocabs ;
in: bootstrap.ui

"bootstrap.math" require
"bootstrap.compiler" require
"bootstrap.threads" require

"ui-backend" get [
    {
        { [ os macosx? ] [ "cocoa" ] }
        { [ os windows? ] [ "windows" ] }
        { [ os unix? ] [ "gtk" ] }
    } cond
] unless* "ui.backend." prepend require