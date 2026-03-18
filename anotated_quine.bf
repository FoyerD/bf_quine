{ leave first cell empty so we know where start of tape }
>>>

{ this big line was gnerated based on every line of code following it (simply putting it on the tape) }
{ <BIG LINE HERE> }


{ START HERE }
{ go to start of tape }
<<<[<<<]

{ print initial >>> }
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++...[-]

{  go to start of code on tape }
>>>

{ to print the BIG line, in a loop over tape: 
    1. put '+' in 2nd subcell
    2. print '+' (N times, ord of char), copy N to subcell 3
    3. change '+' to '>', print 3 times
    4. go to next cell }
[
    >+++++++++++++++++++++++++++++++++++++++++++<
    [>.>+<<-]
    >+++++++++++++++++++...
    >>
]

{ now, simply print what is in the tape: }
<[<<<]
>>>
[.>>>]
