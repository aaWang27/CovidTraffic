��!
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
�"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28��
x
dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:#*
shared_namedense_6/kernel
q
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel*
_output_shapes

:#*
dtype0
p
dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_6/bias
i
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
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
�
lstm_23/lstm_cell_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*,
shared_namelstm_23/lstm_cell_23/kernel
�
/lstm_23/lstm_cell_23/kernel/Read/ReadVariableOpReadVariableOplstm_23/lstm_cell_23/kernel*
_output_shapes
:	�*
dtype0
�
%lstm_23/lstm_cell_23/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	#�*6
shared_name'%lstm_23/lstm_cell_23/recurrent_kernel
�
9lstm_23/lstm_cell_23/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_23/lstm_cell_23/recurrent_kernel*
_output_shapes
:	#�*
dtype0
�
lstm_23/lstm_cell_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�**
shared_namelstm_23/lstm_cell_23/bias
�
-lstm_23/lstm_cell_23/bias/Read/ReadVariableOpReadVariableOplstm_23/lstm_cell_23/bias*
_output_shapes	
:�*
dtype0
�
lstm_24/lstm_cell_24/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	#�*,
shared_namelstm_24/lstm_cell_24/kernel
�
/lstm_24/lstm_cell_24/kernel/Read/ReadVariableOpReadVariableOplstm_24/lstm_cell_24/kernel*
_output_shapes
:	#�*
dtype0
�
%lstm_24/lstm_cell_24/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	#�*6
shared_name'%lstm_24/lstm_cell_24/recurrent_kernel
�
9lstm_24/lstm_cell_24/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_24/lstm_cell_24/recurrent_kernel*
_output_shapes
:	#�*
dtype0
�
lstm_24/lstm_cell_24/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�**
shared_namelstm_24/lstm_cell_24/bias
�
-lstm_24/lstm_cell_24/bias/Read/ReadVariableOpReadVariableOplstm_24/lstm_cell_24/bias*
_output_shapes	
:�*
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
Adam/dense_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:#*&
shared_nameAdam/dense_6/kernel/m

)Adam/dense_6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/m*
_output_shapes

:#*
dtype0
~
Adam/dense_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_6/bias/m
w
'Adam/dense_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/m*
_output_shapes
:*
dtype0
�
"Adam/lstm_23/lstm_cell_23/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*3
shared_name$"Adam/lstm_23/lstm_cell_23/kernel/m
�
6Adam/lstm_23/lstm_cell_23/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_23/lstm_cell_23/kernel/m*
_output_shapes
:	�*
dtype0
�
,Adam/lstm_23/lstm_cell_23/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	#�*=
shared_name.,Adam/lstm_23/lstm_cell_23/recurrent_kernel/m
�
@Adam/lstm_23/lstm_cell_23/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_23/lstm_cell_23/recurrent_kernel/m*
_output_shapes
:	#�*
dtype0
�
 Adam/lstm_23/lstm_cell_23/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*1
shared_name" Adam/lstm_23/lstm_cell_23/bias/m
�
4Adam/lstm_23/lstm_cell_23/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_23/lstm_cell_23/bias/m*
_output_shapes	
:�*
dtype0
�
"Adam/lstm_24/lstm_cell_24/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	#�*3
shared_name$"Adam/lstm_24/lstm_cell_24/kernel/m
�
6Adam/lstm_24/lstm_cell_24/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_24/lstm_cell_24/kernel/m*
_output_shapes
:	#�*
dtype0
�
,Adam/lstm_24/lstm_cell_24/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	#�*=
shared_name.,Adam/lstm_24/lstm_cell_24/recurrent_kernel/m
�
@Adam/lstm_24/lstm_cell_24/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_24/lstm_cell_24/recurrent_kernel/m*
_output_shapes
:	#�*
dtype0
�
 Adam/lstm_24/lstm_cell_24/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*1
shared_name" Adam/lstm_24/lstm_cell_24/bias/m
�
4Adam/lstm_24/lstm_cell_24/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_24/lstm_cell_24/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/dense_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:#*&
shared_nameAdam/dense_6/kernel/v

)Adam/dense_6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/v*
_output_shapes

:#*
dtype0
~
Adam/dense_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_6/bias/v
w
'Adam/dense_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/v*
_output_shapes
:*
dtype0
�
"Adam/lstm_23/lstm_cell_23/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*3
shared_name$"Adam/lstm_23/lstm_cell_23/kernel/v
�
6Adam/lstm_23/lstm_cell_23/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_23/lstm_cell_23/kernel/v*
_output_shapes
:	�*
dtype0
�
,Adam/lstm_23/lstm_cell_23/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	#�*=
shared_name.,Adam/lstm_23/lstm_cell_23/recurrent_kernel/v
�
@Adam/lstm_23/lstm_cell_23/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_23/lstm_cell_23/recurrent_kernel/v*
_output_shapes
:	#�*
dtype0
�
 Adam/lstm_23/lstm_cell_23/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*1
shared_name" Adam/lstm_23/lstm_cell_23/bias/v
�
4Adam/lstm_23/lstm_cell_23/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_23/lstm_cell_23/bias/v*
_output_shapes	
:�*
dtype0
�
"Adam/lstm_24/lstm_cell_24/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	#�*3
shared_name$"Adam/lstm_24/lstm_cell_24/kernel/v
�
6Adam/lstm_24/lstm_cell_24/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_24/lstm_cell_24/kernel/v*
_output_shapes
:	#�*
dtype0
�
,Adam/lstm_24/lstm_cell_24/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	#�*=
shared_name.,Adam/lstm_24/lstm_cell_24/recurrent_kernel/v
�
@Adam/lstm_24/lstm_cell_24/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_24/lstm_cell_24/recurrent_kernel/v*
_output_shapes
:	#�*
dtype0
�
 Adam/lstm_24/lstm_cell_24/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*1
shared_name" Adam/lstm_24/lstm_cell_24/bias/v
�
4Adam/lstm_24/lstm_cell_24/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_24/lstm_cell_24/bias/v*
_output_shapes	
:�*
dtype0

NoOpNoOp
�8
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�7
value�7B�7 B�7
�
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
	optimizer
	variables
trainable_variables
	regularization_losses

	keras_api

signatures
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
h

 kernel
!bias
"	variables
#trainable_variables
$regularization_losses
%	keras_api
�

&beta_1

'beta_2
	(decay
)learning_rate
*iter mv!mw+mx,my-mz.m{/m|0m} v~!v+v�,v�-v�.v�/v�0v�
8
+0
,1
-2
.3
/4
05
 6
!7
8
+0
,1
-2
.3
/4
05
 6
!7
 
�
1non_trainable_variables

2layers
3metrics
4layer_regularization_losses
5layer_metrics
	variables
trainable_variables
	regularization_losses
 
�
6
state_size

+kernel
,recurrent_kernel
-bias
7	variables
8trainable_variables
9regularization_losses
:	keras_api
 

+0
,1
-2

+0
,1
-2
 
�

;states
<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics
	variables
trainable_variables
regularization_losses
 
 
 
�
Anon_trainable_variables

Blayers
Cmetrics
Dlayer_regularization_losses
Elayer_metrics
	variables
trainable_variables
regularization_losses
�
F
state_size

.kernel
/recurrent_kernel
0bias
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
 

.0
/1
02

.0
/1
02
 
�

Kstates
Lnon_trainable_variables

Mlayers
Nmetrics
Olayer_regularization_losses
Player_metrics
	variables
trainable_variables
regularization_losses
 
 
 
�
Qnon_trainable_variables

Rlayers
Smetrics
Tlayer_regularization_losses
Ulayer_metrics
	variables
trainable_variables
regularization_losses
ZX
VARIABLE_VALUEdense_6/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_6/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

 0
!1

 0
!1
 
�
Vnon_trainable_variables

Wlayers
Xmetrics
Ylayer_regularization_losses
Zlayer_metrics
"	variables
#trainable_variables
$regularization_losses
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
VARIABLE_VALUElstm_23/lstm_cell_23/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_23/lstm_cell_23/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_23/lstm_cell_23/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_24/lstm_cell_24/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_24/lstm_cell_24/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_24/lstm_cell_24/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
 
#
0
1
2
3
4

[0
\1
]2
 
 
 

+0
,1
-2

+0
,1
-2
 
�
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
7	variables
8trainable_variables
9regularization_losses
 
 

0
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
.0
/1
02

.0
/1
02
 
�
cnon_trainable_variables

dlayers
emetrics
flayer_regularization_losses
glayer_metrics
G	variables
Htrainable_variables
Iregularization_losses
 
 

0
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
4
	htotal
	icount
j	variables
k	keras_api
D
	ltotal
	mcount
n
_fn_kwargs
o	variables
p	keras_api
D
	qtotal
	rcount
s
_fn_kwargs
t	variables
u	keras_api
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

h0
i1

j	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

l0
m1

o	variables
QO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE
 

q0
r1

t	variables
}{
VARIABLE_VALUEAdam/dense_6/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_6/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_23/lstm_cell_23/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/lstm_23/lstm_cell_23/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_23/lstm_cell_23/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_24/lstm_cell_24/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/lstm_24/lstm_cell_24/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_24/lstm_cell_24/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_6/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_6/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_23/lstm_cell_23/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/lstm_23/lstm_cell_23/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_23/lstm_cell_23/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_24/lstm_cell_24/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
��
VARIABLE_VALUE,Adam/lstm_24/lstm_cell_24/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_24/lstm_cell_24/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
serving_default_lstm_23_inputPlaceholder*+
_output_shapes
:���������*
dtype0* 
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_23_inputlstm_23/lstm_cell_23/kernel%lstm_23/lstm_cell_23/recurrent_kernellstm_23/lstm_cell_23/biaslstm_24/lstm_cell_24/kernel%lstm_24/lstm_cell_24/recurrent_kernellstm_24/lstm_cell_24/biasdense_6/kerneldense_6/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *-
f(R&
$__inference_signature_wrapper_123367
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_6/kernel/Read/ReadVariableOp dense_6/bias/Read/ReadVariableOpbeta_1/Read/ReadVariableOpbeta_2/Read/ReadVariableOpdecay/Read/ReadVariableOp!learning_rate/Read/ReadVariableOpAdam/iter/Read/ReadVariableOp/lstm_23/lstm_cell_23/kernel/Read/ReadVariableOp9lstm_23/lstm_cell_23/recurrent_kernel/Read/ReadVariableOp-lstm_23/lstm_cell_23/bias/Read/ReadVariableOp/lstm_24/lstm_cell_24/kernel/Read/ReadVariableOp9lstm_24/lstm_cell_24/recurrent_kernel/Read/ReadVariableOp-lstm_24/lstm_cell_24/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOp)Adam/dense_6/kernel/m/Read/ReadVariableOp'Adam/dense_6/bias/m/Read/ReadVariableOp6Adam/lstm_23/lstm_cell_23/kernel/m/Read/ReadVariableOp@Adam/lstm_23/lstm_cell_23/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_23/lstm_cell_23/bias/m/Read/ReadVariableOp6Adam/lstm_24/lstm_cell_24/kernel/m/Read/ReadVariableOp@Adam/lstm_24/lstm_cell_24/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_24/lstm_cell_24/bias/m/Read/ReadVariableOp)Adam/dense_6/kernel/v/Read/ReadVariableOp'Adam/dense_6/bias/v/Read/ReadVariableOp6Adam/lstm_23/lstm_cell_23/kernel/v/Read/ReadVariableOp@Adam/lstm_23/lstm_cell_23/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_23/lstm_cell_23/bias/v/Read/ReadVariableOp6Adam/lstm_24/lstm_cell_24/kernel/v/Read/ReadVariableOp@Adam/lstm_24/lstm_cell_24/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_24/lstm_cell_24/bias/v/Read/ReadVariableOpConst*0
Tin)
'2%	*
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
__inference__traced_save_125632
�	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_6/kerneldense_6/biasbeta_1beta_2decaylearning_rate	Adam/iterlstm_23/lstm_cell_23/kernel%lstm_23/lstm_cell_23/recurrent_kernellstm_23/lstm_cell_23/biaslstm_24/lstm_cell_24/kernel%lstm_24/lstm_cell_24/recurrent_kernellstm_24/lstm_cell_24/biastotalcounttotal_1count_1total_2count_2Adam/dense_6/kernel/mAdam/dense_6/bias/m"Adam/lstm_23/lstm_cell_23/kernel/m,Adam/lstm_23/lstm_cell_23/recurrent_kernel/m Adam/lstm_23/lstm_cell_23/bias/m"Adam/lstm_24/lstm_cell_24/kernel/m,Adam/lstm_24/lstm_cell_24/recurrent_kernel/m Adam/lstm_24/lstm_cell_24/bias/mAdam/dense_6/kernel/vAdam/dense_6/bias/v"Adam/lstm_23/lstm_cell_23/kernel/v,Adam/lstm_23/lstm_cell_23/recurrent_kernel/v Adam/lstm_23/lstm_cell_23/bias/v"Adam/lstm_24/lstm_cell_24/kernel/v,Adam/lstm_24/lstm_cell_24/recurrent_kernel/v Adam/lstm_24/lstm_cell_24/bias/v*/
Tin(
&2$*
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
"__inference__traced_restore_125747��
�

�
lstm_24_while_cond_123607,
(lstm_24_while_lstm_24_while_loop_counter2
.lstm_24_while_lstm_24_while_maximum_iterations
lstm_24_while_placeholder
lstm_24_while_placeholder_1
lstm_24_while_placeholder_2
lstm_24_while_placeholder_3.
*lstm_24_while_less_lstm_24_strided_slice_1D
@lstm_24_while_lstm_24_while_cond_123607___redundant_placeholder0D
@lstm_24_while_lstm_24_while_cond_123607___redundant_placeholder1D
@lstm_24_while_lstm_24_while_cond_123607___redundant_placeholder2D
@lstm_24_while_lstm_24_while_cond_123607___redundant_placeholder3
lstm_24_while_identity
�
lstm_24/while/LessLesslstm_24_while_placeholder*lstm_24_while_less_lstm_24_strided_slice_1*
T0*
_output_shapes
: [
lstm_24/while/IdentityIdentitylstm_24/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_24_while_identitylstm_24/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������#:���������#: ::::: 
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
:���������#:-)
'
_output_shapes
:���������#:

_output_shapes
: :

_output_shapes
:
�
d
F__inference_dropout_24_layer_call_and_return_conditional_losses_125277

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:���������#[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������#"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������#:O K
'
_output_shapes
:���������#
 
_user_specified_nameinputs
�
�
(__inference_lstm_23_layer_call_fn_124047

inputs
unknown:	�
	unknown_0:	#�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������#*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_23_layer_call_and_return_conditional_losses_123191s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������#`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
-__inference_lstm_cell_23_layer_call_fn_125342

inputs
states_0
states_1
unknown:	�
	unknown_0:	#�
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
9:���������#:���������#:���������#*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_121970o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������#q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������#q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������#`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������#:���������#: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������#
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������#
"
_user_specified_name
states/1
�8
�
while_body_122522
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_23_matmul_readvariableop_resource_0:	�H
5while_lstm_cell_23_matmul_1_readvariableop_resource_0:	#�C
4while_lstm_cell_23_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_23_matmul_readvariableop_resource:	�F
3while_lstm_cell_23_matmul_1_readvariableop_resource:	#�A
2while_lstm_cell_23_biasadd_readvariableop_resource:	���)while/lstm_cell_23/BiasAdd/ReadVariableOp�(while/lstm_cell_23/MatMul/ReadVariableOp�*while/lstm_cell_23/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
(while/lstm_cell_23/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_23_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_23/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_23/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_23/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_23_matmul_1_readvariableop_resource_0*
_output_shapes
:	#�*
dtype0�
while/lstm_cell_23/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_23/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_23/addAddV2#while/lstm_cell_23/MatMul:product:0%while/lstm_cell_23/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_23/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_23_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_23/BiasAddBiasAddwhile/lstm_cell_23/add:z:01while/lstm_cell_23/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
"while/lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_23/splitSplit+while/lstm_cell_23/split/split_dim:output:0#while/lstm_cell_23/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������#:���������#:���������#:���������#*
	num_splitz
while/lstm_cell_23/SigmoidSigmoid!while/lstm_cell_23/split:output:0*
T0*'
_output_shapes
:���������#|
while/lstm_cell_23/Sigmoid_1Sigmoid!while/lstm_cell_23/split:output:1*
T0*'
_output_shapes
:���������#�
while/lstm_cell_23/mulMul while/lstm_cell_23/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������#t
while/lstm_cell_23/ReluRelu!while/lstm_cell_23/split:output:2*
T0*'
_output_shapes
:���������#�
while/lstm_cell_23/mul_1Mulwhile/lstm_cell_23/Sigmoid:y:0%while/lstm_cell_23/Relu:activations:0*
T0*'
_output_shapes
:���������#�
while/lstm_cell_23/add_1AddV2while/lstm_cell_23/mul:z:0while/lstm_cell_23/mul_1:z:0*
T0*'
_output_shapes
:���������#|
while/lstm_cell_23/Sigmoid_2Sigmoid!while/lstm_cell_23/split:output:3*
T0*'
_output_shapes
:���������#q
while/lstm_cell_23/Relu_1Reluwhile/lstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:���������#�
while/lstm_cell_23/mul_2Mul while/lstm_cell_23/Sigmoid_2:y:0'while/lstm_cell_23/Relu_1:activations:0*
T0*'
_output_shapes
:���������#�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_23/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_23/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������#y
while/Identity_5Identitywhile/lstm_cell_23/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������#�

while/NoOpNoOp*^while/lstm_cell_23/BiasAdd/ReadVariableOp)^while/lstm_cell_23/MatMul/ReadVariableOp+^while/lstm_cell_23/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_23_biasadd_readvariableop_resource4while_lstm_cell_23_biasadd_readvariableop_resource_0"l
3while_lstm_cell_23_matmul_1_readvariableop_resource5while_lstm_cell_23_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_23_matmul_readvariableop_resource3while_lstm_cell_23_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������#:���������#: : : : : 2V
)while/lstm_cell_23/BiasAdd/ReadVariableOp)while/lstm_cell_23/BiasAdd/ReadVariableOp2T
(while/lstm_cell_23/MatMul/ReadVariableOp(while/lstm_cell_23/MatMul/ReadVariableOp2X
*while/lstm_cell_23/MatMul_1/ReadVariableOp*while/lstm_cell_23/MatMul_1/ReadVariableOp: 
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
:���������#:-)
'
_output_shapes
:���������#:

_output_shapes
: :

_output_shapes
: 
�
�
(__inference_lstm_24_layer_call_fn_124679

inputs
unknown:	#�
	unknown_0:	#�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������#*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_24_layer_call_and_return_conditional_losses_122763o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������#`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������#: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������#
 
_user_specified_nameinputs
�
�
H__inference_lstm_cell_24_layer_call_and_return_conditional_losses_125504

inputs
states_0
states_11
matmul_readvariableop_resource:	#�3
 matmul_1_readvariableop_resource:	#�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	#�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	#�*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������#:���������#:���������#:���������#*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������#V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������#U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������#N
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������#_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������#T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������#V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������#K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������#c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������#X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������#Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������#Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������#�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������#:���������#:���������#: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������#
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������#
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������#
"
_user_specified_name
states/1
�	
e
F__inference_dropout_24_layer_call_and_return_conditional_losses_125289

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *r�?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������#C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������#*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *
��>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������#o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������#i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:���������#Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:���������#"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������#:O K
'
_output_shapes
:���������#
 
_user_specified_nameinputs
�J
�
C__inference_lstm_24_layer_call_and_return_conditional_losses_122763

inputs>
+lstm_cell_24_matmul_readvariableop_resource:	#�@
-lstm_cell_24_matmul_1_readvariableop_resource:	#�;
,lstm_cell_24_biasadd_readvariableop_resource:	�
identity��#lstm_cell_24/BiasAdd/ReadVariableOp�"lstm_cell_24/MatMul/ReadVariableOp�$lstm_cell_24/MatMul_1/ReadVariableOp�while;
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
value	B :#s
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
:���������#R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :#w
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
:���������#c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������#D
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
valueB"����#   �
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
:���������#*
shrink_axis_mask�
"lstm_cell_24/MatMul/ReadVariableOpReadVariableOp+lstm_cell_24_matmul_readvariableop_resource*
_output_shapes
:	#�*
dtype0�
lstm_cell_24/MatMulMatMulstrided_slice_2:output:0*lstm_cell_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$lstm_cell_24/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_24_matmul_1_readvariableop_resource*
_output_shapes
:	#�*
dtype0�
lstm_cell_24/MatMul_1MatMulzeros:output:0,lstm_cell_24/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_24/addAddV2lstm_cell_24/MatMul:product:0lstm_cell_24/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
#lstm_cell_24/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_24_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_24/BiasAddBiasAddlstm_cell_24/add:z:0+lstm_cell_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������^
lstm_cell_24/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_24/splitSplit%lstm_cell_24/split/split_dim:output:0lstm_cell_24/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������#:���������#:���������#:���������#*
	num_splitn
lstm_cell_24/SigmoidSigmoidlstm_cell_24/split:output:0*
T0*'
_output_shapes
:���������#p
lstm_cell_24/Sigmoid_1Sigmoidlstm_cell_24/split:output:1*
T0*'
_output_shapes
:���������#w
lstm_cell_24/mulMullstm_cell_24/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������#h
lstm_cell_24/ReluRelulstm_cell_24/split:output:2*
T0*'
_output_shapes
:���������#�
lstm_cell_24/mul_1Mullstm_cell_24/Sigmoid:y:0lstm_cell_24/Relu:activations:0*
T0*'
_output_shapes
:���������#{
lstm_cell_24/add_1AddV2lstm_cell_24/mul:z:0lstm_cell_24/mul_1:z:0*
T0*'
_output_shapes
:���������#p
lstm_cell_24/Sigmoid_2Sigmoidlstm_cell_24/split:output:3*
T0*'
_output_shapes
:���������#e
lstm_cell_24/Relu_1Relulstm_cell_24/add_1:z:0*
T0*'
_output_shapes
:���������#�
lstm_cell_24/mul_2Mullstm_cell_24/Sigmoid_2:y:0!lstm_cell_24/Relu_1:activations:0*
T0*'
_output_shapes
:���������#n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_24_matmul_readvariableop_resource-lstm_cell_24_matmul_1_readvariableop_resource,lstm_cell_24_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������#:���������#: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_122679*
condR
while_cond_122678*K
output_shapes:
8: : : : :���������#:���������#: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������#*
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
:���������#*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������#[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������#�
NoOpNoOp$^lstm_cell_24/BiasAdd/ReadVariableOp#^lstm_cell_24/MatMul/ReadVariableOp%^lstm_cell_24/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������#: : : 2J
#lstm_cell_24/BiasAdd/ReadVariableOp#lstm_cell_24/BiasAdd/ReadVariableOp2H
"lstm_cell_24/MatMul/ReadVariableOp"lstm_cell_24/MatMul/ReadVariableOp2L
$lstm_cell_24/MatMul_1/ReadVariableOp$lstm_cell_24/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������#
 
_user_specified_nameinputs
�
d
+__inference_dropout_23_layer_call_fn_124629

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
:���������#* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_23_layer_call_and_return_conditional_losses_123032s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������#`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������#22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������#
 
_user_specified_nameinputs
�	
�
C__inference_dense_6_layer_call_and_return_conditional_losses_122788

inputs0
matmul_readvariableop_resource:#-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:#*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������#: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������#
 
_user_specified_nameinputs
�8
�
while_body_124892
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_24_matmul_readvariableop_resource_0:	#�H
5while_lstm_cell_24_matmul_1_readvariableop_resource_0:	#�C
4while_lstm_cell_24_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_24_matmul_readvariableop_resource:	#�F
3while_lstm_cell_24_matmul_1_readvariableop_resource:	#�A
2while_lstm_cell_24_biasadd_readvariableop_resource:	���)while/lstm_cell_24/BiasAdd/ReadVariableOp�(while/lstm_cell_24/MatMul/ReadVariableOp�*while/lstm_cell_24/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������#*
element_dtype0�
(while/lstm_cell_24/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_24_matmul_readvariableop_resource_0*
_output_shapes
:	#�*
dtype0�
while/lstm_cell_24/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_24/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_24_matmul_1_readvariableop_resource_0*
_output_shapes
:	#�*
dtype0�
while/lstm_cell_24/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_24/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_24/addAddV2#while/lstm_cell_24/MatMul:product:0%while/lstm_cell_24/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_24/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_24_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_24/BiasAddBiasAddwhile/lstm_cell_24/add:z:01while/lstm_cell_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
"while/lstm_cell_24/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_24/splitSplit+while/lstm_cell_24/split/split_dim:output:0#while/lstm_cell_24/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������#:���������#:���������#:���������#*
	num_splitz
while/lstm_cell_24/SigmoidSigmoid!while/lstm_cell_24/split:output:0*
T0*'
_output_shapes
:���������#|
while/lstm_cell_24/Sigmoid_1Sigmoid!while/lstm_cell_24/split:output:1*
T0*'
_output_shapes
:���������#�
while/lstm_cell_24/mulMul while/lstm_cell_24/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������#t
while/lstm_cell_24/ReluRelu!while/lstm_cell_24/split:output:2*
T0*'
_output_shapes
:���������#�
while/lstm_cell_24/mul_1Mulwhile/lstm_cell_24/Sigmoid:y:0%while/lstm_cell_24/Relu:activations:0*
T0*'
_output_shapes
:���������#�
while/lstm_cell_24/add_1AddV2while/lstm_cell_24/mul:z:0while/lstm_cell_24/mul_1:z:0*
T0*'
_output_shapes
:���������#|
while/lstm_cell_24/Sigmoid_2Sigmoid!while/lstm_cell_24/split:output:3*
T0*'
_output_shapes
:���������#q
while/lstm_cell_24/Relu_1Reluwhile/lstm_cell_24/add_1:z:0*
T0*'
_output_shapes
:���������#�
while/lstm_cell_24/mul_2Mul while/lstm_cell_24/Sigmoid_2:y:0'while/lstm_cell_24/Relu_1:activations:0*
T0*'
_output_shapes
:���������#�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_24/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_24/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������#y
while/Identity_5Identitywhile/lstm_cell_24/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������#�

while/NoOpNoOp*^while/lstm_cell_24/BiasAdd/ReadVariableOp)^while/lstm_cell_24/MatMul/ReadVariableOp+^while/lstm_cell_24/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_24_biasadd_readvariableop_resource4while_lstm_cell_24_biasadd_readvariableop_resource_0"l
3while_lstm_cell_24_matmul_1_readvariableop_resource5while_lstm_cell_24_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_24_matmul_readvariableop_resource3while_lstm_cell_24_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������#:���������#: : : : : 2V
)while/lstm_cell_24/BiasAdd/ReadVariableOp)while/lstm_cell_24/BiasAdd/ReadVariableOp2T
(while/lstm_cell_24/MatMul/ReadVariableOp(while/lstm_cell_24/MatMul/ReadVariableOp2X
*while/lstm_cell_24/MatMul_1/ReadVariableOp*while/lstm_cell_24/MatMul_1/ReadVariableOp: 
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
:���������#:-)
'
_output_shapes
:���������#:

_output_shapes
: :

_output_shapes
: 
�
�
H__inference_sequential_6_layer_call_and_return_conditional_losses_122795

inputs!
lstm_23_122607:	�!
lstm_23_122609:	#�
lstm_23_122611:	�!
lstm_24_122764:	#�!
lstm_24_122766:	#�
lstm_24_122768:	� 
dense_6_122789:#
dense_6_122791:
identity��dense_6/StatefulPartitionedCall�lstm_23/StatefulPartitionedCall�lstm_24/StatefulPartitionedCall�
lstm_23/StatefulPartitionedCallStatefulPartitionedCallinputslstm_23_122607lstm_23_122609lstm_23_122611*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������#*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_23_layer_call_and_return_conditional_losses_122606�
dropout_23/PartitionedCallPartitionedCall(lstm_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������#* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_23_layer_call_and_return_conditional_losses_122619�
lstm_24/StatefulPartitionedCallStatefulPartitionedCall#dropout_23/PartitionedCall:output:0lstm_24_122764lstm_24_122766lstm_24_122768*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������#*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_24_layer_call_and_return_conditional_losses_122763�
dropout_24/PartitionedCallPartitionedCall(lstm_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������#* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_24_layer_call_and_return_conditional_losses_122776�
dense_6/StatefulPartitionedCallStatefulPartitionedCall#dropout_24/PartitionedCall:output:0dense_6_122789dense_6_122791*
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
GPU 2J 8� *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_122788w
IdentityIdentity(dense_6/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_6/StatefulPartitionedCall ^lstm_23/StatefulPartitionedCall ^lstm_24/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
lstm_23/StatefulPartitionedCalllstm_23/StatefulPartitionedCall2B
lstm_24/StatefulPartitionedCalllstm_24/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�8
�
while_body_124106
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_23_matmul_readvariableop_resource_0:	�H
5while_lstm_cell_23_matmul_1_readvariableop_resource_0:	#�C
4while_lstm_cell_23_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_23_matmul_readvariableop_resource:	�F
3while_lstm_cell_23_matmul_1_readvariableop_resource:	#�A
2while_lstm_cell_23_biasadd_readvariableop_resource:	���)while/lstm_cell_23/BiasAdd/ReadVariableOp�(while/lstm_cell_23/MatMul/ReadVariableOp�*while/lstm_cell_23/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
(while/lstm_cell_23/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_23_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_23/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_23/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_23/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_23_matmul_1_readvariableop_resource_0*
_output_shapes
:	#�*
dtype0�
while/lstm_cell_23/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_23/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_23/addAddV2#while/lstm_cell_23/MatMul:product:0%while/lstm_cell_23/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_23/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_23_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_23/BiasAddBiasAddwhile/lstm_cell_23/add:z:01while/lstm_cell_23/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
"while/lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_23/splitSplit+while/lstm_cell_23/split/split_dim:output:0#while/lstm_cell_23/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������#:���������#:���������#:���������#*
	num_splitz
while/lstm_cell_23/SigmoidSigmoid!while/lstm_cell_23/split:output:0*
T0*'
_output_shapes
:���������#|
while/lstm_cell_23/Sigmoid_1Sigmoid!while/lstm_cell_23/split:output:1*
T0*'
_output_shapes
:���������#�
while/lstm_cell_23/mulMul while/lstm_cell_23/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������#t
while/lstm_cell_23/ReluRelu!while/lstm_cell_23/split:output:2*
T0*'
_output_shapes
:���������#�
while/lstm_cell_23/mul_1Mulwhile/lstm_cell_23/Sigmoid:y:0%while/lstm_cell_23/Relu:activations:0*
T0*'
_output_shapes
:���������#�
while/lstm_cell_23/add_1AddV2while/lstm_cell_23/mul:z:0while/lstm_cell_23/mul_1:z:0*
T0*'
_output_shapes
:���������#|
while/lstm_cell_23/Sigmoid_2Sigmoid!while/lstm_cell_23/split:output:3*
T0*'
_output_shapes
:���������#q
while/lstm_cell_23/Relu_1Reluwhile/lstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:���������#�
while/lstm_cell_23/mul_2Mul while/lstm_cell_23/Sigmoid_2:y:0'while/lstm_cell_23/Relu_1:activations:0*
T0*'
_output_shapes
:���������#�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_23/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_23/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������#y
while/Identity_5Identitywhile/lstm_cell_23/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������#�

while/NoOpNoOp*^while/lstm_cell_23/BiasAdd/ReadVariableOp)^while/lstm_cell_23/MatMul/ReadVariableOp+^while/lstm_cell_23/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_23_biasadd_readvariableop_resource4while_lstm_cell_23_biasadd_readvariableop_resource_0"l
3while_lstm_cell_23_matmul_1_readvariableop_resource5while_lstm_cell_23_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_23_matmul_readvariableop_resource3while_lstm_cell_23_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������#:���������#: : : : : 2V
)while/lstm_cell_23/BiasAdd/ReadVariableOp)while/lstm_cell_23/BiasAdd/ReadVariableOp2T
(while/lstm_cell_23/MatMul/ReadVariableOp(while/lstm_cell_23/MatMul/ReadVariableOp2X
*while/lstm_cell_23/MatMul_1/ReadVariableOp*while/lstm_cell_23/MatMul_1/ReadVariableOp: 
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
:���������#:-)
'
_output_shapes
:���������#:

_output_shapes
: :

_output_shapes
: 
�

�
lstm_23_while_cond_123467,
(lstm_23_while_lstm_23_while_loop_counter2
.lstm_23_while_lstm_23_while_maximum_iterations
lstm_23_while_placeholder
lstm_23_while_placeholder_1
lstm_23_while_placeholder_2
lstm_23_while_placeholder_3.
*lstm_23_while_less_lstm_23_strided_slice_1D
@lstm_23_while_lstm_23_while_cond_123467___redundant_placeholder0D
@lstm_23_while_lstm_23_while_cond_123467___redundant_placeholder1D
@lstm_23_while_lstm_23_while_cond_123467___redundant_placeholder2D
@lstm_23_while_lstm_23_while_cond_123467___redundant_placeholder3
lstm_23_while_identity
�
lstm_23/while/LessLesslstm_23_while_placeholder*lstm_23_while_less_lstm_23_strided_slice_1*
T0*
_output_shapes
: [
lstm_23/while/IdentityIdentitylstm_23/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_23_while_identitylstm_23/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������#:���������#: ::::: 
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
:���������#:-)
'
_output_shapes
:���������#:

_output_shapes
: :

_output_shapes
:
�
�
(__inference_lstm_23_layer_call_fn_124036

inputs
unknown:	�
	unknown_0:	#�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������#*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_23_layer_call_and_return_conditional_losses_122606s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������#`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
-__inference_sequential_6_layer_call_fn_123288
lstm_23_input
unknown:	�
	unknown_0:	#�
	unknown_1:	�
	unknown_2:	#�
	unknown_3:	#�
	unknown_4:	�
	unknown_5:#
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllstm_23_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_6_layer_call_and_return_conditional_losses_123248o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:���������
'
_user_specified_namelstm_23_input
�
�
(__inference_dense_6_layer_call_fn_125298

inputs
unknown:#
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
GPU 2J 8� *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_122788o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������#: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������#
 
_user_specified_nameinputs
�	
e
F__inference_dropout_24_layer_call_and_return_conditional_losses_122844

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *r�?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������#C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������#*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *
��>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������#o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������#i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:���������#Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:���������#"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������#:O K
'
_output_shapes
:���������#
 
_user_specified_nameinputs
�A
�

lstm_24_while_body_123608,
(lstm_24_while_lstm_24_while_loop_counter2
.lstm_24_while_lstm_24_while_maximum_iterations
lstm_24_while_placeholder
lstm_24_while_placeholder_1
lstm_24_while_placeholder_2
lstm_24_while_placeholder_3+
'lstm_24_while_lstm_24_strided_slice_1_0g
clstm_24_while_tensorarrayv2read_tensorlistgetitem_lstm_24_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_24_while_lstm_cell_24_matmul_readvariableop_resource_0:	#�P
=lstm_24_while_lstm_cell_24_matmul_1_readvariableop_resource_0:	#�K
<lstm_24_while_lstm_cell_24_biasadd_readvariableop_resource_0:	�
lstm_24_while_identity
lstm_24_while_identity_1
lstm_24_while_identity_2
lstm_24_while_identity_3
lstm_24_while_identity_4
lstm_24_while_identity_5)
%lstm_24_while_lstm_24_strided_slice_1e
alstm_24_while_tensorarrayv2read_tensorlistgetitem_lstm_24_tensorarrayunstack_tensorlistfromtensorL
9lstm_24_while_lstm_cell_24_matmul_readvariableop_resource:	#�N
;lstm_24_while_lstm_cell_24_matmul_1_readvariableop_resource:	#�I
:lstm_24_while_lstm_cell_24_biasadd_readvariableop_resource:	���1lstm_24/while/lstm_cell_24/BiasAdd/ReadVariableOp�0lstm_24/while/lstm_cell_24/MatMul/ReadVariableOp�2lstm_24/while/lstm_cell_24/MatMul_1/ReadVariableOp�
?lstm_24/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
1lstm_24/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_24_while_tensorarrayv2read_tensorlistgetitem_lstm_24_tensorarrayunstack_tensorlistfromtensor_0lstm_24_while_placeholderHlstm_24/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������#*
element_dtype0�
0lstm_24/while/lstm_cell_24/MatMul/ReadVariableOpReadVariableOp;lstm_24_while_lstm_cell_24_matmul_readvariableop_resource_0*
_output_shapes
:	#�*
dtype0�
!lstm_24/while/lstm_cell_24/MatMulMatMul8lstm_24/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_24/while/lstm_cell_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
2lstm_24/while/lstm_cell_24/MatMul_1/ReadVariableOpReadVariableOp=lstm_24_while_lstm_cell_24_matmul_1_readvariableop_resource_0*
_output_shapes
:	#�*
dtype0�
#lstm_24/while/lstm_cell_24/MatMul_1MatMullstm_24_while_placeholder_2:lstm_24/while/lstm_cell_24/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_24/while/lstm_cell_24/addAddV2+lstm_24/while/lstm_cell_24/MatMul:product:0-lstm_24/while/lstm_cell_24/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
1lstm_24/while/lstm_cell_24/BiasAdd/ReadVariableOpReadVariableOp<lstm_24_while_lstm_cell_24_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
"lstm_24/while/lstm_cell_24/BiasAddBiasAdd"lstm_24/while/lstm_cell_24/add:z:09lstm_24/while/lstm_cell_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������l
*lstm_24/while/lstm_cell_24/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
 lstm_24/while/lstm_cell_24/splitSplit3lstm_24/while/lstm_cell_24/split/split_dim:output:0+lstm_24/while/lstm_cell_24/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������#:���������#:���������#:���������#*
	num_split�
"lstm_24/while/lstm_cell_24/SigmoidSigmoid)lstm_24/while/lstm_cell_24/split:output:0*
T0*'
_output_shapes
:���������#�
$lstm_24/while/lstm_cell_24/Sigmoid_1Sigmoid)lstm_24/while/lstm_cell_24/split:output:1*
T0*'
_output_shapes
:���������#�
lstm_24/while/lstm_cell_24/mulMul(lstm_24/while/lstm_cell_24/Sigmoid_1:y:0lstm_24_while_placeholder_3*
T0*'
_output_shapes
:���������#�
lstm_24/while/lstm_cell_24/ReluRelu)lstm_24/while/lstm_cell_24/split:output:2*
T0*'
_output_shapes
:���������#�
 lstm_24/while/lstm_cell_24/mul_1Mul&lstm_24/while/lstm_cell_24/Sigmoid:y:0-lstm_24/while/lstm_cell_24/Relu:activations:0*
T0*'
_output_shapes
:���������#�
 lstm_24/while/lstm_cell_24/add_1AddV2"lstm_24/while/lstm_cell_24/mul:z:0$lstm_24/while/lstm_cell_24/mul_1:z:0*
T0*'
_output_shapes
:���������#�
$lstm_24/while/lstm_cell_24/Sigmoid_2Sigmoid)lstm_24/while/lstm_cell_24/split:output:3*
T0*'
_output_shapes
:���������#�
!lstm_24/while/lstm_cell_24/Relu_1Relu$lstm_24/while/lstm_cell_24/add_1:z:0*
T0*'
_output_shapes
:���������#�
 lstm_24/while/lstm_cell_24/mul_2Mul(lstm_24/while/lstm_cell_24/Sigmoid_2:y:0/lstm_24/while/lstm_cell_24/Relu_1:activations:0*
T0*'
_output_shapes
:���������#�
2lstm_24/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_24_while_placeholder_1lstm_24_while_placeholder$lstm_24/while/lstm_cell_24/mul_2:z:0*
_output_shapes
: *
element_dtype0:���U
lstm_24/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_24/while/addAddV2lstm_24_while_placeholderlstm_24/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_24/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_24/while/add_1AddV2(lstm_24_while_lstm_24_while_loop_counterlstm_24/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_24/while/IdentityIdentitylstm_24/while/add_1:z:0^lstm_24/while/NoOp*
T0*
_output_shapes
: �
lstm_24/while/Identity_1Identity.lstm_24_while_lstm_24_while_maximum_iterations^lstm_24/while/NoOp*
T0*
_output_shapes
: q
lstm_24/while/Identity_2Identitylstm_24/while/add:z:0^lstm_24/while/NoOp*
T0*
_output_shapes
: �
lstm_24/while/Identity_3IdentityBlstm_24/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_24/while/NoOp*
T0*
_output_shapes
: �
lstm_24/while/Identity_4Identity$lstm_24/while/lstm_cell_24/mul_2:z:0^lstm_24/while/NoOp*
T0*'
_output_shapes
:���������#�
lstm_24/while/Identity_5Identity$lstm_24/while/lstm_cell_24/add_1:z:0^lstm_24/while/NoOp*
T0*'
_output_shapes
:���������#�
lstm_24/while/NoOpNoOp2^lstm_24/while/lstm_cell_24/BiasAdd/ReadVariableOp1^lstm_24/while/lstm_cell_24/MatMul/ReadVariableOp3^lstm_24/while/lstm_cell_24/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_24_while_identitylstm_24/while/Identity:output:0"=
lstm_24_while_identity_1!lstm_24/while/Identity_1:output:0"=
lstm_24_while_identity_2!lstm_24/while/Identity_2:output:0"=
lstm_24_while_identity_3!lstm_24/while/Identity_3:output:0"=
lstm_24_while_identity_4!lstm_24/while/Identity_4:output:0"=
lstm_24_while_identity_5!lstm_24/while/Identity_5:output:0"P
%lstm_24_while_lstm_24_strided_slice_1'lstm_24_while_lstm_24_strided_slice_1_0"z
:lstm_24_while_lstm_cell_24_biasadd_readvariableop_resource<lstm_24_while_lstm_cell_24_biasadd_readvariableop_resource_0"|
;lstm_24_while_lstm_cell_24_matmul_1_readvariableop_resource=lstm_24_while_lstm_cell_24_matmul_1_readvariableop_resource_0"x
9lstm_24_while_lstm_cell_24_matmul_readvariableop_resource;lstm_24_while_lstm_cell_24_matmul_readvariableop_resource_0"�
alstm_24_while_tensorarrayv2read_tensorlistgetitem_lstm_24_tensorarrayunstack_tensorlistfromtensorclstm_24_while_tensorarrayv2read_tensorlistgetitem_lstm_24_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������#:���������#: : : : : 2f
1lstm_24/while/lstm_cell_24/BiasAdd/ReadVariableOp1lstm_24/while/lstm_cell_24/BiasAdd/ReadVariableOp2d
0lstm_24/while/lstm_cell_24/MatMul/ReadVariableOp0lstm_24/while/lstm_cell_24/MatMul/ReadVariableOp2h
2lstm_24/while/lstm_cell_24/MatMul_1/ReadVariableOp2lstm_24/while/lstm_cell_24/MatMul_1/ReadVariableOp: 
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
:���������#:-)
'
_output_shapes
:���������#:

_output_shapes
: :

_output_shapes
: 
�

e
F__inference_dropout_23_layer_call_and_return_conditional_losses_123032

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *r�?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:���������#C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:���������#*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *
��>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:���������#s
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:���������#m
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:���������#]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:���������#"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������#:S O
+
_output_shapes
:���������#
 
_user_specified_nameinputs
�8
�
while_body_125035
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_24_matmul_readvariableop_resource_0:	#�H
5while_lstm_cell_24_matmul_1_readvariableop_resource_0:	#�C
4while_lstm_cell_24_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_24_matmul_readvariableop_resource:	#�F
3while_lstm_cell_24_matmul_1_readvariableop_resource:	#�A
2while_lstm_cell_24_biasadd_readvariableop_resource:	���)while/lstm_cell_24/BiasAdd/ReadVariableOp�(while/lstm_cell_24/MatMul/ReadVariableOp�*while/lstm_cell_24/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������#*
element_dtype0�
(while/lstm_cell_24/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_24_matmul_readvariableop_resource_0*
_output_shapes
:	#�*
dtype0�
while/lstm_cell_24/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_24/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_24_matmul_1_readvariableop_resource_0*
_output_shapes
:	#�*
dtype0�
while/lstm_cell_24/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_24/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_24/addAddV2#while/lstm_cell_24/MatMul:product:0%while/lstm_cell_24/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_24/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_24_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_24/BiasAddBiasAddwhile/lstm_cell_24/add:z:01while/lstm_cell_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
"while/lstm_cell_24/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_24/splitSplit+while/lstm_cell_24/split/split_dim:output:0#while/lstm_cell_24/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������#:���������#:���������#:���������#*
	num_splitz
while/lstm_cell_24/SigmoidSigmoid!while/lstm_cell_24/split:output:0*
T0*'
_output_shapes
:���������#|
while/lstm_cell_24/Sigmoid_1Sigmoid!while/lstm_cell_24/split:output:1*
T0*'
_output_shapes
:���������#�
while/lstm_cell_24/mulMul while/lstm_cell_24/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������#t
while/lstm_cell_24/ReluRelu!while/lstm_cell_24/split:output:2*
T0*'
_output_shapes
:���������#�
while/lstm_cell_24/mul_1Mulwhile/lstm_cell_24/Sigmoid:y:0%while/lstm_cell_24/Relu:activations:0*
T0*'
_output_shapes
:���������#�
while/lstm_cell_24/add_1AddV2while/lstm_cell_24/mul:z:0while/lstm_cell_24/mul_1:z:0*
T0*'
_output_shapes
:���������#|
while/lstm_cell_24/Sigmoid_2Sigmoid!while/lstm_cell_24/split:output:3*
T0*'
_output_shapes
:���������#q
while/lstm_cell_24/Relu_1Reluwhile/lstm_cell_24/add_1:z:0*
T0*'
_output_shapes
:���������#�
while/lstm_cell_24/mul_2Mul while/lstm_cell_24/Sigmoid_2:y:0'while/lstm_cell_24/Relu_1:activations:0*
T0*'
_output_shapes
:���������#�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_24/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_24/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������#y
while/Identity_5Identitywhile/lstm_cell_24/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������#�

while/NoOpNoOp*^while/lstm_cell_24/BiasAdd/ReadVariableOp)^while/lstm_cell_24/MatMul/ReadVariableOp+^while/lstm_cell_24/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_24_biasadd_readvariableop_resource4while_lstm_cell_24_biasadd_readvariableop_resource_0"l
3while_lstm_cell_24_matmul_1_readvariableop_resource5while_lstm_cell_24_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_24_matmul_readvariableop_resource3while_lstm_cell_24_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������#:���������#: : : : : 2V
)while/lstm_cell_24/BiasAdd/ReadVariableOp)while/lstm_cell_24/BiasAdd/ReadVariableOp2T
(while/lstm_cell_24/MatMul/ReadVariableOp(while/lstm_cell_24/MatMul/ReadVariableOp2X
*while/lstm_cell_24/MatMul_1/ReadVariableOp*while/lstm_cell_24/MatMul_1/ReadVariableOp: 
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
:���������#:-)
'
_output_shapes
:���������#:

_output_shapes
: :

_output_shapes
: 
�

�
lstm_24_while_cond_123904,
(lstm_24_while_lstm_24_while_loop_counter2
.lstm_24_while_lstm_24_while_maximum_iterations
lstm_24_while_placeholder
lstm_24_while_placeholder_1
lstm_24_while_placeholder_2
lstm_24_while_placeholder_3.
*lstm_24_while_less_lstm_24_strided_slice_1D
@lstm_24_while_lstm_24_while_cond_123904___redundant_placeholder0D
@lstm_24_while_lstm_24_while_cond_123904___redundant_placeholder1D
@lstm_24_while_lstm_24_while_cond_123904___redundant_placeholder2D
@lstm_24_while_lstm_24_while_cond_123904___redundant_placeholder3
lstm_24_while_identity
�
lstm_24/while/LessLesslstm_24_while_placeholder*lstm_24_while_less_lstm_24_strided_slice_1*
T0*
_output_shapes
: [
lstm_24/while/IdentityIdentitylstm_24/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_24_while_identitylstm_24/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������#:���������#: ::::: 
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
:���������#:-)
'
_output_shapes
:���������#:

_output_shapes
: :

_output_shapes
:
�
�
H__inference_sequential_6_layer_call_and_return_conditional_losses_123248

inputs!
lstm_23_123226:	�!
lstm_23_123228:	#�
lstm_23_123230:	�!
lstm_24_123234:	#�!
lstm_24_123236:	#�
lstm_24_123238:	� 
dense_6_123242:#
dense_6_123244:
identity��dense_6/StatefulPartitionedCall�"dropout_23/StatefulPartitionedCall�"dropout_24/StatefulPartitionedCall�lstm_23/StatefulPartitionedCall�lstm_24/StatefulPartitionedCall�
lstm_23/StatefulPartitionedCallStatefulPartitionedCallinputslstm_23_123226lstm_23_123228lstm_23_123230*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������#*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_23_layer_call_and_return_conditional_losses_123191�
"dropout_23/StatefulPartitionedCallStatefulPartitionedCall(lstm_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������#* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_23_layer_call_and_return_conditional_losses_123032�
lstm_24/StatefulPartitionedCallStatefulPartitionedCall+dropout_23/StatefulPartitionedCall:output:0lstm_24_123234lstm_24_123236lstm_24_123238*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������#*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_24_layer_call_and_return_conditional_losses_123003�
"dropout_24/StatefulPartitionedCallStatefulPartitionedCall(lstm_24/StatefulPartitionedCall:output:0#^dropout_23/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������#* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_24_layer_call_and_return_conditional_losses_122844�
dense_6/StatefulPartitionedCallStatefulPartitionedCall+dropout_24/StatefulPartitionedCall:output:0dense_6_123242dense_6_123244*
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
GPU 2J 8� *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_122788w
IdentityIdentity(dense_6/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_6/StatefulPartitionedCall#^dropout_23/StatefulPartitionedCall#^dropout_24/StatefulPartitionedCall ^lstm_23/StatefulPartitionedCall ^lstm_24/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2H
"dropout_23/StatefulPartitionedCall"dropout_23/StatefulPartitionedCall2H
"dropout_24/StatefulPartitionedCall"dropout_24/StatefulPartitionedCall2B
lstm_23/StatefulPartitionedCalllstm_23/StatefulPartitionedCall2B
lstm_24/StatefulPartitionedCalllstm_24/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
d
+__inference_dropout_24_layer_call_fn_125272

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
:���������#* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_24_layer_call_and_return_conditional_losses_122844o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������#`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������#22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������#
 
_user_specified_nameinputs
�
�
while_cond_122028
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_122028___redundant_placeholder04
0while_while_cond_122028___redundant_placeholder14
0while_while_cond_122028___redundant_placeholder24
0while_while_cond_122028___redundant_placeholder3
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
@: : : : :���������#:���������#: ::::: 
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
:���������#:-)
'
_output_shapes
:���������#:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_122918
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_122918___redundant_placeholder04
0while_while_cond_122918___redundant_placeholder14
0while_while_cond_122918___redundant_placeholder24
0while_while_cond_122918___redundant_placeholder3
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
@: : : : :���������#:���������#: ::::: 
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
:���������#:-)
'
_output_shapes
:���������#:

_output_shapes
: :

_output_shapes
:
�8
�
C__inference_lstm_24_layer_call_and_return_conditional_losses_122448

inputs&
lstm_cell_24_122366:	#�&
lstm_cell_24_122368:	#�"
lstm_cell_24_122370:	�
identity��$lstm_cell_24/StatefulPartitionedCall�while;
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
value	B :#s
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
:���������#R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :#w
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
:���������#c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������#D
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
valueB"����#   �
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
:���������#*
shrink_axis_mask�
$lstm_cell_24/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_24_122366lstm_cell_24_122368lstm_cell_24_122370*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������#:���������#:���������#*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_24_layer_call_and_return_conditional_losses_122320n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_24_122366lstm_cell_24_122368lstm_cell_24_122370*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������#:���������#: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_122379*
condR
while_cond_122378*K
output_shapes:
8: : : : :���������#:���������#: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������#*
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
:���������#*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������#[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������#u
NoOpNoOp%^lstm_cell_24/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������#: : : 2L
$lstm_cell_24/StatefulPartitionedCall$lstm_cell_24/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������#
 
_user_specified_nameinputs
�J
�
C__inference_lstm_24_layer_call_and_return_conditional_losses_123003

inputs>
+lstm_cell_24_matmul_readvariableop_resource:	#�@
-lstm_cell_24_matmul_1_readvariableop_resource:	#�;
,lstm_cell_24_biasadd_readvariableop_resource:	�
identity��#lstm_cell_24/BiasAdd/ReadVariableOp�"lstm_cell_24/MatMul/ReadVariableOp�$lstm_cell_24/MatMul_1/ReadVariableOp�while;
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
value	B :#s
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
:���������#R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :#w
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
:���������#c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������#D
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
valueB"����#   �
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
:���������#*
shrink_axis_mask�
"lstm_cell_24/MatMul/ReadVariableOpReadVariableOp+lstm_cell_24_matmul_readvariableop_resource*
_output_shapes
:	#�*
dtype0�
lstm_cell_24/MatMulMatMulstrided_slice_2:output:0*lstm_cell_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$lstm_cell_24/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_24_matmul_1_readvariableop_resource*
_output_shapes
:	#�*
dtype0�
lstm_cell_24/MatMul_1MatMulzeros:output:0,lstm_cell_24/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_24/addAddV2lstm_cell_24/MatMul:product:0lstm_cell_24/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
#lstm_cell_24/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_24_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_24/BiasAddBiasAddlstm_cell_24/add:z:0+lstm_cell_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������^
lstm_cell_24/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_24/splitSplit%lstm_cell_24/split/split_dim:output:0lstm_cell_24/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������#:���������#:���������#:���������#*
	num_splitn
lstm_cell_24/SigmoidSigmoidlstm_cell_24/split:output:0*
T0*'
_output_shapes
:���������#p
lstm_cell_24/Sigmoid_1Sigmoidlstm_cell_24/split:output:1*
T0*'
_output_shapes
:���������#w
lstm_cell_24/mulMullstm_cell_24/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������#h
lstm_cell_24/ReluRelulstm_cell_24/split:output:2*
T0*'
_output_shapes
:���������#�
lstm_cell_24/mul_1Mullstm_cell_24/Sigmoid:y:0lstm_cell_24/Relu:activations:0*
T0*'
_output_shapes
:���������#{
lstm_cell_24/add_1AddV2lstm_cell_24/mul:z:0lstm_cell_24/mul_1:z:0*
T0*'
_output_shapes
:���������#p
lstm_cell_24/Sigmoid_2Sigmoidlstm_cell_24/split:output:3*
T0*'
_output_shapes
:���������#e
lstm_cell_24/Relu_1Relulstm_cell_24/add_1:z:0*
T0*'
_output_shapes
:���������#�
lstm_cell_24/mul_2Mullstm_cell_24/Sigmoid_2:y:0!lstm_cell_24/Relu_1:activations:0*
T0*'
_output_shapes
:���������#n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_24_matmul_readvariableop_resource-lstm_cell_24_matmul_1_readvariableop_resource,lstm_cell_24_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������#:���������#: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_122919*
condR
while_cond_122918*K
output_shapes:
8: : : : :���������#:���������#: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������#*
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
:���������#*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������#[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������#�
NoOpNoOp$^lstm_cell_24/BiasAdd/ReadVariableOp#^lstm_cell_24/MatMul/ReadVariableOp%^lstm_cell_24/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������#: : : 2J
#lstm_cell_24/BiasAdd/ReadVariableOp#lstm_cell_24/BiasAdd/ReadVariableOp2H
"lstm_cell_24/MatMul/ReadVariableOp"lstm_cell_24/MatMul/ReadVariableOp2L
$lstm_cell_24/MatMul_1/ReadVariableOp$lstm_cell_24/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������#
 
_user_specified_nameinputs
�

e
F__inference_dropout_23_layer_call_and_return_conditional_losses_124646

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *r�?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:���������#C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:���������#*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *
��>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:���������#s
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:���������#m
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:���������#]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:���������#"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������#:S O
+
_output_shapes
:���������#
 
_user_specified_nameinputs
�J
�
C__inference_lstm_23_layer_call_and_return_conditional_losses_122606

inputs>
+lstm_cell_23_matmul_readvariableop_resource:	�@
-lstm_cell_23_matmul_1_readvariableop_resource:	#�;
,lstm_cell_23_biasadd_readvariableop_resource:	�
identity��#lstm_cell_23/BiasAdd/ReadVariableOp�"lstm_cell_23/MatMul/ReadVariableOp�$lstm_cell_23/MatMul_1/ReadVariableOp�while;
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
value	B :#s
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
:���������#R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :#w
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
:���������#c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������D
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
"lstm_cell_23/MatMul/ReadVariableOpReadVariableOp+lstm_cell_23_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_23/MatMulMatMulstrided_slice_2:output:0*lstm_cell_23/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$lstm_cell_23/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_23_matmul_1_readvariableop_resource*
_output_shapes
:	#�*
dtype0�
lstm_cell_23/MatMul_1MatMulzeros:output:0,lstm_cell_23/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_23/addAddV2lstm_cell_23/MatMul:product:0lstm_cell_23/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
#lstm_cell_23/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_23_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_23/BiasAddBiasAddlstm_cell_23/add:z:0+lstm_cell_23/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������^
lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_23/splitSplit%lstm_cell_23/split/split_dim:output:0lstm_cell_23/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������#:���������#:���������#:���������#*
	num_splitn
lstm_cell_23/SigmoidSigmoidlstm_cell_23/split:output:0*
T0*'
_output_shapes
:���������#p
lstm_cell_23/Sigmoid_1Sigmoidlstm_cell_23/split:output:1*
T0*'
_output_shapes
:���������#w
lstm_cell_23/mulMullstm_cell_23/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������#h
lstm_cell_23/ReluRelulstm_cell_23/split:output:2*
T0*'
_output_shapes
:���������#�
lstm_cell_23/mul_1Mullstm_cell_23/Sigmoid:y:0lstm_cell_23/Relu:activations:0*
T0*'
_output_shapes
:���������#{
lstm_cell_23/add_1AddV2lstm_cell_23/mul:z:0lstm_cell_23/mul_1:z:0*
T0*'
_output_shapes
:���������#p
lstm_cell_23/Sigmoid_2Sigmoidlstm_cell_23/split:output:3*
T0*'
_output_shapes
:���������#e
lstm_cell_23/Relu_1Relulstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:���������#�
lstm_cell_23/mul_2Mullstm_cell_23/Sigmoid_2:y:0!lstm_cell_23/Relu_1:activations:0*
T0*'
_output_shapes
:���������#n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_23_matmul_readvariableop_resource-lstm_cell_23_matmul_1_readvariableop_resource,lstm_cell_23_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������#:���������#: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_122522*
condR
while_cond_122521*K
output_shapes:
8: : : : :���������#:���������#: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������#*
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
:���������#*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������#[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������#�
NoOpNoOp$^lstm_cell_23/BiasAdd/ReadVariableOp#^lstm_cell_23/MatMul/ReadVariableOp%^lstm_cell_23/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2J
#lstm_cell_23/BiasAdd/ReadVariableOp#lstm_cell_23/BiasAdd/ReadVariableOp2H
"lstm_cell_23/MatMul/ReadVariableOp"lstm_cell_23/MatMul/ReadVariableOp2L
$lstm_cell_23/MatMul_1/ReadVariableOp$lstm_cell_23/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
��
�	
!__inference__wrapped_model_121757
lstm_23_inputS
@sequential_6_lstm_23_lstm_cell_23_matmul_readvariableop_resource:	�U
Bsequential_6_lstm_23_lstm_cell_23_matmul_1_readvariableop_resource:	#�P
Asequential_6_lstm_23_lstm_cell_23_biasadd_readvariableop_resource:	�S
@sequential_6_lstm_24_lstm_cell_24_matmul_readvariableop_resource:	#�U
Bsequential_6_lstm_24_lstm_cell_24_matmul_1_readvariableop_resource:	#�P
Asequential_6_lstm_24_lstm_cell_24_biasadd_readvariableop_resource:	�E
3sequential_6_dense_6_matmul_readvariableop_resource:#B
4sequential_6_dense_6_biasadd_readvariableop_resource:
identity��+sequential_6/dense_6/BiasAdd/ReadVariableOp�*sequential_6/dense_6/MatMul/ReadVariableOp�8sequential_6/lstm_23/lstm_cell_23/BiasAdd/ReadVariableOp�7sequential_6/lstm_23/lstm_cell_23/MatMul/ReadVariableOp�9sequential_6/lstm_23/lstm_cell_23/MatMul_1/ReadVariableOp�sequential_6/lstm_23/while�8sequential_6/lstm_24/lstm_cell_24/BiasAdd/ReadVariableOp�7sequential_6/lstm_24/lstm_cell_24/MatMul/ReadVariableOp�9sequential_6/lstm_24/lstm_cell_24/MatMul_1/ReadVariableOp�sequential_6/lstm_24/whileW
sequential_6/lstm_23/ShapeShapelstm_23_input*
T0*
_output_shapes
:r
(sequential_6/lstm_23/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*sequential_6/lstm_23/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*sequential_6/lstm_23/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"sequential_6/lstm_23/strided_sliceStridedSlice#sequential_6/lstm_23/Shape:output:01sequential_6/lstm_23/strided_slice/stack:output:03sequential_6/lstm_23/strided_slice/stack_1:output:03sequential_6/lstm_23/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#sequential_6/lstm_23/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :#�
!sequential_6/lstm_23/zeros/packedPack+sequential_6/lstm_23/strided_slice:output:0,sequential_6/lstm_23/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:e
 sequential_6/lstm_23/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_6/lstm_23/zerosFill*sequential_6/lstm_23/zeros/packed:output:0)sequential_6/lstm_23/zeros/Const:output:0*
T0*'
_output_shapes
:���������#g
%sequential_6/lstm_23/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :#�
#sequential_6/lstm_23/zeros_1/packedPack+sequential_6/lstm_23/strided_slice:output:0.sequential_6/lstm_23/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_6/lstm_23/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_6/lstm_23/zeros_1Fill,sequential_6/lstm_23/zeros_1/packed:output:0+sequential_6/lstm_23/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������#x
#sequential_6/lstm_23/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
sequential_6/lstm_23/transpose	Transposelstm_23_input,sequential_6/lstm_23/transpose/perm:output:0*
T0*+
_output_shapes
:���������n
sequential_6/lstm_23/Shape_1Shape"sequential_6/lstm_23/transpose:y:0*
T0*
_output_shapes
:t
*sequential_6/lstm_23/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_6/lstm_23/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_6/lstm_23/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
$sequential_6/lstm_23/strided_slice_1StridedSlice%sequential_6/lstm_23/Shape_1:output:03sequential_6/lstm_23/strided_slice_1/stack:output:05sequential_6/lstm_23/strided_slice_1/stack_1:output:05sequential_6/lstm_23/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
0sequential_6/lstm_23/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
"sequential_6/lstm_23/TensorArrayV2TensorListReserve9sequential_6/lstm_23/TensorArrayV2/element_shape:output:0-sequential_6/lstm_23/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Jsequential_6/lstm_23/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
<sequential_6/lstm_23/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"sequential_6/lstm_23/transpose:y:0Ssequential_6/lstm_23/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���t
*sequential_6/lstm_23/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_6/lstm_23/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_6/lstm_23/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
$sequential_6/lstm_23/strided_slice_2StridedSlice"sequential_6/lstm_23/transpose:y:03sequential_6/lstm_23/strided_slice_2/stack:output:05sequential_6/lstm_23/strided_slice_2/stack_1:output:05sequential_6/lstm_23/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
7sequential_6/lstm_23/lstm_cell_23/MatMul/ReadVariableOpReadVariableOp@sequential_6_lstm_23_lstm_cell_23_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
(sequential_6/lstm_23/lstm_cell_23/MatMulMatMul-sequential_6/lstm_23/strided_slice_2:output:0?sequential_6/lstm_23/lstm_cell_23/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
9sequential_6/lstm_23/lstm_cell_23/MatMul_1/ReadVariableOpReadVariableOpBsequential_6_lstm_23_lstm_cell_23_matmul_1_readvariableop_resource*
_output_shapes
:	#�*
dtype0�
*sequential_6/lstm_23/lstm_cell_23/MatMul_1MatMul#sequential_6/lstm_23/zeros:output:0Asequential_6/lstm_23/lstm_cell_23/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%sequential_6/lstm_23/lstm_cell_23/addAddV22sequential_6/lstm_23/lstm_cell_23/MatMul:product:04sequential_6/lstm_23/lstm_cell_23/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
8sequential_6/lstm_23/lstm_cell_23/BiasAdd/ReadVariableOpReadVariableOpAsequential_6_lstm_23_lstm_cell_23_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
)sequential_6/lstm_23/lstm_cell_23/BiasAddBiasAdd)sequential_6/lstm_23/lstm_cell_23/add:z:0@sequential_6/lstm_23/lstm_cell_23/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
1sequential_6/lstm_23/lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
'sequential_6/lstm_23/lstm_cell_23/splitSplit:sequential_6/lstm_23/lstm_cell_23/split/split_dim:output:02sequential_6/lstm_23/lstm_cell_23/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������#:���������#:���������#:���������#*
	num_split�
)sequential_6/lstm_23/lstm_cell_23/SigmoidSigmoid0sequential_6/lstm_23/lstm_cell_23/split:output:0*
T0*'
_output_shapes
:���������#�
+sequential_6/lstm_23/lstm_cell_23/Sigmoid_1Sigmoid0sequential_6/lstm_23/lstm_cell_23/split:output:1*
T0*'
_output_shapes
:���������#�
%sequential_6/lstm_23/lstm_cell_23/mulMul/sequential_6/lstm_23/lstm_cell_23/Sigmoid_1:y:0%sequential_6/lstm_23/zeros_1:output:0*
T0*'
_output_shapes
:���������#�
&sequential_6/lstm_23/lstm_cell_23/ReluRelu0sequential_6/lstm_23/lstm_cell_23/split:output:2*
T0*'
_output_shapes
:���������#�
'sequential_6/lstm_23/lstm_cell_23/mul_1Mul-sequential_6/lstm_23/lstm_cell_23/Sigmoid:y:04sequential_6/lstm_23/lstm_cell_23/Relu:activations:0*
T0*'
_output_shapes
:���������#�
'sequential_6/lstm_23/lstm_cell_23/add_1AddV2)sequential_6/lstm_23/lstm_cell_23/mul:z:0+sequential_6/lstm_23/lstm_cell_23/mul_1:z:0*
T0*'
_output_shapes
:���������#�
+sequential_6/lstm_23/lstm_cell_23/Sigmoid_2Sigmoid0sequential_6/lstm_23/lstm_cell_23/split:output:3*
T0*'
_output_shapes
:���������#�
(sequential_6/lstm_23/lstm_cell_23/Relu_1Relu+sequential_6/lstm_23/lstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:���������#�
'sequential_6/lstm_23/lstm_cell_23/mul_2Mul/sequential_6/lstm_23/lstm_cell_23/Sigmoid_2:y:06sequential_6/lstm_23/lstm_cell_23/Relu_1:activations:0*
T0*'
_output_shapes
:���������#�
2sequential_6/lstm_23/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
$sequential_6/lstm_23/TensorArrayV2_1TensorListReserve;sequential_6/lstm_23/TensorArrayV2_1/element_shape:output:0-sequential_6/lstm_23/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���[
sequential_6/lstm_23/timeConst*
_output_shapes
: *
dtype0*
value	B : x
-sequential_6/lstm_23/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������i
'sequential_6/lstm_23/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential_6/lstm_23/whileWhile0sequential_6/lstm_23/while/loop_counter:output:06sequential_6/lstm_23/while/maximum_iterations:output:0"sequential_6/lstm_23/time:output:0-sequential_6/lstm_23/TensorArrayV2_1:handle:0#sequential_6/lstm_23/zeros:output:0%sequential_6/lstm_23/zeros_1:output:0-sequential_6/lstm_23/strided_slice_1:output:0Lsequential_6/lstm_23/TensorArrayUnstack/TensorListFromTensor:output_handle:0@sequential_6_lstm_23_lstm_cell_23_matmul_readvariableop_resourceBsequential_6_lstm_23_lstm_cell_23_matmul_1_readvariableop_resourceAsequential_6_lstm_23_lstm_cell_23_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������#:���������#: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *2
body*R(
&sequential_6_lstm_23_while_body_121526*2
cond*R(
&sequential_6_lstm_23_while_cond_121525*K
output_shapes:
8: : : : :���������#:���������#: : : : : *
parallel_iterations �
Esequential_6/lstm_23/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
7sequential_6/lstm_23/TensorArrayV2Stack/TensorListStackTensorListStack#sequential_6/lstm_23/while:output:3Nsequential_6/lstm_23/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������#*
element_dtype0}
*sequential_6/lstm_23/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������v
,sequential_6/lstm_23/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,sequential_6/lstm_23/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
$sequential_6/lstm_23/strided_slice_3StridedSlice@sequential_6/lstm_23/TensorArrayV2Stack/TensorListStack:tensor:03sequential_6/lstm_23/strided_slice_3/stack:output:05sequential_6/lstm_23/strided_slice_3/stack_1:output:05sequential_6/lstm_23/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������#*
shrink_axis_maskz
%sequential_6/lstm_23/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
 sequential_6/lstm_23/transpose_1	Transpose@sequential_6/lstm_23/TensorArrayV2Stack/TensorListStack:tensor:0.sequential_6/lstm_23/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������#p
sequential_6/lstm_23/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
 sequential_6/dropout_23/IdentityIdentity$sequential_6/lstm_23/transpose_1:y:0*
T0*+
_output_shapes
:���������#s
sequential_6/lstm_24/ShapeShape)sequential_6/dropout_23/Identity:output:0*
T0*
_output_shapes
:r
(sequential_6/lstm_24/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*sequential_6/lstm_24/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*sequential_6/lstm_24/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"sequential_6/lstm_24/strided_sliceStridedSlice#sequential_6/lstm_24/Shape:output:01sequential_6/lstm_24/strided_slice/stack:output:03sequential_6/lstm_24/strided_slice/stack_1:output:03sequential_6/lstm_24/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#sequential_6/lstm_24/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :#�
!sequential_6/lstm_24/zeros/packedPack+sequential_6/lstm_24/strided_slice:output:0,sequential_6/lstm_24/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:e
 sequential_6/lstm_24/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_6/lstm_24/zerosFill*sequential_6/lstm_24/zeros/packed:output:0)sequential_6/lstm_24/zeros/Const:output:0*
T0*'
_output_shapes
:���������#g
%sequential_6/lstm_24/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :#�
#sequential_6/lstm_24/zeros_1/packedPack+sequential_6/lstm_24/strided_slice:output:0.sequential_6/lstm_24/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_6/lstm_24/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_6/lstm_24/zeros_1Fill,sequential_6/lstm_24/zeros_1/packed:output:0+sequential_6/lstm_24/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������#x
#sequential_6/lstm_24/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
sequential_6/lstm_24/transpose	Transpose)sequential_6/dropout_23/Identity:output:0,sequential_6/lstm_24/transpose/perm:output:0*
T0*+
_output_shapes
:���������#n
sequential_6/lstm_24/Shape_1Shape"sequential_6/lstm_24/transpose:y:0*
T0*
_output_shapes
:t
*sequential_6/lstm_24/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_6/lstm_24/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_6/lstm_24/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
$sequential_6/lstm_24/strided_slice_1StridedSlice%sequential_6/lstm_24/Shape_1:output:03sequential_6/lstm_24/strided_slice_1/stack:output:05sequential_6/lstm_24/strided_slice_1/stack_1:output:05sequential_6/lstm_24/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
0sequential_6/lstm_24/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
"sequential_6/lstm_24/TensorArrayV2TensorListReserve9sequential_6/lstm_24/TensorArrayV2/element_shape:output:0-sequential_6/lstm_24/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Jsequential_6/lstm_24/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
<sequential_6/lstm_24/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"sequential_6/lstm_24/transpose:y:0Ssequential_6/lstm_24/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���t
*sequential_6/lstm_24/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_6/lstm_24/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_6/lstm_24/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
$sequential_6/lstm_24/strided_slice_2StridedSlice"sequential_6/lstm_24/transpose:y:03sequential_6/lstm_24/strided_slice_2/stack:output:05sequential_6/lstm_24/strided_slice_2/stack_1:output:05sequential_6/lstm_24/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������#*
shrink_axis_mask�
7sequential_6/lstm_24/lstm_cell_24/MatMul/ReadVariableOpReadVariableOp@sequential_6_lstm_24_lstm_cell_24_matmul_readvariableop_resource*
_output_shapes
:	#�*
dtype0�
(sequential_6/lstm_24/lstm_cell_24/MatMulMatMul-sequential_6/lstm_24/strided_slice_2:output:0?sequential_6/lstm_24/lstm_cell_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
9sequential_6/lstm_24/lstm_cell_24/MatMul_1/ReadVariableOpReadVariableOpBsequential_6_lstm_24_lstm_cell_24_matmul_1_readvariableop_resource*
_output_shapes
:	#�*
dtype0�
*sequential_6/lstm_24/lstm_cell_24/MatMul_1MatMul#sequential_6/lstm_24/zeros:output:0Asequential_6/lstm_24/lstm_cell_24/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%sequential_6/lstm_24/lstm_cell_24/addAddV22sequential_6/lstm_24/lstm_cell_24/MatMul:product:04sequential_6/lstm_24/lstm_cell_24/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
8sequential_6/lstm_24/lstm_cell_24/BiasAdd/ReadVariableOpReadVariableOpAsequential_6_lstm_24_lstm_cell_24_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
)sequential_6/lstm_24/lstm_cell_24/BiasAddBiasAdd)sequential_6/lstm_24/lstm_cell_24/add:z:0@sequential_6/lstm_24/lstm_cell_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
1sequential_6/lstm_24/lstm_cell_24/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
'sequential_6/lstm_24/lstm_cell_24/splitSplit:sequential_6/lstm_24/lstm_cell_24/split/split_dim:output:02sequential_6/lstm_24/lstm_cell_24/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������#:���������#:���������#:���������#*
	num_split�
)sequential_6/lstm_24/lstm_cell_24/SigmoidSigmoid0sequential_6/lstm_24/lstm_cell_24/split:output:0*
T0*'
_output_shapes
:���������#�
+sequential_6/lstm_24/lstm_cell_24/Sigmoid_1Sigmoid0sequential_6/lstm_24/lstm_cell_24/split:output:1*
T0*'
_output_shapes
:���������#�
%sequential_6/lstm_24/lstm_cell_24/mulMul/sequential_6/lstm_24/lstm_cell_24/Sigmoid_1:y:0%sequential_6/lstm_24/zeros_1:output:0*
T0*'
_output_shapes
:���������#�
&sequential_6/lstm_24/lstm_cell_24/ReluRelu0sequential_6/lstm_24/lstm_cell_24/split:output:2*
T0*'
_output_shapes
:���������#�
'sequential_6/lstm_24/lstm_cell_24/mul_1Mul-sequential_6/lstm_24/lstm_cell_24/Sigmoid:y:04sequential_6/lstm_24/lstm_cell_24/Relu:activations:0*
T0*'
_output_shapes
:���������#�
'sequential_6/lstm_24/lstm_cell_24/add_1AddV2)sequential_6/lstm_24/lstm_cell_24/mul:z:0+sequential_6/lstm_24/lstm_cell_24/mul_1:z:0*
T0*'
_output_shapes
:���������#�
+sequential_6/lstm_24/lstm_cell_24/Sigmoid_2Sigmoid0sequential_6/lstm_24/lstm_cell_24/split:output:3*
T0*'
_output_shapes
:���������#�
(sequential_6/lstm_24/lstm_cell_24/Relu_1Relu+sequential_6/lstm_24/lstm_cell_24/add_1:z:0*
T0*'
_output_shapes
:���������#�
'sequential_6/lstm_24/lstm_cell_24/mul_2Mul/sequential_6/lstm_24/lstm_cell_24/Sigmoid_2:y:06sequential_6/lstm_24/lstm_cell_24/Relu_1:activations:0*
T0*'
_output_shapes
:���������#�
2sequential_6/lstm_24/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
$sequential_6/lstm_24/TensorArrayV2_1TensorListReserve;sequential_6/lstm_24/TensorArrayV2_1/element_shape:output:0-sequential_6/lstm_24/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���[
sequential_6/lstm_24/timeConst*
_output_shapes
: *
dtype0*
value	B : x
-sequential_6/lstm_24/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������i
'sequential_6/lstm_24/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential_6/lstm_24/whileWhile0sequential_6/lstm_24/while/loop_counter:output:06sequential_6/lstm_24/while/maximum_iterations:output:0"sequential_6/lstm_24/time:output:0-sequential_6/lstm_24/TensorArrayV2_1:handle:0#sequential_6/lstm_24/zeros:output:0%sequential_6/lstm_24/zeros_1:output:0-sequential_6/lstm_24/strided_slice_1:output:0Lsequential_6/lstm_24/TensorArrayUnstack/TensorListFromTensor:output_handle:0@sequential_6_lstm_24_lstm_cell_24_matmul_readvariableop_resourceBsequential_6_lstm_24_lstm_cell_24_matmul_1_readvariableop_resourceAsequential_6_lstm_24_lstm_cell_24_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������#:���������#: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *2
body*R(
&sequential_6_lstm_24_while_body_121666*2
cond*R(
&sequential_6_lstm_24_while_cond_121665*K
output_shapes:
8: : : : :���������#:���������#: : : : : *
parallel_iterations �
Esequential_6/lstm_24/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
7sequential_6/lstm_24/TensorArrayV2Stack/TensorListStackTensorListStack#sequential_6/lstm_24/while:output:3Nsequential_6/lstm_24/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������#*
element_dtype0}
*sequential_6/lstm_24/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������v
,sequential_6/lstm_24/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,sequential_6/lstm_24/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
$sequential_6/lstm_24/strided_slice_3StridedSlice@sequential_6/lstm_24/TensorArrayV2Stack/TensorListStack:tensor:03sequential_6/lstm_24/strided_slice_3/stack:output:05sequential_6/lstm_24/strided_slice_3/stack_1:output:05sequential_6/lstm_24/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������#*
shrink_axis_maskz
%sequential_6/lstm_24/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
 sequential_6/lstm_24/transpose_1	Transpose@sequential_6/lstm_24/TensorArrayV2Stack/TensorListStack:tensor:0.sequential_6/lstm_24/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������#p
sequential_6/lstm_24/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
 sequential_6/dropout_24/IdentityIdentity-sequential_6/lstm_24/strided_slice_3:output:0*
T0*'
_output_shapes
:���������#�
*sequential_6/dense_6/MatMul/ReadVariableOpReadVariableOp3sequential_6_dense_6_matmul_readvariableop_resource*
_output_shapes

:#*
dtype0�
sequential_6/dense_6/MatMulMatMul)sequential_6/dropout_24/Identity:output:02sequential_6/dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
+sequential_6/dense_6/BiasAdd/ReadVariableOpReadVariableOp4sequential_6_dense_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_6/dense_6/BiasAddBiasAdd%sequential_6/dense_6/MatMul:product:03sequential_6/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������t
IdentityIdentity%sequential_6/dense_6/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp,^sequential_6/dense_6/BiasAdd/ReadVariableOp+^sequential_6/dense_6/MatMul/ReadVariableOp9^sequential_6/lstm_23/lstm_cell_23/BiasAdd/ReadVariableOp8^sequential_6/lstm_23/lstm_cell_23/MatMul/ReadVariableOp:^sequential_6/lstm_23/lstm_cell_23/MatMul_1/ReadVariableOp^sequential_6/lstm_23/while9^sequential_6/lstm_24/lstm_cell_24/BiasAdd/ReadVariableOp8^sequential_6/lstm_24/lstm_cell_24/MatMul/ReadVariableOp:^sequential_6/lstm_24/lstm_cell_24/MatMul_1/ReadVariableOp^sequential_6/lstm_24/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 2Z
+sequential_6/dense_6/BiasAdd/ReadVariableOp+sequential_6/dense_6/BiasAdd/ReadVariableOp2X
*sequential_6/dense_6/MatMul/ReadVariableOp*sequential_6/dense_6/MatMul/ReadVariableOp2t
8sequential_6/lstm_23/lstm_cell_23/BiasAdd/ReadVariableOp8sequential_6/lstm_23/lstm_cell_23/BiasAdd/ReadVariableOp2r
7sequential_6/lstm_23/lstm_cell_23/MatMul/ReadVariableOp7sequential_6/lstm_23/lstm_cell_23/MatMul/ReadVariableOp2v
9sequential_6/lstm_23/lstm_cell_23/MatMul_1/ReadVariableOp9sequential_6/lstm_23/lstm_cell_23/MatMul_1/ReadVariableOp28
sequential_6/lstm_23/whilesequential_6/lstm_23/while2t
8sequential_6/lstm_24/lstm_cell_24/BiasAdd/ReadVariableOp8sequential_6/lstm_24/lstm_cell_24/BiasAdd/ReadVariableOp2r
7sequential_6/lstm_24/lstm_cell_24/MatMul/ReadVariableOp7sequential_6/lstm_24/lstm_cell_24/MatMul/ReadVariableOp2v
9sequential_6/lstm_24/lstm_cell_24/MatMul_1/ReadVariableOp9sequential_6/lstm_24/lstm_cell_24/MatMul_1/ReadVariableOp28
sequential_6/lstm_24/whilesequential_6/lstm_24/while:Z V
+
_output_shapes
:���������
'
_user_specified_namelstm_23_input
�
�
H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_125374

inputs
states_0
states_11
matmul_readvariableop_resource:	�3
 matmul_1_readvariableop_resource:	#�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	#�*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������#:���������#:���������#:���������#*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������#V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������#U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������#N
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������#_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������#T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������#V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������#K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������#c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������#X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������#Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������#Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������#�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������#:���������#: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������#
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������#
"
_user_specified_name
states/1
�
G
+__inference_dropout_23_layer_call_fn_124624

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
:���������#* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_23_layer_call_and_return_conditional_losses_122619d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:���������#"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������#:S O
+
_output_shapes
:���������#
 
_user_specified_nameinputs
�J
�
C__inference_lstm_23_layer_call_and_return_conditional_losses_124619

inputs>
+lstm_cell_23_matmul_readvariableop_resource:	�@
-lstm_cell_23_matmul_1_readvariableop_resource:	#�;
,lstm_cell_23_biasadd_readvariableop_resource:	�
identity��#lstm_cell_23/BiasAdd/ReadVariableOp�"lstm_cell_23/MatMul/ReadVariableOp�$lstm_cell_23/MatMul_1/ReadVariableOp�while;
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
value	B :#s
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
:���������#R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :#w
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
:���������#c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������D
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
"lstm_cell_23/MatMul/ReadVariableOpReadVariableOp+lstm_cell_23_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_23/MatMulMatMulstrided_slice_2:output:0*lstm_cell_23/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$lstm_cell_23/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_23_matmul_1_readvariableop_resource*
_output_shapes
:	#�*
dtype0�
lstm_cell_23/MatMul_1MatMulzeros:output:0,lstm_cell_23/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_23/addAddV2lstm_cell_23/MatMul:product:0lstm_cell_23/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
#lstm_cell_23/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_23_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_23/BiasAddBiasAddlstm_cell_23/add:z:0+lstm_cell_23/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������^
lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_23/splitSplit%lstm_cell_23/split/split_dim:output:0lstm_cell_23/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������#:���������#:���������#:���������#*
	num_splitn
lstm_cell_23/SigmoidSigmoidlstm_cell_23/split:output:0*
T0*'
_output_shapes
:���������#p
lstm_cell_23/Sigmoid_1Sigmoidlstm_cell_23/split:output:1*
T0*'
_output_shapes
:���������#w
lstm_cell_23/mulMullstm_cell_23/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������#h
lstm_cell_23/ReluRelulstm_cell_23/split:output:2*
T0*'
_output_shapes
:���������#�
lstm_cell_23/mul_1Mullstm_cell_23/Sigmoid:y:0lstm_cell_23/Relu:activations:0*
T0*'
_output_shapes
:���������#{
lstm_cell_23/add_1AddV2lstm_cell_23/mul:z:0lstm_cell_23/mul_1:z:0*
T0*'
_output_shapes
:���������#p
lstm_cell_23/Sigmoid_2Sigmoidlstm_cell_23/split:output:3*
T0*'
_output_shapes
:���������#e
lstm_cell_23/Relu_1Relulstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:���������#�
lstm_cell_23/mul_2Mullstm_cell_23/Sigmoid_2:y:0!lstm_cell_23/Relu_1:activations:0*
T0*'
_output_shapes
:���������#n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_23_matmul_readvariableop_resource-lstm_cell_23_matmul_1_readvariableop_resource,lstm_cell_23_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������#:���������#: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_124535*
condR
while_cond_124534*K
output_shapes:
8: : : : :���������#:���������#: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������#*
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
:���������#*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������#[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������#�
NoOpNoOp$^lstm_cell_23/BiasAdd/ReadVariableOp#^lstm_cell_23/MatMul/ReadVariableOp%^lstm_cell_23/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2J
#lstm_cell_23/BiasAdd/ReadVariableOp#lstm_cell_23/BiasAdd/ReadVariableOp2H
"lstm_cell_23/MatMul/ReadVariableOp"lstm_cell_23/MatMul/ReadVariableOp2L
$lstm_cell_23/MatMul_1/ReadVariableOp$lstm_cell_23/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
d
F__inference_dropout_23_layer_call_and_return_conditional_losses_122619

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:���������#_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:���������#"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������#:S O
+
_output_shapes
:���������#
 
_user_specified_nameinputs
�
�
while_cond_124891
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_124891___redundant_placeholder04
0while_while_cond_124891___redundant_placeholder14
0while_while_cond_124891___redundant_placeholder24
0while_while_cond_124891___redundant_placeholder3
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
@: : : : :���������#:���������#: ::::: 
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
:���������#:-)
'
_output_shapes
:���������#:

_output_shapes
: :

_output_shapes
:
�J
�
C__inference_lstm_24_layer_call_and_return_conditional_losses_124976
inputs_0>
+lstm_cell_24_matmul_readvariableop_resource:	#�@
-lstm_cell_24_matmul_1_readvariableop_resource:	#�;
,lstm_cell_24_biasadd_readvariableop_resource:	�
identity��#lstm_cell_24/BiasAdd/ReadVariableOp�"lstm_cell_24/MatMul/ReadVariableOp�$lstm_cell_24/MatMul_1/ReadVariableOp�while=
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
value	B :#s
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
:���������#R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :#w
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
:���������#c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������#D
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
valueB"����#   �
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
:���������#*
shrink_axis_mask�
"lstm_cell_24/MatMul/ReadVariableOpReadVariableOp+lstm_cell_24_matmul_readvariableop_resource*
_output_shapes
:	#�*
dtype0�
lstm_cell_24/MatMulMatMulstrided_slice_2:output:0*lstm_cell_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$lstm_cell_24/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_24_matmul_1_readvariableop_resource*
_output_shapes
:	#�*
dtype0�
lstm_cell_24/MatMul_1MatMulzeros:output:0,lstm_cell_24/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_24/addAddV2lstm_cell_24/MatMul:product:0lstm_cell_24/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
#lstm_cell_24/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_24_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_24/BiasAddBiasAddlstm_cell_24/add:z:0+lstm_cell_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������^
lstm_cell_24/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_24/splitSplit%lstm_cell_24/split/split_dim:output:0lstm_cell_24/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������#:���������#:���������#:���������#*
	num_splitn
lstm_cell_24/SigmoidSigmoidlstm_cell_24/split:output:0*
T0*'
_output_shapes
:���������#p
lstm_cell_24/Sigmoid_1Sigmoidlstm_cell_24/split:output:1*
T0*'
_output_shapes
:���������#w
lstm_cell_24/mulMullstm_cell_24/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������#h
lstm_cell_24/ReluRelulstm_cell_24/split:output:2*
T0*'
_output_shapes
:���������#�
lstm_cell_24/mul_1Mullstm_cell_24/Sigmoid:y:0lstm_cell_24/Relu:activations:0*
T0*'
_output_shapes
:���������#{
lstm_cell_24/add_1AddV2lstm_cell_24/mul:z:0lstm_cell_24/mul_1:z:0*
T0*'
_output_shapes
:���������#p
lstm_cell_24/Sigmoid_2Sigmoidlstm_cell_24/split:output:3*
T0*'
_output_shapes
:���������#e
lstm_cell_24/Relu_1Relulstm_cell_24/add_1:z:0*
T0*'
_output_shapes
:���������#�
lstm_cell_24/mul_2Mullstm_cell_24/Sigmoid_2:y:0!lstm_cell_24/Relu_1:activations:0*
T0*'
_output_shapes
:���������#n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_24_matmul_readvariableop_resource-lstm_cell_24_matmul_1_readvariableop_resource,lstm_cell_24_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������#:���������#: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_124892*
condR
while_cond_124891*K
output_shapes:
8: : : : :���������#:���������#: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������#*
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
:���������#*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������#[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������#�
NoOpNoOp$^lstm_cell_24/BiasAdd/ReadVariableOp#^lstm_cell_24/MatMul/ReadVariableOp%^lstm_cell_24/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������#: : : 2J
#lstm_cell_24/BiasAdd/ReadVariableOp#lstm_cell_24/BiasAdd/ReadVariableOp2H
"lstm_cell_24/MatMul/ReadVariableOp"lstm_cell_24/MatMul/ReadVariableOp2L
$lstm_cell_24/MatMul_1/ReadVariableOp$lstm_cell_24/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������#
"
_user_specified_name
inputs/0
�
�
H__inference_sequential_6_layer_call_and_return_conditional_losses_123313
lstm_23_input!
lstm_23_123291:	�!
lstm_23_123293:	#�
lstm_23_123295:	�!
lstm_24_123299:	#�!
lstm_24_123301:	#�
lstm_24_123303:	� 
dense_6_123307:#
dense_6_123309:
identity��dense_6/StatefulPartitionedCall�lstm_23/StatefulPartitionedCall�lstm_24/StatefulPartitionedCall�
lstm_23/StatefulPartitionedCallStatefulPartitionedCalllstm_23_inputlstm_23_123291lstm_23_123293lstm_23_123295*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������#*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_23_layer_call_and_return_conditional_losses_122606�
dropout_23/PartitionedCallPartitionedCall(lstm_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������#* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_23_layer_call_and_return_conditional_losses_122619�
lstm_24/StatefulPartitionedCallStatefulPartitionedCall#dropout_23/PartitionedCall:output:0lstm_24_123299lstm_24_123301lstm_24_123303*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������#*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_24_layer_call_and_return_conditional_losses_122763�
dropout_24/PartitionedCallPartitionedCall(lstm_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������#* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_24_layer_call_and_return_conditional_losses_122776�
dense_6/StatefulPartitionedCallStatefulPartitionedCall#dropout_24/PartitionedCall:output:0dense_6_123307dense_6_123309*
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
GPU 2J 8� *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_122788w
IdentityIdentity(dense_6/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_6/StatefulPartitionedCall ^lstm_23/StatefulPartitionedCall ^lstm_24/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
lstm_23/StatefulPartitionedCalllstm_23/StatefulPartitionedCall2B
lstm_24/StatefulPartitionedCalllstm_24/StatefulPartitionedCall:Z V
+
_output_shapes
:���������
'
_user_specified_namelstm_23_input
�8
�
while_body_124392
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_23_matmul_readvariableop_resource_0:	�H
5while_lstm_cell_23_matmul_1_readvariableop_resource_0:	#�C
4while_lstm_cell_23_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_23_matmul_readvariableop_resource:	�F
3while_lstm_cell_23_matmul_1_readvariableop_resource:	#�A
2while_lstm_cell_23_biasadd_readvariableop_resource:	���)while/lstm_cell_23/BiasAdd/ReadVariableOp�(while/lstm_cell_23/MatMul/ReadVariableOp�*while/lstm_cell_23/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
(while/lstm_cell_23/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_23_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_23/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_23/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_23/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_23_matmul_1_readvariableop_resource_0*
_output_shapes
:	#�*
dtype0�
while/lstm_cell_23/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_23/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_23/addAddV2#while/lstm_cell_23/MatMul:product:0%while/lstm_cell_23/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_23/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_23_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_23/BiasAddBiasAddwhile/lstm_cell_23/add:z:01while/lstm_cell_23/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
"while/lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_23/splitSplit+while/lstm_cell_23/split/split_dim:output:0#while/lstm_cell_23/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������#:���������#:���������#:���������#*
	num_splitz
while/lstm_cell_23/SigmoidSigmoid!while/lstm_cell_23/split:output:0*
T0*'
_output_shapes
:���������#|
while/lstm_cell_23/Sigmoid_1Sigmoid!while/lstm_cell_23/split:output:1*
T0*'
_output_shapes
:���������#�
while/lstm_cell_23/mulMul while/lstm_cell_23/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������#t
while/lstm_cell_23/ReluRelu!while/lstm_cell_23/split:output:2*
T0*'
_output_shapes
:���������#�
while/lstm_cell_23/mul_1Mulwhile/lstm_cell_23/Sigmoid:y:0%while/lstm_cell_23/Relu:activations:0*
T0*'
_output_shapes
:���������#�
while/lstm_cell_23/add_1AddV2while/lstm_cell_23/mul:z:0while/lstm_cell_23/mul_1:z:0*
T0*'
_output_shapes
:���������#|
while/lstm_cell_23/Sigmoid_2Sigmoid!while/lstm_cell_23/split:output:3*
T0*'
_output_shapes
:���������#q
while/lstm_cell_23/Relu_1Reluwhile/lstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:���������#�
while/lstm_cell_23/mul_2Mul while/lstm_cell_23/Sigmoid_2:y:0'while/lstm_cell_23/Relu_1:activations:0*
T0*'
_output_shapes
:���������#�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_23/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_23/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������#y
while/Identity_5Identitywhile/lstm_cell_23/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������#�

while/NoOpNoOp*^while/lstm_cell_23/BiasAdd/ReadVariableOp)^while/lstm_cell_23/MatMul/ReadVariableOp+^while/lstm_cell_23/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_23_biasadd_readvariableop_resource4while_lstm_cell_23_biasadd_readvariableop_resource_0"l
3while_lstm_cell_23_matmul_1_readvariableop_resource5while_lstm_cell_23_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_23_matmul_readvariableop_resource3while_lstm_cell_23_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������#:���������#: : : : : 2V
)while/lstm_cell_23/BiasAdd/ReadVariableOp)while/lstm_cell_23/BiasAdd/ReadVariableOp2T
(while/lstm_cell_23/MatMul/ReadVariableOp(while/lstm_cell_23/MatMul/ReadVariableOp2X
*while/lstm_cell_23/MatMul_1/ReadVariableOp*while/lstm_cell_23/MatMul_1/ReadVariableOp: 
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
:���������#:-)
'
_output_shapes
:���������#:

_output_shapes
: :

_output_shapes
: 
�J
�
C__inference_lstm_23_layer_call_and_return_conditional_losses_124476

inputs>
+lstm_cell_23_matmul_readvariableop_resource:	�@
-lstm_cell_23_matmul_1_readvariableop_resource:	#�;
,lstm_cell_23_biasadd_readvariableop_resource:	�
identity��#lstm_cell_23/BiasAdd/ReadVariableOp�"lstm_cell_23/MatMul/ReadVariableOp�$lstm_cell_23/MatMul_1/ReadVariableOp�while;
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
value	B :#s
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
:���������#R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :#w
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
:���������#c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������D
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
"lstm_cell_23/MatMul/ReadVariableOpReadVariableOp+lstm_cell_23_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_23/MatMulMatMulstrided_slice_2:output:0*lstm_cell_23/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$lstm_cell_23/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_23_matmul_1_readvariableop_resource*
_output_shapes
:	#�*
dtype0�
lstm_cell_23/MatMul_1MatMulzeros:output:0,lstm_cell_23/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_23/addAddV2lstm_cell_23/MatMul:product:0lstm_cell_23/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
#lstm_cell_23/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_23_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_23/BiasAddBiasAddlstm_cell_23/add:z:0+lstm_cell_23/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������^
lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_23/splitSplit%lstm_cell_23/split/split_dim:output:0lstm_cell_23/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������#:���������#:���������#:���������#*
	num_splitn
lstm_cell_23/SigmoidSigmoidlstm_cell_23/split:output:0*
T0*'
_output_shapes
:���������#p
lstm_cell_23/Sigmoid_1Sigmoidlstm_cell_23/split:output:1*
T0*'
_output_shapes
:���������#w
lstm_cell_23/mulMullstm_cell_23/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������#h
lstm_cell_23/ReluRelulstm_cell_23/split:output:2*
T0*'
_output_shapes
:���������#�
lstm_cell_23/mul_1Mullstm_cell_23/Sigmoid:y:0lstm_cell_23/Relu:activations:0*
T0*'
_output_shapes
:���������#{
lstm_cell_23/add_1AddV2lstm_cell_23/mul:z:0lstm_cell_23/mul_1:z:0*
T0*'
_output_shapes
:���������#p
lstm_cell_23/Sigmoid_2Sigmoidlstm_cell_23/split:output:3*
T0*'
_output_shapes
:���������#e
lstm_cell_23/Relu_1Relulstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:���������#�
lstm_cell_23/mul_2Mullstm_cell_23/Sigmoid_2:y:0!lstm_cell_23/Relu_1:activations:0*
T0*'
_output_shapes
:���������#n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_23_matmul_readvariableop_resource-lstm_cell_23_matmul_1_readvariableop_resource,lstm_cell_23_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������#:���������#: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_124392*
condR
while_cond_124391*K
output_shapes:
8: : : : :���������#:���������#: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������#*
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
:���������#*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������#[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������#�
NoOpNoOp$^lstm_cell_23/BiasAdd/ReadVariableOp#^lstm_cell_23/MatMul/ReadVariableOp%^lstm_cell_23/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2J
#lstm_cell_23/BiasAdd/ReadVariableOp#lstm_cell_23/BiasAdd/ReadVariableOp2H
"lstm_cell_23/MatMul/ReadVariableOp"lstm_cell_23/MatMul/ReadVariableOp2L
$lstm_cell_23/MatMul_1/ReadVariableOp$lstm_cell_23/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�A
�

lstm_23_while_body_123468,
(lstm_23_while_lstm_23_while_loop_counter2
.lstm_23_while_lstm_23_while_maximum_iterations
lstm_23_while_placeholder
lstm_23_while_placeholder_1
lstm_23_while_placeholder_2
lstm_23_while_placeholder_3+
'lstm_23_while_lstm_23_strided_slice_1_0g
clstm_23_while_tensorarrayv2read_tensorlistgetitem_lstm_23_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_23_while_lstm_cell_23_matmul_readvariableop_resource_0:	�P
=lstm_23_while_lstm_cell_23_matmul_1_readvariableop_resource_0:	#�K
<lstm_23_while_lstm_cell_23_biasadd_readvariableop_resource_0:	�
lstm_23_while_identity
lstm_23_while_identity_1
lstm_23_while_identity_2
lstm_23_while_identity_3
lstm_23_while_identity_4
lstm_23_while_identity_5)
%lstm_23_while_lstm_23_strided_slice_1e
alstm_23_while_tensorarrayv2read_tensorlistgetitem_lstm_23_tensorarrayunstack_tensorlistfromtensorL
9lstm_23_while_lstm_cell_23_matmul_readvariableop_resource:	�N
;lstm_23_while_lstm_cell_23_matmul_1_readvariableop_resource:	#�I
:lstm_23_while_lstm_cell_23_biasadd_readvariableop_resource:	���1lstm_23/while/lstm_cell_23/BiasAdd/ReadVariableOp�0lstm_23/while/lstm_cell_23/MatMul/ReadVariableOp�2lstm_23/while/lstm_cell_23/MatMul_1/ReadVariableOp�
?lstm_23/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
1lstm_23/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_23_while_tensorarrayv2read_tensorlistgetitem_lstm_23_tensorarrayunstack_tensorlistfromtensor_0lstm_23_while_placeholderHlstm_23/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
0lstm_23/while/lstm_cell_23/MatMul/ReadVariableOpReadVariableOp;lstm_23_while_lstm_cell_23_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
!lstm_23/while/lstm_cell_23/MatMulMatMul8lstm_23/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_23/while/lstm_cell_23/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
2lstm_23/while/lstm_cell_23/MatMul_1/ReadVariableOpReadVariableOp=lstm_23_while_lstm_cell_23_matmul_1_readvariableop_resource_0*
_output_shapes
:	#�*
dtype0�
#lstm_23/while/lstm_cell_23/MatMul_1MatMullstm_23_while_placeholder_2:lstm_23/while/lstm_cell_23/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_23/while/lstm_cell_23/addAddV2+lstm_23/while/lstm_cell_23/MatMul:product:0-lstm_23/while/lstm_cell_23/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
1lstm_23/while/lstm_cell_23/BiasAdd/ReadVariableOpReadVariableOp<lstm_23_while_lstm_cell_23_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
"lstm_23/while/lstm_cell_23/BiasAddBiasAdd"lstm_23/while/lstm_cell_23/add:z:09lstm_23/while/lstm_cell_23/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������l
*lstm_23/while/lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
 lstm_23/while/lstm_cell_23/splitSplit3lstm_23/while/lstm_cell_23/split/split_dim:output:0+lstm_23/while/lstm_cell_23/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������#:���������#:���������#:���������#*
	num_split�
"lstm_23/while/lstm_cell_23/SigmoidSigmoid)lstm_23/while/lstm_cell_23/split:output:0*
T0*'
_output_shapes
:���������#�
$lstm_23/while/lstm_cell_23/Sigmoid_1Sigmoid)lstm_23/while/lstm_cell_23/split:output:1*
T0*'
_output_shapes
:���������#�
lstm_23/while/lstm_cell_23/mulMul(lstm_23/while/lstm_cell_23/Sigmoid_1:y:0lstm_23_while_placeholder_3*
T0*'
_output_shapes
:���������#�
lstm_23/while/lstm_cell_23/ReluRelu)lstm_23/while/lstm_cell_23/split:output:2*
T0*'
_output_shapes
:���������#�
 lstm_23/while/lstm_cell_23/mul_1Mul&lstm_23/while/lstm_cell_23/Sigmoid:y:0-lstm_23/while/lstm_cell_23/Relu:activations:0*
T0*'
_output_shapes
:���������#�
 lstm_23/while/lstm_cell_23/add_1AddV2"lstm_23/while/lstm_cell_23/mul:z:0$lstm_23/while/lstm_cell_23/mul_1:z:0*
T0*'
_output_shapes
:���������#�
$lstm_23/while/lstm_cell_23/Sigmoid_2Sigmoid)lstm_23/while/lstm_cell_23/split:output:3*
T0*'
_output_shapes
:���������#�
!lstm_23/while/lstm_cell_23/Relu_1Relu$lstm_23/while/lstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:���������#�
 lstm_23/while/lstm_cell_23/mul_2Mul(lstm_23/while/lstm_cell_23/Sigmoid_2:y:0/lstm_23/while/lstm_cell_23/Relu_1:activations:0*
T0*'
_output_shapes
:���������#�
2lstm_23/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_23_while_placeholder_1lstm_23_while_placeholder$lstm_23/while/lstm_cell_23/mul_2:z:0*
_output_shapes
: *
element_dtype0:���U
lstm_23/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_23/while/addAddV2lstm_23_while_placeholderlstm_23/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_23/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_23/while/add_1AddV2(lstm_23_while_lstm_23_while_loop_counterlstm_23/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_23/while/IdentityIdentitylstm_23/while/add_1:z:0^lstm_23/while/NoOp*
T0*
_output_shapes
: �
lstm_23/while/Identity_1Identity.lstm_23_while_lstm_23_while_maximum_iterations^lstm_23/while/NoOp*
T0*
_output_shapes
: q
lstm_23/while/Identity_2Identitylstm_23/while/add:z:0^lstm_23/while/NoOp*
T0*
_output_shapes
: �
lstm_23/while/Identity_3IdentityBlstm_23/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_23/while/NoOp*
T0*
_output_shapes
: �
lstm_23/while/Identity_4Identity$lstm_23/while/lstm_cell_23/mul_2:z:0^lstm_23/while/NoOp*
T0*'
_output_shapes
:���������#�
lstm_23/while/Identity_5Identity$lstm_23/while/lstm_cell_23/add_1:z:0^lstm_23/while/NoOp*
T0*'
_output_shapes
:���������#�
lstm_23/while/NoOpNoOp2^lstm_23/while/lstm_cell_23/BiasAdd/ReadVariableOp1^lstm_23/while/lstm_cell_23/MatMul/ReadVariableOp3^lstm_23/while/lstm_cell_23/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_23_while_identitylstm_23/while/Identity:output:0"=
lstm_23_while_identity_1!lstm_23/while/Identity_1:output:0"=
lstm_23_while_identity_2!lstm_23/while/Identity_2:output:0"=
lstm_23_while_identity_3!lstm_23/while/Identity_3:output:0"=
lstm_23_while_identity_4!lstm_23/while/Identity_4:output:0"=
lstm_23_while_identity_5!lstm_23/while/Identity_5:output:0"P
%lstm_23_while_lstm_23_strided_slice_1'lstm_23_while_lstm_23_strided_slice_1_0"z
:lstm_23_while_lstm_cell_23_biasadd_readvariableop_resource<lstm_23_while_lstm_cell_23_biasadd_readvariableop_resource_0"|
;lstm_23_while_lstm_cell_23_matmul_1_readvariableop_resource=lstm_23_while_lstm_cell_23_matmul_1_readvariableop_resource_0"x
9lstm_23_while_lstm_cell_23_matmul_readvariableop_resource;lstm_23_while_lstm_cell_23_matmul_readvariableop_resource_0"�
alstm_23_while_tensorarrayv2read_tensorlistgetitem_lstm_23_tensorarrayunstack_tensorlistfromtensorclstm_23_while_tensorarrayv2read_tensorlistgetitem_lstm_23_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������#:���������#: : : : : 2f
1lstm_23/while/lstm_cell_23/BiasAdd/ReadVariableOp1lstm_23/while/lstm_cell_23/BiasAdd/ReadVariableOp2d
0lstm_23/while/lstm_cell_23/MatMul/ReadVariableOp0lstm_23/while/lstm_cell_23/MatMul/ReadVariableOp2h
2lstm_23/while/lstm_cell_23/MatMul_1/ReadVariableOp2lstm_23/while/lstm_cell_23/MatMul_1/ReadVariableOp: 
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
:���������#:-)
'
_output_shapes
:���������#:

_output_shapes
: :

_output_shapes
: 
�	
�
-__inference_sequential_6_layer_call_fn_123388

inputs
unknown:	�
	unknown_0:	#�
	unknown_1:	�
	unknown_2:	#�
	unknown_3:	#�
	unknown_4:	�
	unknown_5:#
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_6_layer_call_and_return_conditional_losses_122795o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
$__inference_signature_wrapper_123367
lstm_23_input
unknown:	�
	unknown_0:	#�
	unknown_1:	�
	unknown_2:	#�
	unknown_3:	#�
	unknown_4:	�
	unknown_5:#
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllstm_23_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__wrapped_model_121757o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:���������
'
_user_specified_namelstm_23_input
�J
�
C__inference_lstm_24_layer_call_and_return_conditional_losses_124833
inputs_0>
+lstm_cell_24_matmul_readvariableop_resource:	#�@
-lstm_cell_24_matmul_1_readvariableop_resource:	#�;
,lstm_cell_24_biasadd_readvariableop_resource:	�
identity��#lstm_cell_24/BiasAdd/ReadVariableOp�"lstm_cell_24/MatMul/ReadVariableOp�$lstm_cell_24/MatMul_1/ReadVariableOp�while=
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
value	B :#s
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
:���������#R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :#w
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
:���������#c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������#D
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
valueB"����#   �
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
:���������#*
shrink_axis_mask�
"lstm_cell_24/MatMul/ReadVariableOpReadVariableOp+lstm_cell_24_matmul_readvariableop_resource*
_output_shapes
:	#�*
dtype0�
lstm_cell_24/MatMulMatMulstrided_slice_2:output:0*lstm_cell_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$lstm_cell_24/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_24_matmul_1_readvariableop_resource*
_output_shapes
:	#�*
dtype0�
lstm_cell_24/MatMul_1MatMulzeros:output:0,lstm_cell_24/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_24/addAddV2lstm_cell_24/MatMul:product:0lstm_cell_24/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
#lstm_cell_24/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_24_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_24/BiasAddBiasAddlstm_cell_24/add:z:0+lstm_cell_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������^
lstm_cell_24/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_24/splitSplit%lstm_cell_24/split/split_dim:output:0lstm_cell_24/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������#:���������#:���������#:���������#*
	num_splitn
lstm_cell_24/SigmoidSigmoidlstm_cell_24/split:output:0*
T0*'
_output_shapes
:���������#p
lstm_cell_24/Sigmoid_1Sigmoidlstm_cell_24/split:output:1*
T0*'
_output_shapes
:���������#w
lstm_cell_24/mulMullstm_cell_24/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������#h
lstm_cell_24/ReluRelulstm_cell_24/split:output:2*
T0*'
_output_shapes
:���������#�
lstm_cell_24/mul_1Mullstm_cell_24/Sigmoid:y:0lstm_cell_24/Relu:activations:0*
T0*'
_output_shapes
:���������#{
lstm_cell_24/add_1AddV2lstm_cell_24/mul:z:0lstm_cell_24/mul_1:z:0*
T0*'
_output_shapes
:���������#p
lstm_cell_24/Sigmoid_2Sigmoidlstm_cell_24/split:output:3*
T0*'
_output_shapes
:���������#e
lstm_cell_24/Relu_1Relulstm_cell_24/add_1:z:0*
T0*'
_output_shapes
:���������#�
lstm_cell_24/mul_2Mullstm_cell_24/Sigmoid_2:y:0!lstm_cell_24/Relu_1:activations:0*
T0*'
_output_shapes
:���������#n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_24_matmul_readvariableop_resource-lstm_cell_24_matmul_1_readvariableop_resource,lstm_cell_24_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������#:���������#: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_124749*
condR
while_cond_124748*K
output_shapes:
8: : : : :���������#:���������#: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������#*
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
:���������#*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������#[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������#�
NoOpNoOp$^lstm_cell_24/BiasAdd/ReadVariableOp#^lstm_cell_24/MatMul/ReadVariableOp%^lstm_cell_24/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������#: : : 2J
#lstm_cell_24/BiasAdd/ReadVariableOp#lstm_cell_24/BiasAdd/ReadVariableOp2H
"lstm_cell_24/MatMul/ReadVariableOp"lstm_cell_24/MatMul/ReadVariableOp2L
$lstm_cell_24/MatMul_1/ReadVariableOp$lstm_cell_24/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������#
"
_user_specified_name
inputs/0
�8
�
C__inference_lstm_24_layer_call_and_return_conditional_losses_122257

inputs&
lstm_cell_24_122175:	#�&
lstm_cell_24_122177:	#�"
lstm_cell_24_122179:	�
identity��$lstm_cell_24/StatefulPartitionedCall�while;
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
value	B :#s
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
:���������#R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :#w
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
:���������#c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������#D
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
valueB"����#   �
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
:���������#*
shrink_axis_mask�
$lstm_cell_24/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_24_122175lstm_cell_24_122177lstm_cell_24_122179*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������#:���������#:���������#*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_24_layer_call_and_return_conditional_losses_122174n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_24_122175lstm_cell_24_122177lstm_cell_24_122179*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������#:���������#: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_122188*
condR
while_cond_122187*K
output_shapes:
8: : : : :���������#:���������#: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������#*
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
:���������#*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������#[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������#u
NoOpNoOp%^lstm_cell_24/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������#: : : 2L
$lstm_cell_24/StatefulPartitionedCall$lstm_cell_24/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������#
 
_user_specified_nameinputs
�P
�
&sequential_6_lstm_23_while_body_121526F
Bsequential_6_lstm_23_while_sequential_6_lstm_23_while_loop_counterL
Hsequential_6_lstm_23_while_sequential_6_lstm_23_while_maximum_iterations*
&sequential_6_lstm_23_while_placeholder,
(sequential_6_lstm_23_while_placeholder_1,
(sequential_6_lstm_23_while_placeholder_2,
(sequential_6_lstm_23_while_placeholder_3E
Asequential_6_lstm_23_while_sequential_6_lstm_23_strided_slice_1_0�
}sequential_6_lstm_23_while_tensorarrayv2read_tensorlistgetitem_sequential_6_lstm_23_tensorarrayunstack_tensorlistfromtensor_0[
Hsequential_6_lstm_23_while_lstm_cell_23_matmul_readvariableop_resource_0:	�]
Jsequential_6_lstm_23_while_lstm_cell_23_matmul_1_readvariableop_resource_0:	#�X
Isequential_6_lstm_23_while_lstm_cell_23_biasadd_readvariableop_resource_0:	�'
#sequential_6_lstm_23_while_identity)
%sequential_6_lstm_23_while_identity_1)
%sequential_6_lstm_23_while_identity_2)
%sequential_6_lstm_23_while_identity_3)
%sequential_6_lstm_23_while_identity_4)
%sequential_6_lstm_23_while_identity_5C
?sequential_6_lstm_23_while_sequential_6_lstm_23_strided_slice_1
{sequential_6_lstm_23_while_tensorarrayv2read_tensorlistgetitem_sequential_6_lstm_23_tensorarrayunstack_tensorlistfromtensorY
Fsequential_6_lstm_23_while_lstm_cell_23_matmul_readvariableop_resource:	�[
Hsequential_6_lstm_23_while_lstm_cell_23_matmul_1_readvariableop_resource:	#�V
Gsequential_6_lstm_23_while_lstm_cell_23_biasadd_readvariableop_resource:	���>sequential_6/lstm_23/while/lstm_cell_23/BiasAdd/ReadVariableOp�=sequential_6/lstm_23/while/lstm_cell_23/MatMul/ReadVariableOp�?sequential_6/lstm_23/while/lstm_cell_23/MatMul_1/ReadVariableOp�
Lsequential_6/lstm_23/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
>sequential_6/lstm_23/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}sequential_6_lstm_23_while_tensorarrayv2read_tensorlistgetitem_sequential_6_lstm_23_tensorarrayunstack_tensorlistfromtensor_0&sequential_6_lstm_23_while_placeholderUsequential_6/lstm_23/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
=sequential_6/lstm_23/while/lstm_cell_23/MatMul/ReadVariableOpReadVariableOpHsequential_6_lstm_23_while_lstm_cell_23_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
.sequential_6/lstm_23/while/lstm_cell_23/MatMulMatMulEsequential_6/lstm_23/while/TensorArrayV2Read/TensorListGetItem:item:0Esequential_6/lstm_23/while/lstm_cell_23/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
?sequential_6/lstm_23/while/lstm_cell_23/MatMul_1/ReadVariableOpReadVariableOpJsequential_6_lstm_23_while_lstm_cell_23_matmul_1_readvariableop_resource_0*
_output_shapes
:	#�*
dtype0�
0sequential_6/lstm_23/while/lstm_cell_23/MatMul_1MatMul(sequential_6_lstm_23_while_placeholder_2Gsequential_6/lstm_23/while/lstm_cell_23/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+sequential_6/lstm_23/while/lstm_cell_23/addAddV28sequential_6/lstm_23/while/lstm_cell_23/MatMul:product:0:sequential_6/lstm_23/while/lstm_cell_23/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
>sequential_6/lstm_23/while/lstm_cell_23/BiasAdd/ReadVariableOpReadVariableOpIsequential_6_lstm_23_while_lstm_cell_23_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
/sequential_6/lstm_23/while/lstm_cell_23/BiasAddBiasAdd/sequential_6/lstm_23/while/lstm_cell_23/add:z:0Fsequential_6/lstm_23/while/lstm_cell_23/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
7sequential_6/lstm_23/while/lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
-sequential_6/lstm_23/while/lstm_cell_23/splitSplit@sequential_6/lstm_23/while/lstm_cell_23/split/split_dim:output:08sequential_6/lstm_23/while/lstm_cell_23/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������#:���������#:���������#:���������#*
	num_split�
/sequential_6/lstm_23/while/lstm_cell_23/SigmoidSigmoid6sequential_6/lstm_23/while/lstm_cell_23/split:output:0*
T0*'
_output_shapes
:���������#�
1sequential_6/lstm_23/while/lstm_cell_23/Sigmoid_1Sigmoid6sequential_6/lstm_23/while/lstm_cell_23/split:output:1*
T0*'
_output_shapes
:���������#�
+sequential_6/lstm_23/while/lstm_cell_23/mulMul5sequential_6/lstm_23/while/lstm_cell_23/Sigmoid_1:y:0(sequential_6_lstm_23_while_placeholder_3*
T0*'
_output_shapes
:���������#�
,sequential_6/lstm_23/while/lstm_cell_23/ReluRelu6sequential_6/lstm_23/while/lstm_cell_23/split:output:2*
T0*'
_output_shapes
:���������#�
-sequential_6/lstm_23/while/lstm_cell_23/mul_1Mul3sequential_6/lstm_23/while/lstm_cell_23/Sigmoid:y:0:sequential_6/lstm_23/while/lstm_cell_23/Relu:activations:0*
T0*'
_output_shapes
:���������#�
-sequential_6/lstm_23/while/lstm_cell_23/add_1AddV2/sequential_6/lstm_23/while/lstm_cell_23/mul:z:01sequential_6/lstm_23/while/lstm_cell_23/mul_1:z:0*
T0*'
_output_shapes
:���������#�
1sequential_6/lstm_23/while/lstm_cell_23/Sigmoid_2Sigmoid6sequential_6/lstm_23/while/lstm_cell_23/split:output:3*
T0*'
_output_shapes
:���������#�
.sequential_6/lstm_23/while/lstm_cell_23/Relu_1Relu1sequential_6/lstm_23/while/lstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:���������#�
-sequential_6/lstm_23/while/lstm_cell_23/mul_2Mul5sequential_6/lstm_23/while/lstm_cell_23/Sigmoid_2:y:0<sequential_6/lstm_23/while/lstm_cell_23/Relu_1:activations:0*
T0*'
_output_shapes
:���������#�
?sequential_6/lstm_23/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(sequential_6_lstm_23_while_placeholder_1&sequential_6_lstm_23_while_placeholder1sequential_6/lstm_23/while/lstm_cell_23/mul_2:z:0*
_output_shapes
: *
element_dtype0:���b
 sequential_6/lstm_23/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
sequential_6/lstm_23/while/addAddV2&sequential_6_lstm_23_while_placeholder)sequential_6/lstm_23/while/add/y:output:0*
T0*
_output_shapes
: d
"sequential_6/lstm_23/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
 sequential_6/lstm_23/while/add_1AddV2Bsequential_6_lstm_23_while_sequential_6_lstm_23_while_loop_counter+sequential_6/lstm_23/while/add_1/y:output:0*
T0*
_output_shapes
: �
#sequential_6/lstm_23/while/IdentityIdentity$sequential_6/lstm_23/while/add_1:z:0 ^sequential_6/lstm_23/while/NoOp*
T0*
_output_shapes
: �
%sequential_6/lstm_23/while/Identity_1IdentityHsequential_6_lstm_23_while_sequential_6_lstm_23_while_maximum_iterations ^sequential_6/lstm_23/while/NoOp*
T0*
_output_shapes
: �
%sequential_6/lstm_23/while/Identity_2Identity"sequential_6/lstm_23/while/add:z:0 ^sequential_6/lstm_23/while/NoOp*
T0*
_output_shapes
: �
%sequential_6/lstm_23/while/Identity_3IdentityOsequential_6/lstm_23/while/TensorArrayV2Write/TensorListSetItem:output_handle:0 ^sequential_6/lstm_23/while/NoOp*
T0*
_output_shapes
: �
%sequential_6/lstm_23/while/Identity_4Identity1sequential_6/lstm_23/while/lstm_cell_23/mul_2:z:0 ^sequential_6/lstm_23/while/NoOp*
T0*'
_output_shapes
:���������#�
%sequential_6/lstm_23/while/Identity_5Identity1sequential_6/lstm_23/while/lstm_cell_23/add_1:z:0 ^sequential_6/lstm_23/while/NoOp*
T0*'
_output_shapes
:���������#�
sequential_6/lstm_23/while/NoOpNoOp?^sequential_6/lstm_23/while/lstm_cell_23/BiasAdd/ReadVariableOp>^sequential_6/lstm_23/while/lstm_cell_23/MatMul/ReadVariableOp@^sequential_6/lstm_23/while/lstm_cell_23/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "S
#sequential_6_lstm_23_while_identity,sequential_6/lstm_23/while/Identity:output:0"W
%sequential_6_lstm_23_while_identity_1.sequential_6/lstm_23/while/Identity_1:output:0"W
%sequential_6_lstm_23_while_identity_2.sequential_6/lstm_23/while/Identity_2:output:0"W
%sequential_6_lstm_23_while_identity_3.sequential_6/lstm_23/while/Identity_3:output:0"W
%sequential_6_lstm_23_while_identity_4.sequential_6/lstm_23/while/Identity_4:output:0"W
%sequential_6_lstm_23_while_identity_5.sequential_6/lstm_23/while/Identity_5:output:0"�
Gsequential_6_lstm_23_while_lstm_cell_23_biasadd_readvariableop_resourceIsequential_6_lstm_23_while_lstm_cell_23_biasadd_readvariableop_resource_0"�
Hsequential_6_lstm_23_while_lstm_cell_23_matmul_1_readvariableop_resourceJsequential_6_lstm_23_while_lstm_cell_23_matmul_1_readvariableop_resource_0"�
Fsequential_6_lstm_23_while_lstm_cell_23_matmul_readvariableop_resourceHsequential_6_lstm_23_while_lstm_cell_23_matmul_readvariableop_resource_0"�
?sequential_6_lstm_23_while_sequential_6_lstm_23_strided_slice_1Asequential_6_lstm_23_while_sequential_6_lstm_23_strided_slice_1_0"�
{sequential_6_lstm_23_while_tensorarrayv2read_tensorlistgetitem_sequential_6_lstm_23_tensorarrayunstack_tensorlistfromtensor}sequential_6_lstm_23_while_tensorarrayv2read_tensorlistgetitem_sequential_6_lstm_23_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������#:���������#: : : : : 2�
>sequential_6/lstm_23/while/lstm_cell_23/BiasAdd/ReadVariableOp>sequential_6/lstm_23/while/lstm_cell_23/BiasAdd/ReadVariableOp2~
=sequential_6/lstm_23/while/lstm_cell_23/MatMul/ReadVariableOp=sequential_6/lstm_23/while/lstm_cell_23/MatMul/ReadVariableOp2�
?sequential_6/lstm_23/while/lstm_cell_23/MatMul_1/ReadVariableOp?sequential_6/lstm_23/while/lstm_cell_23/MatMul_1/ReadVariableOp: 
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
:���������#:-)
'
_output_shapes
:���������#:

_output_shapes
: :

_output_shapes
: 
�
�
H__inference_lstm_cell_24_layer_call_and_return_conditional_losses_122174

inputs

states
states_11
matmul_readvariableop_resource:	#�3
 matmul_1_readvariableop_resource:	#�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	#�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	#�*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������#:���������#:���������#:���������#*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������#V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������#U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������#N
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������#_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������#T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������#V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������#K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������#c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������#X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������#Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������#Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������#�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������#:���������#:���������#: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������#
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������#
 
_user_specified_namestates:OK
'
_output_shapes
:���������#
 
_user_specified_namestates
�
�
&sequential_6_lstm_23_while_cond_121525F
Bsequential_6_lstm_23_while_sequential_6_lstm_23_while_loop_counterL
Hsequential_6_lstm_23_while_sequential_6_lstm_23_while_maximum_iterations*
&sequential_6_lstm_23_while_placeholder,
(sequential_6_lstm_23_while_placeholder_1,
(sequential_6_lstm_23_while_placeholder_2,
(sequential_6_lstm_23_while_placeholder_3H
Dsequential_6_lstm_23_while_less_sequential_6_lstm_23_strided_slice_1^
Zsequential_6_lstm_23_while_sequential_6_lstm_23_while_cond_121525___redundant_placeholder0^
Zsequential_6_lstm_23_while_sequential_6_lstm_23_while_cond_121525___redundant_placeholder1^
Zsequential_6_lstm_23_while_sequential_6_lstm_23_while_cond_121525___redundant_placeholder2^
Zsequential_6_lstm_23_while_sequential_6_lstm_23_while_cond_121525___redundant_placeholder3'
#sequential_6_lstm_23_while_identity
�
sequential_6/lstm_23/while/LessLess&sequential_6_lstm_23_while_placeholderDsequential_6_lstm_23_while_less_sequential_6_lstm_23_strided_slice_1*
T0*
_output_shapes
: u
#sequential_6/lstm_23/while/IdentityIdentity#sequential_6/lstm_23/while/Less:z:0*
T0
*
_output_shapes
: "S
#sequential_6_lstm_23_while_identity,sequential_6/lstm_23/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������#:���������#: ::::: 
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
:���������#:-)
'
_output_shapes
:���������#:

_output_shapes
: :

_output_shapes
:
�A
�

lstm_23_while_body_123758,
(lstm_23_while_lstm_23_while_loop_counter2
.lstm_23_while_lstm_23_while_maximum_iterations
lstm_23_while_placeholder
lstm_23_while_placeholder_1
lstm_23_while_placeholder_2
lstm_23_while_placeholder_3+
'lstm_23_while_lstm_23_strided_slice_1_0g
clstm_23_while_tensorarrayv2read_tensorlistgetitem_lstm_23_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_23_while_lstm_cell_23_matmul_readvariableop_resource_0:	�P
=lstm_23_while_lstm_cell_23_matmul_1_readvariableop_resource_0:	#�K
<lstm_23_while_lstm_cell_23_biasadd_readvariableop_resource_0:	�
lstm_23_while_identity
lstm_23_while_identity_1
lstm_23_while_identity_2
lstm_23_while_identity_3
lstm_23_while_identity_4
lstm_23_while_identity_5)
%lstm_23_while_lstm_23_strided_slice_1e
alstm_23_while_tensorarrayv2read_tensorlistgetitem_lstm_23_tensorarrayunstack_tensorlistfromtensorL
9lstm_23_while_lstm_cell_23_matmul_readvariableop_resource:	�N
;lstm_23_while_lstm_cell_23_matmul_1_readvariableop_resource:	#�I
:lstm_23_while_lstm_cell_23_biasadd_readvariableop_resource:	���1lstm_23/while/lstm_cell_23/BiasAdd/ReadVariableOp�0lstm_23/while/lstm_cell_23/MatMul/ReadVariableOp�2lstm_23/while/lstm_cell_23/MatMul_1/ReadVariableOp�
?lstm_23/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
1lstm_23/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_23_while_tensorarrayv2read_tensorlistgetitem_lstm_23_tensorarrayunstack_tensorlistfromtensor_0lstm_23_while_placeholderHlstm_23/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
0lstm_23/while/lstm_cell_23/MatMul/ReadVariableOpReadVariableOp;lstm_23_while_lstm_cell_23_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
!lstm_23/while/lstm_cell_23/MatMulMatMul8lstm_23/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_23/while/lstm_cell_23/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
2lstm_23/while/lstm_cell_23/MatMul_1/ReadVariableOpReadVariableOp=lstm_23_while_lstm_cell_23_matmul_1_readvariableop_resource_0*
_output_shapes
:	#�*
dtype0�
#lstm_23/while/lstm_cell_23/MatMul_1MatMullstm_23_while_placeholder_2:lstm_23/while/lstm_cell_23/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_23/while/lstm_cell_23/addAddV2+lstm_23/while/lstm_cell_23/MatMul:product:0-lstm_23/while/lstm_cell_23/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
1lstm_23/while/lstm_cell_23/BiasAdd/ReadVariableOpReadVariableOp<lstm_23_while_lstm_cell_23_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
"lstm_23/while/lstm_cell_23/BiasAddBiasAdd"lstm_23/while/lstm_cell_23/add:z:09lstm_23/while/lstm_cell_23/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������l
*lstm_23/while/lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
 lstm_23/while/lstm_cell_23/splitSplit3lstm_23/while/lstm_cell_23/split/split_dim:output:0+lstm_23/while/lstm_cell_23/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������#:���������#:���������#:���������#*
	num_split�
"lstm_23/while/lstm_cell_23/SigmoidSigmoid)lstm_23/while/lstm_cell_23/split:output:0*
T0*'
_output_shapes
:���������#�
$lstm_23/while/lstm_cell_23/Sigmoid_1Sigmoid)lstm_23/while/lstm_cell_23/split:output:1*
T0*'
_output_shapes
:���������#�
lstm_23/while/lstm_cell_23/mulMul(lstm_23/while/lstm_cell_23/Sigmoid_1:y:0lstm_23_while_placeholder_3*
T0*'
_output_shapes
:���������#�
lstm_23/while/lstm_cell_23/ReluRelu)lstm_23/while/lstm_cell_23/split:output:2*
T0*'
_output_shapes
:���������#�
 lstm_23/while/lstm_cell_23/mul_1Mul&lstm_23/while/lstm_cell_23/Sigmoid:y:0-lstm_23/while/lstm_cell_23/Relu:activations:0*
T0*'
_output_shapes
:���������#�
 lstm_23/while/lstm_cell_23/add_1AddV2"lstm_23/while/lstm_cell_23/mul:z:0$lstm_23/while/lstm_cell_23/mul_1:z:0*
T0*'
_output_shapes
:���������#�
$lstm_23/while/lstm_cell_23/Sigmoid_2Sigmoid)lstm_23/while/lstm_cell_23/split:output:3*
T0*'
_output_shapes
:���������#�
!lstm_23/while/lstm_cell_23/Relu_1Relu$lstm_23/while/lstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:���������#�
 lstm_23/while/lstm_cell_23/mul_2Mul(lstm_23/while/lstm_cell_23/Sigmoid_2:y:0/lstm_23/while/lstm_cell_23/Relu_1:activations:0*
T0*'
_output_shapes
:���������#�
2lstm_23/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_23_while_placeholder_1lstm_23_while_placeholder$lstm_23/while/lstm_cell_23/mul_2:z:0*
_output_shapes
: *
element_dtype0:���U
lstm_23/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_23/while/addAddV2lstm_23_while_placeholderlstm_23/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_23/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_23/while/add_1AddV2(lstm_23_while_lstm_23_while_loop_counterlstm_23/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_23/while/IdentityIdentitylstm_23/while/add_1:z:0^lstm_23/while/NoOp*
T0*
_output_shapes
: �
lstm_23/while/Identity_1Identity.lstm_23_while_lstm_23_while_maximum_iterations^lstm_23/while/NoOp*
T0*
_output_shapes
: q
lstm_23/while/Identity_2Identitylstm_23/while/add:z:0^lstm_23/while/NoOp*
T0*
_output_shapes
: �
lstm_23/while/Identity_3IdentityBlstm_23/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_23/while/NoOp*
T0*
_output_shapes
: �
lstm_23/while/Identity_4Identity$lstm_23/while/lstm_cell_23/mul_2:z:0^lstm_23/while/NoOp*
T0*'
_output_shapes
:���������#�
lstm_23/while/Identity_5Identity$lstm_23/while/lstm_cell_23/add_1:z:0^lstm_23/while/NoOp*
T0*'
_output_shapes
:���������#�
lstm_23/while/NoOpNoOp2^lstm_23/while/lstm_cell_23/BiasAdd/ReadVariableOp1^lstm_23/while/lstm_cell_23/MatMul/ReadVariableOp3^lstm_23/while/lstm_cell_23/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_23_while_identitylstm_23/while/Identity:output:0"=
lstm_23_while_identity_1!lstm_23/while/Identity_1:output:0"=
lstm_23_while_identity_2!lstm_23/while/Identity_2:output:0"=
lstm_23_while_identity_3!lstm_23/while/Identity_3:output:0"=
lstm_23_while_identity_4!lstm_23/while/Identity_4:output:0"=
lstm_23_while_identity_5!lstm_23/while/Identity_5:output:0"P
%lstm_23_while_lstm_23_strided_slice_1'lstm_23_while_lstm_23_strided_slice_1_0"z
:lstm_23_while_lstm_cell_23_biasadd_readvariableop_resource<lstm_23_while_lstm_cell_23_biasadd_readvariableop_resource_0"|
;lstm_23_while_lstm_cell_23_matmul_1_readvariableop_resource=lstm_23_while_lstm_cell_23_matmul_1_readvariableop_resource_0"x
9lstm_23_while_lstm_cell_23_matmul_readvariableop_resource;lstm_23_while_lstm_cell_23_matmul_readvariableop_resource_0"�
alstm_23_while_tensorarrayv2read_tensorlistgetitem_lstm_23_tensorarrayunstack_tensorlistfromtensorclstm_23_while_tensorarrayv2read_tensorlistgetitem_lstm_23_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������#:���������#: : : : : 2f
1lstm_23/while/lstm_cell_23/BiasAdd/ReadVariableOp1lstm_23/while/lstm_cell_23/BiasAdd/ReadVariableOp2d
0lstm_23/while/lstm_cell_23/MatMul/ReadVariableOp0lstm_23/while/lstm_cell_23/MatMul/ReadVariableOp2h
2lstm_23/while/lstm_cell_23/MatMul_1/ReadVariableOp2lstm_23/while/lstm_cell_23/MatMul_1/ReadVariableOp: 
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
:���������#:-)
'
_output_shapes
:���������#:

_output_shapes
: :

_output_shapes
: 
�
�
(__inference_lstm_24_layer_call_fn_124657
inputs_0
unknown:	#�
	unknown_0:	#�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������#*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_24_layer_call_and_return_conditional_losses_122257o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������#`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������#: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������#
"
_user_specified_name
inputs/0
�
G
+__inference_dropout_24_layer_call_fn_125267

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
:���������#* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_24_layer_call_and_return_conditional_losses_122776`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������#"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������#:O K
'
_output_shapes
:���������#
 
_user_specified_nameinputs
�8
�
while_body_124535
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_23_matmul_readvariableop_resource_0:	�H
5while_lstm_cell_23_matmul_1_readvariableop_resource_0:	#�C
4while_lstm_cell_23_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_23_matmul_readvariableop_resource:	�F
3while_lstm_cell_23_matmul_1_readvariableop_resource:	#�A
2while_lstm_cell_23_biasadd_readvariableop_resource:	���)while/lstm_cell_23/BiasAdd/ReadVariableOp�(while/lstm_cell_23/MatMul/ReadVariableOp�*while/lstm_cell_23/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
(while/lstm_cell_23/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_23_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_23/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_23/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_23/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_23_matmul_1_readvariableop_resource_0*
_output_shapes
:	#�*
dtype0�
while/lstm_cell_23/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_23/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_23/addAddV2#while/lstm_cell_23/MatMul:product:0%while/lstm_cell_23/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_23/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_23_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_23/BiasAddBiasAddwhile/lstm_cell_23/add:z:01while/lstm_cell_23/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
"while/lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_23/splitSplit+while/lstm_cell_23/split/split_dim:output:0#while/lstm_cell_23/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������#:���������#:���������#:���������#*
	num_splitz
while/lstm_cell_23/SigmoidSigmoid!while/lstm_cell_23/split:output:0*
T0*'
_output_shapes
:���������#|
while/lstm_cell_23/Sigmoid_1Sigmoid!while/lstm_cell_23/split:output:1*
T0*'
_output_shapes
:���������#�
while/lstm_cell_23/mulMul while/lstm_cell_23/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������#t
while/lstm_cell_23/ReluRelu!while/lstm_cell_23/split:output:2*
T0*'
_output_shapes
:���������#�
while/lstm_cell_23/mul_1Mulwhile/lstm_cell_23/Sigmoid:y:0%while/lstm_cell_23/Relu:activations:0*
T0*'
_output_shapes
:���������#�
while/lstm_cell_23/add_1AddV2while/lstm_cell_23/mul:z:0while/lstm_cell_23/mul_1:z:0*
T0*'
_output_shapes
:���������#|
while/lstm_cell_23/Sigmoid_2Sigmoid!while/lstm_cell_23/split:output:3*
T0*'
_output_shapes
:���������#q
while/lstm_cell_23/Relu_1Reluwhile/lstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:���������#�
while/lstm_cell_23/mul_2Mul while/lstm_cell_23/Sigmoid_2:y:0'while/lstm_cell_23/Relu_1:activations:0*
T0*'
_output_shapes
:���������#�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_23/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_23/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������#y
while/Identity_5Identitywhile/lstm_cell_23/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������#�

while/NoOpNoOp*^while/lstm_cell_23/BiasAdd/ReadVariableOp)^while/lstm_cell_23/MatMul/ReadVariableOp+^while/lstm_cell_23/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_23_biasadd_readvariableop_resource4while_lstm_cell_23_biasadd_readvariableop_resource_0"l
3while_lstm_cell_23_matmul_1_readvariableop_resource5while_lstm_cell_23_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_23_matmul_readvariableop_resource3while_lstm_cell_23_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������#:���������#: : : : : 2V
)while/lstm_cell_23/BiasAdd/ReadVariableOp)while/lstm_cell_23/BiasAdd/ReadVariableOp2T
(while/lstm_cell_23/MatMul/ReadVariableOp(while/lstm_cell_23/MatMul/ReadVariableOp2X
*while/lstm_cell_23/MatMul_1/ReadVariableOp*while/lstm_cell_23/MatMul_1/ReadVariableOp: 
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
:���������#:-)
'
_output_shapes
:���������#:

_output_shapes
: :

_output_shapes
: 
�	
�
C__inference_dense_6_layer_call_and_return_conditional_losses_125308

inputs0
matmul_readvariableop_resource:#-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:#*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������#: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������#
 
_user_specified_nameinputs
��
�
"__inference__traced_restore_125747
file_prefix1
assignvariableop_dense_6_kernel:#-
assignvariableop_1_dense_6_bias:#
assignvariableop_2_beta_1: #
assignvariableop_3_beta_2: "
assignvariableop_4_decay: *
 assignvariableop_5_learning_rate: &
assignvariableop_6_adam_iter:	 A
.assignvariableop_7_lstm_23_lstm_cell_23_kernel:	�K
8assignvariableop_8_lstm_23_lstm_cell_23_recurrent_kernel:	#�;
,assignvariableop_9_lstm_23_lstm_cell_23_bias:	�B
/assignvariableop_10_lstm_24_lstm_cell_24_kernel:	#�L
9assignvariableop_11_lstm_24_lstm_cell_24_recurrent_kernel:	#�<
-assignvariableop_12_lstm_24_lstm_cell_24_bias:	�#
assignvariableop_13_total: #
assignvariableop_14_count: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: %
assignvariableop_17_total_2: %
assignvariableop_18_count_2: ;
)assignvariableop_19_adam_dense_6_kernel_m:#5
'assignvariableop_20_adam_dense_6_bias_m:I
6assignvariableop_21_adam_lstm_23_lstm_cell_23_kernel_m:	�S
@assignvariableop_22_adam_lstm_23_lstm_cell_23_recurrent_kernel_m:	#�C
4assignvariableop_23_adam_lstm_23_lstm_cell_23_bias_m:	�I
6assignvariableop_24_adam_lstm_24_lstm_cell_24_kernel_m:	#�S
@assignvariableop_25_adam_lstm_24_lstm_cell_24_recurrent_kernel_m:	#�C
4assignvariableop_26_adam_lstm_24_lstm_cell_24_bias_m:	�;
)assignvariableop_27_adam_dense_6_kernel_v:#5
'assignvariableop_28_adam_dense_6_bias_v:I
6assignvariableop_29_adam_lstm_23_lstm_cell_23_kernel_v:	�S
@assignvariableop_30_adam_lstm_23_lstm_cell_23_recurrent_kernel_v:	#�C
4assignvariableop_31_adam_lstm_23_lstm_cell_23_bias_v:	�I
6assignvariableop_32_adam_lstm_24_lstm_cell_24_kernel_v:	#�S
@assignvariableop_33_adam_lstm_24_lstm_cell_24_recurrent_kernel_v:	#�C
4assignvariableop_34_adam_lstm_24_lstm_cell_24_bias_v:	�
identity_36��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*�
value�B�$B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*[
valueRBP$B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::*2
dtypes(
&2$	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_dense_6_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_6_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_beta_1Identity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_beta_2Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_decayIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp assignvariableop_5_learning_rateIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp.assignvariableop_7_lstm_23_lstm_cell_23_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp8assignvariableop_8_lstm_23_lstm_cell_23_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp,assignvariableop_9_lstm_23_lstm_cell_23_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp/assignvariableop_10_lstm_24_lstm_cell_24_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp9assignvariableop_11_lstm_24_lstm_cell_24_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp-assignvariableop_12_lstm_24_lstm_cell_24_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpassignvariableop_17_total_2Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOpassignvariableop_18_count_2Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_6_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp'assignvariableop_20_adam_dense_6_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp6assignvariableop_21_adam_lstm_23_lstm_cell_23_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp@assignvariableop_22_adam_lstm_23_lstm_cell_23_recurrent_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp4assignvariableop_23_adam_lstm_23_lstm_cell_23_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp6assignvariableop_24_adam_lstm_24_lstm_cell_24_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp@assignvariableop_25_adam_lstm_24_lstm_cell_24_recurrent_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp4assignvariableop_26_adam_lstm_24_lstm_cell_24_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp)assignvariableop_27_adam_dense_6_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp'assignvariableop_28_adam_dense_6_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp6assignvariableop_29_adam_lstm_23_lstm_cell_23_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp@assignvariableop_30_adam_lstm_23_lstm_cell_23_recurrent_kernel_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp4assignvariableop_31_adam_lstm_23_lstm_cell_23_bias_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp6assignvariableop_32_adam_lstm_24_lstm_cell_24_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp@assignvariableop_33_adam_lstm_24_lstm_cell_24_recurrent_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp4assignvariableop_34_adam_lstm_24_lstm_cell_24_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_35Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_36IdentityIdentity_35:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_36Identity_36:output:0*[
_input_shapesJ
H: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_34AssignVariableOp_342(
AssignVariableOp_4AssignVariableOp_42(
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
�
�
(__inference_lstm_23_layer_call_fn_124025
inputs_0
unknown:	�
	unknown_0:	#�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������#*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_23_layer_call_and_return_conditional_losses_122098|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������#`
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
�
�
-__inference_lstm_cell_24_layer_call_fn_125423

inputs
states_0
states_1
unknown:	#�
	unknown_0:	#�
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
9:���������#:���������#:���������#*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_24_layer_call_and_return_conditional_losses_122174o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������#q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������#q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������#`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������#:���������#:���������#: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������#
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������#
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������#
"
_user_specified_name
states/1
�
�
while_cond_124391
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_124391___redundant_placeholder04
0while_while_cond_124391___redundant_placeholder14
0while_while_cond_124391___redundant_placeholder24
0while_while_cond_124391___redundant_placeholder3
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
@: : : : :���������#:���������#: ::::: 
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
:���������#:-)
'
_output_shapes
:���������#:

_output_shapes
: :

_output_shapes
:
�"
�
while_body_122188
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_24_122212_0:	#�.
while_lstm_cell_24_122214_0:	#�*
while_lstm_cell_24_122216_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_24_122212:	#�,
while_lstm_cell_24_122214:	#�(
while_lstm_cell_24_122216:	���*while/lstm_cell_24/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������#*
element_dtype0�
*while/lstm_cell_24/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_24_122212_0while_lstm_cell_24_122214_0while_lstm_cell_24_122216_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������#:���������#:���������#*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_24_layer_call_and_return_conditional_losses_122174�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_24/StatefulPartitionedCall:output:0*
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
: �
while/Identity_4Identity3while/lstm_cell_24/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������#�
while/Identity_5Identity3while/lstm_cell_24/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������#y

while/NoOpNoOp+^while/lstm_cell_24/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_24_122212while_lstm_cell_24_122212_0"8
while_lstm_cell_24_122214while_lstm_cell_24_122214_0"8
while_lstm_cell_24_122216while_lstm_cell_24_122216_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������#:���������#: : : : : 2X
*while/lstm_cell_24/StatefulPartitionedCall*while/lstm_cell_24/StatefulPartitionedCall: 
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
:���������#:-)
'
_output_shapes
:���������#:

_output_shapes
: :

_output_shapes
: 
�
�
(__inference_lstm_24_layer_call_fn_124668
inputs_0
unknown:	#�
	unknown_0:	#�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������#*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_24_layer_call_and_return_conditional_losses_122448o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������#`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������#: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������#
"
_user_specified_name
inputs/0
�
�
while_cond_125034
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_125034___redundant_placeholder04
0while_while_cond_125034___redundant_placeholder14
0while_while_cond_125034___redundant_placeholder24
0while_while_cond_125034___redundant_placeholder3
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
@: : : : :���������#:���������#: ::::: 
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
:���������#:-)
'
_output_shapes
:���������#:

_output_shapes
: :

_output_shapes
:
�"
�
while_body_122029
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_23_122053_0:	�.
while_lstm_cell_23_122055_0:	#�*
while_lstm_cell_23_122057_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_23_122053:	�,
while_lstm_cell_23_122055:	#�(
while_lstm_cell_23_122057:	���*while/lstm_cell_23/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
*while/lstm_cell_23/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_23_122053_0while_lstm_cell_23_122055_0while_lstm_cell_23_122057_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������#:���������#:���������#*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_121970�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_23/StatefulPartitionedCall:output:0*
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
: �
while/Identity_4Identity3while/lstm_cell_23/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������#�
while/Identity_5Identity3while/lstm_cell_23/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������#y

while/NoOpNoOp+^while/lstm_cell_23/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_23_122053while_lstm_cell_23_122053_0"8
while_lstm_cell_23_122055while_lstm_cell_23_122055_0"8
while_lstm_cell_23_122057while_lstm_cell_23_122057_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������#:���������#: : : : : 2X
*while/lstm_cell_23/StatefulPartitionedCall*while/lstm_cell_23/StatefulPartitionedCall: 
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
:���������#:-)
'
_output_shapes
:���������#:

_output_shapes
: :

_output_shapes
: 
�8
�
C__inference_lstm_23_layer_call_and_return_conditional_losses_121907

inputs&
lstm_cell_23_121825:	�&
lstm_cell_23_121827:	#�"
lstm_cell_23_121829:	�
identity��$lstm_cell_23/StatefulPartitionedCall�while;
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
value	B :#s
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
:���������#R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :#w
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
:���������#c
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
$lstm_cell_23/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_23_121825lstm_cell_23_121827lstm_cell_23_121829*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������#:���������#:���������#*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_121824n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_23_121825lstm_cell_23_121827lstm_cell_23_121829*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������#:���������#: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_121838*
condR
while_cond_121837*K
output_shapes:
8: : : : :���������#:���������#: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������#*
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
:���������#*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������#[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������#u
NoOpNoOp%^lstm_cell_23/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_23/StatefulPartitionedCall$lstm_cell_23/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
��
�
H__inference_sequential_6_layer_call_and_return_conditional_losses_124003

inputsF
3lstm_23_lstm_cell_23_matmul_readvariableop_resource:	�H
5lstm_23_lstm_cell_23_matmul_1_readvariableop_resource:	#�C
4lstm_23_lstm_cell_23_biasadd_readvariableop_resource:	�F
3lstm_24_lstm_cell_24_matmul_readvariableop_resource:	#�H
5lstm_24_lstm_cell_24_matmul_1_readvariableop_resource:	#�C
4lstm_24_lstm_cell_24_biasadd_readvariableop_resource:	�8
&dense_6_matmul_readvariableop_resource:#5
'dense_6_biasadd_readvariableop_resource:
identity��dense_6/BiasAdd/ReadVariableOp�dense_6/MatMul/ReadVariableOp�+lstm_23/lstm_cell_23/BiasAdd/ReadVariableOp�*lstm_23/lstm_cell_23/MatMul/ReadVariableOp�,lstm_23/lstm_cell_23/MatMul_1/ReadVariableOp�lstm_23/while�+lstm_24/lstm_cell_24/BiasAdd/ReadVariableOp�*lstm_24/lstm_cell_24/MatMul/ReadVariableOp�,lstm_24/lstm_cell_24/MatMul_1/ReadVariableOp�lstm_24/whileC
lstm_23/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_23/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_23/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_23/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_23/strided_sliceStridedSlicelstm_23/Shape:output:0$lstm_23/strided_slice/stack:output:0&lstm_23/strided_slice/stack_1:output:0&lstm_23/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_23/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :#�
lstm_23/zeros/packedPacklstm_23/strided_slice:output:0lstm_23/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_23/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_23/zerosFilllstm_23/zeros/packed:output:0lstm_23/zeros/Const:output:0*
T0*'
_output_shapes
:���������#Z
lstm_23/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :#�
lstm_23/zeros_1/packedPacklstm_23/strided_slice:output:0!lstm_23/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_23/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_23/zeros_1Filllstm_23/zeros_1/packed:output:0lstm_23/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������#k
lstm_23/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_23/transpose	Transposeinputslstm_23/transpose/perm:output:0*
T0*+
_output_shapes
:���������T
lstm_23/Shape_1Shapelstm_23/transpose:y:0*
T0*
_output_shapes
:g
lstm_23/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_23/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_23/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_23/strided_slice_1StridedSlicelstm_23/Shape_1:output:0&lstm_23/strided_slice_1/stack:output:0(lstm_23/strided_slice_1/stack_1:output:0(lstm_23/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_23/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_23/TensorArrayV2TensorListReserve,lstm_23/TensorArrayV2/element_shape:output:0 lstm_23/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
=lstm_23/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
/lstm_23/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_23/transpose:y:0Flstm_23/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���g
lstm_23/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_23/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_23/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_23/strided_slice_2StridedSlicelstm_23/transpose:y:0&lstm_23/strided_slice_2/stack:output:0(lstm_23/strided_slice_2/stack_1:output:0(lstm_23/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
*lstm_23/lstm_cell_23/MatMul/ReadVariableOpReadVariableOp3lstm_23_lstm_cell_23_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_23/lstm_cell_23/MatMulMatMul lstm_23/strided_slice_2:output:02lstm_23/lstm_cell_23/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
,lstm_23/lstm_cell_23/MatMul_1/ReadVariableOpReadVariableOp5lstm_23_lstm_cell_23_matmul_1_readvariableop_resource*
_output_shapes
:	#�*
dtype0�
lstm_23/lstm_cell_23/MatMul_1MatMullstm_23/zeros:output:04lstm_23/lstm_cell_23/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_23/lstm_cell_23/addAddV2%lstm_23/lstm_cell_23/MatMul:product:0'lstm_23/lstm_cell_23/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
+lstm_23/lstm_cell_23/BiasAdd/ReadVariableOpReadVariableOp4lstm_23_lstm_cell_23_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_23/lstm_cell_23/BiasAddBiasAddlstm_23/lstm_cell_23/add:z:03lstm_23/lstm_cell_23/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������f
$lstm_23/lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_23/lstm_cell_23/splitSplit-lstm_23/lstm_cell_23/split/split_dim:output:0%lstm_23/lstm_cell_23/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������#:���������#:���������#:���������#*
	num_split~
lstm_23/lstm_cell_23/SigmoidSigmoid#lstm_23/lstm_cell_23/split:output:0*
T0*'
_output_shapes
:���������#�
lstm_23/lstm_cell_23/Sigmoid_1Sigmoid#lstm_23/lstm_cell_23/split:output:1*
T0*'
_output_shapes
:���������#�
lstm_23/lstm_cell_23/mulMul"lstm_23/lstm_cell_23/Sigmoid_1:y:0lstm_23/zeros_1:output:0*
T0*'
_output_shapes
:���������#x
lstm_23/lstm_cell_23/ReluRelu#lstm_23/lstm_cell_23/split:output:2*
T0*'
_output_shapes
:���������#�
lstm_23/lstm_cell_23/mul_1Mul lstm_23/lstm_cell_23/Sigmoid:y:0'lstm_23/lstm_cell_23/Relu:activations:0*
T0*'
_output_shapes
:���������#�
lstm_23/lstm_cell_23/add_1AddV2lstm_23/lstm_cell_23/mul:z:0lstm_23/lstm_cell_23/mul_1:z:0*
T0*'
_output_shapes
:���������#�
lstm_23/lstm_cell_23/Sigmoid_2Sigmoid#lstm_23/lstm_cell_23/split:output:3*
T0*'
_output_shapes
:���������#u
lstm_23/lstm_cell_23/Relu_1Relulstm_23/lstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:���������#�
lstm_23/lstm_cell_23/mul_2Mul"lstm_23/lstm_cell_23/Sigmoid_2:y:0)lstm_23/lstm_cell_23/Relu_1:activations:0*
T0*'
_output_shapes
:���������#v
%lstm_23/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
lstm_23/TensorArrayV2_1TensorListReserve.lstm_23/TensorArrayV2_1/element_shape:output:0 lstm_23/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���N
lstm_23/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_23/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������\
lstm_23/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_23/whileWhile#lstm_23/while/loop_counter:output:0)lstm_23/while/maximum_iterations:output:0lstm_23/time:output:0 lstm_23/TensorArrayV2_1:handle:0lstm_23/zeros:output:0lstm_23/zeros_1:output:0 lstm_23/strided_slice_1:output:0?lstm_23/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_23_lstm_cell_23_matmul_readvariableop_resource5lstm_23_lstm_cell_23_matmul_1_readvariableop_resource4lstm_23_lstm_cell_23_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������#:���������#: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_23_while_body_123758*%
condR
lstm_23_while_cond_123757*K
output_shapes:
8: : : : :���������#:���������#: : : : : *
parallel_iterations �
8lstm_23/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
*lstm_23/TensorArrayV2Stack/TensorListStackTensorListStacklstm_23/while:output:3Alstm_23/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������#*
element_dtype0p
lstm_23/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������i
lstm_23/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_23/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_23/strided_slice_3StridedSlice3lstm_23/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_23/strided_slice_3/stack:output:0(lstm_23/strided_slice_3/stack_1:output:0(lstm_23/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������#*
shrink_axis_maskm
lstm_23/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_23/transpose_1	Transpose3lstm_23/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_23/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������#c
lstm_23/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ]
dropout_23/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *r�?�
dropout_23/dropout/MulMullstm_23/transpose_1:y:0!dropout_23/dropout/Const:output:0*
T0*+
_output_shapes
:���������#_
dropout_23/dropout/ShapeShapelstm_23/transpose_1:y:0*
T0*
_output_shapes
:�
/dropout_23/dropout/random_uniform/RandomUniformRandomUniform!dropout_23/dropout/Shape:output:0*
T0*+
_output_shapes
:���������#*
dtype0f
!dropout_23/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *
��>�
dropout_23/dropout/GreaterEqualGreaterEqual8dropout_23/dropout/random_uniform/RandomUniform:output:0*dropout_23/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:���������#�
dropout_23/dropout/CastCast#dropout_23/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:���������#�
dropout_23/dropout/Mul_1Muldropout_23/dropout/Mul:z:0dropout_23/dropout/Cast:y:0*
T0*+
_output_shapes
:���������#Y
lstm_24/ShapeShapedropout_23/dropout/Mul_1:z:0*
T0*
_output_shapes
:e
lstm_24/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_24/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_24/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_24/strided_sliceStridedSlicelstm_24/Shape:output:0$lstm_24/strided_slice/stack:output:0&lstm_24/strided_slice/stack_1:output:0&lstm_24/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_24/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :#�
lstm_24/zeros/packedPacklstm_24/strided_slice:output:0lstm_24/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_24/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_24/zerosFilllstm_24/zeros/packed:output:0lstm_24/zeros/Const:output:0*
T0*'
_output_shapes
:���������#Z
lstm_24/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :#�
lstm_24/zeros_1/packedPacklstm_24/strided_slice:output:0!lstm_24/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_24/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_24/zeros_1Filllstm_24/zeros_1/packed:output:0lstm_24/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������#k
lstm_24/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_24/transpose	Transposedropout_23/dropout/Mul_1:z:0lstm_24/transpose/perm:output:0*
T0*+
_output_shapes
:���������#T
lstm_24/Shape_1Shapelstm_24/transpose:y:0*
T0*
_output_shapes
:g
lstm_24/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_24/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_24/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_24/strided_slice_1StridedSlicelstm_24/Shape_1:output:0&lstm_24/strided_slice_1/stack:output:0(lstm_24/strided_slice_1/stack_1:output:0(lstm_24/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_24/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_24/TensorArrayV2TensorListReserve,lstm_24/TensorArrayV2/element_shape:output:0 lstm_24/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
=lstm_24/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
/lstm_24/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_24/transpose:y:0Flstm_24/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���g
lstm_24/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_24/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_24/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_24/strided_slice_2StridedSlicelstm_24/transpose:y:0&lstm_24/strided_slice_2/stack:output:0(lstm_24/strided_slice_2/stack_1:output:0(lstm_24/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������#*
shrink_axis_mask�
*lstm_24/lstm_cell_24/MatMul/ReadVariableOpReadVariableOp3lstm_24_lstm_cell_24_matmul_readvariableop_resource*
_output_shapes
:	#�*
dtype0�
lstm_24/lstm_cell_24/MatMulMatMul lstm_24/strided_slice_2:output:02lstm_24/lstm_cell_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
,lstm_24/lstm_cell_24/MatMul_1/ReadVariableOpReadVariableOp5lstm_24_lstm_cell_24_matmul_1_readvariableop_resource*
_output_shapes
:	#�*
dtype0�
lstm_24/lstm_cell_24/MatMul_1MatMullstm_24/zeros:output:04lstm_24/lstm_cell_24/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_24/lstm_cell_24/addAddV2%lstm_24/lstm_cell_24/MatMul:product:0'lstm_24/lstm_cell_24/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
+lstm_24/lstm_cell_24/BiasAdd/ReadVariableOpReadVariableOp4lstm_24_lstm_cell_24_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_24/lstm_cell_24/BiasAddBiasAddlstm_24/lstm_cell_24/add:z:03lstm_24/lstm_cell_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������f
$lstm_24/lstm_cell_24/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_24/lstm_cell_24/splitSplit-lstm_24/lstm_cell_24/split/split_dim:output:0%lstm_24/lstm_cell_24/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������#:���������#:���������#:���������#*
	num_split~
lstm_24/lstm_cell_24/SigmoidSigmoid#lstm_24/lstm_cell_24/split:output:0*
T0*'
_output_shapes
:���������#�
lstm_24/lstm_cell_24/Sigmoid_1Sigmoid#lstm_24/lstm_cell_24/split:output:1*
T0*'
_output_shapes
:���������#�
lstm_24/lstm_cell_24/mulMul"lstm_24/lstm_cell_24/Sigmoid_1:y:0lstm_24/zeros_1:output:0*
T0*'
_output_shapes
:���������#x
lstm_24/lstm_cell_24/ReluRelu#lstm_24/lstm_cell_24/split:output:2*
T0*'
_output_shapes
:���������#�
lstm_24/lstm_cell_24/mul_1Mul lstm_24/lstm_cell_24/Sigmoid:y:0'lstm_24/lstm_cell_24/Relu:activations:0*
T0*'
_output_shapes
:���������#�
lstm_24/lstm_cell_24/add_1AddV2lstm_24/lstm_cell_24/mul:z:0lstm_24/lstm_cell_24/mul_1:z:0*
T0*'
_output_shapes
:���������#�
lstm_24/lstm_cell_24/Sigmoid_2Sigmoid#lstm_24/lstm_cell_24/split:output:3*
T0*'
_output_shapes
:���������#u
lstm_24/lstm_cell_24/Relu_1Relulstm_24/lstm_cell_24/add_1:z:0*
T0*'
_output_shapes
:���������#�
lstm_24/lstm_cell_24/mul_2Mul"lstm_24/lstm_cell_24/Sigmoid_2:y:0)lstm_24/lstm_cell_24/Relu_1:activations:0*
T0*'
_output_shapes
:���������#v
%lstm_24/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
lstm_24/TensorArrayV2_1TensorListReserve.lstm_24/TensorArrayV2_1/element_shape:output:0 lstm_24/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���N
lstm_24/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_24/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������\
lstm_24/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_24/whileWhile#lstm_24/while/loop_counter:output:0)lstm_24/while/maximum_iterations:output:0lstm_24/time:output:0 lstm_24/TensorArrayV2_1:handle:0lstm_24/zeros:output:0lstm_24/zeros_1:output:0 lstm_24/strided_slice_1:output:0?lstm_24/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_24_lstm_cell_24_matmul_readvariableop_resource5lstm_24_lstm_cell_24_matmul_1_readvariableop_resource4lstm_24_lstm_cell_24_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������#:���������#: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_24_while_body_123905*%
condR
lstm_24_while_cond_123904*K
output_shapes:
8: : : : :���������#:���������#: : : : : *
parallel_iterations �
8lstm_24/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
*lstm_24/TensorArrayV2Stack/TensorListStackTensorListStacklstm_24/while:output:3Alstm_24/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������#*
element_dtype0p
lstm_24/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������i
lstm_24/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_24/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_24/strided_slice_3StridedSlice3lstm_24/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_24/strided_slice_3/stack:output:0(lstm_24/strided_slice_3/stack_1:output:0(lstm_24/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������#*
shrink_axis_maskm
lstm_24/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_24/transpose_1	Transpose3lstm_24/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_24/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������#c
lstm_24/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ]
dropout_24/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *r�?�
dropout_24/dropout/MulMul lstm_24/strided_slice_3:output:0!dropout_24/dropout/Const:output:0*
T0*'
_output_shapes
:���������#h
dropout_24/dropout/ShapeShape lstm_24/strided_slice_3:output:0*
T0*
_output_shapes
:�
/dropout_24/dropout/random_uniform/RandomUniformRandomUniform!dropout_24/dropout/Shape:output:0*
T0*'
_output_shapes
:���������#*
dtype0f
!dropout_24/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *
��>�
dropout_24/dropout/GreaterEqualGreaterEqual8dropout_24/dropout/random_uniform/RandomUniform:output:0*dropout_24/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������#�
dropout_24/dropout/CastCast#dropout_24/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������#�
dropout_24/dropout/Mul_1Muldropout_24/dropout/Mul:z:0dropout_24/dropout/Cast:y:0*
T0*'
_output_shapes
:���������#�
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

:#*
dtype0�
dense_6/MatMulMatMuldropout_24/dropout/Mul_1:z:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������g
IdentityIdentitydense_6/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp,^lstm_23/lstm_cell_23/BiasAdd/ReadVariableOp+^lstm_23/lstm_cell_23/MatMul/ReadVariableOp-^lstm_23/lstm_cell_23/MatMul_1/ReadVariableOp^lstm_23/while,^lstm_24/lstm_cell_24/BiasAdd/ReadVariableOp+^lstm_24/lstm_cell_24/MatMul/ReadVariableOp-^lstm_24/lstm_cell_24/MatMul_1/ReadVariableOp^lstm_24/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2Z
+lstm_23/lstm_cell_23/BiasAdd/ReadVariableOp+lstm_23/lstm_cell_23/BiasAdd/ReadVariableOp2X
*lstm_23/lstm_cell_23/MatMul/ReadVariableOp*lstm_23/lstm_cell_23/MatMul/ReadVariableOp2\
,lstm_23/lstm_cell_23/MatMul_1/ReadVariableOp,lstm_23/lstm_cell_23/MatMul_1/ReadVariableOp2
lstm_23/whilelstm_23/while2Z
+lstm_24/lstm_cell_24/BiasAdd/ReadVariableOp+lstm_24/lstm_cell_24/BiasAdd/ReadVariableOp2X
*lstm_24/lstm_cell_24/MatMul/ReadVariableOp*lstm_24/lstm_cell_24/MatMul/ReadVariableOp2\
,lstm_24/lstm_cell_24/MatMul_1/ReadVariableOp,lstm_24/lstm_cell_24/MatMul_1/ReadVariableOp2
lstm_24/whilelstm_24/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�A
�

lstm_24_while_body_123905,
(lstm_24_while_lstm_24_while_loop_counter2
.lstm_24_while_lstm_24_while_maximum_iterations
lstm_24_while_placeholder
lstm_24_while_placeholder_1
lstm_24_while_placeholder_2
lstm_24_while_placeholder_3+
'lstm_24_while_lstm_24_strided_slice_1_0g
clstm_24_while_tensorarrayv2read_tensorlistgetitem_lstm_24_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_24_while_lstm_cell_24_matmul_readvariableop_resource_0:	#�P
=lstm_24_while_lstm_cell_24_matmul_1_readvariableop_resource_0:	#�K
<lstm_24_while_lstm_cell_24_biasadd_readvariableop_resource_0:	�
lstm_24_while_identity
lstm_24_while_identity_1
lstm_24_while_identity_2
lstm_24_while_identity_3
lstm_24_while_identity_4
lstm_24_while_identity_5)
%lstm_24_while_lstm_24_strided_slice_1e
alstm_24_while_tensorarrayv2read_tensorlistgetitem_lstm_24_tensorarrayunstack_tensorlistfromtensorL
9lstm_24_while_lstm_cell_24_matmul_readvariableop_resource:	#�N
;lstm_24_while_lstm_cell_24_matmul_1_readvariableop_resource:	#�I
:lstm_24_while_lstm_cell_24_biasadd_readvariableop_resource:	���1lstm_24/while/lstm_cell_24/BiasAdd/ReadVariableOp�0lstm_24/while/lstm_cell_24/MatMul/ReadVariableOp�2lstm_24/while/lstm_cell_24/MatMul_1/ReadVariableOp�
?lstm_24/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
1lstm_24/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_24_while_tensorarrayv2read_tensorlistgetitem_lstm_24_tensorarrayunstack_tensorlistfromtensor_0lstm_24_while_placeholderHlstm_24/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������#*
element_dtype0�
0lstm_24/while/lstm_cell_24/MatMul/ReadVariableOpReadVariableOp;lstm_24_while_lstm_cell_24_matmul_readvariableop_resource_0*
_output_shapes
:	#�*
dtype0�
!lstm_24/while/lstm_cell_24/MatMulMatMul8lstm_24/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_24/while/lstm_cell_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
2lstm_24/while/lstm_cell_24/MatMul_1/ReadVariableOpReadVariableOp=lstm_24_while_lstm_cell_24_matmul_1_readvariableop_resource_0*
_output_shapes
:	#�*
dtype0�
#lstm_24/while/lstm_cell_24/MatMul_1MatMullstm_24_while_placeholder_2:lstm_24/while/lstm_cell_24/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_24/while/lstm_cell_24/addAddV2+lstm_24/while/lstm_cell_24/MatMul:product:0-lstm_24/while/lstm_cell_24/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
1lstm_24/while/lstm_cell_24/BiasAdd/ReadVariableOpReadVariableOp<lstm_24_while_lstm_cell_24_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
"lstm_24/while/lstm_cell_24/BiasAddBiasAdd"lstm_24/while/lstm_cell_24/add:z:09lstm_24/while/lstm_cell_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������l
*lstm_24/while/lstm_cell_24/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
 lstm_24/while/lstm_cell_24/splitSplit3lstm_24/while/lstm_cell_24/split/split_dim:output:0+lstm_24/while/lstm_cell_24/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������#:���������#:���������#:���������#*
	num_split�
"lstm_24/while/lstm_cell_24/SigmoidSigmoid)lstm_24/while/lstm_cell_24/split:output:0*
T0*'
_output_shapes
:���������#�
$lstm_24/while/lstm_cell_24/Sigmoid_1Sigmoid)lstm_24/while/lstm_cell_24/split:output:1*
T0*'
_output_shapes
:���������#�
lstm_24/while/lstm_cell_24/mulMul(lstm_24/while/lstm_cell_24/Sigmoid_1:y:0lstm_24_while_placeholder_3*
T0*'
_output_shapes
:���������#�
lstm_24/while/lstm_cell_24/ReluRelu)lstm_24/while/lstm_cell_24/split:output:2*
T0*'
_output_shapes
:���������#�
 lstm_24/while/lstm_cell_24/mul_1Mul&lstm_24/while/lstm_cell_24/Sigmoid:y:0-lstm_24/while/lstm_cell_24/Relu:activations:0*
T0*'
_output_shapes
:���������#�
 lstm_24/while/lstm_cell_24/add_1AddV2"lstm_24/while/lstm_cell_24/mul:z:0$lstm_24/while/lstm_cell_24/mul_1:z:0*
T0*'
_output_shapes
:���������#�
$lstm_24/while/lstm_cell_24/Sigmoid_2Sigmoid)lstm_24/while/lstm_cell_24/split:output:3*
T0*'
_output_shapes
:���������#�
!lstm_24/while/lstm_cell_24/Relu_1Relu$lstm_24/while/lstm_cell_24/add_1:z:0*
T0*'
_output_shapes
:���������#�
 lstm_24/while/lstm_cell_24/mul_2Mul(lstm_24/while/lstm_cell_24/Sigmoid_2:y:0/lstm_24/while/lstm_cell_24/Relu_1:activations:0*
T0*'
_output_shapes
:���������#�
2lstm_24/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_24_while_placeholder_1lstm_24_while_placeholder$lstm_24/while/lstm_cell_24/mul_2:z:0*
_output_shapes
: *
element_dtype0:���U
lstm_24/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_24/while/addAddV2lstm_24_while_placeholderlstm_24/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_24/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_24/while/add_1AddV2(lstm_24_while_lstm_24_while_loop_counterlstm_24/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_24/while/IdentityIdentitylstm_24/while/add_1:z:0^lstm_24/while/NoOp*
T0*
_output_shapes
: �
lstm_24/while/Identity_1Identity.lstm_24_while_lstm_24_while_maximum_iterations^lstm_24/while/NoOp*
T0*
_output_shapes
: q
lstm_24/while/Identity_2Identitylstm_24/while/add:z:0^lstm_24/while/NoOp*
T0*
_output_shapes
: �
lstm_24/while/Identity_3IdentityBlstm_24/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_24/while/NoOp*
T0*
_output_shapes
: �
lstm_24/while/Identity_4Identity$lstm_24/while/lstm_cell_24/mul_2:z:0^lstm_24/while/NoOp*
T0*'
_output_shapes
:���������#�
lstm_24/while/Identity_5Identity$lstm_24/while/lstm_cell_24/add_1:z:0^lstm_24/while/NoOp*
T0*'
_output_shapes
:���������#�
lstm_24/while/NoOpNoOp2^lstm_24/while/lstm_cell_24/BiasAdd/ReadVariableOp1^lstm_24/while/lstm_cell_24/MatMul/ReadVariableOp3^lstm_24/while/lstm_cell_24/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_24_while_identitylstm_24/while/Identity:output:0"=
lstm_24_while_identity_1!lstm_24/while/Identity_1:output:0"=
lstm_24_while_identity_2!lstm_24/while/Identity_2:output:0"=
lstm_24_while_identity_3!lstm_24/while/Identity_3:output:0"=
lstm_24_while_identity_4!lstm_24/while/Identity_4:output:0"=
lstm_24_while_identity_5!lstm_24/while/Identity_5:output:0"P
%lstm_24_while_lstm_24_strided_slice_1'lstm_24_while_lstm_24_strided_slice_1_0"z
:lstm_24_while_lstm_cell_24_biasadd_readvariableop_resource<lstm_24_while_lstm_cell_24_biasadd_readvariableop_resource_0"|
;lstm_24_while_lstm_cell_24_matmul_1_readvariableop_resource=lstm_24_while_lstm_cell_24_matmul_1_readvariableop_resource_0"x
9lstm_24_while_lstm_cell_24_matmul_readvariableop_resource;lstm_24_while_lstm_cell_24_matmul_readvariableop_resource_0"�
alstm_24_while_tensorarrayv2read_tensorlistgetitem_lstm_24_tensorarrayunstack_tensorlistfromtensorclstm_24_while_tensorarrayv2read_tensorlistgetitem_lstm_24_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������#:���������#: : : : : 2f
1lstm_24/while/lstm_cell_24/BiasAdd/ReadVariableOp1lstm_24/while/lstm_cell_24/BiasAdd/ReadVariableOp2d
0lstm_24/while/lstm_cell_24/MatMul/ReadVariableOp0lstm_24/while/lstm_cell_24/MatMul/ReadVariableOp2h
2lstm_24/while/lstm_cell_24/MatMul_1/ReadVariableOp2lstm_24/while/lstm_cell_24/MatMul_1/ReadVariableOp: 
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
:���������#:-)
'
_output_shapes
:���������#:

_output_shapes
: :

_output_shapes
: 
�J
�
C__inference_lstm_23_layer_call_and_return_conditional_losses_124333
inputs_0>
+lstm_cell_23_matmul_readvariableop_resource:	�@
-lstm_cell_23_matmul_1_readvariableop_resource:	#�;
,lstm_cell_23_biasadd_readvariableop_resource:	�
identity��#lstm_cell_23/BiasAdd/ReadVariableOp�"lstm_cell_23/MatMul/ReadVariableOp�$lstm_cell_23/MatMul_1/ReadVariableOp�while=
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
value	B :#s
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
:���������#R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :#w
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
:���������#c
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
"lstm_cell_23/MatMul/ReadVariableOpReadVariableOp+lstm_cell_23_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_23/MatMulMatMulstrided_slice_2:output:0*lstm_cell_23/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$lstm_cell_23/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_23_matmul_1_readvariableop_resource*
_output_shapes
:	#�*
dtype0�
lstm_cell_23/MatMul_1MatMulzeros:output:0,lstm_cell_23/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_23/addAddV2lstm_cell_23/MatMul:product:0lstm_cell_23/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
#lstm_cell_23/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_23_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_23/BiasAddBiasAddlstm_cell_23/add:z:0+lstm_cell_23/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������^
lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_23/splitSplit%lstm_cell_23/split/split_dim:output:0lstm_cell_23/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������#:���������#:���������#:���������#*
	num_splitn
lstm_cell_23/SigmoidSigmoidlstm_cell_23/split:output:0*
T0*'
_output_shapes
:���������#p
lstm_cell_23/Sigmoid_1Sigmoidlstm_cell_23/split:output:1*
T0*'
_output_shapes
:���������#w
lstm_cell_23/mulMullstm_cell_23/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������#h
lstm_cell_23/ReluRelulstm_cell_23/split:output:2*
T0*'
_output_shapes
:���������#�
lstm_cell_23/mul_1Mullstm_cell_23/Sigmoid:y:0lstm_cell_23/Relu:activations:0*
T0*'
_output_shapes
:���������#{
lstm_cell_23/add_1AddV2lstm_cell_23/mul:z:0lstm_cell_23/mul_1:z:0*
T0*'
_output_shapes
:���������#p
lstm_cell_23/Sigmoid_2Sigmoidlstm_cell_23/split:output:3*
T0*'
_output_shapes
:���������#e
lstm_cell_23/Relu_1Relulstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:���������#�
lstm_cell_23/mul_2Mullstm_cell_23/Sigmoid_2:y:0!lstm_cell_23/Relu_1:activations:0*
T0*'
_output_shapes
:���������#n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_23_matmul_readvariableop_resource-lstm_cell_23_matmul_1_readvariableop_resource,lstm_cell_23_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������#:���������#: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_124249*
condR
while_cond_124248*K
output_shapes:
8: : : : :���������#:���������#: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������#*
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
:���������#*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������#[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������#�
NoOpNoOp$^lstm_cell_23/BiasAdd/ReadVariableOp#^lstm_cell_23/MatMul/ReadVariableOp%^lstm_cell_23/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2J
#lstm_cell_23/BiasAdd/ReadVariableOp#lstm_cell_23/BiasAdd/ReadVariableOp2H
"lstm_cell_23/MatMul/ReadVariableOp"lstm_cell_23/MatMul/ReadVariableOp2L
$lstm_cell_23/MatMul_1/ReadVariableOp$lstm_cell_23/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
d
F__inference_dropout_24_layer_call_and_return_conditional_losses_122776

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:���������#[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������#"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������#:O K
'
_output_shapes
:���������#
 
_user_specified_nameinputs
�
�
while_cond_122678
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_122678___redundant_placeholder04
0while_while_cond_122678___redundant_placeholder14
0while_while_cond_122678___redundant_placeholder24
0while_while_cond_122678___redundant_placeholder3
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
@: : : : :���������#:���������#: ::::: 
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
:���������#:-)
'
_output_shapes
:���������#:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_122187
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_122187___redundant_placeholder04
0while_while_cond_122187___redundant_placeholder14
0while_while_cond_122187___redundant_placeholder24
0while_while_cond_122187___redundant_placeholder3
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
@: : : : :���������#:���������#: ::::: 
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
:���������#:-)
'
_output_shapes
:���������#:

_output_shapes
: :

_output_shapes
:
�8
�
while_body_123107
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_23_matmul_readvariableop_resource_0:	�H
5while_lstm_cell_23_matmul_1_readvariableop_resource_0:	#�C
4while_lstm_cell_23_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_23_matmul_readvariableop_resource:	�F
3while_lstm_cell_23_matmul_1_readvariableop_resource:	#�A
2while_lstm_cell_23_biasadd_readvariableop_resource:	���)while/lstm_cell_23/BiasAdd/ReadVariableOp�(while/lstm_cell_23/MatMul/ReadVariableOp�*while/lstm_cell_23/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
(while/lstm_cell_23/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_23_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_23/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_23/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_23/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_23_matmul_1_readvariableop_resource_0*
_output_shapes
:	#�*
dtype0�
while/lstm_cell_23/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_23/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_23/addAddV2#while/lstm_cell_23/MatMul:product:0%while/lstm_cell_23/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_23/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_23_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_23/BiasAddBiasAddwhile/lstm_cell_23/add:z:01while/lstm_cell_23/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
"while/lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_23/splitSplit+while/lstm_cell_23/split/split_dim:output:0#while/lstm_cell_23/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������#:���������#:���������#:���������#*
	num_splitz
while/lstm_cell_23/SigmoidSigmoid!while/lstm_cell_23/split:output:0*
T0*'
_output_shapes
:���������#|
while/lstm_cell_23/Sigmoid_1Sigmoid!while/lstm_cell_23/split:output:1*
T0*'
_output_shapes
:���������#�
while/lstm_cell_23/mulMul while/lstm_cell_23/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������#t
while/lstm_cell_23/ReluRelu!while/lstm_cell_23/split:output:2*
T0*'
_output_shapes
:���������#�
while/lstm_cell_23/mul_1Mulwhile/lstm_cell_23/Sigmoid:y:0%while/lstm_cell_23/Relu:activations:0*
T0*'
_output_shapes
:���������#�
while/lstm_cell_23/add_1AddV2while/lstm_cell_23/mul:z:0while/lstm_cell_23/mul_1:z:0*
T0*'
_output_shapes
:���������#|
while/lstm_cell_23/Sigmoid_2Sigmoid!while/lstm_cell_23/split:output:3*
T0*'
_output_shapes
:���������#q
while/lstm_cell_23/Relu_1Reluwhile/lstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:���������#�
while/lstm_cell_23/mul_2Mul while/lstm_cell_23/Sigmoid_2:y:0'while/lstm_cell_23/Relu_1:activations:0*
T0*'
_output_shapes
:���������#�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_23/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_23/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������#y
while/Identity_5Identitywhile/lstm_cell_23/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������#�

while/NoOpNoOp*^while/lstm_cell_23/BiasAdd/ReadVariableOp)^while/lstm_cell_23/MatMul/ReadVariableOp+^while/lstm_cell_23/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_23_biasadd_readvariableop_resource4while_lstm_cell_23_biasadd_readvariableop_resource_0"l
3while_lstm_cell_23_matmul_1_readvariableop_resource5while_lstm_cell_23_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_23_matmul_readvariableop_resource3while_lstm_cell_23_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������#:���������#: : : : : 2V
)while/lstm_cell_23/BiasAdd/ReadVariableOp)while/lstm_cell_23/BiasAdd/ReadVariableOp2T
(while/lstm_cell_23/MatMul/ReadVariableOp(while/lstm_cell_23/MatMul/ReadVariableOp2X
*while/lstm_cell_23/MatMul_1/ReadVariableOp*while/lstm_cell_23/MatMul_1/ReadVariableOp: 
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
:���������#:-)
'
_output_shapes
:���������#:

_output_shapes
: :

_output_shapes
: 
�J
�
C__inference_lstm_23_layer_call_and_return_conditional_losses_124190
inputs_0>
+lstm_cell_23_matmul_readvariableop_resource:	�@
-lstm_cell_23_matmul_1_readvariableop_resource:	#�;
,lstm_cell_23_biasadd_readvariableop_resource:	�
identity��#lstm_cell_23/BiasAdd/ReadVariableOp�"lstm_cell_23/MatMul/ReadVariableOp�$lstm_cell_23/MatMul_1/ReadVariableOp�while=
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
value	B :#s
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
:���������#R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :#w
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
:���������#c
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
"lstm_cell_23/MatMul/ReadVariableOpReadVariableOp+lstm_cell_23_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_23/MatMulMatMulstrided_slice_2:output:0*lstm_cell_23/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$lstm_cell_23/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_23_matmul_1_readvariableop_resource*
_output_shapes
:	#�*
dtype0�
lstm_cell_23/MatMul_1MatMulzeros:output:0,lstm_cell_23/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_23/addAddV2lstm_cell_23/MatMul:product:0lstm_cell_23/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
#lstm_cell_23/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_23_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_23/BiasAddBiasAddlstm_cell_23/add:z:0+lstm_cell_23/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������^
lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_23/splitSplit%lstm_cell_23/split/split_dim:output:0lstm_cell_23/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������#:���������#:���������#:���������#*
	num_splitn
lstm_cell_23/SigmoidSigmoidlstm_cell_23/split:output:0*
T0*'
_output_shapes
:���������#p
lstm_cell_23/Sigmoid_1Sigmoidlstm_cell_23/split:output:1*
T0*'
_output_shapes
:���������#w
lstm_cell_23/mulMullstm_cell_23/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������#h
lstm_cell_23/ReluRelulstm_cell_23/split:output:2*
T0*'
_output_shapes
:���������#�
lstm_cell_23/mul_1Mullstm_cell_23/Sigmoid:y:0lstm_cell_23/Relu:activations:0*
T0*'
_output_shapes
:���������#{
lstm_cell_23/add_1AddV2lstm_cell_23/mul:z:0lstm_cell_23/mul_1:z:0*
T0*'
_output_shapes
:���������#p
lstm_cell_23/Sigmoid_2Sigmoidlstm_cell_23/split:output:3*
T0*'
_output_shapes
:���������#e
lstm_cell_23/Relu_1Relulstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:���������#�
lstm_cell_23/mul_2Mullstm_cell_23/Sigmoid_2:y:0!lstm_cell_23/Relu_1:activations:0*
T0*'
_output_shapes
:���������#n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_23_matmul_readvariableop_resource-lstm_cell_23_matmul_1_readvariableop_resource,lstm_cell_23_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������#:���������#: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_124106*
condR
while_cond_124105*K
output_shapes:
8: : : : :���������#:���������#: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������#*
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
:���������#*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������#[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������#�
NoOpNoOp$^lstm_cell_23/BiasAdd/ReadVariableOp#^lstm_cell_23/MatMul/ReadVariableOp%^lstm_cell_23/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2J
#lstm_cell_23/BiasAdd/ReadVariableOp#lstm_cell_23/BiasAdd/ReadVariableOp2H
"lstm_cell_23/MatMul/ReadVariableOp"lstm_cell_23/MatMul/ReadVariableOp2L
$lstm_cell_23/MatMul_1/ReadVariableOp$lstm_cell_23/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
while_cond_122521
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_122521___redundant_placeholder04
0while_while_cond_122521___redundant_placeholder14
0while_while_cond_122521___redundant_placeholder24
0while_while_cond_122521___redundant_placeholder3
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
@: : : : :���������#:���������#: ::::: 
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
:���������#:-)
'
_output_shapes
:���������#:

_output_shapes
: :

_output_shapes
:
�	
�
-__inference_sequential_6_layer_call_fn_122814
lstm_23_input
unknown:	�
	unknown_0:	#�
	unknown_1:	�
	unknown_2:	#�
	unknown_3:	#�
	unknown_4:	�
	unknown_5:#
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllstm_23_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_6_layer_call_and_return_conditional_losses_122795o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:���������
'
_user_specified_namelstm_23_input
�P
�
&sequential_6_lstm_24_while_body_121666F
Bsequential_6_lstm_24_while_sequential_6_lstm_24_while_loop_counterL
Hsequential_6_lstm_24_while_sequential_6_lstm_24_while_maximum_iterations*
&sequential_6_lstm_24_while_placeholder,
(sequential_6_lstm_24_while_placeholder_1,
(sequential_6_lstm_24_while_placeholder_2,
(sequential_6_lstm_24_while_placeholder_3E
Asequential_6_lstm_24_while_sequential_6_lstm_24_strided_slice_1_0�
}sequential_6_lstm_24_while_tensorarrayv2read_tensorlistgetitem_sequential_6_lstm_24_tensorarrayunstack_tensorlistfromtensor_0[
Hsequential_6_lstm_24_while_lstm_cell_24_matmul_readvariableop_resource_0:	#�]
Jsequential_6_lstm_24_while_lstm_cell_24_matmul_1_readvariableop_resource_0:	#�X
Isequential_6_lstm_24_while_lstm_cell_24_biasadd_readvariableop_resource_0:	�'
#sequential_6_lstm_24_while_identity)
%sequential_6_lstm_24_while_identity_1)
%sequential_6_lstm_24_while_identity_2)
%sequential_6_lstm_24_while_identity_3)
%sequential_6_lstm_24_while_identity_4)
%sequential_6_lstm_24_while_identity_5C
?sequential_6_lstm_24_while_sequential_6_lstm_24_strided_slice_1
{sequential_6_lstm_24_while_tensorarrayv2read_tensorlistgetitem_sequential_6_lstm_24_tensorarrayunstack_tensorlistfromtensorY
Fsequential_6_lstm_24_while_lstm_cell_24_matmul_readvariableop_resource:	#�[
Hsequential_6_lstm_24_while_lstm_cell_24_matmul_1_readvariableop_resource:	#�V
Gsequential_6_lstm_24_while_lstm_cell_24_biasadd_readvariableop_resource:	���>sequential_6/lstm_24/while/lstm_cell_24/BiasAdd/ReadVariableOp�=sequential_6/lstm_24/while/lstm_cell_24/MatMul/ReadVariableOp�?sequential_6/lstm_24/while/lstm_cell_24/MatMul_1/ReadVariableOp�
Lsequential_6/lstm_24/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
>sequential_6/lstm_24/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}sequential_6_lstm_24_while_tensorarrayv2read_tensorlistgetitem_sequential_6_lstm_24_tensorarrayunstack_tensorlistfromtensor_0&sequential_6_lstm_24_while_placeholderUsequential_6/lstm_24/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������#*
element_dtype0�
=sequential_6/lstm_24/while/lstm_cell_24/MatMul/ReadVariableOpReadVariableOpHsequential_6_lstm_24_while_lstm_cell_24_matmul_readvariableop_resource_0*
_output_shapes
:	#�*
dtype0�
.sequential_6/lstm_24/while/lstm_cell_24/MatMulMatMulEsequential_6/lstm_24/while/TensorArrayV2Read/TensorListGetItem:item:0Esequential_6/lstm_24/while/lstm_cell_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
?sequential_6/lstm_24/while/lstm_cell_24/MatMul_1/ReadVariableOpReadVariableOpJsequential_6_lstm_24_while_lstm_cell_24_matmul_1_readvariableop_resource_0*
_output_shapes
:	#�*
dtype0�
0sequential_6/lstm_24/while/lstm_cell_24/MatMul_1MatMul(sequential_6_lstm_24_while_placeholder_2Gsequential_6/lstm_24/while/lstm_cell_24/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+sequential_6/lstm_24/while/lstm_cell_24/addAddV28sequential_6/lstm_24/while/lstm_cell_24/MatMul:product:0:sequential_6/lstm_24/while/lstm_cell_24/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
>sequential_6/lstm_24/while/lstm_cell_24/BiasAdd/ReadVariableOpReadVariableOpIsequential_6_lstm_24_while_lstm_cell_24_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
/sequential_6/lstm_24/while/lstm_cell_24/BiasAddBiasAdd/sequential_6/lstm_24/while/lstm_cell_24/add:z:0Fsequential_6/lstm_24/while/lstm_cell_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
7sequential_6/lstm_24/while/lstm_cell_24/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
-sequential_6/lstm_24/while/lstm_cell_24/splitSplit@sequential_6/lstm_24/while/lstm_cell_24/split/split_dim:output:08sequential_6/lstm_24/while/lstm_cell_24/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������#:���������#:���������#:���������#*
	num_split�
/sequential_6/lstm_24/while/lstm_cell_24/SigmoidSigmoid6sequential_6/lstm_24/while/lstm_cell_24/split:output:0*
T0*'
_output_shapes
:���������#�
1sequential_6/lstm_24/while/lstm_cell_24/Sigmoid_1Sigmoid6sequential_6/lstm_24/while/lstm_cell_24/split:output:1*
T0*'
_output_shapes
:���������#�
+sequential_6/lstm_24/while/lstm_cell_24/mulMul5sequential_6/lstm_24/while/lstm_cell_24/Sigmoid_1:y:0(sequential_6_lstm_24_while_placeholder_3*
T0*'
_output_shapes
:���������#�
,sequential_6/lstm_24/while/lstm_cell_24/ReluRelu6sequential_6/lstm_24/while/lstm_cell_24/split:output:2*
T0*'
_output_shapes
:���������#�
-sequential_6/lstm_24/while/lstm_cell_24/mul_1Mul3sequential_6/lstm_24/while/lstm_cell_24/Sigmoid:y:0:sequential_6/lstm_24/while/lstm_cell_24/Relu:activations:0*
T0*'
_output_shapes
:���������#�
-sequential_6/lstm_24/while/lstm_cell_24/add_1AddV2/sequential_6/lstm_24/while/lstm_cell_24/mul:z:01sequential_6/lstm_24/while/lstm_cell_24/mul_1:z:0*
T0*'
_output_shapes
:���������#�
1sequential_6/lstm_24/while/lstm_cell_24/Sigmoid_2Sigmoid6sequential_6/lstm_24/while/lstm_cell_24/split:output:3*
T0*'
_output_shapes
:���������#�
.sequential_6/lstm_24/while/lstm_cell_24/Relu_1Relu1sequential_6/lstm_24/while/lstm_cell_24/add_1:z:0*
T0*'
_output_shapes
:���������#�
-sequential_6/lstm_24/while/lstm_cell_24/mul_2Mul5sequential_6/lstm_24/while/lstm_cell_24/Sigmoid_2:y:0<sequential_6/lstm_24/while/lstm_cell_24/Relu_1:activations:0*
T0*'
_output_shapes
:���������#�
?sequential_6/lstm_24/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(sequential_6_lstm_24_while_placeholder_1&sequential_6_lstm_24_while_placeholder1sequential_6/lstm_24/while/lstm_cell_24/mul_2:z:0*
_output_shapes
: *
element_dtype0:���b
 sequential_6/lstm_24/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
sequential_6/lstm_24/while/addAddV2&sequential_6_lstm_24_while_placeholder)sequential_6/lstm_24/while/add/y:output:0*
T0*
_output_shapes
: d
"sequential_6/lstm_24/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
 sequential_6/lstm_24/while/add_1AddV2Bsequential_6_lstm_24_while_sequential_6_lstm_24_while_loop_counter+sequential_6/lstm_24/while/add_1/y:output:0*
T0*
_output_shapes
: �
#sequential_6/lstm_24/while/IdentityIdentity$sequential_6/lstm_24/while/add_1:z:0 ^sequential_6/lstm_24/while/NoOp*
T0*
_output_shapes
: �
%sequential_6/lstm_24/while/Identity_1IdentityHsequential_6_lstm_24_while_sequential_6_lstm_24_while_maximum_iterations ^sequential_6/lstm_24/while/NoOp*
T0*
_output_shapes
: �
%sequential_6/lstm_24/while/Identity_2Identity"sequential_6/lstm_24/while/add:z:0 ^sequential_6/lstm_24/while/NoOp*
T0*
_output_shapes
: �
%sequential_6/lstm_24/while/Identity_3IdentityOsequential_6/lstm_24/while/TensorArrayV2Write/TensorListSetItem:output_handle:0 ^sequential_6/lstm_24/while/NoOp*
T0*
_output_shapes
: �
%sequential_6/lstm_24/while/Identity_4Identity1sequential_6/lstm_24/while/lstm_cell_24/mul_2:z:0 ^sequential_6/lstm_24/while/NoOp*
T0*'
_output_shapes
:���������#�
%sequential_6/lstm_24/while/Identity_5Identity1sequential_6/lstm_24/while/lstm_cell_24/add_1:z:0 ^sequential_6/lstm_24/while/NoOp*
T0*'
_output_shapes
:���������#�
sequential_6/lstm_24/while/NoOpNoOp?^sequential_6/lstm_24/while/lstm_cell_24/BiasAdd/ReadVariableOp>^sequential_6/lstm_24/while/lstm_cell_24/MatMul/ReadVariableOp@^sequential_6/lstm_24/while/lstm_cell_24/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "S
#sequential_6_lstm_24_while_identity,sequential_6/lstm_24/while/Identity:output:0"W
%sequential_6_lstm_24_while_identity_1.sequential_6/lstm_24/while/Identity_1:output:0"W
%sequential_6_lstm_24_while_identity_2.sequential_6/lstm_24/while/Identity_2:output:0"W
%sequential_6_lstm_24_while_identity_3.sequential_6/lstm_24/while/Identity_3:output:0"W
%sequential_6_lstm_24_while_identity_4.sequential_6/lstm_24/while/Identity_4:output:0"W
%sequential_6_lstm_24_while_identity_5.sequential_6/lstm_24/while/Identity_5:output:0"�
Gsequential_6_lstm_24_while_lstm_cell_24_biasadd_readvariableop_resourceIsequential_6_lstm_24_while_lstm_cell_24_biasadd_readvariableop_resource_0"�
Hsequential_6_lstm_24_while_lstm_cell_24_matmul_1_readvariableop_resourceJsequential_6_lstm_24_while_lstm_cell_24_matmul_1_readvariableop_resource_0"�
Fsequential_6_lstm_24_while_lstm_cell_24_matmul_readvariableop_resourceHsequential_6_lstm_24_while_lstm_cell_24_matmul_readvariableop_resource_0"�
?sequential_6_lstm_24_while_sequential_6_lstm_24_strided_slice_1Asequential_6_lstm_24_while_sequential_6_lstm_24_strided_slice_1_0"�
{sequential_6_lstm_24_while_tensorarrayv2read_tensorlistgetitem_sequential_6_lstm_24_tensorarrayunstack_tensorlistfromtensor}sequential_6_lstm_24_while_tensorarrayv2read_tensorlistgetitem_sequential_6_lstm_24_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������#:���������#: : : : : 2�
>sequential_6/lstm_24/while/lstm_cell_24/BiasAdd/ReadVariableOp>sequential_6/lstm_24/while/lstm_cell_24/BiasAdd/ReadVariableOp2~
=sequential_6/lstm_24/while/lstm_cell_24/MatMul/ReadVariableOp=sequential_6/lstm_24/while/lstm_cell_24/MatMul/ReadVariableOp2�
?sequential_6/lstm_24/while/lstm_cell_24/MatMul_1/ReadVariableOp?sequential_6/lstm_24/while/lstm_cell_24/MatMul_1/ReadVariableOp: 
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
:���������#:-)
'
_output_shapes
:���������#:

_output_shapes
: :

_output_shapes
: 
�8
�
while_body_124249
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_23_matmul_readvariableop_resource_0:	�H
5while_lstm_cell_23_matmul_1_readvariableop_resource_0:	#�C
4while_lstm_cell_23_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_23_matmul_readvariableop_resource:	�F
3while_lstm_cell_23_matmul_1_readvariableop_resource:	#�A
2while_lstm_cell_23_biasadd_readvariableop_resource:	���)while/lstm_cell_23/BiasAdd/ReadVariableOp�(while/lstm_cell_23/MatMul/ReadVariableOp�*while/lstm_cell_23/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
(while/lstm_cell_23/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_23_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell_23/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_23/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_23/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_23_matmul_1_readvariableop_resource_0*
_output_shapes
:	#�*
dtype0�
while/lstm_cell_23/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_23/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_23/addAddV2#while/lstm_cell_23/MatMul:product:0%while/lstm_cell_23/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_23/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_23_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_23/BiasAddBiasAddwhile/lstm_cell_23/add:z:01while/lstm_cell_23/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
"while/lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_23/splitSplit+while/lstm_cell_23/split/split_dim:output:0#while/lstm_cell_23/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������#:���������#:���������#:���������#*
	num_splitz
while/lstm_cell_23/SigmoidSigmoid!while/lstm_cell_23/split:output:0*
T0*'
_output_shapes
:���������#|
while/lstm_cell_23/Sigmoid_1Sigmoid!while/lstm_cell_23/split:output:1*
T0*'
_output_shapes
:���������#�
while/lstm_cell_23/mulMul while/lstm_cell_23/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������#t
while/lstm_cell_23/ReluRelu!while/lstm_cell_23/split:output:2*
T0*'
_output_shapes
:���������#�
while/lstm_cell_23/mul_1Mulwhile/lstm_cell_23/Sigmoid:y:0%while/lstm_cell_23/Relu:activations:0*
T0*'
_output_shapes
:���������#�
while/lstm_cell_23/add_1AddV2while/lstm_cell_23/mul:z:0while/lstm_cell_23/mul_1:z:0*
T0*'
_output_shapes
:���������#|
while/lstm_cell_23/Sigmoid_2Sigmoid!while/lstm_cell_23/split:output:3*
T0*'
_output_shapes
:���������#q
while/lstm_cell_23/Relu_1Reluwhile/lstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:���������#�
while/lstm_cell_23/mul_2Mul while/lstm_cell_23/Sigmoid_2:y:0'while/lstm_cell_23/Relu_1:activations:0*
T0*'
_output_shapes
:���������#�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_23/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_23/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������#y
while/Identity_5Identitywhile/lstm_cell_23/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������#�

while/NoOpNoOp*^while/lstm_cell_23/BiasAdd/ReadVariableOp)^while/lstm_cell_23/MatMul/ReadVariableOp+^while/lstm_cell_23/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_23_biasadd_readvariableop_resource4while_lstm_cell_23_biasadd_readvariableop_resource_0"l
3while_lstm_cell_23_matmul_1_readvariableop_resource5while_lstm_cell_23_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_23_matmul_readvariableop_resource3while_lstm_cell_23_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������#:���������#: : : : : 2V
)while/lstm_cell_23/BiasAdd/ReadVariableOp)while/lstm_cell_23/BiasAdd/ReadVariableOp2T
(while/lstm_cell_23/MatMul/ReadVariableOp(while/lstm_cell_23/MatMul/ReadVariableOp2X
*while/lstm_cell_23/MatMul_1/ReadVariableOp*while/lstm_cell_23/MatMul_1/ReadVariableOp: 
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
:���������#:-)
'
_output_shapes
:���������#:

_output_shapes
: :

_output_shapes
: 
�
�
H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_125406

inputs
states_0
states_11
matmul_readvariableop_resource:	�3
 matmul_1_readvariableop_resource:	#�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	#�*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������#:���������#:���������#:���������#*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������#V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������#U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������#N
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������#_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������#T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������#V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������#K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������#c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������#X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������#Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������#Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������#�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������#:���������#: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������#
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������#
"
_user_specified_name
states/1
�
d
F__inference_dropout_23_layer_call_and_return_conditional_losses_124634

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:���������#_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:���������#"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������#:S O
+
_output_shapes
:���������#
 
_user_specified_nameinputs
�8
�
while_body_124749
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_24_matmul_readvariableop_resource_0:	#�H
5while_lstm_cell_24_matmul_1_readvariableop_resource_0:	#�C
4while_lstm_cell_24_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_24_matmul_readvariableop_resource:	#�F
3while_lstm_cell_24_matmul_1_readvariableop_resource:	#�A
2while_lstm_cell_24_biasadd_readvariableop_resource:	���)while/lstm_cell_24/BiasAdd/ReadVariableOp�(while/lstm_cell_24/MatMul/ReadVariableOp�*while/lstm_cell_24/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������#*
element_dtype0�
(while/lstm_cell_24/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_24_matmul_readvariableop_resource_0*
_output_shapes
:	#�*
dtype0�
while/lstm_cell_24/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_24/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_24_matmul_1_readvariableop_resource_0*
_output_shapes
:	#�*
dtype0�
while/lstm_cell_24/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_24/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_24/addAddV2#while/lstm_cell_24/MatMul:product:0%while/lstm_cell_24/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_24/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_24_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_24/BiasAddBiasAddwhile/lstm_cell_24/add:z:01while/lstm_cell_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
"while/lstm_cell_24/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_24/splitSplit+while/lstm_cell_24/split/split_dim:output:0#while/lstm_cell_24/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������#:���������#:���������#:���������#*
	num_splitz
while/lstm_cell_24/SigmoidSigmoid!while/lstm_cell_24/split:output:0*
T0*'
_output_shapes
:���������#|
while/lstm_cell_24/Sigmoid_1Sigmoid!while/lstm_cell_24/split:output:1*
T0*'
_output_shapes
:���������#�
while/lstm_cell_24/mulMul while/lstm_cell_24/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������#t
while/lstm_cell_24/ReluRelu!while/lstm_cell_24/split:output:2*
T0*'
_output_shapes
:���������#�
while/lstm_cell_24/mul_1Mulwhile/lstm_cell_24/Sigmoid:y:0%while/lstm_cell_24/Relu:activations:0*
T0*'
_output_shapes
:���������#�
while/lstm_cell_24/add_1AddV2while/lstm_cell_24/mul:z:0while/lstm_cell_24/mul_1:z:0*
T0*'
_output_shapes
:���������#|
while/lstm_cell_24/Sigmoid_2Sigmoid!while/lstm_cell_24/split:output:3*
T0*'
_output_shapes
:���������#q
while/lstm_cell_24/Relu_1Reluwhile/lstm_cell_24/add_1:z:0*
T0*'
_output_shapes
:���������#�
while/lstm_cell_24/mul_2Mul while/lstm_cell_24/Sigmoid_2:y:0'while/lstm_cell_24/Relu_1:activations:0*
T0*'
_output_shapes
:���������#�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_24/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_24/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������#y
while/Identity_5Identitywhile/lstm_cell_24/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������#�

while/NoOpNoOp*^while/lstm_cell_24/BiasAdd/ReadVariableOp)^while/lstm_cell_24/MatMul/ReadVariableOp+^while/lstm_cell_24/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_24_biasadd_readvariableop_resource4while_lstm_cell_24_biasadd_readvariableop_resource_0"l
3while_lstm_cell_24_matmul_1_readvariableop_resource5while_lstm_cell_24_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_24_matmul_readvariableop_resource3while_lstm_cell_24_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������#:���������#: : : : : 2V
)while/lstm_cell_24/BiasAdd/ReadVariableOp)while/lstm_cell_24/BiasAdd/ReadVariableOp2T
(while/lstm_cell_24/MatMul/ReadVariableOp(while/lstm_cell_24/MatMul/ReadVariableOp2X
*while/lstm_cell_24/MatMul_1/ReadVariableOp*while/lstm_cell_24/MatMul_1/ReadVariableOp: 
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
:���������#:-)
'
_output_shapes
:���������#:

_output_shapes
: :

_output_shapes
: 
�
�
H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_121970

inputs

states
states_11
matmul_readvariableop_resource:	�3
 matmul_1_readvariableop_resource:	#�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	#�*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������#:���������#:���������#:���������#*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������#V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������#U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������#N
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������#_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������#T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������#V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������#K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������#c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������#X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������#Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������#Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������#�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������#:���������#: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������#
 
_user_specified_namestates:OK
'
_output_shapes
:���������#
 
_user_specified_namestates
�
�
while_cond_121837
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_121837___redundant_placeholder04
0while_while_cond_121837___redundant_placeholder14
0while_while_cond_121837___redundant_placeholder24
0while_while_cond_121837___redundant_placeholder3
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
@: : : : :���������#:���������#: ::::: 
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
:���������#:-)
'
_output_shapes
:���������#:

_output_shapes
: :

_output_shapes
:
�
�
H__inference_lstm_cell_24_layer_call_and_return_conditional_losses_125472

inputs
states_0
states_11
matmul_readvariableop_resource:	#�3
 matmul_1_readvariableop_resource:	#�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	#�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	#�*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������#:���������#:���������#:���������#*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������#V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������#U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������#N
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������#_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������#T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������#V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������#K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������#c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������#X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������#Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������#Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������#�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������#:���������#:���������#: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������#
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������#
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������#
"
_user_specified_name
states/1
�
�
(__inference_lstm_23_layer_call_fn_124014
inputs_0
unknown:	�
	unknown_0:	#�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������#*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_23_layer_call_and_return_conditional_losses_121907|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������#`
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
�
�
while_cond_125177
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_125177___redundant_placeholder04
0while_while_cond_125177___redundant_placeholder14
0while_while_cond_125177___redundant_placeholder24
0while_while_cond_125177___redundant_placeholder3
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
@: : : : :���������#:���������#: ::::: 
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
:���������#:-)
'
_output_shapes
:���������#:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_124248
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_124248___redundant_placeholder04
0while_while_cond_124248___redundant_placeholder14
0while_while_cond_124248___redundant_placeholder24
0while_while_cond_124248___redundant_placeholder3
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
@: : : : :���������#:���������#: ::::: 
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
:���������#:-)
'
_output_shapes
:���������#:

_output_shapes
: :

_output_shapes
:
�

�
lstm_23_while_cond_123757,
(lstm_23_while_lstm_23_while_loop_counter2
.lstm_23_while_lstm_23_while_maximum_iterations
lstm_23_while_placeholder
lstm_23_while_placeholder_1
lstm_23_while_placeholder_2
lstm_23_while_placeholder_3.
*lstm_23_while_less_lstm_23_strided_slice_1D
@lstm_23_while_lstm_23_while_cond_123757___redundant_placeholder0D
@lstm_23_while_lstm_23_while_cond_123757___redundant_placeholder1D
@lstm_23_while_lstm_23_while_cond_123757___redundant_placeholder2D
@lstm_23_while_lstm_23_while_cond_123757___redundant_placeholder3
lstm_23_while_identity
�
lstm_23/while/LessLesslstm_23_while_placeholder*lstm_23_while_less_lstm_23_strided_slice_1*
T0*
_output_shapes
: [
lstm_23/while/IdentityIdentitylstm_23/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_23_while_identitylstm_23/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������#:���������#: ::::: 
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
:���������#:-)
'
_output_shapes
:���������#:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_124534
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_124534___redundant_placeholder04
0while_while_cond_124534___redundant_placeholder14
0while_while_cond_124534___redundant_placeholder24
0while_while_cond_124534___redundant_placeholder3
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
@: : : : :���������#:���������#: ::::: 
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
:���������#:-)
'
_output_shapes
:���������#:

_output_shapes
: :

_output_shapes
:
�
�
H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_121824

inputs

states
states_11
matmul_readvariableop_resource:	�3
 matmul_1_readvariableop_resource:	#�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	#�*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������#:���������#:���������#:���������#*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������#V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������#U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������#N
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������#_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������#T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������#V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������#K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������#c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������#X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������#Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������#Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������#�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������#:���������#: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������#
 
_user_specified_namestates:OK
'
_output_shapes
:���������#
 
_user_specified_namestates
�8
�
while_body_125178
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_24_matmul_readvariableop_resource_0:	#�H
5while_lstm_cell_24_matmul_1_readvariableop_resource_0:	#�C
4while_lstm_cell_24_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_24_matmul_readvariableop_resource:	#�F
3while_lstm_cell_24_matmul_1_readvariableop_resource:	#�A
2while_lstm_cell_24_biasadd_readvariableop_resource:	���)while/lstm_cell_24/BiasAdd/ReadVariableOp�(while/lstm_cell_24/MatMul/ReadVariableOp�*while/lstm_cell_24/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������#*
element_dtype0�
(while/lstm_cell_24/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_24_matmul_readvariableop_resource_0*
_output_shapes
:	#�*
dtype0�
while/lstm_cell_24/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_24/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_24_matmul_1_readvariableop_resource_0*
_output_shapes
:	#�*
dtype0�
while/lstm_cell_24/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_24/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_24/addAddV2#while/lstm_cell_24/MatMul:product:0%while/lstm_cell_24/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_24/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_24_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_24/BiasAddBiasAddwhile/lstm_cell_24/add:z:01while/lstm_cell_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
"while/lstm_cell_24/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_24/splitSplit+while/lstm_cell_24/split/split_dim:output:0#while/lstm_cell_24/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������#:���������#:���������#:���������#*
	num_splitz
while/lstm_cell_24/SigmoidSigmoid!while/lstm_cell_24/split:output:0*
T0*'
_output_shapes
:���������#|
while/lstm_cell_24/Sigmoid_1Sigmoid!while/lstm_cell_24/split:output:1*
T0*'
_output_shapes
:���������#�
while/lstm_cell_24/mulMul while/lstm_cell_24/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������#t
while/lstm_cell_24/ReluRelu!while/lstm_cell_24/split:output:2*
T0*'
_output_shapes
:���������#�
while/lstm_cell_24/mul_1Mulwhile/lstm_cell_24/Sigmoid:y:0%while/lstm_cell_24/Relu:activations:0*
T0*'
_output_shapes
:���������#�
while/lstm_cell_24/add_1AddV2while/lstm_cell_24/mul:z:0while/lstm_cell_24/mul_1:z:0*
T0*'
_output_shapes
:���������#|
while/lstm_cell_24/Sigmoid_2Sigmoid!while/lstm_cell_24/split:output:3*
T0*'
_output_shapes
:���������#q
while/lstm_cell_24/Relu_1Reluwhile/lstm_cell_24/add_1:z:0*
T0*'
_output_shapes
:���������#�
while/lstm_cell_24/mul_2Mul while/lstm_cell_24/Sigmoid_2:y:0'while/lstm_cell_24/Relu_1:activations:0*
T0*'
_output_shapes
:���������#�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_24/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_24/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������#y
while/Identity_5Identitywhile/lstm_cell_24/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������#�

while/NoOpNoOp*^while/lstm_cell_24/BiasAdd/ReadVariableOp)^while/lstm_cell_24/MatMul/ReadVariableOp+^while/lstm_cell_24/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_24_biasadd_readvariableop_resource4while_lstm_cell_24_biasadd_readvariableop_resource_0"l
3while_lstm_cell_24_matmul_1_readvariableop_resource5while_lstm_cell_24_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_24_matmul_readvariableop_resource3while_lstm_cell_24_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������#:���������#: : : : : 2V
)while/lstm_cell_24/BiasAdd/ReadVariableOp)while/lstm_cell_24/BiasAdd/ReadVariableOp2T
(while/lstm_cell_24/MatMul/ReadVariableOp(while/lstm_cell_24/MatMul/ReadVariableOp2X
*while/lstm_cell_24/MatMul_1/ReadVariableOp*while/lstm_cell_24/MatMul_1/ReadVariableOp: 
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
:���������#:-)
'
_output_shapes
:���������#:

_output_shapes
: :

_output_shapes
: 
�J
�
C__inference_lstm_24_layer_call_and_return_conditional_losses_125119

inputs>
+lstm_cell_24_matmul_readvariableop_resource:	#�@
-lstm_cell_24_matmul_1_readvariableop_resource:	#�;
,lstm_cell_24_biasadd_readvariableop_resource:	�
identity��#lstm_cell_24/BiasAdd/ReadVariableOp�"lstm_cell_24/MatMul/ReadVariableOp�$lstm_cell_24/MatMul_1/ReadVariableOp�while;
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
value	B :#s
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
:���������#R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :#w
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
:���������#c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������#D
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
valueB"����#   �
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
:���������#*
shrink_axis_mask�
"lstm_cell_24/MatMul/ReadVariableOpReadVariableOp+lstm_cell_24_matmul_readvariableop_resource*
_output_shapes
:	#�*
dtype0�
lstm_cell_24/MatMulMatMulstrided_slice_2:output:0*lstm_cell_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$lstm_cell_24/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_24_matmul_1_readvariableop_resource*
_output_shapes
:	#�*
dtype0�
lstm_cell_24/MatMul_1MatMulzeros:output:0,lstm_cell_24/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_24/addAddV2lstm_cell_24/MatMul:product:0lstm_cell_24/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
#lstm_cell_24/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_24_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_24/BiasAddBiasAddlstm_cell_24/add:z:0+lstm_cell_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������^
lstm_cell_24/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_24/splitSplit%lstm_cell_24/split/split_dim:output:0lstm_cell_24/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������#:���������#:���������#:���������#*
	num_splitn
lstm_cell_24/SigmoidSigmoidlstm_cell_24/split:output:0*
T0*'
_output_shapes
:���������#p
lstm_cell_24/Sigmoid_1Sigmoidlstm_cell_24/split:output:1*
T0*'
_output_shapes
:���������#w
lstm_cell_24/mulMullstm_cell_24/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������#h
lstm_cell_24/ReluRelulstm_cell_24/split:output:2*
T0*'
_output_shapes
:���������#�
lstm_cell_24/mul_1Mullstm_cell_24/Sigmoid:y:0lstm_cell_24/Relu:activations:0*
T0*'
_output_shapes
:���������#{
lstm_cell_24/add_1AddV2lstm_cell_24/mul:z:0lstm_cell_24/mul_1:z:0*
T0*'
_output_shapes
:���������#p
lstm_cell_24/Sigmoid_2Sigmoidlstm_cell_24/split:output:3*
T0*'
_output_shapes
:���������#e
lstm_cell_24/Relu_1Relulstm_cell_24/add_1:z:0*
T0*'
_output_shapes
:���������#�
lstm_cell_24/mul_2Mullstm_cell_24/Sigmoid_2:y:0!lstm_cell_24/Relu_1:activations:0*
T0*'
_output_shapes
:���������#n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_24_matmul_readvariableop_resource-lstm_cell_24_matmul_1_readvariableop_resource,lstm_cell_24_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������#:���������#: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_125035*
condR
while_cond_125034*K
output_shapes:
8: : : : :���������#:���������#: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������#*
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
:���������#*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������#[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������#�
NoOpNoOp$^lstm_cell_24/BiasAdd/ReadVariableOp#^lstm_cell_24/MatMul/ReadVariableOp%^lstm_cell_24/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������#: : : 2J
#lstm_cell_24/BiasAdd/ReadVariableOp#lstm_cell_24/BiasAdd/ReadVariableOp2H
"lstm_cell_24/MatMul/ReadVariableOp"lstm_cell_24/MatMul/ReadVariableOp2L
$lstm_cell_24/MatMul_1/ReadVariableOp$lstm_cell_24/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������#
 
_user_specified_nameinputs
�
�
while_cond_122378
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_122378___redundant_placeholder04
0while_while_cond_122378___redundant_placeholder14
0while_while_cond_122378___redundant_placeholder24
0while_while_cond_122378___redundant_placeholder3
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
@: : : : :���������#:���������#: ::::: 
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
:���������#:-)
'
_output_shapes
:���������#:

_output_shapes
: :

_output_shapes
:
�
�
H__inference_lstm_cell_24_layer_call_and_return_conditional_losses_122320

inputs

states
states_11
matmul_readvariableop_resource:	#�3
 matmul_1_readvariableop_resource:	#�.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	#�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	#�*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:���������#:���������#:���������#:���������#*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:���������#V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:���������#U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:���������#N
ReluRelusplit:output:2*
T0*'
_output_shapes
:���������#_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:���������#T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:���������#V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:���������#K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:���������#c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:���������#X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������#Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:���������#Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:���������#�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������#:���������#:���������#: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������#
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������#
 
_user_specified_namestates:OK
'
_output_shapes
:���������#
 
_user_specified_namestates
�"
�
while_body_122379
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_24_122403_0:	#�.
while_lstm_cell_24_122405_0:	#�*
while_lstm_cell_24_122407_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_24_122403:	#�,
while_lstm_cell_24_122405:	#�(
while_lstm_cell_24_122407:	���*while/lstm_cell_24/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������#*
element_dtype0�
*while/lstm_cell_24/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_24_122403_0while_lstm_cell_24_122405_0while_lstm_cell_24_122407_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������#:���������#:���������#*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_24_layer_call_and_return_conditional_losses_122320�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_24/StatefulPartitionedCall:output:0*
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
: �
while/Identity_4Identity3while/lstm_cell_24/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������#�
while/Identity_5Identity3while/lstm_cell_24/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������#y

while/NoOpNoOp+^while/lstm_cell_24/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_24_122403while_lstm_cell_24_122403_0"8
while_lstm_cell_24_122405while_lstm_cell_24_122405_0"8
while_lstm_cell_24_122407while_lstm_cell_24_122407_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������#:���������#: : : : : 2X
*while/lstm_cell_24/StatefulPartitionedCall*while/lstm_cell_24/StatefulPartitionedCall: 
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
:���������#:-)
'
_output_shapes
:���������#:

_output_shapes
: :

_output_shapes
: 
�	
�
-__inference_sequential_6_layer_call_fn_123409

inputs
unknown:	�
	unknown_0:	#�
	unknown_1:	�
	unknown_2:	#�
	unknown_3:	#�
	unknown_4:	�
	unknown_5:#
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_6_layer_call_and_return_conditional_losses_123248o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
H__inference_sequential_6_layer_call_and_return_conditional_losses_123699

inputsF
3lstm_23_lstm_cell_23_matmul_readvariableop_resource:	�H
5lstm_23_lstm_cell_23_matmul_1_readvariableop_resource:	#�C
4lstm_23_lstm_cell_23_biasadd_readvariableop_resource:	�F
3lstm_24_lstm_cell_24_matmul_readvariableop_resource:	#�H
5lstm_24_lstm_cell_24_matmul_1_readvariableop_resource:	#�C
4lstm_24_lstm_cell_24_biasadd_readvariableop_resource:	�8
&dense_6_matmul_readvariableop_resource:#5
'dense_6_biasadd_readvariableop_resource:
identity��dense_6/BiasAdd/ReadVariableOp�dense_6/MatMul/ReadVariableOp�+lstm_23/lstm_cell_23/BiasAdd/ReadVariableOp�*lstm_23/lstm_cell_23/MatMul/ReadVariableOp�,lstm_23/lstm_cell_23/MatMul_1/ReadVariableOp�lstm_23/while�+lstm_24/lstm_cell_24/BiasAdd/ReadVariableOp�*lstm_24/lstm_cell_24/MatMul/ReadVariableOp�,lstm_24/lstm_cell_24/MatMul_1/ReadVariableOp�lstm_24/whileC
lstm_23/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_23/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_23/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_23/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_23/strided_sliceStridedSlicelstm_23/Shape:output:0$lstm_23/strided_slice/stack:output:0&lstm_23/strided_slice/stack_1:output:0&lstm_23/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_23/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :#�
lstm_23/zeros/packedPacklstm_23/strided_slice:output:0lstm_23/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_23/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_23/zerosFilllstm_23/zeros/packed:output:0lstm_23/zeros/Const:output:0*
T0*'
_output_shapes
:���������#Z
lstm_23/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :#�
lstm_23/zeros_1/packedPacklstm_23/strided_slice:output:0!lstm_23/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_23/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_23/zeros_1Filllstm_23/zeros_1/packed:output:0lstm_23/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������#k
lstm_23/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_23/transpose	Transposeinputslstm_23/transpose/perm:output:0*
T0*+
_output_shapes
:���������T
lstm_23/Shape_1Shapelstm_23/transpose:y:0*
T0*
_output_shapes
:g
lstm_23/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_23/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_23/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_23/strided_slice_1StridedSlicelstm_23/Shape_1:output:0&lstm_23/strided_slice_1/stack:output:0(lstm_23/strided_slice_1/stack_1:output:0(lstm_23/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_23/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_23/TensorArrayV2TensorListReserve,lstm_23/TensorArrayV2/element_shape:output:0 lstm_23/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
=lstm_23/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
/lstm_23/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_23/transpose:y:0Flstm_23/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���g
lstm_23/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_23/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_23/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_23/strided_slice_2StridedSlicelstm_23/transpose:y:0&lstm_23/strided_slice_2/stack:output:0(lstm_23/strided_slice_2/stack_1:output:0(lstm_23/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
*lstm_23/lstm_cell_23/MatMul/ReadVariableOpReadVariableOp3lstm_23_lstm_cell_23_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_23/lstm_cell_23/MatMulMatMul lstm_23/strided_slice_2:output:02lstm_23/lstm_cell_23/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
,lstm_23/lstm_cell_23/MatMul_1/ReadVariableOpReadVariableOp5lstm_23_lstm_cell_23_matmul_1_readvariableop_resource*
_output_shapes
:	#�*
dtype0�
lstm_23/lstm_cell_23/MatMul_1MatMullstm_23/zeros:output:04lstm_23/lstm_cell_23/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_23/lstm_cell_23/addAddV2%lstm_23/lstm_cell_23/MatMul:product:0'lstm_23/lstm_cell_23/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
+lstm_23/lstm_cell_23/BiasAdd/ReadVariableOpReadVariableOp4lstm_23_lstm_cell_23_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_23/lstm_cell_23/BiasAddBiasAddlstm_23/lstm_cell_23/add:z:03lstm_23/lstm_cell_23/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������f
$lstm_23/lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_23/lstm_cell_23/splitSplit-lstm_23/lstm_cell_23/split/split_dim:output:0%lstm_23/lstm_cell_23/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������#:���������#:���������#:���������#*
	num_split~
lstm_23/lstm_cell_23/SigmoidSigmoid#lstm_23/lstm_cell_23/split:output:0*
T0*'
_output_shapes
:���������#�
lstm_23/lstm_cell_23/Sigmoid_1Sigmoid#lstm_23/lstm_cell_23/split:output:1*
T0*'
_output_shapes
:���������#�
lstm_23/lstm_cell_23/mulMul"lstm_23/lstm_cell_23/Sigmoid_1:y:0lstm_23/zeros_1:output:0*
T0*'
_output_shapes
:���������#x
lstm_23/lstm_cell_23/ReluRelu#lstm_23/lstm_cell_23/split:output:2*
T0*'
_output_shapes
:���������#�
lstm_23/lstm_cell_23/mul_1Mul lstm_23/lstm_cell_23/Sigmoid:y:0'lstm_23/lstm_cell_23/Relu:activations:0*
T0*'
_output_shapes
:���������#�
lstm_23/lstm_cell_23/add_1AddV2lstm_23/lstm_cell_23/mul:z:0lstm_23/lstm_cell_23/mul_1:z:0*
T0*'
_output_shapes
:���������#�
lstm_23/lstm_cell_23/Sigmoid_2Sigmoid#lstm_23/lstm_cell_23/split:output:3*
T0*'
_output_shapes
:���������#u
lstm_23/lstm_cell_23/Relu_1Relulstm_23/lstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:���������#�
lstm_23/lstm_cell_23/mul_2Mul"lstm_23/lstm_cell_23/Sigmoid_2:y:0)lstm_23/lstm_cell_23/Relu_1:activations:0*
T0*'
_output_shapes
:���������#v
%lstm_23/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
lstm_23/TensorArrayV2_1TensorListReserve.lstm_23/TensorArrayV2_1/element_shape:output:0 lstm_23/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���N
lstm_23/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_23/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������\
lstm_23/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_23/whileWhile#lstm_23/while/loop_counter:output:0)lstm_23/while/maximum_iterations:output:0lstm_23/time:output:0 lstm_23/TensorArrayV2_1:handle:0lstm_23/zeros:output:0lstm_23/zeros_1:output:0 lstm_23/strided_slice_1:output:0?lstm_23/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_23_lstm_cell_23_matmul_readvariableop_resource5lstm_23_lstm_cell_23_matmul_1_readvariableop_resource4lstm_23_lstm_cell_23_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������#:���������#: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_23_while_body_123468*%
condR
lstm_23_while_cond_123467*K
output_shapes:
8: : : : :���������#:���������#: : : : : *
parallel_iterations �
8lstm_23/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
*lstm_23/TensorArrayV2Stack/TensorListStackTensorListStacklstm_23/while:output:3Alstm_23/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������#*
element_dtype0p
lstm_23/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������i
lstm_23/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_23/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_23/strided_slice_3StridedSlice3lstm_23/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_23/strided_slice_3/stack:output:0(lstm_23/strided_slice_3/stack_1:output:0(lstm_23/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������#*
shrink_axis_maskm
lstm_23/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_23/transpose_1	Transpose3lstm_23/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_23/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������#c
lstm_23/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    n
dropout_23/IdentityIdentitylstm_23/transpose_1:y:0*
T0*+
_output_shapes
:���������#Y
lstm_24/ShapeShapedropout_23/Identity:output:0*
T0*
_output_shapes
:e
lstm_24/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_24/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_24/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_24/strided_sliceStridedSlicelstm_24/Shape:output:0$lstm_24/strided_slice/stack:output:0&lstm_24/strided_slice/stack_1:output:0&lstm_24/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_24/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :#�
lstm_24/zeros/packedPacklstm_24/strided_slice:output:0lstm_24/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_24/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_24/zerosFilllstm_24/zeros/packed:output:0lstm_24/zeros/Const:output:0*
T0*'
_output_shapes
:���������#Z
lstm_24/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :#�
lstm_24/zeros_1/packedPacklstm_24/strided_slice:output:0!lstm_24/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_24/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
lstm_24/zeros_1Filllstm_24/zeros_1/packed:output:0lstm_24/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������#k
lstm_24/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_24/transpose	Transposedropout_23/Identity:output:0lstm_24/transpose/perm:output:0*
T0*+
_output_shapes
:���������#T
lstm_24/Shape_1Shapelstm_24/transpose:y:0*
T0*
_output_shapes
:g
lstm_24/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_24/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_24/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_24/strided_slice_1StridedSlicelstm_24/Shape_1:output:0&lstm_24/strided_slice_1/stack:output:0(lstm_24/strided_slice_1/stack_1:output:0(lstm_24/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_24/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
lstm_24/TensorArrayV2TensorListReserve,lstm_24/TensorArrayV2/element_shape:output:0 lstm_24/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
=lstm_24/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
/lstm_24/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_24/transpose:y:0Flstm_24/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���g
lstm_24/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_24/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_24/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_24/strided_slice_2StridedSlicelstm_24/transpose:y:0&lstm_24/strided_slice_2/stack:output:0(lstm_24/strided_slice_2/stack_1:output:0(lstm_24/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������#*
shrink_axis_mask�
*lstm_24/lstm_cell_24/MatMul/ReadVariableOpReadVariableOp3lstm_24_lstm_cell_24_matmul_readvariableop_resource*
_output_shapes
:	#�*
dtype0�
lstm_24/lstm_cell_24/MatMulMatMul lstm_24/strided_slice_2:output:02lstm_24/lstm_cell_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
,lstm_24/lstm_cell_24/MatMul_1/ReadVariableOpReadVariableOp5lstm_24_lstm_cell_24_matmul_1_readvariableop_resource*
_output_shapes
:	#�*
dtype0�
lstm_24/lstm_cell_24/MatMul_1MatMullstm_24/zeros:output:04lstm_24/lstm_cell_24/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_24/lstm_cell_24/addAddV2%lstm_24/lstm_cell_24/MatMul:product:0'lstm_24/lstm_cell_24/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
+lstm_24/lstm_cell_24/BiasAdd/ReadVariableOpReadVariableOp4lstm_24_lstm_cell_24_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_24/lstm_cell_24/BiasAddBiasAddlstm_24/lstm_cell_24/add:z:03lstm_24/lstm_cell_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������f
$lstm_24/lstm_cell_24/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_24/lstm_cell_24/splitSplit-lstm_24/lstm_cell_24/split/split_dim:output:0%lstm_24/lstm_cell_24/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������#:���������#:���������#:���������#*
	num_split~
lstm_24/lstm_cell_24/SigmoidSigmoid#lstm_24/lstm_cell_24/split:output:0*
T0*'
_output_shapes
:���������#�
lstm_24/lstm_cell_24/Sigmoid_1Sigmoid#lstm_24/lstm_cell_24/split:output:1*
T0*'
_output_shapes
:���������#�
lstm_24/lstm_cell_24/mulMul"lstm_24/lstm_cell_24/Sigmoid_1:y:0lstm_24/zeros_1:output:0*
T0*'
_output_shapes
:���������#x
lstm_24/lstm_cell_24/ReluRelu#lstm_24/lstm_cell_24/split:output:2*
T0*'
_output_shapes
:���������#�
lstm_24/lstm_cell_24/mul_1Mul lstm_24/lstm_cell_24/Sigmoid:y:0'lstm_24/lstm_cell_24/Relu:activations:0*
T0*'
_output_shapes
:���������#�
lstm_24/lstm_cell_24/add_1AddV2lstm_24/lstm_cell_24/mul:z:0lstm_24/lstm_cell_24/mul_1:z:0*
T0*'
_output_shapes
:���������#�
lstm_24/lstm_cell_24/Sigmoid_2Sigmoid#lstm_24/lstm_cell_24/split:output:3*
T0*'
_output_shapes
:���������#u
lstm_24/lstm_cell_24/Relu_1Relulstm_24/lstm_cell_24/add_1:z:0*
T0*'
_output_shapes
:���������#�
lstm_24/lstm_cell_24/mul_2Mul"lstm_24/lstm_cell_24/Sigmoid_2:y:0)lstm_24/lstm_cell_24/Relu_1:activations:0*
T0*'
_output_shapes
:���������#v
%lstm_24/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
lstm_24/TensorArrayV2_1TensorListReserve.lstm_24/TensorArrayV2_1/element_shape:output:0 lstm_24/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���N
lstm_24/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_24/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������\
lstm_24/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
lstm_24/whileWhile#lstm_24/while/loop_counter:output:0)lstm_24/while/maximum_iterations:output:0lstm_24/time:output:0 lstm_24/TensorArrayV2_1:handle:0lstm_24/zeros:output:0lstm_24/zeros_1:output:0 lstm_24/strided_slice_1:output:0?lstm_24/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_24_lstm_cell_24_matmul_readvariableop_resource5lstm_24_lstm_cell_24_matmul_1_readvariableop_resource4lstm_24_lstm_cell_24_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������#:���������#: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_24_while_body_123608*%
condR
lstm_24_while_cond_123607*K
output_shapes:
8: : : : :���������#:���������#: : : : : *
parallel_iterations �
8lstm_24/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
*lstm_24/TensorArrayV2Stack/TensorListStackTensorListStacklstm_24/while:output:3Alstm_24/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������#*
element_dtype0p
lstm_24/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������i
lstm_24/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_24/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
lstm_24/strided_slice_3StridedSlice3lstm_24/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_24/strided_slice_3/stack:output:0(lstm_24/strided_slice_3/stack_1:output:0(lstm_24/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������#*
shrink_axis_maskm
lstm_24/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
lstm_24/transpose_1	Transpose3lstm_24/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_24/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������#c
lstm_24/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    s
dropout_24/IdentityIdentity lstm_24/strided_slice_3:output:0*
T0*'
_output_shapes
:���������#�
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

:#*
dtype0�
dense_6/MatMulMatMuldropout_24/Identity:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������g
IdentityIdentitydense_6/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp,^lstm_23/lstm_cell_23/BiasAdd/ReadVariableOp+^lstm_23/lstm_cell_23/MatMul/ReadVariableOp-^lstm_23/lstm_cell_23/MatMul_1/ReadVariableOp^lstm_23/while,^lstm_24/lstm_cell_24/BiasAdd/ReadVariableOp+^lstm_24/lstm_cell_24/MatMul/ReadVariableOp-^lstm_24/lstm_cell_24/MatMul_1/ReadVariableOp^lstm_24/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2Z
+lstm_23/lstm_cell_23/BiasAdd/ReadVariableOp+lstm_23/lstm_cell_23/BiasAdd/ReadVariableOp2X
*lstm_23/lstm_cell_23/MatMul/ReadVariableOp*lstm_23/lstm_cell_23/MatMul/ReadVariableOp2\
,lstm_23/lstm_cell_23/MatMul_1/ReadVariableOp,lstm_23/lstm_cell_23/MatMul_1/ReadVariableOp2
lstm_23/whilelstm_23/while2Z
+lstm_24/lstm_cell_24/BiasAdd/ReadVariableOp+lstm_24/lstm_cell_24/BiasAdd/ReadVariableOp2X
*lstm_24/lstm_cell_24/MatMul/ReadVariableOp*lstm_24/lstm_cell_24/MatMul/ReadVariableOp2\
,lstm_24/lstm_cell_24/MatMul_1/ReadVariableOp,lstm_24/lstm_cell_24/MatMul_1/ReadVariableOp2
lstm_24/whilelstm_24/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_124748
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_124748___redundant_placeholder04
0while_while_cond_124748___redundant_placeholder14
0while_while_cond_124748___redundant_placeholder24
0while_while_cond_124748___redundant_placeholder3
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
@: : : : :���������#:���������#: ::::: 
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
:���������#:-)
'
_output_shapes
:���������#:

_output_shapes
: :

_output_shapes
:
�
�
H__inference_sequential_6_layer_call_and_return_conditional_losses_123338
lstm_23_input!
lstm_23_123316:	�!
lstm_23_123318:	#�
lstm_23_123320:	�!
lstm_24_123324:	#�!
lstm_24_123326:	#�
lstm_24_123328:	� 
dense_6_123332:#
dense_6_123334:
identity��dense_6/StatefulPartitionedCall�"dropout_23/StatefulPartitionedCall�"dropout_24/StatefulPartitionedCall�lstm_23/StatefulPartitionedCall�lstm_24/StatefulPartitionedCall�
lstm_23/StatefulPartitionedCallStatefulPartitionedCalllstm_23_inputlstm_23_123316lstm_23_123318lstm_23_123320*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������#*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_23_layer_call_and_return_conditional_losses_123191�
"dropout_23/StatefulPartitionedCallStatefulPartitionedCall(lstm_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������#* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_23_layer_call_and_return_conditional_losses_123032�
lstm_24/StatefulPartitionedCallStatefulPartitionedCall+dropout_23/StatefulPartitionedCall:output:0lstm_24_123324lstm_24_123326lstm_24_123328*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������#*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_24_layer_call_and_return_conditional_losses_123003�
"dropout_24/StatefulPartitionedCallStatefulPartitionedCall(lstm_24/StatefulPartitionedCall:output:0#^dropout_23/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������#* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_24_layer_call_and_return_conditional_losses_122844�
dense_6/StatefulPartitionedCallStatefulPartitionedCall+dropout_24/StatefulPartitionedCall:output:0dense_6_123332dense_6_123334*
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
GPU 2J 8� *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_122788w
IdentityIdentity(dense_6/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_6/StatefulPartitionedCall#^dropout_23/StatefulPartitionedCall#^dropout_24/StatefulPartitionedCall ^lstm_23/StatefulPartitionedCall ^lstm_24/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : : : : : : : 2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2H
"dropout_23/StatefulPartitionedCall"dropout_23/StatefulPartitionedCall2H
"dropout_24/StatefulPartitionedCall"dropout_24/StatefulPartitionedCall2B
lstm_23/StatefulPartitionedCalllstm_23/StatefulPartitionedCall2B
lstm_24/StatefulPartitionedCalllstm_24/StatefulPartitionedCall:Z V
+
_output_shapes
:���������
'
_user_specified_namelstm_23_input
�J
�
__inference__traced_save_125632
file_prefix-
)savev2_dense_6_kernel_read_readvariableop+
'savev2_dense_6_bias_read_readvariableop%
!savev2_beta_1_read_readvariableop%
!savev2_beta_2_read_readvariableop$
 savev2_decay_read_readvariableop,
(savev2_learning_rate_read_readvariableop(
$savev2_adam_iter_read_readvariableop	:
6savev2_lstm_23_lstm_cell_23_kernel_read_readvariableopD
@savev2_lstm_23_lstm_cell_23_recurrent_kernel_read_readvariableop8
4savev2_lstm_23_lstm_cell_23_bias_read_readvariableop:
6savev2_lstm_24_lstm_cell_24_kernel_read_readvariableopD
@savev2_lstm_24_lstm_cell_24_recurrent_kernel_read_readvariableop8
4savev2_lstm_24_lstm_cell_24_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop4
0savev2_adam_dense_6_kernel_m_read_readvariableop2
.savev2_adam_dense_6_bias_m_read_readvariableopA
=savev2_adam_lstm_23_lstm_cell_23_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_23_lstm_cell_23_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_23_lstm_cell_23_bias_m_read_readvariableopA
=savev2_adam_lstm_24_lstm_cell_24_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_24_lstm_cell_24_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_24_lstm_cell_24_bias_m_read_readvariableop4
0savev2_adam_dense_6_kernel_v_read_readvariableop2
.savev2_adam_dense_6_bias_v_read_readvariableopA
=savev2_adam_lstm_23_lstm_cell_23_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_23_lstm_cell_23_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_23_lstm_cell_23_bias_v_read_readvariableopA
=savev2_adam_lstm_24_lstm_cell_24_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_24_lstm_cell_24_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_24_lstm_cell_24_bias_v_read_readvariableop
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
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*�
value�B�$B6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*[
valueRBP$B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_6_kernel_read_readvariableop'savev2_dense_6_bias_read_readvariableop!savev2_beta_1_read_readvariableop!savev2_beta_2_read_readvariableop savev2_decay_read_readvariableop(savev2_learning_rate_read_readvariableop$savev2_adam_iter_read_readvariableop6savev2_lstm_23_lstm_cell_23_kernel_read_readvariableop@savev2_lstm_23_lstm_cell_23_recurrent_kernel_read_readvariableop4savev2_lstm_23_lstm_cell_23_bias_read_readvariableop6savev2_lstm_24_lstm_cell_24_kernel_read_readvariableop@savev2_lstm_24_lstm_cell_24_recurrent_kernel_read_readvariableop4savev2_lstm_24_lstm_cell_24_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop0savev2_adam_dense_6_kernel_m_read_readvariableop.savev2_adam_dense_6_bias_m_read_readvariableop=savev2_adam_lstm_23_lstm_cell_23_kernel_m_read_readvariableopGsavev2_adam_lstm_23_lstm_cell_23_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_23_lstm_cell_23_bias_m_read_readvariableop=savev2_adam_lstm_24_lstm_cell_24_kernel_m_read_readvariableopGsavev2_adam_lstm_24_lstm_cell_24_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_24_lstm_cell_24_bias_m_read_readvariableop0savev2_adam_dense_6_kernel_v_read_readvariableop.savev2_adam_dense_6_bias_v_read_readvariableop=savev2_adam_lstm_23_lstm_cell_23_kernel_v_read_readvariableopGsavev2_adam_lstm_23_lstm_cell_23_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_23_lstm_cell_23_bias_v_read_readvariableop=savev2_adam_lstm_24_lstm_cell_24_kernel_v_read_readvariableopGsavev2_adam_lstm_24_lstm_cell_24_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_24_lstm_cell_24_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *2
dtypes(
&2$	�
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

identity_1Identity_1:output:0*�
_input_shapes�
�: :#:: : : : : :	�:	#�:�:	#�:	#�:�: : : : : : :#::	�:	#�:�:	#�:	#�:�:#::	�:	#�:�:	#�:	#�:�: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:#: 
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
:	#�:!


_output_shapes	
:�:%!

_output_shapes
:	#�:%!

_output_shapes
:	#�:!

_output_shapes	
:�:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:#: 

_output_shapes
::%!

_output_shapes
:	�:%!

_output_shapes
:	#�:!

_output_shapes	
:�:%!

_output_shapes
:	#�:%!

_output_shapes
:	#�:!

_output_shapes	
:�:$ 

_output_shapes

:#: 

_output_shapes
::%!

_output_shapes
:	�:%!

_output_shapes
:	#�:! 

_output_shapes	
:�:%!!

_output_shapes
:	#�:%"!

_output_shapes
:	#�:!#

_output_shapes	
:�:$

_output_shapes
: 
�8
�
while_body_122919
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_24_matmul_readvariableop_resource_0:	#�H
5while_lstm_cell_24_matmul_1_readvariableop_resource_0:	#�C
4while_lstm_cell_24_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_24_matmul_readvariableop_resource:	#�F
3while_lstm_cell_24_matmul_1_readvariableop_resource:	#�A
2while_lstm_cell_24_biasadd_readvariableop_resource:	���)while/lstm_cell_24/BiasAdd/ReadVariableOp�(while/lstm_cell_24/MatMul/ReadVariableOp�*while/lstm_cell_24/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������#*
element_dtype0�
(while/lstm_cell_24/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_24_matmul_readvariableop_resource_0*
_output_shapes
:	#�*
dtype0�
while/lstm_cell_24/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_24/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_24_matmul_1_readvariableop_resource_0*
_output_shapes
:	#�*
dtype0�
while/lstm_cell_24/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_24/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_24/addAddV2#while/lstm_cell_24/MatMul:product:0%while/lstm_cell_24/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_24/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_24_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_24/BiasAddBiasAddwhile/lstm_cell_24/add:z:01while/lstm_cell_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
"while/lstm_cell_24/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_24/splitSplit+while/lstm_cell_24/split/split_dim:output:0#while/lstm_cell_24/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������#:���������#:���������#:���������#*
	num_splitz
while/lstm_cell_24/SigmoidSigmoid!while/lstm_cell_24/split:output:0*
T0*'
_output_shapes
:���������#|
while/lstm_cell_24/Sigmoid_1Sigmoid!while/lstm_cell_24/split:output:1*
T0*'
_output_shapes
:���������#�
while/lstm_cell_24/mulMul while/lstm_cell_24/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������#t
while/lstm_cell_24/ReluRelu!while/lstm_cell_24/split:output:2*
T0*'
_output_shapes
:���������#�
while/lstm_cell_24/mul_1Mulwhile/lstm_cell_24/Sigmoid:y:0%while/lstm_cell_24/Relu:activations:0*
T0*'
_output_shapes
:���������#�
while/lstm_cell_24/add_1AddV2while/lstm_cell_24/mul:z:0while/lstm_cell_24/mul_1:z:0*
T0*'
_output_shapes
:���������#|
while/lstm_cell_24/Sigmoid_2Sigmoid!while/lstm_cell_24/split:output:3*
T0*'
_output_shapes
:���������#q
while/lstm_cell_24/Relu_1Reluwhile/lstm_cell_24/add_1:z:0*
T0*'
_output_shapes
:���������#�
while/lstm_cell_24/mul_2Mul while/lstm_cell_24/Sigmoid_2:y:0'while/lstm_cell_24/Relu_1:activations:0*
T0*'
_output_shapes
:���������#�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_24/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_24/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������#y
while/Identity_5Identitywhile/lstm_cell_24/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������#�

while/NoOpNoOp*^while/lstm_cell_24/BiasAdd/ReadVariableOp)^while/lstm_cell_24/MatMul/ReadVariableOp+^while/lstm_cell_24/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_24_biasadd_readvariableop_resource4while_lstm_cell_24_biasadd_readvariableop_resource_0"l
3while_lstm_cell_24_matmul_1_readvariableop_resource5while_lstm_cell_24_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_24_matmul_readvariableop_resource3while_lstm_cell_24_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������#:���������#: : : : : 2V
)while/lstm_cell_24/BiasAdd/ReadVariableOp)while/lstm_cell_24/BiasAdd/ReadVariableOp2T
(while/lstm_cell_24/MatMul/ReadVariableOp(while/lstm_cell_24/MatMul/ReadVariableOp2X
*while/lstm_cell_24/MatMul_1/ReadVariableOp*while/lstm_cell_24/MatMul_1/ReadVariableOp: 
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
:���������#:-)
'
_output_shapes
:���������#:

_output_shapes
: :

_output_shapes
: 
�8
�
while_body_122679
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_24_matmul_readvariableop_resource_0:	#�H
5while_lstm_cell_24_matmul_1_readvariableop_resource_0:	#�C
4while_lstm_cell_24_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_24_matmul_readvariableop_resource:	#�F
3while_lstm_cell_24_matmul_1_readvariableop_resource:	#�A
2while_lstm_cell_24_biasadd_readvariableop_resource:	���)while/lstm_cell_24/BiasAdd/ReadVariableOp�(while/lstm_cell_24/MatMul/ReadVariableOp�*while/lstm_cell_24/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������#*
element_dtype0�
(while/lstm_cell_24/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_24_matmul_readvariableop_resource_0*
_output_shapes
:	#�*
dtype0�
while/lstm_cell_24/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*while/lstm_cell_24/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_24_matmul_1_readvariableop_resource_0*
_output_shapes
:	#�*
dtype0�
while/lstm_cell_24/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_24/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_24/addAddV2#while/lstm_cell_24/MatMul:product:0%while/lstm_cell_24/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_24/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_24_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_24/BiasAddBiasAddwhile/lstm_cell_24/add:z:01while/lstm_cell_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
"while/lstm_cell_24/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_24/splitSplit+while/lstm_cell_24/split/split_dim:output:0#while/lstm_cell_24/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������#:���������#:���������#:���������#*
	num_splitz
while/lstm_cell_24/SigmoidSigmoid!while/lstm_cell_24/split:output:0*
T0*'
_output_shapes
:���������#|
while/lstm_cell_24/Sigmoid_1Sigmoid!while/lstm_cell_24/split:output:1*
T0*'
_output_shapes
:���������#�
while/lstm_cell_24/mulMul while/lstm_cell_24/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:���������#t
while/lstm_cell_24/ReluRelu!while/lstm_cell_24/split:output:2*
T0*'
_output_shapes
:���������#�
while/lstm_cell_24/mul_1Mulwhile/lstm_cell_24/Sigmoid:y:0%while/lstm_cell_24/Relu:activations:0*
T0*'
_output_shapes
:���������#�
while/lstm_cell_24/add_1AddV2while/lstm_cell_24/mul:z:0while/lstm_cell_24/mul_1:z:0*
T0*'
_output_shapes
:���������#|
while/lstm_cell_24/Sigmoid_2Sigmoid!while/lstm_cell_24/split:output:3*
T0*'
_output_shapes
:���������#q
while/lstm_cell_24/Relu_1Reluwhile/lstm_cell_24/add_1:z:0*
T0*'
_output_shapes
:���������#�
while/lstm_cell_24/mul_2Mul while/lstm_cell_24/Sigmoid_2:y:0'while/lstm_cell_24/Relu_1:activations:0*
T0*'
_output_shapes
:���������#�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_24/mul_2:z:0*
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
: y
while/Identity_4Identitywhile/lstm_cell_24/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:���������#y
while/Identity_5Identitywhile/lstm_cell_24/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:���������#�

while/NoOpNoOp*^while/lstm_cell_24/BiasAdd/ReadVariableOp)^while/lstm_cell_24/MatMul/ReadVariableOp+^while/lstm_cell_24/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_24_biasadd_readvariableop_resource4while_lstm_cell_24_biasadd_readvariableop_resource_0"l
3while_lstm_cell_24_matmul_1_readvariableop_resource5while_lstm_cell_24_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_24_matmul_readvariableop_resource3while_lstm_cell_24_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������#:���������#: : : : : 2V
)while/lstm_cell_24/BiasAdd/ReadVariableOp)while/lstm_cell_24/BiasAdd/ReadVariableOp2T
(while/lstm_cell_24/MatMul/ReadVariableOp(while/lstm_cell_24/MatMul/ReadVariableOp2X
*while/lstm_cell_24/MatMul_1/ReadVariableOp*while/lstm_cell_24/MatMul_1/ReadVariableOp: 
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
:���������#:-)
'
_output_shapes
:���������#:

_output_shapes
: :

_output_shapes
: 
�
�
(__inference_lstm_24_layer_call_fn_124690

inputs
unknown:	#�
	unknown_0:	#�
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������#*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_lstm_24_layer_call_and_return_conditional_losses_123003o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������#`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������#: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������#
 
_user_specified_nameinputs
�
�
&sequential_6_lstm_24_while_cond_121665F
Bsequential_6_lstm_24_while_sequential_6_lstm_24_while_loop_counterL
Hsequential_6_lstm_24_while_sequential_6_lstm_24_while_maximum_iterations*
&sequential_6_lstm_24_while_placeholder,
(sequential_6_lstm_24_while_placeholder_1,
(sequential_6_lstm_24_while_placeholder_2,
(sequential_6_lstm_24_while_placeholder_3H
Dsequential_6_lstm_24_while_less_sequential_6_lstm_24_strided_slice_1^
Zsequential_6_lstm_24_while_sequential_6_lstm_24_while_cond_121665___redundant_placeholder0^
Zsequential_6_lstm_24_while_sequential_6_lstm_24_while_cond_121665___redundant_placeholder1^
Zsequential_6_lstm_24_while_sequential_6_lstm_24_while_cond_121665___redundant_placeholder2^
Zsequential_6_lstm_24_while_sequential_6_lstm_24_while_cond_121665___redundant_placeholder3'
#sequential_6_lstm_24_while_identity
�
sequential_6/lstm_24/while/LessLess&sequential_6_lstm_24_while_placeholderDsequential_6_lstm_24_while_less_sequential_6_lstm_24_strided_slice_1*
T0*
_output_shapes
: u
#sequential_6/lstm_24/while/IdentityIdentity#sequential_6/lstm_24/while/Less:z:0*
T0
*
_output_shapes
: "S
#sequential_6_lstm_24_while_identity,sequential_6/lstm_24/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :���������#:���������#: ::::: 
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
:���������#:-)
'
_output_shapes
:���������#:

_output_shapes
: :

_output_shapes
:
�8
�
C__inference_lstm_23_layer_call_and_return_conditional_losses_122098

inputs&
lstm_cell_23_122016:	�&
lstm_cell_23_122018:	#�"
lstm_cell_23_122020:	�
identity��$lstm_cell_23/StatefulPartitionedCall�while;
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
value	B :#s
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
:���������#R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :#w
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
:���������#c
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
$lstm_cell_23/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_23_122016lstm_cell_23_122018lstm_cell_23_122020*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������#:���������#:���������#*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_121970n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_23_122016lstm_cell_23_122018lstm_cell_23_122020*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������#:���������#: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_122029*
condR
while_cond_122028*K
output_shapes:
8: : : : :���������#:���������#: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������#*
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
:���������#*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������#[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������#u
NoOpNoOp%^lstm_cell_23/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2L
$lstm_cell_23/StatefulPartitionedCall$lstm_cell_23/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
while_cond_123106
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_123106___redundant_placeholder04
0while_while_cond_123106___redundant_placeholder14
0while_while_cond_123106___redundant_placeholder24
0while_while_cond_123106___redundant_placeholder3
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
@: : : : :���������#:���������#: ::::: 
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
:���������#:-)
'
_output_shapes
:���������#:

_output_shapes
: :

_output_shapes
:
�"
�
while_body_121838
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_23_121862_0:	�.
while_lstm_cell_23_121864_0:	#�*
while_lstm_cell_23_121866_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_23_121862:	�,
while_lstm_cell_23_121864:	#�(
while_lstm_cell_23_121866:	���*while/lstm_cell_23/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
*while/lstm_cell_23/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_23_121862_0while_lstm_cell_23_121864_0while_lstm_cell_23_121866_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:���������#:���������#:���������#*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_121824�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_23/StatefulPartitionedCall:output:0*
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
: �
while/Identity_4Identity3while/lstm_cell_23/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������#�
while/Identity_5Identity3while/lstm_cell_23/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:���������#y

while/NoOpNoOp+^while/lstm_cell_23/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_23_121862while_lstm_cell_23_121862_0"8
while_lstm_cell_23_121864while_lstm_cell_23_121864_0"8
while_lstm_cell_23_121866while_lstm_cell_23_121866_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :���������#:���������#: : : : : 2X
*while/lstm_cell_23/StatefulPartitionedCall*while/lstm_cell_23/StatefulPartitionedCall: 
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
:���������#:-)
'
_output_shapes
:���������#:

_output_shapes
: :

_output_shapes
: 
�
�
-__inference_lstm_cell_24_layer_call_fn_125440

inputs
states_0
states_1
unknown:	#�
	unknown_0:	#�
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
9:���������#:���������#:���������#*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_24_layer_call_and_return_conditional_losses_122320o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������#q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������#q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������#`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������#:���������#:���������#: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������#
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������#
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������#
"
_user_specified_name
states/1
�J
�
C__inference_lstm_23_layer_call_and_return_conditional_losses_123191

inputs>
+lstm_cell_23_matmul_readvariableop_resource:	�@
-lstm_cell_23_matmul_1_readvariableop_resource:	#�;
,lstm_cell_23_biasadd_readvariableop_resource:	�
identity��#lstm_cell_23/BiasAdd/ReadVariableOp�"lstm_cell_23/MatMul/ReadVariableOp�$lstm_cell_23/MatMul_1/ReadVariableOp�while;
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
value	B :#s
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
:���������#R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :#w
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
:���������#c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������D
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
"lstm_cell_23/MatMul/ReadVariableOpReadVariableOp+lstm_cell_23_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell_23/MatMulMatMulstrided_slice_2:output:0*lstm_cell_23/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$lstm_cell_23/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_23_matmul_1_readvariableop_resource*
_output_shapes
:	#�*
dtype0�
lstm_cell_23/MatMul_1MatMulzeros:output:0,lstm_cell_23/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_23/addAddV2lstm_cell_23/MatMul:product:0lstm_cell_23/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
#lstm_cell_23/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_23_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_23/BiasAddBiasAddlstm_cell_23/add:z:0+lstm_cell_23/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������^
lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_23/splitSplit%lstm_cell_23/split/split_dim:output:0lstm_cell_23/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������#:���������#:���������#:���������#*
	num_splitn
lstm_cell_23/SigmoidSigmoidlstm_cell_23/split:output:0*
T0*'
_output_shapes
:���������#p
lstm_cell_23/Sigmoid_1Sigmoidlstm_cell_23/split:output:1*
T0*'
_output_shapes
:���������#w
lstm_cell_23/mulMullstm_cell_23/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������#h
lstm_cell_23/ReluRelulstm_cell_23/split:output:2*
T0*'
_output_shapes
:���������#�
lstm_cell_23/mul_1Mullstm_cell_23/Sigmoid:y:0lstm_cell_23/Relu:activations:0*
T0*'
_output_shapes
:���������#{
lstm_cell_23/add_1AddV2lstm_cell_23/mul:z:0lstm_cell_23/mul_1:z:0*
T0*'
_output_shapes
:���������#p
lstm_cell_23/Sigmoid_2Sigmoidlstm_cell_23/split:output:3*
T0*'
_output_shapes
:���������#e
lstm_cell_23/Relu_1Relulstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:���������#�
lstm_cell_23/mul_2Mullstm_cell_23/Sigmoid_2:y:0!lstm_cell_23/Relu_1:activations:0*
T0*'
_output_shapes
:���������#n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_23_matmul_readvariableop_resource-lstm_cell_23_matmul_1_readvariableop_resource,lstm_cell_23_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������#:���������#: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_123107*
condR
while_cond_123106*K
output_shapes:
8: : : : :���������#:���������#: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������#*
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
:���������#*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������#[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:���������#�
NoOpNoOp$^lstm_cell_23/BiasAdd/ReadVariableOp#^lstm_cell_23/MatMul/ReadVariableOp%^lstm_cell_23/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2J
#lstm_cell_23/BiasAdd/ReadVariableOp#lstm_cell_23/BiasAdd/ReadVariableOp2H
"lstm_cell_23/MatMul/ReadVariableOp"lstm_cell_23/MatMul/ReadVariableOp2L
$lstm_cell_23/MatMul_1/ReadVariableOp$lstm_cell_23/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_124105
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_124105___redundant_placeholder04
0while_while_cond_124105___redundant_placeholder14
0while_while_cond_124105___redundant_placeholder24
0while_while_cond_124105___redundant_placeholder3
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
@: : : : :���������#:���������#: ::::: 
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
:���������#:-)
'
_output_shapes
:���������#:

_output_shapes
: :

_output_shapes
:
�J
�
C__inference_lstm_24_layer_call_and_return_conditional_losses_125262

inputs>
+lstm_cell_24_matmul_readvariableop_resource:	#�@
-lstm_cell_24_matmul_1_readvariableop_resource:	#�;
,lstm_cell_24_biasadd_readvariableop_resource:	�
identity��#lstm_cell_24/BiasAdd/ReadVariableOp�"lstm_cell_24/MatMul/ReadVariableOp�$lstm_cell_24/MatMul_1/ReadVariableOp�while;
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
value	B :#s
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
:���������#R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :#w
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
:���������#c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������#D
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
valueB"����#   �
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
:���������#*
shrink_axis_mask�
"lstm_cell_24/MatMul/ReadVariableOpReadVariableOp+lstm_cell_24_matmul_readvariableop_resource*
_output_shapes
:	#�*
dtype0�
lstm_cell_24/MatMulMatMulstrided_slice_2:output:0*lstm_cell_24/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$lstm_cell_24/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_24_matmul_1_readvariableop_resource*
_output_shapes
:	#�*
dtype0�
lstm_cell_24/MatMul_1MatMulzeros:output:0,lstm_cell_24/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_24/addAddV2lstm_cell_24/MatMul:product:0lstm_cell_24/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
#lstm_cell_24/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_24_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_24/BiasAddBiasAddlstm_cell_24/add:z:0+lstm_cell_24/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������^
lstm_cell_24/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_24/splitSplit%lstm_cell_24/split/split_dim:output:0lstm_cell_24/BiasAdd:output:0*
T0*`
_output_shapesN
L:���������#:���������#:���������#:���������#*
	num_splitn
lstm_cell_24/SigmoidSigmoidlstm_cell_24/split:output:0*
T0*'
_output_shapes
:���������#p
lstm_cell_24/Sigmoid_1Sigmoidlstm_cell_24/split:output:1*
T0*'
_output_shapes
:���������#w
lstm_cell_24/mulMullstm_cell_24/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:���������#h
lstm_cell_24/ReluRelulstm_cell_24/split:output:2*
T0*'
_output_shapes
:���������#�
lstm_cell_24/mul_1Mullstm_cell_24/Sigmoid:y:0lstm_cell_24/Relu:activations:0*
T0*'
_output_shapes
:���������#{
lstm_cell_24/add_1AddV2lstm_cell_24/mul:z:0lstm_cell_24/mul_1:z:0*
T0*'
_output_shapes
:���������#p
lstm_cell_24/Sigmoid_2Sigmoidlstm_cell_24/split:output:3*
T0*'
_output_shapes
:���������#e
lstm_cell_24/Relu_1Relulstm_cell_24/add_1:z:0*
T0*'
_output_shapes
:���������#�
lstm_cell_24/mul_2Mullstm_cell_24/Sigmoid_2:y:0!lstm_cell_24/Relu_1:activations:0*
T0*'
_output_shapes
:���������#n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_24_matmul_readvariableop_resource-lstm_cell_24_matmul_1_readvariableop_resource,lstm_cell_24_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :���������#:���������#: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_125178*
condR
while_cond_125177*K
output_shapes:
8: : : : :���������#:���������#: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����#   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������#*
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
:���������#*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������#[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������#�
NoOpNoOp$^lstm_cell_24/BiasAdd/ReadVariableOp#^lstm_cell_24/MatMul/ReadVariableOp%^lstm_cell_24/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������#: : : 2J
#lstm_cell_24/BiasAdd/ReadVariableOp#lstm_cell_24/BiasAdd/ReadVariableOp2H
"lstm_cell_24/MatMul/ReadVariableOp"lstm_cell_24/MatMul/ReadVariableOp2L
$lstm_cell_24/MatMul_1/ReadVariableOp$lstm_cell_24/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������#
 
_user_specified_nameinputs
�
�
-__inference_lstm_cell_23_layer_call_fn_125325

inputs
states_0
states_1
unknown:	�
	unknown_0:	#�
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
9:���������#:���������#:���������#*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_121824o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������#q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������#q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:���������#`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������:���������#:���������#: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������#
"
_user_specified_name
states/0:QM
'
_output_shapes
:���������#
"
_user_specified_name
states/1"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
K
lstm_23_input:
serving_default_lstm_23_input:0���������;
dense_60
StatefulPartitionedCall:0���������tensorflow/serving/predict:Ժ
�
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
	optimizer
	variables
trainable_variables
	regularization_losses

	keras_api

signatures
�__call__
+�&call_and_return_all_conditional_losses
�_default_save_signature"
_tf_keras_sequential
�
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

 kernel
!bias
"	variables
#trainable_variables
$regularization_losses
%	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

&beta_1

'beta_2
	(decay
)learning_rate
*iter mv!mw+mx,my-mz.m{/m|0m} v~!v+v�,v�-v�.v�/v�0v�"
	optimizer
X
+0
,1
-2
.3
/4
05
 6
!7"
trackable_list_wrapper
X
+0
,1
-2
.3
/4
05
 6
!7"
trackable_list_wrapper
 "
trackable_list_wrapper
�
1non_trainable_variables

2layers
3metrics
4layer_regularization_losses
5layer_metrics
	variables
trainable_variables
	regularization_losses
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
-
�serving_default"
signature_map
�
6
state_size

+kernel
,recurrent_kernel
-bias
7	variables
8trainable_variables
9regularization_losses
:	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
+0
,1
-2"
trackable_list_wrapper
5
+0
,1
-2"
trackable_list_wrapper
 "
trackable_list_wrapper
�

;states
<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics
	variables
trainable_variables
regularization_losses
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
Anon_trainable_variables

Blayers
Cmetrics
Dlayer_regularization_losses
Elayer_metrics
	variables
trainable_variables
regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
F
state_size

.kernel
/recurrent_kernel
0bias
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
.0
/1
02"
trackable_list_wrapper
5
.0
/1
02"
trackable_list_wrapper
 "
trackable_list_wrapper
�

Kstates
Lnon_trainable_variables

Mlayers
Nmetrics
Olayer_regularization_losses
Player_metrics
	variables
trainable_variables
regularization_losses
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
Qnon_trainable_variables

Rlayers
Smetrics
Tlayer_regularization_losses
Ulayer_metrics
	variables
trainable_variables
regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 :#2dense_6/kernel
:2dense_6/bias
.
 0
!1"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Vnon_trainable_variables

Wlayers
Xmetrics
Ylayer_regularization_losses
Zlayer_metrics
"	variables
#trainable_variables
$regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
: (2beta_1
: (2beta_2
: (2decay
: (2learning_rate
:	 (2	Adam/iter
.:,	�2lstm_23/lstm_cell_23/kernel
8:6	#�2%lstm_23/lstm_cell_23/recurrent_kernel
(:&�2lstm_23/lstm_cell_23/bias
.:,	#�2lstm_24/lstm_cell_24/kernel
8:6	#�2%lstm_24/lstm_cell_24/recurrent_kernel
(:&�2lstm_24/lstm_cell_24/bias
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
5
[0
\1
]2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
+0
,1
-2"
trackable_list_wrapper
5
+0
,1
-2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
7	variables
8trainable_variables
9regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
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
.0
/1
02"
trackable_list_wrapper
5
.0
/1
02"
trackable_list_wrapper
 "
trackable_list_wrapper
�
cnon_trainable_variables

dlayers
emetrics
flayer_regularization_losses
glayer_metrics
G	variables
Htrainable_variables
Iregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
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
N
	htotal
	icount
j	variables
k	keras_api"
_tf_keras_metric
^
	ltotal
	mcount
n
_fn_kwargs
o	variables
p	keras_api"
_tf_keras_metric
^
	qtotal
	rcount
s
_fn_kwargs
t	variables
u	keras_api"
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
.
h0
i1"
trackable_list_wrapper
-
j	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
l0
m1"
trackable_list_wrapper
-
o	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
q0
r1"
trackable_list_wrapper
-
t	variables"
_generic_user_object
%:##2Adam/dense_6/kernel/m
:2Adam/dense_6/bias/m
3:1	�2"Adam/lstm_23/lstm_cell_23/kernel/m
=:;	#�2,Adam/lstm_23/lstm_cell_23/recurrent_kernel/m
-:+�2 Adam/lstm_23/lstm_cell_23/bias/m
3:1	#�2"Adam/lstm_24/lstm_cell_24/kernel/m
=:;	#�2,Adam/lstm_24/lstm_cell_24/recurrent_kernel/m
-:+�2 Adam/lstm_24/lstm_cell_24/bias/m
%:##2Adam/dense_6/kernel/v
:2Adam/dense_6/bias/v
3:1	�2"Adam/lstm_23/lstm_cell_23/kernel/v
=:;	#�2,Adam/lstm_23/lstm_cell_23/recurrent_kernel/v
-:+�2 Adam/lstm_23/lstm_cell_23/bias/v
3:1	#�2"Adam/lstm_24/lstm_cell_24/kernel/v
=:;	#�2,Adam/lstm_24/lstm_cell_24/recurrent_kernel/v
-:+�2 Adam/lstm_24/lstm_cell_24/bias/v
�2�
-__inference_sequential_6_layer_call_fn_122814
-__inference_sequential_6_layer_call_fn_123388
-__inference_sequential_6_layer_call_fn_123409
-__inference_sequential_6_layer_call_fn_123288�
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
H__inference_sequential_6_layer_call_and_return_conditional_losses_123699
H__inference_sequential_6_layer_call_and_return_conditional_losses_124003
H__inference_sequential_6_layer_call_and_return_conditional_losses_123313
H__inference_sequential_6_layer_call_and_return_conditional_losses_123338�
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
!__inference__wrapped_model_121757lstm_23_input"�
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
(__inference_lstm_23_layer_call_fn_124014
(__inference_lstm_23_layer_call_fn_124025
(__inference_lstm_23_layer_call_fn_124036
(__inference_lstm_23_layer_call_fn_124047�
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
C__inference_lstm_23_layer_call_and_return_conditional_losses_124190
C__inference_lstm_23_layer_call_and_return_conditional_losses_124333
C__inference_lstm_23_layer_call_and_return_conditional_losses_124476
C__inference_lstm_23_layer_call_and_return_conditional_losses_124619�
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
+__inference_dropout_23_layer_call_fn_124624
+__inference_dropout_23_layer_call_fn_124629�
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
F__inference_dropout_23_layer_call_and_return_conditional_losses_124634
F__inference_dropout_23_layer_call_and_return_conditional_losses_124646�
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
(__inference_lstm_24_layer_call_fn_124657
(__inference_lstm_24_layer_call_fn_124668
(__inference_lstm_24_layer_call_fn_124679
(__inference_lstm_24_layer_call_fn_124690�
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
C__inference_lstm_24_layer_call_and_return_conditional_losses_124833
C__inference_lstm_24_layer_call_and_return_conditional_losses_124976
C__inference_lstm_24_layer_call_and_return_conditional_losses_125119
C__inference_lstm_24_layer_call_and_return_conditional_losses_125262�
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
+__inference_dropout_24_layer_call_fn_125267
+__inference_dropout_24_layer_call_fn_125272�
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
F__inference_dropout_24_layer_call_and_return_conditional_losses_125277
F__inference_dropout_24_layer_call_and_return_conditional_losses_125289�
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
(__inference_dense_6_layer_call_fn_125298�
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
C__inference_dense_6_layer_call_and_return_conditional_losses_125308�
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
$__inference_signature_wrapper_123367lstm_23_input"�
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
-__inference_lstm_cell_23_layer_call_fn_125325
-__inference_lstm_cell_23_layer_call_fn_125342�
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
H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_125374
H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_125406�
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
-__inference_lstm_cell_24_layer_call_fn_125423
-__inference_lstm_cell_24_layer_call_fn_125440�
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
H__inference_lstm_cell_24_layer_call_and_return_conditional_losses_125472
H__inference_lstm_cell_24_layer_call_and_return_conditional_losses_125504�
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
!__inference__wrapped_model_121757y+,-./0 !:�7
0�-
+�(
lstm_23_input���������
� "1�.
,
dense_6!�
dense_6����������
C__inference_dense_6_layer_call_and_return_conditional_losses_125308\ !/�,
%�"
 �
inputs���������#
� "%�"
�
0���������
� {
(__inference_dense_6_layer_call_fn_125298O !/�,
%�"
 �
inputs���������#
� "�����������
F__inference_dropout_23_layer_call_and_return_conditional_losses_124634d7�4
-�*
$�!
inputs���������#
p 
� ")�&
�
0���������#
� �
F__inference_dropout_23_layer_call_and_return_conditional_losses_124646d7�4
-�*
$�!
inputs���������#
p
� ")�&
�
0���������#
� �
+__inference_dropout_23_layer_call_fn_124624W7�4
-�*
$�!
inputs���������#
p 
� "����������#�
+__inference_dropout_23_layer_call_fn_124629W7�4
-�*
$�!
inputs���������#
p
� "����������#�
F__inference_dropout_24_layer_call_and_return_conditional_losses_125277\3�0
)�&
 �
inputs���������#
p 
� "%�"
�
0���������#
� �
F__inference_dropout_24_layer_call_and_return_conditional_losses_125289\3�0
)�&
 �
inputs���������#
p
� "%�"
�
0���������#
� ~
+__inference_dropout_24_layer_call_fn_125267O3�0
)�&
 �
inputs���������#
p 
� "����������#~
+__inference_dropout_24_layer_call_fn_125272O3�0
)�&
 �
inputs���������#
p
� "����������#�
C__inference_lstm_23_layer_call_and_return_conditional_losses_124190�+,-O�L
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
0������������������#
� �
C__inference_lstm_23_layer_call_and_return_conditional_losses_124333�+,-O�L
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
0������������������#
� �
C__inference_lstm_23_layer_call_and_return_conditional_losses_124476q+,-?�<
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
0���������#
� �
C__inference_lstm_23_layer_call_and_return_conditional_losses_124619q+,-?�<
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
0���������#
� �
(__inference_lstm_23_layer_call_fn_124014}+,-O�L
E�B
4�1
/�,
inputs/0������������������

 
p 

 
� "%�"������������������#�
(__inference_lstm_23_layer_call_fn_124025}+,-O�L
E�B
4�1
/�,
inputs/0������������������

 
p

 
� "%�"������������������#�
(__inference_lstm_23_layer_call_fn_124036d+,-?�<
5�2
$�!
inputs���������

 
p 

 
� "����������#�
(__inference_lstm_23_layer_call_fn_124047d+,-?�<
5�2
$�!
inputs���������

 
p

 
� "����������#�
C__inference_lstm_24_layer_call_and_return_conditional_losses_124833}./0O�L
E�B
4�1
/�,
inputs/0������������������#

 
p 

 
� "%�"
�
0���������#
� �
C__inference_lstm_24_layer_call_and_return_conditional_losses_124976}./0O�L
E�B
4�1
/�,
inputs/0������������������#

 
p

 
� "%�"
�
0���������#
� �
C__inference_lstm_24_layer_call_and_return_conditional_losses_125119m./0?�<
5�2
$�!
inputs���������#

 
p 

 
� "%�"
�
0���������#
� �
C__inference_lstm_24_layer_call_and_return_conditional_losses_125262m./0?�<
5�2
$�!
inputs���������#

 
p

 
� "%�"
�
0���������#
� �
(__inference_lstm_24_layer_call_fn_124657p./0O�L
E�B
4�1
/�,
inputs/0������������������#

 
p 

 
� "����������#�
(__inference_lstm_24_layer_call_fn_124668p./0O�L
E�B
4�1
/�,
inputs/0������������������#

 
p

 
� "����������#�
(__inference_lstm_24_layer_call_fn_124679`./0?�<
5�2
$�!
inputs���������#

 
p 

 
� "����������#�
(__inference_lstm_24_layer_call_fn_124690`./0?�<
5�2
$�!
inputs���������#

 
p

 
� "����������#�
H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_125374�+,-��}
v�s
 �
inputs���������
K�H
"�
states/0���������#
"�
states/1���������#
p 
� "s�p
i�f
�
0/0���������#
E�B
�
0/1/0���������#
�
0/1/1���������#
� �
H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_125406�+,-��}
v�s
 �
inputs���������
K�H
"�
states/0���������#
"�
states/1���������#
p
� "s�p
i�f
�
0/0���������#
E�B
�
0/1/0���������#
�
0/1/1���������#
� �
-__inference_lstm_cell_23_layer_call_fn_125325�+,-��}
v�s
 �
inputs���������
K�H
"�
states/0���������#
"�
states/1���������#
p 
� "c�`
�
0���������#
A�>
�
1/0���������#
�
1/1���������#�
-__inference_lstm_cell_23_layer_call_fn_125342�+,-��}
v�s
 �
inputs���������
K�H
"�
states/0���������#
"�
states/1���������#
p
� "c�`
�
0���������#
A�>
�
1/0���������#
�
1/1���������#�
H__inference_lstm_cell_24_layer_call_and_return_conditional_losses_125472�./0��}
v�s
 �
inputs���������#
K�H
"�
states/0���������#
"�
states/1���������#
p 
� "s�p
i�f
�
0/0���������#
E�B
�
0/1/0���������#
�
0/1/1���������#
� �
H__inference_lstm_cell_24_layer_call_and_return_conditional_losses_125504�./0��}
v�s
 �
inputs���������#
K�H
"�
states/0���������#
"�
states/1���������#
p
� "s�p
i�f
�
0/0���������#
E�B
�
0/1/0���������#
�
0/1/1���������#
� �
-__inference_lstm_cell_24_layer_call_fn_125423�./0��}
v�s
 �
inputs���������#
K�H
"�
states/0���������#
"�
states/1���������#
p 
� "c�`
�
0���������#
A�>
�
1/0���������#
�
1/1���������#�
-__inference_lstm_cell_24_layer_call_fn_125440�./0��}
v�s
 �
inputs���������#
K�H
"�
states/0���������#
"�
states/1���������#
p
� "c�`
�
0���������#
A�>
�
1/0���������#
�
1/1���������#�
H__inference_sequential_6_layer_call_and_return_conditional_losses_123313u+,-./0 !B�?
8�5
+�(
lstm_23_input���������
p 

 
� "%�"
�
0���������
� �
H__inference_sequential_6_layer_call_and_return_conditional_losses_123338u+,-./0 !B�?
8�5
+�(
lstm_23_input���������
p

 
� "%�"
�
0���������
� �
H__inference_sequential_6_layer_call_and_return_conditional_losses_123699n+,-./0 !;�8
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
H__inference_sequential_6_layer_call_and_return_conditional_losses_124003n+,-./0 !;�8
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
-__inference_sequential_6_layer_call_fn_122814h+,-./0 !B�?
8�5
+�(
lstm_23_input���������
p 

 
� "�����������
-__inference_sequential_6_layer_call_fn_123288h+,-./0 !B�?
8�5
+�(
lstm_23_input���������
p

 
� "�����������
-__inference_sequential_6_layer_call_fn_123388a+,-./0 !;�8
1�.
$�!
inputs���������
p 

 
� "�����������
-__inference_sequential_6_layer_call_fn_123409a+,-./0 !;�8
1�.
$�!
inputs���������
p

 
� "�����������
$__inference_signature_wrapper_123367�+,-./0 !K�H
� 
A�>
<
lstm_23_input+�(
lstm_23_input���������"1�.
,
dense_6!�
dense_6���������