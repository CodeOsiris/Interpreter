Interpreter
===========

Documentation
-------------

###Overview<br/>
A mini-interpreter written in scheme which is able to interpret itself, and therefore could be extended in the future using boot-strap iteration.

###Files<br/>
<b>interpreter.scm</b>: main file, provides supporting functions including: <i>define, if, cond, let, let*, letrec, quote, apply</i>.<br/>
<b>library.scm</b>: library, contains implementations of non-primitive functions including: <i>caar, cadr, cdar, cddr, caadr, caddr, cdadr, cadddr, and, or, not, equal?, newline, map, assoc, append</i>.<br/>
<b>test.scm</b>: sample input, containing some test functions including: <i>test-define-func, test-let, test-let*, test-letrec, test-cond</i>.<br/>
<b>test-library.scm</b>: sample input for library functions, containing a test function: <i>test-library</i></br>

###Enhance<br/>
Fixed a bug in user defined function <b>bind</b>, which may cause unexpected output when the number of formal parameters and actual parameters do not match.<br/>

###How to Run<br/>
Go to the directory of interpreter and type the following commands in scheme:
>	(load "interpreter.scm")<br/>
	(repl)<br/>
	(load "library.scm")<br/>

To use <b>test.scm</b> to test the interpreter:
>	(load "test.scm")<br/>
	(test-define-func)<br/>
	(test-let)<br/>
	(test-let*)<br/>
	(test-letrec)<br/>
	(test-cond)<br/>

To use <b>test-library.scm</b> to test the library functions:
>	(load "test-library.scm")<br/>
	(test-library)<br/>

To have the interpreter interpret itself:
>	(load "interpreter.scm")<br/>
	(repl)<br/>

To exit the interpreter:
>	(exit)<br/>
