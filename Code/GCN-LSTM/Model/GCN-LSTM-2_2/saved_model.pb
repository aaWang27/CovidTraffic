ã*
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
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
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
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
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
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
executor_typestring ��
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
shape_type/
output_handle���element_dtype"
element_dtypetype"

shape_typetype:
2	
�
TensorListReserve
element_shape"
shape_type
num_elements(
handle���element_dtype"
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
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 
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
�"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68҄(
�
&fixed_adjacency_graph_convolution_68/AVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*7
shared_name(&fixed_adjacency_graph_convolution_68/A
�
:fixed_adjacency_graph_convolution_68/A/Read/ReadVariableOpReadVariableOp&fixed_adjacency_graph_convolution_68/A*
_output_shapes

:*
dtype0
�
+fixed_adjacency_graph_convolution_68/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*<
shared_name-+fixed_adjacency_graph_convolution_68/kernel
�
?fixed_adjacency_graph_convolution_68/kernel/Read/ReadVariableOpReadVariableOp+fixed_adjacency_graph_convolution_68/kernel*
_output_shapes

:
*
dtype0
�
)fixed_adjacency_graph_convolution_68/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*:
shared_name+)fixed_adjacency_graph_convolution_68/bias
�
=fixed_adjacency_graph_convolution_68/bias/Read/ReadVariableOpReadVariableOp)fixed_adjacency_graph_convolution_68/bias*
_output_shapes

:*
dtype0
�
&fixed_adjacency_graph_convolution_69/AVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*7
shared_name(&fixed_adjacency_graph_convolution_69/A
�
:fixed_adjacency_graph_convolution_69/A/Read/ReadVariableOpReadVariableOp&fixed_adjacency_graph_convolution_69/A*
_output_shapes

:*
dtype0
�
+fixed_adjacency_graph_convolution_69/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*<
shared_name-+fixed_adjacency_graph_convolution_69/kernel
�
?fixed_adjacency_graph_convolution_69/kernel/Read/ReadVariableOpReadVariableOp+fixed_adjacency_graph_convolution_69/kernel*
_output_shapes

:
*
dtype0
�
)fixed_adjacency_graph_convolution_69/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*:
shared_name+)fixed_adjacency_graph_convolution_69/bias
�
=fixed_adjacency_graph_convolution_69/bias/Read/ReadVariableOpReadVariableOp)fixed_adjacency_graph_convolution_69/bias*
_output_shapes

:*
dtype0
z
dense_34/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:h* 
shared_namedense_34/kernel
s
#dense_34/kernel/Read/ReadVariableOpReadVariableOpdense_34/kernel*
_output_shapes

:h*
dtype0
r
dense_34/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_34/bias
k
!dense_34/bias/Read/ReadVariableOpReadVariableOpdense_34/bias*
_output_shapes
:*
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
lstm_68/lstm_cell_68/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*,
shared_namelstm_68/lstm_cell_68/kernel
�
/lstm_68/lstm_cell_68/kernel/Read/ReadVariableOpReadVariableOplstm_68/lstm_cell_68/kernel*
_output_shapes
:	�*
dtype0
�
%lstm_68/lstm_cell_68/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	l�*6
shared_name'%lstm_68/lstm_cell_68/recurrent_kernel
�
9lstm_68/lstm_cell_68/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_68/lstm_cell_68/recurrent_kernel*
_output_shapes
:	l�*
dtype0
�
lstm_68/lstm_cell_68/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�**
shared_namelstm_68/lstm_cell_68/bias
�
-lstm_68/lstm_cell_68/bias/Read/ReadVariableOpReadVariableOplstm_68/lstm_cell_68/bias*
_output_shapes	
:�*
dtype0
�
lstm_69/lstm_cell_69/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	l�*,
shared_namelstm_69/lstm_cell_69/kernel
�
/lstm_69/lstm_cell_69/kernel/Read/ReadVariableOpReadVariableOplstm_69/lstm_cell_69/kernel*
_output_shapes
:	l�*
dtype0
�
%lstm_69/lstm_cell_69/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	h�*6
shared_name'%lstm_69/lstm_cell_69/recurrent_kernel
�
9lstm_69/lstm_cell_69/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_69/lstm_cell_69/recurrent_kernel*
_output_shapes
:	h�*
dtype0
�
lstm_69/lstm_cell_69/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�**
shared_namelstm_69/lstm_cell_69/bias
�
-lstm_69/lstm_cell_69/bias/Read/ReadVariableOpReadVariableOplstm_69/lstm_cell_69/bias*
_output_shapes	
:�*
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
�
2Adam/fixed_adjacency_graph_convolution_68/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*C
shared_name42Adam/fixed_adjacency_graph_convolution_68/kernel/m
�
FAdam/fixed_adjacency_graph_convolution_68/kernel/m/Read/ReadVariableOpReadVariableOp2Adam/fixed_adjacency_graph_convolution_68/kernel/m*
_output_shapes

:
*
dtype0
�
0Adam/fixed_adjacency_graph_convolution_68/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*A
shared_name20Adam/fixed_adjacency_graph_convolution_68/bias/m
�
DAdam/fixed_adjacency_graph_convolution_68/bias/m/Read/ReadVariableOpReadVariableOp0Adam/fixed_adjacency_graph_convolution_68/bias/m*
_output_shapes

:*
dtype0
�
2Adam/fixed_adjacency_graph_convolution_69/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*C
shared_name42Adam/fixed_adjacency_graph_convolution_69/kernel/m
�
FAdam/fixed_adjacency_graph_convolution_69/kernel/m/Read/ReadVariableOpReadVariableOp2Adam/fixed_adjacency_graph_convolution_69/kernel/m*
_output_shapes

:
*
dtype0
�
0Adam/fixed_adjacency_graph_convolution_69/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*A
shared_name20Adam/fixed_adjacency_graph_convolution_69/bias/m
�
DAdam/fixed_adjacency_graph_convolution_69/bias/m/Read/ReadVariableOpReadVariableOp0Adam/fixed_adjacency_graph_convolution_69/bias/m*
_output_shapes

:*
dtype0
�
Adam/dense_34/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:h*'
shared_nameAdam/dense_34/kernel/m
�
*Adam/dense_34/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_34/kernel/m*
_output_shapes

:h*
dtype0
�
Adam/dense_34/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_34/bias/m
y
(Adam/dense_34/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_34/bias/m*
_output_shapes
:*
dtype0
�
"Adam/lstm_68/lstm_cell_68/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*3
shared_name$"Adam/lstm_68/lstm_cell_68/kernel/m
�
6Adam/lstm_68/lstm_cell_68/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_68/lstm_cell_68/kernel/m*
_output_shapes
:	�*
dtype0
�
,Adam/lstm_68/lstm_cell_68/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	l�*=
shared_name.,Adam/lstm_68/lstm_cell_68/recurrent_kernel/m
�
@Adam/lstm_68/lstm_cell_68/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_68/lstm_cell_68/recurrent_kernel/m*
_output_shapes
:	l�*
dtype0
�
 Adam/lstm_68/lstm_cell_68/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*1
shared_name" Adam/lstm_68/lstm_cell_68/bias/m
�
4Adam/lstm_68/lstm_cell_68/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_68/lstm_cell_68/bias/m*
_output_shapes	
:�*
dtype0
�
"Adam/lstm_69/lstm_cell_69/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	l�*3
shared_name$"Adam/lstm_69/lstm_cell_69/kernel/m
�
6Adam/lstm_69/lstm_cell_69/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_69/lstm_cell_69/kernel/m*
_output_shapes
:	l�*
dtype0
�
,Adam/lstm_69/lstm_cell_69/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	h�*=
shared_name.,Adam/lstm_69/lstm_cell_69/recurrent_kernel/m
�
@Adam/lstm_69/lstm_cell_69/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_69/lstm_cell_69/recurrent_kernel/m*
_output_shapes
:	h�*
dtype0
�
 Adam/lstm_69/lstm_cell_69/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*1
shared_name" Adam/lstm_69/lstm_cell_69/bias/m
�
4Adam/lstm_69/lstm_cell_69/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_69/lstm_cell_69/bias/m*
_output_shapes	
:�*
dtype0
�
2Adam/fixed_adjacency_graph_convolution_68/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*C
shared_name42Adam/fixed_adjacency_graph_convolution_68/kernel/v
�
FAdam/fixed_adjacency_graph_convolution_68/kernel/v/Read/ReadVariableOpReadVariableOp2Adam/fixed_adjacency_graph_convolution_68/kernel/v*
_output_shapes

:
*
dtype0
�
0Adam/fixed_adjacency_graph_convolution_68/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*A
shared_name20Adam/fixed_adjacency_graph_convolution_68/bias/v
�
DAdam/fixed_adjacency_graph_convolution_68/bias/v/Read/ReadVariableOpReadVariableOp0Adam/fixed_adjacency_graph_convolution_68/bias/v*
_output_shapes

:*
dtype0
�
2Adam/fixed_adjacency_graph_convolution_69/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*C
shared_name42Adam/fixed_adjacency_graph_convolution_69/kernel/v
�
FAdam/fixed_adjacency_graph_convolution_69/kernel/v/Read/ReadVariableOpReadVariableOp2Adam/fixed_adjacency_graph_convolution_69/kernel/v*
_output_shapes

:
*
dtype0
�
0Adam/fixed_adjacency_graph_convolution_69/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*A
shared_name20Adam/fixed_adjacency_graph_convolution_69/bias/v
�
DAdam/fixed_adjacency_graph_convolution_69/bias/v/Read/ReadVariableOpReadVariableOp0Adam/fixed_adjacency_graph_convolution_69/bias/v*
_output_shapes

:*
dtype0
�
Adam/dense_34/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:h*'
shared_nameAdam/dense_34/kernel/v
�
*Adam/dense_34/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_34/kernel/v*
_output_shapes

:h*
dtype0
�
Adam/dense_34/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_34/bias/v
y
(Adam/dense_34/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_34/bias/v*
_output_shapes
:*
dtype0
�
"Adam/lstm_68/lstm_cell_68/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*3
shared_name$"Adam/lstm_68/lstm_cell_68/kernel/v
�
6Adam/lstm_68/lstm_cell_68/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_68/lstm_cell_68/kernel/v*
_output_shapes
:	�*
dtype0
�
,Adam/lstm_68/lstm_cell_68/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	l�*=
shared_name.,Adam/lstm_68/lstm_cell_68/recurrent_kernel/v
�
@Adam/lstm_68/lstm_cell_68/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_68/lstm_cell_68/recurrent_kernel/v*
_output_shapes
:	l�*
dtype0
�
 Adam/lstm_68/lstm_cell_68/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*1
shared_name" Adam/lstm_68/lstm_cell_68/bias/v
�
4Adam/lstm_68/lstm_cell_68/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_68/lstm_cell_68/bias/v*
_output_shapes	
:�*
dtype0
�
"Adam/lstm_69/lstm_cell_69/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	l�*3
shared_name$"Adam/lstm_69/lstm_cell_69/kernel/v
�
6Adam/lstm_69/lstm_cell_69/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_69/lstm_cell_69/kernel/v*
_output_shapes
:	l�*
dtype0
�
,Adam/lstm_69/lstm_cell_69/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	h�*=
shared_name.,Adam/lstm_69/lstm_cell_69/recurrent_kernel/v
�
@Adam/lstm_69/lstm_cell_69/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_69/lstm_cell_69/recurrent_kernel/v*
_output_shapes
:	h�*
dtype0
�
 Adam/lstm_69/lstm_cell_69/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*1
shared_name" Adam/lstm_69/lstm_cell_69/bias/v
�
4Adam/lstm_69/lstm_cell_69/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_69/lstm_cell_69/bias/v*
_output_shapes	
:�*
dtype0

NoOpNoOp
�l
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�k
value�kB�k B�k
�
layer-0
layer-1
layer-2
layer_with_weights-0
layer-3
layer_with_weights-1
layer-4
layer-5
layer-6
layer-7
	layer_with_weights-2
	layer-8

layer_with_weights-3

layer-9
layer-10
layer_with_weights-4
layer-11
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
* 

	keras_api* 
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
�
A

kernel
bias
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses*
�
&A

'kernel
(bias
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses*
�
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses* 
�
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses* 
�
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses* 
�
Acell
B
state_spec
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G_random_generator
H__call__
*I&call_and_return_all_conditional_losses*
�
Jcell
K
state_spec
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P_random_generator
Q__call__
*R&call_and_return_all_conditional_losses*
�
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W_random_generator
X__call__
*Y&call_and_return_all_conditional_losses* 
�

Zkernel
[bias
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses*
�
biter

cbeta_1

dbeta_2
	edecay
flearning_ratem�m�'m�(m�Zm�[m�gm�hm�im�jm�km�lm�v�v�'v�(v�Zv�[v�gv�hv�iv�jv�kv�lv�*
j
0
1
2
'3
(4
&5
g6
h7
i8
j9
k10
l11
Z12
[13*
Z
0
1
'2
(3
g4
h5
i6
j7
k8
l9
Z10
[11*
* 
�
mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

rserving_default* 
* 
* 
* 
* 
�
snon_trainable_variables

tlayers
umetrics
vlayer_regularization_losses
wlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 
* 
* 
qk
VARIABLE_VALUE&fixed_adjacency_graph_convolution_68/A1layer_with_weights-0/A/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUE+fixed_adjacency_graph_convolution_68/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE)fixed_adjacency_graph_convolution_68/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1
2*

0
1*
* 
�
xnon_trainable_variables

ylayers
zmetrics
{layer_regularization_losses
|layer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses*
* 
* 
qk
VARIABLE_VALUE&fixed_adjacency_graph_convolution_69/A1layer_with_weights-1/A/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUE+fixed_adjacency_graph_convolution_69/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE)fixed_adjacency_graph_convolution_69/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

'0
(1
&2*

'0
(1*
* 
�
}non_trainable_variables

~layers
metrics
 �layer_regularization_losses
�layer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses*
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses* 
* 
* 
�
�
state_size

gkernel
hrecurrent_kernel
ibias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�_random_generator
�__call__
+�&call_and_return_all_conditional_losses*
* 

g0
h1
i2*

g0
h1
i2*
* 
�
�states
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses*
* 
* 
* 
�
�
state_size

jkernel
krecurrent_kernel
lbias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�_random_generator
�__call__
+�&call_and_return_all_conditional_losses*
* 

j0
k1
l2*

j0
k1
l2*
* 
�
�states
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses* 
* 
* 
* 
_Y
VARIABLE_VALUEdense_34/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_34/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

Z0
[1*

Z0
[1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUElstm_68/lstm_cell_68/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%lstm_68/lstm_cell_68/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElstm_68/lstm_cell_68/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUElstm_69/lstm_cell_69/kernel&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE%lstm_69/lstm_cell_69/recurrent_kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElstm_69/lstm_cell_69/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*

0
&1*
Z
0
1
2
3
4
5
6
7
	8

9
10
11*

�0
�1*
* 
* 
* 
* 
* 
* 
* 
* 

0*
* 
* 
* 
* 

&0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

g0
h1
i2*

g0
h1
i2*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

A0*
* 
* 
* 
* 

j0
k1
l2*

j0
k1
l2*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

J0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<

�total

�count
�	variables
�	keras_api*
M

�total

�count
�
_fn_kwargs
�	variables
�	keras_api*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1*

�	variables*
��
VARIABLE_VALUE2Adam/fixed_adjacency_graph_convolution_68/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE0Adam/fixed_adjacency_graph_convolution_68/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE2Adam/fixed_adjacency_graph_convolution_69/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE0Adam/fixed_adjacency_graph_convolution_69/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_34/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_34/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/lstm_68/lstm_cell_68/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE,Adam/lstm_68/lstm_cell_68/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/lstm_68/lstm_cell_68/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/lstm_69/lstm_cell_69/kernel/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE,Adam/lstm_69/lstm_cell_69/recurrent_kernel/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE Adam/lstm_69/lstm_cell_69/bias/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE2Adam/fixed_adjacency_graph_convolution_68/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE0Adam/fixed_adjacency_graph_convolution_68/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE2Adam/fixed_adjacency_graph_convolution_69/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE0Adam/fixed_adjacency_graph_convolution_69/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_34/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_34/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/lstm_68/lstm_cell_68/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE,Adam/lstm_68/lstm_cell_68/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/lstm_68/lstm_cell_68/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/lstm_69/lstm_cell_69/kernel/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE,Adam/lstm_69/lstm_cell_69/recurrent_kernel/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE Adam/lstm_69/lstm_cell_69/bias/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
serving_default_input_69Placeholder*+
_output_shapes
:���������*
dtype0* 
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_69&fixed_adjacency_graph_convolution_68/A+fixed_adjacency_graph_convolution_68/kernel)fixed_adjacency_graph_convolution_68/bias&fixed_adjacency_graph_convolution_69/A+fixed_adjacency_graph_convolution_69/kernel)fixed_adjacency_graph_convolution_69/biaslstm_68/lstm_cell_68/kernel%lstm_68/lstm_cell_68/recurrent_kernellstm_68/lstm_cell_68/biaslstm_69/lstm_cell_69/kernel%lstm_69/lstm_cell_69/recurrent_kernellstm_69/lstm_cell_69/biasdense_34/kerneldense_34/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *-
f(R&
$__inference_signature_wrapper_341576
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename:fixed_adjacency_graph_convolution_68/A/Read/ReadVariableOp?fixed_adjacency_graph_convolution_68/kernel/Read/ReadVariableOp=fixed_adjacency_graph_convolution_68/bias/Read/ReadVariableOp:fixed_adjacency_graph_convolution_69/A/Read/ReadVariableOp?fixed_adjacency_graph_convolution_69/kernel/Read/ReadVariableOp=fixed_adjacency_graph_convolution_69/bias/Read/ReadVariableOp#dense_34/kernel/Read/ReadVariableOp!dense_34/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_68/lstm_cell_68/kernel/Read/ReadVariableOp9lstm_68/lstm_cell_68/recurrent_kernel/Read/ReadVariableOp-lstm_68/lstm_cell_68/bias/Read/ReadVariableOp/lstm_69/lstm_cell_69/kernel/Read/ReadVariableOp9lstm_69/lstm_cell_69/recurrent_kernel/Read/ReadVariableOp-lstm_69/lstm_cell_69/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpFAdam/fixed_adjacency_graph_convolution_68/kernel/m/Read/ReadVariableOpDAdam/fixed_adjacency_graph_convolution_68/bias/m/Read/ReadVariableOpFAdam/fixed_adjacency_graph_convolution_69/kernel/m/Read/ReadVariableOpDAdam/fixed_adjacency_graph_convolution_69/bias/m/Read/ReadVariableOp*Adam/dense_34/kernel/m/Read/ReadVariableOp(Adam/dense_34/bias/m/Read/ReadVariableOp6Adam/lstm_68/lstm_cell_68/kernel/m/Read/ReadVariableOp@Adam/lstm_68/lstm_cell_68/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_68/lstm_cell_68/bias/m/Read/ReadVariableOp6Adam/lstm_69/lstm_cell_69/kernel/m/Read/ReadVariableOp@Adam/lstm_69/lstm_cell_69/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_69/lstm_cell_69/bias/m/Read/ReadVariableOpFAdam/fixed_adjacency_graph_convolution_68/kernel/v/Read/ReadVariableOpDAdam/fixed_adjacency_graph_convolution_68/bias/v/Read/ReadVariableOpFAdam/fixed_adjacency_graph_convolution_69/kernel/v/Read/ReadVariableOpDAdam/fixed_adjacency_graph_convolution_69/bias/v/Read/ReadVariableOp*Adam/dense_34/kernel/v/Read/ReadVariableOp(Adam/dense_34/bias/v/Read/ReadVariableOp6Adam/lstm_68/lstm_cell_68/kernel/v/Read/ReadVariableOp@Adam/lstm_68/lstm_cell_68/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_68/lstm_cell_68/bias/v/Read/ReadVariableOp6Adam/lstm_69/lstm_cell_69/kernel/v/Read/ReadVariableOp@Adam/lstm_69/lstm_cell_69/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_69/lstm_cell_69/bias/v/Read/ReadVariableOpConst*<
Tin5
321	*
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
GPU 2J 8� *(
f#R!
__inference__traced_save_343411
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename&fixed_adjacency_graph_convolution_68/A+fixed_adjacency_graph_convolution_68/kernel)fixed_adjacency_graph_convolution_68/bias&fixed_adjacency_graph_convolution_69/A+fixed_adjacency_graph_convolution_69/kernel)fixed_adjacency_graph_convolution_69/biasdense_34/kerneldense_34/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_68/lstm_cell_68/kernel%lstm_68/lstm_cell_68/recurrent_kernellstm_68/lstm_cell_68/biaslstm_69/lstm_cell_69/kernel%lstm_69/lstm_cell_69/recurrent_kernellstm_69/lstm_cell_69/biastotalcounttotal_1count_12Adam/fixed_adjacency_graph_convolution_68/kernel/m0Adam/fixed_adjacency_graph_convolution_68/bias/m2Adam/fixed_adjacency_graph_convolution_69/kernel/m0Adam/fixed_adjacency_graph_convolution_69/bias/mAdam/dense_34/kernel/mAdam/dense_34/bias/m"Adam/lstm_68/lstm_cell_68/kernel/m,Adam/lstm_68/lstm_cell_68/recurrent_kernel/m Adam/lstm_68/lstm_cell_68/bias/m"Adam/lstm_69/lstm_cell_69/kernel/m,Adam/lstm_69/lstm_cell_69/recurrent_kernel/m Adam/lstm_69/lstm_cell_69/bias/m2Adam/fixed_adjacency_graph_convolution_68/kernel/v0Adam/fixed_adjacency_graph_convolution_68/bias/v2Adam/fixed_adjacency_graph_convolution_69/kernel/v0Adam/fixed_adjacency_graph_convolution_69/bias/vAdam/dense_34/kernel/vAdam/dense_34/bias/v"Adam/lstm_68/lstm_cell_68/kernel/v,Adam/lstm_68/lstm_cell_68/recurrent_kernel/v Adam/lstm_68/lstm_cell_68/bias/v"Adam/lstm_69/lstm_cell_69/kernel/v,Adam/lstm_69/lstm_cell_69/recurrent_kernel/v Adam/lstm_69/lstm_cell_69/bias/v*;
Tin4
220*
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
GPU 2J 8� *+
f&R$
"__inference__traced_restore_343562��%
�8
�
while_body_342920
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_69_matmul_readvariableop_resource_0:	l�H
5while_lstm_cell_69_matmul_1_readvariableop_resource_0:	h�C
4while_lstm_cell_69_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_69_matmul_readvariableop_resource:	l�F
3while_lstm_cell_69_matmul_1_readvariableop_resource:	h�A
2while_lstm_cell_69_biasadd_readvariableop_resource:	���)while/lstm_cell_69/BiasAdd/ReadVariableOp�(while/lstm_cell_69/MatMul/ReadVariableOp�*while/lstm_cell_69/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����l   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������l*
element_dtype0�
(while/lstm_cell_69/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_69_matmul_readvariableop_resource_0*
_output_shapes
:	l�*
dtype0�
while/lstm_cell_69/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_69/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_69/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_69_matmul_1_readvariableop_resource_0*
_output_shapes
:	h�*
dtype0�
while/lstm_cell_69/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_69/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_69/addAddV2#while/lstm_cell_69/MatMul:product:0%while/lstm_cell_69/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_69/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_69_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_69/BiasAddBiasAddwhile/lstm_cell_69/add:z:01while/lstm_cell_69/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
"while/lstm_cell_69/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_69/splitSplit+while/lstm_cell_69/split/split_dim:output:0#while/lstm_cell_69/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������h:���������h:���������h:���������h*
	num_splitz
while/lstm_cell_69/SigmoidSigmoid!while/lstm_cell_69/split:output:0*
T0*'
_output_shapes
:���������h|
while/lstm_cell_69/Sigmoid_1Sigmoid!while/lstm_cell_69/split:output:1*
T0*'
_output_shapes
:���������h�
while/lstm_cell_69/mulMul while/lstm_cell_69/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������ht
while/lstm_cell_69/ReluRelu!while/lstm_cell_69/split:output:2*
T0*'
_output_shapes
:���������h�
while/lstm_cell_69/mul_1Mulwhile/lstm_cell_69/Sigmoid:y:0%while/lstm_cell_69/Relu:activations:0*
T0*'
_output_shapes
:���������h�
while/lstm_cell_69/add_1AddV2while/lstm_cell_69/mul:z:0while/lstm_cell_69/mul_1:z:0*
T0*'
_output_shapes
:���������h|
while/lstm_cell_69/Sigmoid_2Sigmoid!while/lstm_cell_69/split:output:3*
T0*'
_output_shapes
:���������hq
while/lstm_cell_69/Relu_1Reluwhile/lstm_cell_69/add_1:z:0*
T0*'
_output_shapes
:���������h�
while/lstm_cell_69/mul_2Mul while/lstm_cell_69/Sigmoid_2:y:0'while/lstm_cell_69/Relu_1:activations:0*
T0*'
_output_shapes
:���������h�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_69/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :���y
while/Identity_4Identitywhile/lstm_cell_69/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������hy
while/Identity_5Identitywhile/lstm_cell_69/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������h�

while/NoOpNoOp*^while/lstm_cell_69/BiasAdd/ReadVariableOp)^while/lstm_cell_69/MatMul/ReadVariableOp+^while/lstm_cell_69/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_69_biasadd_readvariableop_resource4while_lstm_cell_69_biasadd_readvariableop_resource_0"l
3while_lstm_cell_69_matmul_1_readvariableop_resource5while_lstm_cell_69_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_69_matmul_readvariableop_resource3while_lstm_cell_69_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������h:���������h: : : : : 2V
)while/lstm_cell_69/BiasAdd/ReadVariableOp)while/lstm_cell_69/BiasAdd/ReadVariableOp2T
(while/lstm_cell_69/MatMul/ReadVariableOp(while/lstm_cell_69/MatMul/ReadVariableOp2X
*while/lstm_cell_69/MatMul_1/ReadVariableOp*while/lstm_cell_69/MatMul_1/ReadVariableOp: 
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
:���������h:-)
'
_output_shapes
:���������h:

_output_shapes
: :

_output_shapes
: 
�

c
G__inference_reshape_104_layer_call_and_return_conditional_losses_339624

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:���������\
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�8
�
while_body_341875
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_68_matmul_readvariableop_resource_0:	�H
5while_lstm_cell_68_matmul_1_readvariableop_resource_0:	l�C
4while_lstm_cell_68_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_68_matmul_readvariableop_resource:	�F
3while_lstm_cell_68_matmul_1_readvariableop_resource:	l�A
2while_lstm_cell_68_biasadd_readvariableop_resource:	���)while/lstm_cell_68/BiasAdd/ReadVariableOp�(while/lstm_cell_68/MatMul/ReadVariableOp�*while/lstm_cell_68/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
(while/lstm_cell_68/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_68_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_68/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_68_matmul_1_readvariableop_resource_0*
_output_shapes
:	l�*
dtype0�
while/lstm_cell_68/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_68/addAddV2#while/lstm_cell_68/MatMul:product:0%while/lstm_cell_68/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_68_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_68/BiasAddBiasAddwhile/lstm_cell_68/add:z:01while/lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
"while/lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_68/splitSplit+while/lstm_cell_68/split/split_dim:output:0#while/lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������l:���������l:���������l:���������l*
	num_splitz
while/lstm_cell_68/SigmoidSigmoid!while/lstm_cell_68/split:output:0*
T0*'
_output_shapes
:���������l|
while/lstm_cell_68/Sigmoid_1Sigmoid!while/lstm_cell_68/split:output:1*
T0*'
_output_shapes
:���������l�
while/lstm_cell_68/mulMul while/lstm_cell_68/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������lt
while/lstm_cell_68/ReluRelu!while/lstm_cell_68/split:output:2*
T0*'
_output_shapes
:���������l�
while/lstm_cell_68/mul_1Mulwhile/lstm_cell_68/Sigmoid:y:0%while/lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:���������l�
while/lstm_cell_68/add_1AddV2while/lstm_cell_68/mul:z:0while/lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:���������l|
while/lstm_cell_68/Sigmoid_2Sigmoid!while/lstm_cell_68/split:output:3*
T0*'
_output_shapes
:���������lq
while/lstm_cell_68/Relu_1Reluwhile/lstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:���������l�
while/lstm_cell_68/mul_2Mul while/lstm_cell_68/Sigmoid_2:y:0'while/lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:���������l�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_68/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :���y
while/Identity_4Identitywhile/lstm_cell_68/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������ly
while/Identity_5Identitywhile/lstm_cell_68/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������l�

while/NoOpNoOp*^while/lstm_cell_68/BiasAdd/ReadVariableOp)^while/lstm_cell_68/MatMul/ReadVariableOp+^while/lstm_cell_68/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_68_biasadd_readvariableop_resource4while_lstm_cell_68_biasadd_readvariableop_resource_0"l
3while_lstm_cell_68_matmul_1_readvariableop_resource5while_lstm_cell_68_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_68_matmul_readvariableop_resource3while_lstm_cell_68_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������l:���������l: : : : : 2V
)while/lstm_cell_68/BiasAdd/ReadVariableOp)while/lstm_cell_68/BiasAdd/ReadVariableOp2T
(while/lstm_cell_68/MatMul/ReadVariableOp(while/lstm_cell_68/MatMul/ReadVariableOp2X
*while/lstm_cell_68/MatMul_1/ReadVariableOp*while/lstm_cell_68/MatMul_1/ReadVariableOp: 
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
:���������l:-)
'
_output_shapes
:���������l:

_output_shapes
: :

_output_shapes
: 
�L
�
"model_34_lstm_69_while_body_338641>
:model_34_lstm_69_while_model_34_lstm_69_while_loop_counterD
@model_34_lstm_69_while_model_34_lstm_69_while_maximum_iterations&
"model_34_lstm_69_while_placeholder(
$model_34_lstm_69_while_placeholder_1(
$model_34_lstm_69_while_placeholder_2(
$model_34_lstm_69_while_placeholder_3=
9model_34_lstm_69_while_model_34_lstm_69_strided_slice_1_0y
umodel_34_lstm_69_while_tensorarrayv2read_tensorlistgetitem_model_34_lstm_69_tensorarrayunstack_tensorlistfromtensor_0W
Dmodel_34_lstm_69_while_lstm_cell_69_matmul_readvariableop_resource_0:	l�Y
Fmodel_34_lstm_69_while_lstm_cell_69_matmul_1_readvariableop_resource_0:	h�T
Emodel_34_lstm_69_while_lstm_cell_69_biasadd_readvariableop_resource_0:	�#
model_34_lstm_69_while_identity%
!model_34_lstm_69_while_identity_1%
!model_34_lstm_69_while_identity_2%
!model_34_lstm_69_while_identity_3%
!model_34_lstm_69_while_identity_4%
!model_34_lstm_69_while_identity_5;
7model_34_lstm_69_while_model_34_lstm_69_strided_slice_1w
smodel_34_lstm_69_while_tensorarrayv2read_tensorlistgetitem_model_34_lstm_69_tensorarrayunstack_tensorlistfromtensorU
Bmodel_34_lstm_69_while_lstm_cell_69_matmul_readvariableop_resource:	l�W
Dmodel_34_lstm_69_while_lstm_cell_69_matmul_1_readvariableop_resource:	h�R
Cmodel_34_lstm_69_while_lstm_cell_69_biasadd_readvariableop_resource:	���:model_34/lstm_69/while/lstm_cell_69/BiasAdd/ReadVariableOp�9model_34/lstm_69/while/lstm_cell_69/MatMul/ReadVariableOp�;model_34/lstm_69/while/lstm_cell_69/MatMul_1/ReadVariableOp�
Hmodel_34/lstm_69/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����l   �
:model_34/lstm_69/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemumodel_34_lstm_69_while_tensorarrayv2read_tensorlistgetitem_model_34_lstm_69_tensorarrayunstack_tensorlistfromtensor_0"model_34_lstm_69_while_placeholderQmodel_34/lstm_69/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������l*
element_dtype0�
9model_34/lstm_69/while/lstm_cell_69/MatMul/ReadVariableOpReadVariableOpDmodel_34_lstm_69_while_lstm_cell_69_matmul_readvariableop_resource_0*
_output_shapes
:	l�*
dtype0�
*model_34/lstm_69/while/lstm_cell_69/MatMulMatMulAmodel_34/lstm_69/while/TensorArrayV2Read/TensorListGetItem:item:0Amodel_34/lstm_69/while/lstm_cell_69/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
;model_34/lstm_69/while/lstm_cell_69/MatMul_1/ReadVariableOpReadVariableOpFmodel_34_lstm_69_while_lstm_cell_69_matmul_1_readvariableop_resource_0*
_output_shapes
:	h�*
dtype0�
,model_34/lstm_69/while/lstm_cell_69/MatMul_1MatMul$model_34_lstm_69_while_placeholder_2Cmodel_34/lstm_69/while/lstm_cell_69/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'model_34/lstm_69/while/lstm_cell_69/addAddV24model_34/lstm_69/while/lstm_cell_69/MatMul:product:06model_34/lstm_69/while/lstm_cell_69/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
:model_34/lstm_69/while/lstm_cell_69/BiasAdd/ReadVariableOpReadVariableOpEmodel_34_lstm_69_while_lstm_cell_69_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
+model_34/lstm_69/while/lstm_cell_69/BiasAddBiasAdd+model_34/lstm_69/while/lstm_cell_69/add:z:0Bmodel_34/lstm_69/while/lstm_cell_69/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������u
3model_34/lstm_69/while/lstm_cell_69/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
)model_34/lstm_69/while/lstm_cell_69/splitSplit<model_34/lstm_69/while/lstm_cell_69/split/split_dim:output:04model_34/lstm_69/while/lstm_cell_69/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������h:���������h:���������h:���������h*
	num_split�
+model_34/lstm_69/while/lstm_cell_69/SigmoidSigmoid2model_34/lstm_69/while/lstm_cell_69/split:output:0*
T0*'
_output_shapes
:���������h�
-model_34/lstm_69/while/lstm_cell_69/Sigmoid_1Sigmoid2model_34/lstm_69/while/lstm_cell_69/split:output:1*
T0*'
_output_shapes
:���������h�
'model_34/lstm_69/while/lstm_cell_69/mulMul1model_34/lstm_69/while/lstm_cell_69/Sigmoid_1:y:0$model_34_lstm_69_while_placeholder_3*
T0*'
_output_shapes
:���������h�
(model_34/lstm_69/while/lstm_cell_69/ReluRelu2model_34/lstm_69/while/lstm_cell_69/split:output:2*
T0*'
_output_shapes
:���������h�
)model_34/lstm_69/while/lstm_cell_69/mul_1Mul/model_34/lstm_69/while/lstm_cell_69/Sigmoid:y:06model_34/lstm_69/while/lstm_cell_69/Relu:activations:0*
T0*'
_output_shapes
:���������h�
)model_34/lstm_69/while/lstm_cell_69/add_1AddV2+model_34/lstm_69/while/lstm_cell_69/mul:z:0-model_34/lstm_69/while/lstm_cell_69/mul_1:z:0*
T0*'
_output_shapes
:���������h�
-model_34/lstm_69/while/lstm_cell_69/Sigmoid_2Sigmoid2model_34/lstm_69/while/lstm_cell_69/split:output:3*
T0*'
_output_shapes
:���������h�
*model_34/lstm_69/while/lstm_cell_69/Relu_1Relu-model_34/lstm_69/while/lstm_cell_69/add_1:z:0*
T0*'
_output_shapes
:���������h�
)model_34/lstm_69/while/lstm_cell_69/mul_2Mul1model_34/lstm_69/while/lstm_cell_69/Sigmoid_2:y:08model_34/lstm_69/while/lstm_cell_69/Relu_1:activations:0*
T0*'
_output_shapes
:���������h�
;model_34/lstm_69/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem$model_34_lstm_69_while_placeholder_1"model_34_lstm_69_while_placeholder-model_34/lstm_69/while/lstm_cell_69/mul_2:z:0*
_output_shapes
: *
element_dtype0:���^
model_34/lstm_69/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
model_34/lstm_69/while/addAddV2"model_34_lstm_69_while_placeholder%model_34/lstm_69/while/add/y:output:0*
T0*
_output_shapes
: `
model_34/lstm_69/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
model_34/lstm_69/while/add_1AddV2:model_34_lstm_69_while_model_34_lstm_69_while_loop_counter'model_34/lstm_69/while/add_1/y:output:0*
T0*
_output_shapes
: �
model_34/lstm_69/while/IdentityIdentity model_34/lstm_69/while/add_1:z:0^model_34/lstm_69/while/NoOp*
T0*
_output_shapes
: �
!model_34/lstm_69/while/Identity_1Identity@model_34_lstm_69_while_model_34_lstm_69_while_maximum_iterations^model_34/lstm_69/while/NoOp*
T0*
_output_shapes
: �
!model_34/lstm_69/while/Identity_2Identitymodel_34/lstm_69/while/add:z:0^model_34/lstm_69/while/NoOp*
T0*
_output_shapes
: �
!model_34/lstm_69/while/Identity_3IdentityKmodel_34/lstm_69/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^model_34/lstm_69/while/NoOp*
T0*
_output_shapes
: :����
!model_34/lstm_69/while/Identity_4Identity-model_34/lstm_69/while/lstm_cell_69/mul_2:z:0^model_34/lstm_69/while/NoOp*
T0*'
_output_shapes
:���������h�
!model_34/lstm_69/while/Identity_5Identity-model_34/lstm_69/while/lstm_cell_69/add_1:z:0^model_34/lstm_69/while/NoOp*
T0*'
_output_shapes
:���������h�
model_34/lstm_69/while/NoOpNoOp;^model_34/lstm_69/while/lstm_cell_69/BiasAdd/ReadVariableOp:^model_34/lstm_69/while/lstm_cell_69/MatMul/ReadVariableOp<^model_34/lstm_69/while/lstm_cell_69/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "K
model_34_lstm_69_while_identity(model_34/lstm_69/while/Identity:output:0"O
!model_34_lstm_69_while_identity_1*model_34/lstm_69/while/Identity_1:output:0"O
!model_34_lstm_69_while_identity_2*model_34/lstm_69/while/Identity_2:output:0"O
!model_34_lstm_69_while_identity_3*model_34/lstm_69/while/Identity_3:output:0"O
!model_34_lstm_69_while_identity_4*model_34/lstm_69/while/Identity_4:output:0"O
!model_34_lstm_69_while_identity_5*model_34/lstm_69/while/Identity_5:output:0"�
Cmodel_34_lstm_69_while_lstm_cell_69_biasadd_readvariableop_resourceEmodel_34_lstm_69_while_lstm_cell_69_biasadd_readvariableop_resource_0"�
Dmodel_34_lstm_69_while_lstm_cell_69_matmul_1_readvariableop_resourceFmodel_34_lstm_69_while_lstm_cell_69_matmul_1_readvariableop_resource_0"�
Bmodel_34_lstm_69_while_lstm_cell_69_matmul_readvariableop_resourceDmodel_34_lstm_69_while_lstm_cell_69_matmul_readvariableop_resource_0"t
7model_34_lstm_69_while_model_34_lstm_69_strided_slice_19model_34_lstm_69_while_model_34_lstm_69_strided_slice_1_0"�
smodel_34_lstm_69_while_tensorarrayv2read_tensorlistgetitem_model_34_lstm_69_tensorarrayunstack_tensorlistfromtensorumodel_34_lstm_69_while_tensorarrayv2read_tensorlistgetitem_model_34_lstm_69_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������h:���������h: : : : : 2x
:model_34/lstm_69/while/lstm_cell_69/BiasAdd/ReadVariableOp:model_34/lstm_69/while/lstm_cell_69/BiasAdd/ReadVariableOp2v
9model_34/lstm_69/while/lstm_cell_69/MatMul/ReadVariableOp9model_34/lstm_69/while/lstm_cell_69/MatMul/ReadVariableOp2z
;model_34/lstm_69/while/lstm_cell_69/MatMul_1/ReadVariableOp;model_34/lstm_69/while/lstm_cell_69/MatMul_1/ReadVariableOp: 
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
:���������h:-)
'
_output_shapes
:���������h:

_output_shapes
: :

_output_shapes
: 
�
�
H__inference_lstm_cell_68_layer_call_and_return_conditional_losses_338813

inputs

states
states_11
matmul_readvariableop_resource:	�3
 matmul_1_readvariableop_resource:	l�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	l�*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������l:���������l:���������l:���������l*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������lV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������lU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������lN
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������l_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������lT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������lV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������lK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������lc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������lX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������lZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������lZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������l�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������l:���������l: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������l
 
_user_specified_namestates:OK
'
_output_shapes
:���������l
 
_user_specified_namestates
�"
�
while_body_338827
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_68_338851_0:	�.
while_lstm_cell_68_338853_0:	l�*
while_lstm_cell_68_338855_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_68_338851:	�,
while_lstm_cell_68_338853:	l�(
while_lstm_cell_68_338855:	���*while/lstm_cell_68/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
*while/lstm_cell_68/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_68_338851_0while_lstm_cell_68_338853_0while_lstm_cell_68_338855_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������l:���������l:���������l*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_68_layer_call_and_return_conditional_losses_338813�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_68/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :����
while/Identity_4Identity3while/lstm_cell_68/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������l�
while/Identity_5Identity3while/lstm_cell_68/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������ly

while/NoOpNoOp+^while/lstm_cell_68/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_68_338851while_lstm_cell_68_338851_0"8
while_lstm_cell_68_338853while_lstm_cell_68_338853_0"8
while_lstm_cell_68_338855while_lstm_cell_68_338855_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������l:���������l: : : : : 2X
*while/lstm_cell_68/StatefulPartitionedCall*while/lstm_cell_68/StatefulPartitionedCall: 
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
:���������l:-)
'
_output_shapes
:���������l:

_output_shapes
: :

_output_shapes
: 
�8
�
C__inference_lstm_69_layer_call_and_return_conditional_losses_339437

inputs&
lstm_cell_69_339355:	l�&
lstm_cell_69_339357:	h�"
lstm_cell_69_339359:	�
identity��$lstm_cell_69/StatefulPartitionedCall�while;
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
valueB:�
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
value	B :hs
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
:���������hR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :hw
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
:���������hc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������lD
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����l   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������l*
shrink_axis_mask�
$lstm_cell_69/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_69_339355lstm_cell_69_339357lstm_cell_69_339359*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������h:���������h:���������h*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_69_layer_call_and_return_conditional_losses_339309n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����h   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_69_339355lstm_cell_69_339357lstm_cell_69_339359*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������h:���������h: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_339368*
condR
while_cond_339367*K
output_shapes:
8: : : : :���������h:���������h: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����h   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������h*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������h*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������h[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������hu
NoOpNoOp%^lstm_cell_69/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������l: : : 2L
$lstm_cell_69/StatefulPartitionedCall$lstm_cell_69/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������l
 
_user_specified_nameinputs
�
�
(__inference_lstm_68_layer_call_fn_341816

inputs
unknown:	�
	unknown_0:	l�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������l*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_68_layer_call_and_return_conditional_losses_340336s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������l`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
H
,__inference_reshape_104_layer_call_fn_341759

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
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_reshape_104_layer_call_and_return_conditional_losses_339624d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_339176
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_339176___redundant_placeholder04
0while_while_cond_339176___redundant_placeholder14
0while_while_cond_339176___redundant_placeholder24
0while_while_cond_339176___redundant_placeholder3
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
@: : : : :���������h:���������h: ::::: 
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
:���������h:-)
'
_output_shapes
:���������h:

_output_shapes
: :

_output_shapes
:
�
�
(__inference_lstm_68_layer_call_fn_341783
inputs_0
unknown:	�
	unknown_0:	l�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������l*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_68_layer_call_and_return_conditional_losses_338896|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������l`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
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
�
�
(__inference_lstm_69_layer_call_fn_342432

inputs
unknown:	l�
	unknown_0:	h�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������h*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_69_layer_call_and_return_conditional_losses_340171o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������h`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������l: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������l
 
_user_specified_nameinputs
�
�
H__inference_lstm_cell_69_layer_call_and_return_conditional_losses_343215

inputs
states_0
states_11
matmul_readvariableop_resource:	l�3
 matmul_1_readvariableop_resource:	h�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	l�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	h�*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������h:���������h:���������h:���������h*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������hV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������hU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������hN
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������h_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������hT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������hV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������hK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������hc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������hX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������hZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������hZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������h�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������l:���������h:���������h: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������l
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������h
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������h
"
_user_specified_name
states/1
�J
�
C__inference_lstm_69_layer_call_and_return_conditional_losses_343004

inputs>
+lstm_cell_69_matmul_readvariableop_resource:	l�@
-lstm_cell_69_matmul_1_readvariableop_resource:	h�;
,lstm_cell_69_biasadd_readvariableop_resource:	�
identity��#lstm_cell_69/BiasAdd/ReadVariableOp�"lstm_cell_69/MatMul/ReadVariableOp�$lstm_cell_69/MatMul_1/ReadVariableOp�while;
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
valueB:�
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
value	B :hs
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
:���������hR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :hw
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
:���������hc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������lD
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����l   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������l*
shrink_axis_mask�
"lstm_cell_69/MatMul/ReadVariableOpReadVariableOp+lstm_cell_69_matmul_readvariableop_resource*
_output_shapes
:	l�*
dtype0�
lstm_cell_69/MatMulMatMulstrided_slice_2:output:0*lstm_cell_69/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$lstm_cell_69/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_69_matmul_1_readvariableop_resource*
_output_shapes
:	h�*
dtype0�
lstm_cell_69/MatMul_1MatMulzeros:output:0,lstm_cell_69/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_69/addAddV2lstm_cell_69/MatMul:product:0lstm_cell_69/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
#lstm_cell_69/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_69_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_69/BiasAddBiasAddlstm_cell_69/add:z:0+lstm_cell_69/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������^
lstm_cell_69/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_69/splitSplit%lstm_cell_69/split/split_dim:output:0lstm_cell_69/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������h:���������h:���������h:���������h*
	num_splitn
lstm_cell_69/SigmoidSigmoidlstm_cell_69/split:output:0*
T0*'
_output_shapes
:���������hp
lstm_cell_69/Sigmoid_1Sigmoidlstm_cell_69/split:output:1*
T0*'
_output_shapes
:���������hw
lstm_cell_69/mulMullstm_cell_69/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������hh
lstm_cell_69/ReluRelulstm_cell_69/split:output:2*
T0*'
_output_shapes
:���������h�
lstm_cell_69/mul_1Mullstm_cell_69/Sigmoid:y:0lstm_cell_69/Relu:activations:0*
T0*'
_output_shapes
:���������h{
lstm_cell_69/add_1AddV2lstm_cell_69/mul:z:0lstm_cell_69/mul_1:z:0*
T0*'
_output_shapes
:���������hp
lstm_cell_69/Sigmoid_2Sigmoidlstm_cell_69/split:output:3*
T0*'
_output_shapes
:���������he
lstm_cell_69/Relu_1Relulstm_cell_69/add_1:z:0*
T0*'
_output_shapes
:���������h�
lstm_cell_69/mul_2Mullstm_cell_69/Sigmoid_2:y:0!lstm_cell_69/Relu_1:activations:0*
T0*'
_output_shapes
:���������hn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����h   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_69_matmul_readvariableop_resource-lstm_cell_69_matmul_1_readvariableop_resource,lstm_cell_69_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������h:���������h: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_342920*
condR
while_cond_342919*K
output_shapes:
8: : : : :���������h:���������h: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����h   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������h*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������h*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������h[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������h�
NoOpNoOp$^lstm_cell_69/BiasAdd/ReadVariableOp#^lstm_cell_69/MatMul/ReadVariableOp%^lstm_cell_69/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������l: : : 2J
#lstm_cell_69/BiasAdd/ReadVariableOp#lstm_cell_69/BiasAdd/ReadVariableOp2H
"lstm_cell_69/MatMul/ReadVariableOp"lstm_cell_69/MatMul/ReadVariableOp2L
$lstm_cell_69/MatMul_1/ReadVariableOp$lstm_cell_69/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������l
 
_user_specified_nameinputs
�A
�

lstm_69_while_body_341442,
(lstm_69_while_lstm_69_while_loop_counter2
.lstm_69_while_lstm_69_while_maximum_iterations
lstm_69_while_placeholder
lstm_69_while_placeholder_1
lstm_69_while_placeholder_2
lstm_69_while_placeholder_3+
'lstm_69_while_lstm_69_strided_slice_1_0g
clstm_69_while_tensorarrayv2read_tensorlistgetitem_lstm_69_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_69_while_lstm_cell_69_matmul_readvariableop_resource_0:	l�P
=lstm_69_while_lstm_cell_69_matmul_1_readvariableop_resource_0:	h�K
<lstm_69_while_lstm_cell_69_biasadd_readvariableop_resource_0:	�
lstm_69_while_identity
lstm_69_while_identity_1
lstm_69_while_identity_2
lstm_69_while_identity_3
lstm_69_while_identity_4
lstm_69_while_identity_5)
%lstm_69_while_lstm_69_strided_slice_1e
alstm_69_while_tensorarrayv2read_tensorlistgetitem_lstm_69_tensorarrayunstack_tensorlistfromtensorL
9lstm_69_while_lstm_cell_69_matmul_readvariableop_resource:	l�N
;lstm_69_while_lstm_cell_69_matmul_1_readvariableop_resource:	h�I
:lstm_69_while_lstm_cell_69_biasadd_readvariableop_resource:	���1lstm_69/while/lstm_cell_69/BiasAdd/ReadVariableOp�0lstm_69/while/lstm_cell_69/MatMul/ReadVariableOp�2lstm_69/while/lstm_cell_69/MatMul_1/ReadVariableOp�
?lstm_69/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����l   �
1lstm_69/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_69_while_tensorarrayv2read_tensorlistgetitem_lstm_69_tensorarrayunstack_tensorlistfromtensor_0lstm_69_while_placeholderHlstm_69/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������l*
element_dtype0�
0lstm_69/while/lstm_cell_69/MatMul/ReadVariableOpReadVariableOp;lstm_69_while_lstm_cell_69_matmul_readvariableop_resource_0*
_output_shapes
:	l�*
dtype0�
!lstm_69/while/lstm_cell_69/MatMulMatMul8lstm_69/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_69/while/lstm_cell_69/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
2lstm_69/while/lstm_cell_69/MatMul_1/ReadVariableOpReadVariableOp=lstm_69_while_lstm_cell_69_matmul_1_readvariableop_resource_0*
_output_shapes
:	h�*
dtype0�
#lstm_69/while/lstm_cell_69/MatMul_1MatMullstm_69_while_placeholder_2:lstm_69/while/lstm_cell_69/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_69/while/lstm_cell_69/addAddV2+lstm_69/while/lstm_cell_69/MatMul:product:0-lstm_69/while/lstm_cell_69/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
1lstm_69/while/lstm_cell_69/BiasAdd/ReadVariableOpReadVariableOp<lstm_69_while_lstm_cell_69_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
"lstm_69/while/lstm_cell_69/BiasAddBiasAdd"lstm_69/while/lstm_cell_69/add:z:09lstm_69/while/lstm_cell_69/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������l
*lstm_69/while/lstm_cell_69/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
 lstm_69/while/lstm_cell_69/splitSplit3lstm_69/while/lstm_cell_69/split/split_dim:output:0+lstm_69/while/lstm_cell_69/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������h:���������h:���������h:���������h*
	num_split�
"lstm_69/while/lstm_cell_69/SigmoidSigmoid)lstm_69/while/lstm_cell_69/split:output:0*
T0*'
_output_shapes
:���������h�
$lstm_69/while/lstm_cell_69/Sigmoid_1Sigmoid)lstm_69/while/lstm_cell_69/split:output:1*
T0*'
_output_shapes
:���������h�
lstm_69/while/lstm_cell_69/mulMul(lstm_69/while/lstm_cell_69/Sigmoid_1:y:0lstm_69_while_placeholder_3*
T0*'
_output_shapes
:���������h�
lstm_69/while/lstm_cell_69/ReluRelu)lstm_69/while/lstm_cell_69/split:output:2*
T0*'
_output_shapes
:���������h�
 lstm_69/while/lstm_cell_69/mul_1Mul&lstm_69/while/lstm_cell_69/Sigmoid:y:0-lstm_69/while/lstm_cell_69/Relu:activations:0*
T0*'
_output_shapes
:���������h�
 lstm_69/while/lstm_cell_69/add_1AddV2"lstm_69/while/lstm_cell_69/mul:z:0$lstm_69/while/lstm_cell_69/mul_1:z:0*
T0*'
_output_shapes
:���������h�
$lstm_69/while/lstm_cell_69/Sigmoid_2Sigmoid)lstm_69/while/lstm_cell_69/split:output:3*
T0*'
_output_shapes
:���������h�
!lstm_69/while/lstm_cell_69/Relu_1Relu$lstm_69/while/lstm_cell_69/add_1:z:0*
T0*'
_output_shapes
:���������h�
 lstm_69/while/lstm_cell_69/mul_2Mul(lstm_69/while/lstm_cell_69/Sigmoid_2:y:0/lstm_69/while/lstm_cell_69/Relu_1:activations:0*
T0*'
_output_shapes
:���������h�
2lstm_69/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_69_while_placeholder_1lstm_69_while_placeholder$lstm_69/while/lstm_cell_69/mul_2:z:0*
_output_shapes
: *
element_dtype0:���U
lstm_69/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_69/while/addAddV2lstm_69_while_placeholderlstm_69/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_69/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_69/while/add_1AddV2(lstm_69_while_lstm_69_while_loop_counterlstm_69/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_69/while/IdentityIdentitylstm_69/while/add_1:z:0^lstm_69/while/NoOp*
T0*
_output_shapes
: �
lstm_69/while/Identity_1Identity.lstm_69_while_lstm_69_while_maximum_iterations^lstm_69/while/NoOp*
T0*
_output_shapes
: q
lstm_69/while/Identity_2Identitylstm_69/while/add:z:0^lstm_69/while/NoOp*
T0*
_output_shapes
: �
lstm_69/while/Identity_3IdentityBlstm_69/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_69/while/NoOp*
T0*
_output_shapes
: :����
lstm_69/while/Identity_4Identity$lstm_69/while/lstm_cell_69/mul_2:z:0^lstm_69/while/NoOp*
T0*'
_output_shapes
:���������h�
lstm_69/while/Identity_5Identity$lstm_69/while/lstm_cell_69/add_1:z:0^lstm_69/while/NoOp*
T0*'
_output_shapes
:���������h�
lstm_69/while/NoOpNoOp2^lstm_69/while/lstm_cell_69/BiasAdd/ReadVariableOp1^lstm_69/while/lstm_cell_69/MatMul/ReadVariableOp3^lstm_69/while/lstm_cell_69/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_69_while_identitylstm_69/while/Identity:output:0"=
lstm_69_while_identity_1!lstm_69/while/Identity_1:output:0"=
lstm_69_while_identity_2!lstm_69/while/Identity_2:output:0"=
lstm_69_while_identity_3!lstm_69/while/Identity_3:output:0"=
lstm_69_while_identity_4!lstm_69/while/Identity_4:output:0"=
lstm_69_while_identity_5!lstm_69/while/Identity_5:output:0"P
%lstm_69_while_lstm_69_strided_slice_1'lstm_69_while_lstm_69_strided_slice_1_0"z
:lstm_69_while_lstm_cell_69_biasadd_readvariableop_resource<lstm_69_while_lstm_cell_69_biasadd_readvariableop_resource_0"|
;lstm_69_while_lstm_cell_69_matmul_1_readvariableop_resource=lstm_69_while_lstm_cell_69_matmul_1_readvariableop_resource_0"x
9lstm_69_while_lstm_cell_69_matmul_readvariableop_resource;lstm_69_while_lstm_cell_69_matmul_readvariableop_resource_0"�
alstm_69_while_tensorarrayv2read_tensorlistgetitem_lstm_69_tensorarrayunstack_tensorlistfromtensorclstm_69_while_tensorarrayv2read_tensorlistgetitem_lstm_69_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������h:���������h: : : : : 2f
1lstm_69/while/lstm_cell_69/BiasAdd/ReadVariableOp1lstm_69/while/lstm_cell_69/BiasAdd/ReadVariableOp2d
0lstm_69/while/lstm_cell_69/MatMul/ReadVariableOp0lstm_69/while/lstm_cell_69/MatMul/ReadVariableOp2h
2lstm_69/while/lstm_cell_69/MatMul_1/ReadVariableOp2lstm_69/while/lstm_cell_69/MatMul_1/ReadVariableOp: 
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
:���������h:-)
'
_output_shapes
:���������h:

_output_shapes
: :

_output_shapes
: 
�
�
)__inference_model_34_layer_call_fn_339982
input_69
unknown:
	unknown_0:

	unknown_1:
	unknown_2:
	unknown_3:

	unknown_4:
	unknown_5:	�
	unknown_6:	l�
	unknown_7:	�
	unknown_8:	l�
	unknown_9:	h�

unknown_10:	�

unknown_11:h

unknown_12:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_69unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_model_34_layer_call_and_return_conditional_losses_339951o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:���������
"
_user_specified_name
input_69
�
�
while_cond_342633
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_342633___redundant_placeholder04
0while_while_cond_342633___redundant_placeholder14
0while_while_cond_342633___redundant_placeholder24
0while_while_cond_342633___redundant_placeholder3
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
@: : : : :���������h:���������h: ::::: 
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
:���������h:-)
'
_output_shapes
:���������h:

_output_shapes
: :

_output_shapes
:
�

e
F__inference_dropout_34_layer_call_and_return_conditional_losses_340012

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *B�?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������hC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������h*
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *p�f>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������ho
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������hi
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:���������hY
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:���������h"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������h:O K
'
_output_shapes
:���������h
 
_user_specified_nameinputs
�
�
-__inference_lstm_cell_68_layer_call_fn_343085

inputs
states_0
states_1
unknown:	�
	unknown_0:	l�
	unknown_1:	�
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
9:���������l:���������l:���������l*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_68_layer_call_and_return_conditional_losses_338959o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������lq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������lq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������l`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������l:���������l: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������l
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������l
"
_user_specified_name
states/1
�J
�
C__inference_lstm_69_layer_call_and_return_conditional_losses_340171

inputs>
+lstm_cell_69_matmul_readvariableop_resource:	l�@
-lstm_cell_69_matmul_1_readvariableop_resource:	h�;
,lstm_cell_69_biasadd_readvariableop_resource:	�
identity��#lstm_cell_69/BiasAdd/ReadVariableOp�"lstm_cell_69/MatMul/ReadVariableOp�$lstm_cell_69/MatMul_1/ReadVariableOp�while;
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
valueB:�
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
value	B :hs
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
:���������hR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :hw
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
:���������hc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������lD
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����l   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������l*
shrink_axis_mask�
"lstm_cell_69/MatMul/ReadVariableOpReadVariableOp+lstm_cell_69_matmul_readvariableop_resource*
_output_shapes
:	l�*
dtype0�
lstm_cell_69/MatMulMatMulstrided_slice_2:output:0*lstm_cell_69/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$lstm_cell_69/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_69_matmul_1_readvariableop_resource*
_output_shapes
:	h�*
dtype0�
lstm_cell_69/MatMul_1MatMulzeros:output:0,lstm_cell_69/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_69/addAddV2lstm_cell_69/MatMul:product:0lstm_cell_69/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
#lstm_cell_69/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_69_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_69/BiasAddBiasAddlstm_cell_69/add:z:0+lstm_cell_69/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������^
lstm_cell_69/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_69/splitSplit%lstm_cell_69/split/split_dim:output:0lstm_cell_69/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������h:���������h:���������h:���������h*
	num_splitn
lstm_cell_69/SigmoidSigmoidlstm_cell_69/split:output:0*
T0*'
_output_shapes
:���������hp
lstm_cell_69/Sigmoid_1Sigmoidlstm_cell_69/split:output:1*
T0*'
_output_shapes
:���������hw
lstm_cell_69/mulMullstm_cell_69/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������hh
lstm_cell_69/ReluRelulstm_cell_69/split:output:2*
T0*'
_output_shapes
:���������h�
lstm_cell_69/mul_1Mullstm_cell_69/Sigmoid:y:0lstm_cell_69/Relu:activations:0*
T0*'
_output_shapes
:���������h{
lstm_cell_69/add_1AddV2lstm_cell_69/mul:z:0lstm_cell_69/mul_1:z:0*
T0*'
_output_shapes
:���������hp
lstm_cell_69/Sigmoid_2Sigmoidlstm_cell_69/split:output:3*
T0*'
_output_shapes
:���������he
lstm_cell_69/Relu_1Relulstm_cell_69/add_1:z:0*
T0*'
_output_shapes
:���������h�
lstm_cell_69/mul_2Mullstm_cell_69/Sigmoid_2:y:0!lstm_cell_69/Relu_1:activations:0*
T0*'
_output_shapes
:���������hn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����h   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_69_matmul_readvariableop_resource-lstm_cell_69_matmul_1_readvariableop_resource,lstm_cell_69_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������h:���������h: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_340087*
condR
while_cond_340086*K
output_shapes:
8: : : : :���������h:���������h: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����h   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������h*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������h*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������h[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������h�
NoOpNoOp$^lstm_cell_69/BiasAdd/ReadVariableOp#^lstm_cell_69/MatMul/ReadVariableOp%^lstm_cell_69/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������l: : : 2J
#lstm_cell_69/BiasAdd/ReadVariableOp#lstm_cell_69/BiasAdd/ReadVariableOp2H
"lstm_cell_69/MatMul/ReadVariableOp"lstm_cell_69/MatMul/ReadVariableOp2L
$lstm_cell_69/MatMul_1/ReadVariableOp$lstm_cell_69/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������l
 
_user_specified_nameinputs
�J
�
C__inference_lstm_69_layer_call_and_return_conditional_losses_342718
inputs_0>
+lstm_cell_69_matmul_readvariableop_resource:	l�@
-lstm_cell_69_matmul_1_readvariableop_resource:	h�;
,lstm_cell_69_biasadd_readvariableop_resource:	�
identity��#lstm_cell_69/BiasAdd/ReadVariableOp�"lstm_cell_69/MatMul/ReadVariableOp�$lstm_cell_69/MatMul_1/ReadVariableOp�while=
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
valueB:�
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
value	B :hs
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
:���������hR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :hw
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
:���������hc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������lD
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����l   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������l*
shrink_axis_mask�
"lstm_cell_69/MatMul/ReadVariableOpReadVariableOp+lstm_cell_69_matmul_readvariableop_resource*
_output_shapes
:	l�*
dtype0�
lstm_cell_69/MatMulMatMulstrided_slice_2:output:0*lstm_cell_69/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$lstm_cell_69/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_69_matmul_1_readvariableop_resource*
_output_shapes
:	h�*
dtype0�
lstm_cell_69/MatMul_1MatMulzeros:output:0,lstm_cell_69/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_69/addAddV2lstm_cell_69/MatMul:product:0lstm_cell_69/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
#lstm_cell_69/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_69_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_69/BiasAddBiasAddlstm_cell_69/add:z:0+lstm_cell_69/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������^
lstm_cell_69/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_69/splitSplit%lstm_cell_69/split/split_dim:output:0lstm_cell_69/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������h:���������h:���������h:���������h*
	num_splitn
lstm_cell_69/SigmoidSigmoidlstm_cell_69/split:output:0*
T0*'
_output_shapes
:���������hp
lstm_cell_69/Sigmoid_1Sigmoidlstm_cell_69/split:output:1*
T0*'
_output_shapes
:���������hw
lstm_cell_69/mulMullstm_cell_69/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������hh
lstm_cell_69/ReluRelulstm_cell_69/split:output:2*
T0*'
_output_shapes
:���������h�
lstm_cell_69/mul_1Mullstm_cell_69/Sigmoid:y:0lstm_cell_69/Relu:activations:0*
T0*'
_output_shapes
:���������h{
lstm_cell_69/add_1AddV2lstm_cell_69/mul:z:0lstm_cell_69/mul_1:z:0*
T0*'
_output_shapes
:���������hp
lstm_cell_69/Sigmoid_2Sigmoidlstm_cell_69/split:output:3*
T0*'
_output_shapes
:���������he
lstm_cell_69/Relu_1Relulstm_cell_69/add_1:z:0*
T0*'
_output_shapes
:���������h�
lstm_cell_69/mul_2Mullstm_cell_69/Sigmoid_2:y:0!lstm_cell_69/Relu_1:activations:0*
T0*'
_output_shapes
:���������hn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����h   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_69_matmul_readvariableop_resource-lstm_cell_69_matmul_1_readvariableop_resource,lstm_cell_69_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������h:���������h: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_342634*
condR
while_cond_342633*K
output_shapes:
8: : : : :���������h:���������h: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����h   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������h*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������h*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������h[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������h�
NoOpNoOp$^lstm_cell_69/BiasAdd/ReadVariableOp#^lstm_cell_69/MatMul/ReadVariableOp%^lstm_cell_69/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������l: : : 2J
#lstm_cell_69/BiasAdd/ReadVariableOp#lstm_cell_69/BiasAdd/ReadVariableOp2H
"lstm_cell_69/MatMul/ReadVariableOp"lstm_cell_69/MatMul/ReadVariableOp2L
$lstm_cell_69/MatMul_1/ReadVariableOp$lstm_cell_69/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������l
"
_user_specified_name
inputs/0
�
d
F__inference_dropout_34_layer_call_and_return_conditional_losses_343019

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:���������h[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������h"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������h:O K
'
_output_shapes
:���������h
 
_user_specified_nameinputs
�
�
)__inference_dense_34_layer_call_fn_343040

inputs
unknown:h
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_34_layer_call_and_return_conditional_losses_339944o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������h: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������h
 
_user_specified_nameinputs
�
�
H__inference_lstm_cell_69_layer_call_and_return_conditional_losses_343247

inputs
states_0
states_11
matmul_readvariableop_resource:	l�3
 matmul_1_readvariableop_resource:	h�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	l�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	h�*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������h:���������h:���������h:���������h*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������hV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������hU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������hN
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������h_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������hT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������hV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������hK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������hc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������hX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������hZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������hZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������h�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������l:���������h:���������h: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������l
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������h
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������h
"
_user_specified_name
states/1
�

c
G__inference_reshape_102_layer_call_and_return_conditional_losses_341594

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:���������\
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
H__inference_lstm_cell_68_layer_call_and_return_conditional_losses_343149

inputs
states_0
states_11
matmul_readvariableop_resource:	�3
 matmul_1_readvariableop_resource:	l�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	l�*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������l:���������l:���������l:���������l*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������lV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������lU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������lN
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������l_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������lT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������lV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������lK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������lc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������lX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������lZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������lZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������l�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������l:���������l: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������l
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������l
"
_user_specified_name
states/1
�J
�
C__inference_lstm_69_layer_call_and_return_conditional_losses_342861

inputs>
+lstm_cell_69_matmul_readvariableop_resource:	l�@
-lstm_cell_69_matmul_1_readvariableop_resource:	h�;
,lstm_cell_69_biasadd_readvariableop_resource:	�
identity��#lstm_cell_69/BiasAdd/ReadVariableOp�"lstm_cell_69/MatMul/ReadVariableOp�$lstm_cell_69/MatMul_1/ReadVariableOp�while;
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
valueB:�
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
value	B :hs
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
:���������hR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :hw
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
:���������hc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������lD
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����l   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������l*
shrink_axis_mask�
"lstm_cell_69/MatMul/ReadVariableOpReadVariableOp+lstm_cell_69_matmul_readvariableop_resource*
_output_shapes
:	l�*
dtype0�
lstm_cell_69/MatMulMatMulstrided_slice_2:output:0*lstm_cell_69/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$lstm_cell_69/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_69_matmul_1_readvariableop_resource*
_output_shapes
:	h�*
dtype0�
lstm_cell_69/MatMul_1MatMulzeros:output:0,lstm_cell_69/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_69/addAddV2lstm_cell_69/MatMul:product:0lstm_cell_69/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
#lstm_cell_69/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_69_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_69/BiasAddBiasAddlstm_cell_69/add:z:0+lstm_cell_69/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������^
lstm_cell_69/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_69/splitSplit%lstm_cell_69/split/split_dim:output:0lstm_cell_69/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������h:���������h:���������h:���������h*
	num_splitn
lstm_cell_69/SigmoidSigmoidlstm_cell_69/split:output:0*
T0*'
_output_shapes
:���������hp
lstm_cell_69/Sigmoid_1Sigmoidlstm_cell_69/split:output:1*
T0*'
_output_shapes
:���������hw
lstm_cell_69/mulMullstm_cell_69/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������hh
lstm_cell_69/ReluRelulstm_cell_69/split:output:2*
T0*'
_output_shapes
:���������h�
lstm_cell_69/mul_1Mullstm_cell_69/Sigmoid:y:0lstm_cell_69/Relu:activations:0*
T0*'
_output_shapes
:���������h{
lstm_cell_69/add_1AddV2lstm_cell_69/mul:z:0lstm_cell_69/mul_1:z:0*
T0*'
_output_shapes
:���������hp
lstm_cell_69/Sigmoid_2Sigmoidlstm_cell_69/split:output:3*
T0*'
_output_shapes
:���������he
lstm_cell_69/Relu_1Relulstm_cell_69/add_1:z:0*
T0*'
_output_shapes
:���������h�
lstm_cell_69/mul_2Mullstm_cell_69/Sigmoid_2:y:0!lstm_cell_69/Relu_1:activations:0*
T0*'
_output_shapes
:���������hn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����h   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_69_matmul_readvariableop_resource-lstm_cell_69_matmul_1_readvariableop_resource,lstm_cell_69_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������h:���������h: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_342777*
condR
while_cond_342776*K
output_shapes:
8: : : : :���������h:���������h: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����h   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������h*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������h*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������h[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������h�
NoOpNoOp$^lstm_cell_69/BiasAdd/ReadVariableOp#^lstm_cell_69/MatMul/ReadVariableOp%^lstm_cell_69/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������l: : : 2J
#lstm_cell_69/BiasAdd/ReadVariableOp#lstm_cell_69/BiasAdd/ReadVariableOp2H
"lstm_cell_69/MatMul/ReadVariableOp"lstm_cell_69/MatMul/ReadVariableOp2L
$lstm_cell_69/MatMul_1/ReadVariableOp$lstm_cell_69/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������l
 
_user_specified_nameinputs
�
�
(__inference_lstm_69_layer_call_fn_342421

inputs
unknown:	l�
	unknown_0:	h�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������h*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_69_layer_call_and_return_conditional_losses_339918o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������h`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������l: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������l
 
_user_specified_nameinputs
�8
�
while_body_342491
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_69_matmul_readvariableop_resource_0:	l�H
5while_lstm_cell_69_matmul_1_readvariableop_resource_0:	h�C
4while_lstm_cell_69_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_69_matmul_readvariableop_resource:	l�F
3while_lstm_cell_69_matmul_1_readvariableop_resource:	h�A
2while_lstm_cell_69_biasadd_readvariableop_resource:	���)while/lstm_cell_69/BiasAdd/ReadVariableOp�(while/lstm_cell_69/MatMul/ReadVariableOp�*while/lstm_cell_69/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����l   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������l*
element_dtype0�
(while/lstm_cell_69/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_69_matmul_readvariableop_resource_0*
_output_shapes
:	l�*
dtype0�
while/lstm_cell_69/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_69/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_69/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_69_matmul_1_readvariableop_resource_0*
_output_shapes
:	h�*
dtype0�
while/lstm_cell_69/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_69/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_69/addAddV2#while/lstm_cell_69/MatMul:product:0%while/lstm_cell_69/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_69/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_69_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_69/BiasAddBiasAddwhile/lstm_cell_69/add:z:01while/lstm_cell_69/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
"while/lstm_cell_69/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_69/splitSplit+while/lstm_cell_69/split/split_dim:output:0#while/lstm_cell_69/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������h:���������h:���������h:���������h*
	num_splitz
while/lstm_cell_69/SigmoidSigmoid!while/lstm_cell_69/split:output:0*
T0*'
_output_shapes
:���������h|
while/lstm_cell_69/Sigmoid_1Sigmoid!while/lstm_cell_69/split:output:1*
T0*'
_output_shapes
:���������h�
while/lstm_cell_69/mulMul while/lstm_cell_69/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������ht
while/lstm_cell_69/ReluRelu!while/lstm_cell_69/split:output:2*
T0*'
_output_shapes
:���������h�
while/lstm_cell_69/mul_1Mulwhile/lstm_cell_69/Sigmoid:y:0%while/lstm_cell_69/Relu:activations:0*
T0*'
_output_shapes
:���������h�
while/lstm_cell_69/add_1AddV2while/lstm_cell_69/mul:z:0while/lstm_cell_69/mul_1:z:0*
T0*'
_output_shapes
:���������h|
while/lstm_cell_69/Sigmoid_2Sigmoid!while/lstm_cell_69/split:output:3*
T0*'
_output_shapes
:���������hq
while/lstm_cell_69/Relu_1Reluwhile/lstm_cell_69/add_1:z:0*
T0*'
_output_shapes
:���������h�
while/lstm_cell_69/mul_2Mul while/lstm_cell_69/Sigmoid_2:y:0'while/lstm_cell_69/Relu_1:activations:0*
T0*'
_output_shapes
:���������h�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_69/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :���y
while/Identity_4Identitywhile/lstm_cell_69/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������hy
while/Identity_5Identitywhile/lstm_cell_69/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������h�

while/NoOpNoOp*^while/lstm_cell_69/BiasAdd/ReadVariableOp)^while/lstm_cell_69/MatMul/ReadVariableOp+^while/lstm_cell_69/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_69_biasadd_readvariableop_resource4while_lstm_cell_69_biasadd_readvariableop_resource_0"l
3while_lstm_cell_69_matmul_1_readvariableop_resource5while_lstm_cell_69_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_69_matmul_readvariableop_resource3while_lstm_cell_69_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������h:���������h: : : : : 2V
)while/lstm_cell_69/BiasAdd/ReadVariableOp)while/lstm_cell_69/BiasAdd/ReadVariableOp2T
(while/lstm_cell_69/MatMul/ReadVariableOp(while/lstm_cell_69/MatMul/ReadVariableOp2X
*while/lstm_cell_69/MatMul_1/ReadVariableOp*while/lstm_cell_69/MatMul_1/ReadVariableOp: 
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
:���������h:-)
'
_output_shapes
:���������h:

_output_shapes
: :

_output_shapes
: 
�
�
H__inference_lstm_cell_68_layer_call_and_return_conditional_losses_343117

inputs
states_0
states_11
matmul_readvariableop_resource:	�3
 matmul_1_readvariableop_resource:	l�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	l�*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������l:���������l:���������l:���������l*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������lV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������lU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������lN
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������l_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������lT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������lV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������lK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������lc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������lX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������lZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������lZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������l�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������l:���������l: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������l
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������l
"
_user_specified_name
states/1
�
�
-__inference_lstm_cell_69_layer_call_fn_343166

inputs
states_0
states_1
unknown:	l�
	unknown_0:	h�
	unknown_1:	�
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
9:���������h:���������h:���������h*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_69_layer_call_and_return_conditional_losses_339163o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������hq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������hq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������h`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������l:���������h:���������h: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������l
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������h
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������h
"
_user_specified_name
states/1
�f
�
__inference__traced_save_343411
file_prefixE
Asavev2_fixed_adjacency_graph_convolution_68_a_read_readvariableopJ
Fsavev2_fixed_adjacency_graph_convolution_68_kernel_read_readvariableopH
Dsavev2_fixed_adjacency_graph_convolution_68_bias_read_readvariableopE
Asavev2_fixed_adjacency_graph_convolution_69_a_read_readvariableopJ
Fsavev2_fixed_adjacency_graph_convolution_69_kernel_read_readvariableopH
Dsavev2_fixed_adjacency_graph_convolution_69_bias_read_readvariableop.
*savev2_dense_34_kernel_read_readvariableop,
(savev2_dense_34_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_68_lstm_cell_68_kernel_read_readvariableopD
@savev2_lstm_68_lstm_cell_68_recurrent_kernel_read_readvariableop8
4savev2_lstm_68_lstm_cell_68_bias_read_readvariableop:
6savev2_lstm_69_lstm_cell_69_kernel_read_readvariableopD
@savev2_lstm_69_lstm_cell_69_recurrent_kernel_read_readvariableop8
4savev2_lstm_69_lstm_cell_69_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableopQ
Msavev2_adam_fixed_adjacency_graph_convolution_68_kernel_m_read_readvariableopO
Ksavev2_adam_fixed_adjacency_graph_convolution_68_bias_m_read_readvariableopQ
Msavev2_adam_fixed_adjacency_graph_convolution_69_kernel_m_read_readvariableopO
Ksavev2_adam_fixed_adjacency_graph_convolution_69_bias_m_read_readvariableop5
1savev2_adam_dense_34_kernel_m_read_readvariableop3
/savev2_adam_dense_34_bias_m_read_readvariableopA
=savev2_adam_lstm_68_lstm_cell_68_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_68_lstm_cell_68_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_68_lstm_cell_68_bias_m_read_readvariableopA
=savev2_adam_lstm_69_lstm_cell_69_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_69_lstm_cell_69_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_69_lstm_cell_69_bias_m_read_readvariableopQ
Msavev2_adam_fixed_adjacency_graph_convolution_68_kernel_v_read_readvariableopO
Ksavev2_adam_fixed_adjacency_graph_convolution_68_bias_v_read_readvariableopQ
Msavev2_adam_fixed_adjacency_graph_convolution_69_kernel_v_read_readvariableopO
Ksavev2_adam_fixed_adjacency_graph_convolution_69_bias_v_read_readvariableop5
1savev2_adam_dense_34_kernel_v_read_readvariableop3
/savev2_adam_dense_34_bias_v_read_readvariableopA
=savev2_adam_lstm_68_lstm_cell_68_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_68_lstm_cell_68_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_68_lstm_cell_68_bias_v_read_readvariableopA
=savev2_adam_lstm_69_lstm_cell_69_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_69_lstm_cell_69_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_69_lstm_cell_69_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
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
_temp/part�
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
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:0*
dtype0*�
value�B�0B1layer_with_weights-0/A/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB1layer_with_weights-1/A/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:0*
dtype0*s
valuejBh0B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Asavev2_fixed_adjacency_graph_convolution_68_a_read_readvariableopFsavev2_fixed_adjacency_graph_convolution_68_kernel_read_readvariableopDsavev2_fixed_adjacency_graph_convolution_68_bias_read_readvariableopAsavev2_fixed_adjacency_graph_convolution_69_a_read_readvariableopFsavev2_fixed_adjacency_graph_convolution_69_kernel_read_readvariableopDsavev2_fixed_adjacency_graph_convolution_69_bias_read_readvariableop*savev2_dense_34_kernel_read_readvariableop(savev2_dense_34_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_68_lstm_cell_68_kernel_read_readvariableop@savev2_lstm_68_lstm_cell_68_recurrent_kernel_read_readvariableop4savev2_lstm_68_lstm_cell_68_bias_read_readvariableop6savev2_lstm_69_lstm_cell_69_kernel_read_readvariableop@savev2_lstm_69_lstm_cell_69_recurrent_kernel_read_readvariableop4savev2_lstm_69_lstm_cell_69_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopMsavev2_adam_fixed_adjacency_graph_convolution_68_kernel_m_read_readvariableopKsavev2_adam_fixed_adjacency_graph_convolution_68_bias_m_read_readvariableopMsavev2_adam_fixed_adjacency_graph_convolution_69_kernel_m_read_readvariableopKsavev2_adam_fixed_adjacency_graph_convolution_69_bias_m_read_readvariableop1savev2_adam_dense_34_kernel_m_read_readvariableop/savev2_adam_dense_34_bias_m_read_readvariableop=savev2_adam_lstm_68_lstm_cell_68_kernel_m_read_readvariableopGsavev2_adam_lstm_68_lstm_cell_68_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_68_lstm_cell_68_bias_m_read_readvariableop=savev2_adam_lstm_69_lstm_cell_69_kernel_m_read_readvariableopGsavev2_adam_lstm_69_lstm_cell_69_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_69_lstm_cell_69_bias_m_read_readvariableopMsavev2_adam_fixed_adjacency_graph_convolution_68_kernel_v_read_readvariableopKsavev2_adam_fixed_adjacency_graph_convolution_68_bias_v_read_readvariableopMsavev2_adam_fixed_adjacency_graph_convolution_69_kernel_v_read_readvariableopKsavev2_adam_fixed_adjacency_graph_convolution_69_bias_v_read_readvariableop1savev2_adam_dense_34_kernel_v_read_readvariableop/savev2_adam_dense_34_bias_v_read_readvariableop=savev2_adam_lstm_68_lstm_cell_68_kernel_v_read_readvariableopGsavev2_adam_lstm_68_lstm_cell_68_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_68_lstm_cell_68_bias_v_read_readvariableop=savev2_adam_lstm_69_lstm_cell_69_kernel_v_read_readvariableopGsavev2_adam_lstm_69_lstm_cell_69_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_69_lstm_cell_69_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *>
dtypes4
220	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
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

identity_1Identity_1:output:0*�
_input_shapes�
�: ::
:::
::h:: : : : : :	�:	l�:�:	l�:	h�:�: : : : :
::
::h::	�:	l�:�:	l�:	h�:�:
::
::h::	�:	l�:�:	l�:	h�:�: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

::$ 

_output_shapes

:
:$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

:
:$ 

_output_shapes

::$ 

_output_shapes

:h: 

_output_shapes
::	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	�:%!

_output_shapes
:	l�:!

_output_shapes	
:�:%!

_output_shapes
:	l�:%!

_output_shapes
:	h�:!

_output_shapes	
:�:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:
:$ 

_output_shapes

::$ 

_output_shapes

:
:$ 

_output_shapes

::$ 

_output_shapes

:h: 

_output_shapes
::%!

_output_shapes
:	�:%!

_output_shapes
:	l�:! 

_output_shapes	
:�:%!!

_output_shapes
:	l�:%"!

_output_shapes
:	h�:!#

_output_shapes	
:�:$$ 

_output_shapes

:
:$% 

_output_shapes

::$& 

_output_shapes

:
:$' 

_output_shapes

::$( 

_output_shapes

:h: )

_output_shapes
::%*!

_output_shapes
:	�:%+!

_output_shapes
:	l�:!,

_output_shapes	
:�:%-!

_output_shapes
:	l�:%.!

_output_shapes
:	h�:!/

_output_shapes	
:�:0

_output_shapes
: 
�
�
(__inference_lstm_68_layer_call_fn_341805

inputs
unknown:	�
	unknown_0:	l�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������l*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_68_layer_call_and_return_conditional_losses_339768s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������l`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�8
�
while_body_340087
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_69_matmul_readvariableop_resource_0:	l�H
5while_lstm_cell_69_matmul_1_readvariableop_resource_0:	h�C
4while_lstm_cell_69_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_69_matmul_readvariableop_resource:	l�F
3while_lstm_cell_69_matmul_1_readvariableop_resource:	h�A
2while_lstm_cell_69_biasadd_readvariableop_resource:	���)while/lstm_cell_69/BiasAdd/ReadVariableOp�(while/lstm_cell_69/MatMul/ReadVariableOp�*while/lstm_cell_69/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����l   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������l*
element_dtype0�
(while/lstm_cell_69/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_69_matmul_readvariableop_resource_0*
_output_shapes
:	l�*
dtype0�
while/lstm_cell_69/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_69/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_69/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_69_matmul_1_readvariableop_resource_0*
_output_shapes
:	h�*
dtype0�
while/lstm_cell_69/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_69/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_69/addAddV2#while/lstm_cell_69/MatMul:product:0%while/lstm_cell_69/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_69/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_69_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_69/BiasAddBiasAddwhile/lstm_cell_69/add:z:01while/lstm_cell_69/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
"while/lstm_cell_69/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_69/splitSplit+while/lstm_cell_69/split/split_dim:output:0#while/lstm_cell_69/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������h:���������h:���������h:���������h*
	num_splitz
while/lstm_cell_69/SigmoidSigmoid!while/lstm_cell_69/split:output:0*
T0*'
_output_shapes
:���������h|
while/lstm_cell_69/Sigmoid_1Sigmoid!while/lstm_cell_69/split:output:1*
T0*'
_output_shapes
:���������h�
while/lstm_cell_69/mulMul while/lstm_cell_69/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������ht
while/lstm_cell_69/ReluRelu!while/lstm_cell_69/split:output:2*
T0*'
_output_shapes
:���������h�
while/lstm_cell_69/mul_1Mulwhile/lstm_cell_69/Sigmoid:y:0%while/lstm_cell_69/Relu:activations:0*
T0*'
_output_shapes
:���������h�
while/lstm_cell_69/add_1AddV2while/lstm_cell_69/mul:z:0while/lstm_cell_69/mul_1:z:0*
T0*'
_output_shapes
:���������h|
while/lstm_cell_69/Sigmoid_2Sigmoid!while/lstm_cell_69/split:output:3*
T0*'
_output_shapes
:���������hq
while/lstm_cell_69/Relu_1Reluwhile/lstm_cell_69/add_1:z:0*
T0*'
_output_shapes
:���������h�
while/lstm_cell_69/mul_2Mul while/lstm_cell_69/Sigmoid_2:y:0'while/lstm_cell_69/Relu_1:activations:0*
T0*'
_output_shapes
:���������h�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_69/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :���y
while/Identity_4Identitywhile/lstm_cell_69/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������hy
while/Identity_5Identitywhile/lstm_cell_69/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������h�

while/NoOpNoOp*^while/lstm_cell_69/BiasAdd/ReadVariableOp)^while/lstm_cell_69/MatMul/ReadVariableOp+^while/lstm_cell_69/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_69_biasadd_readvariableop_resource4while_lstm_cell_69_biasadd_readvariableop_resource_0"l
3while_lstm_cell_69_matmul_1_readvariableop_resource5while_lstm_cell_69_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_69_matmul_readvariableop_resource3while_lstm_cell_69_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������h:���������h: : : : : 2V
)while/lstm_cell_69/BiasAdd/ReadVariableOp)while/lstm_cell_69/BiasAdd/ReadVariableOp2T
(while/lstm_cell_69/MatMul/ReadVariableOp(while/lstm_cell_69/MatMul/ReadVariableOp2X
*while/lstm_cell_69/MatMul_1/ReadVariableOp*while/lstm_cell_69/MatMul_1/ReadVariableOp: 
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
:���������h:-)
'
_output_shapes
:���������h:

_output_shapes
: :

_output_shapes
: 
�J
�
C__inference_lstm_68_layer_call_and_return_conditional_losses_340336

inputs>
+lstm_cell_68_matmul_readvariableop_resource:	�@
-lstm_cell_68_matmul_1_readvariableop_resource:	l�;
,lstm_cell_68_biasadd_readvariableop_resource:	�
identity��#lstm_cell_68/BiasAdd/ReadVariableOp�"lstm_cell_68/MatMul/ReadVariableOp�$lstm_cell_68/MatMul_1/ReadVariableOp�while;
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
valueB:�
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
value	B :ls
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
:���������lR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :lw
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
:���������lc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������D
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
"lstm_cell_68/MatMul/ReadVariableOpReadVariableOp+lstm_cell_68_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_68/MatMulMatMulstrided_slice_2:output:0*lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_68_matmul_1_readvariableop_resource*
_output_shapes
:	l�*
dtype0�
lstm_cell_68/MatMul_1MatMulzeros:output:0,lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_68/addAddV2lstm_cell_68/MatMul:product:0lstm_cell_68/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
#lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_68_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_68/BiasAddBiasAddlstm_cell_68/add:z:0+lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������^
lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_68/splitSplit%lstm_cell_68/split/split_dim:output:0lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������l:���������l:���������l:���������l*
	num_splitn
lstm_cell_68/SigmoidSigmoidlstm_cell_68/split:output:0*
T0*'
_output_shapes
:���������lp
lstm_cell_68/Sigmoid_1Sigmoidlstm_cell_68/split:output:1*
T0*'
_output_shapes
:���������lw
lstm_cell_68/mulMullstm_cell_68/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������lh
lstm_cell_68/ReluRelulstm_cell_68/split:output:2*
T0*'
_output_shapes
:���������l�
lstm_cell_68/mul_1Mullstm_cell_68/Sigmoid:y:0lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:���������l{
lstm_cell_68/add_1AddV2lstm_cell_68/mul:z:0lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:���������lp
lstm_cell_68/Sigmoid_2Sigmoidlstm_cell_68/split:output:3*
T0*'
_output_shapes
:���������le
lstm_cell_68/Relu_1Relulstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:���������l�
lstm_cell_68/mul_2Mullstm_cell_68/Sigmoid_2:y:0!lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:���������ln
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����l   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_68_matmul_readvariableop_resource-lstm_cell_68_matmul_1_readvariableop_resource,lstm_cell_68_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������l:���������l: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_340252*
condR
while_cond_340251*K
output_shapes:
8: : : : :���������l:���������l: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����l   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������l*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������l*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������l[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������l�
NoOpNoOp$^lstm_cell_68/BiasAdd/ReadVariableOp#^lstm_cell_68/MatMul/ReadVariableOp%^lstm_cell_68/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2J
#lstm_cell_68/BiasAdd/ReadVariableOp#lstm_cell_68/BiasAdd/ReadVariableOp2H
"lstm_cell_68/MatMul/ReadVariableOp"lstm_cell_68/MatMul/ReadVariableOp2L
$lstm_cell_68/MatMul_1/ReadVariableOp$lstm_cell_68/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
)__inference_model_34_layer_call_fn_340657

inputs
unknown:
	unknown_0:

	unknown_1:
	unknown_2:
	unknown_3:

	unknown_4:
	unknown_5:	�
	unknown_6:	l�
	unknown_7:	�
	unknown_8:	l�
	unknown_9:	h�

unknown_10:	�

unknown_11:h

unknown_12:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_model_34_layer_call_and_return_conditional_losses_339951o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�J
�
C__inference_lstm_68_layer_call_and_return_conditional_losses_342245

inputs>
+lstm_cell_68_matmul_readvariableop_resource:	�@
-lstm_cell_68_matmul_1_readvariableop_resource:	l�;
,lstm_cell_68_biasadd_readvariableop_resource:	�
identity��#lstm_cell_68/BiasAdd/ReadVariableOp�"lstm_cell_68/MatMul/ReadVariableOp�$lstm_cell_68/MatMul_1/ReadVariableOp�while;
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
valueB:�
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
value	B :ls
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
:���������lR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :lw
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
:���������lc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������D
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
"lstm_cell_68/MatMul/ReadVariableOpReadVariableOp+lstm_cell_68_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_68/MatMulMatMulstrided_slice_2:output:0*lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_68_matmul_1_readvariableop_resource*
_output_shapes
:	l�*
dtype0�
lstm_cell_68/MatMul_1MatMulzeros:output:0,lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_68/addAddV2lstm_cell_68/MatMul:product:0lstm_cell_68/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
#lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_68_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_68/BiasAddBiasAddlstm_cell_68/add:z:0+lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������^
lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_68/splitSplit%lstm_cell_68/split/split_dim:output:0lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������l:���������l:���������l:���������l*
	num_splitn
lstm_cell_68/SigmoidSigmoidlstm_cell_68/split:output:0*
T0*'
_output_shapes
:���������lp
lstm_cell_68/Sigmoid_1Sigmoidlstm_cell_68/split:output:1*
T0*'
_output_shapes
:���������lw
lstm_cell_68/mulMullstm_cell_68/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������lh
lstm_cell_68/ReluRelulstm_cell_68/split:output:2*
T0*'
_output_shapes
:���������l�
lstm_cell_68/mul_1Mullstm_cell_68/Sigmoid:y:0lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:���������l{
lstm_cell_68/add_1AddV2lstm_cell_68/mul:z:0lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:���������lp
lstm_cell_68/Sigmoid_2Sigmoidlstm_cell_68/split:output:3*
T0*'
_output_shapes
:���������le
lstm_cell_68/Relu_1Relulstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:���������l�
lstm_cell_68/mul_2Mullstm_cell_68/Sigmoid_2:y:0!lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:���������ln
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����l   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_68_matmul_readvariableop_resource-lstm_cell_68_matmul_1_readvariableop_resource,lstm_cell_68_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������l:���������l: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_342161*
condR
while_cond_342160*K
output_shapes:
8: : : : :���������l:���������l: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����l   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������l*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������l*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������l[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������l�
NoOpNoOp$^lstm_cell_68/BiasAdd/ReadVariableOp#^lstm_cell_68/MatMul/ReadVariableOp%^lstm_cell_68/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2J
#lstm_cell_68/BiasAdd/ReadVariableOp#lstm_cell_68/BiasAdd/ReadVariableOp2H
"lstm_cell_68/MatMul/ReadVariableOp"lstm_cell_68/MatMul/ReadVariableOp2L
$lstm_cell_68/MatMul_1/ReadVariableOp$lstm_cell_68/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_338826
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_338826___redundant_placeholder04
0while_while_cond_338826___redundant_placeholder14
0while_while_cond_338826___redundant_placeholder24
0while_while_cond_338826___redundant_placeholder3
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
@: : : : :���������l:���������l: ::::: 
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
:���������l:-)
'
_output_shapes
:���������l:

_output_shapes
: :

_output_shapes
:
�3
�
D__inference_model_34_layer_call_and_return_conditional_losses_339951

inputs=
+fixed_adjacency_graph_convolution_68_339525:=
+fixed_adjacency_graph_convolution_68_339527:
=
+fixed_adjacency_graph_convolution_68_339529:=
+fixed_adjacency_graph_convolution_69_339587:=
+fixed_adjacency_graph_convolution_69_339589:
=
+fixed_adjacency_graph_convolution_69_339591:!
lstm_68_339769:	�!
lstm_68_339771:	l�
lstm_68_339773:	�!
lstm_69_339919:	l�!
lstm_69_339921:	h�
lstm_69_339923:	�!
dense_34_339945:h
dense_34_339947:
identity�� dense_34/StatefulPartitionedCall�<fixed_adjacency_graph_convolution_68/StatefulPartitionedCall�<fixed_adjacency_graph_convolution_69/StatefulPartitionedCall�lstm_68/StatefulPartitionedCall�lstm_69/StatefulPartitionedCallk
 tf.expand_dims_34/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
tf.expand_dims_34/ExpandDims
ExpandDimsinputs)tf.expand_dims_34/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
reshape_102/PartitionedCallPartitionedCall%tf.expand_dims_34/ExpandDims:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_reshape_102_layer_call_and_return_conditional_losses_339468�
<fixed_adjacency_graph_convolution_68/StatefulPartitionedCallStatefulPartitionedCall$reshape_102/PartitionedCall:output:0+fixed_adjacency_graph_convolution_68_339525+fixed_adjacency_graph_convolution_68_339527+fixed_adjacency_graph_convolution_68_339529*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *i
fdRb
`__inference_fixed_adjacency_graph_convolution_68_layer_call_and_return_conditional_losses_339524�
<fixed_adjacency_graph_convolution_69/StatefulPartitionedCallStatefulPartitionedCallEfixed_adjacency_graph_convolution_68/StatefulPartitionedCall:output:0+fixed_adjacency_graph_convolution_69_339587+fixed_adjacency_graph_convolution_69_339589+fixed_adjacency_graph_convolution_69_339591*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *i
fdRb
`__inference_fixed_adjacency_graph_convolution_69_layer_call_and_return_conditional_losses_339586�
reshape_103/PartitionedCallPartitionedCallEfixed_adjacency_graph_convolution_69/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_reshape_103_layer_call_and_return_conditional_losses_339608�
permute_34/PartitionedCallPartitionedCall$reshape_103/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_permute_34_layer_call_and_return_conditional_losses_338743�
reshape_104/PartitionedCallPartitionedCall#permute_34/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_reshape_104_layer_call_and_return_conditional_losses_339624�
lstm_68/StatefulPartitionedCallStatefulPartitionedCall$reshape_104/PartitionedCall:output:0lstm_68_339769lstm_68_339771lstm_68_339773*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������l*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_68_layer_call_and_return_conditional_losses_339768�
lstm_69/StatefulPartitionedCallStatefulPartitionedCall(lstm_68/StatefulPartitionedCall:output:0lstm_69_339919lstm_69_339921lstm_69_339923*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������h*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_69_layer_call_and_return_conditional_losses_339918�
dropout_34/PartitionedCallPartitionedCall(lstm_69/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������h* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_34_layer_call_and_return_conditional_losses_339931�
 dense_34/StatefulPartitionedCallStatefulPartitionedCall#dropout_34/PartitionedCall:output:0dense_34_339945dense_34_339947*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_34_layer_call_and_return_conditional_losses_339944x
IdentityIdentity)dense_34/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_34/StatefulPartitionedCall=^fixed_adjacency_graph_convolution_68/StatefulPartitionedCall=^fixed_adjacency_graph_convolution_69/StatefulPartitionedCall ^lstm_68/StatefulPartitionedCall ^lstm_69/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : 2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall2|
<fixed_adjacency_graph_convolution_68/StatefulPartitionedCall<fixed_adjacency_graph_convolution_68/StatefulPartitionedCall2|
<fixed_adjacency_graph_convolution_69/StatefulPartitionedCall<fixed_adjacency_graph_convolution_69/StatefulPartitionedCall2B
lstm_68/StatefulPartitionedCalllstm_68/StatefulPartitionedCall2B
lstm_69/StatefulPartitionedCalllstm_69/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�A
�

lstm_68_while_body_341303,
(lstm_68_while_lstm_68_while_loop_counter2
.lstm_68_while_lstm_68_while_maximum_iterations
lstm_68_while_placeholder
lstm_68_while_placeholder_1
lstm_68_while_placeholder_2
lstm_68_while_placeholder_3+
'lstm_68_while_lstm_68_strided_slice_1_0g
clstm_68_while_tensorarrayv2read_tensorlistgetitem_lstm_68_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_68_while_lstm_cell_68_matmul_readvariableop_resource_0:	�P
=lstm_68_while_lstm_cell_68_matmul_1_readvariableop_resource_0:	l�K
<lstm_68_while_lstm_cell_68_biasadd_readvariableop_resource_0:	�
lstm_68_while_identity
lstm_68_while_identity_1
lstm_68_while_identity_2
lstm_68_while_identity_3
lstm_68_while_identity_4
lstm_68_while_identity_5)
%lstm_68_while_lstm_68_strided_slice_1e
alstm_68_while_tensorarrayv2read_tensorlistgetitem_lstm_68_tensorarrayunstack_tensorlistfromtensorL
9lstm_68_while_lstm_cell_68_matmul_readvariableop_resource:	�N
;lstm_68_while_lstm_cell_68_matmul_1_readvariableop_resource:	l�I
:lstm_68_while_lstm_cell_68_biasadd_readvariableop_resource:	���1lstm_68/while/lstm_cell_68/BiasAdd/ReadVariableOp�0lstm_68/while/lstm_cell_68/MatMul/ReadVariableOp�2lstm_68/while/lstm_cell_68/MatMul_1/ReadVariableOp�
?lstm_68/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
1lstm_68/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_68_while_tensorarrayv2read_tensorlistgetitem_lstm_68_tensorarrayunstack_tensorlistfromtensor_0lstm_68_while_placeholderHlstm_68/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
0lstm_68/while/lstm_cell_68/MatMul/ReadVariableOpReadVariableOp;lstm_68_while_lstm_cell_68_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
!lstm_68/while/lstm_cell_68/MatMulMatMul8lstm_68/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_68/while/lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
2lstm_68/while/lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp=lstm_68_while_lstm_cell_68_matmul_1_readvariableop_resource_0*
_output_shapes
:	l�*
dtype0�
#lstm_68/while/lstm_cell_68/MatMul_1MatMullstm_68_while_placeholder_2:lstm_68/while/lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_68/while/lstm_cell_68/addAddV2+lstm_68/while/lstm_cell_68/MatMul:product:0-lstm_68/while/lstm_cell_68/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
1lstm_68/while/lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp<lstm_68_while_lstm_cell_68_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
"lstm_68/while/lstm_cell_68/BiasAddBiasAdd"lstm_68/while/lstm_cell_68/add:z:09lstm_68/while/lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������l
*lstm_68/while/lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
 lstm_68/while/lstm_cell_68/splitSplit3lstm_68/while/lstm_cell_68/split/split_dim:output:0+lstm_68/while/lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������l:���������l:���������l:���������l*
	num_split�
"lstm_68/while/lstm_cell_68/SigmoidSigmoid)lstm_68/while/lstm_cell_68/split:output:0*
T0*'
_output_shapes
:���������l�
$lstm_68/while/lstm_cell_68/Sigmoid_1Sigmoid)lstm_68/while/lstm_cell_68/split:output:1*
T0*'
_output_shapes
:���������l�
lstm_68/while/lstm_cell_68/mulMul(lstm_68/while/lstm_cell_68/Sigmoid_1:y:0lstm_68_while_placeholder_3*
T0*'
_output_shapes
:���������l�
lstm_68/while/lstm_cell_68/ReluRelu)lstm_68/while/lstm_cell_68/split:output:2*
T0*'
_output_shapes
:���������l�
 lstm_68/while/lstm_cell_68/mul_1Mul&lstm_68/while/lstm_cell_68/Sigmoid:y:0-lstm_68/while/lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:���������l�
 lstm_68/while/lstm_cell_68/add_1AddV2"lstm_68/while/lstm_cell_68/mul:z:0$lstm_68/while/lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:���������l�
$lstm_68/while/lstm_cell_68/Sigmoid_2Sigmoid)lstm_68/while/lstm_cell_68/split:output:3*
T0*'
_output_shapes
:���������l�
!lstm_68/while/lstm_cell_68/Relu_1Relu$lstm_68/while/lstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:���������l�
 lstm_68/while/lstm_cell_68/mul_2Mul(lstm_68/while/lstm_cell_68/Sigmoid_2:y:0/lstm_68/while/lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:���������l�
2lstm_68/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_68_while_placeholder_1lstm_68_while_placeholder$lstm_68/while/lstm_cell_68/mul_2:z:0*
_output_shapes
: *
element_dtype0:���U
lstm_68/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_68/while/addAddV2lstm_68_while_placeholderlstm_68/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_68/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_68/while/add_1AddV2(lstm_68_while_lstm_68_while_loop_counterlstm_68/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_68/while/IdentityIdentitylstm_68/while/add_1:z:0^lstm_68/while/NoOp*
T0*
_output_shapes
: �
lstm_68/while/Identity_1Identity.lstm_68_while_lstm_68_while_maximum_iterations^lstm_68/while/NoOp*
T0*
_output_shapes
: q
lstm_68/while/Identity_2Identitylstm_68/while/add:z:0^lstm_68/while/NoOp*
T0*
_output_shapes
: �
lstm_68/while/Identity_3IdentityBlstm_68/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_68/while/NoOp*
T0*
_output_shapes
: :����
lstm_68/while/Identity_4Identity$lstm_68/while/lstm_cell_68/mul_2:z:0^lstm_68/while/NoOp*
T0*'
_output_shapes
:���������l�
lstm_68/while/Identity_5Identity$lstm_68/while/lstm_cell_68/add_1:z:0^lstm_68/while/NoOp*
T0*'
_output_shapes
:���������l�
lstm_68/while/NoOpNoOp2^lstm_68/while/lstm_cell_68/BiasAdd/ReadVariableOp1^lstm_68/while/lstm_cell_68/MatMul/ReadVariableOp3^lstm_68/while/lstm_cell_68/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_68_while_identitylstm_68/while/Identity:output:0"=
lstm_68_while_identity_1!lstm_68/while/Identity_1:output:0"=
lstm_68_while_identity_2!lstm_68/while/Identity_2:output:0"=
lstm_68_while_identity_3!lstm_68/while/Identity_3:output:0"=
lstm_68_while_identity_4!lstm_68/while/Identity_4:output:0"=
lstm_68_while_identity_5!lstm_68/while/Identity_5:output:0"P
%lstm_68_while_lstm_68_strided_slice_1'lstm_68_while_lstm_68_strided_slice_1_0"z
:lstm_68_while_lstm_cell_68_biasadd_readvariableop_resource<lstm_68_while_lstm_cell_68_biasadd_readvariableop_resource_0"|
;lstm_68_while_lstm_cell_68_matmul_1_readvariableop_resource=lstm_68_while_lstm_cell_68_matmul_1_readvariableop_resource_0"x
9lstm_68_while_lstm_cell_68_matmul_readvariableop_resource;lstm_68_while_lstm_cell_68_matmul_readvariableop_resource_0"�
alstm_68_while_tensorarrayv2read_tensorlistgetitem_lstm_68_tensorarrayunstack_tensorlistfromtensorclstm_68_while_tensorarrayv2read_tensorlistgetitem_lstm_68_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������l:���������l: : : : : 2f
1lstm_68/while/lstm_cell_68/BiasAdd/ReadVariableOp1lstm_68/while/lstm_cell_68/BiasAdd/ReadVariableOp2d
0lstm_68/while/lstm_cell_68/MatMul/ReadVariableOp0lstm_68/while/lstm_cell_68/MatMul/ReadVariableOp2h
2lstm_68/while/lstm_cell_68/MatMul_1/ReadVariableOp2lstm_68/while/lstm_cell_68/MatMul_1/ReadVariableOp: 
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
:���������l:-)
'
_output_shapes
:���������l:

_output_shapes
: :

_output_shapes
: 
��
�
D__inference_model_34_layer_call_and_return_conditional_losses_341541

inputsV
Dfixed_adjacency_graph_convolution_68_shape_1_readvariableop_resource:V
Dfixed_adjacency_graph_convolution_68_shape_3_readvariableop_resource:
R
@fixed_adjacency_graph_convolution_68_add_readvariableop_resource:V
Dfixed_adjacency_graph_convolution_69_shape_1_readvariableop_resource:V
Dfixed_adjacency_graph_convolution_69_shape_3_readvariableop_resource:
R
@fixed_adjacency_graph_convolution_69_add_readvariableop_resource:F
3lstm_68_lstm_cell_68_matmul_readvariableop_resource:	�H
5lstm_68_lstm_cell_68_matmul_1_readvariableop_resource:	l�C
4lstm_68_lstm_cell_68_biasadd_readvariableop_resource:	�F
3lstm_69_lstm_cell_69_matmul_readvariableop_resource:	l�H
5lstm_69_lstm_cell_69_matmul_1_readvariableop_resource:	h�C
4lstm_69_lstm_cell_69_biasadd_readvariableop_resource:	�9
'dense_34_matmul_readvariableop_resource:h6
(dense_34_biasadd_readvariableop_resource:
identity��dense_34/BiasAdd/ReadVariableOp�dense_34/MatMul/ReadVariableOp�7fixed_adjacency_graph_convolution_68/add/ReadVariableOp�?fixed_adjacency_graph_convolution_68/transpose_1/ReadVariableOp�?fixed_adjacency_graph_convolution_68/transpose_3/ReadVariableOp�7fixed_adjacency_graph_convolution_69/add/ReadVariableOp�?fixed_adjacency_graph_convolution_69/transpose_1/ReadVariableOp�?fixed_adjacency_graph_convolution_69/transpose_3/ReadVariableOp�+lstm_68/lstm_cell_68/BiasAdd/ReadVariableOp�*lstm_68/lstm_cell_68/MatMul/ReadVariableOp�,lstm_68/lstm_cell_68/MatMul_1/ReadVariableOp�lstm_68/while�+lstm_69/lstm_cell_69/BiasAdd/ReadVariableOp�*lstm_69/lstm_cell_69/MatMul/ReadVariableOp�,lstm_69/lstm_cell_69/MatMul_1/ReadVariableOp�lstm_69/whilek
 tf.expand_dims_34/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
tf.expand_dims_34/ExpandDims
ExpandDimsinputs)tf.expand_dims_34/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������f
reshape_102/ShapeShape%tf.expand_dims_34/ExpandDims:output:0*
T0*
_output_shapes
:i
reshape_102/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!reshape_102/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!reshape_102/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
reshape_102/strided_sliceStridedSlicereshape_102/Shape:output:0(reshape_102/strided_slice/stack:output:0*reshape_102/strided_slice/stack_1:output:0*reshape_102/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
reshape_102/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :]
reshape_102/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
reshape_102/Reshape/shapePack"reshape_102/strided_slice:output:0$reshape_102/Reshape/shape/1:output:0$reshape_102/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:�
reshape_102/ReshapeReshape%tf.expand_dims_34/ExpandDims:output:0"reshape_102/Reshape/shape:output:0*
T0*+
_output_shapes
:����������
3fixed_adjacency_graph_convolution_68/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
.fixed_adjacency_graph_convolution_68/transpose	Transposereshape_102/Reshape:output:0<fixed_adjacency_graph_convolution_68/transpose/perm:output:0*
T0*+
_output_shapes
:����������
*fixed_adjacency_graph_convolution_68/ShapeShape2fixed_adjacency_graph_convolution_68/transpose:y:0*
T0*
_output_shapes
:�
,fixed_adjacency_graph_convolution_68/unstackUnpack3fixed_adjacency_graph_convolution_68/Shape:output:0*
T0*
_output_shapes
: : : *	
num�
;fixed_adjacency_graph_convolution_68/Shape_1/ReadVariableOpReadVariableOpDfixed_adjacency_graph_convolution_68_shape_1_readvariableop_resource*
_output_shapes

:*
dtype0}
,fixed_adjacency_graph_convolution_68/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"      �
.fixed_adjacency_graph_convolution_68/unstack_1Unpack5fixed_adjacency_graph_convolution_68/Shape_1:output:0*
T0*
_output_shapes
: : *	
num�
2fixed_adjacency_graph_convolution_68/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
,fixed_adjacency_graph_convolution_68/ReshapeReshape2fixed_adjacency_graph_convolution_68/transpose:y:0;fixed_adjacency_graph_convolution_68/Reshape/shape:output:0*
T0*'
_output_shapes
:����������
?fixed_adjacency_graph_convolution_68/transpose_1/ReadVariableOpReadVariableOpDfixed_adjacency_graph_convolution_68_shape_1_readvariableop_resource*
_output_shapes

:*
dtype0�
5fixed_adjacency_graph_convolution_68/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       �
0fixed_adjacency_graph_convolution_68/transpose_1	TransposeGfixed_adjacency_graph_convolution_68/transpose_1/ReadVariableOp:value:0>fixed_adjacency_graph_convolution_68/transpose_1/perm:output:0*
T0*
_output_shapes

:�
4fixed_adjacency_graph_convolution_68/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   �����
.fixed_adjacency_graph_convolution_68/Reshape_1Reshape4fixed_adjacency_graph_convolution_68/transpose_1:y:0=fixed_adjacency_graph_convolution_68/Reshape_1/shape:output:0*
T0*
_output_shapes

:�
+fixed_adjacency_graph_convolution_68/MatMulMatMul5fixed_adjacency_graph_convolution_68/Reshape:output:07fixed_adjacency_graph_convolution_68/Reshape_1:output:0*
T0*'
_output_shapes
:���������x
6fixed_adjacency_graph_convolution_68/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B :x
6fixed_adjacency_graph_convolution_68/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
4fixed_adjacency_graph_convolution_68/Reshape_2/shapePack5fixed_adjacency_graph_convolution_68/unstack:output:0?fixed_adjacency_graph_convolution_68/Reshape_2/shape/1:output:0?fixed_adjacency_graph_convolution_68/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:�
.fixed_adjacency_graph_convolution_68/Reshape_2Reshape5fixed_adjacency_graph_convolution_68/MatMul:product:0=fixed_adjacency_graph_convolution_68/Reshape_2/shape:output:0*
T0*+
_output_shapes
:����������
5fixed_adjacency_graph_convolution_68/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
0fixed_adjacency_graph_convolution_68/transpose_2	Transpose7fixed_adjacency_graph_convolution_68/Reshape_2:output:0>fixed_adjacency_graph_convolution_68/transpose_2/perm:output:0*
T0*+
_output_shapes
:����������
,fixed_adjacency_graph_convolution_68/Shape_2Shape4fixed_adjacency_graph_convolution_68/transpose_2:y:0*
T0*
_output_shapes
:�
.fixed_adjacency_graph_convolution_68/unstack_2Unpack5fixed_adjacency_graph_convolution_68/Shape_2:output:0*
T0*
_output_shapes
: : : *	
num�
;fixed_adjacency_graph_convolution_68/Shape_3/ReadVariableOpReadVariableOpDfixed_adjacency_graph_convolution_68_shape_3_readvariableop_resource*
_output_shapes

:
*
dtype0}
,fixed_adjacency_graph_convolution_68/Shape_3Const*
_output_shapes
:*
dtype0*
valueB"   
   �
.fixed_adjacency_graph_convolution_68/unstack_3Unpack5fixed_adjacency_graph_convolution_68/Shape_3:output:0*
T0*
_output_shapes
: : *	
num�
4fixed_adjacency_graph_convolution_68/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
.fixed_adjacency_graph_convolution_68/Reshape_3Reshape4fixed_adjacency_graph_convolution_68/transpose_2:y:0=fixed_adjacency_graph_convolution_68/Reshape_3/shape:output:0*
T0*'
_output_shapes
:����������
?fixed_adjacency_graph_convolution_68/transpose_3/ReadVariableOpReadVariableOpDfixed_adjacency_graph_convolution_68_shape_3_readvariableop_resource*
_output_shapes

:
*
dtype0�
5fixed_adjacency_graph_convolution_68/transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       �
0fixed_adjacency_graph_convolution_68/transpose_3	TransposeGfixed_adjacency_graph_convolution_68/transpose_3/ReadVariableOp:value:0>fixed_adjacency_graph_convolution_68/transpose_3/perm:output:0*
T0*
_output_shapes

:
�
4fixed_adjacency_graph_convolution_68/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*
valueB"   �����
.fixed_adjacency_graph_convolution_68/Reshape_4Reshape4fixed_adjacency_graph_convolution_68/transpose_3:y:0=fixed_adjacency_graph_convolution_68/Reshape_4/shape:output:0*
T0*
_output_shapes

:
�
-fixed_adjacency_graph_convolution_68/MatMul_1MatMul7fixed_adjacency_graph_convolution_68/Reshape_3:output:07fixed_adjacency_graph_convolution_68/Reshape_4:output:0*
T0*'
_output_shapes
:���������
x
6fixed_adjacency_graph_convolution_68/Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
value	B :x
6fixed_adjacency_graph_convolution_68/Reshape_5/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
�
4fixed_adjacency_graph_convolution_68/Reshape_5/shapePack7fixed_adjacency_graph_convolution_68/unstack_2:output:0?fixed_adjacency_graph_convolution_68/Reshape_5/shape/1:output:0?fixed_adjacency_graph_convolution_68/Reshape_5/shape/2:output:0*
N*
T0*
_output_shapes
:�
.fixed_adjacency_graph_convolution_68/Reshape_5Reshape7fixed_adjacency_graph_convolution_68/MatMul_1:product:0=fixed_adjacency_graph_convolution_68/Reshape_5/shape:output:0*
T0*+
_output_shapes
:���������
�
7fixed_adjacency_graph_convolution_68/add/ReadVariableOpReadVariableOp@fixed_adjacency_graph_convolution_68_add_readvariableop_resource*
_output_shapes

:*
dtype0�
(fixed_adjacency_graph_convolution_68/addAddV27fixed_adjacency_graph_convolution_68/Reshape_5:output:0?fixed_adjacency_graph_convolution_68/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������
�
)fixed_adjacency_graph_convolution_68/ReluRelu,fixed_adjacency_graph_convolution_68/add:z:0*
T0*+
_output_shapes
:���������
�
3fixed_adjacency_graph_convolution_69/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
.fixed_adjacency_graph_convolution_69/transpose	Transpose7fixed_adjacency_graph_convolution_68/Relu:activations:0<fixed_adjacency_graph_convolution_69/transpose/perm:output:0*
T0*+
_output_shapes
:���������
�
*fixed_adjacency_graph_convolution_69/ShapeShape2fixed_adjacency_graph_convolution_69/transpose:y:0*
T0*
_output_shapes
:�
,fixed_adjacency_graph_convolution_69/unstackUnpack3fixed_adjacency_graph_convolution_69/Shape:output:0*
T0*
_output_shapes
: : : *	
num�
;fixed_adjacency_graph_convolution_69/Shape_1/ReadVariableOpReadVariableOpDfixed_adjacency_graph_convolution_69_shape_1_readvariableop_resource*
_output_shapes

:*
dtype0}
,fixed_adjacency_graph_convolution_69/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"      �
.fixed_adjacency_graph_convolution_69/unstack_1Unpack5fixed_adjacency_graph_convolution_69/Shape_1:output:0*
T0*
_output_shapes
: : *	
num�
2fixed_adjacency_graph_convolution_69/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
,fixed_adjacency_graph_convolution_69/ReshapeReshape2fixed_adjacency_graph_convolution_69/transpose:y:0;fixed_adjacency_graph_convolution_69/Reshape/shape:output:0*
T0*'
_output_shapes
:����������
?fixed_adjacency_graph_convolution_69/transpose_1/ReadVariableOpReadVariableOpDfixed_adjacency_graph_convolution_69_shape_1_readvariableop_resource*
_output_shapes

:*
dtype0�
5fixed_adjacency_graph_convolution_69/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       �
0fixed_adjacency_graph_convolution_69/transpose_1	TransposeGfixed_adjacency_graph_convolution_69/transpose_1/ReadVariableOp:value:0>fixed_adjacency_graph_convolution_69/transpose_1/perm:output:0*
T0*
_output_shapes

:�
4fixed_adjacency_graph_convolution_69/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   �����
.fixed_adjacency_graph_convolution_69/Reshape_1Reshape4fixed_adjacency_graph_convolution_69/transpose_1:y:0=fixed_adjacency_graph_convolution_69/Reshape_1/shape:output:0*
T0*
_output_shapes

:�
+fixed_adjacency_graph_convolution_69/MatMulMatMul5fixed_adjacency_graph_convolution_69/Reshape:output:07fixed_adjacency_graph_convolution_69/Reshape_1:output:0*
T0*'
_output_shapes
:���������x
6fixed_adjacency_graph_convolution_69/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
x
6fixed_adjacency_graph_convolution_69/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
4fixed_adjacency_graph_convolution_69/Reshape_2/shapePack5fixed_adjacency_graph_convolution_69/unstack:output:0?fixed_adjacency_graph_convolution_69/Reshape_2/shape/1:output:0?fixed_adjacency_graph_convolution_69/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:�
.fixed_adjacency_graph_convolution_69/Reshape_2Reshape5fixed_adjacency_graph_convolution_69/MatMul:product:0=fixed_adjacency_graph_convolution_69/Reshape_2/shape:output:0*
T0*+
_output_shapes
:���������
�
5fixed_adjacency_graph_convolution_69/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
0fixed_adjacency_graph_convolution_69/transpose_2	Transpose7fixed_adjacency_graph_convolution_69/Reshape_2:output:0>fixed_adjacency_graph_convolution_69/transpose_2/perm:output:0*
T0*+
_output_shapes
:���������
�
,fixed_adjacency_graph_convolution_69/Shape_2Shape4fixed_adjacency_graph_convolution_69/transpose_2:y:0*
T0*
_output_shapes
:�
.fixed_adjacency_graph_convolution_69/unstack_2Unpack5fixed_adjacency_graph_convolution_69/Shape_2:output:0*
T0*
_output_shapes
: : : *	
num�
;fixed_adjacency_graph_convolution_69/Shape_3/ReadVariableOpReadVariableOpDfixed_adjacency_graph_convolution_69_shape_3_readvariableop_resource*
_output_shapes

:
*
dtype0}
,fixed_adjacency_graph_convolution_69/Shape_3Const*
_output_shapes
:*
dtype0*
valueB"
      �
.fixed_adjacency_graph_convolution_69/unstack_3Unpack5fixed_adjacency_graph_convolution_69/Shape_3:output:0*
T0*
_output_shapes
: : *	
num�
4fixed_adjacency_graph_convolution_69/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
.fixed_adjacency_graph_convolution_69/Reshape_3Reshape4fixed_adjacency_graph_convolution_69/transpose_2:y:0=fixed_adjacency_graph_convolution_69/Reshape_3/shape:output:0*
T0*'
_output_shapes
:���������
�
?fixed_adjacency_graph_convolution_69/transpose_3/ReadVariableOpReadVariableOpDfixed_adjacency_graph_convolution_69_shape_3_readvariableop_resource*
_output_shapes

:
*
dtype0�
5fixed_adjacency_graph_convolution_69/transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       �
0fixed_adjacency_graph_convolution_69/transpose_3	TransposeGfixed_adjacency_graph_convolution_69/transpose_3/ReadVariableOp:value:0>fixed_adjacency_graph_convolution_69/transpose_3/perm:output:0*
T0*
_output_shapes

:
�
4fixed_adjacency_graph_convolution_69/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*
valueB"
   �����
.fixed_adjacency_graph_convolution_69/Reshape_4Reshape4fixed_adjacency_graph_convolution_69/transpose_3:y:0=fixed_adjacency_graph_convolution_69/Reshape_4/shape:output:0*
T0*
_output_shapes

:
�
-fixed_adjacency_graph_convolution_69/MatMul_1MatMul7fixed_adjacency_graph_convolution_69/Reshape_3:output:07fixed_adjacency_graph_convolution_69/Reshape_4:output:0*
T0*'
_output_shapes
:���������x
6fixed_adjacency_graph_convolution_69/Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
value	B :x
6fixed_adjacency_graph_convolution_69/Reshape_5/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
4fixed_adjacency_graph_convolution_69/Reshape_5/shapePack7fixed_adjacency_graph_convolution_69/unstack_2:output:0?fixed_adjacency_graph_convolution_69/Reshape_5/shape/1:output:0?fixed_adjacency_graph_convolution_69/Reshape_5/shape/2:output:0*
N*
T0*
_output_shapes
:�
.fixed_adjacency_graph_convolution_69/Reshape_5Reshape7fixed_adjacency_graph_convolution_69/MatMul_1:product:0=fixed_adjacency_graph_convolution_69/Reshape_5/shape:output:0*
T0*+
_output_shapes
:����������
7fixed_adjacency_graph_convolution_69/add/ReadVariableOpReadVariableOp@fixed_adjacency_graph_convolution_69_add_readvariableop_resource*
_output_shapes

:*
dtype0�
(fixed_adjacency_graph_convolution_69/addAddV27fixed_adjacency_graph_convolution_69/Reshape_5:output:0?fixed_adjacency_graph_convolution_69/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:����������
)fixed_adjacency_graph_convolution_69/ReluRelu,fixed_adjacency_graph_convolution_69/add:z:0*
T0*+
_output_shapes
:���������x
reshape_103/ShapeShape7fixed_adjacency_graph_convolution_69/Relu:activations:0*
T0*
_output_shapes
:i
reshape_103/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!reshape_103/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!reshape_103/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
reshape_103/strided_sliceStridedSlicereshape_103/Shape:output:0(reshape_103/strided_slice/stack:output:0*reshape_103/strided_slice/stack_1:output:0*reshape_103/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
reshape_103/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :f
reshape_103/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
valueB :
���������]
reshape_103/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
reshape_103/Reshape/shapePack"reshape_103/strided_slice:output:0$reshape_103/Reshape/shape/1:output:0$reshape_103/Reshape/shape/2:output:0$reshape_103/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
reshape_103/ReshapeReshape7fixed_adjacency_graph_convolution_69/Relu:activations:0"reshape_103/Reshape/shape:output:0*
T0*/
_output_shapes
:���������r
permute_34/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
permute_34/transpose	Transposereshape_103/Reshape:output:0"permute_34/transpose/perm:output:0*
T0*/
_output_shapes
:���������Y
reshape_104/ShapeShapepermute_34/transpose:y:0*
T0*
_output_shapes
:i
reshape_104/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!reshape_104/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!reshape_104/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
reshape_104/strided_sliceStridedSlicereshape_104/Shape:output:0(reshape_104/strided_slice/stack:output:0*reshape_104/strided_slice/stack_1:output:0*reshape_104/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
reshape_104/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������]
reshape_104/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
reshape_104/Reshape/shapePack"reshape_104/strided_slice:output:0$reshape_104/Reshape/shape/1:output:0$reshape_104/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:�
reshape_104/ReshapeReshapepermute_34/transpose:y:0"reshape_104/Reshape/shape:output:0*
T0*+
_output_shapes
:���������Y
lstm_68/ShapeShapereshape_104/Reshape:output:0*
T0*
_output_shapes
:e
lstm_68/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_68/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_68/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_68/strided_sliceStridedSlicelstm_68/Shape:output:0$lstm_68/strided_slice/stack:output:0&lstm_68/strided_slice/stack_1:output:0&lstm_68/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_68/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :l�
lstm_68/zeros/packedPacklstm_68/strided_slice:output:0lstm_68/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_68/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_68/zerosFilllstm_68/zeros/packed:output:0lstm_68/zeros/Const:output:0*
T0*'
_output_shapes
:���������lZ
lstm_68/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :l�
lstm_68/zeros_1/packedPacklstm_68/strided_slice:output:0!lstm_68/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_68/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_68/zeros_1Filllstm_68/zeros_1/packed:output:0lstm_68/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������lk
lstm_68/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_68/transpose	Transposereshape_104/Reshape:output:0lstm_68/transpose/perm:output:0*
T0*+
_output_shapes
:���������T
lstm_68/Shape_1Shapelstm_68/transpose:y:0*
T0*
_output_shapes
:g
lstm_68/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_68/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_68/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_68/strided_slice_1StridedSlicelstm_68/Shape_1:output:0&lstm_68/strided_slice_1/stack:output:0(lstm_68/strided_slice_1/stack_1:output:0(lstm_68/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_68/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_68/TensorArrayV2TensorListReserve,lstm_68/TensorArrayV2/element_shape:output:0 lstm_68/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
=lstm_68/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
/lstm_68/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_68/transpose:y:0Flstm_68/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���g
lstm_68/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_68/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_68/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_68/strided_slice_2StridedSlicelstm_68/transpose:y:0&lstm_68/strided_slice_2/stack:output:0(lstm_68/strided_slice_2/stack_1:output:0(lstm_68/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
*lstm_68/lstm_cell_68/MatMul/ReadVariableOpReadVariableOp3lstm_68_lstm_cell_68_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_68/lstm_cell_68/MatMulMatMul lstm_68/strided_slice_2:output:02lstm_68/lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
,lstm_68/lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp5lstm_68_lstm_cell_68_matmul_1_readvariableop_resource*
_output_shapes
:	l�*
dtype0�
lstm_68/lstm_cell_68/MatMul_1MatMullstm_68/zeros:output:04lstm_68/lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_68/lstm_cell_68/addAddV2%lstm_68/lstm_cell_68/MatMul:product:0'lstm_68/lstm_cell_68/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
+lstm_68/lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp4lstm_68_lstm_cell_68_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_68/lstm_cell_68/BiasAddBiasAddlstm_68/lstm_cell_68/add:z:03lstm_68/lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������f
$lstm_68/lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_68/lstm_cell_68/splitSplit-lstm_68/lstm_cell_68/split/split_dim:output:0%lstm_68/lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������l:���������l:���������l:���������l*
	num_split~
lstm_68/lstm_cell_68/SigmoidSigmoid#lstm_68/lstm_cell_68/split:output:0*
T0*'
_output_shapes
:���������l�
lstm_68/lstm_cell_68/Sigmoid_1Sigmoid#lstm_68/lstm_cell_68/split:output:1*
T0*'
_output_shapes
:���������l�
lstm_68/lstm_cell_68/mulMul"lstm_68/lstm_cell_68/Sigmoid_1:y:0lstm_68/zeros_1:output:0*
T0*'
_output_shapes
:���������lx
lstm_68/lstm_cell_68/ReluRelu#lstm_68/lstm_cell_68/split:output:2*
T0*'
_output_shapes
:���������l�
lstm_68/lstm_cell_68/mul_1Mul lstm_68/lstm_cell_68/Sigmoid:y:0'lstm_68/lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:���������l�
lstm_68/lstm_cell_68/add_1AddV2lstm_68/lstm_cell_68/mul:z:0lstm_68/lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:���������l�
lstm_68/lstm_cell_68/Sigmoid_2Sigmoid#lstm_68/lstm_cell_68/split:output:3*
T0*'
_output_shapes
:���������lu
lstm_68/lstm_cell_68/Relu_1Relulstm_68/lstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:���������l�
lstm_68/lstm_cell_68/mul_2Mul"lstm_68/lstm_cell_68/Sigmoid_2:y:0)lstm_68/lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:���������lv
%lstm_68/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����l   �
lstm_68/TensorArrayV2_1TensorListReserve.lstm_68/TensorArrayV2_1/element_shape:output:0 lstm_68/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���N
lstm_68/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_68/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������\
lstm_68/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_68/whileWhile#lstm_68/while/loop_counter:output:0)lstm_68/while/maximum_iterations:output:0lstm_68/time:output:0 lstm_68/TensorArrayV2_1:handle:0lstm_68/zeros:output:0lstm_68/zeros_1:output:0 lstm_68/strided_slice_1:output:0?lstm_68/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_68_lstm_cell_68_matmul_readvariableop_resource5lstm_68_lstm_cell_68_matmul_1_readvariableop_resource4lstm_68_lstm_cell_68_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������l:���������l: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_68_while_body_341303*%
condR
lstm_68_while_cond_341302*K
output_shapes:
8: : : : :���������l:���������l: : : : : *
parallel_iterations �
8lstm_68/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����l   �
*lstm_68/TensorArrayV2Stack/TensorListStackTensorListStacklstm_68/while:output:3Alstm_68/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������l*
element_dtype0p
lstm_68/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������i
lstm_68/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_68/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_68/strided_slice_3StridedSlice3lstm_68/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_68/strided_slice_3/stack:output:0(lstm_68/strided_slice_3/stack_1:output:0(lstm_68/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������l*
shrink_axis_maskm
lstm_68/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_68/transpose_1	Transpose3lstm_68/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_68/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������lc
lstm_68/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_69/ShapeShapelstm_68/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_69/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_69/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_69/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_69/strided_sliceStridedSlicelstm_69/Shape:output:0$lstm_69/strided_slice/stack:output:0&lstm_69/strided_slice/stack_1:output:0&lstm_69/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_69/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :h�
lstm_69/zeros/packedPacklstm_69/strided_slice:output:0lstm_69/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_69/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_69/zerosFilllstm_69/zeros/packed:output:0lstm_69/zeros/Const:output:0*
T0*'
_output_shapes
:���������hZ
lstm_69/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :h�
lstm_69/zeros_1/packedPacklstm_69/strided_slice:output:0!lstm_69/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_69/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_69/zeros_1Filllstm_69/zeros_1/packed:output:0lstm_69/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������hk
lstm_69/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_69/transpose	Transposelstm_68/transpose_1:y:0lstm_69/transpose/perm:output:0*
T0*+
_output_shapes
:���������lT
lstm_69/Shape_1Shapelstm_69/transpose:y:0*
T0*
_output_shapes
:g
lstm_69/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_69/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_69/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_69/strided_slice_1StridedSlicelstm_69/Shape_1:output:0&lstm_69/strided_slice_1/stack:output:0(lstm_69/strided_slice_1/stack_1:output:0(lstm_69/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_69/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_69/TensorArrayV2TensorListReserve,lstm_69/TensorArrayV2/element_shape:output:0 lstm_69/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
=lstm_69/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����l   �
/lstm_69/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_69/transpose:y:0Flstm_69/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���g
lstm_69/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_69/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_69/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_69/strided_slice_2StridedSlicelstm_69/transpose:y:0&lstm_69/strided_slice_2/stack:output:0(lstm_69/strided_slice_2/stack_1:output:0(lstm_69/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������l*
shrink_axis_mask�
*lstm_69/lstm_cell_69/MatMul/ReadVariableOpReadVariableOp3lstm_69_lstm_cell_69_matmul_readvariableop_resource*
_output_shapes
:	l�*
dtype0�
lstm_69/lstm_cell_69/MatMulMatMul lstm_69/strided_slice_2:output:02lstm_69/lstm_cell_69/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
,lstm_69/lstm_cell_69/MatMul_1/ReadVariableOpReadVariableOp5lstm_69_lstm_cell_69_matmul_1_readvariableop_resource*
_output_shapes
:	h�*
dtype0�
lstm_69/lstm_cell_69/MatMul_1MatMullstm_69/zeros:output:04lstm_69/lstm_cell_69/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_69/lstm_cell_69/addAddV2%lstm_69/lstm_cell_69/MatMul:product:0'lstm_69/lstm_cell_69/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
+lstm_69/lstm_cell_69/BiasAdd/ReadVariableOpReadVariableOp4lstm_69_lstm_cell_69_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_69/lstm_cell_69/BiasAddBiasAddlstm_69/lstm_cell_69/add:z:03lstm_69/lstm_cell_69/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������f
$lstm_69/lstm_cell_69/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_69/lstm_cell_69/splitSplit-lstm_69/lstm_cell_69/split/split_dim:output:0%lstm_69/lstm_cell_69/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������h:���������h:���������h:���������h*
	num_split~
lstm_69/lstm_cell_69/SigmoidSigmoid#lstm_69/lstm_cell_69/split:output:0*
T0*'
_output_shapes
:���������h�
lstm_69/lstm_cell_69/Sigmoid_1Sigmoid#lstm_69/lstm_cell_69/split:output:1*
T0*'
_output_shapes
:���������h�
lstm_69/lstm_cell_69/mulMul"lstm_69/lstm_cell_69/Sigmoid_1:y:0lstm_69/zeros_1:output:0*
T0*'
_output_shapes
:���������hx
lstm_69/lstm_cell_69/ReluRelu#lstm_69/lstm_cell_69/split:output:2*
T0*'
_output_shapes
:���������h�
lstm_69/lstm_cell_69/mul_1Mul lstm_69/lstm_cell_69/Sigmoid:y:0'lstm_69/lstm_cell_69/Relu:activations:0*
T0*'
_output_shapes
:���������h�
lstm_69/lstm_cell_69/add_1AddV2lstm_69/lstm_cell_69/mul:z:0lstm_69/lstm_cell_69/mul_1:z:0*
T0*'
_output_shapes
:���������h�
lstm_69/lstm_cell_69/Sigmoid_2Sigmoid#lstm_69/lstm_cell_69/split:output:3*
T0*'
_output_shapes
:���������hu
lstm_69/lstm_cell_69/Relu_1Relulstm_69/lstm_cell_69/add_1:z:0*
T0*'
_output_shapes
:���������h�
lstm_69/lstm_cell_69/mul_2Mul"lstm_69/lstm_cell_69/Sigmoid_2:y:0)lstm_69/lstm_cell_69/Relu_1:activations:0*
T0*'
_output_shapes
:���������hv
%lstm_69/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����h   �
lstm_69/TensorArrayV2_1TensorListReserve.lstm_69/TensorArrayV2_1/element_shape:output:0 lstm_69/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���N
lstm_69/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_69/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������\
lstm_69/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_69/whileWhile#lstm_69/while/loop_counter:output:0)lstm_69/while/maximum_iterations:output:0lstm_69/time:output:0 lstm_69/TensorArrayV2_1:handle:0lstm_69/zeros:output:0lstm_69/zeros_1:output:0 lstm_69/strided_slice_1:output:0?lstm_69/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_69_lstm_cell_69_matmul_readvariableop_resource5lstm_69_lstm_cell_69_matmul_1_readvariableop_resource4lstm_69_lstm_cell_69_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������h:���������h: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_69_while_body_341442*%
condR
lstm_69_while_cond_341441*K
output_shapes:
8: : : : :���������h:���������h: : : : : *
parallel_iterations �
8lstm_69/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����h   �
*lstm_69/TensorArrayV2Stack/TensorListStackTensorListStacklstm_69/while:output:3Alstm_69/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������h*
element_dtype0p
lstm_69/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������i
lstm_69/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_69/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_69/strided_slice_3StridedSlice3lstm_69/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_69/strided_slice_3/stack:output:0(lstm_69/strided_slice_3/stack_1:output:0(lstm_69/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������h*
shrink_axis_maskm
lstm_69/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_69/transpose_1	Transpose3lstm_69/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_69/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������hc
lstm_69/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ]
dropout_34/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *B�?�
dropout_34/dropout/MulMul lstm_69/strided_slice_3:output:0!dropout_34/dropout/Const:output:0*
T0*'
_output_shapes
:���������hh
dropout_34/dropout/ShapeShape lstm_69/strided_slice_3:output:0*
T0*
_output_shapes
:�
/dropout_34/dropout/random_uniform/RandomUniformRandomUniform!dropout_34/dropout/Shape:output:0*
T0*'
_output_shapes
:���������h*
dtype0*

seed*f
!dropout_34/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *p�f>�
dropout_34/dropout/GreaterEqualGreaterEqual8dropout_34/dropout/random_uniform/RandomUniform:output:0*dropout_34/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������h�
dropout_34/dropout/CastCast#dropout_34/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������h�
dropout_34/dropout/Mul_1Muldropout_34/dropout/Mul:z:0dropout_34/dropout/Cast:y:0*
T0*'
_output_shapes
:���������h�
dense_34/MatMul/ReadVariableOpReadVariableOp'dense_34_matmul_readvariableop_resource*
_output_shapes

:h*
dtype0�
dense_34/MatMulMatMuldropout_34/dropout/Mul_1:z:0&dense_34/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_34/BiasAdd/ReadVariableOpReadVariableOp(dense_34_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_34/BiasAddBiasAdddense_34/MatMul:product:0'dense_34/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h
dense_34/SigmoidSigmoiddense_34/BiasAdd:output:0*
T0*'
_output_shapes
:���������c
IdentityIdentitydense_34/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_34/BiasAdd/ReadVariableOp^dense_34/MatMul/ReadVariableOp8^fixed_adjacency_graph_convolution_68/add/ReadVariableOp@^fixed_adjacency_graph_convolution_68/transpose_1/ReadVariableOp@^fixed_adjacency_graph_convolution_68/transpose_3/ReadVariableOp8^fixed_adjacency_graph_convolution_69/add/ReadVariableOp@^fixed_adjacency_graph_convolution_69/transpose_1/ReadVariableOp@^fixed_adjacency_graph_convolution_69/transpose_3/ReadVariableOp,^lstm_68/lstm_cell_68/BiasAdd/ReadVariableOp+^lstm_68/lstm_cell_68/MatMul/ReadVariableOp-^lstm_68/lstm_cell_68/MatMul_1/ReadVariableOp^lstm_68/while,^lstm_69/lstm_cell_69/BiasAdd/ReadVariableOp+^lstm_69/lstm_cell_69/MatMul/ReadVariableOp-^lstm_69/lstm_cell_69/MatMul_1/ReadVariableOp^lstm_69/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : 2B
dense_34/BiasAdd/ReadVariableOpdense_34/BiasAdd/ReadVariableOp2@
dense_34/MatMul/ReadVariableOpdense_34/MatMul/ReadVariableOp2r
7fixed_adjacency_graph_convolution_68/add/ReadVariableOp7fixed_adjacency_graph_convolution_68/add/ReadVariableOp2�
?fixed_adjacency_graph_convolution_68/transpose_1/ReadVariableOp?fixed_adjacency_graph_convolution_68/transpose_1/ReadVariableOp2�
?fixed_adjacency_graph_convolution_68/transpose_3/ReadVariableOp?fixed_adjacency_graph_convolution_68/transpose_3/ReadVariableOp2r
7fixed_adjacency_graph_convolution_69/add/ReadVariableOp7fixed_adjacency_graph_convolution_69/add/ReadVariableOp2�
?fixed_adjacency_graph_convolution_69/transpose_1/ReadVariableOp?fixed_adjacency_graph_convolution_69/transpose_1/ReadVariableOp2�
?fixed_adjacency_graph_convolution_69/transpose_3/ReadVariableOp?fixed_adjacency_graph_convolution_69/transpose_3/ReadVariableOp2Z
+lstm_68/lstm_cell_68/BiasAdd/ReadVariableOp+lstm_68/lstm_cell_68/BiasAdd/ReadVariableOp2X
*lstm_68/lstm_cell_68/MatMul/ReadVariableOp*lstm_68/lstm_cell_68/MatMul/ReadVariableOp2\
,lstm_68/lstm_cell_68/MatMul_1/ReadVariableOp,lstm_68/lstm_cell_68/MatMul_1/ReadVariableOp2
lstm_68/whilelstm_68/while2Z
+lstm_69/lstm_cell_69/BiasAdd/ReadVariableOp+lstm_69/lstm_cell_69/BiasAdd/ReadVariableOp2X
*lstm_69/lstm_cell_69/MatMul/ReadVariableOp*lstm_69/lstm_cell_69/MatMul/ReadVariableOp2\
,lstm_69/lstm_cell_69/MatMul_1/ReadVariableOp,lstm_69/lstm_cell_69/MatMul_1/ReadVariableOp2
lstm_69/whilelstm_69/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�3
�
D__inference_model_34_layer_call_and_return_conditional_losses_340574
input_69=
+fixed_adjacency_graph_convolution_68_340536:=
+fixed_adjacency_graph_convolution_68_340538:
=
+fixed_adjacency_graph_convolution_68_340540:=
+fixed_adjacency_graph_convolution_69_340543:=
+fixed_adjacency_graph_convolution_69_340545:
=
+fixed_adjacency_graph_convolution_69_340547:!
lstm_68_340553:	�!
lstm_68_340555:	l�
lstm_68_340557:	�!
lstm_69_340560:	l�!
lstm_69_340562:	h�
lstm_69_340564:	�!
dense_34_340568:h
dense_34_340570:
identity�� dense_34/StatefulPartitionedCall�<fixed_adjacency_graph_convolution_68/StatefulPartitionedCall�<fixed_adjacency_graph_convolution_69/StatefulPartitionedCall�lstm_68/StatefulPartitionedCall�lstm_69/StatefulPartitionedCallk
 tf.expand_dims_34/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
tf.expand_dims_34/ExpandDims
ExpandDimsinput_69)tf.expand_dims_34/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
reshape_102/PartitionedCallPartitionedCall%tf.expand_dims_34/ExpandDims:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_reshape_102_layer_call_and_return_conditional_losses_339468�
<fixed_adjacency_graph_convolution_68/StatefulPartitionedCallStatefulPartitionedCall$reshape_102/PartitionedCall:output:0+fixed_adjacency_graph_convolution_68_340536+fixed_adjacency_graph_convolution_68_340538+fixed_adjacency_graph_convolution_68_340540*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *i
fdRb
`__inference_fixed_adjacency_graph_convolution_68_layer_call_and_return_conditional_losses_339524�
<fixed_adjacency_graph_convolution_69/StatefulPartitionedCallStatefulPartitionedCallEfixed_adjacency_graph_convolution_68/StatefulPartitionedCall:output:0+fixed_adjacency_graph_convolution_69_340543+fixed_adjacency_graph_convolution_69_340545+fixed_adjacency_graph_convolution_69_340547*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *i
fdRb
`__inference_fixed_adjacency_graph_convolution_69_layer_call_and_return_conditional_losses_339586�
reshape_103/PartitionedCallPartitionedCallEfixed_adjacency_graph_convolution_69/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_reshape_103_layer_call_and_return_conditional_losses_339608�
permute_34/PartitionedCallPartitionedCall$reshape_103/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_permute_34_layer_call_and_return_conditional_losses_338743�
reshape_104/PartitionedCallPartitionedCall#permute_34/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_reshape_104_layer_call_and_return_conditional_losses_339624�
lstm_68/StatefulPartitionedCallStatefulPartitionedCall$reshape_104/PartitionedCall:output:0lstm_68_340553lstm_68_340555lstm_68_340557*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������l*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_68_layer_call_and_return_conditional_losses_339768�
lstm_69/StatefulPartitionedCallStatefulPartitionedCall(lstm_68/StatefulPartitionedCall:output:0lstm_69_340560lstm_69_340562lstm_69_340564*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������h*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_69_layer_call_and_return_conditional_losses_339918�
dropout_34/PartitionedCallPartitionedCall(lstm_69/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������h* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_34_layer_call_and_return_conditional_losses_339931�
 dense_34/StatefulPartitionedCallStatefulPartitionedCall#dropout_34/PartitionedCall:output:0dense_34_340568dense_34_340570*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_34_layer_call_and_return_conditional_losses_339944x
IdentityIdentity)dense_34/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_34/StatefulPartitionedCall=^fixed_adjacency_graph_convolution_68/StatefulPartitionedCall=^fixed_adjacency_graph_convolution_69/StatefulPartitionedCall ^lstm_68/StatefulPartitionedCall ^lstm_69/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : 2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall2|
<fixed_adjacency_graph_convolution_68/StatefulPartitionedCall<fixed_adjacency_graph_convolution_68/StatefulPartitionedCall2|
<fixed_adjacency_graph_convolution_69/StatefulPartitionedCall<fixed_adjacency_graph_convolution_69/StatefulPartitionedCall2B
lstm_68/StatefulPartitionedCalllstm_68/StatefulPartitionedCall2B
lstm_69/StatefulPartitionedCalllstm_69/StatefulPartitionedCall:U Q
+
_output_shapes
:���������
"
_user_specified_name
input_69
�
G
+__inference_dropout_34_layer_call_fn_343009

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
:���������h* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_34_layer_call_and_return_conditional_losses_339931`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������h"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������h:O K
'
_output_shapes
:���������h
 
_user_specified_nameinputs
�

�
D__inference_dense_34_layer_call_and_return_conditional_losses_343051

inputs0
matmul_readvariableop_resource:h-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:h*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������h: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������h
 
_user_specified_nameinputs
��
�
!__inference__wrapped_model_338733
input_69_
Mmodel_34_fixed_adjacency_graph_convolution_68_shape_1_readvariableop_resource:_
Mmodel_34_fixed_adjacency_graph_convolution_68_shape_3_readvariableop_resource:
[
Imodel_34_fixed_adjacency_graph_convolution_68_add_readvariableop_resource:_
Mmodel_34_fixed_adjacency_graph_convolution_69_shape_1_readvariableop_resource:_
Mmodel_34_fixed_adjacency_graph_convolution_69_shape_3_readvariableop_resource:
[
Imodel_34_fixed_adjacency_graph_convolution_69_add_readvariableop_resource:O
<model_34_lstm_68_lstm_cell_68_matmul_readvariableop_resource:	�Q
>model_34_lstm_68_lstm_cell_68_matmul_1_readvariableop_resource:	l�L
=model_34_lstm_68_lstm_cell_68_biasadd_readvariableop_resource:	�O
<model_34_lstm_69_lstm_cell_69_matmul_readvariableop_resource:	l�Q
>model_34_lstm_69_lstm_cell_69_matmul_1_readvariableop_resource:	h�L
=model_34_lstm_69_lstm_cell_69_biasadd_readvariableop_resource:	�B
0model_34_dense_34_matmul_readvariableop_resource:h?
1model_34_dense_34_biasadd_readvariableop_resource:
identity��(model_34/dense_34/BiasAdd/ReadVariableOp�'model_34/dense_34/MatMul/ReadVariableOp�@model_34/fixed_adjacency_graph_convolution_68/add/ReadVariableOp�Hmodel_34/fixed_adjacency_graph_convolution_68/transpose_1/ReadVariableOp�Hmodel_34/fixed_adjacency_graph_convolution_68/transpose_3/ReadVariableOp�@model_34/fixed_adjacency_graph_convolution_69/add/ReadVariableOp�Hmodel_34/fixed_adjacency_graph_convolution_69/transpose_1/ReadVariableOp�Hmodel_34/fixed_adjacency_graph_convolution_69/transpose_3/ReadVariableOp�4model_34/lstm_68/lstm_cell_68/BiasAdd/ReadVariableOp�3model_34/lstm_68/lstm_cell_68/MatMul/ReadVariableOp�5model_34/lstm_68/lstm_cell_68/MatMul_1/ReadVariableOp�model_34/lstm_68/while�4model_34/lstm_69/lstm_cell_69/BiasAdd/ReadVariableOp�3model_34/lstm_69/lstm_cell_69/MatMul/ReadVariableOp�5model_34/lstm_69/lstm_cell_69/MatMul_1/ReadVariableOp�model_34/lstm_69/whilet
)model_34/tf.expand_dims_34/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
%model_34/tf.expand_dims_34/ExpandDims
ExpandDimsinput_692model_34/tf.expand_dims_34/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������x
model_34/reshape_102/ShapeShape.model_34/tf.expand_dims_34/ExpandDims:output:0*
T0*
_output_shapes
:r
(model_34/reshape_102/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*model_34/reshape_102/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*model_34/reshape_102/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"model_34/reshape_102/strided_sliceStridedSlice#model_34/reshape_102/Shape:output:01model_34/reshape_102/strided_slice/stack:output:03model_34/reshape_102/strided_slice/stack_1:output:03model_34/reshape_102/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$model_34/reshape_102/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :f
$model_34/reshape_102/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
"model_34/reshape_102/Reshape/shapePack+model_34/reshape_102/strided_slice:output:0-model_34/reshape_102/Reshape/shape/1:output:0-model_34/reshape_102/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:�
model_34/reshape_102/ReshapeReshape.model_34/tf.expand_dims_34/ExpandDims:output:0+model_34/reshape_102/Reshape/shape:output:0*
T0*+
_output_shapes
:����������
<model_34/fixed_adjacency_graph_convolution_68/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
7model_34/fixed_adjacency_graph_convolution_68/transpose	Transpose%model_34/reshape_102/Reshape:output:0Emodel_34/fixed_adjacency_graph_convolution_68/transpose/perm:output:0*
T0*+
_output_shapes
:����������
3model_34/fixed_adjacency_graph_convolution_68/ShapeShape;model_34/fixed_adjacency_graph_convolution_68/transpose:y:0*
T0*
_output_shapes
:�
5model_34/fixed_adjacency_graph_convolution_68/unstackUnpack<model_34/fixed_adjacency_graph_convolution_68/Shape:output:0*
T0*
_output_shapes
: : : *	
num�
Dmodel_34/fixed_adjacency_graph_convolution_68/Shape_1/ReadVariableOpReadVariableOpMmodel_34_fixed_adjacency_graph_convolution_68_shape_1_readvariableop_resource*
_output_shapes

:*
dtype0�
5model_34/fixed_adjacency_graph_convolution_68/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"      �
7model_34/fixed_adjacency_graph_convolution_68/unstack_1Unpack>model_34/fixed_adjacency_graph_convolution_68/Shape_1:output:0*
T0*
_output_shapes
: : *	
num�
;model_34/fixed_adjacency_graph_convolution_68/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
5model_34/fixed_adjacency_graph_convolution_68/ReshapeReshape;model_34/fixed_adjacency_graph_convolution_68/transpose:y:0Dmodel_34/fixed_adjacency_graph_convolution_68/Reshape/shape:output:0*
T0*'
_output_shapes
:����������
Hmodel_34/fixed_adjacency_graph_convolution_68/transpose_1/ReadVariableOpReadVariableOpMmodel_34_fixed_adjacency_graph_convolution_68_shape_1_readvariableop_resource*
_output_shapes

:*
dtype0�
>model_34/fixed_adjacency_graph_convolution_68/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       �
9model_34/fixed_adjacency_graph_convolution_68/transpose_1	TransposePmodel_34/fixed_adjacency_graph_convolution_68/transpose_1/ReadVariableOp:value:0Gmodel_34/fixed_adjacency_graph_convolution_68/transpose_1/perm:output:0*
T0*
_output_shapes

:�
=model_34/fixed_adjacency_graph_convolution_68/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   �����
7model_34/fixed_adjacency_graph_convolution_68/Reshape_1Reshape=model_34/fixed_adjacency_graph_convolution_68/transpose_1:y:0Fmodel_34/fixed_adjacency_graph_convolution_68/Reshape_1/shape:output:0*
T0*
_output_shapes

:�
4model_34/fixed_adjacency_graph_convolution_68/MatMulMatMul>model_34/fixed_adjacency_graph_convolution_68/Reshape:output:0@model_34/fixed_adjacency_graph_convolution_68/Reshape_1:output:0*
T0*'
_output_shapes
:����������
?model_34/fixed_adjacency_graph_convolution_68/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
?model_34/fixed_adjacency_graph_convolution_68/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
=model_34/fixed_adjacency_graph_convolution_68/Reshape_2/shapePack>model_34/fixed_adjacency_graph_convolution_68/unstack:output:0Hmodel_34/fixed_adjacency_graph_convolution_68/Reshape_2/shape/1:output:0Hmodel_34/fixed_adjacency_graph_convolution_68/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:�
7model_34/fixed_adjacency_graph_convolution_68/Reshape_2Reshape>model_34/fixed_adjacency_graph_convolution_68/MatMul:product:0Fmodel_34/fixed_adjacency_graph_convolution_68/Reshape_2/shape:output:0*
T0*+
_output_shapes
:����������
>model_34/fixed_adjacency_graph_convolution_68/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
9model_34/fixed_adjacency_graph_convolution_68/transpose_2	Transpose@model_34/fixed_adjacency_graph_convolution_68/Reshape_2:output:0Gmodel_34/fixed_adjacency_graph_convolution_68/transpose_2/perm:output:0*
T0*+
_output_shapes
:����������
5model_34/fixed_adjacency_graph_convolution_68/Shape_2Shape=model_34/fixed_adjacency_graph_convolution_68/transpose_2:y:0*
T0*
_output_shapes
:�
7model_34/fixed_adjacency_graph_convolution_68/unstack_2Unpack>model_34/fixed_adjacency_graph_convolution_68/Shape_2:output:0*
T0*
_output_shapes
: : : *	
num�
Dmodel_34/fixed_adjacency_graph_convolution_68/Shape_3/ReadVariableOpReadVariableOpMmodel_34_fixed_adjacency_graph_convolution_68_shape_3_readvariableop_resource*
_output_shapes

:
*
dtype0�
5model_34/fixed_adjacency_graph_convolution_68/Shape_3Const*
_output_shapes
:*
dtype0*
valueB"   
   �
7model_34/fixed_adjacency_graph_convolution_68/unstack_3Unpack>model_34/fixed_adjacency_graph_convolution_68/Shape_3:output:0*
T0*
_output_shapes
: : *	
num�
=model_34/fixed_adjacency_graph_convolution_68/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
7model_34/fixed_adjacency_graph_convolution_68/Reshape_3Reshape=model_34/fixed_adjacency_graph_convolution_68/transpose_2:y:0Fmodel_34/fixed_adjacency_graph_convolution_68/Reshape_3/shape:output:0*
T0*'
_output_shapes
:����������
Hmodel_34/fixed_adjacency_graph_convolution_68/transpose_3/ReadVariableOpReadVariableOpMmodel_34_fixed_adjacency_graph_convolution_68_shape_3_readvariableop_resource*
_output_shapes

:
*
dtype0�
>model_34/fixed_adjacency_graph_convolution_68/transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       �
9model_34/fixed_adjacency_graph_convolution_68/transpose_3	TransposePmodel_34/fixed_adjacency_graph_convolution_68/transpose_3/ReadVariableOp:value:0Gmodel_34/fixed_adjacency_graph_convolution_68/transpose_3/perm:output:0*
T0*
_output_shapes

:
�
=model_34/fixed_adjacency_graph_convolution_68/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*
valueB"   �����
7model_34/fixed_adjacency_graph_convolution_68/Reshape_4Reshape=model_34/fixed_adjacency_graph_convolution_68/transpose_3:y:0Fmodel_34/fixed_adjacency_graph_convolution_68/Reshape_4/shape:output:0*
T0*
_output_shapes

:
�
6model_34/fixed_adjacency_graph_convolution_68/MatMul_1MatMul@model_34/fixed_adjacency_graph_convolution_68/Reshape_3:output:0@model_34/fixed_adjacency_graph_convolution_68/Reshape_4:output:0*
T0*'
_output_shapes
:���������
�
?model_34/fixed_adjacency_graph_convolution_68/Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
?model_34/fixed_adjacency_graph_convolution_68/Reshape_5/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
�
=model_34/fixed_adjacency_graph_convolution_68/Reshape_5/shapePack@model_34/fixed_adjacency_graph_convolution_68/unstack_2:output:0Hmodel_34/fixed_adjacency_graph_convolution_68/Reshape_5/shape/1:output:0Hmodel_34/fixed_adjacency_graph_convolution_68/Reshape_5/shape/2:output:0*
N*
T0*
_output_shapes
:�
7model_34/fixed_adjacency_graph_convolution_68/Reshape_5Reshape@model_34/fixed_adjacency_graph_convolution_68/MatMul_1:product:0Fmodel_34/fixed_adjacency_graph_convolution_68/Reshape_5/shape:output:0*
T0*+
_output_shapes
:���������
�
@model_34/fixed_adjacency_graph_convolution_68/add/ReadVariableOpReadVariableOpImodel_34_fixed_adjacency_graph_convolution_68_add_readvariableop_resource*
_output_shapes

:*
dtype0�
1model_34/fixed_adjacency_graph_convolution_68/addAddV2@model_34/fixed_adjacency_graph_convolution_68/Reshape_5:output:0Hmodel_34/fixed_adjacency_graph_convolution_68/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������
�
2model_34/fixed_adjacency_graph_convolution_68/ReluRelu5model_34/fixed_adjacency_graph_convolution_68/add:z:0*
T0*+
_output_shapes
:���������
�
<model_34/fixed_adjacency_graph_convolution_69/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
7model_34/fixed_adjacency_graph_convolution_69/transpose	Transpose@model_34/fixed_adjacency_graph_convolution_68/Relu:activations:0Emodel_34/fixed_adjacency_graph_convolution_69/transpose/perm:output:0*
T0*+
_output_shapes
:���������
�
3model_34/fixed_adjacency_graph_convolution_69/ShapeShape;model_34/fixed_adjacency_graph_convolution_69/transpose:y:0*
T0*
_output_shapes
:�
5model_34/fixed_adjacency_graph_convolution_69/unstackUnpack<model_34/fixed_adjacency_graph_convolution_69/Shape:output:0*
T0*
_output_shapes
: : : *	
num�
Dmodel_34/fixed_adjacency_graph_convolution_69/Shape_1/ReadVariableOpReadVariableOpMmodel_34_fixed_adjacency_graph_convolution_69_shape_1_readvariableop_resource*
_output_shapes

:*
dtype0�
5model_34/fixed_adjacency_graph_convolution_69/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"      �
7model_34/fixed_adjacency_graph_convolution_69/unstack_1Unpack>model_34/fixed_adjacency_graph_convolution_69/Shape_1:output:0*
T0*
_output_shapes
: : *	
num�
;model_34/fixed_adjacency_graph_convolution_69/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
5model_34/fixed_adjacency_graph_convolution_69/ReshapeReshape;model_34/fixed_adjacency_graph_convolution_69/transpose:y:0Dmodel_34/fixed_adjacency_graph_convolution_69/Reshape/shape:output:0*
T0*'
_output_shapes
:����������
Hmodel_34/fixed_adjacency_graph_convolution_69/transpose_1/ReadVariableOpReadVariableOpMmodel_34_fixed_adjacency_graph_convolution_69_shape_1_readvariableop_resource*
_output_shapes

:*
dtype0�
>model_34/fixed_adjacency_graph_convolution_69/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       �
9model_34/fixed_adjacency_graph_convolution_69/transpose_1	TransposePmodel_34/fixed_adjacency_graph_convolution_69/transpose_1/ReadVariableOp:value:0Gmodel_34/fixed_adjacency_graph_convolution_69/transpose_1/perm:output:0*
T0*
_output_shapes

:�
=model_34/fixed_adjacency_graph_convolution_69/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   �����
7model_34/fixed_adjacency_graph_convolution_69/Reshape_1Reshape=model_34/fixed_adjacency_graph_convolution_69/transpose_1:y:0Fmodel_34/fixed_adjacency_graph_convolution_69/Reshape_1/shape:output:0*
T0*
_output_shapes

:�
4model_34/fixed_adjacency_graph_convolution_69/MatMulMatMul>model_34/fixed_adjacency_graph_convolution_69/Reshape:output:0@model_34/fixed_adjacency_graph_convolution_69/Reshape_1:output:0*
T0*'
_output_shapes
:����������
?model_34/fixed_adjacency_graph_convolution_69/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
�
?model_34/fixed_adjacency_graph_convolution_69/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
=model_34/fixed_adjacency_graph_convolution_69/Reshape_2/shapePack>model_34/fixed_adjacency_graph_convolution_69/unstack:output:0Hmodel_34/fixed_adjacency_graph_convolution_69/Reshape_2/shape/1:output:0Hmodel_34/fixed_adjacency_graph_convolution_69/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:�
7model_34/fixed_adjacency_graph_convolution_69/Reshape_2Reshape>model_34/fixed_adjacency_graph_convolution_69/MatMul:product:0Fmodel_34/fixed_adjacency_graph_convolution_69/Reshape_2/shape:output:0*
T0*+
_output_shapes
:���������
�
>model_34/fixed_adjacency_graph_convolution_69/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
9model_34/fixed_adjacency_graph_convolution_69/transpose_2	Transpose@model_34/fixed_adjacency_graph_convolution_69/Reshape_2:output:0Gmodel_34/fixed_adjacency_graph_convolution_69/transpose_2/perm:output:0*
T0*+
_output_shapes
:���������
�
5model_34/fixed_adjacency_graph_convolution_69/Shape_2Shape=model_34/fixed_adjacency_graph_convolution_69/transpose_2:y:0*
T0*
_output_shapes
:�
7model_34/fixed_adjacency_graph_convolution_69/unstack_2Unpack>model_34/fixed_adjacency_graph_convolution_69/Shape_2:output:0*
T0*
_output_shapes
: : : *	
num�
Dmodel_34/fixed_adjacency_graph_convolution_69/Shape_3/ReadVariableOpReadVariableOpMmodel_34_fixed_adjacency_graph_convolution_69_shape_3_readvariableop_resource*
_output_shapes

:
*
dtype0�
5model_34/fixed_adjacency_graph_convolution_69/Shape_3Const*
_output_shapes
:*
dtype0*
valueB"
      �
7model_34/fixed_adjacency_graph_convolution_69/unstack_3Unpack>model_34/fixed_adjacency_graph_convolution_69/Shape_3:output:0*
T0*
_output_shapes
: : *	
num�
=model_34/fixed_adjacency_graph_convolution_69/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
7model_34/fixed_adjacency_graph_convolution_69/Reshape_3Reshape=model_34/fixed_adjacency_graph_convolution_69/transpose_2:y:0Fmodel_34/fixed_adjacency_graph_convolution_69/Reshape_3/shape:output:0*
T0*'
_output_shapes
:���������
�
Hmodel_34/fixed_adjacency_graph_convolution_69/transpose_3/ReadVariableOpReadVariableOpMmodel_34_fixed_adjacency_graph_convolution_69_shape_3_readvariableop_resource*
_output_shapes

:
*
dtype0�
>model_34/fixed_adjacency_graph_convolution_69/transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       �
9model_34/fixed_adjacency_graph_convolution_69/transpose_3	TransposePmodel_34/fixed_adjacency_graph_convolution_69/transpose_3/ReadVariableOp:value:0Gmodel_34/fixed_adjacency_graph_convolution_69/transpose_3/perm:output:0*
T0*
_output_shapes

:
�
=model_34/fixed_adjacency_graph_convolution_69/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*
valueB"
   �����
7model_34/fixed_adjacency_graph_convolution_69/Reshape_4Reshape=model_34/fixed_adjacency_graph_convolution_69/transpose_3:y:0Fmodel_34/fixed_adjacency_graph_convolution_69/Reshape_4/shape:output:0*
T0*
_output_shapes

:
�
6model_34/fixed_adjacency_graph_convolution_69/MatMul_1MatMul@model_34/fixed_adjacency_graph_convolution_69/Reshape_3:output:0@model_34/fixed_adjacency_graph_convolution_69/Reshape_4:output:0*
T0*'
_output_shapes
:����������
?model_34/fixed_adjacency_graph_convolution_69/Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
?model_34/fixed_adjacency_graph_convolution_69/Reshape_5/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
=model_34/fixed_adjacency_graph_convolution_69/Reshape_5/shapePack@model_34/fixed_adjacency_graph_convolution_69/unstack_2:output:0Hmodel_34/fixed_adjacency_graph_convolution_69/Reshape_5/shape/1:output:0Hmodel_34/fixed_adjacency_graph_convolution_69/Reshape_5/shape/2:output:0*
N*
T0*
_output_shapes
:�
7model_34/fixed_adjacency_graph_convolution_69/Reshape_5Reshape@model_34/fixed_adjacency_graph_convolution_69/MatMul_1:product:0Fmodel_34/fixed_adjacency_graph_convolution_69/Reshape_5/shape:output:0*
T0*+
_output_shapes
:����������
@model_34/fixed_adjacency_graph_convolution_69/add/ReadVariableOpReadVariableOpImodel_34_fixed_adjacency_graph_convolution_69_add_readvariableop_resource*
_output_shapes

:*
dtype0�
1model_34/fixed_adjacency_graph_convolution_69/addAddV2@model_34/fixed_adjacency_graph_convolution_69/Reshape_5:output:0Hmodel_34/fixed_adjacency_graph_convolution_69/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:����������
2model_34/fixed_adjacency_graph_convolution_69/ReluRelu5model_34/fixed_adjacency_graph_convolution_69/add:z:0*
T0*+
_output_shapes
:����������
model_34/reshape_103/ShapeShape@model_34/fixed_adjacency_graph_convolution_69/Relu:activations:0*
T0*
_output_shapes
:r
(model_34/reshape_103/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*model_34/reshape_103/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*model_34/reshape_103/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"model_34/reshape_103/strided_sliceStridedSlice#model_34/reshape_103/Shape:output:01model_34/reshape_103/strided_slice/stack:output:03model_34/reshape_103/strided_slice/stack_1:output:03model_34/reshape_103/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$model_34/reshape_103/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :o
$model_34/reshape_103/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
valueB :
���������f
$model_34/reshape_103/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
"model_34/reshape_103/Reshape/shapePack+model_34/reshape_103/strided_slice:output:0-model_34/reshape_103/Reshape/shape/1:output:0-model_34/reshape_103/Reshape/shape/2:output:0-model_34/reshape_103/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
model_34/reshape_103/ReshapeReshape@model_34/fixed_adjacency_graph_convolution_69/Relu:activations:0+model_34/reshape_103/Reshape/shape:output:0*
T0*/
_output_shapes
:���������{
"model_34/permute_34/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
model_34/permute_34/transpose	Transpose%model_34/reshape_103/Reshape:output:0+model_34/permute_34/transpose/perm:output:0*
T0*/
_output_shapes
:���������k
model_34/reshape_104/ShapeShape!model_34/permute_34/transpose:y:0*
T0*
_output_shapes
:r
(model_34/reshape_104/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*model_34/reshape_104/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*model_34/reshape_104/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"model_34/reshape_104/strided_sliceStridedSlice#model_34/reshape_104/Shape:output:01model_34/reshape_104/strided_slice/stack:output:03model_34/reshape_104/strided_slice/stack_1:output:03model_34/reshape_104/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$model_34/reshape_104/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������f
$model_34/reshape_104/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
"model_34/reshape_104/Reshape/shapePack+model_34/reshape_104/strided_slice:output:0-model_34/reshape_104/Reshape/shape/1:output:0-model_34/reshape_104/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:�
model_34/reshape_104/ReshapeReshape!model_34/permute_34/transpose:y:0+model_34/reshape_104/Reshape/shape:output:0*
T0*+
_output_shapes
:���������k
model_34/lstm_68/ShapeShape%model_34/reshape_104/Reshape:output:0*
T0*
_output_shapes
:n
$model_34/lstm_68/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&model_34/lstm_68/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&model_34/lstm_68/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
model_34/lstm_68/strided_sliceStridedSlicemodel_34/lstm_68/Shape:output:0-model_34/lstm_68/strided_slice/stack:output:0/model_34/lstm_68/strided_slice/stack_1:output:0/model_34/lstm_68/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
model_34/lstm_68/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :l�
model_34/lstm_68/zeros/packedPack'model_34/lstm_68/strided_slice:output:0(model_34/lstm_68/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:a
model_34/lstm_68/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
model_34/lstm_68/zerosFill&model_34/lstm_68/zeros/packed:output:0%model_34/lstm_68/zeros/Const:output:0*
T0*'
_output_shapes
:���������lc
!model_34/lstm_68/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :l�
model_34/lstm_68/zeros_1/packedPack'model_34/lstm_68/strided_slice:output:0*model_34/lstm_68/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:c
model_34/lstm_68/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
model_34/lstm_68/zeros_1Fill(model_34/lstm_68/zeros_1/packed:output:0'model_34/lstm_68/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������lt
model_34/lstm_68/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
model_34/lstm_68/transpose	Transpose%model_34/reshape_104/Reshape:output:0(model_34/lstm_68/transpose/perm:output:0*
T0*+
_output_shapes
:���������f
model_34/lstm_68/Shape_1Shapemodel_34/lstm_68/transpose:y:0*
T0*
_output_shapes
:p
&model_34/lstm_68/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(model_34/lstm_68/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(model_34/lstm_68/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 model_34/lstm_68/strided_slice_1StridedSlice!model_34/lstm_68/Shape_1:output:0/model_34/lstm_68/strided_slice_1/stack:output:01model_34/lstm_68/strided_slice_1/stack_1:output:01model_34/lstm_68/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
,model_34/lstm_68/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
model_34/lstm_68/TensorArrayV2TensorListReserve5model_34/lstm_68/TensorArrayV2/element_shape:output:0)model_34/lstm_68/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Fmodel_34/lstm_68/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
8model_34/lstm_68/TensorArrayUnstack/TensorListFromTensorTensorListFromTensormodel_34/lstm_68/transpose:y:0Omodel_34/lstm_68/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���p
&model_34/lstm_68/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(model_34/lstm_68/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(model_34/lstm_68/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 model_34/lstm_68/strided_slice_2StridedSlicemodel_34/lstm_68/transpose:y:0/model_34/lstm_68/strided_slice_2/stack:output:01model_34/lstm_68/strided_slice_2/stack_1:output:01model_34/lstm_68/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
3model_34/lstm_68/lstm_cell_68/MatMul/ReadVariableOpReadVariableOp<model_34_lstm_68_lstm_cell_68_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
$model_34/lstm_68/lstm_cell_68/MatMulMatMul)model_34/lstm_68/strided_slice_2:output:0;model_34/lstm_68/lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
5model_34/lstm_68/lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp>model_34_lstm_68_lstm_cell_68_matmul_1_readvariableop_resource*
_output_shapes
:	l�*
dtype0�
&model_34/lstm_68/lstm_cell_68/MatMul_1MatMulmodel_34/lstm_68/zeros:output:0=model_34/lstm_68/lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
!model_34/lstm_68/lstm_cell_68/addAddV2.model_34/lstm_68/lstm_cell_68/MatMul:product:00model_34/lstm_68/lstm_cell_68/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
4model_34/lstm_68/lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp=model_34_lstm_68_lstm_cell_68_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
%model_34/lstm_68/lstm_cell_68/BiasAddBiasAdd%model_34/lstm_68/lstm_cell_68/add:z:0<model_34/lstm_68/lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������o
-model_34/lstm_68/lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
#model_34/lstm_68/lstm_cell_68/splitSplit6model_34/lstm_68/lstm_cell_68/split/split_dim:output:0.model_34/lstm_68/lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������l:���������l:���������l:���������l*
	num_split�
%model_34/lstm_68/lstm_cell_68/SigmoidSigmoid,model_34/lstm_68/lstm_cell_68/split:output:0*
T0*'
_output_shapes
:���������l�
'model_34/lstm_68/lstm_cell_68/Sigmoid_1Sigmoid,model_34/lstm_68/lstm_cell_68/split:output:1*
T0*'
_output_shapes
:���������l�
!model_34/lstm_68/lstm_cell_68/mulMul+model_34/lstm_68/lstm_cell_68/Sigmoid_1:y:0!model_34/lstm_68/zeros_1:output:0*
T0*'
_output_shapes
:���������l�
"model_34/lstm_68/lstm_cell_68/ReluRelu,model_34/lstm_68/lstm_cell_68/split:output:2*
T0*'
_output_shapes
:���������l�
#model_34/lstm_68/lstm_cell_68/mul_1Mul)model_34/lstm_68/lstm_cell_68/Sigmoid:y:00model_34/lstm_68/lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:���������l�
#model_34/lstm_68/lstm_cell_68/add_1AddV2%model_34/lstm_68/lstm_cell_68/mul:z:0'model_34/lstm_68/lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:���������l�
'model_34/lstm_68/lstm_cell_68/Sigmoid_2Sigmoid,model_34/lstm_68/lstm_cell_68/split:output:3*
T0*'
_output_shapes
:���������l�
$model_34/lstm_68/lstm_cell_68/Relu_1Relu'model_34/lstm_68/lstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:���������l�
#model_34/lstm_68/lstm_cell_68/mul_2Mul+model_34/lstm_68/lstm_cell_68/Sigmoid_2:y:02model_34/lstm_68/lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:���������l
.model_34/lstm_68/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����l   �
 model_34/lstm_68/TensorArrayV2_1TensorListReserve7model_34/lstm_68/TensorArrayV2_1/element_shape:output:0)model_34/lstm_68/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���W
model_34/lstm_68/timeConst*
_output_shapes
: *
dtype0*
value	B : t
)model_34/lstm_68/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������e
#model_34/lstm_68/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
model_34/lstm_68/whileWhile,model_34/lstm_68/while/loop_counter:output:02model_34/lstm_68/while/maximum_iterations:output:0model_34/lstm_68/time:output:0)model_34/lstm_68/TensorArrayV2_1:handle:0model_34/lstm_68/zeros:output:0!model_34/lstm_68/zeros_1:output:0)model_34/lstm_68/strided_slice_1:output:0Hmodel_34/lstm_68/TensorArrayUnstack/TensorListFromTensor:output_handle:0<model_34_lstm_68_lstm_cell_68_matmul_readvariableop_resource>model_34_lstm_68_lstm_cell_68_matmul_1_readvariableop_resource=model_34_lstm_68_lstm_cell_68_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������l:���������l: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *.
body&R$
"model_34_lstm_68_while_body_338502*.
cond&R$
"model_34_lstm_68_while_cond_338501*K
output_shapes:
8: : : : :���������l:���������l: : : : : *
parallel_iterations �
Amodel_34/lstm_68/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����l   �
3model_34/lstm_68/TensorArrayV2Stack/TensorListStackTensorListStackmodel_34/lstm_68/while:output:3Jmodel_34/lstm_68/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������l*
element_dtype0y
&model_34/lstm_68/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������r
(model_34/lstm_68/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(model_34/lstm_68/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 model_34/lstm_68/strided_slice_3StridedSlice<model_34/lstm_68/TensorArrayV2Stack/TensorListStack:tensor:0/model_34/lstm_68/strided_slice_3/stack:output:01model_34/lstm_68/strided_slice_3/stack_1:output:01model_34/lstm_68/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������l*
shrink_axis_maskv
!model_34/lstm_68/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
model_34/lstm_68/transpose_1	Transpose<model_34/lstm_68/TensorArrayV2Stack/TensorListStack:tensor:0*model_34/lstm_68/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������ll
model_34/lstm_68/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    f
model_34/lstm_69/ShapeShape model_34/lstm_68/transpose_1:y:0*
T0*
_output_shapes
:n
$model_34/lstm_69/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&model_34/lstm_69/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&model_34/lstm_69/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
model_34/lstm_69/strided_sliceStridedSlicemodel_34/lstm_69/Shape:output:0-model_34/lstm_69/strided_slice/stack:output:0/model_34/lstm_69/strided_slice/stack_1:output:0/model_34/lstm_69/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
model_34/lstm_69/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :h�
model_34/lstm_69/zeros/packedPack'model_34/lstm_69/strided_slice:output:0(model_34/lstm_69/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:a
model_34/lstm_69/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
model_34/lstm_69/zerosFill&model_34/lstm_69/zeros/packed:output:0%model_34/lstm_69/zeros/Const:output:0*
T0*'
_output_shapes
:���������hc
!model_34/lstm_69/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :h�
model_34/lstm_69/zeros_1/packedPack'model_34/lstm_69/strided_slice:output:0*model_34/lstm_69/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:c
model_34/lstm_69/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
model_34/lstm_69/zeros_1Fill(model_34/lstm_69/zeros_1/packed:output:0'model_34/lstm_69/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������ht
model_34/lstm_69/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
model_34/lstm_69/transpose	Transpose model_34/lstm_68/transpose_1:y:0(model_34/lstm_69/transpose/perm:output:0*
T0*+
_output_shapes
:���������lf
model_34/lstm_69/Shape_1Shapemodel_34/lstm_69/transpose:y:0*
T0*
_output_shapes
:p
&model_34/lstm_69/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(model_34/lstm_69/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(model_34/lstm_69/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 model_34/lstm_69/strided_slice_1StridedSlice!model_34/lstm_69/Shape_1:output:0/model_34/lstm_69/strided_slice_1/stack:output:01model_34/lstm_69/strided_slice_1/stack_1:output:01model_34/lstm_69/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
,model_34/lstm_69/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
model_34/lstm_69/TensorArrayV2TensorListReserve5model_34/lstm_69/TensorArrayV2/element_shape:output:0)model_34/lstm_69/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Fmodel_34/lstm_69/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����l   �
8model_34/lstm_69/TensorArrayUnstack/TensorListFromTensorTensorListFromTensormodel_34/lstm_69/transpose:y:0Omodel_34/lstm_69/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���p
&model_34/lstm_69/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(model_34/lstm_69/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(model_34/lstm_69/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 model_34/lstm_69/strided_slice_2StridedSlicemodel_34/lstm_69/transpose:y:0/model_34/lstm_69/strided_slice_2/stack:output:01model_34/lstm_69/strided_slice_2/stack_1:output:01model_34/lstm_69/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������l*
shrink_axis_mask�
3model_34/lstm_69/lstm_cell_69/MatMul/ReadVariableOpReadVariableOp<model_34_lstm_69_lstm_cell_69_matmul_readvariableop_resource*
_output_shapes
:	l�*
dtype0�
$model_34/lstm_69/lstm_cell_69/MatMulMatMul)model_34/lstm_69/strided_slice_2:output:0;model_34/lstm_69/lstm_cell_69/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
5model_34/lstm_69/lstm_cell_69/MatMul_1/ReadVariableOpReadVariableOp>model_34_lstm_69_lstm_cell_69_matmul_1_readvariableop_resource*
_output_shapes
:	h�*
dtype0�
&model_34/lstm_69/lstm_cell_69/MatMul_1MatMulmodel_34/lstm_69/zeros:output:0=model_34/lstm_69/lstm_cell_69/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
!model_34/lstm_69/lstm_cell_69/addAddV2.model_34/lstm_69/lstm_cell_69/MatMul:product:00model_34/lstm_69/lstm_cell_69/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
4model_34/lstm_69/lstm_cell_69/BiasAdd/ReadVariableOpReadVariableOp=model_34_lstm_69_lstm_cell_69_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
%model_34/lstm_69/lstm_cell_69/BiasAddBiasAdd%model_34/lstm_69/lstm_cell_69/add:z:0<model_34/lstm_69/lstm_cell_69/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������o
-model_34/lstm_69/lstm_cell_69/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
#model_34/lstm_69/lstm_cell_69/splitSplit6model_34/lstm_69/lstm_cell_69/split/split_dim:output:0.model_34/lstm_69/lstm_cell_69/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������h:���������h:���������h:���������h*
	num_split�
%model_34/lstm_69/lstm_cell_69/SigmoidSigmoid,model_34/lstm_69/lstm_cell_69/split:output:0*
T0*'
_output_shapes
:���������h�
'model_34/lstm_69/lstm_cell_69/Sigmoid_1Sigmoid,model_34/lstm_69/lstm_cell_69/split:output:1*
T0*'
_output_shapes
:���������h�
!model_34/lstm_69/lstm_cell_69/mulMul+model_34/lstm_69/lstm_cell_69/Sigmoid_1:y:0!model_34/lstm_69/zeros_1:output:0*
T0*'
_output_shapes
:���������h�
"model_34/lstm_69/lstm_cell_69/ReluRelu,model_34/lstm_69/lstm_cell_69/split:output:2*
T0*'
_output_shapes
:���������h�
#model_34/lstm_69/lstm_cell_69/mul_1Mul)model_34/lstm_69/lstm_cell_69/Sigmoid:y:00model_34/lstm_69/lstm_cell_69/Relu:activations:0*
T0*'
_output_shapes
:���������h�
#model_34/lstm_69/lstm_cell_69/add_1AddV2%model_34/lstm_69/lstm_cell_69/mul:z:0'model_34/lstm_69/lstm_cell_69/mul_1:z:0*
T0*'
_output_shapes
:���������h�
'model_34/lstm_69/lstm_cell_69/Sigmoid_2Sigmoid,model_34/lstm_69/lstm_cell_69/split:output:3*
T0*'
_output_shapes
:���������h�
$model_34/lstm_69/lstm_cell_69/Relu_1Relu'model_34/lstm_69/lstm_cell_69/add_1:z:0*
T0*'
_output_shapes
:���������h�
#model_34/lstm_69/lstm_cell_69/mul_2Mul+model_34/lstm_69/lstm_cell_69/Sigmoid_2:y:02model_34/lstm_69/lstm_cell_69/Relu_1:activations:0*
T0*'
_output_shapes
:���������h
.model_34/lstm_69/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����h   �
 model_34/lstm_69/TensorArrayV2_1TensorListReserve7model_34/lstm_69/TensorArrayV2_1/element_shape:output:0)model_34/lstm_69/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���W
model_34/lstm_69/timeConst*
_output_shapes
: *
dtype0*
value	B : t
)model_34/lstm_69/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������e
#model_34/lstm_69/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
model_34/lstm_69/whileWhile,model_34/lstm_69/while/loop_counter:output:02model_34/lstm_69/while/maximum_iterations:output:0model_34/lstm_69/time:output:0)model_34/lstm_69/TensorArrayV2_1:handle:0model_34/lstm_69/zeros:output:0!model_34/lstm_69/zeros_1:output:0)model_34/lstm_69/strided_slice_1:output:0Hmodel_34/lstm_69/TensorArrayUnstack/TensorListFromTensor:output_handle:0<model_34_lstm_69_lstm_cell_69_matmul_readvariableop_resource>model_34_lstm_69_lstm_cell_69_matmul_1_readvariableop_resource=model_34_lstm_69_lstm_cell_69_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������h:���������h: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *.
body&R$
"model_34_lstm_69_while_body_338641*.
cond&R$
"model_34_lstm_69_while_cond_338640*K
output_shapes:
8: : : : :���������h:���������h: : : : : *
parallel_iterations �
Amodel_34/lstm_69/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����h   �
3model_34/lstm_69/TensorArrayV2Stack/TensorListStackTensorListStackmodel_34/lstm_69/while:output:3Jmodel_34/lstm_69/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������h*
element_dtype0y
&model_34/lstm_69/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������r
(model_34/lstm_69/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(model_34/lstm_69/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 model_34/lstm_69/strided_slice_3StridedSlice<model_34/lstm_69/TensorArrayV2Stack/TensorListStack:tensor:0/model_34/lstm_69/strided_slice_3/stack:output:01model_34/lstm_69/strided_slice_3/stack_1:output:01model_34/lstm_69/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������h*
shrink_axis_maskv
!model_34/lstm_69/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
model_34/lstm_69/transpose_1	Transpose<model_34/lstm_69/TensorArrayV2Stack/TensorListStack:tensor:0*model_34/lstm_69/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������hl
model_34/lstm_69/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
model_34/dropout_34/IdentityIdentity)model_34/lstm_69/strided_slice_3:output:0*
T0*'
_output_shapes
:���������h�
'model_34/dense_34/MatMul/ReadVariableOpReadVariableOp0model_34_dense_34_matmul_readvariableop_resource*
_output_shapes

:h*
dtype0�
model_34/dense_34/MatMulMatMul%model_34/dropout_34/Identity:output:0/model_34/dense_34/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
(model_34/dense_34/BiasAdd/ReadVariableOpReadVariableOp1model_34_dense_34_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_34/dense_34/BiasAddBiasAdd"model_34/dense_34/MatMul:product:00model_34/dense_34/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������z
model_34/dense_34/SigmoidSigmoid"model_34/dense_34/BiasAdd:output:0*
T0*'
_output_shapes
:���������l
IdentityIdentitymodel_34/dense_34/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp)^model_34/dense_34/BiasAdd/ReadVariableOp(^model_34/dense_34/MatMul/ReadVariableOpA^model_34/fixed_adjacency_graph_convolution_68/add/ReadVariableOpI^model_34/fixed_adjacency_graph_convolution_68/transpose_1/ReadVariableOpI^model_34/fixed_adjacency_graph_convolution_68/transpose_3/ReadVariableOpA^model_34/fixed_adjacency_graph_convolution_69/add/ReadVariableOpI^model_34/fixed_adjacency_graph_convolution_69/transpose_1/ReadVariableOpI^model_34/fixed_adjacency_graph_convolution_69/transpose_3/ReadVariableOp5^model_34/lstm_68/lstm_cell_68/BiasAdd/ReadVariableOp4^model_34/lstm_68/lstm_cell_68/MatMul/ReadVariableOp6^model_34/lstm_68/lstm_cell_68/MatMul_1/ReadVariableOp^model_34/lstm_68/while5^model_34/lstm_69/lstm_cell_69/BiasAdd/ReadVariableOp4^model_34/lstm_69/lstm_cell_69/MatMul/ReadVariableOp6^model_34/lstm_69/lstm_cell_69/MatMul_1/ReadVariableOp^model_34/lstm_69/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : 2T
(model_34/dense_34/BiasAdd/ReadVariableOp(model_34/dense_34/BiasAdd/ReadVariableOp2R
'model_34/dense_34/MatMul/ReadVariableOp'model_34/dense_34/MatMul/ReadVariableOp2�
@model_34/fixed_adjacency_graph_convolution_68/add/ReadVariableOp@model_34/fixed_adjacency_graph_convolution_68/add/ReadVariableOp2�
Hmodel_34/fixed_adjacency_graph_convolution_68/transpose_1/ReadVariableOpHmodel_34/fixed_adjacency_graph_convolution_68/transpose_1/ReadVariableOp2�
Hmodel_34/fixed_adjacency_graph_convolution_68/transpose_3/ReadVariableOpHmodel_34/fixed_adjacency_graph_convolution_68/transpose_3/ReadVariableOp2�
@model_34/fixed_adjacency_graph_convolution_69/add/ReadVariableOp@model_34/fixed_adjacency_graph_convolution_69/add/ReadVariableOp2�
Hmodel_34/fixed_adjacency_graph_convolution_69/transpose_1/ReadVariableOpHmodel_34/fixed_adjacency_graph_convolution_69/transpose_1/ReadVariableOp2�
Hmodel_34/fixed_adjacency_graph_convolution_69/transpose_3/ReadVariableOpHmodel_34/fixed_adjacency_graph_convolution_69/transpose_3/ReadVariableOp2l
4model_34/lstm_68/lstm_cell_68/BiasAdd/ReadVariableOp4model_34/lstm_68/lstm_cell_68/BiasAdd/ReadVariableOp2j
3model_34/lstm_68/lstm_cell_68/MatMul/ReadVariableOp3model_34/lstm_68/lstm_cell_68/MatMul/ReadVariableOp2n
5model_34/lstm_68/lstm_cell_68/MatMul_1/ReadVariableOp5model_34/lstm_68/lstm_cell_68/MatMul_1/ReadVariableOp20
model_34/lstm_68/whilemodel_34/lstm_68/while2l
4model_34/lstm_69/lstm_cell_69/BiasAdd/ReadVariableOp4model_34/lstm_69/lstm_cell_69/BiasAdd/ReadVariableOp2j
3model_34/lstm_69/lstm_cell_69/MatMul/ReadVariableOp3model_34/lstm_69/lstm_cell_69/MatMul/ReadVariableOp2n
5model_34/lstm_69/lstm_cell_69/MatMul_1/ReadVariableOp5model_34/lstm_69/lstm_cell_69/MatMul_1/ReadVariableOp20
model_34/lstm_69/whilemodel_34/lstm_69/while:U Q
+
_output_shapes
:���������
"
_user_specified_name
input_69
�
�
while_cond_340086
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_340086___redundant_placeholder04
0while_while_cond_340086___redundant_placeholder14
0while_while_cond_340086___redundant_placeholder24
0while_while_cond_340086___redundant_placeholder3
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
@: : : : :���������h:���������h: ::::: 
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
:���������h:-)
'
_output_shapes
:���������h:

_output_shapes
: :

_output_shapes
:
�
�
)__inference_model_34_layer_call_fn_340530
input_69
unknown:
	unknown_0:

	unknown_1:
	unknown_2:
	unknown_3:

	unknown_4:
	unknown_5:	�
	unknown_6:	l�
	unknown_7:	�
	unknown_8:	l�
	unknown_9:	h�

unknown_10:	�

unknown_11:h

unknown_12:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_69unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_model_34_layer_call_and_return_conditional_losses_340466o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:���������
"
_user_specified_name
input_69
�

�
lstm_68_while_cond_341302,
(lstm_68_while_lstm_68_while_loop_counter2
.lstm_68_while_lstm_68_while_maximum_iterations
lstm_68_while_placeholder
lstm_68_while_placeholder_1
lstm_68_while_placeholder_2
lstm_68_while_placeholder_3.
*lstm_68_while_less_lstm_68_strided_slice_1D
@lstm_68_while_lstm_68_while_cond_341302___redundant_placeholder0D
@lstm_68_while_lstm_68_while_cond_341302___redundant_placeholder1D
@lstm_68_while_lstm_68_while_cond_341302___redundant_placeholder2D
@lstm_68_while_lstm_68_while_cond_341302___redundant_placeholder3
lstm_68_while_identity
�
lstm_68/while/LessLesslstm_68_while_placeholder*lstm_68_while_less_lstm_68_strided_slice_1*
T0*
_output_shapes
: [
lstm_68/while/IdentityIdentitylstm_68/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_68_while_identitylstm_68/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������l:���������l: ::::: 
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
:���������l:-)
'
_output_shapes
:���������l:

_output_shapes
: :

_output_shapes
:
�

c
G__inference_reshape_102_layer_call_and_return_conditional_losses_339468

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:���������\
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
-__inference_lstm_cell_68_layer_call_fn_343068

inputs
states_0
states_1
unknown:	�
	unknown_0:	l�
	unknown_1:	�
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
9:���������l:���������l:���������l*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_68_layer_call_and_return_conditional_losses_338813o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������lq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������lq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������l`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������l:���������l: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������l
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������l
"
_user_specified_name
states/1
�8
�
while_body_339834
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_69_matmul_readvariableop_resource_0:	l�H
5while_lstm_cell_69_matmul_1_readvariableop_resource_0:	h�C
4while_lstm_cell_69_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_69_matmul_readvariableop_resource:	l�F
3while_lstm_cell_69_matmul_1_readvariableop_resource:	h�A
2while_lstm_cell_69_biasadd_readvariableop_resource:	���)while/lstm_cell_69/BiasAdd/ReadVariableOp�(while/lstm_cell_69/MatMul/ReadVariableOp�*while/lstm_cell_69/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����l   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������l*
element_dtype0�
(while/lstm_cell_69/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_69_matmul_readvariableop_resource_0*
_output_shapes
:	l�*
dtype0�
while/lstm_cell_69/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_69/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_69/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_69_matmul_1_readvariableop_resource_0*
_output_shapes
:	h�*
dtype0�
while/lstm_cell_69/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_69/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_69/addAddV2#while/lstm_cell_69/MatMul:product:0%while/lstm_cell_69/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_69/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_69_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_69/BiasAddBiasAddwhile/lstm_cell_69/add:z:01while/lstm_cell_69/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
"while/lstm_cell_69/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_69/splitSplit+while/lstm_cell_69/split/split_dim:output:0#while/lstm_cell_69/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������h:���������h:���������h:���������h*
	num_splitz
while/lstm_cell_69/SigmoidSigmoid!while/lstm_cell_69/split:output:0*
T0*'
_output_shapes
:���������h|
while/lstm_cell_69/Sigmoid_1Sigmoid!while/lstm_cell_69/split:output:1*
T0*'
_output_shapes
:���������h�
while/lstm_cell_69/mulMul while/lstm_cell_69/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������ht
while/lstm_cell_69/ReluRelu!while/lstm_cell_69/split:output:2*
T0*'
_output_shapes
:���������h�
while/lstm_cell_69/mul_1Mulwhile/lstm_cell_69/Sigmoid:y:0%while/lstm_cell_69/Relu:activations:0*
T0*'
_output_shapes
:���������h�
while/lstm_cell_69/add_1AddV2while/lstm_cell_69/mul:z:0while/lstm_cell_69/mul_1:z:0*
T0*'
_output_shapes
:���������h|
while/lstm_cell_69/Sigmoid_2Sigmoid!while/lstm_cell_69/split:output:3*
T0*'
_output_shapes
:���������hq
while/lstm_cell_69/Relu_1Reluwhile/lstm_cell_69/add_1:z:0*
T0*'
_output_shapes
:���������h�
while/lstm_cell_69/mul_2Mul while/lstm_cell_69/Sigmoid_2:y:0'while/lstm_cell_69/Relu_1:activations:0*
T0*'
_output_shapes
:���������h�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_69/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :���y
while/Identity_4Identitywhile/lstm_cell_69/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������hy
while/Identity_5Identitywhile/lstm_cell_69/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������h�

while/NoOpNoOp*^while/lstm_cell_69/BiasAdd/ReadVariableOp)^while/lstm_cell_69/MatMul/ReadVariableOp+^while/lstm_cell_69/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_69_biasadd_readvariableop_resource4while_lstm_cell_69_biasadd_readvariableop_resource_0"l
3while_lstm_cell_69_matmul_1_readvariableop_resource5while_lstm_cell_69_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_69_matmul_readvariableop_resource3while_lstm_cell_69_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������h:���������h: : : : : 2V
)while/lstm_cell_69/BiasAdd/ReadVariableOp)while/lstm_cell_69/BiasAdd/ReadVariableOp2T
(while/lstm_cell_69/MatMul/ReadVariableOp(while/lstm_cell_69/MatMul/ReadVariableOp2X
*while/lstm_cell_69/MatMul_1/ReadVariableOp*while/lstm_cell_69/MatMul_1/ReadVariableOp: 
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
:���������h:-)
'
_output_shapes
:���������h:

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_340251
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_340251___redundant_placeholder04
0while_while_cond_340251___redundant_placeholder14
0while_while_cond_340251___redundant_placeholder24
0while_while_cond_340251___redundant_placeholder3
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
@: : : : :���������l:���������l: ::::: 
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
:���������l:-)
'
_output_shapes
:���������l:

_output_shapes
: :

_output_shapes
:
��
�!
"__inference__traced_restore_343562
file_prefixI
7assignvariableop_fixed_adjacency_graph_convolution_68_a:P
>assignvariableop_1_fixed_adjacency_graph_convolution_68_kernel:
N
<assignvariableop_2_fixed_adjacency_graph_convolution_68_bias:K
9assignvariableop_3_fixed_adjacency_graph_convolution_69_a:P
>assignvariableop_4_fixed_adjacency_graph_convolution_69_kernel:
N
<assignvariableop_5_fixed_adjacency_graph_convolution_69_bias:4
"assignvariableop_6_dense_34_kernel:h.
 assignvariableop_7_dense_34_bias:&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: B
/assignvariableop_13_lstm_68_lstm_cell_68_kernel:	�L
9assignvariableop_14_lstm_68_lstm_cell_68_recurrent_kernel:	l�<
-assignvariableop_15_lstm_68_lstm_cell_68_bias:	�B
/assignvariableop_16_lstm_69_lstm_cell_69_kernel:	l�L
9assignvariableop_17_lstm_69_lstm_cell_69_recurrent_kernel:	h�<
-assignvariableop_18_lstm_69_lstm_cell_69_bias:	�#
assignvariableop_19_total: #
assignvariableop_20_count: %
assignvariableop_21_total_1: %
assignvariableop_22_count_1: X
Fassignvariableop_23_adam_fixed_adjacency_graph_convolution_68_kernel_m:
V
Dassignvariableop_24_adam_fixed_adjacency_graph_convolution_68_bias_m:X
Fassignvariableop_25_adam_fixed_adjacency_graph_convolution_69_kernel_m:
V
Dassignvariableop_26_adam_fixed_adjacency_graph_convolution_69_bias_m:<
*assignvariableop_27_adam_dense_34_kernel_m:h6
(assignvariableop_28_adam_dense_34_bias_m:I
6assignvariableop_29_adam_lstm_68_lstm_cell_68_kernel_m:	�S
@assignvariableop_30_adam_lstm_68_lstm_cell_68_recurrent_kernel_m:	l�C
4assignvariableop_31_adam_lstm_68_lstm_cell_68_bias_m:	�I
6assignvariableop_32_adam_lstm_69_lstm_cell_69_kernel_m:	l�S
@assignvariableop_33_adam_lstm_69_lstm_cell_69_recurrent_kernel_m:	h�C
4assignvariableop_34_adam_lstm_69_lstm_cell_69_bias_m:	�X
Fassignvariableop_35_adam_fixed_adjacency_graph_convolution_68_kernel_v:
V
Dassignvariableop_36_adam_fixed_adjacency_graph_convolution_68_bias_v:X
Fassignvariableop_37_adam_fixed_adjacency_graph_convolution_69_kernel_v:
V
Dassignvariableop_38_adam_fixed_adjacency_graph_convolution_69_bias_v:<
*assignvariableop_39_adam_dense_34_kernel_v:h6
(assignvariableop_40_adam_dense_34_bias_v:I
6assignvariableop_41_adam_lstm_68_lstm_cell_68_kernel_v:	�S
@assignvariableop_42_adam_lstm_68_lstm_cell_68_recurrent_kernel_v:	l�C
4assignvariableop_43_adam_lstm_68_lstm_cell_68_bias_v:	�I
6assignvariableop_44_adam_lstm_69_lstm_cell_69_kernel_v:	l�S
@assignvariableop_45_adam_lstm_69_lstm_cell_69_recurrent_kernel_v:	h�C
4assignvariableop_46_adam_lstm_69_lstm_cell_69_bias_v:	�
identity_48��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:0*
dtype0*�
value�B�0B1layer_with_weights-0/A/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB1layer_with_weights-1/A/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:0*
dtype0*s
valuejBh0B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::*>
dtypes4
220	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp7assignvariableop_fixed_adjacency_graph_convolution_68_aIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp>assignvariableop_1_fixed_adjacency_graph_convolution_68_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp<assignvariableop_2_fixed_adjacency_graph_convolution_68_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp9assignvariableop_3_fixed_adjacency_graph_convolution_69_aIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp>assignvariableop_4_fixed_adjacency_graph_convolution_69_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp<assignvariableop_5_fixed_adjacency_graph_convolution_69_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_34_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_34_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp/assignvariableop_13_lstm_68_lstm_cell_68_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp9assignvariableop_14_lstm_68_lstm_cell_68_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp-assignvariableop_15_lstm_68_lstm_cell_68_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp/assignvariableop_16_lstm_69_lstm_cell_69_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp9assignvariableop_17_lstm_69_lstm_cell_69_recurrent_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp-assignvariableop_18_lstm_69_lstm_cell_69_biasIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOpassignvariableop_19_totalIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOpassignvariableop_20_countIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpassignvariableop_21_total_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOpassignvariableop_22_count_1Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOpFassignvariableop_23_adam_fixed_adjacency_graph_convolution_68_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOpDassignvariableop_24_adam_fixed_adjacency_graph_convolution_68_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOpFassignvariableop_25_adam_fixed_adjacency_graph_convolution_69_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOpDassignvariableop_26_adam_fixed_adjacency_graph_convolution_69_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_dense_34_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_dense_34_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp6assignvariableop_29_adam_lstm_68_lstm_cell_68_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp@assignvariableop_30_adam_lstm_68_lstm_cell_68_recurrent_kernel_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp4assignvariableop_31_adam_lstm_68_lstm_cell_68_bias_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp6assignvariableop_32_adam_lstm_69_lstm_cell_69_kernel_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp@assignvariableop_33_adam_lstm_69_lstm_cell_69_recurrent_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp4assignvariableop_34_adam_lstm_69_lstm_cell_69_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOpFassignvariableop_35_adam_fixed_adjacency_graph_convolution_68_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOpDassignvariableop_36_adam_fixed_adjacency_graph_convolution_68_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOpFassignvariableop_37_adam_fixed_adjacency_graph_convolution_69_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOpDassignvariableop_38_adam_fixed_adjacency_graph_convolution_69_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp*assignvariableop_39_adam_dense_34_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp(assignvariableop_40_adam_dense_34_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp6assignvariableop_41_adam_lstm_68_lstm_cell_68_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp@assignvariableop_42_adam_lstm_68_lstm_cell_68_recurrent_kernel_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp4assignvariableop_43_adam_lstm_68_lstm_cell_68_bias_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp6assignvariableop_44_adam_lstm_69_lstm_cell_69_kernel_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp@assignvariableop_45_adam_lstm_69_lstm_cell_69_recurrent_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp4assignvariableop_46_adam_lstm_69_lstm_cell_69_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_47Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_48IdentityIdentity_47:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_48Identity_48:output:0*s
_input_shapesb
`: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462(
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
�J
�
C__inference_lstm_68_layer_call_and_return_conditional_losses_342388

inputs>
+lstm_cell_68_matmul_readvariableop_resource:	�@
-lstm_cell_68_matmul_1_readvariableop_resource:	l�;
,lstm_cell_68_biasadd_readvariableop_resource:	�
identity��#lstm_cell_68/BiasAdd/ReadVariableOp�"lstm_cell_68/MatMul/ReadVariableOp�$lstm_cell_68/MatMul_1/ReadVariableOp�while;
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
valueB:�
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
value	B :ls
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
:���������lR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :lw
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
:���������lc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������D
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
"lstm_cell_68/MatMul/ReadVariableOpReadVariableOp+lstm_cell_68_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_68/MatMulMatMulstrided_slice_2:output:0*lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_68_matmul_1_readvariableop_resource*
_output_shapes
:	l�*
dtype0�
lstm_cell_68/MatMul_1MatMulzeros:output:0,lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_68/addAddV2lstm_cell_68/MatMul:product:0lstm_cell_68/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
#lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_68_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_68/BiasAddBiasAddlstm_cell_68/add:z:0+lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������^
lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_68/splitSplit%lstm_cell_68/split/split_dim:output:0lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������l:���������l:���������l:���������l*
	num_splitn
lstm_cell_68/SigmoidSigmoidlstm_cell_68/split:output:0*
T0*'
_output_shapes
:���������lp
lstm_cell_68/Sigmoid_1Sigmoidlstm_cell_68/split:output:1*
T0*'
_output_shapes
:���������lw
lstm_cell_68/mulMullstm_cell_68/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������lh
lstm_cell_68/ReluRelulstm_cell_68/split:output:2*
T0*'
_output_shapes
:���������l�
lstm_cell_68/mul_1Mullstm_cell_68/Sigmoid:y:0lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:���������l{
lstm_cell_68/add_1AddV2lstm_cell_68/mul:z:0lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:���������lp
lstm_cell_68/Sigmoid_2Sigmoidlstm_cell_68/split:output:3*
T0*'
_output_shapes
:���������le
lstm_cell_68/Relu_1Relulstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:���������l�
lstm_cell_68/mul_2Mullstm_cell_68/Sigmoid_2:y:0!lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:���������ln
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����l   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_68_matmul_readvariableop_resource-lstm_cell_68_matmul_1_readvariableop_resource,lstm_cell_68_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������l:���������l: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_342304*
condR
while_cond_342303*K
output_shapes:
8: : : : :���������l:���������l: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����l   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������l*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������l*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������l[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������l�
NoOpNoOp$^lstm_cell_68/BiasAdd/ReadVariableOp#^lstm_cell_68/MatMul/ReadVariableOp%^lstm_cell_68/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2J
#lstm_cell_68/BiasAdd/ReadVariableOp#lstm_cell_68/BiasAdd/ReadVariableOp2H
"lstm_cell_68/MatMul/ReadVariableOp"lstm_cell_68/MatMul/ReadVariableOp2L
$lstm_cell_68/MatMul_1/ReadVariableOp$lstm_cell_68/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�A
�

lstm_68_while_body_340881,
(lstm_68_while_lstm_68_while_loop_counter2
.lstm_68_while_lstm_68_while_maximum_iterations
lstm_68_while_placeholder
lstm_68_while_placeholder_1
lstm_68_while_placeholder_2
lstm_68_while_placeholder_3+
'lstm_68_while_lstm_68_strided_slice_1_0g
clstm_68_while_tensorarrayv2read_tensorlistgetitem_lstm_68_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_68_while_lstm_cell_68_matmul_readvariableop_resource_0:	�P
=lstm_68_while_lstm_cell_68_matmul_1_readvariableop_resource_0:	l�K
<lstm_68_while_lstm_cell_68_biasadd_readvariableop_resource_0:	�
lstm_68_while_identity
lstm_68_while_identity_1
lstm_68_while_identity_2
lstm_68_while_identity_3
lstm_68_while_identity_4
lstm_68_while_identity_5)
%lstm_68_while_lstm_68_strided_slice_1e
alstm_68_while_tensorarrayv2read_tensorlistgetitem_lstm_68_tensorarrayunstack_tensorlistfromtensorL
9lstm_68_while_lstm_cell_68_matmul_readvariableop_resource:	�N
;lstm_68_while_lstm_cell_68_matmul_1_readvariableop_resource:	l�I
:lstm_68_while_lstm_cell_68_biasadd_readvariableop_resource:	���1lstm_68/while/lstm_cell_68/BiasAdd/ReadVariableOp�0lstm_68/while/lstm_cell_68/MatMul/ReadVariableOp�2lstm_68/while/lstm_cell_68/MatMul_1/ReadVariableOp�
?lstm_68/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
1lstm_68/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_68_while_tensorarrayv2read_tensorlistgetitem_lstm_68_tensorarrayunstack_tensorlistfromtensor_0lstm_68_while_placeholderHlstm_68/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
0lstm_68/while/lstm_cell_68/MatMul/ReadVariableOpReadVariableOp;lstm_68_while_lstm_cell_68_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
!lstm_68/while/lstm_cell_68/MatMulMatMul8lstm_68/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_68/while/lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
2lstm_68/while/lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp=lstm_68_while_lstm_cell_68_matmul_1_readvariableop_resource_0*
_output_shapes
:	l�*
dtype0�
#lstm_68/while/lstm_cell_68/MatMul_1MatMullstm_68_while_placeholder_2:lstm_68/while/lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_68/while/lstm_cell_68/addAddV2+lstm_68/while/lstm_cell_68/MatMul:product:0-lstm_68/while/lstm_cell_68/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
1lstm_68/while/lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp<lstm_68_while_lstm_cell_68_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
"lstm_68/while/lstm_cell_68/BiasAddBiasAdd"lstm_68/while/lstm_cell_68/add:z:09lstm_68/while/lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������l
*lstm_68/while/lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
 lstm_68/while/lstm_cell_68/splitSplit3lstm_68/while/lstm_cell_68/split/split_dim:output:0+lstm_68/while/lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������l:���������l:���������l:���������l*
	num_split�
"lstm_68/while/lstm_cell_68/SigmoidSigmoid)lstm_68/while/lstm_cell_68/split:output:0*
T0*'
_output_shapes
:���������l�
$lstm_68/while/lstm_cell_68/Sigmoid_1Sigmoid)lstm_68/while/lstm_cell_68/split:output:1*
T0*'
_output_shapes
:���������l�
lstm_68/while/lstm_cell_68/mulMul(lstm_68/while/lstm_cell_68/Sigmoid_1:y:0lstm_68_while_placeholder_3*
T0*'
_output_shapes
:���������l�
lstm_68/while/lstm_cell_68/ReluRelu)lstm_68/while/lstm_cell_68/split:output:2*
T0*'
_output_shapes
:���������l�
 lstm_68/while/lstm_cell_68/mul_1Mul&lstm_68/while/lstm_cell_68/Sigmoid:y:0-lstm_68/while/lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:���������l�
 lstm_68/while/lstm_cell_68/add_1AddV2"lstm_68/while/lstm_cell_68/mul:z:0$lstm_68/while/lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:���������l�
$lstm_68/while/lstm_cell_68/Sigmoid_2Sigmoid)lstm_68/while/lstm_cell_68/split:output:3*
T0*'
_output_shapes
:���������l�
!lstm_68/while/lstm_cell_68/Relu_1Relu$lstm_68/while/lstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:���������l�
 lstm_68/while/lstm_cell_68/mul_2Mul(lstm_68/while/lstm_cell_68/Sigmoid_2:y:0/lstm_68/while/lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:���������l�
2lstm_68/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_68_while_placeholder_1lstm_68_while_placeholder$lstm_68/while/lstm_cell_68/mul_2:z:0*
_output_shapes
: *
element_dtype0:���U
lstm_68/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_68/while/addAddV2lstm_68_while_placeholderlstm_68/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_68/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_68/while/add_1AddV2(lstm_68_while_lstm_68_while_loop_counterlstm_68/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_68/while/IdentityIdentitylstm_68/while/add_1:z:0^lstm_68/while/NoOp*
T0*
_output_shapes
: �
lstm_68/while/Identity_1Identity.lstm_68_while_lstm_68_while_maximum_iterations^lstm_68/while/NoOp*
T0*
_output_shapes
: q
lstm_68/while/Identity_2Identitylstm_68/while/add:z:0^lstm_68/while/NoOp*
T0*
_output_shapes
: �
lstm_68/while/Identity_3IdentityBlstm_68/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_68/while/NoOp*
T0*
_output_shapes
: :����
lstm_68/while/Identity_4Identity$lstm_68/while/lstm_cell_68/mul_2:z:0^lstm_68/while/NoOp*
T0*'
_output_shapes
:���������l�
lstm_68/while/Identity_5Identity$lstm_68/while/lstm_cell_68/add_1:z:0^lstm_68/while/NoOp*
T0*'
_output_shapes
:���������l�
lstm_68/while/NoOpNoOp2^lstm_68/while/lstm_cell_68/BiasAdd/ReadVariableOp1^lstm_68/while/lstm_cell_68/MatMul/ReadVariableOp3^lstm_68/while/lstm_cell_68/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_68_while_identitylstm_68/while/Identity:output:0"=
lstm_68_while_identity_1!lstm_68/while/Identity_1:output:0"=
lstm_68_while_identity_2!lstm_68/while/Identity_2:output:0"=
lstm_68_while_identity_3!lstm_68/while/Identity_3:output:0"=
lstm_68_while_identity_4!lstm_68/while/Identity_4:output:0"=
lstm_68_while_identity_5!lstm_68/while/Identity_5:output:0"P
%lstm_68_while_lstm_68_strided_slice_1'lstm_68_while_lstm_68_strided_slice_1_0"z
:lstm_68_while_lstm_cell_68_biasadd_readvariableop_resource<lstm_68_while_lstm_cell_68_biasadd_readvariableop_resource_0"|
;lstm_68_while_lstm_cell_68_matmul_1_readvariableop_resource=lstm_68_while_lstm_cell_68_matmul_1_readvariableop_resource_0"x
9lstm_68_while_lstm_cell_68_matmul_readvariableop_resource;lstm_68_while_lstm_cell_68_matmul_readvariableop_resource_0"�
alstm_68_while_tensorarrayv2read_tensorlistgetitem_lstm_68_tensorarrayunstack_tensorlistfromtensorclstm_68_while_tensorarrayv2read_tensorlistgetitem_lstm_68_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������l:���������l: : : : : 2f
1lstm_68/while/lstm_cell_68/BiasAdd/ReadVariableOp1lstm_68/while/lstm_cell_68/BiasAdd/ReadVariableOp2d
0lstm_68/while/lstm_cell_68/MatMul/ReadVariableOp0lstm_68/while/lstm_cell_68/MatMul/ReadVariableOp2h
2lstm_68/while/lstm_cell_68/MatMul_1/ReadVariableOp2lstm_68/while/lstm_cell_68/MatMul_1/ReadVariableOp: 
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
:���������l:-)
'
_output_shapes
:���������l:

_output_shapes
: :

_output_shapes
: 
�
�
E__inference_fixed_adjacency_graph_convolution_69_layer_call_fn_341670
features
unknown:
	unknown_0:

	unknown_1:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallfeaturesunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *i
fdRb
`__inference_fixed_adjacency_graph_convolution_69_layer_call_and_return_conditional_losses_339586s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:���������

"
_user_specified_name
features
�
b
F__inference_permute_34_layer_call_and_return_conditional_losses_341754

inputs
identityg
transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
	transpose	Transposeinputstranspose/perm:output:0*
T0*J
_output_shapes8
6:4������������������������������������x
IdentityIdentitytranspose:y:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�8
�
C__inference_lstm_68_layer_call_and_return_conditional_losses_338896

inputs&
lstm_cell_68_338814:	�&
lstm_cell_68_338816:	l�"
lstm_cell_68_338818:	�
identity��$lstm_cell_68/StatefulPartitionedCall�while;
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
valueB:�
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
value	B :ls
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
:���������lR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :lw
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
:���������lc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
$lstm_cell_68/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_68_338814lstm_cell_68_338816lstm_cell_68_338818*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������l:���������l:���������l*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_68_layer_call_and_return_conditional_losses_338813n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����l   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_68_338814lstm_cell_68_338816lstm_cell_68_338818*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������l:���������l: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_338827*
condR
while_cond_338826*K
output_shapes:
8: : : : :���������l:���������l: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����l   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������l*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������l*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������l[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������lu
NoOpNoOp%^lstm_cell_68/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_68/StatefulPartitionedCall$lstm_cell_68/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
(__inference_lstm_68_layer_call_fn_341794
inputs_0
unknown:	�
	unknown_0:	l�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������l*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_68_layer_call_and_return_conditional_losses_339087|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������l`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
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
�
d
+__inference_dropout_34_layer_call_fn_343014

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
:���������h* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_34_layer_call_and_return_conditional_losses_340012o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������h`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������h22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������h
 
_user_specified_nameinputs
�
c
G__inference_reshape_103_layer_call_and_return_conditional_losses_339608

inputs
identity;
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Z
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
valueB :
���������Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:l
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:���������`
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
)__inference_model_34_layer_call_fn_340690

inputs
unknown:
	unknown_0:

	unknown_1:
	unknown_2:
	unknown_3:

	unknown_4:
	unknown_5:	�
	unknown_6:	l�
	unknown_7:	�
	unknown_8:	l�
	unknown_9:	h�

unknown_10:	�

unknown_11:h

unknown_12:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_model_34_layer_call_and_return_conditional_losses_340466o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�4
�
D__inference_model_34_layer_call_and_return_conditional_losses_340618
input_69=
+fixed_adjacency_graph_convolution_68_340580:=
+fixed_adjacency_graph_convolution_68_340582:
=
+fixed_adjacency_graph_convolution_68_340584:=
+fixed_adjacency_graph_convolution_69_340587:=
+fixed_adjacency_graph_convolution_69_340589:
=
+fixed_adjacency_graph_convolution_69_340591:!
lstm_68_340597:	�!
lstm_68_340599:	l�
lstm_68_340601:	�!
lstm_69_340604:	l�!
lstm_69_340606:	h�
lstm_69_340608:	�!
dense_34_340612:h
dense_34_340614:
identity�� dense_34/StatefulPartitionedCall�"dropout_34/StatefulPartitionedCall�<fixed_adjacency_graph_convolution_68/StatefulPartitionedCall�<fixed_adjacency_graph_convolution_69/StatefulPartitionedCall�lstm_68/StatefulPartitionedCall�lstm_69/StatefulPartitionedCallk
 tf.expand_dims_34/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
tf.expand_dims_34/ExpandDims
ExpandDimsinput_69)tf.expand_dims_34/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
reshape_102/PartitionedCallPartitionedCall%tf.expand_dims_34/ExpandDims:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_reshape_102_layer_call_and_return_conditional_losses_339468�
<fixed_adjacency_graph_convolution_68/StatefulPartitionedCallStatefulPartitionedCall$reshape_102/PartitionedCall:output:0+fixed_adjacency_graph_convolution_68_340580+fixed_adjacency_graph_convolution_68_340582+fixed_adjacency_graph_convolution_68_340584*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *i
fdRb
`__inference_fixed_adjacency_graph_convolution_68_layer_call_and_return_conditional_losses_339524�
<fixed_adjacency_graph_convolution_69/StatefulPartitionedCallStatefulPartitionedCallEfixed_adjacency_graph_convolution_68/StatefulPartitionedCall:output:0+fixed_adjacency_graph_convolution_69_340587+fixed_adjacency_graph_convolution_69_340589+fixed_adjacency_graph_convolution_69_340591*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *i
fdRb
`__inference_fixed_adjacency_graph_convolution_69_layer_call_and_return_conditional_losses_339586�
reshape_103/PartitionedCallPartitionedCallEfixed_adjacency_graph_convolution_69/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_reshape_103_layer_call_and_return_conditional_losses_339608�
permute_34/PartitionedCallPartitionedCall$reshape_103/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_permute_34_layer_call_and_return_conditional_losses_338743�
reshape_104/PartitionedCallPartitionedCall#permute_34/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_reshape_104_layer_call_and_return_conditional_losses_339624�
lstm_68/StatefulPartitionedCallStatefulPartitionedCall$reshape_104/PartitionedCall:output:0lstm_68_340597lstm_68_340599lstm_68_340601*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������l*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_68_layer_call_and_return_conditional_losses_340336�
lstm_69/StatefulPartitionedCallStatefulPartitionedCall(lstm_68/StatefulPartitionedCall:output:0lstm_69_340604lstm_69_340606lstm_69_340608*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������h*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_69_layer_call_and_return_conditional_losses_340171�
"dropout_34/StatefulPartitionedCallStatefulPartitionedCall(lstm_69/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������h* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_34_layer_call_and_return_conditional_losses_340012�
 dense_34/StatefulPartitionedCallStatefulPartitionedCall+dropout_34/StatefulPartitionedCall:output:0dense_34_340612dense_34_340614*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_34_layer_call_and_return_conditional_losses_339944x
IdentityIdentity)dense_34/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_34/StatefulPartitionedCall#^dropout_34/StatefulPartitionedCall=^fixed_adjacency_graph_convolution_68/StatefulPartitionedCall=^fixed_adjacency_graph_convolution_69/StatefulPartitionedCall ^lstm_68/StatefulPartitionedCall ^lstm_69/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : 2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall2H
"dropout_34/StatefulPartitionedCall"dropout_34/StatefulPartitionedCall2|
<fixed_adjacency_graph_convolution_68/StatefulPartitionedCall<fixed_adjacency_graph_convolution_68/StatefulPartitionedCall2|
<fixed_adjacency_graph_convolution_69/StatefulPartitionedCall<fixed_adjacency_graph_convolution_69/StatefulPartitionedCall2B
lstm_68/StatefulPartitionedCalllstm_68/StatefulPartitionedCall2B
lstm_69/StatefulPartitionedCalllstm_69/StatefulPartitionedCall:U Q
+
_output_shapes
:���������
"
_user_specified_name
input_69
�A
�

lstm_69_while_body_341020,
(lstm_69_while_lstm_69_while_loop_counter2
.lstm_69_while_lstm_69_while_maximum_iterations
lstm_69_while_placeholder
lstm_69_while_placeholder_1
lstm_69_while_placeholder_2
lstm_69_while_placeholder_3+
'lstm_69_while_lstm_69_strided_slice_1_0g
clstm_69_while_tensorarrayv2read_tensorlistgetitem_lstm_69_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_69_while_lstm_cell_69_matmul_readvariableop_resource_0:	l�P
=lstm_69_while_lstm_cell_69_matmul_1_readvariableop_resource_0:	h�K
<lstm_69_while_lstm_cell_69_biasadd_readvariableop_resource_0:	�
lstm_69_while_identity
lstm_69_while_identity_1
lstm_69_while_identity_2
lstm_69_while_identity_3
lstm_69_while_identity_4
lstm_69_while_identity_5)
%lstm_69_while_lstm_69_strided_slice_1e
alstm_69_while_tensorarrayv2read_tensorlistgetitem_lstm_69_tensorarrayunstack_tensorlistfromtensorL
9lstm_69_while_lstm_cell_69_matmul_readvariableop_resource:	l�N
;lstm_69_while_lstm_cell_69_matmul_1_readvariableop_resource:	h�I
:lstm_69_while_lstm_cell_69_biasadd_readvariableop_resource:	���1lstm_69/while/lstm_cell_69/BiasAdd/ReadVariableOp�0lstm_69/while/lstm_cell_69/MatMul/ReadVariableOp�2lstm_69/while/lstm_cell_69/MatMul_1/ReadVariableOp�
?lstm_69/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����l   �
1lstm_69/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_69_while_tensorarrayv2read_tensorlistgetitem_lstm_69_tensorarrayunstack_tensorlistfromtensor_0lstm_69_while_placeholderHlstm_69/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������l*
element_dtype0�
0lstm_69/while/lstm_cell_69/MatMul/ReadVariableOpReadVariableOp;lstm_69_while_lstm_cell_69_matmul_readvariableop_resource_0*
_output_shapes
:	l�*
dtype0�
!lstm_69/while/lstm_cell_69/MatMulMatMul8lstm_69/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_69/while/lstm_cell_69/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
2lstm_69/while/lstm_cell_69/MatMul_1/ReadVariableOpReadVariableOp=lstm_69_while_lstm_cell_69_matmul_1_readvariableop_resource_0*
_output_shapes
:	h�*
dtype0�
#lstm_69/while/lstm_cell_69/MatMul_1MatMullstm_69_while_placeholder_2:lstm_69/while/lstm_cell_69/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_69/while/lstm_cell_69/addAddV2+lstm_69/while/lstm_cell_69/MatMul:product:0-lstm_69/while/lstm_cell_69/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
1lstm_69/while/lstm_cell_69/BiasAdd/ReadVariableOpReadVariableOp<lstm_69_while_lstm_cell_69_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
"lstm_69/while/lstm_cell_69/BiasAddBiasAdd"lstm_69/while/lstm_cell_69/add:z:09lstm_69/while/lstm_cell_69/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������l
*lstm_69/while/lstm_cell_69/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
 lstm_69/while/lstm_cell_69/splitSplit3lstm_69/while/lstm_cell_69/split/split_dim:output:0+lstm_69/while/lstm_cell_69/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������h:���������h:���������h:���������h*
	num_split�
"lstm_69/while/lstm_cell_69/SigmoidSigmoid)lstm_69/while/lstm_cell_69/split:output:0*
T0*'
_output_shapes
:���������h�
$lstm_69/while/lstm_cell_69/Sigmoid_1Sigmoid)lstm_69/while/lstm_cell_69/split:output:1*
T0*'
_output_shapes
:���������h�
lstm_69/while/lstm_cell_69/mulMul(lstm_69/while/lstm_cell_69/Sigmoid_1:y:0lstm_69_while_placeholder_3*
T0*'
_output_shapes
:���������h�
lstm_69/while/lstm_cell_69/ReluRelu)lstm_69/while/lstm_cell_69/split:output:2*
T0*'
_output_shapes
:���������h�
 lstm_69/while/lstm_cell_69/mul_1Mul&lstm_69/while/lstm_cell_69/Sigmoid:y:0-lstm_69/while/lstm_cell_69/Relu:activations:0*
T0*'
_output_shapes
:���������h�
 lstm_69/while/lstm_cell_69/add_1AddV2"lstm_69/while/lstm_cell_69/mul:z:0$lstm_69/while/lstm_cell_69/mul_1:z:0*
T0*'
_output_shapes
:���������h�
$lstm_69/while/lstm_cell_69/Sigmoid_2Sigmoid)lstm_69/while/lstm_cell_69/split:output:3*
T0*'
_output_shapes
:���������h�
!lstm_69/while/lstm_cell_69/Relu_1Relu$lstm_69/while/lstm_cell_69/add_1:z:0*
T0*'
_output_shapes
:���������h�
 lstm_69/while/lstm_cell_69/mul_2Mul(lstm_69/while/lstm_cell_69/Sigmoid_2:y:0/lstm_69/while/lstm_cell_69/Relu_1:activations:0*
T0*'
_output_shapes
:���������h�
2lstm_69/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_69_while_placeholder_1lstm_69_while_placeholder$lstm_69/while/lstm_cell_69/mul_2:z:0*
_output_shapes
: *
element_dtype0:���U
lstm_69/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_69/while/addAddV2lstm_69_while_placeholderlstm_69/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_69/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_69/while/add_1AddV2(lstm_69_while_lstm_69_while_loop_counterlstm_69/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_69/while/IdentityIdentitylstm_69/while/add_1:z:0^lstm_69/while/NoOp*
T0*
_output_shapes
: �
lstm_69/while/Identity_1Identity.lstm_69_while_lstm_69_while_maximum_iterations^lstm_69/while/NoOp*
T0*
_output_shapes
: q
lstm_69/while/Identity_2Identitylstm_69/while/add:z:0^lstm_69/while/NoOp*
T0*
_output_shapes
: �
lstm_69/while/Identity_3IdentityBlstm_69/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_69/while/NoOp*
T0*
_output_shapes
: :����
lstm_69/while/Identity_4Identity$lstm_69/while/lstm_cell_69/mul_2:z:0^lstm_69/while/NoOp*
T0*'
_output_shapes
:���������h�
lstm_69/while/Identity_5Identity$lstm_69/while/lstm_cell_69/add_1:z:0^lstm_69/while/NoOp*
T0*'
_output_shapes
:���������h�
lstm_69/while/NoOpNoOp2^lstm_69/while/lstm_cell_69/BiasAdd/ReadVariableOp1^lstm_69/while/lstm_cell_69/MatMul/ReadVariableOp3^lstm_69/while/lstm_cell_69/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_69_while_identitylstm_69/while/Identity:output:0"=
lstm_69_while_identity_1!lstm_69/while/Identity_1:output:0"=
lstm_69_while_identity_2!lstm_69/while/Identity_2:output:0"=
lstm_69_while_identity_3!lstm_69/while/Identity_3:output:0"=
lstm_69_while_identity_4!lstm_69/while/Identity_4:output:0"=
lstm_69_while_identity_5!lstm_69/while/Identity_5:output:0"P
%lstm_69_while_lstm_69_strided_slice_1'lstm_69_while_lstm_69_strided_slice_1_0"z
:lstm_69_while_lstm_cell_69_biasadd_readvariableop_resource<lstm_69_while_lstm_cell_69_biasadd_readvariableop_resource_0"|
;lstm_69_while_lstm_cell_69_matmul_1_readvariableop_resource=lstm_69_while_lstm_cell_69_matmul_1_readvariableop_resource_0"x
9lstm_69_while_lstm_cell_69_matmul_readvariableop_resource;lstm_69_while_lstm_cell_69_matmul_readvariableop_resource_0"�
alstm_69_while_tensorarrayv2read_tensorlistgetitem_lstm_69_tensorarrayunstack_tensorlistfromtensorclstm_69_while_tensorarrayv2read_tensorlistgetitem_lstm_69_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������h:���������h: : : : : 2f
1lstm_69/while/lstm_cell_69/BiasAdd/ReadVariableOp1lstm_69/while/lstm_cell_69/BiasAdd/ReadVariableOp2d
0lstm_69/while/lstm_cell_69/MatMul/ReadVariableOp0lstm_69/while/lstm_cell_69/MatMul/ReadVariableOp2h
2lstm_69/while/lstm_cell_69/MatMul_1/ReadVariableOp2lstm_69/while/lstm_cell_69/MatMul_1/ReadVariableOp: 
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
:���������h:-)
'
_output_shapes
:���������h:

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_342017
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_342017___redundant_placeholder04
0while_while_cond_342017___redundant_placeholder14
0while_while_cond_342017___redundant_placeholder24
0while_while_cond_342017___redundant_placeholder3
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
@: : : : :���������l:���������l: ::::: 
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
:���������l:-)
'
_output_shapes
:���������l:

_output_shapes
: :

_output_shapes
:
�
�
"model_34_lstm_69_while_cond_338640>
:model_34_lstm_69_while_model_34_lstm_69_while_loop_counterD
@model_34_lstm_69_while_model_34_lstm_69_while_maximum_iterations&
"model_34_lstm_69_while_placeholder(
$model_34_lstm_69_while_placeholder_1(
$model_34_lstm_69_while_placeholder_2(
$model_34_lstm_69_while_placeholder_3@
<model_34_lstm_69_while_less_model_34_lstm_69_strided_slice_1V
Rmodel_34_lstm_69_while_model_34_lstm_69_while_cond_338640___redundant_placeholder0V
Rmodel_34_lstm_69_while_model_34_lstm_69_while_cond_338640___redundant_placeholder1V
Rmodel_34_lstm_69_while_model_34_lstm_69_while_cond_338640___redundant_placeholder2V
Rmodel_34_lstm_69_while_model_34_lstm_69_while_cond_338640___redundant_placeholder3#
model_34_lstm_69_while_identity
�
model_34/lstm_69/while/LessLess"model_34_lstm_69_while_placeholder<model_34_lstm_69_while_less_model_34_lstm_69_strided_slice_1*
T0*
_output_shapes
: m
model_34/lstm_69/while/IdentityIdentitymodel_34/lstm_69/while/Less:z:0*
T0
*
_output_shapes
: "K
model_34_lstm_69_while_identity(model_34/lstm_69/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������h:���������h: ::::: 
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
:���������h:-)
'
_output_shapes
:���������h:

_output_shapes
: :

_output_shapes
:
�
c
G__inference_reshape_103_layer_call_and_return_conditional_losses_341743

inputs
identity;
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Z
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
valueB :
���������Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:l
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:���������`
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_342919
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_342919___redundant_placeholder04
0while_while_cond_342919___redundant_placeholder14
0while_while_cond_342919___redundant_placeholder24
0while_while_cond_342919___redundant_placeholder3
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
@: : : : :���������h:���������h: ::::: 
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
:���������h:-)
'
_output_shapes
:���������h:

_output_shapes
: :

_output_shapes
:
�

e
F__inference_dropout_34_layer_call_and_return_conditional_losses_343031

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *B�?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������hC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������h*
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *p�f>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������ho
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������hi
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:���������hY
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:���������h"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������h:O K
'
_output_shapes
:���������h
 
_user_specified_nameinputs
�"
�
while_body_339368
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_69_339392_0:	l�.
while_lstm_cell_69_339394_0:	h�*
while_lstm_cell_69_339396_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_69_339392:	l�,
while_lstm_cell_69_339394:	h�(
while_lstm_cell_69_339396:	���*while/lstm_cell_69/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����l   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������l*
element_dtype0�
*while/lstm_cell_69/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_69_339392_0while_lstm_cell_69_339394_0while_lstm_cell_69_339396_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������h:���������h:���������h*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_69_layer_call_and_return_conditional_losses_339309�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_69/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :����
while/Identity_4Identity3while/lstm_cell_69/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������h�
while/Identity_5Identity3while/lstm_cell_69/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������hy

while/NoOpNoOp+^while/lstm_cell_69/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_69_339392while_lstm_cell_69_339392_0"8
while_lstm_cell_69_339394while_lstm_cell_69_339394_0"8
while_lstm_cell_69_339396while_lstm_cell_69_339396_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������h:���������h: : : : : 2X
*while/lstm_cell_69/StatefulPartitionedCall*while/lstm_cell_69/StatefulPartitionedCall: 
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
:���������h:-)
'
_output_shapes
:���������h:

_output_shapes
: :

_output_shapes
: 
�)
�
`__inference_fixed_adjacency_graph_convolution_69_layer_call_and_return_conditional_losses_341724
features1
shape_1_readvariableop_resource:1
shape_3_readvariableop_resource:
-
add_readvariableop_resource:
identity��add/ReadVariableOp�transpose_1/ReadVariableOp�transpose_3/ReadVariableOpc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          o
	transpose	Transposefeaturestranspose/perm:output:0*
T0*+
_output_shapes
:���������
B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:Q
unstackUnpackShape:output:0*
T0*
_output_shapes
: : : *	
numv
Shape_1/ReadVariableOpReadVariableOpshape_1_readvariableop_resource*
_output_shapes

:*
dtype0X
Shape_1Const*
_output_shapes
:*
dtype0*
valueB"      S
	unstack_1UnpackShape_1:output:0*
T0*
_output_shapes
: : *	
num^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   k
ReshapeReshapetranspose:y:0Reshape/shape:output:0*
T0*'
_output_shapes
:���������z
transpose_1/ReadVariableOpReadVariableOpshape_1_readvariableop_resource*
_output_shapes

:*
dtype0a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       �
transpose_1	Transpose"transpose_1/ReadVariableOp:value:0transpose_1/perm:output:0*
T0*
_output_shapes

:`
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   ����h
	Reshape_1Reshapetranspose_1:y:0Reshape_1/shape:output:0*
T0*
_output_shapes

:h
MatMulMatMulReshape:output:0Reshape_1:output:0*
T0*'
_output_shapes
:���������S
Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
S
Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
Reshape_2/shapePackunstack:output:0Reshape_2/shape/1:output:0Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:v
	Reshape_2ReshapeMatMul:product:0Reshape_2/shape:output:0*
T0*+
_output_shapes
:���������
e
transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
transpose_2	TransposeReshape_2:output:0transpose_2/perm:output:0*
T0*+
_output_shapes
:���������
F
Shape_2Shapetranspose_2:y:0*
T0*
_output_shapes
:U
	unstack_2UnpackShape_2:output:0*
T0*
_output_shapes
: : : *	
numv
Shape_3/ReadVariableOpReadVariableOpshape_3_readvariableop_resource*
_output_shapes

:
*
dtype0X
Shape_3Const*
_output_shapes
:*
dtype0*
valueB"
      S
	unstack_3UnpackShape_3:output:0*
T0*
_output_shapes
: : *	
num`
Reshape_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   q
	Reshape_3Reshapetranspose_2:y:0Reshape_3/shape:output:0*
T0*'
_output_shapes
:���������
z
transpose_3/ReadVariableOpReadVariableOpshape_3_readvariableop_resource*
_output_shapes

:
*
dtype0a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       �
transpose_3	Transpose"transpose_3/ReadVariableOp:value:0transpose_3/perm:output:0*
T0*
_output_shapes

:
`
Reshape_4/shapeConst*
_output_shapes
:*
dtype0*
valueB"
   ����h
	Reshape_4Reshapetranspose_3:y:0Reshape_4/shape:output:0*
T0*
_output_shapes

:
l
MatMul_1MatMulReshape_3:output:0Reshape_4:output:0*
T0*'
_output_shapes
:���������S
Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
value	B :S
Reshape_5/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
Reshape_5/shapePackunstack_2:output:0Reshape_5/shape/1:output:0Reshape_5/shape/2:output:0*
N*
T0*
_output_shapes
:x
	Reshape_5ReshapeMatMul_1:product:0Reshape_5/shape:output:0*
T0*+
_output_shapes
:���������n
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes

:*
dtype0r
addAddV2Reshape_5:output:0add/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������K
ReluReluadd:z:0*
T0*+
_output_shapes
:���������e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp^add/ReadVariableOp^transpose_1/ReadVariableOp^transpose_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������
: : : 2(
add/ReadVariableOpadd/ReadVariableOp28
transpose_1/ReadVariableOptranspose_1/ReadVariableOp28
transpose_3/ReadVariableOptranspose_3/ReadVariableOp:U Q
+
_output_shapes
:���������

"
_user_specified_name
features
�8
�
C__inference_lstm_68_layer_call_and_return_conditional_losses_339087

inputs&
lstm_cell_68_339005:	�&
lstm_cell_68_339007:	l�"
lstm_cell_68_339009:	�
identity��$lstm_cell_68/StatefulPartitionedCall�while;
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
valueB:�
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
value	B :ls
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
:���������lR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :lw
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
:���������lc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
$lstm_cell_68/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_68_339005lstm_cell_68_339007lstm_cell_68_339009*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������l:���������l:���������l*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_68_layer_call_and_return_conditional_losses_338959n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����l   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_68_339005lstm_cell_68_339007lstm_cell_68_339009*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������l:���������l: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_339018*
condR
while_cond_339017*K
output_shapes:
8: : : : :���������l:���������l: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����l   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������l*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������l*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������l[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������lu
NoOpNoOp%^lstm_cell_68/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_68/StatefulPartitionedCall$lstm_cell_68/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�8
�
C__inference_lstm_69_layer_call_and_return_conditional_losses_339246

inputs&
lstm_cell_69_339164:	l�&
lstm_cell_69_339166:	h�"
lstm_cell_69_339168:	�
identity��$lstm_cell_69/StatefulPartitionedCall�while;
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
valueB:�
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
value	B :hs
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
:���������hR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :hw
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
:���������hc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������lD
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����l   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������l*
shrink_axis_mask�
$lstm_cell_69/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_69_339164lstm_cell_69_339166lstm_cell_69_339168*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������h:���������h:���������h*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_69_layer_call_and_return_conditional_losses_339163n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����h   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_69_339164lstm_cell_69_339166lstm_cell_69_339168*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������h:���������h: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_339177*
condR
while_cond_339176*K
output_shapes:
8: : : : :���������h:���������h: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����h   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������h*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������h*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������h[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������hu
NoOpNoOp%^lstm_cell_69/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������l: : : 2L
$lstm_cell_69/StatefulPartitionedCall$lstm_cell_69/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������l
 
_user_specified_nameinputs
�
b
F__inference_permute_34_layer_call_and_return_conditional_losses_338743

inputs
identityg
transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
	transpose	Transposeinputstranspose/perm:output:0*
T0*J
_output_shapes8
6:4������������������������������������x
IdentityIdentitytranspose:y:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�J
�
C__inference_lstm_69_layer_call_and_return_conditional_losses_342575
inputs_0>
+lstm_cell_69_matmul_readvariableop_resource:	l�@
-lstm_cell_69_matmul_1_readvariableop_resource:	h�;
,lstm_cell_69_biasadd_readvariableop_resource:	�
identity��#lstm_cell_69/BiasAdd/ReadVariableOp�"lstm_cell_69/MatMul/ReadVariableOp�$lstm_cell_69/MatMul_1/ReadVariableOp�while=
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
valueB:�
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
value	B :hs
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
:���������hR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :hw
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
:���������hc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������lD
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����l   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������l*
shrink_axis_mask�
"lstm_cell_69/MatMul/ReadVariableOpReadVariableOp+lstm_cell_69_matmul_readvariableop_resource*
_output_shapes
:	l�*
dtype0�
lstm_cell_69/MatMulMatMulstrided_slice_2:output:0*lstm_cell_69/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$lstm_cell_69/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_69_matmul_1_readvariableop_resource*
_output_shapes
:	h�*
dtype0�
lstm_cell_69/MatMul_1MatMulzeros:output:0,lstm_cell_69/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_69/addAddV2lstm_cell_69/MatMul:product:0lstm_cell_69/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
#lstm_cell_69/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_69_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_69/BiasAddBiasAddlstm_cell_69/add:z:0+lstm_cell_69/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������^
lstm_cell_69/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_69/splitSplit%lstm_cell_69/split/split_dim:output:0lstm_cell_69/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������h:���������h:���������h:���������h*
	num_splitn
lstm_cell_69/SigmoidSigmoidlstm_cell_69/split:output:0*
T0*'
_output_shapes
:���������hp
lstm_cell_69/Sigmoid_1Sigmoidlstm_cell_69/split:output:1*
T0*'
_output_shapes
:���������hw
lstm_cell_69/mulMullstm_cell_69/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������hh
lstm_cell_69/ReluRelulstm_cell_69/split:output:2*
T0*'
_output_shapes
:���������h�
lstm_cell_69/mul_1Mullstm_cell_69/Sigmoid:y:0lstm_cell_69/Relu:activations:0*
T0*'
_output_shapes
:���������h{
lstm_cell_69/add_1AddV2lstm_cell_69/mul:z:0lstm_cell_69/mul_1:z:0*
T0*'
_output_shapes
:���������hp
lstm_cell_69/Sigmoid_2Sigmoidlstm_cell_69/split:output:3*
T0*'
_output_shapes
:���������he
lstm_cell_69/Relu_1Relulstm_cell_69/add_1:z:0*
T0*'
_output_shapes
:���������h�
lstm_cell_69/mul_2Mullstm_cell_69/Sigmoid_2:y:0!lstm_cell_69/Relu_1:activations:0*
T0*'
_output_shapes
:���������hn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����h   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_69_matmul_readvariableop_resource-lstm_cell_69_matmul_1_readvariableop_resource,lstm_cell_69_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������h:���������h: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_342491*
condR
while_cond_342490*K
output_shapes:
8: : : : :���������h:���������h: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����h   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������h*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������h*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������h[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������h�
NoOpNoOp$^lstm_cell_69/BiasAdd/ReadVariableOp#^lstm_cell_69/MatMul/ReadVariableOp%^lstm_cell_69/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������l: : : 2J
#lstm_cell_69/BiasAdd/ReadVariableOp#lstm_cell_69/BiasAdd/ReadVariableOp2H
"lstm_cell_69/MatMul/ReadVariableOp"lstm_cell_69/MatMul/ReadVariableOp2L
$lstm_cell_69/MatMul_1/ReadVariableOp$lstm_cell_69/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������l
"
_user_specified_name
inputs/0
�
�
while_cond_339017
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_339017___redundant_placeholder04
0while_while_cond_339017___redundant_placeholder14
0while_while_cond_339017___redundant_placeholder24
0while_while_cond_339017___redundant_placeholder3
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
@: : : : :���������l:���������l: ::::: 
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
:���������l:-)
'
_output_shapes
:���������l:

_output_shapes
: :

_output_shapes
:
�
H
,__inference_reshape_103_layer_call_fn_341729

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_reshape_103_layer_call_and_return_conditional_losses_339608h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
H__inference_lstm_cell_69_layer_call_and_return_conditional_losses_339163

inputs

states
states_11
matmul_readvariableop_resource:	l�3
 matmul_1_readvariableop_resource:	h�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	l�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	h�*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������h:���������h:���������h:���������h*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������hV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������hU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������hN
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������h_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������hT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������hV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������hK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������hc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������hX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������hZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������hZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������h�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������l:���������h:���������h: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������l
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������h
 
_user_specified_namestates:OK
'
_output_shapes
:���������h
 
_user_specified_namestates
�8
�
while_body_342634
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_69_matmul_readvariableop_resource_0:	l�H
5while_lstm_cell_69_matmul_1_readvariableop_resource_0:	h�C
4while_lstm_cell_69_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_69_matmul_readvariableop_resource:	l�F
3while_lstm_cell_69_matmul_1_readvariableop_resource:	h�A
2while_lstm_cell_69_biasadd_readvariableop_resource:	���)while/lstm_cell_69/BiasAdd/ReadVariableOp�(while/lstm_cell_69/MatMul/ReadVariableOp�*while/lstm_cell_69/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����l   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������l*
element_dtype0�
(while/lstm_cell_69/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_69_matmul_readvariableop_resource_0*
_output_shapes
:	l�*
dtype0�
while/lstm_cell_69/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_69/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_69/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_69_matmul_1_readvariableop_resource_0*
_output_shapes
:	h�*
dtype0�
while/lstm_cell_69/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_69/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_69/addAddV2#while/lstm_cell_69/MatMul:product:0%while/lstm_cell_69/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_69/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_69_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_69/BiasAddBiasAddwhile/lstm_cell_69/add:z:01while/lstm_cell_69/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
"while/lstm_cell_69/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_69/splitSplit+while/lstm_cell_69/split/split_dim:output:0#while/lstm_cell_69/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������h:���������h:���������h:���������h*
	num_splitz
while/lstm_cell_69/SigmoidSigmoid!while/lstm_cell_69/split:output:0*
T0*'
_output_shapes
:���������h|
while/lstm_cell_69/Sigmoid_1Sigmoid!while/lstm_cell_69/split:output:1*
T0*'
_output_shapes
:���������h�
while/lstm_cell_69/mulMul while/lstm_cell_69/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������ht
while/lstm_cell_69/ReluRelu!while/lstm_cell_69/split:output:2*
T0*'
_output_shapes
:���������h�
while/lstm_cell_69/mul_1Mulwhile/lstm_cell_69/Sigmoid:y:0%while/lstm_cell_69/Relu:activations:0*
T0*'
_output_shapes
:���������h�
while/lstm_cell_69/add_1AddV2while/lstm_cell_69/mul:z:0while/lstm_cell_69/mul_1:z:0*
T0*'
_output_shapes
:���������h|
while/lstm_cell_69/Sigmoid_2Sigmoid!while/lstm_cell_69/split:output:3*
T0*'
_output_shapes
:���������hq
while/lstm_cell_69/Relu_1Reluwhile/lstm_cell_69/add_1:z:0*
T0*'
_output_shapes
:���������h�
while/lstm_cell_69/mul_2Mul while/lstm_cell_69/Sigmoid_2:y:0'while/lstm_cell_69/Relu_1:activations:0*
T0*'
_output_shapes
:���������h�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_69/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :���y
while/Identity_4Identitywhile/lstm_cell_69/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������hy
while/Identity_5Identitywhile/lstm_cell_69/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������h�

while/NoOpNoOp*^while/lstm_cell_69/BiasAdd/ReadVariableOp)^while/lstm_cell_69/MatMul/ReadVariableOp+^while/lstm_cell_69/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_69_biasadd_readvariableop_resource4while_lstm_cell_69_biasadd_readvariableop_resource_0"l
3while_lstm_cell_69_matmul_1_readvariableop_resource5while_lstm_cell_69_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_69_matmul_readvariableop_resource3while_lstm_cell_69_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������h:���������h: : : : : 2V
)while/lstm_cell_69/BiasAdd/ReadVariableOp)while/lstm_cell_69/BiasAdd/ReadVariableOp2T
(while/lstm_cell_69/MatMul/ReadVariableOp(while/lstm_cell_69/MatMul/ReadVariableOp2X
*while/lstm_cell_69/MatMul_1/ReadVariableOp*while/lstm_cell_69/MatMul_1/ReadVariableOp: 
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
:���������h:-)
'
_output_shapes
:���������h:

_output_shapes
: :

_output_shapes
: 
�)
�
`__inference_fixed_adjacency_graph_convolution_68_layer_call_and_return_conditional_losses_339524
features1
shape_1_readvariableop_resource:1
shape_3_readvariableop_resource:
-
add_readvariableop_resource:
identity��add/ReadVariableOp�transpose_1/ReadVariableOp�transpose_3/ReadVariableOpc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          o
	transpose	Transposefeaturestranspose/perm:output:0*
T0*+
_output_shapes
:���������B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:Q
unstackUnpackShape:output:0*
T0*
_output_shapes
: : : *	
numv
Shape_1/ReadVariableOpReadVariableOpshape_1_readvariableop_resource*
_output_shapes

:*
dtype0X
Shape_1Const*
_output_shapes
:*
dtype0*
valueB"      S
	unstack_1UnpackShape_1:output:0*
T0*
_output_shapes
: : *	
num^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   k
ReshapeReshapetranspose:y:0Reshape/shape:output:0*
T0*'
_output_shapes
:���������z
transpose_1/ReadVariableOpReadVariableOpshape_1_readvariableop_resource*
_output_shapes

:*
dtype0a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       �
transpose_1	Transpose"transpose_1/ReadVariableOp:value:0transpose_1/perm:output:0*
T0*
_output_shapes

:`
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   ����h
	Reshape_1Reshapetranspose_1:y:0Reshape_1/shape:output:0*
T0*
_output_shapes

:h
MatMulMatMulReshape:output:0Reshape_1:output:0*
T0*'
_output_shapes
:���������S
Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B :S
Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
Reshape_2/shapePackunstack:output:0Reshape_2/shape/1:output:0Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:v
	Reshape_2ReshapeMatMul:product:0Reshape_2/shape:output:0*
T0*+
_output_shapes
:���������e
transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
transpose_2	TransposeReshape_2:output:0transpose_2/perm:output:0*
T0*+
_output_shapes
:���������F
Shape_2Shapetranspose_2:y:0*
T0*
_output_shapes
:U
	unstack_2UnpackShape_2:output:0*
T0*
_output_shapes
: : : *	
numv
Shape_3/ReadVariableOpReadVariableOpshape_3_readvariableop_resource*
_output_shapes

:
*
dtype0X
Shape_3Const*
_output_shapes
:*
dtype0*
valueB"   
   S
	unstack_3UnpackShape_3:output:0*
T0*
_output_shapes
: : *	
num`
Reshape_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   q
	Reshape_3Reshapetranspose_2:y:0Reshape_3/shape:output:0*
T0*'
_output_shapes
:���������z
transpose_3/ReadVariableOpReadVariableOpshape_3_readvariableop_resource*
_output_shapes

:
*
dtype0a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       �
transpose_3	Transpose"transpose_3/ReadVariableOp:value:0transpose_3/perm:output:0*
T0*
_output_shapes

:
`
Reshape_4/shapeConst*
_output_shapes
:*
dtype0*
valueB"   ����h
	Reshape_4Reshapetranspose_3:y:0Reshape_4/shape:output:0*
T0*
_output_shapes

:
l
MatMul_1MatMulReshape_3:output:0Reshape_4:output:0*
T0*'
_output_shapes
:���������
S
Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
value	B :S
Reshape_5/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
�
Reshape_5/shapePackunstack_2:output:0Reshape_5/shape/1:output:0Reshape_5/shape/2:output:0*
N*
T0*
_output_shapes
:x
	Reshape_5ReshapeMatMul_1:product:0Reshape_5/shape:output:0*
T0*+
_output_shapes
:���������
n
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes

:*
dtype0r
addAddV2Reshape_5:output:0add/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������
K
ReluReluadd:z:0*
T0*+
_output_shapes
:���������
e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:���������
�
NoOpNoOp^add/ReadVariableOp^transpose_1/ReadVariableOp^transpose_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2(
add/ReadVariableOpadd/ReadVariableOp28
transpose_1/ReadVariableOptranspose_1/ReadVariableOp28
transpose_3/ReadVariableOptranspose_3/ReadVariableOp:U Q
+
_output_shapes
:���������
"
_user_specified_name
features
�
�
while_cond_342160
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_342160___redundant_placeholder04
0while_while_cond_342160___redundant_placeholder14
0while_while_cond_342160___redundant_placeholder24
0while_while_cond_342160___redundant_placeholder3
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
@: : : : :���������l:���������l: ::::: 
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
:���������l:-)
'
_output_shapes
:���������l:

_output_shapes
: :

_output_shapes
:
�
H
,__inference_reshape_102_layer_call_fn_341581

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
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_reshape_102_layer_call_and_return_conditional_losses_339468d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
"model_34_lstm_68_while_cond_338501>
:model_34_lstm_68_while_model_34_lstm_68_while_loop_counterD
@model_34_lstm_68_while_model_34_lstm_68_while_maximum_iterations&
"model_34_lstm_68_while_placeholder(
$model_34_lstm_68_while_placeholder_1(
$model_34_lstm_68_while_placeholder_2(
$model_34_lstm_68_while_placeholder_3@
<model_34_lstm_68_while_less_model_34_lstm_68_strided_slice_1V
Rmodel_34_lstm_68_while_model_34_lstm_68_while_cond_338501___redundant_placeholder0V
Rmodel_34_lstm_68_while_model_34_lstm_68_while_cond_338501___redundant_placeholder1V
Rmodel_34_lstm_68_while_model_34_lstm_68_while_cond_338501___redundant_placeholder2V
Rmodel_34_lstm_68_while_model_34_lstm_68_while_cond_338501___redundant_placeholder3#
model_34_lstm_68_while_identity
�
model_34/lstm_68/while/LessLess"model_34_lstm_68_while_placeholder<model_34_lstm_68_while_less_model_34_lstm_68_strided_slice_1*
T0*
_output_shapes
: m
model_34/lstm_68/while/IdentityIdentitymodel_34/lstm_68/while/Less:z:0*
T0
*
_output_shapes
: "K
model_34_lstm_68_while_identity(model_34/lstm_68/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������l:���������l: ::::: 
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
:���������l:-)
'
_output_shapes
:���������l:

_output_shapes
: :

_output_shapes
:
�8
�
while_body_342777
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_69_matmul_readvariableop_resource_0:	l�H
5while_lstm_cell_69_matmul_1_readvariableop_resource_0:	h�C
4while_lstm_cell_69_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_69_matmul_readvariableop_resource:	l�F
3while_lstm_cell_69_matmul_1_readvariableop_resource:	h�A
2while_lstm_cell_69_biasadd_readvariableop_resource:	���)while/lstm_cell_69/BiasAdd/ReadVariableOp�(while/lstm_cell_69/MatMul/ReadVariableOp�*while/lstm_cell_69/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����l   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������l*
element_dtype0�
(while/lstm_cell_69/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_69_matmul_readvariableop_resource_0*
_output_shapes
:	l�*
dtype0�
while/lstm_cell_69/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_69/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_69/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_69_matmul_1_readvariableop_resource_0*
_output_shapes
:	h�*
dtype0�
while/lstm_cell_69/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_69/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_69/addAddV2#while/lstm_cell_69/MatMul:product:0%while/lstm_cell_69/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_69/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_69_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_69/BiasAddBiasAddwhile/lstm_cell_69/add:z:01while/lstm_cell_69/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
"while/lstm_cell_69/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_69/splitSplit+while/lstm_cell_69/split/split_dim:output:0#while/lstm_cell_69/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������h:���������h:���������h:���������h*
	num_splitz
while/lstm_cell_69/SigmoidSigmoid!while/lstm_cell_69/split:output:0*
T0*'
_output_shapes
:���������h|
while/lstm_cell_69/Sigmoid_1Sigmoid!while/lstm_cell_69/split:output:1*
T0*'
_output_shapes
:���������h�
while/lstm_cell_69/mulMul while/lstm_cell_69/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������ht
while/lstm_cell_69/ReluRelu!while/lstm_cell_69/split:output:2*
T0*'
_output_shapes
:���������h�
while/lstm_cell_69/mul_1Mulwhile/lstm_cell_69/Sigmoid:y:0%while/lstm_cell_69/Relu:activations:0*
T0*'
_output_shapes
:���������h�
while/lstm_cell_69/add_1AddV2while/lstm_cell_69/mul:z:0while/lstm_cell_69/mul_1:z:0*
T0*'
_output_shapes
:���������h|
while/lstm_cell_69/Sigmoid_2Sigmoid!while/lstm_cell_69/split:output:3*
T0*'
_output_shapes
:���������hq
while/lstm_cell_69/Relu_1Reluwhile/lstm_cell_69/add_1:z:0*
T0*'
_output_shapes
:���������h�
while/lstm_cell_69/mul_2Mul while/lstm_cell_69/Sigmoid_2:y:0'while/lstm_cell_69/Relu_1:activations:0*
T0*'
_output_shapes
:���������h�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_69/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :���y
while/Identity_4Identitywhile/lstm_cell_69/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������hy
while/Identity_5Identitywhile/lstm_cell_69/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������h�

while/NoOpNoOp*^while/lstm_cell_69/BiasAdd/ReadVariableOp)^while/lstm_cell_69/MatMul/ReadVariableOp+^while/lstm_cell_69/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_69_biasadd_readvariableop_resource4while_lstm_cell_69_biasadd_readvariableop_resource_0"l
3while_lstm_cell_69_matmul_1_readvariableop_resource5while_lstm_cell_69_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_69_matmul_readvariableop_resource3while_lstm_cell_69_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������h:���������h: : : : : 2V
)while/lstm_cell_69/BiasAdd/ReadVariableOp)while/lstm_cell_69/BiasAdd/ReadVariableOp2T
(while/lstm_cell_69/MatMul/ReadVariableOp(while/lstm_cell_69/MatMul/ReadVariableOp2X
*while/lstm_cell_69/MatMul_1/ReadVariableOp*while/lstm_cell_69/MatMul_1/ReadVariableOp: 
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
:���������h:-)
'
_output_shapes
:���������h:

_output_shapes
: :

_output_shapes
: 
��
�
D__inference_model_34_layer_call_and_return_conditional_losses_341112

inputsV
Dfixed_adjacency_graph_convolution_68_shape_1_readvariableop_resource:V
Dfixed_adjacency_graph_convolution_68_shape_3_readvariableop_resource:
R
@fixed_adjacency_graph_convolution_68_add_readvariableop_resource:V
Dfixed_adjacency_graph_convolution_69_shape_1_readvariableop_resource:V
Dfixed_adjacency_graph_convolution_69_shape_3_readvariableop_resource:
R
@fixed_adjacency_graph_convolution_69_add_readvariableop_resource:F
3lstm_68_lstm_cell_68_matmul_readvariableop_resource:	�H
5lstm_68_lstm_cell_68_matmul_1_readvariableop_resource:	l�C
4lstm_68_lstm_cell_68_biasadd_readvariableop_resource:	�F
3lstm_69_lstm_cell_69_matmul_readvariableop_resource:	l�H
5lstm_69_lstm_cell_69_matmul_1_readvariableop_resource:	h�C
4lstm_69_lstm_cell_69_biasadd_readvariableop_resource:	�9
'dense_34_matmul_readvariableop_resource:h6
(dense_34_biasadd_readvariableop_resource:
identity��dense_34/BiasAdd/ReadVariableOp�dense_34/MatMul/ReadVariableOp�7fixed_adjacency_graph_convolution_68/add/ReadVariableOp�?fixed_adjacency_graph_convolution_68/transpose_1/ReadVariableOp�?fixed_adjacency_graph_convolution_68/transpose_3/ReadVariableOp�7fixed_adjacency_graph_convolution_69/add/ReadVariableOp�?fixed_adjacency_graph_convolution_69/transpose_1/ReadVariableOp�?fixed_adjacency_graph_convolution_69/transpose_3/ReadVariableOp�+lstm_68/lstm_cell_68/BiasAdd/ReadVariableOp�*lstm_68/lstm_cell_68/MatMul/ReadVariableOp�,lstm_68/lstm_cell_68/MatMul_1/ReadVariableOp�lstm_68/while�+lstm_69/lstm_cell_69/BiasAdd/ReadVariableOp�*lstm_69/lstm_cell_69/MatMul/ReadVariableOp�,lstm_69/lstm_cell_69/MatMul_1/ReadVariableOp�lstm_69/whilek
 tf.expand_dims_34/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
tf.expand_dims_34/ExpandDims
ExpandDimsinputs)tf.expand_dims_34/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������f
reshape_102/ShapeShape%tf.expand_dims_34/ExpandDims:output:0*
T0*
_output_shapes
:i
reshape_102/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!reshape_102/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!reshape_102/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
reshape_102/strided_sliceStridedSlicereshape_102/Shape:output:0(reshape_102/strided_slice/stack:output:0*reshape_102/strided_slice/stack_1:output:0*reshape_102/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
reshape_102/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :]
reshape_102/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
reshape_102/Reshape/shapePack"reshape_102/strided_slice:output:0$reshape_102/Reshape/shape/1:output:0$reshape_102/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:�
reshape_102/ReshapeReshape%tf.expand_dims_34/ExpandDims:output:0"reshape_102/Reshape/shape:output:0*
T0*+
_output_shapes
:����������
3fixed_adjacency_graph_convolution_68/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
.fixed_adjacency_graph_convolution_68/transpose	Transposereshape_102/Reshape:output:0<fixed_adjacency_graph_convolution_68/transpose/perm:output:0*
T0*+
_output_shapes
:����������
*fixed_adjacency_graph_convolution_68/ShapeShape2fixed_adjacency_graph_convolution_68/transpose:y:0*
T0*
_output_shapes
:�
,fixed_adjacency_graph_convolution_68/unstackUnpack3fixed_adjacency_graph_convolution_68/Shape:output:0*
T0*
_output_shapes
: : : *	
num�
;fixed_adjacency_graph_convolution_68/Shape_1/ReadVariableOpReadVariableOpDfixed_adjacency_graph_convolution_68_shape_1_readvariableop_resource*
_output_shapes

:*
dtype0}
,fixed_adjacency_graph_convolution_68/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"      �
.fixed_adjacency_graph_convolution_68/unstack_1Unpack5fixed_adjacency_graph_convolution_68/Shape_1:output:0*
T0*
_output_shapes
: : *	
num�
2fixed_adjacency_graph_convolution_68/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
,fixed_adjacency_graph_convolution_68/ReshapeReshape2fixed_adjacency_graph_convolution_68/transpose:y:0;fixed_adjacency_graph_convolution_68/Reshape/shape:output:0*
T0*'
_output_shapes
:����������
?fixed_adjacency_graph_convolution_68/transpose_1/ReadVariableOpReadVariableOpDfixed_adjacency_graph_convolution_68_shape_1_readvariableop_resource*
_output_shapes

:*
dtype0�
5fixed_adjacency_graph_convolution_68/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       �
0fixed_adjacency_graph_convolution_68/transpose_1	TransposeGfixed_adjacency_graph_convolution_68/transpose_1/ReadVariableOp:value:0>fixed_adjacency_graph_convolution_68/transpose_1/perm:output:0*
T0*
_output_shapes

:�
4fixed_adjacency_graph_convolution_68/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   �����
.fixed_adjacency_graph_convolution_68/Reshape_1Reshape4fixed_adjacency_graph_convolution_68/transpose_1:y:0=fixed_adjacency_graph_convolution_68/Reshape_1/shape:output:0*
T0*
_output_shapes

:�
+fixed_adjacency_graph_convolution_68/MatMulMatMul5fixed_adjacency_graph_convolution_68/Reshape:output:07fixed_adjacency_graph_convolution_68/Reshape_1:output:0*
T0*'
_output_shapes
:���������x
6fixed_adjacency_graph_convolution_68/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B :x
6fixed_adjacency_graph_convolution_68/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
4fixed_adjacency_graph_convolution_68/Reshape_2/shapePack5fixed_adjacency_graph_convolution_68/unstack:output:0?fixed_adjacency_graph_convolution_68/Reshape_2/shape/1:output:0?fixed_adjacency_graph_convolution_68/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:�
.fixed_adjacency_graph_convolution_68/Reshape_2Reshape5fixed_adjacency_graph_convolution_68/MatMul:product:0=fixed_adjacency_graph_convolution_68/Reshape_2/shape:output:0*
T0*+
_output_shapes
:����������
5fixed_adjacency_graph_convolution_68/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
0fixed_adjacency_graph_convolution_68/transpose_2	Transpose7fixed_adjacency_graph_convolution_68/Reshape_2:output:0>fixed_adjacency_graph_convolution_68/transpose_2/perm:output:0*
T0*+
_output_shapes
:����������
,fixed_adjacency_graph_convolution_68/Shape_2Shape4fixed_adjacency_graph_convolution_68/transpose_2:y:0*
T0*
_output_shapes
:�
.fixed_adjacency_graph_convolution_68/unstack_2Unpack5fixed_adjacency_graph_convolution_68/Shape_2:output:0*
T0*
_output_shapes
: : : *	
num�
;fixed_adjacency_graph_convolution_68/Shape_3/ReadVariableOpReadVariableOpDfixed_adjacency_graph_convolution_68_shape_3_readvariableop_resource*
_output_shapes

:
*
dtype0}
,fixed_adjacency_graph_convolution_68/Shape_3Const*
_output_shapes
:*
dtype0*
valueB"   
   �
.fixed_adjacency_graph_convolution_68/unstack_3Unpack5fixed_adjacency_graph_convolution_68/Shape_3:output:0*
T0*
_output_shapes
: : *	
num�
4fixed_adjacency_graph_convolution_68/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
.fixed_adjacency_graph_convolution_68/Reshape_3Reshape4fixed_adjacency_graph_convolution_68/transpose_2:y:0=fixed_adjacency_graph_convolution_68/Reshape_3/shape:output:0*
T0*'
_output_shapes
:����������
?fixed_adjacency_graph_convolution_68/transpose_3/ReadVariableOpReadVariableOpDfixed_adjacency_graph_convolution_68_shape_3_readvariableop_resource*
_output_shapes

:
*
dtype0�
5fixed_adjacency_graph_convolution_68/transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       �
0fixed_adjacency_graph_convolution_68/transpose_3	TransposeGfixed_adjacency_graph_convolution_68/transpose_3/ReadVariableOp:value:0>fixed_adjacency_graph_convolution_68/transpose_3/perm:output:0*
T0*
_output_shapes

:
�
4fixed_adjacency_graph_convolution_68/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*
valueB"   �����
.fixed_adjacency_graph_convolution_68/Reshape_4Reshape4fixed_adjacency_graph_convolution_68/transpose_3:y:0=fixed_adjacency_graph_convolution_68/Reshape_4/shape:output:0*
T0*
_output_shapes

:
�
-fixed_adjacency_graph_convolution_68/MatMul_1MatMul7fixed_adjacency_graph_convolution_68/Reshape_3:output:07fixed_adjacency_graph_convolution_68/Reshape_4:output:0*
T0*'
_output_shapes
:���������
x
6fixed_adjacency_graph_convolution_68/Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
value	B :x
6fixed_adjacency_graph_convolution_68/Reshape_5/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
�
4fixed_adjacency_graph_convolution_68/Reshape_5/shapePack7fixed_adjacency_graph_convolution_68/unstack_2:output:0?fixed_adjacency_graph_convolution_68/Reshape_5/shape/1:output:0?fixed_adjacency_graph_convolution_68/Reshape_5/shape/2:output:0*
N*
T0*
_output_shapes
:�
.fixed_adjacency_graph_convolution_68/Reshape_5Reshape7fixed_adjacency_graph_convolution_68/MatMul_1:product:0=fixed_adjacency_graph_convolution_68/Reshape_5/shape:output:0*
T0*+
_output_shapes
:���������
�
7fixed_adjacency_graph_convolution_68/add/ReadVariableOpReadVariableOp@fixed_adjacency_graph_convolution_68_add_readvariableop_resource*
_output_shapes

:*
dtype0�
(fixed_adjacency_graph_convolution_68/addAddV27fixed_adjacency_graph_convolution_68/Reshape_5:output:0?fixed_adjacency_graph_convolution_68/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������
�
)fixed_adjacency_graph_convolution_68/ReluRelu,fixed_adjacency_graph_convolution_68/add:z:0*
T0*+
_output_shapes
:���������
�
3fixed_adjacency_graph_convolution_69/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
.fixed_adjacency_graph_convolution_69/transpose	Transpose7fixed_adjacency_graph_convolution_68/Relu:activations:0<fixed_adjacency_graph_convolution_69/transpose/perm:output:0*
T0*+
_output_shapes
:���������
�
*fixed_adjacency_graph_convolution_69/ShapeShape2fixed_adjacency_graph_convolution_69/transpose:y:0*
T0*
_output_shapes
:�
,fixed_adjacency_graph_convolution_69/unstackUnpack3fixed_adjacency_graph_convolution_69/Shape:output:0*
T0*
_output_shapes
: : : *	
num�
;fixed_adjacency_graph_convolution_69/Shape_1/ReadVariableOpReadVariableOpDfixed_adjacency_graph_convolution_69_shape_1_readvariableop_resource*
_output_shapes

:*
dtype0}
,fixed_adjacency_graph_convolution_69/Shape_1Const*
_output_shapes
:*
dtype0*
valueB"      �
.fixed_adjacency_graph_convolution_69/unstack_1Unpack5fixed_adjacency_graph_convolution_69/Shape_1:output:0*
T0*
_output_shapes
: : *	
num�
2fixed_adjacency_graph_convolution_69/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
,fixed_adjacency_graph_convolution_69/ReshapeReshape2fixed_adjacency_graph_convolution_69/transpose:y:0;fixed_adjacency_graph_convolution_69/Reshape/shape:output:0*
T0*'
_output_shapes
:����������
?fixed_adjacency_graph_convolution_69/transpose_1/ReadVariableOpReadVariableOpDfixed_adjacency_graph_convolution_69_shape_1_readvariableop_resource*
_output_shapes

:*
dtype0�
5fixed_adjacency_graph_convolution_69/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       �
0fixed_adjacency_graph_convolution_69/transpose_1	TransposeGfixed_adjacency_graph_convolution_69/transpose_1/ReadVariableOp:value:0>fixed_adjacency_graph_convolution_69/transpose_1/perm:output:0*
T0*
_output_shapes

:�
4fixed_adjacency_graph_convolution_69/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   �����
.fixed_adjacency_graph_convolution_69/Reshape_1Reshape4fixed_adjacency_graph_convolution_69/transpose_1:y:0=fixed_adjacency_graph_convolution_69/Reshape_1/shape:output:0*
T0*
_output_shapes

:�
+fixed_adjacency_graph_convolution_69/MatMulMatMul5fixed_adjacency_graph_convolution_69/Reshape:output:07fixed_adjacency_graph_convolution_69/Reshape_1:output:0*
T0*'
_output_shapes
:���������x
6fixed_adjacency_graph_convolution_69/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
x
6fixed_adjacency_graph_convolution_69/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
4fixed_adjacency_graph_convolution_69/Reshape_2/shapePack5fixed_adjacency_graph_convolution_69/unstack:output:0?fixed_adjacency_graph_convolution_69/Reshape_2/shape/1:output:0?fixed_adjacency_graph_convolution_69/Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:�
.fixed_adjacency_graph_convolution_69/Reshape_2Reshape5fixed_adjacency_graph_convolution_69/MatMul:product:0=fixed_adjacency_graph_convolution_69/Reshape_2/shape:output:0*
T0*+
_output_shapes
:���������
�
5fixed_adjacency_graph_convolution_69/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
0fixed_adjacency_graph_convolution_69/transpose_2	Transpose7fixed_adjacency_graph_convolution_69/Reshape_2:output:0>fixed_adjacency_graph_convolution_69/transpose_2/perm:output:0*
T0*+
_output_shapes
:���������
�
,fixed_adjacency_graph_convolution_69/Shape_2Shape4fixed_adjacency_graph_convolution_69/transpose_2:y:0*
T0*
_output_shapes
:�
.fixed_adjacency_graph_convolution_69/unstack_2Unpack5fixed_adjacency_graph_convolution_69/Shape_2:output:0*
T0*
_output_shapes
: : : *	
num�
;fixed_adjacency_graph_convolution_69/Shape_3/ReadVariableOpReadVariableOpDfixed_adjacency_graph_convolution_69_shape_3_readvariableop_resource*
_output_shapes

:
*
dtype0}
,fixed_adjacency_graph_convolution_69/Shape_3Const*
_output_shapes
:*
dtype0*
valueB"
      �
.fixed_adjacency_graph_convolution_69/unstack_3Unpack5fixed_adjacency_graph_convolution_69/Shape_3:output:0*
T0*
_output_shapes
: : *	
num�
4fixed_adjacency_graph_convolution_69/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   �
.fixed_adjacency_graph_convolution_69/Reshape_3Reshape4fixed_adjacency_graph_convolution_69/transpose_2:y:0=fixed_adjacency_graph_convolution_69/Reshape_3/shape:output:0*
T0*'
_output_shapes
:���������
�
?fixed_adjacency_graph_convolution_69/transpose_3/ReadVariableOpReadVariableOpDfixed_adjacency_graph_convolution_69_shape_3_readvariableop_resource*
_output_shapes

:
*
dtype0�
5fixed_adjacency_graph_convolution_69/transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       �
0fixed_adjacency_graph_convolution_69/transpose_3	TransposeGfixed_adjacency_graph_convolution_69/transpose_3/ReadVariableOp:value:0>fixed_adjacency_graph_convolution_69/transpose_3/perm:output:0*
T0*
_output_shapes

:
�
4fixed_adjacency_graph_convolution_69/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*
valueB"
   �����
.fixed_adjacency_graph_convolution_69/Reshape_4Reshape4fixed_adjacency_graph_convolution_69/transpose_3:y:0=fixed_adjacency_graph_convolution_69/Reshape_4/shape:output:0*
T0*
_output_shapes

:
�
-fixed_adjacency_graph_convolution_69/MatMul_1MatMul7fixed_adjacency_graph_convolution_69/Reshape_3:output:07fixed_adjacency_graph_convolution_69/Reshape_4:output:0*
T0*'
_output_shapes
:���������x
6fixed_adjacency_graph_convolution_69/Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
value	B :x
6fixed_adjacency_graph_convolution_69/Reshape_5/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
4fixed_adjacency_graph_convolution_69/Reshape_5/shapePack7fixed_adjacency_graph_convolution_69/unstack_2:output:0?fixed_adjacency_graph_convolution_69/Reshape_5/shape/1:output:0?fixed_adjacency_graph_convolution_69/Reshape_5/shape/2:output:0*
N*
T0*
_output_shapes
:�
.fixed_adjacency_graph_convolution_69/Reshape_5Reshape7fixed_adjacency_graph_convolution_69/MatMul_1:product:0=fixed_adjacency_graph_convolution_69/Reshape_5/shape:output:0*
T0*+
_output_shapes
:����������
7fixed_adjacency_graph_convolution_69/add/ReadVariableOpReadVariableOp@fixed_adjacency_graph_convolution_69_add_readvariableop_resource*
_output_shapes

:*
dtype0�
(fixed_adjacency_graph_convolution_69/addAddV27fixed_adjacency_graph_convolution_69/Reshape_5:output:0?fixed_adjacency_graph_convolution_69/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:����������
)fixed_adjacency_graph_convolution_69/ReluRelu,fixed_adjacency_graph_convolution_69/add:z:0*
T0*+
_output_shapes
:���������x
reshape_103/ShapeShape7fixed_adjacency_graph_convolution_69/Relu:activations:0*
T0*
_output_shapes
:i
reshape_103/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!reshape_103/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!reshape_103/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
reshape_103/strided_sliceStridedSlicereshape_103/Shape:output:0(reshape_103/strided_slice/stack:output:0*reshape_103/strided_slice/stack_1:output:0*reshape_103/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
reshape_103/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :f
reshape_103/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
valueB :
���������]
reshape_103/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
reshape_103/Reshape/shapePack"reshape_103/strided_slice:output:0$reshape_103/Reshape/shape/1:output:0$reshape_103/Reshape/shape/2:output:0$reshape_103/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
reshape_103/ReshapeReshape7fixed_adjacency_graph_convolution_69/Relu:activations:0"reshape_103/Reshape/shape:output:0*
T0*/
_output_shapes
:���������r
permute_34/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
permute_34/transpose	Transposereshape_103/Reshape:output:0"permute_34/transpose/perm:output:0*
T0*/
_output_shapes
:���������Y
reshape_104/ShapeShapepermute_34/transpose:y:0*
T0*
_output_shapes
:i
reshape_104/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!reshape_104/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!reshape_104/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
reshape_104/strided_sliceStridedSlicereshape_104/Shape:output:0(reshape_104/strided_slice/stack:output:0*reshape_104/strided_slice/stack_1:output:0*reshape_104/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
reshape_104/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������]
reshape_104/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
reshape_104/Reshape/shapePack"reshape_104/strided_slice:output:0$reshape_104/Reshape/shape/1:output:0$reshape_104/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:�
reshape_104/ReshapeReshapepermute_34/transpose:y:0"reshape_104/Reshape/shape:output:0*
T0*+
_output_shapes
:���������Y
lstm_68/ShapeShapereshape_104/Reshape:output:0*
T0*
_output_shapes
:e
lstm_68/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_68/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_68/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_68/strided_sliceStridedSlicelstm_68/Shape:output:0$lstm_68/strided_slice/stack:output:0&lstm_68/strided_slice/stack_1:output:0&lstm_68/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_68/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :l�
lstm_68/zeros/packedPacklstm_68/strided_slice:output:0lstm_68/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_68/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_68/zerosFilllstm_68/zeros/packed:output:0lstm_68/zeros/Const:output:0*
T0*'
_output_shapes
:���������lZ
lstm_68/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :l�
lstm_68/zeros_1/packedPacklstm_68/strided_slice:output:0!lstm_68/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_68/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_68/zeros_1Filllstm_68/zeros_1/packed:output:0lstm_68/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������lk
lstm_68/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_68/transpose	Transposereshape_104/Reshape:output:0lstm_68/transpose/perm:output:0*
T0*+
_output_shapes
:���������T
lstm_68/Shape_1Shapelstm_68/transpose:y:0*
T0*
_output_shapes
:g
lstm_68/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_68/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_68/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_68/strided_slice_1StridedSlicelstm_68/Shape_1:output:0&lstm_68/strided_slice_1/stack:output:0(lstm_68/strided_slice_1/stack_1:output:0(lstm_68/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_68/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_68/TensorArrayV2TensorListReserve,lstm_68/TensorArrayV2/element_shape:output:0 lstm_68/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
=lstm_68/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
/lstm_68/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_68/transpose:y:0Flstm_68/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���g
lstm_68/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_68/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_68/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_68/strided_slice_2StridedSlicelstm_68/transpose:y:0&lstm_68/strided_slice_2/stack:output:0(lstm_68/strided_slice_2/stack_1:output:0(lstm_68/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
*lstm_68/lstm_cell_68/MatMul/ReadVariableOpReadVariableOp3lstm_68_lstm_cell_68_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_68/lstm_cell_68/MatMulMatMul lstm_68/strided_slice_2:output:02lstm_68/lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
,lstm_68/lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp5lstm_68_lstm_cell_68_matmul_1_readvariableop_resource*
_output_shapes
:	l�*
dtype0�
lstm_68/lstm_cell_68/MatMul_1MatMullstm_68/zeros:output:04lstm_68/lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_68/lstm_cell_68/addAddV2%lstm_68/lstm_cell_68/MatMul:product:0'lstm_68/lstm_cell_68/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
+lstm_68/lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp4lstm_68_lstm_cell_68_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_68/lstm_cell_68/BiasAddBiasAddlstm_68/lstm_cell_68/add:z:03lstm_68/lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������f
$lstm_68/lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_68/lstm_cell_68/splitSplit-lstm_68/lstm_cell_68/split/split_dim:output:0%lstm_68/lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������l:���������l:���������l:���������l*
	num_split~
lstm_68/lstm_cell_68/SigmoidSigmoid#lstm_68/lstm_cell_68/split:output:0*
T0*'
_output_shapes
:���������l�
lstm_68/lstm_cell_68/Sigmoid_1Sigmoid#lstm_68/lstm_cell_68/split:output:1*
T0*'
_output_shapes
:���������l�
lstm_68/lstm_cell_68/mulMul"lstm_68/lstm_cell_68/Sigmoid_1:y:0lstm_68/zeros_1:output:0*
T0*'
_output_shapes
:���������lx
lstm_68/lstm_cell_68/ReluRelu#lstm_68/lstm_cell_68/split:output:2*
T0*'
_output_shapes
:���������l�
lstm_68/lstm_cell_68/mul_1Mul lstm_68/lstm_cell_68/Sigmoid:y:0'lstm_68/lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:���������l�
lstm_68/lstm_cell_68/add_1AddV2lstm_68/lstm_cell_68/mul:z:0lstm_68/lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:���������l�
lstm_68/lstm_cell_68/Sigmoid_2Sigmoid#lstm_68/lstm_cell_68/split:output:3*
T0*'
_output_shapes
:���������lu
lstm_68/lstm_cell_68/Relu_1Relulstm_68/lstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:���������l�
lstm_68/lstm_cell_68/mul_2Mul"lstm_68/lstm_cell_68/Sigmoid_2:y:0)lstm_68/lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:���������lv
%lstm_68/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����l   �
lstm_68/TensorArrayV2_1TensorListReserve.lstm_68/TensorArrayV2_1/element_shape:output:0 lstm_68/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���N
lstm_68/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_68/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������\
lstm_68/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_68/whileWhile#lstm_68/while/loop_counter:output:0)lstm_68/while/maximum_iterations:output:0lstm_68/time:output:0 lstm_68/TensorArrayV2_1:handle:0lstm_68/zeros:output:0lstm_68/zeros_1:output:0 lstm_68/strided_slice_1:output:0?lstm_68/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_68_lstm_cell_68_matmul_readvariableop_resource5lstm_68_lstm_cell_68_matmul_1_readvariableop_resource4lstm_68_lstm_cell_68_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������l:���������l: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_68_while_body_340881*%
condR
lstm_68_while_cond_340880*K
output_shapes:
8: : : : :���������l:���������l: : : : : *
parallel_iterations �
8lstm_68/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����l   �
*lstm_68/TensorArrayV2Stack/TensorListStackTensorListStacklstm_68/while:output:3Alstm_68/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������l*
element_dtype0p
lstm_68/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������i
lstm_68/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_68/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_68/strided_slice_3StridedSlice3lstm_68/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_68/strided_slice_3/stack:output:0(lstm_68/strided_slice_3/stack_1:output:0(lstm_68/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������l*
shrink_axis_maskm
lstm_68/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_68/transpose_1	Transpose3lstm_68/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_68/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������lc
lstm_68/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    T
lstm_69/ShapeShapelstm_68/transpose_1:y:0*
T0*
_output_shapes
:e
lstm_69/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_69/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_69/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_69/strided_sliceStridedSlicelstm_69/Shape:output:0$lstm_69/strided_slice/stack:output:0&lstm_69/strided_slice/stack_1:output:0&lstm_69/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_69/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :h�
lstm_69/zeros/packedPacklstm_69/strided_slice:output:0lstm_69/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_69/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_69/zerosFilllstm_69/zeros/packed:output:0lstm_69/zeros/Const:output:0*
T0*'
_output_shapes
:���������hZ
lstm_69/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :h�
lstm_69/zeros_1/packedPacklstm_69/strided_slice:output:0!lstm_69/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_69/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_69/zeros_1Filllstm_69/zeros_1/packed:output:0lstm_69/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������hk
lstm_69/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_69/transpose	Transposelstm_68/transpose_1:y:0lstm_69/transpose/perm:output:0*
T0*+
_output_shapes
:���������lT
lstm_69/Shape_1Shapelstm_69/transpose:y:0*
T0*
_output_shapes
:g
lstm_69/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_69/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_69/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_69/strided_slice_1StridedSlicelstm_69/Shape_1:output:0&lstm_69/strided_slice_1/stack:output:0(lstm_69/strided_slice_1/stack_1:output:0(lstm_69/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_69/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_69/TensorArrayV2TensorListReserve,lstm_69/TensorArrayV2/element_shape:output:0 lstm_69/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
=lstm_69/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����l   �
/lstm_69/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_69/transpose:y:0Flstm_69/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���g
lstm_69/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_69/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_69/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_69/strided_slice_2StridedSlicelstm_69/transpose:y:0&lstm_69/strided_slice_2/stack:output:0(lstm_69/strided_slice_2/stack_1:output:0(lstm_69/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������l*
shrink_axis_mask�
*lstm_69/lstm_cell_69/MatMul/ReadVariableOpReadVariableOp3lstm_69_lstm_cell_69_matmul_readvariableop_resource*
_output_shapes
:	l�*
dtype0�
lstm_69/lstm_cell_69/MatMulMatMul lstm_69/strided_slice_2:output:02lstm_69/lstm_cell_69/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
,lstm_69/lstm_cell_69/MatMul_1/ReadVariableOpReadVariableOp5lstm_69_lstm_cell_69_matmul_1_readvariableop_resource*
_output_shapes
:	h�*
dtype0�
lstm_69/lstm_cell_69/MatMul_1MatMullstm_69/zeros:output:04lstm_69/lstm_cell_69/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_69/lstm_cell_69/addAddV2%lstm_69/lstm_cell_69/MatMul:product:0'lstm_69/lstm_cell_69/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
+lstm_69/lstm_cell_69/BiasAdd/ReadVariableOpReadVariableOp4lstm_69_lstm_cell_69_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_69/lstm_cell_69/BiasAddBiasAddlstm_69/lstm_cell_69/add:z:03lstm_69/lstm_cell_69/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������f
$lstm_69/lstm_cell_69/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_69/lstm_cell_69/splitSplit-lstm_69/lstm_cell_69/split/split_dim:output:0%lstm_69/lstm_cell_69/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������h:���������h:���������h:���������h*
	num_split~
lstm_69/lstm_cell_69/SigmoidSigmoid#lstm_69/lstm_cell_69/split:output:0*
T0*'
_output_shapes
:���������h�
lstm_69/lstm_cell_69/Sigmoid_1Sigmoid#lstm_69/lstm_cell_69/split:output:1*
T0*'
_output_shapes
:���������h�
lstm_69/lstm_cell_69/mulMul"lstm_69/lstm_cell_69/Sigmoid_1:y:0lstm_69/zeros_1:output:0*
T0*'
_output_shapes
:���������hx
lstm_69/lstm_cell_69/ReluRelu#lstm_69/lstm_cell_69/split:output:2*
T0*'
_output_shapes
:���������h�
lstm_69/lstm_cell_69/mul_1Mul lstm_69/lstm_cell_69/Sigmoid:y:0'lstm_69/lstm_cell_69/Relu:activations:0*
T0*'
_output_shapes
:���������h�
lstm_69/lstm_cell_69/add_1AddV2lstm_69/lstm_cell_69/mul:z:0lstm_69/lstm_cell_69/mul_1:z:0*
T0*'
_output_shapes
:���������h�
lstm_69/lstm_cell_69/Sigmoid_2Sigmoid#lstm_69/lstm_cell_69/split:output:3*
T0*'
_output_shapes
:���������hu
lstm_69/lstm_cell_69/Relu_1Relulstm_69/lstm_cell_69/add_1:z:0*
T0*'
_output_shapes
:���������h�
lstm_69/lstm_cell_69/mul_2Mul"lstm_69/lstm_cell_69/Sigmoid_2:y:0)lstm_69/lstm_cell_69/Relu_1:activations:0*
T0*'
_output_shapes
:���������hv
%lstm_69/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����h   �
lstm_69/TensorArrayV2_1TensorListReserve.lstm_69/TensorArrayV2_1/element_shape:output:0 lstm_69/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���N
lstm_69/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_69/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������\
lstm_69/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_69/whileWhile#lstm_69/while/loop_counter:output:0)lstm_69/while/maximum_iterations:output:0lstm_69/time:output:0 lstm_69/TensorArrayV2_1:handle:0lstm_69/zeros:output:0lstm_69/zeros_1:output:0 lstm_69/strided_slice_1:output:0?lstm_69/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_69_lstm_cell_69_matmul_readvariableop_resource5lstm_69_lstm_cell_69_matmul_1_readvariableop_resource4lstm_69_lstm_cell_69_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������h:���������h: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_69_while_body_341020*%
condR
lstm_69_while_cond_341019*K
output_shapes:
8: : : : :���������h:���������h: : : : : *
parallel_iterations �
8lstm_69/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����h   �
*lstm_69/TensorArrayV2Stack/TensorListStackTensorListStacklstm_69/while:output:3Alstm_69/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������h*
element_dtype0p
lstm_69/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������i
lstm_69/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_69/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_69/strided_slice_3StridedSlice3lstm_69/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_69/strided_slice_3/stack:output:0(lstm_69/strided_slice_3/stack_1:output:0(lstm_69/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������h*
shrink_axis_maskm
lstm_69/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_69/transpose_1	Transpose3lstm_69/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_69/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������hc
lstm_69/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    s
dropout_34/IdentityIdentity lstm_69/strided_slice_3:output:0*
T0*'
_output_shapes
:���������h�
dense_34/MatMul/ReadVariableOpReadVariableOp'dense_34_matmul_readvariableop_resource*
_output_shapes

:h*
dtype0�
dense_34/MatMulMatMuldropout_34/Identity:output:0&dense_34/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_34/BiasAdd/ReadVariableOpReadVariableOp(dense_34_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_34/BiasAddBiasAdddense_34/MatMul:product:0'dense_34/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h
dense_34/SigmoidSigmoiddense_34/BiasAdd:output:0*
T0*'
_output_shapes
:���������c
IdentityIdentitydense_34/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_34/BiasAdd/ReadVariableOp^dense_34/MatMul/ReadVariableOp8^fixed_adjacency_graph_convolution_68/add/ReadVariableOp@^fixed_adjacency_graph_convolution_68/transpose_1/ReadVariableOp@^fixed_adjacency_graph_convolution_68/transpose_3/ReadVariableOp8^fixed_adjacency_graph_convolution_69/add/ReadVariableOp@^fixed_adjacency_graph_convolution_69/transpose_1/ReadVariableOp@^fixed_adjacency_graph_convolution_69/transpose_3/ReadVariableOp,^lstm_68/lstm_cell_68/BiasAdd/ReadVariableOp+^lstm_68/lstm_cell_68/MatMul/ReadVariableOp-^lstm_68/lstm_cell_68/MatMul_1/ReadVariableOp^lstm_68/while,^lstm_69/lstm_cell_69/BiasAdd/ReadVariableOp+^lstm_69/lstm_cell_69/MatMul/ReadVariableOp-^lstm_69/lstm_cell_69/MatMul_1/ReadVariableOp^lstm_69/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : 2B
dense_34/BiasAdd/ReadVariableOpdense_34/BiasAdd/ReadVariableOp2@
dense_34/MatMul/ReadVariableOpdense_34/MatMul/ReadVariableOp2r
7fixed_adjacency_graph_convolution_68/add/ReadVariableOp7fixed_adjacency_graph_convolution_68/add/ReadVariableOp2�
?fixed_adjacency_graph_convolution_68/transpose_1/ReadVariableOp?fixed_adjacency_graph_convolution_68/transpose_1/ReadVariableOp2�
?fixed_adjacency_graph_convolution_68/transpose_3/ReadVariableOp?fixed_adjacency_graph_convolution_68/transpose_3/ReadVariableOp2r
7fixed_adjacency_graph_convolution_69/add/ReadVariableOp7fixed_adjacency_graph_convolution_69/add/ReadVariableOp2�
?fixed_adjacency_graph_convolution_69/transpose_1/ReadVariableOp?fixed_adjacency_graph_convolution_69/transpose_1/ReadVariableOp2�
?fixed_adjacency_graph_convolution_69/transpose_3/ReadVariableOp?fixed_adjacency_graph_convolution_69/transpose_3/ReadVariableOp2Z
+lstm_68/lstm_cell_68/BiasAdd/ReadVariableOp+lstm_68/lstm_cell_68/BiasAdd/ReadVariableOp2X
*lstm_68/lstm_cell_68/MatMul/ReadVariableOp*lstm_68/lstm_cell_68/MatMul/ReadVariableOp2\
,lstm_68/lstm_cell_68/MatMul_1/ReadVariableOp,lstm_68/lstm_cell_68/MatMul_1/ReadVariableOp2
lstm_68/whilelstm_68/while2Z
+lstm_69/lstm_cell_69/BiasAdd/ReadVariableOp+lstm_69/lstm_cell_69/BiasAdd/ReadVariableOp2X
*lstm_69/lstm_cell_69/MatMul/ReadVariableOp*lstm_69/lstm_cell_69/MatMul/ReadVariableOp2\
,lstm_69/lstm_cell_69/MatMul_1/ReadVariableOp,lstm_69/lstm_cell_69/MatMul_1/ReadVariableOp2
lstm_69/whilelstm_69/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
H__inference_lstm_cell_68_layer_call_and_return_conditional_losses_338959

inputs

states
states_11
matmul_readvariableop_resource:	�3
 matmul_1_readvariableop_resource:	l�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	l�*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������l:���������l:���������l:���������l*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������lV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������lU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������lN
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������l_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������lT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������lV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������lK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������lc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������lX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������lZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������lZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������l�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������l:���������l: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������l
 
_user_specified_namestates:OK
'
_output_shapes
:���������l
 
_user_specified_namestates
�

�
lstm_69_while_cond_341019,
(lstm_69_while_lstm_69_while_loop_counter2
.lstm_69_while_lstm_69_while_maximum_iterations
lstm_69_while_placeholder
lstm_69_while_placeholder_1
lstm_69_while_placeholder_2
lstm_69_while_placeholder_3.
*lstm_69_while_less_lstm_69_strided_slice_1D
@lstm_69_while_lstm_69_while_cond_341019___redundant_placeholder0D
@lstm_69_while_lstm_69_while_cond_341019___redundant_placeholder1D
@lstm_69_while_lstm_69_while_cond_341019___redundant_placeholder2D
@lstm_69_while_lstm_69_while_cond_341019___redundant_placeholder3
lstm_69_while_identity
�
lstm_69/while/LessLesslstm_69_while_placeholder*lstm_69_while_less_lstm_69_strided_slice_1*
T0*
_output_shapes
: [
lstm_69/while/IdentityIdentitylstm_69/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_69_while_identitylstm_69/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������h:���������h: ::::: 
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
:���������h:-)
'
_output_shapes
:���������h:

_output_shapes
: :

_output_shapes
:
�J
�
C__inference_lstm_68_layer_call_and_return_conditional_losses_342102
inputs_0>
+lstm_cell_68_matmul_readvariableop_resource:	�@
-lstm_cell_68_matmul_1_readvariableop_resource:	l�;
,lstm_cell_68_biasadd_readvariableop_resource:	�
identity��#lstm_cell_68/BiasAdd/ReadVariableOp�"lstm_cell_68/MatMul/ReadVariableOp�$lstm_cell_68/MatMul_1/ReadVariableOp�while=
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
valueB:�
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
value	B :ls
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
:���������lR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :lw
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
:���������lc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
"lstm_cell_68/MatMul/ReadVariableOpReadVariableOp+lstm_cell_68_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_68/MatMulMatMulstrided_slice_2:output:0*lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_68_matmul_1_readvariableop_resource*
_output_shapes
:	l�*
dtype0�
lstm_cell_68/MatMul_1MatMulzeros:output:0,lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_68/addAddV2lstm_cell_68/MatMul:product:0lstm_cell_68/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
#lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_68_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_68/BiasAddBiasAddlstm_cell_68/add:z:0+lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������^
lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_68/splitSplit%lstm_cell_68/split/split_dim:output:0lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������l:���������l:���������l:���������l*
	num_splitn
lstm_cell_68/SigmoidSigmoidlstm_cell_68/split:output:0*
T0*'
_output_shapes
:���������lp
lstm_cell_68/Sigmoid_1Sigmoidlstm_cell_68/split:output:1*
T0*'
_output_shapes
:���������lw
lstm_cell_68/mulMullstm_cell_68/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������lh
lstm_cell_68/ReluRelulstm_cell_68/split:output:2*
T0*'
_output_shapes
:���������l�
lstm_cell_68/mul_1Mullstm_cell_68/Sigmoid:y:0lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:���������l{
lstm_cell_68/add_1AddV2lstm_cell_68/mul:z:0lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:���������lp
lstm_cell_68/Sigmoid_2Sigmoidlstm_cell_68/split:output:3*
T0*'
_output_shapes
:���������le
lstm_cell_68/Relu_1Relulstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:���������l�
lstm_cell_68/mul_2Mullstm_cell_68/Sigmoid_2:y:0!lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:���������ln
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����l   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_68_matmul_readvariableop_resource-lstm_cell_68_matmul_1_readvariableop_resource,lstm_cell_68_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������l:���������l: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_342018*
condR
while_cond_342017*K
output_shapes:
8: : : : :���������l:���������l: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����l   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������l*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������l*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������l[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������l�
NoOpNoOp$^lstm_cell_68/BiasAdd/ReadVariableOp#^lstm_cell_68/MatMul/ReadVariableOp%^lstm_cell_68/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2J
#lstm_cell_68/BiasAdd/ReadVariableOp#lstm_cell_68/BiasAdd/ReadVariableOp2H
"lstm_cell_68/MatMul/ReadVariableOp"lstm_cell_68/MatMul/ReadVariableOp2L
$lstm_cell_68/MatMul_1/ReadVariableOp$lstm_cell_68/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�8
�
while_body_339684
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_68_matmul_readvariableop_resource_0:	�H
5while_lstm_cell_68_matmul_1_readvariableop_resource_0:	l�C
4while_lstm_cell_68_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_68_matmul_readvariableop_resource:	�F
3while_lstm_cell_68_matmul_1_readvariableop_resource:	l�A
2while_lstm_cell_68_biasadd_readvariableop_resource:	���)while/lstm_cell_68/BiasAdd/ReadVariableOp�(while/lstm_cell_68/MatMul/ReadVariableOp�*while/lstm_cell_68/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
(while/lstm_cell_68/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_68_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_68/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_68_matmul_1_readvariableop_resource_0*
_output_shapes
:	l�*
dtype0�
while/lstm_cell_68/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_68/addAddV2#while/lstm_cell_68/MatMul:product:0%while/lstm_cell_68/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_68_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_68/BiasAddBiasAddwhile/lstm_cell_68/add:z:01while/lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
"while/lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_68/splitSplit+while/lstm_cell_68/split/split_dim:output:0#while/lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������l:���������l:���������l:���������l*
	num_splitz
while/lstm_cell_68/SigmoidSigmoid!while/lstm_cell_68/split:output:0*
T0*'
_output_shapes
:���������l|
while/lstm_cell_68/Sigmoid_1Sigmoid!while/lstm_cell_68/split:output:1*
T0*'
_output_shapes
:���������l�
while/lstm_cell_68/mulMul while/lstm_cell_68/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������lt
while/lstm_cell_68/ReluRelu!while/lstm_cell_68/split:output:2*
T0*'
_output_shapes
:���������l�
while/lstm_cell_68/mul_1Mulwhile/lstm_cell_68/Sigmoid:y:0%while/lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:���������l�
while/lstm_cell_68/add_1AddV2while/lstm_cell_68/mul:z:0while/lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:���������l|
while/lstm_cell_68/Sigmoid_2Sigmoid!while/lstm_cell_68/split:output:3*
T0*'
_output_shapes
:���������lq
while/lstm_cell_68/Relu_1Reluwhile/lstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:���������l�
while/lstm_cell_68/mul_2Mul while/lstm_cell_68/Sigmoid_2:y:0'while/lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:���������l�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_68/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :���y
while/Identity_4Identitywhile/lstm_cell_68/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������ly
while/Identity_5Identitywhile/lstm_cell_68/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������l�

while/NoOpNoOp*^while/lstm_cell_68/BiasAdd/ReadVariableOp)^while/lstm_cell_68/MatMul/ReadVariableOp+^while/lstm_cell_68/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_68_biasadd_readvariableop_resource4while_lstm_cell_68_biasadd_readvariableop_resource_0"l
3while_lstm_cell_68_matmul_1_readvariableop_resource5while_lstm_cell_68_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_68_matmul_readvariableop_resource3while_lstm_cell_68_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������l:���������l: : : : : 2V
)while/lstm_cell_68/BiasAdd/ReadVariableOp)while/lstm_cell_68/BiasAdd/ReadVariableOp2T
(while/lstm_cell_68/MatMul/ReadVariableOp(while/lstm_cell_68/MatMul/ReadVariableOp2X
*while/lstm_cell_68/MatMul_1/ReadVariableOp*while/lstm_cell_68/MatMul_1/ReadVariableOp: 
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
:���������l:-)
'
_output_shapes
:���������l:

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_339367
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_339367___redundant_placeholder04
0while_while_cond_339367___redundant_placeholder14
0while_while_cond_339367___redundant_placeholder24
0while_while_cond_339367___redundant_placeholder3
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
@: : : : :���������h:���������h: ::::: 
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
:���������h:-)
'
_output_shapes
:���������h:

_output_shapes
: :

_output_shapes
:
�
�
H__inference_lstm_cell_69_layer_call_and_return_conditional_losses_339309

inputs

states
states_11
matmul_readvariableop_resource:	l�3
 matmul_1_readvariableop_resource:	h�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	l�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	h�*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������h:���������h:���������h:���������h*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������hV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������hU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������hN
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������h_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������hT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������hV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������hK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������hc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������hX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������hZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������hZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������h�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������l:���������h:���������h: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������l
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������h
 
_user_specified_namestates:OK
'
_output_shapes
:���������h
 
_user_specified_namestates
�"
�
while_body_339177
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_69_339201_0:	l�.
while_lstm_cell_69_339203_0:	h�*
while_lstm_cell_69_339205_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_69_339201:	l�,
while_lstm_cell_69_339203:	h�(
while_lstm_cell_69_339205:	���*while/lstm_cell_69/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����l   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������l*
element_dtype0�
*while/lstm_cell_69/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_69_339201_0while_lstm_cell_69_339203_0while_lstm_cell_69_339205_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������h:���������h:���������h*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_69_layer_call_and_return_conditional_losses_339163�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_69/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :����
while/Identity_4Identity3while/lstm_cell_69/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������h�
while/Identity_5Identity3while/lstm_cell_69/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������hy

while/NoOpNoOp+^while/lstm_cell_69/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_69_339201while_lstm_cell_69_339201_0"8
while_lstm_cell_69_339203while_lstm_cell_69_339203_0"8
while_lstm_cell_69_339205while_lstm_cell_69_339205_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������h:���������h: : : : : 2X
*while/lstm_cell_69/StatefulPartitionedCall*while/lstm_cell_69/StatefulPartitionedCall: 
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
:���������h:-)
'
_output_shapes
:���������h:

_output_shapes
: :

_output_shapes
: 
�4
�
D__inference_model_34_layer_call_and_return_conditional_losses_340466

inputs=
+fixed_adjacency_graph_convolution_68_340428:=
+fixed_adjacency_graph_convolution_68_340430:
=
+fixed_adjacency_graph_convolution_68_340432:=
+fixed_adjacency_graph_convolution_69_340435:=
+fixed_adjacency_graph_convolution_69_340437:
=
+fixed_adjacency_graph_convolution_69_340439:!
lstm_68_340445:	�!
lstm_68_340447:	l�
lstm_68_340449:	�!
lstm_69_340452:	l�!
lstm_69_340454:	h�
lstm_69_340456:	�!
dense_34_340460:h
dense_34_340462:
identity�� dense_34/StatefulPartitionedCall�"dropout_34/StatefulPartitionedCall�<fixed_adjacency_graph_convolution_68/StatefulPartitionedCall�<fixed_adjacency_graph_convolution_69/StatefulPartitionedCall�lstm_68/StatefulPartitionedCall�lstm_69/StatefulPartitionedCallk
 tf.expand_dims_34/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
tf.expand_dims_34/ExpandDims
ExpandDimsinputs)tf.expand_dims_34/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
reshape_102/PartitionedCallPartitionedCall%tf.expand_dims_34/ExpandDims:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_reshape_102_layer_call_and_return_conditional_losses_339468�
<fixed_adjacency_graph_convolution_68/StatefulPartitionedCallStatefulPartitionedCall$reshape_102/PartitionedCall:output:0+fixed_adjacency_graph_convolution_68_340428+fixed_adjacency_graph_convolution_68_340430+fixed_adjacency_graph_convolution_68_340432*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *i
fdRb
`__inference_fixed_adjacency_graph_convolution_68_layer_call_and_return_conditional_losses_339524�
<fixed_adjacency_graph_convolution_69/StatefulPartitionedCallStatefulPartitionedCallEfixed_adjacency_graph_convolution_68/StatefulPartitionedCall:output:0+fixed_adjacency_graph_convolution_69_340435+fixed_adjacency_graph_convolution_69_340437+fixed_adjacency_graph_convolution_69_340439*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *i
fdRb
`__inference_fixed_adjacency_graph_convolution_69_layer_call_and_return_conditional_losses_339586�
reshape_103/PartitionedCallPartitionedCallEfixed_adjacency_graph_convolution_69/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_reshape_103_layer_call_and_return_conditional_losses_339608�
permute_34/PartitionedCallPartitionedCall$reshape_103/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_permute_34_layer_call_and_return_conditional_losses_338743�
reshape_104/PartitionedCallPartitionedCall#permute_34/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_reshape_104_layer_call_and_return_conditional_losses_339624�
lstm_68/StatefulPartitionedCallStatefulPartitionedCall$reshape_104/PartitionedCall:output:0lstm_68_340445lstm_68_340447lstm_68_340449*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������l*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_68_layer_call_and_return_conditional_losses_340336�
lstm_69/StatefulPartitionedCallStatefulPartitionedCall(lstm_68/StatefulPartitionedCall:output:0lstm_69_340452lstm_69_340454lstm_69_340456*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������h*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_69_layer_call_and_return_conditional_losses_340171�
"dropout_34/StatefulPartitionedCallStatefulPartitionedCall(lstm_69/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������h* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_34_layer_call_and_return_conditional_losses_340012�
 dense_34/StatefulPartitionedCallStatefulPartitionedCall+dropout_34/StatefulPartitionedCall:output:0dense_34_340460dense_34_340462*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_34_layer_call_and_return_conditional_losses_339944x
IdentityIdentity)dense_34/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_34/StatefulPartitionedCall#^dropout_34/StatefulPartitionedCall=^fixed_adjacency_graph_convolution_68/StatefulPartitionedCall=^fixed_adjacency_graph_convolution_69/StatefulPartitionedCall ^lstm_68/StatefulPartitionedCall ^lstm_69/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : 2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall2H
"dropout_34/StatefulPartitionedCall"dropout_34/StatefulPartitionedCall2|
<fixed_adjacency_graph_convolution_68/StatefulPartitionedCall<fixed_adjacency_graph_convolution_68/StatefulPartitionedCall2|
<fixed_adjacency_graph_convolution_69/StatefulPartitionedCall<fixed_adjacency_graph_convolution_69/StatefulPartitionedCall2B
lstm_68/StatefulPartitionedCalllstm_68/StatefulPartitionedCall2B
lstm_69/StatefulPartitionedCalllstm_69/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
-__inference_lstm_cell_69_layer_call_fn_343183

inputs
states_0
states_1
unknown:	l�
	unknown_0:	h�
	unknown_1:	�
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
9:���������h:���������h:���������h*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_69_layer_call_and_return_conditional_losses_339309o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������hq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������hq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������h`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������l:���������h:���������h: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������l
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������h
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������h
"
_user_specified_name
states/1
�"
�
while_body_339018
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_68_339042_0:	�.
while_lstm_cell_68_339044_0:	l�*
while_lstm_cell_68_339046_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_68_339042:	�,
while_lstm_cell_68_339044:	l�(
while_lstm_cell_68_339046:	���*while/lstm_cell_68/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
*while/lstm_cell_68/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_68_339042_0while_lstm_cell_68_339044_0while_lstm_cell_68_339046_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������l:���������l:���������l*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_68_layer_call_and_return_conditional_losses_338959�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_68/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :����
while/Identity_4Identity3while/lstm_cell_68/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������l�
while/Identity_5Identity3while/lstm_cell_68/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������ly

while/NoOpNoOp+^while/lstm_cell_68/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_68_339042while_lstm_cell_68_339042_0"8
while_lstm_cell_68_339044while_lstm_cell_68_339044_0"8
while_lstm_cell_68_339046while_lstm_cell_68_339046_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������l:���������l: : : : : 2X
*while/lstm_cell_68/StatefulPartitionedCall*while/lstm_cell_68/StatefulPartitionedCall: 
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
:���������l:-)
'
_output_shapes
:���������l:

_output_shapes
: :

_output_shapes
: 
�L
�
"model_34_lstm_68_while_body_338502>
:model_34_lstm_68_while_model_34_lstm_68_while_loop_counterD
@model_34_lstm_68_while_model_34_lstm_68_while_maximum_iterations&
"model_34_lstm_68_while_placeholder(
$model_34_lstm_68_while_placeholder_1(
$model_34_lstm_68_while_placeholder_2(
$model_34_lstm_68_while_placeholder_3=
9model_34_lstm_68_while_model_34_lstm_68_strided_slice_1_0y
umodel_34_lstm_68_while_tensorarrayv2read_tensorlistgetitem_model_34_lstm_68_tensorarrayunstack_tensorlistfromtensor_0W
Dmodel_34_lstm_68_while_lstm_cell_68_matmul_readvariableop_resource_0:	�Y
Fmodel_34_lstm_68_while_lstm_cell_68_matmul_1_readvariableop_resource_0:	l�T
Emodel_34_lstm_68_while_lstm_cell_68_biasadd_readvariableop_resource_0:	�#
model_34_lstm_68_while_identity%
!model_34_lstm_68_while_identity_1%
!model_34_lstm_68_while_identity_2%
!model_34_lstm_68_while_identity_3%
!model_34_lstm_68_while_identity_4%
!model_34_lstm_68_while_identity_5;
7model_34_lstm_68_while_model_34_lstm_68_strided_slice_1w
smodel_34_lstm_68_while_tensorarrayv2read_tensorlistgetitem_model_34_lstm_68_tensorarrayunstack_tensorlistfromtensorU
Bmodel_34_lstm_68_while_lstm_cell_68_matmul_readvariableop_resource:	�W
Dmodel_34_lstm_68_while_lstm_cell_68_matmul_1_readvariableop_resource:	l�R
Cmodel_34_lstm_68_while_lstm_cell_68_biasadd_readvariableop_resource:	���:model_34/lstm_68/while/lstm_cell_68/BiasAdd/ReadVariableOp�9model_34/lstm_68/while/lstm_cell_68/MatMul/ReadVariableOp�;model_34/lstm_68/while/lstm_cell_68/MatMul_1/ReadVariableOp�
Hmodel_34/lstm_68/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
:model_34/lstm_68/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemumodel_34_lstm_68_while_tensorarrayv2read_tensorlistgetitem_model_34_lstm_68_tensorarrayunstack_tensorlistfromtensor_0"model_34_lstm_68_while_placeholderQmodel_34/lstm_68/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
9model_34/lstm_68/while/lstm_cell_68/MatMul/ReadVariableOpReadVariableOpDmodel_34_lstm_68_while_lstm_cell_68_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
*model_34/lstm_68/while/lstm_cell_68/MatMulMatMulAmodel_34/lstm_68/while/TensorArrayV2Read/TensorListGetItem:item:0Amodel_34/lstm_68/while/lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
;model_34/lstm_68/while/lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOpFmodel_34_lstm_68_while_lstm_cell_68_matmul_1_readvariableop_resource_0*
_output_shapes
:	l�*
dtype0�
,model_34/lstm_68/while/lstm_cell_68/MatMul_1MatMul$model_34_lstm_68_while_placeholder_2Cmodel_34/lstm_68/while/lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'model_34/lstm_68/while/lstm_cell_68/addAddV24model_34/lstm_68/while/lstm_cell_68/MatMul:product:06model_34/lstm_68/while/lstm_cell_68/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
:model_34/lstm_68/while/lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOpEmodel_34_lstm_68_while_lstm_cell_68_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
+model_34/lstm_68/while/lstm_cell_68/BiasAddBiasAdd+model_34/lstm_68/while/lstm_cell_68/add:z:0Bmodel_34/lstm_68/while/lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������u
3model_34/lstm_68/while/lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
)model_34/lstm_68/while/lstm_cell_68/splitSplit<model_34/lstm_68/while/lstm_cell_68/split/split_dim:output:04model_34/lstm_68/while/lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������l:���������l:���������l:���������l*
	num_split�
+model_34/lstm_68/while/lstm_cell_68/SigmoidSigmoid2model_34/lstm_68/while/lstm_cell_68/split:output:0*
T0*'
_output_shapes
:���������l�
-model_34/lstm_68/while/lstm_cell_68/Sigmoid_1Sigmoid2model_34/lstm_68/while/lstm_cell_68/split:output:1*
T0*'
_output_shapes
:���������l�
'model_34/lstm_68/while/lstm_cell_68/mulMul1model_34/lstm_68/while/lstm_cell_68/Sigmoid_1:y:0$model_34_lstm_68_while_placeholder_3*
T0*'
_output_shapes
:���������l�
(model_34/lstm_68/while/lstm_cell_68/ReluRelu2model_34/lstm_68/while/lstm_cell_68/split:output:2*
T0*'
_output_shapes
:���������l�
)model_34/lstm_68/while/lstm_cell_68/mul_1Mul/model_34/lstm_68/while/lstm_cell_68/Sigmoid:y:06model_34/lstm_68/while/lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:���������l�
)model_34/lstm_68/while/lstm_cell_68/add_1AddV2+model_34/lstm_68/while/lstm_cell_68/mul:z:0-model_34/lstm_68/while/lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:���������l�
-model_34/lstm_68/while/lstm_cell_68/Sigmoid_2Sigmoid2model_34/lstm_68/while/lstm_cell_68/split:output:3*
T0*'
_output_shapes
:���������l�
*model_34/lstm_68/while/lstm_cell_68/Relu_1Relu-model_34/lstm_68/while/lstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:���������l�
)model_34/lstm_68/while/lstm_cell_68/mul_2Mul1model_34/lstm_68/while/lstm_cell_68/Sigmoid_2:y:08model_34/lstm_68/while/lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:���������l�
;model_34/lstm_68/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem$model_34_lstm_68_while_placeholder_1"model_34_lstm_68_while_placeholder-model_34/lstm_68/while/lstm_cell_68/mul_2:z:0*
_output_shapes
: *
element_dtype0:���^
model_34/lstm_68/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
model_34/lstm_68/while/addAddV2"model_34_lstm_68_while_placeholder%model_34/lstm_68/while/add/y:output:0*
T0*
_output_shapes
: `
model_34/lstm_68/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
model_34/lstm_68/while/add_1AddV2:model_34_lstm_68_while_model_34_lstm_68_while_loop_counter'model_34/lstm_68/while/add_1/y:output:0*
T0*
_output_shapes
: �
model_34/lstm_68/while/IdentityIdentity model_34/lstm_68/while/add_1:z:0^model_34/lstm_68/while/NoOp*
T0*
_output_shapes
: �
!model_34/lstm_68/while/Identity_1Identity@model_34_lstm_68_while_model_34_lstm_68_while_maximum_iterations^model_34/lstm_68/while/NoOp*
T0*
_output_shapes
: �
!model_34/lstm_68/while/Identity_2Identitymodel_34/lstm_68/while/add:z:0^model_34/lstm_68/while/NoOp*
T0*
_output_shapes
: �
!model_34/lstm_68/while/Identity_3IdentityKmodel_34/lstm_68/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^model_34/lstm_68/while/NoOp*
T0*
_output_shapes
: :����
!model_34/lstm_68/while/Identity_4Identity-model_34/lstm_68/while/lstm_cell_68/mul_2:z:0^model_34/lstm_68/while/NoOp*
T0*'
_output_shapes
:���������l�
!model_34/lstm_68/while/Identity_5Identity-model_34/lstm_68/while/lstm_cell_68/add_1:z:0^model_34/lstm_68/while/NoOp*
T0*'
_output_shapes
:���������l�
model_34/lstm_68/while/NoOpNoOp;^model_34/lstm_68/while/lstm_cell_68/BiasAdd/ReadVariableOp:^model_34/lstm_68/while/lstm_cell_68/MatMul/ReadVariableOp<^model_34/lstm_68/while/lstm_cell_68/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "K
model_34_lstm_68_while_identity(model_34/lstm_68/while/Identity:output:0"O
!model_34_lstm_68_while_identity_1*model_34/lstm_68/while/Identity_1:output:0"O
!model_34_lstm_68_while_identity_2*model_34/lstm_68/while/Identity_2:output:0"O
!model_34_lstm_68_while_identity_3*model_34/lstm_68/while/Identity_3:output:0"O
!model_34_lstm_68_while_identity_4*model_34/lstm_68/while/Identity_4:output:0"O
!model_34_lstm_68_while_identity_5*model_34/lstm_68/while/Identity_5:output:0"�
Cmodel_34_lstm_68_while_lstm_cell_68_biasadd_readvariableop_resourceEmodel_34_lstm_68_while_lstm_cell_68_biasadd_readvariableop_resource_0"�
Dmodel_34_lstm_68_while_lstm_cell_68_matmul_1_readvariableop_resourceFmodel_34_lstm_68_while_lstm_cell_68_matmul_1_readvariableop_resource_0"�
Bmodel_34_lstm_68_while_lstm_cell_68_matmul_readvariableop_resourceDmodel_34_lstm_68_while_lstm_cell_68_matmul_readvariableop_resource_0"t
7model_34_lstm_68_while_model_34_lstm_68_strided_slice_19model_34_lstm_68_while_model_34_lstm_68_strided_slice_1_0"�
smodel_34_lstm_68_while_tensorarrayv2read_tensorlistgetitem_model_34_lstm_68_tensorarrayunstack_tensorlistfromtensorumodel_34_lstm_68_while_tensorarrayv2read_tensorlistgetitem_model_34_lstm_68_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������l:���������l: : : : : 2x
:model_34/lstm_68/while/lstm_cell_68/BiasAdd/ReadVariableOp:model_34/lstm_68/while/lstm_cell_68/BiasAdd/ReadVariableOp2v
9model_34/lstm_68/while/lstm_cell_68/MatMul/ReadVariableOp9model_34/lstm_68/while/lstm_cell_68/MatMul/ReadVariableOp2z
;model_34/lstm_68/while/lstm_cell_68/MatMul_1/ReadVariableOp;model_34/lstm_68/while/lstm_cell_68/MatMul_1/ReadVariableOp: 
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
:���������l:-)
'
_output_shapes
:���������l:

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_341874
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_341874___redundant_placeholder04
0while_while_cond_341874___redundant_placeholder14
0while_while_cond_341874___redundant_placeholder24
0while_while_cond_341874___redundant_placeholder3
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
@: : : : :���������l:���������l: ::::: 
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
:���������l:-)
'
_output_shapes
:���������l:

_output_shapes
: :

_output_shapes
:
�8
�
while_body_342161
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_68_matmul_readvariableop_resource_0:	�H
5while_lstm_cell_68_matmul_1_readvariableop_resource_0:	l�C
4while_lstm_cell_68_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_68_matmul_readvariableop_resource:	�F
3while_lstm_cell_68_matmul_1_readvariableop_resource:	l�A
2while_lstm_cell_68_biasadd_readvariableop_resource:	���)while/lstm_cell_68/BiasAdd/ReadVariableOp�(while/lstm_cell_68/MatMul/ReadVariableOp�*while/lstm_cell_68/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
(while/lstm_cell_68/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_68_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_68/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_68_matmul_1_readvariableop_resource_0*
_output_shapes
:	l�*
dtype0�
while/lstm_cell_68/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_68/addAddV2#while/lstm_cell_68/MatMul:product:0%while/lstm_cell_68/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_68_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_68/BiasAddBiasAddwhile/lstm_cell_68/add:z:01while/lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
"while/lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_68/splitSplit+while/lstm_cell_68/split/split_dim:output:0#while/lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������l:���������l:���������l:���������l*
	num_splitz
while/lstm_cell_68/SigmoidSigmoid!while/lstm_cell_68/split:output:0*
T0*'
_output_shapes
:���������l|
while/lstm_cell_68/Sigmoid_1Sigmoid!while/lstm_cell_68/split:output:1*
T0*'
_output_shapes
:���������l�
while/lstm_cell_68/mulMul while/lstm_cell_68/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������lt
while/lstm_cell_68/ReluRelu!while/lstm_cell_68/split:output:2*
T0*'
_output_shapes
:���������l�
while/lstm_cell_68/mul_1Mulwhile/lstm_cell_68/Sigmoid:y:0%while/lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:���������l�
while/lstm_cell_68/add_1AddV2while/lstm_cell_68/mul:z:0while/lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:���������l|
while/lstm_cell_68/Sigmoid_2Sigmoid!while/lstm_cell_68/split:output:3*
T0*'
_output_shapes
:���������lq
while/lstm_cell_68/Relu_1Reluwhile/lstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:���������l�
while/lstm_cell_68/mul_2Mul while/lstm_cell_68/Sigmoid_2:y:0'while/lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:���������l�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_68/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :���y
while/Identity_4Identitywhile/lstm_cell_68/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������ly
while/Identity_5Identitywhile/lstm_cell_68/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������l�

while/NoOpNoOp*^while/lstm_cell_68/BiasAdd/ReadVariableOp)^while/lstm_cell_68/MatMul/ReadVariableOp+^while/lstm_cell_68/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_68_biasadd_readvariableop_resource4while_lstm_cell_68_biasadd_readvariableop_resource_0"l
3while_lstm_cell_68_matmul_1_readvariableop_resource5while_lstm_cell_68_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_68_matmul_readvariableop_resource3while_lstm_cell_68_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������l:���������l: : : : : 2V
)while/lstm_cell_68/BiasAdd/ReadVariableOp)while/lstm_cell_68/BiasAdd/ReadVariableOp2T
(while/lstm_cell_68/MatMul/ReadVariableOp(while/lstm_cell_68/MatMul/ReadVariableOp2X
*while/lstm_cell_68/MatMul_1/ReadVariableOp*while/lstm_cell_68/MatMul_1/ReadVariableOp: 
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
:���������l:-)
'
_output_shapes
:���������l:

_output_shapes
: :

_output_shapes
: 
�

�
lstm_69_while_cond_341441,
(lstm_69_while_lstm_69_while_loop_counter2
.lstm_69_while_lstm_69_while_maximum_iterations
lstm_69_while_placeholder
lstm_69_while_placeholder_1
lstm_69_while_placeholder_2
lstm_69_while_placeholder_3.
*lstm_69_while_less_lstm_69_strided_slice_1D
@lstm_69_while_lstm_69_while_cond_341441___redundant_placeholder0D
@lstm_69_while_lstm_69_while_cond_341441___redundant_placeholder1D
@lstm_69_while_lstm_69_while_cond_341441___redundant_placeholder2D
@lstm_69_while_lstm_69_while_cond_341441___redundant_placeholder3
lstm_69_while_identity
�
lstm_69/while/LessLesslstm_69_while_placeholder*lstm_69_while_less_lstm_69_strided_slice_1*
T0*
_output_shapes
: [
lstm_69/while/IdentityIdentitylstm_69/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_69_while_identitylstm_69/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������h:���������h: ::::: 
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
:���������h:-)
'
_output_shapes
:���������h:

_output_shapes
: :

_output_shapes
:
�
�
$__inference_signature_wrapper_341576
input_69
unknown:
	unknown_0:

	unknown_1:
	unknown_2:
	unknown_3:

	unknown_4:
	unknown_5:	�
	unknown_6:	l�
	unknown_7:	�
	unknown_8:	l�
	unknown_9:	h�

unknown_10:	�

unknown_11:h

unknown_12:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_69unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__wrapped_model_338733o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:���������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:���������
"
_user_specified_name
input_69
�
�
while_cond_339683
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_339683___redundant_placeholder04
0while_while_cond_339683___redundant_placeholder14
0while_while_cond_339683___redundant_placeholder24
0while_while_cond_339683___redundant_placeholder3
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
@: : : : :���������l:���������l: ::::: 
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
:���������l:-)
'
_output_shapes
:���������l:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_342776
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_342776___redundant_placeholder04
0while_while_cond_342776___redundant_placeholder14
0while_while_cond_342776___redundant_placeholder24
0while_while_cond_342776___redundant_placeholder3
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
@: : : : :���������h:���������h: ::::: 
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
:���������h:-)
'
_output_shapes
:���������h:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_339833
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_339833___redundant_placeholder04
0while_while_cond_339833___redundant_placeholder14
0while_while_cond_339833___redundant_placeholder24
0while_while_cond_339833___redundant_placeholder3
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
@: : : : :���������h:���������h: ::::: 
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
:���������h:-)
'
_output_shapes
:���������h:

_output_shapes
: :

_output_shapes
:
�8
�
while_body_342304
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_68_matmul_readvariableop_resource_0:	�H
5while_lstm_cell_68_matmul_1_readvariableop_resource_0:	l�C
4while_lstm_cell_68_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_68_matmul_readvariableop_resource:	�F
3while_lstm_cell_68_matmul_1_readvariableop_resource:	l�A
2while_lstm_cell_68_biasadd_readvariableop_resource:	���)while/lstm_cell_68/BiasAdd/ReadVariableOp�(while/lstm_cell_68/MatMul/ReadVariableOp�*while/lstm_cell_68/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
(while/lstm_cell_68/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_68_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_68/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_68_matmul_1_readvariableop_resource_0*
_output_shapes
:	l�*
dtype0�
while/lstm_cell_68/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_68/addAddV2#while/lstm_cell_68/MatMul:product:0%while/lstm_cell_68/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_68_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_68/BiasAddBiasAddwhile/lstm_cell_68/add:z:01while/lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
"while/lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_68/splitSplit+while/lstm_cell_68/split/split_dim:output:0#while/lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������l:���������l:���������l:���������l*
	num_splitz
while/lstm_cell_68/SigmoidSigmoid!while/lstm_cell_68/split:output:0*
T0*'
_output_shapes
:���������l|
while/lstm_cell_68/Sigmoid_1Sigmoid!while/lstm_cell_68/split:output:1*
T0*'
_output_shapes
:���������l�
while/lstm_cell_68/mulMul while/lstm_cell_68/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������lt
while/lstm_cell_68/ReluRelu!while/lstm_cell_68/split:output:2*
T0*'
_output_shapes
:���������l�
while/lstm_cell_68/mul_1Mulwhile/lstm_cell_68/Sigmoid:y:0%while/lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:���������l�
while/lstm_cell_68/add_1AddV2while/lstm_cell_68/mul:z:0while/lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:���������l|
while/lstm_cell_68/Sigmoid_2Sigmoid!while/lstm_cell_68/split:output:3*
T0*'
_output_shapes
:���������lq
while/lstm_cell_68/Relu_1Reluwhile/lstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:���������l�
while/lstm_cell_68/mul_2Mul while/lstm_cell_68/Sigmoid_2:y:0'while/lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:���������l�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_68/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :���y
while/Identity_4Identitywhile/lstm_cell_68/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������ly
while/Identity_5Identitywhile/lstm_cell_68/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������l�

while/NoOpNoOp*^while/lstm_cell_68/BiasAdd/ReadVariableOp)^while/lstm_cell_68/MatMul/ReadVariableOp+^while/lstm_cell_68/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_68_biasadd_readvariableop_resource4while_lstm_cell_68_biasadd_readvariableop_resource_0"l
3while_lstm_cell_68_matmul_1_readvariableop_resource5while_lstm_cell_68_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_68_matmul_readvariableop_resource3while_lstm_cell_68_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������l:���������l: : : : : 2V
)while/lstm_cell_68/BiasAdd/ReadVariableOp)while/lstm_cell_68/BiasAdd/ReadVariableOp2T
(while/lstm_cell_68/MatMul/ReadVariableOp(while/lstm_cell_68/MatMul/ReadVariableOp2X
*while/lstm_cell_68/MatMul_1/ReadVariableOp*while/lstm_cell_68/MatMul_1/ReadVariableOp: 
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
:���������l:-)
'
_output_shapes
:���������l:

_output_shapes
: :

_output_shapes
: 
�

�
D__inference_dense_34_layer_call_and_return_conditional_losses_339944

inputs0
matmul_readvariableop_resource:h-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:h*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������h: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������h
 
_user_specified_nameinputs
�
d
F__inference_dropout_34_layer_call_and_return_conditional_losses_339931

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:���������h[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������h"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������h:O K
'
_output_shapes
:���������h
 
_user_specified_nameinputs
�J
�
C__inference_lstm_69_layer_call_and_return_conditional_losses_339918

inputs>
+lstm_cell_69_matmul_readvariableop_resource:	l�@
-lstm_cell_69_matmul_1_readvariableop_resource:	h�;
,lstm_cell_69_biasadd_readvariableop_resource:	�
identity��#lstm_cell_69/BiasAdd/ReadVariableOp�"lstm_cell_69/MatMul/ReadVariableOp�$lstm_cell_69/MatMul_1/ReadVariableOp�while;
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
valueB:�
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
value	B :hs
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
:���������hR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :hw
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
:���������hc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������lD
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����l   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������l*
shrink_axis_mask�
"lstm_cell_69/MatMul/ReadVariableOpReadVariableOp+lstm_cell_69_matmul_readvariableop_resource*
_output_shapes
:	l�*
dtype0�
lstm_cell_69/MatMulMatMulstrided_slice_2:output:0*lstm_cell_69/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$lstm_cell_69/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_69_matmul_1_readvariableop_resource*
_output_shapes
:	h�*
dtype0�
lstm_cell_69/MatMul_1MatMulzeros:output:0,lstm_cell_69/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_69/addAddV2lstm_cell_69/MatMul:product:0lstm_cell_69/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
#lstm_cell_69/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_69_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_69/BiasAddBiasAddlstm_cell_69/add:z:0+lstm_cell_69/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������^
lstm_cell_69/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_69/splitSplit%lstm_cell_69/split/split_dim:output:0lstm_cell_69/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������h:���������h:���������h:���������h*
	num_splitn
lstm_cell_69/SigmoidSigmoidlstm_cell_69/split:output:0*
T0*'
_output_shapes
:���������hp
lstm_cell_69/Sigmoid_1Sigmoidlstm_cell_69/split:output:1*
T0*'
_output_shapes
:���������hw
lstm_cell_69/mulMullstm_cell_69/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������hh
lstm_cell_69/ReluRelulstm_cell_69/split:output:2*
T0*'
_output_shapes
:���������h�
lstm_cell_69/mul_1Mullstm_cell_69/Sigmoid:y:0lstm_cell_69/Relu:activations:0*
T0*'
_output_shapes
:���������h{
lstm_cell_69/add_1AddV2lstm_cell_69/mul:z:0lstm_cell_69/mul_1:z:0*
T0*'
_output_shapes
:���������hp
lstm_cell_69/Sigmoid_2Sigmoidlstm_cell_69/split:output:3*
T0*'
_output_shapes
:���������he
lstm_cell_69/Relu_1Relulstm_cell_69/add_1:z:0*
T0*'
_output_shapes
:���������h�
lstm_cell_69/mul_2Mullstm_cell_69/Sigmoid_2:y:0!lstm_cell_69/Relu_1:activations:0*
T0*'
_output_shapes
:���������hn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����h   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_69_matmul_readvariableop_resource-lstm_cell_69_matmul_1_readvariableop_resource,lstm_cell_69_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������h:���������h: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_339834*
condR
while_cond_339833*K
output_shapes:
8: : : : :���������h:���������h: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����h   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������h*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������h*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������h[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������h�
NoOpNoOp$^lstm_cell_69/BiasAdd/ReadVariableOp#^lstm_cell_69/MatMul/ReadVariableOp%^lstm_cell_69/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������l: : : 2J
#lstm_cell_69/BiasAdd/ReadVariableOp#lstm_cell_69/BiasAdd/ReadVariableOp2H
"lstm_cell_69/MatMul/ReadVariableOp"lstm_cell_69/MatMul/ReadVariableOp2L
$lstm_cell_69/MatMul_1/ReadVariableOp$lstm_cell_69/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������l
 
_user_specified_nameinputs
�
G
+__inference_permute_34_layer_call_fn_341748

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_permute_34_layer_call_and_return_conditional_losses_338743�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�J
�
C__inference_lstm_68_layer_call_and_return_conditional_losses_341959
inputs_0>
+lstm_cell_68_matmul_readvariableop_resource:	�@
-lstm_cell_68_matmul_1_readvariableop_resource:	l�;
,lstm_cell_68_biasadd_readvariableop_resource:	�
identity��#lstm_cell_68/BiasAdd/ReadVariableOp�"lstm_cell_68/MatMul/ReadVariableOp�$lstm_cell_68/MatMul_1/ReadVariableOp�while=
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
valueB:�
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
value	B :ls
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
:���������lR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :lw
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
:���������lc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
"lstm_cell_68/MatMul/ReadVariableOpReadVariableOp+lstm_cell_68_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_68/MatMulMatMulstrided_slice_2:output:0*lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_68_matmul_1_readvariableop_resource*
_output_shapes
:	l�*
dtype0�
lstm_cell_68/MatMul_1MatMulzeros:output:0,lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_68/addAddV2lstm_cell_68/MatMul:product:0lstm_cell_68/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
#lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_68_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_68/BiasAddBiasAddlstm_cell_68/add:z:0+lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������^
lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_68/splitSplit%lstm_cell_68/split/split_dim:output:0lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������l:���������l:���������l:���������l*
	num_splitn
lstm_cell_68/SigmoidSigmoidlstm_cell_68/split:output:0*
T0*'
_output_shapes
:���������lp
lstm_cell_68/Sigmoid_1Sigmoidlstm_cell_68/split:output:1*
T0*'
_output_shapes
:���������lw
lstm_cell_68/mulMullstm_cell_68/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������lh
lstm_cell_68/ReluRelulstm_cell_68/split:output:2*
T0*'
_output_shapes
:���������l�
lstm_cell_68/mul_1Mullstm_cell_68/Sigmoid:y:0lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:���������l{
lstm_cell_68/add_1AddV2lstm_cell_68/mul:z:0lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:���������lp
lstm_cell_68/Sigmoid_2Sigmoidlstm_cell_68/split:output:3*
T0*'
_output_shapes
:���������le
lstm_cell_68/Relu_1Relulstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:���������l�
lstm_cell_68/mul_2Mullstm_cell_68/Sigmoid_2:y:0!lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:���������ln
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����l   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_68_matmul_readvariableop_resource-lstm_cell_68_matmul_1_readvariableop_resource,lstm_cell_68_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������l:���������l: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_341875*
condR
while_cond_341874*K
output_shapes:
8: : : : :���������l:���������l: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����l   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������l*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������l*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������l[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������l�
NoOpNoOp$^lstm_cell_68/BiasAdd/ReadVariableOp#^lstm_cell_68/MatMul/ReadVariableOp%^lstm_cell_68/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2J
#lstm_cell_68/BiasAdd/ReadVariableOp#lstm_cell_68/BiasAdd/ReadVariableOp2H
"lstm_cell_68/MatMul/ReadVariableOp"lstm_cell_68/MatMul/ReadVariableOp2L
$lstm_cell_68/MatMul_1/ReadVariableOp$lstm_cell_68/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
E__inference_fixed_adjacency_graph_convolution_68_layer_call_fn_341605
features
unknown:
	unknown_0:

	unknown_1:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallfeaturesunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *i
fdRb
`__inference_fixed_adjacency_graph_convolution_68_layer_call_and_return_conditional_losses_339524s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:���������
"
_user_specified_name
features
�
�
(__inference_lstm_69_layer_call_fn_342410
inputs_0
unknown:	l�
	unknown_0:	h�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������h*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_69_layer_call_and_return_conditional_losses_339437o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������h`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������l: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������l
"
_user_specified_name
inputs/0
�)
�
`__inference_fixed_adjacency_graph_convolution_68_layer_call_and_return_conditional_losses_341659
features1
shape_1_readvariableop_resource:1
shape_3_readvariableop_resource:
-
add_readvariableop_resource:
identity��add/ReadVariableOp�transpose_1/ReadVariableOp�transpose_3/ReadVariableOpc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          o
	transpose	Transposefeaturestranspose/perm:output:0*
T0*+
_output_shapes
:���������B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:Q
unstackUnpackShape:output:0*
T0*
_output_shapes
: : : *	
numv
Shape_1/ReadVariableOpReadVariableOpshape_1_readvariableop_resource*
_output_shapes

:*
dtype0X
Shape_1Const*
_output_shapes
:*
dtype0*
valueB"      S
	unstack_1UnpackShape_1:output:0*
T0*
_output_shapes
: : *	
num^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   k
ReshapeReshapetranspose:y:0Reshape/shape:output:0*
T0*'
_output_shapes
:���������z
transpose_1/ReadVariableOpReadVariableOpshape_1_readvariableop_resource*
_output_shapes

:*
dtype0a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       �
transpose_1	Transpose"transpose_1/ReadVariableOp:value:0transpose_1/perm:output:0*
T0*
_output_shapes

:`
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   ����h
	Reshape_1Reshapetranspose_1:y:0Reshape_1/shape:output:0*
T0*
_output_shapes

:h
MatMulMatMulReshape:output:0Reshape_1:output:0*
T0*'
_output_shapes
:���������S
Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B :S
Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
Reshape_2/shapePackunstack:output:0Reshape_2/shape/1:output:0Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:v
	Reshape_2ReshapeMatMul:product:0Reshape_2/shape:output:0*
T0*+
_output_shapes
:���������e
transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
transpose_2	TransposeReshape_2:output:0transpose_2/perm:output:0*
T0*+
_output_shapes
:���������F
Shape_2Shapetranspose_2:y:0*
T0*
_output_shapes
:U
	unstack_2UnpackShape_2:output:0*
T0*
_output_shapes
: : : *	
numv
Shape_3/ReadVariableOpReadVariableOpshape_3_readvariableop_resource*
_output_shapes

:
*
dtype0X
Shape_3Const*
_output_shapes
:*
dtype0*
valueB"   
   S
	unstack_3UnpackShape_3:output:0*
T0*
_output_shapes
: : *	
num`
Reshape_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   q
	Reshape_3Reshapetranspose_2:y:0Reshape_3/shape:output:0*
T0*'
_output_shapes
:���������z
transpose_3/ReadVariableOpReadVariableOpshape_3_readvariableop_resource*
_output_shapes

:
*
dtype0a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       �
transpose_3	Transpose"transpose_3/ReadVariableOp:value:0transpose_3/perm:output:0*
T0*
_output_shapes

:
`
Reshape_4/shapeConst*
_output_shapes
:*
dtype0*
valueB"   ����h
	Reshape_4Reshapetranspose_3:y:0Reshape_4/shape:output:0*
T0*
_output_shapes

:
l
MatMul_1MatMulReshape_3:output:0Reshape_4:output:0*
T0*'
_output_shapes
:���������
S
Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
value	B :S
Reshape_5/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
�
Reshape_5/shapePackunstack_2:output:0Reshape_5/shape/1:output:0Reshape_5/shape/2:output:0*
N*
T0*
_output_shapes
:x
	Reshape_5ReshapeMatMul_1:product:0Reshape_5/shape:output:0*
T0*+
_output_shapes
:���������
n
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes

:*
dtype0r
addAddV2Reshape_5:output:0add/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������
K
ReluReluadd:z:0*
T0*+
_output_shapes
:���������
e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:���������
�
NoOpNoOp^add/ReadVariableOp^transpose_1/ReadVariableOp^transpose_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2(
add/ReadVariableOpadd/ReadVariableOp28
transpose_1/ReadVariableOptranspose_1/ReadVariableOp28
transpose_3/ReadVariableOptranspose_3/ReadVariableOp:U Q
+
_output_shapes
:���������
"
_user_specified_name
features
�8
�
while_body_340252
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_68_matmul_readvariableop_resource_0:	�H
5while_lstm_cell_68_matmul_1_readvariableop_resource_0:	l�C
4while_lstm_cell_68_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_68_matmul_readvariableop_resource:	�F
3while_lstm_cell_68_matmul_1_readvariableop_resource:	l�A
2while_lstm_cell_68_biasadd_readvariableop_resource:	���)while/lstm_cell_68/BiasAdd/ReadVariableOp�(while/lstm_cell_68/MatMul/ReadVariableOp�*while/lstm_cell_68/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
(while/lstm_cell_68/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_68_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_68/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_68_matmul_1_readvariableop_resource_0*
_output_shapes
:	l�*
dtype0�
while/lstm_cell_68/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_68/addAddV2#while/lstm_cell_68/MatMul:product:0%while/lstm_cell_68/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_68_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_68/BiasAddBiasAddwhile/lstm_cell_68/add:z:01while/lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
"while/lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_68/splitSplit+while/lstm_cell_68/split/split_dim:output:0#while/lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������l:���������l:���������l:���������l*
	num_splitz
while/lstm_cell_68/SigmoidSigmoid!while/lstm_cell_68/split:output:0*
T0*'
_output_shapes
:���������l|
while/lstm_cell_68/Sigmoid_1Sigmoid!while/lstm_cell_68/split:output:1*
T0*'
_output_shapes
:���������l�
while/lstm_cell_68/mulMul while/lstm_cell_68/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������lt
while/lstm_cell_68/ReluRelu!while/lstm_cell_68/split:output:2*
T0*'
_output_shapes
:���������l�
while/lstm_cell_68/mul_1Mulwhile/lstm_cell_68/Sigmoid:y:0%while/lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:���������l�
while/lstm_cell_68/add_1AddV2while/lstm_cell_68/mul:z:0while/lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:���������l|
while/lstm_cell_68/Sigmoid_2Sigmoid!while/lstm_cell_68/split:output:3*
T0*'
_output_shapes
:���������lq
while/lstm_cell_68/Relu_1Reluwhile/lstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:���������l�
while/lstm_cell_68/mul_2Mul while/lstm_cell_68/Sigmoid_2:y:0'while/lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:���������l�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_68/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :���y
while/Identity_4Identitywhile/lstm_cell_68/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������ly
while/Identity_5Identitywhile/lstm_cell_68/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������l�

while/NoOpNoOp*^while/lstm_cell_68/BiasAdd/ReadVariableOp)^while/lstm_cell_68/MatMul/ReadVariableOp+^while/lstm_cell_68/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_68_biasadd_readvariableop_resource4while_lstm_cell_68_biasadd_readvariableop_resource_0"l
3while_lstm_cell_68_matmul_1_readvariableop_resource5while_lstm_cell_68_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_68_matmul_readvariableop_resource3while_lstm_cell_68_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������l:���������l: : : : : 2V
)while/lstm_cell_68/BiasAdd/ReadVariableOp)while/lstm_cell_68/BiasAdd/ReadVariableOp2T
(while/lstm_cell_68/MatMul/ReadVariableOp(while/lstm_cell_68/MatMul/ReadVariableOp2X
*while/lstm_cell_68/MatMul_1/ReadVariableOp*while/lstm_cell_68/MatMul_1/ReadVariableOp: 
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
:���������l:-)
'
_output_shapes
:���������l:

_output_shapes
: :

_output_shapes
: 
�

c
G__inference_reshape_104_layer_call_and_return_conditional_losses_341772

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:���������\
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�)
�
`__inference_fixed_adjacency_graph_convolution_69_layer_call_and_return_conditional_losses_339586
features1
shape_1_readvariableop_resource:1
shape_3_readvariableop_resource:
-
add_readvariableop_resource:
identity��add/ReadVariableOp�transpose_1/ReadVariableOp�transpose_3/ReadVariableOpc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          o
	transpose	Transposefeaturestranspose/perm:output:0*
T0*+
_output_shapes
:���������
B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:Q
unstackUnpackShape:output:0*
T0*
_output_shapes
: : : *	
numv
Shape_1/ReadVariableOpReadVariableOpshape_1_readvariableop_resource*
_output_shapes

:*
dtype0X
Shape_1Const*
_output_shapes
:*
dtype0*
valueB"      S
	unstack_1UnpackShape_1:output:0*
T0*
_output_shapes
: : *	
num^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"����   k
ReshapeReshapetranspose:y:0Reshape/shape:output:0*
T0*'
_output_shapes
:���������z
transpose_1/ReadVariableOpReadVariableOpshape_1_readvariableop_resource*
_output_shapes

:*
dtype0a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       �
transpose_1	Transpose"transpose_1/ReadVariableOp:value:0transpose_1/perm:output:0*
T0*
_output_shapes

:`
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"   ����h
	Reshape_1Reshapetranspose_1:y:0Reshape_1/shape:output:0*
T0*
_output_shapes

:h
MatMulMatMulReshape:output:0Reshape_1:output:0*
T0*'
_output_shapes
:���������S
Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
S
Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
Reshape_2/shapePackunstack:output:0Reshape_2/shape/1:output:0Reshape_2/shape/2:output:0*
N*
T0*
_output_shapes
:v
	Reshape_2ReshapeMatMul:product:0Reshape_2/shape:output:0*
T0*+
_output_shapes
:���������
e
transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
transpose_2	TransposeReshape_2:output:0transpose_2/perm:output:0*
T0*+
_output_shapes
:���������
F
Shape_2Shapetranspose_2:y:0*
T0*
_output_shapes
:U
	unstack_2UnpackShape_2:output:0*
T0*
_output_shapes
: : : *	
numv
Shape_3/ReadVariableOpReadVariableOpshape_3_readvariableop_resource*
_output_shapes

:
*
dtype0X
Shape_3Const*
_output_shapes
:*
dtype0*
valueB"
      S
	unstack_3UnpackShape_3:output:0*
T0*
_output_shapes
: : *	
num`
Reshape_3/shapeConst*
_output_shapes
:*
dtype0*
valueB"����
   q
	Reshape_3Reshapetranspose_2:y:0Reshape_3/shape:output:0*
T0*'
_output_shapes
:���������
z
transpose_3/ReadVariableOpReadVariableOpshape_3_readvariableop_resource*
_output_shapes

:
*
dtype0a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       �
transpose_3	Transpose"transpose_3/ReadVariableOp:value:0transpose_3/perm:output:0*
T0*
_output_shapes

:
`
Reshape_4/shapeConst*
_output_shapes
:*
dtype0*
valueB"
   ����h
	Reshape_4Reshapetranspose_3:y:0Reshape_4/shape:output:0*
T0*
_output_shapes

:
l
MatMul_1MatMulReshape_3:output:0Reshape_4:output:0*
T0*'
_output_shapes
:���������S
Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
value	B :S
Reshape_5/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
Reshape_5/shapePackunstack_2:output:0Reshape_5/shape/1:output:0Reshape_5/shape/2:output:0*
N*
T0*
_output_shapes
:x
	Reshape_5ReshapeMatMul_1:product:0Reshape_5/shape:output:0*
T0*+
_output_shapes
:���������n
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes

:*
dtype0r
addAddV2Reshape_5:output:0add/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������K
ReluReluadd:z:0*
T0*+
_output_shapes
:���������e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp^add/ReadVariableOp^transpose_1/ReadVariableOp^transpose_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������
: : : 2(
add/ReadVariableOpadd/ReadVariableOp28
transpose_1/ReadVariableOptranspose_1/ReadVariableOp28
transpose_3/ReadVariableOptranspose_3/ReadVariableOp:U Q
+
_output_shapes
:���������

"
_user_specified_name
features
�
�
(__inference_lstm_69_layer_call_fn_342399
inputs_0
unknown:	l�
	unknown_0:	h�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������h*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_69_layer_call_and_return_conditional_losses_339246o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������h`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������l: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������l
"
_user_specified_name
inputs/0
�
�
while_cond_342303
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_342303___redundant_placeholder04
0while_while_cond_342303___redundant_placeholder14
0while_while_cond_342303___redundant_placeholder24
0while_while_cond_342303___redundant_placeholder3
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
@: : : : :���������l:���������l: ::::: 
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
:���������l:-)
'
_output_shapes
:���������l:

_output_shapes
: :

_output_shapes
:
�8
�
while_body_342018
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_68_matmul_readvariableop_resource_0:	�H
5while_lstm_cell_68_matmul_1_readvariableop_resource_0:	l�C
4while_lstm_cell_68_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_68_matmul_readvariableop_resource:	�F
3while_lstm_cell_68_matmul_1_readvariableop_resource:	l�A
2while_lstm_cell_68_biasadd_readvariableop_resource:	���)while/lstm_cell_68/BiasAdd/ReadVariableOp�(while/lstm_cell_68/MatMul/ReadVariableOp�*while/lstm_cell_68/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
(while/lstm_cell_68/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_68_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_68/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_68_matmul_1_readvariableop_resource_0*
_output_shapes
:	l�*
dtype0�
while/lstm_cell_68/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_68/addAddV2#while/lstm_cell_68/MatMul:product:0%while/lstm_cell_68/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_68_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_68/BiasAddBiasAddwhile/lstm_cell_68/add:z:01while/lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
"while/lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_68/splitSplit+while/lstm_cell_68/split/split_dim:output:0#while/lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������l:���������l:���������l:���������l*
	num_splitz
while/lstm_cell_68/SigmoidSigmoid!while/lstm_cell_68/split:output:0*
T0*'
_output_shapes
:���������l|
while/lstm_cell_68/Sigmoid_1Sigmoid!while/lstm_cell_68/split:output:1*
T0*'
_output_shapes
:���������l�
while/lstm_cell_68/mulMul while/lstm_cell_68/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������lt
while/lstm_cell_68/ReluRelu!while/lstm_cell_68/split:output:2*
T0*'
_output_shapes
:���������l�
while/lstm_cell_68/mul_1Mulwhile/lstm_cell_68/Sigmoid:y:0%while/lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:���������l�
while/lstm_cell_68/add_1AddV2while/lstm_cell_68/mul:z:0while/lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:���������l|
while/lstm_cell_68/Sigmoid_2Sigmoid!while/lstm_cell_68/split:output:3*
T0*'
_output_shapes
:���������lq
while/lstm_cell_68/Relu_1Reluwhile/lstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:���������l�
while/lstm_cell_68/mul_2Mul while/lstm_cell_68/Sigmoid_2:y:0'while/lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:���������l�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_68/mul_2:z:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :���y
while/Identity_4Identitywhile/lstm_cell_68/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������ly
while/Identity_5Identitywhile/lstm_cell_68/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������l�

while/NoOpNoOp*^while/lstm_cell_68/BiasAdd/ReadVariableOp)^while/lstm_cell_68/MatMul/ReadVariableOp+^while/lstm_cell_68/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_68_biasadd_readvariableop_resource4while_lstm_cell_68_biasadd_readvariableop_resource_0"l
3while_lstm_cell_68_matmul_1_readvariableop_resource5while_lstm_cell_68_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_68_matmul_readvariableop_resource3while_lstm_cell_68_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������l:���������l: : : : : 2V
)while/lstm_cell_68/BiasAdd/ReadVariableOp)while/lstm_cell_68/BiasAdd/ReadVariableOp2T
(while/lstm_cell_68/MatMul/ReadVariableOp(while/lstm_cell_68/MatMul/ReadVariableOp2X
*while/lstm_cell_68/MatMul_1/ReadVariableOp*while/lstm_cell_68/MatMul_1/ReadVariableOp: 
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
:���������l:-)
'
_output_shapes
:���������l:

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_342490
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_342490___redundant_placeholder04
0while_while_cond_342490___redundant_placeholder14
0while_while_cond_342490___redundant_placeholder24
0while_while_cond_342490___redundant_placeholder3
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
@: : : : :���������h:���������h: ::::: 
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
:���������h:-)
'
_output_shapes
:���������h:

_output_shapes
: :

_output_shapes
:
�J
�
C__inference_lstm_68_layer_call_and_return_conditional_losses_339768

inputs>
+lstm_cell_68_matmul_readvariableop_resource:	�@
-lstm_cell_68_matmul_1_readvariableop_resource:	l�;
,lstm_cell_68_biasadd_readvariableop_resource:	�
identity��#lstm_cell_68/BiasAdd/ReadVariableOp�"lstm_cell_68/MatMul/ReadVariableOp�$lstm_cell_68/MatMul_1/ReadVariableOp�while;
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
valueB:�
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
value	B :ls
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
:���������lR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :lw
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
:���������lc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������D
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
"lstm_cell_68/MatMul/ReadVariableOpReadVariableOp+lstm_cell_68_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_68/MatMulMatMulstrided_slice_2:output:0*lstm_cell_68/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$lstm_cell_68/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_68_matmul_1_readvariableop_resource*
_output_shapes
:	l�*
dtype0�
lstm_cell_68/MatMul_1MatMulzeros:output:0,lstm_cell_68/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_68/addAddV2lstm_cell_68/MatMul:product:0lstm_cell_68/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
#lstm_cell_68/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_68_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_68/BiasAddBiasAddlstm_cell_68/add:z:0+lstm_cell_68/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������^
lstm_cell_68/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_68/splitSplit%lstm_cell_68/split/split_dim:output:0lstm_cell_68/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������l:���������l:���������l:���������l*
	num_splitn
lstm_cell_68/SigmoidSigmoidlstm_cell_68/split:output:0*
T0*'
_output_shapes
:���������lp
lstm_cell_68/Sigmoid_1Sigmoidlstm_cell_68/split:output:1*
T0*'
_output_shapes
:���������lw
lstm_cell_68/mulMullstm_cell_68/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������lh
lstm_cell_68/ReluRelulstm_cell_68/split:output:2*
T0*'
_output_shapes
:���������l�
lstm_cell_68/mul_1Mullstm_cell_68/Sigmoid:y:0lstm_cell_68/Relu:activations:0*
T0*'
_output_shapes
:���������l{
lstm_cell_68/add_1AddV2lstm_cell_68/mul:z:0lstm_cell_68/mul_1:z:0*
T0*'
_output_shapes
:���������lp
lstm_cell_68/Sigmoid_2Sigmoidlstm_cell_68/split:output:3*
T0*'
_output_shapes
:���������le
lstm_cell_68/Relu_1Relulstm_cell_68/add_1:z:0*
T0*'
_output_shapes
:���������l�
lstm_cell_68/mul_2Mullstm_cell_68/Sigmoid_2:y:0!lstm_cell_68/Relu_1:activations:0*
T0*'
_output_shapes
:���������ln
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����l   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_68_matmul_readvariableop_resource-lstm_cell_68_matmul_1_readvariableop_resource,lstm_cell_68_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������l:���������l: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_339684*
condR
while_cond_339683*K
output_shapes:
8: : : : :���������l:���������l: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����l   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������l*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������l*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������l[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������l�
NoOpNoOp$^lstm_cell_68/BiasAdd/ReadVariableOp#^lstm_cell_68/MatMul/ReadVariableOp%^lstm_cell_68/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2J
#lstm_cell_68/BiasAdd/ReadVariableOp#lstm_cell_68/BiasAdd/ReadVariableOp2H
"lstm_cell_68/MatMul/ReadVariableOp"lstm_cell_68/MatMul/ReadVariableOp2L
$lstm_cell_68/MatMul_1/ReadVariableOp$lstm_cell_68/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
lstm_68_while_cond_340880,
(lstm_68_while_lstm_68_while_loop_counter2
.lstm_68_while_lstm_68_while_maximum_iterations
lstm_68_while_placeholder
lstm_68_while_placeholder_1
lstm_68_while_placeholder_2
lstm_68_while_placeholder_3.
*lstm_68_while_less_lstm_68_strided_slice_1D
@lstm_68_while_lstm_68_while_cond_340880___redundant_placeholder0D
@lstm_68_while_lstm_68_while_cond_340880___redundant_placeholder1D
@lstm_68_while_lstm_68_while_cond_340880___redundant_placeholder2D
@lstm_68_while_lstm_68_while_cond_340880___redundant_placeholder3
lstm_68_while_identity
�
lstm_68/while/LessLesslstm_68_while_placeholder*lstm_68_while_less_lstm_68_strided_slice_1*
T0*
_output_shapes
: [
lstm_68/while/IdentityIdentitylstm_68/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_68_while_identitylstm_68/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������l:���������l: ::::: 
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
:���������l:-)
'
_output_shapes
:���������l:

_output_shapes
: :

_output_shapes
:"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
A
input_695
serving_default_input_69:0���������<
dense_340
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer-0
layer-1
layer-2
layer_with_weights-0
layer-3
layer_with_weights-1
layer-4
layer-5
layer-6
layer-7
	layer_with_weights-2
	layer-8

layer_with_weights-3

layer-9
layer-10
layer_with_weights-4
layer-11
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
(
	keras_api"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
�
A

kernel
bias
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses"
_tf_keras_layer
�
&A

'kernel
(bias
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses"
_tf_keras_layer
�
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses"
_tf_keras_layer
�
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses"
_tf_keras_layer
�
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses"
_tf_keras_layer
�
Acell
B
state_spec
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G_random_generator
H__call__
*I&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
�
Jcell
K
state_spec
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P_random_generator
Q__call__
*R&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
�
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W_random_generator
X__call__
*Y&call_and_return_all_conditional_losses"
_tf_keras_layer
�

Zkernel
[bias
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses"
_tf_keras_layer
�
biter

cbeta_1

dbeta_2
	edecay
flearning_ratem�m�'m�(m�Zm�[m�gm�hm�im�jm�km�lm�v�v�'v�(v�Zv�[v�gv�hv�iv�jv�kv�lv�"
	optimizer
�
0
1
2
'3
(4
&5
g6
h7
i8
j9
k10
l11
Z12
[13"
trackable_list_wrapper
v
0
1
'2
(3
g4
h5
i6
j7
k8
l9
Z10
[11"
trackable_list_wrapper
 "
trackable_list_wrapper
�
mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�2�
)__inference_model_34_layer_call_fn_339982
)__inference_model_34_layer_call_fn_340657
)__inference_model_34_layer_call_fn_340690
)__inference_model_34_layer_call_fn_340530�
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
D__inference_model_34_layer_call_and_return_conditional_losses_341112
D__inference_model_34_layer_call_and_return_conditional_losses_341541
D__inference_model_34_layer_call_and_return_conditional_losses_340574
D__inference_model_34_layer_call_and_return_conditional_losses_340618�
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
!__inference__wrapped_model_338733input_69"�
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
,
rserving_default"
signature_map
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
snon_trainable_variables

tlayers
umetrics
vlayer_regularization_losses
wlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�2�
,__inference_reshape_102_layer_call_fn_341581�
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
G__inference_reshape_102_layer_call_and_return_conditional_losses_341594�
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
6:42&fixed_adjacency_graph_convolution_68/A
=:;
2+fixed_adjacency_graph_convolution_68/kernel
;:92)fixed_adjacency_graph_convolution_68/bias
5
0
1
2"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
xnon_trainable_variables

ylayers
zmetrics
{layer_regularization_losses
|layer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses"
_generic_user_object
�2�
E__inference_fixed_adjacency_graph_convolution_68_layer_call_fn_341605�
���
FullArgSpec
args�
jself

jfeatures
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
�2�
`__inference_fixed_adjacency_graph_convolution_68_layer_call_and_return_conditional_losses_341659�
���
FullArgSpec
args�
jself

jfeatures
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
6:42&fixed_adjacency_graph_convolution_69/A
=:;
2+fixed_adjacency_graph_convolution_69/kernel
;:92)fixed_adjacency_graph_convolution_69/bias
5
'0
(1
&2"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
}non_trainable_variables

~layers
metrics
 �layer_regularization_losses
�layer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
�2�
E__inference_fixed_adjacency_graph_convolution_69_layer_call_fn_341670�
���
FullArgSpec
args�
jself

jfeatures
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
�2�
`__inference_fixed_adjacency_graph_convolution_69_layer_call_and_return_conditional_losses_341724�
���
FullArgSpec
args�
jself

jfeatures
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
�2�
,__inference_reshape_103_layer_call_fn_341729�
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
G__inference_reshape_103_layer_call_and_return_conditional_losses_341743�
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses"
_generic_user_object
�2�
+__inference_permute_34_layer_call_fn_341748�
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
F__inference_permute_34_layer_call_and_return_conditional_losses_341754�
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses"
_generic_user_object
�2�
,__inference_reshape_104_layer_call_fn_341759�
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
G__inference_reshape_104_layer_call_and_return_conditional_losses_341772�
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
�
�
state_size

gkernel
hrecurrent_kernel
ibias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�_random_generator
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
g0
h1
i2"
trackable_list_wrapper
5
g0
h1
i2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�states
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
�2�
(__inference_lstm_68_layer_call_fn_341783
(__inference_lstm_68_layer_call_fn_341794
(__inference_lstm_68_layer_call_fn_341805
(__inference_lstm_68_layer_call_fn_341816�
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
C__inference_lstm_68_layer_call_and_return_conditional_losses_341959
C__inference_lstm_68_layer_call_and_return_conditional_losses_342102
C__inference_lstm_68_layer_call_and_return_conditional_losses_342245
C__inference_lstm_68_layer_call_and_return_conditional_losses_342388�
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
�
�
state_size

jkernel
krecurrent_kernel
lbias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�_random_generator
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
j0
k1
l2"
trackable_list_wrapper
5
j0
k1
l2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�states
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
�2�
(__inference_lstm_69_layer_call_fn_342399
(__inference_lstm_69_layer_call_fn_342410
(__inference_lstm_69_layer_call_fn_342421
(__inference_lstm_69_layer_call_fn_342432�
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
C__inference_lstm_69_layer_call_and_return_conditional_losses_342575
C__inference_lstm_69_layer_call_and_return_conditional_losses_342718
C__inference_lstm_69_layer_call_and_return_conditional_losses_342861
C__inference_lstm_69_layer_call_and_return_conditional_losses_343004�
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
�2�
+__inference_dropout_34_layer_call_fn_343009
+__inference_dropout_34_layer_call_fn_343014�
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
F__inference_dropout_34_layer_call_and_return_conditional_losses_343019
F__inference_dropout_34_layer_call_and_return_conditional_losses_343031�
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
!:h2dense_34/kernel
:2dense_34/bias
.
Z0
[1"
trackable_list_wrapper
.
Z0
[1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses"
_generic_user_object
�2�
)__inference_dense_34_layer_call_fn_343040�
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
D__inference_dense_34_layer_call_and_return_conditional_losses_343051�
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
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
.:,	�2lstm_68/lstm_cell_68/kernel
8:6	l�2%lstm_68/lstm_cell_68/recurrent_kernel
(:&�2lstm_68/lstm_cell_68/bias
.:,	l�2lstm_69/lstm_cell_69/kernel
8:6	h�2%lstm_69/lstm_cell_69/recurrent_kernel
(:&�2lstm_69/lstm_cell_69/bias
.
0
&1"
trackable_list_wrapper
v
0
1
2
3
4
5
6
7
	8

9
10
11"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
$__inference_signature_wrapper_341576input_69"�
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
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
&0"
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
g0
h1
i2"
trackable_list_wrapper
5
g0
h1
i2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
�2�
-__inference_lstm_cell_68_layer_call_fn_343068
-__inference_lstm_cell_68_layer_call_fn_343085�
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
H__inference_lstm_cell_68_layer_call_and_return_conditional_losses_343117
H__inference_lstm_cell_68_layer_call_and_return_conditional_losses_343149�
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
A0"
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
j0
k1
l2"
trackable_list_wrapper
5
j0
k1
l2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
�2�
-__inference_lstm_cell_69_layer_call_fn_343166
-__inference_lstm_cell_69_layer_call_fn_343183�
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
H__inference_lstm_cell_69_layer_call_and_return_conditional_losses_343215
H__inference_lstm_cell_69_layer_call_and_return_conditional_losses_343247�
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
J0"
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
B:@
22Adam/fixed_adjacency_graph_convolution_68/kernel/m
@:>20Adam/fixed_adjacency_graph_convolution_68/bias/m
B:@
22Adam/fixed_adjacency_graph_convolution_69/kernel/m
@:>20Adam/fixed_adjacency_graph_convolution_69/bias/m
&:$h2Adam/dense_34/kernel/m
 :2Adam/dense_34/bias/m
3:1	�2"Adam/lstm_68/lstm_cell_68/kernel/m
=:;	l�2,Adam/lstm_68/lstm_cell_68/recurrent_kernel/m
-:+�2 Adam/lstm_68/lstm_cell_68/bias/m
3:1	l�2"Adam/lstm_69/lstm_cell_69/kernel/m
=:;	h�2,Adam/lstm_69/lstm_cell_69/recurrent_kernel/m
-:+�2 Adam/lstm_69/lstm_cell_69/bias/m
B:@
22Adam/fixed_adjacency_graph_convolution_68/kernel/v
@:>20Adam/fixed_adjacency_graph_convolution_68/bias/v
B:@
22Adam/fixed_adjacency_graph_convolution_69/kernel/v
@:>20Adam/fixed_adjacency_graph_convolution_69/bias/v
&:$h2Adam/dense_34/kernel/v
 :2Adam/dense_34/bias/v
3:1	�2"Adam/lstm_68/lstm_cell_68/kernel/v
=:;	l�2,Adam/lstm_68/lstm_cell_68/recurrent_kernel/v
-:+�2 Adam/lstm_68/lstm_cell_68/bias/v
3:1	l�2"Adam/lstm_69/lstm_cell_69/kernel/v
=:;	h�2,Adam/lstm_69/lstm_cell_69/recurrent_kernel/v
-:+�2 Adam/lstm_69/lstm_cell_69/bias/v�
!__inference__wrapped_model_338733|&'(ghijklZ[5�2
+�(
&�#
input_69���������
� "3�0
.
dense_34"�
dense_34����������
D__inference_dense_34_layer_call_and_return_conditional_losses_343051\Z[/�,
%�"
 �
inputs���������h
� "%�"
�
0���������
� |
)__inference_dense_34_layer_call_fn_343040OZ[/�,
%�"
 �
inputs���������h
� "�����������
F__inference_dropout_34_layer_call_and_return_conditional_losses_343019\3�0
)�&
 �
inputs���������h
p 
� "%�"
�
0���������h
� �
F__inference_dropout_34_layer_call_and_return_conditional_losses_343031\3�0
)�&
 �
inputs���������h
p
� "%�"
�
0���������h
� ~
+__inference_dropout_34_layer_call_fn_343009O3�0
)�&
 �
inputs���������h
p 
� "����������h~
+__inference_dropout_34_layer_call_fn_343014O3�0
)�&
 �
inputs���������h
p
� "����������h�
`__inference_fixed_adjacency_graph_convolution_68_layer_call_and_return_conditional_losses_341659g5�2
+�(
&�#
features���������
� ")�&
�
0���������

� �
E__inference_fixed_adjacency_graph_convolution_68_layer_call_fn_341605Z5�2
+�(
&�#
features���������
� "����������
�
`__inference_fixed_adjacency_graph_convolution_69_layer_call_and_return_conditional_losses_341724g&'(5�2
+�(
&�#
features���������

� ")�&
�
0���������
� �
E__inference_fixed_adjacency_graph_convolution_69_layer_call_fn_341670Z&'(5�2
+�(
&�#
features���������

� "�����������
C__inference_lstm_68_layer_call_and_return_conditional_losses_341959�ghiO�L
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
0������������������l
� �
C__inference_lstm_68_layer_call_and_return_conditional_losses_342102�ghiO�L
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
0������������������l
� �
C__inference_lstm_68_layer_call_and_return_conditional_losses_342245qghi?�<
5�2
$�!
inputs���������

 
p 

 
� ")�&
�
0���������l
� �
C__inference_lstm_68_layer_call_and_return_conditional_losses_342388qghi?�<
5�2
$�!
inputs���������

 
p

 
� ")�&
�
0���������l
� �
(__inference_lstm_68_layer_call_fn_341783}ghiO�L
E�B
4�1
/�,
inputs/0������������������

 
p 

 
� "%�"������������������l�
(__inference_lstm_68_layer_call_fn_341794}ghiO�L
E�B
4�1
/�,
inputs/0������������������

 
p

 
� "%�"������������������l�
(__inference_lstm_68_layer_call_fn_341805dghi?�<
5�2
$�!
inputs���������

 
p 

 
� "����������l�
(__inference_lstm_68_layer_call_fn_341816dghi?�<
5�2
$�!
inputs���������

 
p

 
� "����������l�
C__inference_lstm_69_layer_call_and_return_conditional_losses_342575}jklO�L
E�B
4�1
/�,
inputs/0������������������l

 
p 

 
� "%�"
�
0���������h
� �
C__inference_lstm_69_layer_call_and_return_conditional_losses_342718}jklO�L
E�B
4�1
/�,
inputs/0������������������l

 
p

 
� "%�"
�
0���������h
� �
C__inference_lstm_69_layer_call_and_return_conditional_losses_342861mjkl?�<
5�2
$�!
inputs���������l

 
p 

 
� "%�"
�
0���������h
� �
C__inference_lstm_69_layer_call_and_return_conditional_losses_343004mjkl?�<
5�2
$�!
inputs���������l

 
p

 
� "%�"
�
0���������h
� �
(__inference_lstm_69_layer_call_fn_342399pjklO�L
E�B
4�1
/�,
inputs/0������������������l

 
p 

 
� "����������h�
(__inference_lstm_69_layer_call_fn_342410pjklO�L
E�B
4�1
/�,
inputs/0������������������l

 
p

 
� "����������h�
(__inference_lstm_69_layer_call_fn_342421`jkl?�<
5�2
$�!
inputs���������l

 
p 

 
� "����������h�
(__inference_lstm_69_layer_call_fn_342432`jkl?�<
5�2
$�!
inputs���������l

 
p

 
� "����������h�
H__inference_lstm_cell_68_layer_call_and_return_conditional_losses_343117�ghi��}
v�s
 �
inputs���������
K�H
"�
states/0���������l
"�
states/1���������l
p 
� "s�p
i�f
�
0/0���������l
E�B
�
0/1/0���������l
�
0/1/1���������l
� �
H__inference_lstm_cell_68_layer_call_and_return_conditional_losses_343149�ghi��}
v�s
 �
inputs���������
K�H
"�
states/0���������l
"�
states/1���������l
p
� "s�p
i�f
�
0/0���������l
E�B
�
0/1/0���������l
�
0/1/1���������l
� �
-__inference_lstm_cell_68_layer_call_fn_343068�ghi��}
v�s
 �
inputs���������
K�H
"�
states/0���������l
"�
states/1���������l
p 
� "c�`
�
0���������l
A�>
�
1/0���������l
�
1/1���������l�
-__inference_lstm_cell_68_layer_call_fn_343085�ghi��}
v�s
 �
inputs���������
K�H
"�
states/0���������l
"�
states/1���������l
p
� "c�`
�
0���������l
A�>
�
1/0���������l
�
1/1���������l�
H__inference_lstm_cell_69_layer_call_and_return_conditional_losses_343215�jkl��}
v�s
 �
inputs���������l
K�H
"�
states/0���������h
"�
states/1���������h
p 
� "s�p
i�f
�
0/0���������h
E�B
�
0/1/0���������h
�
0/1/1���������h
� �
H__inference_lstm_cell_69_layer_call_and_return_conditional_losses_343247�jkl��}
v�s
 �
inputs���������l
K�H
"�
states/0���������h
"�
states/1���������h
p
� "s�p
i�f
�
0/0���������h
E�B
�
0/1/0���������h
�
0/1/1���������h
� �
-__inference_lstm_cell_69_layer_call_fn_343166�jkl��}
v�s
 �
inputs���������l
K�H
"�
states/0���������h
"�
states/1���������h
p 
� "c�`
�
0���������h
A�>
�
1/0���������h
�
1/1���������h�
-__inference_lstm_cell_69_layer_call_fn_343183�jkl��}
v�s
 �
inputs���������l
K�H
"�
states/0���������h
"�
states/1���������h
p
� "c�`
�
0���������h
A�>
�
1/0���������h
�
1/1���������h�
D__inference_model_34_layer_call_and_return_conditional_losses_340574v&'(ghijklZ[=�:
3�0
&�#
input_69���������
p 

 
� "%�"
�
0���������
� �
D__inference_model_34_layer_call_and_return_conditional_losses_340618v&'(ghijklZ[=�:
3�0
&�#
input_69���������
p

 
� "%�"
�
0���������
� �
D__inference_model_34_layer_call_and_return_conditional_losses_341112t&'(ghijklZ[;�8
1�.
$�!
inputs���������
p 

 
� "%�"
�
0���������
� �
D__inference_model_34_layer_call_and_return_conditional_losses_341541t&'(ghijklZ[;�8
1�.
$�!
inputs���������
p

 
� "%�"
�
0���������
� �
)__inference_model_34_layer_call_fn_339982i&'(ghijklZ[=�:
3�0
&�#
input_69���������
p 

 
� "�����������
)__inference_model_34_layer_call_fn_340530i&'(ghijklZ[=�:
3�0
&�#
input_69���������
p

 
� "�����������
)__inference_model_34_layer_call_fn_340657g&'(ghijklZ[;�8
1�.
$�!
inputs���������
p 

 
� "�����������
)__inference_model_34_layer_call_fn_340690g&'(ghijklZ[;�8
1�.
$�!
inputs���������
p

 
� "�����������
F__inference_permute_34_layer_call_and_return_conditional_losses_341754�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
+__inference_permute_34_layer_call_fn_341748�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
G__inference_reshape_102_layer_call_and_return_conditional_losses_341594d7�4
-�*
(�%
inputs���������
� ")�&
�
0���������
� �
,__inference_reshape_102_layer_call_fn_341581W7�4
-�*
(�%
inputs���������
� "�����������
G__inference_reshape_103_layer_call_and_return_conditional_losses_341743d3�0
)�&
$�!
inputs���������
� "-�*
#� 
0���������
� �
,__inference_reshape_103_layer_call_fn_341729W3�0
)�&
$�!
inputs���������
� " �����������
G__inference_reshape_104_layer_call_and_return_conditional_losses_341772d7�4
-�*
(�%
inputs���������
� ")�&
�
0���������
� �
,__inference_reshape_104_layer_call_fn_341759W7�4
-�*
(�%
inputs���������
� "�����������
$__inference_signature_wrapper_341576�&'(ghijklZ[A�>
� 
7�4
2
input_69&�#
input_69���������"3�0
.
dense_34"�
dense_34���������