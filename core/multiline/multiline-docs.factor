USING: help.markup help.syntax strings ;
in: multiline

HELP: /*
{ $syntax "/* comment */" }
{ $description "Provides C-like comments that can span multiple lines. One caveat is that " { $snippet "/*" } " and " { $snippet "*/" } " are still tokens and must not appear in the comment text itself." }
{ $examples
    { $example "USING: multiline ;"
           "/* I think that I shall never see"
           "   A poem lovely as a tree. */"
            ""
    }
} ;

HELP: \ HEREDOC:
{ $syntax "HEREDOC: marker\n...text...\nmarker" }
{ $values { "marker" "a word (token)" } { "text" "arbitrary text" } { "value" string } }
{ $description "Returns a string delimited by an arbitrary user-defined token. This delimiter must be exactly the text beginning at the first non-blank character after " { $link postpone\ HEREDOC: } " until the end of the line containing " { $link postpone\ HEREDOC: } ". Text is captured until a line is found containing exactly this delimiter string." }
{ $warning "Whitespace is significant." }
{ $examples
    { $example "USING: multiline prettyprint ;"
               "HEREDOC: END\nx\nEND\n."
               "\"x\\n\""
    }
    { $example "USING: multiline prettyprint sequences ;"
               "2 5 HEREDOC: zap\nfoo\nbar\nzap\nsubseq ."
               "\"o\\nb\""
    }
} ;

HELP: parse-multiline-string
{ $values { "end-text" "a string delineating the end" } { "str" "the parsed string" } }
{ $description "Parses the input stream until the " { $snippet "end-text" } " is reached and returns the parsed text as a string." }
{ $notes "Used to implement " { $link postpone\ /* } "." } ;

ARTICLE: "multiline" "Multiline"
"Multiline strings:"
{ $subsections
    postpone\ HEREDOC:
}
"Multiline comments:"
{ $subsections postpone\ /* }
"Writing new multiline parsing words:"
{ $subsections parse-multiline-string }
;

about: "multiline"
