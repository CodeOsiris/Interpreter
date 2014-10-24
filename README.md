Interpreter
===========

Documentation
-------------

###Overview<br/>
A mini-interpreter written in scheme which is able to interpret itself, and therefore could be extended in the future using boot-strap iteration.

###Files<br/>
<b>interpreter.scm</b>: main file, provides supporting functions including:<i>define, if, cond, let, let*, letrec, quote, apply</i>.
<b>library.scm</b>: library, contains implementations of non-primitive functions including:<i>caar, cadr, cdar, cddr, caadr, caddr, cdadr, cadddr, not, equal?, newline, map, assoc, append</i>.
<b>test.scm</b>: sample input, containing some test functions including:<i>test-define-func, test-let, test-let*, test-letrec, test-cond</i>.

###How to Run<br/>
Go to the directory of interpreter and type the following commands in scheme:
>	(load "interpreter.scm")
	(repl)
	(load "library.scm")

To use <b>test.scm</b> to test the interpreter:
>	(load "test.scm")
	(test-define-func)
	(test-let)
	(test-let*)
	(test-letrec)
	(test-cond)

To have the interpreter interpret itself:
>	(load "interpreter.scm")
	(repl)

To exit the interpreter:
>	(exit)
