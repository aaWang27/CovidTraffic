��7
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
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
delete_old_dirsbool(�
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
dtypetype�
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
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
�
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
executor_typestring �
@
StaticRegexFullMatch	
input

output
"
patternstring
�
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
�
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handle��element_dtype"
element_dtypetype"

shape_typetype:
2	
�
TensorListReserve
element_shape"
shape_type
num_elements#
handle��element_dtype"
element_dtypetype"

shape_typetype:
2	
�
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint���������
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
�
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
�"serve*2.6.02unknown8��5
|
dense_131/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:\*!
shared_namedense_131/kernel
u
$dense_131/kernel/Read/ReadVariableOpReadVariableOpdense_131/kernel*
_output_shapes

:\*
dtype0
t
dense_131/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_131/bias
m
"dense_131/bias/Read/ReadVariableOpReadVariableOpdense_131/bias*
_output_shapes
:*
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
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
�
lstm_683/lstm_cell_683/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*.
shared_namelstm_683/lstm_cell_683/kernel
�
1lstm_683/lstm_cell_683/kernel/Read/ReadVariableOpReadVariableOplstm_683/lstm_cell_683/kernel*
_output_shapes
:	�*
dtype0
�
'lstm_683/lstm_cell_683/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	0�*8
shared_name)'lstm_683/lstm_cell_683/recurrent_kernel
�
;lstm_683/lstm_cell_683/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_683/lstm_cell_683/recurrent_kernel*
_output_shapes
:	0�*
dtype0
�
lstm_683/lstm_cell_683/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namelstm_683/lstm_cell_683/bias
�
/lstm_683/lstm_cell_683/bias/Read/ReadVariableOpReadVariableOplstm_683/lstm_cell_683/bias*
_output_shapes	
:�*
dtype0
�
lstm_684/lstm_cell_684/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	0�*.
shared_namelstm_684/lstm_cell_684/kernel
�
1lstm_684/lstm_cell_684/kernel/Read/ReadVariableOpReadVariableOplstm_684/lstm_cell_684/kernel*
_output_shapes
:	0�*
dtype0
�
'lstm_684/lstm_cell_684/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	0�*8
shared_name)'lstm_684/lstm_cell_684/recurrent_kernel
�
;lstm_684/lstm_cell_684/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_684/lstm_cell_684/recurrent_kernel*
_output_shapes
:	0�*
dtype0
�
lstm_684/lstm_cell_684/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namelstm_684/lstm_cell_684/bias
�
/lstm_684/lstm_cell_684/bias/Read/ReadVariableOpReadVariableOplstm_684/lstm_cell_684/bias*
_output_shapes	
:�*
dtype0
�
lstm_685/lstm_cell_685/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	0�*.
shared_namelstm_685/lstm_cell_685/kernel
�
1lstm_685/lstm_cell_685/kernel/Read/ReadVariableOpReadVariableOplstm_685/lstm_cell_685/kernel*
_output_shapes
:	0�*
dtype0
�
'lstm_685/lstm_cell_685/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	\�*8
shared_name)'lstm_685/lstm_cell_685/recurrent_kernel
�
;lstm_685/lstm_cell_685/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_685/lstm_cell_685/recurrent_kernel*
_output_shapes
:	\�*
dtype0
�
lstm_685/lstm_cell_685/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namelstm_685/lstm_cell_685/bias
�
/lstm_685/lstm_cell_685/bias/Read/ReadVariableOpReadVariableOplstm_685/lstm_cell_685/bias*
_output_shapes	
:�*
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
�
Adam/dense_131/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:\*(
shared_nameAdam/dense_131/kernel/m
�
+Adam/dense_131/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_131/kernel/m*
_output_shapes

:\*
dtype0
�
Adam/dense_131/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_131/bias/m
{
)Adam/dense_131/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_131/bias/m*
_output_shapes
:*
dtype0
�
$Adam/lstm_683/lstm_cell_683/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*5
shared_name&$Adam/lstm_683/lstm_cell_683/kernel/m
�
8Adam/lstm_683/lstm_cell_683/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_683/lstm_cell_683/kernel/m*
_output_shapes
:	�*
dtype0
�
.Adam/lstm_683/lstm_cell_683/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	0�*?
shared_name0.Adam/lstm_683/lstm_cell_683/recurrent_kernel/m
�
BAdam/lstm_683/lstm_cell_683/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_683/lstm_cell_683/recurrent_kernel/m*
_output_shapes
:	0�*
dtype0
�
"Adam/lstm_683/lstm_cell_683/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/lstm_683/lstm_cell_683/bias/m
�
6Adam/lstm_683/lstm_cell_683/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_683/lstm_cell_683/bias/m*
_output_shapes	
:�*
dtype0
�
$Adam/lstm_684/lstm_cell_684/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	0�*5
shared_name&$Adam/lstm_684/lstm_cell_684/kernel/m
�
8Adam/lstm_684/lstm_cell_684/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_684/lstm_cell_684/kernel/m*
_output_shapes
:	0�*
dtype0
�
.Adam/lstm_684/lstm_cell_684/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	0�*?
shared_name0.Adam/lstm_684/lstm_cell_684/recurrent_kernel/m
�
BAdam/lstm_684/lstm_cell_684/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_684/lstm_cell_684/recurrent_kernel/m*
_output_shapes
:	0�*
dtype0
�
"Adam/lstm_684/lstm_cell_684/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/lstm_684/lstm_cell_684/bias/m
�
6Adam/lstm_684/lstm_cell_684/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_684/lstm_cell_684/bias/m*
_output_shapes	
:�*
dtype0
�
$Adam/lstm_685/lstm_cell_685/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	0�*5
shared_name&$Adam/lstm_685/lstm_cell_685/kernel/m
�
8Adam/lstm_685/lstm_cell_685/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_685/lstm_cell_685/kernel/m*
_output_shapes
:	0�*
dtype0
�
.Adam/lstm_685/lstm_cell_685/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	\�*?
shared_name0.Adam/lstm_685/lstm_cell_685/recurrent_kernel/m
�
BAdam/lstm_685/lstm_cell_685/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_685/lstm_cell_685/recurrent_kernel/m*
_output_shapes
:	\�*
dtype0
�
"Adam/lstm_685/lstm_cell_685/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/lstm_685/lstm_cell_685/bias/m
�
6Adam/lstm_685/lstm_cell_685/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_685/lstm_cell_685/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/dense_131/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:\*(
shared_nameAdam/dense_131/kernel/v
�
+Adam/dense_131/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_131/kernel/v*
_output_shapes

:\*
dtype0
�
Adam/dense_131/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_131/bias/v
{
)Adam/dense_131/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_131/bias/v*
_output_shapes
:*
dtype0
�
$Adam/lstm_683/lstm_cell_683/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*5
shared_name&$Adam/lstm_683/lstm_cell_683/kernel/v
�
8Adam/lstm_683/lstm_cell_683/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_683/lstm_cell_683/kernel/v*
_output_shapes
:	�*
dtype0
�
.Adam/lstm_683/lstm_cell_683/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	0�*?
shared_name0.Adam/lstm_683/lstm_cell_683/recurrent_kernel/v
�
BAdam/lstm_683/lstm_cell_683/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_683/lstm_cell_683/recurrent_kernel/v*
_output_shapes
:	0�*
dtype0
�
"Adam/lstm_683/lstm_cell_683/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/lstm_683/lstm_cell_683/bias/v
�
6Adam/lstm_683/lstm_cell_683/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_683/lstm_cell_683/bias/v*
_output_shapes	
:�*
dtype0
�
$Adam/lstm_684/lstm_cell_684/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	0�*5
shared_name&$Adam/lstm_684/lstm_cell_684/kernel/v
�
8Adam/lstm_684/lstm_cell_684/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_684/lstm_cell_684/kernel/v*
_output_shapes
:	0�*
dtype0
�
.Adam/lstm_684/lstm_cell_684/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	0�*?
shared_name0.Adam/lstm_684/lstm_cell_684/recurrent_kernel/v
�
BAdam/lstm_684/lstm_cell_684/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_684/lstm_cell_684/recurrent_kernel/v*
_output_shapes
:	0�*
dtype0
�
"Adam/lstm_684/lstm_cell_684/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/lstm_684/lstm_cell_684/bias/v
�
6Adam/lstm_684/lstm_cell_684/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_684/lstm_cell_684/bias/v*
_output_shapes	
:�*
dtype0
�
$Adam/lstm_685/lstm_cell_685/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	0�*5
shared_name&$Adam/lstm_685/lstm_cell_685/kernel/v
�
8Adam/lstm_685/lstm_cell_685/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_685/lstm_cell_685/kernel/v*
_output_shapes
:	0�*
dtype0
�
.Adam/lstm_685/lstm_cell_685/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	\�*?
shared_name0.Adam/lstm_685/lstm_cell_685/recurrent_kernel/v
�
BAdam/lstm_685/lstm_cell_685/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_685/lstm_cell_685/recurrent_kernel/v*
_output_shapes
:	\�*
dtype0
�
"Adam/lstm_685/lstm_cell_685/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"Adam/lstm_685/lstm_cell_685/bias/v
�
6Adam/lstm_685/lstm_cell_685/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_685/lstm_cell_685/bias/v*
_output_shapes	
:�*
dtype0

NoOpNoOp
�M
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�L
value�LB�L B�L
�
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
	regularization_losses

trainable_variables
	variables
	keras_api

signatures
l
cell

state_spec
regularization_losses
trainable_variables
	variables
	keras_api
R
regularization_losses
trainable_variables
	variables
	keras_api
l
cell

state_spec
regularization_losses
trainable_variables
	variables
	keras_api
R
regularization_losses
trainable_variables
 	variables
!	keras_api
l
"cell
#
state_spec
$regularization_losses
%trainable_variables
&	variables
'	keras_api
R
(regularization_losses
)trainable_variables
*	variables
+	keras_api
h

,kernel
-bias
.regularization_losses
/trainable_variables
0	variables
1	keras_api
�
2iter

3beta_1

4beta_2
	5decay
6learning_rate,m�-m�7m�8m�9m�:m�;m�<m�=m�>m�?m�,v�-v�7v�8v�9v�:v�;v�<v�=v�>v�?v�
 
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
�
@layer_regularization_losses
Alayer_metrics
Bmetrics
	regularization_losses

Clayers

trainable_variables
	variables
Dnon_trainable_variables
 
�
E
state_size

7kernel
8recurrent_kernel
9bias
Fregularization_losses
Gtrainable_variables
H	variables
I	keras_api
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
�
Jlayer_regularization_losses
Klayer_metrics
Lmetrics

Mlayers
regularization_losses
trainable_variables
	variables
Nnon_trainable_variables

Ostates
 
 
 
�
Player_regularization_losses
Qlayer_metrics
Rmetrics

Slayers
regularization_losses
trainable_variables
	variables
Tnon_trainable_variables
�
U
state_size

:kernel
;recurrent_kernel
<bias
Vregularization_losses
Wtrainable_variables
X	variables
Y	keras_api
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
�
Zlayer_regularization_losses
[layer_metrics
\metrics

]layers
regularization_losses
trainable_variables
	variables
^non_trainable_variables

_states
 
 
 
�
`layer_regularization_losses
alayer_metrics
bmetrics

clayers
regularization_losses
trainable_variables
 	variables
dnon_trainable_variables
�
e
state_size

=kernel
>recurrent_kernel
?bias
fregularization_losses
gtrainable_variables
h	variables
i	keras_api
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
�
jlayer_regularization_losses
klayer_metrics
lmetrics

mlayers
$regularization_losses
%trainable_variables
&	variables
nnon_trainable_variables

ostates
 
 
 
�
player_regularization_losses
qlayer_metrics
rmetrics

slayers
(regularization_losses
)trainable_variables
*	variables
tnon_trainable_variables
\Z
VARIABLE_VALUEdense_131/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_131/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

,0
-1

,0
-1
�
ulayer_regularization_losses
vlayer_metrics
wmetrics

xlayers
.regularization_losses
/trainable_variables
0	variables
ynon_trainable_variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUElstm_683/lstm_cell_683/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUE'lstm_683/lstm_cell_683/recurrent_kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUElstm_683/lstm_cell_683/bias0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUElstm_684/lstm_cell_684/kernel0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUE'lstm_684/lstm_cell_684/recurrent_kernel0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUElstm_684/lstm_cell_684/bias0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUElstm_685/lstm_cell_685/kernel0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUE'lstm_685/lstm_cell_685/recurrent_kernel0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUElstm_685/lstm_cell_685/bias0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUE
 
 

z0
{1
|2
1
0
1
2
3
4
5
6
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
�
}layer_regularization_losses
~layer_metrics
metrics
�layers
Fregularization_losses
Gtrainable_variables
H	variables
�non_trainable_variables
 
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
�
 �layer_regularization_losses
�layer_metrics
�metrics
�layers
Vregularization_losses
Wtrainable_variables
X	variables
�non_trainable_variables
 
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
�
 �layer_regularization_losses
�layer_metrics
�metrics
�layers
fregularization_losses
gtrainable_variables
h	variables
�non_trainable_variables
 
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
8

�total

�count
�	variables
�	keras_api
I

�total

�count
�
_fn_kwargs
�	variables
�	keras_api
I

�total

�count
�
_fn_kwargs
�	variables
�	keras_api
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
�0
�1

�	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

�0
�1

�	variables
QO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE
 

�0
�1

�	variables
}
VARIABLE_VALUEAdam/dense_131/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_131/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE$Adam/lstm_683/lstm_cell_683/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_683/lstm_cell_683/recurrent_kernel/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE"Adam/lstm_683/lstm_cell_683/bias/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE$Adam/lstm_684/lstm_cell_684/kernel/mLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_684/lstm_cell_684/recurrent_kernel/mLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE"Adam/lstm_684/lstm_cell_684/bias/mLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE$Adam/lstm_685/lstm_cell_685/kernel/mLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_685/lstm_cell_685/recurrent_kernel/mLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE"Adam/lstm_685/lstm_cell_685/bias/mLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_131/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_131/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE$Adam/lstm_683/lstm_cell_683/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_683/lstm_cell_683/recurrent_kernel/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE"Adam/lstm_683/lstm_cell_683/bias/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE$Adam/lstm_684/lstm_cell_684/kernel/vLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_684/lstm_cell_684/recurrent_kernel/vLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE"Adam/lstm_684/lstm_cell_684/bias/vLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE$Adam/lstm_685/lstm_cell_685/kernel/vLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE.Adam/lstm_685/lstm_cell_685/recurrent_kernel/vLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE"Adam/lstm_685/lstm_cell_685/bias/vLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
serving_default_lstm_683_inputPlaceholder*+
_output_shapes
:���������*
dtype0* 
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_683_inputlstm_683/lstm_cell_683/kernel'lstm_683/lstm_cell_683/recurrent_kernellstm_683/lstm_cell_683/biaslstm_684/lstm_cell_684/kernel'lstm_684/lstm_cell_684/recurrent_kernellstm_684/lstm_cell_684/biaslstm_685/lstm_cell_685/kernel'lstm_685/lstm_cell_685/recurrent_kernellstm_685/lstm_cell_685/biasdense_131/kerneldense_131/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *.
f)R'
%__inference_signature_wrapper_1489700
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_131/kernel/Read/ReadVariableOp"dense_131/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_683/lstm_cell_683/kernel/Read/ReadVariableOp;lstm_683/lstm_cell_683/recurrent_kernel/Read/ReadVariableOp/lstm_683/lstm_cell_683/bias/Read/ReadVariableOp1lstm_684/lstm_cell_684/kernel/Read/ReadVariableOp;lstm_684/lstm_cell_684/recurrent_kernel/Read/ReadVariableOp/lstm_684/lstm_cell_684/bias/Read/ReadVariableOp1lstm_685/lstm_cell_685/kernel/Read/ReadVariableOp;lstm_685/lstm_cell_685/recurrent_kernel/Read/ReadVariableOp/lstm_685/lstm_cell_685/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOp+Adam/dense_131/kernel/m/Read/ReadVariableOp)Adam/dense_131/bias/m/Read/ReadVariableOp8Adam/lstm_683/lstm_cell_683/kernel/m/Read/ReadVariableOpBAdam/lstm_683/lstm_cell_683/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_683/lstm_cell_683/bias/m/Read/ReadVariableOp8Adam/lstm_684/lstm_cell_684/kernel/m/Read/ReadVariableOpBAdam/lstm_684/lstm_cell_684/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_684/lstm_cell_684/bias/m/Read/ReadVariableOp8Adam/lstm_685/lstm_cell_685/kernel/m/Read/ReadVariableOpBAdam/lstm_685/lstm_cell_685/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_685/lstm_cell_685/bias/m/Read/ReadVariableOp+Adam/dense_131/kernel/v/Read/ReadVariableOp)Adam/dense_131/bias/v/Read/ReadVariableOp8Adam/lstm_683/lstm_cell_683/kernel/v/Read/ReadVariableOpBAdam/lstm_683/lstm_cell_683/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_683/lstm_cell_683/bias/v/Read/ReadVariableOp8Adam/lstm_684/lstm_cell_684/kernel/v/Read/ReadVariableOpBAdam/lstm_684/lstm_cell_684/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_684/lstm_cell_684/bias/v/Read/ReadVariableOp8Adam/lstm_685/lstm_cell_685/kernel/v/Read/ReadVariableOpBAdam/lstm_685/lstm_cell_685/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_685/lstm_cell_685/bias/v/Read/ReadVariableOpConst*9
Tin2
02.	*
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
GPU 2J 8� *)
f$R"
 __inference__traced_save_1493032
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_131/kerneldense_131/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_683/lstm_cell_683/kernel'lstm_683/lstm_cell_683/recurrent_kernellstm_683/lstm_cell_683/biaslstm_684/lstm_cell_684/kernel'lstm_684/lstm_cell_684/recurrent_kernellstm_684/lstm_cell_684/biaslstm_685/lstm_cell_685/kernel'lstm_685/lstm_cell_685/recurrent_kernellstm_685/lstm_cell_685/biastotalcounttotal_1count_1total_2count_2Adam/dense_131/kernel/mAdam/dense_131/bias/m$Adam/lstm_683/lstm_cell_683/kernel/m.Adam/lstm_683/lstm_cell_683/recurrent_kernel/m"Adam/lstm_683/lstm_cell_683/bias/m$Adam/lstm_684/lstm_cell_684/kernel/m.Adam/lstm_684/lstm_cell_684/recurrent_kernel/m"Adam/lstm_684/lstm_cell_684/bias/m$Adam/lstm_685/lstm_cell_685/kernel/m.Adam/lstm_685/lstm_cell_685/recurrent_kernel/m"Adam/lstm_685/lstm_cell_685/bias/mAdam/dense_131/kernel/vAdam/dense_131/bias/v$Adam/lstm_683/lstm_cell_683/kernel/v.Adam/lstm_683/lstm_cell_683/recurrent_kernel/v"Adam/lstm_683/lstm_cell_683/bias/v$Adam/lstm_684/lstm_cell_684/kernel/v.Adam/lstm_684/lstm_cell_684/recurrent_kernel/v"Adam/lstm_684/lstm_cell_684/bias/v$Adam/lstm_685/lstm_cell_685/kernel/v.Adam/lstm_685/lstm_cell_685/recurrent_kernel/v"Adam/lstm_685/lstm_cell_685/bias/v*8
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
GPU 2J 8� *,
f'R%
#__inference__traced_restore_1493174��3
�?
�
while_body_1491810
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_684_matmul_readvariableop_resource_0:	0�I
6while_lstm_cell_684_matmul_1_readvariableop_resource_0:	0�D
5while_lstm_cell_684_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_684_matmul_readvariableop_resource:	0�G
4while_lstm_cell_684_matmul_1_readvariableop_resource:	0�B
3while_lstm_cell_684_biasadd_readvariableop_resource:	���*while/lstm_cell_684/BiasAdd/ReadVariableOp�)while/lstm_cell_684/MatMul/ReadVariableOp�+while/lstm_cell_684/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������0*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
)while/lstm_cell_684/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_684_matmul_readvariableop_resource_0*
_output_shapes
:	0�*
dtype02+
)while/lstm_cell_684/MatMul/ReadVariableOp�
while/lstm_cell_684/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_684/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_684/MatMul�
+while/lstm_cell_684/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_684_matmul_1_readvariableop_resource_0*
_output_shapes
:	0�*
dtype02-
+while/lstm_cell_684/MatMul_1/ReadVariableOp�
while/lstm_cell_684/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_684/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_684/MatMul_1�
while/lstm_cell_684/addAddV2$while/lstm_cell_684/MatMul:product:0&while/lstm_cell_684/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_684/add�
*while/lstm_cell_684/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_684_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02,
*while/lstm_cell_684/BiasAdd/ReadVariableOp�
while/lstm_cell_684/BiasAddBiasAddwhile/lstm_cell_684/add:z:02while/lstm_cell_684/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_684/BiasAdd�
#while/lstm_cell_684/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_684/split/split_dim�
while/lstm_cell_684/splitSplit,while/lstm_cell_684/split/split_dim:output:0$while/lstm_cell_684/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_split2
while/lstm_cell_684/split�
while/lstm_cell_684/SigmoidSigmoid"while/lstm_cell_684/split:output:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_684/Sigmoid�
while/lstm_cell_684/Sigmoid_1Sigmoid"while/lstm_cell_684/split:output:1*
T0*'
_output_shapes
:���������02
while/lstm_cell_684/Sigmoid_1�
while/lstm_cell_684/mulMul!while/lstm_cell_684/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������02
while/lstm_cell_684/mul�
while/lstm_cell_684/ReluRelu"while/lstm_cell_684/split:output:2*
T0*'
_output_shapes
:���������02
while/lstm_cell_684/Relu�
while/lstm_cell_684/mul_1Mulwhile/lstm_cell_684/Sigmoid:y:0&while/lstm_cell_684/Relu:activations:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_684/mul_1�
while/lstm_cell_684/add_1AddV2while/lstm_cell_684/mul:z:0while/lstm_cell_684/mul_1:z:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_684/add_1�
while/lstm_cell_684/Sigmoid_2Sigmoid"while/lstm_cell_684/split:output:3*
T0*'
_output_shapes
:���������02
while/lstm_cell_684/Sigmoid_2�
while/lstm_cell_684/Relu_1Reluwhile/lstm_cell_684/add_1:z:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_684/Relu_1�
while/lstm_cell_684/mul_2Mul!while/lstm_cell_684/Sigmoid_2:y:0(while/lstm_cell_684/Relu_1:activations:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_684/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_684/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_684/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������02
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_684/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������02
while/Identity_5�

while/NoOpNoOp+^while/lstm_cell_684/BiasAdd/ReadVariableOp*^while/lstm_cell_684/MatMul/ReadVariableOp,^while/lstm_cell_684/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_684_biasadd_readvariableop_resource5while_lstm_cell_684_biasadd_readvariableop_resource_0"n
4while_lstm_cell_684_matmul_1_readvariableop_resource6while_lstm_cell_684_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_684_matmul_readvariableop_resource4while_lstm_cell_684_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������0:���������0: : : : : 2X
*while/lstm_cell_684/BiasAdd/ReadVariableOp*while/lstm_cell_684/BiasAdd/ReadVariableOp2V
)while/lstm_cell_684/MatMul/ReadVariableOp)while/lstm_cell_684/MatMul/ReadVariableOp2Z
+while/lstm_cell_684/MatMul_1/ReadVariableOp+while/lstm_cell_684/MatMul_1/ReadVariableOp: 
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
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
: 
�
�
0__inference_sequential_133_layer_call_fn_1489754

inputs
unknown:	�
	unknown_0:	0�
	unknown_1:	�
	unknown_2:	0�
	unknown_3:	0�
	unknown_4:	�
	unknown_5:	0�
	unknown_6:	\�
	unknown_7:	�
	unknown_8:\
	unknown_9:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_sequential_133_layer_call_and_return_conditional_losses_14895472
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�V
�
E__inference_lstm_685_layer_call_and_return_conditional_losses_1492108
inputs_0?
,lstm_cell_685_matmul_readvariableop_resource:	0�A
.lstm_cell_685_matmul_1_readvariableop_resource:	\�<
-lstm_cell_685_biasadd_readvariableop_resource:	�
identity��$lstm_cell_685/BiasAdd/ReadVariableOp�#lstm_cell_685/MatMul/ReadVariableOp�%lstm_cell_685/MatMul_1/ReadVariableOp�whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :\2
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������\2
zerosf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :\2
zeros_1/packed/1�
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������\2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������02
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������0*
shrink_axis_mask2
strided_slice_2�
#lstm_cell_685/MatMul/ReadVariableOpReadVariableOp,lstm_cell_685_matmul_readvariableop_resource*
_output_shapes
:	0�*
dtype02%
#lstm_cell_685/MatMul/ReadVariableOp�
lstm_cell_685/MatMulMatMulstrided_slice_2:output:0+lstm_cell_685/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_685/MatMul�
%lstm_cell_685/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_685_matmul_1_readvariableop_resource*
_output_shapes
:	\�*
dtype02'
%lstm_cell_685/MatMul_1/ReadVariableOp�
lstm_cell_685/MatMul_1MatMulzeros:output:0-lstm_cell_685/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_685/MatMul_1�
lstm_cell_685/addAddV2lstm_cell_685/MatMul:product:0 lstm_cell_685/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_cell_685/add�
$lstm_cell_685/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_685_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02&
$lstm_cell_685/BiasAdd/ReadVariableOp�
lstm_cell_685/BiasAddBiasAddlstm_cell_685/add:z:0,lstm_cell_685/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_685/BiasAdd�
lstm_cell_685/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_685/split/split_dim�
lstm_cell_685/splitSplit&lstm_cell_685/split/split_dim:output:0lstm_cell_685/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������\:���������\:���������\:���������\*
	num_split2
lstm_cell_685/split�
lstm_cell_685/SigmoidSigmoidlstm_cell_685/split:output:0*
T0*'
_output_shapes
:���������\2
lstm_cell_685/Sigmoid�
lstm_cell_685/Sigmoid_1Sigmoidlstm_cell_685/split:output:1*
T0*'
_output_shapes
:���������\2
lstm_cell_685/Sigmoid_1�
lstm_cell_685/mulMullstm_cell_685/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������\2
lstm_cell_685/mul�
lstm_cell_685/ReluRelulstm_cell_685/split:output:2*
T0*'
_output_shapes
:���������\2
lstm_cell_685/Relu�
lstm_cell_685/mul_1Mullstm_cell_685/Sigmoid:y:0 lstm_cell_685/Relu:activations:0*
T0*'
_output_shapes
:���������\2
lstm_cell_685/mul_1�
lstm_cell_685/add_1AddV2lstm_cell_685/mul:z:0lstm_cell_685/mul_1:z:0*
T0*'
_output_shapes
:���������\2
lstm_cell_685/add_1�
lstm_cell_685/Sigmoid_2Sigmoidlstm_cell_685/split:output:3*
T0*'
_output_shapes
:���������\2
lstm_cell_685/Sigmoid_2
lstm_cell_685/Relu_1Relulstm_cell_685/add_1:z:0*
T0*'
_output_shapes
:���������\2
lstm_cell_685/Relu_1�
lstm_cell_685/mul_2Mullstm_cell_685/Sigmoid_2:y:0"lstm_cell_685/Relu_1:activations:0*
T0*'
_output_shapes
:���������\2
lstm_cell_685/mul_2�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����\   2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_685_matmul_readvariableop_resource.lstm_cell_685_matmul_1_readvariableop_resource-lstm_cell_685_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������\:���������\: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1492024*
condR
while_cond_1492023*K
output_shapes:
8: : : : :���������\:���������\: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����\   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������\*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������\*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������\2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������\2

Identity�
NoOpNoOp%^lstm_cell_685/BiasAdd/ReadVariableOp$^lstm_cell_685/MatMul/ReadVariableOp&^lstm_cell_685/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������0: : : 2L
$lstm_cell_685/BiasAdd/ReadVariableOp$lstm_cell_685/BiasAdd/ReadVariableOp2J
#lstm_cell_685/MatMul/ReadVariableOp#lstm_cell_685/MatMul/ReadVariableOp2N
%lstm_cell_685/MatMul_1/ReadVariableOp%lstm_cell_685/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������0
"
_user_specified_name
inputs/0
�
f
H__inference_dropout_683_layer_call_and_return_conditional_losses_1492552

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:���������\2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������\2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������\:O K
'
_output_shapes
:���������\
 
_user_specified_nameinputs
�
�
*__inference_lstm_685_layer_call_fn_1491965

inputs
unknown:	0�
	unknown_0:	\�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������\*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_685_layer_call_and_return_conditional_losses_14891002
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������\2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������0: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������0
 
_user_specified_nameinputs
�?
�
E__inference_lstm_684_layer_call_and_return_conditional_losses_1487547

inputs(
lstm_cell_684_1487465:	0�(
lstm_cell_684_1487467:	0�$
lstm_cell_684_1487469:	�
identity��%lstm_cell_684/StatefulPartitionedCall�whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :02
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������02
zerosf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :02
zeros_1/packed/1�
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������02	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������02
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������0*
shrink_axis_mask2
strided_slice_2�
%lstm_cell_684/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_684_1487465lstm_cell_684_1487467lstm_cell_684_1487469*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������0:���������0:���������0*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_684_layer_call_and_return_conditional_losses_14874082'
%lstm_cell_684/StatefulPartitionedCall�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_684_1487465lstm_cell_684_1487467lstm_cell_684_1487469*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������0:���������0: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1487478*
condR
while_cond_1487477*K
output_shapes:
8: : : : :���������0:���������0: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������0*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������0*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������02
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimew
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������02

Identity~
NoOpNoOp&^lstm_cell_684/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������0: : : 2N
%lstm_cell_684/StatefulPartitionedCall%lstm_cell_684/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������0
 
_user_specified_nameinputs
�?
�
while_body_1489392
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_683_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_683_matmul_1_readvariableop_resource_0:	0�D
5while_lstm_cell_683_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_683_matmul_readvariableop_resource:	�G
4while_lstm_cell_683_matmul_1_readvariableop_resource:	0�B
3while_lstm_cell_683_biasadd_readvariableop_resource:	���*while/lstm_cell_683/BiasAdd/ReadVariableOp�)while/lstm_cell_683/MatMul/ReadVariableOp�+while/lstm_cell_683/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
)while/lstm_cell_683/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_683_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype02+
)while/lstm_cell_683/MatMul/ReadVariableOp�
while/lstm_cell_683/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_683/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_683/MatMul�
+while/lstm_cell_683/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_683_matmul_1_readvariableop_resource_0*
_output_shapes
:	0�*
dtype02-
+while/lstm_cell_683/MatMul_1/ReadVariableOp�
while/lstm_cell_683/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_683/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_683/MatMul_1�
while/lstm_cell_683/addAddV2$while/lstm_cell_683/MatMul:product:0&while/lstm_cell_683/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_683/add�
*while/lstm_cell_683/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_683_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02,
*while/lstm_cell_683/BiasAdd/ReadVariableOp�
while/lstm_cell_683/BiasAddBiasAddwhile/lstm_cell_683/add:z:02while/lstm_cell_683/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_683/BiasAdd�
#while/lstm_cell_683/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_683/split/split_dim�
while/lstm_cell_683/splitSplit,while/lstm_cell_683/split/split_dim:output:0$while/lstm_cell_683/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_split2
while/lstm_cell_683/split�
while/lstm_cell_683/SigmoidSigmoid"while/lstm_cell_683/split:output:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_683/Sigmoid�
while/lstm_cell_683/Sigmoid_1Sigmoid"while/lstm_cell_683/split:output:1*
T0*'
_output_shapes
:���������02
while/lstm_cell_683/Sigmoid_1�
while/lstm_cell_683/mulMul!while/lstm_cell_683/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������02
while/lstm_cell_683/mul�
while/lstm_cell_683/ReluRelu"while/lstm_cell_683/split:output:2*
T0*'
_output_shapes
:���������02
while/lstm_cell_683/Relu�
while/lstm_cell_683/mul_1Mulwhile/lstm_cell_683/Sigmoid:y:0&while/lstm_cell_683/Relu:activations:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_683/mul_1�
while/lstm_cell_683/add_1AddV2while/lstm_cell_683/mul:z:0while/lstm_cell_683/mul_1:z:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_683/add_1�
while/lstm_cell_683/Sigmoid_2Sigmoid"while/lstm_cell_683/split:output:3*
T0*'
_output_shapes
:���������02
while/lstm_cell_683/Sigmoid_2�
while/lstm_cell_683/Relu_1Reluwhile/lstm_cell_683/add_1:z:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_683/Relu_1�
while/lstm_cell_683/mul_2Mul!while/lstm_cell_683/Sigmoid_2:y:0(while/lstm_cell_683/Relu_1:activations:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_683/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_683/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_683/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������02
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_683/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������02
while/Identity_5�

while/NoOpNoOp+^while/lstm_cell_683/BiasAdd/ReadVariableOp*^while/lstm_cell_683/MatMul/ReadVariableOp,^while/lstm_cell_683/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_683_biasadd_readvariableop_resource5while_lstm_cell_683_biasadd_readvariableop_resource_0"n
4while_lstm_cell_683_matmul_1_readvariableop_resource6while_lstm_cell_683_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_683_matmul_readvariableop_resource4while_lstm_cell_683_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������0:���������0: : : : : 2X
*while/lstm_cell_683/BiasAdd/ReadVariableOp*while/lstm_cell_683/BiasAdd/ReadVariableOp2V
)while/lstm_cell_683/MatMul/ReadVariableOp)while/lstm_cell_683/MatMul/ReadVariableOp2Z
+while/lstm_cell_683/MatMul_1/ReadVariableOp+while/lstm_cell_683/MatMul_1/ReadVariableOp: 
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
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_1490880
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1490880___redundant_placeholder05
1while_while_cond_1490880___redundant_placeholder15
1while_while_cond_1490880___redundant_placeholder25
1while_while_cond_1490880___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������0:���������0: ::::: 
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
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
:
�
�
J__inference_lstm_cell_684_layer_call_and_return_conditional_losses_1487408

inputs

states
states_11
matmul_readvariableop_resource:	0�3
 matmul_1_readvariableop_resource:	0�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	0�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	0�*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������02	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������02
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������02
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������02
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������02
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������02
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������02
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������02
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������02
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������02

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������02

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������02

Identity_2�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������0:���������0:���������0: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������0
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������0
 
_user_specified_namestates:OK
'
_output_shapes
:���������0
 
_user_specified_namestates
�
�
*sequential_133_lstm_684_while_cond_1486365L
Hsequential_133_lstm_684_while_sequential_133_lstm_684_while_loop_counterR
Nsequential_133_lstm_684_while_sequential_133_lstm_684_while_maximum_iterations-
)sequential_133_lstm_684_while_placeholder/
+sequential_133_lstm_684_while_placeholder_1/
+sequential_133_lstm_684_while_placeholder_2/
+sequential_133_lstm_684_while_placeholder_3N
Jsequential_133_lstm_684_while_less_sequential_133_lstm_684_strided_slice_1e
asequential_133_lstm_684_while_sequential_133_lstm_684_while_cond_1486365___redundant_placeholder0e
asequential_133_lstm_684_while_sequential_133_lstm_684_while_cond_1486365___redundant_placeholder1e
asequential_133_lstm_684_while_sequential_133_lstm_684_while_cond_1486365___redundant_placeholder2e
asequential_133_lstm_684_while_sequential_133_lstm_684_while_cond_1486365___redundant_placeholder3*
&sequential_133_lstm_684_while_identity
�
"sequential_133/lstm_684/while/LessLess)sequential_133_lstm_684_while_placeholderJsequential_133_lstm_684_while_less_sequential_133_lstm_684_strided_slice_1*
T0*
_output_shapes
: 2$
"sequential_133/lstm_684/while/Less�
&sequential_133/lstm_684/while/IdentityIdentity&sequential_133/lstm_684/while/Less:z:0*
T0
*
_output_shapes
: 2(
&sequential_133/lstm_684/while/Identity"Y
&sequential_133_lstm_684_while_identity/sequential_133/lstm_684/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������0:���������0: ::::: 
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
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
:
�&
�
while_body_1486880
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_683_1486904_0:	�0
while_lstm_cell_683_1486906_0:	0�,
while_lstm_cell_683_1486908_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_683_1486904:	�.
while_lstm_cell_683_1486906:	0�*
while_lstm_cell_683_1486908:	���+while/lstm_cell_683/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
+while/lstm_cell_683/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_683_1486904_0while_lstm_cell_683_1486906_0while_lstm_cell_683_1486908_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������0:���������0:���������0*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_683_layer_call_and_return_conditional_losses_14868102-
+while/lstm_cell_683/StatefulPartitionedCall�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_683/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identity4while/lstm_cell_683/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������02
while/Identity_4�
while/Identity_5Identity4while/lstm_cell_683/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������02
while/Identity_5�

while/NoOpNoOp,^while/lstm_cell_683/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_683_1486904while_lstm_cell_683_1486904_0"<
while_lstm_cell_683_1486906while_lstm_cell_683_1486906_0"<
while_lstm_cell_683_1486908while_lstm_cell_683_1486908_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������0:���������0: : : : : 2Z
+while/lstm_cell_683/StatefulPartitionedCall+while/lstm_cell_683/StatefulPartitionedCall: 
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
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_1487477
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1487477___redundant_placeholder05
1while_while_cond_1487477___redundant_placeholder15
1while_while_cond_1487477___redundant_placeholder25
1while_while_cond_1487477___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������0:���������0: ::::: 
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
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
:
�?
�
while_body_1490881
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_683_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_683_matmul_1_readvariableop_resource_0:	0�D
5while_lstm_cell_683_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_683_matmul_readvariableop_resource:	�G
4while_lstm_cell_683_matmul_1_readvariableop_resource:	0�B
3while_lstm_cell_683_biasadd_readvariableop_resource:	���*while/lstm_cell_683/BiasAdd/ReadVariableOp�)while/lstm_cell_683/MatMul/ReadVariableOp�+while/lstm_cell_683/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
)while/lstm_cell_683/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_683_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype02+
)while/lstm_cell_683/MatMul/ReadVariableOp�
while/lstm_cell_683/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_683/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_683/MatMul�
+while/lstm_cell_683/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_683_matmul_1_readvariableop_resource_0*
_output_shapes
:	0�*
dtype02-
+while/lstm_cell_683/MatMul_1/ReadVariableOp�
while/lstm_cell_683/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_683/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_683/MatMul_1�
while/lstm_cell_683/addAddV2$while/lstm_cell_683/MatMul:product:0&while/lstm_cell_683/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_683/add�
*while/lstm_cell_683/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_683_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02,
*while/lstm_cell_683/BiasAdd/ReadVariableOp�
while/lstm_cell_683/BiasAddBiasAddwhile/lstm_cell_683/add:z:02while/lstm_cell_683/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_683/BiasAdd�
#while/lstm_cell_683/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_683/split/split_dim�
while/lstm_cell_683/splitSplit,while/lstm_cell_683/split/split_dim:output:0$while/lstm_cell_683/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_split2
while/lstm_cell_683/split�
while/lstm_cell_683/SigmoidSigmoid"while/lstm_cell_683/split:output:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_683/Sigmoid�
while/lstm_cell_683/Sigmoid_1Sigmoid"while/lstm_cell_683/split:output:1*
T0*'
_output_shapes
:���������02
while/lstm_cell_683/Sigmoid_1�
while/lstm_cell_683/mulMul!while/lstm_cell_683/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������02
while/lstm_cell_683/mul�
while/lstm_cell_683/ReluRelu"while/lstm_cell_683/split:output:2*
T0*'
_output_shapes
:���������02
while/lstm_cell_683/Relu�
while/lstm_cell_683/mul_1Mulwhile/lstm_cell_683/Sigmoid:y:0&while/lstm_cell_683/Relu:activations:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_683/mul_1�
while/lstm_cell_683/add_1AddV2while/lstm_cell_683/mul:z:0while/lstm_cell_683/mul_1:z:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_683/add_1�
while/lstm_cell_683/Sigmoid_2Sigmoid"while/lstm_cell_683/split:output:3*
T0*'
_output_shapes
:���������02
while/lstm_cell_683/Sigmoid_2�
while/lstm_cell_683/Relu_1Reluwhile/lstm_cell_683/add_1:z:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_683/Relu_1�
while/lstm_cell_683/mul_2Mul!while/lstm_cell_683/Sigmoid_2:y:0(while/lstm_cell_683/Relu_1:activations:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_683/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_683/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_683/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������02
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_683/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������02
while/Identity_5�

while/NoOpNoOp+^while/lstm_cell_683/BiasAdd/ReadVariableOp*^while/lstm_cell_683/MatMul/ReadVariableOp,^while/lstm_cell_683/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_683_biasadd_readvariableop_resource5while_lstm_cell_683_biasadd_readvariableop_resource_0"n
4while_lstm_cell_683_matmul_1_readvariableop_resource6while_lstm_cell_683_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_683_matmul_readvariableop_resource4while_lstm_cell_683_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������0:���������0: : : : : 2X
*while/lstm_cell_683/BiasAdd/ReadVariableOp*while/lstm_cell_683/BiasAdd/ReadVariableOp2V
)while/lstm_cell_683/MatMul/ReadVariableOp)while/lstm_cell_683/MatMul/ReadVariableOp2Z
+while/lstm_cell_683/MatMul_1/ReadVariableOp+while/lstm_cell_683/MatMul_1/ReadVariableOp: 
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
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
: 
�?
�
while_body_1492024
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_685_matmul_readvariableop_resource_0:	0�I
6while_lstm_cell_685_matmul_1_readvariableop_resource_0:	\�D
5while_lstm_cell_685_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_685_matmul_readvariableop_resource:	0�G
4while_lstm_cell_685_matmul_1_readvariableop_resource:	\�B
3while_lstm_cell_685_biasadd_readvariableop_resource:	���*while/lstm_cell_685/BiasAdd/ReadVariableOp�)while/lstm_cell_685/MatMul/ReadVariableOp�+while/lstm_cell_685/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������0*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
)while/lstm_cell_685/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_685_matmul_readvariableop_resource_0*
_output_shapes
:	0�*
dtype02+
)while/lstm_cell_685/MatMul/ReadVariableOp�
while/lstm_cell_685/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_685/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_685/MatMul�
+while/lstm_cell_685/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_685_matmul_1_readvariableop_resource_0*
_output_shapes
:	\�*
dtype02-
+while/lstm_cell_685/MatMul_1/ReadVariableOp�
while/lstm_cell_685/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_685/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_685/MatMul_1�
while/lstm_cell_685/addAddV2$while/lstm_cell_685/MatMul:product:0&while/lstm_cell_685/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_685/add�
*while/lstm_cell_685/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_685_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02,
*while/lstm_cell_685/BiasAdd/ReadVariableOp�
while/lstm_cell_685/BiasAddBiasAddwhile/lstm_cell_685/add:z:02while/lstm_cell_685/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_685/BiasAdd�
#while/lstm_cell_685/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_685/split/split_dim�
while/lstm_cell_685/splitSplit,while/lstm_cell_685/split/split_dim:output:0$while/lstm_cell_685/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������\:���������\:���������\:���������\*
	num_split2
while/lstm_cell_685/split�
while/lstm_cell_685/SigmoidSigmoid"while/lstm_cell_685/split:output:0*
T0*'
_output_shapes
:���������\2
while/lstm_cell_685/Sigmoid�
while/lstm_cell_685/Sigmoid_1Sigmoid"while/lstm_cell_685/split:output:1*
T0*'
_output_shapes
:���������\2
while/lstm_cell_685/Sigmoid_1�
while/lstm_cell_685/mulMul!while/lstm_cell_685/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������\2
while/lstm_cell_685/mul�
while/lstm_cell_685/ReluRelu"while/lstm_cell_685/split:output:2*
T0*'
_output_shapes
:���������\2
while/lstm_cell_685/Relu�
while/lstm_cell_685/mul_1Mulwhile/lstm_cell_685/Sigmoid:y:0&while/lstm_cell_685/Relu:activations:0*
T0*'
_output_shapes
:���������\2
while/lstm_cell_685/mul_1�
while/lstm_cell_685/add_1AddV2while/lstm_cell_685/mul:z:0while/lstm_cell_685/mul_1:z:0*
T0*'
_output_shapes
:���������\2
while/lstm_cell_685/add_1�
while/lstm_cell_685/Sigmoid_2Sigmoid"while/lstm_cell_685/split:output:3*
T0*'
_output_shapes
:���������\2
while/lstm_cell_685/Sigmoid_2�
while/lstm_cell_685/Relu_1Reluwhile/lstm_cell_685/add_1:z:0*
T0*'
_output_shapes
:���������\2
while/lstm_cell_685/Relu_1�
while/lstm_cell_685/mul_2Mul!while/lstm_cell_685/Sigmoid_2:y:0(while/lstm_cell_685/Relu_1:activations:0*
T0*'
_output_shapes
:���������\2
while/lstm_cell_685/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_685/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_685/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������\2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_685/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������\2
while/Identity_5�

while/NoOpNoOp+^while/lstm_cell_685/BiasAdd/ReadVariableOp*^while/lstm_cell_685/MatMul/ReadVariableOp,^while/lstm_cell_685/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_685_biasadd_readvariableop_resource5while_lstm_cell_685_biasadd_readvariableop_resource_0"n
4while_lstm_cell_685_matmul_1_readvariableop_resource6while_lstm_cell_685_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_685_matmul_readvariableop_resource4while_lstm_cell_685_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������\:���������\: : : : : 2X
*while/lstm_cell_685/BiasAdd/ReadVariableOp*while/lstm_cell_685/BiasAdd/ReadVariableOp2V
)while/lstm_cell_685/MatMul/ReadVariableOp)while/lstm_cell_685/MatMul/ReadVariableOp2Z
+while/lstm_cell_685/MatMul_1/ReadVariableOp+while/lstm_cell_685/MatMul_1/ReadVariableOp: 
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
:���������\:-)
'
_output_shapes
:���������\:

_output_shapes
: :

_output_shapes
: 
�?
�
E__inference_lstm_685_layer_call_and_return_conditional_losses_1487943

inputs(
lstm_cell_685_1487861:	0�(
lstm_cell_685_1487863:	\�$
lstm_cell_685_1487865:	�
identity��%lstm_cell_685/StatefulPartitionedCall�whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :\2
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������\2
zerosf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :\2
zeros_1/packed/1�
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������\2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������02
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������0*
shrink_axis_mask2
strided_slice_2�
%lstm_cell_685/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_685_1487861lstm_cell_685_1487863lstm_cell_685_1487865*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������\:���������\:���������\*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_685_layer_call_and_return_conditional_losses_14878602'
%lstm_cell_685/StatefulPartitionedCall�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����\   2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_685_1487861lstm_cell_685_1487863lstm_cell_685_1487865*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������\:���������\: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1487874*
condR
while_cond_1487873*K
output_shapes:
8: : : : :���������\:���������\: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����\   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������\*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������\*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������\2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������\2

Identity~
NoOpNoOp&^lstm_cell_685/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������0: : : 2N
%lstm_cell_685/StatefulPartitionedCall%lstm_cell_685/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������0
 
_user_specified_nameinputs
�
�
while_cond_1489203
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1489203___redundant_placeholder05
1while_while_cond_1489203___redundant_placeholder15
1while_while_cond_1489203___redundant_placeholder25
1while_while_cond_1489203___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������0:���������0: ::::: 
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
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
:
�V
�
E__inference_lstm_683_layer_call_and_return_conditional_losses_1490822
inputs_0?
,lstm_cell_683_matmul_readvariableop_resource:	�A
.lstm_cell_683_matmul_1_readvariableop_resource:	0�<
-lstm_cell_683_biasadd_readvariableop_resource:	�
identity��$lstm_cell_683/BiasAdd/ReadVariableOp�#lstm_cell_683/MatMul/ReadVariableOp�%lstm_cell_683/MatMul_1/ReadVariableOp�whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :02
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������02
zerosf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :02
zeros_1/packed/1�
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������02	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
#lstm_cell_683/MatMul/ReadVariableOpReadVariableOp,lstm_cell_683_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02%
#lstm_cell_683/MatMul/ReadVariableOp�
lstm_cell_683/MatMulMatMulstrided_slice_2:output:0+lstm_cell_683/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_683/MatMul�
%lstm_cell_683/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_683_matmul_1_readvariableop_resource*
_output_shapes
:	0�*
dtype02'
%lstm_cell_683/MatMul_1/ReadVariableOp�
lstm_cell_683/MatMul_1MatMulzeros:output:0-lstm_cell_683/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_683/MatMul_1�
lstm_cell_683/addAddV2lstm_cell_683/MatMul:product:0 lstm_cell_683/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_cell_683/add�
$lstm_cell_683/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_683_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02&
$lstm_cell_683/BiasAdd/ReadVariableOp�
lstm_cell_683/BiasAddBiasAddlstm_cell_683/add:z:0,lstm_cell_683/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_683/BiasAdd�
lstm_cell_683/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_683/split/split_dim�
lstm_cell_683/splitSplit&lstm_cell_683/split/split_dim:output:0lstm_cell_683/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_split2
lstm_cell_683/split�
lstm_cell_683/SigmoidSigmoidlstm_cell_683/split:output:0*
T0*'
_output_shapes
:���������02
lstm_cell_683/Sigmoid�
lstm_cell_683/Sigmoid_1Sigmoidlstm_cell_683/split:output:1*
T0*'
_output_shapes
:���������02
lstm_cell_683/Sigmoid_1�
lstm_cell_683/mulMullstm_cell_683/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������02
lstm_cell_683/mul�
lstm_cell_683/ReluRelulstm_cell_683/split:output:2*
T0*'
_output_shapes
:���������02
lstm_cell_683/Relu�
lstm_cell_683/mul_1Mullstm_cell_683/Sigmoid:y:0 lstm_cell_683/Relu:activations:0*
T0*'
_output_shapes
:���������02
lstm_cell_683/mul_1�
lstm_cell_683/add_1AddV2lstm_cell_683/mul:z:0lstm_cell_683/mul_1:z:0*
T0*'
_output_shapes
:���������02
lstm_cell_683/add_1�
lstm_cell_683/Sigmoid_2Sigmoidlstm_cell_683/split:output:3*
T0*'
_output_shapes
:���������02
lstm_cell_683/Sigmoid_2
lstm_cell_683/Relu_1Relulstm_cell_683/add_1:z:0*
T0*'
_output_shapes
:���������02
lstm_cell_683/Relu_1�
lstm_cell_683/mul_2Mullstm_cell_683/Sigmoid_2:y:0"lstm_cell_683/Relu_1:activations:0*
T0*'
_output_shapes
:���������02
lstm_cell_683/mul_2�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_683_matmul_readvariableop_resource.lstm_cell_683_matmul_1_readvariableop_resource-lstm_cell_683_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������0:���������0: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1490738*
condR
while_cond_1490737*K
output_shapes:
8: : : : :���������0:���������0: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������0*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������0*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������02
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimew
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������02

Identity�
NoOpNoOp%^lstm_cell_683/BiasAdd/ReadVariableOp$^lstm_cell_683/MatMul/ReadVariableOp&^lstm_cell_683/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_683/BiasAdd/ReadVariableOp$lstm_cell_683/BiasAdd/ReadVariableOp2J
#lstm_cell_683/MatMul/ReadVariableOp#lstm_cell_683/MatMul/ReadVariableOp2N
%lstm_cell_683/MatMul_1/ReadVariableOp%lstm_cell_683/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�U
�
E__inference_lstm_685_layer_call_and_return_conditional_losses_1489100

inputs?
,lstm_cell_685_matmul_readvariableop_resource:	0�A
.lstm_cell_685_matmul_1_readvariableop_resource:	\�<
-lstm_cell_685_biasadd_readvariableop_resource:	�
identity��$lstm_cell_685/BiasAdd/ReadVariableOp�#lstm_cell_685/MatMul/ReadVariableOp�%lstm_cell_685/MatMul_1/ReadVariableOp�whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :\2
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������\2
zerosf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :\2
zeros_1/packed/1�
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������\2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������02
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������0*
shrink_axis_mask2
strided_slice_2�
#lstm_cell_685/MatMul/ReadVariableOpReadVariableOp,lstm_cell_685_matmul_readvariableop_resource*
_output_shapes
:	0�*
dtype02%
#lstm_cell_685/MatMul/ReadVariableOp�
lstm_cell_685/MatMulMatMulstrided_slice_2:output:0+lstm_cell_685/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_685/MatMul�
%lstm_cell_685/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_685_matmul_1_readvariableop_resource*
_output_shapes
:	\�*
dtype02'
%lstm_cell_685/MatMul_1/ReadVariableOp�
lstm_cell_685/MatMul_1MatMulzeros:output:0-lstm_cell_685/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_685/MatMul_1�
lstm_cell_685/addAddV2lstm_cell_685/MatMul:product:0 lstm_cell_685/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_cell_685/add�
$lstm_cell_685/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_685_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02&
$lstm_cell_685/BiasAdd/ReadVariableOp�
lstm_cell_685/BiasAddBiasAddlstm_cell_685/add:z:0,lstm_cell_685/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_685/BiasAdd�
lstm_cell_685/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_685/split/split_dim�
lstm_cell_685/splitSplit&lstm_cell_685/split/split_dim:output:0lstm_cell_685/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������\:���������\:���������\:���������\*
	num_split2
lstm_cell_685/split�
lstm_cell_685/SigmoidSigmoidlstm_cell_685/split:output:0*
T0*'
_output_shapes
:���������\2
lstm_cell_685/Sigmoid�
lstm_cell_685/Sigmoid_1Sigmoidlstm_cell_685/split:output:1*
T0*'
_output_shapes
:���������\2
lstm_cell_685/Sigmoid_1�
lstm_cell_685/mulMullstm_cell_685/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������\2
lstm_cell_685/mul�
lstm_cell_685/ReluRelulstm_cell_685/split:output:2*
T0*'
_output_shapes
:���������\2
lstm_cell_685/Relu�
lstm_cell_685/mul_1Mullstm_cell_685/Sigmoid:y:0 lstm_cell_685/Relu:activations:0*
T0*'
_output_shapes
:���������\2
lstm_cell_685/mul_1�
lstm_cell_685/add_1AddV2lstm_cell_685/mul:z:0lstm_cell_685/mul_1:z:0*
T0*'
_output_shapes
:���������\2
lstm_cell_685/add_1�
lstm_cell_685/Sigmoid_2Sigmoidlstm_cell_685/split:output:3*
T0*'
_output_shapes
:���������\2
lstm_cell_685/Sigmoid_2
lstm_cell_685/Relu_1Relulstm_cell_685/add_1:z:0*
T0*'
_output_shapes
:���������\2
lstm_cell_685/Relu_1�
lstm_cell_685/mul_2Mullstm_cell_685/Sigmoid_2:y:0"lstm_cell_685/Relu_1:activations:0*
T0*'
_output_shapes
:���������\2
lstm_cell_685/mul_2�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����\   2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_685_matmul_readvariableop_resource.lstm_cell_685_matmul_1_readvariableop_resource-lstm_cell_685_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������\:���������\: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1489016*
condR
while_cond_1489015*K
output_shapes:
8: : : : :���������\:���������\: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����\   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������\*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������\*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������\2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������\2

Identity�
NoOpNoOp%^lstm_cell_685/BiasAdd/ReadVariableOp$^lstm_cell_685/MatMul/ReadVariableOp&^lstm_cell_685/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������0: : : 2L
$lstm_cell_685/BiasAdd/ReadVariableOp$lstm_cell_685/BiasAdd/ReadVariableOp2J
#lstm_cell_685/MatMul/ReadVariableOp#lstm_cell_685/MatMul/ReadVariableOp2N
%lstm_cell_685/MatMul_1/ReadVariableOp%lstm_cell_685/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������0
 
_user_specified_nameinputs
�
�
*sequential_133_lstm_685_while_cond_1486505L
Hsequential_133_lstm_685_while_sequential_133_lstm_685_while_loop_counterR
Nsequential_133_lstm_685_while_sequential_133_lstm_685_while_maximum_iterations-
)sequential_133_lstm_685_while_placeholder/
+sequential_133_lstm_685_while_placeholder_1/
+sequential_133_lstm_685_while_placeholder_2/
+sequential_133_lstm_685_while_placeholder_3N
Jsequential_133_lstm_685_while_less_sequential_133_lstm_685_strided_slice_1e
asequential_133_lstm_685_while_sequential_133_lstm_685_while_cond_1486505___redundant_placeholder0e
asequential_133_lstm_685_while_sequential_133_lstm_685_while_cond_1486505___redundant_placeholder1e
asequential_133_lstm_685_while_sequential_133_lstm_685_while_cond_1486505___redundant_placeholder2e
asequential_133_lstm_685_while_sequential_133_lstm_685_while_cond_1486505___redundant_placeholder3*
&sequential_133_lstm_685_while_identity
�
"sequential_133/lstm_685/while/LessLess)sequential_133_lstm_685_while_placeholderJsequential_133_lstm_685_while_less_sequential_133_lstm_685_strided_slice_1*
T0*
_output_shapes
: 2$
"sequential_133/lstm_685/while/Less�
&sequential_133/lstm_685/while/IdentityIdentity&sequential_133/lstm_685/while/Less:z:0*
T0
*
_output_shapes
: 2(
&sequential_133/lstm_685/while/Identity"Y
&sequential_133_lstm_685_while_identity/sequential_133/lstm_685/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������\:���������\: ::::: 
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
:���������\:-)
'
_output_shapes
:���������\:

_output_shapes
: :

_output_shapes
:
�?
�
while_body_1489016
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_685_matmul_readvariableop_resource_0:	0�I
6while_lstm_cell_685_matmul_1_readvariableop_resource_0:	\�D
5while_lstm_cell_685_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_685_matmul_readvariableop_resource:	0�G
4while_lstm_cell_685_matmul_1_readvariableop_resource:	\�B
3while_lstm_cell_685_biasadd_readvariableop_resource:	���*while/lstm_cell_685/BiasAdd/ReadVariableOp�)while/lstm_cell_685/MatMul/ReadVariableOp�+while/lstm_cell_685/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������0*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
)while/lstm_cell_685/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_685_matmul_readvariableop_resource_0*
_output_shapes
:	0�*
dtype02+
)while/lstm_cell_685/MatMul/ReadVariableOp�
while/lstm_cell_685/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_685/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_685/MatMul�
+while/lstm_cell_685/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_685_matmul_1_readvariableop_resource_0*
_output_shapes
:	\�*
dtype02-
+while/lstm_cell_685/MatMul_1/ReadVariableOp�
while/lstm_cell_685/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_685/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_685/MatMul_1�
while/lstm_cell_685/addAddV2$while/lstm_cell_685/MatMul:product:0&while/lstm_cell_685/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_685/add�
*while/lstm_cell_685/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_685_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02,
*while/lstm_cell_685/BiasAdd/ReadVariableOp�
while/lstm_cell_685/BiasAddBiasAddwhile/lstm_cell_685/add:z:02while/lstm_cell_685/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_685/BiasAdd�
#while/lstm_cell_685/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_685/split/split_dim�
while/lstm_cell_685/splitSplit,while/lstm_cell_685/split/split_dim:output:0$while/lstm_cell_685/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������\:���������\:���������\:���������\*
	num_split2
while/lstm_cell_685/split�
while/lstm_cell_685/SigmoidSigmoid"while/lstm_cell_685/split:output:0*
T0*'
_output_shapes
:���������\2
while/lstm_cell_685/Sigmoid�
while/lstm_cell_685/Sigmoid_1Sigmoid"while/lstm_cell_685/split:output:1*
T0*'
_output_shapes
:���������\2
while/lstm_cell_685/Sigmoid_1�
while/lstm_cell_685/mulMul!while/lstm_cell_685/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������\2
while/lstm_cell_685/mul�
while/lstm_cell_685/ReluRelu"while/lstm_cell_685/split:output:2*
T0*'
_output_shapes
:���������\2
while/lstm_cell_685/Relu�
while/lstm_cell_685/mul_1Mulwhile/lstm_cell_685/Sigmoid:y:0&while/lstm_cell_685/Relu:activations:0*
T0*'
_output_shapes
:���������\2
while/lstm_cell_685/mul_1�
while/lstm_cell_685/add_1AddV2while/lstm_cell_685/mul:z:0while/lstm_cell_685/mul_1:z:0*
T0*'
_output_shapes
:���������\2
while/lstm_cell_685/add_1�
while/lstm_cell_685/Sigmoid_2Sigmoid"while/lstm_cell_685/split:output:3*
T0*'
_output_shapes
:���������\2
while/lstm_cell_685/Sigmoid_2�
while/lstm_cell_685/Relu_1Reluwhile/lstm_cell_685/add_1:z:0*
T0*'
_output_shapes
:���������\2
while/lstm_cell_685/Relu_1�
while/lstm_cell_685/mul_2Mul!while/lstm_cell_685/Sigmoid_2:y:0(while/lstm_cell_685/Relu_1:activations:0*
T0*'
_output_shapes
:���������\2
while/lstm_cell_685/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_685/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_685/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������\2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_685/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������\2
while/Identity_5�

while/NoOpNoOp+^while/lstm_cell_685/BiasAdd/ReadVariableOp*^while/lstm_cell_685/MatMul/ReadVariableOp,^while/lstm_cell_685/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_685_biasadd_readvariableop_resource5while_lstm_cell_685_biasadd_readvariableop_resource_0"n
4while_lstm_cell_685_matmul_1_readvariableop_resource6while_lstm_cell_685_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_685_matmul_readvariableop_resource4while_lstm_cell_685_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������\:���������\: : : : : 2X
*while/lstm_cell_685/BiasAdd/ReadVariableOp*while/lstm_cell_685/BiasAdd/ReadVariableOp2V
)while/lstm_cell_685/MatMul/ReadVariableOp)while/lstm_cell_685/MatMul/ReadVariableOp2Z
+while/lstm_cell_685/MatMul_1/ReadVariableOp+while/lstm_cell_685/MatMul_1/ReadVariableOp: 
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
:���������\:-)
'
_output_shapes
:���������\:

_output_shapes
: :

_output_shapes
: 
�
I
-__inference_dropout_682_layer_call_fn_1491899

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������0* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_682_layer_call_and_return_conditional_losses_14887102
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:���������02

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������0:S O
+
_output_shapes
:���������0
 
_user_specified_nameinputs
�
�
J__inference_lstm_cell_683_layer_call_and_return_conditional_losses_1486664

inputs

states
states_11
matmul_readvariableop_resource:	�3
 matmul_1_readvariableop_resource:	0�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	0�*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������02	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������02
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������02
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������02
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������02
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������02
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������02
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������02
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������02
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������02

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������02

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������02

Identity_2�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������0:���������0: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������0
 
_user_specified_namestates:OK
'
_output_shapes
:���������0
 
_user_specified_namestates
�
g
H__inference_dropout_681_layer_call_and_return_conditional_losses_1489317

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�5�?2
dropout/Constw
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:���������02
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:���������0*
dtype0*

seed*2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *FN�>2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:���������02
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:���������02
dropout/Cast~
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:���������02
dropout/Mul_1i
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:���������02

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������0:S O
+
_output_shapes
:���������0
 
_user_specified_nameinputs
�U
�
E__inference_lstm_684_layer_call_and_return_conditional_losses_1491894

inputs?
,lstm_cell_684_matmul_readvariableop_resource:	0�A
.lstm_cell_684_matmul_1_readvariableop_resource:	0�<
-lstm_cell_684_biasadd_readvariableop_resource:	�
identity��$lstm_cell_684/BiasAdd/ReadVariableOp�#lstm_cell_684/MatMul/ReadVariableOp�%lstm_cell_684/MatMul_1/ReadVariableOp�whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :02
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������02
zerosf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :02
zeros_1/packed/1�
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������02	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������02
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������0*
shrink_axis_mask2
strided_slice_2�
#lstm_cell_684/MatMul/ReadVariableOpReadVariableOp,lstm_cell_684_matmul_readvariableop_resource*
_output_shapes
:	0�*
dtype02%
#lstm_cell_684/MatMul/ReadVariableOp�
lstm_cell_684/MatMulMatMulstrided_slice_2:output:0+lstm_cell_684/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_684/MatMul�
%lstm_cell_684/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_684_matmul_1_readvariableop_resource*
_output_shapes
:	0�*
dtype02'
%lstm_cell_684/MatMul_1/ReadVariableOp�
lstm_cell_684/MatMul_1MatMulzeros:output:0-lstm_cell_684/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_684/MatMul_1�
lstm_cell_684/addAddV2lstm_cell_684/MatMul:product:0 lstm_cell_684/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_cell_684/add�
$lstm_cell_684/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_684_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02&
$lstm_cell_684/BiasAdd/ReadVariableOp�
lstm_cell_684/BiasAddBiasAddlstm_cell_684/add:z:0,lstm_cell_684/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_684/BiasAdd�
lstm_cell_684/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_684/split/split_dim�
lstm_cell_684/splitSplit&lstm_cell_684/split/split_dim:output:0lstm_cell_684/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_split2
lstm_cell_684/split�
lstm_cell_684/SigmoidSigmoidlstm_cell_684/split:output:0*
T0*'
_output_shapes
:���������02
lstm_cell_684/Sigmoid�
lstm_cell_684/Sigmoid_1Sigmoidlstm_cell_684/split:output:1*
T0*'
_output_shapes
:���������02
lstm_cell_684/Sigmoid_1�
lstm_cell_684/mulMullstm_cell_684/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������02
lstm_cell_684/mul�
lstm_cell_684/ReluRelulstm_cell_684/split:output:2*
T0*'
_output_shapes
:���������02
lstm_cell_684/Relu�
lstm_cell_684/mul_1Mullstm_cell_684/Sigmoid:y:0 lstm_cell_684/Relu:activations:0*
T0*'
_output_shapes
:���������02
lstm_cell_684/mul_1�
lstm_cell_684/add_1AddV2lstm_cell_684/mul:z:0lstm_cell_684/mul_1:z:0*
T0*'
_output_shapes
:���������02
lstm_cell_684/add_1�
lstm_cell_684/Sigmoid_2Sigmoidlstm_cell_684/split:output:3*
T0*'
_output_shapes
:���������02
lstm_cell_684/Sigmoid_2
lstm_cell_684/Relu_1Relulstm_cell_684/add_1:z:0*
T0*'
_output_shapes
:���������02
lstm_cell_684/Relu_1�
lstm_cell_684/mul_2Mullstm_cell_684/Sigmoid_2:y:0"lstm_cell_684/Relu_1:activations:0*
T0*'
_output_shapes
:���������02
lstm_cell_684/mul_2�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_684_matmul_readvariableop_resource.lstm_cell_684_matmul_1_readvariableop_resource-lstm_cell_684_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������0:���������0: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1491810*
condR
while_cond_1491809*K
output_shapes:
8: : : : :���������0:���������0: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������0*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������0*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������02
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimen
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������02

Identity�
NoOpNoOp%^lstm_cell_684/BiasAdd/ReadVariableOp$^lstm_cell_684/MatMul/ReadVariableOp&^lstm_cell_684/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������0: : : 2L
$lstm_cell_684/BiasAdd/ReadVariableOp$lstm_cell_684/BiasAdd/ReadVariableOp2J
#lstm_cell_684/MatMul/ReadVariableOp#lstm_cell_684/MatMul/ReadVariableOp2N
%lstm_cell_684/MatMul_1/ReadVariableOp%lstm_cell_684/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������0
 
_user_specified_nameinputs
�b
�
*sequential_133_lstm_684_while_body_1486366L
Hsequential_133_lstm_684_while_sequential_133_lstm_684_while_loop_counterR
Nsequential_133_lstm_684_while_sequential_133_lstm_684_while_maximum_iterations-
)sequential_133_lstm_684_while_placeholder/
+sequential_133_lstm_684_while_placeholder_1/
+sequential_133_lstm_684_while_placeholder_2/
+sequential_133_lstm_684_while_placeholder_3K
Gsequential_133_lstm_684_while_sequential_133_lstm_684_strided_slice_1_0�
�sequential_133_lstm_684_while_tensorarrayv2read_tensorlistgetitem_sequential_133_lstm_684_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_133_lstm_684_while_lstm_cell_684_matmul_readvariableop_resource_0:	0�a
Nsequential_133_lstm_684_while_lstm_cell_684_matmul_1_readvariableop_resource_0:	0�\
Msequential_133_lstm_684_while_lstm_cell_684_biasadd_readvariableop_resource_0:	�*
&sequential_133_lstm_684_while_identity,
(sequential_133_lstm_684_while_identity_1,
(sequential_133_lstm_684_while_identity_2,
(sequential_133_lstm_684_while_identity_3,
(sequential_133_lstm_684_while_identity_4,
(sequential_133_lstm_684_while_identity_5I
Esequential_133_lstm_684_while_sequential_133_lstm_684_strided_slice_1�
�sequential_133_lstm_684_while_tensorarrayv2read_tensorlistgetitem_sequential_133_lstm_684_tensorarrayunstack_tensorlistfromtensor]
Jsequential_133_lstm_684_while_lstm_cell_684_matmul_readvariableop_resource:	0�_
Lsequential_133_lstm_684_while_lstm_cell_684_matmul_1_readvariableop_resource:	0�Z
Ksequential_133_lstm_684_while_lstm_cell_684_biasadd_readvariableop_resource:	���Bsequential_133/lstm_684/while/lstm_cell_684/BiasAdd/ReadVariableOp�Asequential_133/lstm_684/while/lstm_cell_684/MatMul/ReadVariableOp�Csequential_133/lstm_684/while/lstm_cell_684/MatMul_1/ReadVariableOp�
Osequential_133/lstm_684/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   2Q
Osequential_133/lstm_684/while/TensorArrayV2Read/TensorListGetItem/element_shape�
Asequential_133/lstm_684/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_133_lstm_684_while_tensorarrayv2read_tensorlistgetitem_sequential_133_lstm_684_tensorarrayunstack_tensorlistfromtensor_0)sequential_133_lstm_684_while_placeholderXsequential_133/lstm_684/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������0*
element_dtype02C
Asequential_133/lstm_684/while/TensorArrayV2Read/TensorListGetItem�
Asequential_133/lstm_684/while/lstm_cell_684/MatMul/ReadVariableOpReadVariableOpLsequential_133_lstm_684_while_lstm_cell_684_matmul_readvariableop_resource_0*
_output_shapes
:	0�*
dtype02C
Asequential_133/lstm_684/while/lstm_cell_684/MatMul/ReadVariableOp�
2sequential_133/lstm_684/while/lstm_cell_684/MatMulMatMulHsequential_133/lstm_684/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_133/lstm_684/while/lstm_cell_684/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������24
2sequential_133/lstm_684/while/lstm_cell_684/MatMul�
Csequential_133/lstm_684/while/lstm_cell_684/MatMul_1/ReadVariableOpReadVariableOpNsequential_133_lstm_684_while_lstm_cell_684_matmul_1_readvariableop_resource_0*
_output_shapes
:	0�*
dtype02E
Csequential_133/lstm_684/while/lstm_cell_684/MatMul_1/ReadVariableOp�
4sequential_133/lstm_684/while/lstm_cell_684/MatMul_1MatMul+sequential_133_lstm_684_while_placeholder_2Ksequential_133/lstm_684/while/lstm_cell_684/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������26
4sequential_133/lstm_684/while/lstm_cell_684/MatMul_1�
/sequential_133/lstm_684/while/lstm_cell_684/addAddV2<sequential_133/lstm_684/while/lstm_cell_684/MatMul:product:0>sequential_133/lstm_684/while/lstm_cell_684/MatMul_1:product:0*
T0*(
_output_shapes
:����������21
/sequential_133/lstm_684/while/lstm_cell_684/add�
Bsequential_133/lstm_684/while/lstm_cell_684/BiasAdd/ReadVariableOpReadVariableOpMsequential_133_lstm_684_while_lstm_cell_684_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02D
Bsequential_133/lstm_684/while/lstm_cell_684/BiasAdd/ReadVariableOp�
3sequential_133/lstm_684/while/lstm_cell_684/BiasAddBiasAdd3sequential_133/lstm_684/while/lstm_cell_684/add:z:0Jsequential_133/lstm_684/while/lstm_cell_684/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������25
3sequential_133/lstm_684/while/lstm_cell_684/BiasAdd�
;sequential_133/lstm_684/while/lstm_cell_684/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2=
;sequential_133/lstm_684/while/lstm_cell_684/split/split_dim�
1sequential_133/lstm_684/while/lstm_cell_684/splitSplitDsequential_133/lstm_684/while/lstm_cell_684/split/split_dim:output:0<sequential_133/lstm_684/while/lstm_cell_684/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_split23
1sequential_133/lstm_684/while/lstm_cell_684/split�
3sequential_133/lstm_684/while/lstm_cell_684/SigmoidSigmoid:sequential_133/lstm_684/while/lstm_cell_684/split:output:0*
T0*'
_output_shapes
:���������025
3sequential_133/lstm_684/while/lstm_cell_684/Sigmoid�
5sequential_133/lstm_684/while/lstm_cell_684/Sigmoid_1Sigmoid:sequential_133/lstm_684/while/lstm_cell_684/split:output:1*
T0*'
_output_shapes
:���������027
5sequential_133/lstm_684/while/lstm_cell_684/Sigmoid_1�
/sequential_133/lstm_684/while/lstm_cell_684/mulMul9sequential_133/lstm_684/while/lstm_cell_684/Sigmoid_1:y:0+sequential_133_lstm_684_while_placeholder_3*
T0*'
_output_shapes
:���������021
/sequential_133/lstm_684/while/lstm_cell_684/mul�
0sequential_133/lstm_684/while/lstm_cell_684/ReluRelu:sequential_133/lstm_684/while/lstm_cell_684/split:output:2*
T0*'
_output_shapes
:���������022
0sequential_133/lstm_684/while/lstm_cell_684/Relu�
1sequential_133/lstm_684/while/lstm_cell_684/mul_1Mul7sequential_133/lstm_684/while/lstm_cell_684/Sigmoid:y:0>sequential_133/lstm_684/while/lstm_cell_684/Relu:activations:0*
T0*'
_output_shapes
:���������023
1sequential_133/lstm_684/while/lstm_cell_684/mul_1�
1sequential_133/lstm_684/while/lstm_cell_684/add_1AddV23sequential_133/lstm_684/while/lstm_cell_684/mul:z:05sequential_133/lstm_684/while/lstm_cell_684/mul_1:z:0*
T0*'
_output_shapes
:���������023
1sequential_133/lstm_684/while/lstm_cell_684/add_1�
5sequential_133/lstm_684/while/lstm_cell_684/Sigmoid_2Sigmoid:sequential_133/lstm_684/while/lstm_cell_684/split:output:3*
T0*'
_output_shapes
:���������027
5sequential_133/lstm_684/while/lstm_cell_684/Sigmoid_2�
2sequential_133/lstm_684/while/lstm_cell_684/Relu_1Relu5sequential_133/lstm_684/while/lstm_cell_684/add_1:z:0*
T0*'
_output_shapes
:���������024
2sequential_133/lstm_684/while/lstm_cell_684/Relu_1�
1sequential_133/lstm_684/while/lstm_cell_684/mul_2Mul9sequential_133/lstm_684/while/lstm_cell_684/Sigmoid_2:y:0@sequential_133/lstm_684/while/lstm_cell_684/Relu_1:activations:0*
T0*'
_output_shapes
:���������023
1sequential_133/lstm_684/while/lstm_cell_684/mul_2�
Bsequential_133/lstm_684/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_133_lstm_684_while_placeholder_1)sequential_133_lstm_684_while_placeholder5sequential_133/lstm_684/while/lstm_cell_684/mul_2:z:0*
_output_shapes
: *
element_dtype02D
Bsequential_133/lstm_684/while/TensorArrayV2Write/TensorListSetItem�
#sequential_133/lstm_684/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_133/lstm_684/while/add/y�
!sequential_133/lstm_684/while/addAddV2)sequential_133_lstm_684_while_placeholder,sequential_133/lstm_684/while/add/y:output:0*
T0*
_output_shapes
: 2#
!sequential_133/lstm_684/while/add�
%sequential_133/lstm_684/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_133/lstm_684/while/add_1/y�
#sequential_133/lstm_684/while/add_1AddV2Hsequential_133_lstm_684_while_sequential_133_lstm_684_while_loop_counter.sequential_133/lstm_684/while/add_1/y:output:0*
T0*
_output_shapes
: 2%
#sequential_133/lstm_684/while/add_1�
&sequential_133/lstm_684/while/IdentityIdentity'sequential_133/lstm_684/while/add_1:z:0#^sequential_133/lstm_684/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_133/lstm_684/while/Identity�
(sequential_133/lstm_684/while/Identity_1IdentityNsequential_133_lstm_684_while_sequential_133_lstm_684_while_maximum_iterations#^sequential_133/lstm_684/while/NoOp*
T0*
_output_shapes
: 2*
(sequential_133/lstm_684/while/Identity_1�
(sequential_133/lstm_684/while/Identity_2Identity%sequential_133/lstm_684/while/add:z:0#^sequential_133/lstm_684/while/NoOp*
T0*
_output_shapes
: 2*
(sequential_133/lstm_684/while/Identity_2�
(sequential_133/lstm_684/while/Identity_3IdentityRsequential_133/lstm_684/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_133/lstm_684/while/NoOp*
T0*
_output_shapes
: 2*
(sequential_133/lstm_684/while/Identity_3�
(sequential_133/lstm_684/while/Identity_4Identity5sequential_133/lstm_684/while/lstm_cell_684/mul_2:z:0#^sequential_133/lstm_684/while/NoOp*
T0*'
_output_shapes
:���������02*
(sequential_133/lstm_684/while/Identity_4�
(sequential_133/lstm_684/while/Identity_5Identity5sequential_133/lstm_684/while/lstm_cell_684/add_1:z:0#^sequential_133/lstm_684/while/NoOp*
T0*'
_output_shapes
:���������02*
(sequential_133/lstm_684/while/Identity_5�
"sequential_133/lstm_684/while/NoOpNoOpC^sequential_133/lstm_684/while/lstm_cell_684/BiasAdd/ReadVariableOpB^sequential_133/lstm_684/while/lstm_cell_684/MatMul/ReadVariableOpD^sequential_133/lstm_684/while/lstm_cell_684/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2$
"sequential_133/lstm_684/while/NoOp"Y
&sequential_133_lstm_684_while_identity/sequential_133/lstm_684/while/Identity:output:0"]
(sequential_133_lstm_684_while_identity_11sequential_133/lstm_684/while/Identity_1:output:0"]
(sequential_133_lstm_684_while_identity_21sequential_133/lstm_684/while/Identity_2:output:0"]
(sequential_133_lstm_684_while_identity_31sequential_133/lstm_684/while/Identity_3:output:0"]
(sequential_133_lstm_684_while_identity_41sequential_133/lstm_684/while/Identity_4:output:0"]
(sequential_133_lstm_684_while_identity_51sequential_133/lstm_684/while/Identity_5:output:0"�
Ksequential_133_lstm_684_while_lstm_cell_684_biasadd_readvariableop_resourceMsequential_133_lstm_684_while_lstm_cell_684_biasadd_readvariableop_resource_0"�
Lsequential_133_lstm_684_while_lstm_cell_684_matmul_1_readvariableop_resourceNsequential_133_lstm_684_while_lstm_cell_684_matmul_1_readvariableop_resource_0"�
Jsequential_133_lstm_684_while_lstm_cell_684_matmul_readvariableop_resourceLsequential_133_lstm_684_while_lstm_cell_684_matmul_readvariableop_resource_0"�
Esequential_133_lstm_684_while_sequential_133_lstm_684_strided_slice_1Gsequential_133_lstm_684_while_sequential_133_lstm_684_strided_slice_1_0"�
�sequential_133_lstm_684_while_tensorarrayv2read_tensorlistgetitem_sequential_133_lstm_684_tensorarrayunstack_tensorlistfromtensor�sequential_133_lstm_684_while_tensorarrayv2read_tensorlistgetitem_sequential_133_lstm_684_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������0:���������0: : : : : 2�
Bsequential_133/lstm_684/while/lstm_cell_684/BiasAdd/ReadVariableOpBsequential_133/lstm_684/while/lstm_cell_684/BiasAdd/ReadVariableOp2�
Asequential_133/lstm_684/while/lstm_cell_684/MatMul/ReadVariableOpAsequential_133/lstm_684/while/lstm_cell_684/MatMul/ReadVariableOp2�
Csequential_133/lstm_684/while/lstm_cell_684/MatMul_1/ReadVariableOpCsequential_133/lstm_684/while/lstm_cell_684/MatMul_1/ReadVariableOp: 
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
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_1491666
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1491666___redundant_placeholder05
1while_while_cond_1491666___redundant_placeholder15
1while_while_cond_1491666___redundant_placeholder25
1while_while_cond_1491666___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������0:���������0: ::::: 
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
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_1487873
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1487873___redundant_placeholder05
1while_while_cond_1487873___redundant_placeholder15
1while_while_cond_1487873___redundant_placeholder25
1while_while_cond_1487873___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������\:���������\: ::::: 
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
:���������\:-)
'
_output_shapes
:���������\:

_output_shapes
: :

_output_shapes
:
�&
�
while_body_1488076
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_685_1488100_0:	0�0
while_lstm_cell_685_1488102_0:	\�,
while_lstm_cell_685_1488104_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_685_1488100:	0�.
while_lstm_cell_685_1488102:	\�*
while_lstm_cell_685_1488104:	���+while/lstm_cell_685/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������0*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
+while/lstm_cell_685/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_685_1488100_0while_lstm_cell_685_1488102_0while_lstm_cell_685_1488104_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������\:���������\:���������\*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_685_layer_call_and_return_conditional_losses_14880062-
+while/lstm_cell_685/StatefulPartitionedCall�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_685/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identity4while/lstm_cell_685/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������\2
while/Identity_4�
while/Identity_5Identity4while/lstm_cell_685/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������\2
while/Identity_5�

while/NoOpNoOp,^while/lstm_cell_685/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_685_1488100while_lstm_cell_685_1488100_0"<
while_lstm_cell_685_1488102while_lstm_cell_685_1488102_0"<
while_lstm_cell_685_1488104while_lstm_cell_685_1488104_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������\:���������\: : : : : 2Z
+while/lstm_cell_685/StatefulPartitionedCall+while/lstm_cell_685/StatefulPartitionedCall: 
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
:���������\:-)
'
_output_shapes
:���������\:

_output_shapes
: :

_output_shapes
: 
�U
�
E__inference_lstm_685_layer_call_and_return_conditional_losses_1492394

inputs?
,lstm_cell_685_matmul_readvariableop_resource:	0�A
.lstm_cell_685_matmul_1_readvariableop_resource:	\�<
-lstm_cell_685_biasadd_readvariableop_resource:	�
identity��$lstm_cell_685/BiasAdd/ReadVariableOp�#lstm_cell_685/MatMul/ReadVariableOp�%lstm_cell_685/MatMul_1/ReadVariableOp�whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :\2
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������\2
zerosf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :\2
zeros_1/packed/1�
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������\2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������02
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������0*
shrink_axis_mask2
strided_slice_2�
#lstm_cell_685/MatMul/ReadVariableOpReadVariableOp,lstm_cell_685_matmul_readvariableop_resource*
_output_shapes
:	0�*
dtype02%
#lstm_cell_685/MatMul/ReadVariableOp�
lstm_cell_685/MatMulMatMulstrided_slice_2:output:0+lstm_cell_685/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_685/MatMul�
%lstm_cell_685/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_685_matmul_1_readvariableop_resource*
_output_shapes
:	\�*
dtype02'
%lstm_cell_685/MatMul_1/ReadVariableOp�
lstm_cell_685/MatMul_1MatMulzeros:output:0-lstm_cell_685/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_685/MatMul_1�
lstm_cell_685/addAddV2lstm_cell_685/MatMul:product:0 lstm_cell_685/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_cell_685/add�
$lstm_cell_685/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_685_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02&
$lstm_cell_685/BiasAdd/ReadVariableOp�
lstm_cell_685/BiasAddBiasAddlstm_cell_685/add:z:0,lstm_cell_685/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_685/BiasAdd�
lstm_cell_685/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_685/split/split_dim�
lstm_cell_685/splitSplit&lstm_cell_685/split/split_dim:output:0lstm_cell_685/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������\:���������\:���������\:���������\*
	num_split2
lstm_cell_685/split�
lstm_cell_685/SigmoidSigmoidlstm_cell_685/split:output:0*
T0*'
_output_shapes
:���������\2
lstm_cell_685/Sigmoid�
lstm_cell_685/Sigmoid_1Sigmoidlstm_cell_685/split:output:1*
T0*'
_output_shapes
:���������\2
lstm_cell_685/Sigmoid_1�
lstm_cell_685/mulMullstm_cell_685/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������\2
lstm_cell_685/mul�
lstm_cell_685/ReluRelulstm_cell_685/split:output:2*
T0*'
_output_shapes
:���������\2
lstm_cell_685/Relu�
lstm_cell_685/mul_1Mullstm_cell_685/Sigmoid:y:0 lstm_cell_685/Relu:activations:0*
T0*'
_output_shapes
:���������\2
lstm_cell_685/mul_1�
lstm_cell_685/add_1AddV2lstm_cell_685/mul:z:0lstm_cell_685/mul_1:z:0*
T0*'
_output_shapes
:���������\2
lstm_cell_685/add_1�
lstm_cell_685/Sigmoid_2Sigmoidlstm_cell_685/split:output:3*
T0*'
_output_shapes
:���������\2
lstm_cell_685/Sigmoid_2
lstm_cell_685/Relu_1Relulstm_cell_685/add_1:z:0*
T0*'
_output_shapes
:���������\2
lstm_cell_685/Relu_1�
lstm_cell_685/mul_2Mullstm_cell_685/Sigmoid_2:y:0"lstm_cell_685/Relu_1:activations:0*
T0*'
_output_shapes
:���������\2
lstm_cell_685/mul_2�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����\   2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_685_matmul_readvariableop_resource.lstm_cell_685_matmul_1_readvariableop_resource-lstm_cell_685_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������\:���������\: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1492310*
condR
while_cond_1492309*K
output_shapes:
8: : : : :���������\:���������\: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����\   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������\*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������\*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������\2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������\2

Identity�
NoOpNoOp%^lstm_cell_685/BiasAdd/ReadVariableOp$^lstm_cell_685/MatMul/ReadVariableOp&^lstm_cell_685/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������0: : : 2L
$lstm_cell_685/BiasAdd/ReadVariableOp$lstm_cell_685/BiasAdd/ReadVariableOp2J
#lstm_cell_685/MatMul/ReadVariableOp#lstm_cell_685/MatMul/ReadVariableOp2N
%lstm_cell_685/MatMul_1/ReadVariableOp%lstm_cell_685/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������0
 
_user_specified_nameinputs
�
�
/__inference_lstm_cell_684_layer_call_fn_1492715

inputs
states_0
states_1
unknown:	0�
	unknown_0:	0�
	unknown_1:	�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������0:���������0:���������0*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_684_layer_call_and_return_conditional_losses_14874082
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������02

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������02

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������02

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������0:���������0:���������0: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������0
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������0
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������0
"
_user_specified_name
states/1
�

�
%__inference_signature_wrapper_1489700
lstm_683_input
unknown:	�
	unknown_0:	0�
	unknown_1:	�
	unknown_2:	0�
	unknown_3:	0�
	unknown_4:	�
	unknown_5:	0�
	unknown_6:	\�
	unknown_7:	�
	unknown_8:\
	unknown_9:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllstm_683_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference__wrapped_model_14865972
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:���������
(
_user_specified_namelstm_683_input
�U
�
E__inference_lstm_684_layer_call_and_return_conditional_losses_1489288

inputs?
,lstm_cell_684_matmul_readvariableop_resource:	0�A
.lstm_cell_684_matmul_1_readvariableop_resource:	0�<
-lstm_cell_684_biasadd_readvariableop_resource:	�
identity��$lstm_cell_684/BiasAdd/ReadVariableOp�#lstm_cell_684/MatMul/ReadVariableOp�%lstm_cell_684/MatMul_1/ReadVariableOp�whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :02
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������02
zerosf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :02
zeros_1/packed/1�
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������02	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������02
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������0*
shrink_axis_mask2
strided_slice_2�
#lstm_cell_684/MatMul/ReadVariableOpReadVariableOp,lstm_cell_684_matmul_readvariableop_resource*
_output_shapes
:	0�*
dtype02%
#lstm_cell_684/MatMul/ReadVariableOp�
lstm_cell_684/MatMulMatMulstrided_slice_2:output:0+lstm_cell_684/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_684/MatMul�
%lstm_cell_684/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_684_matmul_1_readvariableop_resource*
_output_shapes
:	0�*
dtype02'
%lstm_cell_684/MatMul_1/ReadVariableOp�
lstm_cell_684/MatMul_1MatMulzeros:output:0-lstm_cell_684/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_684/MatMul_1�
lstm_cell_684/addAddV2lstm_cell_684/MatMul:product:0 lstm_cell_684/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_cell_684/add�
$lstm_cell_684/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_684_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02&
$lstm_cell_684/BiasAdd/ReadVariableOp�
lstm_cell_684/BiasAddBiasAddlstm_cell_684/add:z:0,lstm_cell_684/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_684/BiasAdd�
lstm_cell_684/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_684/split/split_dim�
lstm_cell_684/splitSplit&lstm_cell_684/split/split_dim:output:0lstm_cell_684/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_split2
lstm_cell_684/split�
lstm_cell_684/SigmoidSigmoidlstm_cell_684/split:output:0*
T0*'
_output_shapes
:���������02
lstm_cell_684/Sigmoid�
lstm_cell_684/Sigmoid_1Sigmoidlstm_cell_684/split:output:1*
T0*'
_output_shapes
:���������02
lstm_cell_684/Sigmoid_1�
lstm_cell_684/mulMullstm_cell_684/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������02
lstm_cell_684/mul�
lstm_cell_684/ReluRelulstm_cell_684/split:output:2*
T0*'
_output_shapes
:���������02
lstm_cell_684/Relu�
lstm_cell_684/mul_1Mullstm_cell_684/Sigmoid:y:0 lstm_cell_684/Relu:activations:0*
T0*'
_output_shapes
:���������02
lstm_cell_684/mul_1�
lstm_cell_684/add_1AddV2lstm_cell_684/mul:z:0lstm_cell_684/mul_1:z:0*
T0*'
_output_shapes
:���������02
lstm_cell_684/add_1�
lstm_cell_684/Sigmoid_2Sigmoidlstm_cell_684/split:output:3*
T0*'
_output_shapes
:���������02
lstm_cell_684/Sigmoid_2
lstm_cell_684/Relu_1Relulstm_cell_684/add_1:z:0*
T0*'
_output_shapes
:���������02
lstm_cell_684/Relu_1�
lstm_cell_684/mul_2Mullstm_cell_684/Sigmoid_2:y:0"lstm_cell_684/Relu_1:activations:0*
T0*'
_output_shapes
:���������02
lstm_cell_684/mul_2�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_684_matmul_readvariableop_resource.lstm_cell_684_matmul_1_readvariableop_resource-lstm_cell_684_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������0:���������0: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1489204*
condR
while_cond_1489203*K
output_shapes:
8: : : : :���������0:���������0: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������0*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������0*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������02
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimen
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������02

Identity�
NoOpNoOp%^lstm_cell_684/BiasAdd/ReadVariableOp$^lstm_cell_684/MatMul/ReadVariableOp&^lstm_cell_684/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������0: : : 2L
$lstm_cell_684/BiasAdd/ReadVariableOp$lstm_cell_684/BiasAdd/ReadVariableOp2J
#lstm_cell_684/MatMul/ReadVariableOp#lstm_cell_684/MatMul/ReadVariableOp2N
%lstm_cell_684/MatMul_1/ReadVariableOp%lstm_cell_684/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������0
 
_user_specified_nameinputs
�
�
while_cond_1491166
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1491166___redundant_placeholder05
1while_while_cond_1491166___redundant_placeholder15
1while_while_cond_1491166___redundant_placeholder25
1while_while_cond_1491166___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������0:���������0: ::::: 
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
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_1491809
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1491809___redundant_placeholder05
1while_while_cond_1491809___redundant_placeholder15
1while_while_cond_1491809___redundant_placeholder25
1while_while_cond_1491809___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������0:���������0: ::::: 
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
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
:
�
f
H__inference_dropout_683_layer_call_and_return_conditional_losses_1488867

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:���������\2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������\2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������\:O K
'
_output_shapes
:���������\
 
_user_specified_nameinputs
�?
�
while_body_1492167
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_685_matmul_readvariableop_resource_0:	0�I
6while_lstm_cell_685_matmul_1_readvariableop_resource_0:	\�D
5while_lstm_cell_685_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_685_matmul_readvariableop_resource:	0�G
4while_lstm_cell_685_matmul_1_readvariableop_resource:	\�B
3while_lstm_cell_685_biasadd_readvariableop_resource:	���*while/lstm_cell_685/BiasAdd/ReadVariableOp�)while/lstm_cell_685/MatMul/ReadVariableOp�+while/lstm_cell_685/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������0*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
)while/lstm_cell_685/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_685_matmul_readvariableop_resource_0*
_output_shapes
:	0�*
dtype02+
)while/lstm_cell_685/MatMul/ReadVariableOp�
while/lstm_cell_685/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_685/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_685/MatMul�
+while/lstm_cell_685/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_685_matmul_1_readvariableop_resource_0*
_output_shapes
:	\�*
dtype02-
+while/lstm_cell_685/MatMul_1/ReadVariableOp�
while/lstm_cell_685/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_685/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_685/MatMul_1�
while/lstm_cell_685/addAddV2$while/lstm_cell_685/MatMul:product:0&while/lstm_cell_685/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_685/add�
*while/lstm_cell_685/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_685_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02,
*while/lstm_cell_685/BiasAdd/ReadVariableOp�
while/lstm_cell_685/BiasAddBiasAddwhile/lstm_cell_685/add:z:02while/lstm_cell_685/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_685/BiasAdd�
#while/lstm_cell_685/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_685/split/split_dim�
while/lstm_cell_685/splitSplit,while/lstm_cell_685/split/split_dim:output:0$while/lstm_cell_685/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������\:���������\:���������\:���������\*
	num_split2
while/lstm_cell_685/split�
while/lstm_cell_685/SigmoidSigmoid"while/lstm_cell_685/split:output:0*
T0*'
_output_shapes
:���������\2
while/lstm_cell_685/Sigmoid�
while/lstm_cell_685/Sigmoid_1Sigmoid"while/lstm_cell_685/split:output:1*
T0*'
_output_shapes
:���������\2
while/lstm_cell_685/Sigmoid_1�
while/lstm_cell_685/mulMul!while/lstm_cell_685/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������\2
while/lstm_cell_685/mul�
while/lstm_cell_685/ReluRelu"while/lstm_cell_685/split:output:2*
T0*'
_output_shapes
:���������\2
while/lstm_cell_685/Relu�
while/lstm_cell_685/mul_1Mulwhile/lstm_cell_685/Sigmoid:y:0&while/lstm_cell_685/Relu:activations:0*
T0*'
_output_shapes
:���������\2
while/lstm_cell_685/mul_1�
while/lstm_cell_685/add_1AddV2while/lstm_cell_685/mul:z:0while/lstm_cell_685/mul_1:z:0*
T0*'
_output_shapes
:���������\2
while/lstm_cell_685/add_1�
while/lstm_cell_685/Sigmoid_2Sigmoid"while/lstm_cell_685/split:output:3*
T0*'
_output_shapes
:���������\2
while/lstm_cell_685/Sigmoid_2�
while/lstm_cell_685/Relu_1Reluwhile/lstm_cell_685/add_1:z:0*
T0*'
_output_shapes
:���������\2
while/lstm_cell_685/Relu_1�
while/lstm_cell_685/mul_2Mul!while/lstm_cell_685/Sigmoid_2:y:0(while/lstm_cell_685/Relu_1:activations:0*
T0*'
_output_shapes
:���������\2
while/lstm_cell_685/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_685/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_685/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������\2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_685/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������\2
while/Identity_5�

while/NoOpNoOp+^while/lstm_cell_685/BiasAdd/ReadVariableOp*^while/lstm_cell_685/MatMul/ReadVariableOp,^while/lstm_cell_685/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_685_biasadd_readvariableop_resource5while_lstm_cell_685_biasadd_readvariableop_resource_0"n
4while_lstm_cell_685_matmul_1_readvariableop_resource6while_lstm_cell_685_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_685_matmul_readvariableop_resource4while_lstm_cell_685_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������\:���������\: : : : : 2X
*while/lstm_cell_685/BiasAdd/ReadVariableOp*while/lstm_cell_685/BiasAdd/ReadVariableOp2V
)while/lstm_cell_685/MatMul/ReadVariableOp)while/lstm_cell_685/MatMul/ReadVariableOp2Z
+while/lstm_cell_685/MatMul_1/ReadVariableOp+while/lstm_cell_685/MatMul_1/ReadVariableOp: 
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
:���������\:-)
'
_output_shapes
:���������\:

_output_shapes
: :

_output_shapes
: 
�
�
0__inference_sequential_133_layer_call_fn_1489599
lstm_683_input
unknown:	�
	unknown_0:	0�
	unknown_1:	�
	unknown_2:	0�
	unknown_3:	0�
	unknown_4:	�
	unknown_5:	0�
	unknown_6:	\�
	unknown_7:	�
	unknown_8:\
	unknown_9:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllstm_683_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_sequential_133_layer_call_and_return_conditional_losses_14895472
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:���������
(
_user_specified_namelstm_683_input
�?
�
while_body_1492310
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_685_matmul_readvariableop_resource_0:	0�I
6while_lstm_cell_685_matmul_1_readvariableop_resource_0:	\�D
5while_lstm_cell_685_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_685_matmul_readvariableop_resource:	0�G
4while_lstm_cell_685_matmul_1_readvariableop_resource:	\�B
3while_lstm_cell_685_biasadd_readvariableop_resource:	���*while/lstm_cell_685/BiasAdd/ReadVariableOp�)while/lstm_cell_685/MatMul/ReadVariableOp�+while/lstm_cell_685/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������0*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
)while/lstm_cell_685/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_685_matmul_readvariableop_resource_0*
_output_shapes
:	0�*
dtype02+
)while/lstm_cell_685/MatMul/ReadVariableOp�
while/lstm_cell_685/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_685/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_685/MatMul�
+while/lstm_cell_685/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_685_matmul_1_readvariableop_resource_0*
_output_shapes
:	\�*
dtype02-
+while/lstm_cell_685/MatMul_1/ReadVariableOp�
while/lstm_cell_685/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_685/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_685/MatMul_1�
while/lstm_cell_685/addAddV2$while/lstm_cell_685/MatMul:product:0&while/lstm_cell_685/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_685/add�
*while/lstm_cell_685/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_685_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02,
*while/lstm_cell_685/BiasAdd/ReadVariableOp�
while/lstm_cell_685/BiasAddBiasAddwhile/lstm_cell_685/add:z:02while/lstm_cell_685/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_685/BiasAdd�
#while/lstm_cell_685/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_685/split/split_dim�
while/lstm_cell_685/splitSplit,while/lstm_cell_685/split/split_dim:output:0$while/lstm_cell_685/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������\:���������\:���������\:���������\*
	num_split2
while/lstm_cell_685/split�
while/lstm_cell_685/SigmoidSigmoid"while/lstm_cell_685/split:output:0*
T0*'
_output_shapes
:���������\2
while/lstm_cell_685/Sigmoid�
while/lstm_cell_685/Sigmoid_1Sigmoid"while/lstm_cell_685/split:output:1*
T0*'
_output_shapes
:���������\2
while/lstm_cell_685/Sigmoid_1�
while/lstm_cell_685/mulMul!while/lstm_cell_685/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������\2
while/lstm_cell_685/mul�
while/lstm_cell_685/ReluRelu"while/lstm_cell_685/split:output:2*
T0*'
_output_shapes
:���������\2
while/lstm_cell_685/Relu�
while/lstm_cell_685/mul_1Mulwhile/lstm_cell_685/Sigmoid:y:0&while/lstm_cell_685/Relu:activations:0*
T0*'
_output_shapes
:���������\2
while/lstm_cell_685/mul_1�
while/lstm_cell_685/add_1AddV2while/lstm_cell_685/mul:z:0while/lstm_cell_685/mul_1:z:0*
T0*'
_output_shapes
:���������\2
while/lstm_cell_685/add_1�
while/lstm_cell_685/Sigmoid_2Sigmoid"while/lstm_cell_685/split:output:3*
T0*'
_output_shapes
:���������\2
while/lstm_cell_685/Sigmoid_2�
while/lstm_cell_685/Relu_1Reluwhile/lstm_cell_685/add_1:z:0*
T0*'
_output_shapes
:���������\2
while/lstm_cell_685/Relu_1�
while/lstm_cell_685/mul_2Mul!while/lstm_cell_685/Sigmoid_2:y:0(while/lstm_cell_685/Relu_1:activations:0*
T0*'
_output_shapes
:���������\2
while/lstm_cell_685/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_685/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_685/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������\2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_685/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������\2
while/Identity_5�

while/NoOpNoOp+^while/lstm_cell_685/BiasAdd/ReadVariableOp*^while/lstm_cell_685/MatMul/ReadVariableOp,^while/lstm_cell_685/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_685_biasadd_readvariableop_resource5while_lstm_cell_685_biasadd_readvariableop_resource_0"n
4while_lstm_cell_685_matmul_1_readvariableop_resource6while_lstm_cell_685_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_685_matmul_readvariableop_resource4while_lstm_cell_685_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������\:���������\: : : : : 2X
*while/lstm_cell_685/BiasAdd/ReadVariableOp*while/lstm_cell_685/BiasAdd/ReadVariableOp2V
)while/lstm_cell_685/MatMul/ReadVariableOp)while/lstm_cell_685/MatMul/ReadVariableOp2Z
+while/lstm_cell_685/MatMul_1/ReadVariableOp+while/lstm_cell_685/MatMul_1/ReadVariableOp: 
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
:���������\:-)
'
_output_shapes
:���������\:

_output_shapes
: :

_output_shapes
: 
�
�
J__inference_lstm_cell_683_layer_call_and_return_conditional_losses_1492681

inputs
states_0
states_11
matmul_readvariableop_resource:	�3
 matmul_1_readvariableop_resource:	0�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	0�*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������02	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������02
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������02
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������02
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������02
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������02
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������02
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������02
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������02
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������02

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������02

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������02

Identity_2�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������0:���������0: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������0
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������0
"
_user_specified_name
states/1
�&
�
while_body_1487276
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_684_1487300_0:	0�0
while_lstm_cell_684_1487302_0:	0�,
while_lstm_cell_684_1487304_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_684_1487300:	0�.
while_lstm_cell_684_1487302:	0�*
while_lstm_cell_684_1487304:	���+while/lstm_cell_684/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������0*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
+while/lstm_cell_684/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_684_1487300_0while_lstm_cell_684_1487302_0while_lstm_cell_684_1487304_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������0:���������0:���������0*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_684_layer_call_and_return_conditional_losses_14872622-
+while/lstm_cell_684/StatefulPartitionedCall�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_684/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identity4while/lstm_cell_684/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������02
while/Identity_4�
while/Identity_5Identity4while/lstm_cell_684/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������02
while/Identity_5�

while/NoOpNoOp,^while/lstm_cell_684/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_684_1487300while_lstm_cell_684_1487300_0"<
while_lstm_cell_684_1487302while_lstm_cell_684_1487302_0"<
while_lstm_cell_684_1487304while_lstm_cell_684_1487304_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������0:���������0: : : : : 2Z
+while/lstm_cell_684/StatefulPartitionedCall+while/lstm_cell_684/StatefulPartitionedCall: 
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
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
: 
�L
�

lstm_684_while_body_1490390.
*lstm_684_while_lstm_684_while_loop_counter4
0lstm_684_while_lstm_684_while_maximum_iterations
lstm_684_while_placeholder 
lstm_684_while_placeholder_1 
lstm_684_while_placeholder_2 
lstm_684_while_placeholder_3-
)lstm_684_while_lstm_684_strided_slice_1_0i
elstm_684_while_tensorarrayv2read_tensorlistgetitem_lstm_684_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_684_while_lstm_cell_684_matmul_readvariableop_resource_0:	0�R
?lstm_684_while_lstm_cell_684_matmul_1_readvariableop_resource_0:	0�M
>lstm_684_while_lstm_cell_684_biasadd_readvariableop_resource_0:	�
lstm_684_while_identity
lstm_684_while_identity_1
lstm_684_while_identity_2
lstm_684_while_identity_3
lstm_684_while_identity_4
lstm_684_while_identity_5+
'lstm_684_while_lstm_684_strided_slice_1g
clstm_684_while_tensorarrayv2read_tensorlistgetitem_lstm_684_tensorarrayunstack_tensorlistfromtensorN
;lstm_684_while_lstm_cell_684_matmul_readvariableop_resource:	0�P
=lstm_684_while_lstm_cell_684_matmul_1_readvariableop_resource:	0�K
<lstm_684_while_lstm_cell_684_biasadd_readvariableop_resource:	���3lstm_684/while/lstm_cell_684/BiasAdd/ReadVariableOp�2lstm_684/while/lstm_cell_684/MatMul/ReadVariableOp�4lstm_684/while/lstm_cell_684/MatMul_1/ReadVariableOp�
@lstm_684/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   2B
@lstm_684/while/TensorArrayV2Read/TensorListGetItem/element_shape�
2lstm_684/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_684_while_tensorarrayv2read_tensorlistgetitem_lstm_684_tensorarrayunstack_tensorlistfromtensor_0lstm_684_while_placeholderIlstm_684/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������0*
element_dtype024
2lstm_684/while/TensorArrayV2Read/TensorListGetItem�
2lstm_684/while/lstm_cell_684/MatMul/ReadVariableOpReadVariableOp=lstm_684_while_lstm_cell_684_matmul_readvariableop_resource_0*
_output_shapes
:	0�*
dtype024
2lstm_684/while/lstm_cell_684/MatMul/ReadVariableOp�
#lstm_684/while/lstm_cell_684/MatMulMatMul9lstm_684/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_684/while/lstm_cell_684/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2%
#lstm_684/while/lstm_cell_684/MatMul�
4lstm_684/while/lstm_cell_684/MatMul_1/ReadVariableOpReadVariableOp?lstm_684_while_lstm_cell_684_matmul_1_readvariableop_resource_0*
_output_shapes
:	0�*
dtype026
4lstm_684/while/lstm_cell_684/MatMul_1/ReadVariableOp�
%lstm_684/while/lstm_cell_684/MatMul_1MatMullstm_684_while_placeholder_2<lstm_684/while/lstm_cell_684/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2'
%lstm_684/while/lstm_cell_684/MatMul_1�
 lstm_684/while/lstm_cell_684/addAddV2-lstm_684/while/lstm_cell_684/MatMul:product:0/lstm_684/while/lstm_cell_684/MatMul_1:product:0*
T0*(
_output_shapes
:����������2"
 lstm_684/while/lstm_cell_684/add�
3lstm_684/while/lstm_cell_684/BiasAdd/ReadVariableOpReadVariableOp>lstm_684_while_lstm_cell_684_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype025
3lstm_684/while/lstm_cell_684/BiasAdd/ReadVariableOp�
$lstm_684/while/lstm_cell_684/BiasAddBiasAdd$lstm_684/while/lstm_cell_684/add:z:0;lstm_684/while/lstm_cell_684/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2&
$lstm_684/while/lstm_cell_684/BiasAdd�
,lstm_684/while/lstm_cell_684/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,lstm_684/while/lstm_cell_684/split/split_dim�
"lstm_684/while/lstm_cell_684/splitSplit5lstm_684/while/lstm_cell_684/split/split_dim:output:0-lstm_684/while/lstm_cell_684/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_split2$
"lstm_684/while/lstm_cell_684/split�
$lstm_684/while/lstm_cell_684/SigmoidSigmoid+lstm_684/while/lstm_cell_684/split:output:0*
T0*'
_output_shapes
:���������02&
$lstm_684/while/lstm_cell_684/Sigmoid�
&lstm_684/while/lstm_cell_684/Sigmoid_1Sigmoid+lstm_684/while/lstm_cell_684/split:output:1*
T0*'
_output_shapes
:���������02(
&lstm_684/while/lstm_cell_684/Sigmoid_1�
 lstm_684/while/lstm_cell_684/mulMul*lstm_684/while/lstm_cell_684/Sigmoid_1:y:0lstm_684_while_placeholder_3*
T0*'
_output_shapes
:���������02"
 lstm_684/while/lstm_cell_684/mul�
!lstm_684/while/lstm_cell_684/ReluRelu+lstm_684/while/lstm_cell_684/split:output:2*
T0*'
_output_shapes
:���������02#
!lstm_684/while/lstm_cell_684/Relu�
"lstm_684/while/lstm_cell_684/mul_1Mul(lstm_684/while/lstm_cell_684/Sigmoid:y:0/lstm_684/while/lstm_cell_684/Relu:activations:0*
T0*'
_output_shapes
:���������02$
"lstm_684/while/lstm_cell_684/mul_1�
"lstm_684/while/lstm_cell_684/add_1AddV2$lstm_684/while/lstm_cell_684/mul:z:0&lstm_684/while/lstm_cell_684/mul_1:z:0*
T0*'
_output_shapes
:���������02$
"lstm_684/while/lstm_cell_684/add_1�
&lstm_684/while/lstm_cell_684/Sigmoid_2Sigmoid+lstm_684/while/lstm_cell_684/split:output:3*
T0*'
_output_shapes
:���������02(
&lstm_684/while/lstm_cell_684/Sigmoid_2�
#lstm_684/while/lstm_cell_684/Relu_1Relu&lstm_684/while/lstm_cell_684/add_1:z:0*
T0*'
_output_shapes
:���������02%
#lstm_684/while/lstm_cell_684/Relu_1�
"lstm_684/while/lstm_cell_684/mul_2Mul*lstm_684/while/lstm_cell_684/Sigmoid_2:y:01lstm_684/while/lstm_cell_684/Relu_1:activations:0*
T0*'
_output_shapes
:���������02$
"lstm_684/while/lstm_cell_684/mul_2�
3lstm_684/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_684_while_placeholder_1lstm_684_while_placeholder&lstm_684/while/lstm_cell_684/mul_2:z:0*
_output_shapes
: *
element_dtype025
3lstm_684/while/TensorArrayV2Write/TensorListSetItemn
lstm_684/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_684/while/add/y�
lstm_684/while/addAddV2lstm_684_while_placeholderlstm_684/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_684/while/addr
lstm_684/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_684/while/add_1/y�
lstm_684/while/add_1AddV2*lstm_684_while_lstm_684_while_loop_counterlstm_684/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_684/while/add_1�
lstm_684/while/IdentityIdentitylstm_684/while/add_1:z:0^lstm_684/while/NoOp*
T0*
_output_shapes
: 2
lstm_684/while/Identity�
lstm_684/while/Identity_1Identity0lstm_684_while_lstm_684_while_maximum_iterations^lstm_684/while/NoOp*
T0*
_output_shapes
: 2
lstm_684/while/Identity_1�
lstm_684/while/Identity_2Identitylstm_684/while/add:z:0^lstm_684/while/NoOp*
T0*
_output_shapes
: 2
lstm_684/while/Identity_2�
lstm_684/while/Identity_3IdentityClstm_684/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_684/while/NoOp*
T0*
_output_shapes
: 2
lstm_684/while/Identity_3�
lstm_684/while/Identity_4Identity&lstm_684/while/lstm_cell_684/mul_2:z:0^lstm_684/while/NoOp*
T0*'
_output_shapes
:���������02
lstm_684/while/Identity_4�
lstm_684/while/Identity_5Identity&lstm_684/while/lstm_cell_684/add_1:z:0^lstm_684/while/NoOp*
T0*'
_output_shapes
:���������02
lstm_684/while/Identity_5�
lstm_684/while/NoOpNoOp4^lstm_684/while/lstm_cell_684/BiasAdd/ReadVariableOp3^lstm_684/while/lstm_cell_684/MatMul/ReadVariableOp5^lstm_684/while/lstm_cell_684/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_684/while/NoOp";
lstm_684_while_identity lstm_684/while/Identity:output:0"?
lstm_684_while_identity_1"lstm_684/while/Identity_1:output:0"?
lstm_684_while_identity_2"lstm_684/while/Identity_2:output:0"?
lstm_684_while_identity_3"lstm_684/while/Identity_3:output:0"?
lstm_684_while_identity_4"lstm_684/while/Identity_4:output:0"?
lstm_684_while_identity_5"lstm_684/while/Identity_5:output:0"T
'lstm_684_while_lstm_684_strided_slice_1)lstm_684_while_lstm_684_strided_slice_1_0"~
<lstm_684_while_lstm_cell_684_biasadd_readvariableop_resource>lstm_684_while_lstm_cell_684_biasadd_readvariableop_resource_0"�
=lstm_684_while_lstm_cell_684_matmul_1_readvariableop_resource?lstm_684_while_lstm_cell_684_matmul_1_readvariableop_resource_0"|
;lstm_684_while_lstm_cell_684_matmul_readvariableop_resource=lstm_684_while_lstm_cell_684_matmul_readvariableop_resource_0"�
clstm_684_while_tensorarrayv2read_tensorlistgetitem_lstm_684_tensorarrayunstack_tensorlistfromtensorelstm_684_while_tensorarrayv2read_tensorlistgetitem_lstm_684_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������0:���������0: : : : : 2j
3lstm_684/while/lstm_cell_684/BiasAdd/ReadVariableOp3lstm_684/while/lstm_cell_684/BiasAdd/ReadVariableOp2h
2lstm_684/while/lstm_cell_684/MatMul/ReadVariableOp2lstm_684/while/lstm_cell_684/MatMul/ReadVariableOp2l
4lstm_684/while/lstm_cell_684/MatMul_1/ReadVariableOp4lstm_684/while/lstm_cell_684/MatMul_1/ReadVariableOp: 
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
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
: 
�
�
/__inference_lstm_cell_685_layer_call_fn_1492796

inputs
states_0
states_1
unknown:	0�
	unknown_0:	\�
	unknown_1:	�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������\:���������\:���������\*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_685_layer_call_and_return_conditional_losses_14878602
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������\2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������\2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������\2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������0:���������\:���������\: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������0
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������\
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������\
"
_user_specified_name
states/1
�U
�
E__inference_lstm_685_layer_call_and_return_conditional_losses_1488854

inputs?
,lstm_cell_685_matmul_readvariableop_resource:	0�A
.lstm_cell_685_matmul_1_readvariableop_resource:	\�<
-lstm_cell_685_biasadd_readvariableop_resource:	�
identity��$lstm_cell_685/BiasAdd/ReadVariableOp�#lstm_cell_685/MatMul/ReadVariableOp�%lstm_cell_685/MatMul_1/ReadVariableOp�whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :\2
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������\2
zerosf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :\2
zeros_1/packed/1�
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������\2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������02
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������0*
shrink_axis_mask2
strided_slice_2�
#lstm_cell_685/MatMul/ReadVariableOpReadVariableOp,lstm_cell_685_matmul_readvariableop_resource*
_output_shapes
:	0�*
dtype02%
#lstm_cell_685/MatMul/ReadVariableOp�
lstm_cell_685/MatMulMatMulstrided_slice_2:output:0+lstm_cell_685/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_685/MatMul�
%lstm_cell_685/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_685_matmul_1_readvariableop_resource*
_output_shapes
:	\�*
dtype02'
%lstm_cell_685/MatMul_1/ReadVariableOp�
lstm_cell_685/MatMul_1MatMulzeros:output:0-lstm_cell_685/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_685/MatMul_1�
lstm_cell_685/addAddV2lstm_cell_685/MatMul:product:0 lstm_cell_685/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_cell_685/add�
$lstm_cell_685/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_685_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02&
$lstm_cell_685/BiasAdd/ReadVariableOp�
lstm_cell_685/BiasAddBiasAddlstm_cell_685/add:z:0,lstm_cell_685/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_685/BiasAdd�
lstm_cell_685/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_685/split/split_dim�
lstm_cell_685/splitSplit&lstm_cell_685/split/split_dim:output:0lstm_cell_685/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������\:���������\:���������\:���������\*
	num_split2
lstm_cell_685/split�
lstm_cell_685/SigmoidSigmoidlstm_cell_685/split:output:0*
T0*'
_output_shapes
:���������\2
lstm_cell_685/Sigmoid�
lstm_cell_685/Sigmoid_1Sigmoidlstm_cell_685/split:output:1*
T0*'
_output_shapes
:���������\2
lstm_cell_685/Sigmoid_1�
lstm_cell_685/mulMullstm_cell_685/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������\2
lstm_cell_685/mul�
lstm_cell_685/ReluRelulstm_cell_685/split:output:2*
T0*'
_output_shapes
:���������\2
lstm_cell_685/Relu�
lstm_cell_685/mul_1Mullstm_cell_685/Sigmoid:y:0 lstm_cell_685/Relu:activations:0*
T0*'
_output_shapes
:���������\2
lstm_cell_685/mul_1�
lstm_cell_685/add_1AddV2lstm_cell_685/mul:z:0lstm_cell_685/mul_1:z:0*
T0*'
_output_shapes
:���������\2
lstm_cell_685/add_1�
lstm_cell_685/Sigmoid_2Sigmoidlstm_cell_685/split:output:3*
T0*'
_output_shapes
:���������\2
lstm_cell_685/Sigmoid_2
lstm_cell_685/Relu_1Relulstm_cell_685/add_1:z:0*
T0*'
_output_shapes
:���������\2
lstm_cell_685/Relu_1�
lstm_cell_685/mul_2Mullstm_cell_685/Sigmoid_2:y:0"lstm_cell_685/Relu_1:activations:0*
T0*'
_output_shapes
:���������\2
lstm_cell_685/mul_2�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����\   2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_685_matmul_readvariableop_resource.lstm_cell_685_matmul_1_readvariableop_resource-lstm_cell_685_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������\:���������\: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1488770*
condR
while_cond_1488769*K
output_shapes:
8: : : : :���������\:���������\: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����\   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������\*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������\*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������\2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������\2

Identity�
NoOpNoOp%^lstm_cell_685/BiasAdd/ReadVariableOp$^lstm_cell_685/MatMul/ReadVariableOp&^lstm_cell_685/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������0: : : 2L
$lstm_cell_685/BiasAdd/ReadVariableOp$lstm_cell_685/BiasAdd/ReadVariableOp2J
#lstm_cell_685/MatMul/ReadVariableOp#lstm_cell_685/MatMul/ReadVariableOp2N
%lstm_cell_685/MatMul_1/ReadVariableOp%lstm_cell_685/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������0
 
_user_specified_nameinputs
�
�
while_cond_1486677
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1486677___redundant_placeholder05
1while_while_cond_1486677___redundant_placeholder15
1while_while_cond_1486677___redundant_placeholder25
1while_while_cond_1486677___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������0:���������0: ::::: 
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
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_1488769
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1488769___redundant_placeholder05
1while_while_cond_1488769___redundant_placeholder15
1while_while_cond_1488769___redundant_placeholder25
1while_while_cond_1488769___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������\:���������\: ::::: 
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
:���������\:-)
'
_output_shapes
:���������\:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_1491523
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1491523___redundant_placeholder05
1while_while_cond_1491523___redundant_placeholder15
1while_while_cond_1491523___redundant_placeholder25
1while_while_cond_1491523___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������0:���������0: ::::: 
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
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
:
�
g
H__inference_dropout_683_layer_call_and_return_conditional_losses_1492564

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�5�?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������\2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������\*
dtype0*

seed*2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *FN�>2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������\2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������\2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:���������\2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:���������\2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������\:O K
'
_output_shapes
:���������\
 
_user_specified_nameinputs
�
�
while_cond_1486879
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1486879___redundant_placeholder05
1while_while_cond_1486879___redundant_placeholder15
1while_while_cond_1486879___redundant_placeholder25
1while_while_cond_1486879___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������0:���������0: ::::: 
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
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
:
�
�
*__inference_lstm_683_layer_call_fn_1490668

inputs
unknown:	�
	unknown_0:	0�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������0*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_683_layer_call_and_return_conditional_losses_14885402
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������02

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�?
�
while_body_1492453
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_685_matmul_readvariableop_resource_0:	0�I
6while_lstm_cell_685_matmul_1_readvariableop_resource_0:	\�D
5while_lstm_cell_685_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_685_matmul_readvariableop_resource:	0�G
4while_lstm_cell_685_matmul_1_readvariableop_resource:	\�B
3while_lstm_cell_685_biasadd_readvariableop_resource:	���*while/lstm_cell_685/BiasAdd/ReadVariableOp�)while/lstm_cell_685/MatMul/ReadVariableOp�+while/lstm_cell_685/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������0*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
)while/lstm_cell_685/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_685_matmul_readvariableop_resource_0*
_output_shapes
:	0�*
dtype02+
)while/lstm_cell_685/MatMul/ReadVariableOp�
while/lstm_cell_685/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_685/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_685/MatMul�
+while/lstm_cell_685/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_685_matmul_1_readvariableop_resource_0*
_output_shapes
:	\�*
dtype02-
+while/lstm_cell_685/MatMul_1/ReadVariableOp�
while/lstm_cell_685/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_685/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_685/MatMul_1�
while/lstm_cell_685/addAddV2$while/lstm_cell_685/MatMul:product:0&while/lstm_cell_685/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_685/add�
*while/lstm_cell_685/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_685_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02,
*while/lstm_cell_685/BiasAdd/ReadVariableOp�
while/lstm_cell_685/BiasAddBiasAddwhile/lstm_cell_685/add:z:02while/lstm_cell_685/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_685/BiasAdd�
#while/lstm_cell_685/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_685/split/split_dim�
while/lstm_cell_685/splitSplit,while/lstm_cell_685/split/split_dim:output:0$while/lstm_cell_685/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������\:���������\:���������\:���������\*
	num_split2
while/lstm_cell_685/split�
while/lstm_cell_685/SigmoidSigmoid"while/lstm_cell_685/split:output:0*
T0*'
_output_shapes
:���������\2
while/lstm_cell_685/Sigmoid�
while/lstm_cell_685/Sigmoid_1Sigmoid"while/lstm_cell_685/split:output:1*
T0*'
_output_shapes
:���������\2
while/lstm_cell_685/Sigmoid_1�
while/lstm_cell_685/mulMul!while/lstm_cell_685/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������\2
while/lstm_cell_685/mul�
while/lstm_cell_685/ReluRelu"while/lstm_cell_685/split:output:2*
T0*'
_output_shapes
:���������\2
while/lstm_cell_685/Relu�
while/lstm_cell_685/mul_1Mulwhile/lstm_cell_685/Sigmoid:y:0&while/lstm_cell_685/Relu:activations:0*
T0*'
_output_shapes
:���������\2
while/lstm_cell_685/mul_1�
while/lstm_cell_685/add_1AddV2while/lstm_cell_685/mul:z:0while/lstm_cell_685/mul_1:z:0*
T0*'
_output_shapes
:���������\2
while/lstm_cell_685/add_1�
while/lstm_cell_685/Sigmoid_2Sigmoid"while/lstm_cell_685/split:output:3*
T0*'
_output_shapes
:���������\2
while/lstm_cell_685/Sigmoid_2�
while/lstm_cell_685/Relu_1Reluwhile/lstm_cell_685/add_1:z:0*
T0*'
_output_shapes
:���������\2
while/lstm_cell_685/Relu_1�
while/lstm_cell_685/mul_2Mul!while/lstm_cell_685/Sigmoid_2:y:0(while/lstm_cell_685/Relu_1:activations:0*
T0*'
_output_shapes
:���������\2
while/lstm_cell_685/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_685/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_685/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������\2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_685/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������\2
while/Identity_5�

while/NoOpNoOp+^while/lstm_cell_685/BiasAdd/ReadVariableOp*^while/lstm_cell_685/MatMul/ReadVariableOp,^while/lstm_cell_685/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_685_biasadd_readvariableop_resource5while_lstm_cell_685_biasadd_readvariableop_resource_0"n
4while_lstm_cell_685_matmul_1_readvariableop_resource6while_lstm_cell_685_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_685_matmul_readvariableop_resource4while_lstm_cell_685_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������\:���������\: : : : : 2X
*while/lstm_cell_685/BiasAdd/ReadVariableOp*while/lstm_cell_685/BiasAdd/ReadVariableOp2V
)while/lstm_cell_685/MatMul/ReadVariableOp)while/lstm_cell_685/MatMul/ReadVariableOp2Z
+while/lstm_cell_685/MatMul_1/ReadVariableOp+while/lstm_cell_685/MatMul_1/ReadVariableOp: 
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
:���������\:-)
'
_output_shapes
:���������\:

_output_shapes
: :

_output_shapes
: 
�
I
-__inference_dropout_681_layer_call_fn_1491256

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������0* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_681_layer_call_and_return_conditional_losses_14885532
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:���������02

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������0:S O
+
_output_shapes
:���������0
 
_user_specified_nameinputs
�
�
J__inference_lstm_cell_684_layer_call_and_return_conditional_losses_1492747

inputs
states_0
states_11
matmul_readvariableop_resource:	0�3
 matmul_1_readvariableop_resource:	0�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	0�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	0�*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������02	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������02
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������02
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������02
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������02
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������02
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������02
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������02
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������02
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������02

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������02

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������02

Identity_2�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������0:���������0:���������0: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������0
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������0
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������0
"
_user_specified_name
states/1
�L
�

lstm_683_while_body_1490243.
*lstm_683_while_lstm_683_while_loop_counter4
0lstm_683_while_lstm_683_while_maximum_iterations
lstm_683_while_placeholder 
lstm_683_while_placeholder_1 
lstm_683_while_placeholder_2 
lstm_683_while_placeholder_3-
)lstm_683_while_lstm_683_strided_slice_1_0i
elstm_683_while_tensorarrayv2read_tensorlistgetitem_lstm_683_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_683_while_lstm_cell_683_matmul_readvariableop_resource_0:	�R
?lstm_683_while_lstm_cell_683_matmul_1_readvariableop_resource_0:	0�M
>lstm_683_while_lstm_cell_683_biasadd_readvariableop_resource_0:	�
lstm_683_while_identity
lstm_683_while_identity_1
lstm_683_while_identity_2
lstm_683_while_identity_3
lstm_683_while_identity_4
lstm_683_while_identity_5+
'lstm_683_while_lstm_683_strided_slice_1g
clstm_683_while_tensorarrayv2read_tensorlistgetitem_lstm_683_tensorarrayunstack_tensorlistfromtensorN
;lstm_683_while_lstm_cell_683_matmul_readvariableop_resource:	�P
=lstm_683_while_lstm_cell_683_matmul_1_readvariableop_resource:	0�K
<lstm_683_while_lstm_cell_683_biasadd_readvariableop_resource:	���3lstm_683/while/lstm_cell_683/BiasAdd/ReadVariableOp�2lstm_683/while/lstm_cell_683/MatMul/ReadVariableOp�4lstm_683/while/lstm_cell_683/MatMul_1/ReadVariableOp�
@lstm_683/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2B
@lstm_683/while/TensorArrayV2Read/TensorListGetItem/element_shape�
2lstm_683/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_683_while_tensorarrayv2read_tensorlistgetitem_lstm_683_tensorarrayunstack_tensorlistfromtensor_0lstm_683_while_placeholderIlstm_683/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype024
2lstm_683/while/TensorArrayV2Read/TensorListGetItem�
2lstm_683/while/lstm_cell_683/MatMul/ReadVariableOpReadVariableOp=lstm_683_while_lstm_cell_683_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype024
2lstm_683/while/lstm_cell_683/MatMul/ReadVariableOp�
#lstm_683/while/lstm_cell_683/MatMulMatMul9lstm_683/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_683/while/lstm_cell_683/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2%
#lstm_683/while/lstm_cell_683/MatMul�
4lstm_683/while/lstm_cell_683/MatMul_1/ReadVariableOpReadVariableOp?lstm_683_while_lstm_cell_683_matmul_1_readvariableop_resource_0*
_output_shapes
:	0�*
dtype026
4lstm_683/while/lstm_cell_683/MatMul_1/ReadVariableOp�
%lstm_683/while/lstm_cell_683/MatMul_1MatMullstm_683_while_placeholder_2<lstm_683/while/lstm_cell_683/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2'
%lstm_683/while/lstm_cell_683/MatMul_1�
 lstm_683/while/lstm_cell_683/addAddV2-lstm_683/while/lstm_cell_683/MatMul:product:0/lstm_683/while/lstm_cell_683/MatMul_1:product:0*
T0*(
_output_shapes
:����������2"
 lstm_683/while/lstm_cell_683/add�
3lstm_683/while/lstm_cell_683/BiasAdd/ReadVariableOpReadVariableOp>lstm_683_while_lstm_cell_683_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype025
3lstm_683/while/lstm_cell_683/BiasAdd/ReadVariableOp�
$lstm_683/while/lstm_cell_683/BiasAddBiasAdd$lstm_683/while/lstm_cell_683/add:z:0;lstm_683/while/lstm_cell_683/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2&
$lstm_683/while/lstm_cell_683/BiasAdd�
,lstm_683/while/lstm_cell_683/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,lstm_683/while/lstm_cell_683/split/split_dim�
"lstm_683/while/lstm_cell_683/splitSplit5lstm_683/while/lstm_cell_683/split/split_dim:output:0-lstm_683/while/lstm_cell_683/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_split2$
"lstm_683/while/lstm_cell_683/split�
$lstm_683/while/lstm_cell_683/SigmoidSigmoid+lstm_683/while/lstm_cell_683/split:output:0*
T0*'
_output_shapes
:���������02&
$lstm_683/while/lstm_cell_683/Sigmoid�
&lstm_683/while/lstm_cell_683/Sigmoid_1Sigmoid+lstm_683/while/lstm_cell_683/split:output:1*
T0*'
_output_shapes
:���������02(
&lstm_683/while/lstm_cell_683/Sigmoid_1�
 lstm_683/while/lstm_cell_683/mulMul*lstm_683/while/lstm_cell_683/Sigmoid_1:y:0lstm_683_while_placeholder_3*
T0*'
_output_shapes
:���������02"
 lstm_683/while/lstm_cell_683/mul�
!lstm_683/while/lstm_cell_683/ReluRelu+lstm_683/while/lstm_cell_683/split:output:2*
T0*'
_output_shapes
:���������02#
!lstm_683/while/lstm_cell_683/Relu�
"lstm_683/while/lstm_cell_683/mul_1Mul(lstm_683/while/lstm_cell_683/Sigmoid:y:0/lstm_683/while/lstm_cell_683/Relu:activations:0*
T0*'
_output_shapes
:���������02$
"lstm_683/while/lstm_cell_683/mul_1�
"lstm_683/while/lstm_cell_683/add_1AddV2$lstm_683/while/lstm_cell_683/mul:z:0&lstm_683/while/lstm_cell_683/mul_1:z:0*
T0*'
_output_shapes
:���������02$
"lstm_683/while/lstm_cell_683/add_1�
&lstm_683/while/lstm_cell_683/Sigmoid_2Sigmoid+lstm_683/while/lstm_cell_683/split:output:3*
T0*'
_output_shapes
:���������02(
&lstm_683/while/lstm_cell_683/Sigmoid_2�
#lstm_683/while/lstm_cell_683/Relu_1Relu&lstm_683/while/lstm_cell_683/add_1:z:0*
T0*'
_output_shapes
:���������02%
#lstm_683/while/lstm_cell_683/Relu_1�
"lstm_683/while/lstm_cell_683/mul_2Mul*lstm_683/while/lstm_cell_683/Sigmoid_2:y:01lstm_683/while/lstm_cell_683/Relu_1:activations:0*
T0*'
_output_shapes
:���������02$
"lstm_683/while/lstm_cell_683/mul_2�
3lstm_683/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_683_while_placeholder_1lstm_683_while_placeholder&lstm_683/while/lstm_cell_683/mul_2:z:0*
_output_shapes
: *
element_dtype025
3lstm_683/while/TensorArrayV2Write/TensorListSetItemn
lstm_683/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_683/while/add/y�
lstm_683/while/addAddV2lstm_683_while_placeholderlstm_683/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_683/while/addr
lstm_683/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_683/while/add_1/y�
lstm_683/while/add_1AddV2*lstm_683_while_lstm_683_while_loop_counterlstm_683/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_683/while/add_1�
lstm_683/while/IdentityIdentitylstm_683/while/add_1:z:0^lstm_683/while/NoOp*
T0*
_output_shapes
: 2
lstm_683/while/Identity�
lstm_683/while/Identity_1Identity0lstm_683_while_lstm_683_while_maximum_iterations^lstm_683/while/NoOp*
T0*
_output_shapes
: 2
lstm_683/while/Identity_1�
lstm_683/while/Identity_2Identitylstm_683/while/add:z:0^lstm_683/while/NoOp*
T0*
_output_shapes
: 2
lstm_683/while/Identity_2�
lstm_683/while/Identity_3IdentityClstm_683/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_683/while/NoOp*
T0*
_output_shapes
: 2
lstm_683/while/Identity_3�
lstm_683/while/Identity_4Identity&lstm_683/while/lstm_cell_683/mul_2:z:0^lstm_683/while/NoOp*
T0*'
_output_shapes
:���������02
lstm_683/while/Identity_4�
lstm_683/while/Identity_5Identity&lstm_683/while/lstm_cell_683/add_1:z:0^lstm_683/while/NoOp*
T0*'
_output_shapes
:���������02
lstm_683/while/Identity_5�
lstm_683/while/NoOpNoOp4^lstm_683/while/lstm_cell_683/BiasAdd/ReadVariableOp3^lstm_683/while/lstm_cell_683/MatMul/ReadVariableOp5^lstm_683/while/lstm_cell_683/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_683/while/NoOp";
lstm_683_while_identity lstm_683/while/Identity:output:0"?
lstm_683_while_identity_1"lstm_683/while/Identity_1:output:0"?
lstm_683_while_identity_2"lstm_683/while/Identity_2:output:0"?
lstm_683_while_identity_3"lstm_683/while/Identity_3:output:0"?
lstm_683_while_identity_4"lstm_683/while/Identity_4:output:0"?
lstm_683_while_identity_5"lstm_683/while/Identity_5:output:0"T
'lstm_683_while_lstm_683_strided_slice_1)lstm_683_while_lstm_683_strided_slice_1_0"~
<lstm_683_while_lstm_cell_683_biasadd_readvariableop_resource>lstm_683_while_lstm_cell_683_biasadd_readvariableop_resource_0"�
=lstm_683_while_lstm_cell_683_matmul_1_readvariableop_resource?lstm_683_while_lstm_cell_683_matmul_1_readvariableop_resource_0"|
;lstm_683_while_lstm_cell_683_matmul_readvariableop_resource=lstm_683_while_lstm_cell_683_matmul_readvariableop_resource_0"�
clstm_683_while_tensorarrayv2read_tensorlistgetitem_lstm_683_tensorarrayunstack_tensorlistfromtensorelstm_683_while_tensorarrayv2read_tensorlistgetitem_lstm_683_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������0:���������0: : : : : 2j
3lstm_683/while/lstm_cell_683/BiasAdd/ReadVariableOp3lstm_683/while/lstm_cell_683/BiasAdd/ReadVariableOp2h
2lstm_683/while/lstm_cell_683/MatMul/ReadVariableOp2lstm_683/while/lstm_cell_683/MatMul/ReadVariableOp2l
4lstm_683/while/lstm_cell_683/MatMul_1/ReadVariableOp4lstm_683/while/lstm_cell_683/MatMul_1/ReadVariableOp: 
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
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
: 
�
�
/__inference_lstm_cell_685_layer_call_fn_1492813

inputs
states_0
states_1
unknown:	0�
	unknown_0:	\�
	unknown_1:	�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������\:���������\:���������\*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_685_layer_call_and_return_conditional_losses_14880062
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������\2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������\2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������\2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������0:���������\:���������\: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������0
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������\
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������\
"
_user_specified_name
states/1
�
�
while_cond_1488455
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1488455___redundant_placeholder05
1while_while_cond_1488455___redundant_placeholder15
1while_while_cond_1488455___redundant_placeholder25
1while_while_cond_1488455___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������0:���������0: ::::: 
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
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
:
�&
�
while_body_1487478
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_684_1487502_0:	0�0
while_lstm_cell_684_1487504_0:	0�,
while_lstm_cell_684_1487506_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_684_1487502:	0�.
while_lstm_cell_684_1487504:	0�*
while_lstm_cell_684_1487506:	���+while/lstm_cell_684/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������0*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
+while/lstm_cell_684/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_684_1487502_0while_lstm_cell_684_1487504_0while_lstm_cell_684_1487506_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������0:���������0:���������0*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_684_layer_call_and_return_conditional_losses_14874082-
+while/lstm_cell_684/StatefulPartitionedCall�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_684/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identity4while/lstm_cell_684/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������02
while/Identity_4�
while/Identity_5Identity4while/lstm_cell_684/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������02
while/Identity_5�

while/NoOpNoOp,^while/lstm_cell_684/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_684_1487502while_lstm_cell_684_1487502_0"<
while_lstm_cell_684_1487504while_lstm_cell_684_1487504_0"<
while_lstm_cell_684_1487506while_lstm_cell_684_1487506_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������0:���������0: : : : : 2Z
+while/lstm_cell_684/StatefulPartitionedCall+while/lstm_cell_684/StatefulPartitionedCall: 
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
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
: 
�
�
*__inference_lstm_683_layer_call_fn_1490657
inputs_0
unknown:	�
	unknown_0:	0�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������0*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_683_layer_call_and_return_conditional_losses_14869492
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������02

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
g
H__inference_dropout_681_layer_call_and_return_conditional_losses_1491278

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�5�?2
dropout/Constw
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:���������02
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:���������0*
dtype0*

seed*2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *FN�>2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:���������02
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:���������02
dropout/Cast~
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:���������02
dropout/Mul_1i
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:���������02

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������0:S O
+
_output_shapes
:���������0
 
_user_specified_nameinputs
�
�
J__inference_lstm_cell_683_layer_call_and_return_conditional_losses_1492649

inputs
states_0
states_11
matmul_readvariableop_resource:	�3
 matmul_1_readvariableop_resource:	0�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	0�*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������02	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������02
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������02
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������02
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������02
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������02
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������02
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������02
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������02
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������02

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������02

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������02

Identity_2�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������0:���������0: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������0
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������0
"
_user_specified_name
states/1
�
�
*__inference_lstm_685_layer_call_fn_1491943
inputs_0
unknown:	0�
	unknown_0:	\�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������\*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_685_layer_call_and_return_conditional_losses_14881452
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������\2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������0: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������0
"
_user_specified_name
inputs/0
�?
�
E__inference_lstm_683_layer_call_and_return_conditional_losses_1486949

inputs(
lstm_cell_683_1486867:	�(
lstm_cell_683_1486869:	0�$
lstm_cell_683_1486871:	�
identity��%lstm_cell_683/StatefulPartitionedCall�whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :02
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������02
zerosf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :02
zeros_1/packed/1�
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������02	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
%lstm_cell_683/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_683_1486867lstm_cell_683_1486869lstm_cell_683_1486871*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������0:���������0:���������0*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_683_layer_call_and_return_conditional_losses_14868102'
%lstm_cell_683/StatefulPartitionedCall�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_683_1486867lstm_cell_683_1486869lstm_cell_683_1486871*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������0:���������0: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1486880*
condR
while_cond_1486879*K
output_shapes:
8: : : : :���������0:���������0: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������0*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������0*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������02
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimew
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������02

Identity~
NoOpNoOp&^lstm_cell_683/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2N
%lstm_cell_683/StatefulPartitionedCall%lstm_cell_683/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�L
�

lstm_685_while_body_1490537.
*lstm_685_while_lstm_685_while_loop_counter4
0lstm_685_while_lstm_685_while_maximum_iterations
lstm_685_while_placeholder 
lstm_685_while_placeholder_1 
lstm_685_while_placeholder_2 
lstm_685_while_placeholder_3-
)lstm_685_while_lstm_685_strided_slice_1_0i
elstm_685_while_tensorarrayv2read_tensorlistgetitem_lstm_685_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_685_while_lstm_cell_685_matmul_readvariableop_resource_0:	0�R
?lstm_685_while_lstm_cell_685_matmul_1_readvariableop_resource_0:	\�M
>lstm_685_while_lstm_cell_685_biasadd_readvariableop_resource_0:	�
lstm_685_while_identity
lstm_685_while_identity_1
lstm_685_while_identity_2
lstm_685_while_identity_3
lstm_685_while_identity_4
lstm_685_while_identity_5+
'lstm_685_while_lstm_685_strided_slice_1g
clstm_685_while_tensorarrayv2read_tensorlistgetitem_lstm_685_tensorarrayunstack_tensorlistfromtensorN
;lstm_685_while_lstm_cell_685_matmul_readvariableop_resource:	0�P
=lstm_685_while_lstm_cell_685_matmul_1_readvariableop_resource:	\�K
<lstm_685_while_lstm_cell_685_biasadd_readvariableop_resource:	���3lstm_685/while/lstm_cell_685/BiasAdd/ReadVariableOp�2lstm_685/while/lstm_cell_685/MatMul/ReadVariableOp�4lstm_685/while/lstm_cell_685/MatMul_1/ReadVariableOp�
@lstm_685/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   2B
@lstm_685/while/TensorArrayV2Read/TensorListGetItem/element_shape�
2lstm_685/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_685_while_tensorarrayv2read_tensorlistgetitem_lstm_685_tensorarrayunstack_tensorlistfromtensor_0lstm_685_while_placeholderIlstm_685/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������0*
element_dtype024
2lstm_685/while/TensorArrayV2Read/TensorListGetItem�
2lstm_685/while/lstm_cell_685/MatMul/ReadVariableOpReadVariableOp=lstm_685_while_lstm_cell_685_matmul_readvariableop_resource_0*
_output_shapes
:	0�*
dtype024
2lstm_685/while/lstm_cell_685/MatMul/ReadVariableOp�
#lstm_685/while/lstm_cell_685/MatMulMatMul9lstm_685/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_685/while/lstm_cell_685/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2%
#lstm_685/while/lstm_cell_685/MatMul�
4lstm_685/while/lstm_cell_685/MatMul_1/ReadVariableOpReadVariableOp?lstm_685_while_lstm_cell_685_matmul_1_readvariableop_resource_0*
_output_shapes
:	\�*
dtype026
4lstm_685/while/lstm_cell_685/MatMul_1/ReadVariableOp�
%lstm_685/while/lstm_cell_685/MatMul_1MatMullstm_685_while_placeholder_2<lstm_685/while/lstm_cell_685/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2'
%lstm_685/while/lstm_cell_685/MatMul_1�
 lstm_685/while/lstm_cell_685/addAddV2-lstm_685/while/lstm_cell_685/MatMul:product:0/lstm_685/while/lstm_cell_685/MatMul_1:product:0*
T0*(
_output_shapes
:����������2"
 lstm_685/while/lstm_cell_685/add�
3lstm_685/while/lstm_cell_685/BiasAdd/ReadVariableOpReadVariableOp>lstm_685_while_lstm_cell_685_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype025
3lstm_685/while/lstm_cell_685/BiasAdd/ReadVariableOp�
$lstm_685/while/lstm_cell_685/BiasAddBiasAdd$lstm_685/while/lstm_cell_685/add:z:0;lstm_685/while/lstm_cell_685/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2&
$lstm_685/while/lstm_cell_685/BiasAdd�
,lstm_685/while/lstm_cell_685/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,lstm_685/while/lstm_cell_685/split/split_dim�
"lstm_685/while/lstm_cell_685/splitSplit5lstm_685/while/lstm_cell_685/split/split_dim:output:0-lstm_685/while/lstm_cell_685/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������\:���������\:���������\:���������\*
	num_split2$
"lstm_685/while/lstm_cell_685/split�
$lstm_685/while/lstm_cell_685/SigmoidSigmoid+lstm_685/while/lstm_cell_685/split:output:0*
T0*'
_output_shapes
:���������\2&
$lstm_685/while/lstm_cell_685/Sigmoid�
&lstm_685/while/lstm_cell_685/Sigmoid_1Sigmoid+lstm_685/while/lstm_cell_685/split:output:1*
T0*'
_output_shapes
:���������\2(
&lstm_685/while/lstm_cell_685/Sigmoid_1�
 lstm_685/while/lstm_cell_685/mulMul*lstm_685/while/lstm_cell_685/Sigmoid_1:y:0lstm_685_while_placeholder_3*
T0*'
_output_shapes
:���������\2"
 lstm_685/while/lstm_cell_685/mul�
!lstm_685/while/lstm_cell_685/ReluRelu+lstm_685/while/lstm_cell_685/split:output:2*
T0*'
_output_shapes
:���������\2#
!lstm_685/while/lstm_cell_685/Relu�
"lstm_685/while/lstm_cell_685/mul_1Mul(lstm_685/while/lstm_cell_685/Sigmoid:y:0/lstm_685/while/lstm_cell_685/Relu:activations:0*
T0*'
_output_shapes
:���������\2$
"lstm_685/while/lstm_cell_685/mul_1�
"lstm_685/while/lstm_cell_685/add_1AddV2$lstm_685/while/lstm_cell_685/mul:z:0&lstm_685/while/lstm_cell_685/mul_1:z:0*
T0*'
_output_shapes
:���������\2$
"lstm_685/while/lstm_cell_685/add_1�
&lstm_685/while/lstm_cell_685/Sigmoid_2Sigmoid+lstm_685/while/lstm_cell_685/split:output:3*
T0*'
_output_shapes
:���������\2(
&lstm_685/while/lstm_cell_685/Sigmoid_2�
#lstm_685/while/lstm_cell_685/Relu_1Relu&lstm_685/while/lstm_cell_685/add_1:z:0*
T0*'
_output_shapes
:���������\2%
#lstm_685/while/lstm_cell_685/Relu_1�
"lstm_685/while/lstm_cell_685/mul_2Mul*lstm_685/while/lstm_cell_685/Sigmoid_2:y:01lstm_685/while/lstm_cell_685/Relu_1:activations:0*
T0*'
_output_shapes
:���������\2$
"lstm_685/while/lstm_cell_685/mul_2�
3lstm_685/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_685_while_placeholder_1lstm_685_while_placeholder&lstm_685/while/lstm_cell_685/mul_2:z:0*
_output_shapes
: *
element_dtype025
3lstm_685/while/TensorArrayV2Write/TensorListSetItemn
lstm_685/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_685/while/add/y�
lstm_685/while/addAddV2lstm_685_while_placeholderlstm_685/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_685/while/addr
lstm_685/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_685/while/add_1/y�
lstm_685/while/add_1AddV2*lstm_685_while_lstm_685_while_loop_counterlstm_685/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_685/while/add_1�
lstm_685/while/IdentityIdentitylstm_685/while/add_1:z:0^lstm_685/while/NoOp*
T0*
_output_shapes
: 2
lstm_685/while/Identity�
lstm_685/while/Identity_1Identity0lstm_685_while_lstm_685_while_maximum_iterations^lstm_685/while/NoOp*
T0*
_output_shapes
: 2
lstm_685/while/Identity_1�
lstm_685/while/Identity_2Identitylstm_685/while/add:z:0^lstm_685/while/NoOp*
T0*
_output_shapes
: 2
lstm_685/while/Identity_2�
lstm_685/while/Identity_3IdentityClstm_685/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_685/while/NoOp*
T0*
_output_shapes
: 2
lstm_685/while/Identity_3�
lstm_685/while/Identity_4Identity&lstm_685/while/lstm_cell_685/mul_2:z:0^lstm_685/while/NoOp*
T0*'
_output_shapes
:���������\2
lstm_685/while/Identity_4�
lstm_685/while/Identity_5Identity&lstm_685/while/lstm_cell_685/add_1:z:0^lstm_685/while/NoOp*
T0*'
_output_shapes
:���������\2
lstm_685/while/Identity_5�
lstm_685/while/NoOpNoOp4^lstm_685/while/lstm_cell_685/BiasAdd/ReadVariableOp3^lstm_685/while/lstm_cell_685/MatMul/ReadVariableOp5^lstm_685/while/lstm_cell_685/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_685/while/NoOp";
lstm_685_while_identity lstm_685/while/Identity:output:0"?
lstm_685_while_identity_1"lstm_685/while/Identity_1:output:0"?
lstm_685_while_identity_2"lstm_685/while/Identity_2:output:0"?
lstm_685_while_identity_3"lstm_685/while/Identity_3:output:0"?
lstm_685_while_identity_4"lstm_685/while/Identity_4:output:0"?
lstm_685_while_identity_5"lstm_685/while/Identity_5:output:0"T
'lstm_685_while_lstm_685_strided_slice_1)lstm_685_while_lstm_685_strided_slice_1_0"~
<lstm_685_while_lstm_cell_685_biasadd_readvariableop_resource>lstm_685_while_lstm_cell_685_biasadd_readvariableop_resource_0"�
=lstm_685_while_lstm_cell_685_matmul_1_readvariableop_resource?lstm_685_while_lstm_cell_685_matmul_1_readvariableop_resource_0"|
;lstm_685_while_lstm_cell_685_matmul_readvariableop_resource=lstm_685_while_lstm_cell_685_matmul_readvariableop_resource_0"�
clstm_685_while_tensorarrayv2read_tensorlistgetitem_lstm_685_tensorarrayunstack_tensorlistfromtensorelstm_685_while_tensorarrayv2read_tensorlistgetitem_lstm_685_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������\:���������\: : : : : 2j
3lstm_685/while/lstm_cell_685/BiasAdd/ReadVariableOp3lstm_685/while/lstm_cell_685/BiasAdd/ReadVariableOp2h
2lstm_685/while/lstm_cell_685/MatMul/ReadVariableOp2lstm_685/while/lstm_cell_685/MatMul/ReadVariableOp2l
4lstm_685/while/lstm_cell_685/MatMul_1/ReadVariableOp4lstm_685/while/lstm_cell_685/MatMul_1/ReadVariableOp: 
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
:���������\:-)
'
_output_shapes
:���������\:

_output_shapes
: :

_output_shapes
: 
�?
�
while_body_1489204
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_684_matmul_readvariableop_resource_0:	0�I
6while_lstm_cell_684_matmul_1_readvariableop_resource_0:	0�D
5while_lstm_cell_684_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_684_matmul_readvariableop_resource:	0�G
4while_lstm_cell_684_matmul_1_readvariableop_resource:	0�B
3while_lstm_cell_684_biasadd_readvariableop_resource:	���*while/lstm_cell_684/BiasAdd/ReadVariableOp�)while/lstm_cell_684/MatMul/ReadVariableOp�+while/lstm_cell_684/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������0*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
)while/lstm_cell_684/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_684_matmul_readvariableop_resource_0*
_output_shapes
:	0�*
dtype02+
)while/lstm_cell_684/MatMul/ReadVariableOp�
while/lstm_cell_684/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_684/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_684/MatMul�
+while/lstm_cell_684/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_684_matmul_1_readvariableop_resource_0*
_output_shapes
:	0�*
dtype02-
+while/lstm_cell_684/MatMul_1/ReadVariableOp�
while/lstm_cell_684/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_684/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_684/MatMul_1�
while/lstm_cell_684/addAddV2$while/lstm_cell_684/MatMul:product:0&while/lstm_cell_684/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_684/add�
*while/lstm_cell_684/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_684_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02,
*while/lstm_cell_684/BiasAdd/ReadVariableOp�
while/lstm_cell_684/BiasAddBiasAddwhile/lstm_cell_684/add:z:02while/lstm_cell_684/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_684/BiasAdd�
#while/lstm_cell_684/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_684/split/split_dim�
while/lstm_cell_684/splitSplit,while/lstm_cell_684/split/split_dim:output:0$while/lstm_cell_684/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_split2
while/lstm_cell_684/split�
while/lstm_cell_684/SigmoidSigmoid"while/lstm_cell_684/split:output:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_684/Sigmoid�
while/lstm_cell_684/Sigmoid_1Sigmoid"while/lstm_cell_684/split:output:1*
T0*'
_output_shapes
:���������02
while/lstm_cell_684/Sigmoid_1�
while/lstm_cell_684/mulMul!while/lstm_cell_684/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������02
while/lstm_cell_684/mul�
while/lstm_cell_684/ReluRelu"while/lstm_cell_684/split:output:2*
T0*'
_output_shapes
:���������02
while/lstm_cell_684/Relu�
while/lstm_cell_684/mul_1Mulwhile/lstm_cell_684/Sigmoid:y:0&while/lstm_cell_684/Relu:activations:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_684/mul_1�
while/lstm_cell_684/add_1AddV2while/lstm_cell_684/mul:z:0while/lstm_cell_684/mul_1:z:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_684/add_1�
while/lstm_cell_684/Sigmoid_2Sigmoid"while/lstm_cell_684/split:output:3*
T0*'
_output_shapes
:���������02
while/lstm_cell_684/Sigmoid_2�
while/lstm_cell_684/Relu_1Reluwhile/lstm_cell_684/add_1:z:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_684/Relu_1�
while/lstm_cell_684/mul_2Mul!while/lstm_cell_684/Sigmoid_2:y:0(while/lstm_cell_684/Relu_1:activations:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_684/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_684/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_684/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������02
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_684/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������02
while/Identity_5�

while/NoOpNoOp+^while/lstm_cell_684/BiasAdd/ReadVariableOp*^while/lstm_cell_684/MatMul/ReadVariableOp,^while/lstm_cell_684/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_684_biasadd_readvariableop_resource5while_lstm_cell_684_biasadd_readvariableop_resource_0"n
4while_lstm_cell_684_matmul_1_readvariableop_resource6while_lstm_cell_684_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_684_matmul_readvariableop_resource4while_lstm_cell_684_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������0:���������0: : : : : 2X
*while/lstm_cell_684/BiasAdd/ReadVariableOp*while/lstm_cell_684/BiasAdd/ReadVariableOp2V
)while/lstm_cell_684/MatMul/ReadVariableOp)while/lstm_cell_684/MatMul/ReadVariableOp2Z
+while/lstm_cell_684/MatMul_1/ReadVariableOp+while/lstm_cell_684/MatMul_1/ReadVariableOp: 
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
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
: 
�L
�

lstm_683_while_body_1489813.
*lstm_683_while_lstm_683_while_loop_counter4
0lstm_683_while_lstm_683_while_maximum_iterations
lstm_683_while_placeholder 
lstm_683_while_placeholder_1 
lstm_683_while_placeholder_2 
lstm_683_while_placeholder_3-
)lstm_683_while_lstm_683_strided_slice_1_0i
elstm_683_while_tensorarrayv2read_tensorlistgetitem_lstm_683_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_683_while_lstm_cell_683_matmul_readvariableop_resource_0:	�R
?lstm_683_while_lstm_cell_683_matmul_1_readvariableop_resource_0:	0�M
>lstm_683_while_lstm_cell_683_biasadd_readvariableop_resource_0:	�
lstm_683_while_identity
lstm_683_while_identity_1
lstm_683_while_identity_2
lstm_683_while_identity_3
lstm_683_while_identity_4
lstm_683_while_identity_5+
'lstm_683_while_lstm_683_strided_slice_1g
clstm_683_while_tensorarrayv2read_tensorlistgetitem_lstm_683_tensorarrayunstack_tensorlistfromtensorN
;lstm_683_while_lstm_cell_683_matmul_readvariableop_resource:	�P
=lstm_683_while_lstm_cell_683_matmul_1_readvariableop_resource:	0�K
<lstm_683_while_lstm_cell_683_biasadd_readvariableop_resource:	���3lstm_683/while/lstm_cell_683/BiasAdd/ReadVariableOp�2lstm_683/while/lstm_cell_683/MatMul/ReadVariableOp�4lstm_683/while/lstm_cell_683/MatMul_1/ReadVariableOp�
@lstm_683/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2B
@lstm_683/while/TensorArrayV2Read/TensorListGetItem/element_shape�
2lstm_683/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_683_while_tensorarrayv2read_tensorlistgetitem_lstm_683_tensorarrayunstack_tensorlistfromtensor_0lstm_683_while_placeholderIlstm_683/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype024
2lstm_683/while/TensorArrayV2Read/TensorListGetItem�
2lstm_683/while/lstm_cell_683/MatMul/ReadVariableOpReadVariableOp=lstm_683_while_lstm_cell_683_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype024
2lstm_683/while/lstm_cell_683/MatMul/ReadVariableOp�
#lstm_683/while/lstm_cell_683/MatMulMatMul9lstm_683/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_683/while/lstm_cell_683/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2%
#lstm_683/while/lstm_cell_683/MatMul�
4lstm_683/while/lstm_cell_683/MatMul_1/ReadVariableOpReadVariableOp?lstm_683_while_lstm_cell_683_matmul_1_readvariableop_resource_0*
_output_shapes
:	0�*
dtype026
4lstm_683/while/lstm_cell_683/MatMul_1/ReadVariableOp�
%lstm_683/while/lstm_cell_683/MatMul_1MatMullstm_683_while_placeholder_2<lstm_683/while/lstm_cell_683/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2'
%lstm_683/while/lstm_cell_683/MatMul_1�
 lstm_683/while/lstm_cell_683/addAddV2-lstm_683/while/lstm_cell_683/MatMul:product:0/lstm_683/while/lstm_cell_683/MatMul_1:product:0*
T0*(
_output_shapes
:����������2"
 lstm_683/while/lstm_cell_683/add�
3lstm_683/while/lstm_cell_683/BiasAdd/ReadVariableOpReadVariableOp>lstm_683_while_lstm_cell_683_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype025
3lstm_683/while/lstm_cell_683/BiasAdd/ReadVariableOp�
$lstm_683/while/lstm_cell_683/BiasAddBiasAdd$lstm_683/while/lstm_cell_683/add:z:0;lstm_683/while/lstm_cell_683/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2&
$lstm_683/while/lstm_cell_683/BiasAdd�
,lstm_683/while/lstm_cell_683/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,lstm_683/while/lstm_cell_683/split/split_dim�
"lstm_683/while/lstm_cell_683/splitSplit5lstm_683/while/lstm_cell_683/split/split_dim:output:0-lstm_683/while/lstm_cell_683/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_split2$
"lstm_683/while/lstm_cell_683/split�
$lstm_683/while/lstm_cell_683/SigmoidSigmoid+lstm_683/while/lstm_cell_683/split:output:0*
T0*'
_output_shapes
:���������02&
$lstm_683/while/lstm_cell_683/Sigmoid�
&lstm_683/while/lstm_cell_683/Sigmoid_1Sigmoid+lstm_683/while/lstm_cell_683/split:output:1*
T0*'
_output_shapes
:���������02(
&lstm_683/while/lstm_cell_683/Sigmoid_1�
 lstm_683/while/lstm_cell_683/mulMul*lstm_683/while/lstm_cell_683/Sigmoid_1:y:0lstm_683_while_placeholder_3*
T0*'
_output_shapes
:���������02"
 lstm_683/while/lstm_cell_683/mul�
!lstm_683/while/lstm_cell_683/ReluRelu+lstm_683/while/lstm_cell_683/split:output:2*
T0*'
_output_shapes
:���������02#
!lstm_683/while/lstm_cell_683/Relu�
"lstm_683/while/lstm_cell_683/mul_1Mul(lstm_683/while/lstm_cell_683/Sigmoid:y:0/lstm_683/while/lstm_cell_683/Relu:activations:0*
T0*'
_output_shapes
:���������02$
"lstm_683/while/lstm_cell_683/mul_1�
"lstm_683/while/lstm_cell_683/add_1AddV2$lstm_683/while/lstm_cell_683/mul:z:0&lstm_683/while/lstm_cell_683/mul_1:z:0*
T0*'
_output_shapes
:���������02$
"lstm_683/while/lstm_cell_683/add_1�
&lstm_683/while/lstm_cell_683/Sigmoid_2Sigmoid+lstm_683/while/lstm_cell_683/split:output:3*
T0*'
_output_shapes
:���������02(
&lstm_683/while/lstm_cell_683/Sigmoid_2�
#lstm_683/while/lstm_cell_683/Relu_1Relu&lstm_683/while/lstm_cell_683/add_1:z:0*
T0*'
_output_shapes
:���������02%
#lstm_683/while/lstm_cell_683/Relu_1�
"lstm_683/while/lstm_cell_683/mul_2Mul*lstm_683/while/lstm_cell_683/Sigmoid_2:y:01lstm_683/while/lstm_cell_683/Relu_1:activations:0*
T0*'
_output_shapes
:���������02$
"lstm_683/while/lstm_cell_683/mul_2�
3lstm_683/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_683_while_placeholder_1lstm_683_while_placeholder&lstm_683/while/lstm_cell_683/mul_2:z:0*
_output_shapes
: *
element_dtype025
3lstm_683/while/TensorArrayV2Write/TensorListSetItemn
lstm_683/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_683/while/add/y�
lstm_683/while/addAddV2lstm_683_while_placeholderlstm_683/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_683/while/addr
lstm_683/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_683/while/add_1/y�
lstm_683/while/add_1AddV2*lstm_683_while_lstm_683_while_loop_counterlstm_683/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_683/while/add_1�
lstm_683/while/IdentityIdentitylstm_683/while/add_1:z:0^lstm_683/while/NoOp*
T0*
_output_shapes
: 2
lstm_683/while/Identity�
lstm_683/while/Identity_1Identity0lstm_683_while_lstm_683_while_maximum_iterations^lstm_683/while/NoOp*
T0*
_output_shapes
: 2
lstm_683/while/Identity_1�
lstm_683/while/Identity_2Identitylstm_683/while/add:z:0^lstm_683/while/NoOp*
T0*
_output_shapes
: 2
lstm_683/while/Identity_2�
lstm_683/while/Identity_3IdentityClstm_683/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_683/while/NoOp*
T0*
_output_shapes
: 2
lstm_683/while/Identity_3�
lstm_683/while/Identity_4Identity&lstm_683/while/lstm_cell_683/mul_2:z:0^lstm_683/while/NoOp*
T0*'
_output_shapes
:���������02
lstm_683/while/Identity_4�
lstm_683/while/Identity_5Identity&lstm_683/while/lstm_cell_683/add_1:z:0^lstm_683/while/NoOp*
T0*'
_output_shapes
:���������02
lstm_683/while/Identity_5�
lstm_683/while/NoOpNoOp4^lstm_683/while/lstm_cell_683/BiasAdd/ReadVariableOp3^lstm_683/while/lstm_cell_683/MatMul/ReadVariableOp5^lstm_683/while/lstm_cell_683/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_683/while/NoOp";
lstm_683_while_identity lstm_683/while/Identity:output:0"?
lstm_683_while_identity_1"lstm_683/while/Identity_1:output:0"?
lstm_683_while_identity_2"lstm_683/while/Identity_2:output:0"?
lstm_683_while_identity_3"lstm_683/while/Identity_3:output:0"?
lstm_683_while_identity_4"lstm_683/while/Identity_4:output:0"?
lstm_683_while_identity_5"lstm_683/while/Identity_5:output:0"T
'lstm_683_while_lstm_683_strided_slice_1)lstm_683_while_lstm_683_strided_slice_1_0"~
<lstm_683_while_lstm_cell_683_biasadd_readvariableop_resource>lstm_683_while_lstm_cell_683_biasadd_readvariableop_resource_0"�
=lstm_683_while_lstm_cell_683_matmul_1_readvariableop_resource?lstm_683_while_lstm_cell_683_matmul_1_readvariableop_resource_0"|
;lstm_683_while_lstm_cell_683_matmul_readvariableop_resource=lstm_683_while_lstm_cell_683_matmul_readvariableop_resource_0"�
clstm_683_while_tensorarrayv2read_tensorlistgetitem_lstm_683_tensorarrayunstack_tensorlistfromtensorelstm_683_while_tensorarrayv2read_tensorlistgetitem_lstm_683_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������0:���������0: : : : : 2j
3lstm_683/while/lstm_cell_683/BiasAdd/ReadVariableOp3lstm_683/while/lstm_cell_683/BiasAdd/ReadVariableOp2h
2lstm_683/while/lstm_cell_683/MatMul/ReadVariableOp2lstm_683/while/lstm_cell_683/MatMul/ReadVariableOp2l
4lstm_683/while/lstm_cell_683/MatMul_1/ReadVariableOp4lstm_683/while/lstm_cell_683/MatMul_1/ReadVariableOp: 
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
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
: 
�

�
lstm_684_while_cond_1489952.
*lstm_684_while_lstm_684_while_loop_counter4
0lstm_684_while_lstm_684_while_maximum_iterations
lstm_684_while_placeholder 
lstm_684_while_placeholder_1 
lstm_684_while_placeholder_2 
lstm_684_while_placeholder_30
,lstm_684_while_less_lstm_684_strided_slice_1G
Clstm_684_while_lstm_684_while_cond_1489952___redundant_placeholder0G
Clstm_684_while_lstm_684_while_cond_1489952___redundant_placeholder1G
Clstm_684_while_lstm_684_while_cond_1489952___redundant_placeholder2G
Clstm_684_while_lstm_684_while_cond_1489952___redundant_placeholder3
lstm_684_while_identity
�
lstm_684/while/LessLesslstm_684_while_placeholder,lstm_684_while_less_lstm_684_strided_slice_1*
T0*
_output_shapes
: 2
lstm_684/while/Lessx
lstm_684/while/IdentityIdentitylstm_684/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_684/while/Identity";
lstm_684_while_identity lstm_684/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������0:���������0: ::::: 
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
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
:
�
�
*sequential_133_lstm_683_while_cond_1486225L
Hsequential_133_lstm_683_while_sequential_133_lstm_683_while_loop_counterR
Nsequential_133_lstm_683_while_sequential_133_lstm_683_while_maximum_iterations-
)sequential_133_lstm_683_while_placeholder/
+sequential_133_lstm_683_while_placeholder_1/
+sequential_133_lstm_683_while_placeholder_2/
+sequential_133_lstm_683_while_placeholder_3N
Jsequential_133_lstm_683_while_less_sequential_133_lstm_683_strided_slice_1e
asequential_133_lstm_683_while_sequential_133_lstm_683_while_cond_1486225___redundant_placeholder0e
asequential_133_lstm_683_while_sequential_133_lstm_683_while_cond_1486225___redundant_placeholder1e
asequential_133_lstm_683_while_sequential_133_lstm_683_while_cond_1486225___redundant_placeholder2e
asequential_133_lstm_683_while_sequential_133_lstm_683_while_cond_1486225___redundant_placeholder3*
&sequential_133_lstm_683_while_identity
�
"sequential_133/lstm_683/while/LessLess)sequential_133_lstm_683_while_placeholderJsequential_133_lstm_683_while_less_sequential_133_lstm_683_strided_slice_1*
T0*
_output_shapes
: 2$
"sequential_133/lstm_683/while/Less�
&sequential_133/lstm_683/while/IdentityIdentity&sequential_133/lstm_683/while/Less:z:0*
T0
*
_output_shapes
: 2(
&sequential_133/lstm_683/while/Identity"Y
&sequential_133_lstm_683_while_identity/sequential_133/lstm_683/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������0:���������0: ::::: 
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
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_1489015
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1489015___redundant_placeholder05
1while_while_cond_1489015___redundant_placeholder15
1while_while_cond_1489015___redundant_placeholder25
1while_while_cond_1489015___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������\:���������\: ::::: 
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
:���������\:-)
'
_output_shapes
:���������\:

_output_shapes
: :

_output_shapes
:
�(
�
K__inference_sequential_133_layer_call_and_return_conditional_losses_1489665
lstm_683_input#
lstm_683_1489635:	�#
lstm_683_1489637:	0�
lstm_683_1489639:	�#
lstm_684_1489643:	0�#
lstm_684_1489645:	0�
lstm_684_1489647:	�#
lstm_685_1489651:	0�#
lstm_685_1489653:	\�
lstm_685_1489655:	�#
dense_131_1489659:\
dense_131_1489661:
identity��!dense_131/StatefulPartitionedCall�#dropout_681/StatefulPartitionedCall�#dropout_682/StatefulPartitionedCall�#dropout_683/StatefulPartitionedCall� lstm_683/StatefulPartitionedCall� lstm_684/StatefulPartitionedCall� lstm_685/StatefulPartitionedCall�
 lstm_683/StatefulPartitionedCallStatefulPartitionedCalllstm_683_inputlstm_683_1489635lstm_683_1489637lstm_683_1489639*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������0*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_683_layer_call_and_return_conditional_losses_14894762"
 lstm_683/StatefulPartitionedCall�
#dropout_681/StatefulPartitionedCallStatefulPartitionedCall)lstm_683/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������0* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_681_layer_call_and_return_conditional_losses_14893172%
#dropout_681/StatefulPartitionedCall�
 lstm_684/StatefulPartitionedCallStatefulPartitionedCall,dropout_681/StatefulPartitionedCall:output:0lstm_684_1489643lstm_684_1489645lstm_684_1489647*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������0*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_684_layer_call_and_return_conditional_losses_14892882"
 lstm_684/StatefulPartitionedCall�
#dropout_682/StatefulPartitionedCallStatefulPartitionedCall)lstm_684/StatefulPartitionedCall:output:0$^dropout_681/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������0* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_682_layer_call_and_return_conditional_losses_14891292%
#dropout_682/StatefulPartitionedCall�
 lstm_685/StatefulPartitionedCallStatefulPartitionedCall,dropout_682/StatefulPartitionedCall:output:0lstm_685_1489651lstm_685_1489653lstm_685_1489655*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������\*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_685_layer_call_and_return_conditional_losses_14891002"
 lstm_685/StatefulPartitionedCall�
#dropout_683/StatefulPartitionedCallStatefulPartitionedCall)lstm_685/StatefulPartitionedCall:output:0$^dropout_682/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������\* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_683_layer_call_and_return_conditional_losses_14889412%
#dropout_683/StatefulPartitionedCall�
!dense_131/StatefulPartitionedCallStatefulPartitionedCall,dropout_683/StatefulPartitionedCall:output:0dense_131_1489659dense_131_1489661*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_131_layer_call_and_return_conditional_losses_14888792#
!dense_131/StatefulPartitionedCall�
IdentityIdentity*dense_131/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp"^dense_131/StatefulPartitionedCall$^dropout_681/StatefulPartitionedCall$^dropout_682/StatefulPartitionedCall$^dropout_683/StatefulPartitionedCall!^lstm_683/StatefulPartitionedCall!^lstm_684/StatefulPartitionedCall!^lstm_685/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2F
!dense_131/StatefulPartitionedCall!dense_131/StatefulPartitionedCall2J
#dropout_681/StatefulPartitionedCall#dropout_681/StatefulPartitionedCall2J
#dropout_682/StatefulPartitionedCall#dropout_682/StatefulPartitionedCall2J
#dropout_683/StatefulPartitionedCall#dropout_683/StatefulPartitionedCall2D
 lstm_683/StatefulPartitionedCall lstm_683/StatefulPartitionedCall2D
 lstm_684/StatefulPartitionedCall lstm_684/StatefulPartitionedCall2D
 lstm_685/StatefulPartitionedCall lstm_685/StatefulPartitionedCall:[ W
+
_output_shapes
:���������
(
_user_specified_namelstm_683_input
�
�
*__inference_lstm_684_layer_call_fn_1491311

inputs
unknown:	0�
	unknown_0:	0�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������0*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_684_layer_call_and_return_conditional_losses_14886972
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������02

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������0: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������0
 
_user_specified_nameinputs
�V
�
E__inference_lstm_683_layer_call_and_return_conditional_losses_1490965
inputs_0?
,lstm_cell_683_matmul_readvariableop_resource:	�A
.lstm_cell_683_matmul_1_readvariableop_resource:	0�<
-lstm_cell_683_biasadd_readvariableop_resource:	�
identity��$lstm_cell_683/BiasAdd/ReadVariableOp�#lstm_cell_683/MatMul/ReadVariableOp�%lstm_cell_683/MatMul_1/ReadVariableOp�whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :02
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������02
zerosf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :02
zeros_1/packed/1�
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������02	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
#lstm_cell_683/MatMul/ReadVariableOpReadVariableOp,lstm_cell_683_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02%
#lstm_cell_683/MatMul/ReadVariableOp�
lstm_cell_683/MatMulMatMulstrided_slice_2:output:0+lstm_cell_683/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_683/MatMul�
%lstm_cell_683/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_683_matmul_1_readvariableop_resource*
_output_shapes
:	0�*
dtype02'
%lstm_cell_683/MatMul_1/ReadVariableOp�
lstm_cell_683/MatMul_1MatMulzeros:output:0-lstm_cell_683/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_683/MatMul_1�
lstm_cell_683/addAddV2lstm_cell_683/MatMul:product:0 lstm_cell_683/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_cell_683/add�
$lstm_cell_683/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_683_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02&
$lstm_cell_683/BiasAdd/ReadVariableOp�
lstm_cell_683/BiasAddBiasAddlstm_cell_683/add:z:0,lstm_cell_683/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_683/BiasAdd�
lstm_cell_683/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_683/split/split_dim�
lstm_cell_683/splitSplit&lstm_cell_683/split/split_dim:output:0lstm_cell_683/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_split2
lstm_cell_683/split�
lstm_cell_683/SigmoidSigmoidlstm_cell_683/split:output:0*
T0*'
_output_shapes
:���������02
lstm_cell_683/Sigmoid�
lstm_cell_683/Sigmoid_1Sigmoidlstm_cell_683/split:output:1*
T0*'
_output_shapes
:���������02
lstm_cell_683/Sigmoid_1�
lstm_cell_683/mulMullstm_cell_683/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������02
lstm_cell_683/mul�
lstm_cell_683/ReluRelulstm_cell_683/split:output:2*
T0*'
_output_shapes
:���������02
lstm_cell_683/Relu�
lstm_cell_683/mul_1Mullstm_cell_683/Sigmoid:y:0 lstm_cell_683/Relu:activations:0*
T0*'
_output_shapes
:���������02
lstm_cell_683/mul_1�
lstm_cell_683/add_1AddV2lstm_cell_683/mul:z:0lstm_cell_683/mul_1:z:0*
T0*'
_output_shapes
:���������02
lstm_cell_683/add_1�
lstm_cell_683/Sigmoid_2Sigmoidlstm_cell_683/split:output:3*
T0*'
_output_shapes
:���������02
lstm_cell_683/Sigmoid_2
lstm_cell_683/Relu_1Relulstm_cell_683/add_1:z:0*
T0*'
_output_shapes
:���������02
lstm_cell_683/Relu_1�
lstm_cell_683/mul_2Mullstm_cell_683/Sigmoid_2:y:0"lstm_cell_683/Relu_1:activations:0*
T0*'
_output_shapes
:���������02
lstm_cell_683/mul_2�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_683_matmul_readvariableop_resource.lstm_cell_683_matmul_1_readvariableop_resource-lstm_cell_683_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������0:���������0: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1490881*
condR
while_cond_1490880*K
output_shapes:
8: : : : :���������0:���������0: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������0*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������0*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������02
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimew
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������02

Identity�
NoOpNoOp%^lstm_cell_683/BiasAdd/ReadVariableOp$^lstm_cell_683/MatMul/ReadVariableOp&^lstm_cell_683/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_683/BiasAdd/ReadVariableOp$lstm_cell_683/BiasAdd/ReadVariableOp2J
#lstm_cell_683/MatMul/ReadVariableOp#lstm_cell_683/MatMul/ReadVariableOp2N
%lstm_cell_683/MatMul_1/ReadVariableOp%lstm_cell_683/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�V
�
E__inference_lstm_685_layer_call_and_return_conditional_losses_1492251
inputs_0?
,lstm_cell_685_matmul_readvariableop_resource:	0�A
.lstm_cell_685_matmul_1_readvariableop_resource:	\�<
-lstm_cell_685_biasadd_readvariableop_resource:	�
identity��$lstm_cell_685/BiasAdd/ReadVariableOp�#lstm_cell_685/MatMul/ReadVariableOp�%lstm_cell_685/MatMul_1/ReadVariableOp�whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :\2
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������\2
zerosf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :\2
zeros_1/packed/1�
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������\2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������02
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������0*
shrink_axis_mask2
strided_slice_2�
#lstm_cell_685/MatMul/ReadVariableOpReadVariableOp,lstm_cell_685_matmul_readvariableop_resource*
_output_shapes
:	0�*
dtype02%
#lstm_cell_685/MatMul/ReadVariableOp�
lstm_cell_685/MatMulMatMulstrided_slice_2:output:0+lstm_cell_685/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_685/MatMul�
%lstm_cell_685/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_685_matmul_1_readvariableop_resource*
_output_shapes
:	\�*
dtype02'
%lstm_cell_685/MatMul_1/ReadVariableOp�
lstm_cell_685/MatMul_1MatMulzeros:output:0-lstm_cell_685/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_685/MatMul_1�
lstm_cell_685/addAddV2lstm_cell_685/MatMul:product:0 lstm_cell_685/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_cell_685/add�
$lstm_cell_685/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_685_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02&
$lstm_cell_685/BiasAdd/ReadVariableOp�
lstm_cell_685/BiasAddBiasAddlstm_cell_685/add:z:0,lstm_cell_685/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_685/BiasAdd�
lstm_cell_685/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_685/split/split_dim�
lstm_cell_685/splitSplit&lstm_cell_685/split/split_dim:output:0lstm_cell_685/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������\:���������\:���������\:���������\*
	num_split2
lstm_cell_685/split�
lstm_cell_685/SigmoidSigmoidlstm_cell_685/split:output:0*
T0*'
_output_shapes
:���������\2
lstm_cell_685/Sigmoid�
lstm_cell_685/Sigmoid_1Sigmoidlstm_cell_685/split:output:1*
T0*'
_output_shapes
:���������\2
lstm_cell_685/Sigmoid_1�
lstm_cell_685/mulMullstm_cell_685/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������\2
lstm_cell_685/mul�
lstm_cell_685/ReluRelulstm_cell_685/split:output:2*
T0*'
_output_shapes
:���������\2
lstm_cell_685/Relu�
lstm_cell_685/mul_1Mullstm_cell_685/Sigmoid:y:0 lstm_cell_685/Relu:activations:0*
T0*'
_output_shapes
:���������\2
lstm_cell_685/mul_1�
lstm_cell_685/add_1AddV2lstm_cell_685/mul:z:0lstm_cell_685/mul_1:z:0*
T0*'
_output_shapes
:���������\2
lstm_cell_685/add_1�
lstm_cell_685/Sigmoid_2Sigmoidlstm_cell_685/split:output:3*
T0*'
_output_shapes
:���������\2
lstm_cell_685/Sigmoid_2
lstm_cell_685/Relu_1Relulstm_cell_685/add_1:z:0*
T0*'
_output_shapes
:���������\2
lstm_cell_685/Relu_1�
lstm_cell_685/mul_2Mullstm_cell_685/Sigmoid_2:y:0"lstm_cell_685/Relu_1:activations:0*
T0*'
_output_shapes
:���������\2
lstm_cell_685/mul_2�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����\   2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_685_matmul_readvariableop_resource.lstm_cell_685_matmul_1_readvariableop_resource-lstm_cell_685_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������\:���������\: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1492167*
condR
while_cond_1492166*K
output_shapes:
8: : : : :���������\:���������\: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����\   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������\*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������\*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������\2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������\2

Identity�
NoOpNoOp%^lstm_cell_685/BiasAdd/ReadVariableOp$^lstm_cell_685/MatMul/ReadVariableOp&^lstm_cell_685/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������0: : : 2L
$lstm_cell_685/BiasAdd/ReadVariableOp$lstm_cell_685/BiasAdd/ReadVariableOp2J
#lstm_cell_685/MatMul/ReadVariableOp#lstm_cell_685/MatMul/ReadVariableOp2N
%lstm_cell_685/MatMul_1/ReadVariableOp%lstm_cell_685/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������0
"
_user_specified_name
inputs/0
�?
�
E__inference_lstm_684_layer_call_and_return_conditional_losses_1487345

inputs(
lstm_cell_684_1487263:	0�(
lstm_cell_684_1487265:	0�$
lstm_cell_684_1487267:	�
identity��%lstm_cell_684/StatefulPartitionedCall�whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :02
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������02
zerosf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :02
zeros_1/packed/1�
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������02	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������02
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������0*
shrink_axis_mask2
strided_slice_2�
%lstm_cell_684/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_684_1487263lstm_cell_684_1487265lstm_cell_684_1487267*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������0:���������0:���������0*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_684_layer_call_and_return_conditional_losses_14872622'
%lstm_cell_684/StatefulPartitionedCall�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_684_1487263lstm_cell_684_1487265lstm_cell_684_1487267*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������0:���������0: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1487276*
condR
while_cond_1487275*K
output_shapes:
8: : : : :���������0:���������0: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������0*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������0*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������02
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimew
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������02

Identity~
NoOpNoOp&^lstm_cell_684/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������0: : : 2N
%lstm_cell_684/StatefulPartitionedCall%lstm_cell_684/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������0
 
_user_specified_nameinputs
�
�
J__inference_lstm_cell_685_layer_call_and_return_conditional_losses_1487860

inputs

states
states_11
matmul_readvariableop_resource:	0�3
 matmul_1_readvariableop_resource:	\�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	0�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	\�*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������\:���������\:���������\:���������\*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������\2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������\2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������\2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������\2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������\2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������\2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������\2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������\2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������\2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������\2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������\2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������\2

Identity_2�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������0:���������\:���������\: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������0
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������\
 
_user_specified_namestates:OK
'
_output_shapes
:���������\
 
_user_specified_namestates
�
f
-__inference_dropout_683_layer_call_fn_1492547

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������\* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_683_layer_call_and_return_conditional_losses_14889412
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������\2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������\22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������\
 
_user_specified_nameinputs
�

�
lstm_685_while_cond_1490092.
*lstm_685_while_lstm_685_while_loop_counter4
0lstm_685_while_lstm_685_while_maximum_iterations
lstm_685_while_placeholder 
lstm_685_while_placeholder_1 
lstm_685_while_placeholder_2 
lstm_685_while_placeholder_30
,lstm_685_while_less_lstm_685_strided_slice_1G
Clstm_685_while_lstm_685_while_cond_1490092___redundant_placeholder0G
Clstm_685_while_lstm_685_while_cond_1490092___redundant_placeholder1G
Clstm_685_while_lstm_685_while_cond_1490092___redundant_placeholder2G
Clstm_685_while_lstm_685_while_cond_1490092___redundant_placeholder3
lstm_685_while_identity
�
lstm_685/while/LessLesslstm_685_while_placeholder,lstm_685_while_less_lstm_685_strided_slice_1*
T0*
_output_shapes
: 2
lstm_685/while/Lessx
lstm_685/while/IdentityIdentitylstm_685/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_685/while/Identity";
lstm_685_while_identity lstm_685/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������\:���������\: ::::: 
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
:���������\:-)
'
_output_shapes
:���������\:

_output_shapes
: :

_output_shapes
:
�?
�
while_body_1491024
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_683_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_683_matmul_1_readvariableop_resource_0:	0�D
5while_lstm_cell_683_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_683_matmul_readvariableop_resource:	�G
4while_lstm_cell_683_matmul_1_readvariableop_resource:	0�B
3while_lstm_cell_683_biasadd_readvariableop_resource:	���*while/lstm_cell_683/BiasAdd/ReadVariableOp�)while/lstm_cell_683/MatMul/ReadVariableOp�+while/lstm_cell_683/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
)while/lstm_cell_683/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_683_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype02+
)while/lstm_cell_683/MatMul/ReadVariableOp�
while/lstm_cell_683/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_683/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_683/MatMul�
+while/lstm_cell_683/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_683_matmul_1_readvariableop_resource_0*
_output_shapes
:	0�*
dtype02-
+while/lstm_cell_683/MatMul_1/ReadVariableOp�
while/lstm_cell_683/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_683/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_683/MatMul_1�
while/lstm_cell_683/addAddV2$while/lstm_cell_683/MatMul:product:0&while/lstm_cell_683/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_683/add�
*while/lstm_cell_683/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_683_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02,
*while/lstm_cell_683/BiasAdd/ReadVariableOp�
while/lstm_cell_683/BiasAddBiasAddwhile/lstm_cell_683/add:z:02while/lstm_cell_683/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_683/BiasAdd�
#while/lstm_cell_683/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_683/split/split_dim�
while/lstm_cell_683/splitSplit,while/lstm_cell_683/split/split_dim:output:0$while/lstm_cell_683/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_split2
while/lstm_cell_683/split�
while/lstm_cell_683/SigmoidSigmoid"while/lstm_cell_683/split:output:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_683/Sigmoid�
while/lstm_cell_683/Sigmoid_1Sigmoid"while/lstm_cell_683/split:output:1*
T0*'
_output_shapes
:���������02
while/lstm_cell_683/Sigmoid_1�
while/lstm_cell_683/mulMul!while/lstm_cell_683/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������02
while/lstm_cell_683/mul�
while/lstm_cell_683/ReluRelu"while/lstm_cell_683/split:output:2*
T0*'
_output_shapes
:���������02
while/lstm_cell_683/Relu�
while/lstm_cell_683/mul_1Mulwhile/lstm_cell_683/Sigmoid:y:0&while/lstm_cell_683/Relu:activations:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_683/mul_1�
while/lstm_cell_683/add_1AddV2while/lstm_cell_683/mul:z:0while/lstm_cell_683/mul_1:z:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_683/add_1�
while/lstm_cell_683/Sigmoid_2Sigmoid"while/lstm_cell_683/split:output:3*
T0*'
_output_shapes
:���������02
while/lstm_cell_683/Sigmoid_2�
while/lstm_cell_683/Relu_1Reluwhile/lstm_cell_683/add_1:z:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_683/Relu_1�
while/lstm_cell_683/mul_2Mul!while/lstm_cell_683/Sigmoid_2:y:0(while/lstm_cell_683/Relu_1:activations:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_683/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_683/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_683/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������02
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_683/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������02
while/Identity_5�

while/NoOpNoOp+^while/lstm_cell_683/BiasAdd/ReadVariableOp*^while/lstm_cell_683/MatMul/ReadVariableOp,^while/lstm_cell_683/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_683_biasadd_readvariableop_resource5while_lstm_cell_683_biasadd_readvariableop_resource_0"n
4while_lstm_cell_683_matmul_1_readvariableop_resource6while_lstm_cell_683_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_683_matmul_readvariableop_resource4while_lstm_cell_683_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������0:���������0: : : : : 2X
*while/lstm_cell_683/BiasAdd/ReadVariableOp*while/lstm_cell_683/BiasAdd/ReadVariableOp2V
)while/lstm_cell_683/MatMul/ReadVariableOp)while/lstm_cell_683/MatMul/ReadVariableOp2Z
+while/lstm_cell_683/MatMul_1/ReadVariableOp+while/lstm_cell_683/MatMul_1/ReadVariableOp: 
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
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
: 
�'
�
K__inference_sequential_133_layer_call_and_return_conditional_losses_1489547

inputs#
lstm_683_1489517:	�#
lstm_683_1489519:	0�
lstm_683_1489521:	�#
lstm_684_1489525:	0�#
lstm_684_1489527:	0�
lstm_684_1489529:	�#
lstm_685_1489533:	0�#
lstm_685_1489535:	\�
lstm_685_1489537:	�#
dense_131_1489541:\
dense_131_1489543:
identity��!dense_131/StatefulPartitionedCall�#dropout_681/StatefulPartitionedCall�#dropout_682/StatefulPartitionedCall�#dropout_683/StatefulPartitionedCall� lstm_683/StatefulPartitionedCall� lstm_684/StatefulPartitionedCall� lstm_685/StatefulPartitionedCall�
 lstm_683/StatefulPartitionedCallStatefulPartitionedCallinputslstm_683_1489517lstm_683_1489519lstm_683_1489521*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������0*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_683_layer_call_and_return_conditional_losses_14894762"
 lstm_683/StatefulPartitionedCall�
#dropout_681/StatefulPartitionedCallStatefulPartitionedCall)lstm_683/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������0* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_681_layer_call_and_return_conditional_losses_14893172%
#dropout_681/StatefulPartitionedCall�
 lstm_684/StatefulPartitionedCallStatefulPartitionedCall,dropout_681/StatefulPartitionedCall:output:0lstm_684_1489525lstm_684_1489527lstm_684_1489529*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������0*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_684_layer_call_and_return_conditional_losses_14892882"
 lstm_684/StatefulPartitionedCall�
#dropout_682/StatefulPartitionedCallStatefulPartitionedCall)lstm_684/StatefulPartitionedCall:output:0$^dropout_681/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������0* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_682_layer_call_and_return_conditional_losses_14891292%
#dropout_682/StatefulPartitionedCall�
 lstm_685/StatefulPartitionedCallStatefulPartitionedCall,dropout_682/StatefulPartitionedCall:output:0lstm_685_1489533lstm_685_1489535lstm_685_1489537*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������\*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_685_layer_call_and_return_conditional_losses_14891002"
 lstm_685/StatefulPartitionedCall�
#dropout_683/StatefulPartitionedCallStatefulPartitionedCall)lstm_685/StatefulPartitionedCall:output:0$^dropout_682/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������\* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_683_layer_call_and_return_conditional_losses_14889412%
#dropout_683/StatefulPartitionedCall�
!dense_131/StatefulPartitionedCallStatefulPartitionedCall,dropout_683/StatefulPartitionedCall:output:0dense_131_1489541dense_131_1489543*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_131_layer_call_and_return_conditional_losses_14888792#
!dense_131/StatefulPartitionedCall�
IdentityIdentity*dense_131/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp"^dense_131/StatefulPartitionedCall$^dropout_681/StatefulPartitionedCall$^dropout_682/StatefulPartitionedCall$^dropout_683/StatefulPartitionedCall!^lstm_683/StatefulPartitionedCall!^lstm_684/StatefulPartitionedCall!^lstm_685/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2F
!dense_131/StatefulPartitionedCall!dense_131/StatefulPartitionedCall2J
#dropout_681/StatefulPartitionedCall#dropout_681/StatefulPartitionedCall2J
#dropout_682/StatefulPartitionedCall#dropout_682/StatefulPartitionedCall2J
#dropout_683/StatefulPartitionedCall#dropout_683/StatefulPartitionedCall2D
 lstm_683/StatefulPartitionedCall lstm_683/StatefulPartitionedCall2D
 lstm_684/StatefulPartitionedCall lstm_684/StatefulPartitionedCall2D
 lstm_685/StatefulPartitionedCall lstm_685/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
+__inference_dense_131_layer_call_fn_1492573

inputs
unknown:\
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_131_layer_call_and_return_conditional_losses_14888792
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������\: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������\
 
_user_specified_nameinputs
�U
�
E__inference_lstm_684_layer_call_and_return_conditional_losses_1491751

inputs?
,lstm_cell_684_matmul_readvariableop_resource:	0�A
.lstm_cell_684_matmul_1_readvariableop_resource:	0�<
-lstm_cell_684_biasadd_readvariableop_resource:	�
identity��$lstm_cell_684/BiasAdd/ReadVariableOp�#lstm_cell_684/MatMul/ReadVariableOp�%lstm_cell_684/MatMul_1/ReadVariableOp�whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :02
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������02
zerosf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :02
zeros_1/packed/1�
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������02	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������02
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������0*
shrink_axis_mask2
strided_slice_2�
#lstm_cell_684/MatMul/ReadVariableOpReadVariableOp,lstm_cell_684_matmul_readvariableop_resource*
_output_shapes
:	0�*
dtype02%
#lstm_cell_684/MatMul/ReadVariableOp�
lstm_cell_684/MatMulMatMulstrided_slice_2:output:0+lstm_cell_684/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_684/MatMul�
%lstm_cell_684/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_684_matmul_1_readvariableop_resource*
_output_shapes
:	0�*
dtype02'
%lstm_cell_684/MatMul_1/ReadVariableOp�
lstm_cell_684/MatMul_1MatMulzeros:output:0-lstm_cell_684/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_684/MatMul_1�
lstm_cell_684/addAddV2lstm_cell_684/MatMul:product:0 lstm_cell_684/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_cell_684/add�
$lstm_cell_684/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_684_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02&
$lstm_cell_684/BiasAdd/ReadVariableOp�
lstm_cell_684/BiasAddBiasAddlstm_cell_684/add:z:0,lstm_cell_684/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_684/BiasAdd�
lstm_cell_684/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_684/split/split_dim�
lstm_cell_684/splitSplit&lstm_cell_684/split/split_dim:output:0lstm_cell_684/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_split2
lstm_cell_684/split�
lstm_cell_684/SigmoidSigmoidlstm_cell_684/split:output:0*
T0*'
_output_shapes
:���������02
lstm_cell_684/Sigmoid�
lstm_cell_684/Sigmoid_1Sigmoidlstm_cell_684/split:output:1*
T0*'
_output_shapes
:���������02
lstm_cell_684/Sigmoid_1�
lstm_cell_684/mulMullstm_cell_684/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������02
lstm_cell_684/mul�
lstm_cell_684/ReluRelulstm_cell_684/split:output:2*
T0*'
_output_shapes
:���������02
lstm_cell_684/Relu�
lstm_cell_684/mul_1Mullstm_cell_684/Sigmoid:y:0 lstm_cell_684/Relu:activations:0*
T0*'
_output_shapes
:���������02
lstm_cell_684/mul_1�
lstm_cell_684/add_1AddV2lstm_cell_684/mul:z:0lstm_cell_684/mul_1:z:0*
T0*'
_output_shapes
:���������02
lstm_cell_684/add_1�
lstm_cell_684/Sigmoid_2Sigmoidlstm_cell_684/split:output:3*
T0*'
_output_shapes
:���������02
lstm_cell_684/Sigmoid_2
lstm_cell_684/Relu_1Relulstm_cell_684/add_1:z:0*
T0*'
_output_shapes
:���������02
lstm_cell_684/Relu_1�
lstm_cell_684/mul_2Mullstm_cell_684/Sigmoid_2:y:0"lstm_cell_684/Relu_1:activations:0*
T0*'
_output_shapes
:���������02
lstm_cell_684/mul_2�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_684_matmul_readvariableop_resource.lstm_cell_684_matmul_1_readvariableop_resource-lstm_cell_684_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������0:���������0: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1491667*
condR
while_cond_1491666*K
output_shapes:
8: : : : :���������0:���������0: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������0*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������0*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������02
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimen
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������02

Identity�
NoOpNoOp%^lstm_cell_684/BiasAdd/ReadVariableOp$^lstm_cell_684/MatMul/ReadVariableOp&^lstm_cell_684/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������0: : : 2L
$lstm_cell_684/BiasAdd/ReadVariableOp$lstm_cell_684/BiasAdd/ReadVariableOp2J
#lstm_cell_684/MatMul/ReadVariableOp#lstm_cell_684/MatMul/ReadVariableOp2N
%lstm_cell_684/MatMul_1/ReadVariableOp%lstm_cell_684/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������0
 
_user_specified_nameinputs
�
�
while_cond_1492023
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1492023___redundant_placeholder05
1while_while_cond_1492023___redundant_placeholder15
1while_while_cond_1492023___redundant_placeholder25
1while_while_cond_1492023___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������\:���������\: ::::: 
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
:���������\:-)
'
_output_shapes
:���������\:

_output_shapes
: :

_output_shapes
:
�U
�
E__inference_lstm_683_layer_call_and_return_conditional_losses_1491108

inputs?
,lstm_cell_683_matmul_readvariableop_resource:	�A
.lstm_cell_683_matmul_1_readvariableop_resource:	0�<
-lstm_cell_683_biasadd_readvariableop_resource:	�
identity��$lstm_cell_683/BiasAdd/ReadVariableOp�#lstm_cell_683/MatMul/ReadVariableOp�%lstm_cell_683/MatMul_1/ReadVariableOp�whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :02
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������02
zerosf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :02
zeros_1/packed/1�
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������02	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
#lstm_cell_683/MatMul/ReadVariableOpReadVariableOp,lstm_cell_683_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02%
#lstm_cell_683/MatMul/ReadVariableOp�
lstm_cell_683/MatMulMatMulstrided_slice_2:output:0+lstm_cell_683/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_683/MatMul�
%lstm_cell_683/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_683_matmul_1_readvariableop_resource*
_output_shapes
:	0�*
dtype02'
%lstm_cell_683/MatMul_1/ReadVariableOp�
lstm_cell_683/MatMul_1MatMulzeros:output:0-lstm_cell_683/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_683/MatMul_1�
lstm_cell_683/addAddV2lstm_cell_683/MatMul:product:0 lstm_cell_683/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_cell_683/add�
$lstm_cell_683/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_683_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02&
$lstm_cell_683/BiasAdd/ReadVariableOp�
lstm_cell_683/BiasAddBiasAddlstm_cell_683/add:z:0,lstm_cell_683/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_683/BiasAdd�
lstm_cell_683/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_683/split/split_dim�
lstm_cell_683/splitSplit&lstm_cell_683/split/split_dim:output:0lstm_cell_683/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_split2
lstm_cell_683/split�
lstm_cell_683/SigmoidSigmoidlstm_cell_683/split:output:0*
T0*'
_output_shapes
:���������02
lstm_cell_683/Sigmoid�
lstm_cell_683/Sigmoid_1Sigmoidlstm_cell_683/split:output:1*
T0*'
_output_shapes
:���������02
lstm_cell_683/Sigmoid_1�
lstm_cell_683/mulMullstm_cell_683/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������02
lstm_cell_683/mul�
lstm_cell_683/ReluRelulstm_cell_683/split:output:2*
T0*'
_output_shapes
:���������02
lstm_cell_683/Relu�
lstm_cell_683/mul_1Mullstm_cell_683/Sigmoid:y:0 lstm_cell_683/Relu:activations:0*
T0*'
_output_shapes
:���������02
lstm_cell_683/mul_1�
lstm_cell_683/add_1AddV2lstm_cell_683/mul:z:0lstm_cell_683/mul_1:z:0*
T0*'
_output_shapes
:���������02
lstm_cell_683/add_1�
lstm_cell_683/Sigmoid_2Sigmoidlstm_cell_683/split:output:3*
T0*'
_output_shapes
:���������02
lstm_cell_683/Sigmoid_2
lstm_cell_683/Relu_1Relulstm_cell_683/add_1:z:0*
T0*'
_output_shapes
:���������02
lstm_cell_683/Relu_1�
lstm_cell_683/mul_2Mullstm_cell_683/Sigmoid_2:y:0"lstm_cell_683/Relu_1:activations:0*
T0*'
_output_shapes
:���������02
lstm_cell_683/mul_2�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_683_matmul_readvariableop_resource.lstm_cell_683_matmul_1_readvariableop_resource-lstm_cell_683_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������0:���������0: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1491024*
condR
while_cond_1491023*K
output_shapes:
8: : : : :���������0:���������0: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������0*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������0*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������02
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimen
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������02

Identity�
NoOpNoOp%^lstm_cell_683/BiasAdd/ReadVariableOp$^lstm_cell_683/MatMul/ReadVariableOp&^lstm_cell_683/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_683/BiasAdd/ReadVariableOp$lstm_cell_683/BiasAdd/ReadVariableOp2J
#lstm_cell_683/MatMul/ReadVariableOp#lstm_cell_683/MatMul/ReadVariableOp2N
%lstm_cell_683/MatMul_1/ReadVariableOp%lstm_cell_683/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_1487275
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1487275___redundant_placeholder05
1while_while_cond_1487275___redundant_placeholder15
1while_while_cond_1487275___redundant_placeholder25
1while_while_cond_1487275___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������0:���������0: ::::: 
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
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
:
�
�
/__inference_lstm_cell_683_layer_call_fn_1492600

inputs
states_0
states_1
unknown:	�
	unknown_0:	0�
	unknown_1:	�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������0:���������0:���������0*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_683_layer_call_and_return_conditional_losses_14866642
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������02

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������02

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������02

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������0:���������0: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������0
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������0
"
_user_specified_name
states/1
�?
�
while_body_1488456
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_683_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_683_matmul_1_readvariableop_resource_0:	0�D
5while_lstm_cell_683_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_683_matmul_readvariableop_resource:	�G
4while_lstm_cell_683_matmul_1_readvariableop_resource:	0�B
3while_lstm_cell_683_biasadd_readvariableop_resource:	���*while/lstm_cell_683/BiasAdd/ReadVariableOp�)while/lstm_cell_683/MatMul/ReadVariableOp�+while/lstm_cell_683/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
)while/lstm_cell_683/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_683_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype02+
)while/lstm_cell_683/MatMul/ReadVariableOp�
while/lstm_cell_683/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_683/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_683/MatMul�
+while/lstm_cell_683/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_683_matmul_1_readvariableop_resource_0*
_output_shapes
:	0�*
dtype02-
+while/lstm_cell_683/MatMul_1/ReadVariableOp�
while/lstm_cell_683/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_683/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_683/MatMul_1�
while/lstm_cell_683/addAddV2$while/lstm_cell_683/MatMul:product:0&while/lstm_cell_683/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_683/add�
*while/lstm_cell_683/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_683_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02,
*while/lstm_cell_683/BiasAdd/ReadVariableOp�
while/lstm_cell_683/BiasAddBiasAddwhile/lstm_cell_683/add:z:02while/lstm_cell_683/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_683/BiasAdd�
#while/lstm_cell_683/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_683/split/split_dim�
while/lstm_cell_683/splitSplit,while/lstm_cell_683/split/split_dim:output:0$while/lstm_cell_683/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_split2
while/lstm_cell_683/split�
while/lstm_cell_683/SigmoidSigmoid"while/lstm_cell_683/split:output:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_683/Sigmoid�
while/lstm_cell_683/Sigmoid_1Sigmoid"while/lstm_cell_683/split:output:1*
T0*'
_output_shapes
:���������02
while/lstm_cell_683/Sigmoid_1�
while/lstm_cell_683/mulMul!while/lstm_cell_683/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������02
while/lstm_cell_683/mul�
while/lstm_cell_683/ReluRelu"while/lstm_cell_683/split:output:2*
T0*'
_output_shapes
:���������02
while/lstm_cell_683/Relu�
while/lstm_cell_683/mul_1Mulwhile/lstm_cell_683/Sigmoid:y:0&while/lstm_cell_683/Relu:activations:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_683/mul_1�
while/lstm_cell_683/add_1AddV2while/lstm_cell_683/mul:z:0while/lstm_cell_683/mul_1:z:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_683/add_1�
while/lstm_cell_683/Sigmoid_2Sigmoid"while/lstm_cell_683/split:output:3*
T0*'
_output_shapes
:���������02
while/lstm_cell_683/Sigmoid_2�
while/lstm_cell_683/Relu_1Reluwhile/lstm_cell_683/add_1:z:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_683/Relu_1�
while/lstm_cell_683/mul_2Mul!while/lstm_cell_683/Sigmoid_2:y:0(while/lstm_cell_683/Relu_1:activations:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_683/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_683/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_683/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������02
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_683/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������02
while/Identity_5�

while/NoOpNoOp+^while/lstm_cell_683/BiasAdd/ReadVariableOp*^while/lstm_cell_683/MatMul/ReadVariableOp,^while/lstm_cell_683/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_683_biasadd_readvariableop_resource5while_lstm_cell_683_biasadd_readvariableop_resource_0"n
4while_lstm_cell_683_matmul_1_readvariableop_resource6while_lstm_cell_683_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_683_matmul_readvariableop_resource4while_lstm_cell_683_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������0:���������0: : : : : 2X
*while/lstm_cell_683/BiasAdd/ReadVariableOp*while/lstm_cell_683/BiasAdd/ReadVariableOp2V
)while/lstm_cell_683/MatMul/ReadVariableOp)while/lstm_cell_683/MatMul/ReadVariableOp2Z
+while/lstm_cell_683/MatMul_1/ReadVariableOp+while/lstm_cell_683/MatMul_1/ReadVariableOp: 
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
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
: 
�
�
*__inference_lstm_683_layer_call_fn_1490646
inputs_0
unknown:	�
	unknown_0:	0�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������0*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_683_layer_call_and_return_conditional_losses_14867472
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������02

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
while_cond_1492166
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1492166___redundant_placeholder05
1while_while_cond_1492166___redundant_placeholder15
1while_while_cond_1492166___redundant_placeholder25
1while_while_cond_1492166___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������\:���������\: ::::: 
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
:���������\:-)
'
_output_shapes
:���������\:

_output_shapes
: :

_output_shapes
:
�#
�
K__inference_sequential_133_layer_call_and_return_conditional_losses_1489632
lstm_683_input#
lstm_683_1489602:	�#
lstm_683_1489604:	0�
lstm_683_1489606:	�#
lstm_684_1489610:	0�#
lstm_684_1489612:	0�
lstm_684_1489614:	�#
lstm_685_1489618:	0�#
lstm_685_1489620:	\�
lstm_685_1489622:	�#
dense_131_1489626:\
dense_131_1489628:
identity��!dense_131/StatefulPartitionedCall� lstm_683/StatefulPartitionedCall� lstm_684/StatefulPartitionedCall� lstm_685/StatefulPartitionedCall�
 lstm_683/StatefulPartitionedCallStatefulPartitionedCalllstm_683_inputlstm_683_1489602lstm_683_1489604lstm_683_1489606*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������0*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_683_layer_call_and_return_conditional_losses_14885402"
 lstm_683/StatefulPartitionedCall�
dropout_681/PartitionedCallPartitionedCall)lstm_683/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������0* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_681_layer_call_and_return_conditional_losses_14885532
dropout_681/PartitionedCall�
 lstm_684/StatefulPartitionedCallStatefulPartitionedCall$dropout_681/PartitionedCall:output:0lstm_684_1489610lstm_684_1489612lstm_684_1489614*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������0*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_684_layer_call_and_return_conditional_losses_14886972"
 lstm_684/StatefulPartitionedCall�
dropout_682/PartitionedCallPartitionedCall)lstm_684/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������0* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_682_layer_call_and_return_conditional_losses_14887102
dropout_682/PartitionedCall�
 lstm_685/StatefulPartitionedCallStatefulPartitionedCall$dropout_682/PartitionedCall:output:0lstm_685_1489618lstm_685_1489620lstm_685_1489622*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������\*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_685_layer_call_and_return_conditional_losses_14888542"
 lstm_685/StatefulPartitionedCall�
dropout_683/PartitionedCallPartitionedCall)lstm_685/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������\* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_683_layer_call_and_return_conditional_losses_14888672
dropout_683/PartitionedCall�
!dense_131/StatefulPartitionedCallStatefulPartitionedCall$dropout_683/PartitionedCall:output:0dense_131_1489626dense_131_1489628*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_131_layer_call_and_return_conditional_losses_14888792#
!dense_131/StatefulPartitionedCall�
IdentityIdentity*dense_131/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp"^dense_131/StatefulPartitionedCall!^lstm_683/StatefulPartitionedCall!^lstm_684/StatefulPartitionedCall!^lstm_685/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2F
!dense_131/StatefulPartitionedCall!dense_131/StatefulPartitionedCall2D
 lstm_683/StatefulPartitionedCall lstm_683/StatefulPartitionedCall2D
 lstm_684/StatefulPartitionedCall lstm_684/StatefulPartitionedCall2D
 lstm_685/StatefulPartitionedCall lstm_685/StatefulPartitionedCall:[ W
+
_output_shapes
:���������
(
_user_specified_namelstm_683_input
�&
�
while_body_1487874
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_685_1487898_0:	0�0
while_lstm_cell_685_1487900_0:	\�,
while_lstm_cell_685_1487902_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_685_1487898:	0�.
while_lstm_cell_685_1487900:	\�*
while_lstm_cell_685_1487902:	���+while/lstm_cell_685/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������0*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
+while/lstm_cell_685/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_685_1487898_0while_lstm_cell_685_1487900_0while_lstm_cell_685_1487902_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������\:���������\:���������\*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_685_layer_call_and_return_conditional_losses_14878602-
+while/lstm_cell_685/StatefulPartitionedCall�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_685/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identity4while/lstm_cell_685/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������\2
while/Identity_4�
while/Identity_5Identity4while/lstm_cell_685/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������\2
while/Identity_5�

while/NoOpNoOp,^while/lstm_cell_685/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_685_1487898while_lstm_cell_685_1487898_0"<
while_lstm_cell_685_1487900while_lstm_cell_685_1487900_0"<
while_lstm_cell_685_1487902while_lstm_cell_685_1487902_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������\:���������\: : : : : 2Z
+while/lstm_cell_685/StatefulPartitionedCall+while/lstm_cell_685/StatefulPartitionedCall: 
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
:���������\:-)
'
_output_shapes
:���������\:

_output_shapes
: :

_output_shapes
: 
�
g
H__inference_dropout_682_layer_call_and_return_conditional_losses_1491921

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�5�?2
dropout/Constw
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:���������02
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:���������0*
dtype0*

seed*2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *FN�>2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:���������02
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:���������02
dropout/Cast~
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:���������02
dropout/Mul_1i
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:���������02

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������0:S O
+
_output_shapes
:���������0
 
_user_specified_nameinputs
�?
�
while_body_1490738
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_683_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_683_matmul_1_readvariableop_resource_0:	0�D
5while_lstm_cell_683_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_683_matmul_readvariableop_resource:	�G
4while_lstm_cell_683_matmul_1_readvariableop_resource:	0�B
3while_lstm_cell_683_biasadd_readvariableop_resource:	���*while/lstm_cell_683/BiasAdd/ReadVariableOp�)while/lstm_cell_683/MatMul/ReadVariableOp�+while/lstm_cell_683/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
)while/lstm_cell_683/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_683_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype02+
)while/lstm_cell_683/MatMul/ReadVariableOp�
while/lstm_cell_683/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_683/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_683/MatMul�
+while/lstm_cell_683/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_683_matmul_1_readvariableop_resource_0*
_output_shapes
:	0�*
dtype02-
+while/lstm_cell_683/MatMul_1/ReadVariableOp�
while/lstm_cell_683/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_683/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_683/MatMul_1�
while/lstm_cell_683/addAddV2$while/lstm_cell_683/MatMul:product:0&while/lstm_cell_683/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_683/add�
*while/lstm_cell_683/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_683_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02,
*while/lstm_cell_683/BiasAdd/ReadVariableOp�
while/lstm_cell_683/BiasAddBiasAddwhile/lstm_cell_683/add:z:02while/lstm_cell_683/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_683/BiasAdd�
#while/lstm_cell_683/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_683/split/split_dim�
while/lstm_cell_683/splitSplit,while/lstm_cell_683/split/split_dim:output:0$while/lstm_cell_683/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_split2
while/lstm_cell_683/split�
while/lstm_cell_683/SigmoidSigmoid"while/lstm_cell_683/split:output:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_683/Sigmoid�
while/lstm_cell_683/Sigmoid_1Sigmoid"while/lstm_cell_683/split:output:1*
T0*'
_output_shapes
:���������02
while/lstm_cell_683/Sigmoid_1�
while/lstm_cell_683/mulMul!while/lstm_cell_683/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������02
while/lstm_cell_683/mul�
while/lstm_cell_683/ReluRelu"while/lstm_cell_683/split:output:2*
T0*'
_output_shapes
:���������02
while/lstm_cell_683/Relu�
while/lstm_cell_683/mul_1Mulwhile/lstm_cell_683/Sigmoid:y:0&while/lstm_cell_683/Relu:activations:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_683/mul_1�
while/lstm_cell_683/add_1AddV2while/lstm_cell_683/mul:z:0while/lstm_cell_683/mul_1:z:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_683/add_1�
while/lstm_cell_683/Sigmoid_2Sigmoid"while/lstm_cell_683/split:output:3*
T0*'
_output_shapes
:���������02
while/lstm_cell_683/Sigmoid_2�
while/lstm_cell_683/Relu_1Reluwhile/lstm_cell_683/add_1:z:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_683/Relu_1�
while/lstm_cell_683/mul_2Mul!while/lstm_cell_683/Sigmoid_2:y:0(while/lstm_cell_683/Relu_1:activations:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_683/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_683/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_683/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������02
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_683/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������02
while/Identity_5�

while/NoOpNoOp+^while/lstm_cell_683/BiasAdd/ReadVariableOp*^while/lstm_cell_683/MatMul/ReadVariableOp,^while/lstm_cell_683/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_683_biasadd_readvariableop_resource5while_lstm_cell_683_biasadd_readvariableop_resource_0"n
4while_lstm_cell_683_matmul_1_readvariableop_resource6while_lstm_cell_683_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_683_matmul_readvariableop_resource4while_lstm_cell_683_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������0:���������0: : : : : 2X
*while/lstm_cell_683/BiasAdd/ReadVariableOp*while/lstm_cell_683/BiasAdd/ReadVariableOp2V
)while/lstm_cell_683/MatMul/ReadVariableOp)while/lstm_cell_683/MatMul/ReadVariableOp2Z
+while/lstm_cell_683/MatMul_1/ReadVariableOp+while/lstm_cell_683/MatMul_1/ReadVariableOp: 
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
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
: 
�U
�
E__inference_lstm_683_layer_call_and_return_conditional_losses_1491251

inputs?
,lstm_cell_683_matmul_readvariableop_resource:	�A
.lstm_cell_683_matmul_1_readvariableop_resource:	0�<
-lstm_cell_683_biasadd_readvariableop_resource:	�
identity��$lstm_cell_683/BiasAdd/ReadVariableOp�#lstm_cell_683/MatMul/ReadVariableOp�%lstm_cell_683/MatMul_1/ReadVariableOp�whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :02
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������02
zerosf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :02
zeros_1/packed/1�
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������02	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
#lstm_cell_683/MatMul/ReadVariableOpReadVariableOp,lstm_cell_683_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02%
#lstm_cell_683/MatMul/ReadVariableOp�
lstm_cell_683/MatMulMatMulstrided_slice_2:output:0+lstm_cell_683/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_683/MatMul�
%lstm_cell_683/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_683_matmul_1_readvariableop_resource*
_output_shapes
:	0�*
dtype02'
%lstm_cell_683/MatMul_1/ReadVariableOp�
lstm_cell_683/MatMul_1MatMulzeros:output:0-lstm_cell_683/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_683/MatMul_1�
lstm_cell_683/addAddV2lstm_cell_683/MatMul:product:0 lstm_cell_683/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_cell_683/add�
$lstm_cell_683/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_683_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02&
$lstm_cell_683/BiasAdd/ReadVariableOp�
lstm_cell_683/BiasAddBiasAddlstm_cell_683/add:z:0,lstm_cell_683/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_683/BiasAdd�
lstm_cell_683/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_683/split/split_dim�
lstm_cell_683/splitSplit&lstm_cell_683/split/split_dim:output:0lstm_cell_683/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_split2
lstm_cell_683/split�
lstm_cell_683/SigmoidSigmoidlstm_cell_683/split:output:0*
T0*'
_output_shapes
:���������02
lstm_cell_683/Sigmoid�
lstm_cell_683/Sigmoid_1Sigmoidlstm_cell_683/split:output:1*
T0*'
_output_shapes
:���������02
lstm_cell_683/Sigmoid_1�
lstm_cell_683/mulMullstm_cell_683/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������02
lstm_cell_683/mul�
lstm_cell_683/ReluRelulstm_cell_683/split:output:2*
T0*'
_output_shapes
:���������02
lstm_cell_683/Relu�
lstm_cell_683/mul_1Mullstm_cell_683/Sigmoid:y:0 lstm_cell_683/Relu:activations:0*
T0*'
_output_shapes
:���������02
lstm_cell_683/mul_1�
lstm_cell_683/add_1AddV2lstm_cell_683/mul:z:0lstm_cell_683/mul_1:z:0*
T0*'
_output_shapes
:���������02
lstm_cell_683/add_1�
lstm_cell_683/Sigmoid_2Sigmoidlstm_cell_683/split:output:3*
T0*'
_output_shapes
:���������02
lstm_cell_683/Sigmoid_2
lstm_cell_683/Relu_1Relulstm_cell_683/add_1:z:0*
T0*'
_output_shapes
:���������02
lstm_cell_683/Relu_1�
lstm_cell_683/mul_2Mullstm_cell_683/Sigmoid_2:y:0"lstm_cell_683/Relu_1:activations:0*
T0*'
_output_shapes
:���������02
lstm_cell_683/mul_2�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_683_matmul_readvariableop_resource.lstm_cell_683_matmul_1_readvariableop_resource-lstm_cell_683_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������0:���������0: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1491167*
condR
while_cond_1491166*K
output_shapes:
8: : : : :���������0:���������0: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������0*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������0*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������02
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimen
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������02

Identity�
NoOpNoOp%^lstm_cell_683/BiasAdd/ReadVariableOp$^lstm_cell_683/MatMul/ReadVariableOp&^lstm_cell_683/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_683/BiasAdd/ReadVariableOp$lstm_cell_683/BiasAdd/ReadVariableOp2J
#lstm_cell_683/MatMul/ReadVariableOp#lstm_cell_683/MatMul/ReadVariableOp2N
%lstm_cell_683/MatMul_1/ReadVariableOp%lstm_cell_683/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�?
�
while_body_1488613
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_684_matmul_readvariableop_resource_0:	0�I
6while_lstm_cell_684_matmul_1_readvariableop_resource_0:	0�D
5while_lstm_cell_684_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_684_matmul_readvariableop_resource:	0�G
4while_lstm_cell_684_matmul_1_readvariableop_resource:	0�B
3while_lstm_cell_684_biasadd_readvariableop_resource:	���*while/lstm_cell_684/BiasAdd/ReadVariableOp�)while/lstm_cell_684/MatMul/ReadVariableOp�+while/lstm_cell_684/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������0*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
)while/lstm_cell_684/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_684_matmul_readvariableop_resource_0*
_output_shapes
:	0�*
dtype02+
)while/lstm_cell_684/MatMul/ReadVariableOp�
while/lstm_cell_684/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_684/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_684/MatMul�
+while/lstm_cell_684/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_684_matmul_1_readvariableop_resource_0*
_output_shapes
:	0�*
dtype02-
+while/lstm_cell_684/MatMul_1/ReadVariableOp�
while/lstm_cell_684/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_684/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_684/MatMul_1�
while/lstm_cell_684/addAddV2$while/lstm_cell_684/MatMul:product:0&while/lstm_cell_684/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_684/add�
*while/lstm_cell_684/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_684_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02,
*while/lstm_cell_684/BiasAdd/ReadVariableOp�
while/lstm_cell_684/BiasAddBiasAddwhile/lstm_cell_684/add:z:02while/lstm_cell_684/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_684/BiasAdd�
#while/lstm_cell_684/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_684/split/split_dim�
while/lstm_cell_684/splitSplit,while/lstm_cell_684/split/split_dim:output:0$while/lstm_cell_684/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_split2
while/lstm_cell_684/split�
while/lstm_cell_684/SigmoidSigmoid"while/lstm_cell_684/split:output:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_684/Sigmoid�
while/lstm_cell_684/Sigmoid_1Sigmoid"while/lstm_cell_684/split:output:1*
T0*'
_output_shapes
:���������02
while/lstm_cell_684/Sigmoid_1�
while/lstm_cell_684/mulMul!while/lstm_cell_684/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������02
while/lstm_cell_684/mul�
while/lstm_cell_684/ReluRelu"while/lstm_cell_684/split:output:2*
T0*'
_output_shapes
:���������02
while/lstm_cell_684/Relu�
while/lstm_cell_684/mul_1Mulwhile/lstm_cell_684/Sigmoid:y:0&while/lstm_cell_684/Relu:activations:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_684/mul_1�
while/lstm_cell_684/add_1AddV2while/lstm_cell_684/mul:z:0while/lstm_cell_684/mul_1:z:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_684/add_1�
while/lstm_cell_684/Sigmoid_2Sigmoid"while/lstm_cell_684/split:output:3*
T0*'
_output_shapes
:���������02
while/lstm_cell_684/Sigmoid_2�
while/lstm_cell_684/Relu_1Reluwhile/lstm_cell_684/add_1:z:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_684/Relu_1�
while/lstm_cell_684/mul_2Mul!while/lstm_cell_684/Sigmoid_2:y:0(while/lstm_cell_684/Relu_1:activations:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_684/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_684/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_684/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������02
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_684/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������02
while/Identity_5�

while/NoOpNoOp+^while/lstm_cell_684/BiasAdd/ReadVariableOp*^while/lstm_cell_684/MatMul/ReadVariableOp,^while/lstm_cell_684/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_684_biasadd_readvariableop_resource5while_lstm_cell_684_biasadd_readvariableop_resource_0"n
4while_lstm_cell_684_matmul_1_readvariableop_resource6while_lstm_cell_684_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_684_matmul_readvariableop_resource4while_lstm_cell_684_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������0:���������0: : : : : 2X
*while/lstm_cell_684/BiasAdd/ReadVariableOp*while/lstm_cell_684/BiasAdd/ReadVariableOp2V
)while/lstm_cell_684/MatMul/ReadVariableOp)while/lstm_cell_684/MatMul/ReadVariableOp2Z
+while/lstm_cell_684/MatMul_1/ReadVariableOp+while/lstm_cell_684/MatMul_1/ReadVariableOp: 
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
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
: 
�?
�
while_body_1491667
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_684_matmul_readvariableop_resource_0:	0�I
6while_lstm_cell_684_matmul_1_readvariableop_resource_0:	0�D
5while_lstm_cell_684_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_684_matmul_readvariableop_resource:	0�G
4while_lstm_cell_684_matmul_1_readvariableop_resource:	0�B
3while_lstm_cell_684_biasadd_readvariableop_resource:	���*while/lstm_cell_684/BiasAdd/ReadVariableOp�)while/lstm_cell_684/MatMul/ReadVariableOp�+while/lstm_cell_684/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������0*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
)while/lstm_cell_684/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_684_matmul_readvariableop_resource_0*
_output_shapes
:	0�*
dtype02+
)while/lstm_cell_684/MatMul/ReadVariableOp�
while/lstm_cell_684/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_684/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_684/MatMul�
+while/lstm_cell_684/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_684_matmul_1_readvariableop_resource_0*
_output_shapes
:	0�*
dtype02-
+while/lstm_cell_684/MatMul_1/ReadVariableOp�
while/lstm_cell_684/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_684/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_684/MatMul_1�
while/lstm_cell_684/addAddV2$while/lstm_cell_684/MatMul:product:0&while/lstm_cell_684/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_684/add�
*while/lstm_cell_684/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_684_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02,
*while/lstm_cell_684/BiasAdd/ReadVariableOp�
while/lstm_cell_684/BiasAddBiasAddwhile/lstm_cell_684/add:z:02while/lstm_cell_684/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_684/BiasAdd�
#while/lstm_cell_684/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_684/split/split_dim�
while/lstm_cell_684/splitSplit,while/lstm_cell_684/split/split_dim:output:0$while/lstm_cell_684/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_split2
while/lstm_cell_684/split�
while/lstm_cell_684/SigmoidSigmoid"while/lstm_cell_684/split:output:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_684/Sigmoid�
while/lstm_cell_684/Sigmoid_1Sigmoid"while/lstm_cell_684/split:output:1*
T0*'
_output_shapes
:���������02
while/lstm_cell_684/Sigmoid_1�
while/lstm_cell_684/mulMul!while/lstm_cell_684/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������02
while/lstm_cell_684/mul�
while/lstm_cell_684/ReluRelu"while/lstm_cell_684/split:output:2*
T0*'
_output_shapes
:���������02
while/lstm_cell_684/Relu�
while/lstm_cell_684/mul_1Mulwhile/lstm_cell_684/Sigmoid:y:0&while/lstm_cell_684/Relu:activations:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_684/mul_1�
while/lstm_cell_684/add_1AddV2while/lstm_cell_684/mul:z:0while/lstm_cell_684/mul_1:z:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_684/add_1�
while/lstm_cell_684/Sigmoid_2Sigmoid"while/lstm_cell_684/split:output:3*
T0*'
_output_shapes
:���������02
while/lstm_cell_684/Sigmoid_2�
while/lstm_cell_684/Relu_1Reluwhile/lstm_cell_684/add_1:z:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_684/Relu_1�
while/lstm_cell_684/mul_2Mul!while/lstm_cell_684/Sigmoid_2:y:0(while/lstm_cell_684/Relu_1:activations:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_684/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_684/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_684/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������02
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_684/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������02
while/Identity_5�

while/NoOpNoOp+^while/lstm_cell_684/BiasAdd/ReadVariableOp*^while/lstm_cell_684/MatMul/ReadVariableOp,^while/lstm_cell_684/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_684_biasadd_readvariableop_resource5while_lstm_cell_684_biasadd_readvariableop_resource_0"n
4while_lstm_cell_684_matmul_1_readvariableop_resource6while_lstm_cell_684_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_684_matmul_readvariableop_resource4while_lstm_cell_684_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������0:���������0: : : : : 2X
*while/lstm_cell_684/BiasAdd/ReadVariableOp*while/lstm_cell_684/BiasAdd/ReadVariableOp2V
)while/lstm_cell_684/MatMul/ReadVariableOp)while/lstm_cell_684/MatMul/ReadVariableOp2Z
+while/lstm_cell_684/MatMul_1/ReadVariableOp+while/lstm_cell_684/MatMul_1/ReadVariableOp: 
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
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
: 
�b
�
*sequential_133_lstm_683_while_body_1486226L
Hsequential_133_lstm_683_while_sequential_133_lstm_683_while_loop_counterR
Nsequential_133_lstm_683_while_sequential_133_lstm_683_while_maximum_iterations-
)sequential_133_lstm_683_while_placeholder/
+sequential_133_lstm_683_while_placeholder_1/
+sequential_133_lstm_683_while_placeholder_2/
+sequential_133_lstm_683_while_placeholder_3K
Gsequential_133_lstm_683_while_sequential_133_lstm_683_strided_slice_1_0�
�sequential_133_lstm_683_while_tensorarrayv2read_tensorlistgetitem_sequential_133_lstm_683_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_133_lstm_683_while_lstm_cell_683_matmul_readvariableop_resource_0:	�a
Nsequential_133_lstm_683_while_lstm_cell_683_matmul_1_readvariableop_resource_0:	0�\
Msequential_133_lstm_683_while_lstm_cell_683_biasadd_readvariableop_resource_0:	�*
&sequential_133_lstm_683_while_identity,
(sequential_133_lstm_683_while_identity_1,
(sequential_133_lstm_683_while_identity_2,
(sequential_133_lstm_683_while_identity_3,
(sequential_133_lstm_683_while_identity_4,
(sequential_133_lstm_683_while_identity_5I
Esequential_133_lstm_683_while_sequential_133_lstm_683_strided_slice_1�
�sequential_133_lstm_683_while_tensorarrayv2read_tensorlistgetitem_sequential_133_lstm_683_tensorarrayunstack_tensorlistfromtensor]
Jsequential_133_lstm_683_while_lstm_cell_683_matmul_readvariableop_resource:	�_
Lsequential_133_lstm_683_while_lstm_cell_683_matmul_1_readvariableop_resource:	0�Z
Ksequential_133_lstm_683_while_lstm_cell_683_biasadd_readvariableop_resource:	���Bsequential_133/lstm_683/while/lstm_cell_683/BiasAdd/ReadVariableOp�Asequential_133/lstm_683/while/lstm_cell_683/MatMul/ReadVariableOp�Csequential_133/lstm_683/while/lstm_cell_683/MatMul_1/ReadVariableOp�
Osequential_133/lstm_683/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2Q
Osequential_133/lstm_683/while/TensorArrayV2Read/TensorListGetItem/element_shape�
Asequential_133/lstm_683/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_133_lstm_683_while_tensorarrayv2read_tensorlistgetitem_sequential_133_lstm_683_tensorarrayunstack_tensorlistfromtensor_0)sequential_133_lstm_683_while_placeholderXsequential_133/lstm_683/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02C
Asequential_133/lstm_683/while/TensorArrayV2Read/TensorListGetItem�
Asequential_133/lstm_683/while/lstm_cell_683/MatMul/ReadVariableOpReadVariableOpLsequential_133_lstm_683_while_lstm_cell_683_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype02C
Asequential_133/lstm_683/while/lstm_cell_683/MatMul/ReadVariableOp�
2sequential_133/lstm_683/while/lstm_cell_683/MatMulMatMulHsequential_133/lstm_683/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_133/lstm_683/while/lstm_cell_683/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������24
2sequential_133/lstm_683/while/lstm_cell_683/MatMul�
Csequential_133/lstm_683/while/lstm_cell_683/MatMul_1/ReadVariableOpReadVariableOpNsequential_133_lstm_683_while_lstm_cell_683_matmul_1_readvariableop_resource_0*
_output_shapes
:	0�*
dtype02E
Csequential_133/lstm_683/while/lstm_cell_683/MatMul_1/ReadVariableOp�
4sequential_133/lstm_683/while/lstm_cell_683/MatMul_1MatMul+sequential_133_lstm_683_while_placeholder_2Ksequential_133/lstm_683/while/lstm_cell_683/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������26
4sequential_133/lstm_683/while/lstm_cell_683/MatMul_1�
/sequential_133/lstm_683/while/lstm_cell_683/addAddV2<sequential_133/lstm_683/while/lstm_cell_683/MatMul:product:0>sequential_133/lstm_683/while/lstm_cell_683/MatMul_1:product:0*
T0*(
_output_shapes
:����������21
/sequential_133/lstm_683/while/lstm_cell_683/add�
Bsequential_133/lstm_683/while/lstm_cell_683/BiasAdd/ReadVariableOpReadVariableOpMsequential_133_lstm_683_while_lstm_cell_683_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02D
Bsequential_133/lstm_683/while/lstm_cell_683/BiasAdd/ReadVariableOp�
3sequential_133/lstm_683/while/lstm_cell_683/BiasAddBiasAdd3sequential_133/lstm_683/while/lstm_cell_683/add:z:0Jsequential_133/lstm_683/while/lstm_cell_683/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������25
3sequential_133/lstm_683/while/lstm_cell_683/BiasAdd�
;sequential_133/lstm_683/while/lstm_cell_683/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2=
;sequential_133/lstm_683/while/lstm_cell_683/split/split_dim�
1sequential_133/lstm_683/while/lstm_cell_683/splitSplitDsequential_133/lstm_683/while/lstm_cell_683/split/split_dim:output:0<sequential_133/lstm_683/while/lstm_cell_683/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_split23
1sequential_133/lstm_683/while/lstm_cell_683/split�
3sequential_133/lstm_683/while/lstm_cell_683/SigmoidSigmoid:sequential_133/lstm_683/while/lstm_cell_683/split:output:0*
T0*'
_output_shapes
:���������025
3sequential_133/lstm_683/while/lstm_cell_683/Sigmoid�
5sequential_133/lstm_683/while/lstm_cell_683/Sigmoid_1Sigmoid:sequential_133/lstm_683/while/lstm_cell_683/split:output:1*
T0*'
_output_shapes
:���������027
5sequential_133/lstm_683/while/lstm_cell_683/Sigmoid_1�
/sequential_133/lstm_683/while/lstm_cell_683/mulMul9sequential_133/lstm_683/while/lstm_cell_683/Sigmoid_1:y:0+sequential_133_lstm_683_while_placeholder_3*
T0*'
_output_shapes
:���������021
/sequential_133/lstm_683/while/lstm_cell_683/mul�
0sequential_133/lstm_683/while/lstm_cell_683/ReluRelu:sequential_133/lstm_683/while/lstm_cell_683/split:output:2*
T0*'
_output_shapes
:���������022
0sequential_133/lstm_683/while/lstm_cell_683/Relu�
1sequential_133/lstm_683/while/lstm_cell_683/mul_1Mul7sequential_133/lstm_683/while/lstm_cell_683/Sigmoid:y:0>sequential_133/lstm_683/while/lstm_cell_683/Relu:activations:0*
T0*'
_output_shapes
:���������023
1sequential_133/lstm_683/while/lstm_cell_683/mul_1�
1sequential_133/lstm_683/while/lstm_cell_683/add_1AddV23sequential_133/lstm_683/while/lstm_cell_683/mul:z:05sequential_133/lstm_683/while/lstm_cell_683/mul_1:z:0*
T0*'
_output_shapes
:���������023
1sequential_133/lstm_683/while/lstm_cell_683/add_1�
5sequential_133/lstm_683/while/lstm_cell_683/Sigmoid_2Sigmoid:sequential_133/lstm_683/while/lstm_cell_683/split:output:3*
T0*'
_output_shapes
:���������027
5sequential_133/lstm_683/while/lstm_cell_683/Sigmoid_2�
2sequential_133/lstm_683/while/lstm_cell_683/Relu_1Relu5sequential_133/lstm_683/while/lstm_cell_683/add_1:z:0*
T0*'
_output_shapes
:���������024
2sequential_133/lstm_683/while/lstm_cell_683/Relu_1�
1sequential_133/lstm_683/while/lstm_cell_683/mul_2Mul9sequential_133/lstm_683/while/lstm_cell_683/Sigmoid_2:y:0@sequential_133/lstm_683/while/lstm_cell_683/Relu_1:activations:0*
T0*'
_output_shapes
:���������023
1sequential_133/lstm_683/while/lstm_cell_683/mul_2�
Bsequential_133/lstm_683/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_133_lstm_683_while_placeholder_1)sequential_133_lstm_683_while_placeholder5sequential_133/lstm_683/while/lstm_cell_683/mul_2:z:0*
_output_shapes
: *
element_dtype02D
Bsequential_133/lstm_683/while/TensorArrayV2Write/TensorListSetItem�
#sequential_133/lstm_683/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_133/lstm_683/while/add/y�
!sequential_133/lstm_683/while/addAddV2)sequential_133_lstm_683_while_placeholder,sequential_133/lstm_683/while/add/y:output:0*
T0*
_output_shapes
: 2#
!sequential_133/lstm_683/while/add�
%sequential_133/lstm_683/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_133/lstm_683/while/add_1/y�
#sequential_133/lstm_683/while/add_1AddV2Hsequential_133_lstm_683_while_sequential_133_lstm_683_while_loop_counter.sequential_133/lstm_683/while/add_1/y:output:0*
T0*
_output_shapes
: 2%
#sequential_133/lstm_683/while/add_1�
&sequential_133/lstm_683/while/IdentityIdentity'sequential_133/lstm_683/while/add_1:z:0#^sequential_133/lstm_683/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_133/lstm_683/while/Identity�
(sequential_133/lstm_683/while/Identity_1IdentityNsequential_133_lstm_683_while_sequential_133_lstm_683_while_maximum_iterations#^sequential_133/lstm_683/while/NoOp*
T0*
_output_shapes
: 2*
(sequential_133/lstm_683/while/Identity_1�
(sequential_133/lstm_683/while/Identity_2Identity%sequential_133/lstm_683/while/add:z:0#^sequential_133/lstm_683/while/NoOp*
T0*
_output_shapes
: 2*
(sequential_133/lstm_683/while/Identity_2�
(sequential_133/lstm_683/while/Identity_3IdentityRsequential_133/lstm_683/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_133/lstm_683/while/NoOp*
T0*
_output_shapes
: 2*
(sequential_133/lstm_683/while/Identity_3�
(sequential_133/lstm_683/while/Identity_4Identity5sequential_133/lstm_683/while/lstm_cell_683/mul_2:z:0#^sequential_133/lstm_683/while/NoOp*
T0*'
_output_shapes
:���������02*
(sequential_133/lstm_683/while/Identity_4�
(sequential_133/lstm_683/while/Identity_5Identity5sequential_133/lstm_683/while/lstm_cell_683/add_1:z:0#^sequential_133/lstm_683/while/NoOp*
T0*'
_output_shapes
:���������02*
(sequential_133/lstm_683/while/Identity_5�
"sequential_133/lstm_683/while/NoOpNoOpC^sequential_133/lstm_683/while/lstm_cell_683/BiasAdd/ReadVariableOpB^sequential_133/lstm_683/while/lstm_cell_683/MatMul/ReadVariableOpD^sequential_133/lstm_683/while/lstm_cell_683/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2$
"sequential_133/lstm_683/while/NoOp"Y
&sequential_133_lstm_683_while_identity/sequential_133/lstm_683/while/Identity:output:0"]
(sequential_133_lstm_683_while_identity_11sequential_133/lstm_683/while/Identity_1:output:0"]
(sequential_133_lstm_683_while_identity_21sequential_133/lstm_683/while/Identity_2:output:0"]
(sequential_133_lstm_683_while_identity_31sequential_133/lstm_683/while/Identity_3:output:0"]
(sequential_133_lstm_683_while_identity_41sequential_133/lstm_683/while/Identity_4:output:0"]
(sequential_133_lstm_683_while_identity_51sequential_133/lstm_683/while/Identity_5:output:0"�
Ksequential_133_lstm_683_while_lstm_cell_683_biasadd_readvariableop_resourceMsequential_133_lstm_683_while_lstm_cell_683_biasadd_readvariableop_resource_0"�
Lsequential_133_lstm_683_while_lstm_cell_683_matmul_1_readvariableop_resourceNsequential_133_lstm_683_while_lstm_cell_683_matmul_1_readvariableop_resource_0"�
Jsequential_133_lstm_683_while_lstm_cell_683_matmul_readvariableop_resourceLsequential_133_lstm_683_while_lstm_cell_683_matmul_readvariableop_resource_0"�
Esequential_133_lstm_683_while_sequential_133_lstm_683_strided_slice_1Gsequential_133_lstm_683_while_sequential_133_lstm_683_strided_slice_1_0"�
�sequential_133_lstm_683_while_tensorarrayv2read_tensorlistgetitem_sequential_133_lstm_683_tensorarrayunstack_tensorlistfromtensor�sequential_133_lstm_683_while_tensorarrayv2read_tensorlistgetitem_sequential_133_lstm_683_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������0:���������0: : : : : 2�
Bsequential_133/lstm_683/while/lstm_cell_683/BiasAdd/ReadVariableOpBsequential_133/lstm_683/while/lstm_cell_683/BiasAdd/ReadVariableOp2�
Asequential_133/lstm_683/while/lstm_cell_683/MatMul/ReadVariableOpAsequential_133/lstm_683/while/lstm_cell_683/MatMul/ReadVariableOp2�
Csequential_133/lstm_683/while/lstm_cell_683/MatMul_1/ReadVariableOpCsequential_133/lstm_683/while/lstm_cell_683/MatMul_1/ReadVariableOp: 
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
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
: 
��
�
#__inference__traced_restore_1493174
file_prefix3
!assignvariableop_dense_131_kernel:\/
!assignvariableop_1_dense_131_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_683_lstm_cell_683_kernel:	�M
:assignvariableop_8_lstm_683_lstm_cell_683_recurrent_kernel:	0�=
.assignvariableop_9_lstm_683_lstm_cell_683_bias:	�D
1assignvariableop_10_lstm_684_lstm_cell_684_kernel:	0�N
;assignvariableop_11_lstm_684_lstm_cell_684_recurrent_kernel:	0�>
/assignvariableop_12_lstm_684_lstm_cell_684_bias:	�D
1assignvariableop_13_lstm_685_lstm_cell_685_kernel:	0�N
;assignvariableop_14_lstm_685_lstm_cell_685_recurrent_kernel:	\�>
/assignvariableop_15_lstm_685_lstm_cell_685_bias:	�#
assignvariableop_16_total: #
assignvariableop_17_count: %
assignvariableop_18_total_1: %
assignvariableop_19_count_1: %
assignvariableop_20_total_2: %
assignvariableop_21_count_2: =
+assignvariableop_22_adam_dense_131_kernel_m:\7
)assignvariableop_23_adam_dense_131_bias_m:K
8assignvariableop_24_adam_lstm_683_lstm_cell_683_kernel_m:	�U
Bassignvariableop_25_adam_lstm_683_lstm_cell_683_recurrent_kernel_m:	0�E
6assignvariableop_26_adam_lstm_683_lstm_cell_683_bias_m:	�K
8assignvariableop_27_adam_lstm_684_lstm_cell_684_kernel_m:	0�U
Bassignvariableop_28_adam_lstm_684_lstm_cell_684_recurrent_kernel_m:	0�E
6assignvariableop_29_adam_lstm_684_lstm_cell_684_bias_m:	�K
8assignvariableop_30_adam_lstm_685_lstm_cell_685_kernel_m:	0�U
Bassignvariableop_31_adam_lstm_685_lstm_cell_685_recurrent_kernel_m:	\�E
6assignvariableop_32_adam_lstm_685_lstm_cell_685_bias_m:	�=
+assignvariableop_33_adam_dense_131_kernel_v:\7
)assignvariableop_34_adam_dense_131_bias_v:K
8assignvariableop_35_adam_lstm_683_lstm_cell_683_kernel_v:	�U
Bassignvariableop_36_adam_lstm_683_lstm_cell_683_recurrent_kernel_v:	0�E
6assignvariableop_37_adam_lstm_683_lstm_cell_683_bias_v:	�K
8assignvariableop_38_adam_lstm_684_lstm_cell_684_kernel_v:	0�U
Bassignvariableop_39_adam_lstm_684_lstm_cell_684_recurrent_kernel_v:	0�E
6assignvariableop_40_adam_lstm_684_lstm_cell_684_bias_v:	�K
8assignvariableop_41_adam_lstm_685_lstm_cell_685_kernel_v:	0�U
Bassignvariableop_42_adam_lstm_685_lstm_cell_685_recurrent_kernel_v:	\�E
6assignvariableop_43_adam_lstm_685_lstm_cell_685_bias_v:	�
identity_45��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:-*
dtype0*�
value�B�-B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:-*
dtype0*m
valuedBb-B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::::*;
dtypes1
/2-	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOp!assignvariableop_dense_131_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_131_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_683_lstm_cell_683_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_683_lstm_cell_683_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_683_lstm_cell_683_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_684_lstm_cell_684_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_684_lstm_cell_684_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_684_lstm_cell_684_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_685_lstm_cell_685_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_685_lstm_cell_685_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_685_lstm_cell_685_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOpassignvariableop_16_totalIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17�
AssignVariableOp_17AssignVariableOpassignvariableop_17_countIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18�
AssignVariableOp_18AssignVariableOpassignvariableop_18_total_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19�
AssignVariableOp_19AssignVariableOpassignvariableop_19_count_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20�
AssignVariableOp_20AssignVariableOpassignvariableop_20_total_2Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21�
AssignVariableOp_21AssignVariableOpassignvariableop_21_count_2Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22�
AssignVariableOp_22AssignVariableOp+assignvariableop_22_adam_dense_131_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23�
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_dense_131_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24�
AssignVariableOp_24AssignVariableOp8assignvariableop_24_adam_lstm_683_lstm_cell_683_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25�
AssignVariableOp_25AssignVariableOpBassignvariableop_25_adam_lstm_683_lstm_cell_683_recurrent_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26�
AssignVariableOp_26AssignVariableOp6assignvariableop_26_adam_lstm_683_lstm_cell_683_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27�
AssignVariableOp_27AssignVariableOp8assignvariableop_27_adam_lstm_684_lstm_cell_684_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28�
AssignVariableOp_28AssignVariableOpBassignvariableop_28_adam_lstm_684_lstm_cell_684_recurrent_kernel_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29�
AssignVariableOp_29AssignVariableOp6assignvariableop_29_adam_lstm_684_lstm_cell_684_bias_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30�
AssignVariableOp_30AssignVariableOp8assignvariableop_30_adam_lstm_685_lstm_cell_685_kernel_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31�
AssignVariableOp_31AssignVariableOpBassignvariableop_31_adam_lstm_685_lstm_cell_685_recurrent_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32�
AssignVariableOp_32AssignVariableOp6assignvariableop_32_adam_lstm_685_lstm_cell_685_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33�
AssignVariableOp_33AssignVariableOp+assignvariableop_33_adam_dense_131_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34�
AssignVariableOp_34AssignVariableOp)assignvariableop_34_adam_dense_131_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35�
AssignVariableOp_35AssignVariableOp8assignvariableop_35_adam_lstm_683_lstm_cell_683_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36�
AssignVariableOp_36AssignVariableOpBassignvariableop_36_adam_lstm_683_lstm_cell_683_recurrent_kernel_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37�
AssignVariableOp_37AssignVariableOp6assignvariableop_37_adam_lstm_683_lstm_cell_683_bias_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38�
AssignVariableOp_38AssignVariableOp8assignvariableop_38_adam_lstm_684_lstm_cell_684_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39�
AssignVariableOp_39AssignVariableOpBassignvariableop_39_adam_lstm_684_lstm_cell_684_recurrent_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40�
AssignVariableOp_40AssignVariableOp6assignvariableop_40_adam_lstm_684_lstm_cell_684_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41�
AssignVariableOp_41AssignVariableOp8assignvariableop_41_adam_lstm_685_lstm_cell_685_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42�
AssignVariableOp_42AssignVariableOpBassignvariableop_42_adam_lstm_685_lstm_cell_685_recurrent_kernel_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43�
AssignVariableOp_43AssignVariableOp6assignvariableop_43_adam_lstm_685_lstm_cell_685_bias_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_439
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�
Identity_44Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_44f
Identity_45IdentityIdentity_44:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_45�
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
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
�
�
J__inference_lstm_cell_685_layer_call_and_return_conditional_losses_1492845

inputs
states_0
states_11
matmul_readvariableop_resource:	0�3
 matmul_1_readvariableop_resource:	\�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	0�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	\�*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������\:���������\:���������\:���������\*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������\2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������\2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������\2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������\2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������\2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������\2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������\2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������\2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������\2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������\2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������\2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������\2

Identity_2�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������0:���������\:���������\: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������0
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������\
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������\
"
_user_specified_name
states/1
�
�
while_cond_1491380
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1491380___redundant_placeholder05
1while_while_cond_1491380___redundant_placeholder15
1while_while_cond_1491380___redundant_placeholder25
1while_while_cond_1491380___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������0:���������0: ::::: 
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
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
:
�U
�
E__inference_lstm_683_layer_call_and_return_conditional_losses_1489476

inputs?
,lstm_cell_683_matmul_readvariableop_resource:	�A
.lstm_cell_683_matmul_1_readvariableop_resource:	0�<
-lstm_cell_683_biasadd_readvariableop_resource:	�
identity��$lstm_cell_683/BiasAdd/ReadVariableOp�#lstm_cell_683/MatMul/ReadVariableOp�%lstm_cell_683/MatMul_1/ReadVariableOp�whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :02
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������02
zerosf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :02
zeros_1/packed/1�
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������02	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
#lstm_cell_683/MatMul/ReadVariableOpReadVariableOp,lstm_cell_683_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02%
#lstm_cell_683/MatMul/ReadVariableOp�
lstm_cell_683/MatMulMatMulstrided_slice_2:output:0+lstm_cell_683/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_683/MatMul�
%lstm_cell_683/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_683_matmul_1_readvariableop_resource*
_output_shapes
:	0�*
dtype02'
%lstm_cell_683/MatMul_1/ReadVariableOp�
lstm_cell_683/MatMul_1MatMulzeros:output:0-lstm_cell_683/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_683/MatMul_1�
lstm_cell_683/addAddV2lstm_cell_683/MatMul:product:0 lstm_cell_683/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_cell_683/add�
$lstm_cell_683/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_683_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02&
$lstm_cell_683/BiasAdd/ReadVariableOp�
lstm_cell_683/BiasAddBiasAddlstm_cell_683/add:z:0,lstm_cell_683/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_683/BiasAdd�
lstm_cell_683/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_683/split/split_dim�
lstm_cell_683/splitSplit&lstm_cell_683/split/split_dim:output:0lstm_cell_683/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_split2
lstm_cell_683/split�
lstm_cell_683/SigmoidSigmoidlstm_cell_683/split:output:0*
T0*'
_output_shapes
:���������02
lstm_cell_683/Sigmoid�
lstm_cell_683/Sigmoid_1Sigmoidlstm_cell_683/split:output:1*
T0*'
_output_shapes
:���������02
lstm_cell_683/Sigmoid_1�
lstm_cell_683/mulMullstm_cell_683/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������02
lstm_cell_683/mul�
lstm_cell_683/ReluRelulstm_cell_683/split:output:2*
T0*'
_output_shapes
:���������02
lstm_cell_683/Relu�
lstm_cell_683/mul_1Mullstm_cell_683/Sigmoid:y:0 lstm_cell_683/Relu:activations:0*
T0*'
_output_shapes
:���������02
lstm_cell_683/mul_1�
lstm_cell_683/add_1AddV2lstm_cell_683/mul:z:0lstm_cell_683/mul_1:z:0*
T0*'
_output_shapes
:���������02
lstm_cell_683/add_1�
lstm_cell_683/Sigmoid_2Sigmoidlstm_cell_683/split:output:3*
T0*'
_output_shapes
:���������02
lstm_cell_683/Sigmoid_2
lstm_cell_683/Relu_1Relulstm_cell_683/add_1:z:0*
T0*'
_output_shapes
:���������02
lstm_cell_683/Relu_1�
lstm_cell_683/mul_2Mullstm_cell_683/Sigmoid_2:y:0"lstm_cell_683/Relu_1:activations:0*
T0*'
_output_shapes
:���������02
lstm_cell_683/mul_2�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_683_matmul_readvariableop_resource.lstm_cell_683_matmul_1_readvariableop_resource-lstm_cell_683_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������0:���������0: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1489392*
condR
while_cond_1489391*K
output_shapes:
8: : : : :���������0:���������0: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������0*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������0*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������02
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimen
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������02

Identity�
NoOpNoOp%^lstm_cell_683/BiasAdd/ReadVariableOp$^lstm_cell_683/MatMul/ReadVariableOp&^lstm_cell_683/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_683/BiasAdd/ReadVariableOp$lstm_cell_683/BiasAdd/ReadVariableOp2J
#lstm_cell_683/MatMul/ReadVariableOp#lstm_cell_683/MatMul/ReadVariableOp2N
%lstm_cell_683/MatMul_1/ReadVariableOp%lstm_cell_683/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�?
�
while_body_1491167
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_683_matmul_readvariableop_resource_0:	�I
6while_lstm_cell_683_matmul_1_readvariableop_resource_0:	0�D
5while_lstm_cell_683_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_683_matmul_readvariableop_resource:	�G
4while_lstm_cell_683_matmul_1_readvariableop_resource:	0�B
3while_lstm_cell_683_biasadd_readvariableop_resource:	���*while/lstm_cell_683/BiasAdd/ReadVariableOp�)while/lstm_cell_683/MatMul/ReadVariableOp�+while/lstm_cell_683/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
)while/lstm_cell_683/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_683_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype02+
)while/lstm_cell_683/MatMul/ReadVariableOp�
while/lstm_cell_683/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_683/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_683/MatMul�
+while/lstm_cell_683/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_683_matmul_1_readvariableop_resource_0*
_output_shapes
:	0�*
dtype02-
+while/lstm_cell_683/MatMul_1/ReadVariableOp�
while/lstm_cell_683/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_683/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_683/MatMul_1�
while/lstm_cell_683/addAddV2$while/lstm_cell_683/MatMul:product:0&while/lstm_cell_683/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_683/add�
*while/lstm_cell_683/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_683_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02,
*while/lstm_cell_683/BiasAdd/ReadVariableOp�
while/lstm_cell_683/BiasAddBiasAddwhile/lstm_cell_683/add:z:02while/lstm_cell_683/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_683/BiasAdd�
#while/lstm_cell_683/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_683/split/split_dim�
while/lstm_cell_683/splitSplit,while/lstm_cell_683/split/split_dim:output:0$while/lstm_cell_683/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_split2
while/lstm_cell_683/split�
while/lstm_cell_683/SigmoidSigmoid"while/lstm_cell_683/split:output:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_683/Sigmoid�
while/lstm_cell_683/Sigmoid_1Sigmoid"while/lstm_cell_683/split:output:1*
T0*'
_output_shapes
:���������02
while/lstm_cell_683/Sigmoid_1�
while/lstm_cell_683/mulMul!while/lstm_cell_683/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������02
while/lstm_cell_683/mul�
while/lstm_cell_683/ReluRelu"while/lstm_cell_683/split:output:2*
T0*'
_output_shapes
:���������02
while/lstm_cell_683/Relu�
while/lstm_cell_683/mul_1Mulwhile/lstm_cell_683/Sigmoid:y:0&while/lstm_cell_683/Relu:activations:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_683/mul_1�
while/lstm_cell_683/add_1AddV2while/lstm_cell_683/mul:z:0while/lstm_cell_683/mul_1:z:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_683/add_1�
while/lstm_cell_683/Sigmoid_2Sigmoid"while/lstm_cell_683/split:output:3*
T0*'
_output_shapes
:���������02
while/lstm_cell_683/Sigmoid_2�
while/lstm_cell_683/Relu_1Reluwhile/lstm_cell_683/add_1:z:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_683/Relu_1�
while/lstm_cell_683/mul_2Mul!while/lstm_cell_683/Sigmoid_2:y:0(while/lstm_cell_683/Relu_1:activations:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_683/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_683/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_683/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������02
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_683/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������02
while/Identity_5�

while/NoOpNoOp+^while/lstm_cell_683/BiasAdd/ReadVariableOp*^while/lstm_cell_683/MatMul/ReadVariableOp,^while/lstm_cell_683/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_683_biasadd_readvariableop_resource5while_lstm_cell_683_biasadd_readvariableop_resource_0"n
4while_lstm_cell_683_matmul_1_readvariableop_resource6while_lstm_cell_683_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_683_matmul_readvariableop_resource4while_lstm_cell_683_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������0:���������0: : : : : 2X
*while/lstm_cell_683/BiasAdd/ReadVariableOp*while/lstm_cell_683/BiasAdd/ReadVariableOp2V
)while/lstm_cell_683/MatMul/ReadVariableOp)while/lstm_cell_683/MatMul/ReadVariableOp2Z
+while/lstm_cell_683/MatMul_1/ReadVariableOp+while/lstm_cell_683/MatMul_1/ReadVariableOp: 
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
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
: 
�

�
F__inference_dense_131_layer_call_and_return_conditional_losses_1492583

inputs0
matmul_readvariableop_resource:\-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:\*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������\: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������\
 
_user_specified_nameinputs
�V
�
E__inference_lstm_684_layer_call_and_return_conditional_losses_1491608
inputs_0?
,lstm_cell_684_matmul_readvariableop_resource:	0�A
.lstm_cell_684_matmul_1_readvariableop_resource:	0�<
-lstm_cell_684_biasadd_readvariableop_resource:	�
identity��$lstm_cell_684/BiasAdd/ReadVariableOp�#lstm_cell_684/MatMul/ReadVariableOp�%lstm_cell_684/MatMul_1/ReadVariableOp�whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :02
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������02
zerosf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :02
zeros_1/packed/1�
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������02	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������02
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������0*
shrink_axis_mask2
strided_slice_2�
#lstm_cell_684/MatMul/ReadVariableOpReadVariableOp,lstm_cell_684_matmul_readvariableop_resource*
_output_shapes
:	0�*
dtype02%
#lstm_cell_684/MatMul/ReadVariableOp�
lstm_cell_684/MatMulMatMulstrided_slice_2:output:0+lstm_cell_684/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_684/MatMul�
%lstm_cell_684/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_684_matmul_1_readvariableop_resource*
_output_shapes
:	0�*
dtype02'
%lstm_cell_684/MatMul_1/ReadVariableOp�
lstm_cell_684/MatMul_1MatMulzeros:output:0-lstm_cell_684/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_684/MatMul_1�
lstm_cell_684/addAddV2lstm_cell_684/MatMul:product:0 lstm_cell_684/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_cell_684/add�
$lstm_cell_684/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_684_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02&
$lstm_cell_684/BiasAdd/ReadVariableOp�
lstm_cell_684/BiasAddBiasAddlstm_cell_684/add:z:0,lstm_cell_684/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_684/BiasAdd�
lstm_cell_684/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_684/split/split_dim�
lstm_cell_684/splitSplit&lstm_cell_684/split/split_dim:output:0lstm_cell_684/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_split2
lstm_cell_684/split�
lstm_cell_684/SigmoidSigmoidlstm_cell_684/split:output:0*
T0*'
_output_shapes
:���������02
lstm_cell_684/Sigmoid�
lstm_cell_684/Sigmoid_1Sigmoidlstm_cell_684/split:output:1*
T0*'
_output_shapes
:���������02
lstm_cell_684/Sigmoid_1�
lstm_cell_684/mulMullstm_cell_684/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������02
lstm_cell_684/mul�
lstm_cell_684/ReluRelulstm_cell_684/split:output:2*
T0*'
_output_shapes
:���������02
lstm_cell_684/Relu�
lstm_cell_684/mul_1Mullstm_cell_684/Sigmoid:y:0 lstm_cell_684/Relu:activations:0*
T0*'
_output_shapes
:���������02
lstm_cell_684/mul_1�
lstm_cell_684/add_1AddV2lstm_cell_684/mul:z:0lstm_cell_684/mul_1:z:0*
T0*'
_output_shapes
:���������02
lstm_cell_684/add_1�
lstm_cell_684/Sigmoid_2Sigmoidlstm_cell_684/split:output:3*
T0*'
_output_shapes
:���������02
lstm_cell_684/Sigmoid_2
lstm_cell_684/Relu_1Relulstm_cell_684/add_1:z:0*
T0*'
_output_shapes
:���������02
lstm_cell_684/Relu_1�
lstm_cell_684/mul_2Mullstm_cell_684/Sigmoid_2:y:0"lstm_cell_684/Relu_1:activations:0*
T0*'
_output_shapes
:���������02
lstm_cell_684/mul_2�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_684_matmul_readvariableop_resource.lstm_cell_684_matmul_1_readvariableop_resource-lstm_cell_684_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������0:���������0: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1491524*
condR
while_cond_1491523*K
output_shapes:
8: : : : :���������0:���������0: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������0*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������0*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������02
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimew
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������02

Identity�
NoOpNoOp%^lstm_cell_684/BiasAdd/ReadVariableOp$^lstm_cell_684/MatMul/ReadVariableOp&^lstm_cell_684/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������0: : : 2L
$lstm_cell_684/BiasAdd/ReadVariableOp$lstm_cell_684/BiasAdd/ReadVariableOp2J
#lstm_cell_684/MatMul/ReadVariableOp#lstm_cell_684/MatMul/ReadVariableOp2N
%lstm_cell_684/MatMul_1/ReadVariableOp%lstm_cell_684/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������0
"
_user_specified_name
inputs/0
�
�
*__inference_lstm_683_layer_call_fn_1490679

inputs
unknown:	�
	unknown_0:	0�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������0*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_683_layer_call_and_return_conditional_losses_14894762
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������02

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
J__inference_lstm_cell_684_layer_call_and_return_conditional_losses_1492779

inputs
states_0
states_11
matmul_readvariableop_resource:	0�3
 matmul_1_readvariableop_resource:	0�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	0�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	0�*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������02	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������02
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������02
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������02
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������02
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������02
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������02
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������02
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������02
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������02

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������02

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������02

Identity_2�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������0:���������0:���������0: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������0
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������0
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������0
"
_user_specified_name
states/1
�
f
-__inference_dropout_682_layer_call_fn_1491904

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������0* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_682_layer_call_and_return_conditional_losses_14891292
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������02

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������022
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������0
 
_user_specified_nameinputs
�

�
lstm_685_while_cond_1490536.
*lstm_685_while_lstm_685_while_loop_counter4
0lstm_685_while_lstm_685_while_maximum_iterations
lstm_685_while_placeholder 
lstm_685_while_placeholder_1 
lstm_685_while_placeholder_2 
lstm_685_while_placeholder_30
,lstm_685_while_less_lstm_685_strided_slice_1G
Clstm_685_while_lstm_685_while_cond_1490536___redundant_placeholder0G
Clstm_685_while_lstm_685_while_cond_1490536___redundant_placeholder1G
Clstm_685_while_lstm_685_while_cond_1490536___redundant_placeholder2G
Clstm_685_while_lstm_685_while_cond_1490536___redundant_placeholder3
lstm_685_while_identity
�
lstm_685/while/LessLesslstm_685_while_placeholder,lstm_685_while_less_lstm_685_strided_slice_1*
T0*
_output_shapes
: 2
lstm_685/while/Lessx
lstm_685/while/IdentityIdentitylstm_685/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_685/while/Identity";
lstm_685_while_identity lstm_685/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������\:���������\: ::::: 
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
:���������\:-)
'
_output_shapes
:���������\:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_1488075
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1488075___redundant_placeholder05
1while_while_cond_1488075___redundant_placeholder15
1while_while_cond_1488075___redundant_placeholder25
1while_while_cond_1488075___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������\:���������\: ::::: 
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
:���������\:-)
'
_output_shapes
:���������\:

_output_shapes
: :

_output_shapes
:
�?
�
while_body_1488770
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_685_matmul_readvariableop_resource_0:	0�I
6while_lstm_cell_685_matmul_1_readvariableop_resource_0:	\�D
5while_lstm_cell_685_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_685_matmul_readvariableop_resource:	0�G
4while_lstm_cell_685_matmul_1_readvariableop_resource:	\�B
3while_lstm_cell_685_biasadd_readvariableop_resource:	���*while/lstm_cell_685/BiasAdd/ReadVariableOp�)while/lstm_cell_685/MatMul/ReadVariableOp�+while/lstm_cell_685/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������0*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
)while/lstm_cell_685/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_685_matmul_readvariableop_resource_0*
_output_shapes
:	0�*
dtype02+
)while/lstm_cell_685/MatMul/ReadVariableOp�
while/lstm_cell_685/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_685/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_685/MatMul�
+while/lstm_cell_685/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_685_matmul_1_readvariableop_resource_0*
_output_shapes
:	\�*
dtype02-
+while/lstm_cell_685/MatMul_1/ReadVariableOp�
while/lstm_cell_685/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_685/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_685/MatMul_1�
while/lstm_cell_685/addAddV2$while/lstm_cell_685/MatMul:product:0&while/lstm_cell_685/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_685/add�
*while/lstm_cell_685/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_685_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02,
*while/lstm_cell_685/BiasAdd/ReadVariableOp�
while/lstm_cell_685/BiasAddBiasAddwhile/lstm_cell_685/add:z:02while/lstm_cell_685/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_685/BiasAdd�
#while/lstm_cell_685/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_685/split/split_dim�
while/lstm_cell_685/splitSplit,while/lstm_cell_685/split/split_dim:output:0$while/lstm_cell_685/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������\:���������\:���������\:���������\*
	num_split2
while/lstm_cell_685/split�
while/lstm_cell_685/SigmoidSigmoid"while/lstm_cell_685/split:output:0*
T0*'
_output_shapes
:���������\2
while/lstm_cell_685/Sigmoid�
while/lstm_cell_685/Sigmoid_1Sigmoid"while/lstm_cell_685/split:output:1*
T0*'
_output_shapes
:���������\2
while/lstm_cell_685/Sigmoid_1�
while/lstm_cell_685/mulMul!while/lstm_cell_685/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������\2
while/lstm_cell_685/mul�
while/lstm_cell_685/ReluRelu"while/lstm_cell_685/split:output:2*
T0*'
_output_shapes
:���������\2
while/lstm_cell_685/Relu�
while/lstm_cell_685/mul_1Mulwhile/lstm_cell_685/Sigmoid:y:0&while/lstm_cell_685/Relu:activations:0*
T0*'
_output_shapes
:���������\2
while/lstm_cell_685/mul_1�
while/lstm_cell_685/add_1AddV2while/lstm_cell_685/mul:z:0while/lstm_cell_685/mul_1:z:0*
T0*'
_output_shapes
:���������\2
while/lstm_cell_685/add_1�
while/lstm_cell_685/Sigmoid_2Sigmoid"while/lstm_cell_685/split:output:3*
T0*'
_output_shapes
:���������\2
while/lstm_cell_685/Sigmoid_2�
while/lstm_cell_685/Relu_1Reluwhile/lstm_cell_685/add_1:z:0*
T0*'
_output_shapes
:���������\2
while/lstm_cell_685/Relu_1�
while/lstm_cell_685/mul_2Mul!while/lstm_cell_685/Sigmoid_2:y:0(while/lstm_cell_685/Relu_1:activations:0*
T0*'
_output_shapes
:���������\2
while/lstm_cell_685/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_685/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_685/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������\2
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_685/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������\2
while/Identity_5�

while/NoOpNoOp+^while/lstm_cell_685/BiasAdd/ReadVariableOp*^while/lstm_cell_685/MatMul/ReadVariableOp,^while/lstm_cell_685/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_685_biasadd_readvariableop_resource5while_lstm_cell_685_biasadd_readvariableop_resource_0"n
4while_lstm_cell_685_matmul_1_readvariableop_resource6while_lstm_cell_685_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_685_matmul_readvariableop_resource4while_lstm_cell_685_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������\:���������\: : : : : 2X
*while/lstm_cell_685/BiasAdd/ReadVariableOp*while/lstm_cell_685/BiasAdd/ReadVariableOp2V
)while/lstm_cell_685/MatMul/ReadVariableOp)while/lstm_cell_685/MatMul/ReadVariableOp2Z
+while/lstm_cell_685/MatMul_1/ReadVariableOp+while/lstm_cell_685/MatMul_1/ReadVariableOp: 
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
:���������\:-)
'
_output_shapes
:���������\:

_output_shapes
: :

_output_shapes
: 
�
g
H__inference_dropout_682_layer_call_and_return_conditional_losses_1489129

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�5�?2
dropout/Constw
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:���������02
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:���������0*
dtype0*

seed*2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *FN�>2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:���������02
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:���������02
dropout/Cast~
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:���������02
dropout/Mul_1i
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:���������02

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������0:S O
+
_output_shapes
:���������0
 
_user_specified_nameinputs
�
f
H__inference_dropout_682_layer_call_and_return_conditional_losses_1488710

inputs

identity_1^
IdentityIdentityinputs*
T0*+
_output_shapes
:���������02

Identitym

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:���������02

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������0:S O
+
_output_shapes
:���������0
 
_user_specified_nameinputs
�U
�
E__inference_lstm_683_layer_call_and_return_conditional_losses_1488540

inputs?
,lstm_cell_683_matmul_readvariableop_resource:	�A
.lstm_cell_683_matmul_1_readvariableop_resource:	0�<
-lstm_cell_683_biasadd_readvariableop_resource:	�
identity��$lstm_cell_683/BiasAdd/ReadVariableOp�#lstm_cell_683/MatMul/ReadVariableOp�%lstm_cell_683/MatMul_1/ReadVariableOp�whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :02
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������02
zerosf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :02
zeros_1/packed/1�
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������02	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
#lstm_cell_683/MatMul/ReadVariableOpReadVariableOp,lstm_cell_683_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02%
#lstm_cell_683/MatMul/ReadVariableOp�
lstm_cell_683/MatMulMatMulstrided_slice_2:output:0+lstm_cell_683/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_683/MatMul�
%lstm_cell_683/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_683_matmul_1_readvariableop_resource*
_output_shapes
:	0�*
dtype02'
%lstm_cell_683/MatMul_1/ReadVariableOp�
lstm_cell_683/MatMul_1MatMulzeros:output:0-lstm_cell_683/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_683/MatMul_1�
lstm_cell_683/addAddV2lstm_cell_683/MatMul:product:0 lstm_cell_683/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_cell_683/add�
$lstm_cell_683/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_683_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02&
$lstm_cell_683/BiasAdd/ReadVariableOp�
lstm_cell_683/BiasAddBiasAddlstm_cell_683/add:z:0,lstm_cell_683/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_683/BiasAdd�
lstm_cell_683/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_683/split/split_dim�
lstm_cell_683/splitSplit&lstm_cell_683/split/split_dim:output:0lstm_cell_683/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_split2
lstm_cell_683/split�
lstm_cell_683/SigmoidSigmoidlstm_cell_683/split:output:0*
T0*'
_output_shapes
:���������02
lstm_cell_683/Sigmoid�
lstm_cell_683/Sigmoid_1Sigmoidlstm_cell_683/split:output:1*
T0*'
_output_shapes
:���������02
lstm_cell_683/Sigmoid_1�
lstm_cell_683/mulMullstm_cell_683/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������02
lstm_cell_683/mul�
lstm_cell_683/ReluRelulstm_cell_683/split:output:2*
T0*'
_output_shapes
:���������02
lstm_cell_683/Relu�
lstm_cell_683/mul_1Mullstm_cell_683/Sigmoid:y:0 lstm_cell_683/Relu:activations:0*
T0*'
_output_shapes
:���������02
lstm_cell_683/mul_1�
lstm_cell_683/add_1AddV2lstm_cell_683/mul:z:0lstm_cell_683/mul_1:z:0*
T0*'
_output_shapes
:���������02
lstm_cell_683/add_1�
lstm_cell_683/Sigmoid_2Sigmoidlstm_cell_683/split:output:3*
T0*'
_output_shapes
:���������02
lstm_cell_683/Sigmoid_2
lstm_cell_683/Relu_1Relulstm_cell_683/add_1:z:0*
T0*'
_output_shapes
:���������02
lstm_cell_683/Relu_1�
lstm_cell_683/mul_2Mullstm_cell_683/Sigmoid_2:y:0"lstm_cell_683/Relu_1:activations:0*
T0*'
_output_shapes
:���������02
lstm_cell_683/mul_2�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_683_matmul_readvariableop_resource.lstm_cell_683_matmul_1_readvariableop_resource-lstm_cell_683_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������0:���������0: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1488456*
condR
while_cond_1488455*K
output_shapes:
8: : : : :���������0:���������0: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������0*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������0*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������02
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimen
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������02

Identity�
NoOpNoOp%^lstm_cell_683/BiasAdd/ReadVariableOp$^lstm_cell_683/MatMul/ReadVariableOp&^lstm_cell_683/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2L
$lstm_cell_683/BiasAdd/ReadVariableOp$lstm_cell_683/BiasAdd/ReadVariableOp2J
#lstm_cell_683/MatMul/ReadVariableOp#lstm_cell_683/MatMul/ReadVariableOp2N
%lstm_cell_683/MatMul_1/ReadVariableOp%lstm_cell_683/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�?
�
while_body_1491381
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_684_matmul_readvariableop_resource_0:	0�I
6while_lstm_cell_684_matmul_1_readvariableop_resource_0:	0�D
5while_lstm_cell_684_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_684_matmul_readvariableop_resource:	0�G
4while_lstm_cell_684_matmul_1_readvariableop_resource:	0�B
3while_lstm_cell_684_biasadd_readvariableop_resource:	���*while/lstm_cell_684/BiasAdd/ReadVariableOp�)while/lstm_cell_684/MatMul/ReadVariableOp�+while/lstm_cell_684/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������0*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
)while/lstm_cell_684/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_684_matmul_readvariableop_resource_0*
_output_shapes
:	0�*
dtype02+
)while/lstm_cell_684/MatMul/ReadVariableOp�
while/lstm_cell_684/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_684/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_684/MatMul�
+while/lstm_cell_684/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_684_matmul_1_readvariableop_resource_0*
_output_shapes
:	0�*
dtype02-
+while/lstm_cell_684/MatMul_1/ReadVariableOp�
while/lstm_cell_684/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_684/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_684/MatMul_1�
while/lstm_cell_684/addAddV2$while/lstm_cell_684/MatMul:product:0&while/lstm_cell_684/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_684/add�
*while/lstm_cell_684/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_684_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02,
*while/lstm_cell_684/BiasAdd/ReadVariableOp�
while/lstm_cell_684/BiasAddBiasAddwhile/lstm_cell_684/add:z:02while/lstm_cell_684/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_684/BiasAdd�
#while/lstm_cell_684/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_684/split/split_dim�
while/lstm_cell_684/splitSplit,while/lstm_cell_684/split/split_dim:output:0$while/lstm_cell_684/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_split2
while/lstm_cell_684/split�
while/lstm_cell_684/SigmoidSigmoid"while/lstm_cell_684/split:output:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_684/Sigmoid�
while/lstm_cell_684/Sigmoid_1Sigmoid"while/lstm_cell_684/split:output:1*
T0*'
_output_shapes
:���������02
while/lstm_cell_684/Sigmoid_1�
while/lstm_cell_684/mulMul!while/lstm_cell_684/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������02
while/lstm_cell_684/mul�
while/lstm_cell_684/ReluRelu"while/lstm_cell_684/split:output:2*
T0*'
_output_shapes
:���������02
while/lstm_cell_684/Relu�
while/lstm_cell_684/mul_1Mulwhile/lstm_cell_684/Sigmoid:y:0&while/lstm_cell_684/Relu:activations:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_684/mul_1�
while/lstm_cell_684/add_1AddV2while/lstm_cell_684/mul:z:0while/lstm_cell_684/mul_1:z:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_684/add_1�
while/lstm_cell_684/Sigmoid_2Sigmoid"while/lstm_cell_684/split:output:3*
T0*'
_output_shapes
:���������02
while/lstm_cell_684/Sigmoid_2�
while/lstm_cell_684/Relu_1Reluwhile/lstm_cell_684/add_1:z:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_684/Relu_1�
while/lstm_cell_684/mul_2Mul!while/lstm_cell_684/Sigmoid_2:y:0(while/lstm_cell_684/Relu_1:activations:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_684/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_684/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_684/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������02
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_684/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������02
while/Identity_5�

while/NoOpNoOp+^while/lstm_cell_684/BiasAdd/ReadVariableOp*^while/lstm_cell_684/MatMul/ReadVariableOp,^while/lstm_cell_684/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_684_biasadd_readvariableop_resource5while_lstm_cell_684_biasadd_readvariableop_resource_0"n
4while_lstm_cell_684_matmul_1_readvariableop_resource6while_lstm_cell_684_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_684_matmul_readvariableop_resource4while_lstm_cell_684_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������0:���������0: : : : : 2X
*while/lstm_cell_684/BiasAdd/ReadVariableOp*while/lstm_cell_684/BiasAdd/ReadVariableOp2V
)while/lstm_cell_684/MatMul/ReadVariableOp)while/lstm_cell_684/MatMul/ReadVariableOp2Z
+while/lstm_cell_684/MatMul_1/ReadVariableOp+while/lstm_cell_684/MatMul_1/ReadVariableOp: 
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
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
: 
�
�
J__inference_lstm_cell_685_layer_call_and_return_conditional_losses_1488006

inputs

states
states_11
matmul_readvariableop_resource:	0�3
 matmul_1_readvariableop_resource:	\�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	0�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	\�*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������\:���������\:���������\:���������\*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������\2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������\2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������\2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������\2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������\2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������\2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������\2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������\2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������\2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������\2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������\2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������\2

Identity_2�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������0:���������\:���������\: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������0
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������\
 
_user_specified_namestates:OK
'
_output_shapes
:���������\
 
_user_specified_namestates
�
�
/__inference_lstm_cell_683_layer_call_fn_1492617

inputs
states_0
states_1
unknown:	�
	unknown_0:	0�
	unknown_1:	�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������0:���������0:���������0*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_683_layer_call_and_return_conditional_losses_14868102
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������02

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������02

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������02

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������0:���������0: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������0
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������0
"
_user_specified_name
states/1
�
�
0__inference_sequential_133_layer_call_fn_1489727

inputs
unknown:	�
	unknown_0:	0�
	unknown_1:	�
	unknown_2:	0�
	unknown_3:	0�
	unknown_4:	�
	unknown_5:	0�
	unknown_6:	\�
	unknown_7:	�
	unknown_8:\
	unknown_9:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_sequential_133_layer_call_and_return_conditional_losses_14888862
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
*__inference_lstm_684_layer_call_fn_1491322

inputs
unknown:	0�
	unknown_0:	0�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������0*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_684_layer_call_and_return_conditional_losses_14892882
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������02

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������0: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������0
 
_user_specified_nameinputs
�
�
while_cond_1492452
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1492452___redundant_placeholder05
1while_while_cond_1492452___redundant_placeholder15
1while_while_cond_1492452___redundant_placeholder25
1while_while_cond_1492452___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������\:���������\: ::::: 
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
:���������\:-)
'
_output_shapes
:���������\:

_output_shapes
: :

_output_shapes
:
�
�
J__inference_lstm_cell_684_layer_call_and_return_conditional_losses_1487262

inputs

states
states_11
matmul_readvariableop_resource:	0�3
 matmul_1_readvariableop_resource:	0�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	0�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	0�*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������02	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������02
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������02
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������02
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������02
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������02
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������02
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������02
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������02
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������02

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������02

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������02

Identity_2�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������0:���������0:���������0: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������0
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������0
 
_user_specified_namestates:OK
'
_output_shapes
:���������0
 
_user_specified_namestates
�
�
J__inference_lstm_cell_685_layer_call_and_return_conditional_losses_1492877

inputs
states_0
states_11
matmul_readvariableop_resource:	0�3
 matmul_1_readvariableop_resource:	\�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	0�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	\�*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������\:���������\:���������\:���������\*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������\2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������\2
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������\2
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������\2
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������\2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������\2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������\2
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������\2
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������\2
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������\2

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������\2

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������\2

Identity_2�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������0:���������\:���������\: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������0
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������\
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������\
"
_user_specified_name
states/1
�b
�
*sequential_133_lstm_685_while_body_1486506L
Hsequential_133_lstm_685_while_sequential_133_lstm_685_while_loop_counterR
Nsequential_133_lstm_685_while_sequential_133_lstm_685_while_maximum_iterations-
)sequential_133_lstm_685_while_placeholder/
+sequential_133_lstm_685_while_placeholder_1/
+sequential_133_lstm_685_while_placeholder_2/
+sequential_133_lstm_685_while_placeholder_3K
Gsequential_133_lstm_685_while_sequential_133_lstm_685_strided_slice_1_0�
�sequential_133_lstm_685_while_tensorarrayv2read_tensorlistgetitem_sequential_133_lstm_685_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_133_lstm_685_while_lstm_cell_685_matmul_readvariableop_resource_0:	0�a
Nsequential_133_lstm_685_while_lstm_cell_685_matmul_1_readvariableop_resource_0:	\�\
Msequential_133_lstm_685_while_lstm_cell_685_biasadd_readvariableop_resource_0:	�*
&sequential_133_lstm_685_while_identity,
(sequential_133_lstm_685_while_identity_1,
(sequential_133_lstm_685_while_identity_2,
(sequential_133_lstm_685_while_identity_3,
(sequential_133_lstm_685_while_identity_4,
(sequential_133_lstm_685_while_identity_5I
Esequential_133_lstm_685_while_sequential_133_lstm_685_strided_slice_1�
�sequential_133_lstm_685_while_tensorarrayv2read_tensorlistgetitem_sequential_133_lstm_685_tensorarrayunstack_tensorlistfromtensor]
Jsequential_133_lstm_685_while_lstm_cell_685_matmul_readvariableop_resource:	0�_
Lsequential_133_lstm_685_while_lstm_cell_685_matmul_1_readvariableop_resource:	\�Z
Ksequential_133_lstm_685_while_lstm_cell_685_biasadd_readvariableop_resource:	���Bsequential_133/lstm_685/while/lstm_cell_685/BiasAdd/ReadVariableOp�Asequential_133/lstm_685/while/lstm_cell_685/MatMul/ReadVariableOp�Csequential_133/lstm_685/while/lstm_cell_685/MatMul_1/ReadVariableOp�
Osequential_133/lstm_685/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   2Q
Osequential_133/lstm_685/while/TensorArrayV2Read/TensorListGetItem/element_shape�
Asequential_133/lstm_685/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_133_lstm_685_while_tensorarrayv2read_tensorlistgetitem_sequential_133_lstm_685_tensorarrayunstack_tensorlistfromtensor_0)sequential_133_lstm_685_while_placeholderXsequential_133/lstm_685/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������0*
element_dtype02C
Asequential_133/lstm_685/while/TensorArrayV2Read/TensorListGetItem�
Asequential_133/lstm_685/while/lstm_cell_685/MatMul/ReadVariableOpReadVariableOpLsequential_133_lstm_685_while_lstm_cell_685_matmul_readvariableop_resource_0*
_output_shapes
:	0�*
dtype02C
Asequential_133/lstm_685/while/lstm_cell_685/MatMul/ReadVariableOp�
2sequential_133/lstm_685/while/lstm_cell_685/MatMulMatMulHsequential_133/lstm_685/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_133/lstm_685/while/lstm_cell_685/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������24
2sequential_133/lstm_685/while/lstm_cell_685/MatMul�
Csequential_133/lstm_685/while/lstm_cell_685/MatMul_1/ReadVariableOpReadVariableOpNsequential_133_lstm_685_while_lstm_cell_685_matmul_1_readvariableop_resource_0*
_output_shapes
:	\�*
dtype02E
Csequential_133/lstm_685/while/lstm_cell_685/MatMul_1/ReadVariableOp�
4sequential_133/lstm_685/while/lstm_cell_685/MatMul_1MatMul+sequential_133_lstm_685_while_placeholder_2Ksequential_133/lstm_685/while/lstm_cell_685/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������26
4sequential_133/lstm_685/while/lstm_cell_685/MatMul_1�
/sequential_133/lstm_685/while/lstm_cell_685/addAddV2<sequential_133/lstm_685/while/lstm_cell_685/MatMul:product:0>sequential_133/lstm_685/while/lstm_cell_685/MatMul_1:product:0*
T0*(
_output_shapes
:����������21
/sequential_133/lstm_685/while/lstm_cell_685/add�
Bsequential_133/lstm_685/while/lstm_cell_685/BiasAdd/ReadVariableOpReadVariableOpMsequential_133_lstm_685_while_lstm_cell_685_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02D
Bsequential_133/lstm_685/while/lstm_cell_685/BiasAdd/ReadVariableOp�
3sequential_133/lstm_685/while/lstm_cell_685/BiasAddBiasAdd3sequential_133/lstm_685/while/lstm_cell_685/add:z:0Jsequential_133/lstm_685/while/lstm_cell_685/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������25
3sequential_133/lstm_685/while/lstm_cell_685/BiasAdd�
;sequential_133/lstm_685/while/lstm_cell_685/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2=
;sequential_133/lstm_685/while/lstm_cell_685/split/split_dim�
1sequential_133/lstm_685/while/lstm_cell_685/splitSplitDsequential_133/lstm_685/while/lstm_cell_685/split/split_dim:output:0<sequential_133/lstm_685/while/lstm_cell_685/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������\:���������\:���������\:���������\*
	num_split23
1sequential_133/lstm_685/while/lstm_cell_685/split�
3sequential_133/lstm_685/while/lstm_cell_685/SigmoidSigmoid:sequential_133/lstm_685/while/lstm_cell_685/split:output:0*
T0*'
_output_shapes
:���������\25
3sequential_133/lstm_685/while/lstm_cell_685/Sigmoid�
5sequential_133/lstm_685/while/lstm_cell_685/Sigmoid_1Sigmoid:sequential_133/lstm_685/while/lstm_cell_685/split:output:1*
T0*'
_output_shapes
:���������\27
5sequential_133/lstm_685/while/lstm_cell_685/Sigmoid_1�
/sequential_133/lstm_685/while/lstm_cell_685/mulMul9sequential_133/lstm_685/while/lstm_cell_685/Sigmoid_1:y:0+sequential_133_lstm_685_while_placeholder_3*
T0*'
_output_shapes
:���������\21
/sequential_133/lstm_685/while/lstm_cell_685/mul�
0sequential_133/lstm_685/while/lstm_cell_685/ReluRelu:sequential_133/lstm_685/while/lstm_cell_685/split:output:2*
T0*'
_output_shapes
:���������\22
0sequential_133/lstm_685/while/lstm_cell_685/Relu�
1sequential_133/lstm_685/while/lstm_cell_685/mul_1Mul7sequential_133/lstm_685/while/lstm_cell_685/Sigmoid:y:0>sequential_133/lstm_685/while/lstm_cell_685/Relu:activations:0*
T0*'
_output_shapes
:���������\23
1sequential_133/lstm_685/while/lstm_cell_685/mul_1�
1sequential_133/lstm_685/while/lstm_cell_685/add_1AddV23sequential_133/lstm_685/while/lstm_cell_685/mul:z:05sequential_133/lstm_685/while/lstm_cell_685/mul_1:z:0*
T0*'
_output_shapes
:���������\23
1sequential_133/lstm_685/while/lstm_cell_685/add_1�
5sequential_133/lstm_685/while/lstm_cell_685/Sigmoid_2Sigmoid:sequential_133/lstm_685/while/lstm_cell_685/split:output:3*
T0*'
_output_shapes
:���������\27
5sequential_133/lstm_685/while/lstm_cell_685/Sigmoid_2�
2sequential_133/lstm_685/while/lstm_cell_685/Relu_1Relu5sequential_133/lstm_685/while/lstm_cell_685/add_1:z:0*
T0*'
_output_shapes
:���������\24
2sequential_133/lstm_685/while/lstm_cell_685/Relu_1�
1sequential_133/lstm_685/while/lstm_cell_685/mul_2Mul9sequential_133/lstm_685/while/lstm_cell_685/Sigmoid_2:y:0@sequential_133/lstm_685/while/lstm_cell_685/Relu_1:activations:0*
T0*'
_output_shapes
:���������\23
1sequential_133/lstm_685/while/lstm_cell_685/mul_2�
Bsequential_133/lstm_685/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_133_lstm_685_while_placeholder_1)sequential_133_lstm_685_while_placeholder5sequential_133/lstm_685/while/lstm_cell_685/mul_2:z:0*
_output_shapes
: *
element_dtype02D
Bsequential_133/lstm_685/while/TensorArrayV2Write/TensorListSetItem�
#sequential_133/lstm_685/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_133/lstm_685/while/add/y�
!sequential_133/lstm_685/while/addAddV2)sequential_133_lstm_685_while_placeholder,sequential_133/lstm_685/while/add/y:output:0*
T0*
_output_shapes
: 2#
!sequential_133/lstm_685/while/add�
%sequential_133/lstm_685/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_133/lstm_685/while/add_1/y�
#sequential_133/lstm_685/while/add_1AddV2Hsequential_133_lstm_685_while_sequential_133_lstm_685_while_loop_counter.sequential_133/lstm_685/while/add_1/y:output:0*
T0*
_output_shapes
: 2%
#sequential_133/lstm_685/while/add_1�
&sequential_133/lstm_685/while/IdentityIdentity'sequential_133/lstm_685/while/add_1:z:0#^sequential_133/lstm_685/while/NoOp*
T0*
_output_shapes
: 2(
&sequential_133/lstm_685/while/Identity�
(sequential_133/lstm_685/while/Identity_1IdentityNsequential_133_lstm_685_while_sequential_133_lstm_685_while_maximum_iterations#^sequential_133/lstm_685/while/NoOp*
T0*
_output_shapes
: 2*
(sequential_133/lstm_685/while/Identity_1�
(sequential_133/lstm_685/while/Identity_2Identity%sequential_133/lstm_685/while/add:z:0#^sequential_133/lstm_685/while/NoOp*
T0*
_output_shapes
: 2*
(sequential_133/lstm_685/while/Identity_2�
(sequential_133/lstm_685/while/Identity_3IdentityRsequential_133/lstm_685/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_133/lstm_685/while/NoOp*
T0*
_output_shapes
: 2*
(sequential_133/lstm_685/while/Identity_3�
(sequential_133/lstm_685/while/Identity_4Identity5sequential_133/lstm_685/while/lstm_cell_685/mul_2:z:0#^sequential_133/lstm_685/while/NoOp*
T0*'
_output_shapes
:���������\2*
(sequential_133/lstm_685/while/Identity_4�
(sequential_133/lstm_685/while/Identity_5Identity5sequential_133/lstm_685/while/lstm_cell_685/add_1:z:0#^sequential_133/lstm_685/while/NoOp*
T0*'
_output_shapes
:���������\2*
(sequential_133/lstm_685/while/Identity_5�
"sequential_133/lstm_685/while/NoOpNoOpC^sequential_133/lstm_685/while/lstm_cell_685/BiasAdd/ReadVariableOpB^sequential_133/lstm_685/while/lstm_cell_685/MatMul/ReadVariableOpD^sequential_133/lstm_685/while/lstm_cell_685/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2$
"sequential_133/lstm_685/while/NoOp"Y
&sequential_133_lstm_685_while_identity/sequential_133/lstm_685/while/Identity:output:0"]
(sequential_133_lstm_685_while_identity_11sequential_133/lstm_685/while/Identity_1:output:0"]
(sequential_133_lstm_685_while_identity_21sequential_133/lstm_685/while/Identity_2:output:0"]
(sequential_133_lstm_685_while_identity_31sequential_133/lstm_685/while/Identity_3:output:0"]
(sequential_133_lstm_685_while_identity_41sequential_133/lstm_685/while/Identity_4:output:0"]
(sequential_133_lstm_685_while_identity_51sequential_133/lstm_685/while/Identity_5:output:0"�
Ksequential_133_lstm_685_while_lstm_cell_685_biasadd_readvariableop_resourceMsequential_133_lstm_685_while_lstm_cell_685_biasadd_readvariableop_resource_0"�
Lsequential_133_lstm_685_while_lstm_cell_685_matmul_1_readvariableop_resourceNsequential_133_lstm_685_while_lstm_cell_685_matmul_1_readvariableop_resource_0"�
Jsequential_133_lstm_685_while_lstm_cell_685_matmul_readvariableop_resourceLsequential_133_lstm_685_while_lstm_cell_685_matmul_readvariableop_resource_0"�
Esequential_133_lstm_685_while_sequential_133_lstm_685_strided_slice_1Gsequential_133_lstm_685_while_sequential_133_lstm_685_strided_slice_1_0"�
�sequential_133_lstm_685_while_tensorarrayv2read_tensorlistgetitem_sequential_133_lstm_685_tensorarrayunstack_tensorlistfromtensor�sequential_133_lstm_685_while_tensorarrayv2read_tensorlistgetitem_sequential_133_lstm_685_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������\:���������\: : : : : 2�
Bsequential_133/lstm_685/while/lstm_cell_685/BiasAdd/ReadVariableOpBsequential_133/lstm_685/while/lstm_cell_685/BiasAdd/ReadVariableOp2�
Asequential_133/lstm_685/while/lstm_cell_685/MatMul/ReadVariableOpAsequential_133/lstm_685/while/lstm_cell_685/MatMul/ReadVariableOp2�
Csequential_133/lstm_685/while/lstm_cell_685/MatMul_1/ReadVariableOpCsequential_133/lstm_685/while/lstm_cell_685/MatMul_1/ReadVariableOp: 
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
:���������\:-)
'
_output_shapes
:���������\:

_output_shapes
: :

_output_shapes
: 
�
�
*__inference_lstm_684_layer_call_fn_1491300
inputs_0
unknown:	0�
	unknown_0:	0�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������0*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_684_layer_call_and_return_conditional_losses_14875472
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������02

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������0: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������0
"
_user_specified_name
inputs/0
�

�
lstm_683_while_cond_1490242.
*lstm_683_while_lstm_683_while_loop_counter4
0lstm_683_while_lstm_683_while_maximum_iterations
lstm_683_while_placeholder 
lstm_683_while_placeholder_1 
lstm_683_while_placeholder_2 
lstm_683_while_placeholder_30
,lstm_683_while_less_lstm_683_strided_slice_1G
Clstm_683_while_lstm_683_while_cond_1490242___redundant_placeholder0G
Clstm_683_while_lstm_683_while_cond_1490242___redundant_placeholder1G
Clstm_683_while_lstm_683_while_cond_1490242___redundant_placeholder2G
Clstm_683_while_lstm_683_while_cond_1490242___redundant_placeholder3
lstm_683_while_identity
�
lstm_683/while/LessLesslstm_683_while_placeholder,lstm_683_while_less_lstm_683_strided_slice_1*
T0*
_output_shapes
: 2
lstm_683/while/Lessx
lstm_683/while/IdentityIdentitylstm_683/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_683/while/Identity";
lstm_683_while_identity lstm_683/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������0:���������0: ::::: 
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
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
:
�&
�
while_body_1486678
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_683_1486702_0:	�0
while_lstm_cell_683_1486704_0:	0�,
while_lstm_cell_683_1486706_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_683_1486702:	�.
while_lstm_cell_683_1486704:	0�*
while_lstm_cell_683_1486706:	���+while/lstm_cell_683/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
+while/lstm_cell_683/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_683_1486702_0while_lstm_cell_683_1486704_0while_lstm_cell_683_1486706_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������0:���������0:���������0*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_683_layer_call_and_return_conditional_losses_14866642-
+while/lstm_cell_683/StatefulPartitionedCall�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_683/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identity4while/lstm_cell_683/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������02
while/Identity_4�
while/Identity_5Identity4while/lstm_cell_683/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������02
while/Identity_5�

while/NoOpNoOp,^while/lstm_cell_683/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_683_1486702while_lstm_cell_683_1486702_0"<
while_lstm_cell_683_1486704while_lstm_cell_683_1486704_0"<
while_lstm_cell_683_1486706while_lstm_cell_683_1486706_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������0:���������0: : : : : 2Z
+while/lstm_cell_683/StatefulPartitionedCall+while/lstm_cell_683/StatefulPartitionedCall: 
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
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
: 
�
�
0__inference_sequential_133_layer_call_fn_1488911
lstm_683_input
unknown:	�
	unknown_0:	0�
	unknown_1:	�
	unknown_2:	0�
	unknown_3:	0�
	unknown_4:	�
	unknown_5:	0�
	unknown_6:	\�
	unknown_7:	�
	unknown_8:\
	unknown_9:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllstm_683_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_sequential_133_layer_call_and_return_conditional_losses_14888862
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:���������
(
_user_specified_namelstm_683_input
�

�
lstm_684_while_cond_1490389.
*lstm_684_while_lstm_684_while_loop_counter4
0lstm_684_while_lstm_684_while_maximum_iterations
lstm_684_while_placeholder 
lstm_684_while_placeholder_1 
lstm_684_while_placeholder_2 
lstm_684_while_placeholder_30
,lstm_684_while_less_lstm_684_strided_slice_1G
Clstm_684_while_lstm_684_while_cond_1490389___redundant_placeholder0G
Clstm_684_while_lstm_684_while_cond_1490389___redundant_placeholder1G
Clstm_684_while_lstm_684_while_cond_1490389___redundant_placeholder2G
Clstm_684_while_lstm_684_while_cond_1490389___redundant_placeholder3
lstm_684_while_identity
�
lstm_684/while/LessLesslstm_684_while_placeholder,lstm_684_while_less_lstm_684_strided_slice_1*
T0*
_output_shapes
: 2
lstm_684/while/Lessx
lstm_684/while/IdentityIdentitylstm_684/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_684/while/Identity";
lstm_684_while_identity lstm_684/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������0:���������0: ::::: 
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
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
:
�
f
H__inference_dropout_681_layer_call_and_return_conditional_losses_1491266

inputs

identity_1^
IdentityIdentityinputs*
T0*+
_output_shapes
:���������02

Identitym

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:���������02

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������0:S O
+
_output_shapes
:���������0
 
_user_specified_nameinputs
�?
�
E__inference_lstm_685_layer_call_and_return_conditional_losses_1488145

inputs(
lstm_cell_685_1488063:	0�(
lstm_cell_685_1488065:	\�$
lstm_cell_685_1488067:	�
identity��%lstm_cell_685/StatefulPartitionedCall�whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :\2
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������\2
zerosf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :\2
zeros_1/packed/1�
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������\2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������02
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������0*
shrink_axis_mask2
strided_slice_2�
%lstm_cell_685/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_685_1488063lstm_cell_685_1488065lstm_cell_685_1488067*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������\:���������\:���������\*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_685_layer_call_and_return_conditional_losses_14880062'
%lstm_cell_685/StatefulPartitionedCall�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����\   2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_685_1488063lstm_cell_685_1488065lstm_cell_685_1488067*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������\:���������\: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1488076*
condR
while_cond_1488075*K
output_shapes:
8: : : : :���������\:���������\: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����\   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������\*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������\*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������\2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������\2

Identity~
NoOpNoOp&^lstm_cell_685/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������0: : : 2N
%lstm_cell_685/StatefulPartitionedCall%lstm_cell_685/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������0
 
_user_specified_nameinputs
�#
�
K__inference_sequential_133_layer_call_and_return_conditional_losses_1488886

inputs#
lstm_683_1488541:	�#
lstm_683_1488543:	0�
lstm_683_1488545:	�#
lstm_684_1488698:	0�#
lstm_684_1488700:	0�
lstm_684_1488702:	�#
lstm_685_1488855:	0�#
lstm_685_1488857:	\�
lstm_685_1488859:	�#
dense_131_1488880:\
dense_131_1488882:
identity��!dense_131/StatefulPartitionedCall� lstm_683/StatefulPartitionedCall� lstm_684/StatefulPartitionedCall� lstm_685/StatefulPartitionedCall�
 lstm_683/StatefulPartitionedCallStatefulPartitionedCallinputslstm_683_1488541lstm_683_1488543lstm_683_1488545*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������0*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_683_layer_call_and_return_conditional_losses_14885402"
 lstm_683/StatefulPartitionedCall�
dropout_681/PartitionedCallPartitionedCall)lstm_683/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������0* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_681_layer_call_and_return_conditional_losses_14885532
dropout_681/PartitionedCall�
 lstm_684/StatefulPartitionedCallStatefulPartitionedCall$dropout_681/PartitionedCall:output:0lstm_684_1488698lstm_684_1488700lstm_684_1488702*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������0*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_684_layer_call_and_return_conditional_losses_14886972"
 lstm_684/StatefulPartitionedCall�
dropout_682/PartitionedCallPartitionedCall)lstm_684/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������0* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_682_layer_call_and_return_conditional_losses_14887102
dropout_682/PartitionedCall�
 lstm_685/StatefulPartitionedCallStatefulPartitionedCall$dropout_682/PartitionedCall:output:0lstm_685_1488855lstm_685_1488857lstm_685_1488859*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������\*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_685_layer_call_and_return_conditional_losses_14888542"
 lstm_685/StatefulPartitionedCall�
dropout_683/PartitionedCallPartitionedCall)lstm_685/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������\* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_683_layer_call_and_return_conditional_losses_14888672
dropout_683/PartitionedCall�
!dense_131/StatefulPartitionedCallStatefulPartitionedCall$dropout_683/PartitionedCall:output:0dense_131_1488880dense_131_1488882*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_131_layer_call_and_return_conditional_losses_14888792#
!dense_131/StatefulPartitionedCall�
IdentityIdentity*dense_131/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp"^dense_131/StatefulPartitionedCall!^lstm_683/StatefulPartitionedCall!^lstm_684/StatefulPartitionedCall!^lstm_685/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2F
!dense_131/StatefulPartitionedCall!dense_131/StatefulPartitionedCall2D
 lstm_683/StatefulPartitionedCall lstm_683/StatefulPartitionedCall2D
 lstm_684/StatefulPartitionedCall lstm_684/StatefulPartitionedCall2D
 lstm_685/StatefulPartitionedCall lstm_685/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_1490737
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1490737___redundant_placeholder05
1while_while_cond_1490737___redundant_placeholder15
1while_while_cond_1490737___redundant_placeholder25
1while_while_cond_1490737___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������0:���������0: ::::: 
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
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
:
�
f
-__inference_dropout_681_layer_call_fn_1491261

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������0* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_681_layer_call_and_return_conditional_losses_14893172
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������02

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������022
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������0
 
_user_specified_nameinputs
�V
�
E__inference_lstm_684_layer_call_and_return_conditional_losses_1491465
inputs_0?
,lstm_cell_684_matmul_readvariableop_resource:	0�A
.lstm_cell_684_matmul_1_readvariableop_resource:	0�<
-lstm_cell_684_biasadd_readvariableop_resource:	�
identity��$lstm_cell_684/BiasAdd/ReadVariableOp�#lstm_cell_684/MatMul/ReadVariableOp�%lstm_cell_684/MatMul_1/ReadVariableOp�whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :02
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������02
zerosf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :02
zeros_1/packed/1�
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������02	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������02
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������0*
shrink_axis_mask2
strided_slice_2�
#lstm_cell_684/MatMul/ReadVariableOpReadVariableOp,lstm_cell_684_matmul_readvariableop_resource*
_output_shapes
:	0�*
dtype02%
#lstm_cell_684/MatMul/ReadVariableOp�
lstm_cell_684/MatMulMatMulstrided_slice_2:output:0+lstm_cell_684/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_684/MatMul�
%lstm_cell_684/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_684_matmul_1_readvariableop_resource*
_output_shapes
:	0�*
dtype02'
%lstm_cell_684/MatMul_1/ReadVariableOp�
lstm_cell_684/MatMul_1MatMulzeros:output:0-lstm_cell_684/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_684/MatMul_1�
lstm_cell_684/addAddV2lstm_cell_684/MatMul:product:0 lstm_cell_684/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_cell_684/add�
$lstm_cell_684/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_684_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02&
$lstm_cell_684/BiasAdd/ReadVariableOp�
lstm_cell_684/BiasAddBiasAddlstm_cell_684/add:z:0,lstm_cell_684/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_684/BiasAdd�
lstm_cell_684/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_684/split/split_dim�
lstm_cell_684/splitSplit&lstm_cell_684/split/split_dim:output:0lstm_cell_684/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_split2
lstm_cell_684/split�
lstm_cell_684/SigmoidSigmoidlstm_cell_684/split:output:0*
T0*'
_output_shapes
:���������02
lstm_cell_684/Sigmoid�
lstm_cell_684/Sigmoid_1Sigmoidlstm_cell_684/split:output:1*
T0*'
_output_shapes
:���������02
lstm_cell_684/Sigmoid_1�
lstm_cell_684/mulMullstm_cell_684/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������02
lstm_cell_684/mul�
lstm_cell_684/ReluRelulstm_cell_684/split:output:2*
T0*'
_output_shapes
:���������02
lstm_cell_684/Relu�
lstm_cell_684/mul_1Mullstm_cell_684/Sigmoid:y:0 lstm_cell_684/Relu:activations:0*
T0*'
_output_shapes
:���������02
lstm_cell_684/mul_1�
lstm_cell_684/add_1AddV2lstm_cell_684/mul:z:0lstm_cell_684/mul_1:z:0*
T0*'
_output_shapes
:���������02
lstm_cell_684/add_1�
lstm_cell_684/Sigmoid_2Sigmoidlstm_cell_684/split:output:3*
T0*'
_output_shapes
:���������02
lstm_cell_684/Sigmoid_2
lstm_cell_684/Relu_1Relulstm_cell_684/add_1:z:0*
T0*'
_output_shapes
:���������02
lstm_cell_684/Relu_1�
lstm_cell_684/mul_2Mullstm_cell_684/Sigmoid_2:y:0"lstm_cell_684/Relu_1:activations:0*
T0*'
_output_shapes
:���������02
lstm_cell_684/mul_2�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_684_matmul_readvariableop_resource.lstm_cell_684_matmul_1_readvariableop_resource-lstm_cell_684_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������0:���������0: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1491381*
condR
while_cond_1491380*K
output_shapes:
8: : : : :���������0:���������0: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������0*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������0*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������02
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimew
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������02

Identity�
NoOpNoOp%^lstm_cell_684/BiasAdd/ReadVariableOp$^lstm_cell_684/MatMul/ReadVariableOp&^lstm_cell_684/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������0: : : 2L
$lstm_cell_684/BiasAdd/ReadVariableOp$lstm_cell_684/BiasAdd/ReadVariableOp2J
#lstm_cell_684/MatMul/ReadVariableOp#lstm_cell_684/MatMul/ReadVariableOp2N
%lstm_cell_684/MatMul_1/ReadVariableOp%lstm_cell_684/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������0
"
_user_specified_name
inputs/0
�U
�
E__inference_lstm_684_layer_call_and_return_conditional_losses_1488697

inputs?
,lstm_cell_684_matmul_readvariableop_resource:	0�A
.lstm_cell_684_matmul_1_readvariableop_resource:	0�<
-lstm_cell_684_biasadd_readvariableop_resource:	�
identity��$lstm_cell_684/BiasAdd/ReadVariableOp�#lstm_cell_684/MatMul/ReadVariableOp�%lstm_cell_684/MatMul_1/ReadVariableOp�whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :02
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������02
zerosf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :02
zeros_1/packed/1�
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������02	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������02
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������0*
shrink_axis_mask2
strided_slice_2�
#lstm_cell_684/MatMul/ReadVariableOpReadVariableOp,lstm_cell_684_matmul_readvariableop_resource*
_output_shapes
:	0�*
dtype02%
#lstm_cell_684/MatMul/ReadVariableOp�
lstm_cell_684/MatMulMatMulstrided_slice_2:output:0+lstm_cell_684/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_684/MatMul�
%lstm_cell_684/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_684_matmul_1_readvariableop_resource*
_output_shapes
:	0�*
dtype02'
%lstm_cell_684/MatMul_1/ReadVariableOp�
lstm_cell_684/MatMul_1MatMulzeros:output:0-lstm_cell_684/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_684/MatMul_1�
lstm_cell_684/addAddV2lstm_cell_684/MatMul:product:0 lstm_cell_684/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_cell_684/add�
$lstm_cell_684/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_684_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02&
$lstm_cell_684/BiasAdd/ReadVariableOp�
lstm_cell_684/BiasAddBiasAddlstm_cell_684/add:z:0,lstm_cell_684/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_684/BiasAdd�
lstm_cell_684/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_684/split/split_dim�
lstm_cell_684/splitSplit&lstm_cell_684/split/split_dim:output:0lstm_cell_684/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_split2
lstm_cell_684/split�
lstm_cell_684/SigmoidSigmoidlstm_cell_684/split:output:0*
T0*'
_output_shapes
:���������02
lstm_cell_684/Sigmoid�
lstm_cell_684/Sigmoid_1Sigmoidlstm_cell_684/split:output:1*
T0*'
_output_shapes
:���������02
lstm_cell_684/Sigmoid_1�
lstm_cell_684/mulMullstm_cell_684/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������02
lstm_cell_684/mul�
lstm_cell_684/ReluRelulstm_cell_684/split:output:2*
T0*'
_output_shapes
:���������02
lstm_cell_684/Relu�
lstm_cell_684/mul_1Mullstm_cell_684/Sigmoid:y:0 lstm_cell_684/Relu:activations:0*
T0*'
_output_shapes
:���������02
lstm_cell_684/mul_1�
lstm_cell_684/add_1AddV2lstm_cell_684/mul:z:0lstm_cell_684/mul_1:z:0*
T0*'
_output_shapes
:���������02
lstm_cell_684/add_1�
lstm_cell_684/Sigmoid_2Sigmoidlstm_cell_684/split:output:3*
T0*'
_output_shapes
:���������02
lstm_cell_684/Sigmoid_2
lstm_cell_684/Relu_1Relulstm_cell_684/add_1:z:0*
T0*'
_output_shapes
:���������02
lstm_cell_684/Relu_1�
lstm_cell_684/mul_2Mullstm_cell_684/Sigmoid_2:y:0"lstm_cell_684/Relu_1:activations:0*
T0*'
_output_shapes
:���������02
lstm_cell_684/mul_2�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_684_matmul_readvariableop_resource.lstm_cell_684_matmul_1_readvariableop_resource-lstm_cell_684_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������0:���������0: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1488613*
condR
while_cond_1488612*K
output_shapes:
8: : : : :���������0:���������0: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������0*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������0*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������02
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimen
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������02

Identity�
NoOpNoOp%^lstm_cell_684/BiasAdd/ReadVariableOp$^lstm_cell_684/MatMul/ReadVariableOp&^lstm_cell_684/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������0: : : 2L
$lstm_cell_684/BiasAdd/ReadVariableOp$lstm_cell_684/BiasAdd/ReadVariableOp2J
#lstm_cell_684/MatMul/ReadVariableOp#lstm_cell_684/MatMul/ReadVariableOp2N
%lstm_cell_684/MatMul_1/ReadVariableOp%lstm_cell_684/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������0
 
_user_specified_nameinputs
�
g
H__inference_dropout_683_layer_call_and_return_conditional_losses_1488941

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�5�?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������\2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������\*
dtype0*

seed*2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *FN�>2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������\2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������\2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:���������\2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:���������\2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������\:O K
'
_output_shapes
:���������\
 
_user_specified_nameinputs
�?
�
E__inference_lstm_683_layer_call_and_return_conditional_losses_1486747

inputs(
lstm_cell_683_1486665:	�(
lstm_cell_683_1486667:	0�$
lstm_cell_683_1486669:	�
identity��%lstm_cell_683/StatefulPartitionedCall�whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :02
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������02
zerosf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :02
zeros_1/packed/1�
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������02	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm�
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
strided_slice_2�
%lstm_cell_683/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_683_1486665lstm_cell_683_1486667lstm_cell_683_1486669*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������0:���������0:���������0*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_683_layer_call_and_return_conditional_losses_14866642'
%lstm_cell_683/StatefulPartitionedCall�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_683_1486665lstm_cell_683_1486667lstm_cell_683_1486669*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������0:���������0: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1486678*
condR
while_cond_1486677*K
output_shapes:
8: : : : :���������0:���������0: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������0*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������0*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������02
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimew
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������02

Identity~
NoOpNoOp&^lstm_cell_683/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2N
%lstm_cell_683/StatefulPartitionedCall%lstm_cell_683/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
*__inference_lstm_684_layer_call_fn_1491289
inputs_0
unknown:	0�
	unknown_0:	0�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������0*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_684_layer_call_and_return_conditional_losses_14873452
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������02

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������0: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������0
"
_user_specified_name
inputs/0
��
�
K__inference_sequential_133_layer_call_and_return_conditional_losses_1490184

inputsH
5lstm_683_lstm_cell_683_matmul_readvariableop_resource:	�J
7lstm_683_lstm_cell_683_matmul_1_readvariableop_resource:	0�E
6lstm_683_lstm_cell_683_biasadd_readvariableop_resource:	�H
5lstm_684_lstm_cell_684_matmul_readvariableop_resource:	0�J
7lstm_684_lstm_cell_684_matmul_1_readvariableop_resource:	0�E
6lstm_684_lstm_cell_684_biasadd_readvariableop_resource:	�H
5lstm_685_lstm_cell_685_matmul_readvariableop_resource:	0�J
7lstm_685_lstm_cell_685_matmul_1_readvariableop_resource:	\�E
6lstm_685_lstm_cell_685_biasadd_readvariableop_resource:	�:
(dense_131_matmul_readvariableop_resource:\7
)dense_131_biasadd_readvariableop_resource:
identity�� dense_131/BiasAdd/ReadVariableOp�dense_131/MatMul/ReadVariableOp�-lstm_683/lstm_cell_683/BiasAdd/ReadVariableOp�,lstm_683/lstm_cell_683/MatMul/ReadVariableOp�.lstm_683/lstm_cell_683/MatMul_1/ReadVariableOp�lstm_683/while�-lstm_684/lstm_cell_684/BiasAdd/ReadVariableOp�,lstm_684/lstm_cell_684/MatMul/ReadVariableOp�.lstm_684/lstm_cell_684/MatMul_1/ReadVariableOp�lstm_684/while�-lstm_685/lstm_cell_685/BiasAdd/ReadVariableOp�,lstm_685/lstm_cell_685/MatMul/ReadVariableOp�.lstm_685/lstm_cell_685/MatMul_1/ReadVariableOp�lstm_685/whileV
lstm_683/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_683/Shape�
lstm_683/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_683/strided_slice/stack�
lstm_683/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_683/strided_slice/stack_1�
lstm_683/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_683/strided_slice/stack_2�
lstm_683/strided_sliceStridedSlicelstm_683/Shape:output:0%lstm_683/strided_slice/stack:output:0'lstm_683/strided_slice/stack_1:output:0'lstm_683/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_683/strided_slicet
lstm_683/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :02
lstm_683/zeros/packed/1�
lstm_683/zeros/packedPacklstm_683/strided_slice:output:0 lstm_683/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_683/zeros/packedq
lstm_683/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_683/zeros/Const�
lstm_683/zerosFilllstm_683/zeros/packed:output:0lstm_683/zeros/Const:output:0*
T0*'
_output_shapes
:���������02
lstm_683/zerosx
lstm_683/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :02
lstm_683/zeros_1/packed/1�
lstm_683/zeros_1/packedPacklstm_683/strided_slice:output:0"lstm_683/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_683/zeros_1/packedu
lstm_683/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_683/zeros_1/Const�
lstm_683/zeros_1Fill lstm_683/zeros_1/packed:output:0lstm_683/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������02
lstm_683/zeros_1�
lstm_683/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_683/transpose/perm�
lstm_683/transpose	Transposeinputs lstm_683/transpose/perm:output:0*
T0*+
_output_shapes
:���������2
lstm_683/transposej
lstm_683/Shape_1Shapelstm_683/transpose:y:0*
T0*
_output_shapes
:2
lstm_683/Shape_1�
lstm_683/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_683/strided_slice_1/stack�
 lstm_683/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_683/strided_slice_1/stack_1�
 lstm_683/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_683/strided_slice_1/stack_2�
lstm_683/strided_slice_1StridedSlicelstm_683/Shape_1:output:0'lstm_683/strided_slice_1/stack:output:0)lstm_683/strided_slice_1/stack_1:output:0)lstm_683/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_683/strided_slice_1�
$lstm_683/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2&
$lstm_683/TensorArrayV2/element_shape�
lstm_683/TensorArrayV2TensorListReserve-lstm_683/TensorArrayV2/element_shape:output:0!lstm_683/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_683/TensorArrayV2�
>lstm_683/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2@
>lstm_683/TensorArrayUnstack/TensorListFromTensor/element_shape�
0lstm_683/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_683/transpose:y:0Glstm_683/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type022
0lstm_683/TensorArrayUnstack/TensorListFromTensor�
lstm_683/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_683/strided_slice_2/stack�
 lstm_683/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_683/strided_slice_2/stack_1�
 lstm_683/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_683/strided_slice_2/stack_2�
lstm_683/strided_slice_2StridedSlicelstm_683/transpose:y:0'lstm_683/strided_slice_2/stack:output:0)lstm_683/strided_slice_2/stack_1:output:0)lstm_683/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
lstm_683/strided_slice_2�
,lstm_683/lstm_cell_683/MatMul/ReadVariableOpReadVariableOp5lstm_683_lstm_cell_683_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02.
,lstm_683/lstm_cell_683/MatMul/ReadVariableOp�
lstm_683/lstm_cell_683/MatMulMatMul!lstm_683/strided_slice_2:output:04lstm_683/lstm_cell_683/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_683/lstm_cell_683/MatMul�
.lstm_683/lstm_cell_683/MatMul_1/ReadVariableOpReadVariableOp7lstm_683_lstm_cell_683_matmul_1_readvariableop_resource*
_output_shapes
:	0�*
dtype020
.lstm_683/lstm_cell_683/MatMul_1/ReadVariableOp�
lstm_683/lstm_cell_683/MatMul_1MatMullstm_683/zeros:output:06lstm_683/lstm_cell_683/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2!
lstm_683/lstm_cell_683/MatMul_1�
lstm_683/lstm_cell_683/addAddV2'lstm_683/lstm_cell_683/MatMul:product:0)lstm_683/lstm_cell_683/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_683/lstm_cell_683/add�
-lstm_683/lstm_cell_683/BiasAdd/ReadVariableOpReadVariableOp6lstm_683_lstm_cell_683_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02/
-lstm_683/lstm_cell_683/BiasAdd/ReadVariableOp�
lstm_683/lstm_cell_683/BiasAddBiasAddlstm_683/lstm_cell_683/add:z:05lstm_683/lstm_cell_683/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2 
lstm_683/lstm_cell_683/BiasAdd�
&lstm_683/lstm_cell_683/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2(
&lstm_683/lstm_cell_683/split/split_dim�
lstm_683/lstm_cell_683/splitSplit/lstm_683/lstm_cell_683/split/split_dim:output:0'lstm_683/lstm_cell_683/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_split2
lstm_683/lstm_cell_683/split�
lstm_683/lstm_cell_683/SigmoidSigmoid%lstm_683/lstm_cell_683/split:output:0*
T0*'
_output_shapes
:���������02 
lstm_683/lstm_cell_683/Sigmoid�
 lstm_683/lstm_cell_683/Sigmoid_1Sigmoid%lstm_683/lstm_cell_683/split:output:1*
T0*'
_output_shapes
:���������02"
 lstm_683/lstm_cell_683/Sigmoid_1�
lstm_683/lstm_cell_683/mulMul$lstm_683/lstm_cell_683/Sigmoid_1:y:0lstm_683/zeros_1:output:0*
T0*'
_output_shapes
:���������02
lstm_683/lstm_cell_683/mul�
lstm_683/lstm_cell_683/ReluRelu%lstm_683/lstm_cell_683/split:output:2*
T0*'
_output_shapes
:���������02
lstm_683/lstm_cell_683/Relu�
lstm_683/lstm_cell_683/mul_1Mul"lstm_683/lstm_cell_683/Sigmoid:y:0)lstm_683/lstm_cell_683/Relu:activations:0*
T0*'
_output_shapes
:���������02
lstm_683/lstm_cell_683/mul_1�
lstm_683/lstm_cell_683/add_1AddV2lstm_683/lstm_cell_683/mul:z:0 lstm_683/lstm_cell_683/mul_1:z:0*
T0*'
_output_shapes
:���������02
lstm_683/lstm_cell_683/add_1�
 lstm_683/lstm_cell_683/Sigmoid_2Sigmoid%lstm_683/lstm_cell_683/split:output:3*
T0*'
_output_shapes
:���������02"
 lstm_683/lstm_cell_683/Sigmoid_2�
lstm_683/lstm_cell_683/Relu_1Relu lstm_683/lstm_cell_683/add_1:z:0*
T0*'
_output_shapes
:���������02
lstm_683/lstm_cell_683/Relu_1�
lstm_683/lstm_cell_683/mul_2Mul$lstm_683/lstm_cell_683/Sigmoid_2:y:0+lstm_683/lstm_cell_683/Relu_1:activations:0*
T0*'
_output_shapes
:���������02
lstm_683/lstm_cell_683/mul_2�
&lstm_683/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   2(
&lstm_683/TensorArrayV2_1/element_shape�
lstm_683/TensorArrayV2_1TensorListReserve/lstm_683/TensorArrayV2_1/element_shape:output:0!lstm_683/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_683/TensorArrayV2_1`
lstm_683/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_683/time�
!lstm_683/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2#
!lstm_683/while/maximum_iterations|
lstm_683/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_683/while/loop_counter�
lstm_683/whileWhile$lstm_683/while/loop_counter:output:0*lstm_683/while/maximum_iterations:output:0lstm_683/time:output:0!lstm_683/TensorArrayV2_1:handle:0lstm_683/zeros:output:0lstm_683/zeros_1:output:0!lstm_683/strided_slice_1:output:0@lstm_683/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_683_lstm_cell_683_matmul_readvariableop_resource7lstm_683_lstm_cell_683_matmul_1_readvariableop_resource6lstm_683_lstm_cell_683_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������0:���������0: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_683_while_body_1489813*'
condR
lstm_683_while_cond_1489812*K
output_shapes:
8: : : : :���������0:���������0: : : : : *
parallel_iterations 2
lstm_683/while�
9lstm_683/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   2;
9lstm_683/TensorArrayV2Stack/TensorListStack/element_shape�
+lstm_683/TensorArrayV2Stack/TensorListStackTensorListStacklstm_683/while:output:3Blstm_683/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������0*
element_dtype02-
+lstm_683/TensorArrayV2Stack/TensorListStack�
lstm_683/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2 
lstm_683/strided_slice_3/stack�
 lstm_683/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2"
 lstm_683/strided_slice_3/stack_1�
 lstm_683/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_683/strided_slice_3/stack_2�
lstm_683/strided_slice_3StridedSlice4lstm_683/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_683/strided_slice_3/stack:output:0)lstm_683/strided_slice_3/stack_1:output:0)lstm_683/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������0*
shrink_axis_mask2
lstm_683/strided_slice_3�
lstm_683/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_683/transpose_1/perm�
lstm_683/transpose_1	Transpose4lstm_683/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_683/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������02
lstm_683/transpose_1x
lstm_683/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_683/runtime�
dropout_681/IdentityIdentitylstm_683/transpose_1:y:0*
T0*+
_output_shapes
:���������02
dropout_681/Identitym
lstm_684/ShapeShapedropout_681/Identity:output:0*
T0*
_output_shapes
:2
lstm_684/Shape�
lstm_684/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_684/strided_slice/stack�
lstm_684/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_684/strided_slice/stack_1�
lstm_684/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_684/strided_slice/stack_2�
lstm_684/strided_sliceStridedSlicelstm_684/Shape:output:0%lstm_684/strided_slice/stack:output:0'lstm_684/strided_slice/stack_1:output:0'lstm_684/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_684/strided_slicet
lstm_684/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :02
lstm_684/zeros/packed/1�
lstm_684/zeros/packedPacklstm_684/strided_slice:output:0 lstm_684/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_684/zeros/packedq
lstm_684/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_684/zeros/Const�
lstm_684/zerosFilllstm_684/zeros/packed:output:0lstm_684/zeros/Const:output:0*
T0*'
_output_shapes
:���������02
lstm_684/zerosx
lstm_684/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :02
lstm_684/zeros_1/packed/1�
lstm_684/zeros_1/packedPacklstm_684/strided_slice:output:0"lstm_684/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_684/zeros_1/packedu
lstm_684/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_684/zeros_1/Const�
lstm_684/zeros_1Fill lstm_684/zeros_1/packed:output:0lstm_684/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������02
lstm_684/zeros_1�
lstm_684/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_684/transpose/perm�
lstm_684/transpose	Transposedropout_681/Identity:output:0 lstm_684/transpose/perm:output:0*
T0*+
_output_shapes
:���������02
lstm_684/transposej
lstm_684/Shape_1Shapelstm_684/transpose:y:0*
T0*
_output_shapes
:2
lstm_684/Shape_1�
lstm_684/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_684/strided_slice_1/stack�
 lstm_684/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_684/strided_slice_1/stack_1�
 lstm_684/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_684/strided_slice_1/stack_2�
lstm_684/strided_slice_1StridedSlicelstm_684/Shape_1:output:0'lstm_684/strided_slice_1/stack:output:0)lstm_684/strided_slice_1/stack_1:output:0)lstm_684/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_684/strided_slice_1�
$lstm_684/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2&
$lstm_684/TensorArrayV2/element_shape�
lstm_684/TensorArrayV2TensorListReserve-lstm_684/TensorArrayV2/element_shape:output:0!lstm_684/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_684/TensorArrayV2�
>lstm_684/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   2@
>lstm_684/TensorArrayUnstack/TensorListFromTensor/element_shape�
0lstm_684/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_684/transpose:y:0Glstm_684/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type022
0lstm_684/TensorArrayUnstack/TensorListFromTensor�
lstm_684/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_684/strided_slice_2/stack�
 lstm_684/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_684/strided_slice_2/stack_1�
 lstm_684/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_684/strided_slice_2/stack_2�
lstm_684/strided_slice_2StridedSlicelstm_684/transpose:y:0'lstm_684/strided_slice_2/stack:output:0)lstm_684/strided_slice_2/stack_1:output:0)lstm_684/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������0*
shrink_axis_mask2
lstm_684/strided_slice_2�
,lstm_684/lstm_cell_684/MatMul/ReadVariableOpReadVariableOp5lstm_684_lstm_cell_684_matmul_readvariableop_resource*
_output_shapes
:	0�*
dtype02.
,lstm_684/lstm_cell_684/MatMul/ReadVariableOp�
lstm_684/lstm_cell_684/MatMulMatMul!lstm_684/strided_slice_2:output:04lstm_684/lstm_cell_684/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_684/lstm_cell_684/MatMul�
.lstm_684/lstm_cell_684/MatMul_1/ReadVariableOpReadVariableOp7lstm_684_lstm_cell_684_matmul_1_readvariableop_resource*
_output_shapes
:	0�*
dtype020
.lstm_684/lstm_cell_684/MatMul_1/ReadVariableOp�
lstm_684/lstm_cell_684/MatMul_1MatMullstm_684/zeros:output:06lstm_684/lstm_cell_684/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2!
lstm_684/lstm_cell_684/MatMul_1�
lstm_684/lstm_cell_684/addAddV2'lstm_684/lstm_cell_684/MatMul:product:0)lstm_684/lstm_cell_684/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_684/lstm_cell_684/add�
-lstm_684/lstm_cell_684/BiasAdd/ReadVariableOpReadVariableOp6lstm_684_lstm_cell_684_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02/
-lstm_684/lstm_cell_684/BiasAdd/ReadVariableOp�
lstm_684/lstm_cell_684/BiasAddBiasAddlstm_684/lstm_cell_684/add:z:05lstm_684/lstm_cell_684/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2 
lstm_684/lstm_cell_684/BiasAdd�
&lstm_684/lstm_cell_684/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2(
&lstm_684/lstm_cell_684/split/split_dim�
lstm_684/lstm_cell_684/splitSplit/lstm_684/lstm_cell_684/split/split_dim:output:0'lstm_684/lstm_cell_684/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_split2
lstm_684/lstm_cell_684/split�
lstm_684/lstm_cell_684/SigmoidSigmoid%lstm_684/lstm_cell_684/split:output:0*
T0*'
_output_shapes
:���������02 
lstm_684/lstm_cell_684/Sigmoid�
 lstm_684/lstm_cell_684/Sigmoid_1Sigmoid%lstm_684/lstm_cell_684/split:output:1*
T0*'
_output_shapes
:���������02"
 lstm_684/lstm_cell_684/Sigmoid_1�
lstm_684/lstm_cell_684/mulMul$lstm_684/lstm_cell_684/Sigmoid_1:y:0lstm_684/zeros_1:output:0*
T0*'
_output_shapes
:���������02
lstm_684/lstm_cell_684/mul�
lstm_684/lstm_cell_684/ReluRelu%lstm_684/lstm_cell_684/split:output:2*
T0*'
_output_shapes
:���������02
lstm_684/lstm_cell_684/Relu�
lstm_684/lstm_cell_684/mul_1Mul"lstm_684/lstm_cell_684/Sigmoid:y:0)lstm_684/lstm_cell_684/Relu:activations:0*
T0*'
_output_shapes
:���������02
lstm_684/lstm_cell_684/mul_1�
lstm_684/lstm_cell_684/add_1AddV2lstm_684/lstm_cell_684/mul:z:0 lstm_684/lstm_cell_684/mul_1:z:0*
T0*'
_output_shapes
:���������02
lstm_684/lstm_cell_684/add_1�
 lstm_684/lstm_cell_684/Sigmoid_2Sigmoid%lstm_684/lstm_cell_684/split:output:3*
T0*'
_output_shapes
:���������02"
 lstm_684/lstm_cell_684/Sigmoid_2�
lstm_684/lstm_cell_684/Relu_1Relu lstm_684/lstm_cell_684/add_1:z:0*
T0*'
_output_shapes
:���������02
lstm_684/lstm_cell_684/Relu_1�
lstm_684/lstm_cell_684/mul_2Mul$lstm_684/lstm_cell_684/Sigmoid_2:y:0+lstm_684/lstm_cell_684/Relu_1:activations:0*
T0*'
_output_shapes
:���������02
lstm_684/lstm_cell_684/mul_2�
&lstm_684/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   2(
&lstm_684/TensorArrayV2_1/element_shape�
lstm_684/TensorArrayV2_1TensorListReserve/lstm_684/TensorArrayV2_1/element_shape:output:0!lstm_684/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_684/TensorArrayV2_1`
lstm_684/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_684/time�
!lstm_684/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2#
!lstm_684/while/maximum_iterations|
lstm_684/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_684/while/loop_counter�
lstm_684/whileWhile$lstm_684/while/loop_counter:output:0*lstm_684/while/maximum_iterations:output:0lstm_684/time:output:0!lstm_684/TensorArrayV2_1:handle:0lstm_684/zeros:output:0lstm_684/zeros_1:output:0!lstm_684/strided_slice_1:output:0@lstm_684/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_684_lstm_cell_684_matmul_readvariableop_resource7lstm_684_lstm_cell_684_matmul_1_readvariableop_resource6lstm_684_lstm_cell_684_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������0:���������0: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_684_while_body_1489953*'
condR
lstm_684_while_cond_1489952*K
output_shapes:
8: : : : :���������0:���������0: : : : : *
parallel_iterations 2
lstm_684/while�
9lstm_684/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   2;
9lstm_684/TensorArrayV2Stack/TensorListStack/element_shape�
+lstm_684/TensorArrayV2Stack/TensorListStackTensorListStacklstm_684/while:output:3Blstm_684/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������0*
element_dtype02-
+lstm_684/TensorArrayV2Stack/TensorListStack�
lstm_684/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2 
lstm_684/strided_slice_3/stack�
 lstm_684/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2"
 lstm_684/strided_slice_3/stack_1�
 lstm_684/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_684/strided_slice_3/stack_2�
lstm_684/strided_slice_3StridedSlice4lstm_684/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_684/strided_slice_3/stack:output:0)lstm_684/strided_slice_3/stack_1:output:0)lstm_684/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������0*
shrink_axis_mask2
lstm_684/strided_slice_3�
lstm_684/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_684/transpose_1/perm�
lstm_684/transpose_1	Transpose4lstm_684/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_684/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������02
lstm_684/transpose_1x
lstm_684/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_684/runtime�
dropout_682/IdentityIdentitylstm_684/transpose_1:y:0*
T0*+
_output_shapes
:���������02
dropout_682/Identitym
lstm_685/ShapeShapedropout_682/Identity:output:0*
T0*
_output_shapes
:2
lstm_685/Shape�
lstm_685/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_685/strided_slice/stack�
lstm_685/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_685/strided_slice/stack_1�
lstm_685/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_685/strided_slice/stack_2�
lstm_685/strided_sliceStridedSlicelstm_685/Shape:output:0%lstm_685/strided_slice/stack:output:0'lstm_685/strided_slice/stack_1:output:0'lstm_685/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_685/strided_slicet
lstm_685/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :\2
lstm_685/zeros/packed/1�
lstm_685/zeros/packedPacklstm_685/strided_slice:output:0 lstm_685/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_685/zeros/packedq
lstm_685/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_685/zeros/Const�
lstm_685/zerosFilllstm_685/zeros/packed:output:0lstm_685/zeros/Const:output:0*
T0*'
_output_shapes
:���������\2
lstm_685/zerosx
lstm_685/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :\2
lstm_685/zeros_1/packed/1�
lstm_685/zeros_1/packedPacklstm_685/strided_slice:output:0"lstm_685/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_685/zeros_1/packedu
lstm_685/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_685/zeros_1/Const�
lstm_685/zeros_1Fill lstm_685/zeros_1/packed:output:0lstm_685/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������\2
lstm_685/zeros_1�
lstm_685/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_685/transpose/perm�
lstm_685/transpose	Transposedropout_682/Identity:output:0 lstm_685/transpose/perm:output:0*
T0*+
_output_shapes
:���������02
lstm_685/transposej
lstm_685/Shape_1Shapelstm_685/transpose:y:0*
T0*
_output_shapes
:2
lstm_685/Shape_1�
lstm_685/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_685/strided_slice_1/stack�
 lstm_685/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_685/strided_slice_1/stack_1�
 lstm_685/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_685/strided_slice_1/stack_2�
lstm_685/strided_slice_1StridedSlicelstm_685/Shape_1:output:0'lstm_685/strided_slice_1/stack:output:0)lstm_685/strided_slice_1/stack_1:output:0)lstm_685/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_685/strided_slice_1�
$lstm_685/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2&
$lstm_685/TensorArrayV2/element_shape�
lstm_685/TensorArrayV2TensorListReserve-lstm_685/TensorArrayV2/element_shape:output:0!lstm_685/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_685/TensorArrayV2�
>lstm_685/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   2@
>lstm_685/TensorArrayUnstack/TensorListFromTensor/element_shape�
0lstm_685/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_685/transpose:y:0Glstm_685/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type022
0lstm_685/TensorArrayUnstack/TensorListFromTensor�
lstm_685/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_685/strided_slice_2/stack�
 lstm_685/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_685/strided_slice_2/stack_1�
 lstm_685/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_685/strided_slice_2/stack_2�
lstm_685/strided_slice_2StridedSlicelstm_685/transpose:y:0'lstm_685/strided_slice_2/stack:output:0)lstm_685/strided_slice_2/stack_1:output:0)lstm_685/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������0*
shrink_axis_mask2
lstm_685/strided_slice_2�
,lstm_685/lstm_cell_685/MatMul/ReadVariableOpReadVariableOp5lstm_685_lstm_cell_685_matmul_readvariableop_resource*
_output_shapes
:	0�*
dtype02.
,lstm_685/lstm_cell_685/MatMul/ReadVariableOp�
lstm_685/lstm_cell_685/MatMulMatMul!lstm_685/strided_slice_2:output:04lstm_685/lstm_cell_685/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_685/lstm_cell_685/MatMul�
.lstm_685/lstm_cell_685/MatMul_1/ReadVariableOpReadVariableOp7lstm_685_lstm_cell_685_matmul_1_readvariableop_resource*
_output_shapes
:	\�*
dtype020
.lstm_685/lstm_cell_685/MatMul_1/ReadVariableOp�
lstm_685/lstm_cell_685/MatMul_1MatMullstm_685/zeros:output:06lstm_685/lstm_cell_685/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2!
lstm_685/lstm_cell_685/MatMul_1�
lstm_685/lstm_cell_685/addAddV2'lstm_685/lstm_cell_685/MatMul:product:0)lstm_685/lstm_cell_685/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_685/lstm_cell_685/add�
-lstm_685/lstm_cell_685/BiasAdd/ReadVariableOpReadVariableOp6lstm_685_lstm_cell_685_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02/
-lstm_685/lstm_cell_685/BiasAdd/ReadVariableOp�
lstm_685/lstm_cell_685/BiasAddBiasAddlstm_685/lstm_cell_685/add:z:05lstm_685/lstm_cell_685/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2 
lstm_685/lstm_cell_685/BiasAdd�
&lstm_685/lstm_cell_685/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2(
&lstm_685/lstm_cell_685/split/split_dim�
lstm_685/lstm_cell_685/splitSplit/lstm_685/lstm_cell_685/split/split_dim:output:0'lstm_685/lstm_cell_685/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������\:���������\:���������\:���������\*
	num_split2
lstm_685/lstm_cell_685/split�
lstm_685/lstm_cell_685/SigmoidSigmoid%lstm_685/lstm_cell_685/split:output:0*
T0*'
_output_shapes
:���������\2 
lstm_685/lstm_cell_685/Sigmoid�
 lstm_685/lstm_cell_685/Sigmoid_1Sigmoid%lstm_685/lstm_cell_685/split:output:1*
T0*'
_output_shapes
:���������\2"
 lstm_685/lstm_cell_685/Sigmoid_1�
lstm_685/lstm_cell_685/mulMul$lstm_685/lstm_cell_685/Sigmoid_1:y:0lstm_685/zeros_1:output:0*
T0*'
_output_shapes
:���������\2
lstm_685/lstm_cell_685/mul�
lstm_685/lstm_cell_685/ReluRelu%lstm_685/lstm_cell_685/split:output:2*
T0*'
_output_shapes
:���������\2
lstm_685/lstm_cell_685/Relu�
lstm_685/lstm_cell_685/mul_1Mul"lstm_685/lstm_cell_685/Sigmoid:y:0)lstm_685/lstm_cell_685/Relu:activations:0*
T0*'
_output_shapes
:���������\2
lstm_685/lstm_cell_685/mul_1�
lstm_685/lstm_cell_685/add_1AddV2lstm_685/lstm_cell_685/mul:z:0 lstm_685/lstm_cell_685/mul_1:z:0*
T0*'
_output_shapes
:���������\2
lstm_685/lstm_cell_685/add_1�
 lstm_685/lstm_cell_685/Sigmoid_2Sigmoid%lstm_685/lstm_cell_685/split:output:3*
T0*'
_output_shapes
:���������\2"
 lstm_685/lstm_cell_685/Sigmoid_2�
lstm_685/lstm_cell_685/Relu_1Relu lstm_685/lstm_cell_685/add_1:z:0*
T0*'
_output_shapes
:���������\2
lstm_685/lstm_cell_685/Relu_1�
lstm_685/lstm_cell_685/mul_2Mul$lstm_685/lstm_cell_685/Sigmoid_2:y:0+lstm_685/lstm_cell_685/Relu_1:activations:0*
T0*'
_output_shapes
:���������\2
lstm_685/lstm_cell_685/mul_2�
&lstm_685/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����\   2(
&lstm_685/TensorArrayV2_1/element_shape�
lstm_685/TensorArrayV2_1TensorListReserve/lstm_685/TensorArrayV2_1/element_shape:output:0!lstm_685/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_685/TensorArrayV2_1`
lstm_685/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_685/time�
!lstm_685/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2#
!lstm_685/while/maximum_iterations|
lstm_685/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_685/while/loop_counter�
lstm_685/whileWhile$lstm_685/while/loop_counter:output:0*lstm_685/while/maximum_iterations:output:0lstm_685/time:output:0!lstm_685/TensorArrayV2_1:handle:0lstm_685/zeros:output:0lstm_685/zeros_1:output:0!lstm_685/strided_slice_1:output:0@lstm_685/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_685_lstm_cell_685_matmul_readvariableop_resource7lstm_685_lstm_cell_685_matmul_1_readvariableop_resource6lstm_685_lstm_cell_685_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������\:���������\: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_685_while_body_1490093*'
condR
lstm_685_while_cond_1490092*K
output_shapes:
8: : : : :���������\:���������\: : : : : *
parallel_iterations 2
lstm_685/while�
9lstm_685/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����\   2;
9lstm_685/TensorArrayV2Stack/TensorListStack/element_shape�
+lstm_685/TensorArrayV2Stack/TensorListStackTensorListStacklstm_685/while:output:3Blstm_685/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������\*
element_dtype02-
+lstm_685/TensorArrayV2Stack/TensorListStack�
lstm_685/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2 
lstm_685/strided_slice_3/stack�
 lstm_685/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2"
 lstm_685/strided_slice_3/stack_1�
 lstm_685/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_685/strided_slice_3/stack_2�
lstm_685/strided_slice_3StridedSlice4lstm_685/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_685/strided_slice_3/stack:output:0)lstm_685/strided_slice_3/stack_1:output:0)lstm_685/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������\*
shrink_axis_mask2
lstm_685/strided_slice_3�
lstm_685/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_685/transpose_1/perm�
lstm_685/transpose_1	Transpose4lstm_685/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_685/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������\2
lstm_685/transpose_1x
lstm_685/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_685/runtime�
dropout_683/IdentityIdentity!lstm_685/strided_slice_3:output:0*
T0*'
_output_shapes
:���������\2
dropout_683/Identity�
dense_131/MatMul/ReadVariableOpReadVariableOp(dense_131_matmul_readvariableop_resource*
_output_shapes

:\*
dtype02!
dense_131/MatMul/ReadVariableOp�
dense_131/MatMulMatMuldropout_683/Identity:output:0'dense_131/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_131/MatMul�
 dense_131/BiasAdd/ReadVariableOpReadVariableOp)dense_131_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_131/BiasAdd/ReadVariableOp�
dense_131/BiasAddBiasAdddense_131/MatMul:product:0(dense_131/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_131/BiasAddu
IdentityIdentitydense_131/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp!^dense_131/BiasAdd/ReadVariableOp ^dense_131/MatMul/ReadVariableOp.^lstm_683/lstm_cell_683/BiasAdd/ReadVariableOp-^lstm_683/lstm_cell_683/MatMul/ReadVariableOp/^lstm_683/lstm_cell_683/MatMul_1/ReadVariableOp^lstm_683/while.^lstm_684/lstm_cell_684/BiasAdd/ReadVariableOp-^lstm_684/lstm_cell_684/MatMul/ReadVariableOp/^lstm_684/lstm_cell_684/MatMul_1/ReadVariableOp^lstm_684/while.^lstm_685/lstm_cell_685/BiasAdd/ReadVariableOp-^lstm_685/lstm_cell_685/MatMul/ReadVariableOp/^lstm_685/lstm_cell_685/MatMul_1/ReadVariableOp^lstm_685/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2D
 dense_131/BiasAdd/ReadVariableOp dense_131/BiasAdd/ReadVariableOp2B
dense_131/MatMul/ReadVariableOpdense_131/MatMul/ReadVariableOp2^
-lstm_683/lstm_cell_683/BiasAdd/ReadVariableOp-lstm_683/lstm_cell_683/BiasAdd/ReadVariableOp2\
,lstm_683/lstm_cell_683/MatMul/ReadVariableOp,lstm_683/lstm_cell_683/MatMul/ReadVariableOp2`
.lstm_683/lstm_cell_683/MatMul_1/ReadVariableOp.lstm_683/lstm_cell_683/MatMul_1/ReadVariableOp2 
lstm_683/whilelstm_683/while2^
-lstm_684/lstm_cell_684/BiasAdd/ReadVariableOp-lstm_684/lstm_cell_684/BiasAdd/ReadVariableOp2\
,lstm_684/lstm_cell_684/MatMul/ReadVariableOp,lstm_684/lstm_cell_684/MatMul/ReadVariableOp2`
.lstm_684/lstm_cell_684/MatMul_1/ReadVariableOp.lstm_684/lstm_cell_684/MatMul_1/ReadVariableOp2 
lstm_684/whilelstm_684/while2^
-lstm_685/lstm_cell_685/BiasAdd/ReadVariableOp-lstm_685/lstm_cell_685/BiasAdd/ReadVariableOp2\
,lstm_685/lstm_cell_685/MatMul/ReadVariableOp,lstm_685/lstm_cell_685/MatMul/ReadVariableOp2`
.lstm_685/lstm_cell_685/MatMul_1/ReadVariableOp.lstm_685/lstm_cell_685/MatMul_1/ReadVariableOp2 
lstm_685/whilelstm_685/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
J__inference_lstm_cell_683_layer_call_and_return_conditional_losses_1486810

inputs

states
states_11
matmul_readvariableop_resource:	�3
 matmul_1_readvariableop_resource:	0�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	0�*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������2
add�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������02	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������02
	Sigmoid_1\
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������02
mulV
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������02
Reluh
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������02
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������02
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������02
	Sigmoid_2U
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������02
Relu_1l
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������02
mul_2d
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������02

Identityh

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������02

Identity_1h

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������02

Identity_2�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������0:���������0: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������0
 
_user_specified_namestates:OK
'
_output_shapes
:���������0
 
_user_specified_namestates
�

�
lstm_683_while_cond_1489812.
*lstm_683_while_lstm_683_while_loop_counter4
0lstm_683_while_lstm_683_while_maximum_iterations
lstm_683_while_placeholder 
lstm_683_while_placeholder_1 
lstm_683_while_placeholder_2 
lstm_683_while_placeholder_30
,lstm_683_while_less_lstm_683_strided_slice_1G
Clstm_683_while_lstm_683_while_cond_1489812___redundant_placeholder0G
Clstm_683_while_lstm_683_while_cond_1489812___redundant_placeholder1G
Clstm_683_while_lstm_683_while_cond_1489812___redundant_placeholder2G
Clstm_683_while_lstm_683_while_cond_1489812___redundant_placeholder3
lstm_683_while_identity
�
lstm_683/while/LessLesslstm_683_while_placeholder,lstm_683_while_less_lstm_683_strided_slice_1*
T0*
_output_shapes
: 2
lstm_683/while/Lessx
lstm_683/while/IdentityIdentitylstm_683/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_683/while/Identity";
lstm_683_while_identity lstm_683/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������0:���������0: ::::: 
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
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
:
�
I
-__inference_dropout_683_layer_call_fn_1492542

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������\* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_683_layer_call_and_return_conditional_losses_14888672
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������\2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������\:O K
'
_output_shapes
:���������\
 
_user_specified_nameinputs
�
�
while_cond_1491023
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1491023___redundant_placeholder05
1while_while_cond_1491023___redundant_placeholder15
1while_while_cond_1491023___redundant_placeholder25
1while_while_cond_1491023___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������0:���������0: ::::: 
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
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
:
�
f
H__inference_dropout_682_layer_call_and_return_conditional_losses_1491909

inputs

identity_1^
IdentityIdentityinputs*
T0*+
_output_shapes
:���������02

Identitym

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:���������02

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������0:S O
+
_output_shapes
:���������0
 
_user_specified_nameinputs
�
�
while_cond_1489391
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1489391___redundant_placeholder05
1while_while_cond_1489391___redundant_placeholder15
1while_while_cond_1489391___redundant_placeholder25
1while_while_cond_1489391___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������0:���������0: ::::: 
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
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_1492309
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1492309___redundant_placeholder05
1while_while_cond_1492309___redundant_placeholder15
1while_while_cond_1492309___redundant_placeholder25
1while_while_cond_1492309___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������\:���������\: ::::: 
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
:���������\:-)
'
_output_shapes
:���������\:

_output_shapes
: :

_output_shapes
:
�

�
F__inference_dense_131_layer_call_and_return_conditional_losses_1488879

inputs0
matmul_readvariableop_resource:\-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:\*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������\: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������\
 
_user_specified_nameinputs
��
�
K__inference_sequential_133_layer_call_and_return_conditional_losses_1490635

inputsH
5lstm_683_lstm_cell_683_matmul_readvariableop_resource:	�J
7lstm_683_lstm_cell_683_matmul_1_readvariableop_resource:	0�E
6lstm_683_lstm_cell_683_biasadd_readvariableop_resource:	�H
5lstm_684_lstm_cell_684_matmul_readvariableop_resource:	0�J
7lstm_684_lstm_cell_684_matmul_1_readvariableop_resource:	0�E
6lstm_684_lstm_cell_684_biasadd_readvariableop_resource:	�H
5lstm_685_lstm_cell_685_matmul_readvariableop_resource:	0�J
7lstm_685_lstm_cell_685_matmul_1_readvariableop_resource:	\�E
6lstm_685_lstm_cell_685_biasadd_readvariableop_resource:	�:
(dense_131_matmul_readvariableop_resource:\7
)dense_131_biasadd_readvariableop_resource:
identity�� dense_131/BiasAdd/ReadVariableOp�dense_131/MatMul/ReadVariableOp�-lstm_683/lstm_cell_683/BiasAdd/ReadVariableOp�,lstm_683/lstm_cell_683/MatMul/ReadVariableOp�.lstm_683/lstm_cell_683/MatMul_1/ReadVariableOp�lstm_683/while�-lstm_684/lstm_cell_684/BiasAdd/ReadVariableOp�,lstm_684/lstm_cell_684/MatMul/ReadVariableOp�.lstm_684/lstm_cell_684/MatMul_1/ReadVariableOp�lstm_684/while�-lstm_685/lstm_cell_685/BiasAdd/ReadVariableOp�,lstm_685/lstm_cell_685/MatMul/ReadVariableOp�.lstm_685/lstm_cell_685/MatMul_1/ReadVariableOp�lstm_685/whileV
lstm_683/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_683/Shape�
lstm_683/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_683/strided_slice/stack�
lstm_683/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_683/strided_slice/stack_1�
lstm_683/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_683/strided_slice/stack_2�
lstm_683/strided_sliceStridedSlicelstm_683/Shape:output:0%lstm_683/strided_slice/stack:output:0'lstm_683/strided_slice/stack_1:output:0'lstm_683/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_683/strided_slicet
lstm_683/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :02
lstm_683/zeros/packed/1�
lstm_683/zeros/packedPacklstm_683/strided_slice:output:0 lstm_683/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_683/zeros/packedq
lstm_683/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_683/zeros/Const�
lstm_683/zerosFilllstm_683/zeros/packed:output:0lstm_683/zeros/Const:output:0*
T0*'
_output_shapes
:���������02
lstm_683/zerosx
lstm_683/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :02
lstm_683/zeros_1/packed/1�
lstm_683/zeros_1/packedPacklstm_683/strided_slice:output:0"lstm_683/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_683/zeros_1/packedu
lstm_683/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_683/zeros_1/Const�
lstm_683/zeros_1Fill lstm_683/zeros_1/packed:output:0lstm_683/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������02
lstm_683/zeros_1�
lstm_683/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_683/transpose/perm�
lstm_683/transpose	Transposeinputs lstm_683/transpose/perm:output:0*
T0*+
_output_shapes
:���������2
lstm_683/transposej
lstm_683/Shape_1Shapelstm_683/transpose:y:0*
T0*
_output_shapes
:2
lstm_683/Shape_1�
lstm_683/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_683/strided_slice_1/stack�
 lstm_683/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_683/strided_slice_1/stack_1�
 lstm_683/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_683/strided_slice_1/stack_2�
lstm_683/strided_slice_1StridedSlicelstm_683/Shape_1:output:0'lstm_683/strided_slice_1/stack:output:0)lstm_683/strided_slice_1/stack_1:output:0)lstm_683/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_683/strided_slice_1�
$lstm_683/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2&
$lstm_683/TensorArrayV2/element_shape�
lstm_683/TensorArrayV2TensorListReserve-lstm_683/TensorArrayV2/element_shape:output:0!lstm_683/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_683/TensorArrayV2�
>lstm_683/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2@
>lstm_683/TensorArrayUnstack/TensorListFromTensor/element_shape�
0lstm_683/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_683/transpose:y:0Glstm_683/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type022
0lstm_683/TensorArrayUnstack/TensorListFromTensor�
lstm_683/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_683/strided_slice_2/stack�
 lstm_683/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_683/strided_slice_2/stack_1�
 lstm_683/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_683/strided_slice_2/stack_2�
lstm_683/strided_slice_2StridedSlicelstm_683/transpose:y:0'lstm_683/strided_slice_2/stack:output:0)lstm_683/strided_slice_2/stack_1:output:0)lstm_683/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2
lstm_683/strided_slice_2�
,lstm_683/lstm_cell_683/MatMul/ReadVariableOpReadVariableOp5lstm_683_lstm_cell_683_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02.
,lstm_683/lstm_cell_683/MatMul/ReadVariableOp�
lstm_683/lstm_cell_683/MatMulMatMul!lstm_683/strided_slice_2:output:04lstm_683/lstm_cell_683/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_683/lstm_cell_683/MatMul�
.lstm_683/lstm_cell_683/MatMul_1/ReadVariableOpReadVariableOp7lstm_683_lstm_cell_683_matmul_1_readvariableop_resource*
_output_shapes
:	0�*
dtype020
.lstm_683/lstm_cell_683/MatMul_1/ReadVariableOp�
lstm_683/lstm_cell_683/MatMul_1MatMullstm_683/zeros:output:06lstm_683/lstm_cell_683/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2!
lstm_683/lstm_cell_683/MatMul_1�
lstm_683/lstm_cell_683/addAddV2'lstm_683/lstm_cell_683/MatMul:product:0)lstm_683/lstm_cell_683/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_683/lstm_cell_683/add�
-lstm_683/lstm_cell_683/BiasAdd/ReadVariableOpReadVariableOp6lstm_683_lstm_cell_683_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02/
-lstm_683/lstm_cell_683/BiasAdd/ReadVariableOp�
lstm_683/lstm_cell_683/BiasAddBiasAddlstm_683/lstm_cell_683/add:z:05lstm_683/lstm_cell_683/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2 
lstm_683/lstm_cell_683/BiasAdd�
&lstm_683/lstm_cell_683/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2(
&lstm_683/lstm_cell_683/split/split_dim�
lstm_683/lstm_cell_683/splitSplit/lstm_683/lstm_cell_683/split/split_dim:output:0'lstm_683/lstm_cell_683/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_split2
lstm_683/lstm_cell_683/split�
lstm_683/lstm_cell_683/SigmoidSigmoid%lstm_683/lstm_cell_683/split:output:0*
T0*'
_output_shapes
:���������02 
lstm_683/lstm_cell_683/Sigmoid�
 lstm_683/lstm_cell_683/Sigmoid_1Sigmoid%lstm_683/lstm_cell_683/split:output:1*
T0*'
_output_shapes
:���������02"
 lstm_683/lstm_cell_683/Sigmoid_1�
lstm_683/lstm_cell_683/mulMul$lstm_683/lstm_cell_683/Sigmoid_1:y:0lstm_683/zeros_1:output:0*
T0*'
_output_shapes
:���������02
lstm_683/lstm_cell_683/mul�
lstm_683/lstm_cell_683/ReluRelu%lstm_683/lstm_cell_683/split:output:2*
T0*'
_output_shapes
:���������02
lstm_683/lstm_cell_683/Relu�
lstm_683/lstm_cell_683/mul_1Mul"lstm_683/lstm_cell_683/Sigmoid:y:0)lstm_683/lstm_cell_683/Relu:activations:0*
T0*'
_output_shapes
:���������02
lstm_683/lstm_cell_683/mul_1�
lstm_683/lstm_cell_683/add_1AddV2lstm_683/lstm_cell_683/mul:z:0 lstm_683/lstm_cell_683/mul_1:z:0*
T0*'
_output_shapes
:���������02
lstm_683/lstm_cell_683/add_1�
 lstm_683/lstm_cell_683/Sigmoid_2Sigmoid%lstm_683/lstm_cell_683/split:output:3*
T0*'
_output_shapes
:���������02"
 lstm_683/lstm_cell_683/Sigmoid_2�
lstm_683/lstm_cell_683/Relu_1Relu lstm_683/lstm_cell_683/add_1:z:0*
T0*'
_output_shapes
:���������02
lstm_683/lstm_cell_683/Relu_1�
lstm_683/lstm_cell_683/mul_2Mul$lstm_683/lstm_cell_683/Sigmoid_2:y:0+lstm_683/lstm_cell_683/Relu_1:activations:0*
T0*'
_output_shapes
:���������02
lstm_683/lstm_cell_683/mul_2�
&lstm_683/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   2(
&lstm_683/TensorArrayV2_1/element_shape�
lstm_683/TensorArrayV2_1TensorListReserve/lstm_683/TensorArrayV2_1/element_shape:output:0!lstm_683/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_683/TensorArrayV2_1`
lstm_683/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_683/time�
!lstm_683/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2#
!lstm_683/while/maximum_iterations|
lstm_683/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_683/while/loop_counter�
lstm_683/whileWhile$lstm_683/while/loop_counter:output:0*lstm_683/while/maximum_iterations:output:0lstm_683/time:output:0!lstm_683/TensorArrayV2_1:handle:0lstm_683/zeros:output:0lstm_683/zeros_1:output:0!lstm_683/strided_slice_1:output:0@lstm_683/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_683_lstm_cell_683_matmul_readvariableop_resource7lstm_683_lstm_cell_683_matmul_1_readvariableop_resource6lstm_683_lstm_cell_683_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������0:���������0: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_683_while_body_1490243*'
condR
lstm_683_while_cond_1490242*K
output_shapes:
8: : : : :���������0:���������0: : : : : *
parallel_iterations 2
lstm_683/while�
9lstm_683/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   2;
9lstm_683/TensorArrayV2Stack/TensorListStack/element_shape�
+lstm_683/TensorArrayV2Stack/TensorListStackTensorListStacklstm_683/while:output:3Blstm_683/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������0*
element_dtype02-
+lstm_683/TensorArrayV2Stack/TensorListStack�
lstm_683/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2 
lstm_683/strided_slice_3/stack�
 lstm_683/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2"
 lstm_683/strided_slice_3/stack_1�
 lstm_683/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_683/strided_slice_3/stack_2�
lstm_683/strided_slice_3StridedSlice4lstm_683/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_683/strided_slice_3/stack:output:0)lstm_683/strided_slice_3/stack_1:output:0)lstm_683/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������0*
shrink_axis_mask2
lstm_683/strided_slice_3�
lstm_683/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_683/transpose_1/perm�
lstm_683/transpose_1	Transpose4lstm_683/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_683/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������02
lstm_683/transpose_1x
lstm_683/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_683/runtime{
dropout_681/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�5�?2
dropout_681/dropout/Const�
dropout_681/dropout/MulMullstm_683/transpose_1:y:0"dropout_681/dropout/Const:output:0*
T0*+
_output_shapes
:���������02
dropout_681/dropout/Mul~
dropout_681/dropout/ShapeShapelstm_683/transpose_1:y:0*
T0*
_output_shapes
:2
dropout_681/dropout/Shape�
0dropout_681/dropout/random_uniform/RandomUniformRandomUniform"dropout_681/dropout/Shape:output:0*
T0*+
_output_shapes
:���������0*
dtype0*

seed*22
0dropout_681/dropout/random_uniform/RandomUniform�
"dropout_681/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *FN�>2$
"dropout_681/dropout/GreaterEqual/y�
 dropout_681/dropout/GreaterEqualGreaterEqual9dropout_681/dropout/random_uniform/RandomUniform:output:0+dropout_681/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:���������02"
 dropout_681/dropout/GreaterEqual�
dropout_681/dropout/CastCast$dropout_681/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:���������02
dropout_681/dropout/Cast�
dropout_681/dropout/Mul_1Muldropout_681/dropout/Mul:z:0dropout_681/dropout/Cast:y:0*
T0*+
_output_shapes
:���������02
dropout_681/dropout/Mul_1m
lstm_684/ShapeShapedropout_681/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
lstm_684/Shape�
lstm_684/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_684/strided_slice/stack�
lstm_684/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_684/strided_slice/stack_1�
lstm_684/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_684/strided_slice/stack_2�
lstm_684/strided_sliceStridedSlicelstm_684/Shape:output:0%lstm_684/strided_slice/stack:output:0'lstm_684/strided_slice/stack_1:output:0'lstm_684/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_684/strided_slicet
lstm_684/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :02
lstm_684/zeros/packed/1�
lstm_684/zeros/packedPacklstm_684/strided_slice:output:0 lstm_684/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_684/zeros/packedq
lstm_684/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_684/zeros/Const�
lstm_684/zerosFilllstm_684/zeros/packed:output:0lstm_684/zeros/Const:output:0*
T0*'
_output_shapes
:���������02
lstm_684/zerosx
lstm_684/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :02
lstm_684/zeros_1/packed/1�
lstm_684/zeros_1/packedPacklstm_684/strided_slice:output:0"lstm_684/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_684/zeros_1/packedu
lstm_684/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_684/zeros_1/Const�
lstm_684/zeros_1Fill lstm_684/zeros_1/packed:output:0lstm_684/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������02
lstm_684/zeros_1�
lstm_684/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_684/transpose/perm�
lstm_684/transpose	Transposedropout_681/dropout/Mul_1:z:0 lstm_684/transpose/perm:output:0*
T0*+
_output_shapes
:���������02
lstm_684/transposej
lstm_684/Shape_1Shapelstm_684/transpose:y:0*
T0*
_output_shapes
:2
lstm_684/Shape_1�
lstm_684/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_684/strided_slice_1/stack�
 lstm_684/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_684/strided_slice_1/stack_1�
 lstm_684/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_684/strided_slice_1/stack_2�
lstm_684/strided_slice_1StridedSlicelstm_684/Shape_1:output:0'lstm_684/strided_slice_1/stack:output:0)lstm_684/strided_slice_1/stack_1:output:0)lstm_684/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_684/strided_slice_1�
$lstm_684/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2&
$lstm_684/TensorArrayV2/element_shape�
lstm_684/TensorArrayV2TensorListReserve-lstm_684/TensorArrayV2/element_shape:output:0!lstm_684/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_684/TensorArrayV2�
>lstm_684/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   2@
>lstm_684/TensorArrayUnstack/TensorListFromTensor/element_shape�
0lstm_684/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_684/transpose:y:0Glstm_684/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type022
0lstm_684/TensorArrayUnstack/TensorListFromTensor�
lstm_684/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_684/strided_slice_2/stack�
 lstm_684/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_684/strided_slice_2/stack_1�
 lstm_684/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_684/strided_slice_2/stack_2�
lstm_684/strided_slice_2StridedSlicelstm_684/transpose:y:0'lstm_684/strided_slice_2/stack:output:0)lstm_684/strided_slice_2/stack_1:output:0)lstm_684/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������0*
shrink_axis_mask2
lstm_684/strided_slice_2�
,lstm_684/lstm_cell_684/MatMul/ReadVariableOpReadVariableOp5lstm_684_lstm_cell_684_matmul_readvariableop_resource*
_output_shapes
:	0�*
dtype02.
,lstm_684/lstm_cell_684/MatMul/ReadVariableOp�
lstm_684/lstm_cell_684/MatMulMatMul!lstm_684/strided_slice_2:output:04lstm_684/lstm_cell_684/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_684/lstm_cell_684/MatMul�
.lstm_684/lstm_cell_684/MatMul_1/ReadVariableOpReadVariableOp7lstm_684_lstm_cell_684_matmul_1_readvariableop_resource*
_output_shapes
:	0�*
dtype020
.lstm_684/lstm_cell_684/MatMul_1/ReadVariableOp�
lstm_684/lstm_cell_684/MatMul_1MatMullstm_684/zeros:output:06lstm_684/lstm_cell_684/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2!
lstm_684/lstm_cell_684/MatMul_1�
lstm_684/lstm_cell_684/addAddV2'lstm_684/lstm_cell_684/MatMul:product:0)lstm_684/lstm_cell_684/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_684/lstm_cell_684/add�
-lstm_684/lstm_cell_684/BiasAdd/ReadVariableOpReadVariableOp6lstm_684_lstm_cell_684_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02/
-lstm_684/lstm_cell_684/BiasAdd/ReadVariableOp�
lstm_684/lstm_cell_684/BiasAddBiasAddlstm_684/lstm_cell_684/add:z:05lstm_684/lstm_cell_684/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2 
lstm_684/lstm_cell_684/BiasAdd�
&lstm_684/lstm_cell_684/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2(
&lstm_684/lstm_cell_684/split/split_dim�
lstm_684/lstm_cell_684/splitSplit/lstm_684/lstm_cell_684/split/split_dim:output:0'lstm_684/lstm_cell_684/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_split2
lstm_684/lstm_cell_684/split�
lstm_684/lstm_cell_684/SigmoidSigmoid%lstm_684/lstm_cell_684/split:output:0*
T0*'
_output_shapes
:���������02 
lstm_684/lstm_cell_684/Sigmoid�
 lstm_684/lstm_cell_684/Sigmoid_1Sigmoid%lstm_684/lstm_cell_684/split:output:1*
T0*'
_output_shapes
:���������02"
 lstm_684/lstm_cell_684/Sigmoid_1�
lstm_684/lstm_cell_684/mulMul$lstm_684/lstm_cell_684/Sigmoid_1:y:0lstm_684/zeros_1:output:0*
T0*'
_output_shapes
:���������02
lstm_684/lstm_cell_684/mul�
lstm_684/lstm_cell_684/ReluRelu%lstm_684/lstm_cell_684/split:output:2*
T0*'
_output_shapes
:���������02
lstm_684/lstm_cell_684/Relu�
lstm_684/lstm_cell_684/mul_1Mul"lstm_684/lstm_cell_684/Sigmoid:y:0)lstm_684/lstm_cell_684/Relu:activations:0*
T0*'
_output_shapes
:���������02
lstm_684/lstm_cell_684/mul_1�
lstm_684/lstm_cell_684/add_1AddV2lstm_684/lstm_cell_684/mul:z:0 lstm_684/lstm_cell_684/mul_1:z:0*
T0*'
_output_shapes
:���������02
lstm_684/lstm_cell_684/add_1�
 lstm_684/lstm_cell_684/Sigmoid_2Sigmoid%lstm_684/lstm_cell_684/split:output:3*
T0*'
_output_shapes
:���������02"
 lstm_684/lstm_cell_684/Sigmoid_2�
lstm_684/lstm_cell_684/Relu_1Relu lstm_684/lstm_cell_684/add_1:z:0*
T0*'
_output_shapes
:���������02
lstm_684/lstm_cell_684/Relu_1�
lstm_684/lstm_cell_684/mul_2Mul$lstm_684/lstm_cell_684/Sigmoid_2:y:0+lstm_684/lstm_cell_684/Relu_1:activations:0*
T0*'
_output_shapes
:���������02
lstm_684/lstm_cell_684/mul_2�
&lstm_684/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   2(
&lstm_684/TensorArrayV2_1/element_shape�
lstm_684/TensorArrayV2_1TensorListReserve/lstm_684/TensorArrayV2_1/element_shape:output:0!lstm_684/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_684/TensorArrayV2_1`
lstm_684/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_684/time�
!lstm_684/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2#
!lstm_684/while/maximum_iterations|
lstm_684/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_684/while/loop_counter�
lstm_684/whileWhile$lstm_684/while/loop_counter:output:0*lstm_684/while/maximum_iterations:output:0lstm_684/time:output:0!lstm_684/TensorArrayV2_1:handle:0lstm_684/zeros:output:0lstm_684/zeros_1:output:0!lstm_684/strided_slice_1:output:0@lstm_684/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_684_lstm_cell_684_matmul_readvariableop_resource7lstm_684_lstm_cell_684_matmul_1_readvariableop_resource6lstm_684_lstm_cell_684_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������0:���������0: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_684_while_body_1490390*'
condR
lstm_684_while_cond_1490389*K
output_shapes:
8: : : : :���������0:���������0: : : : : *
parallel_iterations 2
lstm_684/while�
9lstm_684/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   2;
9lstm_684/TensorArrayV2Stack/TensorListStack/element_shape�
+lstm_684/TensorArrayV2Stack/TensorListStackTensorListStacklstm_684/while:output:3Blstm_684/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������0*
element_dtype02-
+lstm_684/TensorArrayV2Stack/TensorListStack�
lstm_684/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2 
lstm_684/strided_slice_3/stack�
 lstm_684/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2"
 lstm_684/strided_slice_3/stack_1�
 lstm_684/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_684/strided_slice_3/stack_2�
lstm_684/strided_slice_3StridedSlice4lstm_684/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_684/strided_slice_3/stack:output:0)lstm_684/strided_slice_3/stack_1:output:0)lstm_684/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������0*
shrink_axis_mask2
lstm_684/strided_slice_3�
lstm_684/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_684/transpose_1/perm�
lstm_684/transpose_1	Transpose4lstm_684/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_684/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������02
lstm_684/transpose_1x
lstm_684/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_684/runtime{
dropout_682/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�5�?2
dropout_682/dropout/Const�
dropout_682/dropout/MulMullstm_684/transpose_1:y:0"dropout_682/dropout/Const:output:0*
T0*+
_output_shapes
:���������02
dropout_682/dropout/Mul~
dropout_682/dropout/ShapeShapelstm_684/transpose_1:y:0*
T0*
_output_shapes
:2
dropout_682/dropout/Shape�
0dropout_682/dropout/random_uniform/RandomUniformRandomUniform"dropout_682/dropout/Shape:output:0*
T0*+
_output_shapes
:���������0*
dtype0*

seed**
seed222
0dropout_682/dropout/random_uniform/RandomUniform�
"dropout_682/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *FN�>2$
"dropout_682/dropout/GreaterEqual/y�
 dropout_682/dropout/GreaterEqualGreaterEqual9dropout_682/dropout/random_uniform/RandomUniform:output:0+dropout_682/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:���������02"
 dropout_682/dropout/GreaterEqual�
dropout_682/dropout/CastCast$dropout_682/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:���������02
dropout_682/dropout/Cast�
dropout_682/dropout/Mul_1Muldropout_682/dropout/Mul:z:0dropout_682/dropout/Cast:y:0*
T0*+
_output_shapes
:���������02
dropout_682/dropout/Mul_1m
lstm_685/ShapeShapedropout_682/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
lstm_685/Shape�
lstm_685/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_685/strided_slice/stack�
lstm_685/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_685/strided_slice/stack_1�
lstm_685/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_685/strided_slice/stack_2�
lstm_685/strided_sliceStridedSlicelstm_685/Shape:output:0%lstm_685/strided_slice/stack:output:0'lstm_685/strided_slice/stack_1:output:0'lstm_685/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_685/strided_slicet
lstm_685/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :\2
lstm_685/zeros/packed/1�
lstm_685/zeros/packedPacklstm_685/strided_slice:output:0 lstm_685/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_685/zeros/packedq
lstm_685/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_685/zeros/Const�
lstm_685/zerosFilllstm_685/zeros/packed:output:0lstm_685/zeros/Const:output:0*
T0*'
_output_shapes
:���������\2
lstm_685/zerosx
lstm_685/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :\2
lstm_685/zeros_1/packed/1�
lstm_685/zeros_1/packedPacklstm_685/strided_slice:output:0"lstm_685/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_685/zeros_1/packedu
lstm_685/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_685/zeros_1/Const�
lstm_685/zeros_1Fill lstm_685/zeros_1/packed:output:0lstm_685/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������\2
lstm_685/zeros_1�
lstm_685/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_685/transpose/perm�
lstm_685/transpose	Transposedropout_682/dropout/Mul_1:z:0 lstm_685/transpose/perm:output:0*
T0*+
_output_shapes
:���������02
lstm_685/transposej
lstm_685/Shape_1Shapelstm_685/transpose:y:0*
T0*
_output_shapes
:2
lstm_685/Shape_1�
lstm_685/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_685/strided_slice_1/stack�
 lstm_685/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_685/strided_slice_1/stack_1�
 lstm_685/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_685/strided_slice_1/stack_2�
lstm_685/strided_slice_1StridedSlicelstm_685/Shape_1:output:0'lstm_685/strided_slice_1/stack:output:0)lstm_685/strided_slice_1/stack_1:output:0)lstm_685/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_685/strided_slice_1�
$lstm_685/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2&
$lstm_685/TensorArrayV2/element_shape�
lstm_685/TensorArrayV2TensorListReserve-lstm_685/TensorArrayV2/element_shape:output:0!lstm_685/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_685/TensorArrayV2�
>lstm_685/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   2@
>lstm_685/TensorArrayUnstack/TensorListFromTensor/element_shape�
0lstm_685/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_685/transpose:y:0Glstm_685/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type022
0lstm_685/TensorArrayUnstack/TensorListFromTensor�
lstm_685/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_685/strided_slice_2/stack�
 lstm_685/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_685/strided_slice_2/stack_1�
 lstm_685/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_685/strided_slice_2/stack_2�
lstm_685/strided_slice_2StridedSlicelstm_685/transpose:y:0'lstm_685/strided_slice_2/stack:output:0)lstm_685/strided_slice_2/stack_1:output:0)lstm_685/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������0*
shrink_axis_mask2
lstm_685/strided_slice_2�
,lstm_685/lstm_cell_685/MatMul/ReadVariableOpReadVariableOp5lstm_685_lstm_cell_685_matmul_readvariableop_resource*
_output_shapes
:	0�*
dtype02.
,lstm_685/lstm_cell_685/MatMul/ReadVariableOp�
lstm_685/lstm_cell_685/MatMulMatMul!lstm_685/strided_slice_2:output:04lstm_685/lstm_cell_685/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_685/lstm_cell_685/MatMul�
.lstm_685/lstm_cell_685/MatMul_1/ReadVariableOpReadVariableOp7lstm_685_lstm_cell_685_matmul_1_readvariableop_resource*
_output_shapes
:	\�*
dtype020
.lstm_685/lstm_cell_685/MatMul_1/ReadVariableOp�
lstm_685/lstm_cell_685/MatMul_1MatMullstm_685/zeros:output:06lstm_685/lstm_cell_685/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2!
lstm_685/lstm_cell_685/MatMul_1�
lstm_685/lstm_cell_685/addAddV2'lstm_685/lstm_cell_685/MatMul:product:0)lstm_685/lstm_cell_685/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_685/lstm_cell_685/add�
-lstm_685/lstm_cell_685/BiasAdd/ReadVariableOpReadVariableOp6lstm_685_lstm_cell_685_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02/
-lstm_685/lstm_cell_685/BiasAdd/ReadVariableOp�
lstm_685/lstm_cell_685/BiasAddBiasAddlstm_685/lstm_cell_685/add:z:05lstm_685/lstm_cell_685/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2 
lstm_685/lstm_cell_685/BiasAdd�
&lstm_685/lstm_cell_685/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2(
&lstm_685/lstm_cell_685/split/split_dim�
lstm_685/lstm_cell_685/splitSplit/lstm_685/lstm_cell_685/split/split_dim:output:0'lstm_685/lstm_cell_685/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������\:���������\:���������\:���������\*
	num_split2
lstm_685/lstm_cell_685/split�
lstm_685/lstm_cell_685/SigmoidSigmoid%lstm_685/lstm_cell_685/split:output:0*
T0*'
_output_shapes
:���������\2 
lstm_685/lstm_cell_685/Sigmoid�
 lstm_685/lstm_cell_685/Sigmoid_1Sigmoid%lstm_685/lstm_cell_685/split:output:1*
T0*'
_output_shapes
:���������\2"
 lstm_685/lstm_cell_685/Sigmoid_1�
lstm_685/lstm_cell_685/mulMul$lstm_685/lstm_cell_685/Sigmoid_1:y:0lstm_685/zeros_1:output:0*
T0*'
_output_shapes
:���������\2
lstm_685/lstm_cell_685/mul�
lstm_685/lstm_cell_685/ReluRelu%lstm_685/lstm_cell_685/split:output:2*
T0*'
_output_shapes
:���������\2
lstm_685/lstm_cell_685/Relu�
lstm_685/lstm_cell_685/mul_1Mul"lstm_685/lstm_cell_685/Sigmoid:y:0)lstm_685/lstm_cell_685/Relu:activations:0*
T0*'
_output_shapes
:���������\2
lstm_685/lstm_cell_685/mul_1�
lstm_685/lstm_cell_685/add_1AddV2lstm_685/lstm_cell_685/mul:z:0 lstm_685/lstm_cell_685/mul_1:z:0*
T0*'
_output_shapes
:���������\2
lstm_685/lstm_cell_685/add_1�
 lstm_685/lstm_cell_685/Sigmoid_2Sigmoid%lstm_685/lstm_cell_685/split:output:3*
T0*'
_output_shapes
:���������\2"
 lstm_685/lstm_cell_685/Sigmoid_2�
lstm_685/lstm_cell_685/Relu_1Relu lstm_685/lstm_cell_685/add_1:z:0*
T0*'
_output_shapes
:���������\2
lstm_685/lstm_cell_685/Relu_1�
lstm_685/lstm_cell_685/mul_2Mul$lstm_685/lstm_cell_685/Sigmoid_2:y:0+lstm_685/lstm_cell_685/Relu_1:activations:0*
T0*'
_output_shapes
:���������\2
lstm_685/lstm_cell_685/mul_2�
&lstm_685/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����\   2(
&lstm_685/TensorArrayV2_1/element_shape�
lstm_685/TensorArrayV2_1TensorListReserve/lstm_685/TensorArrayV2_1/element_shape:output:0!lstm_685/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_685/TensorArrayV2_1`
lstm_685/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_685/time�
!lstm_685/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2#
!lstm_685/while/maximum_iterations|
lstm_685/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_685/while/loop_counter�
lstm_685/whileWhile$lstm_685/while/loop_counter:output:0*lstm_685/while/maximum_iterations:output:0lstm_685/time:output:0!lstm_685/TensorArrayV2_1:handle:0lstm_685/zeros:output:0lstm_685/zeros_1:output:0!lstm_685/strided_slice_1:output:0@lstm_685/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_685_lstm_cell_685_matmul_readvariableop_resource7lstm_685_lstm_cell_685_matmul_1_readvariableop_resource6lstm_685_lstm_cell_685_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������\:���������\: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_685_while_body_1490537*'
condR
lstm_685_while_cond_1490536*K
output_shapes:
8: : : : :���������\:���������\: : : : : *
parallel_iterations 2
lstm_685/while�
9lstm_685/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����\   2;
9lstm_685/TensorArrayV2Stack/TensorListStack/element_shape�
+lstm_685/TensorArrayV2Stack/TensorListStackTensorListStacklstm_685/while:output:3Blstm_685/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������\*
element_dtype02-
+lstm_685/TensorArrayV2Stack/TensorListStack�
lstm_685/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2 
lstm_685/strided_slice_3/stack�
 lstm_685/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2"
 lstm_685/strided_slice_3/stack_1�
 lstm_685/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_685/strided_slice_3/stack_2�
lstm_685/strided_slice_3StridedSlice4lstm_685/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_685/strided_slice_3/stack:output:0)lstm_685/strided_slice_3/stack_1:output:0)lstm_685/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������\*
shrink_axis_mask2
lstm_685/strided_slice_3�
lstm_685/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_685/transpose_1/perm�
lstm_685/transpose_1	Transpose4lstm_685/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_685/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������\2
lstm_685/transpose_1x
lstm_685/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_685/runtime{
dropout_683/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�5�?2
dropout_683/dropout/Const�
dropout_683/dropout/MulMul!lstm_685/strided_slice_3:output:0"dropout_683/dropout/Const:output:0*
T0*'
_output_shapes
:���������\2
dropout_683/dropout/Mul�
dropout_683/dropout/ShapeShape!lstm_685/strided_slice_3:output:0*
T0*
_output_shapes
:2
dropout_683/dropout/Shape�
0dropout_683/dropout/random_uniform/RandomUniformRandomUniform"dropout_683/dropout/Shape:output:0*
T0*'
_output_shapes
:���������\*
dtype0*

seed**
seed222
0dropout_683/dropout/random_uniform/RandomUniform�
"dropout_683/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *FN�>2$
"dropout_683/dropout/GreaterEqual/y�
 dropout_683/dropout/GreaterEqualGreaterEqual9dropout_683/dropout/random_uniform/RandomUniform:output:0+dropout_683/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������\2"
 dropout_683/dropout/GreaterEqual�
dropout_683/dropout/CastCast$dropout_683/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������\2
dropout_683/dropout/Cast�
dropout_683/dropout/Mul_1Muldropout_683/dropout/Mul:z:0dropout_683/dropout/Cast:y:0*
T0*'
_output_shapes
:���������\2
dropout_683/dropout/Mul_1�
dense_131/MatMul/ReadVariableOpReadVariableOp(dense_131_matmul_readvariableop_resource*
_output_shapes

:\*
dtype02!
dense_131/MatMul/ReadVariableOp�
dense_131/MatMulMatMuldropout_683/dropout/Mul_1:z:0'dense_131/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_131/MatMul�
 dense_131/BiasAdd/ReadVariableOpReadVariableOp)dense_131_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_131/BiasAdd/ReadVariableOp�
dense_131/BiasAddBiasAdddense_131/MatMul:product:0(dense_131/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_131/BiasAddu
IdentityIdentitydense_131/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp!^dense_131/BiasAdd/ReadVariableOp ^dense_131/MatMul/ReadVariableOp.^lstm_683/lstm_cell_683/BiasAdd/ReadVariableOp-^lstm_683/lstm_cell_683/MatMul/ReadVariableOp/^lstm_683/lstm_cell_683/MatMul_1/ReadVariableOp^lstm_683/while.^lstm_684/lstm_cell_684/BiasAdd/ReadVariableOp-^lstm_684/lstm_cell_684/MatMul/ReadVariableOp/^lstm_684/lstm_cell_684/MatMul_1/ReadVariableOp^lstm_684/while.^lstm_685/lstm_cell_685/BiasAdd/ReadVariableOp-^lstm_685/lstm_cell_685/MatMul/ReadVariableOp/^lstm_685/lstm_cell_685/MatMul_1/ReadVariableOp^lstm_685/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2D
 dense_131/BiasAdd/ReadVariableOp dense_131/BiasAdd/ReadVariableOp2B
dense_131/MatMul/ReadVariableOpdense_131/MatMul/ReadVariableOp2^
-lstm_683/lstm_cell_683/BiasAdd/ReadVariableOp-lstm_683/lstm_cell_683/BiasAdd/ReadVariableOp2\
,lstm_683/lstm_cell_683/MatMul/ReadVariableOp,lstm_683/lstm_cell_683/MatMul/ReadVariableOp2`
.lstm_683/lstm_cell_683/MatMul_1/ReadVariableOp.lstm_683/lstm_cell_683/MatMul_1/ReadVariableOp2 
lstm_683/whilelstm_683/while2^
-lstm_684/lstm_cell_684/BiasAdd/ReadVariableOp-lstm_684/lstm_cell_684/BiasAdd/ReadVariableOp2\
,lstm_684/lstm_cell_684/MatMul/ReadVariableOp,lstm_684/lstm_cell_684/MatMul/ReadVariableOp2`
.lstm_684/lstm_cell_684/MatMul_1/ReadVariableOp.lstm_684/lstm_cell_684/MatMul_1/ReadVariableOp2 
lstm_684/whilelstm_684/while2^
-lstm_685/lstm_cell_685/BiasAdd/ReadVariableOp-lstm_685/lstm_cell_685/BiasAdd/ReadVariableOp2\
,lstm_685/lstm_cell_685/MatMul/ReadVariableOp,lstm_685/lstm_cell_685/MatMul/ReadVariableOp2`
.lstm_685/lstm_cell_685/MatMul_1/ReadVariableOp.lstm_685/lstm_cell_685/MatMul_1/ReadVariableOp2 
lstm_685/whilelstm_685/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�L
�

lstm_684_while_body_1489953.
*lstm_684_while_lstm_684_while_loop_counter4
0lstm_684_while_lstm_684_while_maximum_iterations
lstm_684_while_placeholder 
lstm_684_while_placeholder_1 
lstm_684_while_placeholder_2 
lstm_684_while_placeholder_3-
)lstm_684_while_lstm_684_strided_slice_1_0i
elstm_684_while_tensorarrayv2read_tensorlistgetitem_lstm_684_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_684_while_lstm_cell_684_matmul_readvariableop_resource_0:	0�R
?lstm_684_while_lstm_cell_684_matmul_1_readvariableop_resource_0:	0�M
>lstm_684_while_lstm_cell_684_biasadd_readvariableop_resource_0:	�
lstm_684_while_identity
lstm_684_while_identity_1
lstm_684_while_identity_2
lstm_684_while_identity_3
lstm_684_while_identity_4
lstm_684_while_identity_5+
'lstm_684_while_lstm_684_strided_slice_1g
clstm_684_while_tensorarrayv2read_tensorlistgetitem_lstm_684_tensorarrayunstack_tensorlistfromtensorN
;lstm_684_while_lstm_cell_684_matmul_readvariableop_resource:	0�P
=lstm_684_while_lstm_cell_684_matmul_1_readvariableop_resource:	0�K
<lstm_684_while_lstm_cell_684_biasadd_readvariableop_resource:	���3lstm_684/while/lstm_cell_684/BiasAdd/ReadVariableOp�2lstm_684/while/lstm_cell_684/MatMul/ReadVariableOp�4lstm_684/while/lstm_cell_684/MatMul_1/ReadVariableOp�
@lstm_684/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   2B
@lstm_684/while/TensorArrayV2Read/TensorListGetItem/element_shape�
2lstm_684/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_684_while_tensorarrayv2read_tensorlistgetitem_lstm_684_tensorarrayunstack_tensorlistfromtensor_0lstm_684_while_placeholderIlstm_684/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������0*
element_dtype024
2lstm_684/while/TensorArrayV2Read/TensorListGetItem�
2lstm_684/while/lstm_cell_684/MatMul/ReadVariableOpReadVariableOp=lstm_684_while_lstm_cell_684_matmul_readvariableop_resource_0*
_output_shapes
:	0�*
dtype024
2lstm_684/while/lstm_cell_684/MatMul/ReadVariableOp�
#lstm_684/while/lstm_cell_684/MatMulMatMul9lstm_684/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_684/while/lstm_cell_684/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2%
#lstm_684/while/lstm_cell_684/MatMul�
4lstm_684/while/lstm_cell_684/MatMul_1/ReadVariableOpReadVariableOp?lstm_684_while_lstm_cell_684_matmul_1_readvariableop_resource_0*
_output_shapes
:	0�*
dtype026
4lstm_684/while/lstm_cell_684/MatMul_1/ReadVariableOp�
%lstm_684/while/lstm_cell_684/MatMul_1MatMullstm_684_while_placeholder_2<lstm_684/while/lstm_cell_684/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2'
%lstm_684/while/lstm_cell_684/MatMul_1�
 lstm_684/while/lstm_cell_684/addAddV2-lstm_684/while/lstm_cell_684/MatMul:product:0/lstm_684/while/lstm_cell_684/MatMul_1:product:0*
T0*(
_output_shapes
:����������2"
 lstm_684/while/lstm_cell_684/add�
3lstm_684/while/lstm_cell_684/BiasAdd/ReadVariableOpReadVariableOp>lstm_684_while_lstm_cell_684_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype025
3lstm_684/while/lstm_cell_684/BiasAdd/ReadVariableOp�
$lstm_684/while/lstm_cell_684/BiasAddBiasAdd$lstm_684/while/lstm_cell_684/add:z:0;lstm_684/while/lstm_cell_684/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2&
$lstm_684/while/lstm_cell_684/BiasAdd�
,lstm_684/while/lstm_cell_684/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,lstm_684/while/lstm_cell_684/split/split_dim�
"lstm_684/while/lstm_cell_684/splitSplit5lstm_684/while/lstm_cell_684/split/split_dim:output:0-lstm_684/while/lstm_cell_684/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_split2$
"lstm_684/while/lstm_cell_684/split�
$lstm_684/while/lstm_cell_684/SigmoidSigmoid+lstm_684/while/lstm_cell_684/split:output:0*
T0*'
_output_shapes
:���������02&
$lstm_684/while/lstm_cell_684/Sigmoid�
&lstm_684/while/lstm_cell_684/Sigmoid_1Sigmoid+lstm_684/while/lstm_cell_684/split:output:1*
T0*'
_output_shapes
:���������02(
&lstm_684/while/lstm_cell_684/Sigmoid_1�
 lstm_684/while/lstm_cell_684/mulMul*lstm_684/while/lstm_cell_684/Sigmoid_1:y:0lstm_684_while_placeholder_3*
T0*'
_output_shapes
:���������02"
 lstm_684/while/lstm_cell_684/mul�
!lstm_684/while/lstm_cell_684/ReluRelu+lstm_684/while/lstm_cell_684/split:output:2*
T0*'
_output_shapes
:���������02#
!lstm_684/while/lstm_cell_684/Relu�
"lstm_684/while/lstm_cell_684/mul_1Mul(lstm_684/while/lstm_cell_684/Sigmoid:y:0/lstm_684/while/lstm_cell_684/Relu:activations:0*
T0*'
_output_shapes
:���������02$
"lstm_684/while/lstm_cell_684/mul_1�
"lstm_684/while/lstm_cell_684/add_1AddV2$lstm_684/while/lstm_cell_684/mul:z:0&lstm_684/while/lstm_cell_684/mul_1:z:0*
T0*'
_output_shapes
:���������02$
"lstm_684/while/lstm_cell_684/add_1�
&lstm_684/while/lstm_cell_684/Sigmoid_2Sigmoid+lstm_684/while/lstm_cell_684/split:output:3*
T0*'
_output_shapes
:���������02(
&lstm_684/while/lstm_cell_684/Sigmoid_2�
#lstm_684/while/lstm_cell_684/Relu_1Relu&lstm_684/while/lstm_cell_684/add_1:z:0*
T0*'
_output_shapes
:���������02%
#lstm_684/while/lstm_cell_684/Relu_1�
"lstm_684/while/lstm_cell_684/mul_2Mul*lstm_684/while/lstm_cell_684/Sigmoid_2:y:01lstm_684/while/lstm_cell_684/Relu_1:activations:0*
T0*'
_output_shapes
:���������02$
"lstm_684/while/lstm_cell_684/mul_2�
3lstm_684/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_684_while_placeholder_1lstm_684_while_placeholder&lstm_684/while/lstm_cell_684/mul_2:z:0*
_output_shapes
: *
element_dtype025
3lstm_684/while/TensorArrayV2Write/TensorListSetItemn
lstm_684/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_684/while/add/y�
lstm_684/while/addAddV2lstm_684_while_placeholderlstm_684/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_684/while/addr
lstm_684/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_684/while/add_1/y�
lstm_684/while/add_1AddV2*lstm_684_while_lstm_684_while_loop_counterlstm_684/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_684/while/add_1�
lstm_684/while/IdentityIdentitylstm_684/while/add_1:z:0^lstm_684/while/NoOp*
T0*
_output_shapes
: 2
lstm_684/while/Identity�
lstm_684/while/Identity_1Identity0lstm_684_while_lstm_684_while_maximum_iterations^lstm_684/while/NoOp*
T0*
_output_shapes
: 2
lstm_684/while/Identity_1�
lstm_684/while/Identity_2Identitylstm_684/while/add:z:0^lstm_684/while/NoOp*
T0*
_output_shapes
: 2
lstm_684/while/Identity_2�
lstm_684/while/Identity_3IdentityClstm_684/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_684/while/NoOp*
T0*
_output_shapes
: 2
lstm_684/while/Identity_3�
lstm_684/while/Identity_4Identity&lstm_684/while/lstm_cell_684/mul_2:z:0^lstm_684/while/NoOp*
T0*'
_output_shapes
:���������02
lstm_684/while/Identity_4�
lstm_684/while/Identity_5Identity&lstm_684/while/lstm_cell_684/add_1:z:0^lstm_684/while/NoOp*
T0*'
_output_shapes
:���������02
lstm_684/while/Identity_5�
lstm_684/while/NoOpNoOp4^lstm_684/while/lstm_cell_684/BiasAdd/ReadVariableOp3^lstm_684/while/lstm_cell_684/MatMul/ReadVariableOp5^lstm_684/while/lstm_cell_684/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_684/while/NoOp";
lstm_684_while_identity lstm_684/while/Identity:output:0"?
lstm_684_while_identity_1"lstm_684/while/Identity_1:output:0"?
lstm_684_while_identity_2"lstm_684/while/Identity_2:output:0"?
lstm_684_while_identity_3"lstm_684/while/Identity_3:output:0"?
lstm_684_while_identity_4"lstm_684/while/Identity_4:output:0"?
lstm_684_while_identity_5"lstm_684/while/Identity_5:output:0"T
'lstm_684_while_lstm_684_strided_slice_1)lstm_684_while_lstm_684_strided_slice_1_0"~
<lstm_684_while_lstm_cell_684_biasadd_readvariableop_resource>lstm_684_while_lstm_cell_684_biasadd_readvariableop_resource_0"�
=lstm_684_while_lstm_cell_684_matmul_1_readvariableop_resource?lstm_684_while_lstm_cell_684_matmul_1_readvariableop_resource_0"|
;lstm_684_while_lstm_cell_684_matmul_readvariableop_resource=lstm_684_while_lstm_cell_684_matmul_readvariableop_resource_0"�
clstm_684_while_tensorarrayv2read_tensorlistgetitem_lstm_684_tensorarrayunstack_tensorlistfromtensorelstm_684_while_tensorarrayv2read_tensorlistgetitem_lstm_684_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������0:���������0: : : : : 2j
3lstm_684/while/lstm_cell_684/BiasAdd/ReadVariableOp3lstm_684/while/lstm_cell_684/BiasAdd/ReadVariableOp2h
2lstm_684/while/lstm_cell_684/MatMul/ReadVariableOp2lstm_684/while/lstm_cell_684/MatMul/ReadVariableOp2l
4lstm_684/while/lstm_cell_684/MatMul_1/ReadVariableOp4lstm_684/while/lstm_cell_684/MatMul_1/ReadVariableOp: 
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
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
: 
�U
�
E__inference_lstm_685_layer_call_and_return_conditional_losses_1492537

inputs?
,lstm_cell_685_matmul_readvariableop_resource:	0�A
.lstm_cell_685_matmul_1_readvariableop_resource:	\�<
-lstm_cell_685_biasadd_readvariableop_resource:	�
identity��$lstm_cell_685/BiasAdd/ReadVariableOp�#lstm_cell_685/MatMul/ReadVariableOp�%lstm_cell_685/MatMul_1/ReadVariableOp�whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :\2
zeros/packed/1�
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������\2
zerosf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :\2
zeros_1/packed/1�
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:���������\2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������02
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1�
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������2
TensorArrayV2/element_shape�
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2�
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   27
5TensorArrayUnstack/TensorListFromTensor/element_shape�
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������0*
shrink_axis_mask2
strided_slice_2�
#lstm_cell_685/MatMul/ReadVariableOpReadVariableOp,lstm_cell_685_matmul_readvariableop_resource*
_output_shapes
:	0�*
dtype02%
#lstm_cell_685/MatMul/ReadVariableOp�
lstm_cell_685/MatMulMatMulstrided_slice_2:output:0+lstm_cell_685/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_685/MatMul�
%lstm_cell_685/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_685_matmul_1_readvariableop_resource*
_output_shapes
:	\�*
dtype02'
%lstm_cell_685/MatMul_1/ReadVariableOp�
lstm_cell_685/MatMul_1MatMulzeros:output:0-lstm_cell_685/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_685/MatMul_1�
lstm_cell_685/addAddV2lstm_cell_685/MatMul:product:0 lstm_cell_685/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
lstm_cell_685/add�
$lstm_cell_685/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_685_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02&
$lstm_cell_685/BiasAdd/ReadVariableOp�
lstm_cell_685/BiasAddBiasAddlstm_cell_685/add:z:0,lstm_cell_685/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
lstm_cell_685/BiasAdd�
lstm_cell_685/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_685/split/split_dim�
lstm_cell_685/splitSplit&lstm_cell_685/split/split_dim:output:0lstm_cell_685/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������\:���������\:���������\:���������\*
	num_split2
lstm_cell_685/split�
lstm_cell_685/SigmoidSigmoidlstm_cell_685/split:output:0*
T0*'
_output_shapes
:���������\2
lstm_cell_685/Sigmoid�
lstm_cell_685/Sigmoid_1Sigmoidlstm_cell_685/split:output:1*
T0*'
_output_shapes
:���������\2
lstm_cell_685/Sigmoid_1�
lstm_cell_685/mulMullstm_cell_685/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������\2
lstm_cell_685/mul�
lstm_cell_685/ReluRelulstm_cell_685/split:output:2*
T0*'
_output_shapes
:���������\2
lstm_cell_685/Relu�
lstm_cell_685/mul_1Mullstm_cell_685/Sigmoid:y:0 lstm_cell_685/Relu:activations:0*
T0*'
_output_shapes
:���������\2
lstm_cell_685/mul_1�
lstm_cell_685/add_1AddV2lstm_cell_685/mul:z:0lstm_cell_685/mul_1:z:0*
T0*'
_output_shapes
:���������\2
lstm_cell_685/add_1�
lstm_cell_685/Sigmoid_2Sigmoidlstm_cell_685/split:output:3*
T0*'
_output_shapes
:���������\2
lstm_cell_685/Sigmoid_2
lstm_cell_685/Relu_1Relulstm_cell_685/add_1:z:0*
T0*'
_output_shapes
:���������\2
lstm_cell_685/Relu_1�
lstm_cell_685/mul_2Mullstm_cell_685/Sigmoid_2:y:0"lstm_cell_685/Relu_1:activations:0*
T0*'
_output_shapes
:���������\2
lstm_cell_685/mul_2�
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����\   2
TensorArrayV2_1/element_shape�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter�
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_685_matmul_readvariableop_resource.lstm_cell_685_matmul_1_readvariableop_resource-lstm_cell_685_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������\:���������\: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_1492453*
condR
while_cond_1492452*K
output_shapes:
8: : : : :���������\:���������\: : : : : *
parallel_iterations 2
while�
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����\   22
0TensorArrayV2Stack/TensorListStack/element_shape�
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������\*
element_dtype02$
"TensorArrayV2Stack/TensorListStack�
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������\*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm�
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������\2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimes
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������\2

Identity�
NoOpNoOp%^lstm_cell_685/BiasAdd/ReadVariableOp$^lstm_cell_685/MatMul/ReadVariableOp&^lstm_cell_685/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������0: : : 2L
$lstm_cell_685/BiasAdd/ReadVariableOp$lstm_cell_685/BiasAdd/ReadVariableOp2J
#lstm_cell_685/MatMul/ReadVariableOp#lstm_cell_685/MatMul/ReadVariableOp2N
%lstm_cell_685/MatMul_1/ReadVariableOp%lstm_cell_685/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������0
 
_user_specified_nameinputs
�L
�

lstm_685_while_body_1490093.
*lstm_685_while_lstm_685_while_loop_counter4
0lstm_685_while_lstm_685_while_maximum_iterations
lstm_685_while_placeholder 
lstm_685_while_placeholder_1 
lstm_685_while_placeholder_2 
lstm_685_while_placeholder_3-
)lstm_685_while_lstm_685_strided_slice_1_0i
elstm_685_while_tensorarrayv2read_tensorlistgetitem_lstm_685_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_685_while_lstm_cell_685_matmul_readvariableop_resource_0:	0�R
?lstm_685_while_lstm_cell_685_matmul_1_readvariableop_resource_0:	\�M
>lstm_685_while_lstm_cell_685_biasadd_readvariableop_resource_0:	�
lstm_685_while_identity
lstm_685_while_identity_1
lstm_685_while_identity_2
lstm_685_while_identity_3
lstm_685_while_identity_4
lstm_685_while_identity_5+
'lstm_685_while_lstm_685_strided_slice_1g
clstm_685_while_tensorarrayv2read_tensorlistgetitem_lstm_685_tensorarrayunstack_tensorlistfromtensorN
;lstm_685_while_lstm_cell_685_matmul_readvariableop_resource:	0�P
=lstm_685_while_lstm_cell_685_matmul_1_readvariableop_resource:	\�K
<lstm_685_while_lstm_cell_685_biasadd_readvariableop_resource:	���3lstm_685/while/lstm_cell_685/BiasAdd/ReadVariableOp�2lstm_685/while/lstm_cell_685/MatMul/ReadVariableOp�4lstm_685/while/lstm_cell_685/MatMul_1/ReadVariableOp�
@lstm_685/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   2B
@lstm_685/while/TensorArrayV2Read/TensorListGetItem/element_shape�
2lstm_685/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_685_while_tensorarrayv2read_tensorlistgetitem_lstm_685_tensorarrayunstack_tensorlistfromtensor_0lstm_685_while_placeholderIlstm_685/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������0*
element_dtype024
2lstm_685/while/TensorArrayV2Read/TensorListGetItem�
2lstm_685/while/lstm_cell_685/MatMul/ReadVariableOpReadVariableOp=lstm_685_while_lstm_cell_685_matmul_readvariableop_resource_0*
_output_shapes
:	0�*
dtype024
2lstm_685/while/lstm_cell_685/MatMul/ReadVariableOp�
#lstm_685/while/lstm_cell_685/MatMulMatMul9lstm_685/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_685/while/lstm_cell_685/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2%
#lstm_685/while/lstm_cell_685/MatMul�
4lstm_685/while/lstm_cell_685/MatMul_1/ReadVariableOpReadVariableOp?lstm_685_while_lstm_cell_685_matmul_1_readvariableop_resource_0*
_output_shapes
:	\�*
dtype026
4lstm_685/while/lstm_cell_685/MatMul_1/ReadVariableOp�
%lstm_685/while/lstm_cell_685/MatMul_1MatMullstm_685_while_placeholder_2<lstm_685/while/lstm_cell_685/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2'
%lstm_685/while/lstm_cell_685/MatMul_1�
 lstm_685/while/lstm_cell_685/addAddV2-lstm_685/while/lstm_cell_685/MatMul:product:0/lstm_685/while/lstm_cell_685/MatMul_1:product:0*
T0*(
_output_shapes
:����������2"
 lstm_685/while/lstm_cell_685/add�
3lstm_685/while/lstm_cell_685/BiasAdd/ReadVariableOpReadVariableOp>lstm_685_while_lstm_cell_685_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype025
3lstm_685/while/lstm_cell_685/BiasAdd/ReadVariableOp�
$lstm_685/while/lstm_cell_685/BiasAddBiasAdd$lstm_685/while/lstm_cell_685/add:z:0;lstm_685/while/lstm_cell_685/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2&
$lstm_685/while/lstm_cell_685/BiasAdd�
,lstm_685/while/lstm_cell_685/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,lstm_685/while/lstm_cell_685/split/split_dim�
"lstm_685/while/lstm_cell_685/splitSplit5lstm_685/while/lstm_cell_685/split/split_dim:output:0-lstm_685/while/lstm_cell_685/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������\:���������\:���������\:���������\*
	num_split2$
"lstm_685/while/lstm_cell_685/split�
$lstm_685/while/lstm_cell_685/SigmoidSigmoid+lstm_685/while/lstm_cell_685/split:output:0*
T0*'
_output_shapes
:���������\2&
$lstm_685/while/lstm_cell_685/Sigmoid�
&lstm_685/while/lstm_cell_685/Sigmoid_1Sigmoid+lstm_685/while/lstm_cell_685/split:output:1*
T0*'
_output_shapes
:���������\2(
&lstm_685/while/lstm_cell_685/Sigmoid_1�
 lstm_685/while/lstm_cell_685/mulMul*lstm_685/while/lstm_cell_685/Sigmoid_1:y:0lstm_685_while_placeholder_3*
T0*'
_output_shapes
:���������\2"
 lstm_685/while/lstm_cell_685/mul�
!lstm_685/while/lstm_cell_685/ReluRelu+lstm_685/while/lstm_cell_685/split:output:2*
T0*'
_output_shapes
:���������\2#
!lstm_685/while/lstm_cell_685/Relu�
"lstm_685/while/lstm_cell_685/mul_1Mul(lstm_685/while/lstm_cell_685/Sigmoid:y:0/lstm_685/while/lstm_cell_685/Relu:activations:0*
T0*'
_output_shapes
:���������\2$
"lstm_685/while/lstm_cell_685/mul_1�
"lstm_685/while/lstm_cell_685/add_1AddV2$lstm_685/while/lstm_cell_685/mul:z:0&lstm_685/while/lstm_cell_685/mul_1:z:0*
T0*'
_output_shapes
:���������\2$
"lstm_685/while/lstm_cell_685/add_1�
&lstm_685/while/lstm_cell_685/Sigmoid_2Sigmoid+lstm_685/while/lstm_cell_685/split:output:3*
T0*'
_output_shapes
:���������\2(
&lstm_685/while/lstm_cell_685/Sigmoid_2�
#lstm_685/while/lstm_cell_685/Relu_1Relu&lstm_685/while/lstm_cell_685/add_1:z:0*
T0*'
_output_shapes
:���������\2%
#lstm_685/while/lstm_cell_685/Relu_1�
"lstm_685/while/lstm_cell_685/mul_2Mul*lstm_685/while/lstm_cell_685/Sigmoid_2:y:01lstm_685/while/lstm_cell_685/Relu_1:activations:0*
T0*'
_output_shapes
:���������\2$
"lstm_685/while/lstm_cell_685/mul_2�
3lstm_685/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_685_while_placeholder_1lstm_685_while_placeholder&lstm_685/while/lstm_cell_685/mul_2:z:0*
_output_shapes
: *
element_dtype025
3lstm_685/while/TensorArrayV2Write/TensorListSetItemn
lstm_685/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_685/while/add/y�
lstm_685/while/addAddV2lstm_685_while_placeholderlstm_685/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_685/while/addr
lstm_685/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_685/while/add_1/y�
lstm_685/while/add_1AddV2*lstm_685_while_lstm_685_while_loop_counterlstm_685/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_685/while/add_1�
lstm_685/while/IdentityIdentitylstm_685/while/add_1:z:0^lstm_685/while/NoOp*
T0*
_output_shapes
: 2
lstm_685/while/Identity�
lstm_685/while/Identity_1Identity0lstm_685_while_lstm_685_while_maximum_iterations^lstm_685/while/NoOp*
T0*
_output_shapes
: 2
lstm_685/while/Identity_1�
lstm_685/while/Identity_2Identitylstm_685/while/add:z:0^lstm_685/while/NoOp*
T0*
_output_shapes
: 2
lstm_685/while/Identity_2�
lstm_685/while/Identity_3IdentityClstm_685/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_685/while/NoOp*
T0*
_output_shapes
: 2
lstm_685/while/Identity_3�
lstm_685/while/Identity_4Identity&lstm_685/while/lstm_cell_685/mul_2:z:0^lstm_685/while/NoOp*
T0*'
_output_shapes
:���������\2
lstm_685/while/Identity_4�
lstm_685/while/Identity_5Identity&lstm_685/while/lstm_cell_685/add_1:z:0^lstm_685/while/NoOp*
T0*'
_output_shapes
:���������\2
lstm_685/while/Identity_5�
lstm_685/while/NoOpNoOp4^lstm_685/while/lstm_cell_685/BiasAdd/ReadVariableOp3^lstm_685/while/lstm_cell_685/MatMul/ReadVariableOp5^lstm_685/while/lstm_cell_685/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
lstm_685/while/NoOp";
lstm_685_while_identity lstm_685/while/Identity:output:0"?
lstm_685_while_identity_1"lstm_685/while/Identity_1:output:0"?
lstm_685_while_identity_2"lstm_685/while/Identity_2:output:0"?
lstm_685_while_identity_3"lstm_685/while/Identity_3:output:0"?
lstm_685_while_identity_4"lstm_685/while/Identity_4:output:0"?
lstm_685_while_identity_5"lstm_685/while/Identity_5:output:0"T
'lstm_685_while_lstm_685_strided_slice_1)lstm_685_while_lstm_685_strided_slice_1_0"~
<lstm_685_while_lstm_cell_685_biasadd_readvariableop_resource>lstm_685_while_lstm_cell_685_biasadd_readvariableop_resource_0"�
=lstm_685_while_lstm_cell_685_matmul_1_readvariableop_resource?lstm_685_while_lstm_cell_685_matmul_1_readvariableop_resource_0"|
;lstm_685_while_lstm_cell_685_matmul_readvariableop_resource=lstm_685_while_lstm_cell_685_matmul_readvariableop_resource_0"�
clstm_685_while_tensorarrayv2read_tensorlistgetitem_lstm_685_tensorarrayunstack_tensorlistfromtensorelstm_685_while_tensorarrayv2read_tensorlistgetitem_lstm_685_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������\:���������\: : : : : 2j
3lstm_685/while/lstm_cell_685/BiasAdd/ReadVariableOp3lstm_685/while/lstm_cell_685/BiasAdd/ReadVariableOp2h
2lstm_685/while/lstm_cell_685/MatMul/ReadVariableOp2lstm_685/while/lstm_cell_685/MatMul/ReadVariableOp2l
4lstm_685/while/lstm_cell_685/MatMul_1/ReadVariableOp4lstm_685/while/lstm_cell_685/MatMul_1/ReadVariableOp: 
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
:���������\:-)
'
_output_shapes
:���������\:

_output_shapes
: :

_output_shapes
: 
�
�
*__inference_lstm_685_layer_call_fn_1491932
inputs_0
unknown:	0�
	unknown_0:	\�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������\*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_685_layer_call_and_return_conditional_losses_14879432
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������\2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������0: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������0
"
_user_specified_name
inputs/0
�
�
while_cond_1488612
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1488612___redundant_placeholder05
1while_while_cond_1488612___redundant_placeholder15
1while_while_cond_1488612___redundant_placeholder25
1while_while_cond_1488612___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������0:���������0: ::::: 
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
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
:
�
�
*__inference_lstm_685_layer_call_fn_1491954

inputs
unknown:	0�
	unknown_0:	\�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������\*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_685_layer_call_and_return_conditional_losses_14888542
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������\2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������0: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������0
 
_user_specified_nameinputs
��
�
"__inference__wrapped_model_1486597
lstm_683_inputW
Dsequential_133_lstm_683_lstm_cell_683_matmul_readvariableop_resource:	�Y
Fsequential_133_lstm_683_lstm_cell_683_matmul_1_readvariableop_resource:	0�T
Esequential_133_lstm_683_lstm_cell_683_biasadd_readvariableop_resource:	�W
Dsequential_133_lstm_684_lstm_cell_684_matmul_readvariableop_resource:	0�Y
Fsequential_133_lstm_684_lstm_cell_684_matmul_1_readvariableop_resource:	0�T
Esequential_133_lstm_684_lstm_cell_684_biasadd_readvariableop_resource:	�W
Dsequential_133_lstm_685_lstm_cell_685_matmul_readvariableop_resource:	0�Y
Fsequential_133_lstm_685_lstm_cell_685_matmul_1_readvariableop_resource:	\�T
Esequential_133_lstm_685_lstm_cell_685_biasadd_readvariableop_resource:	�I
7sequential_133_dense_131_matmul_readvariableop_resource:\F
8sequential_133_dense_131_biasadd_readvariableop_resource:
identity��/sequential_133/dense_131/BiasAdd/ReadVariableOp�.sequential_133/dense_131/MatMul/ReadVariableOp�<sequential_133/lstm_683/lstm_cell_683/BiasAdd/ReadVariableOp�;sequential_133/lstm_683/lstm_cell_683/MatMul/ReadVariableOp�=sequential_133/lstm_683/lstm_cell_683/MatMul_1/ReadVariableOp�sequential_133/lstm_683/while�<sequential_133/lstm_684/lstm_cell_684/BiasAdd/ReadVariableOp�;sequential_133/lstm_684/lstm_cell_684/MatMul/ReadVariableOp�=sequential_133/lstm_684/lstm_cell_684/MatMul_1/ReadVariableOp�sequential_133/lstm_684/while�<sequential_133/lstm_685/lstm_cell_685/BiasAdd/ReadVariableOp�;sequential_133/lstm_685/lstm_cell_685/MatMul/ReadVariableOp�=sequential_133/lstm_685/lstm_cell_685/MatMul_1/ReadVariableOp�sequential_133/lstm_685/while|
sequential_133/lstm_683/ShapeShapelstm_683_input*
T0*
_output_shapes
:2
sequential_133/lstm_683/Shape�
+sequential_133/lstm_683/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_133/lstm_683/strided_slice/stack�
-sequential_133/lstm_683/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_133/lstm_683/strided_slice/stack_1�
-sequential_133/lstm_683/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_133/lstm_683/strided_slice/stack_2�
%sequential_133/lstm_683/strided_sliceStridedSlice&sequential_133/lstm_683/Shape:output:04sequential_133/lstm_683/strided_slice/stack:output:06sequential_133/lstm_683/strided_slice/stack_1:output:06sequential_133/lstm_683/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential_133/lstm_683/strided_slice�
&sequential_133/lstm_683/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :02(
&sequential_133/lstm_683/zeros/packed/1�
$sequential_133/lstm_683/zeros/packedPack.sequential_133/lstm_683/strided_slice:output:0/sequential_133/lstm_683/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_133/lstm_683/zeros/packed�
#sequential_133/lstm_683/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential_133/lstm_683/zeros/Const�
sequential_133/lstm_683/zerosFill-sequential_133/lstm_683/zeros/packed:output:0,sequential_133/lstm_683/zeros/Const:output:0*
T0*'
_output_shapes
:���������02
sequential_133/lstm_683/zeros�
(sequential_133/lstm_683/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :02*
(sequential_133/lstm_683/zeros_1/packed/1�
&sequential_133/lstm_683/zeros_1/packedPack.sequential_133/lstm_683/strided_slice:output:01sequential_133/lstm_683/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&sequential_133/lstm_683/zeros_1/packed�
%sequential_133/lstm_683/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%sequential_133/lstm_683/zeros_1/Const�
sequential_133/lstm_683/zeros_1Fill/sequential_133/lstm_683/zeros_1/packed:output:0.sequential_133/lstm_683/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������02!
sequential_133/lstm_683/zeros_1�
&sequential_133/lstm_683/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential_133/lstm_683/transpose/perm�
!sequential_133/lstm_683/transpose	Transposelstm_683_input/sequential_133/lstm_683/transpose/perm:output:0*
T0*+
_output_shapes
:���������2#
!sequential_133/lstm_683/transpose�
sequential_133/lstm_683/Shape_1Shape%sequential_133/lstm_683/transpose:y:0*
T0*
_output_shapes
:2!
sequential_133/lstm_683/Shape_1�
-sequential_133/lstm_683/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential_133/lstm_683/strided_slice_1/stack�
/sequential_133/lstm_683/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential_133/lstm_683/strided_slice_1/stack_1�
/sequential_133/lstm_683/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential_133/lstm_683/strided_slice_1/stack_2�
'sequential_133/lstm_683/strided_slice_1StridedSlice(sequential_133/lstm_683/Shape_1:output:06sequential_133/lstm_683/strided_slice_1/stack:output:08sequential_133/lstm_683/strided_slice_1/stack_1:output:08sequential_133/lstm_683/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'sequential_133/lstm_683/strided_slice_1�
3sequential_133/lstm_683/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������25
3sequential_133/lstm_683/TensorArrayV2/element_shape�
%sequential_133/lstm_683/TensorArrayV2TensorListReserve<sequential_133/lstm_683/TensorArrayV2/element_shape:output:00sequential_133/lstm_683/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential_133/lstm_683/TensorArrayV2�
Msequential_133/lstm_683/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   2O
Msequential_133/lstm_683/TensorArrayUnstack/TensorListFromTensor/element_shape�
?sequential_133/lstm_683/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_133/lstm_683/transpose:y:0Vsequential_133/lstm_683/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02A
?sequential_133/lstm_683/TensorArrayUnstack/TensorListFromTensor�
-sequential_133/lstm_683/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential_133/lstm_683/strided_slice_2/stack�
/sequential_133/lstm_683/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential_133/lstm_683/strided_slice_2/stack_1�
/sequential_133/lstm_683/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential_133/lstm_683/strided_slice_2/stack_2�
'sequential_133/lstm_683/strided_slice_2StridedSlice%sequential_133/lstm_683/transpose:y:06sequential_133/lstm_683/strided_slice_2/stack:output:08sequential_133/lstm_683/strided_slice_2/stack_1:output:08sequential_133/lstm_683/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask2)
'sequential_133/lstm_683/strided_slice_2�
;sequential_133/lstm_683/lstm_cell_683/MatMul/ReadVariableOpReadVariableOpDsequential_133_lstm_683_lstm_cell_683_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02=
;sequential_133/lstm_683/lstm_cell_683/MatMul/ReadVariableOp�
,sequential_133/lstm_683/lstm_cell_683/MatMulMatMul0sequential_133/lstm_683/strided_slice_2:output:0Csequential_133/lstm_683/lstm_cell_683/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2.
,sequential_133/lstm_683/lstm_cell_683/MatMul�
=sequential_133/lstm_683/lstm_cell_683/MatMul_1/ReadVariableOpReadVariableOpFsequential_133_lstm_683_lstm_cell_683_matmul_1_readvariableop_resource*
_output_shapes
:	0�*
dtype02?
=sequential_133/lstm_683/lstm_cell_683/MatMul_1/ReadVariableOp�
.sequential_133/lstm_683/lstm_cell_683/MatMul_1MatMul&sequential_133/lstm_683/zeros:output:0Esequential_133/lstm_683/lstm_cell_683/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������20
.sequential_133/lstm_683/lstm_cell_683/MatMul_1�
)sequential_133/lstm_683/lstm_cell_683/addAddV26sequential_133/lstm_683/lstm_cell_683/MatMul:product:08sequential_133/lstm_683/lstm_cell_683/MatMul_1:product:0*
T0*(
_output_shapes
:����������2+
)sequential_133/lstm_683/lstm_cell_683/add�
<sequential_133/lstm_683/lstm_cell_683/BiasAdd/ReadVariableOpReadVariableOpEsequential_133_lstm_683_lstm_cell_683_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02>
<sequential_133/lstm_683/lstm_cell_683/BiasAdd/ReadVariableOp�
-sequential_133/lstm_683/lstm_cell_683/BiasAddBiasAdd-sequential_133/lstm_683/lstm_cell_683/add:z:0Dsequential_133/lstm_683/lstm_cell_683/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2/
-sequential_133/lstm_683/lstm_cell_683/BiasAdd�
5sequential_133/lstm_683/lstm_cell_683/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :27
5sequential_133/lstm_683/lstm_cell_683/split/split_dim�
+sequential_133/lstm_683/lstm_cell_683/splitSplit>sequential_133/lstm_683/lstm_cell_683/split/split_dim:output:06sequential_133/lstm_683/lstm_cell_683/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_split2-
+sequential_133/lstm_683/lstm_cell_683/split�
-sequential_133/lstm_683/lstm_cell_683/SigmoidSigmoid4sequential_133/lstm_683/lstm_cell_683/split:output:0*
T0*'
_output_shapes
:���������02/
-sequential_133/lstm_683/lstm_cell_683/Sigmoid�
/sequential_133/lstm_683/lstm_cell_683/Sigmoid_1Sigmoid4sequential_133/lstm_683/lstm_cell_683/split:output:1*
T0*'
_output_shapes
:���������021
/sequential_133/lstm_683/lstm_cell_683/Sigmoid_1�
)sequential_133/lstm_683/lstm_cell_683/mulMul3sequential_133/lstm_683/lstm_cell_683/Sigmoid_1:y:0(sequential_133/lstm_683/zeros_1:output:0*
T0*'
_output_shapes
:���������02+
)sequential_133/lstm_683/lstm_cell_683/mul�
*sequential_133/lstm_683/lstm_cell_683/ReluRelu4sequential_133/lstm_683/lstm_cell_683/split:output:2*
T0*'
_output_shapes
:���������02,
*sequential_133/lstm_683/lstm_cell_683/Relu�
+sequential_133/lstm_683/lstm_cell_683/mul_1Mul1sequential_133/lstm_683/lstm_cell_683/Sigmoid:y:08sequential_133/lstm_683/lstm_cell_683/Relu:activations:0*
T0*'
_output_shapes
:���������02-
+sequential_133/lstm_683/lstm_cell_683/mul_1�
+sequential_133/lstm_683/lstm_cell_683/add_1AddV2-sequential_133/lstm_683/lstm_cell_683/mul:z:0/sequential_133/lstm_683/lstm_cell_683/mul_1:z:0*
T0*'
_output_shapes
:���������02-
+sequential_133/lstm_683/lstm_cell_683/add_1�
/sequential_133/lstm_683/lstm_cell_683/Sigmoid_2Sigmoid4sequential_133/lstm_683/lstm_cell_683/split:output:3*
T0*'
_output_shapes
:���������021
/sequential_133/lstm_683/lstm_cell_683/Sigmoid_2�
,sequential_133/lstm_683/lstm_cell_683/Relu_1Relu/sequential_133/lstm_683/lstm_cell_683/add_1:z:0*
T0*'
_output_shapes
:���������02.
,sequential_133/lstm_683/lstm_cell_683/Relu_1�
+sequential_133/lstm_683/lstm_cell_683/mul_2Mul3sequential_133/lstm_683/lstm_cell_683/Sigmoid_2:y:0:sequential_133/lstm_683/lstm_cell_683/Relu_1:activations:0*
T0*'
_output_shapes
:���������02-
+sequential_133/lstm_683/lstm_cell_683/mul_2�
5sequential_133/lstm_683/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   27
5sequential_133/lstm_683/TensorArrayV2_1/element_shape�
'sequential_133/lstm_683/TensorArrayV2_1TensorListReserve>sequential_133/lstm_683/TensorArrayV2_1/element_shape:output:00sequential_133/lstm_683/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'sequential_133/lstm_683/TensorArrayV2_1~
sequential_133/lstm_683/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_133/lstm_683/time�
0sequential_133/lstm_683/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������22
0sequential_133/lstm_683/while/maximum_iterations�
*sequential_133/lstm_683/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential_133/lstm_683/while/loop_counter�
sequential_133/lstm_683/whileWhile3sequential_133/lstm_683/while/loop_counter:output:09sequential_133/lstm_683/while/maximum_iterations:output:0%sequential_133/lstm_683/time:output:00sequential_133/lstm_683/TensorArrayV2_1:handle:0&sequential_133/lstm_683/zeros:output:0(sequential_133/lstm_683/zeros_1:output:00sequential_133/lstm_683/strided_slice_1:output:0Osequential_133/lstm_683/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_133_lstm_683_lstm_cell_683_matmul_readvariableop_resourceFsequential_133_lstm_683_lstm_cell_683_matmul_1_readvariableop_resourceEsequential_133_lstm_683_lstm_cell_683_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������0:���������0: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *6
body.R,
*sequential_133_lstm_683_while_body_1486226*6
cond.R,
*sequential_133_lstm_683_while_cond_1486225*K
output_shapes:
8: : : : :���������0:���������0: : : : : *
parallel_iterations 2
sequential_133/lstm_683/while�
Hsequential_133/lstm_683/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   2J
Hsequential_133/lstm_683/TensorArrayV2Stack/TensorListStack/element_shape�
:sequential_133/lstm_683/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_133/lstm_683/while:output:3Qsequential_133/lstm_683/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������0*
element_dtype02<
:sequential_133/lstm_683/TensorArrayV2Stack/TensorListStack�
-sequential_133/lstm_683/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2/
-sequential_133/lstm_683/strided_slice_3/stack�
/sequential_133/lstm_683/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 21
/sequential_133/lstm_683/strided_slice_3/stack_1�
/sequential_133/lstm_683/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential_133/lstm_683/strided_slice_3/stack_2�
'sequential_133/lstm_683/strided_slice_3StridedSliceCsequential_133/lstm_683/TensorArrayV2Stack/TensorListStack:tensor:06sequential_133/lstm_683/strided_slice_3/stack:output:08sequential_133/lstm_683/strided_slice_3/stack_1:output:08sequential_133/lstm_683/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������0*
shrink_axis_mask2)
'sequential_133/lstm_683/strided_slice_3�
(sequential_133/lstm_683/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2*
(sequential_133/lstm_683/transpose_1/perm�
#sequential_133/lstm_683/transpose_1	TransposeCsequential_133/lstm_683/TensorArrayV2Stack/TensorListStack:tensor:01sequential_133/lstm_683/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������02%
#sequential_133/lstm_683/transpose_1�
sequential_133/lstm_683/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2!
sequential_133/lstm_683/runtime�
#sequential_133/dropout_681/IdentityIdentity'sequential_133/lstm_683/transpose_1:y:0*
T0*+
_output_shapes
:���������02%
#sequential_133/dropout_681/Identity�
sequential_133/lstm_684/ShapeShape,sequential_133/dropout_681/Identity:output:0*
T0*
_output_shapes
:2
sequential_133/lstm_684/Shape�
+sequential_133/lstm_684/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_133/lstm_684/strided_slice/stack�
-sequential_133/lstm_684/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_133/lstm_684/strided_slice/stack_1�
-sequential_133/lstm_684/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_133/lstm_684/strided_slice/stack_2�
%sequential_133/lstm_684/strided_sliceStridedSlice&sequential_133/lstm_684/Shape:output:04sequential_133/lstm_684/strided_slice/stack:output:06sequential_133/lstm_684/strided_slice/stack_1:output:06sequential_133/lstm_684/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential_133/lstm_684/strided_slice�
&sequential_133/lstm_684/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :02(
&sequential_133/lstm_684/zeros/packed/1�
$sequential_133/lstm_684/zeros/packedPack.sequential_133/lstm_684/strided_slice:output:0/sequential_133/lstm_684/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_133/lstm_684/zeros/packed�
#sequential_133/lstm_684/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential_133/lstm_684/zeros/Const�
sequential_133/lstm_684/zerosFill-sequential_133/lstm_684/zeros/packed:output:0,sequential_133/lstm_684/zeros/Const:output:0*
T0*'
_output_shapes
:���������02
sequential_133/lstm_684/zeros�
(sequential_133/lstm_684/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :02*
(sequential_133/lstm_684/zeros_1/packed/1�
&sequential_133/lstm_684/zeros_1/packedPack.sequential_133/lstm_684/strided_slice:output:01sequential_133/lstm_684/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&sequential_133/lstm_684/zeros_1/packed�
%sequential_133/lstm_684/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%sequential_133/lstm_684/zeros_1/Const�
sequential_133/lstm_684/zeros_1Fill/sequential_133/lstm_684/zeros_1/packed:output:0.sequential_133/lstm_684/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������02!
sequential_133/lstm_684/zeros_1�
&sequential_133/lstm_684/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential_133/lstm_684/transpose/perm�
!sequential_133/lstm_684/transpose	Transpose,sequential_133/dropout_681/Identity:output:0/sequential_133/lstm_684/transpose/perm:output:0*
T0*+
_output_shapes
:���������02#
!sequential_133/lstm_684/transpose�
sequential_133/lstm_684/Shape_1Shape%sequential_133/lstm_684/transpose:y:0*
T0*
_output_shapes
:2!
sequential_133/lstm_684/Shape_1�
-sequential_133/lstm_684/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential_133/lstm_684/strided_slice_1/stack�
/sequential_133/lstm_684/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential_133/lstm_684/strided_slice_1/stack_1�
/sequential_133/lstm_684/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential_133/lstm_684/strided_slice_1/stack_2�
'sequential_133/lstm_684/strided_slice_1StridedSlice(sequential_133/lstm_684/Shape_1:output:06sequential_133/lstm_684/strided_slice_1/stack:output:08sequential_133/lstm_684/strided_slice_1/stack_1:output:08sequential_133/lstm_684/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'sequential_133/lstm_684/strided_slice_1�
3sequential_133/lstm_684/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������25
3sequential_133/lstm_684/TensorArrayV2/element_shape�
%sequential_133/lstm_684/TensorArrayV2TensorListReserve<sequential_133/lstm_684/TensorArrayV2/element_shape:output:00sequential_133/lstm_684/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential_133/lstm_684/TensorArrayV2�
Msequential_133/lstm_684/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   2O
Msequential_133/lstm_684/TensorArrayUnstack/TensorListFromTensor/element_shape�
?sequential_133/lstm_684/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_133/lstm_684/transpose:y:0Vsequential_133/lstm_684/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02A
?sequential_133/lstm_684/TensorArrayUnstack/TensorListFromTensor�
-sequential_133/lstm_684/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential_133/lstm_684/strided_slice_2/stack�
/sequential_133/lstm_684/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential_133/lstm_684/strided_slice_2/stack_1�
/sequential_133/lstm_684/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential_133/lstm_684/strided_slice_2/stack_2�
'sequential_133/lstm_684/strided_slice_2StridedSlice%sequential_133/lstm_684/transpose:y:06sequential_133/lstm_684/strided_slice_2/stack:output:08sequential_133/lstm_684/strided_slice_2/stack_1:output:08sequential_133/lstm_684/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������0*
shrink_axis_mask2)
'sequential_133/lstm_684/strided_slice_2�
;sequential_133/lstm_684/lstm_cell_684/MatMul/ReadVariableOpReadVariableOpDsequential_133_lstm_684_lstm_cell_684_matmul_readvariableop_resource*
_output_shapes
:	0�*
dtype02=
;sequential_133/lstm_684/lstm_cell_684/MatMul/ReadVariableOp�
,sequential_133/lstm_684/lstm_cell_684/MatMulMatMul0sequential_133/lstm_684/strided_slice_2:output:0Csequential_133/lstm_684/lstm_cell_684/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2.
,sequential_133/lstm_684/lstm_cell_684/MatMul�
=sequential_133/lstm_684/lstm_cell_684/MatMul_1/ReadVariableOpReadVariableOpFsequential_133_lstm_684_lstm_cell_684_matmul_1_readvariableop_resource*
_output_shapes
:	0�*
dtype02?
=sequential_133/lstm_684/lstm_cell_684/MatMul_1/ReadVariableOp�
.sequential_133/lstm_684/lstm_cell_684/MatMul_1MatMul&sequential_133/lstm_684/zeros:output:0Esequential_133/lstm_684/lstm_cell_684/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������20
.sequential_133/lstm_684/lstm_cell_684/MatMul_1�
)sequential_133/lstm_684/lstm_cell_684/addAddV26sequential_133/lstm_684/lstm_cell_684/MatMul:product:08sequential_133/lstm_684/lstm_cell_684/MatMul_1:product:0*
T0*(
_output_shapes
:����������2+
)sequential_133/lstm_684/lstm_cell_684/add�
<sequential_133/lstm_684/lstm_cell_684/BiasAdd/ReadVariableOpReadVariableOpEsequential_133_lstm_684_lstm_cell_684_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02>
<sequential_133/lstm_684/lstm_cell_684/BiasAdd/ReadVariableOp�
-sequential_133/lstm_684/lstm_cell_684/BiasAddBiasAdd-sequential_133/lstm_684/lstm_cell_684/add:z:0Dsequential_133/lstm_684/lstm_cell_684/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2/
-sequential_133/lstm_684/lstm_cell_684/BiasAdd�
5sequential_133/lstm_684/lstm_cell_684/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :27
5sequential_133/lstm_684/lstm_cell_684/split/split_dim�
+sequential_133/lstm_684/lstm_cell_684/splitSplit>sequential_133/lstm_684/lstm_cell_684/split/split_dim:output:06sequential_133/lstm_684/lstm_cell_684/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_split2-
+sequential_133/lstm_684/lstm_cell_684/split�
-sequential_133/lstm_684/lstm_cell_684/SigmoidSigmoid4sequential_133/lstm_684/lstm_cell_684/split:output:0*
T0*'
_output_shapes
:���������02/
-sequential_133/lstm_684/lstm_cell_684/Sigmoid�
/sequential_133/lstm_684/lstm_cell_684/Sigmoid_1Sigmoid4sequential_133/lstm_684/lstm_cell_684/split:output:1*
T0*'
_output_shapes
:���������021
/sequential_133/lstm_684/lstm_cell_684/Sigmoid_1�
)sequential_133/lstm_684/lstm_cell_684/mulMul3sequential_133/lstm_684/lstm_cell_684/Sigmoid_1:y:0(sequential_133/lstm_684/zeros_1:output:0*
T0*'
_output_shapes
:���������02+
)sequential_133/lstm_684/lstm_cell_684/mul�
*sequential_133/lstm_684/lstm_cell_684/ReluRelu4sequential_133/lstm_684/lstm_cell_684/split:output:2*
T0*'
_output_shapes
:���������02,
*sequential_133/lstm_684/lstm_cell_684/Relu�
+sequential_133/lstm_684/lstm_cell_684/mul_1Mul1sequential_133/lstm_684/lstm_cell_684/Sigmoid:y:08sequential_133/lstm_684/lstm_cell_684/Relu:activations:0*
T0*'
_output_shapes
:���������02-
+sequential_133/lstm_684/lstm_cell_684/mul_1�
+sequential_133/lstm_684/lstm_cell_684/add_1AddV2-sequential_133/lstm_684/lstm_cell_684/mul:z:0/sequential_133/lstm_684/lstm_cell_684/mul_1:z:0*
T0*'
_output_shapes
:���������02-
+sequential_133/lstm_684/lstm_cell_684/add_1�
/sequential_133/lstm_684/lstm_cell_684/Sigmoid_2Sigmoid4sequential_133/lstm_684/lstm_cell_684/split:output:3*
T0*'
_output_shapes
:���������021
/sequential_133/lstm_684/lstm_cell_684/Sigmoid_2�
,sequential_133/lstm_684/lstm_cell_684/Relu_1Relu/sequential_133/lstm_684/lstm_cell_684/add_1:z:0*
T0*'
_output_shapes
:���������02.
,sequential_133/lstm_684/lstm_cell_684/Relu_1�
+sequential_133/lstm_684/lstm_cell_684/mul_2Mul3sequential_133/lstm_684/lstm_cell_684/Sigmoid_2:y:0:sequential_133/lstm_684/lstm_cell_684/Relu_1:activations:0*
T0*'
_output_shapes
:���������02-
+sequential_133/lstm_684/lstm_cell_684/mul_2�
5sequential_133/lstm_684/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   27
5sequential_133/lstm_684/TensorArrayV2_1/element_shape�
'sequential_133/lstm_684/TensorArrayV2_1TensorListReserve>sequential_133/lstm_684/TensorArrayV2_1/element_shape:output:00sequential_133/lstm_684/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'sequential_133/lstm_684/TensorArrayV2_1~
sequential_133/lstm_684/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_133/lstm_684/time�
0sequential_133/lstm_684/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������22
0sequential_133/lstm_684/while/maximum_iterations�
*sequential_133/lstm_684/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential_133/lstm_684/while/loop_counter�
sequential_133/lstm_684/whileWhile3sequential_133/lstm_684/while/loop_counter:output:09sequential_133/lstm_684/while/maximum_iterations:output:0%sequential_133/lstm_684/time:output:00sequential_133/lstm_684/TensorArrayV2_1:handle:0&sequential_133/lstm_684/zeros:output:0(sequential_133/lstm_684/zeros_1:output:00sequential_133/lstm_684/strided_slice_1:output:0Osequential_133/lstm_684/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_133_lstm_684_lstm_cell_684_matmul_readvariableop_resourceFsequential_133_lstm_684_lstm_cell_684_matmul_1_readvariableop_resourceEsequential_133_lstm_684_lstm_cell_684_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������0:���������0: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *6
body.R,
*sequential_133_lstm_684_while_body_1486366*6
cond.R,
*sequential_133_lstm_684_while_cond_1486365*K
output_shapes:
8: : : : :���������0:���������0: : : : : *
parallel_iterations 2
sequential_133/lstm_684/while�
Hsequential_133/lstm_684/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   2J
Hsequential_133/lstm_684/TensorArrayV2Stack/TensorListStack/element_shape�
:sequential_133/lstm_684/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_133/lstm_684/while:output:3Qsequential_133/lstm_684/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������0*
element_dtype02<
:sequential_133/lstm_684/TensorArrayV2Stack/TensorListStack�
-sequential_133/lstm_684/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2/
-sequential_133/lstm_684/strided_slice_3/stack�
/sequential_133/lstm_684/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 21
/sequential_133/lstm_684/strided_slice_3/stack_1�
/sequential_133/lstm_684/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential_133/lstm_684/strided_slice_3/stack_2�
'sequential_133/lstm_684/strided_slice_3StridedSliceCsequential_133/lstm_684/TensorArrayV2Stack/TensorListStack:tensor:06sequential_133/lstm_684/strided_slice_3/stack:output:08sequential_133/lstm_684/strided_slice_3/stack_1:output:08sequential_133/lstm_684/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������0*
shrink_axis_mask2)
'sequential_133/lstm_684/strided_slice_3�
(sequential_133/lstm_684/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2*
(sequential_133/lstm_684/transpose_1/perm�
#sequential_133/lstm_684/transpose_1	TransposeCsequential_133/lstm_684/TensorArrayV2Stack/TensorListStack:tensor:01sequential_133/lstm_684/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������02%
#sequential_133/lstm_684/transpose_1�
sequential_133/lstm_684/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2!
sequential_133/lstm_684/runtime�
#sequential_133/dropout_682/IdentityIdentity'sequential_133/lstm_684/transpose_1:y:0*
T0*+
_output_shapes
:���������02%
#sequential_133/dropout_682/Identity�
sequential_133/lstm_685/ShapeShape,sequential_133/dropout_682/Identity:output:0*
T0*
_output_shapes
:2
sequential_133/lstm_685/Shape�
+sequential_133/lstm_685/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_133/lstm_685/strided_slice/stack�
-sequential_133/lstm_685/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_133/lstm_685/strided_slice/stack_1�
-sequential_133/lstm_685/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_133/lstm_685/strided_slice/stack_2�
%sequential_133/lstm_685/strided_sliceStridedSlice&sequential_133/lstm_685/Shape:output:04sequential_133/lstm_685/strided_slice/stack:output:06sequential_133/lstm_685/strided_slice/stack_1:output:06sequential_133/lstm_685/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential_133/lstm_685/strided_slice�
&sequential_133/lstm_685/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :\2(
&sequential_133/lstm_685/zeros/packed/1�
$sequential_133/lstm_685/zeros/packedPack.sequential_133/lstm_685/strided_slice:output:0/sequential_133/lstm_685/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_133/lstm_685/zeros/packed�
#sequential_133/lstm_685/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential_133/lstm_685/zeros/Const�
sequential_133/lstm_685/zerosFill-sequential_133/lstm_685/zeros/packed:output:0,sequential_133/lstm_685/zeros/Const:output:0*
T0*'
_output_shapes
:���������\2
sequential_133/lstm_685/zeros�
(sequential_133/lstm_685/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :\2*
(sequential_133/lstm_685/zeros_1/packed/1�
&sequential_133/lstm_685/zeros_1/packedPack.sequential_133/lstm_685/strided_slice:output:01sequential_133/lstm_685/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&sequential_133/lstm_685/zeros_1/packed�
%sequential_133/lstm_685/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%sequential_133/lstm_685/zeros_1/Const�
sequential_133/lstm_685/zeros_1Fill/sequential_133/lstm_685/zeros_1/packed:output:0.sequential_133/lstm_685/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������\2!
sequential_133/lstm_685/zeros_1�
&sequential_133/lstm_685/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential_133/lstm_685/transpose/perm�
!sequential_133/lstm_685/transpose	Transpose,sequential_133/dropout_682/Identity:output:0/sequential_133/lstm_685/transpose/perm:output:0*
T0*+
_output_shapes
:���������02#
!sequential_133/lstm_685/transpose�
sequential_133/lstm_685/Shape_1Shape%sequential_133/lstm_685/transpose:y:0*
T0*
_output_shapes
:2!
sequential_133/lstm_685/Shape_1�
-sequential_133/lstm_685/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential_133/lstm_685/strided_slice_1/stack�
/sequential_133/lstm_685/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential_133/lstm_685/strided_slice_1/stack_1�
/sequential_133/lstm_685/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential_133/lstm_685/strided_slice_1/stack_2�
'sequential_133/lstm_685/strided_slice_1StridedSlice(sequential_133/lstm_685/Shape_1:output:06sequential_133/lstm_685/strided_slice_1/stack:output:08sequential_133/lstm_685/strided_slice_1/stack_1:output:08sequential_133/lstm_685/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'sequential_133/lstm_685/strided_slice_1�
3sequential_133/lstm_685/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������25
3sequential_133/lstm_685/TensorArrayV2/element_shape�
%sequential_133/lstm_685/TensorArrayV2TensorListReserve<sequential_133/lstm_685/TensorArrayV2/element_shape:output:00sequential_133/lstm_685/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential_133/lstm_685/TensorArrayV2�
Msequential_133/lstm_685/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   2O
Msequential_133/lstm_685/TensorArrayUnstack/TensorListFromTensor/element_shape�
?sequential_133/lstm_685/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_133/lstm_685/transpose:y:0Vsequential_133/lstm_685/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02A
?sequential_133/lstm_685/TensorArrayUnstack/TensorListFromTensor�
-sequential_133/lstm_685/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential_133/lstm_685/strided_slice_2/stack�
/sequential_133/lstm_685/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential_133/lstm_685/strided_slice_2/stack_1�
/sequential_133/lstm_685/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential_133/lstm_685/strided_slice_2/stack_2�
'sequential_133/lstm_685/strided_slice_2StridedSlice%sequential_133/lstm_685/transpose:y:06sequential_133/lstm_685/strided_slice_2/stack:output:08sequential_133/lstm_685/strided_slice_2/stack_1:output:08sequential_133/lstm_685/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������0*
shrink_axis_mask2)
'sequential_133/lstm_685/strided_slice_2�
;sequential_133/lstm_685/lstm_cell_685/MatMul/ReadVariableOpReadVariableOpDsequential_133_lstm_685_lstm_cell_685_matmul_readvariableop_resource*
_output_shapes
:	0�*
dtype02=
;sequential_133/lstm_685/lstm_cell_685/MatMul/ReadVariableOp�
,sequential_133/lstm_685/lstm_cell_685/MatMulMatMul0sequential_133/lstm_685/strided_slice_2:output:0Csequential_133/lstm_685/lstm_cell_685/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2.
,sequential_133/lstm_685/lstm_cell_685/MatMul�
=sequential_133/lstm_685/lstm_cell_685/MatMul_1/ReadVariableOpReadVariableOpFsequential_133_lstm_685_lstm_cell_685_matmul_1_readvariableop_resource*
_output_shapes
:	\�*
dtype02?
=sequential_133/lstm_685/lstm_cell_685/MatMul_1/ReadVariableOp�
.sequential_133/lstm_685/lstm_cell_685/MatMul_1MatMul&sequential_133/lstm_685/zeros:output:0Esequential_133/lstm_685/lstm_cell_685/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������20
.sequential_133/lstm_685/lstm_cell_685/MatMul_1�
)sequential_133/lstm_685/lstm_cell_685/addAddV26sequential_133/lstm_685/lstm_cell_685/MatMul:product:08sequential_133/lstm_685/lstm_cell_685/MatMul_1:product:0*
T0*(
_output_shapes
:����������2+
)sequential_133/lstm_685/lstm_cell_685/add�
<sequential_133/lstm_685/lstm_cell_685/BiasAdd/ReadVariableOpReadVariableOpEsequential_133_lstm_685_lstm_cell_685_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02>
<sequential_133/lstm_685/lstm_cell_685/BiasAdd/ReadVariableOp�
-sequential_133/lstm_685/lstm_cell_685/BiasAddBiasAdd-sequential_133/lstm_685/lstm_cell_685/add:z:0Dsequential_133/lstm_685/lstm_cell_685/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2/
-sequential_133/lstm_685/lstm_cell_685/BiasAdd�
5sequential_133/lstm_685/lstm_cell_685/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :27
5sequential_133/lstm_685/lstm_cell_685/split/split_dim�
+sequential_133/lstm_685/lstm_cell_685/splitSplit>sequential_133/lstm_685/lstm_cell_685/split/split_dim:output:06sequential_133/lstm_685/lstm_cell_685/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������\:���������\:���������\:���������\*
	num_split2-
+sequential_133/lstm_685/lstm_cell_685/split�
-sequential_133/lstm_685/lstm_cell_685/SigmoidSigmoid4sequential_133/lstm_685/lstm_cell_685/split:output:0*
T0*'
_output_shapes
:���������\2/
-sequential_133/lstm_685/lstm_cell_685/Sigmoid�
/sequential_133/lstm_685/lstm_cell_685/Sigmoid_1Sigmoid4sequential_133/lstm_685/lstm_cell_685/split:output:1*
T0*'
_output_shapes
:���������\21
/sequential_133/lstm_685/lstm_cell_685/Sigmoid_1�
)sequential_133/lstm_685/lstm_cell_685/mulMul3sequential_133/lstm_685/lstm_cell_685/Sigmoid_1:y:0(sequential_133/lstm_685/zeros_1:output:0*
T0*'
_output_shapes
:���������\2+
)sequential_133/lstm_685/lstm_cell_685/mul�
*sequential_133/lstm_685/lstm_cell_685/ReluRelu4sequential_133/lstm_685/lstm_cell_685/split:output:2*
T0*'
_output_shapes
:���������\2,
*sequential_133/lstm_685/lstm_cell_685/Relu�
+sequential_133/lstm_685/lstm_cell_685/mul_1Mul1sequential_133/lstm_685/lstm_cell_685/Sigmoid:y:08sequential_133/lstm_685/lstm_cell_685/Relu:activations:0*
T0*'
_output_shapes
:���������\2-
+sequential_133/lstm_685/lstm_cell_685/mul_1�
+sequential_133/lstm_685/lstm_cell_685/add_1AddV2-sequential_133/lstm_685/lstm_cell_685/mul:z:0/sequential_133/lstm_685/lstm_cell_685/mul_1:z:0*
T0*'
_output_shapes
:���������\2-
+sequential_133/lstm_685/lstm_cell_685/add_1�
/sequential_133/lstm_685/lstm_cell_685/Sigmoid_2Sigmoid4sequential_133/lstm_685/lstm_cell_685/split:output:3*
T0*'
_output_shapes
:���������\21
/sequential_133/lstm_685/lstm_cell_685/Sigmoid_2�
,sequential_133/lstm_685/lstm_cell_685/Relu_1Relu/sequential_133/lstm_685/lstm_cell_685/add_1:z:0*
T0*'
_output_shapes
:���������\2.
,sequential_133/lstm_685/lstm_cell_685/Relu_1�
+sequential_133/lstm_685/lstm_cell_685/mul_2Mul3sequential_133/lstm_685/lstm_cell_685/Sigmoid_2:y:0:sequential_133/lstm_685/lstm_cell_685/Relu_1:activations:0*
T0*'
_output_shapes
:���������\2-
+sequential_133/lstm_685/lstm_cell_685/mul_2�
5sequential_133/lstm_685/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����\   27
5sequential_133/lstm_685/TensorArrayV2_1/element_shape�
'sequential_133/lstm_685/TensorArrayV2_1TensorListReserve>sequential_133/lstm_685/TensorArrayV2_1/element_shape:output:00sequential_133/lstm_685/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'sequential_133/lstm_685/TensorArrayV2_1~
sequential_133/lstm_685/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_133/lstm_685/time�
0sequential_133/lstm_685/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������22
0sequential_133/lstm_685/while/maximum_iterations�
*sequential_133/lstm_685/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential_133/lstm_685/while/loop_counter�
sequential_133/lstm_685/whileWhile3sequential_133/lstm_685/while/loop_counter:output:09sequential_133/lstm_685/while/maximum_iterations:output:0%sequential_133/lstm_685/time:output:00sequential_133/lstm_685/TensorArrayV2_1:handle:0&sequential_133/lstm_685/zeros:output:0(sequential_133/lstm_685/zeros_1:output:00sequential_133/lstm_685/strided_slice_1:output:0Osequential_133/lstm_685/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_133_lstm_685_lstm_cell_685_matmul_readvariableop_resourceFsequential_133_lstm_685_lstm_cell_685_matmul_1_readvariableop_resourceEsequential_133_lstm_685_lstm_cell_685_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������\:���������\: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *6
body.R,
*sequential_133_lstm_685_while_body_1486506*6
cond.R,
*sequential_133_lstm_685_while_cond_1486505*K
output_shapes:
8: : : : :���������\:���������\: : : : : *
parallel_iterations 2
sequential_133/lstm_685/while�
Hsequential_133/lstm_685/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����\   2J
Hsequential_133/lstm_685/TensorArrayV2Stack/TensorListStack/element_shape�
:sequential_133/lstm_685/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_133/lstm_685/while:output:3Qsequential_133/lstm_685/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������\*
element_dtype02<
:sequential_133/lstm_685/TensorArrayV2Stack/TensorListStack�
-sequential_133/lstm_685/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������2/
-sequential_133/lstm_685/strided_slice_3/stack�
/sequential_133/lstm_685/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 21
/sequential_133/lstm_685/strided_slice_3/stack_1�
/sequential_133/lstm_685/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential_133/lstm_685/strided_slice_3/stack_2�
'sequential_133/lstm_685/strided_slice_3StridedSliceCsequential_133/lstm_685/TensorArrayV2Stack/TensorListStack:tensor:06sequential_133/lstm_685/strided_slice_3/stack:output:08sequential_133/lstm_685/strided_slice_3/stack_1:output:08sequential_133/lstm_685/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������\*
shrink_axis_mask2)
'sequential_133/lstm_685/strided_slice_3�
(sequential_133/lstm_685/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2*
(sequential_133/lstm_685/transpose_1/perm�
#sequential_133/lstm_685/transpose_1	TransposeCsequential_133/lstm_685/TensorArrayV2Stack/TensorListStack:tensor:01sequential_133/lstm_685/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������\2%
#sequential_133/lstm_685/transpose_1�
sequential_133/lstm_685/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2!
sequential_133/lstm_685/runtime�
#sequential_133/dropout_683/IdentityIdentity0sequential_133/lstm_685/strided_slice_3:output:0*
T0*'
_output_shapes
:���������\2%
#sequential_133/dropout_683/Identity�
.sequential_133/dense_131/MatMul/ReadVariableOpReadVariableOp7sequential_133_dense_131_matmul_readvariableop_resource*
_output_shapes

:\*
dtype020
.sequential_133/dense_131/MatMul/ReadVariableOp�
sequential_133/dense_131/MatMulMatMul,sequential_133/dropout_683/Identity:output:06sequential_133/dense_131/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2!
sequential_133/dense_131/MatMul�
/sequential_133/dense_131/BiasAdd/ReadVariableOpReadVariableOp8sequential_133_dense_131_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/sequential_133/dense_131/BiasAdd/ReadVariableOp�
 sequential_133/dense_131/BiasAddBiasAdd)sequential_133/dense_131/MatMul:product:07sequential_133/dense_131/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2"
 sequential_133/dense_131/BiasAdd�
IdentityIdentity)sequential_133/dense_131/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp0^sequential_133/dense_131/BiasAdd/ReadVariableOp/^sequential_133/dense_131/MatMul/ReadVariableOp=^sequential_133/lstm_683/lstm_cell_683/BiasAdd/ReadVariableOp<^sequential_133/lstm_683/lstm_cell_683/MatMul/ReadVariableOp>^sequential_133/lstm_683/lstm_cell_683/MatMul_1/ReadVariableOp^sequential_133/lstm_683/while=^sequential_133/lstm_684/lstm_cell_684/BiasAdd/ReadVariableOp<^sequential_133/lstm_684/lstm_cell_684/MatMul/ReadVariableOp>^sequential_133/lstm_684/lstm_cell_684/MatMul_1/ReadVariableOp^sequential_133/lstm_684/while=^sequential_133/lstm_685/lstm_cell_685/BiasAdd/ReadVariableOp<^sequential_133/lstm_685/lstm_cell_685/MatMul/ReadVariableOp>^sequential_133/lstm_685/lstm_cell_685/MatMul_1/ReadVariableOp^sequential_133/lstm_685/while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������: : : : : : : : : : : 2b
/sequential_133/dense_131/BiasAdd/ReadVariableOp/sequential_133/dense_131/BiasAdd/ReadVariableOp2`
.sequential_133/dense_131/MatMul/ReadVariableOp.sequential_133/dense_131/MatMul/ReadVariableOp2|
<sequential_133/lstm_683/lstm_cell_683/BiasAdd/ReadVariableOp<sequential_133/lstm_683/lstm_cell_683/BiasAdd/ReadVariableOp2z
;sequential_133/lstm_683/lstm_cell_683/MatMul/ReadVariableOp;sequential_133/lstm_683/lstm_cell_683/MatMul/ReadVariableOp2~
=sequential_133/lstm_683/lstm_cell_683/MatMul_1/ReadVariableOp=sequential_133/lstm_683/lstm_cell_683/MatMul_1/ReadVariableOp2>
sequential_133/lstm_683/whilesequential_133/lstm_683/while2|
<sequential_133/lstm_684/lstm_cell_684/BiasAdd/ReadVariableOp<sequential_133/lstm_684/lstm_cell_684/BiasAdd/ReadVariableOp2z
;sequential_133/lstm_684/lstm_cell_684/MatMul/ReadVariableOp;sequential_133/lstm_684/lstm_cell_684/MatMul/ReadVariableOp2~
=sequential_133/lstm_684/lstm_cell_684/MatMul_1/ReadVariableOp=sequential_133/lstm_684/lstm_cell_684/MatMul_1/ReadVariableOp2>
sequential_133/lstm_684/whilesequential_133/lstm_684/while2|
<sequential_133/lstm_685/lstm_cell_685/BiasAdd/ReadVariableOp<sequential_133/lstm_685/lstm_cell_685/BiasAdd/ReadVariableOp2z
;sequential_133/lstm_685/lstm_cell_685/MatMul/ReadVariableOp;sequential_133/lstm_685/lstm_cell_685/MatMul/ReadVariableOp2~
=sequential_133/lstm_685/lstm_cell_685/MatMul_1/ReadVariableOp=sequential_133/lstm_685/lstm_cell_685/MatMul_1/ReadVariableOp2>
sequential_133/lstm_685/whilesequential_133/lstm_685/while:[ W
+
_output_shapes
:���������
(
_user_specified_namelstm_683_input
�
�
/__inference_lstm_cell_684_layer_call_fn_1492698

inputs
states_0
states_1
unknown:	0�
	unknown_0:	0�
	unknown_1:	�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������0:���������0:���������0*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_lstm_cell_684_layer_call_and_return_conditional_losses_14872622
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������02

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������02

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������02

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������0:���������0:���������0: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������0
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������0
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������0
"
_user_specified_name
states/1
�?
�
while_body_1491524
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_684_matmul_readvariableop_resource_0:	0�I
6while_lstm_cell_684_matmul_1_readvariableop_resource_0:	0�D
5while_lstm_cell_684_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_684_matmul_readvariableop_resource:	0�G
4while_lstm_cell_684_matmul_1_readvariableop_resource:	0�B
3while_lstm_cell_684_biasadd_readvariableop_resource:	���*while/lstm_cell_684/BiasAdd/ReadVariableOp�)while/lstm_cell_684/MatMul/ReadVariableOp�+while/lstm_cell_684/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����0   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape�
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������0*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem�
)while/lstm_cell_684/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_684_matmul_readvariableop_resource_0*
_output_shapes
:	0�*
dtype02+
)while/lstm_cell_684/MatMul/ReadVariableOp�
while/lstm_cell_684/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_684/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_684/MatMul�
+while/lstm_cell_684/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_684_matmul_1_readvariableop_resource_0*
_output_shapes
:	0�*
dtype02-
+while/lstm_cell_684/MatMul_1/ReadVariableOp�
while/lstm_cell_684/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_684/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_684/MatMul_1�
while/lstm_cell_684/addAddV2$while/lstm_cell_684/MatMul:product:0&while/lstm_cell_684/MatMul_1:product:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_684/add�
*while/lstm_cell_684/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_684_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype02,
*while/lstm_cell_684/BiasAdd/ReadVariableOp�
while/lstm_cell_684/BiasAddBiasAddwhile/lstm_cell_684/add:z:02while/lstm_cell_684/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
while/lstm_cell_684/BiasAdd�
#while/lstm_cell_684/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_684/split/split_dim�
while/lstm_cell_684/splitSplit,while/lstm_cell_684/split/split_dim:output:0$while/lstm_cell_684/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������0:���������0:���������0:���������0*
	num_split2
while/lstm_cell_684/split�
while/lstm_cell_684/SigmoidSigmoid"while/lstm_cell_684/split:output:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_684/Sigmoid�
while/lstm_cell_684/Sigmoid_1Sigmoid"while/lstm_cell_684/split:output:1*
T0*'
_output_shapes
:���������02
while/lstm_cell_684/Sigmoid_1�
while/lstm_cell_684/mulMul!while/lstm_cell_684/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������02
while/lstm_cell_684/mul�
while/lstm_cell_684/ReluRelu"while/lstm_cell_684/split:output:2*
T0*'
_output_shapes
:���������02
while/lstm_cell_684/Relu�
while/lstm_cell_684/mul_1Mulwhile/lstm_cell_684/Sigmoid:y:0&while/lstm_cell_684/Relu:activations:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_684/mul_1�
while/lstm_cell_684/add_1AddV2while/lstm_cell_684/mul:z:0while/lstm_cell_684/mul_1:z:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_684/add_1�
while/lstm_cell_684/Sigmoid_2Sigmoid"while/lstm_cell_684/split:output:3*
T0*'
_output_shapes
:���������02
while/lstm_cell_684/Sigmoid_2�
while/lstm_cell_684/Relu_1Reluwhile/lstm_cell_684/add_1:z:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_684/Relu_1�
while/lstm_cell_684/mul_2Mul!while/lstm_cell_684/Sigmoid_2:y:0(while/lstm_cell_684/Relu_1:activations:0*
T0*'
_output_shapes
:���������02
while/lstm_cell_684/mul_2�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_684/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2�
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3�
while/Identity_4Identitywhile/lstm_cell_684/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������02
while/Identity_4�
while/Identity_5Identitywhile/lstm_cell_684/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������02
while/Identity_5�

while/NoOpNoOp+^while/lstm_cell_684/BiasAdd/ReadVariableOp*^while/lstm_cell_684/MatMul/ReadVariableOp,^while/lstm_cell_684/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_684_biasadd_readvariableop_resource5while_lstm_cell_684_biasadd_readvariableop_resource_0"n
4while_lstm_cell_684_matmul_1_readvariableop_resource6while_lstm_cell_684_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_684_matmul_readvariableop_resource4while_lstm_cell_684_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������0:���������0: : : : : 2X
*while/lstm_cell_684/BiasAdd/ReadVariableOp*while/lstm_cell_684/BiasAdd/ReadVariableOp2V
)while/lstm_cell_684/MatMul/ReadVariableOp)while/lstm_cell_684/MatMul/ReadVariableOp2Z
+while/lstm_cell_684/MatMul_1/ReadVariableOp+while/lstm_cell_684/MatMul_1/ReadVariableOp: 
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
:���������0:-)
'
_output_shapes
:���������0:

_output_shapes
: :

_output_shapes
: 
�
f
H__inference_dropout_681_layer_call_and_return_conditional_losses_1488553

inputs

identity_1^
IdentityIdentityinputs*
T0*+
_output_shapes
:���������02

Identitym

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:���������02

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������0:S O
+
_output_shapes
:���������0
 
_user_specified_nameinputs
�a
�
 __inference__traced_save_1493032
file_prefix/
+savev2_dense_131_kernel_read_readvariableop-
)savev2_dense_131_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_683_lstm_cell_683_kernel_read_readvariableopF
Bsavev2_lstm_683_lstm_cell_683_recurrent_kernel_read_readvariableop:
6savev2_lstm_683_lstm_cell_683_bias_read_readvariableop<
8savev2_lstm_684_lstm_cell_684_kernel_read_readvariableopF
Bsavev2_lstm_684_lstm_cell_684_recurrent_kernel_read_readvariableop:
6savev2_lstm_684_lstm_cell_684_bias_read_readvariableop<
8savev2_lstm_685_lstm_cell_685_kernel_read_readvariableopF
Bsavev2_lstm_685_lstm_cell_685_recurrent_kernel_read_readvariableop:
6savev2_lstm_685_lstm_cell_685_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop6
2savev2_adam_dense_131_kernel_m_read_readvariableop4
0savev2_adam_dense_131_bias_m_read_readvariableopC
?savev2_adam_lstm_683_lstm_cell_683_kernel_m_read_readvariableopM
Isavev2_adam_lstm_683_lstm_cell_683_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_683_lstm_cell_683_bias_m_read_readvariableopC
?savev2_adam_lstm_684_lstm_cell_684_kernel_m_read_readvariableopM
Isavev2_adam_lstm_684_lstm_cell_684_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_684_lstm_cell_684_bias_m_read_readvariableopC
?savev2_adam_lstm_685_lstm_cell_685_kernel_m_read_readvariableopM
Isavev2_adam_lstm_685_lstm_cell_685_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_685_lstm_cell_685_bias_m_read_readvariableop6
2savev2_adam_dense_131_kernel_v_read_readvariableop4
0savev2_adam_dense_131_bias_v_read_readvariableopC
?savev2_adam_lstm_683_lstm_cell_683_kernel_v_read_readvariableopM
Isavev2_adam_lstm_683_lstm_cell_683_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_683_lstm_cell_683_bias_v_read_readvariableopC
?savev2_adam_lstm_684_lstm_cell_684_kernel_v_read_readvariableopM
Isavev2_adam_lstm_684_lstm_cell_684_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_684_lstm_cell_684_bias_v_read_readvariableopC
?savev2_adam_lstm_685_lstm_cell_685_kernel_v_read_readvariableopM
Isavev2_adam_lstm_685_lstm_cell_685_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_685_lstm_cell_685_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpoints�
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:-*
dtype0*�
value�B�-B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:-*
dtype0*m
valuedBb-B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_131_kernel_read_readvariableop)savev2_dense_131_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_683_lstm_cell_683_kernel_read_readvariableopBsavev2_lstm_683_lstm_cell_683_recurrent_kernel_read_readvariableop6savev2_lstm_683_lstm_cell_683_bias_read_readvariableop8savev2_lstm_684_lstm_cell_684_kernel_read_readvariableopBsavev2_lstm_684_lstm_cell_684_recurrent_kernel_read_readvariableop6savev2_lstm_684_lstm_cell_684_bias_read_readvariableop8savev2_lstm_685_lstm_cell_685_kernel_read_readvariableopBsavev2_lstm_685_lstm_cell_685_recurrent_kernel_read_readvariableop6savev2_lstm_685_lstm_cell_685_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop2savev2_adam_dense_131_kernel_m_read_readvariableop0savev2_adam_dense_131_bias_m_read_readvariableop?savev2_adam_lstm_683_lstm_cell_683_kernel_m_read_readvariableopIsavev2_adam_lstm_683_lstm_cell_683_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_683_lstm_cell_683_bias_m_read_readvariableop?savev2_adam_lstm_684_lstm_cell_684_kernel_m_read_readvariableopIsavev2_adam_lstm_684_lstm_cell_684_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_684_lstm_cell_684_bias_m_read_readvariableop?savev2_adam_lstm_685_lstm_cell_685_kernel_m_read_readvariableopIsavev2_adam_lstm_685_lstm_cell_685_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_685_lstm_cell_685_bias_m_read_readvariableop2savev2_adam_dense_131_kernel_v_read_readvariableop0savev2_adam_dense_131_bias_v_read_readvariableop?savev2_adam_lstm_683_lstm_cell_683_kernel_v_read_readvariableopIsavev2_adam_lstm_683_lstm_cell_683_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_683_lstm_cell_683_bias_v_read_readvariableop?savev2_adam_lstm_684_lstm_cell_684_kernel_v_read_readvariableopIsavev2_adam_lstm_684_lstm_cell_684_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_684_lstm_cell_684_bias_v_read_readvariableop?savev2_adam_lstm_685_lstm_cell_685_kernel_v_read_readvariableopIsavev2_adam_lstm_685_lstm_cell_685_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_685_lstm_cell_685_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *;
dtypes1
/2-	2
SaveV2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*�
_input_shapes�
�: :\:: : : : : :	�:	0�:�:	0�:	0�:�:	0�:	\�:�: : : : : : :\::	�:	0�:�:	0�:	0�:�:	0�:	\�:�:\::	�:	0�:�:	0�:	0�:�:	0�:	\�:�: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:\: 
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
:	�:%	!

_output_shapes
:	0�:!


_output_shapes	
:�:%!

_output_shapes
:	0�:%!

_output_shapes
:	0�:!

_output_shapes	
:�:%!

_output_shapes
:	0�:%!

_output_shapes
:	\�:!

_output_shapes	
:�:
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

:\: 

_output_shapes
::%!

_output_shapes
:	�:%!

_output_shapes
:	0�:!

_output_shapes	
:�:%!

_output_shapes
:	0�:%!

_output_shapes
:	0�:!

_output_shapes	
:�:%!

_output_shapes
:	0�:% !

_output_shapes
:	\�:!!

_output_shapes	
:�:$" 

_output_shapes

:\: #

_output_shapes
::%$!

_output_shapes
:	�:%%!

_output_shapes
:	0�:!&

_output_shapes	
:�:%'!

_output_shapes
:	0�:%(!

_output_shapes
:	0�:!)

_output_shapes	
:�:%*!

_output_shapes
:	0�:%+!

_output_shapes
:	\�:!,

_output_shapes	
:�:-

_output_shapes
: "�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
M
lstm_683_input;
 serving_default_lstm_683_input:0���������=
	dense_1310
StatefulPartitionedCall:0���������tensorflow/serving/predict:ǁ
�
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
	regularization_losses

trainable_variables
	variables
	keras_api

signatures
�__call__
+�&call_and_return_all_conditional_losses
�_default_save_signature"
_tf_keras_sequential
�
cell

state_spec
regularization_losses
trainable_variables
	variables
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
�
regularization_losses
trainable_variables
	variables
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
cell

state_spec
regularization_losses
trainable_variables
	variables
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
�
regularization_losses
trainable_variables
 	variables
!	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
"cell
#
state_spec
$regularization_losses
%trainable_variables
&	variables
'	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
�
(regularization_losses
)trainable_variables
*	variables
+	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

,kernel
-bias
.regularization_losses
/trainable_variables
0	variables
1	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
2iter

3beta_1

4beta_2
	5decay
6learning_rate,m�-m�7m�8m�9m�:m�;m�<m�=m�>m�?m�,v�-v�7v�8v�9v�:v�;v�<v�=v�>v�?v�"
	optimizer
 "
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
�
@layer_regularization_losses
Alayer_metrics
Bmetrics
	regularization_losses

Clayers

trainable_variables
	variables
Dnon_trainable_variables
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
-
�serving_default"
signature_map
�
E
state_size

7kernel
8recurrent_kernel
9bias
Fregularization_losses
Gtrainable_variables
H	variables
I	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
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
�
Jlayer_regularization_losses
Klayer_metrics
Lmetrics

Mlayers
regularization_losses
trainable_variables
	variables
Nnon_trainable_variables

Ostates
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
Player_regularization_losses
Qlayer_metrics
Rmetrics

Slayers
regularization_losses
trainable_variables
	variables
Tnon_trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
U
state_size

:kernel
;recurrent_kernel
<bias
Vregularization_losses
Wtrainable_variables
X	variables
Y	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
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
�
Zlayer_regularization_losses
[layer_metrics
\metrics

]layers
regularization_losses
trainable_variables
	variables
^non_trainable_variables

_states
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
`layer_regularization_losses
alayer_metrics
bmetrics

clayers
regularization_losses
trainable_variables
 	variables
dnon_trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
e
state_size

=kernel
>recurrent_kernel
?bias
fregularization_losses
gtrainable_variables
h	variables
i	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
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
�
jlayer_regularization_losses
klayer_metrics
lmetrics

mlayers
$regularization_losses
%trainable_variables
&	variables
nnon_trainable_variables

ostates
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
player_regularization_losses
qlayer_metrics
rmetrics

slayers
(regularization_losses
)trainable_variables
*	variables
tnon_trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
": \2dense_131/kernel
:2dense_131/bias
 "
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
�
ulayer_regularization_losses
vlayer_metrics
wmetrics

xlayers
.regularization_losses
/trainable_variables
0	variables
ynon_trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
0:.	�2lstm_683/lstm_cell_683/kernel
::8	0�2'lstm_683/lstm_cell_683/recurrent_kernel
*:(�2lstm_683/lstm_cell_683/bias
0:.	0�2lstm_684/lstm_cell_684/kernel
::8	0�2'lstm_684/lstm_cell_684/recurrent_kernel
*:(�2lstm_684/lstm_cell_684/bias
0:.	0�2lstm_685/lstm_cell_685/kernel
::8	\�2'lstm_685/lstm_cell_685/recurrent_kernel
*:(�2lstm_685/lstm_cell_685/bias
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
z0
{1
|2"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
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
�
}layer_regularization_losses
~layer_metrics
metrics
�layers
Fregularization_losses
Gtrainable_variables
H	variables
�non_trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
�
 �layer_regularization_losses
�layer_metrics
�metrics
�layers
Vregularization_losses
Wtrainable_variables
X	variables
�non_trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
�
 �layer_regularization_losses
�layer_metrics
�metrics
�layers
fregularization_losses
gtrainable_variables
h	variables
�non_trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
R

�total

�count
�	variables
�	keras_api"
_tf_keras_metric
c

�total

�count
�
_fn_kwargs
�	variables
�	keras_api"
_tf_keras_metric
c

�total

�count
�
_fn_kwargs
�	variables
�	keras_api"
_tf_keras_metric
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
':%\2Adam/dense_131/kernel/m
!:2Adam/dense_131/bias/m
5:3	�2$Adam/lstm_683/lstm_cell_683/kernel/m
?:=	0�2.Adam/lstm_683/lstm_cell_683/recurrent_kernel/m
/:-�2"Adam/lstm_683/lstm_cell_683/bias/m
5:3	0�2$Adam/lstm_684/lstm_cell_684/kernel/m
?:=	0�2.Adam/lstm_684/lstm_cell_684/recurrent_kernel/m
/:-�2"Adam/lstm_684/lstm_cell_684/bias/m
5:3	0�2$Adam/lstm_685/lstm_cell_685/kernel/m
?:=	\�2.Adam/lstm_685/lstm_cell_685/recurrent_kernel/m
/:-�2"Adam/lstm_685/lstm_cell_685/bias/m
':%\2Adam/dense_131/kernel/v
!:2Adam/dense_131/bias/v
5:3	�2$Adam/lstm_683/lstm_cell_683/kernel/v
?:=	0�2.Adam/lstm_683/lstm_cell_683/recurrent_kernel/v
/:-�2"Adam/lstm_683/lstm_cell_683/bias/v
5:3	0�2$Adam/lstm_684/lstm_cell_684/kernel/v
?:=	0�2.Adam/lstm_684/lstm_cell_684/recurrent_kernel/v
/:-�2"Adam/lstm_684/lstm_cell_684/bias/v
5:3	0�2$Adam/lstm_685/lstm_cell_685/kernel/v
?:=	\�2.Adam/lstm_685/lstm_cell_685/recurrent_kernel/v
/:-�2"Adam/lstm_685/lstm_cell_685/bias/v
�2�
0__inference_sequential_133_layer_call_fn_1488911
0__inference_sequential_133_layer_call_fn_1489727
0__inference_sequential_133_layer_call_fn_1489754
0__inference_sequential_133_layer_call_fn_1489599�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
K__inference_sequential_133_layer_call_and_return_conditional_losses_1490184
K__inference_sequential_133_layer_call_and_return_conditional_losses_1490635
K__inference_sequential_133_layer_call_and_return_conditional_losses_1489632
K__inference_sequential_133_layer_call_and_return_conditional_losses_1489665�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
"__inference__wrapped_model_1486597lstm_683_input"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
*__inference_lstm_683_layer_call_fn_1490646
*__inference_lstm_683_layer_call_fn_1490657
*__inference_lstm_683_layer_call_fn_1490668
*__inference_lstm_683_layer_call_fn_1490679�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
E__inference_lstm_683_layer_call_and_return_conditional_losses_1490822
E__inference_lstm_683_layer_call_and_return_conditional_losses_1490965
E__inference_lstm_683_layer_call_and_return_conditional_losses_1491108
E__inference_lstm_683_layer_call_and_return_conditional_losses_1491251�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
-__inference_dropout_681_layer_call_fn_1491256
-__inference_dropout_681_layer_call_fn_1491261�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
H__inference_dropout_681_layer_call_and_return_conditional_losses_1491266
H__inference_dropout_681_layer_call_and_return_conditional_losses_1491278�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
*__inference_lstm_684_layer_call_fn_1491289
*__inference_lstm_684_layer_call_fn_1491300
*__inference_lstm_684_layer_call_fn_1491311
*__inference_lstm_684_layer_call_fn_1491322�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
E__inference_lstm_684_layer_call_and_return_conditional_losses_1491465
E__inference_lstm_684_layer_call_and_return_conditional_losses_1491608
E__inference_lstm_684_layer_call_and_return_conditional_losses_1491751
E__inference_lstm_684_layer_call_and_return_conditional_losses_1491894�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
-__inference_dropout_682_layer_call_fn_1491899
-__inference_dropout_682_layer_call_fn_1491904�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
H__inference_dropout_682_layer_call_and_return_conditional_losses_1491909
H__inference_dropout_682_layer_call_and_return_conditional_losses_1491921�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
*__inference_lstm_685_layer_call_fn_1491932
*__inference_lstm_685_layer_call_fn_1491943
*__inference_lstm_685_layer_call_fn_1491954
*__inference_lstm_685_layer_call_fn_1491965�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
E__inference_lstm_685_layer_call_and_return_conditional_losses_1492108
E__inference_lstm_685_layer_call_and_return_conditional_losses_1492251
E__inference_lstm_685_layer_call_and_return_conditional_losses_1492394
E__inference_lstm_685_layer_call_and_return_conditional_losses_1492537�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
-__inference_dropout_683_layer_call_fn_1492542
-__inference_dropout_683_layer_call_fn_1492547�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
H__inference_dropout_683_layer_call_and_return_conditional_losses_1492552
H__inference_dropout_683_layer_call_and_return_conditional_losses_1492564�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
+__inference_dense_131_layer_call_fn_1492573�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
F__inference_dense_131_layer_call_and_return_conditional_losses_1492583�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
%__inference_signature_wrapper_1489700lstm_683_input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
/__inference_lstm_cell_683_layer_call_fn_1492600
/__inference_lstm_cell_683_layer_call_fn_1492617�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
J__inference_lstm_cell_683_layer_call_and_return_conditional_losses_1492649
J__inference_lstm_cell_683_layer_call_and_return_conditional_losses_1492681�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
/__inference_lstm_cell_684_layer_call_fn_1492698
/__inference_lstm_cell_684_layer_call_fn_1492715�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
J__inference_lstm_cell_684_layer_call_and_return_conditional_losses_1492747
J__inference_lstm_cell_684_layer_call_and_return_conditional_losses_1492779�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
/__inference_lstm_cell_685_layer_call_fn_1492796
/__inference_lstm_cell_685_layer_call_fn_1492813�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
J__inference_lstm_cell_685_layer_call_and_return_conditional_losses_1492845
J__inference_lstm_cell_685_layer_call_and_return_conditional_losses_1492877�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 �
"__inference__wrapped_model_1486597�789:;<=>?,-;�8
1�.
,�)
lstm_683_input���������
� "5�2
0
	dense_131#� 
	dense_131����������
F__inference_dense_131_layer_call_and_return_conditional_losses_1492583\,-/�,
%�"
 �
inputs���������\
� "%�"
�
0���������
� ~
+__inference_dense_131_layer_call_fn_1492573O,-/�,
%�"
 �
inputs���������\
� "�����������
H__inference_dropout_681_layer_call_and_return_conditional_losses_1491266d7�4
-�*
$�!
inputs���������0
p 
� ")�&
�
0���������0
� �
H__inference_dropout_681_layer_call_and_return_conditional_losses_1491278d7�4
-�*
$�!
inputs���������0
p
� ")�&
�
0���������0
� �
-__inference_dropout_681_layer_call_fn_1491256W7�4
-�*
$�!
inputs���������0
p 
� "����������0�
-__inference_dropout_681_layer_call_fn_1491261W7�4
-�*
$�!
inputs���������0
p
� "����������0�
H__inference_dropout_682_layer_call_and_return_conditional_losses_1491909d7�4
-�*
$�!
inputs���������0
p 
� ")�&
�
0���������0
� �
H__inference_dropout_682_layer_call_and_return_conditional_losses_1491921d7�4
-�*
$�!
inputs���������0
p
� ")�&
�
0���������0
� �
-__inference_dropout_682_layer_call_fn_1491899W7�4
-�*
$�!
inputs���������0
p 
� "����������0�
-__inference_dropout_682_layer_call_fn_1491904W7�4
-�*
$�!
inputs���������0
p
� "����������0�
H__inference_dropout_683_layer_call_and_return_conditional_losses_1492552\3�0
)�&
 �
inputs���������\
p 
� "%�"
�
0���������\
� �
H__inference_dropout_683_layer_call_and_return_conditional_losses_1492564\3�0
)�&
 �
inputs���������\
p
� "%�"
�
0���������\
� �
-__inference_dropout_683_layer_call_fn_1492542O3�0
)�&
 �
inputs���������\
p 
� "����������\�
-__inference_dropout_683_layer_call_fn_1492547O3�0
)�&
 �
inputs���������\
p
� "����������\�
E__inference_lstm_683_layer_call_and_return_conditional_losses_1490822�789O�L
E�B
4�1
/�,
inputs/0������������������

 
p 

 
� "2�/
(�%
0������������������0
� �
E__inference_lstm_683_layer_call_and_return_conditional_losses_1490965�789O�L
E�B
4�1
/�,
inputs/0������������������

 
p

 
� "2�/
(�%
0������������������0
� �
E__inference_lstm_683_layer_call_and_return_conditional_losses_1491108q789?�<
5�2
$�!
inputs���������

 
p 

 
� ")�&
�
0���������0
� �
E__inference_lstm_683_layer_call_and_return_conditional_losses_1491251q789?�<
5�2
$�!
inputs���������

 
p

 
� ")�&
�
0���������0
� �
*__inference_lstm_683_layer_call_fn_1490646}789O�L
E�B
4�1
/�,
inputs/0������������������

 
p 

 
� "%�"������������������0�
*__inference_lstm_683_layer_call_fn_1490657}789O�L
E�B
4�1
/�,
inputs/0������������������

 
p

 
� "%�"������������������0�
*__inference_lstm_683_layer_call_fn_1490668d789?�<
5�2
$�!
inputs���������

 
p 

 
� "����������0�
*__inference_lstm_683_layer_call_fn_1490679d789?�<
5�2
$�!
inputs���������

 
p

 
� "����������0�
E__inference_lstm_684_layer_call_and_return_conditional_losses_1491465�:;<O�L
E�B
4�1
/�,
inputs/0������������������0

 
p 

 
� "2�/
(�%
0������������������0
� �
E__inference_lstm_684_layer_call_and_return_conditional_losses_1491608�:;<O�L
E�B
4�1
/�,
inputs/0������������������0

 
p

 
� "2�/
(�%
0������������������0
� �
E__inference_lstm_684_layer_call_and_return_conditional_losses_1491751q:;<?�<
5�2
$�!
inputs���������0

 
p 

 
� ")�&
�
0���������0
� �
E__inference_lstm_684_layer_call_and_return_conditional_losses_1491894q:;<?�<
5�2
$�!
inputs���������0

 
p

 
� ")�&
�
0���������0
� �
*__inference_lstm_684_layer_call_fn_1491289}:;<O�L
E�B
4�1
/�,
inputs/0������������������0

 
p 

 
� "%�"������������������0�
*__inference_lstm_684_layer_call_fn_1491300}:;<O�L
E�B
4�1
/�,
inputs/0������������������0

 
p

 
� "%�"������������������0�
*__inference_lstm_684_layer_call_fn_1491311d:;<?�<
5�2
$�!
inputs���������0

 
p 

 
� "����������0�
*__inference_lstm_684_layer_call_fn_1491322d:;<?�<
5�2
$�!
inputs���������0

 
p

 
� "����������0�
E__inference_lstm_685_layer_call_and_return_conditional_losses_1492108}=>?O�L
E�B
4�1
/�,
inputs/0������������������0

 
p 

 
� "%�"
�
0���������\
� �
E__inference_lstm_685_layer_call_and_return_conditional_losses_1492251}=>?O�L
E�B
4�1
/�,
inputs/0������������������0

 
p

 
� "%�"
�
0���������\
� �
E__inference_lstm_685_layer_call_and_return_conditional_losses_1492394m=>??�<
5�2
$�!
inputs���������0

 
p 

 
� "%�"
�
0���������\
� �
E__inference_lstm_685_layer_call_and_return_conditional_losses_1492537m=>??�<
5�2
$�!
inputs���������0

 
p

 
� "%�"
�
0���������\
� �
*__inference_lstm_685_layer_call_fn_1491932p=>?O�L
E�B
4�1
/�,
inputs/0������������������0

 
p 

 
� "����������\�
*__inference_lstm_685_layer_call_fn_1491943p=>?O�L
E�B
4�1
/�,
inputs/0������������������0

 
p

 
� "����������\�
*__inference_lstm_685_layer_call_fn_1491954`=>??�<
5�2
$�!
inputs���������0

 
p 

 
� "����������\�
*__inference_lstm_685_layer_call_fn_1491965`=>??�<
5�2
$�!
inputs���������0

 
p

 
� "����������\�
J__inference_lstm_cell_683_layer_call_and_return_conditional_losses_1492649�789��}
v�s
 �
inputs���������
K�H
"�
states/0���������0
"�
states/1���������0
p 
� "s�p
i�f
�
0/0���������0
E�B
�
0/1/0���������0
�
0/1/1���������0
� �
J__inference_lstm_cell_683_layer_call_and_return_conditional_losses_1492681�789��}
v�s
 �
inputs���������
K�H
"�
states/0���������0
"�
states/1���������0
p
� "s�p
i�f
�
0/0���������0
E�B
�
0/1/0���������0
�
0/1/1���������0
� �
/__inference_lstm_cell_683_layer_call_fn_1492600�789��}
v�s
 �
inputs���������
K�H
"�
states/0���������0
"�
states/1���������0
p 
� "c�`
�
0���������0
A�>
�
1/0���������0
�
1/1���������0�
/__inference_lstm_cell_683_layer_call_fn_1492617�789��}
v�s
 �
inputs���������
K�H
"�
states/0���������0
"�
states/1���������0
p
� "c�`
�
0���������0
A�>
�
1/0���������0
�
1/1���������0�
J__inference_lstm_cell_684_layer_call_and_return_conditional_losses_1492747�:;<��}
v�s
 �
inputs���������0
K�H
"�
states/0���������0
"�
states/1���������0
p 
� "s�p
i�f
�
0/0���������0
E�B
�
0/1/0���������0
�
0/1/1���������0
� �
J__inference_lstm_cell_684_layer_call_and_return_conditional_losses_1492779�:;<��}
v�s
 �
inputs���������0
K�H
"�
states/0���������0
"�
states/1���������0
p
� "s�p
i�f
�
0/0���������0
E�B
�
0/1/0���������0
�
0/1/1���������0
� �
/__inference_lstm_cell_684_layer_call_fn_1492698�:;<��}
v�s
 �
inputs���������0
K�H
"�
states/0���������0
"�
states/1���������0
p 
� "c�`
�
0���������0
A�>
�
1/0���������0
�
1/1���������0�
/__inference_lstm_cell_684_layer_call_fn_1492715�:;<��}
v�s
 �
inputs���������0
K�H
"�
states/0���������0
"�
states/1���������0
p
� "c�`
�
0���������0
A�>
�
1/0���������0
�
1/1���������0�
J__inference_lstm_cell_685_layer_call_and_return_conditional_losses_1492845�=>?��}
v�s
 �
inputs���������0
K�H
"�
states/0���������\
"�
states/1���������\
p 
� "s�p
i�f
�
0/0���������\
E�B
�
0/1/0���������\
�
0/1/1���������\
� �
J__inference_lstm_cell_685_layer_call_and_return_conditional_losses_1492877�=>?��}
v�s
 �
inputs���������0
K�H
"�
states/0���������\
"�
states/1���������\
p
� "s�p
i�f
�
0/0���������\
E�B
�
0/1/0���������\
�
0/1/1���������\
� �
/__inference_lstm_cell_685_layer_call_fn_1492796�=>?��}
v�s
 �
inputs���������0
K�H
"�
states/0���������\
"�
states/1���������\
p 
� "c�`
�
0���������\
A�>
�
1/0���������\
�
1/1���������\�
/__inference_lstm_cell_685_layer_call_fn_1492813�=>?��}
v�s
 �
inputs���������0
K�H
"�
states/0���������\
"�
states/1���������\
p
� "c�`
�
0���������\
A�>
�
1/0���������\
�
1/1���������\�
K__inference_sequential_133_layer_call_and_return_conditional_losses_1489632y789:;<=>?,-C�@
9�6
,�)
lstm_683_input���������
p 

 
� "%�"
�
0���������
� �
K__inference_sequential_133_layer_call_and_return_conditional_losses_1489665y789:;<=>?,-C�@
9�6
,�)
lstm_683_input���������
p

 
� "%�"
�
0���������
� �
K__inference_sequential_133_layer_call_and_return_conditional_losses_1490184q789:;<=>?,-;�8
1�.
$�!
inputs���������
p 

 
� "%�"
�
0���������
� �
K__inference_sequential_133_layer_call_and_return_conditional_losses_1490635q789:;<=>?,-;�8
1�.
$�!
inputs���������
p

 
� "%�"
�
0���������
� �
0__inference_sequential_133_layer_call_fn_1488911l789:;<=>?,-C�@
9�6
,�)
lstm_683_input���������
p 

 
� "�����������
0__inference_sequential_133_layer_call_fn_1489599l789:;<=>?,-C�@
9�6
,�)
lstm_683_input���������
p

 
� "�����������
0__inference_sequential_133_layer_call_fn_1489727d789:;<=>?,-;�8
1�.
$�!
inputs���������
p 

 
� "�����������
0__inference_sequential_133_layer_call_fn_1489754d789:;<=>?,-;�8
1�.
$�!
inputs���������
p

 
� "�����������
%__inference_signature_wrapper_1489700�789:;<=>?,-M�J
� 
C�@
>
lstm_683_input,�)
lstm_683_input���������"5�2
0
	dense_131#� 
	dense_131���������