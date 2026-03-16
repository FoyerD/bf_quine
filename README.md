# How to run
make sure you have a brainfuck interpreter
`sudo dnf install bf` for example

then, run `python write_quine.py anotated_code.bf`
to run the quine run `echo $(bf < quine.bf) > out1.bf`
then `cmp quine.bf out1.bf`
this might say the files have a difference (but its only a newline at the end)
