#!/bin/bash

: << COMMENT
>: write a file with content, rewrite if exits, create if it doesnt exist
>>: append text to file, create if doesnt exist
<: redirect the input of a command, it can sometimes do what pipe '|' does eg. grep pattern < file.txt
<<: It's called the here-document, it redirects a block of text into a command or script you have to provide a word that delimits where it starts and where it ends.
<<<: 
COMMENT
echo '> operand command executed'
echo 'hello world' > test.txt
echo -e '\n'

echo '>> operand command executed'
echo 'THIS IS A NEW LINE FORM A NEW COMMAND' >> test.txt
echo -e '\n'


echo '< operand command executed:'
grep bash < input.txt
echo -e '\n'

echo '<< operand command executed: '
grep bash << EOF
thisbash
isbash
abash
testbash
bashbash
no
more
words
in
this
document
EOF
echo -e '\n'

echo '<<< operand command executed: '
wc -w <<< "How many words are there?"
