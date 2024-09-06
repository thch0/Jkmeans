initRND =: ] {~ [ ? #@]
dist =: [: +/&.:*: -
min =: = <./"1
which =: =&1 (i."1) 1:
whichMin =:  [: which min
mean =: +/ % #
step =: [ mean@#~ ([: i. [: # ]) =/ [: whichMin dist"1/

kmc =: ] step^:(1) initRND
classify =: [: whichMin ] dist"1/ [ kmc ]
