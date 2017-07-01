NB. http://rosettacode.org/wiki/CUSIP#J

CUSIPcheckdigit =. 3 : 0
assert. 8 = $ y NB. Only accept an 8-element long list
assert. */ y e. '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ*@#' NB. Only accept characters from the list of 38
values =. (8 $ 1 2) * '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ*@#' i. ] NB. Verb to translate characters and then double every second value.
sumdigits =. +/@,@(10 10&#:) NB. Verb to sum the base-10 digits in a numerical array
invertedmod =. 10 | 10 - 10 | ] NB. Verb to find the mod-10 of 10 minus mod-10
": invertedmod sumdigits values y NB. Return the check digit as a character
)

addCUSIPcheckdigit =: , CUSIPcheckdigit
verifyCUSIPcheckdigit =: {: = CUSIPcheckdigit@}:

NB. Examples
addCUSIPcheckdigit '68389X10'
verifyCUSIPcheckdigit '68389X106'
verifyCUSIPcheckdigit '68389X105'
samples =: '037833100', '17275R102', '38259P508', '594918104', '68389X106',: '68389X105'
samples ; verifyCUSIPcheckdigit"1 samples