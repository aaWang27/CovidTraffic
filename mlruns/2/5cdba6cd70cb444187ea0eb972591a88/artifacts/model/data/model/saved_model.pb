ыр0
µЖ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
Ѕ
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring И®
@
StaticRegexFullMatch	
input

output
"
patternstring
ц
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
Ђ
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handleКйelement_dtype"
element_dtypetype"

shape_typetype:
2	
Ъ
TensorListReserve
element_shape"
shape_type
num_elements#
handleКйelement_dtype"
element_dtypetype"

shape_typetype:
2	
И
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint€€€€€€€€€
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И
Ф
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
И"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28т÷.
x
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:U*
shared_namedense_5/kernel
q
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes

:U*
dtype0
p
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_5/bias
i
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes
:*
dtype0
`
beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namebeta_1
Y
beta_1/Read/ReadVariableOpReadVariableOpbeta_1*
_output_shapes
: *
dtype0
`
beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namebeta_2
Y
beta_2/Read/ReadVariableOpReadVariableOpbeta_2*
_output_shapes
: *
dtype0
^
decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedecay
W
decay/Read/ReadVariableOpReadVariableOpdecay*
_output_shapes
: *
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
У
lstm_20/lstm_cell_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	‘*,
shared_namelstm_20/lstm_cell_20/kernel
М
/lstm_20/lstm_cell_20/kernel/Read/ReadVariableOpReadVariableOplstm_20/lstm_cell_20/kernel*
_output_shapes
:	‘*
dtype0
І
%lstm_20/lstm_cell_20/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	U‘*6
shared_name'%lstm_20/lstm_cell_20/recurrent_kernel
†
9lstm_20/lstm_cell_20/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_20/lstm_cell_20/recurrent_kernel*
_output_shapes
:	U‘*
dtype0
Л
lstm_20/lstm_cell_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:‘**
shared_namelstm_20/lstm_cell_20/bias
Д
-lstm_20/lstm_cell_20/bias/Read/ReadVariableOpReadVariableOplstm_20/lstm_cell_20/bias*
_output_shapes	
:‘*
dtype0
У
lstm_21/lstm_cell_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	U‘*,
shared_namelstm_21/lstm_cell_21/kernel
М
/lstm_21/lstm_cell_21/kernel/Read/ReadVariableOpReadVariableOplstm_21/lstm_cell_21/kernel*
_output_shapes
:	U‘*
dtype0
І
%lstm_21/lstm_cell_21/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	U‘*6
shared_name'%lstm_21/lstm_cell_21/recurrent_kernel
†
9lstm_21/lstm_cell_21/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_21/lstm_cell_21/recurrent_kernel*
_output_shapes
:	U‘*
dtype0
Л
lstm_21/lstm_cell_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:‘**
shared_namelstm_21/lstm_cell_21/bias
Д
-lstm_21/lstm_cell_21/bias/Read/ReadVariableOpReadVariableOplstm_21/lstm_cell_21/bias*
_output_shapes	
:‘*
dtype0
У
lstm_22/lstm_cell_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	U‘*,
shared_namelstm_22/lstm_cell_22/kernel
М
/lstm_22/lstm_cell_22/kernel/Read/ReadVariableOpReadVariableOplstm_22/lstm_cell_22/kernel*
_output_shapes
:	U‘*
dtype0
І
%lstm_22/lstm_cell_22/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	U‘*6
shared_name'%lstm_22/lstm_cell_22/recurrent_kernel
†
9lstm_22/lstm_cell_22/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_22/lstm_cell_22/recurrent_kernel*
_output_shapes
:	U‘*
dtype0
Л
lstm_22/lstm_cell_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:‘**
shared_namelstm_22/lstm_cell_22/bias
Д
-lstm_22/lstm_cell_22/bias/Read/ReadVariableOpReadVariableOplstm_22/lstm_cell_22/bias*
_output_shapes	
:‘*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
Ж
Adam/dense_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:U*&
shared_nameAdam/dense_5/kernel/m

)Adam/dense_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/m*
_output_shapes

:U*
dtype0
~
Adam/dense_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_5/bias/m
w
'Adam/dense_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/m*
_output_shapes
:*
dtype0
°
"Adam/lstm_20/lstm_cell_20/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	‘*3
shared_name$"Adam/lstm_20/lstm_cell_20/kernel/m
Ъ
6Adam/lstm_20/lstm_cell_20/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_20/lstm_cell_20/kernel/m*
_output_shapes
:	‘*
dtype0
µ
,Adam/lstm_20/lstm_cell_20/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	U‘*=
shared_name.,Adam/lstm_20/lstm_cell_20/recurrent_kernel/m
Ѓ
@Adam/lstm_20/lstm_cell_20/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_20/lstm_cell_20/recurrent_kernel/m*
_output_shapes
:	U‘*
dtype0
Щ
 Adam/lstm_20/lstm_cell_20/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:‘*1
shared_name" Adam/lstm_20/lstm_cell_20/bias/m
Т
4Adam/lstm_20/lstm_cell_20/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_20/lstm_cell_20/bias/m*
_output_shapes	
:‘*
dtype0
°
"Adam/lstm_21/lstm_cell_21/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	U‘*3
shared_name$"Adam/lstm_21/lstm_cell_21/kernel/m
Ъ
6Adam/lstm_21/lstm_cell_21/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_21/lstm_cell_21/kernel/m*
_output_shapes
:	U‘*
dtype0
µ
,Adam/lstm_21/lstm_cell_21/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	U‘*=
shared_name.,Adam/lstm_21/lstm_cell_21/recurrent_kernel/m
Ѓ
@Adam/lstm_21/lstm_cell_21/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_21/lstm_cell_21/recurrent_kernel/m*
_output_shapes
:	U‘*
dtype0
Щ
 Adam/lstm_21/lstm_cell_21/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:‘*1
shared_name" Adam/lstm_21/lstm_cell_21/bias/m
Т
4Adam/lstm_21/lstm_cell_21/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_21/lstm_cell_21/bias/m*
_output_shapes	
:‘*
dtype0
°
"Adam/lstm_22/lstm_cell_22/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	U‘*3
shared_name$"Adam/lstm_22/lstm_cell_22/kernel/m
Ъ
6Adam/lstm_22/lstm_cell_22/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_22/lstm_cell_22/kernel/m*
_output_shapes
:	U‘*
dtype0
µ
,Adam/lstm_22/lstm_cell_22/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	U‘*=
shared_name.,Adam/lstm_22/lstm_cell_22/recurrent_kernel/m
Ѓ
@Adam/lstm_22/lstm_cell_22/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_22/lstm_cell_22/recurrent_kernel/m*
_output_shapes
:	U‘*
dtype0
Щ
 Adam/lstm_22/lstm_cell_22/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:‘*1
shared_name" Adam/lstm_22/lstm_cell_22/bias/m
Т
4Adam/lstm_22/lstm_cell_22/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_22/lstm_cell_22/bias/m*
_output_shapes	
:‘*
dtype0
Ж
Adam/dense_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:U*&
shared_nameAdam/dense_5/kernel/v

)Adam/dense_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/v*
_output_shapes

:U*
dtype0
~
Adam/dense_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_5/bias/v
w
'Adam/dense_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/v*
_output_shapes
:*
dtype0
°
"Adam/lstm_20/lstm_cell_20/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	‘*3
shared_name$"Adam/lstm_20/lstm_cell_20/kernel/v
Ъ
6Adam/lstm_20/lstm_cell_20/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_20/lstm_cell_20/kernel/v*
_output_shapes
:	‘*
dtype0
µ
,Adam/lstm_20/lstm_cell_20/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	U‘*=
shared_name.,Adam/lstm_20/lstm_cell_20/recurrent_kernel/v
Ѓ
@Adam/lstm_20/lstm_cell_20/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_20/lstm_cell_20/recurrent_kernel/v*
_output_shapes
:	U‘*
dtype0
Щ
 Adam/lstm_20/lstm_cell_20/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:‘*1
shared_name" Adam/lstm_20/lstm_cell_20/bias/v
Т
4Adam/lstm_20/lstm_cell_20/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_20/lstm_cell_20/bias/v*
_output_shapes	
:‘*
dtype0
°
"Adam/lstm_21/lstm_cell_21/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	U‘*3
shared_name$"Adam/lstm_21/lstm_cell_21/kernel/v
Ъ
6Adam/lstm_21/lstm_cell_21/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_21/lstm_cell_21/kernel/v*
_output_shapes
:	U‘*
dtype0
µ
,Adam/lstm_21/lstm_cell_21/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	U‘*=
shared_name.,Adam/lstm_21/lstm_cell_21/recurrent_kernel/v
Ѓ
@Adam/lstm_21/lstm_cell_21/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_21/lstm_cell_21/recurrent_kernel/v*
_output_shapes
:	U‘*
dtype0
Щ
 Adam/lstm_21/lstm_cell_21/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:‘*1
shared_name" Adam/lstm_21/lstm_cell_21/bias/v
Т
4Adam/lstm_21/lstm_cell_21/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_21/lstm_cell_21/bias/v*
_output_shapes	
:‘*
dtype0
°
"Adam/lstm_22/lstm_cell_22/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	U‘*3
shared_name$"Adam/lstm_22/lstm_cell_22/kernel/v
Ъ
6Adam/lstm_22/lstm_cell_22/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_22/lstm_cell_22/kernel/v*
_output_shapes
:	U‘*
dtype0
µ
,Adam/lstm_22/lstm_cell_22/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	U‘*=
shared_name.,Adam/lstm_22/lstm_cell_22/recurrent_kernel/v
Ѓ
@Adam/lstm_22/lstm_cell_22/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_22/lstm_cell_22/recurrent_kernel/v*
_output_shapes
:	U‘*
dtype0
Щ
 Adam/lstm_22/lstm_cell_22/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:‘*1
shared_name" Adam/lstm_22/lstm_cell_22/bias/v
Т
4Adam/lstm_22/lstm_cell_22/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_22/lstm_cell_22/bias/v*
_output_shapes	
:‘*
dtype0

NoOpNoOp
ҐJ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ЁI
value”IB–I B…I
і
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
	optimizer
		variables

trainable_variables
regularization_losses
	keras_api

signatures
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
 regularization_losses
!	keras_api
l
"cell
#
state_spec
$	variables
%trainable_variables
&regularization_losses
'	keras_api
R
(	variables
)trainable_variables
*regularization_losses
+	keras_api
h

,kernel
-bias
.	variables
/trainable_variables
0regularization_losses
1	keras_api
Ь

2beta_1

3beta_2
	4decay
5learning_rate
6iter,mЪ-mЫ7mЬ8mЭ9mЮ:mЯ;m†<m°=mҐ>m£?m§,v•-v¶7vІ8v®9v©:v™;vЂ<vђ=v≠>vЃ?vѓ
N
70
81
92
:3
;4
<5
=6
>7
?8
,9
-10
N
70
81
92
:3
;4
<5
=6
>7
?8
,9
-10
 
≠
@non_trainable_variables

Alayers
Bmetrics
Clayer_regularization_losses
Dlayer_metrics
		variables

trainable_variables
regularization_losses
 
О
E
state_size

7kernel
8recurrent_kernel
9bias
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
 

70
81
92

70
81
92
 
є

Jstates
Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
	variables
trainable_variables
regularization_losses
 
 
 
≠
Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
	variables
trainable_variables
regularization_losses
О
U
state_size

:kernel
;recurrent_kernel
<bias
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
 

:0
;1
<2

:0
;1
<2
 
є

Zstates
[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics
	variables
trainable_variables
regularization_losses
 
 
 
≠
`non_trainable_variables

alayers
bmetrics
clayer_regularization_losses
dlayer_metrics
	variables
trainable_variables
 regularization_losses
О
e
state_size

=kernel
>recurrent_kernel
?bias
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
 

=0
>1
?2

=0
>1
?2
 
є

jstates
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
$	variables
%trainable_variables
&regularization_losses
 
 
 
≠
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
(	variables
)trainable_variables
*regularization_losses
ZX
VARIABLE_VALUEdense_5/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_5/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

,0
-1

,0
-1
 
≠
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
.	variables
/trainable_variables
0regularization_losses
GE
VARIABLE_VALUEbeta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
GE
VARIABLE_VALUEbeta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
EC
VARIABLE_VALUEdecay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElearning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_20/lstm_cell_20/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_20/lstm_cell_20/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_20/lstm_cell_20/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_21/lstm_cell_21/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_21/lstm_cell_21/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_21/lstm_cell_21/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_22/lstm_cell_22/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_22/lstm_cell_22/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_22/lstm_cell_22/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
 
1
0
1
2
3
4
5
6

z0
{1
|2
 
 
 

70
81
92

70
81
92
 
ѓ
}non_trainable_variables

~layers
metrics
 Аlayer_regularization_losses
Бlayer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
 
 

0
 
 
 
 
 
 
 
 
 

:0
;1
<2

:0
;1
<2
 
≤
Вnon_trainable_variables
Гlayers
Дmetrics
 Еlayer_regularization_losses
Жlayer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
 
 

0
 
 
 
 
 
 
 
 
 

=0
>1
?2

=0
>1
?2
 
≤
Зnon_trainable_variables
Иlayers
Йmetrics
 Кlayer_regularization_losses
Лlayer_metrics
f	variables
gtrainable_variables
hregularization_losses
 
 

"0
 
 
 
 
 
 
 
 
 
 
 
 
 
8

Мtotal

Нcount
О	variables
П	keras_api
I

Рtotal

Сcount
Т
_fn_kwargs
У	variables
Ф	keras_api
I

Хtotal

Цcount
Ч
_fn_kwargs
Ш	variables
Щ	keras_api
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

М0
Н1

О	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

Р0
С1

У	variables
QO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE
 

Х0
Ц1

Ш	variables
}{
VARIABLE_VALUEAdam/dense_5/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_5/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_20/lstm_cell_20/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЕВ
VARIABLE_VALUE,Adam/lstm_20/lstm_cell_20/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_20/lstm_cell_20/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_21/lstm_cell_21/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЕВ
VARIABLE_VALUE,Adam/lstm_21/lstm_cell_21/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_21/lstm_cell_21/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_22/lstm_cell_22/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЕВ
VARIABLE_VALUE,Adam/lstm_22/lstm_cell_22/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_22/lstm_cell_22/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_5/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_5/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_20/lstm_cell_20/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЕВ
VARIABLE_VALUE,Adam/lstm_20/lstm_cell_20/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_20/lstm_cell_20/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_21/lstm_cell_21/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЕВ
VARIABLE_VALUE,Adam/lstm_21/lstm_cell_21/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_21/lstm_cell_21/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_22/lstm_cell_22/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЕВ
VARIABLE_VALUE,Adam/lstm_22/lstm_cell_22/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_22/lstm_cell_22/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
И
serving_default_lstm_20_inputPlaceholder*+
_output_shapes
:€€€€€€€€€*
dtype0* 
shape:€€€€€€€€€
Й
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_20_inputlstm_20/lstm_cell_20/kernel%lstm_20/lstm_cell_20/recurrent_kernellstm_20/lstm_cell_20/biaslstm_21/lstm_cell_21/kernel%lstm_21/lstm_cell_21/recurrent_kernellstm_21/lstm_cell_21/biaslstm_22/lstm_cell_22/kernel%lstm_22/lstm_cell_22/recurrent_kernellstm_22/lstm_cell_22/biasdense_5/kerneldense_5/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *-
f(R&
$__inference_signature_wrapper_111746
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
е
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_5/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOpbeta_1/Read/ReadVariableOpbeta_2/Read/ReadVariableOpdecay/Read/ReadVariableOp!learning_rate/Read/ReadVariableOpAdam/iter/Read/ReadVariableOp/lstm_20/lstm_cell_20/kernel/Read/ReadVariableOp9lstm_20/lstm_cell_20/recurrent_kernel/Read/ReadVariableOp-lstm_20/lstm_cell_20/bias/Read/ReadVariableOp/lstm_21/lstm_cell_21/kernel/Read/ReadVariableOp9lstm_21/lstm_cell_21/recurrent_kernel/Read/ReadVariableOp-lstm_21/lstm_cell_21/bias/Read/ReadVariableOp/lstm_22/lstm_cell_22/kernel/Read/ReadVariableOp9lstm_22/lstm_cell_22/recurrent_kernel/Read/ReadVariableOp-lstm_22/lstm_cell_22/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOp)Adam/dense_5/kernel/m/Read/ReadVariableOp'Adam/dense_5/bias/m/Read/ReadVariableOp6Adam/lstm_20/lstm_cell_20/kernel/m/Read/ReadVariableOp@Adam/lstm_20/lstm_cell_20/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_20/lstm_cell_20/bias/m/Read/ReadVariableOp6Adam/lstm_21/lstm_cell_21/kernel/m/Read/ReadVariableOp@Adam/lstm_21/lstm_cell_21/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_21/lstm_cell_21/bias/m/Read/ReadVariableOp6Adam/lstm_22/lstm_cell_22/kernel/m/Read/ReadVariableOp@Adam/lstm_22/lstm_cell_22/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_22/lstm_cell_22/bias/m/Read/ReadVariableOp)Adam/dense_5/kernel/v/Read/ReadVariableOp'Adam/dense_5/bias/v/Read/ReadVariableOp6Adam/lstm_20/lstm_cell_20/kernel/v/Read/ReadVariableOp@Adam/lstm_20/lstm_cell_20/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_20/lstm_cell_20/bias/v/Read/ReadVariableOp6Adam/lstm_21/lstm_cell_21/kernel/v/Read/ReadVariableOp@Adam/lstm_21/lstm_cell_21/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_21/lstm_cell_21/bias/v/Read/ReadVariableOp6Adam/lstm_22/lstm_cell_22/kernel/v/Read/ReadVariableOp@Adam/lstm_22/lstm_cell_22/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_22/lstm_cell_22/bias/v/Read/ReadVariableOpConst*9
Tin2
02.	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *(
f#R!
__inference__traced_save_115078
р
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_5/kerneldense_5/biasbeta_1beta_2decaylearning_rate	Adam/iterlstm_20/lstm_cell_20/kernel%lstm_20/lstm_cell_20/recurrent_kernellstm_20/lstm_cell_20/biaslstm_21/lstm_cell_21/kernel%lstm_21/lstm_cell_21/recurrent_kernellstm_21/lstm_cell_21/biaslstm_22/lstm_cell_22/kernel%lstm_22/lstm_cell_22/recurrent_kernellstm_22/lstm_cell_22/biastotalcounttotal_1count_1total_2count_2Adam/dense_5/kernel/mAdam/dense_5/bias/m"Adam/lstm_20/lstm_cell_20/kernel/m,Adam/lstm_20/lstm_cell_20/recurrent_kernel/m Adam/lstm_20/lstm_cell_20/bias/m"Adam/lstm_21/lstm_cell_21/kernel/m,Adam/lstm_21/lstm_cell_21/recurrent_kernel/m Adam/lstm_21/lstm_cell_21/bias/m"Adam/lstm_22/lstm_cell_22/kernel/m,Adam/lstm_22/lstm_cell_22/recurrent_kernel/m Adam/lstm_22/lstm_cell_22/bias/mAdam/dense_5/kernel/vAdam/dense_5/bias/v"Adam/lstm_20/lstm_cell_20/kernel/v,Adam/lstm_20/lstm_cell_20/recurrent_kernel/v Adam/lstm_20/lstm_cell_20/bias/v"Adam/lstm_21/lstm_cell_21/kernel/v,Adam/lstm_21/lstm_cell_21/recurrent_kernel/v Adam/lstm_21/lstm_cell_21/bias/v"Adam/lstm_22/lstm_cell_22/kernel/v,Adam/lstm_22/lstm_cell_22/recurrent_kernel/v Adam/lstm_22/lstm_cell_22/bias/v*8
Tin1
/2-*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *+
f&R$
"__inference__traced_restore_115220ЯЗ-
€
µ
(__inference_lstm_20_layer_call_fn_112725

inputs
unknown:	‘
	unknown_0:	U‘
	unknown_1:	‘
identityИҐStatefulPartitionedCallй
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€U*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_20_layer_call_and_return_conditional_losses_111522s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€U`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ж"
г
while_body_109659
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_20_109683_0:	‘.
while_lstm_cell_20_109685_0:	U‘*
while_lstm_cell_20_109687_0:	‘
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_20_109683:	‘,
while_lstm_cell_20_109685:	U‘(
while_lstm_cell_20_109687:	‘ИҐ*while/lstm_cell_20/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0≥
*while/lstm_cell_20/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_20_109683_0while_lstm_cell_20_109685_0while_lstm_cell_20_109687_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_20_layer_call_and_return_conditional_losses_109600№
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_20/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Р
while/Identity_4Identity3while/lstm_cell_20/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€UР
while/Identity_5Identity3while/lstm_cell_20/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€Uy

while/NoOpNoOp+^while/lstm_cell_20/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_20_109683while_lstm_cell_20_109683_0"8
while_lstm_cell_20_109685while_lstm_cell_20_109685_0"8
while_lstm_cell_20_109687while_lstm_cell_20_109687_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : 2X
*while/lstm_cell_20/StatefulPartitionedCall*while/lstm_cell_20/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
: 
€
µ
(__inference_lstm_21_layer_call_fn_113357

inputs
unknown:	U‘
	unknown_0:	U‘
	unknown_1:	‘
identityИҐStatefulPartitionedCallй
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€U*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_21_layer_call_and_return_conditional_losses_110743s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€U`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€U: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€U
 
_user_specified_nameinputs
Ц

г
lstm_20_while_cond_111858,
(lstm_20_while_lstm_20_while_loop_counter2
.lstm_20_while_lstm_20_while_maximum_iterations
lstm_20_while_placeholder
lstm_20_while_placeholder_1
lstm_20_while_placeholder_2
lstm_20_while_placeholder_3.
*lstm_20_while_less_lstm_20_strided_slice_1D
@lstm_20_while_lstm_20_while_cond_111858___redundant_placeholder0D
@lstm_20_while_lstm_20_while_cond_111858___redundant_placeholder1D
@lstm_20_while_lstm_20_while_cond_111858___redundant_placeholder2D
@lstm_20_while_lstm_20_while_cond_111858___redundant_placeholder3
lstm_20_while_identity
В
lstm_20/while/LessLesslstm_20_while_placeholder*lstm_20_while_less_lstm_20_strided_slice_1*
T0*
_output_shapes
: [
lstm_20/while/IdentityIdentitylstm_20/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_20_while_identitylstm_20/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€U:€€€€€€€€€U: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
:
ч
µ
(__inference_lstm_22_layer_call_fn_114011

inputs
unknown:	U‘
	unknown_0:	U‘
	unknown_1:	‘
identityИҐStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€U*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_22_layer_call_and_return_conditional_losses_111146o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€U`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€U: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€U
 
_user_specified_nameinputs
≈A
–

lstm_20_while_body_112289,
(lstm_20_while_lstm_20_while_loop_counter2
.lstm_20_while_lstm_20_while_maximum_iterations
lstm_20_while_placeholder
lstm_20_while_placeholder_1
lstm_20_while_placeholder_2
lstm_20_while_placeholder_3+
'lstm_20_while_lstm_20_strided_slice_1_0g
clstm_20_while_tensorarrayv2read_tensorlistgetitem_lstm_20_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_20_while_lstm_cell_20_matmul_readvariableop_resource_0:	‘P
=lstm_20_while_lstm_cell_20_matmul_1_readvariableop_resource_0:	U‘K
<lstm_20_while_lstm_cell_20_biasadd_readvariableop_resource_0:	‘
lstm_20_while_identity
lstm_20_while_identity_1
lstm_20_while_identity_2
lstm_20_while_identity_3
lstm_20_while_identity_4
lstm_20_while_identity_5)
%lstm_20_while_lstm_20_strided_slice_1e
alstm_20_while_tensorarrayv2read_tensorlistgetitem_lstm_20_tensorarrayunstack_tensorlistfromtensorL
9lstm_20_while_lstm_cell_20_matmul_readvariableop_resource:	‘N
;lstm_20_while_lstm_cell_20_matmul_1_readvariableop_resource:	U‘I
:lstm_20_while_lstm_cell_20_biasadd_readvariableop_resource:	‘ИҐ1lstm_20/while/lstm_cell_20/BiasAdd/ReadVariableOpҐ0lstm_20/while/lstm_cell_20/MatMul/ReadVariableOpҐ2lstm_20/while/lstm_cell_20/MatMul_1/ReadVariableOpР
?lstm_20/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ќ
1lstm_20/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_20_while_tensorarrayv2read_tensorlistgetitem_lstm_20_tensorarrayunstack_tensorlistfromtensor_0lstm_20_while_placeholderHlstm_20/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0≠
0lstm_20/while/lstm_cell_20/MatMul/ReadVariableOpReadVariableOp;lstm_20_while_lstm_cell_20_matmul_readvariableop_resource_0*
_output_shapes
:	‘*
dtype0“
!lstm_20/while/lstm_cell_20/MatMulMatMul8lstm_20/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_20/while/lstm_cell_20/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘±
2lstm_20/while/lstm_cell_20/MatMul_1/ReadVariableOpReadVariableOp=lstm_20_while_lstm_cell_20_matmul_1_readvariableop_resource_0*
_output_shapes
:	U‘*
dtype0є
#lstm_20/while/lstm_cell_20/MatMul_1MatMullstm_20_while_placeholder_2:lstm_20/while/lstm_cell_20/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘ґ
lstm_20/while/lstm_cell_20/addAddV2+lstm_20/while/lstm_cell_20/MatMul:product:0-lstm_20/while/lstm_cell_20/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘Ђ
1lstm_20/while/lstm_cell_20/BiasAdd/ReadVariableOpReadVariableOp<lstm_20_while_lstm_cell_20_biasadd_readvariableop_resource_0*
_output_shapes	
:‘*
dtype0њ
"lstm_20/while/lstm_cell_20/BiasAddBiasAdd"lstm_20/while/lstm_cell_20/add:z:09lstm_20/while/lstm_cell_20/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘l
*lstm_20/while/lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :З
 lstm_20/while/lstm_cell_20/splitSplit3lstm_20/while/lstm_cell_20/split/split_dim:output:0+lstm_20/while/lstm_cell_20/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitК
"lstm_20/while/lstm_cell_20/SigmoidSigmoid)lstm_20/while/lstm_cell_20/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€UМ
$lstm_20/while/lstm_cell_20/Sigmoid_1Sigmoid)lstm_20/while/lstm_cell_20/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€UЮ
lstm_20/while/lstm_cell_20/mulMul(lstm_20/while/lstm_cell_20/Sigmoid_1:y:0lstm_20_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€UД
lstm_20/while/lstm_cell_20/ReluRelu)lstm_20/while/lstm_cell_20/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€U∞
 lstm_20/while/lstm_cell_20/mul_1Mul&lstm_20/while/lstm_cell_20/Sigmoid:y:0-lstm_20/while/lstm_cell_20/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€U•
 lstm_20/while/lstm_cell_20/add_1AddV2"lstm_20/while/lstm_cell_20/mul:z:0$lstm_20/while/lstm_cell_20/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UМ
$lstm_20/while/lstm_cell_20/Sigmoid_2Sigmoid)lstm_20/while/lstm_cell_20/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€UБ
!lstm_20/while/lstm_cell_20/Relu_1Relu$lstm_20/while/lstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Uі
 lstm_20/while/lstm_cell_20/mul_2Mul(lstm_20/while/lstm_cell_20/Sigmoid_2:y:0/lstm_20/while/lstm_cell_20/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Uе
2lstm_20/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_20_while_placeholder_1lstm_20_while_placeholder$lstm_20/while/lstm_cell_20/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“U
lstm_20/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_20/while/addAddV2lstm_20_while_placeholderlstm_20/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_20/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :З
lstm_20/while/add_1AddV2(lstm_20_while_lstm_20_while_loop_counterlstm_20/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_20/while/IdentityIdentitylstm_20/while/add_1:z:0^lstm_20/while/NoOp*
T0*
_output_shapes
: К
lstm_20/while/Identity_1Identity.lstm_20_while_lstm_20_while_maximum_iterations^lstm_20/while/NoOp*
T0*
_output_shapes
: q
lstm_20/while/Identity_2Identitylstm_20/while/add:z:0^lstm_20/while/NoOp*
T0*
_output_shapes
: Ю
lstm_20/while/Identity_3IdentityBlstm_20/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_20/while/NoOp*
T0*
_output_shapes
: С
lstm_20/while/Identity_4Identity$lstm_20/while/lstm_cell_20/mul_2:z:0^lstm_20/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€UС
lstm_20/while/Identity_5Identity$lstm_20/while/lstm_cell_20/add_1:z:0^lstm_20/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€Uр
lstm_20/while/NoOpNoOp2^lstm_20/while/lstm_cell_20/BiasAdd/ReadVariableOp1^lstm_20/while/lstm_cell_20/MatMul/ReadVariableOp3^lstm_20/while/lstm_cell_20/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_20_while_identitylstm_20/while/Identity:output:0"=
lstm_20_while_identity_1!lstm_20/while/Identity_1:output:0"=
lstm_20_while_identity_2!lstm_20/while/Identity_2:output:0"=
lstm_20_while_identity_3!lstm_20/while/Identity_3:output:0"=
lstm_20_while_identity_4!lstm_20/while/Identity_4:output:0"=
lstm_20_while_identity_5!lstm_20/while/Identity_5:output:0"P
%lstm_20_while_lstm_20_strided_slice_1'lstm_20_while_lstm_20_strided_slice_1_0"z
:lstm_20_while_lstm_cell_20_biasadd_readvariableop_resource<lstm_20_while_lstm_cell_20_biasadd_readvariableop_resource_0"|
;lstm_20_while_lstm_cell_20_matmul_1_readvariableop_resource=lstm_20_while_lstm_cell_20_matmul_1_readvariableop_resource_0"x
9lstm_20_while_lstm_cell_20_matmul_readvariableop_resource;lstm_20_while_lstm_cell_20_matmul_readvariableop_resource_0"»
alstm_20_while_tensorarrayv2read_tensorlistgetitem_lstm_20_tensorarrayunstack_tensorlistfromtensorclstm_20_while_tensorarrayv2read_tensorlistgetitem_lstm_20_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : 2f
1lstm_20/while/lstm_cell_20/BiasAdd/ReadVariableOp1lstm_20/while/lstm_cell_20/BiasAdd/ReadVariableOp2d
0lstm_20/while/lstm_cell_20/MatMul/ReadVariableOp0lstm_20/while/lstm_cell_20/MatMul/ReadVariableOp2h
2lstm_20/while/lstm_cell_20/MatMul_1/ReadVariableOp2lstm_20/while/lstm_cell_20/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
: 
€
µ
(__inference_lstm_20_layer_call_fn_112714

inputs
unknown:	‘
	unknown_0:	U‘
	unknown_1:	‘
identityИҐStatefulPartitionedCallй
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€U*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_20_layer_call_and_return_conditional_losses_110586s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€U`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ж"
г
while_body_109468
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_20_109492_0:	‘.
while_lstm_cell_20_109494_0:	U‘*
while_lstm_cell_20_109496_0:	‘
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_20_109492:	‘,
while_lstm_cell_20_109494:	U‘(
while_lstm_cell_20_109496:	‘ИҐ*while/lstm_cell_20/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0≥
*while/lstm_cell_20/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_20_109492_0while_lstm_cell_20_109494_0while_lstm_cell_20_109496_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_20_layer_call_and_return_conditional_losses_109454№
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_20/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Р
while/Identity_4Identity3while/lstm_cell_20/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€UР
while/Identity_5Identity3while/lstm_cell_20/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€Uy

while/NoOpNoOp+^while/lstm_cell_20/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_20_109492while_lstm_cell_20_109492_0"8
while_lstm_cell_20_109494while_lstm_cell_20_109494_0"8
while_lstm_cell_20_109496while_lstm_cell_20_109496_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : 2X
*while/lstm_cell_20/StatefulPartitionedCall*while/lstm_cell_20/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
: 
ъ$
‘
H__inference_sequential_5_layer_call_and_return_conditional_losses_111711
lstm_20_input!
lstm_20_111681:	‘!
lstm_20_111683:	U‘
lstm_20_111685:	‘!
lstm_21_111689:	U‘!
lstm_21_111691:	U‘
lstm_21_111693:	‘!
lstm_22_111697:	U‘!
lstm_22_111699:	U‘
lstm_22_111701:	‘ 
dense_5_111705:U
dense_5_111707:
identityИҐdense_5/StatefulPartitionedCallҐ"dropout_20/StatefulPartitionedCallҐ"dropout_21/StatefulPartitionedCallҐ"dropout_22/StatefulPartitionedCallҐlstm_20/StatefulPartitionedCallҐlstm_21/StatefulPartitionedCallҐlstm_22/StatefulPartitionedCallЙ
lstm_20/StatefulPartitionedCallStatefulPartitionedCalllstm_20_inputlstm_20_111681lstm_20_111683lstm_20_111685*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€U*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_20_layer_call_and_return_conditional_losses_111522т
"dropout_20/StatefulPartitionedCallStatefulPartitionedCall(lstm_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€U* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_20_layer_call_and_return_conditional_losses_111363І
lstm_21/StatefulPartitionedCallStatefulPartitionedCall+dropout_20/StatefulPartitionedCall:output:0lstm_21_111689lstm_21_111691lstm_21_111693*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€U*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_21_layer_call_and_return_conditional_losses_111334Ч
"dropout_21/StatefulPartitionedCallStatefulPartitionedCall(lstm_21/StatefulPartitionedCall:output:0#^dropout_20/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€U* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_21_layer_call_and_return_conditional_losses_111175£
lstm_22/StatefulPartitionedCallStatefulPartitionedCall+dropout_21/StatefulPartitionedCall:output:0lstm_22_111697lstm_22_111699lstm_22_111701*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€U*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_22_layer_call_and_return_conditional_losses_111146У
"dropout_22/StatefulPartitionedCallStatefulPartitionedCall(lstm_22/StatefulPartitionedCall:output:0#^dropout_21/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€U* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_22_layer_call_and_return_conditional_losses_110987С
dense_5/StatefulPartitionedCallStatefulPartitionedCall+dropout_22/StatefulPartitionedCall:output:0dense_5_111705dense_5_111707*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_110925w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€љ
NoOpNoOp ^dense_5/StatefulPartitionedCall#^dropout_20/StatefulPartitionedCall#^dropout_21/StatefulPartitionedCall#^dropout_22/StatefulPartitionedCall ^lstm_20/StatefulPartitionedCall ^lstm_21/StatefulPartitionedCall ^lstm_22/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:€€€€€€€€€: : : : : : : : : : : 2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2H
"dropout_20/StatefulPartitionedCall"dropout_20/StatefulPartitionedCall2H
"dropout_21/StatefulPartitionedCall"dropout_21/StatefulPartitionedCall2H
"dropout_22/StatefulPartitionedCall"dropout_22/StatefulPartitionedCall2B
lstm_20/StatefulPartitionedCalllstm_20/StatefulPartitionedCall2B
lstm_21/StatefulPartitionedCalllstm_21/StatefulPartitionedCall2B
lstm_22/StatefulPartitionedCalllstm_22/StatefulPartitionedCall:Z V
+
_output_shapes
:€€€€€€€€€
'
_user_specified_namelstm_20_input
€
µ
(__inference_lstm_21_layer_call_fn_113368

inputs
unknown:	U‘
	unknown_0:	U‘
	unknown_1:	‘
identityИҐStatefulPartitionedCallй
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€U*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_21_layer_call_and_return_conditional_losses_111334s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€U`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€U: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€U
 
_user_specified_nameinputs
ј
Х
(__inference_dense_5_layer_call_fn_114619

inputs
unknown:U
	unknown_0:
identityИҐStatefulPartitionedCallЎ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_110925o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€U: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€U
 
_user_specified_nameinputs
Ц

г
lstm_21_while_cond_112435,
(lstm_21_while_lstm_21_while_loop_counter2
.lstm_21_while_lstm_21_while_maximum_iterations
lstm_21_while_placeholder
lstm_21_while_placeholder_1
lstm_21_while_placeholder_2
lstm_21_while_placeholder_3.
*lstm_21_while_less_lstm_21_strided_slice_1D
@lstm_21_while_lstm_21_while_cond_112435___redundant_placeholder0D
@lstm_21_while_lstm_21_while_cond_112435___redundant_placeholder1D
@lstm_21_while_lstm_21_while_cond_112435___redundant_placeholder2D
@lstm_21_while_lstm_21_while_cond_112435___redundant_placeholder3
lstm_21_while_identity
В
lstm_21/while/LessLesslstm_21_while_placeholder*lstm_21_while_less_lstm_21_strided_slice_1*
T0*
_output_shapes
: [
lstm_21/while/IdentityIdentitylstm_21/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_21_while_identitylstm_21/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€U:€€€€€€€€€U: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
:
’
Д
H__inference_lstm_cell_20_layer_call_and_return_conditional_losses_109454

inputs

states
states_11
matmul_readvariableop_resource:	‘3
 matmul_1_readvariableop_resource:	U‘.
biasadd_readvariableop_resource:	‘
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	‘*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	U‘*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:‘*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€UV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€UU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€UN
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€U_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€UK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Uc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€UZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€UZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€UС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€:€€€€€€€€€U:€€€€€€€€€U: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€U
 
_user_specified_namestates:OK
'
_output_shapes
:€€€€€€€€€U
 
_user_specified_namestates
£J
Ы
C__inference_lstm_20_layer_call_and_return_conditional_losses_111522

inputs>
+lstm_cell_20_matmul_readvariableop_resource:	‘@
-lstm_cell_20_matmul_1_readvariableop_resource:	U‘;
,lstm_cell_20_biasadd_readvariableop_resource:	‘
identityИҐ#lstm_cell_20/BiasAdd/ReadVariableOpҐ"lstm_cell_20/MatMul/ReadVariableOpҐ$lstm_cell_20/MatMul_1/ReadVariableOpҐwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Us
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€UR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Uw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Uc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskП
"lstm_cell_20/MatMul/ReadVariableOpReadVariableOp+lstm_cell_20_matmul_readvariableop_resource*
_output_shapes
:	‘*
dtype0Ц
lstm_cell_20/MatMulMatMulstrided_slice_2:output:0*lstm_cell_20/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘У
$lstm_cell_20/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_20_matmul_1_readvariableop_resource*
_output_shapes
:	U‘*
dtype0Р
lstm_cell_20/MatMul_1MatMulzeros:output:0,lstm_cell_20/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘М
lstm_cell_20/addAddV2lstm_cell_20/MatMul:product:0lstm_cell_20/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘Н
#lstm_cell_20/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_20_biasadd_readvariableop_resource*
_output_shapes	
:‘*
dtype0Х
lstm_cell_20/BiasAddBiasAddlstm_cell_20/add:z:0+lstm_cell_20/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘^
lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_20/splitSplit%lstm_cell_20/split/split_dim:output:0lstm_cell_20/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitn
lstm_cell_20/SigmoidSigmoidlstm_cell_20/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€Up
lstm_cell_20/Sigmoid_1Sigmoidlstm_cell_20/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€Uw
lstm_cell_20/mulMullstm_cell_20/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€Uh
lstm_cell_20/ReluRelulstm_cell_20/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€UЖ
lstm_cell_20/mul_1Mullstm_cell_20/Sigmoid:y:0lstm_cell_20/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€U{
lstm_cell_20/add_1AddV2lstm_cell_20/mul:z:0lstm_cell_20/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Up
lstm_cell_20/Sigmoid_2Sigmoidlstm_cell_20/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€Ue
lstm_cell_20/Relu_1Relulstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UК
lstm_cell_20/mul_2Mullstm_cell_20/Sigmoid_2:y:0!lstm_cell_20/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Un
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : В
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_20_matmul_readvariableop_resource-lstm_cell_20_matmul_1_readvariableop_resource,lstm_cell_20_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_111438*
condR
while_cond_111437*K
output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   ¬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€U*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€U*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€U[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€Uј
NoOpNoOp$^lstm_cell_20/BiasAdd/ReadVariableOp#^lstm_cell_20/MatMul/ReadVariableOp%^lstm_cell_20/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 2J
#lstm_cell_20/BiasAdd/ReadVariableOp#lstm_cell_20/BiasAdd/ReadVariableOp2H
"lstm_cell_20/MatMul/ReadVariableOp"lstm_cell_20/MatMul/ReadVariableOp2L
$lstm_cell_20/MatMul_1/ReadVariableOp$lstm_cell_20/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
µ
√
while_cond_112783
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_112783___redundant_placeholder04
0while_while_cond_112783___redundant_placeholder14
0while_while_cond_112783___redundant_placeholder24
0while_while_cond_112783___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€U:€€€€€€€€€U: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
:
М8
–
while_body_111062
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_22_matmul_readvariableop_resource_0:	U‘H
5while_lstm_cell_22_matmul_1_readvariableop_resource_0:	U‘C
4while_lstm_cell_22_biasadd_readvariableop_resource_0:	‘
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_22_matmul_readvariableop_resource:	U‘F
3while_lstm_cell_22_matmul_1_readvariableop_resource:	U‘A
2while_lstm_cell_22_biasadd_readvariableop_resource:	‘ИҐ)while/lstm_cell_22/BiasAdd/ReadVariableOpҐ(while/lstm_cell_22/MatMul/ReadVariableOpҐ*while/lstm_cell_22/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€U*
element_dtype0Э
(while/lstm_cell_22/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_22_matmul_readvariableop_resource_0*
_output_shapes
:	U‘*
dtype0Ї
while/lstm_cell_22/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_22/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘°
*while/lstm_cell_22/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_22_matmul_1_readvariableop_resource_0*
_output_shapes
:	U‘*
dtype0°
while/lstm_cell_22/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_22/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘Ю
while/lstm_cell_22/addAddV2#while/lstm_cell_22/MatMul:product:0%while/lstm_cell_22/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘Ы
)while/lstm_cell_22/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_22_biasadd_readvariableop_resource_0*
_output_shapes	
:‘*
dtype0І
while/lstm_cell_22/BiasAddBiasAddwhile/lstm_cell_22/add:z:01while/lstm_cell_22/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘d
"while/lstm_cell_22/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_22/splitSplit+while/lstm_cell_22/split/split_dim:output:0#while/lstm_cell_22/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitz
while/lstm_cell_22/SigmoidSigmoid!while/lstm_cell_22/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€U|
while/lstm_cell_22/Sigmoid_1Sigmoid!while/lstm_cell_22/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€UЖ
while/lstm_cell_22/mulMul while/lstm_cell_22/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€Ut
while/lstm_cell_22/ReluRelu!while/lstm_cell_22/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€UШ
while/lstm_cell_22/mul_1Mulwhile/lstm_cell_22/Sigmoid:y:0%while/lstm_cell_22/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UН
while/lstm_cell_22/add_1AddV2while/lstm_cell_22/mul:z:0while/lstm_cell_22/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€U|
while/lstm_cell_22/Sigmoid_2Sigmoid!while/lstm_cell_22/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€Uq
while/lstm_cell_22/Relu_1Reluwhile/lstm_cell_22/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UЬ
while/lstm_cell_22/mul_2Mul while/lstm_cell_22/Sigmoid_2:y:0'while/lstm_cell_22/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€U≈
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_22/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_22/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€Uy
while/Identity_5Identitywhile/lstm_cell_22/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€U–

while/NoOpNoOp*^while/lstm_cell_22/BiasAdd/ReadVariableOp)^while/lstm_cell_22/MatMul/ReadVariableOp+^while/lstm_cell_22/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_22_biasadd_readvariableop_resource4while_lstm_cell_22_biasadd_readvariableop_resource_0"l
3while_lstm_cell_22_matmul_1_readvariableop_resource5while_lstm_cell_22_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_22_matmul_readvariableop_resource3while_lstm_cell_22_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : 2V
)while/lstm_cell_22/BiasAdd/ReadVariableOp)while/lstm_cell_22/BiasAdd/ReadVariableOp2T
(while/lstm_cell_22/MatMul/ReadVariableOp(while/lstm_cell_22/MatMul/ReadVariableOp2X
*while/lstm_cell_22/MatMul_1/ReadVariableOp*while/lstm_cell_22/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
: 
М8
–
while_body_114213
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_22_matmul_readvariableop_resource_0:	U‘H
5while_lstm_cell_22_matmul_1_readvariableop_resource_0:	U‘C
4while_lstm_cell_22_biasadd_readvariableop_resource_0:	‘
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_22_matmul_readvariableop_resource:	U‘F
3while_lstm_cell_22_matmul_1_readvariableop_resource:	U‘A
2while_lstm_cell_22_biasadd_readvariableop_resource:	‘ИҐ)while/lstm_cell_22/BiasAdd/ReadVariableOpҐ(while/lstm_cell_22/MatMul/ReadVariableOpҐ*while/lstm_cell_22/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€U*
element_dtype0Э
(while/lstm_cell_22/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_22_matmul_readvariableop_resource_0*
_output_shapes
:	U‘*
dtype0Ї
while/lstm_cell_22/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_22/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘°
*while/lstm_cell_22/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_22_matmul_1_readvariableop_resource_0*
_output_shapes
:	U‘*
dtype0°
while/lstm_cell_22/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_22/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘Ю
while/lstm_cell_22/addAddV2#while/lstm_cell_22/MatMul:product:0%while/lstm_cell_22/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘Ы
)while/lstm_cell_22/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_22_biasadd_readvariableop_resource_0*
_output_shapes	
:‘*
dtype0І
while/lstm_cell_22/BiasAddBiasAddwhile/lstm_cell_22/add:z:01while/lstm_cell_22/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘d
"while/lstm_cell_22/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_22/splitSplit+while/lstm_cell_22/split/split_dim:output:0#while/lstm_cell_22/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitz
while/lstm_cell_22/SigmoidSigmoid!while/lstm_cell_22/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€U|
while/lstm_cell_22/Sigmoid_1Sigmoid!while/lstm_cell_22/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€UЖ
while/lstm_cell_22/mulMul while/lstm_cell_22/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€Ut
while/lstm_cell_22/ReluRelu!while/lstm_cell_22/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€UШ
while/lstm_cell_22/mul_1Mulwhile/lstm_cell_22/Sigmoid:y:0%while/lstm_cell_22/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UН
while/lstm_cell_22/add_1AddV2while/lstm_cell_22/mul:z:0while/lstm_cell_22/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€U|
while/lstm_cell_22/Sigmoid_2Sigmoid!while/lstm_cell_22/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€Uq
while/lstm_cell_22/Relu_1Reluwhile/lstm_cell_22/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UЬ
while/lstm_cell_22/mul_2Mul while/lstm_cell_22/Sigmoid_2:y:0'while/lstm_cell_22/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€U≈
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_22/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_22/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€Uy
while/Identity_5Identitywhile/lstm_cell_22/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€U–

while/NoOpNoOp*^while/lstm_cell_22/BiasAdd/ReadVariableOp)^while/lstm_cell_22/MatMul/ReadVariableOp+^while/lstm_cell_22/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_22_biasadd_readvariableop_resource4while_lstm_cell_22_biasadd_readvariableop_resource_0"l
3while_lstm_cell_22_matmul_1_readvariableop_resource5while_lstm_cell_22_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_22_matmul_readvariableop_resource3while_lstm_cell_22_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : 2V
)while/lstm_cell_22/BiasAdd/ReadVariableOp)while/lstm_cell_22/BiasAdd/ReadVariableOp2T
(while/lstm_cell_22/MatMul/ReadVariableOp(while/lstm_cell_22/MatMul/ReadVariableOp2X
*while/lstm_cell_22/MatMul_1/ReadVariableOp*while/lstm_cell_22/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
: 
М8
–
while_body_113427
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_21_matmul_readvariableop_resource_0:	U‘H
5while_lstm_cell_21_matmul_1_readvariableop_resource_0:	U‘C
4while_lstm_cell_21_biasadd_readvariableop_resource_0:	‘
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_21_matmul_readvariableop_resource:	U‘F
3while_lstm_cell_21_matmul_1_readvariableop_resource:	U‘A
2while_lstm_cell_21_biasadd_readvariableop_resource:	‘ИҐ)while/lstm_cell_21/BiasAdd/ReadVariableOpҐ(while/lstm_cell_21/MatMul/ReadVariableOpҐ*while/lstm_cell_21/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€U*
element_dtype0Э
(while/lstm_cell_21/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_21_matmul_readvariableop_resource_0*
_output_shapes
:	U‘*
dtype0Ї
while/lstm_cell_21/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘°
*while/lstm_cell_21/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_21_matmul_1_readvariableop_resource_0*
_output_shapes
:	U‘*
dtype0°
while/lstm_cell_21/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_21/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘Ю
while/lstm_cell_21/addAddV2#while/lstm_cell_21/MatMul:product:0%while/lstm_cell_21/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘Ы
)while/lstm_cell_21/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_21_biasadd_readvariableop_resource_0*
_output_shapes	
:‘*
dtype0І
while/lstm_cell_21/BiasAddBiasAddwhile/lstm_cell_21/add:z:01while/lstm_cell_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘d
"while/lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_21/splitSplit+while/lstm_cell_21/split/split_dim:output:0#while/lstm_cell_21/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitz
while/lstm_cell_21/SigmoidSigmoid!while/lstm_cell_21/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€U|
while/lstm_cell_21/Sigmoid_1Sigmoid!while/lstm_cell_21/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€UЖ
while/lstm_cell_21/mulMul while/lstm_cell_21/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€Ut
while/lstm_cell_21/ReluRelu!while/lstm_cell_21/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€UШ
while/lstm_cell_21/mul_1Mulwhile/lstm_cell_21/Sigmoid:y:0%while/lstm_cell_21/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UН
while/lstm_cell_21/add_1AddV2while/lstm_cell_21/mul:z:0while/lstm_cell_21/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€U|
while/lstm_cell_21/Sigmoid_2Sigmoid!while/lstm_cell_21/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€Uq
while/lstm_cell_21/Relu_1Reluwhile/lstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UЬ
while/lstm_cell_21/mul_2Mul while/lstm_cell_21/Sigmoid_2:y:0'while/lstm_cell_21/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€U≈
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_21/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_21/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€Uy
while/Identity_5Identitywhile/lstm_cell_21/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€U–

while/NoOpNoOp*^while/lstm_cell_21/BiasAdd/ReadVariableOp)^while/lstm_cell_21/MatMul/ReadVariableOp+^while/lstm_cell_21/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_21_biasadd_readvariableop_resource4while_lstm_cell_21_biasadd_readvariableop_resource_0"l
3while_lstm_cell_21_matmul_1_readvariableop_resource5while_lstm_cell_21_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_21_matmul_readvariableop_resource3while_lstm_cell_21_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : 2V
)while/lstm_cell_21/BiasAdd/ReadVariableOp)while/lstm_cell_21/BiasAdd/ReadVariableOp2T
(while/lstm_cell_21/MatMul/ReadVariableOp(while/lstm_cell_21/MatMul/ReadVariableOp2X
*while/lstm_cell_21/MatMul_1/ReadVariableOp*while/lstm_cell_21/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
: 
£J
Ы
C__inference_lstm_20_layer_call_and_return_conditional_losses_113297

inputs>
+lstm_cell_20_matmul_readvariableop_resource:	‘@
-lstm_cell_20_matmul_1_readvariableop_resource:	U‘;
,lstm_cell_20_biasadd_readvariableop_resource:	‘
identityИҐ#lstm_cell_20/BiasAdd/ReadVariableOpҐ"lstm_cell_20/MatMul/ReadVariableOpҐ$lstm_cell_20/MatMul_1/ReadVariableOpҐwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Us
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€UR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Uw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Uc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskП
"lstm_cell_20/MatMul/ReadVariableOpReadVariableOp+lstm_cell_20_matmul_readvariableop_resource*
_output_shapes
:	‘*
dtype0Ц
lstm_cell_20/MatMulMatMulstrided_slice_2:output:0*lstm_cell_20/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘У
$lstm_cell_20/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_20_matmul_1_readvariableop_resource*
_output_shapes
:	U‘*
dtype0Р
lstm_cell_20/MatMul_1MatMulzeros:output:0,lstm_cell_20/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘М
lstm_cell_20/addAddV2lstm_cell_20/MatMul:product:0lstm_cell_20/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘Н
#lstm_cell_20/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_20_biasadd_readvariableop_resource*
_output_shapes	
:‘*
dtype0Х
lstm_cell_20/BiasAddBiasAddlstm_cell_20/add:z:0+lstm_cell_20/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘^
lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_20/splitSplit%lstm_cell_20/split/split_dim:output:0lstm_cell_20/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitn
lstm_cell_20/SigmoidSigmoidlstm_cell_20/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€Up
lstm_cell_20/Sigmoid_1Sigmoidlstm_cell_20/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€Uw
lstm_cell_20/mulMullstm_cell_20/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€Uh
lstm_cell_20/ReluRelulstm_cell_20/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€UЖ
lstm_cell_20/mul_1Mullstm_cell_20/Sigmoid:y:0lstm_cell_20/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€U{
lstm_cell_20/add_1AddV2lstm_cell_20/mul:z:0lstm_cell_20/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Up
lstm_cell_20/Sigmoid_2Sigmoidlstm_cell_20/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€Ue
lstm_cell_20/Relu_1Relulstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UК
lstm_cell_20/mul_2Mullstm_cell_20/Sigmoid_2:y:0!lstm_cell_20/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Un
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : В
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_20_matmul_readvariableop_resource-lstm_cell_20_matmul_1_readvariableop_resource,lstm_cell_20_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_113213*
condR
while_cond_113212*K
output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   ¬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€U*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€U*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€U[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€Uј
NoOpNoOp$^lstm_cell_20/BiasAdd/ReadVariableOp#^lstm_cell_20/MatMul/ReadVariableOp%^lstm_cell_20/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 2J
#lstm_cell_20/BiasAdd/ReadVariableOp#lstm_cell_20/BiasAdd/ReadVariableOp2H
"lstm_cell_20/MatMul/ReadVariableOp"lstm_cell_20/MatMul/ReadVariableOp2L
$lstm_cell_20/MatMul_1/ReadVariableOp$lstm_cell_20/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
µ
√
while_cond_113069
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_113069___redundant_placeholder04
0while_while_cond_113069___redundant_placeholder14
0while_while_cond_113069___redundant_placeholder24
0while_while_cond_113069___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€U:€€€€€€€€€U: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
:
О8
Е
C__inference_lstm_22_layer_call_and_return_conditional_losses_110428

inputs&
lstm_cell_22_110346:	U‘&
lstm_cell_22_110348:	U‘"
lstm_cell_22_110350:	‘
identityИҐ$lstm_cell_22/StatefulPartitionedCallҐwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Us
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€UR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Uw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Uc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€UD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€U*
shrink_axis_maskх
$lstm_cell_22/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_22_110346lstm_cell_22_110348lstm_cell_22_110350*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_22_layer_call_and_return_conditional_losses_110300n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ј
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_22_110346lstm_cell_22_110348lstm_cell_22_110350*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_110359*
condR
while_cond_110358*K
output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   Ћ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€U*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€U*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€U[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Uu
NoOpNoOp%^lstm_cell_22/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€U: : : 2L
$lstm_cell_22/StatefulPartitionedCall$lstm_cell_22/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€U
 
_user_specified_nameinputs
л
ц
-__inference_lstm_cell_22_layer_call_fn_114842

inputs
states_0
states_1
unknown:	U‘
	unknown_0:	U‘
	unknown_1:	‘
identity

identity_1

identity_2ИҐStatefulPartitionedCall®
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_22_layer_call_and_return_conditional_losses_110154o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Uq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Uq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:€€€€€€€€€U`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€U
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€U
"
_user_specified_name
states/0:QM
'
_output_shapes
:€€€€€€€€€U
"
_user_specified_name
states/1
µ
√
while_cond_110815
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_110815___redundant_placeholder04
0while_while_cond_110815___redundant_placeholder14
0while_while_cond_110815___redundant_placeholder24
0while_while_cond_110815___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€U:€€€€€€€€€U: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
:
£J
Ы
C__inference_lstm_21_layer_call_and_return_conditional_losses_113940

inputs>
+lstm_cell_21_matmul_readvariableop_resource:	U‘@
-lstm_cell_21_matmul_1_readvariableop_resource:	U‘;
,lstm_cell_21_biasadd_readvariableop_resource:	‘
identityИҐ#lstm_cell_21/BiasAdd/ReadVariableOpҐ"lstm_cell_21/MatMul/ReadVariableOpҐ$lstm_cell_21/MatMul_1/ReadVariableOpҐwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Us
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€UR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Uw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Uc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€UD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€U*
shrink_axis_maskП
"lstm_cell_21/MatMul/ReadVariableOpReadVariableOp+lstm_cell_21_matmul_readvariableop_resource*
_output_shapes
:	U‘*
dtype0Ц
lstm_cell_21/MatMulMatMulstrided_slice_2:output:0*lstm_cell_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘У
$lstm_cell_21/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_21_matmul_1_readvariableop_resource*
_output_shapes
:	U‘*
dtype0Р
lstm_cell_21/MatMul_1MatMulzeros:output:0,lstm_cell_21/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘М
lstm_cell_21/addAddV2lstm_cell_21/MatMul:product:0lstm_cell_21/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘Н
#lstm_cell_21/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_21_biasadd_readvariableop_resource*
_output_shapes	
:‘*
dtype0Х
lstm_cell_21/BiasAddBiasAddlstm_cell_21/add:z:0+lstm_cell_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘^
lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_21/splitSplit%lstm_cell_21/split/split_dim:output:0lstm_cell_21/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitn
lstm_cell_21/SigmoidSigmoidlstm_cell_21/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€Up
lstm_cell_21/Sigmoid_1Sigmoidlstm_cell_21/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€Uw
lstm_cell_21/mulMullstm_cell_21/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€Uh
lstm_cell_21/ReluRelulstm_cell_21/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€UЖ
lstm_cell_21/mul_1Mullstm_cell_21/Sigmoid:y:0lstm_cell_21/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€U{
lstm_cell_21/add_1AddV2lstm_cell_21/mul:z:0lstm_cell_21/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Up
lstm_cell_21/Sigmoid_2Sigmoidlstm_cell_21/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€Ue
lstm_cell_21/Relu_1Relulstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UК
lstm_cell_21/mul_2Mullstm_cell_21/Sigmoid_2:y:0!lstm_cell_21/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Un
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : В
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_21_matmul_readvariableop_resource-lstm_cell_21_matmul_1_readvariableop_resource,lstm_cell_21_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_113856*
condR
while_cond_113855*K
output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   ¬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€U*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€U*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€U[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€Uј
NoOpNoOp$^lstm_cell_21/BiasAdd/ReadVariableOp#^lstm_cell_21/MatMul/ReadVariableOp%^lstm_cell_21/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€U: : : 2J
#lstm_cell_21/BiasAdd/ReadVariableOp#lstm_cell_21/BiasAdd/ReadVariableOp2H
"lstm_cell_21/MatMul/ReadVariableOp"lstm_cell_21/MatMul/ReadVariableOp2L
$lstm_cell_21/MatMul_1/ReadVariableOp$lstm_cell_21/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€U
 
_user_specified_nameinputs
µ
√
while_cond_110501
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_110501___redundant_placeholder04
0while_while_cond_110501___redundant_placeholder14
0while_while_cond_110501___redundant_placeholder24
0while_while_cond_110501___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€U:€€€€€€€€€U: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
:
л
ц
-__inference_lstm_cell_20_layer_call_fn_114663

inputs
states_0
states_1
unknown:	‘
	unknown_0:	U‘
	unknown_1:	‘
identity

identity_1

identity_2ИҐStatefulPartitionedCall®
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_20_layer_call_and_return_conditional_losses_109600o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Uq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Uq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:€€€€€€€€€U`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€:€€€€€€€€€U:€€€€€€€€€U: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€U
"
_user_specified_name
states/0:QM
'
_output_shapes
:€€€€€€€€€U
"
_user_specified_name
states/1
Ё
Ж
H__inference_lstm_cell_21_layer_call_and_return_conditional_losses_114793

inputs
states_0
states_11
matmul_readvariableop_resource:	U‘3
 matmul_1_readvariableop_resource:	U‘.
biasadd_readvariableop_resource:	‘
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	U‘*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	U‘*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:‘*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€UV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€UU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€UN
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€U_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€UK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Uc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€UZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€UZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€UС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€U
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€U
"
_user_specified_name
states/0:QM
'
_output_shapes
:€€€€€€€€€U
"
_user_specified_name
states/1
М8
–
while_body_110659
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_21_matmul_readvariableop_resource_0:	U‘H
5while_lstm_cell_21_matmul_1_readvariableop_resource_0:	U‘C
4while_lstm_cell_21_biasadd_readvariableop_resource_0:	‘
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_21_matmul_readvariableop_resource:	U‘F
3while_lstm_cell_21_matmul_1_readvariableop_resource:	U‘A
2while_lstm_cell_21_biasadd_readvariableop_resource:	‘ИҐ)while/lstm_cell_21/BiasAdd/ReadVariableOpҐ(while/lstm_cell_21/MatMul/ReadVariableOpҐ*while/lstm_cell_21/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€U*
element_dtype0Э
(while/lstm_cell_21/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_21_matmul_readvariableop_resource_0*
_output_shapes
:	U‘*
dtype0Ї
while/lstm_cell_21/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘°
*while/lstm_cell_21/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_21_matmul_1_readvariableop_resource_0*
_output_shapes
:	U‘*
dtype0°
while/lstm_cell_21/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_21/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘Ю
while/lstm_cell_21/addAddV2#while/lstm_cell_21/MatMul:product:0%while/lstm_cell_21/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘Ы
)while/lstm_cell_21/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_21_biasadd_readvariableop_resource_0*
_output_shapes	
:‘*
dtype0І
while/lstm_cell_21/BiasAddBiasAddwhile/lstm_cell_21/add:z:01while/lstm_cell_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘d
"while/lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_21/splitSplit+while/lstm_cell_21/split/split_dim:output:0#while/lstm_cell_21/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitz
while/lstm_cell_21/SigmoidSigmoid!while/lstm_cell_21/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€U|
while/lstm_cell_21/Sigmoid_1Sigmoid!while/lstm_cell_21/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€UЖ
while/lstm_cell_21/mulMul while/lstm_cell_21/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€Ut
while/lstm_cell_21/ReluRelu!while/lstm_cell_21/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€UШ
while/lstm_cell_21/mul_1Mulwhile/lstm_cell_21/Sigmoid:y:0%while/lstm_cell_21/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UН
while/lstm_cell_21/add_1AddV2while/lstm_cell_21/mul:z:0while/lstm_cell_21/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€U|
while/lstm_cell_21/Sigmoid_2Sigmoid!while/lstm_cell_21/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€Uq
while/lstm_cell_21/Relu_1Reluwhile/lstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UЬ
while/lstm_cell_21/mul_2Mul while/lstm_cell_21/Sigmoid_2:y:0'while/lstm_cell_21/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€U≈
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_21/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_21/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€Uy
while/Identity_5Identitywhile/lstm_cell_21/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€U–

while/NoOpNoOp*^while/lstm_cell_21/BiasAdd/ReadVariableOp)^while/lstm_cell_21/MatMul/ReadVariableOp+^while/lstm_cell_21/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_21_biasadd_readvariableop_resource4while_lstm_cell_21_biasadd_readvariableop_resource_0"l
3while_lstm_cell_21_matmul_1_readvariableop_resource5while_lstm_cell_21_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_21_matmul_readvariableop_resource3while_lstm_cell_21_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : 2V
)while/lstm_cell_21/BiasAdd/ReadVariableOp)while/lstm_cell_21/BiasAdd/ReadVariableOp2T
(while/lstm_cell_21/MatMul/ReadVariableOp(while/lstm_cell_21/MatMul/ReadVariableOp2X
*while/lstm_cell_21/MatMul_1/ReadVariableOp*while/lstm_cell_21/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
: 
©
Ј
(__inference_lstm_20_layer_call_fn_112703
inputs_0
unknown:	‘
	unknown_0:	U‘
	unknown_1:	‘
identityИҐStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€U*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_20_layer_call_and_return_conditional_losses_109728|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€U`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs/0
µ
√
while_cond_110358
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_110358___redundant_placeholder04
0while_while_cond_110358___redundant_placeholder14
0while_while_cond_110358___redundant_placeholder24
0while_while_cond_110358___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€U:€€€€€€€€€U: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
:
µ
√
while_cond_114498
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_114498___redundant_placeholder04
0while_while_cond_114498___redundant_placeholder14
0while_while_cond_114498___redundant_placeholder24
0while_while_cond_114498___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€U:€€€€€€€€€U: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
:
∆	
ф
C__inference_dense_5_layer_call_and_return_conditional_losses_110925

inputs0
matmul_readvariableop_resource:U-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:U*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€U: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€U
 
_user_specified_nameinputs
й
d
F__inference_dropout_20_layer_call_and_return_conditional_losses_110599

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:€€€€€€€€€U_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:€€€€€€€€€U"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€U:S O
+
_output_shapes
:€€€€€€€€€U
 
_user_specified_nameinputs
Ф

e
F__inference_dropout_20_layer_call_and_return_conditional_losses_113324

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *„£?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€UC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Р
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€U*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *∆n\>™
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€Us
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:€€€€€€€€€Um
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:€€€€€€€€€U]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:€€€€€€€€€U"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€U:S O
+
_output_shapes
:€€€€€€€€€U
 
_user_specified_nameinputs
Ё
Ж
H__inference_lstm_cell_22_layer_call_and_return_conditional_losses_114891

inputs
states_0
states_11
matmul_readvariableop_resource:	U‘3
 matmul_1_readvariableop_resource:	U‘.
biasadd_readvariableop_resource:	‘
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	U‘*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	U‘*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:‘*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€UV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€UU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€UN
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€U_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€UK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Uc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€UZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€UZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€UС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€U
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€U
"
_user_specified_name
states/0:QM
'
_output_shapes
:€€€€€€€€€U
"
_user_specified_name
states/1
В
з
&sequential_5_lstm_22_while_cond_109295F
Bsequential_5_lstm_22_while_sequential_5_lstm_22_while_loop_counterL
Hsequential_5_lstm_22_while_sequential_5_lstm_22_while_maximum_iterations*
&sequential_5_lstm_22_while_placeholder,
(sequential_5_lstm_22_while_placeholder_1,
(sequential_5_lstm_22_while_placeholder_2,
(sequential_5_lstm_22_while_placeholder_3H
Dsequential_5_lstm_22_while_less_sequential_5_lstm_22_strided_slice_1^
Zsequential_5_lstm_22_while_sequential_5_lstm_22_while_cond_109295___redundant_placeholder0^
Zsequential_5_lstm_22_while_sequential_5_lstm_22_while_cond_109295___redundant_placeholder1^
Zsequential_5_lstm_22_while_sequential_5_lstm_22_while_cond_109295___redundant_placeholder2^
Zsequential_5_lstm_22_while_sequential_5_lstm_22_while_cond_109295___redundant_placeholder3'
#sequential_5_lstm_22_while_identity
ґ
sequential_5/lstm_22/while/LessLess&sequential_5_lstm_22_while_placeholderDsequential_5_lstm_22_while_less_sequential_5_lstm_22_strided_slice_1*
T0*
_output_shapes
: u
#sequential_5/lstm_22/while/IdentityIdentity#sequential_5/lstm_22/while/Less:z:0*
T0
*
_output_shapes
: "S
#sequential_5_lstm_22_while_identity,sequential_5/lstm_22/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€U:€€€€€€€€€U: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
:
Ё
Ж
H__inference_lstm_cell_20_layer_call_and_return_conditional_losses_114695

inputs
states_0
states_11
matmul_readvariableop_resource:	‘3
 matmul_1_readvariableop_resource:	U‘.
biasadd_readvariableop_resource:	‘
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	‘*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	U‘*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:‘*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€UV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€UU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€UN
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€U_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€UK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Uc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€UZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€UZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€UС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€:€€€€€€€€€U:€€€€€€€€€U: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€U
"
_user_specified_name
states/0:QM
'
_output_shapes
:€€€€€€€€€U
"
_user_specified_name
states/1
ј

Ъ
$__inference_signature_wrapper_111746
lstm_20_input
unknown:	‘
	unknown_0:	U‘
	unknown_1:	‘
	unknown_2:	U‘
	unknown_3:	U‘
	unknown_4:	‘
	unknown_5:	U‘
	unknown_6:	U‘
	unknown_7:	‘
	unknown_8:U
	unknown_9:
identityИҐStatefulPartitionedCall≤
StatefulPartitionedCallStatefulPartitionedCalllstm_20_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference__wrapped_model_109387o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:€€€€€€€€€: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:€€€€€€€€€
'
_user_specified_namelstm_20_input
µ
√
while_cond_113569
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_113569___redundant_placeholder04
0while_while_cond_113569___redundant_placeholder14
0while_while_cond_113569___redundant_placeholder24
0while_while_cond_113569___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€U:€€€€€€€€€U: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
:
£J
Ы
C__inference_lstm_21_layer_call_and_return_conditional_losses_110743

inputs>
+lstm_cell_21_matmul_readvariableop_resource:	U‘@
-lstm_cell_21_matmul_1_readvariableop_resource:	U‘;
,lstm_cell_21_biasadd_readvariableop_resource:	‘
identityИҐ#lstm_cell_21/BiasAdd/ReadVariableOpҐ"lstm_cell_21/MatMul/ReadVariableOpҐ$lstm_cell_21/MatMul_1/ReadVariableOpҐwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Us
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€UR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Uw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Uc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€UD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€U*
shrink_axis_maskП
"lstm_cell_21/MatMul/ReadVariableOpReadVariableOp+lstm_cell_21_matmul_readvariableop_resource*
_output_shapes
:	U‘*
dtype0Ц
lstm_cell_21/MatMulMatMulstrided_slice_2:output:0*lstm_cell_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘У
$lstm_cell_21/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_21_matmul_1_readvariableop_resource*
_output_shapes
:	U‘*
dtype0Р
lstm_cell_21/MatMul_1MatMulzeros:output:0,lstm_cell_21/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘М
lstm_cell_21/addAddV2lstm_cell_21/MatMul:product:0lstm_cell_21/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘Н
#lstm_cell_21/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_21_biasadd_readvariableop_resource*
_output_shapes	
:‘*
dtype0Х
lstm_cell_21/BiasAddBiasAddlstm_cell_21/add:z:0+lstm_cell_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘^
lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_21/splitSplit%lstm_cell_21/split/split_dim:output:0lstm_cell_21/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitn
lstm_cell_21/SigmoidSigmoidlstm_cell_21/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€Up
lstm_cell_21/Sigmoid_1Sigmoidlstm_cell_21/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€Uw
lstm_cell_21/mulMullstm_cell_21/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€Uh
lstm_cell_21/ReluRelulstm_cell_21/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€UЖ
lstm_cell_21/mul_1Mullstm_cell_21/Sigmoid:y:0lstm_cell_21/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€U{
lstm_cell_21/add_1AddV2lstm_cell_21/mul:z:0lstm_cell_21/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Up
lstm_cell_21/Sigmoid_2Sigmoidlstm_cell_21/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€Ue
lstm_cell_21/Relu_1Relulstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UК
lstm_cell_21/mul_2Mullstm_cell_21/Sigmoid_2:y:0!lstm_cell_21/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Un
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : В
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_21_matmul_readvariableop_resource-lstm_cell_21_matmul_1_readvariableop_resource,lstm_cell_21_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_110659*
condR
while_cond_110658*K
output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   ¬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€U*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€U*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€U[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€Uј
NoOpNoOp$^lstm_cell_21/BiasAdd/ReadVariableOp#^lstm_cell_21/MatMul/ReadVariableOp%^lstm_cell_21/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€U: : : 2J
#lstm_cell_21/BiasAdd/ReadVariableOp#lstm_cell_21/BiasAdd/ReadVariableOp2H
"lstm_cell_21/MatMul/ReadVariableOp"lstm_cell_21/MatMul/ReadVariableOp2L
$lstm_cell_21/MatMul_1/ReadVariableOp$lstm_cell_21/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€U
 
_user_specified_nameinputs
ф	
e
F__inference_dropout_22_layer_call_and_return_conditional_losses_110987

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *„£?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€UC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:М
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€U*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *∆n\>¶
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€Uo
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€Ui
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€UY
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€U"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€U:O K
'
_output_shapes
:€€€€€€€€€U
 
_user_specified_nameinputs
Ц

г
lstm_22_while_cond_112138,
(lstm_22_while_lstm_22_while_loop_counter2
.lstm_22_while_lstm_22_while_maximum_iterations
lstm_22_while_placeholder
lstm_22_while_placeholder_1
lstm_22_while_placeholder_2
lstm_22_while_placeholder_3.
*lstm_22_while_less_lstm_22_strided_slice_1D
@lstm_22_while_lstm_22_while_cond_112138___redundant_placeholder0D
@lstm_22_while_lstm_22_while_cond_112138___redundant_placeholder1D
@lstm_22_while_lstm_22_while_cond_112138___redundant_placeholder2D
@lstm_22_while_lstm_22_while_cond_112138___redundant_placeholder3
lstm_22_while_identity
В
lstm_22/while/LessLesslstm_22_while_placeholder*lstm_22_while_less_lstm_22_strided_slice_1*
T0*
_output_shapes
: [
lstm_22/while/IdentityIdentitylstm_22/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_22_while_identitylstm_22/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€U:€€€€€€€€€U: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
:
Т8
Е
C__inference_lstm_20_layer_call_and_return_conditional_losses_109537

inputs&
lstm_cell_20_109455:	‘&
lstm_cell_20_109457:	U‘"
lstm_cell_20_109459:	‘
identityИҐ$lstm_cell_20/StatefulPartitionedCallҐwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Us
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€UR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Uw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Uc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskх
$lstm_cell_20/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_20_109455lstm_cell_20_109457lstm_cell_20_109459*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_20_layer_call_and_return_conditional_losses_109454n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ј
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_20_109455lstm_cell_20_109457lstm_cell_20_109459*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_109468*
condR
while_cond_109467*K
output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   Ћ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€U*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€U*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€U[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Uu
NoOpNoOp%^lstm_cell_20/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2L
$lstm_cell_20/StatefulPartitionedCall$lstm_cell_20/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
з[
о
__inference__traced_save_115078
file_prefix-
)savev2_dense_5_kernel_read_readvariableop+
'savev2_dense_5_bias_read_readvariableop%
!savev2_beta_1_read_readvariableop%
!savev2_beta_2_read_readvariableop$
 savev2_decay_read_readvariableop,
(savev2_learning_rate_read_readvariableop(
$savev2_adam_iter_read_readvariableop	:
6savev2_lstm_20_lstm_cell_20_kernel_read_readvariableopD
@savev2_lstm_20_lstm_cell_20_recurrent_kernel_read_readvariableop8
4savev2_lstm_20_lstm_cell_20_bias_read_readvariableop:
6savev2_lstm_21_lstm_cell_21_kernel_read_readvariableopD
@savev2_lstm_21_lstm_cell_21_recurrent_kernel_read_readvariableop8
4savev2_lstm_21_lstm_cell_21_bias_read_readvariableop:
6savev2_lstm_22_lstm_cell_22_kernel_read_readvariableopD
@savev2_lstm_22_lstm_cell_22_recurrent_kernel_read_readvariableop8
4savev2_lstm_22_lstm_cell_22_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop4
0savev2_adam_dense_5_kernel_m_read_readvariableop2
.savev2_adam_dense_5_bias_m_read_readvariableopA
=savev2_adam_lstm_20_lstm_cell_20_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_20_lstm_cell_20_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_20_lstm_cell_20_bias_m_read_readvariableopA
=savev2_adam_lstm_21_lstm_cell_21_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_21_lstm_cell_21_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_21_lstm_cell_21_bias_m_read_readvariableopA
=savev2_adam_lstm_22_lstm_cell_22_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_22_lstm_cell_22_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_22_lstm_cell_22_bias_m_read_readvariableop4
0savev2_adam_dense_5_kernel_v_read_readvariableop2
.savev2_adam_dense_5_bias_v_read_readvariableopA
=savev2_adam_lstm_20_lstm_cell_20_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_20_lstm_cell_20_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_20_lstm_cell_20_bias_v_read_readvariableopA
=savev2_adam_lstm_21_lstm_cell_21_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_21_lstm_cell_21_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_21_lstm_cell_21_bias_v_read_readvariableopA
=savev2_adam_lstm_22_lstm_cell_22_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_22_lstm_cell_22_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_22_lstm_cell_22_bias_v_read_readvariableop
savev2_const

identity_1ИҐMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partБ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Э
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:-*
dtype0*∆
valueЉBє-B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH«
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:-*
dtype0*m
valuedBb-B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ѓ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_5_kernel_read_readvariableop'savev2_dense_5_bias_read_readvariableop!savev2_beta_1_read_readvariableop!savev2_beta_2_read_readvariableop savev2_decay_read_readvariableop(savev2_learning_rate_read_readvariableop$savev2_adam_iter_read_readvariableop6savev2_lstm_20_lstm_cell_20_kernel_read_readvariableop@savev2_lstm_20_lstm_cell_20_recurrent_kernel_read_readvariableop4savev2_lstm_20_lstm_cell_20_bias_read_readvariableop6savev2_lstm_21_lstm_cell_21_kernel_read_readvariableop@savev2_lstm_21_lstm_cell_21_recurrent_kernel_read_readvariableop4savev2_lstm_21_lstm_cell_21_bias_read_readvariableop6savev2_lstm_22_lstm_cell_22_kernel_read_readvariableop@savev2_lstm_22_lstm_cell_22_recurrent_kernel_read_readvariableop4savev2_lstm_22_lstm_cell_22_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop0savev2_adam_dense_5_kernel_m_read_readvariableop.savev2_adam_dense_5_bias_m_read_readvariableop=savev2_adam_lstm_20_lstm_cell_20_kernel_m_read_readvariableopGsavev2_adam_lstm_20_lstm_cell_20_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_20_lstm_cell_20_bias_m_read_readvariableop=savev2_adam_lstm_21_lstm_cell_21_kernel_m_read_readvariableopGsavev2_adam_lstm_21_lstm_cell_21_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_21_lstm_cell_21_bias_m_read_readvariableop=savev2_adam_lstm_22_lstm_cell_22_kernel_m_read_readvariableopGsavev2_adam_lstm_22_lstm_cell_22_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_22_lstm_cell_22_bias_m_read_readvariableop0savev2_adam_dense_5_kernel_v_read_readvariableop.savev2_adam_dense_5_bias_v_read_readvariableop=savev2_adam_lstm_20_lstm_cell_20_kernel_v_read_readvariableopGsavev2_adam_lstm_20_lstm_cell_20_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_20_lstm_cell_20_bias_v_read_readvariableop=savev2_adam_lstm_21_lstm_cell_21_kernel_v_read_readvariableopGsavev2_adam_lstm_21_lstm_cell_21_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_21_lstm_cell_21_bias_v_read_readvariableop=savev2_adam_lstm_22_lstm_cell_22_kernel_v_read_readvariableopGsavev2_adam_lstm_22_lstm_cell_22_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_22_lstm_cell_22_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *;
dtypes1
/2-	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Л
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*д
_input_shapes“
ѕ: :U:: : : : : :	‘:	U‘:‘:	U‘:	U‘:‘:	U‘:	U‘:‘: : : : : : :U::	‘:	U‘:‘:	U‘:	U‘:‘:	U‘:	U‘:‘:U::	‘:	U‘:‘:	U‘:	U‘:‘:	U‘:	U‘:‘: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:U: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	‘:%	!

_output_shapes
:	U‘:!


_output_shapes	
:‘:%!

_output_shapes
:	U‘:%!

_output_shapes
:	U‘:!

_output_shapes	
:‘:%!

_output_shapes
:	U‘:%!

_output_shapes
:	U‘:!

_output_shapes	
:‘:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:U: 

_output_shapes
::%!

_output_shapes
:	‘:%!

_output_shapes
:	U‘:!

_output_shapes	
:‘:%!

_output_shapes
:	U‘:%!

_output_shapes
:	U‘:!

_output_shapes	
:‘:%!

_output_shapes
:	U‘:% !

_output_shapes
:	U‘:!!

_output_shapes	
:‘:$" 

_output_shapes

:U: #

_output_shapes
::%$!

_output_shapes
:	‘:%%!

_output_shapes
:	U‘:!&

_output_shapes	
:‘:%'!

_output_shapes
:	U‘:%(!

_output_shapes
:	U‘:!)

_output_shapes	
:‘:%*!

_output_shapes
:	U‘:%+!

_output_shapes
:	U‘:!,

_output_shapes	
:‘:-

_output_shapes
: 
ЁJ
Э
C__inference_lstm_22_layer_call_and_return_conditional_losses_114297
inputs_0>
+lstm_cell_22_matmul_readvariableop_resource:	U‘@
-lstm_cell_22_matmul_1_readvariableop_resource:	U‘;
,lstm_cell_22_biasadd_readvariableop_resource:	‘
identityИҐ#lstm_cell_22/BiasAdd/ReadVariableOpҐ"lstm_cell_22/MatMul/ReadVariableOpҐ$lstm_cell_22/MatMul_1/ReadVariableOpҐwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Us
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€UR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Uw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Uc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€UD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€U*
shrink_axis_maskП
"lstm_cell_22/MatMul/ReadVariableOpReadVariableOp+lstm_cell_22_matmul_readvariableop_resource*
_output_shapes
:	U‘*
dtype0Ц
lstm_cell_22/MatMulMatMulstrided_slice_2:output:0*lstm_cell_22/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘У
$lstm_cell_22/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_22_matmul_1_readvariableop_resource*
_output_shapes
:	U‘*
dtype0Р
lstm_cell_22/MatMul_1MatMulzeros:output:0,lstm_cell_22/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘М
lstm_cell_22/addAddV2lstm_cell_22/MatMul:product:0lstm_cell_22/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘Н
#lstm_cell_22/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_22_biasadd_readvariableop_resource*
_output_shapes	
:‘*
dtype0Х
lstm_cell_22/BiasAddBiasAddlstm_cell_22/add:z:0+lstm_cell_22/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘^
lstm_cell_22/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_22/splitSplit%lstm_cell_22/split/split_dim:output:0lstm_cell_22/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitn
lstm_cell_22/SigmoidSigmoidlstm_cell_22/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€Up
lstm_cell_22/Sigmoid_1Sigmoidlstm_cell_22/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€Uw
lstm_cell_22/mulMullstm_cell_22/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€Uh
lstm_cell_22/ReluRelulstm_cell_22/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€UЖ
lstm_cell_22/mul_1Mullstm_cell_22/Sigmoid:y:0lstm_cell_22/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€U{
lstm_cell_22/add_1AddV2lstm_cell_22/mul:z:0lstm_cell_22/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Up
lstm_cell_22/Sigmoid_2Sigmoidlstm_cell_22/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€Ue
lstm_cell_22/Relu_1Relulstm_cell_22/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UК
lstm_cell_22/mul_2Mullstm_cell_22/Sigmoid_2:y:0!lstm_cell_22/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Un
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : В
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_22_matmul_readvariableop_resource-lstm_cell_22_matmul_1_readvariableop_resource,lstm_cell_22_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_114213*
condR
while_cond_114212*K
output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   Ћ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€U*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€U*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€U[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Uј
NoOpNoOp$^lstm_cell_22/BiasAdd/ReadVariableOp#^lstm_cell_22/MatMul/ReadVariableOp%^lstm_cell_22/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€U: : : 2J
#lstm_cell_22/BiasAdd/ReadVariableOp#lstm_cell_22/BiasAdd/ReadVariableOp2H
"lstm_cell_22/MatMul/ReadVariableOp"lstm_cell_22/MatMul/ReadVariableOp2L
$lstm_cell_22/MatMul_1/ReadVariableOp$lstm_cell_22/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€U
"
_user_specified_name
inputs/0
й
d
F__inference_dropout_21_layer_call_and_return_conditional_losses_110756

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:€€€€€€€€€U_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:€€€€€€€€€U"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€U:S O
+
_output_shapes
:€€€€€€€€€U
 
_user_specified_nameinputs
®J
Ы
C__inference_lstm_22_layer_call_and_return_conditional_losses_114583

inputs>
+lstm_cell_22_matmul_readvariableop_resource:	U‘@
-lstm_cell_22_matmul_1_readvariableop_resource:	U‘;
,lstm_cell_22_biasadd_readvariableop_resource:	‘
identityИҐ#lstm_cell_22/BiasAdd/ReadVariableOpҐ"lstm_cell_22/MatMul/ReadVariableOpҐ$lstm_cell_22/MatMul_1/ReadVariableOpҐwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Us
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€UR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Uw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Uc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€UD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€U*
shrink_axis_maskП
"lstm_cell_22/MatMul/ReadVariableOpReadVariableOp+lstm_cell_22_matmul_readvariableop_resource*
_output_shapes
:	U‘*
dtype0Ц
lstm_cell_22/MatMulMatMulstrided_slice_2:output:0*lstm_cell_22/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘У
$lstm_cell_22/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_22_matmul_1_readvariableop_resource*
_output_shapes
:	U‘*
dtype0Р
lstm_cell_22/MatMul_1MatMulzeros:output:0,lstm_cell_22/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘М
lstm_cell_22/addAddV2lstm_cell_22/MatMul:product:0lstm_cell_22/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘Н
#lstm_cell_22/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_22_biasadd_readvariableop_resource*
_output_shapes	
:‘*
dtype0Х
lstm_cell_22/BiasAddBiasAddlstm_cell_22/add:z:0+lstm_cell_22/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘^
lstm_cell_22/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_22/splitSplit%lstm_cell_22/split/split_dim:output:0lstm_cell_22/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitn
lstm_cell_22/SigmoidSigmoidlstm_cell_22/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€Up
lstm_cell_22/Sigmoid_1Sigmoidlstm_cell_22/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€Uw
lstm_cell_22/mulMullstm_cell_22/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€Uh
lstm_cell_22/ReluRelulstm_cell_22/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€UЖ
lstm_cell_22/mul_1Mullstm_cell_22/Sigmoid:y:0lstm_cell_22/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€U{
lstm_cell_22/add_1AddV2lstm_cell_22/mul:z:0lstm_cell_22/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Up
lstm_cell_22/Sigmoid_2Sigmoidlstm_cell_22/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€Ue
lstm_cell_22/Relu_1Relulstm_cell_22/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UК
lstm_cell_22/mul_2Mullstm_cell_22/Sigmoid_2:y:0!lstm_cell_22/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Un
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : В
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_22_matmul_readvariableop_resource-lstm_cell_22_matmul_1_readvariableop_resource,lstm_cell_22_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_114499*
condR
while_cond_114498*K
output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   ¬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€U*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€U*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€U[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Uј
NoOpNoOp$^lstm_cell_22/BiasAdd/ReadVariableOp#^lstm_cell_22/MatMul/ReadVariableOp%^lstm_cell_22/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€U: : : 2J
#lstm_cell_22/BiasAdd/ReadVariableOp#lstm_cell_22/BiasAdd/ReadVariableOp2H
"lstm_cell_22/MatMul/ReadVariableOp"lstm_cell_22/MatMul/ReadVariableOp2L
$lstm_cell_22/MatMul_1/ReadVariableOp$lstm_cell_22/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€U
 
_user_specified_nameinputs
≈A
–

lstm_22_while_body_112139,
(lstm_22_while_lstm_22_while_loop_counter2
.lstm_22_while_lstm_22_while_maximum_iterations
lstm_22_while_placeholder
lstm_22_while_placeholder_1
lstm_22_while_placeholder_2
lstm_22_while_placeholder_3+
'lstm_22_while_lstm_22_strided_slice_1_0g
clstm_22_while_tensorarrayv2read_tensorlistgetitem_lstm_22_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_22_while_lstm_cell_22_matmul_readvariableop_resource_0:	U‘P
=lstm_22_while_lstm_cell_22_matmul_1_readvariableop_resource_0:	U‘K
<lstm_22_while_lstm_cell_22_biasadd_readvariableop_resource_0:	‘
lstm_22_while_identity
lstm_22_while_identity_1
lstm_22_while_identity_2
lstm_22_while_identity_3
lstm_22_while_identity_4
lstm_22_while_identity_5)
%lstm_22_while_lstm_22_strided_slice_1e
alstm_22_while_tensorarrayv2read_tensorlistgetitem_lstm_22_tensorarrayunstack_tensorlistfromtensorL
9lstm_22_while_lstm_cell_22_matmul_readvariableop_resource:	U‘N
;lstm_22_while_lstm_cell_22_matmul_1_readvariableop_resource:	U‘I
:lstm_22_while_lstm_cell_22_biasadd_readvariableop_resource:	‘ИҐ1lstm_22/while/lstm_cell_22/BiasAdd/ReadVariableOpҐ0lstm_22/while/lstm_cell_22/MatMul/ReadVariableOpҐ2lstm_22/while/lstm_cell_22/MatMul_1/ReadVariableOpР
?lstm_22/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   ќ
1lstm_22/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_22_while_tensorarrayv2read_tensorlistgetitem_lstm_22_tensorarrayunstack_tensorlistfromtensor_0lstm_22_while_placeholderHlstm_22/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€U*
element_dtype0≠
0lstm_22/while/lstm_cell_22/MatMul/ReadVariableOpReadVariableOp;lstm_22_while_lstm_cell_22_matmul_readvariableop_resource_0*
_output_shapes
:	U‘*
dtype0“
!lstm_22/while/lstm_cell_22/MatMulMatMul8lstm_22/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_22/while/lstm_cell_22/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘±
2lstm_22/while/lstm_cell_22/MatMul_1/ReadVariableOpReadVariableOp=lstm_22_while_lstm_cell_22_matmul_1_readvariableop_resource_0*
_output_shapes
:	U‘*
dtype0є
#lstm_22/while/lstm_cell_22/MatMul_1MatMullstm_22_while_placeholder_2:lstm_22/while/lstm_cell_22/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘ґ
lstm_22/while/lstm_cell_22/addAddV2+lstm_22/while/lstm_cell_22/MatMul:product:0-lstm_22/while/lstm_cell_22/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘Ђ
1lstm_22/while/lstm_cell_22/BiasAdd/ReadVariableOpReadVariableOp<lstm_22_while_lstm_cell_22_biasadd_readvariableop_resource_0*
_output_shapes	
:‘*
dtype0њ
"lstm_22/while/lstm_cell_22/BiasAddBiasAdd"lstm_22/while/lstm_cell_22/add:z:09lstm_22/while/lstm_cell_22/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘l
*lstm_22/while/lstm_cell_22/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :З
 lstm_22/while/lstm_cell_22/splitSplit3lstm_22/while/lstm_cell_22/split/split_dim:output:0+lstm_22/while/lstm_cell_22/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitК
"lstm_22/while/lstm_cell_22/SigmoidSigmoid)lstm_22/while/lstm_cell_22/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€UМ
$lstm_22/while/lstm_cell_22/Sigmoid_1Sigmoid)lstm_22/while/lstm_cell_22/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€UЮ
lstm_22/while/lstm_cell_22/mulMul(lstm_22/while/lstm_cell_22/Sigmoid_1:y:0lstm_22_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€UД
lstm_22/while/lstm_cell_22/ReluRelu)lstm_22/while/lstm_cell_22/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€U∞
 lstm_22/while/lstm_cell_22/mul_1Mul&lstm_22/while/lstm_cell_22/Sigmoid:y:0-lstm_22/while/lstm_cell_22/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€U•
 lstm_22/while/lstm_cell_22/add_1AddV2"lstm_22/while/lstm_cell_22/mul:z:0$lstm_22/while/lstm_cell_22/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UМ
$lstm_22/while/lstm_cell_22/Sigmoid_2Sigmoid)lstm_22/while/lstm_cell_22/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€UБ
!lstm_22/while/lstm_cell_22/Relu_1Relu$lstm_22/while/lstm_cell_22/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Uі
 lstm_22/while/lstm_cell_22/mul_2Mul(lstm_22/while/lstm_cell_22/Sigmoid_2:y:0/lstm_22/while/lstm_cell_22/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Uе
2lstm_22/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_22_while_placeholder_1lstm_22_while_placeholder$lstm_22/while/lstm_cell_22/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“U
lstm_22/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_22/while/addAddV2lstm_22_while_placeholderlstm_22/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_22/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :З
lstm_22/while/add_1AddV2(lstm_22_while_lstm_22_while_loop_counterlstm_22/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_22/while/IdentityIdentitylstm_22/while/add_1:z:0^lstm_22/while/NoOp*
T0*
_output_shapes
: К
lstm_22/while/Identity_1Identity.lstm_22_while_lstm_22_while_maximum_iterations^lstm_22/while/NoOp*
T0*
_output_shapes
: q
lstm_22/while/Identity_2Identitylstm_22/while/add:z:0^lstm_22/while/NoOp*
T0*
_output_shapes
: Ю
lstm_22/while/Identity_3IdentityBlstm_22/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_22/while/NoOp*
T0*
_output_shapes
: С
lstm_22/while/Identity_4Identity$lstm_22/while/lstm_cell_22/mul_2:z:0^lstm_22/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€UС
lstm_22/while/Identity_5Identity$lstm_22/while/lstm_cell_22/add_1:z:0^lstm_22/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€Uр
lstm_22/while/NoOpNoOp2^lstm_22/while/lstm_cell_22/BiasAdd/ReadVariableOp1^lstm_22/while/lstm_cell_22/MatMul/ReadVariableOp3^lstm_22/while/lstm_cell_22/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_22_while_identitylstm_22/while/Identity:output:0"=
lstm_22_while_identity_1!lstm_22/while/Identity_1:output:0"=
lstm_22_while_identity_2!lstm_22/while/Identity_2:output:0"=
lstm_22_while_identity_3!lstm_22/while/Identity_3:output:0"=
lstm_22_while_identity_4!lstm_22/while/Identity_4:output:0"=
lstm_22_while_identity_5!lstm_22/while/Identity_5:output:0"P
%lstm_22_while_lstm_22_strided_slice_1'lstm_22_while_lstm_22_strided_slice_1_0"z
:lstm_22_while_lstm_cell_22_biasadd_readvariableop_resource<lstm_22_while_lstm_cell_22_biasadd_readvariableop_resource_0"|
;lstm_22_while_lstm_cell_22_matmul_1_readvariableop_resource=lstm_22_while_lstm_cell_22_matmul_1_readvariableop_resource_0"x
9lstm_22_while_lstm_cell_22_matmul_readvariableop_resource;lstm_22_while_lstm_cell_22_matmul_readvariableop_resource_0"»
alstm_22_while_tensorarrayv2read_tensorlistgetitem_lstm_22_tensorarrayunstack_tensorlistfromtensorclstm_22_while_tensorarrayv2read_tensorlistgetitem_lstm_22_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : 2f
1lstm_22/while/lstm_cell_22/BiasAdd/ReadVariableOp1lstm_22/while/lstm_cell_22/BiasAdd/ReadVariableOp2d
0lstm_22/while/lstm_cell_22/MatMul/ReadVariableOp0lstm_22/while/lstm_cell_22/MatMul/ReadVariableOp2h
2lstm_22/while/lstm_cell_22/MatMul_1/ReadVariableOp2lstm_22/while/lstm_cell_22/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
: 
Г
d
+__inference_dropout_20_layer_call_fn_113307

inputs
identityИҐStatefulPartitionedCall≈
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€U* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_20_layer_call_and_return_conditional_losses_111363s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€U`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€U22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€U
 
_user_specified_nameinputs
µ
√
while_cond_113855
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_113855___redundant_placeholder04
0while_while_cond_113855___redundant_placeholder14
0while_while_cond_113855___redundant_placeholder24
0while_while_cond_113855___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€U:€€€€€€€€€U: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
:
М8
–
while_body_113713
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_21_matmul_readvariableop_resource_0:	U‘H
5while_lstm_cell_21_matmul_1_readvariableop_resource_0:	U‘C
4while_lstm_cell_21_biasadd_readvariableop_resource_0:	‘
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_21_matmul_readvariableop_resource:	U‘F
3while_lstm_cell_21_matmul_1_readvariableop_resource:	U‘A
2while_lstm_cell_21_biasadd_readvariableop_resource:	‘ИҐ)while/lstm_cell_21/BiasAdd/ReadVariableOpҐ(while/lstm_cell_21/MatMul/ReadVariableOpҐ*while/lstm_cell_21/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€U*
element_dtype0Э
(while/lstm_cell_21/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_21_matmul_readvariableop_resource_0*
_output_shapes
:	U‘*
dtype0Ї
while/lstm_cell_21/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘°
*while/lstm_cell_21/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_21_matmul_1_readvariableop_resource_0*
_output_shapes
:	U‘*
dtype0°
while/lstm_cell_21/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_21/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘Ю
while/lstm_cell_21/addAddV2#while/lstm_cell_21/MatMul:product:0%while/lstm_cell_21/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘Ы
)while/lstm_cell_21/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_21_biasadd_readvariableop_resource_0*
_output_shapes	
:‘*
dtype0І
while/lstm_cell_21/BiasAddBiasAddwhile/lstm_cell_21/add:z:01while/lstm_cell_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘d
"while/lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_21/splitSplit+while/lstm_cell_21/split/split_dim:output:0#while/lstm_cell_21/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitz
while/lstm_cell_21/SigmoidSigmoid!while/lstm_cell_21/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€U|
while/lstm_cell_21/Sigmoid_1Sigmoid!while/lstm_cell_21/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€UЖ
while/lstm_cell_21/mulMul while/lstm_cell_21/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€Ut
while/lstm_cell_21/ReluRelu!while/lstm_cell_21/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€UШ
while/lstm_cell_21/mul_1Mulwhile/lstm_cell_21/Sigmoid:y:0%while/lstm_cell_21/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UН
while/lstm_cell_21/add_1AddV2while/lstm_cell_21/mul:z:0while/lstm_cell_21/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€U|
while/lstm_cell_21/Sigmoid_2Sigmoid!while/lstm_cell_21/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€Uq
while/lstm_cell_21/Relu_1Reluwhile/lstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UЬ
while/lstm_cell_21/mul_2Mul while/lstm_cell_21/Sigmoid_2:y:0'while/lstm_cell_21/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€U≈
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_21/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_21/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€Uy
while/Identity_5Identitywhile/lstm_cell_21/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€U–

while/NoOpNoOp*^while/lstm_cell_21/BiasAdd/ReadVariableOp)^while/lstm_cell_21/MatMul/ReadVariableOp+^while/lstm_cell_21/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_21_biasadd_readvariableop_resource4while_lstm_cell_21_biasadd_readvariableop_resource_0"l
3while_lstm_cell_21_matmul_1_readvariableop_resource5while_lstm_cell_21_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_21_matmul_readvariableop_resource3while_lstm_cell_21_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : 2V
)while/lstm_cell_21/BiasAdd/ReadVariableOp)while/lstm_cell_21/BiasAdd/ReadVariableOp2T
(while/lstm_cell_21/MatMul/ReadVariableOp(while/lstm_cell_21/MatMul/ReadVariableOp2X
*while/lstm_cell_21/MatMul_1/ReadVariableOp*while/lstm_cell_21/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
: 
µ
√
while_cond_113212
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_113212___redundant_placeholder04
0while_while_cond_113212___redundant_placeholder14
0while_while_cond_113212___redundant_placeholder24
0while_while_cond_113212___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€U:€€€€€€€€€U: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
:
µ
√
while_cond_114212
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_114212___redundant_placeholder04
0while_while_cond_114212___redundant_placeholder14
0while_while_cond_114212___redundant_placeholder24
0while_while_cond_114212___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€U:€€€€€€€€€U: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
:
М8
–
while_body_110816
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_22_matmul_readvariableop_resource_0:	U‘H
5while_lstm_cell_22_matmul_1_readvariableop_resource_0:	U‘C
4while_lstm_cell_22_biasadd_readvariableop_resource_0:	‘
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_22_matmul_readvariableop_resource:	U‘F
3while_lstm_cell_22_matmul_1_readvariableop_resource:	U‘A
2while_lstm_cell_22_biasadd_readvariableop_resource:	‘ИҐ)while/lstm_cell_22/BiasAdd/ReadVariableOpҐ(while/lstm_cell_22/MatMul/ReadVariableOpҐ*while/lstm_cell_22/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€U*
element_dtype0Э
(while/lstm_cell_22/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_22_matmul_readvariableop_resource_0*
_output_shapes
:	U‘*
dtype0Ї
while/lstm_cell_22/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_22/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘°
*while/lstm_cell_22/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_22_matmul_1_readvariableop_resource_0*
_output_shapes
:	U‘*
dtype0°
while/lstm_cell_22/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_22/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘Ю
while/lstm_cell_22/addAddV2#while/lstm_cell_22/MatMul:product:0%while/lstm_cell_22/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘Ы
)while/lstm_cell_22/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_22_biasadd_readvariableop_resource_0*
_output_shapes	
:‘*
dtype0І
while/lstm_cell_22/BiasAddBiasAddwhile/lstm_cell_22/add:z:01while/lstm_cell_22/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘d
"while/lstm_cell_22/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_22/splitSplit+while/lstm_cell_22/split/split_dim:output:0#while/lstm_cell_22/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitz
while/lstm_cell_22/SigmoidSigmoid!while/lstm_cell_22/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€U|
while/lstm_cell_22/Sigmoid_1Sigmoid!while/lstm_cell_22/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€UЖ
while/lstm_cell_22/mulMul while/lstm_cell_22/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€Ut
while/lstm_cell_22/ReluRelu!while/lstm_cell_22/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€UШ
while/lstm_cell_22/mul_1Mulwhile/lstm_cell_22/Sigmoid:y:0%while/lstm_cell_22/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UН
while/lstm_cell_22/add_1AddV2while/lstm_cell_22/mul:z:0while/lstm_cell_22/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€U|
while/lstm_cell_22/Sigmoid_2Sigmoid!while/lstm_cell_22/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€Uq
while/lstm_cell_22/Relu_1Reluwhile/lstm_cell_22/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UЬ
while/lstm_cell_22/mul_2Mul while/lstm_cell_22/Sigmoid_2:y:0'while/lstm_cell_22/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€U≈
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_22/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_22/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€Uy
while/Identity_5Identitywhile/lstm_cell_22/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€U–

while/NoOpNoOp*^while/lstm_cell_22/BiasAdd/ReadVariableOp)^while/lstm_cell_22/MatMul/ReadVariableOp+^while/lstm_cell_22/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_22_biasadd_readvariableop_resource4while_lstm_cell_22_biasadd_readvariableop_resource_0"l
3while_lstm_cell_22_matmul_1_readvariableop_resource5while_lstm_cell_22_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_22_matmul_readvariableop_resource3while_lstm_cell_22_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : 2V
)while/lstm_cell_22/BiasAdd/ReadVariableOp)while/lstm_cell_22/BiasAdd/ReadVariableOp2T
(while/lstm_cell_22/MatMul/ReadVariableOp(while/lstm_cell_22/MatMul/ReadVariableOp2X
*while/lstm_cell_22/MatMul_1/ReadVariableOp*while/lstm_cell_22/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
: 
л
ц
-__inference_lstm_cell_22_layer_call_fn_114859

inputs
states_0
states_1
unknown:	U‘
	unknown_0:	U‘
	unknown_1:	‘
identity

identity_1

identity_2ИҐStatefulPartitionedCall®
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_22_layer_call_and_return_conditional_losses_110300o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Uq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Uq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:€€€€€€€€€U`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€U
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€U
"
_user_specified_name
states/0:QM
'
_output_shapes
:€€€€€€€€€U
"
_user_specified_name
states/1
µ
√
while_cond_113712
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_113712___redundant_placeholder04
0while_while_cond_113712___redundant_placeholder14
0while_while_cond_113712___redundant_placeholder24
0while_while_cond_113712___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€U:€€€€€€€€€U: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
:
й
d
F__inference_dropout_21_layer_call_and_return_conditional_losses_113955

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:€€€€€€€€€U_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:€€€€€€€€€U"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€U:S O
+
_output_shapes
:€€€€€€€€€U
 
_user_specified_nameinputs
ф	
e
F__inference_dropout_22_layer_call_and_return_conditional_losses_114610

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *„£?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€UC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:М
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€U*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *∆n\>¶
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€Uo
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€Ui
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€UY
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€U"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€U:O K
'
_output_shapes
:€€€€€€€€€U
 
_user_specified_nameinputs
∆	
ф
C__inference_dense_5_layer_call_and_return_conditional_losses_114629

inputs0
matmul_readvariableop_resource:U-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:U*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€U: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€U
 
_user_specified_nameinputs
М8
–
while_body_110502
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_20_matmul_readvariableop_resource_0:	‘H
5while_lstm_cell_20_matmul_1_readvariableop_resource_0:	U‘C
4while_lstm_cell_20_biasadd_readvariableop_resource_0:	‘
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_20_matmul_readvariableop_resource:	‘F
3while_lstm_cell_20_matmul_1_readvariableop_resource:	U‘A
2while_lstm_cell_20_biasadd_readvariableop_resource:	‘ИҐ)while/lstm_cell_20/BiasAdd/ReadVariableOpҐ(while/lstm_cell_20/MatMul/ReadVariableOpҐ*while/lstm_cell_20/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Э
(while/lstm_cell_20/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_20_matmul_readvariableop_resource_0*
_output_shapes
:	‘*
dtype0Ї
while/lstm_cell_20/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_20/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘°
*while/lstm_cell_20/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_20_matmul_1_readvariableop_resource_0*
_output_shapes
:	U‘*
dtype0°
while/lstm_cell_20/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_20/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘Ю
while/lstm_cell_20/addAddV2#while/lstm_cell_20/MatMul:product:0%while/lstm_cell_20/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘Ы
)while/lstm_cell_20/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_20_biasadd_readvariableop_resource_0*
_output_shapes	
:‘*
dtype0І
while/lstm_cell_20/BiasAddBiasAddwhile/lstm_cell_20/add:z:01while/lstm_cell_20/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘d
"while/lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_20/splitSplit+while/lstm_cell_20/split/split_dim:output:0#while/lstm_cell_20/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitz
while/lstm_cell_20/SigmoidSigmoid!while/lstm_cell_20/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€U|
while/lstm_cell_20/Sigmoid_1Sigmoid!while/lstm_cell_20/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€UЖ
while/lstm_cell_20/mulMul while/lstm_cell_20/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€Ut
while/lstm_cell_20/ReluRelu!while/lstm_cell_20/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€UШ
while/lstm_cell_20/mul_1Mulwhile/lstm_cell_20/Sigmoid:y:0%while/lstm_cell_20/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UН
while/lstm_cell_20/add_1AddV2while/lstm_cell_20/mul:z:0while/lstm_cell_20/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€U|
while/lstm_cell_20/Sigmoid_2Sigmoid!while/lstm_cell_20/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€Uq
while/lstm_cell_20/Relu_1Reluwhile/lstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UЬ
while/lstm_cell_20/mul_2Mul while/lstm_cell_20/Sigmoid_2:y:0'while/lstm_cell_20/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€U≈
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_20/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_20/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€Uy
while/Identity_5Identitywhile/lstm_cell_20/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€U–

while/NoOpNoOp*^while/lstm_cell_20/BiasAdd/ReadVariableOp)^while/lstm_cell_20/MatMul/ReadVariableOp+^while/lstm_cell_20/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_20_biasadd_readvariableop_resource4while_lstm_cell_20_biasadd_readvariableop_resource_0"l
3while_lstm_cell_20_matmul_1_readvariableop_resource5while_lstm_cell_20_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_20_matmul_readvariableop_resource3while_lstm_cell_20_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : 2V
)while/lstm_cell_20/BiasAdd/ReadVariableOp)while/lstm_cell_20/BiasAdd/ReadVariableOp2T
(while/lstm_cell_20/MatMul/ReadVariableOp(while/lstm_cell_20/MatMul/ReadVariableOp2X
*while/lstm_cell_20/MatMul_1/ReadVariableOp*while/lstm_cell_20/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
: 
µ
√
while_cond_110658
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_110658___redundant_placeholder04
0while_while_cond_110658___redundant_placeholder14
0while_while_cond_110658___redundant_placeholder24
0while_while_cond_110658___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€U:€€€€€€€€€U: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
:
±
G
+__inference_dropout_20_layer_call_fn_113302

inputs
identityµ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€U* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_20_layer_call_and_return_conditional_losses_110599d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:€€€€€€€€€U"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€U:S O
+
_output_shapes
:€€€€€€€€€U
 
_user_specified_nameinputs
£J
Ы
C__inference_lstm_21_layer_call_and_return_conditional_losses_111334

inputs>
+lstm_cell_21_matmul_readvariableop_resource:	U‘@
-lstm_cell_21_matmul_1_readvariableop_resource:	U‘;
,lstm_cell_21_biasadd_readvariableop_resource:	‘
identityИҐ#lstm_cell_21/BiasAdd/ReadVariableOpҐ"lstm_cell_21/MatMul/ReadVariableOpҐ$lstm_cell_21/MatMul_1/ReadVariableOpҐwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Us
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€UR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Uw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Uc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€UD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€U*
shrink_axis_maskП
"lstm_cell_21/MatMul/ReadVariableOpReadVariableOp+lstm_cell_21_matmul_readvariableop_resource*
_output_shapes
:	U‘*
dtype0Ц
lstm_cell_21/MatMulMatMulstrided_slice_2:output:0*lstm_cell_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘У
$lstm_cell_21/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_21_matmul_1_readvariableop_resource*
_output_shapes
:	U‘*
dtype0Р
lstm_cell_21/MatMul_1MatMulzeros:output:0,lstm_cell_21/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘М
lstm_cell_21/addAddV2lstm_cell_21/MatMul:product:0lstm_cell_21/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘Н
#lstm_cell_21/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_21_biasadd_readvariableop_resource*
_output_shapes	
:‘*
dtype0Х
lstm_cell_21/BiasAddBiasAddlstm_cell_21/add:z:0+lstm_cell_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘^
lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_21/splitSplit%lstm_cell_21/split/split_dim:output:0lstm_cell_21/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitn
lstm_cell_21/SigmoidSigmoidlstm_cell_21/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€Up
lstm_cell_21/Sigmoid_1Sigmoidlstm_cell_21/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€Uw
lstm_cell_21/mulMullstm_cell_21/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€Uh
lstm_cell_21/ReluRelulstm_cell_21/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€UЖ
lstm_cell_21/mul_1Mullstm_cell_21/Sigmoid:y:0lstm_cell_21/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€U{
lstm_cell_21/add_1AddV2lstm_cell_21/mul:z:0lstm_cell_21/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Up
lstm_cell_21/Sigmoid_2Sigmoidlstm_cell_21/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€Ue
lstm_cell_21/Relu_1Relulstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UК
lstm_cell_21/mul_2Mullstm_cell_21/Sigmoid_2:y:0!lstm_cell_21/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Un
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : В
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_21_matmul_readvariableop_resource-lstm_cell_21_matmul_1_readvariableop_resource,lstm_cell_21_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_111250*
condR
while_cond_111249*K
output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   ¬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€U*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€U*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€U[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€Uј
NoOpNoOp$^lstm_cell_21/BiasAdd/ReadVariableOp#^lstm_cell_21/MatMul/ReadVariableOp%^lstm_cell_21/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€U: : : 2J
#lstm_cell_21/BiasAdd/ReadVariableOp#lstm_cell_21/BiasAdd/ReadVariableOp2H
"lstm_cell_21/MatMul/ReadVariableOp"lstm_cell_21/MatMul/ReadVariableOp2L
$lstm_cell_21/MatMul_1/ReadVariableOp$lstm_cell_21/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€U
 
_user_specified_nameinputs
М8
–
while_body_113570
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_21_matmul_readvariableop_resource_0:	U‘H
5while_lstm_cell_21_matmul_1_readvariableop_resource_0:	U‘C
4while_lstm_cell_21_biasadd_readvariableop_resource_0:	‘
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_21_matmul_readvariableop_resource:	U‘F
3while_lstm_cell_21_matmul_1_readvariableop_resource:	U‘A
2while_lstm_cell_21_biasadd_readvariableop_resource:	‘ИҐ)while/lstm_cell_21/BiasAdd/ReadVariableOpҐ(while/lstm_cell_21/MatMul/ReadVariableOpҐ*while/lstm_cell_21/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€U*
element_dtype0Э
(while/lstm_cell_21/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_21_matmul_readvariableop_resource_0*
_output_shapes
:	U‘*
dtype0Ї
while/lstm_cell_21/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘°
*while/lstm_cell_21/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_21_matmul_1_readvariableop_resource_0*
_output_shapes
:	U‘*
dtype0°
while/lstm_cell_21/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_21/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘Ю
while/lstm_cell_21/addAddV2#while/lstm_cell_21/MatMul:product:0%while/lstm_cell_21/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘Ы
)while/lstm_cell_21/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_21_biasadd_readvariableop_resource_0*
_output_shapes	
:‘*
dtype0І
while/lstm_cell_21/BiasAddBiasAddwhile/lstm_cell_21/add:z:01while/lstm_cell_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘d
"while/lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_21/splitSplit+while/lstm_cell_21/split/split_dim:output:0#while/lstm_cell_21/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitz
while/lstm_cell_21/SigmoidSigmoid!while/lstm_cell_21/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€U|
while/lstm_cell_21/Sigmoid_1Sigmoid!while/lstm_cell_21/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€UЖ
while/lstm_cell_21/mulMul while/lstm_cell_21/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€Ut
while/lstm_cell_21/ReluRelu!while/lstm_cell_21/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€UШ
while/lstm_cell_21/mul_1Mulwhile/lstm_cell_21/Sigmoid:y:0%while/lstm_cell_21/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UН
while/lstm_cell_21/add_1AddV2while/lstm_cell_21/mul:z:0while/lstm_cell_21/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€U|
while/lstm_cell_21/Sigmoid_2Sigmoid!while/lstm_cell_21/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€Uq
while/lstm_cell_21/Relu_1Reluwhile/lstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UЬ
while/lstm_cell_21/mul_2Mul while/lstm_cell_21/Sigmoid_2:y:0'while/lstm_cell_21/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€U≈
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_21/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_21/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€Uy
while/Identity_5Identitywhile/lstm_cell_21/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€U–

while/NoOpNoOp*^while/lstm_cell_21/BiasAdd/ReadVariableOp)^while/lstm_cell_21/MatMul/ReadVariableOp+^while/lstm_cell_21/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_21_biasadd_readvariableop_resource4while_lstm_cell_21_biasadd_readvariableop_resource_0"l
3while_lstm_cell_21_matmul_1_readvariableop_resource5while_lstm_cell_21_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_21_matmul_readvariableop_resource3while_lstm_cell_21_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : 2V
)while/lstm_cell_21/BiasAdd/ReadVariableOp)while/lstm_cell_21/BiasAdd/ReadVariableOp2T
(while/lstm_cell_21/MatMul/ReadVariableOp(while/lstm_cell_21/MatMul/ReadVariableOp2X
*while/lstm_cell_21/MatMul_1/ReadVariableOp*while/lstm_cell_21/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
: 
Ф

e
F__inference_dropout_20_layer_call_and_return_conditional_losses_111363

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *„£?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€UC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Р
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€U*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *∆n\>™
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€Us
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:€€€€€€€€€Um
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:€€€€€€€€€U]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:€€€€€€€€€U"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€U:S O
+
_output_shapes
:€€€€€€€€€U
 
_user_specified_nameinputs
µ
√
while_cond_114069
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_114069___redundant_placeholder04
0while_while_cond_114069___redundant_placeholder14
0while_while_cond_114069___redundant_placeholder24
0while_while_cond_114069___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€U:€€€€€€€€€U: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
:
≈A
–

lstm_20_while_body_111859,
(lstm_20_while_lstm_20_while_loop_counter2
.lstm_20_while_lstm_20_while_maximum_iterations
lstm_20_while_placeholder
lstm_20_while_placeholder_1
lstm_20_while_placeholder_2
lstm_20_while_placeholder_3+
'lstm_20_while_lstm_20_strided_slice_1_0g
clstm_20_while_tensorarrayv2read_tensorlistgetitem_lstm_20_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_20_while_lstm_cell_20_matmul_readvariableop_resource_0:	‘P
=lstm_20_while_lstm_cell_20_matmul_1_readvariableop_resource_0:	U‘K
<lstm_20_while_lstm_cell_20_biasadd_readvariableop_resource_0:	‘
lstm_20_while_identity
lstm_20_while_identity_1
lstm_20_while_identity_2
lstm_20_while_identity_3
lstm_20_while_identity_4
lstm_20_while_identity_5)
%lstm_20_while_lstm_20_strided_slice_1e
alstm_20_while_tensorarrayv2read_tensorlistgetitem_lstm_20_tensorarrayunstack_tensorlistfromtensorL
9lstm_20_while_lstm_cell_20_matmul_readvariableop_resource:	‘N
;lstm_20_while_lstm_cell_20_matmul_1_readvariableop_resource:	U‘I
:lstm_20_while_lstm_cell_20_biasadd_readvariableop_resource:	‘ИҐ1lstm_20/while/lstm_cell_20/BiasAdd/ReadVariableOpҐ0lstm_20/while/lstm_cell_20/MatMul/ReadVariableOpҐ2lstm_20/while/lstm_cell_20/MatMul_1/ReadVariableOpР
?lstm_20/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ќ
1lstm_20/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_20_while_tensorarrayv2read_tensorlistgetitem_lstm_20_tensorarrayunstack_tensorlistfromtensor_0lstm_20_while_placeholderHlstm_20/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0≠
0lstm_20/while/lstm_cell_20/MatMul/ReadVariableOpReadVariableOp;lstm_20_while_lstm_cell_20_matmul_readvariableop_resource_0*
_output_shapes
:	‘*
dtype0“
!lstm_20/while/lstm_cell_20/MatMulMatMul8lstm_20/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_20/while/lstm_cell_20/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘±
2lstm_20/while/lstm_cell_20/MatMul_1/ReadVariableOpReadVariableOp=lstm_20_while_lstm_cell_20_matmul_1_readvariableop_resource_0*
_output_shapes
:	U‘*
dtype0є
#lstm_20/while/lstm_cell_20/MatMul_1MatMullstm_20_while_placeholder_2:lstm_20/while/lstm_cell_20/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘ґ
lstm_20/while/lstm_cell_20/addAddV2+lstm_20/while/lstm_cell_20/MatMul:product:0-lstm_20/while/lstm_cell_20/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘Ђ
1lstm_20/while/lstm_cell_20/BiasAdd/ReadVariableOpReadVariableOp<lstm_20_while_lstm_cell_20_biasadd_readvariableop_resource_0*
_output_shapes	
:‘*
dtype0њ
"lstm_20/while/lstm_cell_20/BiasAddBiasAdd"lstm_20/while/lstm_cell_20/add:z:09lstm_20/while/lstm_cell_20/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘l
*lstm_20/while/lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :З
 lstm_20/while/lstm_cell_20/splitSplit3lstm_20/while/lstm_cell_20/split/split_dim:output:0+lstm_20/while/lstm_cell_20/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitК
"lstm_20/while/lstm_cell_20/SigmoidSigmoid)lstm_20/while/lstm_cell_20/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€UМ
$lstm_20/while/lstm_cell_20/Sigmoid_1Sigmoid)lstm_20/while/lstm_cell_20/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€UЮ
lstm_20/while/lstm_cell_20/mulMul(lstm_20/while/lstm_cell_20/Sigmoid_1:y:0lstm_20_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€UД
lstm_20/while/lstm_cell_20/ReluRelu)lstm_20/while/lstm_cell_20/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€U∞
 lstm_20/while/lstm_cell_20/mul_1Mul&lstm_20/while/lstm_cell_20/Sigmoid:y:0-lstm_20/while/lstm_cell_20/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€U•
 lstm_20/while/lstm_cell_20/add_1AddV2"lstm_20/while/lstm_cell_20/mul:z:0$lstm_20/while/lstm_cell_20/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UМ
$lstm_20/while/lstm_cell_20/Sigmoid_2Sigmoid)lstm_20/while/lstm_cell_20/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€UБ
!lstm_20/while/lstm_cell_20/Relu_1Relu$lstm_20/while/lstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Uі
 lstm_20/while/lstm_cell_20/mul_2Mul(lstm_20/while/lstm_cell_20/Sigmoid_2:y:0/lstm_20/while/lstm_cell_20/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Uе
2lstm_20/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_20_while_placeholder_1lstm_20_while_placeholder$lstm_20/while/lstm_cell_20/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“U
lstm_20/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_20/while/addAddV2lstm_20_while_placeholderlstm_20/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_20/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :З
lstm_20/while/add_1AddV2(lstm_20_while_lstm_20_while_loop_counterlstm_20/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_20/while/IdentityIdentitylstm_20/while/add_1:z:0^lstm_20/while/NoOp*
T0*
_output_shapes
: К
lstm_20/while/Identity_1Identity.lstm_20_while_lstm_20_while_maximum_iterations^lstm_20/while/NoOp*
T0*
_output_shapes
: q
lstm_20/while/Identity_2Identitylstm_20/while/add:z:0^lstm_20/while/NoOp*
T0*
_output_shapes
: Ю
lstm_20/while/Identity_3IdentityBlstm_20/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_20/while/NoOp*
T0*
_output_shapes
: С
lstm_20/while/Identity_4Identity$lstm_20/while/lstm_cell_20/mul_2:z:0^lstm_20/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€UС
lstm_20/while/Identity_5Identity$lstm_20/while/lstm_cell_20/add_1:z:0^lstm_20/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€Uр
lstm_20/while/NoOpNoOp2^lstm_20/while/lstm_cell_20/BiasAdd/ReadVariableOp1^lstm_20/while/lstm_cell_20/MatMul/ReadVariableOp3^lstm_20/while/lstm_cell_20/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_20_while_identitylstm_20/while/Identity:output:0"=
lstm_20_while_identity_1!lstm_20/while/Identity_1:output:0"=
lstm_20_while_identity_2!lstm_20/while/Identity_2:output:0"=
lstm_20_while_identity_3!lstm_20/while/Identity_3:output:0"=
lstm_20_while_identity_4!lstm_20/while/Identity_4:output:0"=
lstm_20_while_identity_5!lstm_20/while/Identity_5:output:0"P
%lstm_20_while_lstm_20_strided_slice_1'lstm_20_while_lstm_20_strided_slice_1_0"z
:lstm_20_while_lstm_cell_20_biasadd_readvariableop_resource<lstm_20_while_lstm_cell_20_biasadd_readvariableop_resource_0"|
;lstm_20_while_lstm_cell_20_matmul_1_readvariableop_resource=lstm_20_while_lstm_cell_20_matmul_1_readvariableop_resource_0"x
9lstm_20_while_lstm_cell_20_matmul_readvariableop_resource;lstm_20_while_lstm_cell_20_matmul_readvariableop_resource_0"»
alstm_20_while_tensorarrayv2read_tensorlistgetitem_lstm_20_tensorarrayunstack_tensorlistfromtensorclstm_20_while_tensorarrayv2read_tensorlistgetitem_lstm_20_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : 2f
1lstm_20/while/lstm_cell_20/BiasAdd/ReadVariableOp1lstm_20/while/lstm_cell_20/BiasAdd/ReadVariableOp2d
0lstm_20/while/lstm_cell_20/MatMul/ReadVariableOp0lstm_20/while/lstm_cell_20/MatMul/ReadVariableOp2h
2lstm_20/while/lstm_cell_20/MatMul_1/ReadVariableOp2lstm_20/while/lstm_cell_20/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
: 
ж"
г
while_body_110359
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_22_110383_0:	U‘.
while_lstm_cell_22_110385_0:	U‘*
while_lstm_cell_22_110387_0:	‘
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_22_110383:	U‘,
while_lstm_cell_22_110385:	U‘(
while_lstm_cell_22_110387:	‘ИҐ*while/lstm_cell_22/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€U*
element_dtype0≥
*while/lstm_cell_22/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_22_110383_0while_lstm_cell_22_110385_0while_lstm_cell_22_110387_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_22_layer_call_and_return_conditional_losses_110300№
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_22/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Р
while/Identity_4Identity3while/lstm_cell_22/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€UР
while/Identity_5Identity3while/lstm_cell_22/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€Uy

while/NoOpNoOp+^while/lstm_cell_22/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_22_110383while_lstm_cell_22_110383_0"8
while_lstm_cell_22_110385while_lstm_cell_22_110385_0"8
while_lstm_cell_22_110387while_lstm_cell_22_110387_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : 2X
*while/lstm_cell_22/StatefulPartitionedCall*while/lstm_cell_22/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
: 
нP
с
&sequential_5_lstm_22_while_body_109296F
Bsequential_5_lstm_22_while_sequential_5_lstm_22_while_loop_counterL
Hsequential_5_lstm_22_while_sequential_5_lstm_22_while_maximum_iterations*
&sequential_5_lstm_22_while_placeholder,
(sequential_5_lstm_22_while_placeholder_1,
(sequential_5_lstm_22_while_placeholder_2,
(sequential_5_lstm_22_while_placeholder_3E
Asequential_5_lstm_22_while_sequential_5_lstm_22_strided_slice_1_0Б
}sequential_5_lstm_22_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_22_tensorarrayunstack_tensorlistfromtensor_0[
Hsequential_5_lstm_22_while_lstm_cell_22_matmul_readvariableop_resource_0:	U‘]
Jsequential_5_lstm_22_while_lstm_cell_22_matmul_1_readvariableop_resource_0:	U‘X
Isequential_5_lstm_22_while_lstm_cell_22_biasadd_readvariableop_resource_0:	‘'
#sequential_5_lstm_22_while_identity)
%sequential_5_lstm_22_while_identity_1)
%sequential_5_lstm_22_while_identity_2)
%sequential_5_lstm_22_while_identity_3)
%sequential_5_lstm_22_while_identity_4)
%sequential_5_lstm_22_while_identity_5C
?sequential_5_lstm_22_while_sequential_5_lstm_22_strided_slice_1
{sequential_5_lstm_22_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_22_tensorarrayunstack_tensorlistfromtensorY
Fsequential_5_lstm_22_while_lstm_cell_22_matmul_readvariableop_resource:	U‘[
Hsequential_5_lstm_22_while_lstm_cell_22_matmul_1_readvariableop_resource:	U‘V
Gsequential_5_lstm_22_while_lstm_cell_22_biasadd_readvariableop_resource:	‘ИҐ>sequential_5/lstm_22/while/lstm_cell_22/BiasAdd/ReadVariableOpҐ=sequential_5/lstm_22/while/lstm_cell_22/MatMul/ReadVariableOpҐ?sequential_5/lstm_22/while/lstm_cell_22/MatMul_1/ReadVariableOpЭ
Lsequential_5/lstm_22/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   П
>sequential_5/lstm_22/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}sequential_5_lstm_22_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_22_tensorarrayunstack_tensorlistfromtensor_0&sequential_5_lstm_22_while_placeholderUsequential_5/lstm_22/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€U*
element_dtype0«
=sequential_5/lstm_22/while/lstm_cell_22/MatMul/ReadVariableOpReadVariableOpHsequential_5_lstm_22_while_lstm_cell_22_matmul_readvariableop_resource_0*
_output_shapes
:	U‘*
dtype0щ
.sequential_5/lstm_22/while/lstm_cell_22/MatMulMatMulEsequential_5/lstm_22/while/TensorArrayV2Read/TensorListGetItem:item:0Esequential_5/lstm_22/while/lstm_cell_22/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘Ћ
?sequential_5/lstm_22/while/lstm_cell_22/MatMul_1/ReadVariableOpReadVariableOpJsequential_5_lstm_22_while_lstm_cell_22_matmul_1_readvariableop_resource_0*
_output_shapes
:	U‘*
dtype0а
0sequential_5/lstm_22/while/lstm_cell_22/MatMul_1MatMul(sequential_5_lstm_22_while_placeholder_2Gsequential_5/lstm_22/while/lstm_cell_22/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘Ё
+sequential_5/lstm_22/while/lstm_cell_22/addAddV28sequential_5/lstm_22/while/lstm_cell_22/MatMul:product:0:sequential_5/lstm_22/while/lstm_cell_22/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘≈
>sequential_5/lstm_22/while/lstm_cell_22/BiasAdd/ReadVariableOpReadVariableOpIsequential_5_lstm_22_while_lstm_cell_22_biasadd_readvariableop_resource_0*
_output_shapes	
:‘*
dtype0ж
/sequential_5/lstm_22/while/lstm_cell_22/BiasAddBiasAdd/sequential_5/lstm_22/while/lstm_cell_22/add:z:0Fsequential_5/lstm_22/while/lstm_cell_22/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘y
7sequential_5/lstm_22/while/lstm_cell_22/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ѓ
-sequential_5/lstm_22/while/lstm_cell_22/splitSplit@sequential_5/lstm_22/while/lstm_cell_22/split/split_dim:output:08sequential_5/lstm_22/while/lstm_cell_22/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_split§
/sequential_5/lstm_22/while/lstm_cell_22/SigmoidSigmoid6sequential_5/lstm_22/while/lstm_cell_22/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€U¶
1sequential_5/lstm_22/while/lstm_cell_22/Sigmoid_1Sigmoid6sequential_5/lstm_22/while/lstm_cell_22/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€U≈
+sequential_5/lstm_22/while/lstm_cell_22/mulMul5sequential_5/lstm_22/while/lstm_cell_22/Sigmoid_1:y:0(sequential_5_lstm_22_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€UЮ
,sequential_5/lstm_22/while/lstm_cell_22/ReluRelu6sequential_5/lstm_22/while/lstm_cell_22/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€U„
-sequential_5/lstm_22/while/lstm_cell_22/mul_1Mul3sequential_5/lstm_22/while/lstm_cell_22/Sigmoid:y:0:sequential_5/lstm_22/while/lstm_cell_22/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Uћ
-sequential_5/lstm_22/while/lstm_cell_22/add_1AddV2/sequential_5/lstm_22/while/lstm_cell_22/mul:z:01sequential_5/lstm_22/while/lstm_cell_22/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€U¶
1sequential_5/lstm_22/while/lstm_cell_22/Sigmoid_2Sigmoid6sequential_5/lstm_22/while/lstm_cell_22/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€UЫ
.sequential_5/lstm_22/while/lstm_cell_22/Relu_1Relu1sequential_5/lstm_22/while/lstm_cell_22/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Uџ
-sequential_5/lstm_22/while/lstm_cell_22/mul_2Mul5sequential_5/lstm_22/while/lstm_cell_22/Sigmoid_2:y:0<sequential_5/lstm_22/while/lstm_cell_22/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UЩ
?sequential_5/lstm_22/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(sequential_5_lstm_22_while_placeholder_1&sequential_5_lstm_22_while_placeholder1sequential_5/lstm_22/while/lstm_cell_22/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“b
 sequential_5/lstm_22/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ы
sequential_5/lstm_22/while/addAddV2&sequential_5_lstm_22_while_placeholder)sequential_5/lstm_22/while/add/y:output:0*
T0*
_output_shapes
: d
"sequential_5/lstm_22/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :ї
 sequential_5/lstm_22/while/add_1AddV2Bsequential_5_lstm_22_while_sequential_5_lstm_22_while_loop_counter+sequential_5/lstm_22/while/add_1/y:output:0*
T0*
_output_shapes
: Ш
#sequential_5/lstm_22/while/IdentityIdentity$sequential_5/lstm_22/while/add_1:z:0 ^sequential_5/lstm_22/while/NoOp*
T0*
_output_shapes
: Њ
%sequential_5/lstm_22/while/Identity_1IdentityHsequential_5_lstm_22_while_sequential_5_lstm_22_while_maximum_iterations ^sequential_5/lstm_22/while/NoOp*
T0*
_output_shapes
: Ш
%sequential_5/lstm_22/while/Identity_2Identity"sequential_5/lstm_22/while/add:z:0 ^sequential_5/lstm_22/while/NoOp*
T0*
_output_shapes
: ≈
%sequential_5/lstm_22/while/Identity_3IdentityOsequential_5/lstm_22/while/TensorArrayV2Write/TensorListSetItem:output_handle:0 ^sequential_5/lstm_22/while/NoOp*
T0*
_output_shapes
: Є
%sequential_5/lstm_22/while/Identity_4Identity1sequential_5/lstm_22/while/lstm_cell_22/mul_2:z:0 ^sequential_5/lstm_22/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€UЄ
%sequential_5/lstm_22/while/Identity_5Identity1sequential_5/lstm_22/while/lstm_cell_22/add_1:z:0 ^sequential_5/lstm_22/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€U§
sequential_5/lstm_22/while/NoOpNoOp?^sequential_5/lstm_22/while/lstm_cell_22/BiasAdd/ReadVariableOp>^sequential_5/lstm_22/while/lstm_cell_22/MatMul/ReadVariableOp@^sequential_5/lstm_22/while/lstm_cell_22/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "S
#sequential_5_lstm_22_while_identity,sequential_5/lstm_22/while/Identity:output:0"W
%sequential_5_lstm_22_while_identity_1.sequential_5/lstm_22/while/Identity_1:output:0"W
%sequential_5_lstm_22_while_identity_2.sequential_5/lstm_22/while/Identity_2:output:0"W
%sequential_5_lstm_22_while_identity_3.sequential_5/lstm_22/while/Identity_3:output:0"W
%sequential_5_lstm_22_while_identity_4.sequential_5/lstm_22/while/Identity_4:output:0"W
%sequential_5_lstm_22_while_identity_5.sequential_5/lstm_22/while/Identity_5:output:0"Ф
Gsequential_5_lstm_22_while_lstm_cell_22_biasadd_readvariableop_resourceIsequential_5_lstm_22_while_lstm_cell_22_biasadd_readvariableop_resource_0"Ц
Hsequential_5_lstm_22_while_lstm_cell_22_matmul_1_readvariableop_resourceJsequential_5_lstm_22_while_lstm_cell_22_matmul_1_readvariableop_resource_0"Т
Fsequential_5_lstm_22_while_lstm_cell_22_matmul_readvariableop_resourceHsequential_5_lstm_22_while_lstm_cell_22_matmul_readvariableop_resource_0"Д
?sequential_5_lstm_22_while_sequential_5_lstm_22_strided_slice_1Asequential_5_lstm_22_while_sequential_5_lstm_22_strided_slice_1_0"ь
{sequential_5_lstm_22_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_22_tensorarrayunstack_tensorlistfromtensor}sequential_5_lstm_22_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_22_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : 2А
>sequential_5/lstm_22/while/lstm_cell_22/BiasAdd/ReadVariableOp>sequential_5/lstm_22/while/lstm_cell_22/BiasAdd/ReadVariableOp2~
=sequential_5/lstm_22/while/lstm_cell_22/MatMul/ReadVariableOp=sequential_5/lstm_22/while/lstm_cell_22/MatMul/ReadVariableOp2В
?sequential_5/lstm_22/while/lstm_cell_22/MatMul_1/ReadVariableOp?sequential_5/lstm_22/while/lstm_cell_22/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
: 
ЁJ
Э
C__inference_lstm_22_layer_call_and_return_conditional_losses_114154
inputs_0>
+lstm_cell_22_matmul_readvariableop_resource:	U‘@
-lstm_cell_22_matmul_1_readvariableop_resource:	U‘;
,lstm_cell_22_biasadd_readvariableop_resource:	‘
identityИҐ#lstm_cell_22/BiasAdd/ReadVariableOpҐ"lstm_cell_22/MatMul/ReadVariableOpҐ$lstm_cell_22/MatMul_1/ReadVariableOpҐwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Us
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€UR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Uw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Uc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€UD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€U*
shrink_axis_maskП
"lstm_cell_22/MatMul/ReadVariableOpReadVariableOp+lstm_cell_22_matmul_readvariableop_resource*
_output_shapes
:	U‘*
dtype0Ц
lstm_cell_22/MatMulMatMulstrided_slice_2:output:0*lstm_cell_22/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘У
$lstm_cell_22/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_22_matmul_1_readvariableop_resource*
_output_shapes
:	U‘*
dtype0Р
lstm_cell_22/MatMul_1MatMulzeros:output:0,lstm_cell_22/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘М
lstm_cell_22/addAddV2lstm_cell_22/MatMul:product:0lstm_cell_22/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘Н
#lstm_cell_22/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_22_biasadd_readvariableop_resource*
_output_shapes	
:‘*
dtype0Х
lstm_cell_22/BiasAddBiasAddlstm_cell_22/add:z:0+lstm_cell_22/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘^
lstm_cell_22/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_22/splitSplit%lstm_cell_22/split/split_dim:output:0lstm_cell_22/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitn
lstm_cell_22/SigmoidSigmoidlstm_cell_22/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€Up
lstm_cell_22/Sigmoid_1Sigmoidlstm_cell_22/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€Uw
lstm_cell_22/mulMullstm_cell_22/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€Uh
lstm_cell_22/ReluRelulstm_cell_22/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€UЖ
lstm_cell_22/mul_1Mullstm_cell_22/Sigmoid:y:0lstm_cell_22/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€U{
lstm_cell_22/add_1AddV2lstm_cell_22/mul:z:0lstm_cell_22/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Up
lstm_cell_22/Sigmoid_2Sigmoidlstm_cell_22/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€Ue
lstm_cell_22/Relu_1Relulstm_cell_22/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UК
lstm_cell_22/mul_2Mullstm_cell_22/Sigmoid_2:y:0!lstm_cell_22/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Un
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : В
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_22_matmul_readvariableop_resource-lstm_cell_22_matmul_1_readvariableop_resource,lstm_cell_22_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_114070*
condR
while_cond_114069*K
output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   Ћ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€U*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€U*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€U[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Uј
NoOpNoOp$^lstm_cell_22/BiasAdd/ReadVariableOp#^lstm_cell_22/MatMul/ReadVariableOp%^lstm_cell_22/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€U: : : 2J
#lstm_cell_22/BiasAdd/ReadVariableOp#lstm_cell_22/BiasAdd/ReadVariableOp2H
"lstm_cell_22/MatMul/ReadVariableOp"lstm_cell_22/MatMul/ReadVariableOp2L
$lstm_cell_22/MatMul_1/ReadVariableOp$lstm_cell_22/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€U
"
_user_specified_name
inputs/0
µ
√
while_cond_112926
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_112926___redundant_placeholder04
0while_while_cond_112926___redundant_placeholder14
0while_while_cond_112926___redundant_placeholder24
0while_while_cond_112926___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€U:€€€€€€€€€U: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
:
ж"
г
while_body_110168
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_22_110192_0:	U‘.
while_lstm_cell_22_110194_0:	U‘*
while_lstm_cell_22_110196_0:	‘
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_22_110192:	U‘,
while_lstm_cell_22_110194:	U‘(
while_lstm_cell_22_110196:	‘ИҐ*while/lstm_cell_22/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€U*
element_dtype0≥
*while/lstm_cell_22/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_22_110192_0while_lstm_cell_22_110194_0while_lstm_cell_22_110196_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_22_layer_call_and_return_conditional_losses_110154№
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_22/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Р
while/Identity_4Identity3while/lstm_cell_22/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€UР
while/Identity_5Identity3while/lstm_cell_22/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€Uy

while/NoOpNoOp+^while/lstm_cell_22/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_22_110192while_lstm_cell_22_110192_0"8
while_lstm_cell_22_110194while_lstm_cell_22_110194_0"8
while_lstm_cell_22_110196while_lstm_cell_22_110196_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : 2X
*while/lstm_cell_22/StatefulPartitionedCall*while/lstm_cell_22/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
: 
±
G
+__inference_dropout_21_layer_call_fn_113945

inputs
identityµ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€U* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_21_layer_call_and_return_conditional_losses_110756d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:€€€€€€€€€U"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€U:S O
+
_output_shapes
:€€€€€€€€€U
 
_user_specified_nameinputs
’
Д
H__inference_lstm_cell_21_layer_call_and_return_conditional_losses_109804

inputs

states
states_11
matmul_readvariableop_resource:	U‘3
 matmul_1_readvariableop_resource:	U‘.
biasadd_readvariableop_resource:	‘
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	U‘*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	U‘*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:‘*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€UV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€UU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€UN
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€U_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€UK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Uc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€UZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€UZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€UС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€U
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€U
 
_user_specified_namestates:OK
'
_output_shapes
:€€€€€€€€€U
 
_user_specified_namestates
л
ц
-__inference_lstm_cell_20_layer_call_fn_114646

inputs
states_0
states_1
unknown:	‘
	unknown_0:	U‘
	unknown_1:	‘
identity

identity_1

identity_2ИҐStatefulPartitionedCall®
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_20_layer_call_and_return_conditional_losses_109454o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Uq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Uq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:€€€€€€€€€U`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€:€€€€€€€€€U:€€€€€€€€€U: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€U
"
_user_specified_name
states/0:QM
'
_output_shapes
:€€€€€€€€€U
"
_user_specified_name
states/1
µ
√
while_cond_109817
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_109817___redundant_placeholder04
0while_while_cond_109817___redundant_placeholder14
0while_while_cond_109817___redundant_placeholder24
0while_while_cond_109817___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€U:€€€€€€€€€U: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
:
М8
–
while_body_114070
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_22_matmul_readvariableop_resource_0:	U‘H
5while_lstm_cell_22_matmul_1_readvariableop_resource_0:	U‘C
4while_lstm_cell_22_biasadd_readvariableop_resource_0:	‘
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_22_matmul_readvariableop_resource:	U‘F
3while_lstm_cell_22_matmul_1_readvariableop_resource:	U‘A
2while_lstm_cell_22_biasadd_readvariableop_resource:	‘ИҐ)while/lstm_cell_22/BiasAdd/ReadVariableOpҐ(while/lstm_cell_22/MatMul/ReadVariableOpҐ*while/lstm_cell_22/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€U*
element_dtype0Э
(while/lstm_cell_22/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_22_matmul_readvariableop_resource_0*
_output_shapes
:	U‘*
dtype0Ї
while/lstm_cell_22/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_22/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘°
*while/lstm_cell_22/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_22_matmul_1_readvariableop_resource_0*
_output_shapes
:	U‘*
dtype0°
while/lstm_cell_22/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_22/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘Ю
while/lstm_cell_22/addAddV2#while/lstm_cell_22/MatMul:product:0%while/lstm_cell_22/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘Ы
)while/lstm_cell_22/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_22_biasadd_readvariableop_resource_0*
_output_shapes	
:‘*
dtype0І
while/lstm_cell_22/BiasAddBiasAddwhile/lstm_cell_22/add:z:01while/lstm_cell_22/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘d
"while/lstm_cell_22/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_22/splitSplit+while/lstm_cell_22/split/split_dim:output:0#while/lstm_cell_22/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitz
while/lstm_cell_22/SigmoidSigmoid!while/lstm_cell_22/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€U|
while/lstm_cell_22/Sigmoid_1Sigmoid!while/lstm_cell_22/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€UЖ
while/lstm_cell_22/mulMul while/lstm_cell_22/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€Ut
while/lstm_cell_22/ReluRelu!while/lstm_cell_22/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€UШ
while/lstm_cell_22/mul_1Mulwhile/lstm_cell_22/Sigmoid:y:0%while/lstm_cell_22/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UН
while/lstm_cell_22/add_1AddV2while/lstm_cell_22/mul:z:0while/lstm_cell_22/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€U|
while/lstm_cell_22/Sigmoid_2Sigmoid!while/lstm_cell_22/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€Uq
while/lstm_cell_22/Relu_1Reluwhile/lstm_cell_22/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UЬ
while/lstm_cell_22/mul_2Mul while/lstm_cell_22/Sigmoid_2:y:0'while/lstm_cell_22/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€U≈
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_22/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_22/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€Uy
while/Identity_5Identitywhile/lstm_cell_22/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€U–

while/NoOpNoOp*^while/lstm_cell_22/BiasAdd/ReadVariableOp)^while/lstm_cell_22/MatMul/ReadVariableOp+^while/lstm_cell_22/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_22_biasadd_readvariableop_resource4while_lstm_cell_22_biasadd_readvariableop_resource_0"l
3while_lstm_cell_22_matmul_1_readvariableop_resource5while_lstm_cell_22_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_22_matmul_readvariableop_resource3while_lstm_cell_22_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : 2V
)while/lstm_cell_22/BiasAdd/ReadVariableOp)while/lstm_cell_22/BiasAdd/ReadVariableOp2T
(while/lstm_cell_22/MatMul/ReadVariableOp(while/lstm_cell_22/MatMul/ReadVariableOp2X
*while/lstm_cell_22/MatMul_1/ReadVariableOp*while/lstm_cell_22/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
: 
М8
–
while_body_113213
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_20_matmul_readvariableop_resource_0:	‘H
5while_lstm_cell_20_matmul_1_readvariableop_resource_0:	U‘C
4while_lstm_cell_20_biasadd_readvariableop_resource_0:	‘
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_20_matmul_readvariableop_resource:	‘F
3while_lstm_cell_20_matmul_1_readvariableop_resource:	U‘A
2while_lstm_cell_20_biasadd_readvariableop_resource:	‘ИҐ)while/lstm_cell_20/BiasAdd/ReadVariableOpҐ(while/lstm_cell_20/MatMul/ReadVariableOpҐ*while/lstm_cell_20/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Э
(while/lstm_cell_20/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_20_matmul_readvariableop_resource_0*
_output_shapes
:	‘*
dtype0Ї
while/lstm_cell_20/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_20/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘°
*while/lstm_cell_20/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_20_matmul_1_readvariableop_resource_0*
_output_shapes
:	U‘*
dtype0°
while/lstm_cell_20/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_20/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘Ю
while/lstm_cell_20/addAddV2#while/lstm_cell_20/MatMul:product:0%while/lstm_cell_20/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘Ы
)while/lstm_cell_20/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_20_biasadd_readvariableop_resource_0*
_output_shapes	
:‘*
dtype0І
while/lstm_cell_20/BiasAddBiasAddwhile/lstm_cell_20/add:z:01while/lstm_cell_20/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘d
"while/lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_20/splitSplit+while/lstm_cell_20/split/split_dim:output:0#while/lstm_cell_20/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitz
while/lstm_cell_20/SigmoidSigmoid!while/lstm_cell_20/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€U|
while/lstm_cell_20/Sigmoid_1Sigmoid!while/lstm_cell_20/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€UЖ
while/lstm_cell_20/mulMul while/lstm_cell_20/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€Ut
while/lstm_cell_20/ReluRelu!while/lstm_cell_20/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€UШ
while/lstm_cell_20/mul_1Mulwhile/lstm_cell_20/Sigmoid:y:0%while/lstm_cell_20/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UН
while/lstm_cell_20/add_1AddV2while/lstm_cell_20/mul:z:0while/lstm_cell_20/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€U|
while/lstm_cell_20/Sigmoid_2Sigmoid!while/lstm_cell_20/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€Uq
while/lstm_cell_20/Relu_1Reluwhile/lstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UЬ
while/lstm_cell_20/mul_2Mul while/lstm_cell_20/Sigmoid_2:y:0'while/lstm_cell_20/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€U≈
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_20/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_20/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€Uy
while/Identity_5Identitywhile/lstm_cell_20/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€U–

while/NoOpNoOp*^while/lstm_cell_20/BiasAdd/ReadVariableOp)^while/lstm_cell_20/MatMul/ReadVariableOp+^while/lstm_cell_20/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_20_biasadd_readvariableop_resource4while_lstm_cell_20_biasadd_readvariableop_resource_0"l
3while_lstm_cell_20_matmul_1_readvariableop_resource5while_lstm_cell_20_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_20_matmul_readvariableop_resource3while_lstm_cell_20_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : 2V
)while/lstm_cell_20/BiasAdd/ReadVariableOp)while/lstm_cell_20/BiasAdd/ReadVariableOp2T
(while/lstm_cell_20/MatMul/ReadVariableOp(while/lstm_cell_20/MatMul/ReadVariableOp2X
*while/lstm_cell_20/MatMul_1/ReadVariableOp*while/lstm_cell_20/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
: 
бJ
Э
C__inference_lstm_21_layer_call_and_return_conditional_losses_113654
inputs_0>
+lstm_cell_21_matmul_readvariableop_resource:	U‘@
-lstm_cell_21_matmul_1_readvariableop_resource:	U‘;
,lstm_cell_21_biasadd_readvariableop_resource:	‘
identityИҐ#lstm_cell_21/BiasAdd/ReadVariableOpҐ"lstm_cell_21/MatMul/ReadVariableOpҐ$lstm_cell_21/MatMul_1/ReadVariableOpҐwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Us
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€UR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Uw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Uc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€UD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€U*
shrink_axis_maskП
"lstm_cell_21/MatMul/ReadVariableOpReadVariableOp+lstm_cell_21_matmul_readvariableop_resource*
_output_shapes
:	U‘*
dtype0Ц
lstm_cell_21/MatMulMatMulstrided_slice_2:output:0*lstm_cell_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘У
$lstm_cell_21/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_21_matmul_1_readvariableop_resource*
_output_shapes
:	U‘*
dtype0Р
lstm_cell_21/MatMul_1MatMulzeros:output:0,lstm_cell_21/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘М
lstm_cell_21/addAddV2lstm_cell_21/MatMul:product:0lstm_cell_21/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘Н
#lstm_cell_21/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_21_biasadd_readvariableop_resource*
_output_shapes	
:‘*
dtype0Х
lstm_cell_21/BiasAddBiasAddlstm_cell_21/add:z:0+lstm_cell_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘^
lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_21/splitSplit%lstm_cell_21/split/split_dim:output:0lstm_cell_21/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitn
lstm_cell_21/SigmoidSigmoidlstm_cell_21/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€Up
lstm_cell_21/Sigmoid_1Sigmoidlstm_cell_21/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€Uw
lstm_cell_21/mulMullstm_cell_21/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€Uh
lstm_cell_21/ReluRelulstm_cell_21/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€UЖ
lstm_cell_21/mul_1Mullstm_cell_21/Sigmoid:y:0lstm_cell_21/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€U{
lstm_cell_21/add_1AddV2lstm_cell_21/mul:z:0lstm_cell_21/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Up
lstm_cell_21/Sigmoid_2Sigmoidlstm_cell_21/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€Ue
lstm_cell_21/Relu_1Relulstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UК
lstm_cell_21/mul_2Mullstm_cell_21/Sigmoid_2:y:0!lstm_cell_21/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Un
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : В
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_21_matmul_readvariableop_resource-lstm_cell_21_matmul_1_readvariableop_resource,lstm_cell_21_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_113570*
condR
while_cond_113569*K
output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   Ћ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€U*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€U*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€U[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Uј
NoOpNoOp$^lstm_cell_21/BiasAdd/ReadVariableOp#^lstm_cell_21/MatMul/ReadVariableOp%^lstm_cell_21/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€U: : : 2J
#lstm_cell_21/BiasAdd/ReadVariableOp#lstm_cell_21/BiasAdd/ReadVariableOp2H
"lstm_cell_21/MatMul/ReadVariableOp"lstm_cell_21/MatMul/ReadVariableOp2L
$lstm_cell_21/MatMul_1/ReadVariableOp$lstm_cell_21/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€U
"
_user_specified_name
inputs/0
М8
–
while_body_112927
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_20_matmul_readvariableop_resource_0:	‘H
5while_lstm_cell_20_matmul_1_readvariableop_resource_0:	U‘C
4while_lstm_cell_20_biasadd_readvariableop_resource_0:	‘
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_20_matmul_readvariableop_resource:	‘F
3while_lstm_cell_20_matmul_1_readvariableop_resource:	U‘A
2while_lstm_cell_20_biasadd_readvariableop_resource:	‘ИҐ)while/lstm_cell_20/BiasAdd/ReadVariableOpҐ(while/lstm_cell_20/MatMul/ReadVariableOpҐ*while/lstm_cell_20/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Э
(while/lstm_cell_20/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_20_matmul_readvariableop_resource_0*
_output_shapes
:	‘*
dtype0Ї
while/lstm_cell_20/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_20/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘°
*while/lstm_cell_20/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_20_matmul_1_readvariableop_resource_0*
_output_shapes
:	U‘*
dtype0°
while/lstm_cell_20/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_20/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘Ю
while/lstm_cell_20/addAddV2#while/lstm_cell_20/MatMul:product:0%while/lstm_cell_20/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘Ы
)while/lstm_cell_20/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_20_biasadd_readvariableop_resource_0*
_output_shapes	
:‘*
dtype0І
while/lstm_cell_20/BiasAddBiasAddwhile/lstm_cell_20/add:z:01while/lstm_cell_20/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘d
"while/lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_20/splitSplit+while/lstm_cell_20/split/split_dim:output:0#while/lstm_cell_20/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitz
while/lstm_cell_20/SigmoidSigmoid!while/lstm_cell_20/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€U|
while/lstm_cell_20/Sigmoid_1Sigmoid!while/lstm_cell_20/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€UЖ
while/lstm_cell_20/mulMul while/lstm_cell_20/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€Ut
while/lstm_cell_20/ReluRelu!while/lstm_cell_20/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€UШ
while/lstm_cell_20/mul_1Mulwhile/lstm_cell_20/Sigmoid:y:0%while/lstm_cell_20/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UН
while/lstm_cell_20/add_1AddV2while/lstm_cell_20/mul:z:0while/lstm_cell_20/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€U|
while/lstm_cell_20/Sigmoid_2Sigmoid!while/lstm_cell_20/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€Uq
while/lstm_cell_20/Relu_1Reluwhile/lstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UЬ
while/lstm_cell_20/mul_2Mul while/lstm_cell_20/Sigmoid_2:y:0'while/lstm_cell_20/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€U≈
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_20/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_20/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€Uy
while/Identity_5Identitywhile/lstm_cell_20/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€U–

while/NoOpNoOp*^while/lstm_cell_20/BiasAdd/ReadVariableOp)^while/lstm_cell_20/MatMul/ReadVariableOp+^while/lstm_cell_20/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_20_biasadd_readvariableop_resource4while_lstm_cell_20_biasadd_readvariableop_resource_0"l
3while_lstm_cell_20_matmul_1_readvariableop_resource5while_lstm_cell_20_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_20_matmul_readvariableop_resource3while_lstm_cell_20_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : 2V
)while/lstm_cell_20/BiasAdd/ReadVariableOp)while/lstm_cell_20/BiasAdd/ReadVariableOp2T
(while/lstm_cell_20/MatMul/ReadVariableOp(while/lstm_cell_20/MatMul/ReadVariableOp2X
*while/lstm_cell_20/MatMul_1/ReadVariableOp*while/lstm_cell_20/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
: 
бJ
Э
C__inference_lstm_20_layer_call_and_return_conditional_losses_112868
inputs_0>
+lstm_cell_20_matmul_readvariableop_resource:	‘@
-lstm_cell_20_matmul_1_readvariableop_resource:	U‘;
,lstm_cell_20_biasadd_readvariableop_resource:	‘
identityИҐ#lstm_cell_20/BiasAdd/ReadVariableOpҐ"lstm_cell_20/MatMul/ReadVariableOpҐ$lstm_cell_20/MatMul_1/ReadVariableOpҐwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Us
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€UR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Uw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Uc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskП
"lstm_cell_20/MatMul/ReadVariableOpReadVariableOp+lstm_cell_20_matmul_readvariableop_resource*
_output_shapes
:	‘*
dtype0Ц
lstm_cell_20/MatMulMatMulstrided_slice_2:output:0*lstm_cell_20/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘У
$lstm_cell_20/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_20_matmul_1_readvariableop_resource*
_output_shapes
:	U‘*
dtype0Р
lstm_cell_20/MatMul_1MatMulzeros:output:0,lstm_cell_20/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘М
lstm_cell_20/addAddV2lstm_cell_20/MatMul:product:0lstm_cell_20/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘Н
#lstm_cell_20/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_20_biasadd_readvariableop_resource*
_output_shapes	
:‘*
dtype0Х
lstm_cell_20/BiasAddBiasAddlstm_cell_20/add:z:0+lstm_cell_20/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘^
lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_20/splitSplit%lstm_cell_20/split/split_dim:output:0lstm_cell_20/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitn
lstm_cell_20/SigmoidSigmoidlstm_cell_20/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€Up
lstm_cell_20/Sigmoid_1Sigmoidlstm_cell_20/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€Uw
lstm_cell_20/mulMullstm_cell_20/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€Uh
lstm_cell_20/ReluRelulstm_cell_20/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€UЖ
lstm_cell_20/mul_1Mullstm_cell_20/Sigmoid:y:0lstm_cell_20/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€U{
lstm_cell_20/add_1AddV2lstm_cell_20/mul:z:0lstm_cell_20/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Up
lstm_cell_20/Sigmoid_2Sigmoidlstm_cell_20/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€Ue
lstm_cell_20/Relu_1Relulstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UК
lstm_cell_20/mul_2Mullstm_cell_20/Sigmoid_2:y:0!lstm_cell_20/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Un
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : В
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_20_matmul_readvariableop_resource-lstm_cell_20_matmul_1_readvariableop_resource,lstm_cell_20_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_112784*
condR
while_cond_112783*K
output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   Ћ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€U*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€U*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€U[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Uј
NoOpNoOp$^lstm_cell_20/BiasAdd/ReadVariableOp#^lstm_cell_20/MatMul/ReadVariableOp%^lstm_cell_20/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2J
#lstm_cell_20/BiasAdd/ReadVariableOp#lstm_cell_20/BiasAdd/ReadVariableOp2H
"lstm_cell_20/MatMul/ReadVariableOp"lstm_cell_20/MatMul/ReadVariableOp2L
$lstm_cell_20/MatMul_1/ReadVariableOp$lstm_cell_20/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs/0
µ
√
while_cond_110167
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_110167___redundant_placeholder04
0while_while_cond_110167___redundant_placeholder14
0while_while_cond_110167___redundant_placeholder24
0while_while_cond_110167___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€U:€€€€€€€€€U: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
:
Ё
Ж
H__inference_lstm_cell_20_layer_call_and_return_conditional_losses_114727

inputs
states_0
states_11
matmul_readvariableop_resource:	‘3
 matmul_1_readvariableop_resource:	U‘.
biasadd_readvariableop_resource:	‘
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	‘*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	U‘*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:‘*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€UV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€UU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€UN
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€U_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€UK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Uc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€UZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€UZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€UС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€:€€€€€€€€€U:€€€€€€€€€U: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€U
"
_user_specified_name
states/0:QM
'
_output_shapes
:€€€€€€€€€U
"
_user_specified_name
states/1
ж"
г
while_body_110009
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_21_110033_0:	U‘.
while_lstm_cell_21_110035_0:	U‘*
while_lstm_cell_21_110037_0:	‘
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_21_110033:	U‘,
while_lstm_cell_21_110035:	U‘(
while_lstm_cell_21_110037:	‘ИҐ*while/lstm_cell_21/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€U*
element_dtype0≥
*while/lstm_cell_21/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_21_110033_0while_lstm_cell_21_110035_0while_lstm_cell_21_110037_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_21_layer_call_and_return_conditional_losses_109950№
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_21/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Р
while/Identity_4Identity3while/lstm_cell_21/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€UР
while/Identity_5Identity3while/lstm_cell_21/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€Uy

while/NoOpNoOp+^while/lstm_cell_21/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_21_110033while_lstm_cell_21_110033_0"8
while_lstm_cell_21_110035while_lstm_cell_21_110035_0"8
while_lstm_cell_21_110037while_lstm_cell_21_110037_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : 2X
*while/lstm_cell_21/StatefulPartitionedCall*while/lstm_cell_21/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
: 
’
Д
H__inference_lstm_cell_22_layer_call_and_return_conditional_losses_110300

inputs

states
states_11
matmul_readvariableop_resource:	U‘3
 matmul_1_readvariableop_resource:	U‘.
biasadd_readvariableop_resource:	‘
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	U‘*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	U‘*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:‘*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€UV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€UU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€UN
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€U_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€UK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Uc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€UZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€UZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€UС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€U
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€U
 
_user_specified_namestates:OK
'
_output_shapes
:€€€€€€€€€U
 
_user_specified_namestates
≈A
–

lstm_21_while_body_111999,
(lstm_21_while_lstm_21_while_loop_counter2
.lstm_21_while_lstm_21_while_maximum_iterations
lstm_21_while_placeholder
lstm_21_while_placeholder_1
lstm_21_while_placeholder_2
lstm_21_while_placeholder_3+
'lstm_21_while_lstm_21_strided_slice_1_0g
clstm_21_while_tensorarrayv2read_tensorlistgetitem_lstm_21_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_21_while_lstm_cell_21_matmul_readvariableop_resource_0:	U‘P
=lstm_21_while_lstm_cell_21_matmul_1_readvariableop_resource_0:	U‘K
<lstm_21_while_lstm_cell_21_biasadd_readvariableop_resource_0:	‘
lstm_21_while_identity
lstm_21_while_identity_1
lstm_21_while_identity_2
lstm_21_while_identity_3
lstm_21_while_identity_4
lstm_21_while_identity_5)
%lstm_21_while_lstm_21_strided_slice_1e
alstm_21_while_tensorarrayv2read_tensorlistgetitem_lstm_21_tensorarrayunstack_tensorlistfromtensorL
9lstm_21_while_lstm_cell_21_matmul_readvariableop_resource:	U‘N
;lstm_21_while_lstm_cell_21_matmul_1_readvariableop_resource:	U‘I
:lstm_21_while_lstm_cell_21_biasadd_readvariableop_resource:	‘ИҐ1lstm_21/while/lstm_cell_21/BiasAdd/ReadVariableOpҐ0lstm_21/while/lstm_cell_21/MatMul/ReadVariableOpҐ2lstm_21/while/lstm_cell_21/MatMul_1/ReadVariableOpР
?lstm_21/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   ќ
1lstm_21/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_21_while_tensorarrayv2read_tensorlistgetitem_lstm_21_tensorarrayunstack_tensorlistfromtensor_0lstm_21_while_placeholderHlstm_21/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€U*
element_dtype0≠
0lstm_21/while/lstm_cell_21/MatMul/ReadVariableOpReadVariableOp;lstm_21_while_lstm_cell_21_matmul_readvariableop_resource_0*
_output_shapes
:	U‘*
dtype0“
!lstm_21/while/lstm_cell_21/MatMulMatMul8lstm_21/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_21/while/lstm_cell_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘±
2lstm_21/while/lstm_cell_21/MatMul_1/ReadVariableOpReadVariableOp=lstm_21_while_lstm_cell_21_matmul_1_readvariableop_resource_0*
_output_shapes
:	U‘*
dtype0є
#lstm_21/while/lstm_cell_21/MatMul_1MatMullstm_21_while_placeholder_2:lstm_21/while/lstm_cell_21/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘ґ
lstm_21/while/lstm_cell_21/addAddV2+lstm_21/while/lstm_cell_21/MatMul:product:0-lstm_21/while/lstm_cell_21/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘Ђ
1lstm_21/while/lstm_cell_21/BiasAdd/ReadVariableOpReadVariableOp<lstm_21_while_lstm_cell_21_biasadd_readvariableop_resource_0*
_output_shapes	
:‘*
dtype0њ
"lstm_21/while/lstm_cell_21/BiasAddBiasAdd"lstm_21/while/lstm_cell_21/add:z:09lstm_21/while/lstm_cell_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘l
*lstm_21/while/lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :З
 lstm_21/while/lstm_cell_21/splitSplit3lstm_21/while/lstm_cell_21/split/split_dim:output:0+lstm_21/while/lstm_cell_21/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitК
"lstm_21/while/lstm_cell_21/SigmoidSigmoid)lstm_21/while/lstm_cell_21/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€UМ
$lstm_21/while/lstm_cell_21/Sigmoid_1Sigmoid)lstm_21/while/lstm_cell_21/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€UЮ
lstm_21/while/lstm_cell_21/mulMul(lstm_21/while/lstm_cell_21/Sigmoid_1:y:0lstm_21_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€UД
lstm_21/while/lstm_cell_21/ReluRelu)lstm_21/while/lstm_cell_21/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€U∞
 lstm_21/while/lstm_cell_21/mul_1Mul&lstm_21/while/lstm_cell_21/Sigmoid:y:0-lstm_21/while/lstm_cell_21/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€U•
 lstm_21/while/lstm_cell_21/add_1AddV2"lstm_21/while/lstm_cell_21/mul:z:0$lstm_21/while/lstm_cell_21/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UМ
$lstm_21/while/lstm_cell_21/Sigmoid_2Sigmoid)lstm_21/while/lstm_cell_21/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€UБ
!lstm_21/while/lstm_cell_21/Relu_1Relu$lstm_21/while/lstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Uі
 lstm_21/while/lstm_cell_21/mul_2Mul(lstm_21/while/lstm_cell_21/Sigmoid_2:y:0/lstm_21/while/lstm_cell_21/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Uе
2lstm_21/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_21_while_placeholder_1lstm_21_while_placeholder$lstm_21/while/lstm_cell_21/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“U
lstm_21/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_21/while/addAddV2lstm_21_while_placeholderlstm_21/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_21/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :З
lstm_21/while/add_1AddV2(lstm_21_while_lstm_21_while_loop_counterlstm_21/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_21/while/IdentityIdentitylstm_21/while/add_1:z:0^lstm_21/while/NoOp*
T0*
_output_shapes
: К
lstm_21/while/Identity_1Identity.lstm_21_while_lstm_21_while_maximum_iterations^lstm_21/while/NoOp*
T0*
_output_shapes
: q
lstm_21/while/Identity_2Identitylstm_21/while/add:z:0^lstm_21/while/NoOp*
T0*
_output_shapes
: Ю
lstm_21/while/Identity_3IdentityBlstm_21/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_21/while/NoOp*
T0*
_output_shapes
: С
lstm_21/while/Identity_4Identity$lstm_21/while/lstm_cell_21/mul_2:z:0^lstm_21/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€UС
lstm_21/while/Identity_5Identity$lstm_21/while/lstm_cell_21/add_1:z:0^lstm_21/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€Uр
lstm_21/while/NoOpNoOp2^lstm_21/while/lstm_cell_21/BiasAdd/ReadVariableOp1^lstm_21/while/lstm_cell_21/MatMul/ReadVariableOp3^lstm_21/while/lstm_cell_21/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_21_while_identitylstm_21/while/Identity:output:0"=
lstm_21_while_identity_1!lstm_21/while/Identity_1:output:0"=
lstm_21_while_identity_2!lstm_21/while/Identity_2:output:0"=
lstm_21_while_identity_3!lstm_21/while/Identity_3:output:0"=
lstm_21_while_identity_4!lstm_21/while/Identity_4:output:0"=
lstm_21_while_identity_5!lstm_21/while/Identity_5:output:0"P
%lstm_21_while_lstm_21_strided_slice_1'lstm_21_while_lstm_21_strided_slice_1_0"z
:lstm_21_while_lstm_cell_21_biasadd_readvariableop_resource<lstm_21_while_lstm_cell_21_biasadd_readvariableop_resource_0"|
;lstm_21_while_lstm_cell_21_matmul_1_readvariableop_resource=lstm_21_while_lstm_cell_21_matmul_1_readvariableop_resource_0"x
9lstm_21_while_lstm_cell_21_matmul_readvariableop_resource;lstm_21_while_lstm_cell_21_matmul_readvariableop_resource_0"»
alstm_21_while_tensorarrayv2read_tensorlistgetitem_lstm_21_tensorarrayunstack_tensorlistfromtensorclstm_21_while_tensorarrayv2read_tensorlistgetitem_lstm_21_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : 2f
1lstm_21/while/lstm_cell_21/BiasAdd/ReadVariableOp1lstm_21/while/lstm_cell_21/BiasAdd/ReadVariableOp2d
0lstm_21/while/lstm_cell_21/MatMul/ReadVariableOp0lstm_21/while/lstm_cell_21/MatMul/ReadVariableOp2h
2lstm_21/while/lstm_cell_21/MatMul_1/ReadVariableOp2lstm_21/while/lstm_cell_21/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
: 
нP
с
&sequential_5_lstm_20_while_body_109016F
Bsequential_5_lstm_20_while_sequential_5_lstm_20_while_loop_counterL
Hsequential_5_lstm_20_while_sequential_5_lstm_20_while_maximum_iterations*
&sequential_5_lstm_20_while_placeholder,
(sequential_5_lstm_20_while_placeholder_1,
(sequential_5_lstm_20_while_placeholder_2,
(sequential_5_lstm_20_while_placeholder_3E
Asequential_5_lstm_20_while_sequential_5_lstm_20_strided_slice_1_0Б
}sequential_5_lstm_20_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_20_tensorarrayunstack_tensorlistfromtensor_0[
Hsequential_5_lstm_20_while_lstm_cell_20_matmul_readvariableop_resource_0:	‘]
Jsequential_5_lstm_20_while_lstm_cell_20_matmul_1_readvariableop_resource_0:	U‘X
Isequential_5_lstm_20_while_lstm_cell_20_biasadd_readvariableop_resource_0:	‘'
#sequential_5_lstm_20_while_identity)
%sequential_5_lstm_20_while_identity_1)
%sequential_5_lstm_20_while_identity_2)
%sequential_5_lstm_20_while_identity_3)
%sequential_5_lstm_20_while_identity_4)
%sequential_5_lstm_20_while_identity_5C
?sequential_5_lstm_20_while_sequential_5_lstm_20_strided_slice_1
{sequential_5_lstm_20_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_20_tensorarrayunstack_tensorlistfromtensorY
Fsequential_5_lstm_20_while_lstm_cell_20_matmul_readvariableop_resource:	‘[
Hsequential_5_lstm_20_while_lstm_cell_20_matmul_1_readvariableop_resource:	U‘V
Gsequential_5_lstm_20_while_lstm_cell_20_biasadd_readvariableop_resource:	‘ИҐ>sequential_5/lstm_20/while/lstm_cell_20/BiasAdd/ReadVariableOpҐ=sequential_5/lstm_20/while/lstm_cell_20/MatMul/ReadVariableOpҐ?sequential_5/lstm_20/while/lstm_cell_20/MatMul_1/ReadVariableOpЭ
Lsequential_5/lstm_20/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   П
>sequential_5/lstm_20/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}sequential_5_lstm_20_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_20_tensorarrayunstack_tensorlistfromtensor_0&sequential_5_lstm_20_while_placeholderUsequential_5/lstm_20/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0«
=sequential_5/lstm_20/while/lstm_cell_20/MatMul/ReadVariableOpReadVariableOpHsequential_5_lstm_20_while_lstm_cell_20_matmul_readvariableop_resource_0*
_output_shapes
:	‘*
dtype0щ
.sequential_5/lstm_20/while/lstm_cell_20/MatMulMatMulEsequential_5/lstm_20/while/TensorArrayV2Read/TensorListGetItem:item:0Esequential_5/lstm_20/while/lstm_cell_20/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘Ћ
?sequential_5/lstm_20/while/lstm_cell_20/MatMul_1/ReadVariableOpReadVariableOpJsequential_5_lstm_20_while_lstm_cell_20_matmul_1_readvariableop_resource_0*
_output_shapes
:	U‘*
dtype0а
0sequential_5/lstm_20/while/lstm_cell_20/MatMul_1MatMul(sequential_5_lstm_20_while_placeholder_2Gsequential_5/lstm_20/while/lstm_cell_20/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘Ё
+sequential_5/lstm_20/while/lstm_cell_20/addAddV28sequential_5/lstm_20/while/lstm_cell_20/MatMul:product:0:sequential_5/lstm_20/while/lstm_cell_20/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘≈
>sequential_5/lstm_20/while/lstm_cell_20/BiasAdd/ReadVariableOpReadVariableOpIsequential_5_lstm_20_while_lstm_cell_20_biasadd_readvariableop_resource_0*
_output_shapes	
:‘*
dtype0ж
/sequential_5/lstm_20/while/lstm_cell_20/BiasAddBiasAdd/sequential_5/lstm_20/while/lstm_cell_20/add:z:0Fsequential_5/lstm_20/while/lstm_cell_20/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘y
7sequential_5/lstm_20/while/lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ѓ
-sequential_5/lstm_20/while/lstm_cell_20/splitSplit@sequential_5/lstm_20/while/lstm_cell_20/split/split_dim:output:08sequential_5/lstm_20/while/lstm_cell_20/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_split§
/sequential_5/lstm_20/while/lstm_cell_20/SigmoidSigmoid6sequential_5/lstm_20/while/lstm_cell_20/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€U¶
1sequential_5/lstm_20/while/lstm_cell_20/Sigmoid_1Sigmoid6sequential_5/lstm_20/while/lstm_cell_20/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€U≈
+sequential_5/lstm_20/while/lstm_cell_20/mulMul5sequential_5/lstm_20/while/lstm_cell_20/Sigmoid_1:y:0(sequential_5_lstm_20_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€UЮ
,sequential_5/lstm_20/while/lstm_cell_20/ReluRelu6sequential_5/lstm_20/while/lstm_cell_20/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€U„
-sequential_5/lstm_20/while/lstm_cell_20/mul_1Mul3sequential_5/lstm_20/while/lstm_cell_20/Sigmoid:y:0:sequential_5/lstm_20/while/lstm_cell_20/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Uћ
-sequential_5/lstm_20/while/lstm_cell_20/add_1AddV2/sequential_5/lstm_20/while/lstm_cell_20/mul:z:01sequential_5/lstm_20/while/lstm_cell_20/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€U¶
1sequential_5/lstm_20/while/lstm_cell_20/Sigmoid_2Sigmoid6sequential_5/lstm_20/while/lstm_cell_20/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€UЫ
.sequential_5/lstm_20/while/lstm_cell_20/Relu_1Relu1sequential_5/lstm_20/while/lstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Uџ
-sequential_5/lstm_20/while/lstm_cell_20/mul_2Mul5sequential_5/lstm_20/while/lstm_cell_20/Sigmoid_2:y:0<sequential_5/lstm_20/while/lstm_cell_20/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UЩ
?sequential_5/lstm_20/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(sequential_5_lstm_20_while_placeholder_1&sequential_5_lstm_20_while_placeholder1sequential_5/lstm_20/while/lstm_cell_20/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“b
 sequential_5/lstm_20/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ы
sequential_5/lstm_20/while/addAddV2&sequential_5_lstm_20_while_placeholder)sequential_5/lstm_20/while/add/y:output:0*
T0*
_output_shapes
: d
"sequential_5/lstm_20/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :ї
 sequential_5/lstm_20/while/add_1AddV2Bsequential_5_lstm_20_while_sequential_5_lstm_20_while_loop_counter+sequential_5/lstm_20/while/add_1/y:output:0*
T0*
_output_shapes
: Ш
#sequential_5/lstm_20/while/IdentityIdentity$sequential_5/lstm_20/while/add_1:z:0 ^sequential_5/lstm_20/while/NoOp*
T0*
_output_shapes
: Њ
%sequential_5/lstm_20/while/Identity_1IdentityHsequential_5_lstm_20_while_sequential_5_lstm_20_while_maximum_iterations ^sequential_5/lstm_20/while/NoOp*
T0*
_output_shapes
: Ш
%sequential_5/lstm_20/while/Identity_2Identity"sequential_5/lstm_20/while/add:z:0 ^sequential_5/lstm_20/while/NoOp*
T0*
_output_shapes
: ≈
%sequential_5/lstm_20/while/Identity_3IdentityOsequential_5/lstm_20/while/TensorArrayV2Write/TensorListSetItem:output_handle:0 ^sequential_5/lstm_20/while/NoOp*
T0*
_output_shapes
: Є
%sequential_5/lstm_20/while/Identity_4Identity1sequential_5/lstm_20/while/lstm_cell_20/mul_2:z:0 ^sequential_5/lstm_20/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€UЄ
%sequential_5/lstm_20/while/Identity_5Identity1sequential_5/lstm_20/while/lstm_cell_20/add_1:z:0 ^sequential_5/lstm_20/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€U§
sequential_5/lstm_20/while/NoOpNoOp?^sequential_5/lstm_20/while/lstm_cell_20/BiasAdd/ReadVariableOp>^sequential_5/lstm_20/while/lstm_cell_20/MatMul/ReadVariableOp@^sequential_5/lstm_20/while/lstm_cell_20/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "S
#sequential_5_lstm_20_while_identity,sequential_5/lstm_20/while/Identity:output:0"W
%sequential_5_lstm_20_while_identity_1.sequential_5/lstm_20/while/Identity_1:output:0"W
%sequential_5_lstm_20_while_identity_2.sequential_5/lstm_20/while/Identity_2:output:0"W
%sequential_5_lstm_20_while_identity_3.sequential_5/lstm_20/while/Identity_3:output:0"W
%sequential_5_lstm_20_while_identity_4.sequential_5/lstm_20/while/Identity_4:output:0"W
%sequential_5_lstm_20_while_identity_5.sequential_5/lstm_20/while/Identity_5:output:0"Ф
Gsequential_5_lstm_20_while_lstm_cell_20_biasadd_readvariableop_resourceIsequential_5_lstm_20_while_lstm_cell_20_biasadd_readvariableop_resource_0"Ц
Hsequential_5_lstm_20_while_lstm_cell_20_matmul_1_readvariableop_resourceJsequential_5_lstm_20_while_lstm_cell_20_matmul_1_readvariableop_resource_0"Т
Fsequential_5_lstm_20_while_lstm_cell_20_matmul_readvariableop_resourceHsequential_5_lstm_20_while_lstm_cell_20_matmul_readvariableop_resource_0"Д
?sequential_5_lstm_20_while_sequential_5_lstm_20_strided_slice_1Asequential_5_lstm_20_while_sequential_5_lstm_20_strided_slice_1_0"ь
{sequential_5_lstm_20_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_20_tensorarrayunstack_tensorlistfromtensor}sequential_5_lstm_20_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_20_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : 2А
>sequential_5/lstm_20/while/lstm_cell_20/BiasAdd/ReadVariableOp>sequential_5/lstm_20/while/lstm_cell_20/BiasAdd/ReadVariableOp2~
=sequential_5/lstm_20/while/lstm_cell_20/MatMul/ReadVariableOp=sequential_5/lstm_20/while/lstm_cell_20/MatMul/ReadVariableOp2В
?sequential_5/lstm_20/while/lstm_cell_20/MatMul_1/ReadVariableOp?sequential_5/lstm_20/while/lstm_cell_20/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
: 
ч
µ
(__inference_lstm_22_layer_call_fn_114000

inputs
unknown:	U‘
	unknown_0:	U‘
	unknown_1:	‘
identityИҐStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€U*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_22_layer_call_and_return_conditional_losses_110900o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€U`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€U: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€U
 
_user_specified_nameinputs
Ё
Ж
H__inference_lstm_cell_22_layer_call_and_return_conditional_losses_114923

inputs
states_0
states_11
matmul_readvariableop_resource:	U‘3
 matmul_1_readvariableop_resource:	U‘.
biasadd_readvariableop_resource:	‘
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	U‘*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	U‘*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:‘*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€UV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€UU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€UN
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€U_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€UK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Uc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€UZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€UZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€UС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€U
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€U
"
_user_specified_name
states/0:QM
'
_output_shapes
:€€€€€€€€€U
"
_user_specified_name
states/1
М8
–
while_body_113856
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_21_matmul_readvariableop_resource_0:	U‘H
5while_lstm_cell_21_matmul_1_readvariableop_resource_0:	U‘C
4while_lstm_cell_21_biasadd_readvariableop_resource_0:	‘
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_21_matmul_readvariableop_resource:	U‘F
3while_lstm_cell_21_matmul_1_readvariableop_resource:	U‘A
2while_lstm_cell_21_biasadd_readvariableop_resource:	‘ИҐ)while/lstm_cell_21/BiasAdd/ReadVariableOpҐ(while/lstm_cell_21/MatMul/ReadVariableOpҐ*while/lstm_cell_21/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€U*
element_dtype0Э
(while/lstm_cell_21/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_21_matmul_readvariableop_resource_0*
_output_shapes
:	U‘*
dtype0Ї
while/lstm_cell_21/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘°
*while/lstm_cell_21/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_21_matmul_1_readvariableop_resource_0*
_output_shapes
:	U‘*
dtype0°
while/lstm_cell_21/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_21/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘Ю
while/lstm_cell_21/addAddV2#while/lstm_cell_21/MatMul:product:0%while/lstm_cell_21/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘Ы
)while/lstm_cell_21/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_21_biasadd_readvariableop_resource_0*
_output_shapes	
:‘*
dtype0І
while/lstm_cell_21/BiasAddBiasAddwhile/lstm_cell_21/add:z:01while/lstm_cell_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘d
"while/lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_21/splitSplit+while/lstm_cell_21/split/split_dim:output:0#while/lstm_cell_21/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitz
while/lstm_cell_21/SigmoidSigmoid!while/lstm_cell_21/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€U|
while/lstm_cell_21/Sigmoid_1Sigmoid!while/lstm_cell_21/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€UЖ
while/lstm_cell_21/mulMul while/lstm_cell_21/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€Ut
while/lstm_cell_21/ReluRelu!while/lstm_cell_21/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€UШ
while/lstm_cell_21/mul_1Mulwhile/lstm_cell_21/Sigmoid:y:0%while/lstm_cell_21/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UН
while/lstm_cell_21/add_1AddV2while/lstm_cell_21/mul:z:0while/lstm_cell_21/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€U|
while/lstm_cell_21/Sigmoid_2Sigmoid!while/lstm_cell_21/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€Uq
while/lstm_cell_21/Relu_1Reluwhile/lstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UЬ
while/lstm_cell_21/mul_2Mul while/lstm_cell_21/Sigmoid_2:y:0'while/lstm_cell_21/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€U≈
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_21/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_21/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€Uy
while/Identity_5Identitywhile/lstm_cell_21/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€U–

while/NoOpNoOp*^while/lstm_cell_21/BiasAdd/ReadVariableOp)^while/lstm_cell_21/MatMul/ReadVariableOp+^while/lstm_cell_21/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_21_biasadd_readvariableop_resource4while_lstm_cell_21_biasadd_readvariableop_resource_0"l
3while_lstm_cell_21_matmul_1_readvariableop_resource5while_lstm_cell_21_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_21_matmul_readvariableop_resource3while_lstm_cell_21_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : 2V
)while/lstm_cell_21/BiasAdd/ReadVariableOp)while/lstm_cell_21/BiasAdd/ReadVariableOp2T
(while/lstm_cell_21/MatMul/ReadVariableOp(while/lstm_cell_21/MatMul/ReadVariableOp2X
*while/lstm_cell_21/MatMul_1/ReadVariableOp*while/lstm_cell_21/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
: 
Т8
Е
C__inference_lstm_20_layer_call_and_return_conditional_losses_109728

inputs&
lstm_cell_20_109646:	‘&
lstm_cell_20_109648:	U‘"
lstm_cell_20_109650:	‘
identityИҐ$lstm_cell_20/StatefulPartitionedCallҐwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Us
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€UR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Uw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Uc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskх
$lstm_cell_20/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_20_109646lstm_cell_20_109648lstm_cell_20_109650*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_20_layer_call_and_return_conditional_losses_109600n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ј
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_20_109646lstm_cell_20_109648lstm_cell_20_109650*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_109659*
condR
while_cond_109658*K
output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   Ћ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€U*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€U*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€U[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Uu
NoOpNoOp%^lstm_cell_20/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2L
$lstm_cell_20/StatefulPartitionedCall$lstm_cell_20/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
µ
√
while_cond_109658
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_109658___redundant_placeholder04
0while_while_cond_109658___redundant_placeholder14
0while_while_cond_109658___redundant_placeholder24
0while_while_cond_109658___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€U:€€€€€€€€€U: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
:
з±
С
!__inference__wrapped_model_109387
lstm_20_inputS
@sequential_5_lstm_20_lstm_cell_20_matmul_readvariableop_resource:	‘U
Bsequential_5_lstm_20_lstm_cell_20_matmul_1_readvariableop_resource:	U‘P
Asequential_5_lstm_20_lstm_cell_20_biasadd_readvariableop_resource:	‘S
@sequential_5_lstm_21_lstm_cell_21_matmul_readvariableop_resource:	U‘U
Bsequential_5_lstm_21_lstm_cell_21_matmul_1_readvariableop_resource:	U‘P
Asequential_5_lstm_21_lstm_cell_21_biasadd_readvariableop_resource:	‘S
@sequential_5_lstm_22_lstm_cell_22_matmul_readvariableop_resource:	U‘U
Bsequential_5_lstm_22_lstm_cell_22_matmul_1_readvariableop_resource:	U‘P
Asequential_5_lstm_22_lstm_cell_22_biasadd_readvariableop_resource:	‘E
3sequential_5_dense_5_matmul_readvariableop_resource:UB
4sequential_5_dense_5_biasadd_readvariableop_resource:
identityИҐ+sequential_5/dense_5/BiasAdd/ReadVariableOpҐ*sequential_5/dense_5/MatMul/ReadVariableOpҐ8sequential_5/lstm_20/lstm_cell_20/BiasAdd/ReadVariableOpҐ7sequential_5/lstm_20/lstm_cell_20/MatMul/ReadVariableOpҐ9sequential_5/lstm_20/lstm_cell_20/MatMul_1/ReadVariableOpҐsequential_5/lstm_20/whileҐ8sequential_5/lstm_21/lstm_cell_21/BiasAdd/ReadVariableOpҐ7sequential_5/lstm_21/lstm_cell_21/MatMul/ReadVariableOpҐ9sequential_5/lstm_21/lstm_cell_21/MatMul_1/ReadVariableOpҐsequential_5/lstm_21/whileҐ8sequential_5/lstm_22/lstm_cell_22/BiasAdd/ReadVariableOpҐ7sequential_5/lstm_22/lstm_cell_22/MatMul/ReadVariableOpҐ9sequential_5/lstm_22/lstm_cell_22/MatMul_1/ReadVariableOpҐsequential_5/lstm_22/whileW
sequential_5/lstm_20/ShapeShapelstm_20_input*
T0*
_output_shapes
:r
(sequential_5/lstm_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*sequential_5/lstm_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*sequential_5/lstm_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ї
"sequential_5/lstm_20/strided_sliceStridedSlice#sequential_5/lstm_20/Shape:output:01sequential_5/lstm_20/strided_slice/stack:output:03sequential_5/lstm_20/strided_slice/stack_1:output:03sequential_5/lstm_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#sequential_5/lstm_20/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :U≤
!sequential_5/lstm_20/zeros/packedPack+sequential_5/lstm_20/strided_slice:output:0,sequential_5/lstm_20/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:e
 sequential_5/lstm_20/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ђ
sequential_5/lstm_20/zerosFill*sequential_5/lstm_20/zeros/packed:output:0)sequential_5/lstm_20/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ug
%sequential_5/lstm_20/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Uґ
#sequential_5/lstm_20/zeros_1/packedPack+sequential_5/lstm_20/strided_slice:output:0.sequential_5/lstm_20/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_5/lstm_20/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ±
sequential_5/lstm_20/zeros_1Fill,sequential_5/lstm_20/zeros_1/packed:output:0+sequential_5/lstm_20/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ux
#sequential_5/lstm_20/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ю
sequential_5/lstm_20/transpose	Transposelstm_20_input,sequential_5/lstm_20/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€n
sequential_5/lstm_20/Shape_1Shape"sequential_5/lstm_20/transpose:y:0*
T0*
_output_shapes
:t
*sequential_5/lstm_20/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_5/lstm_20/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_5/lstm_20/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ƒ
$sequential_5/lstm_20/strided_slice_1StridedSlice%sequential_5/lstm_20/Shape_1:output:03sequential_5/lstm_20/strided_slice_1/stack:output:05sequential_5/lstm_20/strided_slice_1/stack_1:output:05sequential_5/lstm_20/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
0sequential_5/lstm_20/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€у
"sequential_5/lstm_20/TensorArrayV2TensorListReserve9sequential_5/lstm_20/TensorArrayV2/element_shape:output:0-sequential_5/lstm_20/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ы
Jsequential_5/lstm_20/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Я
<sequential_5/lstm_20/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"sequential_5/lstm_20/transpose:y:0Ssequential_5/lstm_20/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“t
*sequential_5/lstm_20/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_5/lstm_20/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_5/lstm_20/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:“
$sequential_5/lstm_20/strided_slice_2StridedSlice"sequential_5/lstm_20/transpose:y:03sequential_5/lstm_20/strided_slice_2/stack:output:05sequential_5/lstm_20/strided_slice_2/stack_1:output:05sequential_5/lstm_20/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskє
7sequential_5/lstm_20/lstm_cell_20/MatMul/ReadVariableOpReadVariableOp@sequential_5_lstm_20_lstm_cell_20_matmul_readvariableop_resource*
_output_shapes
:	‘*
dtype0’
(sequential_5/lstm_20/lstm_cell_20/MatMulMatMul-sequential_5/lstm_20/strided_slice_2:output:0?sequential_5/lstm_20/lstm_cell_20/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘љ
9sequential_5/lstm_20/lstm_cell_20/MatMul_1/ReadVariableOpReadVariableOpBsequential_5_lstm_20_lstm_cell_20_matmul_1_readvariableop_resource*
_output_shapes
:	U‘*
dtype0ѕ
*sequential_5/lstm_20/lstm_cell_20/MatMul_1MatMul#sequential_5/lstm_20/zeros:output:0Asequential_5/lstm_20/lstm_cell_20/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘Ћ
%sequential_5/lstm_20/lstm_cell_20/addAddV22sequential_5/lstm_20/lstm_cell_20/MatMul:product:04sequential_5/lstm_20/lstm_cell_20/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘Ј
8sequential_5/lstm_20/lstm_cell_20/BiasAdd/ReadVariableOpReadVariableOpAsequential_5_lstm_20_lstm_cell_20_biasadd_readvariableop_resource*
_output_shapes	
:‘*
dtype0‘
)sequential_5/lstm_20/lstm_cell_20/BiasAddBiasAdd)sequential_5/lstm_20/lstm_cell_20/add:z:0@sequential_5/lstm_20/lstm_cell_20/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘s
1sequential_5/lstm_20/lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ь
'sequential_5/lstm_20/lstm_cell_20/splitSplit:sequential_5/lstm_20/lstm_cell_20/split/split_dim:output:02sequential_5/lstm_20/lstm_cell_20/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitШ
)sequential_5/lstm_20/lstm_cell_20/SigmoidSigmoid0sequential_5/lstm_20/lstm_cell_20/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€UЪ
+sequential_5/lstm_20/lstm_cell_20/Sigmoid_1Sigmoid0sequential_5/lstm_20/lstm_cell_20/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€Uґ
%sequential_5/lstm_20/lstm_cell_20/mulMul/sequential_5/lstm_20/lstm_cell_20/Sigmoid_1:y:0%sequential_5/lstm_20/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€UТ
&sequential_5/lstm_20/lstm_cell_20/ReluRelu0sequential_5/lstm_20/lstm_cell_20/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€U≈
'sequential_5/lstm_20/lstm_cell_20/mul_1Mul-sequential_5/lstm_20/lstm_cell_20/Sigmoid:y:04sequential_5/lstm_20/lstm_cell_20/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UЇ
'sequential_5/lstm_20/lstm_cell_20/add_1AddV2)sequential_5/lstm_20/lstm_cell_20/mul:z:0+sequential_5/lstm_20/lstm_cell_20/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UЪ
+sequential_5/lstm_20/lstm_cell_20/Sigmoid_2Sigmoid0sequential_5/lstm_20/lstm_cell_20/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€UП
(sequential_5/lstm_20/lstm_cell_20/Relu_1Relu+sequential_5/lstm_20/lstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€U…
'sequential_5/lstm_20/lstm_cell_20/mul_2Mul/sequential_5/lstm_20/lstm_cell_20/Sigmoid_2:y:06sequential_5/lstm_20/lstm_cell_20/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UГ
2sequential_5/lstm_20/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   ч
$sequential_5/lstm_20/TensorArrayV2_1TensorListReserve;sequential_5/lstm_20/TensorArrayV2_1/element_shape:output:0-sequential_5/lstm_20/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“[
sequential_5/lstm_20/timeConst*
_output_shapes
: *
dtype0*
value	B : x
-sequential_5/lstm_20/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€i
'sequential_5/lstm_20/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ®
sequential_5/lstm_20/whileWhile0sequential_5/lstm_20/while/loop_counter:output:06sequential_5/lstm_20/while/maximum_iterations:output:0"sequential_5/lstm_20/time:output:0-sequential_5/lstm_20/TensorArrayV2_1:handle:0#sequential_5/lstm_20/zeros:output:0%sequential_5/lstm_20/zeros_1:output:0-sequential_5/lstm_20/strided_slice_1:output:0Lsequential_5/lstm_20/TensorArrayUnstack/TensorListFromTensor:output_handle:0@sequential_5_lstm_20_lstm_cell_20_matmul_readvariableop_resourceBsequential_5_lstm_20_lstm_cell_20_matmul_1_readvariableop_resourceAsequential_5_lstm_20_lstm_cell_20_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *2
body*R(
&sequential_5_lstm_20_while_body_109016*2
cond*R(
&sequential_5_lstm_20_while_cond_109015*K
output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *
parallel_iterations Ц
Esequential_5/lstm_20/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   Б
7sequential_5/lstm_20/TensorArrayV2Stack/TensorListStackTensorListStack#sequential_5/lstm_20/while:output:3Nsequential_5/lstm_20/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€U*
element_dtype0}
*sequential_5/lstm_20/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€v
,sequential_5/lstm_20/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,sequential_5/lstm_20/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:р
$sequential_5/lstm_20/strided_slice_3StridedSlice@sequential_5/lstm_20/TensorArrayV2Stack/TensorListStack:tensor:03sequential_5/lstm_20/strided_slice_3/stack:output:05sequential_5/lstm_20/strided_slice_3/stack_1:output:05sequential_5/lstm_20/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€U*
shrink_axis_maskz
%sequential_5/lstm_20/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ’
 sequential_5/lstm_20/transpose_1	Transpose@sequential_5/lstm_20/TensorArrayV2Stack/TensorListStack:tensor:0.sequential_5/lstm_20/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€Up
sequential_5/lstm_20/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    И
 sequential_5/dropout_20/IdentityIdentity$sequential_5/lstm_20/transpose_1:y:0*
T0*+
_output_shapes
:€€€€€€€€€Us
sequential_5/lstm_21/ShapeShape)sequential_5/dropout_20/Identity:output:0*
T0*
_output_shapes
:r
(sequential_5/lstm_21/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*sequential_5/lstm_21/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*sequential_5/lstm_21/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ї
"sequential_5/lstm_21/strided_sliceStridedSlice#sequential_5/lstm_21/Shape:output:01sequential_5/lstm_21/strided_slice/stack:output:03sequential_5/lstm_21/strided_slice/stack_1:output:03sequential_5/lstm_21/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#sequential_5/lstm_21/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :U≤
!sequential_5/lstm_21/zeros/packedPack+sequential_5/lstm_21/strided_slice:output:0,sequential_5/lstm_21/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:e
 sequential_5/lstm_21/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ђ
sequential_5/lstm_21/zerosFill*sequential_5/lstm_21/zeros/packed:output:0)sequential_5/lstm_21/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ug
%sequential_5/lstm_21/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Uґ
#sequential_5/lstm_21/zeros_1/packedPack+sequential_5/lstm_21/strided_slice:output:0.sequential_5/lstm_21/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_5/lstm_21/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ±
sequential_5/lstm_21/zeros_1Fill,sequential_5/lstm_21/zeros_1/packed:output:0+sequential_5/lstm_21/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ux
#sequential_5/lstm_21/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ї
sequential_5/lstm_21/transpose	Transpose)sequential_5/dropout_20/Identity:output:0,sequential_5/lstm_21/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€Un
sequential_5/lstm_21/Shape_1Shape"sequential_5/lstm_21/transpose:y:0*
T0*
_output_shapes
:t
*sequential_5/lstm_21/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_5/lstm_21/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_5/lstm_21/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ƒ
$sequential_5/lstm_21/strided_slice_1StridedSlice%sequential_5/lstm_21/Shape_1:output:03sequential_5/lstm_21/strided_slice_1/stack:output:05sequential_5/lstm_21/strided_slice_1/stack_1:output:05sequential_5/lstm_21/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
0sequential_5/lstm_21/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€у
"sequential_5/lstm_21/TensorArrayV2TensorListReserve9sequential_5/lstm_21/TensorArrayV2/element_shape:output:0-sequential_5/lstm_21/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ы
Jsequential_5/lstm_21/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   Я
<sequential_5/lstm_21/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"sequential_5/lstm_21/transpose:y:0Ssequential_5/lstm_21/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“t
*sequential_5/lstm_21/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_5/lstm_21/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_5/lstm_21/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:“
$sequential_5/lstm_21/strided_slice_2StridedSlice"sequential_5/lstm_21/transpose:y:03sequential_5/lstm_21/strided_slice_2/stack:output:05sequential_5/lstm_21/strided_slice_2/stack_1:output:05sequential_5/lstm_21/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€U*
shrink_axis_maskє
7sequential_5/lstm_21/lstm_cell_21/MatMul/ReadVariableOpReadVariableOp@sequential_5_lstm_21_lstm_cell_21_matmul_readvariableop_resource*
_output_shapes
:	U‘*
dtype0’
(sequential_5/lstm_21/lstm_cell_21/MatMulMatMul-sequential_5/lstm_21/strided_slice_2:output:0?sequential_5/lstm_21/lstm_cell_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘љ
9sequential_5/lstm_21/lstm_cell_21/MatMul_1/ReadVariableOpReadVariableOpBsequential_5_lstm_21_lstm_cell_21_matmul_1_readvariableop_resource*
_output_shapes
:	U‘*
dtype0ѕ
*sequential_5/lstm_21/lstm_cell_21/MatMul_1MatMul#sequential_5/lstm_21/zeros:output:0Asequential_5/lstm_21/lstm_cell_21/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘Ћ
%sequential_5/lstm_21/lstm_cell_21/addAddV22sequential_5/lstm_21/lstm_cell_21/MatMul:product:04sequential_5/lstm_21/lstm_cell_21/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘Ј
8sequential_5/lstm_21/lstm_cell_21/BiasAdd/ReadVariableOpReadVariableOpAsequential_5_lstm_21_lstm_cell_21_biasadd_readvariableop_resource*
_output_shapes	
:‘*
dtype0‘
)sequential_5/lstm_21/lstm_cell_21/BiasAddBiasAdd)sequential_5/lstm_21/lstm_cell_21/add:z:0@sequential_5/lstm_21/lstm_cell_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘s
1sequential_5/lstm_21/lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ь
'sequential_5/lstm_21/lstm_cell_21/splitSplit:sequential_5/lstm_21/lstm_cell_21/split/split_dim:output:02sequential_5/lstm_21/lstm_cell_21/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitШ
)sequential_5/lstm_21/lstm_cell_21/SigmoidSigmoid0sequential_5/lstm_21/lstm_cell_21/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€UЪ
+sequential_5/lstm_21/lstm_cell_21/Sigmoid_1Sigmoid0sequential_5/lstm_21/lstm_cell_21/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€Uґ
%sequential_5/lstm_21/lstm_cell_21/mulMul/sequential_5/lstm_21/lstm_cell_21/Sigmoid_1:y:0%sequential_5/lstm_21/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€UТ
&sequential_5/lstm_21/lstm_cell_21/ReluRelu0sequential_5/lstm_21/lstm_cell_21/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€U≈
'sequential_5/lstm_21/lstm_cell_21/mul_1Mul-sequential_5/lstm_21/lstm_cell_21/Sigmoid:y:04sequential_5/lstm_21/lstm_cell_21/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UЇ
'sequential_5/lstm_21/lstm_cell_21/add_1AddV2)sequential_5/lstm_21/lstm_cell_21/mul:z:0+sequential_5/lstm_21/lstm_cell_21/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UЪ
+sequential_5/lstm_21/lstm_cell_21/Sigmoid_2Sigmoid0sequential_5/lstm_21/lstm_cell_21/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€UП
(sequential_5/lstm_21/lstm_cell_21/Relu_1Relu+sequential_5/lstm_21/lstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€U…
'sequential_5/lstm_21/lstm_cell_21/mul_2Mul/sequential_5/lstm_21/lstm_cell_21/Sigmoid_2:y:06sequential_5/lstm_21/lstm_cell_21/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UГ
2sequential_5/lstm_21/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   ч
$sequential_5/lstm_21/TensorArrayV2_1TensorListReserve;sequential_5/lstm_21/TensorArrayV2_1/element_shape:output:0-sequential_5/lstm_21/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“[
sequential_5/lstm_21/timeConst*
_output_shapes
: *
dtype0*
value	B : x
-sequential_5/lstm_21/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€i
'sequential_5/lstm_21/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ®
sequential_5/lstm_21/whileWhile0sequential_5/lstm_21/while/loop_counter:output:06sequential_5/lstm_21/while/maximum_iterations:output:0"sequential_5/lstm_21/time:output:0-sequential_5/lstm_21/TensorArrayV2_1:handle:0#sequential_5/lstm_21/zeros:output:0%sequential_5/lstm_21/zeros_1:output:0-sequential_5/lstm_21/strided_slice_1:output:0Lsequential_5/lstm_21/TensorArrayUnstack/TensorListFromTensor:output_handle:0@sequential_5_lstm_21_lstm_cell_21_matmul_readvariableop_resourceBsequential_5_lstm_21_lstm_cell_21_matmul_1_readvariableop_resourceAsequential_5_lstm_21_lstm_cell_21_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *2
body*R(
&sequential_5_lstm_21_while_body_109156*2
cond*R(
&sequential_5_lstm_21_while_cond_109155*K
output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *
parallel_iterations Ц
Esequential_5/lstm_21/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   Б
7sequential_5/lstm_21/TensorArrayV2Stack/TensorListStackTensorListStack#sequential_5/lstm_21/while:output:3Nsequential_5/lstm_21/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€U*
element_dtype0}
*sequential_5/lstm_21/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€v
,sequential_5/lstm_21/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,sequential_5/lstm_21/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:р
$sequential_5/lstm_21/strided_slice_3StridedSlice@sequential_5/lstm_21/TensorArrayV2Stack/TensorListStack:tensor:03sequential_5/lstm_21/strided_slice_3/stack:output:05sequential_5/lstm_21/strided_slice_3/stack_1:output:05sequential_5/lstm_21/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€U*
shrink_axis_maskz
%sequential_5/lstm_21/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ’
 sequential_5/lstm_21/transpose_1	Transpose@sequential_5/lstm_21/TensorArrayV2Stack/TensorListStack:tensor:0.sequential_5/lstm_21/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€Up
sequential_5/lstm_21/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    И
 sequential_5/dropout_21/IdentityIdentity$sequential_5/lstm_21/transpose_1:y:0*
T0*+
_output_shapes
:€€€€€€€€€Us
sequential_5/lstm_22/ShapeShape)sequential_5/dropout_21/Identity:output:0*
T0*
_output_shapes
:r
(sequential_5/lstm_22/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*sequential_5/lstm_22/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*sequential_5/lstm_22/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ї
"sequential_5/lstm_22/strided_sliceStridedSlice#sequential_5/lstm_22/Shape:output:01sequential_5/lstm_22/strided_slice/stack:output:03sequential_5/lstm_22/strided_slice/stack_1:output:03sequential_5/lstm_22/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#sequential_5/lstm_22/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :U≤
!sequential_5/lstm_22/zeros/packedPack+sequential_5/lstm_22/strided_slice:output:0,sequential_5/lstm_22/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:e
 sequential_5/lstm_22/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ђ
sequential_5/lstm_22/zerosFill*sequential_5/lstm_22/zeros/packed:output:0)sequential_5/lstm_22/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ug
%sequential_5/lstm_22/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Uґ
#sequential_5/lstm_22/zeros_1/packedPack+sequential_5/lstm_22/strided_slice:output:0.sequential_5/lstm_22/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_5/lstm_22/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ±
sequential_5/lstm_22/zeros_1Fill,sequential_5/lstm_22/zeros_1/packed:output:0+sequential_5/lstm_22/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ux
#sequential_5/lstm_22/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ї
sequential_5/lstm_22/transpose	Transpose)sequential_5/dropout_21/Identity:output:0,sequential_5/lstm_22/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€Un
sequential_5/lstm_22/Shape_1Shape"sequential_5/lstm_22/transpose:y:0*
T0*
_output_shapes
:t
*sequential_5/lstm_22/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_5/lstm_22/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_5/lstm_22/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ƒ
$sequential_5/lstm_22/strided_slice_1StridedSlice%sequential_5/lstm_22/Shape_1:output:03sequential_5/lstm_22/strided_slice_1/stack:output:05sequential_5/lstm_22/strided_slice_1/stack_1:output:05sequential_5/lstm_22/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
0sequential_5/lstm_22/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€у
"sequential_5/lstm_22/TensorArrayV2TensorListReserve9sequential_5/lstm_22/TensorArrayV2/element_shape:output:0-sequential_5/lstm_22/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ы
Jsequential_5/lstm_22/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   Я
<sequential_5/lstm_22/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"sequential_5/lstm_22/transpose:y:0Ssequential_5/lstm_22/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“t
*sequential_5/lstm_22/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_5/lstm_22/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_5/lstm_22/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:“
$sequential_5/lstm_22/strided_slice_2StridedSlice"sequential_5/lstm_22/transpose:y:03sequential_5/lstm_22/strided_slice_2/stack:output:05sequential_5/lstm_22/strided_slice_2/stack_1:output:05sequential_5/lstm_22/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€U*
shrink_axis_maskє
7sequential_5/lstm_22/lstm_cell_22/MatMul/ReadVariableOpReadVariableOp@sequential_5_lstm_22_lstm_cell_22_matmul_readvariableop_resource*
_output_shapes
:	U‘*
dtype0’
(sequential_5/lstm_22/lstm_cell_22/MatMulMatMul-sequential_5/lstm_22/strided_slice_2:output:0?sequential_5/lstm_22/lstm_cell_22/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘љ
9sequential_5/lstm_22/lstm_cell_22/MatMul_1/ReadVariableOpReadVariableOpBsequential_5_lstm_22_lstm_cell_22_matmul_1_readvariableop_resource*
_output_shapes
:	U‘*
dtype0ѕ
*sequential_5/lstm_22/lstm_cell_22/MatMul_1MatMul#sequential_5/lstm_22/zeros:output:0Asequential_5/lstm_22/lstm_cell_22/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘Ћ
%sequential_5/lstm_22/lstm_cell_22/addAddV22sequential_5/lstm_22/lstm_cell_22/MatMul:product:04sequential_5/lstm_22/lstm_cell_22/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘Ј
8sequential_5/lstm_22/lstm_cell_22/BiasAdd/ReadVariableOpReadVariableOpAsequential_5_lstm_22_lstm_cell_22_biasadd_readvariableop_resource*
_output_shapes	
:‘*
dtype0‘
)sequential_5/lstm_22/lstm_cell_22/BiasAddBiasAdd)sequential_5/lstm_22/lstm_cell_22/add:z:0@sequential_5/lstm_22/lstm_cell_22/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘s
1sequential_5/lstm_22/lstm_cell_22/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ь
'sequential_5/lstm_22/lstm_cell_22/splitSplit:sequential_5/lstm_22/lstm_cell_22/split/split_dim:output:02sequential_5/lstm_22/lstm_cell_22/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitШ
)sequential_5/lstm_22/lstm_cell_22/SigmoidSigmoid0sequential_5/lstm_22/lstm_cell_22/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€UЪ
+sequential_5/lstm_22/lstm_cell_22/Sigmoid_1Sigmoid0sequential_5/lstm_22/lstm_cell_22/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€Uґ
%sequential_5/lstm_22/lstm_cell_22/mulMul/sequential_5/lstm_22/lstm_cell_22/Sigmoid_1:y:0%sequential_5/lstm_22/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€UТ
&sequential_5/lstm_22/lstm_cell_22/ReluRelu0sequential_5/lstm_22/lstm_cell_22/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€U≈
'sequential_5/lstm_22/lstm_cell_22/mul_1Mul-sequential_5/lstm_22/lstm_cell_22/Sigmoid:y:04sequential_5/lstm_22/lstm_cell_22/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UЇ
'sequential_5/lstm_22/lstm_cell_22/add_1AddV2)sequential_5/lstm_22/lstm_cell_22/mul:z:0+sequential_5/lstm_22/lstm_cell_22/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UЪ
+sequential_5/lstm_22/lstm_cell_22/Sigmoid_2Sigmoid0sequential_5/lstm_22/lstm_cell_22/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€UП
(sequential_5/lstm_22/lstm_cell_22/Relu_1Relu+sequential_5/lstm_22/lstm_cell_22/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€U…
'sequential_5/lstm_22/lstm_cell_22/mul_2Mul/sequential_5/lstm_22/lstm_cell_22/Sigmoid_2:y:06sequential_5/lstm_22/lstm_cell_22/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UГ
2sequential_5/lstm_22/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   ч
$sequential_5/lstm_22/TensorArrayV2_1TensorListReserve;sequential_5/lstm_22/TensorArrayV2_1/element_shape:output:0-sequential_5/lstm_22/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“[
sequential_5/lstm_22/timeConst*
_output_shapes
: *
dtype0*
value	B : x
-sequential_5/lstm_22/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€i
'sequential_5/lstm_22/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ®
sequential_5/lstm_22/whileWhile0sequential_5/lstm_22/while/loop_counter:output:06sequential_5/lstm_22/while/maximum_iterations:output:0"sequential_5/lstm_22/time:output:0-sequential_5/lstm_22/TensorArrayV2_1:handle:0#sequential_5/lstm_22/zeros:output:0%sequential_5/lstm_22/zeros_1:output:0-sequential_5/lstm_22/strided_slice_1:output:0Lsequential_5/lstm_22/TensorArrayUnstack/TensorListFromTensor:output_handle:0@sequential_5_lstm_22_lstm_cell_22_matmul_readvariableop_resourceBsequential_5_lstm_22_lstm_cell_22_matmul_1_readvariableop_resourceAsequential_5_lstm_22_lstm_cell_22_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *2
body*R(
&sequential_5_lstm_22_while_body_109296*2
cond*R(
&sequential_5_lstm_22_while_cond_109295*K
output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *
parallel_iterations Ц
Esequential_5/lstm_22/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   Б
7sequential_5/lstm_22/TensorArrayV2Stack/TensorListStackTensorListStack#sequential_5/lstm_22/while:output:3Nsequential_5/lstm_22/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€U*
element_dtype0}
*sequential_5/lstm_22/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€v
,sequential_5/lstm_22/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,sequential_5/lstm_22/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:р
$sequential_5/lstm_22/strided_slice_3StridedSlice@sequential_5/lstm_22/TensorArrayV2Stack/TensorListStack:tensor:03sequential_5/lstm_22/strided_slice_3/stack:output:05sequential_5/lstm_22/strided_slice_3/stack_1:output:05sequential_5/lstm_22/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€U*
shrink_axis_maskz
%sequential_5/lstm_22/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ’
 sequential_5/lstm_22/transpose_1	Transpose@sequential_5/lstm_22/TensorArrayV2Stack/TensorListStack:tensor:0.sequential_5/lstm_22/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€Up
sequential_5/lstm_22/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Н
 sequential_5/dropout_22/IdentityIdentity-sequential_5/lstm_22/strided_slice_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€UЮ
*sequential_5/dense_5/MatMul/ReadVariableOpReadVariableOp3sequential_5_dense_5_matmul_readvariableop_resource*
_output_shapes

:U*
dtype0ґ
sequential_5/dense_5/MatMulMatMul)sequential_5/dropout_22/Identity:output:02sequential_5/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ь
+sequential_5/dense_5/BiasAdd/ReadVariableOpReadVariableOp4sequential_5_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0µ
sequential_5/dense_5/BiasAddBiasAdd%sequential_5/dense_5/MatMul:product:03sequential_5/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€t
IdentityIdentity%sequential_5/dense_5/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Л
NoOpNoOp,^sequential_5/dense_5/BiasAdd/ReadVariableOp+^sequential_5/dense_5/MatMul/ReadVariableOp9^sequential_5/lstm_20/lstm_cell_20/BiasAdd/ReadVariableOp8^sequential_5/lstm_20/lstm_cell_20/MatMul/ReadVariableOp:^sequential_5/lstm_20/lstm_cell_20/MatMul_1/ReadVariableOp^sequential_5/lstm_20/while9^sequential_5/lstm_21/lstm_cell_21/BiasAdd/ReadVariableOp8^sequential_5/lstm_21/lstm_cell_21/MatMul/ReadVariableOp:^sequential_5/lstm_21/lstm_cell_21/MatMul_1/ReadVariableOp^sequential_5/lstm_21/while9^sequential_5/lstm_22/lstm_cell_22/BiasAdd/ReadVariableOp8^sequential_5/lstm_22/lstm_cell_22/MatMul/ReadVariableOp:^sequential_5/lstm_22/lstm_cell_22/MatMul_1/ReadVariableOp^sequential_5/lstm_22/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:€€€€€€€€€: : : : : : : : : : : 2Z
+sequential_5/dense_5/BiasAdd/ReadVariableOp+sequential_5/dense_5/BiasAdd/ReadVariableOp2X
*sequential_5/dense_5/MatMul/ReadVariableOp*sequential_5/dense_5/MatMul/ReadVariableOp2t
8sequential_5/lstm_20/lstm_cell_20/BiasAdd/ReadVariableOp8sequential_5/lstm_20/lstm_cell_20/BiasAdd/ReadVariableOp2r
7sequential_5/lstm_20/lstm_cell_20/MatMul/ReadVariableOp7sequential_5/lstm_20/lstm_cell_20/MatMul/ReadVariableOp2v
9sequential_5/lstm_20/lstm_cell_20/MatMul_1/ReadVariableOp9sequential_5/lstm_20/lstm_cell_20/MatMul_1/ReadVariableOp28
sequential_5/lstm_20/whilesequential_5/lstm_20/while2t
8sequential_5/lstm_21/lstm_cell_21/BiasAdd/ReadVariableOp8sequential_5/lstm_21/lstm_cell_21/BiasAdd/ReadVariableOp2r
7sequential_5/lstm_21/lstm_cell_21/MatMul/ReadVariableOp7sequential_5/lstm_21/lstm_cell_21/MatMul/ReadVariableOp2v
9sequential_5/lstm_21/lstm_cell_21/MatMul_1/ReadVariableOp9sequential_5/lstm_21/lstm_cell_21/MatMul_1/ReadVariableOp28
sequential_5/lstm_21/whilesequential_5/lstm_21/while2t
8sequential_5/lstm_22/lstm_cell_22/BiasAdd/ReadVariableOp8sequential_5/lstm_22/lstm_cell_22/BiasAdd/ReadVariableOp2r
7sequential_5/lstm_22/lstm_cell_22/MatMul/ReadVariableOp7sequential_5/lstm_22/lstm_cell_22/MatMul/ReadVariableOp2v
9sequential_5/lstm_22/lstm_cell_22/MatMul_1/ReadVariableOp9sequential_5/lstm_22/lstm_cell_22/MatMul_1/ReadVariableOp28
sequential_5/lstm_22/whilesequential_5/lstm_22/while:Z V
+
_output_shapes
:€€€€€€€€€
'
_user_specified_namelstm_20_input
л
ц
-__inference_lstm_cell_21_layer_call_fn_114744

inputs
states_0
states_1
unknown:	U‘
	unknown_0:	U‘
	unknown_1:	‘
identity

identity_1

identity_2ИҐStatefulPartitionedCall®
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_21_layer_call_and_return_conditional_losses_109804o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Uq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Uq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:€€€€€€€€€U`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€U
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€U
"
_user_specified_name
states/0:QM
'
_output_shapes
:€€€€€€€€€U
"
_user_specified_name
states/1
’
Д
H__inference_lstm_cell_20_layer_call_and_return_conditional_losses_109600

inputs

states
states_11
matmul_readvariableop_resource:	‘3
 matmul_1_readvariableop_resource:	U‘.
biasadd_readvariableop_resource:	‘
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	‘*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	U‘*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:‘*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€UV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€UU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€UN
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€U_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€UK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Uc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€UZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€UZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€UС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€:€€€€€€€€€U:€€€€€€€€€U: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€U
 
_user_specified_namestates:OK
'
_output_shapes
:€€€€€€€€€U
 
_user_specified_namestates
П
Ј
(__inference_lstm_22_layer_call_fn_113978
inputs_0
unknown:	U‘
	unknown_0:	U‘
	unknown_1:	‘
identityИҐStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€U*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_22_layer_call_and_return_conditional_losses_110237o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€U`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€U: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€U
"
_user_specified_name
inputs/0
а±
¬
"__inference__traced_restore_115220
file_prefix1
assignvariableop_dense_5_kernel:U-
assignvariableop_1_dense_5_bias:#
assignvariableop_2_beta_1: #
assignvariableop_3_beta_2: "
assignvariableop_4_decay: *
 assignvariableop_5_learning_rate: &
assignvariableop_6_adam_iter:	 A
.assignvariableop_7_lstm_20_lstm_cell_20_kernel:	‘K
8assignvariableop_8_lstm_20_lstm_cell_20_recurrent_kernel:	U‘;
,assignvariableop_9_lstm_20_lstm_cell_20_bias:	‘B
/assignvariableop_10_lstm_21_lstm_cell_21_kernel:	U‘L
9assignvariableop_11_lstm_21_lstm_cell_21_recurrent_kernel:	U‘<
-assignvariableop_12_lstm_21_lstm_cell_21_bias:	‘B
/assignvariableop_13_lstm_22_lstm_cell_22_kernel:	U‘L
9assignvariableop_14_lstm_22_lstm_cell_22_recurrent_kernel:	U‘<
-assignvariableop_15_lstm_22_lstm_cell_22_bias:	‘#
assignvariableop_16_total: #
assignvariableop_17_count: %
assignvariableop_18_total_1: %
assignvariableop_19_count_1: %
assignvariableop_20_total_2: %
assignvariableop_21_count_2: ;
)assignvariableop_22_adam_dense_5_kernel_m:U5
'assignvariableop_23_adam_dense_5_bias_m:I
6assignvariableop_24_adam_lstm_20_lstm_cell_20_kernel_m:	‘S
@assignvariableop_25_adam_lstm_20_lstm_cell_20_recurrent_kernel_m:	U‘C
4assignvariableop_26_adam_lstm_20_lstm_cell_20_bias_m:	‘I
6assignvariableop_27_adam_lstm_21_lstm_cell_21_kernel_m:	U‘S
@assignvariableop_28_adam_lstm_21_lstm_cell_21_recurrent_kernel_m:	U‘C
4assignvariableop_29_adam_lstm_21_lstm_cell_21_bias_m:	‘I
6assignvariableop_30_adam_lstm_22_lstm_cell_22_kernel_m:	U‘S
@assignvariableop_31_adam_lstm_22_lstm_cell_22_recurrent_kernel_m:	U‘C
4assignvariableop_32_adam_lstm_22_lstm_cell_22_bias_m:	‘;
)assignvariableop_33_adam_dense_5_kernel_v:U5
'assignvariableop_34_adam_dense_5_bias_v:I
6assignvariableop_35_adam_lstm_20_lstm_cell_20_kernel_v:	‘S
@assignvariableop_36_adam_lstm_20_lstm_cell_20_recurrent_kernel_v:	U‘C
4assignvariableop_37_adam_lstm_20_lstm_cell_20_bias_v:	‘I
6assignvariableop_38_adam_lstm_21_lstm_cell_21_kernel_v:	U‘S
@assignvariableop_39_adam_lstm_21_lstm_cell_21_recurrent_kernel_v:	U‘C
4assignvariableop_40_adam_lstm_21_lstm_cell_21_bias_v:	‘I
6assignvariableop_41_adam_lstm_22_lstm_cell_22_kernel_v:	U‘S
@assignvariableop_42_adam_lstm_22_lstm_cell_22_recurrent_kernel_v:	U‘C
4assignvariableop_43_adam_lstm_22_lstm_cell_22_bias_v:	‘
identity_45ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_33ҐAssignVariableOp_34ҐAssignVariableOp_35ҐAssignVariableOp_36ҐAssignVariableOp_37ҐAssignVariableOp_38ҐAssignVariableOp_39ҐAssignVariableOp_4ҐAssignVariableOp_40ҐAssignVariableOp_41ҐAssignVariableOp_42ҐAssignVariableOp_43ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9†
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:-*
dtype0*∆
valueЉBє-B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH 
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:-*
dtype0*m
valuedBb-B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B В
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0* 
_output_shapesЈ
і:::::::::::::::::::::::::::::::::::::::::::::*;
dtypes1
/2-	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOpAssignVariableOpassignvariableop_dense_5_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_5_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:И
AssignVariableOp_2AssignVariableOpassignvariableop_2_beta_1Identity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:И
AssignVariableOp_3AssignVariableOpassignvariableop_3_beta_2Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:З
AssignVariableOp_4AssignVariableOpassignvariableop_4_decayIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_5AssignVariableOp assignvariableop_5_learning_rateIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:Л
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_7AssignVariableOp.assignvariableop_7_lstm_20_lstm_cell_20_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOp_8AssignVariableOp8assignvariableop_8_lstm_20_lstm_cell_20_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_9AssignVariableOp,assignvariableop_9_lstm_20_lstm_cell_20_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:†
AssignVariableOp_10AssignVariableOp/assignvariableop_10_lstm_21_lstm_cell_21_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:™
AssignVariableOp_11AssignVariableOp9assignvariableop_11_lstm_21_lstm_cell_21_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_12AssignVariableOp-assignvariableop_12_lstm_21_lstm_cell_21_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:†
AssignVariableOp_13AssignVariableOp/assignvariableop_13_lstm_22_lstm_cell_22_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:™
AssignVariableOp_14AssignVariableOp9assignvariableop_14_lstm_22_lstm_cell_22_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_15AssignVariableOp-assignvariableop_15_lstm_22_lstm_cell_22_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_16AssignVariableOpassignvariableop_16_totalIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_17AssignVariableOpassignvariableop_17_countIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_18AssignVariableOpassignvariableop_18_total_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_19AssignVariableOpassignvariableop_19_count_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_20AssignVariableOpassignvariableop_20_total_2Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_21AssignVariableOpassignvariableop_21_count_2Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_dense_5_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_23AssignVariableOp'assignvariableop_23_adam_dense_5_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOp_24AssignVariableOp6assignvariableop_24_adam_lstm_20_lstm_cell_20_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_25AssignVariableOp@assignvariableop_25_adam_lstm_20_lstm_cell_20_recurrent_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:•
AssignVariableOp_26AssignVariableOp4assignvariableop_26_adam_lstm_20_lstm_cell_20_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOp_27AssignVariableOp6assignvariableop_27_adam_lstm_21_lstm_cell_21_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_28AssignVariableOp@assignvariableop_28_adam_lstm_21_lstm_cell_21_recurrent_kernel_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:•
AssignVariableOp_29AssignVariableOp4assignvariableop_29_adam_lstm_21_lstm_cell_21_bias_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOp_30AssignVariableOp6assignvariableop_30_adam_lstm_22_lstm_cell_22_kernel_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_31AssignVariableOp@assignvariableop_31_adam_lstm_22_lstm_cell_22_recurrent_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:•
AssignVariableOp_32AssignVariableOp4assignvariableop_32_adam_lstm_22_lstm_cell_22_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_33AssignVariableOp)assignvariableop_33_adam_dense_5_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_34AssignVariableOp'assignvariableop_34_adam_dense_5_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOp_35AssignVariableOp6assignvariableop_35_adam_lstm_20_lstm_cell_20_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_36AssignVariableOp@assignvariableop_36_adam_lstm_20_lstm_cell_20_recurrent_kernel_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:•
AssignVariableOp_37AssignVariableOp4assignvariableop_37_adam_lstm_20_lstm_cell_20_bias_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOp_38AssignVariableOp6assignvariableop_38_adam_lstm_21_lstm_cell_21_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_39AssignVariableOp@assignvariableop_39_adam_lstm_21_lstm_cell_21_recurrent_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:•
AssignVariableOp_40AssignVariableOp4assignvariableop_40_adam_lstm_21_lstm_cell_21_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOp_41AssignVariableOp6assignvariableop_41_adam_lstm_22_lstm_cell_22_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_42AssignVariableOp@assignvariableop_42_adam_lstm_22_lstm_cell_22_recurrent_kernel_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:•
AssignVariableOp_43AssignVariableOp4assignvariableop_43_adam_lstm_22_lstm_cell_22_bias_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 Ч
Identity_44Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_45IdentityIdentity_44:output:0^NoOp_1*
T0*
_output_shapes
: Д
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_45Identity_45:output:0*m
_input_shapes\
Z: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
≤€
м

H__inference_sequential_5_layer_call_and_return_conditional_losses_112230

inputsF
3lstm_20_lstm_cell_20_matmul_readvariableop_resource:	‘H
5lstm_20_lstm_cell_20_matmul_1_readvariableop_resource:	U‘C
4lstm_20_lstm_cell_20_biasadd_readvariableop_resource:	‘F
3lstm_21_lstm_cell_21_matmul_readvariableop_resource:	U‘H
5lstm_21_lstm_cell_21_matmul_1_readvariableop_resource:	U‘C
4lstm_21_lstm_cell_21_biasadd_readvariableop_resource:	‘F
3lstm_22_lstm_cell_22_matmul_readvariableop_resource:	U‘H
5lstm_22_lstm_cell_22_matmul_1_readvariableop_resource:	U‘C
4lstm_22_lstm_cell_22_biasadd_readvariableop_resource:	‘8
&dense_5_matmul_readvariableop_resource:U5
'dense_5_biasadd_readvariableop_resource:
identityИҐdense_5/BiasAdd/ReadVariableOpҐdense_5/MatMul/ReadVariableOpҐ+lstm_20/lstm_cell_20/BiasAdd/ReadVariableOpҐ*lstm_20/lstm_cell_20/MatMul/ReadVariableOpҐ,lstm_20/lstm_cell_20/MatMul_1/ReadVariableOpҐlstm_20/whileҐ+lstm_21/lstm_cell_21/BiasAdd/ReadVariableOpҐ*lstm_21/lstm_cell_21/MatMul/ReadVariableOpҐ,lstm_21/lstm_cell_21/MatMul_1/ReadVariableOpҐlstm_21/whileҐ+lstm_22/lstm_cell_22/BiasAdd/ReadVariableOpҐ*lstm_22/lstm_cell_22/MatMul/ReadVariableOpҐ,lstm_22/lstm_cell_22/MatMul_1/ReadVariableOpҐlstm_22/whileC
lstm_20/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
lstm_20/strided_sliceStridedSlicelstm_20/Shape:output:0$lstm_20/strided_slice/stack:output:0&lstm_20/strided_slice/stack_1:output:0&lstm_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_20/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :UЛ
lstm_20/zeros/packedPacklstm_20/strided_slice:output:0lstm_20/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_20/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Д
lstm_20/zerosFilllstm_20/zeros/packed:output:0lstm_20/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€UZ
lstm_20/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :UП
lstm_20/zeros_1/packedPacklstm_20/strided_slice:output:0!lstm_20/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_20/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    К
lstm_20/zeros_1Filllstm_20/zeros_1/packed:output:0lstm_20/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Uk
lstm_20/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_20/transpose	Transposeinputslstm_20/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€T
lstm_20/Shape_1Shapelstm_20/transpose:y:0*
T0*
_output_shapes
:g
lstm_20/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_20/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_20/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Г
lstm_20/strided_slice_1StridedSlicelstm_20/Shape_1:output:0&lstm_20/strided_slice_1/stack:output:0(lstm_20/strided_slice_1/stack_1:output:0(lstm_20/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_20/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€ћ
lstm_20/TensorArrayV2TensorListReserve,lstm_20/TensorArrayV2/element_shape:output:0 lstm_20/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“О
=lstm_20/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ш
/lstm_20/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_20/transpose:y:0Flstm_20/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“g
lstm_20/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_20/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_20/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:С
lstm_20/strided_slice_2StridedSlicelstm_20/transpose:y:0&lstm_20/strided_slice_2/stack:output:0(lstm_20/strided_slice_2/stack_1:output:0(lstm_20/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskЯ
*lstm_20/lstm_cell_20/MatMul/ReadVariableOpReadVariableOp3lstm_20_lstm_cell_20_matmul_readvariableop_resource*
_output_shapes
:	‘*
dtype0Ѓ
lstm_20/lstm_cell_20/MatMulMatMul lstm_20/strided_slice_2:output:02lstm_20/lstm_cell_20/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘£
,lstm_20/lstm_cell_20/MatMul_1/ReadVariableOpReadVariableOp5lstm_20_lstm_cell_20_matmul_1_readvariableop_resource*
_output_shapes
:	U‘*
dtype0®
lstm_20/lstm_cell_20/MatMul_1MatMullstm_20/zeros:output:04lstm_20/lstm_cell_20/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘§
lstm_20/lstm_cell_20/addAddV2%lstm_20/lstm_cell_20/MatMul:product:0'lstm_20/lstm_cell_20/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘Э
+lstm_20/lstm_cell_20/BiasAdd/ReadVariableOpReadVariableOp4lstm_20_lstm_cell_20_biasadd_readvariableop_resource*
_output_shapes	
:‘*
dtype0≠
lstm_20/lstm_cell_20/BiasAddBiasAddlstm_20/lstm_cell_20/add:z:03lstm_20/lstm_cell_20/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘f
$lstm_20/lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :х
lstm_20/lstm_cell_20/splitSplit-lstm_20/lstm_cell_20/split/split_dim:output:0%lstm_20/lstm_cell_20/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_split~
lstm_20/lstm_cell_20/SigmoidSigmoid#lstm_20/lstm_cell_20/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€UА
lstm_20/lstm_cell_20/Sigmoid_1Sigmoid#lstm_20/lstm_cell_20/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€UП
lstm_20/lstm_cell_20/mulMul"lstm_20/lstm_cell_20/Sigmoid_1:y:0lstm_20/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ux
lstm_20/lstm_cell_20/ReluRelu#lstm_20/lstm_cell_20/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€UЮ
lstm_20/lstm_cell_20/mul_1Mul lstm_20/lstm_cell_20/Sigmoid:y:0'lstm_20/lstm_cell_20/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UУ
lstm_20/lstm_cell_20/add_1AddV2lstm_20/lstm_cell_20/mul:z:0lstm_20/lstm_cell_20/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UА
lstm_20/lstm_cell_20/Sigmoid_2Sigmoid#lstm_20/lstm_cell_20/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€Uu
lstm_20/lstm_cell_20/Relu_1Relulstm_20/lstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UҐ
lstm_20/lstm_cell_20/mul_2Mul"lstm_20/lstm_cell_20/Sigmoid_2:y:0)lstm_20/lstm_cell_20/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Uv
%lstm_20/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   –
lstm_20/TensorArrayV2_1TensorListReserve.lstm_20/TensorArrayV2_1/element_shape:output:0 lstm_20/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“N
lstm_20/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_20/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€\
lstm_20/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : т
lstm_20/whileWhile#lstm_20/while/loop_counter:output:0)lstm_20/while/maximum_iterations:output:0lstm_20/time:output:0 lstm_20/TensorArrayV2_1:handle:0lstm_20/zeros:output:0lstm_20/zeros_1:output:0 lstm_20/strided_slice_1:output:0?lstm_20/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_20_lstm_cell_20_matmul_readvariableop_resource5lstm_20_lstm_cell_20_matmul_1_readvariableop_resource4lstm_20_lstm_cell_20_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_20_while_body_111859*%
condR
lstm_20_while_cond_111858*K
output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *
parallel_iterations Й
8lstm_20/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   Џ
*lstm_20/TensorArrayV2Stack/TensorListStackTensorListStacklstm_20/while:output:3Alstm_20/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€U*
element_dtype0p
lstm_20/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€i
lstm_20/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_20/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѓ
lstm_20/strided_slice_3StridedSlice3lstm_20/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_20/strided_slice_3/stack:output:0(lstm_20/strided_slice_3/stack_1:output:0(lstm_20/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€U*
shrink_axis_maskm
lstm_20/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ѓ
lstm_20/transpose_1	Transpose3lstm_20/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_20/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€Uc
lstm_20/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    n
dropout_20/IdentityIdentitylstm_20/transpose_1:y:0*
T0*+
_output_shapes
:€€€€€€€€€UY
lstm_21/ShapeShapedropout_20/Identity:output:0*
T0*
_output_shapes
:e
lstm_21/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_21/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_21/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
lstm_21/strided_sliceStridedSlicelstm_21/Shape:output:0$lstm_21/strided_slice/stack:output:0&lstm_21/strided_slice/stack_1:output:0&lstm_21/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_21/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :UЛ
lstm_21/zeros/packedPacklstm_21/strided_slice:output:0lstm_21/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_21/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Д
lstm_21/zerosFilllstm_21/zeros/packed:output:0lstm_21/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€UZ
lstm_21/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :UП
lstm_21/zeros_1/packedPacklstm_21/strided_slice:output:0!lstm_21/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_21/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    К
lstm_21/zeros_1Filllstm_21/zeros_1/packed:output:0lstm_21/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Uk
lstm_21/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          У
lstm_21/transpose	Transposedropout_20/Identity:output:0lstm_21/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€UT
lstm_21/Shape_1Shapelstm_21/transpose:y:0*
T0*
_output_shapes
:g
lstm_21/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_21/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_21/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Г
lstm_21/strided_slice_1StridedSlicelstm_21/Shape_1:output:0&lstm_21/strided_slice_1/stack:output:0(lstm_21/strided_slice_1/stack_1:output:0(lstm_21/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_21/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€ћ
lstm_21/TensorArrayV2TensorListReserve,lstm_21/TensorArrayV2/element_shape:output:0 lstm_21/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“О
=lstm_21/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   ш
/lstm_21/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_21/transpose:y:0Flstm_21/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“g
lstm_21/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_21/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_21/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:С
lstm_21/strided_slice_2StridedSlicelstm_21/transpose:y:0&lstm_21/strided_slice_2/stack:output:0(lstm_21/strided_slice_2/stack_1:output:0(lstm_21/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€U*
shrink_axis_maskЯ
*lstm_21/lstm_cell_21/MatMul/ReadVariableOpReadVariableOp3lstm_21_lstm_cell_21_matmul_readvariableop_resource*
_output_shapes
:	U‘*
dtype0Ѓ
lstm_21/lstm_cell_21/MatMulMatMul lstm_21/strided_slice_2:output:02lstm_21/lstm_cell_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘£
,lstm_21/lstm_cell_21/MatMul_1/ReadVariableOpReadVariableOp5lstm_21_lstm_cell_21_matmul_1_readvariableop_resource*
_output_shapes
:	U‘*
dtype0®
lstm_21/lstm_cell_21/MatMul_1MatMullstm_21/zeros:output:04lstm_21/lstm_cell_21/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘§
lstm_21/lstm_cell_21/addAddV2%lstm_21/lstm_cell_21/MatMul:product:0'lstm_21/lstm_cell_21/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘Э
+lstm_21/lstm_cell_21/BiasAdd/ReadVariableOpReadVariableOp4lstm_21_lstm_cell_21_biasadd_readvariableop_resource*
_output_shapes	
:‘*
dtype0≠
lstm_21/lstm_cell_21/BiasAddBiasAddlstm_21/lstm_cell_21/add:z:03lstm_21/lstm_cell_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘f
$lstm_21/lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :х
lstm_21/lstm_cell_21/splitSplit-lstm_21/lstm_cell_21/split/split_dim:output:0%lstm_21/lstm_cell_21/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_split~
lstm_21/lstm_cell_21/SigmoidSigmoid#lstm_21/lstm_cell_21/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€UА
lstm_21/lstm_cell_21/Sigmoid_1Sigmoid#lstm_21/lstm_cell_21/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€UП
lstm_21/lstm_cell_21/mulMul"lstm_21/lstm_cell_21/Sigmoid_1:y:0lstm_21/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ux
lstm_21/lstm_cell_21/ReluRelu#lstm_21/lstm_cell_21/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€UЮ
lstm_21/lstm_cell_21/mul_1Mul lstm_21/lstm_cell_21/Sigmoid:y:0'lstm_21/lstm_cell_21/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UУ
lstm_21/lstm_cell_21/add_1AddV2lstm_21/lstm_cell_21/mul:z:0lstm_21/lstm_cell_21/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UА
lstm_21/lstm_cell_21/Sigmoid_2Sigmoid#lstm_21/lstm_cell_21/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€Uu
lstm_21/lstm_cell_21/Relu_1Relulstm_21/lstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UҐ
lstm_21/lstm_cell_21/mul_2Mul"lstm_21/lstm_cell_21/Sigmoid_2:y:0)lstm_21/lstm_cell_21/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Uv
%lstm_21/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   –
lstm_21/TensorArrayV2_1TensorListReserve.lstm_21/TensorArrayV2_1/element_shape:output:0 lstm_21/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“N
lstm_21/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_21/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€\
lstm_21/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : т
lstm_21/whileWhile#lstm_21/while/loop_counter:output:0)lstm_21/while/maximum_iterations:output:0lstm_21/time:output:0 lstm_21/TensorArrayV2_1:handle:0lstm_21/zeros:output:0lstm_21/zeros_1:output:0 lstm_21/strided_slice_1:output:0?lstm_21/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_21_lstm_cell_21_matmul_readvariableop_resource5lstm_21_lstm_cell_21_matmul_1_readvariableop_resource4lstm_21_lstm_cell_21_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_21_while_body_111999*%
condR
lstm_21_while_cond_111998*K
output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *
parallel_iterations Й
8lstm_21/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   Џ
*lstm_21/TensorArrayV2Stack/TensorListStackTensorListStacklstm_21/while:output:3Alstm_21/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€U*
element_dtype0p
lstm_21/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€i
lstm_21/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_21/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѓ
lstm_21/strided_slice_3StridedSlice3lstm_21/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_21/strided_slice_3/stack:output:0(lstm_21/strided_slice_3/stack_1:output:0(lstm_21/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€U*
shrink_axis_maskm
lstm_21/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ѓ
lstm_21/transpose_1	Transpose3lstm_21/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_21/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€Uc
lstm_21/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    n
dropout_21/IdentityIdentitylstm_21/transpose_1:y:0*
T0*+
_output_shapes
:€€€€€€€€€UY
lstm_22/ShapeShapedropout_21/Identity:output:0*
T0*
_output_shapes
:e
lstm_22/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_22/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_22/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
lstm_22/strided_sliceStridedSlicelstm_22/Shape:output:0$lstm_22/strided_slice/stack:output:0&lstm_22/strided_slice/stack_1:output:0&lstm_22/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_22/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :UЛ
lstm_22/zeros/packedPacklstm_22/strided_slice:output:0lstm_22/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_22/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Д
lstm_22/zerosFilllstm_22/zeros/packed:output:0lstm_22/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€UZ
lstm_22/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :UП
lstm_22/zeros_1/packedPacklstm_22/strided_slice:output:0!lstm_22/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_22/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    К
lstm_22/zeros_1Filllstm_22/zeros_1/packed:output:0lstm_22/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Uk
lstm_22/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          У
lstm_22/transpose	Transposedropout_21/Identity:output:0lstm_22/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€UT
lstm_22/Shape_1Shapelstm_22/transpose:y:0*
T0*
_output_shapes
:g
lstm_22/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_22/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_22/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Г
lstm_22/strided_slice_1StridedSlicelstm_22/Shape_1:output:0&lstm_22/strided_slice_1/stack:output:0(lstm_22/strided_slice_1/stack_1:output:0(lstm_22/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_22/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€ћ
lstm_22/TensorArrayV2TensorListReserve,lstm_22/TensorArrayV2/element_shape:output:0 lstm_22/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“О
=lstm_22/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   ш
/lstm_22/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_22/transpose:y:0Flstm_22/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“g
lstm_22/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_22/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_22/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:С
lstm_22/strided_slice_2StridedSlicelstm_22/transpose:y:0&lstm_22/strided_slice_2/stack:output:0(lstm_22/strided_slice_2/stack_1:output:0(lstm_22/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€U*
shrink_axis_maskЯ
*lstm_22/lstm_cell_22/MatMul/ReadVariableOpReadVariableOp3lstm_22_lstm_cell_22_matmul_readvariableop_resource*
_output_shapes
:	U‘*
dtype0Ѓ
lstm_22/lstm_cell_22/MatMulMatMul lstm_22/strided_slice_2:output:02lstm_22/lstm_cell_22/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘£
,lstm_22/lstm_cell_22/MatMul_1/ReadVariableOpReadVariableOp5lstm_22_lstm_cell_22_matmul_1_readvariableop_resource*
_output_shapes
:	U‘*
dtype0®
lstm_22/lstm_cell_22/MatMul_1MatMullstm_22/zeros:output:04lstm_22/lstm_cell_22/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘§
lstm_22/lstm_cell_22/addAddV2%lstm_22/lstm_cell_22/MatMul:product:0'lstm_22/lstm_cell_22/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘Э
+lstm_22/lstm_cell_22/BiasAdd/ReadVariableOpReadVariableOp4lstm_22_lstm_cell_22_biasadd_readvariableop_resource*
_output_shapes	
:‘*
dtype0≠
lstm_22/lstm_cell_22/BiasAddBiasAddlstm_22/lstm_cell_22/add:z:03lstm_22/lstm_cell_22/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘f
$lstm_22/lstm_cell_22/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :х
lstm_22/lstm_cell_22/splitSplit-lstm_22/lstm_cell_22/split/split_dim:output:0%lstm_22/lstm_cell_22/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_split~
lstm_22/lstm_cell_22/SigmoidSigmoid#lstm_22/lstm_cell_22/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€UА
lstm_22/lstm_cell_22/Sigmoid_1Sigmoid#lstm_22/lstm_cell_22/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€UП
lstm_22/lstm_cell_22/mulMul"lstm_22/lstm_cell_22/Sigmoid_1:y:0lstm_22/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ux
lstm_22/lstm_cell_22/ReluRelu#lstm_22/lstm_cell_22/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€UЮ
lstm_22/lstm_cell_22/mul_1Mul lstm_22/lstm_cell_22/Sigmoid:y:0'lstm_22/lstm_cell_22/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UУ
lstm_22/lstm_cell_22/add_1AddV2lstm_22/lstm_cell_22/mul:z:0lstm_22/lstm_cell_22/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UА
lstm_22/lstm_cell_22/Sigmoid_2Sigmoid#lstm_22/lstm_cell_22/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€Uu
lstm_22/lstm_cell_22/Relu_1Relulstm_22/lstm_cell_22/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UҐ
lstm_22/lstm_cell_22/mul_2Mul"lstm_22/lstm_cell_22/Sigmoid_2:y:0)lstm_22/lstm_cell_22/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Uv
%lstm_22/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   –
lstm_22/TensorArrayV2_1TensorListReserve.lstm_22/TensorArrayV2_1/element_shape:output:0 lstm_22/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“N
lstm_22/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_22/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€\
lstm_22/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : т
lstm_22/whileWhile#lstm_22/while/loop_counter:output:0)lstm_22/while/maximum_iterations:output:0lstm_22/time:output:0 lstm_22/TensorArrayV2_1:handle:0lstm_22/zeros:output:0lstm_22/zeros_1:output:0 lstm_22/strided_slice_1:output:0?lstm_22/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_22_lstm_cell_22_matmul_readvariableop_resource5lstm_22_lstm_cell_22_matmul_1_readvariableop_resource4lstm_22_lstm_cell_22_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_22_while_body_112139*%
condR
lstm_22_while_cond_112138*K
output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *
parallel_iterations Й
8lstm_22/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   Џ
*lstm_22/TensorArrayV2Stack/TensorListStackTensorListStacklstm_22/while:output:3Alstm_22/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€U*
element_dtype0p
lstm_22/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€i
lstm_22/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_22/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѓ
lstm_22/strided_slice_3StridedSlice3lstm_22/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_22/strided_slice_3/stack:output:0(lstm_22/strided_slice_3/stack_1:output:0(lstm_22/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€U*
shrink_axis_maskm
lstm_22/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ѓ
lstm_22/transpose_1	Transpose3lstm_22/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_22/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€Uc
lstm_22/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    s
dropout_22/IdentityIdentity lstm_22/strided_slice_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€UД
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes

:U*
dtype0П
dense_5/MatMulMatMuldropout_22/Identity:output:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€В
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€g
IdentityIdentitydense_5/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€’
NoOpNoOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp,^lstm_20/lstm_cell_20/BiasAdd/ReadVariableOp+^lstm_20/lstm_cell_20/MatMul/ReadVariableOp-^lstm_20/lstm_cell_20/MatMul_1/ReadVariableOp^lstm_20/while,^lstm_21/lstm_cell_21/BiasAdd/ReadVariableOp+^lstm_21/lstm_cell_21/MatMul/ReadVariableOp-^lstm_21/lstm_cell_21/MatMul_1/ReadVariableOp^lstm_21/while,^lstm_22/lstm_cell_22/BiasAdd/ReadVariableOp+^lstm_22/lstm_cell_22/MatMul/ReadVariableOp-^lstm_22/lstm_cell_22/MatMul_1/ReadVariableOp^lstm_22/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:€€€€€€€€€: : : : : : : : : : : 2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2Z
+lstm_20/lstm_cell_20/BiasAdd/ReadVariableOp+lstm_20/lstm_cell_20/BiasAdd/ReadVariableOp2X
*lstm_20/lstm_cell_20/MatMul/ReadVariableOp*lstm_20/lstm_cell_20/MatMul/ReadVariableOp2\
,lstm_20/lstm_cell_20/MatMul_1/ReadVariableOp,lstm_20/lstm_cell_20/MatMul_1/ReadVariableOp2
lstm_20/whilelstm_20/while2Z
+lstm_21/lstm_cell_21/BiasAdd/ReadVariableOp+lstm_21/lstm_cell_21/BiasAdd/ReadVariableOp2X
*lstm_21/lstm_cell_21/MatMul/ReadVariableOp*lstm_21/lstm_cell_21/MatMul/ReadVariableOp2\
,lstm_21/lstm_cell_21/MatMul_1/ReadVariableOp,lstm_21/lstm_cell_21/MatMul_1/ReadVariableOp2
lstm_21/whilelstm_21/while2Z
+lstm_22/lstm_cell_22/BiasAdd/ReadVariableOp+lstm_22/lstm_cell_22/BiasAdd/ReadVariableOp2X
*lstm_22/lstm_cell_22/MatMul/ReadVariableOp*lstm_22/lstm_cell_22/MatMul/ReadVariableOp2\
,lstm_22/lstm_cell_22/MatMul_1/ReadVariableOp,lstm_22/lstm_cell_22/MatMul_1/ReadVariableOp2
lstm_22/whilelstm_22/while:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
®J
Ы
C__inference_lstm_22_layer_call_and_return_conditional_losses_111146

inputs>
+lstm_cell_22_matmul_readvariableop_resource:	U‘@
-lstm_cell_22_matmul_1_readvariableop_resource:	U‘;
,lstm_cell_22_biasadd_readvariableop_resource:	‘
identityИҐ#lstm_cell_22/BiasAdd/ReadVariableOpҐ"lstm_cell_22/MatMul/ReadVariableOpҐ$lstm_cell_22/MatMul_1/ReadVariableOpҐwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Us
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€UR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Uw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Uc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€UD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€U*
shrink_axis_maskП
"lstm_cell_22/MatMul/ReadVariableOpReadVariableOp+lstm_cell_22_matmul_readvariableop_resource*
_output_shapes
:	U‘*
dtype0Ц
lstm_cell_22/MatMulMatMulstrided_slice_2:output:0*lstm_cell_22/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘У
$lstm_cell_22/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_22_matmul_1_readvariableop_resource*
_output_shapes
:	U‘*
dtype0Р
lstm_cell_22/MatMul_1MatMulzeros:output:0,lstm_cell_22/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘М
lstm_cell_22/addAddV2lstm_cell_22/MatMul:product:0lstm_cell_22/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘Н
#lstm_cell_22/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_22_biasadd_readvariableop_resource*
_output_shapes	
:‘*
dtype0Х
lstm_cell_22/BiasAddBiasAddlstm_cell_22/add:z:0+lstm_cell_22/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘^
lstm_cell_22/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_22/splitSplit%lstm_cell_22/split/split_dim:output:0lstm_cell_22/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitn
lstm_cell_22/SigmoidSigmoidlstm_cell_22/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€Up
lstm_cell_22/Sigmoid_1Sigmoidlstm_cell_22/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€Uw
lstm_cell_22/mulMullstm_cell_22/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€Uh
lstm_cell_22/ReluRelulstm_cell_22/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€UЖ
lstm_cell_22/mul_1Mullstm_cell_22/Sigmoid:y:0lstm_cell_22/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€U{
lstm_cell_22/add_1AddV2lstm_cell_22/mul:z:0lstm_cell_22/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Up
lstm_cell_22/Sigmoid_2Sigmoidlstm_cell_22/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€Ue
lstm_cell_22/Relu_1Relulstm_cell_22/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UК
lstm_cell_22/mul_2Mullstm_cell_22/Sigmoid_2:y:0!lstm_cell_22/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Un
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : В
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_22_matmul_readvariableop_resource-lstm_cell_22_matmul_1_readvariableop_resource,lstm_cell_22_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_111062*
condR
while_cond_111061*K
output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   ¬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€U*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€U*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€U[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Uј
NoOpNoOp$^lstm_cell_22/BiasAdd/ReadVariableOp#^lstm_cell_22/MatMul/ReadVariableOp%^lstm_cell_22/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€U: : : 2J
#lstm_cell_22/BiasAdd/ReadVariableOp#lstm_cell_22/BiasAdd/ReadVariableOp2H
"lstm_cell_22/MatMul/ReadVariableOp"lstm_cell_22/MatMul/ReadVariableOp2L
$lstm_cell_22/MatMul_1/ReadVariableOp$lstm_cell_22/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€U
 
_user_specified_nameinputs
µ
√
while_cond_114355
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_114355___redundant_placeholder04
0while_while_cond_114355___redundant_placeholder14
0while_while_cond_114355___redundant_placeholder24
0while_while_cond_114355___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€U:€€€€€€€€€U: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
:
ў
d
F__inference_dropout_22_layer_call_and_return_conditional_losses_110913

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:€€€€€€€€€U[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:€€€€€€€€€U"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€U:O K
'
_output_shapes
:€€€€€€€€€U
 
_user_specified_nameinputs
µ
√
while_cond_110008
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_110008___redundant_placeholder04
0while_while_cond_110008___redundant_placeholder14
0while_while_cond_110008___redundant_placeholder24
0while_while_cond_110008___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€U:€€€€€€€€€U: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
:
Г
d
+__inference_dropout_21_layer_call_fn_113950

inputs
identityИҐStatefulPartitionedCall≈
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€U* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_21_layer_call_and_return_conditional_losses_111175s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€U`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€U22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€U
 
_user_specified_nameinputs
®J
Ы
C__inference_lstm_22_layer_call_and_return_conditional_losses_110900

inputs>
+lstm_cell_22_matmul_readvariableop_resource:	U‘@
-lstm_cell_22_matmul_1_readvariableop_resource:	U‘;
,lstm_cell_22_biasadd_readvariableop_resource:	‘
identityИҐ#lstm_cell_22/BiasAdd/ReadVariableOpҐ"lstm_cell_22/MatMul/ReadVariableOpҐ$lstm_cell_22/MatMul_1/ReadVariableOpҐwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Us
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€UR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Uw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Uc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€UD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€U*
shrink_axis_maskП
"lstm_cell_22/MatMul/ReadVariableOpReadVariableOp+lstm_cell_22_matmul_readvariableop_resource*
_output_shapes
:	U‘*
dtype0Ц
lstm_cell_22/MatMulMatMulstrided_slice_2:output:0*lstm_cell_22/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘У
$lstm_cell_22/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_22_matmul_1_readvariableop_resource*
_output_shapes
:	U‘*
dtype0Р
lstm_cell_22/MatMul_1MatMulzeros:output:0,lstm_cell_22/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘М
lstm_cell_22/addAddV2lstm_cell_22/MatMul:product:0lstm_cell_22/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘Н
#lstm_cell_22/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_22_biasadd_readvariableop_resource*
_output_shapes	
:‘*
dtype0Х
lstm_cell_22/BiasAddBiasAddlstm_cell_22/add:z:0+lstm_cell_22/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘^
lstm_cell_22/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_22/splitSplit%lstm_cell_22/split/split_dim:output:0lstm_cell_22/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitn
lstm_cell_22/SigmoidSigmoidlstm_cell_22/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€Up
lstm_cell_22/Sigmoid_1Sigmoidlstm_cell_22/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€Uw
lstm_cell_22/mulMullstm_cell_22/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€Uh
lstm_cell_22/ReluRelulstm_cell_22/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€UЖ
lstm_cell_22/mul_1Mullstm_cell_22/Sigmoid:y:0lstm_cell_22/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€U{
lstm_cell_22/add_1AddV2lstm_cell_22/mul:z:0lstm_cell_22/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Up
lstm_cell_22/Sigmoid_2Sigmoidlstm_cell_22/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€Ue
lstm_cell_22/Relu_1Relulstm_cell_22/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UК
lstm_cell_22/mul_2Mullstm_cell_22/Sigmoid_2:y:0!lstm_cell_22/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Un
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : В
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_22_matmul_readvariableop_resource-lstm_cell_22_matmul_1_readvariableop_resource,lstm_cell_22_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_110816*
condR
while_cond_110815*K
output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   ¬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€U*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€U*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€U[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Uј
NoOpNoOp$^lstm_cell_22/BiasAdd/ReadVariableOp#^lstm_cell_22/MatMul/ReadVariableOp%^lstm_cell_22/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€U: : : 2J
#lstm_cell_22/BiasAdd/ReadVariableOp#lstm_cell_22/BiasAdd/ReadVariableOp2H
"lstm_cell_22/MatMul/ReadVariableOp"lstm_cell_22/MatMul/ReadVariableOp2L
$lstm_cell_22/MatMul_1/ReadVariableOp$lstm_cell_22/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€U
 
_user_specified_nameinputs
М8
–
while_body_113070
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_20_matmul_readvariableop_resource_0:	‘H
5while_lstm_cell_20_matmul_1_readvariableop_resource_0:	U‘C
4while_lstm_cell_20_biasadd_readvariableop_resource_0:	‘
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_20_matmul_readvariableop_resource:	‘F
3while_lstm_cell_20_matmul_1_readvariableop_resource:	U‘A
2while_lstm_cell_20_biasadd_readvariableop_resource:	‘ИҐ)while/lstm_cell_20/BiasAdd/ReadVariableOpҐ(while/lstm_cell_20/MatMul/ReadVariableOpҐ*while/lstm_cell_20/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Э
(while/lstm_cell_20/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_20_matmul_readvariableop_resource_0*
_output_shapes
:	‘*
dtype0Ї
while/lstm_cell_20/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_20/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘°
*while/lstm_cell_20/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_20_matmul_1_readvariableop_resource_0*
_output_shapes
:	U‘*
dtype0°
while/lstm_cell_20/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_20/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘Ю
while/lstm_cell_20/addAddV2#while/lstm_cell_20/MatMul:product:0%while/lstm_cell_20/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘Ы
)while/lstm_cell_20/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_20_biasadd_readvariableop_resource_0*
_output_shapes	
:‘*
dtype0І
while/lstm_cell_20/BiasAddBiasAddwhile/lstm_cell_20/add:z:01while/lstm_cell_20/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘d
"while/lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_20/splitSplit+while/lstm_cell_20/split/split_dim:output:0#while/lstm_cell_20/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitz
while/lstm_cell_20/SigmoidSigmoid!while/lstm_cell_20/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€U|
while/lstm_cell_20/Sigmoid_1Sigmoid!while/lstm_cell_20/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€UЖ
while/lstm_cell_20/mulMul while/lstm_cell_20/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€Ut
while/lstm_cell_20/ReluRelu!while/lstm_cell_20/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€UШ
while/lstm_cell_20/mul_1Mulwhile/lstm_cell_20/Sigmoid:y:0%while/lstm_cell_20/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UН
while/lstm_cell_20/add_1AddV2while/lstm_cell_20/mul:z:0while/lstm_cell_20/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€U|
while/lstm_cell_20/Sigmoid_2Sigmoid!while/lstm_cell_20/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€Uq
while/lstm_cell_20/Relu_1Reluwhile/lstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UЬ
while/lstm_cell_20/mul_2Mul while/lstm_cell_20/Sigmoid_2:y:0'while/lstm_cell_20/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€U≈
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_20/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_20/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€Uy
while/Identity_5Identitywhile/lstm_cell_20/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€U–

while/NoOpNoOp*^while/lstm_cell_20/BiasAdd/ReadVariableOp)^while/lstm_cell_20/MatMul/ReadVariableOp+^while/lstm_cell_20/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_20_biasadd_readvariableop_resource4while_lstm_cell_20_biasadd_readvariableop_resource_0"l
3while_lstm_cell_20_matmul_1_readvariableop_resource5while_lstm_cell_20_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_20_matmul_readvariableop_resource3while_lstm_cell_20_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : 2V
)while/lstm_cell_20/BiasAdd/ReadVariableOp)while/lstm_cell_20/BiasAdd/ReadVariableOp2T
(while/lstm_cell_20/MatMul/ReadVariableOp(while/lstm_cell_20/MatMul/ReadVariableOp2X
*while/lstm_cell_20/MatMul_1/ReadVariableOp*while/lstm_cell_20/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
: 
Ё
Ж
H__inference_lstm_cell_21_layer_call_and_return_conditional_losses_114825

inputs
states_0
states_11
matmul_readvariableop_resource:	U‘3
 matmul_1_readvariableop_resource:	U‘.
biasadd_readvariableop_resource:	‘
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	U‘*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	U‘*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:‘*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€UV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€UU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€UN
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€U_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€UK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Uc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€UZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€UZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€UС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€U
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€U
"
_user_specified_name
states/0:QM
'
_output_shapes
:€€€€€€€€€U
"
_user_specified_name
states/1
М8
–
while_body_111438
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_20_matmul_readvariableop_resource_0:	‘H
5while_lstm_cell_20_matmul_1_readvariableop_resource_0:	U‘C
4while_lstm_cell_20_biasadd_readvariableop_resource_0:	‘
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_20_matmul_readvariableop_resource:	‘F
3while_lstm_cell_20_matmul_1_readvariableop_resource:	U‘A
2while_lstm_cell_20_biasadd_readvariableop_resource:	‘ИҐ)while/lstm_cell_20/BiasAdd/ReadVariableOpҐ(while/lstm_cell_20/MatMul/ReadVariableOpҐ*while/lstm_cell_20/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Э
(while/lstm_cell_20/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_20_matmul_readvariableop_resource_0*
_output_shapes
:	‘*
dtype0Ї
while/lstm_cell_20/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_20/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘°
*while/lstm_cell_20/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_20_matmul_1_readvariableop_resource_0*
_output_shapes
:	U‘*
dtype0°
while/lstm_cell_20/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_20/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘Ю
while/lstm_cell_20/addAddV2#while/lstm_cell_20/MatMul:product:0%while/lstm_cell_20/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘Ы
)while/lstm_cell_20/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_20_biasadd_readvariableop_resource_0*
_output_shapes	
:‘*
dtype0І
while/lstm_cell_20/BiasAddBiasAddwhile/lstm_cell_20/add:z:01while/lstm_cell_20/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘d
"while/lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_20/splitSplit+while/lstm_cell_20/split/split_dim:output:0#while/lstm_cell_20/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitz
while/lstm_cell_20/SigmoidSigmoid!while/lstm_cell_20/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€U|
while/lstm_cell_20/Sigmoid_1Sigmoid!while/lstm_cell_20/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€UЖ
while/lstm_cell_20/mulMul while/lstm_cell_20/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€Ut
while/lstm_cell_20/ReluRelu!while/lstm_cell_20/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€UШ
while/lstm_cell_20/mul_1Mulwhile/lstm_cell_20/Sigmoid:y:0%while/lstm_cell_20/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UН
while/lstm_cell_20/add_1AddV2while/lstm_cell_20/mul:z:0while/lstm_cell_20/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€U|
while/lstm_cell_20/Sigmoid_2Sigmoid!while/lstm_cell_20/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€Uq
while/lstm_cell_20/Relu_1Reluwhile/lstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UЬ
while/lstm_cell_20/mul_2Mul while/lstm_cell_20/Sigmoid_2:y:0'while/lstm_cell_20/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€U≈
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_20/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_20/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€Uy
while/Identity_5Identitywhile/lstm_cell_20/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€U–

while/NoOpNoOp*^while/lstm_cell_20/BiasAdd/ReadVariableOp)^while/lstm_cell_20/MatMul/ReadVariableOp+^while/lstm_cell_20/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_20_biasadd_readvariableop_resource4while_lstm_cell_20_biasadd_readvariableop_resource_0"l
3while_lstm_cell_20_matmul_1_readvariableop_resource5while_lstm_cell_20_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_20_matmul_readvariableop_resource3while_lstm_cell_20_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : 2V
)while/lstm_cell_20/BiasAdd/ReadVariableOp)while/lstm_cell_20/BiasAdd/ReadVariableOp2T
(while/lstm_cell_20/MatMul/ReadVariableOp(while/lstm_cell_20/MatMul/ReadVariableOp2X
*while/lstm_cell_20/MatMul_1/ReadVariableOp*while/lstm_cell_20/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
: 
£J
Ы
C__inference_lstm_20_layer_call_and_return_conditional_losses_110586

inputs>
+lstm_cell_20_matmul_readvariableop_resource:	‘@
-lstm_cell_20_matmul_1_readvariableop_resource:	U‘;
,lstm_cell_20_biasadd_readvariableop_resource:	‘
identityИҐ#lstm_cell_20/BiasAdd/ReadVariableOpҐ"lstm_cell_20/MatMul/ReadVariableOpҐ$lstm_cell_20/MatMul_1/ReadVariableOpҐwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Us
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€UR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Uw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Uc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskП
"lstm_cell_20/MatMul/ReadVariableOpReadVariableOp+lstm_cell_20_matmul_readvariableop_resource*
_output_shapes
:	‘*
dtype0Ц
lstm_cell_20/MatMulMatMulstrided_slice_2:output:0*lstm_cell_20/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘У
$lstm_cell_20/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_20_matmul_1_readvariableop_resource*
_output_shapes
:	U‘*
dtype0Р
lstm_cell_20/MatMul_1MatMulzeros:output:0,lstm_cell_20/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘М
lstm_cell_20/addAddV2lstm_cell_20/MatMul:product:0lstm_cell_20/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘Н
#lstm_cell_20/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_20_biasadd_readvariableop_resource*
_output_shapes	
:‘*
dtype0Х
lstm_cell_20/BiasAddBiasAddlstm_cell_20/add:z:0+lstm_cell_20/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘^
lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_20/splitSplit%lstm_cell_20/split/split_dim:output:0lstm_cell_20/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitn
lstm_cell_20/SigmoidSigmoidlstm_cell_20/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€Up
lstm_cell_20/Sigmoid_1Sigmoidlstm_cell_20/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€Uw
lstm_cell_20/mulMullstm_cell_20/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€Uh
lstm_cell_20/ReluRelulstm_cell_20/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€UЖ
lstm_cell_20/mul_1Mullstm_cell_20/Sigmoid:y:0lstm_cell_20/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€U{
lstm_cell_20/add_1AddV2lstm_cell_20/mul:z:0lstm_cell_20/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Up
lstm_cell_20/Sigmoid_2Sigmoidlstm_cell_20/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€Ue
lstm_cell_20/Relu_1Relulstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UК
lstm_cell_20/mul_2Mullstm_cell_20/Sigmoid_2:y:0!lstm_cell_20/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Un
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : В
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_20_matmul_readvariableop_resource-lstm_cell_20_matmul_1_readvariableop_resource,lstm_cell_20_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_110502*
condR
while_cond_110501*K
output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   ¬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€U*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€U*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€U[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€Uј
NoOpNoOp$^lstm_cell_20/BiasAdd/ReadVariableOp#^lstm_cell_20/MatMul/ReadVariableOp%^lstm_cell_20/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 2J
#lstm_cell_20/BiasAdd/ReadVariableOp#lstm_cell_20/BiasAdd/ReadVariableOp2H
"lstm_cell_20/MatMul/ReadVariableOp"lstm_cell_20/MatMul/ReadVariableOp2L
$lstm_cell_20/MatMul_1/ReadVariableOp$lstm_cell_20/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ф

e
F__inference_dropout_21_layer_call_and_return_conditional_losses_111175

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *„£?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€UC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Р
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€U*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *∆n\>™
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€Us
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:€€€€€€€€€Um
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:€€€€€€€€€U]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:€€€€€€€€€U"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€U:S O
+
_output_shapes
:€€€€€€€€€U
 
_user_specified_nameinputs
£J
Ы
C__inference_lstm_20_layer_call_and_return_conditional_losses_113154

inputs>
+lstm_cell_20_matmul_readvariableop_resource:	‘@
-lstm_cell_20_matmul_1_readvariableop_resource:	U‘;
,lstm_cell_20_biasadd_readvariableop_resource:	‘
identityИҐ#lstm_cell_20/BiasAdd/ReadVariableOpҐ"lstm_cell_20/MatMul/ReadVariableOpҐ$lstm_cell_20/MatMul_1/ReadVariableOpҐwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Us
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€UR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Uw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Uc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskП
"lstm_cell_20/MatMul/ReadVariableOpReadVariableOp+lstm_cell_20_matmul_readvariableop_resource*
_output_shapes
:	‘*
dtype0Ц
lstm_cell_20/MatMulMatMulstrided_slice_2:output:0*lstm_cell_20/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘У
$lstm_cell_20/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_20_matmul_1_readvariableop_resource*
_output_shapes
:	U‘*
dtype0Р
lstm_cell_20/MatMul_1MatMulzeros:output:0,lstm_cell_20/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘М
lstm_cell_20/addAddV2lstm_cell_20/MatMul:product:0lstm_cell_20/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘Н
#lstm_cell_20/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_20_biasadd_readvariableop_resource*
_output_shapes	
:‘*
dtype0Х
lstm_cell_20/BiasAddBiasAddlstm_cell_20/add:z:0+lstm_cell_20/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘^
lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_20/splitSplit%lstm_cell_20/split/split_dim:output:0lstm_cell_20/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitn
lstm_cell_20/SigmoidSigmoidlstm_cell_20/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€Up
lstm_cell_20/Sigmoid_1Sigmoidlstm_cell_20/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€Uw
lstm_cell_20/mulMullstm_cell_20/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€Uh
lstm_cell_20/ReluRelulstm_cell_20/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€UЖ
lstm_cell_20/mul_1Mullstm_cell_20/Sigmoid:y:0lstm_cell_20/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€U{
lstm_cell_20/add_1AddV2lstm_cell_20/mul:z:0lstm_cell_20/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Up
lstm_cell_20/Sigmoid_2Sigmoidlstm_cell_20/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€Ue
lstm_cell_20/Relu_1Relulstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UК
lstm_cell_20/mul_2Mullstm_cell_20/Sigmoid_2:y:0!lstm_cell_20/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Un
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : В
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_20_matmul_readvariableop_resource-lstm_cell_20_matmul_1_readvariableop_resource,lstm_cell_20_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_113070*
condR
while_cond_113069*K
output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   ¬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€U*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€U*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€U[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€Uј
NoOpNoOp$^lstm_cell_20/BiasAdd/ReadVariableOp#^lstm_cell_20/MatMul/ReadVariableOp%^lstm_cell_20/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 2J
#lstm_cell_20/BiasAdd/ReadVariableOp#lstm_cell_20/BiasAdd/ReadVariableOp2H
"lstm_cell_20/MatMul/ReadVariableOp"lstm_cell_20/MatMul/ReadVariableOp2L
$lstm_cell_20/MatMul_1/ReadVariableOp$lstm_cell_20/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
©
Ј
(__inference_lstm_20_layer_call_fn_112692
inputs_0
unknown:	‘
	unknown_0:	U‘
	unknown_1:	‘
identityИҐStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€U*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_20_layer_call_and_return_conditional_losses_109537|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€U`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs/0
’
Д
H__inference_lstm_cell_21_layer_call_and_return_conditional_losses_109950

inputs

states
states_11
matmul_readvariableop_resource:	U‘3
 matmul_1_readvariableop_resource:	U‘.
biasadd_readvariableop_resource:	‘
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	U‘*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	U‘*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:‘*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€UV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€UU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€UN
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€U_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€UK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Uc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€UZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€UZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€UС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€U
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€U
 
_user_specified_namestates:OK
'
_output_shapes
:€€€€€€€€€U
 
_user_specified_namestates
бJ
Э
C__inference_lstm_21_layer_call_and_return_conditional_losses_113511
inputs_0>
+lstm_cell_21_matmul_readvariableop_resource:	U‘@
-lstm_cell_21_matmul_1_readvariableop_resource:	U‘;
,lstm_cell_21_biasadd_readvariableop_resource:	‘
identityИҐ#lstm_cell_21/BiasAdd/ReadVariableOpҐ"lstm_cell_21/MatMul/ReadVariableOpҐ$lstm_cell_21/MatMul_1/ReadVariableOpҐwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Us
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€UR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Uw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Uc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€UD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€U*
shrink_axis_maskП
"lstm_cell_21/MatMul/ReadVariableOpReadVariableOp+lstm_cell_21_matmul_readvariableop_resource*
_output_shapes
:	U‘*
dtype0Ц
lstm_cell_21/MatMulMatMulstrided_slice_2:output:0*lstm_cell_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘У
$lstm_cell_21/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_21_matmul_1_readvariableop_resource*
_output_shapes
:	U‘*
dtype0Р
lstm_cell_21/MatMul_1MatMulzeros:output:0,lstm_cell_21/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘М
lstm_cell_21/addAddV2lstm_cell_21/MatMul:product:0lstm_cell_21/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘Н
#lstm_cell_21/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_21_biasadd_readvariableop_resource*
_output_shapes	
:‘*
dtype0Х
lstm_cell_21/BiasAddBiasAddlstm_cell_21/add:z:0+lstm_cell_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘^
lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_21/splitSplit%lstm_cell_21/split/split_dim:output:0lstm_cell_21/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitn
lstm_cell_21/SigmoidSigmoidlstm_cell_21/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€Up
lstm_cell_21/Sigmoid_1Sigmoidlstm_cell_21/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€Uw
lstm_cell_21/mulMullstm_cell_21/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€Uh
lstm_cell_21/ReluRelulstm_cell_21/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€UЖ
lstm_cell_21/mul_1Mullstm_cell_21/Sigmoid:y:0lstm_cell_21/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€U{
lstm_cell_21/add_1AddV2lstm_cell_21/mul:z:0lstm_cell_21/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Up
lstm_cell_21/Sigmoid_2Sigmoidlstm_cell_21/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€Ue
lstm_cell_21/Relu_1Relulstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UК
lstm_cell_21/mul_2Mullstm_cell_21/Sigmoid_2:y:0!lstm_cell_21/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Un
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : В
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_21_matmul_readvariableop_resource-lstm_cell_21_matmul_1_readvariableop_resource,lstm_cell_21_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_113427*
condR
while_cond_113426*K
output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   Ћ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€U*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€U*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€U[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Uј
NoOpNoOp$^lstm_cell_21/BiasAdd/ReadVariableOp#^lstm_cell_21/MatMul/ReadVariableOp%^lstm_cell_21/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€U: : : 2J
#lstm_cell_21/BiasAdd/ReadVariableOp#lstm_cell_21/BiasAdd/ReadVariableOp2H
"lstm_cell_21/MatMul/ReadVariableOp"lstm_cell_21/MatMul/ReadVariableOp2L
$lstm_cell_21/MatMul_1/ReadVariableOp$lstm_cell_21/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€U
"
_user_specified_name
inputs/0
О8
Е
C__inference_lstm_22_layer_call_and_return_conditional_losses_110237

inputs&
lstm_cell_22_110155:	U‘&
lstm_cell_22_110157:	U‘"
lstm_cell_22_110159:	‘
identityИҐ$lstm_cell_22/StatefulPartitionedCallҐwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Us
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€UR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Uw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Uc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€UD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€U*
shrink_axis_maskх
$lstm_cell_22/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_22_110155lstm_cell_22_110157lstm_cell_22_110159*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_22_layer_call_and_return_conditional_losses_110154n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ј
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_22_110155lstm_cell_22_110157lstm_cell_22_110159*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_110168*
condR
while_cond_110167*K
output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   Ћ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€U*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€U*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€U[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Uu
NoOpNoOp%^lstm_cell_22/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€U: : : 2L
$lstm_cell_22/StatefulPartitionedCall$lstm_cell_22/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€U
 
_user_specified_nameinputs
нP
с
&sequential_5_lstm_21_while_body_109156F
Bsequential_5_lstm_21_while_sequential_5_lstm_21_while_loop_counterL
Hsequential_5_lstm_21_while_sequential_5_lstm_21_while_maximum_iterations*
&sequential_5_lstm_21_while_placeholder,
(sequential_5_lstm_21_while_placeholder_1,
(sequential_5_lstm_21_while_placeholder_2,
(sequential_5_lstm_21_while_placeholder_3E
Asequential_5_lstm_21_while_sequential_5_lstm_21_strided_slice_1_0Б
}sequential_5_lstm_21_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_21_tensorarrayunstack_tensorlistfromtensor_0[
Hsequential_5_lstm_21_while_lstm_cell_21_matmul_readvariableop_resource_0:	U‘]
Jsequential_5_lstm_21_while_lstm_cell_21_matmul_1_readvariableop_resource_0:	U‘X
Isequential_5_lstm_21_while_lstm_cell_21_biasadd_readvariableop_resource_0:	‘'
#sequential_5_lstm_21_while_identity)
%sequential_5_lstm_21_while_identity_1)
%sequential_5_lstm_21_while_identity_2)
%sequential_5_lstm_21_while_identity_3)
%sequential_5_lstm_21_while_identity_4)
%sequential_5_lstm_21_while_identity_5C
?sequential_5_lstm_21_while_sequential_5_lstm_21_strided_slice_1
{sequential_5_lstm_21_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_21_tensorarrayunstack_tensorlistfromtensorY
Fsequential_5_lstm_21_while_lstm_cell_21_matmul_readvariableop_resource:	U‘[
Hsequential_5_lstm_21_while_lstm_cell_21_matmul_1_readvariableop_resource:	U‘V
Gsequential_5_lstm_21_while_lstm_cell_21_biasadd_readvariableop_resource:	‘ИҐ>sequential_5/lstm_21/while/lstm_cell_21/BiasAdd/ReadVariableOpҐ=sequential_5/lstm_21/while/lstm_cell_21/MatMul/ReadVariableOpҐ?sequential_5/lstm_21/while/lstm_cell_21/MatMul_1/ReadVariableOpЭ
Lsequential_5/lstm_21/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   П
>sequential_5/lstm_21/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}sequential_5_lstm_21_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_21_tensorarrayunstack_tensorlistfromtensor_0&sequential_5_lstm_21_while_placeholderUsequential_5/lstm_21/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€U*
element_dtype0«
=sequential_5/lstm_21/while/lstm_cell_21/MatMul/ReadVariableOpReadVariableOpHsequential_5_lstm_21_while_lstm_cell_21_matmul_readvariableop_resource_0*
_output_shapes
:	U‘*
dtype0щ
.sequential_5/lstm_21/while/lstm_cell_21/MatMulMatMulEsequential_5/lstm_21/while/TensorArrayV2Read/TensorListGetItem:item:0Esequential_5/lstm_21/while/lstm_cell_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘Ћ
?sequential_5/lstm_21/while/lstm_cell_21/MatMul_1/ReadVariableOpReadVariableOpJsequential_5_lstm_21_while_lstm_cell_21_matmul_1_readvariableop_resource_0*
_output_shapes
:	U‘*
dtype0а
0sequential_5/lstm_21/while/lstm_cell_21/MatMul_1MatMul(sequential_5_lstm_21_while_placeholder_2Gsequential_5/lstm_21/while/lstm_cell_21/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘Ё
+sequential_5/lstm_21/while/lstm_cell_21/addAddV28sequential_5/lstm_21/while/lstm_cell_21/MatMul:product:0:sequential_5/lstm_21/while/lstm_cell_21/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘≈
>sequential_5/lstm_21/while/lstm_cell_21/BiasAdd/ReadVariableOpReadVariableOpIsequential_5_lstm_21_while_lstm_cell_21_biasadd_readvariableop_resource_0*
_output_shapes	
:‘*
dtype0ж
/sequential_5/lstm_21/while/lstm_cell_21/BiasAddBiasAdd/sequential_5/lstm_21/while/lstm_cell_21/add:z:0Fsequential_5/lstm_21/while/lstm_cell_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘y
7sequential_5/lstm_21/while/lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ѓ
-sequential_5/lstm_21/while/lstm_cell_21/splitSplit@sequential_5/lstm_21/while/lstm_cell_21/split/split_dim:output:08sequential_5/lstm_21/while/lstm_cell_21/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_split§
/sequential_5/lstm_21/while/lstm_cell_21/SigmoidSigmoid6sequential_5/lstm_21/while/lstm_cell_21/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€U¶
1sequential_5/lstm_21/while/lstm_cell_21/Sigmoid_1Sigmoid6sequential_5/lstm_21/while/lstm_cell_21/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€U≈
+sequential_5/lstm_21/while/lstm_cell_21/mulMul5sequential_5/lstm_21/while/lstm_cell_21/Sigmoid_1:y:0(sequential_5_lstm_21_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€UЮ
,sequential_5/lstm_21/while/lstm_cell_21/ReluRelu6sequential_5/lstm_21/while/lstm_cell_21/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€U„
-sequential_5/lstm_21/while/lstm_cell_21/mul_1Mul3sequential_5/lstm_21/while/lstm_cell_21/Sigmoid:y:0:sequential_5/lstm_21/while/lstm_cell_21/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Uћ
-sequential_5/lstm_21/while/lstm_cell_21/add_1AddV2/sequential_5/lstm_21/while/lstm_cell_21/mul:z:01sequential_5/lstm_21/while/lstm_cell_21/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€U¶
1sequential_5/lstm_21/while/lstm_cell_21/Sigmoid_2Sigmoid6sequential_5/lstm_21/while/lstm_cell_21/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€UЫ
.sequential_5/lstm_21/while/lstm_cell_21/Relu_1Relu1sequential_5/lstm_21/while/lstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Uџ
-sequential_5/lstm_21/while/lstm_cell_21/mul_2Mul5sequential_5/lstm_21/while/lstm_cell_21/Sigmoid_2:y:0<sequential_5/lstm_21/while/lstm_cell_21/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UЩ
?sequential_5/lstm_21/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(sequential_5_lstm_21_while_placeholder_1&sequential_5_lstm_21_while_placeholder1sequential_5/lstm_21/while/lstm_cell_21/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“b
 sequential_5/lstm_21/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ы
sequential_5/lstm_21/while/addAddV2&sequential_5_lstm_21_while_placeholder)sequential_5/lstm_21/while/add/y:output:0*
T0*
_output_shapes
: d
"sequential_5/lstm_21/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :ї
 sequential_5/lstm_21/while/add_1AddV2Bsequential_5_lstm_21_while_sequential_5_lstm_21_while_loop_counter+sequential_5/lstm_21/while/add_1/y:output:0*
T0*
_output_shapes
: Ш
#sequential_5/lstm_21/while/IdentityIdentity$sequential_5/lstm_21/while/add_1:z:0 ^sequential_5/lstm_21/while/NoOp*
T0*
_output_shapes
: Њ
%sequential_5/lstm_21/while/Identity_1IdentityHsequential_5_lstm_21_while_sequential_5_lstm_21_while_maximum_iterations ^sequential_5/lstm_21/while/NoOp*
T0*
_output_shapes
: Ш
%sequential_5/lstm_21/while/Identity_2Identity"sequential_5/lstm_21/while/add:z:0 ^sequential_5/lstm_21/while/NoOp*
T0*
_output_shapes
: ≈
%sequential_5/lstm_21/while/Identity_3IdentityOsequential_5/lstm_21/while/TensorArrayV2Write/TensorListSetItem:output_handle:0 ^sequential_5/lstm_21/while/NoOp*
T0*
_output_shapes
: Є
%sequential_5/lstm_21/while/Identity_4Identity1sequential_5/lstm_21/while/lstm_cell_21/mul_2:z:0 ^sequential_5/lstm_21/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€UЄ
%sequential_5/lstm_21/while/Identity_5Identity1sequential_5/lstm_21/while/lstm_cell_21/add_1:z:0 ^sequential_5/lstm_21/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€U§
sequential_5/lstm_21/while/NoOpNoOp?^sequential_5/lstm_21/while/lstm_cell_21/BiasAdd/ReadVariableOp>^sequential_5/lstm_21/while/lstm_cell_21/MatMul/ReadVariableOp@^sequential_5/lstm_21/while/lstm_cell_21/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "S
#sequential_5_lstm_21_while_identity,sequential_5/lstm_21/while/Identity:output:0"W
%sequential_5_lstm_21_while_identity_1.sequential_5/lstm_21/while/Identity_1:output:0"W
%sequential_5_lstm_21_while_identity_2.sequential_5/lstm_21/while/Identity_2:output:0"W
%sequential_5_lstm_21_while_identity_3.sequential_5/lstm_21/while/Identity_3:output:0"W
%sequential_5_lstm_21_while_identity_4.sequential_5/lstm_21/while/Identity_4:output:0"W
%sequential_5_lstm_21_while_identity_5.sequential_5/lstm_21/while/Identity_5:output:0"Ф
Gsequential_5_lstm_21_while_lstm_cell_21_biasadd_readvariableop_resourceIsequential_5_lstm_21_while_lstm_cell_21_biasadd_readvariableop_resource_0"Ц
Hsequential_5_lstm_21_while_lstm_cell_21_matmul_1_readvariableop_resourceJsequential_5_lstm_21_while_lstm_cell_21_matmul_1_readvariableop_resource_0"Т
Fsequential_5_lstm_21_while_lstm_cell_21_matmul_readvariableop_resourceHsequential_5_lstm_21_while_lstm_cell_21_matmul_readvariableop_resource_0"Д
?sequential_5_lstm_21_while_sequential_5_lstm_21_strided_slice_1Asequential_5_lstm_21_while_sequential_5_lstm_21_strided_slice_1_0"ь
{sequential_5_lstm_21_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_21_tensorarrayunstack_tensorlistfromtensor}sequential_5_lstm_21_while_tensorarrayv2read_tensorlistgetitem_sequential_5_lstm_21_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : 2А
>sequential_5/lstm_21/while/lstm_cell_21/BiasAdd/ReadVariableOp>sequential_5/lstm_21/while/lstm_cell_21/BiasAdd/ReadVariableOp2~
=sequential_5/lstm_21/while/lstm_cell_21/MatMul/ReadVariableOp=sequential_5/lstm_21/while/lstm_cell_21/MatMul/ReadVariableOp2В
?sequential_5/lstm_21/while/lstm_cell_21/MatMul_1/ReadVariableOp?sequential_5/lstm_21/while/lstm_cell_21/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
: 
°
G
+__inference_dropout_22_layer_call_fn_114588

inputs
identity±
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€U* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_22_layer_call_and_return_conditional_losses_110913`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€U"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€U:O K
'
_output_shapes
:€€€€€€€€€U
 
_user_specified_nameinputs
ђ 
е
H__inference_sequential_5_layer_call_and_return_conditional_losses_111678
lstm_20_input!
lstm_20_111648:	‘!
lstm_20_111650:	U‘
lstm_20_111652:	‘!
lstm_21_111656:	U‘!
lstm_21_111658:	U‘
lstm_21_111660:	‘!
lstm_22_111664:	U‘!
lstm_22_111666:	U‘
lstm_22_111668:	‘ 
dense_5_111672:U
dense_5_111674:
identityИҐdense_5/StatefulPartitionedCallҐlstm_20/StatefulPartitionedCallҐlstm_21/StatefulPartitionedCallҐlstm_22/StatefulPartitionedCallЙ
lstm_20/StatefulPartitionedCallStatefulPartitionedCalllstm_20_inputlstm_20_111648lstm_20_111650lstm_20_111652*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€U*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_20_layer_call_and_return_conditional_losses_110586в
dropout_20/PartitionedCallPartitionedCall(lstm_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€U* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_20_layer_call_and_return_conditional_losses_110599Я
lstm_21/StatefulPartitionedCallStatefulPartitionedCall#dropout_20/PartitionedCall:output:0lstm_21_111656lstm_21_111658lstm_21_111660*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€U*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_21_layer_call_and_return_conditional_losses_110743в
dropout_21/PartitionedCallPartitionedCall(lstm_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€U* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_21_layer_call_and_return_conditional_losses_110756Ы
lstm_22/StatefulPartitionedCallStatefulPartitionedCall#dropout_21/PartitionedCall:output:0lstm_22_111664lstm_22_111666lstm_22_111668*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€U*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_22_layer_call_and_return_conditional_losses_110900ё
dropout_22/PartitionedCallPartitionedCall(lstm_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€U* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_22_layer_call_and_return_conditional_losses_110913Й
dense_5/StatefulPartitionedCallStatefulPartitionedCall#dropout_22/PartitionedCall:output:0dense_5_111672dense_5_111674*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_110925w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ќ
NoOpNoOp ^dense_5/StatefulPartitionedCall ^lstm_20/StatefulPartitionedCall ^lstm_21/StatefulPartitionedCall ^lstm_22/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:€€€€€€€€€: : : : : : : : : : : 2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
lstm_20/StatefulPartitionedCalllstm_20/StatefulPartitionedCall2B
lstm_21/StatefulPartitionedCalllstm_21/StatefulPartitionedCall2B
lstm_22/StatefulPartitionedCalllstm_22/StatefulPartitionedCall:Z V
+
_output_shapes
:€€€€€€€€€
'
_user_specified_namelstm_20_input
е$
Ќ
H__inference_sequential_5_layer_call_and_return_conditional_losses_111593

inputs!
lstm_20_111563:	‘!
lstm_20_111565:	U‘
lstm_20_111567:	‘!
lstm_21_111571:	U‘!
lstm_21_111573:	U‘
lstm_21_111575:	‘!
lstm_22_111579:	U‘!
lstm_22_111581:	U‘
lstm_22_111583:	‘ 
dense_5_111587:U
dense_5_111589:
identityИҐdense_5/StatefulPartitionedCallҐ"dropout_20/StatefulPartitionedCallҐ"dropout_21/StatefulPartitionedCallҐ"dropout_22/StatefulPartitionedCallҐlstm_20/StatefulPartitionedCallҐlstm_21/StatefulPartitionedCallҐlstm_22/StatefulPartitionedCallВ
lstm_20/StatefulPartitionedCallStatefulPartitionedCallinputslstm_20_111563lstm_20_111565lstm_20_111567*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€U*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_20_layer_call_and_return_conditional_losses_111522т
"dropout_20/StatefulPartitionedCallStatefulPartitionedCall(lstm_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€U* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_20_layer_call_and_return_conditional_losses_111363І
lstm_21/StatefulPartitionedCallStatefulPartitionedCall+dropout_20/StatefulPartitionedCall:output:0lstm_21_111571lstm_21_111573lstm_21_111575*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€U*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_21_layer_call_and_return_conditional_losses_111334Ч
"dropout_21/StatefulPartitionedCallStatefulPartitionedCall(lstm_21/StatefulPartitionedCall:output:0#^dropout_20/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€U* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_21_layer_call_and_return_conditional_losses_111175£
lstm_22/StatefulPartitionedCallStatefulPartitionedCall+dropout_21/StatefulPartitionedCall:output:0lstm_22_111579lstm_22_111581lstm_22_111583*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€U*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_22_layer_call_and_return_conditional_losses_111146У
"dropout_22/StatefulPartitionedCallStatefulPartitionedCall(lstm_22/StatefulPartitionedCall:output:0#^dropout_21/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€U* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_22_layer_call_and_return_conditional_losses_110987С
dense_5/StatefulPartitionedCallStatefulPartitionedCall+dropout_22/StatefulPartitionedCall:output:0dense_5_111587dense_5_111589*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_110925w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€љ
NoOpNoOp ^dense_5/StatefulPartitionedCall#^dropout_20/StatefulPartitionedCall#^dropout_21/StatefulPartitionedCall#^dropout_22/StatefulPartitionedCall ^lstm_20/StatefulPartitionedCall ^lstm_21/StatefulPartitionedCall ^lstm_22/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:€€€€€€€€€: : : : : : : : : : : 2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2H
"dropout_20/StatefulPartitionedCall"dropout_20/StatefulPartitionedCall2H
"dropout_21/StatefulPartitionedCall"dropout_21/StatefulPartitionedCall2H
"dropout_22/StatefulPartitionedCall"dropout_22/StatefulPartitionedCall2B
lstm_20/StatefulPartitionedCalllstm_20/StatefulPartitionedCall2B
lstm_21/StatefulPartitionedCalllstm_21/StatefulPartitionedCall2B
lstm_22/StatefulPartitionedCalllstm_22/StatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
µ
√
while_cond_111249
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_111249___redundant_placeholder04
0while_while_cond_111249___redundant_placeholder14
0while_while_cond_111249___redundant_placeholder24
0while_while_cond_111249___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€U:€€€€€€€€€U: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
:
µ
√
while_cond_113426
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_113426___redundant_placeholder04
0while_while_cond_113426___redundant_placeholder14
0while_while_cond_113426___redundant_placeholder24
0while_while_cond_113426___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€U:€€€€€€€€€U: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
:
В
з
&sequential_5_lstm_20_while_cond_109015F
Bsequential_5_lstm_20_while_sequential_5_lstm_20_while_loop_counterL
Hsequential_5_lstm_20_while_sequential_5_lstm_20_while_maximum_iterations*
&sequential_5_lstm_20_while_placeholder,
(sequential_5_lstm_20_while_placeholder_1,
(sequential_5_lstm_20_while_placeholder_2,
(sequential_5_lstm_20_while_placeholder_3H
Dsequential_5_lstm_20_while_less_sequential_5_lstm_20_strided_slice_1^
Zsequential_5_lstm_20_while_sequential_5_lstm_20_while_cond_109015___redundant_placeholder0^
Zsequential_5_lstm_20_while_sequential_5_lstm_20_while_cond_109015___redundant_placeholder1^
Zsequential_5_lstm_20_while_sequential_5_lstm_20_while_cond_109015___redundant_placeholder2^
Zsequential_5_lstm_20_while_sequential_5_lstm_20_while_cond_109015___redundant_placeholder3'
#sequential_5_lstm_20_while_identity
ґ
sequential_5/lstm_20/while/LessLess&sequential_5_lstm_20_while_placeholderDsequential_5_lstm_20_while_less_sequential_5_lstm_20_strided_slice_1*
T0*
_output_shapes
: u
#sequential_5/lstm_20/while/IdentityIdentity#sequential_5/lstm_20/while/Less:z:0*
T0
*
_output_shapes
: "S
#sequential_5_lstm_20_while_identity,sequential_5/lstm_20/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€U:€€€€€€€€€U: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
:
р

£
-__inference_sequential_5_layer_call_fn_110957
lstm_20_input
unknown:	‘
	unknown_0:	U‘
	unknown_1:	‘
	unknown_2:	U‘
	unknown_3:	U‘
	unknown_4:	‘
	unknown_5:	U‘
	unknown_6:	U‘
	unknown_7:	‘
	unknown_8:U
	unknown_9:
identityИҐStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCalllstm_20_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_5_layer_call_and_return_conditional_losses_110932o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:€€€€€€€€€: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:€€€€€€€€€
'
_user_specified_namelstm_20_input
µ
√
while_cond_111061
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_111061___redundant_placeholder04
0while_while_cond_111061___redundant_placeholder14
0while_while_cond_111061___redundant_placeholder24
0while_while_cond_111061___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€U:€€€€€€€€€U: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
:
П
Ј
(__inference_lstm_22_layer_call_fn_113989
inputs_0
unknown:	U‘
	unknown_0:	U‘
	unknown_1:	‘
identityИҐStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€U*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_22_layer_call_and_return_conditional_losses_110428o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€U`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€U: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€U
"
_user_specified_name
inputs/0
Ф

e
F__inference_dropout_21_layer_call_and_return_conditional_losses_113967

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *„£?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€UC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Р
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€U*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *∆n\>™
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€Us
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:€€€€€€€€€Um
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:€€€€€€€€€U]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:€€€€€€€€€U"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€U:S O
+
_output_shapes
:€€€€€€€€€U
 
_user_specified_nameinputs
ж"
г
while_body_109818
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_21_109842_0:	U‘.
while_lstm_cell_21_109844_0:	U‘*
while_lstm_cell_21_109846_0:	‘
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_21_109842:	U‘,
while_lstm_cell_21_109844:	U‘(
while_lstm_cell_21_109846:	‘ИҐ*while/lstm_cell_21/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€U*
element_dtype0≥
*while/lstm_cell_21/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_21_109842_0while_lstm_cell_21_109844_0while_lstm_cell_21_109846_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_21_layer_call_and_return_conditional_losses_109804№
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_21/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Р
while/Identity_4Identity3while/lstm_cell_21/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€UР
while/Identity_5Identity3while/lstm_cell_21/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€Uy

while/NoOpNoOp+^while/lstm_cell_21/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_21_109842while_lstm_cell_21_109842_0"8
while_lstm_cell_21_109844while_lstm_cell_21_109844_0"8
while_lstm_cell_21_109846while_lstm_cell_21_109846_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : 2X
*while/lstm_cell_21/StatefulPartitionedCall*while/lstm_cell_21/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
: 
Т8
Е
C__inference_lstm_21_layer_call_and_return_conditional_losses_109887

inputs&
lstm_cell_21_109805:	U‘&
lstm_cell_21_109807:	U‘"
lstm_cell_21_109809:	‘
identityИҐ$lstm_cell_21/StatefulPartitionedCallҐwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Us
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€UR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Uw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Uc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€UD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€U*
shrink_axis_maskх
$lstm_cell_21/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_21_109805lstm_cell_21_109807lstm_cell_21_109809*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_21_layer_call_and_return_conditional_losses_109804n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ј
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_21_109805lstm_cell_21_109807lstm_cell_21_109809*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_109818*
condR
while_cond_109817*K
output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   Ћ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€U*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€U*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€U[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Uu
NoOpNoOp%^lstm_cell_21/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€U: : : 2L
$lstm_cell_21/StatefulPartitionedCall$lstm_cell_21/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€U
 
_user_specified_nameinputs
Ц

г
lstm_22_while_cond_112582,
(lstm_22_while_lstm_22_while_loop_counter2
.lstm_22_while_lstm_22_while_maximum_iterations
lstm_22_while_placeholder
lstm_22_while_placeholder_1
lstm_22_while_placeholder_2
lstm_22_while_placeholder_3.
*lstm_22_while_less_lstm_22_strided_slice_1D
@lstm_22_while_lstm_22_while_cond_112582___redundant_placeholder0D
@lstm_22_while_lstm_22_while_cond_112582___redundant_placeholder1D
@lstm_22_while_lstm_22_while_cond_112582___redundant_placeholder2D
@lstm_22_while_lstm_22_while_cond_112582___redundant_placeholder3
lstm_22_while_identity
В
lstm_22/while/LessLesslstm_22_while_placeholder*lstm_22_while_less_lstm_22_strided_slice_1*
T0*
_output_shapes
: [
lstm_22/while/IdentityIdentitylstm_22/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_22_while_identitylstm_22/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€U:€€€€€€€€€U: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
:
й
d
F__inference_dropout_20_layer_call_and_return_conditional_losses_113312

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:€€€€€€€€€U_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:€€€€€€€€€U"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€U:S O
+
_output_shapes
:€€€€€€€€€U
 
_user_specified_nameinputs
®J
Ы
C__inference_lstm_22_layer_call_and_return_conditional_losses_114440

inputs>
+lstm_cell_22_matmul_readvariableop_resource:	U‘@
-lstm_cell_22_matmul_1_readvariableop_resource:	U‘;
,lstm_cell_22_biasadd_readvariableop_resource:	‘
identityИҐ#lstm_cell_22/BiasAdd/ReadVariableOpҐ"lstm_cell_22/MatMul/ReadVariableOpҐ$lstm_cell_22/MatMul_1/ReadVariableOpҐwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Us
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€UR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Uw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Uc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€UD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€U*
shrink_axis_maskП
"lstm_cell_22/MatMul/ReadVariableOpReadVariableOp+lstm_cell_22_matmul_readvariableop_resource*
_output_shapes
:	U‘*
dtype0Ц
lstm_cell_22/MatMulMatMulstrided_slice_2:output:0*lstm_cell_22/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘У
$lstm_cell_22/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_22_matmul_1_readvariableop_resource*
_output_shapes
:	U‘*
dtype0Р
lstm_cell_22/MatMul_1MatMulzeros:output:0,lstm_cell_22/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘М
lstm_cell_22/addAddV2lstm_cell_22/MatMul:product:0lstm_cell_22/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘Н
#lstm_cell_22/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_22_biasadd_readvariableop_resource*
_output_shapes	
:‘*
dtype0Х
lstm_cell_22/BiasAddBiasAddlstm_cell_22/add:z:0+lstm_cell_22/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘^
lstm_cell_22/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_22/splitSplit%lstm_cell_22/split/split_dim:output:0lstm_cell_22/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitn
lstm_cell_22/SigmoidSigmoidlstm_cell_22/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€Up
lstm_cell_22/Sigmoid_1Sigmoidlstm_cell_22/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€Uw
lstm_cell_22/mulMullstm_cell_22/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€Uh
lstm_cell_22/ReluRelulstm_cell_22/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€UЖ
lstm_cell_22/mul_1Mullstm_cell_22/Sigmoid:y:0lstm_cell_22/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€U{
lstm_cell_22/add_1AddV2lstm_cell_22/mul:z:0lstm_cell_22/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Up
lstm_cell_22/Sigmoid_2Sigmoidlstm_cell_22/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€Ue
lstm_cell_22/Relu_1Relulstm_cell_22/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UК
lstm_cell_22/mul_2Mullstm_cell_22/Sigmoid_2:y:0!lstm_cell_22/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Un
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : В
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_22_matmul_readvariableop_resource-lstm_cell_22_matmul_1_readvariableop_resource,lstm_cell_22_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_114356*
condR
while_cond_114355*K
output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   ¬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€U*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€U*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€U[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Uј
NoOpNoOp$^lstm_cell_22/BiasAdd/ReadVariableOp#^lstm_cell_22/MatMul/ReadVariableOp%^lstm_cell_22/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€U: : : 2J
#lstm_cell_22/BiasAdd/ReadVariableOp#lstm_cell_22/BiasAdd/ReadVariableOp2H
"lstm_cell_22/MatMul/ReadVariableOp"lstm_cell_22/MatMul/ReadVariableOp2L
$lstm_cell_22/MatMul_1/ReadVariableOp$lstm_cell_22/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€U
 
_user_specified_nameinputs
М8
–
while_body_112784
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_20_matmul_readvariableop_resource_0:	‘H
5while_lstm_cell_20_matmul_1_readvariableop_resource_0:	U‘C
4while_lstm_cell_20_biasadd_readvariableop_resource_0:	‘
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_20_matmul_readvariableop_resource:	‘F
3while_lstm_cell_20_matmul_1_readvariableop_resource:	U‘A
2while_lstm_cell_20_biasadd_readvariableop_resource:	‘ИҐ)while/lstm_cell_20/BiasAdd/ReadVariableOpҐ(while/lstm_cell_20/MatMul/ReadVariableOpҐ*while/lstm_cell_20/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Э
(while/lstm_cell_20/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_20_matmul_readvariableop_resource_0*
_output_shapes
:	‘*
dtype0Ї
while/lstm_cell_20/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_20/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘°
*while/lstm_cell_20/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_20_matmul_1_readvariableop_resource_0*
_output_shapes
:	U‘*
dtype0°
while/lstm_cell_20/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_20/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘Ю
while/lstm_cell_20/addAddV2#while/lstm_cell_20/MatMul:product:0%while/lstm_cell_20/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘Ы
)while/lstm_cell_20/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_20_biasadd_readvariableop_resource_0*
_output_shapes	
:‘*
dtype0І
while/lstm_cell_20/BiasAddBiasAddwhile/lstm_cell_20/add:z:01while/lstm_cell_20/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘d
"while/lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_20/splitSplit+while/lstm_cell_20/split/split_dim:output:0#while/lstm_cell_20/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitz
while/lstm_cell_20/SigmoidSigmoid!while/lstm_cell_20/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€U|
while/lstm_cell_20/Sigmoid_1Sigmoid!while/lstm_cell_20/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€UЖ
while/lstm_cell_20/mulMul while/lstm_cell_20/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€Ut
while/lstm_cell_20/ReluRelu!while/lstm_cell_20/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€UШ
while/lstm_cell_20/mul_1Mulwhile/lstm_cell_20/Sigmoid:y:0%while/lstm_cell_20/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UН
while/lstm_cell_20/add_1AddV2while/lstm_cell_20/mul:z:0while/lstm_cell_20/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€U|
while/lstm_cell_20/Sigmoid_2Sigmoid!while/lstm_cell_20/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€Uq
while/lstm_cell_20/Relu_1Reluwhile/lstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UЬ
while/lstm_cell_20/mul_2Mul while/lstm_cell_20/Sigmoid_2:y:0'while/lstm_cell_20/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€U≈
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_20/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_20/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€Uy
while/Identity_5Identitywhile/lstm_cell_20/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€U–

while/NoOpNoOp*^while/lstm_cell_20/BiasAdd/ReadVariableOp)^while/lstm_cell_20/MatMul/ReadVariableOp+^while/lstm_cell_20/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_20_biasadd_readvariableop_resource4while_lstm_cell_20_biasadd_readvariableop_resource_0"l
3while_lstm_cell_20_matmul_1_readvariableop_resource5while_lstm_cell_20_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_20_matmul_readvariableop_resource3while_lstm_cell_20_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : 2V
)while/lstm_cell_20/BiasAdd/ReadVariableOp)while/lstm_cell_20/BiasAdd/ReadVariableOp2T
(while/lstm_cell_20/MatMul/ReadVariableOp(while/lstm_cell_20/MatMul/ReadVariableOp2X
*while/lstm_cell_20/MatMul_1/ReadVariableOp*while/lstm_cell_20/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
: 
©
Ј
(__inference_lstm_21_layer_call_fn_113335
inputs_0
unknown:	U‘
	unknown_0:	U‘
	unknown_1:	‘
identityИҐStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€U*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_21_layer_call_and_return_conditional_losses_109887|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€U`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€U: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€U
"
_user_specified_name
inputs/0
µ
√
while_cond_109467
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_109467___redundant_placeholder04
0while_while_cond_109467___redundant_placeholder14
0while_while_cond_109467___redundant_placeholder24
0while_while_cond_109467___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€U:€€€€€€€€€U: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
:
М8
–
while_body_114499
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_22_matmul_readvariableop_resource_0:	U‘H
5while_lstm_cell_22_matmul_1_readvariableop_resource_0:	U‘C
4while_lstm_cell_22_biasadd_readvariableop_resource_0:	‘
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_22_matmul_readvariableop_resource:	U‘F
3while_lstm_cell_22_matmul_1_readvariableop_resource:	U‘A
2while_lstm_cell_22_biasadd_readvariableop_resource:	‘ИҐ)while/lstm_cell_22/BiasAdd/ReadVariableOpҐ(while/lstm_cell_22/MatMul/ReadVariableOpҐ*while/lstm_cell_22/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€U*
element_dtype0Э
(while/lstm_cell_22/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_22_matmul_readvariableop_resource_0*
_output_shapes
:	U‘*
dtype0Ї
while/lstm_cell_22/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_22/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘°
*while/lstm_cell_22/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_22_matmul_1_readvariableop_resource_0*
_output_shapes
:	U‘*
dtype0°
while/lstm_cell_22/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_22/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘Ю
while/lstm_cell_22/addAddV2#while/lstm_cell_22/MatMul:product:0%while/lstm_cell_22/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘Ы
)while/lstm_cell_22/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_22_biasadd_readvariableop_resource_0*
_output_shapes	
:‘*
dtype0І
while/lstm_cell_22/BiasAddBiasAddwhile/lstm_cell_22/add:z:01while/lstm_cell_22/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘d
"while/lstm_cell_22/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_22/splitSplit+while/lstm_cell_22/split/split_dim:output:0#while/lstm_cell_22/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitz
while/lstm_cell_22/SigmoidSigmoid!while/lstm_cell_22/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€U|
while/lstm_cell_22/Sigmoid_1Sigmoid!while/lstm_cell_22/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€UЖ
while/lstm_cell_22/mulMul while/lstm_cell_22/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€Ut
while/lstm_cell_22/ReluRelu!while/lstm_cell_22/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€UШ
while/lstm_cell_22/mul_1Mulwhile/lstm_cell_22/Sigmoid:y:0%while/lstm_cell_22/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UН
while/lstm_cell_22/add_1AddV2while/lstm_cell_22/mul:z:0while/lstm_cell_22/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€U|
while/lstm_cell_22/Sigmoid_2Sigmoid!while/lstm_cell_22/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€Uq
while/lstm_cell_22/Relu_1Reluwhile/lstm_cell_22/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UЬ
while/lstm_cell_22/mul_2Mul while/lstm_cell_22/Sigmoid_2:y:0'while/lstm_cell_22/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€U≈
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_22/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_22/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€Uy
while/Identity_5Identitywhile/lstm_cell_22/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€U–

while/NoOpNoOp*^while/lstm_cell_22/BiasAdd/ReadVariableOp)^while/lstm_cell_22/MatMul/ReadVariableOp+^while/lstm_cell_22/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_22_biasadd_readvariableop_resource4while_lstm_cell_22_biasadd_readvariableop_resource_0"l
3while_lstm_cell_22_matmul_1_readvariableop_resource5while_lstm_cell_22_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_22_matmul_readvariableop_resource3while_lstm_cell_22_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : 2V
)while/lstm_cell_22/BiasAdd/ReadVariableOp)while/lstm_cell_22/BiasAdd/ReadVariableOp2T
(while/lstm_cell_22/MatMul/ReadVariableOp(while/lstm_cell_22/MatMul/ReadVariableOp2X
*while/lstm_cell_22/MatMul_1/ReadVariableOp*while/lstm_cell_22/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
: 
£J
Ы
C__inference_lstm_21_layer_call_and_return_conditional_losses_113797

inputs>
+lstm_cell_21_matmul_readvariableop_resource:	U‘@
-lstm_cell_21_matmul_1_readvariableop_resource:	U‘;
,lstm_cell_21_biasadd_readvariableop_resource:	‘
identityИҐ#lstm_cell_21/BiasAdd/ReadVariableOpҐ"lstm_cell_21/MatMul/ReadVariableOpҐ$lstm_cell_21/MatMul_1/ReadVariableOpҐwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Us
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€UR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Uw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Uc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€UD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€U*
shrink_axis_maskП
"lstm_cell_21/MatMul/ReadVariableOpReadVariableOp+lstm_cell_21_matmul_readvariableop_resource*
_output_shapes
:	U‘*
dtype0Ц
lstm_cell_21/MatMulMatMulstrided_slice_2:output:0*lstm_cell_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘У
$lstm_cell_21/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_21_matmul_1_readvariableop_resource*
_output_shapes
:	U‘*
dtype0Р
lstm_cell_21/MatMul_1MatMulzeros:output:0,lstm_cell_21/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘М
lstm_cell_21/addAddV2lstm_cell_21/MatMul:product:0lstm_cell_21/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘Н
#lstm_cell_21/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_21_biasadd_readvariableop_resource*
_output_shapes	
:‘*
dtype0Х
lstm_cell_21/BiasAddBiasAddlstm_cell_21/add:z:0+lstm_cell_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘^
lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_21/splitSplit%lstm_cell_21/split/split_dim:output:0lstm_cell_21/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitn
lstm_cell_21/SigmoidSigmoidlstm_cell_21/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€Up
lstm_cell_21/Sigmoid_1Sigmoidlstm_cell_21/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€Uw
lstm_cell_21/mulMullstm_cell_21/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€Uh
lstm_cell_21/ReluRelulstm_cell_21/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€UЖ
lstm_cell_21/mul_1Mullstm_cell_21/Sigmoid:y:0lstm_cell_21/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€U{
lstm_cell_21/add_1AddV2lstm_cell_21/mul:z:0lstm_cell_21/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Up
lstm_cell_21/Sigmoid_2Sigmoidlstm_cell_21/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€Ue
lstm_cell_21/Relu_1Relulstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UК
lstm_cell_21/mul_2Mullstm_cell_21/Sigmoid_2:y:0!lstm_cell_21/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Un
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : В
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_21_matmul_readvariableop_resource-lstm_cell_21_matmul_1_readvariableop_resource,lstm_cell_21_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_113713*
condR
while_cond_113712*K
output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   ¬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€U*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€U*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€U[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€Uј
NoOpNoOp$^lstm_cell_21/BiasAdd/ReadVariableOp#^lstm_cell_21/MatMul/ReadVariableOp%^lstm_cell_21/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€U: : : 2J
#lstm_cell_21/BiasAdd/ReadVariableOp#lstm_cell_21/BiasAdd/ReadVariableOp2H
"lstm_cell_21/MatMul/ReadVariableOp"lstm_cell_21/MatMul/ReadVariableOp2L
$lstm_cell_21/MatMul_1/ReadVariableOp$lstm_cell_21/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€U
 
_user_specified_nameinputs
џ

Ь
-__inference_sequential_5_layer_call_fn_111773

inputs
unknown:	‘
	unknown_0:	U‘
	unknown_1:	‘
	unknown_2:	U‘
	unknown_3:	U‘
	unknown_4:	‘
	unknown_5:	U‘
	unknown_6:	U‘
	unknown_7:	‘
	unknown_8:U
	unknown_9:
identityИҐStatefulPartitionedCall“
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_5_layer_call_and_return_conditional_losses_110932o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:€€€€€€€€€: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
µ
√
while_cond_111437
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_111437___redundant_placeholder04
0while_while_cond_111437___redundant_placeholder14
0while_while_cond_111437___redundant_placeholder24
0while_while_cond_111437___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€U:€€€€€€€€€U: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
:
©
Ј
(__inference_lstm_21_layer_call_fn_113346
inputs_0
unknown:	U‘
	unknown_0:	U‘
	unknown_1:	‘
identityИҐStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€U*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_21_layer_call_and_return_conditional_losses_110078|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€U`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€U: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€U
"
_user_specified_name
inputs/0
бJ
Э
C__inference_lstm_20_layer_call_and_return_conditional_losses_113011
inputs_0>
+lstm_cell_20_matmul_readvariableop_resource:	‘@
-lstm_cell_20_matmul_1_readvariableop_resource:	U‘;
,lstm_cell_20_biasadd_readvariableop_resource:	‘
identityИҐ#lstm_cell_20/BiasAdd/ReadVariableOpҐ"lstm_cell_20/MatMul/ReadVariableOpҐ$lstm_cell_20/MatMul_1/ReadVariableOpҐwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Us
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€UR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Uw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Uc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskП
"lstm_cell_20/MatMul/ReadVariableOpReadVariableOp+lstm_cell_20_matmul_readvariableop_resource*
_output_shapes
:	‘*
dtype0Ц
lstm_cell_20/MatMulMatMulstrided_slice_2:output:0*lstm_cell_20/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘У
$lstm_cell_20/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_20_matmul_1_readvariableop_resource*
_output_shapes
:	U‘*
dtype0Р
lstm_cell_20/MatMul_1MatMulzeros:output:0,lstm_cell_20/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘М
lstm_cell_20/addAddV2lstm_cell_20/MatMul:product:0lstm_cell_20/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘Н
#lstm_cell_20/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_20_biasadd_readvariableop_resource*
_output_shapes	
:‘*
dtype0Х
lstm_cell_20/BiasAddBiasAddlstm_cell_20/add:z:0+lstm_cell_20/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘^
lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_20/splitSplit%lstm_cell_20/split/split_dim:output:0lstm_cell_20/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitn
lstm_cell_20/SigmoidSigmoidlstm_cell_20/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€Up
lstm_cell_20/Sigmoid_1Sigmoidlstm_cell_20/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€Uw
lstm_cell_20/mulMullstm_cell_20/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€Uh
lstm_cell_20/ReluRelulstm_cell_20/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€UЖ
lstm_cell_20/mul_1Mullstm_cell_20/Sigmoid:y:0lstm_cell_20/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€U{
lstm_cell_20/add_1AddV2lstm_cell_20/mul:z:0lstm_cell_20/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Up
lstm_cell_20/Sigmoid_2Sigmoidlstm_cell_20/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€Ue
lstm_cell_20/Relu_1Relulstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UК
lstm_cell_20/mul_2Mullstm_cell_20/Sigmoid_2:y:0!lstm_cell_20/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Un
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : В
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_20_matmul_readvariableop_resource-lstm_cell_20_matmul_1_readvariableop_resource,lstm_cell_20_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_112927*
condR
while_cond_112926*K
output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   Ћ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€U*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€U*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€U[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Uј
NoOpNoOp$^lstm_cell_20/BiasAdd/ReadVariableOp#^lstm_cell_20/MatMul/ReadVariableOp%^lstm_cell_20/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2J
#lstm_cell_20/BiasAdd/ReadVariableOp#lstm_cell_20/BiasAdd/ReadVariableOp2H
"lstm_cell_20/MatMul/ReadVariableOp"lstm_cell_20/MatMul/ReadVariableOp2L
$lstm_cell_20/MatMul_1/ReadVariableOp$lstm_cell_20/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs/0
М8
–
while_body_114356
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_22_matmul_readvariableop_resource_0:	U‘H
5while_lstm_cell_22_matmul_1_readvariableop_resource_0:	U‘C
4while_lstm_cell_22_biasadd_readvariableop_resource_0:	‘
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_22_matmul_readvariableop_resource:	U‘F
3while_lstm_cell_22_matmul_1_readvariableop_resource:	U‘A
2while_lstm_cell_22_biasadd_readvariableop_resource:	‘ИҐ)while/lstm_cell_22/BiasAdd/ReadVariableOpҐ(while/lstm_cell_22/MatMul/ReadVariableOpҐ*while/lstm_cell_22/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€U*
element_dtype0Э
(while/lstm_cell_22/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_22_matmul_readvariableop_resource_0*
_output_shapes
:	U‘*
dtype0Ї
while/lstm_cell_22/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_22/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘°
*while/lstm_cell_22/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_22_matmul_1_readvariableop_resource_0*
_output_shapes
:	U‘*
dtype0°
while/lstm_cell_22/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_22/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘Ю
while/lstm_cell_22/addAddV2#while/lstm_cell_22/MatMul:product:0%while/lstm_cell_22/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘Ы
)while/lstm_cell_22/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_22_biasadd_readvariableop_resource_0*
_output_shapes	
:‘*
dtype0І
while/lstm_cell_22/BiasAddBiasAddwhile/lstm_cell_22/add:z:01while/lstm_cell_22/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘d
"while/lstm_cell_22/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_22/splitSplit+while/lstm_cell_22/split/split_dim:output:0#while/lstm_cell_22/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitz
while/lstm_cell_22/SigmoidSigmoid!while/lstm_cell_22/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€U|
while/lstm_cell_22/Sigmoid_1Sigmoid!while/lstm_cell_22/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€UЖ
while/lstm_cell_22/mulMul while/lstm_cell_22/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€Ut
while/lstm_cell_22/ReluRelu!while/lstm_cell_22/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€UШ
while/lstm_cell_22/mul_1Mulwhile/lstm_cell_22/Sigmoid:y:0%while/lstm_cell_22/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UН
while/lstm_cell_22/add_1AddV2while/lstm_cell_22/mul:z:0while/lstm_cell_22/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€U|
while/lstm_cell_22/Sigmoid_2Sigmoid!while/lstm_cell_22/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€Uq
while/lstm_cell_22/Relu_1Reluwhile/lstm_cell_22/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UЬ
while/lstm_cell_22/mul_2Mul while/lstm_cell_22/Sigmoid_2:y:0'while/lstm_cell_22/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€U≈
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_22/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_22/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€Uy
while/Identity_5Identitywhile/lstm_cell_22/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€U–

while/NoOpNoOp*^while/lstm_cell_22/BiasAdd/ReadVariableOp)^while/lstm_cell_22/MatMul/ReadVariableOp+^while/lstm_cell_22/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_22_biasadd_readvariableop_resource4while_lstm_cell_22_biasadd_readvariableop_resource_0"l
3while_lstm_cell_22_matmul_1_readvariableop_resource5while_lstm_cell_22_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_22_matmul_readvariableop_resource3while_lstm_cell_22_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : 2V
)while/lstm_cell_22/BiasAdd/ReadVariableOp)while/lstm_cell_22/BiasAdd/ReadVariableOp2T
(while/lstm_cell_22/MatMul/ReadVariableOp(while/lstm_cell_22/MatMul/ReadVariableOp2X
*while/lstm_cell_22/MatMul_1/ReadVariableOp*while/lstm_cell_22/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
: 
л
ц
-__inference_lstm_cell_21_layer_call_fn_114761

inputs
states_0
states_1
unknown:	U‘
	unknown_0:	U‘
	unknown_1:	‘
identity

identity_1

identity_2ИҐStatefulPartitionedCall®
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_21_layer_call_and_return_conditional_losses_109950o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Uq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Uq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:€€€€€€€€€U`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€U
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€U
"
_user_specified_name
states/0:QM
'
_output_shapes
:€€€€€€€€€U
"
_user_specified_name
states/1
М8
–
while_body_111250
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_21_matmul_readvariableop_resource_0:	U‘H
5while_lstm_cell_21_matmul_1_readvariableop_resource_0:	U‘C
4while_lstm_cell_21_biasadd_readvariableop_resource_0:	‘
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_21_matmul_readvariableop_resource:	U‘F
3while_lstm_cell_21_matmul_1_readvariableop_resource:	U‘A
2while_lstm_cell_21_biasadd_readvariableop_resource:	‘ИҐ)while/lstm_cell_21/BiasAdd/ReadVariableOpҐ(while/lstm_cell_21/MatMul/ReadVariableOpҐ*while/lstm_cell_21/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€U*
element_dtype0Э
(while/lstm_cell_21/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_21_matmul_readvariableop_resource_0*
_output_shapes
:	U‘*
dtype0Ї
while/lstm_cell_21/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘°
*while/lstm_cell_21/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_21_matmul_1_readvariableop_resource_0*
_output_shapes
:	U‘*
dtype0°
while/lstm_cell_21/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_21/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘Ю
while/lstm_cell_21/addAddV2#while/lstm_cell_21/MatMul:product:0%while/lstm_cell_21/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘Ы
)while/lstm_cell_21/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_21_biasadd_readvariableop_resource_0*
_output_shapes	
:‘*
dtype0І
while/lstm_cell_21/BiasAddBiasAddwhile/lstm_cell_21/add:z:01while/lstm_cell_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘d
"while/lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_21/splitSplit+while/lstm_cell_21/split/split_dim:output:0#while/lstm_cell_21/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitz
while/lstm_cell_21/SigmoidSigmoid!while/lstm_cell_21/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€U|
while/lstm_cell_21/Sigmoid_1Sigmoid!while/lstm_cell_21/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€UЖ
while/lstm_cell_21/mulMul while/lstm_cell_21/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€Ut
while/lstm_cell_21/ReluRelu!while/lstm_cell_21/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€UШ
while/lstm_cell_21/mul_1Mulwhile/lstm_cell_21/Sigmoid:y:0%while/lstm_cell_21/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UН
while/lstm_cell_21/add_1AddV2while/lstm_cell_21/mul:z:0while/lstm_cell_21/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€U|
while/lstm_cell_21/Sigmoid_2Sigmoid!while/lstm_cell_21/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€Uq
while/lstm_cell_21/Relu_1Reluwhile/lstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UЬ
while/lstm_cell_21/mul_2Mul while/lstm_cell_21/Sigmoid_2:y:0'while/lstm_cell_21/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€U≈
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_21/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_21/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€Uy
while/Identity_5Identitywhile/lstm_cell_21/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€U–

while/NoOpNoOp*^while/lstm_cell_21/BiasAdd/ReadVariableOp)^while/lstm_cell_21/MatMul/ReadVariableOp+^while/lstm_cell_21/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_21_biasadd_readvariableop_resource4while_lstm_cell_21_biasadd_readvariableop_resource_0"l
3while_lstm_cell_21_matmul_1_readvariableop_resource5while_lstm_cell_21_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_21_matmul_readvariableop_resource3while_lstm_cell_21_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : 2V
)while/lstm_cell_21/BiasAdd/ReadVariableOp)while/lstm_cell_21/BiasAdd/ReadVariableOp2T
(while/lstm_cell_21/MatMul/ReadVariableOp(while/lstm_cell_21/MatMul/ReadVariableOp2X
*while/lstm_cell_21/MatMul_1/ReadVariableOp*while/lstm_cell_21/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
: 
≈A
–

lstm_22_while_body_112583,
(lstm_22_while_lstm_22_while_loop_counter2
.lstm_22_while_lstm_22_while_maximum_iterations
lstm_22_while_placeholder
lstm_22_while_placeholder_1
lstm_22_while_placeholder_2
lstm_22_while_placeholder_3+
'lstm_22_while_lstm_22_strided_slice_1_0g
clstm_22_while_tensorarrayv2read_tensorlistgetitem_lstm_22_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_22_while_lstm_cell_22_matmul_readvariableop_resource_0:	U‘P
=lstm_22_while_lstm_cell_22_matmul_1_readvariableop_resource_0:	U‘K
<lstm_22_while_lstm_cell_22_biasadd_readvariableop_resource_0:	‘
lstm_22_while_identity
lstm_22_while_identity_1
lstm_22_while_identity_2
lstm_22_while_identity_3
lstm_22_while_identity_4
lstm_22_while_identity_5)
%lstm_22_while_lstm_22_strided_slice_1e
alstm_22_while_tensorarrayv2read_tensorlistgetitem_lstm_22_tensorarrayunstack_tensorlistfromtensorL
9lstm_22_while_lstm_cell_22_matmul_readvariableop_resource:	U‘N
;lstm_22_while_lstm_cell_22_matmul_1_readvariableop_resource:	U‘I
:lstm_22_while_lstm_cell_22_biasadd_readvariableop_resource:	‘ИҐ1lstm_22/while/lstm_cell_22/BiasAdd/ReadVariableOpҐ0lstm_22/while/lstm_cell_22/MatMul/ReadVariableOpҐ2lstm_22/while/lstm_cell_22/MatMul_1/ReadVariableOpР
?lstm_22/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   ќ
1lstm_22/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_22_while_tensorarrayv2read_tensorlistgetitem_lstm_22_tensorarrayunstack_tensorlistfromtensor_0lstm_22_while_placeholderHlstm_22/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€U*
element_dtype0≠
0lstm_22/while/lstm_cell_22/MatMul/ReadVariableOpReadVariableOp;lstm_22_while_lstm_cell_22_matmul_readvariableop_resource_0*
_output_shapes
:	U‘*
dtype0“
!lstm_22/while/lstm_cell_22/MatMulMatMul8lstm_22/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_22/while/lstm_cell_22/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘±
2lstm_22/while/lstm_cell_22/MatMul_1/ReadVariableOpReadVariableOp=lstm_22_while_lstm_cell_22_matmul_1_readvariableop_resource_0*
_output_shapes
:	U‘*
dtype0є
#lstm_22/while/lstm_cell_22/MatMul_1MatMullstm_22_while_placeholder_2:lstm_22/while/lstm_cell_22/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘ґ
lstm_22/while/lstm_cell_22/addAddV2+lstm_22/while/lstm_cell_22/MatMul:product:0-lstm_22/while/lstm_cell_22/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘Ђ
1lstm_22/while/lstm_cell_22/BiasAdd/ReadVariableOpReadVariableOp<lstm_22_while_lstm_cell_22_biasadd_readvariableop_resource_0*
_output_shapes	
:‘*
dtype0њ
"lstm_22/while/lstm_cell_22/BiasAddBiasAdd"lstm_22/while/lstm_cell_22/add:z:09lstm_22/while/lstm_cell_22/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘l
*lstm_22/while/lstm_cell_22/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :З
 lstm_22/while/lstm_cell_22/splitSplit3lstm_22/while/lstm_cell_22/split/split_dim:output:0+lstm_22/while/lstm_cell_22/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitК
"lstm_22/while/lstm_cell_22/SigmoidSigmoid)lstm_22/while/lstm_cell_22/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€UМ
$lstm_22/while/lstm_cell_22/Sigmoid_1Sigmoid)lstm_22/while/lstm_cell_22/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€UЮ
lstm_22/while/lstm_cell_22/mulMul(lstm_22/while/lstm_cell_22/Sigmoid_1:y:0lstm_22_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€UД
lstm_22/while/lstm_cell_22/ReluRelu)lstm_22/while/lstm_cell_22/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€U∞
 lstm_22/while/lstm_cell_22/mul_1Mul&lstm_22/while/lstm_cell_22/Sigmoid:y:0-lstm_22/while/lstm_cell_22/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€U•
 lstm_22/while/lstm_cell_22/add_1AddV2"lstm_22/while/lstm_cell_22/mul:z:0$lstm_22/while/lstm_cell_22/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UМ
$lstm_22/while/lstm_cell_22/Sigmoid_2Sigmoid)lstm_22/while/lstm_cell_22/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€UБ
!lstm_22/while/lstm_cell_22/Relu_1Relu$lstm_22/while/lstm_cell_22/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Uі
 lstm_22/while/lstm_cell_22/mul_2Mul(lstm_22/while/lstm_cell_22/Sigmoid_2:y:0/lstm_22/while/lstm_cell_22/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Uе
2lstm_22/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_22_while_placeholder_1lstm_22_while_placeholder$lstm_22/while/lstm_cell_22/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“U
lstm_22/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_22/while/addAddV2lstm_22_while_placeholderlstm_22/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_22/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :З
lstm_22/while/add_1AddV2(lstm_22_while_lstm_22_while_loop_counterlstm_22/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_22/while/IdentityIdentitylstm_22/while/add_1:z:0^lstm_22/while/NoOp*
T0*
_output_shapes
: К
lstm_22/while/Identity_1Identity.lstm_22_while_lstm_22_while_maximum_iterations^lstm_22/while/NoOp*
T0*
_output_shapes
: q
lstm_22/while/Identity_2Identitylstm_22/while/add:z:0^lstm_22/while/NoOp*
T0*
_output_shapes
: Ю
lstm_22/while/Identity_3IdentityBlstm_22/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_22/while/NoOp*
T0*
_output_shapes
: С
lstm_22/while/Identity_4Identity$lstm_22/while/lstm_cell_22/mul_2:z:0^lstm_22/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€UС
lstm_22/while/Identity_5Identity$lstm_22/while/lstm_cell_22/add_1:z:0^lstm_22/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€Uр
lstm_22/while/NoOpNoOp2^lstm_22/while/lstm_cell_22/BiasAdd/ReadVariableOp1^lstm_22/while/lstm_cell_22/MatMul/ReadVariableOp3^lstm_22/while/lstm_cell_22/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_22_while_identitylstm_22/while/Identity:output:0"=
lstm_22_while_identity_1!lstm_22/while/Identity_1:output:0"=
lstm_22_while_identity_2!lstm_22/while/Identity_2:output:0"=
lstm_22_while_identity_3!lstm_22/while/Identity_3:output:0"=
lstm_22_while_identity_4!lstm_22/while/Identity_4:output:0"=
lstm_22_while_identity_5!lstm_22/while/Identity_5:output:0"P
%lstm_22_while_lstm_22_strided_slice_1'lstm_22_while_lstm_22_strided_slice_1_0"z
:lstm_22_while_lstm_cell_22_biasadd_readvariableop_resource<lstm_22_while_lstm_cell_22_biasadd_readvariableop_resource_0"|
;lstm_22_while_lstm_cell_22_matmul_1_readvariableop_resource=lstm_22_while_lstm_cell_22_matmul_1_readvariableop_resource_0"x
9lstm_22_while_lstm_cell_22_matmul_readvariableop_resource;lstm_22_while_lstm_cell_22_matmul_readvariableop_resource_0"»
alstm_22_while_tensorarrayv2read_tensorlistgetitem_lstm_22_tensorarrayunstack_tensorlistfromtensorclstm_22_while_tensorarrayv2read_tensorlistgetitem_lstm_22_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : 2f
1lstm_22/while/lstm_cell_22/BiasAdd/ReadVariableOp1lstm_22/while/lstm_cell_22/BiasAdd/ReadVariableOp2d
0lstm_22/while/lstm_cell_22/MatMul/ReadVariableOp0lstm_22/while/lstm_cell_22/MatMul/ReadVariableOp2h
2lstm_22/while/lstm_cell_22/MatMul_1/ReadVariableOp2lstm_22/while/lstm_cell_22/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
: 
В
з
&sequential_5_lstm_21_while_cond_109155F
Bsequential_5_lstm_21_while_sequential_5_lstm_21_while_loop_counterL
Hsequential_5_lstm_21_while_sequential_5_lstm_21_while_maximum_iterations*
&sequential_5_lstm_21_while_placeholder,
(sequential_5_lstm_21_while_placeholder_1,
(sequential_5_lstm_21_while_placeholder_2,
(sequential_5_lstm_21_while_placeholder_3H
Dsequential_5_lstm_21_while_less_sequential_5_lstm_21_strided_slice_1^
Zsequential_5_lstm_21_while_sequential_5_lstm_21_while_cond_109155___redundant_placeholder0^
Zsequential_5_lstm_21_while_sequential_5_lstm_21_while_cond_109155___redundant_placeholder1^
Zsequential_5_lstm_21_while_sequential_5_lstm_21_while_cond_109155___redundant_placeholder2^
Zsequential_5_lstm_21_while_sequential_5_lstm_21_while_cond_109155___redundant_placeholder3'
#sequential_5_lstm_21_while_identity
ґ
sequential_5/lstm_21/while/LessLess&sequential_5_lstm_21_while_placeholderDsequential_5_lstm_21_while_less_sequential_5_lstm_21_strided_slice_1*
T0*
_output_shapes
: u
#sequential_5/lstm_21/while/IdentityIdentity#sequential_5/lstm_21/while/Less:z:0*
T0
*
_output_shapes
: "S
#sequential_5_lstm_21_while_identity,sequential_5/lstm_21/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€U:€€€€€€€€€U: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
:
≈A
–

lstm_21_while_body_112436,
(lstm_21_while_lstm_21_while_loop_counter2
.lstm_21_while_lstm_21_while_maximum_iterations
lstm_21_while_placeholder
lstm_21_while_placeholder_1
lstm_21_while_placeholder_2
lstm_21_while_placeholder_3+
'lstm_21_while_lstm_21_strided_slice_1_0g
clstm_21_while_tensorarrayv2read_tensorlistgetitem_lstm_21_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_21_while_lstm_cell_21_matmul_readvariableop_resource_0:	U‘P
=lstm_21_while_lstm_cell_21_matmul_1_readvariableop_resource_0:	U‘K
<lstm_21_while_lstm_cell_21_biasadd_readvariableop_resource_0:	‘
lstm_21_while_identity
lstm_21_while_identity_1
lstm_21_while_identity_2
lstm_21_while_identity_3
lstm_21_while_identity_4
lstm_21_while_identity_5)
%lstm_21_while_lstm_21_strided_slice_1e
alstm_21_while_tensorarrayv2read_tensorlistgetitem_lstm_21_tensorarrayunstack_tensorlistfromtensorL
9lstm_21_while_lstm_cell_21_matmul_readvariableop_resource:	U‘N
;lstm_21_while_lstm_cell_21_matmul_1_readvariableop_resource:	U‘I
:lstm_21_while_lstm_cell_21_biasadd_readvariableop_resource:	‘ИҐ1lstm_21/while/lstm_cell_21/BiasAdd/ReadVariableOpҐ0lstm_21/while/lstm_cell_21/MatMul/ReadVariableOpҐ2lstm_21/while/lstm_cell_21/MatMul_1/ReadVariableOpР
?lstm_21/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   ќ
1lstm_21/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_21_while_tensorarrayv2read_tensorlistgetitem_lstm_21_tensorarrayunstack_tensorlistfromtensor_0lstm_21_while_placeholderHlstm_21/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€U*
element_dtype0≠
0lstm_21/while/lstm_cell_21/MatMul/ReadVariableOpReadVariableOp;lstm_21_while_lstm_cell_21_matmul_readvariableop_resource_0*
_output_shapes
:	U‘*
dtype0“
!lstm_21/while/lstm_cell_21/MatMulMatMul8lstm_21/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_21/while/lstm_cell_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘±
2lstm_21/while/lstm_cell_21/MatMul_1/ReadVariableOpReadVariableOp=lstm_21_while_lstm_cell_21_matmul_1_readvariableop_resource_0*
_output_shapes
:	U‘*
dtype0є
#lstm_21/while/lstm_cell_21/MatMul_1MatMullstm_21_while_placeholder_2:lstm_21/while/lstm_cell_21/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘ґ
lstm_21/while/lstm_cell_21/addAddV2+lstm_21/while/lstm_cell_21/MatMul:product:0-lstm_21/while/lstm_cell_21/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘Ђ
1lstm_21/while/lstm_cell_21/BiasAdd/ReadVariableOpReadVariableOp<lstm_21_while_lstm_cell_21_biasadd_readvariableop_resource_0*
_output_shapes	
:‘*
dtype0њ
"lstm_21/while/lstm_cell_21/BiasAddBiasAdd"lstm_21/while/lstm_cell_21/add:z:09lstm_21/while/lstm_cell_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘l
*lstm_21/while/lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :З
 lstm_21/while/lstm_cell_21/splitSplit3lstm_21/while/lstm_cell_21/split/split_dim:output:0+lstm_21/while/lstm_cell_21/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitК
"lstm_21/while/lstm_cell_21/SigmoidSigmoid)lstm_21/while/lstm_cell_21/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€UМ
$lstm_21/while/lstm_cell_21/Sigmoid_1Sigmoid)lstm_21/while/lstm_cell_21/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€UЮ
lstm_21/while/lstm_cell_21/mulMul(lstm_21/while/lstm_cell_21/Sigmoid_1:y:0lstm_21_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€UД
lstm_21/while/lstm_cell_21/ReluRelu)lstm_21/while/lstm_cell_21/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€U∞
 lstm_21/while/lstm_cell_21/mul_1Mul&lstm_21/while/lstm_cell_21/Sigmoid:y:0-lstm_21/while/lstm_cell_21/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€U•
 lstm_21/while/lstm_cell_21/add_1AddV2"lstm_21/while/lstm_cell_21/mul:z:0$lstm_21/while/lstm_cell_21/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UМ
$lstm_21/while/lstm_cell_21/Sigmoid_2Sigmoid)lstm_21/while/lstm_cell_21/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€UБ
!lstm_21/while/lstm_cell_21/Relu_1Relu$lstm_21/while/lstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Uі
 lstm_21/while/lstm_cell_21/mul_2Mul(lstm_21/while/lstm_cell_21/Sigmoid_2:y:0/lstm_21/while/lstm_cell_21/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Uе
2lstm_21/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_21_while_placeholder_1lstm_21_while_placeholder$lstm_21/while/lstm_cell_21/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“U
lstm_21/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_21/while/addAddV2lstm_21_while_placeholderlstm_21/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_21/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :З
lstm_21/while/add_1AddV2(lstm_21_while_lstm_21_while_loop_counterlstm_21/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_21/while/IdentityIdentitylstm_21/while/add_1:z:0^lstm_21/while/NoOp*
T0*
_output_shapes
: К
lstm_21/while/Identity_1Identity.lstm_21_while_lstm_21_while_maximum_iterations^lstm_21/while/NoOp*
T0*
_output_shapes
: q
lstm_21/while/Identity_2Identitylstm_21/while/add:z:0^lstm_21/while/NoOp*
T0*
_output_shapes
: Ю
lstm_21/while/Identity_3IdentityBlstm_21/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_21/while/NoOp*
T0*
_output_shapes
: С
lstm_21/while/Identity_4Identity$lstm_21/while/lstm_cell_21/mul_2:z:0^lstm_21/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€UС
lstm_21/while/Identity_5Identity$lstm_21/while/lstm_cell_21/add_1:z:0^lstm_21/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€Uр
lstm_21/while/NoOpNoOp2^lstm_21/while/lstm_cell_21/BiasAdd/ReadVariableOp1^lstm_21/while/lstm_cell_21/MatMul/ReadVariableOp3^lstm_21/while/lstm_cell_21/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_21_while_identitylstm_21/while/Identity:output:0"=
lstm_21_while_identity_1!lstm_21/while/Identity_1:output:0"=
lstm_21_while_identity_2!lstm_21/while/Identity_2:output:0"=
lstm_21_while_identity_3!lstm_21/while/Identity_3:output:0"=
lstm_21_while_identity_4!lstm_21/while/Identity_4:output:0"=
lstm_21_while_identity_5!lstm_21/while/Identity_5:output:0"P
%lstm_21_while_lstm_21_strided_slice_1'lstm_21_while_lstm_21_strided_slice_1_0"z
:lstm_21_while_lstm_cell_21_biasadd_readvariableop_resource<lstm_21_while_lstm_cell_21_biasadd_readvariableop_resource_0"|
;lstm_21_while_lstm_cell_21_matmul_1_readvariableop_resource=lstm_21_while_lstm_cell_21_matmul_1_readvariableop_resource_0"x
9lstm_21_while_lstm_cell_21_matmul_readvariableop_resource;lstm_21_while_lstm_cell_21_matmul_readvariableop_resource_0"»
alstm_21_while_tensorarrayv2read_tensorlistgetitem_lstm_21_tensorarrayunstack_tensorlistfromtensorclstm_21_while_tensorarrayv2read_tensorlistgetitem_lstm_21_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : 2f
1lstm_21/while/lstm_cell_21/BiasAdd/ReadVariableOp1lstm_21/while/lstm_cell_21/BiasAdd/ReadVariableOp2d
0lstm_21/while/lstm_cell_21/MatMul/ReadVariableOp0lstm_21/while/lstm_cell_21/MatMul/ReadVariableOp2h
2lstm_21/while/lstm_cell_21/MatMul_1/ReadVariableOp2lstm_21/while/lstm_cell_21/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
: 
’
Д
H__inference_lstm_cell_22_layer_call_and_return_conditional_losses_110154

inputs

states
states_11
matmul_readvariableop_resource:	U‘3
 matmul_1_readvariableop_resource:	U‘.
biasadd_readvariableop_resource:	‘
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	U‘*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	U‘*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:‘*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€UV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€UU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€UN
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€U_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€UK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Uc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€UZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€UZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€UС
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€U
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€U
 
_user_specified_namestates:OK
'
_output_shapes
:€€€€€€€€€U
 
_user_specified_namestates
ў
d
F__inference_dropout_22_layer_call_and_return_conditional_losses_114598

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:€€€€€€€€€U[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:€€€€€€€€€U"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€U:O K
'
_output_shapes
:€€€€€€€€€U
 
_user_specified_nameinputs
Ц

г
lstm_20_while_cond_112288,
(lstm_20_while_lstm_20_while_loop_counter2
.lstm_20_while_lstm_20_while_maximum_iterations
lstm_20_while_placeholder
lstm_20_while_placeholder_1
lstm_20_while_placeholder_2
lstm_20_while_placeholder_3.
*lstm_20_while_less_lstm_20_strided_slice_1D
@lstm_20_while_lstm_20_while_cond_112288___redundant_placeholder0D
@lstm_20_while_lstm_20_while_cond_112288___redundant_placeholder1D
@lstm_20_while_lstm_20_while_cond_112288___redundant_placeholder2D
@lstm_20_while_lstm_20_while_cond_112288___redundant_placeholder3
lstm_20_while_identity
В
lstm_20/while/LessLesslstm_20_while_placeholder*lstm_20_while_less_lstm_20_strided_slice_1*
T0*
_output_shapes
: [
lstm_20/while/IdentityIdentitylstm_20/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_20_while_identitylstm_20/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€U:€€€€€€€€€U: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
:
Т8
Е
C__inference_lstm_21_layer_call_and_return_conditional_losses_110078

inputs&
lstm_cell_21_109996:	U‘&
lstm_cell_21_109998:	U‘"
lstm_cell_21_110000:	‘
identityИҐ$lstm_cell_21/StatefulPartitionedCallҐwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Us
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€UR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Uw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Uc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€UD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€U*
shrink_axis_maskх
$lstm_cell_21/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_21_109996lstm_cell_21_109998lstm_cell_21_110000*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_21_layer_call_and_return_conditional_losses_109950n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ј
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_21_109996lstm_cell_21_109998lstm_cell_21_110000*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_110009*
condR
while_cond_110008*K
output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   Ћ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€U*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€U*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€U[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€Uu
NoOpNoOp%^lstm_cell_21/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€U: : : 2L
$lstm_cell_21/StatefulPartitionedCall$lstm_cell_21/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€U
 
_user_specified_nameinputs
Ц

г
lstm_21_while_cond_111998,
(lstm_21_while_lstm_21_while_loop_counter2
.lstm_21_while_lstm_21_while_maximum_iterations
lstm_21_while_placeholder
lstm_21_while_placeholder_1
lstm_21_while_placeholder_2
lstm_21_while_placeholder_3.
*lstm_21_while_less_lstm_21_strided_slice_1D
@lstm_21_while_lstm_21_while_cond_111998___redundant_placeholder0D
@lstm_21_while_lstm_21_while_cond_111998___redundant_placeholder1D
@lstm_21_while_lstm_21_while_cond_111998___redundant_placeholder2D
@lstm_21_while_lstm_21_while_cond_111998___redundant_placeholder3
lstm_21_while_identity
В
lstm_21/while/LessLesslstm_21_while_placeholder*lstm_21_while_less_lstm_21_strided_slice_1*
T0*
_output_shapes
: [
lstm_21/while/IdentityIdentitylstm_21/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_21_while_identitylstm_21/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€U:€€€€€€€€€U: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€U:-)
'
_output_shapes
:€€€€€€€€€U:

_output_shapes
: :

_output_shapes
:
р

£
-__inference_sequential_5_layer_call_fn_111645
lstm_20_input
unknown:	‘
	unknown_0:	U‘
	unknown_1:	‘
	unknown_2:	U‘
	unknown_3:	U‘
	unknown_4:	‘
	unknown_5:	U‘
	unknown_6:	U‘
	unknown_7:	‘
	unknown_8:U
	unknown_9:
identityИҐStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCalllstm_20_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_5_layer_call_and_return_conditional_losses_111593o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:€€€€€€€€€: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:€€€€€€€€€
'
_user_specified_namelstm_20_input
Ч 
ё
H__inference_sequential_5_layer_call_and_return_conditional_losses_110932

inputs!
lstm_20_110587:	‘!
lstm_20_110589:	U‘
lstm_20_110591:	‘!
lstm_21_110744:	U‘!
lstm_21_110746:	U‘
lstm_21_110748:	‘!
lstm_22_110901:	U‘!
lstm_22_110903:	U‘
lstm_22_110905:	‘ 
dense_5_110926:U
dense_5_110928:
identityИҐdense_5/StatefulPartitionedCallҐlstm_20/StatefulPartitionedCallҐlstm_21/StatefulPartitionedCallҐlstm_22/StatefulPartitionedCallВ
lstm_20/StatefulPartitionedCallStatefulPartitionedCallinputslstm_20_110587lstm_20_110589lstm_20_110591*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€U*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_20_layer_call_and_return_conditional_losses_110586в
dropout_20/PartitionedCallPartitionedCall(lstm_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€U* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_20_layer_call_and_return_conditional_losses_110599Я
lstm_21/StatefulPartitionedCallStatefulPartitionedCall#dropout_20/PartitionedCall:output:0lstm_21_110744lstm_21_110746lstm_21_110748*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€U*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_21_layer_call_and_return_conditional_losses_110743в
dropout_21/PartitionedCallPartitionedCall(lstm_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€U* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_21_layer_call_and_return_conditional_losses_110756Ы
lstm_22/StatefulPartitionedCallStatefulPartitionedCall#dropout_21/PartitionedCall:output:0lstm_22_110901lstm_22_110903lstm_22_110905*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€U*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_22_layer_call_and_return_conditional_losses_110900ё
dropout_22/PartitionedCallPartitionedCall(lstm_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€U* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_22_layer_call_and_return_conditional_losses_110913Й
dense_5/StatefulPartitionedCallStatefulPartitionedCall#dropout_22/PartitionedCall:output:0dense_5_110926dense_5_110928*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_110925w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ќ
NoOpNoOp ^dense_5/StatefulPartitionedCall ^lstm_20/StatefulPartitionedCall ^lstm_21/StatefulPartitionedCall ^lstm_22/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:€€€€€€€€€: : : : : : : : : : : 2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
lstm_20/StatefulPartitionedCalllstm_20/StatefulPartitionedCall2B
lstm_21/StatefulPartitionedCalllstm_21/StatefulPartitionedCall2B
lstm_22/StatefulPartitionedCalllstm_22/StatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
≈Ц
м

H__inference_sequential_5_layer_call_and_return_conditional_losses_112681

inputsF
3lstm_20_lstm_cell_20_matmul_readvariableop_resource:	‘H
5lstm_20_lstm_cell_20_matmul_1_readvariableop_resource:	U‘C
4lstm_20_lstm_cell_20_biasadd_readvariableop_resource:	‘F
3lstm_21_lstm_cell_21_matmul_readvariableop_resource:	U‘H
5lstm_21_lstm_cell_21_matmul_1_readvariableop_resource:	U‘C
4lstm_21_lstm_cell_21_biasadd_readvariableop_resource:	‘F
3lstm_22_lstm_cell_22_matmul_readvariableop_resource:	U‘H
5lstm_22_lstm_cell_22_matmul_1_readvariableop_resource:	U‘C
4lstm_22_lstm_cell_22_biasadd_readvariableop_resource:	‘8
&dense_5_matmul_readvariableop_resource:U5
'dense_5_biasadd_readvariableop_resource:
identityИҐdense_5/BiasAdd/ReadVariableOpҐdense_5/MatMul/ReadVariableOpҐ+lstm_20/lstm_cell_20/BiasAdd/ReadVariableOpҐ*lstm_20/lstm_cell_20/MatMul/ReadVariableOpҐ,lstm_20/lstm_cell_20/MatMul_1/ReadVariableOpҐlstm_20/whileҐ+lstm_21/lstm_cell_21/BiasAdd/ReadVariableOpҐ*lstm_21/lstm_cell_21/MatMul/ReadVariableOpҐ,lstm_21/lstm_cell_21/MatMul_1/ReadVariableOpҐlstm_21/whileҐ+lstm_22/lstm_cell_22/BiasAdd/ReadVariableOpҐ*lstm_22/lstm_cell_22/MatMul/ReadVariableOpҐ,lstm_22/lstm_cell_22/MatMul_1/ReadVariableOpҐlstm_22/whileC
lstm_20/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
lstm_20/strided_sliceStridedSlicelstm_20/Shape:output:0$lstm_20/strided_slice/stack:output:0&lstm_20/strided_slice/stack_1:output:0&lstm_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_20/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :UЛ
lstm_20/zeros/packedPacklstm_20/strided_slice:output:0lstm_20/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_20/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Д
lstm_20/zerosFilllstm_20/zeros/packed:output:0lstm_20/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€UZ
lstm_20/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :UП
lstm_20/zeros_1/packedPacklstm_20/strided_slice:output:0!lstm_20/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_20/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    К
lstm_20/zeros_1Filllstm_20/zeros_1/packed:output:0lstm_20/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Uk
lstm_20/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_20/transpose	Transposeinputslstm_20/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€T
lstm_20/Shape_1Shapelstm_20/transpose:y:0*
T0*
_output_shapes
:g
lstm_20/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_20/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_20/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Г
lstm_20/strided_slice_1StridedSlicelstm_20/Shape_1:output:0&lstm_20/strided_slice_1/stack:output:0(lstm_20/strided_slice_1/stack_1:output:0(lstm_20/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_20/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€ћ
lstm_20/TensorArrayV2TensorListReserve,lstm_20/TensorArrayV2/element_shape:output:0 lstm_20/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“О
=lstm_20/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ш
/lstm_20/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_20/transpose:y:0Flstm_20/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“g
lstm_20/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_20/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_20/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:С
lstm_20/strided_slice_2StridedSlicelstm_20/transpose:y:0&lstm_20/strided_slice_2/stack:output:0(lstm_20/strided_slice_2/stack_1:output:0(lstm_20/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskЯ
*lstm_20/lstm_cell_20/MatMul/ReadVariableOpReadVariableOp3lstm_20_lstm_cell_20_matmul_readvariableop_resource*
_output_shapes
:	‘*
dtype0Ѓ
lstm_20/lstm_cell_20/MatMulMatMul lstm_20/strided_slice_2:output:02lstm_20/lstm_cell_20/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘£
,lstm_20/lstm_cell_20/MatMul_1/ReadVariableOpReadVariableOp5lstm_20_lstm_cell_20_matmul_1_readvariableop_resource*
_output_shapes
:	U‘*
dtype0®
lstm_20/lstm_cell_20/MatMul_1MatMullstm_20/zeros:output:04lstm_20/lstm_cell_20/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘§
lstm_20/lstm_cell_20/addAddV2%lstm_20/lstm_cell_20/MatMul:product:0'lstm_20/lstm_cell_20/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘Э
+lstm_20/lstm_cell_20/BiasAdd/ReadVariableOpReadVariableOp4lstm_20_lstm_cell_20_biasadd_readvariableop_resource*
_output_shapes	
:‘*
dtype0≠
lstm_20/lstm_cell_20/BiasAddBiasAddlstm_20/lstm_cell_20/add:z:03lstm_20/lstm_cell_20/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘f
$lstm_20/lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :х
lstm_20/lstm_cell_20/splitSplit-lstm_20/lstm_cell_20/split/split_dim:output:0%lstm_20/lstm_cell_20/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_split~
lstm_20/lstm_cell_20/SigmoidSigmoid#lstm_20/lstm_cell_20/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€UА
lstm_20/lstm_cell_20/Sigmoid_1Sigmoid#lstm_20/lstm_cell_20/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€UП
lstm_20/lstm_cell_20/mulMul"lstm_20/lstm_cell_20/Sigmoid_1:y:0lstm_20/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ux
lstm_20/lstm_cell_20/ReluRelu#lstm_20/lstm_cell_20/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€UЮ
lstm_20/lstm_cell_20/mul_1Mul lstm_20/lstm_cell_20/Sigmoid:y:0'lstm_20/lstm_cell_20/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UУ
lstm_20/lstm_cell_20/add_1AddV2lstm_20/lstm_cell_20/mul:z:0lstm_20/lstm_cell_20/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UА
lstm_20/lstm_cell_20/Sigmoid_2Sigmoid#lstm_20/lstm_cell_20/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€Uu
lstm_20/lstm_cell_20/Relu_1Relulstm_20/lstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UҐ
lstm_20/lstm_cell_20/mul_2Mul"lstm_20/lstm_cell_20/Sigmoid_2:y:0)lstm_20/lstm_cell_20/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Uv
%lstm_20/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   –
lstm_20/TensorArrayV2_1TensorListReserve.lstm_20/TensorArrayV2_1/element_shape:output:0 lstm_20/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“N
lstm_20/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_20/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€\
lstm_20/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : т
lstm_20/whileWhile#lstm_20/while/loop_counter:output:0)lstm_20/while/maximum_iterations:output:0lstm_20/time:output:0 lstm_20/TensorArrayV2_1:handle:0lstm_20/zeros:output:0lstm_20/zeros_1:output:0 lstm_20/strided_slice_1:output:0?lstm_20/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_20_lstm_cell_20_matmul_readvariableop_resource5lstm_20_lstm_cell_20_matmul_1_readvariableop_resource4lstm_20_lstm_cell_20_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_20_while_body_112289*%
condR
lstm_20_while_cond_112288*K
output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *
parallel_iterations Й
8lstm_20/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   Џ
*lstm_20/TensorArrayV2Stack/TensorListStackTensorListStacklstm_20/while:output:3Alstm_20/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€U*
element_dtype0p
lstm_20/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€i
lstm_20/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_20/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѓ
lstm_20/strided_slice_3StridedSlice3lstm_20/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_20/strided_slice_3/stack:output:0(lstm_20/strided_slice_3/stack_1:output:0(lstm_20/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€U*
shrink_axis_maskm
lstm_20/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ѓ
lstm_20/transpose_1	Transpose3lstm_20/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_20/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€Uc
lstm_20/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ]
dropout_20/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *„£?П
dropout_20/dropout/MulMullstm_20/transpose_1:y:0!dropout_20/dropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€U_
dropout_20/dropout/ShapeShapelstm_20/transpose_1:y:0*
T0*
_output_shapes
:¶
/dropout_20/dropout/random_uniform/RandomUniformRandomUniform!dropout_20/dropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€U*
dtype0f
!dropout_20/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *∆n\>Ћ
dropout_20/dropout/GreaterEqualGreaterEqual8dropout_20/dropout/random_uniform/RandomUniform:output:0*dropout_20/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€UЙ
dropout_20/dropout/CastCast#dropout_20/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:€€€€€€€€€UО
dropout_20/dropout/Mul_1Muldropout_20/dropout/Mul:z:0dropout_20/dropout/Cast:y:0*
T0*+
_output_shapes
:€€€€€€€€€UY
lstm_21/ShapeShapedropout_20/dropout/Mul_1:z:0*
T0*
_output_shapes
:e
lstm_21/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_21/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_21/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
lstm_21/strided_sliceStridedSlicelstm_21/Shape:output:0$lstm_21/strided_slice/stack:output:0&lstm_21/strided_slice/stack_1:output:0&lstm_21/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_21/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :UЛ
lstm_21/zeros/packedPacklstm_21/strided_slice:output:0lstm_21/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_21/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Д
lstm_21/zerosFilllstm_21/zeros/packed:output:0lstm_21/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€UZ
lstm_21/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :UП
lstm_21/zeros_1/packedPacklstm_21/strided_slice:output:0!lstm_21/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_21/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    К
lstm_21/zeros_1Filllstm_21/zeros_1/packed:output:0lstm_21/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Uk
lstm_21/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          У
lstm_21/transpose	Transposedropout_20/dropout/Mul_1:z:0lstm_21/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€UT
lstm_21/Shape_1Shapelstm_21/transpose:y:0*
T0*
_output_shapes
:g
lstm_21/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_21/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_21/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Г
lstm_21/strided_slice_1StridedSlicelstm_21/Shape_1:output:0&lstm_21/strided_slice_1/stack:output:0(lstm_21/strided_slice_1/stack_1:output:0(lstm_21/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_21/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€ћ
lstm_21/TensorArrayV2TensorListReserve,lstm_21/TensorArrayV2/element_shape:output:0 lstm_21/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“О
=lstm_21/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   ш
/lstm_21/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_21/transpose:y:0Flstm_21/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“g
lstm_21/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_21/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_21/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:С
lstm_21/strided_slice_2StridedSlicelstm_21/transpose:y:0&lstm_21/strided_slice_2/stack:output:0(lstm_21/strided_slice_2/stack_1:output:0(lstm_21/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€U*
shrink_axis_maskЯ
*lstm_21/lstm_cell_21/MatMul/ReadVariableOpReadVariableOp3lstm_21_lstm_cell_21_matmul_readvariableop_resource*
_output_shapes
:	U‘*
dtype0Ѓ
lstm_21/lstm_cell_21/MatMulMatMul lstm_21/strided_slice_2:output:02lstm_21/lstm_cell_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘£
,lstm_21/lstm_cell_21/MatMul_1/ReadVariableOpReadVariableOp5lstm_21_lstm_cell_21_matmul_1_readvariableop_resource*
_output_shapes
:	U‘*
dtype0®
lstm_21/lstm_cell_21/MatMul_1MatMullstm_21/zeros:output:04lstm_21/lstm_cell_21/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘§
lstm_21/lstm_cell_21/addAddV2%lstm_21/lstm_cell_21/MatMul:product:0'lstm_21/lstm_cell_21/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘Э
+lstm_21/lstm_cell_21/BiasAdd/ReadVariableOpReadVariableOp4lstm_21_lstm_cell_21_biasadd_readvariableop_resource*
_output_shapes	
:‘*
dtype0≠
lstm_21/lstm_cell_21/BiasAddBiasAddlstm_21/lstm_cell_21/add:z:03lstm_21/lstm_cell_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘f
$lstm_21/lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :х
lstm_21/lstm_cell_21/splitSplit-lstm_21/lstm_cell_21/split/split_dim:output:0%lstm_21/lstm_cell_21/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_split~
lstm_21/lstm_cell_21/SigmoidSigmoid#lstm_21/lstm_cell_21/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€UА
lstm_21/lstm_cell_21/Sigmoid_1Sigmoid#lstm_21/lstm_cell_21/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€UП
lstm_21/lstm_cell_21/mulMul"lstm_21/lstm_cell_21/Sigmoid_1:y:0lstm_21/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ux
lstm_21/lstm_cell_21/ReluRelu#lstm_21/lstm_cell_21/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€UЮ
lstm_21/lstm_cell_21/mul_1Mul lstm_21/lstm_cell_21/Sigmoid:y:0'lstm_21/lstm_cell_21/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UУ
lstm_21/lstm_cell_21/add_1AddV2lstm_21/lstm_cell_21/mul:z:0lstm_21/lstm_cell_21/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UА
lstm_21/lstm_cell_21/Sigmoid_2Sigmoid#lstm_21/lstm_cell_21/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€Uu
lstm_21/lstm_cell_21/Relu_1Relulstm_21/lstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UҐ
lstm_21/lstm_cell_21/mul_2Mul"lstm_21/lstm_cell_21/Sigmoid_2:y:0)lstm_21/lstm_cell_21/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Uv
%lstm_21/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   –
lstm_21/TensorArrayV2_1TensorListReserve.lstm_21/TensorArrayV2_1/element_shape:output:0 lstm_21/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“N
lstm_21/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_21/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€\
lstm_21/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : т
lstm_21/whileWhile#lstm_21/while/loop_counter:output:0)lstm_21/while/maximum_iterations:output:0lstm_21/time:output:0 lstm_21/TensorArrayV2_1:handle:0lstm_21/zeros:output:0lstm_21/zeros_1:output:0 lstm_21/strided_slice_1:output:0?lstm_21/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_21_lstm_cell_21_matmul_readvariableop_resource5lstm_21_lstm_cell_21_matmul_1_readvariableop_resource4lstm_21_lstm_cell_21_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_21_while_body_112436*%
condR
lstm_21_while_cond_112435*K
output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *
parallel_iterations Й
8lstm_21/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   Џ
*lstm_21/TensorArrayV2Stack/TensorListStackTensorListStacklstm_21/while:output:3Alstm_21/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€U*
element_dtype0p
lstm_21/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€i
lstm_21/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_21/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѓ
lstm_21/strided_slice_3StridedSlice3lstm_21/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_21/strided_slice_3/stack:output:0(lstm_21/strided_slice_3/stack_1:output:0(lstm_21/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€U*
shrink_axis_maskm
lstm_21/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ѓ
lstm_21/transpose_1	Transpose3lstm_21/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_21/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€Uc
lstm_21/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ]
dropout_21/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *„£?П
dropout_21/dropout/MulMullstm_21/transpose_1:y:0!dropout_21/dropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€U_
dropout_21/dropout/ShapeShapelstm_21/transpose_1:y:0*
T0*
_output_shapes
:¶
/dropout_21/dropout/random_uniform/RandomUniformRandomUniform!dropout_21/dropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€U*
dtype0f
!dropout_21/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *∆n\>Ћ
dropout_21/dropout/GreaterEqualGreaterEqual8dropout_21/dropout/random_uniform/RandomUniform:output:0*dropout_21/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€UЙ
dropout_21/dropout/CastCast#dropout_21/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:€€€€€€€€€UО
dropout_21/dropout/Mul_1Muldropout_21/dropout/Mul:z:0dropout_21/dropout/Cast:y:0*
T0*+
_output_shapes
:€€€€€€€€€UY
lstm_22/ShapeShapedropout_21/dropout/Mul_1:z:0*
T0*
_output_shapes
:e
lstm_22/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_22/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_22/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
lstm_22/strided_sliceStridedSlicelstm_22/Shape:output:0$lstm_22/strided_slice/stack:output:0&lstm_22/strided_slice/stack_1:output:0&lstm_22/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_22/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :UЛ
lstm_22/zeros/packedPacklstm_22/strided_slice:output:0lstm_22/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_22/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Д
lstm_22/zerosFilllstm_22/zeros/packed:output:0lstm_22/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€UZ
lstm_22/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :UП
lstm_22/zeros_1/packedPacklstm_22/strided_slice:output:0!lstm_22/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_22/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    К
lstm_22/zeros_1Filllstm_22/zeros_1/packed:output:0lstm_22/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Uk
lstm_22/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          У
lstm_22/transpose	Transposedropout_21/dropout/Mul_1:z:0lstm_22/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€UT
lstm_22/Shape_1Shapelstm_22/transpose:y:0*
T0*
_output_shapes
:g
lstm_22/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_22/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_22/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Г
lstm_22/strided_slice_1StridedSlicelstm_22/Shape_1:output:0&lstm_22/strided_slice_1/stack:output:0(lstm_22/strided_slice_1/stack_1:output:0(lstm_22/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_22/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€ћ
lstm_22/TensorArrayV2TensorListReserve,lstm_22/TensorArrayV2/element_shape:output:0 lstm_22/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“О
=lstm_22/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   ш
/lstm_22/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_22/transpose:y:0Flstm_22/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“g
lstm_22/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_22/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_22/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:С
lstm_22/strided_slice_2StridedSlicelstm_22/transpose:y:0&lstm_22/strided_slice_2/stack:output:0(lstm_22/strided_slice_2/stack_1:output:0(lstm_22/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€U*
shrink_axis_maskЯ
*lstm_22/lstm_cell_22/MatMul/ReadVariableOpReadVariableOp3lstm_22_lstm_cell_22_matmul_readvariableop_resource*
_output_shapes
:	U‘*
dtype0Ѓ
lstm_22/lstm_cell_22/MatMulMatMul lstm_22/strided_slice_2:output:02lstm_22/lstm_cell_22/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘£
,lstm_22/lstm_cell_22/MatMul_1/ReadVariableOpReadVariableOp5lstm_22_lstm_cell_22_matmul_1_readvariableop_resource*
_output_shapes
:	U‘*
dtype0®
lstm_22/lstm_cell_22/MatMul_1MatMullstm_22/zeros:output:04lstm_22/lstm_cell_22/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘§
lstm_22/lstm_cell_22/addAddV2%lstm_22/lstm_cell_22/MatMul:product:0'lstm_22/lstm_cell_22/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€‘Э
+lstm_22/lstm_cell_22/BiasAdd/ReadVariableOpReadVariableOp4lstm_22_lstm_cell_22_biasadd_readvariableop_resource*
_output_shapes	
:‘*
dtype0≠
lstm_22/lstm_cell_22/BiasAddBiasAddlstm_22/lstm_cell_22/add:z:03lstm_22/lstm_cell_22/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€‘f
$lstm_22/lstm_cell_22/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :х
lstm_22/lstm_cell_22/splitSplit-lstm_22/lstm_cell_22/split/split_dim:output:0%lstm_22/lstm_cell_22/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U:€€€€€€€€€U*
	num_split~
lstm_22/lstm_cell_22/SigmoidSigmoid#lstm_22/lstm_cell_22/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€UА
lstm_22/lstm_cell_22/Sigmoid_1Sigmoid#lstm_22/lstm_cell_22/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€UП
lstm_22/lstm_cell_22/mulMul"lstm_22/lstm_cell_22/Sigmoid_1:y:0lstm_22/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ux
lstm_22/lstm_cell_22/ReluRelu#lstm_22/lstm_cell_22/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€UЮ
lstm_22/lstm_cell_22/mul_1Mul lstm_22/lstm_cell_22/Sigmoid:y:0'lstm_22/lstm_cell_22/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€UУ
lstm_22/lstm_cell_22/add_1AddV2lstm_22/lstm_cell_22/mul:z:0lstm_22/lstm_cell_22/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UА
lstm_22/lstm_cell_22/Sigmoid_2Sigmoid#lstm_22/lstm_cell_22/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€Uu
lstm_22/lstm_cell_22/Relu_1Relulstm_22/lstm_cell_22/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€UҐ
lstm_22/lstm_cell_22/mul_2Mul"lstm_22/lstm_cell_22/Sigmoid_2:y:0)lstm_22/lstm_cell_22/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Uv
%lstm_22/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   –
lstm_22/TensorArrayV2_1TensorListReserve.lstm_22/TensorArrayV2_1/element_shape:output:0 lstm_22/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“N
lstm_22/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_22/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€\
lstm_22/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : т
lstm_22/whileWhile#lstm_22/while/loop_counter:output:0)lstm_22/while/maximum_iterations:output:0lstm_22/time:output:0 lstm_22/TensorArrayV2_1:handle:0lstm_22/zeros:output:0lstm_22/zeros_1:output:0 lstm_22/strided_slice_1:output:0?lstm_22/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_22_lstm_cell_22_matmul_readvariableop_resource5lstm_22_lstm_cell_22_matmul_1_readvariableop_resource4lstm_22_lstm_cell_22_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_22_while_body_112583*%
condR
lstm_22_while_cond_112582*K
output_shapes:
8: : : : :€€€€€€€€€U:€€€€€€€€€U: : : : : *
parallel_iterations Й
8lstm_22/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€U   Џ
*lstm_22/TensorArrayV2Stack/TensorListStackTensorListStacklstm_22/while:output:3Alstm_22/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€U*
element_dtype0p
lstm_22/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€i
lstm_22/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_22/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѓ
lstm_22/strided_slice_3StridedSlice3lstm_22/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_22/strided_slice_3/stack:output:0(lstm_22/strided_slice_3/stack_1:output:0(lstm_22/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€U*
shrink_axis_maskm
lstm_22/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ѓ
lstm_22/transpose_1	Transpose3lstm_22/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_22/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€Uc
lstm_22/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ]
dropout_22/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *„£?Ф
dropout_22/dropout/MulMul lstm_22/strided_slice_3:output:0!dropout_22/dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Uh
dropout_22/dropout/ShapeShape lstm_22/strided_slice_3:output:0*
T0*
_output_shapes
:Ґ
/dropout_22/dropout/random_uniform/RandomUniformRandomUniform!dropout_22/dropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€U*
dtype0f
!dropout_22/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *∆n\>«
dropout_22/dropout/GreaterEqualGreaterEqual8dropout_22/dropout/random_uniform/RandomUniform:output:0*dropout_22/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€UЕ
dropout_22/dropout/CastCast#dropout_22/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€UК
dropout_22/dropout/Mul_1Muldropout_22/dropout/Mul:z:0dropout_22/dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€UД
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes

:U*
dtype0П
dense_5/MatMulMatMuldropout_22/dropout/Mul_1:z:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€В
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€g
IdentityIdentitydense_5/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€’
NoOpNoOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp,^lstm_20/lstm_cell_20/BiasAdd/ReadVariableOp+^lstm_20/lstm_cell_20/MatMul/ReadVariableOp-^lstm_20/lstm_cell_20/MatMul_1/ReadVariableOp^lstm_20/while,^lstm_21/lstm_cell_21/BiasAdd/ReadVariableOp+^lstm_21/lstm_cell_21/MatMul/ReadVariableOp-^lstm_21/lstm_cell_21/MatMul_1/ReadVariableOp^lstm_21/while,^lstm_22/lstm_cell_22/BiasAdd/ReadVariableOp+^lstm_22/lstm_cell_22/MatMul/ReadVariableOp-^lstm_22/lstm_cell_22/MatMul_1/ReadVariableOp^lstm_22/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:€€€€€€€€€: : : : : : : : : : : 2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2Z
+lstm_20/lstm_cell_20/BiasAdd/ReadVariableOp+lstm_20/lstm_cell_20/BiasAdd/ReadVariableOp2X
*lstm_20/lstm_cell_20/MatMul/ReadVariableOp*lstm_20/lstm_cell_20/MatMul/ReadVariableOp2\
,lstm_20/lstm_cell_20/MatMul_1/ReadVariableOp,lstm_20/lstm_cell_20/MatMul_1/ReadVariableOp2
lstm_20/whilelstm_20/while2Z
+lstm_21/lstm_cell_21/BiasAdd/ReadVariableOp+lstm_21/lstm_cell_21/BiasAdd/ReadVariableOp2X
*lstm_21/lstm_cell_21/MatMul/ReadVariableOp*lstm_21/lstm_cell_21/MatMul/ReadVariableOp2\
,lstm_21/lstm_cell_21/MatMul_1/ReadVariableOp,lstm_21/lstm_cell_21/MatMul_1/ReadVariableOp2
lstm_21/whilelstm_21/while2Z
+lstm_22/lstm_cell_22/BiasAdd/ReadVariableOp+lstm_22/lstm_cell_22/BiasAdd/ReadVariableOp2X
*lstm_22/lstm_cell_22/MatMul/ReadVariableOp*lstm_22/lstm_cell_22/MatMul/ReadVariableOp2\
,lstm_22/lstm_cell_22/MatMul_1/ReadVariableOp,lstm_22/lstm_cell_22/MatMul_1/ReadVariableOp2
lstm_22/whilelstm_22/while:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
џ

Ь
-__inference_sequential_5_layer_call_fn_111800

inputs
unknown:	‘
	unknown_0:	U‘
	unknown_1:	‘
	unknown_2:	U‘
	unknown_3:	U‘
	unknown_4:	‘
	unknown_5:	U‘
	unknown_6:	U‘
	unknown_7:	‘
	unknown_8:U
	unknown_9:
identityИҐStatefulPartitionedCall“
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_5_layer_call_and_return_conditional_losses_111593o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:€€€€€€€€€: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
у
d
+__inference_dropout_22_layer_call_fn_114593

inputs
identityИҐStatefulPartitionedCallЅ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€U* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_22_layer_call_and_return_conditional_losses_110987o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€U`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€U22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€U
 
_user_specified_nameinputs"ВL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ї
serving_default¶
K
lstm_20_input:
serving_default_lstm_20_input:0€€€€€€€€€;
dense_50
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:Ёю
ђ
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
	optimizer
		variables

trainable_variables
regularization_losses
	keras_api

signatures
∞__call__
+±&call_and_return_all_conditional_losses
≤_default_save_signature"
_tf_keras_sequential
≈
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
≥__call__
+і&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
І
	variables
trainable_variables
regularization_losses
	keras_api
µ__call__
+ґ&call_and_return_all_conditional_losses"
_tf_keras_layer
≈
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
Ј__call__
+Є&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
І
	variables
trainable_variables
 regularization_losses
!	keras_api
є__call__
+Ї&call_and_return_all_conditional_losses"
_tf_keras_layer
≈
"cell
#
state_spec
$	variables
%trainable_variables
&regularization_losses
'	keras_api
ї__call__
+Љ&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
І
(	variables
)trainable_variables
*regularization_losses
+	keras_api
љ__call__
+Њ&call_and_return_all_conditional_losses"
_tf_keras_layer
љ

,kernel
-bias
.	variables
/trainable_variables
0regularization_losses
1	keras_api
њ__call__
+ј&call_and_return_all_conditional_losses"
_tf_keras_layer
ѓ

2beta_1

3beta_2
	4decay
5learning_rate
6iter,mЪ-mЫ7mЬ8mЭ9mЮ:mЯ;m†<m°=mҐ>m£?m§,v•-v¶7vІ8v®9v©:v™;vЂ<vђ=v≠>vЃ?vѓ"
	optimizer
n
70
81
92
:3
;4
<5
=6
>7
?8
,9
-10"
trackable_list_wrapper
n
70
81
92
:3
;4
<5
=6
>7
?8
,9
-10"
trackable_list_wrapper
 "
trackable_list_wrapper
ќ
@non_trainable_variables

Alayers
Bmetrics
Clayer_regularization_losses
Dlayer_metrics
		variables

trainable_variables
regularization_losses
∞__call__
≤_default_save_signature
+±&call_and_return_all_conditional_losses
'±"call_and_return_conditional_losses"
_generic_user_object
-
Ѕserving_default"
signature_map
г
E
state_size

7kernel
8recurrent_kernel
9bias
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
¬__call__
+√&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
70
81
92"
trackable_list_wrapper
5
70
81
92"
trackable_list_wrapper
 "
trackable_list_wrapper
Љ

Jstates
Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
	variables
trainable_variables
regularization_losses
≥__call__
+і&call_and_return_all_conditional_losses
'і"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
∞
Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
	variables
trainable_variables
regularization_losses
µ__call__
+ґ&call_and_return_all_conditional_losses
'ґ"call_and_return_conditional_losses"
_generic_user_object
г
U
state_size

:kernel
;recurrent_kernel
<bias
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
ƒ__call__
+≈&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
:0
;1
<2"
trackable_list_wrapper
5
:0
;1
<2"
trackable_list_wrapper
 "
trackable_list_wrapper
Љ

Zstates
[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics
	variables
trainable_variables
regularization_losses
Ј__call__
+Є&call_and_return_all_conditional_losses
'Є"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
∞
`non_trainable_variables

alayers
bmetrics
clayer_regularization_losses
dlayer_metrics
	variables
trainable_variables
 regularization_losses
є__call__
+Ї&call_and_return_all_conditional_losses
'Ї"call_and_return_conditional_losses"
_generic_user_object
г
e
state_size

=kernel
>recurrent_kernel
?bias
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
∆__call__
+«&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
=0
>1
?2"
trackable_list_wrapper
5
=0
>1
?2"
trackable_list_wrapper
 "
trackable_list_wrapper
Љ

jstates
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
$	variables
%trainable_variables
&regularization_losses
ї__call__
+Љ&call_and_return_all_conditional_losses
'Љ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
∞
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
(	variables
)trainable_variables
*regularization_losses
љ__call__
+Њ&call_and_return_all_conditional_losses
'Њ"call_and_return_conditional_losses"
_generic_user_object
 :U2dense_5/kernel
:2dense_5/bias
.
,0
-1"
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
 "
trackable_list_wrapper
∞
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
.	variables
/trainable_variables
0regularization_losses
њ__call__
+ј&call_and_return_all_conditional_losses
'ј"call_and_return_conditional_losses"
_generic_user_object
: (2beta_1
: (2beta_2
: (2decay
: (2learning_rate
:	 (2	Adam/iter
.:,	‘2lstm_20/lstm_cell_20/kernel
8:6	U‘2%lstm_20/lstm_cell_20/recurrent_kernel
(:&‘2lstm_20/lstm_cell_20/bias
.:,	U‘2lstm_21/lstm_cell_21/kernel
8:6	U‘2%lstm_21/lstm_cell_21/recurrent_kernel
(:&‘2lstm_21/lstm_cell_21/bias
.:,	U‘2lstm_22/lstm_cell_22/kernel
8:6	U‘2%lstm_22/lstm_cell_22/recurrent_kernel
(:&‘2lstm_22/lstm_cell_22/bias
 "
trackable_list_wrapper
Q
0
1
2
3
4
5
6"
trackable_list_wrapper
5
z0
{1
|2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
70
81
92"
trackable_list_wrapper
5
70
81
92"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
}non_trainable_variables

~layers
metrics
 Аlayer_regularization_losses
Бlayer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
¬__call__
+√&call_and_return_all_conditional_losses
'√"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
:0
;1
<2"
trackable_list_wrapper
5
:0
;1
<2"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Вnon_trainable_variables
Гlayers
Дmetrics
 Еlayer_regularization_losses
Жlayer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
ƒ__call__
+≈&call_and_return_all_conditional_losses
'≈"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
=0
>1
?2"
trackable_list_wrapper
5
=0
>1
?2"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Зnon_trainable_variables
Иlayers
Йmetrics
 Кlayer_regularization_losses
Лlayer_metrics
f	variables
gtrainable_variables
hregularization_losses
∆__call__
+«&call_and_return_all_conditional_losses
'«"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
"0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
R

Мtotal

Нcount
О	variables
П	keras_api"
_tf_keras_metric
c

Рtotal

Сcount
Т
_fn_kwargs
У	variables
Ф	keras_api"
_tf_keras_metric
c

Хtotal

Цcount
Ч
_fn_kwargs
Ш	variables
Щ	keras_api"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:  (2total
:  (2count
0
М0
Н1"
trackable_list_wrapper
.
О	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
Р0
С1"
trackable_list_wrapper
.
У	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
Х0
Ц1"
trackable_list_wrapper
.
Ш	variables"
_generic_user_object
%:#U2Adam/dense_5/kernel/m
:2Adam/dense_5/bias/m
3:1	‘2"Adam/lstm_20/lstm_cell_20/kernel/m
=:;	U‘2,Adam/lstm_20/lstm_cell_20/recurrent_kernel/m
-:+‘2 Adam/lstm_20/lstm_cell_20/bias/m
3:1	U‘2"Adam/lstm_21/lstm_cell_21/kernel/m
=:;	U‘2,Adam/lstm_21/lstm_cell_21/recurrent_kernel/m
-:+‘2 Adam/lstm_21/lstm_cell_21/bias/m
3:1	U‘2"Adam/lstm_22/lstm_cell_22/kernel/m
=:;	U‘2,Adam/lstm_22/lstm_cell_22/recurrent_kernel/m
-:+‘2 Adam/lstm_22/lstm_cell_22/bias/m
%:#U2Adam/dense_5/kernel/v
:2Adam/dense_5/bias/v
3:1	‘2"Adam/lstm_20/lstm_cell_20/kernel/v
=:;	U‘2,Adam/lstm_20/lstm_cell_20/recurrent_kernel/v
-:+‘2 Adam/lstm_20/lstm_cell_20/bias/v
3:1	U‘2"Adam/lstm_21/lstm_cell_21/kernel/v
=:;	U‘2,Adam/lstm_21/lstm_cell_21/recurrent_kernel/v
-:+‘2 Adam/lstm_21/lstm_cell_21/bias/v
3:1	U‘2"Adam/lstm_22/lstm_cell_22/kernel/v
=:;	U‘2,Adam/lstm_22/lstm_cell_22/recurrent_kernel/v
-:+‘2 Adam/lstm_22/lstm_cell_22/bias/v
В2€
-__inference_sequential_5_layer_call_fn_110957
-__inference_sequential_5_layer_call_fn_111773
-__inference_sequential_5_layer_call_fn_111800
-__inference_sequential_5_layer_call_fn_111645ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
о2л
H__inference_sequential_5_layer_call_and_return_conditional_losses_112230
H__inference_sequential_5_layer_call_and_return_conditional_losses_112681
H__inference_sequential_5_layer_call_and_return_conditional_losses_111678
H__inference_sequential_5_layer_call_and_return_conditional_losses_111711ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
“Bѕ
!__inference__wrapped_model_109387lstm_20_input"Ш
С≤Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Г2А
(__inference_lstm_20_layer_call_fn_112692
(__inference_lstm_20_layer_call_fn_112703
(__inference_lstm_20_layer_call_fn_112714
(__inference_lstm_20_layer_call_fn_112725’
ћ≤»
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
п2м
C__inference_lstm_20_layer_call_and_return_conditional_losses_112868
C__inference_lstm_20_layer_call_and_return_conditional_losses_113011
C__inference_lstm_20_layer_call_and_return_conditional_losses_113154
C__inference_lstm_20_layer_call_and_return_conditional_losses_113297’
ћ≤»
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Ф2С
+__inference_dropout_20_layer_call_fn_113302
+__inference_dropout_20_layer_call_fn_113307і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
 2«
F__inference_dropout_20_layer_call_and_return_conditional_losses_113312
F__inference_dropout_20_layer_call_and_return_conditional_losses_113324і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Г2А
(__inference_lstm_21_layer_call_fn_113335
(__inference_lstm_21_layer_call_fn_113346
(__inference_lstm_21_layer_call_fn_113357
(__inference_lstm_21_layer_call_fn_113368’
ћ≤»
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
п2м
C__inference_lstm_21_layer_call_and_return_conditional_losses_113511
C__inference_lstm_21_layer_call_and_return_conditional_losses_113654
C__inference_lstm_21_layer_call_and_return_conditional_losses_113797
C__inference_lstm_21_layer_call_and_return_conditional_losses_113940’
ћ≤»
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Ф2С
+__inference_dropout_21_layer_call_fn_113945
+__inference_dropout_21_layer_call_fn_113950і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
 2«
F__inference_dropout_21_layer_call_and_return_conditional_losses_113955
F__inference_dropout_21_layer_call_and_return_conditional_losses_113967і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Г2А
(__inference_lstm_22_layer_call_fn_113978
(__inference_lstm_22_layer_call_fn_113989
(__inference_lstm_22_layer_call_fn_114000
(__inference_lstm_22_layer_call_fn_114011’
ћ≤»
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
п2м
C__inference_lstm_22_layer_call_and_return_conditional_losses_114154
C__inference_lstm_22_layer_call_and_return_conditional_losses_114297
C__inference_lstm_22_layer_call_and_return_conditional_losses_114440
C__inference_lstm_22_layer_call_and_return_conditional_losses_114583’
ћ≤»
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Ф2С
+__inference_dropout_22_layer_call_fn_114588
+__inference_dropout_22_layer_call_fn_114593і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
 2«
F__inference_dropout_22_layer_call_and_return_conditional_losses_114598
F__inference_dropout_22_layer_call_and_return_conditional_losses_114610і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
“2ѕ
(__inference_dense_5_layer_call_fn_114619Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
н2к
C__inference_dense_5_layer_call_and_return_conditional_losses_114629Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
—Bќ
$__inference_signature_wrapper_111746lstm_20_input"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ґ2Я
-__inference_lstm_cell_20_layer_call_fn_114646
-__inference_lstm_cell_20_layer_call_fn_114663Њ
µ≤±
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Ў2’
H__inference_lstm_cell_20_layer_call_and_return_conditional_losses_114695
H__inference_lstm_cell_20_layer_call_and_return_conditional_losses_114727Њ
µ≤±
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Ґ2Я
-__inference_lstm_cell_21_layer_call_fn_114744
-__inference_lstm_cell_21_layer_call_fn_114761Њ
µ≤±
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Ў2’
H__inference_lstm_cell_21_layer_call_and_return_conditional_losses_114793
H__inference_lstm_cell_21_layer_call_and_return_conditional_losses_114825Њ
µ≤±
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Ґ2Я
-__inference_lstm_cell_22_layer_call_fn_114842
-__inference_lstm_cell_22_layer_call_fn_114859Њ
µ≤±
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Ў2’
H__inference_lstm_cell_22_layer_call_and_return_conditional_losses_114891
H__inference_lstm_cell_22_layer_call_and_return_conditional_losses_114923Њ
µ≤±
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 °
!__inference__wrapped_model_109387|789:;<=>?,-:Ґ7
0Ґ-
+К(
lstm_20_input€€€€€€€€€
™ "1™.
,
dense_5!К
dense_5€€€€€€€€€£
C__inference_dense_5_layer_call_and_return_conditional_losses_114629\,-/Ґ,
%Ґ"
 К
inputs€€€€€€€€€U
™ "%Ґ"
К
0€€€€€€€€€
Ъ {
(__inference_dense_5_layer_call_fn_114619O,-/Ґ,
%Ґ"
 К
inputs€€€€€€€€€U
™ "К€€€€€€€€€Ѓ
F__inference_dropout_20_layer_call_and_return_conditional_losses_113312d7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€U
p 
™ ")Ґ&
К
0€€€€€€€€€U
Ъ Ѓ
F__inference_dropout_20_layer_call_and_return_conditional_losses_113324d7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€U
p
™ ")Ґ&
К
0€€€€€€€€€U
Ъ Ж
+__inference_dropout_20_layer_call_fn_113302W7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€U
p 
™ "К€€€€€€€€€UЖ
+__inference_dropout_20_layer_call_fn_113307W7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€U
p
™ "К€€€€€€€€€UЃ
F__inference_dropout_21_layer_call_and_return_conditional_losses_113955d7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€U
p 
™ ")Ґ&
К
0€€€€€€€€€U
Ъ Ѓ
F__inference_dropout_21_layer_call_and_return_conditional_losses_113967d7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€U
p
™ ")Ґ&
К
0€€€€€€€€€U
Ъ Ж
+__inference_dropout_21_layer_call_fn_113945W7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€U
p 
™ "К€€€€€€€€€UЖ
+__inference_dropout_21_layer_call_fn_113950W7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€U
p
™ "К€€€€€€€€€U¶
F__inference_dropout_22_layer_call_and_return_conditional_losses_114598\3Ґ0
)Ґ&
 К
inputs€€€€€€€€€U
p 
™ "%Ґ"
К
0€€€€€€€€€U
Ъ ¶
F__inference_dropout_22_layer_call_and_return_conditional_losses_114610\3Ґ0
)Ґ&
 К
inputs€€€€€€€€€U
p
™ "%Ґ"
К
0€€€€€€€€€U
Ъ ~
+__inference_dropout_22_layer_call_fn_114588O3Ґ0
)Ґ&
 К
inputs€€€€€€€€€U
p 
™ "К€€€€€€€€€U~
+__inference_dropout_22_layer_call_fn_114593O3Ґ0
)Ґ&
 К
inputs€€€€€€€€€U
p
™ "К€€€€€€€€€U“
C__inference_lstm_20_layer_call_and_return_conditional_losses_112868К789OҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€

 
p 

 
™ "2Ґ/
(К%
0€€€€€€€€€€€€€€€€€€U
Ъ “
C__inference_lstm_20_layer_call_and_return_conditional_losses_113011К789OҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€

 
p

 
™ "2Ґ/
(К%
0€€€€€€€€€€€€€€€€€€U
Ъ Є
C__inference_lstm_20_layer_call_and_return_conditional_losses_113154q789?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€

 
p 

 
™ ")Ґ&
К
0€€€€€€€€€U
Ъ Є
C__inference_lstm_20_layer_call_and_return_conditional_losses_113297q789?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€

 
p

 
™ ")Ґ&
К
0€€€€€€€€€U
Ъ ©
(__inference_lstm_20_layer_call_fn_112692}789OҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€

 
p 

 
™ "%К"€€€€€€€€€€€€€€€€€€U©
(__inference_lstm_20_layer_call_fn_112703}789OҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€

 
p

 
™ "%К"€€€€€€€€€€€€€€€€€€UР
(__inference_lstm_20_layer_call_fn_112714d789?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€

 
p 

 
™ "К€€€€€€€€€UР
(__inference_lstm_20_layer_call_fn_112725d789?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€

 
p

 
™ "К€€€€€€€€€U“
C__inference_lstm_21_layer_call_and_return_conditional_losses_113511К:;<OҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€U

 
p 

 
™ "2Ґ/
(К%
0€€€€€€€€€€€€€€€€€€U
Ъ “
C__inference_lstm_21_layer_call_and_return_conditional_losses_113654К:;<OҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€U

 
p

 
™ "2Ґ/
(К%
0€€€€€€€€€€€€€€€€€€U
Ъ Є
C__inference_lstm_21_layer_call_and_return_conditional_losses_113797q:;<?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€U

 
p 

 
™ ")Ґ&
К
0€€€€€€€€€U
Ъ Є
C__inference_lstm_21_layer_call_and_return_conditional_losses_113940q:;<?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€U

 
p

 
™ ")Ґ&
К
0€€€€€€€€€U
Ъ ©
(__inference_lstm_21_layer_call_fn_113335}:;<OҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€U

 
p 

 
™ "%К"€€€€€€€€€€€€€€€€€€U©
(__inference_lstm_21_layer_call_fn_113346}:;<OҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€U

 
p

 
™ "%К"€€€€€€€€€€€€€€€€€€UР
(__inference_lstm_21_layer_call_fn_113357d:;<?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€U

 
p 

 
™ "К€€€€€€€€€UР
(__inference_lstm_21_layer_call_fn_113368d:;<?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€U

 
p

 
™ "К€€€€€€€€€Uƒ
C__inference_lstm_22_layer_call_and_return_conditional_losses_114154}=>?OҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€U

 
p 

 
™ "%Ґ"
К
0€€€€€€€€€U
Ъ ƒ
C__inference_lstm_22_layer_call_and_return_conditional_losses_114297}=>?OҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€U

 
p

 
™ "%Ґ"
К
0€€€€€€€€€U
Ъ і
C__inference_lstm_22_layer_call_and_return_conditional_losses_114440m=>??Ґ<
5Ґ2
$К!
inputs€€€€€€€€€U

 
p 

 
™ "%Ґ"
К
0€€€€€€€€€U
Ъ і
C__inference_lstm_22_layer_call_and_return_conditional_losses_114583m=>??Ґ<
5Ґ2
$К!
inputs€€€€€€€€€U

 
p

 
™ "%Ґ"
К
0€€€€€€€€€U
Ъ Ь
(__inference_lstm_22_layer_call_fn_113978p=>?OҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€U

 
p 

 
™ "К€€€€€€€€€UЬ
(__inference_lstm_22_layer_call_fn_113989p=>?OҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€U

 
p

 
™ "К€€€€€€€€€UМ
(__inference_lstm_22_layer_call_fn_114000`=>??Ґ<
5Ґ2
$К!
inputs€€€€€€€€€U

 
p 

 
™ "К€€€€€€€€€UМ
(__inference_lstm_22_layer_call_fn_114011`=>??Ґ<
5Ґ2
$К!
inputs€€€€€€€€€U

 
p

 
™ "К€€€€€€€€€U 
H__inference_lstm_cell_20_layer_call_and_return_conditional_losses_114695э789АҐ}
vҐs
 К
inputs€€€€€€€€€
KҐH
"К
states/0€€€€€€€€€U
"К
states/1€€€€€€€€€U
p 
™ "sҐp
iҐf
К
0/0€€€€€€€€€U
EЪB
К
0/1/0€€€€€€€€€U
К
0/1/1€€€€€€€€€U
Ъ  
H__inference_lstm_cell_20_layer_call_and_return_conditional_losses_114727э789АҐ}
vҐs
 К
inputs€€€€€€€€€
KҐH
"К
states/0€€€€€€€€€U
"К
states/1€€€€€€€€€U
p
™ "sҐp
iҐf
К
0/0€€€€€€€€€U
EЪB
К
0/1/0€€€€€€€€€U
К
0/1/1€€€€€€€€€U
Ъ Я
-__inference_lstm_cell_20_layer_call_fn_114646н789АҐ}
vҐs
 К
inputs€€€€€€€€€
KҐH
"К
states/0€€€€€€€€€U
"К
states/1€€€€€€€€€U
p 
™ "cҐ`
К
0€€€€€€€€€U
AЪ>
К
1/0€€€€€€€€€U
К
1/1€€€€€€€€€UЯ
-__inference_lstm_cell_20_layer_call_fn_114663н789АҐ}
vҐs
 К
inputs€€€€€€€€€
KҐH
"К
states/0€€€€€€€€€U
"К
states/1€€€€€€€€€U
p
™ "cҐ`
К
0€€€€€€€€€U
AЪ>
К
1/0€€€€€€€€€U
К
1/1€€€€€€€€€U 
H__inference_lstm_cell_21_layer_call_and_return_conditional_losses_114793э:;<АҐ}
vҐs
 К
inputs€€€€€€€€€U
KҐH
"К
states/0€€€€€€€€€U
"К
states/1€€€€€€€€€U
p 
™ "sҐp
iҐf
К
0/0€€€€€€€€€U
EЪB
К
0/1/0€€€€€€€€€U
К
0/1/1€€€€€€€€€U
Ъ  
H__inference_lstm_cell_21_layer_call_and_return_conditional_losses_114825э:;<АҐ}
vҐs
 К
inputs€€€€€€€€€U
KҐH
"К
states/0€€€€€€€€€U
"К
states/1€€€€€€€€€U
p
™ "sҐp
iҐf
К
0/0€€€€€€€€€U
EЪB
К
0/1/0€€€€€€€€€U
К
0/1/1€€€€€€€€€U
Ъ Я
-__inference_lstm_cell_21_layer_call_fn_114744н:;<АҐ}
vҐs
 К
inputs€€€€€€€€€U
KҐH
"К
states/0€€€€€€€€€U
"К
states/1€€€€€€€€€U
p 
™ "cҐ`
К
0€€€€€€€€€U
AЪ>
К
1/0€€€€€€€€€U
К
1/1€€€€€€€€€UЯ
-__inference_lstm_cell_21_layer_call_fn_114761н:;<АҐ}
vҐs
 К
inputs€€€€€€€€€U
KҐH
"К
states/0€€€€€€€€€U
"К
states/1€€€€€€€€€U
p
™ "cҐ`
К
0€€€€€€€€€U
AЪ>
К
1/0€€€€€€€€€U
К
1/1€€€€€€€€€U 
H__inference_lstm_cell_22_layer_call_and_return_conditional_losses_114891э=>?АҐ}
vҐs
 К
inputs€€€€€€€€€U
KҐH
"К
states/0€€€€€€€€€U
"К
states/1€€€€€€€€€U
p 
™ "sҐp
iҐf
К
0/0€€€€€€€€€U
EЪB
К
0/1/0€€€€€€€€€U
К
0/1/1€€€€€€€€€U
Ъ  
H__inference_lstm_cell_22_layer_call_and_return_conditional_losses_114923э=>?АҐ}
vҐs
 К
inputs€€€€€€€€€U
KҐH
"К
states/0€€€€€€€€€U
"К
states/1€€€€€€€€€U
p
™ "sҐp
iҐf
К
0/0€€€€€€€€€U
EЪB
К
0/1/0€€€€€€€€€U
К
0/1/1€€€€€€€€€U
Ъ Я
-__inference_lstm_cell_22_layer_call_fn_114842н=>?АҐ}
vҐs
 К
inputs€€€€€€€€€U
KҐH
"К
states/0€€€€€€€€€U
"К
states/1€€€€€€€€€U
p 
™ "cҐ`
К
0€€€€€€€€€U
AЪ>
К
1/0€€€€€€€€€U
К
1/1€€€€€€€€€UЯ
-__inference_lstm_cell_22_layer_call_fn_114859н=>?АҐ}
vҐs
 К
inputs€€€€€€€€€U
KҐH
"К
states/0€€€€€€€€€U
"К
states/1€€€€€€€€€U
p
™ "cҐ`
К
0€€€€€€€€€U
AЪ>
К
1/0€€€€€€€€€U
К
1/1€€€€€€€€€Uƒ
H__inference_sequential_5_layer_call_and_return_conditional_losses_111678x789:;<=>?,-BҐ?
8Ґ5
+К(
lstm_20_input€€€€€€€€€
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ ƒ
H__inference_sequential_5_layer_call_and_return_conditional_losses_111711x789:;<=>?,-BҐ?
8Ґ5
+К(
lstm_20_input€€€€€€€€€
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ љ
H__inference_sequential_5_layer_call_and_return_conditional_losses_112230q789:;<=>?,-;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ љ
H__inference_sequential_5_layer_call_and_return_conditional_losses_112681q789:;<=>?,-;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ Ь
-__inference_sequential_5_layer_call_fn_110957k789:;<=>?,-BҐ?
8Ґ5
+К(
lstm_20_input€€€€€€€€€
p 

 
™ "К€€€€€€€€€Ь
-__inference_sequential_5_layer_call_fn_111645k789:;<=>?,-BҐ?
8Ґ5
+К(
lstm_20_input€€€€€€€€€
p

 
™ "К€€€€€€€€€Х
-__inference_sequential_5_layer_call_fn_111773d789:;<=>?,-;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€
p 

 
™ "К€€€€€€€€€Х
-__inference_sequential_5_layer_call_fn_111800d789:;<=>?,-;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€
p

 
™ "К€€€€€€€€€ґ
$__inference_signature_wrapper_111746Н789:;<=>?,-KҐH
Ґ 
A™>
<
lstm_20_input+К(
lstm_20_input€€€€€€€€€"1™.
,
dense_5!К
dense_5€€€€€€€€€