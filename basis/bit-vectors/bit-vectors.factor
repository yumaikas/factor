! Copyright (C) 2008, 2009 Slava Pestov.
! See http://factorcode.org/license.txt for BSD license.
USING: bit-arrays classes growable kernel math parser
prettyprint.custom sequences sequences.private vectors.functor ;
IN: bit-vectors

VECTORIZED: bit bit-array <bit-array>

SYNTAX: \?V{ \ } [ >bit-vector ] parse-literal ;

M: bit-vector contract 2drop ;
M: bit-vector >pprint-sequence ;
M: bit-vector pprint-delims drop \ ?V{ \ } ;
M: bit-vector pprint* pprint-object ;
