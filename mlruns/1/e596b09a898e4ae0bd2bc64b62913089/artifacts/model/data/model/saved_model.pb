╙м
╡Ж
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
┴
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
executor_typestring Ии
@
StaticRegexFullMatch	
input

output
"
patternstring
Ў
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
л
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handleКщelement_dtype"
element_dtypetype"

shape_typetype:
2	
Ъ
TensorListReserve
element_shape"
shape_type
num_elements#
handleКщelement_dtype"
element_dtypetype"

shape_typetype:
2	
И
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint         
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
И"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28си
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
К
lstm/lstm_cell_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:x*(
shared_namelstm/lstm_cell_2/kernel
Г
+lstm/lstm_cell_2/kernel/Read/ReadVariableOpReadVariableOplstm/lstm_cell_2/kernel*
_output_shapes

:x*
dtype0
Ю
!lstm/lstm_cell_2/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:x*2
shared_name#!lstm/lstm_cell_2/recurrent_kernel
Ч
5lstm/lstm_cell_2/recurrent_kernel/Read/ReadVariableOpReadVariableOp!lstm/lstm_cell_2/recurrent_kernel*
_output_shapes

:x*
dtype0
В
lstm/lstm_cell_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:x*&
shared_namelstm/lstm_cell_2/bias
{
)lstm/lstm_cell_2/bias/Read/ReadVariableOpReadVariableOplstm/lstm_cell_2/bias*
_output_shapes
:x*
dtype0

NoOpNoOp
│
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ю
valueфBс B┌
╜
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
	variables
trainable_variables
regularization_losses
	keras_api

signatures
l
	cell


state_spec
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
#
0
1
2
3
4
#
0
1
2
3
4
 
н
non_trainable_variables

layers
metrics
layer_regularization_losses
 layer_metrics
	variables
trainable_variables
regularization_losses
 
О
!
state_size

kernel
recurrent_kernel
bias
"	variables
#trainable_variables
$regularization_losses
%	keras_api
 

0
1
2

0
1
2
 
╣

&states
'non_trainable_variables

(layers
)metrics
*layer_regularization_losses
+layer_metrics
	variables
trainable_variables
regularization_losses
 
 
 
н
,non_trainable_variables

-layers
.metrics
/layer_regularization_losses
0layer_metrics
	variables
trainable_variables
regularization_losses
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
н
1non_trainable_variables

2layers
3metrics
4layer_regularization_losses
5layer_metrics
	variables
trainable_variables
regularization_losses
SQ
VARIABLE_VALUElstm/lstm_cell_2/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUE!lstm/lstm_cell_2/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUElstm/lstm_cell_2/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
2
 
 
 
 

0
1
2

0
1
2
 
н
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
"	variables
#trainable_variables
$regularization_losses
 
 

	0
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
 
 
 
Е
serving_default_lstm_inputPlaceholder*+
_output_shapes
:         *
dtype0* 
shape:         
к
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_inputlstm/lstm_cell_2/kernel!lstm/lstm_cell_2/recurrent_kernellstm/lstm_cell_2/biasdense/kernel
dense/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8В *+
f&R$
"__inference_signature_wrapper_7702
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
я
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp+lstm/lstm_cell_2/kernel/Read/ReadVariableOp5lstm/lstm_cell_2/recurrent_kernel/Read/ReadVariableOp)lstm/lstm_cell_2/bias/Read/ReadVariableOpConst*
Tin
	2*
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
GPU 2J 8В *&
f!R
__inference__traced_save_8837
Ж
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense/kernel
dense/biaslstm/lstm_cell_2/kernel!lstm/lstm_cell_2/recurrent_kernellstm/lstm_cell_2/bias*
Tin

2*
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
GPU 2J 8В *)
f$R"
 __inference__traced_restore_8862ЗА
╝
н
D__inference_sequential_layer_call_and_return_conditional_losses_7378

inputs
	lstm_7347:x
	lstm_7349:x
	lstm_7351:x

dense_7372:

dense_7374:
identityИвdense/StatefulPartitionedCallвlstm/StatefulPartitionedCallч
lstm/StatefulPartitionedCallStatefulPartitionedCallinputs	lstm_7347	lstm_7349	lstm_7351*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *G
fBR@
>__inference_lstm_layer_call_and_return_conditional_losses_7346╙
dropout/PartitionedCallPartitionedCall%lstm/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_7359°
dense/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0
dense_7372
dense_7374*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_7371u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Е
NoOpNoOp^dense/StatefulPartitionedCall^lstm/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
л
╣
while_cond_7495
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_12
.while_while_cond_7495___redundant_placeholder02
.while_while_cond_7495___redundant_placeholder12
.while_while_cond_7495___redundant_placeholder22
.while_while_cond_7495___redundant_placeholder3
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
@: : : : :         :         : ::::: 
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
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
М_
р
D__inference_sequential_layer_call_and_return_conditional_losses_8039

inputsA
/lstm_lstm_cell_2_matmul_readvariableop_resource:xC
1lstm_lstm_cell_2_matmul_1_readvariableop_resource:x>
0lstm_lstm_cell_2_biasadd_readvariableop_resource:x6
$dense_matmul_readvariableop_resource:3
%dense_biasadd_readvariableop_resource:
identityИвdense/BiasAdd/ReadVariableOpвdense/MatMul/ReadVariableOpв'lstm/lstm_cell_2/BiasAdd/ReadVariableOpв&lstm/lstm_cell_2/MatMul/ReadVariableOpв(lstm/lstm_cell_2/MatMul_1/ReadVariableOpв
lstm/while@

lstm/ShapeShapeinputs*
T0*
_output_shapes
:b
lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: d
lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:d
lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
lstm/strided_sliceStridedSlicelstm/Shape:output:0!lstm/strided_slice/stack:output:0#lstm/strided_slice/stack_1:output:0#lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskU
lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :В
lstm/zeros/packedPacklstm/strided_slice:output:0lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:U
lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    {

lstm/zerosFilllstm/zeros/packed:output:0lstm/zeros/Const:output:0*
T0*'
_output_shapes
:         W
lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ж
lstm/zeros_1/packedPacklstm/strided_slice:output:0lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Б
lstm/zeros_1Filllstm/zeros_1/packed:output:0lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:         h
lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
lstm/transpose	Transposeinputslstm/transpose/perm:output:0*
T0*+
_output_shapes
:         N
lstm/Shape_1Shapelstm/transpose:y:0*
T0*
_output_shapes
:d
lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ї
lstm/strided_slice_1StridedSlicelstm/Shape_1:output:0#lstm/strided_slice_1/stack:output:0%lstm/strided_slice_1/stack_1:output:0%lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
 lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ├
lstm/TensorArrayV2TensorListReserve)lstm/TensorArrayV2/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Л
:lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       я
,lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm/transpose:y:0Clstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥d
lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:В
lstm/strided_slice_2StridedSlicelstm/transpose:y:0#lstm/strided_slice_2/stack:output:0%lstm/strided_slice_2/stack_1:output:0%lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЦ
&lstm/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp/lstm_lstm_cell_2_matmul_readvariableop_resource*
_output_shapes

:x*
dtype0в
lstm/lstm_cell_2/MatMulMatMullstm/strided_slice_2:output:0.lstm/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         xЪ
(lstm/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp1lstm_lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes

:x*
dtype0Ь
lstm/lstm_cell_2/MatMul_1MatMullstm/zeros:output:00lstm/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         xЧ
lstm/lstm_cell_2/addAddV2!lstm/lstm_cell_2/MatMul:product:0#lstm/lstm_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:         xФ
'lstm/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp0lstm_lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype0а
lstm/lstm_cell_2/BiasAddBiasAddlstm/lstm_cell_2/add:z:0/lstm/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         xb
 lstm/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :щ
lstm/lstm_cell_2/splitSplit)lstm/lstm_cell_2/split/split_dim:output:0!lstm/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitv
lstm/lstm_cell_2/SigmoidSigmoidlstm/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:         x
lstm/lstm_cell_2/Sigmoid_1Sigmoidlstm/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:         Д
lstm/lstm_cell_2/mulMullstm/lstm_cell_2/Sigmoid_1:y:0lstm/zeros_1:output:0*
T0*'
_output_shapes
:         p
lstm/lstm_cell_2/ReluRelulstm/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:         Т
lstm/lstm_cell_2/mul_1Mullstm/lstm_cell_2/Sigmoid:y:0#lstm/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:         З
lstm/lstm_cell_2/add_1AddV2lstm/lstm_cell_2/mul:z:0lstm/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:         x
lstm/lstm_cell_2/Sigmoid_2Sigmoidlstm/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:         m
lstm/lstm_cell_2/Relu_1Relulstm/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:         Ц
lstm/lstm_cell_2/mul_2Mullstm/lstm_cell_2/Sigmoid_2:y:0%lstm/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:         s
"lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╟
lstm/TensorArrayV2_1TensorListReserve+lstm/TensorArrayV2_1/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥K
	lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : h
lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         Y
lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ┴

lstm/whileWhile lstm/while/loop_counter:output:0&lstm/while/maximum_iterations:output:0lstm/time:output:0lstm/TensorArrayV2_1:handle:0lstm/zeros:output:0lstm/zeros_1:output:0lstm/strided_slice_1:output:0<lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:0/lstm_lstm_cell_2_matmul_readvariableop_resource1lstm_lstm_cell_2_matmul_1_readvariableop_resource0lstm_lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( * 
bodyR
lstm_while_body_7941* 
condR
lstm_while_cond_7940*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ж
5lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╤
'lstm/TensorArrayV2Stack/TensorListStackTensorListStacklstm/while:output:3>lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0m
lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         f
lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:а
lstm/strided_slice_3StridedSlice0lstm/TensorArrayV2Stack/TensorListStack:tensor:0#lstm/strided_slice_3/stack:output:0%lstm/strided_slice_3/stack_1:output:0%lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskj
lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          е
lstm/transpose_1	Transpose0lstm/TensorArrayV2Stack/TensorListStack:tensor:0lstm/transpose_1/perm:output:0*
T0*+
_output_shapes
:         `
lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Л
dropout/dropout/MulMullstm/strided_slice_3:output:0dropout/dropout/Const:output:0*
T0*'
_output_shapes
:         b
dropout/dropout/ShapeShapelstm/strided_slice_3:output:0*
T0*
_output_shapes
:и
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0*

seed*c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╛
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         Б
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*'
_output_shapes
:         А
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:*
dtype0И
dense/MatMulMatMuldropout/dropout/Mul_1:z:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0И
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         e
IdentityIdentitydense/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         О
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp(^lstm/lstm_cell_2/BiasAdd/ReadVariableOp'^lstm/lstm_cell_2/MatMul/ReadVariableOp)^lstm/lstm_cell_2/MatMul_1/ReadVariableOp^lstm/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2R
'lstm/lstm_cell_2/BiasAdd/ReadVariableOp'lstm/lstm_cell_2/BiasAdd/ReadVariableOp2P
&lstm/lstm_cell_2/MatMul/ReadVariableOp&lstm/lstm_cell_2/MatMul/ReadVariableOp2T
(lstm/lstm_cell_2/MatMul_1/ReadVariableOp(lstm/lstm_cell_2/MatMul_1/ReadVariableOp2

lstm/while
lstm/while:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Ч
B
&__inference_dropout_layer_call_fn_8660

inputs
identityм
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_7359`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
╨
А
E__inference_lstm_cell_2_layer_call_and_return_conditional_losses_8799

inputs
states_0
states_10
matmul_readvariableop_resource:x2
 matmul_1_readvariableop_resource:x-
biasadd_readvariableop_resource:x
identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:x*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         xx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:x*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         xd
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:         xr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:x*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         xQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╢
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         С
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
states/0:QM
'
_output_shapes
:         
"
_user_specified_name
states/1
т
Ё
*__inference_lstm_cell_2_layer_call_fn_8735

inputs
states_0
states_1
unknown:x
	unknown_0:x
	unknown_1:x
identity

identity_1

identity_2ИвStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_2_layer_call_and_return_conditional_losses_7060o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
states/0:QM
'
_output_shapes
:         
"
_user_specified_name
states/1
ъ
н
#__inference_lstm_layer_call_fn_8072

inputs
unknown:x
	unknown_0:x
	unknown_1:x
identityИвStatefulPartitionedCallр
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *G
fBR@
>__inference_lstm_layer_call_and_return_conditional_losses_7346o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
В
п
#__inference_lstm_layer_call_fn_8061
inputs_0
unknown:x
	unknown_0:x
	unknown_1:x
identityИвStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *G
fBR@
>__inference_lstm_layer_call_and_return_conditional_losses_7188o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
╕
С
$__inference_dense_layer_call_fn_8691

inputs
unknown:
	unknown_0:
identityИвStatefulPartitionedCall╘
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_7371o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
╖	
Э
lstm_while_cond_7940&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3(
$lstm_while_less_lstm_strided_slice_1<
8lstm_while_lstm_while_cond_7940___redundant_placeholder0<
8lstm_while_lstm_while_cond_7940___redundant_placeholder1<
8lstm_while_lstm_while_cond_7940___redundant_placeholder2<
8lstm_while_lstm_while_cond_7940___redundant_placeholder3
lstm_while_identity
v
lstm/while/LessLesslstm_while_placeholder$lstm_while_less_lstm_strided_slice_1*
T0*
_output_shapes
: U
lstm/while/IdentityIdentitylstm/while/Less:z:0*
T0
*
_output_shapes
: "3
lstm_while_identitylstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 
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
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
╣7
┐
while_body_8428
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_2_matmul_readvariableop_resource_0:xF
4while_lstm_cell_2_matmul_1_readvariableop_resource_0:xA
3while_lstm_cell_2_biasadd_readvariableop_resource_0:x
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_2_matmul_readvariableop_resource:xD
2while_lstm_cell_2_matmul_1_readvariableop_resource:x?
1while_lstm_cell_2_biasadd_readvariableop_resource:xИв(while/lstm_cell_2/BiasAdd/ReadVariableOpв'while/lstm_cell_2/MatMul/ReadVariableOpв)while/lstm_cell_2/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
'while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes

:x*
dtype0╖
while/lstm_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         xЮ
)while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes

:x*
dtype0Ю
while/lstm_cell_2/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         xЪ
while/lstm_cell_2/addAddV2"while/lstm_cell_2/MatMul:product:0$while/lstm_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:         xШ
(while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes
:x*
dtype0г
while/lstm_cell_2/BiasAddBiasAddwhile/lstm_cell_2/add:z:00while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         xc
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ь
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0"while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitx
while/lstm_cell_2/SigmoidSigmoid while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:         z
while/lstm_cell_2/Sigmoid_1Sigmoid while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:         Д
while/lstm_cell_2/mulMulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         r
while/lstm_cell_2/ReluRelu while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:         Х
while/lstm_cell_2/mul_1Mulwhile/lstm_cell_2/Sigmoid:y:0$while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:         К
while/lstm_cell_2/add_1AddV2while/lstm_cell_2/mul:z:0while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:         z
while/lstm_cell_2/Sigmoid_2Sigmoid while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:         o
while/lstm_cell_2/Relu_1Reluwhile/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:         Щ
while/lstm_cell_2/mul_2Mulwhile/lstm_cell_2/Sigmoid_2:y:0&while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:         ─
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥M
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
: x
while/Identity_4Identitywhile/lstm_cell_2/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         x
while/Identity_5Identitywhile/lstm_cell_2/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         ═

while/NoOpNoOp)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_2_biasadd_readvariableop_resource3while_lstm_cell_2_biasadd_readvariableop_resource_0"j
2while_lstm_cell_2_matmul_1_readvariableop_resource4while_lstm_cell_2_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_2_matmul_readvariableop_resource2while_lstm_cell_2_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2T
(while/lstm_cell_2/BiasAdd/ReadVariableOp(while/lstm_cell_2/BiasAdd/ReadVariableOp2R
'while/lstm_cell_2/MatMul/ReadVariableOp'while/lstm_cell_2/MatMul/ReadVariableOp2V
)while/lstm_cell_2/MatMul_1/ReadVariableOp)while/lstm_cell_2/MatMul_1/ReadVariableOp: 
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
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
┌I
Н
>__inference_lstm_layer_call_and_return_conditional_losses_7346

inputs<
*lstm_cell_2_matmul_readvariableop_resource:x>
,lstm_cell_2_matmul_1_readvariableop_resource:x9
+lstm_cell_2_biasadd_readvariableop_resource:x
identityИв"lstm_cell_2/BiasAdd/ReadVariableOpв!lstm_cell_2/MatMul/ReadVariableOpв#lstm_cell_2/MatMul_1/ReadVariableOpвwhile;
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
valueB:╤
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
value	B :s
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
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
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
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskМ
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp*lstm_cell_2_matmul_readvariableop_resource*
_output_shapes

:x*
dtype0У
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         xР
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes

:x*
dtype0Н
lstm_cell_2/MatMul_1MatMulzeros:output:0+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         xИ
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:         xК
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype0С
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         x]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :┌
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitl
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*'
_output_shapes
:         n
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*'
_output_shapes
:         u
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         f
lstm_cell_2/ReluRelulstm_cell_2/split:output:2*
T0*'
_output_shapes
:         Г
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:         x
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:         n
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*'
_output_shapes
:         c
lstm_cell_2/Relu_1Relulstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:         З
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0 lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : √
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_2_matmul_readvariableop_resource,lstm_cell_2_matmul_1_readvariableop_resource+lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_7262*
condR
while_cond_7261*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
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
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         ╜
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
▀7
є
>__inference_lstm_layer_call_and_return_conditional_losses_7188

inputs"
lstm_cell_2_7106:x"
lstm_cell_2_7108:x
lstm_cell_2_7110:x
identityИв#lstm_cell_2/StatefulPartitionedCallвwhile;
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
valueB:╤
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
value	B :s
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
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
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
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskш
#lstm_cell_2/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_2_7106lstm_cell_2_7108lstm_cell_2_7110*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_2_layer_call_and_return_conditional_losses_7060n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : к
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_2_7106lstm_cell_2_7108lstm_cell_2_7110*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_7119*
condR
while_cond_7118*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
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
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         t
NoOpNoOp$^lstm_cell_2/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2J
#lstm_cell_2/StatefulPartitionedCall#lstm_cell_2/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
иJ
┐
sequential_lstm_while_body_6756<
8sequential_lstm_while_sequential_lstm_while_loop_counterB
>sequential_lstm_while_sequential_lstm_while_maximum_iterations%
!sequential_lstm_while_placeholder'
#sequential_lstm_while_placeholder_1'
#sequential_lstm_while_placeholder_2'
#sequential_lstm_while_placeholder_3;
7sequential_lstm_while_sequential_lstm_strided_slice_1_0w
ssequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensor_0T
Bsequential_lstm_while_lstm_cell_2_matmul_readvariableop_resource_0:xV
Dsequential_lstm_while_lstm_cell_2_matmul_1_readvariableop_resource_0:xQ
Csequential_lstm_while_lstm_cell_2_biasadd_readvariableop_resource_0:x"
sequential_lstm_while_identity$
 sequential_lstm_while_identity_1$
 sequential_lstm_while_identity_2$
 sequential_lstm_while_identity_3$
 sequential_lstm_while_identity_4$
 sequential_lstm_while_identity_59
5sequential_lstm_while_sequential_lstm_strided_slice_1u
qsequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensorR
@sequential_lstm_while_lstm_cell_2_matmul_readvariableop_resource:xT
Bsequential_lstm_while_lstm_cell_2_matmul_1_readvariableop_resource:xO
Asequential_lstm_while_lstm_cell_2_biasadd_readvariableop_resource:xИв8sequential/lstm/while/lstm_cell_2/BiasAdd/ReadVariableOpв7sequential/lstm/while/lstm_cell_2/MatMul/ReadVariableOpв9sequential/lstm/while/lstm_cell_2/MatMul_1/ReadVariableOpШ
Gsequential/lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Ў
9sequential/lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemssequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensor_0!sequential_lstm_while_placeholderPsequential/lstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0║
7sequential/lstm/while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOpBsequential_lstm_while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes

:x*
dtype0ч
(sequential/lstm/while/lstm_cell_2/MatMulMatMul@sequential/lstm/while/TensorArrayV2Read/TensorListGetItem:item:0?sequential/lstm/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         x╛
9sequential/lstm/while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOpDsequential_lstm_while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes

:x*
dtype0╬
*sequential/lstm/while/lstm_cell_2/MatMul_1MatMul#sequential_lstm_while_placeholder_2Asequential/lstm/while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         x╩
%sequential/lstm/while/lstm_cell_2/addAddV22sequential/lstm/while/lstm_cell_2/MatMul:product:04sequential/lstm/while/lstm_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:         x╕
8sequential/lstm/while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOpCsequential_lstm_while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes
:x*
dtype0╙
)sequential/lstm/while/lstm_cell_2/BiasAddBiasAdd)sequential/lstm/while/lstm_cell_2/add:z:0@sequential/lstm/while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         xs
1sequential/lstm/while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ь
'sequential/lstm/while/lstm_cell_2/splitSplit:sequential/lstm/while/lstm_cell_2/split/split_dim:output:02sequential/lstm/while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitШ
)sequential/lstm/while/lstm_cell_2/SigmoidSigmoid0sequential/lstm/while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:         Ъ
+sequential/lstm/while/lstm_cell_2/Sigmoid_1Sigmoid0sequential/lstm/while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:         ┤
%sequential/lstm/while/lstm_cell_2/mulMul/sequential/lstm/while/lstm_cell_2/Sigmoid_1:y:0#sequential_lstm_while_placeholder_3*
T0*'
_output_shapes
:         Т
&sequential/lstm/while/lstm_cell_2/ReluRelu0sequential/lstm/while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:         ┼
'sequential/lstm/while/lstm_cell_2/mul_1Mul-sequential/lstm/while/lstm_cell_2/Sigmoid:y:04sequential/lstm/while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:         ║
'sequential/lstm/while/lstm_cell_2/add_1AddV2)sequential/lstm/while/lstm_cell_2/mul:z:0+sequential/lstm/while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:         Ъ
+sequential/lstm/while/lstm_cell_2/Sigmoid_2Sigmoid0sequential/lstm/while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:         П
(sequential/lstm/while/lstm_cell_2/Relu_1Relu+sequential/lstm/while/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:         ╔
'sequential/lstm/while/lstm_cell_2/mul_2Mul/sequential/lstm/while/lstm_cell_2/Sigmoid_2:y:06sequential/lstm/while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:         Д
:sequential/lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#sequential_lstm_while_placeholder_1!sequential_lstm_while_placeholder+sequential/lstm/while/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥]
sequential/lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :М
sequential/lstm/while/addAddV2!sequential_lstm_while_placeholder$sequential/lstm/while/add/y:output:0*
T0*
_output_shapes
: _
sequential/lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :з
sequential/lstm/while/add_1AddV28sequential_lstm_while_sequential_lstm_while_loop_counter&sequential/lstm/while/add_1/y:output:0*
T0*
_output_shapes
: Й
sequential/lstm/while/IdentityIdentitysequential/lstm/while/add_1:z:0^sequential/lstm/while/NoOp*
T0*
_output_shapes
: к
 sequential/lstm/while/Identity_1Identity>sequential_lstm_while_sequential_lstm_while_maximum_iterations^sequential/lstm/while/NoOp*
T0*
_output_shapes
: Й
 sequential/lstm/while/Identity_2Identitysequential/lstm/while/add:z:0^sequential/lstm/while/NoOp*
T0*
_output_shapes
: ╢
 sequential/lstm/while/Identity_3IdentityJsequential/lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^sequential/lstm/while/NoOp*
T0*
_output_shapes
: и
 sequential/lstm/while/Identity_4Identity+sequential/lstm/while/lstm_cell_2/mul_2:z:0^sequential/lstm/while/NoOp*
T0*'
_output_shapes
:         и
 sequential/lstm/while/Identity_5Identity+sequential/lstm/while/lstm_cell_2/add_1:z:0^sequential/lstm/while/NoOp*
T0*'
_output_shapes
:         Н
sequential/lstm/while/NoOpNoOp9^sequential/lstm/while/lstm_cell_2/BiasAdd/ReadVariableOp8^sequential/lstm/while/lstm_cell_2/MatMul/ReadVariableOp:^sequential/lstm/while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "I
sequential_lstm_while_identity'sequential/lstm/while/Identity:output:0"M
 sequential_lstm_while_identity_1)sequential/lstm/while/Identity_1:output:0"M
 sequential_lstm_while_identity_2)sequential/lstm/while/Identity_2:output:0"M
 sequential_lstm_while_identity_3)sequential/lstm/while/Identity_3:output:0"M
 sequential_lstm_while_identity_4)sequential/lstm/while/Identity_4:output:0"M
 sequential_lstm_while_identity_5)sequential/lstm/while/Identity_5:output:0"И
Asequential_lstm_while_lstm_cell_2_biasadd_readvariableop_resourceCsequential_lstm_while_lstm_cell_2_biasadd_readvariableop_resource_0"К
Bsequential_lstm_while_lstm_cell_2_matmul_1_readvariableop_resourceDsequential_lstm_while_lstm_cell_2_matmul_1_readvariableop_resource_0"Ж
@sequential_lstm_while_lstm_cell_2_matmul_readvariableop_resourceBsequential_lstm_while_lstm_cell_2_matmul_readvariableop_resource_0"p
5sequential_lstm_while_sequential_lstm_strided_slice_17sequential_lstm_while_sequential_lstm_strided_slice_1_0"ш
qsequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensorssequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2t
8sequential/lstm/while/lstm_cell_2/BiasAdd/ReadVariableOp8sequential/lstm/while/lstm_cell_2/BiasAdd/ReadVariableOp2r
7sequential/lstm/while/lstm_cell_2/MatMul/ReadVariableOp7sequential/lstm/while/lstm_cell_2/MatMul/ReadVariableOp2v
9sequential/lstm/while/lstm_cell_2/MatMul_1/ReadVariableOp9sequential/lstm/while/lstm_cell_2/MatMul_1/ReadVariableOp: 
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
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
ь
∙
sequential_lstm_while_cond_6755<
8sequential_lstm_while_sequential_lstm_while_loop_counterB
>sequential_lstm_while_sequential_lstm_while_maximum_iterations%
!sequential_lstm_while_placeholder'
#sequential_lstm_while_placeholder_1'
#sequential_lstm_while_placeholder_2'
#sequential_lstm_while_placeholder_3>
:sequential_lstm_while_less_sequential_lstm_strided_slice_1R
Nsequential_lstm_while_sequential_lstm_while_cond_6755___redundant_placeholder0R
Nsequential_lstm_while_sequential_lstm_while_cond_6755___redundant_placeholder1R
Nsequential_lstm_while_sequential_lstm_while_cond_6755___redundant_placeholder2R
Nsequential_lstm_while_sequential_lstm_while_cond_6755___redundant_placeholder3"
sequential_lstm_while_identity
в
sequential/lstm/while/LessLess!sequential_lstm_while_placeholder:sequential_lstm_while_less_sequential_lstm_strided_slice_1*
T0*
_output_shapes
: k
sequential/lstm/while/IdentityIdentitysequential/lstm/while/Less:z:0*
T0
*
_output_shapes
: "I
sequential_lstm_while_identity'sequential/lstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 
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
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
м=
▀	
lstm_while_body_7941&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3%
!lstm_while_lstm_strided_slice_1_0a
]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0I
7lstm_while_lstm_cell_2_matmul_readvariableop_resource_0:xK
9lstm_while_lstm_cell_2_matmul_1_readvariableop_resource_0:xF
8lstm_while_lstm_cell_2_biasadd_readvariableop_resource_0:x
lstm_while_identity
lstm_while_identity_1
lstm_while_identity_2
lstm_while_identity_3
lstm_while_identity_4
lstm_while_identity_5#
lstm_while_lstm_strided_slice_1_
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensorG
5lstm_while_lstm_cell_2_matmul_readvariableop_resource:xI
7lstm_while_lstm_cell_2_matmul_1_readvariableop_resource:xD
6lstm_while_lstm_cell_2_biasadd_readvariableop_resource:xИв-lstm/while/lstm_cell_2/BiasAdd/ReadVariableOpв,lstm/while/lstm_cell_2/MatMul/ReadVariableOpв.lstm/while/lstm_cell_2/MatMul_1/ReadVariableOpН
<lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ┐
.lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0lstm_while_placeholderElstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0д
,lstm/while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp7lstm_while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes

:x*
dtype0╞
lstm/while/lstm_cell_2/MatMulMatMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:04lstm/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         xи
.lstm/while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp9lstm_while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes

:x*
dtype0н
lstm/while/lstm_cell_2/MatMul_1MatMullstm_while_placeholder_26lstm/while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         xй
lstm/while/lstm_cell_2/addAddV2'lstm/while/lstm_cell_2/MatMul:product:0)lstm/while/lstm_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:         xв
-lstm/while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp8lstm_while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes
:x*
dtype0▓
lstm/while/lstm_cell_2/BiasAddBiasAddlstm/while/lstm_cell_2/add:z:05lstm/while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         xh
&lstm/while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :√
lstm/while/lstm_cell_2/splitSplit/lstm/while/lstm_cell_2/split/split_dim:output:0'lstm/while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitВ
lstm/while/lstm_cell_2/SigmoidSigmoid%lstm/while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:         Д
 lstm/while/lstm_cell_2/Sigmoid_1Sigmoid%lstm/while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:         У
lstm/while/lstm_cell_2/mulMul$lstm/while/lstm_cell_2/Sigmoid_1:y:0lstm_while_placeholder_3*
T0*'
_output_shapes
:         |
lstm/while/lstm_cell_2/ReluRelu%lstm/while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:         д
lstm/while/lstm_cell_2/mul_1Mul"lstm/while/lstm_cell_2/Sigmoid:y:0)lstm/while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:         Щ
lstm/while/lstm_cell_2/add_1AddV2lstm/while/lstm_cell_2/mul:z:0 lstm/while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:         Д
 lstm/while/lstm_cell_2/Sigmoid_2Sigmoid%lstm/while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:         y
lstm/while/lstm_cell_2/Relu_1Relu lstm/while/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:         и
lstm/while/lstm_cell_2/mul_2Mul$lstm/while/lstm_cell_2/Sigmoid_2:y:0+lstm/while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:         ╪
/lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_while_placeholder_1lstm_while_placeholder lstm/while/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥R
lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :k
lstm/while/addAddV2lstm_while_placeholderlstm/while/add/y:output:0*
T0*
_output_shapes
: T
lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :{
lstm/while/add_1AddV2"lstm_while_lstm_while_loop_counterlstm/while/add_1/y:output:0*
T0*
_output_shapes
: h
lstm/while/IdentityIdentitylstm/while/add_1:z:0^lstm/while/NoOp*
T0*
_output_shapes
: ~
lstm/while/Identity_1Identity(lstm_while_lstm_while_maximum_iterations^lstm/while/NoOp*
T0*
_output_shapes
: h
lstm/while/Identity_2Identitylstm/while/add:z:0^lstm/while/NoOp*
T0*
_output_shapes
: Х
lstm/while/Identity_3Identity?lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm/while/NoOp*
T0*
_output_shapes
: З
lstm/while/Identity_4Identity lstm/while/lstm_cell_2/mul_2:z:0^lstm/while/NoOp*
T0*'
_output_shapes
:         З
lstm/while/Identity_5Identity lstm/while/lstm_cell_2/add_1:z:0^lstm/while/NoOp*
T0*'
_output_shapes
:         с
lstm/while/NoOpNoOp.^lstm/while/lstm_cell_2/BiasAdd/ReadVariableOp-^lstm/while/lstm_cell_2/MatMul/ReadVariableOp/^lstm/while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "3
lstm_while_identitylstm/while/Identity:output:0"7
lstm_while_identity_1lstm/while/Identity_1:output:0"7
lstm_while_identity_2lstm/while/Identity_2:output:0"7
lstm_while_identity_3lstm/while/Identity_3:output:0"7
lstm_while_identity_4lstm/while/Identity_4:output:0"7
lstm_while_identity_5lstm/while/Identity_5:output:0"r
6lstm_while_lstm_cell_2_biasadd_readvariableop_resource8lstm_while_lstm_cell_2_biasadd_readvariableop_resource_0"t
7lstm_while_lstm_cell_2_matmul_1_readvariableop_resource9lstm_while_lstm_cell_2_matmul_1_readvariableop_resource_0"p
5lstm_while_lstm_cell_2_matmul_readvariableop_resource7lstm_while_lstm_cell_2_matmul_readvariableop_resource_0"D
lstm_while_lstm_strided_slice_1!lstm_while_lstm_strided_slice_1_0"╝
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2^
-lstm/while/lstm_cell_2/BiasAdd/ReadVariableOp-lstm/while/lstm_cell_2/BiasAdd/ReadVariableOp2\
,lstm/while/lstm_cell_2/MatMul/ReadVariableOp,lstm/while/lstm_cell_2/MatMul/ReadVariableOp2`
.lstm/while/lstm_cell_2/MatMul_1/ReadVariableOp.lstm/while/lstm_cell_2/MatMul_1/ReadVariableOp: 
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
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
╣7
┐
while_body_7496
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_2_matmul_readvariableop_resource_0:xF
4while_lstm_cell_2_matmul_1_readvariableop_resource_0:xA
3while_lstm_cell_2_biasadd_readvariableop_resource_0:x
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_2_matmul_readvariableop_resource:xD
2while_lstm_cell_2_matmul_1_readvariableop_resource:x?
1while_lstm_cell_2_biasadd_readvariableop_resource:xИв(while/lstm_cell_2/BiasAdd/ReadVariableOpв'while/lstm_cell_2/MatMul/ReadVariableOpв)while/lstm_cell_2/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
'while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes

:x*
dtype0╖
while/lstm_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         xЮ
)while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes

:x*
dtype0Ю
while/lstm_cell_2/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         xЪ
while/lstm_cell_2/addAddV2"while/lstm_cell_2/MatMul:product:0$while/lstm_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:         xШ
(while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes
:x*
dtype0г
while/lstm_cell_2/BiasAddBiasAddwhile/lstm_cell_2/add:z:00while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         xc
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ь
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0"while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitx
while/lstm_cell_2/SigmoidSigmoid while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:         z
while/lstm_cell_2/Sigmoid_1Sigmoid while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:         Д
while/lstm_cell_2/mulMulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         r
while/lstm_cell_2/ReluRelu while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:         Х
while/lstm_cell_2/mul_1Mulwhile/lstm_cell_2/Sigmoid:y:0$while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:         К
while/lstm_cell_2/add_1AddV2while/lstm_cell_2/mul:z:0while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:         z
while/lstm_cell_2/Sigmoid_2Sigmoid while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:         o
while/lstm_cell_2/Relu_1Reluwhile/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:         Щ
while/lstm_cell_2/mul_2Mulwhile/lstm_cell_2/Sigmoid_2:y:0&while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:         ─
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥M
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
: x
while/Identity_4Identitywhile/lstm_cell_2/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         x
while/Identity_5Identitywhile/lstm_cell_2/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         ═

while/NoOpNoOp)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_2_biasadd_readvariableop_resource3while_lstm_cell_2_biasadd_readvariableop_resource_0"j
2while_lstm_cell_2_matmul_1_readvariableop_resource4while_lstm_cell_2_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_2_matmul_readvariableop_resource2while_lstm_cell_2_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2T
(while/lstm_cell_2/BiasAdd/ReadVariableOp(while/lstm_cell_2/BiasAdd/ReadVariableOp2R
'while/lstm_cell_2/MatMul/ReadVariableOp'while/lstm_cell_2/MatMul/ReadVariableOp2V
)while/lstm_cell_2/MatMul_1/ReadVariableOp)while/lstm_cell_2/MatMul_1/ReadVariableOp: 
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
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
▀7
є
>__inference_lstm_layer_call_and_return_conditional_losses_6997

inputs"
lstm_cell_2_6915:x"
lstm_cell_2_6917:x
lstm_cell_2_6919:x
identityИв#lstm_cell_2/StatefulPartitionedCallвwhile;
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
valueB:╤
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
value	B :s
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
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
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
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskш
#lstm_cell_2/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_2_6915lstm_cell_2_6917lstm_cell_2_6919*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_2_layer_call_and_return_conditional_losses_6914n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : к
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_2_6915lstm_cell_2_6917lstm_cell_2_6919*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_6928*
condR
while_cond_6927*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
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
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         t
NoOpNoOp$^lstm_cell_2/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2J
#lstm_cell_2/StatefulPartitionedCall#lstm_cell_2/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
ПJ
П
>__inference_lstm_layer_call_and_return_conditional_losses_8369
inputs_0<
*lstm_cell_2_matmul_readvariableop_resource:x>
,lstm_cell_2_matmul_1_readvariableop_resource:x9
+lstm_cell_2_biasadd_readvariableop_resource:x
identityИв"lstm_cell_2/BiasAdd/ReadVariableOpв!lstm_cell_2/MatMul/ReadVariableOpв#lstm_cell_2/MatMul_1/ReadVariableOpвwhile=
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
valueB:╤
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
value	B :s
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
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
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
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskМ
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp*lstm_cell_2_matmul_readvariableop_resource*
_output_shapes

:x*
dtype0У
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         xР
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes

:x*
dtype0Н
lstm_cell_2/MatMul_1MatMulzeros:output:0+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         xИ
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:         xК
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype0С
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         x]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :┌
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitl
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*'
_output_shapes
:         n
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*'
_output_shapes
:         u
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         f
lstm_cell_2/ReluRelulstm_cell_2/split:output:2*
T0*'
_output_shapes
:         Г
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:         x
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:         n
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*'
_output_shapes
:         c
lstm_cell_2/Relu_1Relulstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:         З
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0 lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : √
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_2_matmul_readvariableop_resource,lstm_cell_2_matmul_1_readvariableop_resource+lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_8285*
condR
while_cond_8284*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
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
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         ╜
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
к
ц
"__inference_signature_wrapper_7702

lstm_input
unknown:x
	unknown_0:x
	unknown_1:x
	unknown_2:
	unknown_3:
identityИвStatefulPartitionedCall▀
StatefulPartitionedCallStatefulPartitionedCall
lstm_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8В *(
f#R!
__inference__wrapped_model_6847o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
+
_output_shapes
:         
$
_user_specified_name
lstm_input
╘
_
A__inference_dropout_layer_call_and_return_conditional_losses_7359

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:         [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
┌I
Н
>__inference_lstm_layer_call_and_return_conditional_losses_8512

inputs<
*lstm_cell_2_matmul_readvariableop_resource:x>
,lstm_cell_2_matmul_1_readvariableop_resource:x9
+lstm_cell_2_biasadd_readvariableop_resource:x
identityИв"lstm_cell_2/BiasAdd/ReadVariableOpв!lstm_cell_2/MatMul/ReadVariableOpв#lstm_cell_2/MatMul_1/ReadVariableOpвwhile;
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
valueB:╤
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
value	B :s
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
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
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
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskМ
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp*lstm_cell_2_matmul_readvariableop_resource*
_output_shapes

:x*
dtype0У
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         xР
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes

:x*
dtype0Н
lstm_cell_2/MatMul_1MatMulzeros:output:0+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         xИ
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:         xК
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype0С
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         x]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :┌
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitl
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*'
_output_shapes
:         n
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*'
_output_shapes
:         u
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         f
lstm_cell_2/ReluRelulstm_cell_2/split:output:2*
T0*'
_output_shapes
:         Г
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:         x
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:         n
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*'
_output_shapes
:         c
lstm_cell_2/Relu_1Relulstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:         З
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0 lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : √
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_2_matmul_readvariableop_resource,lstm_cell_2_matmul_1_readvariableop_resource+lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_8428*
condR
while_cond_8427*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
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
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         ╜
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
╨
А
E__inference_lstm_cell_2_layer_call_and_return_conditional_losses_8767

inputs
states_0
states_10
matmul_readvariableop_resource:x2
 matmul_1_readvariableop_resource:x-
biasadd_readvariableop_resource:x
identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:x*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         xx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:x*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         xd
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:         xr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:x*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         xQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╢
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         С
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
states/0:QM
'
_output_shapes
:         
"
_user_specified_name
states/1
┬	
Ё
?__inference_dense_layer_call_and_return_conditional_losses_8701

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
м=
▀	
lstm_while_body_7791&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3%
!lstm_while_lstm_strided_slice_1_0a
]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0I
7lstm_while_lstm_cell_2_matmul_readvariableop_resource_0:xK
9lstm_while_lstm_cell_2_matmul_1_readvariableop_resource_0:xF
8lstm_while_lstm_cell_2_biasadd_readvariableop_resource_0:x
lstm_while_identity
lstm_while_identity_1
lstm_while_identity_2
lstm_while_identity_3
lstm_while_identity_4
lstm_while_identity_5#
lstm_while_lstm_strided_slice_1_
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensorG
5lstm_while_lstm_cell_2_matmul_readvariableop_resource:xI
7lstm_while_lstm_cell_2_matmul_1_readvariableop_resource:xD
6lstm_while_lstm_cell_2_biasadd_readvariableop_resource:xИв-lstm/while/lstm_cell_2/BiasAdd/ReadVariableOpв,lstm/while/lstm_cell_2/MatMul/ReadVariableOpв.lstm/while/lstm_cell_2/MatMul_1/ReadVariableOpН
<lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ┐
.lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0lstm_while_placeholderElstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0д
,lstm/while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp7lstm_while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes

:x*
dtype0╞
lstm/while/lstm_cell_2/MatMulMatMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:04lstm/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         xи
.lstm/while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp9lstm_while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes

:x*
dtype0н
lstm/while/lstm_cell_2/MatMul_1MatMullstm_while_placeholder_26lstm/while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         xй
lstm/while/lstm_cell_2/addAddV2'lstm/while/lstm_cell_2/MatMul:product:0)lstm/while/lstm_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:         xв
-lstm/while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp8lstm_while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes
:x*
dtype0▓
lstm/while/lstm_cell_2/BiasAddBiasAddlstm/while/lstm_cell_2/add:z:05lstm/while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         xh
&lstm/while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :√
lstm/while/lstm_cell_2/splitSplit/lstm/while/lstm_cell_2/split/split_dim:output:0'lstm/while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitВ
lstm/while/lstm_cell_2/SigmoidSigmoid%lstm/while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:         Д
 lstm/while/lstm_cell_2/Sigmoid_1Sigmoid%lstm/while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:         У
lstm/while/lstm_cell_2/mulMul$lstm/while/lstm_cell_2/Sigmoid_1:y:0lstm_while_placeholder_3*
T0*'
_output_shapes
:         |
lstm/while/lstm_cell_2/ReluRelu%lstm/while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:         д
lstm/while/lstm_cell_2/mul_1Mul"lstm/while/lstm_cell_2/Sigmoid:y:0)lstm/while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:         Щ
lstm/while/lstm_cell_2/add_1AddV2lstm/while/lstm_cell_2/mul:z:0 lstm/while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:         Д
 lstm/while/lstm_cell_2/Sigmoid_2Sigmoid%lstm/while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:         y
lstm/while/lstm_cell_2/Relu_1Relu lstm/while/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:         и
lstm/while/lstm_cell_2/mul_2Mul$lstm/while/lstm_cell_2/Sigmoid_2:y:0+lstm/while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:         ╪
/lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_while_placeholder_1lstm_while_placeholder lstm/while/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥R
lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :k
lstm/while/addAddV2lstm_while_placeholderlstm/while/add/y:output:0*
T0*
_output_shapes
: T
lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :{
lstm/while/add_1AddV2"lstm_while_lstm_while_loop_counterlstm/while/add_1/y:output:0*
T0*
_output_shapes
: h
lstm/while/IdentityIdentitylstm/while/add_1:z:0^lstm/while/NoOp*
T0*
_output_shapes
: ~
lstm/while/Identity_1Identity(lstm_while_lstm_while_maximum_iterations^lstm/while/NoOp*
T0*
_output_shapes
: h
lstm/while/Identity_2Identitylstm/while/add:z:0^lstm/while/NoOp*
T0*
_output_shapes
: Х
lstm/while/Identity_3Identity?lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm/while/NoOp*
T0*
_output_shapes
: З
lstm/while/Identity_4Identity lstm/while/lstm_cell_2/mul_2:z:0^lstm/while/NoOp*
T0*'
_output_shapes
:         З
lstm/while/Identity_5Identity lstm/while/lstm_cell_2/add_1:z:0^lstm/while/NoOp*
T0*'
_output_shapes
:         с
lstm/while/NoOpNoOp.^lstm/while/lstm_cell_2/BiasAdd/ReadVariableOp-^lstm/while/lstm_cell_2/MatMul/ReadVariableOp/^lstm/while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "3
lstm_while_identitylstm/while/Identity:output:0"7
lstm_while_identity_1lstm/while/Identity_1:output:0"7
lstm_while_identity_2lstm/while/Identity_2:output:0"7
lstm_while_identity_3lstm/while/Identity_3:output:0"7
lstm_while_identity_4lstm/while/Identity_4:output:0"7
lstm_while_identity_5lstm/while/Identity_5:output:0"r
6lstm_while_lstm_cell_2_biasadd_readvariableop_resource8lstm_while_lstm_cell_2_biasadd_readvariableop_resource_0"t
7lstm_while_lstm_cell_2_matmul_1_readvariableop_resource9lstm_while_lstm_cell_2_matmul_1_readvariableop_resource_0"p
5lstm_while_lstm_cell_2_matmul_readvariableop_resource7lstm_while_lstm_cell_2_matmul_readvariableop_resource_0"D
lstm_while_lstm_strided_slice_1!lstm_while_lstm_strided_slice_1_0"╝
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2^
-lstm/while/lstm_cell_2/BiasAdd/ReadVariableOp-lstm/while/lstm_cell_2/BiasAdd/ReadVariableOp2\
,lstm/while/lstm_cell_2/MatMul/ReadVariableOp,lstm/while/lstm_cell_2/MatMul/ReadVariableOp2`
.lstm/while/lstm_cell_2/MatMul_1/ReadVariableOp.lstm/while/lstm_cell_2/MatMul_1/ReadVariableOp: 
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
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
т
Ё
*__inference_lstm_cell_2_layer_call_fn_8718

inputs
states_0
states_1
unknown:x
	unknown_0:x
	unknown_1:x
identity

identity_1

identity_2ИвStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_2_layer_call_and_return_conditional_losses_6914o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
states/0:QM
'
_output_shapes
:         
"
_user_specified_name
states/1
╫W
р
D__inference_sequential_layer_call_and_return_conditional_losses_7882

inputsA
/lstm_lstm_cell_2_matmul_readvariableop_resource:xC
1lstm_lstm_cell_2_matmul_1_readvariableop_resource:x>
0lstm_lstm_cell_2_biasadd_readvariableop_resource:x6
$dense_matmul_readvariableop_resource:3
%dense_biasadd_readvariableop_resource:
identityИвdense/BiasAdd/ReadVariableOpвdense/MatMul/ReadVariableOpв'lstm/lstm_cell_2/BiasAdd/ReadVariableOpв&lstm/lstm_cell_2/MatMul/ReadVariableOpв(lstm/lstm_cell_2/MatMul_1/ReadVariableOpв
lstm/while@

lstm/ShapeShapeinputs*
T0*
_output_shapes
:b
lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: d
lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:d
lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ъ
lstm/strided_sliceStridedSlicelstm/Shape:output:0!lstm/strided_slice/stack:output:0#lstm/strided_slice/stack_1:output:0#lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskU
lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :В
lstm/zeros/packedPacklstm/strided_slice:output:0lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:U
lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    {

lstm/zerosFilllstm/zeros/packed:output:0lstm/zeros/Const:output:0*
T0*'
_output_shapes
:         W
lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ж
lstm/zeros_1/packedPacklstm/strided_slice:output:0lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Б
lstm/zeros_1Filllstm/zeros_1/packed:output:0lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:         h
lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
lstm/transpose	Transposeinputslstm/transpose/perm:output:0*
T0*+
_output_shapes
:         N
lstm/Shape_1Shapelstm/transpose:y:0*
T0*
_output_shapes
:d
lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ї
lstm/strided_slice_1StridedSlicelstm/Shape_1:output:0#lstm/strided_slice_1/stack:output:0%lstm/strided_slice_1/stack_1:output:0%lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
 lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ├
lstm/TensorArrayV2TensorListReserve)lstm/TensorArrayV2/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Л
:lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       я
,lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm/transpose:y:0Clstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥d
lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:В
lstm/strided_slice_2StridedSlicelstm/transpose:y:0#lstm/strided_slice_2/stack:output:0%lstm/strided_slice_2/stack_1:output:0%lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЦ
&lstm/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp/lstm_lstm_cell_2_matmul_readvariableop_resource*
_output_shapes

:x*
dtype0в
lstm/lstm_cell_2/MatMulMatMullstm/strided_slice_2:output:0.lstm/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         xЪ
(lstm/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp1lstm_lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes

:x*
dtype0Ь
lstm/lstm_cell_2/MatMul_1MatMullstm/zeros:output:00lstm/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         xЧ
lstm/lstm_cell_2/addAddV2!lstm/lstm_cell_2/MatMul:product:0#lstm/lstm_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:         xФ
'lstm/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp0lstm_lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype0а
lstm/lstm_cell_2/BiasAddBiasAddlstm/lstm_cell_2/add:z:0/lstm/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         xb
 lstm/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :щ
lstm/lstm_cell_2/splitSplit)lstm/lstm_cell_2/split/split_dim:output:0!lstm/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitv
lstm/lstm_cell_2/SigmoidSigmoidlstm/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:         x
lstm/lstm_cell_2/Sigmoid_1Sigmoidlstm/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:         Д
lstm/lstm_cell_2/mulMullstm/lstm_cell_2/Sigmoid_1:y:0lstm/zeros_1:output:0*
T0*'
_output_shapes
:         p
lstm/lstm_cell_2/ReluRelulstm/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:         Т
lstm/lstm_cell_2/mul_1Mullstm/lstm_cell_2/Sigmoid:y:0#lstm/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:         З
lstm/lstm_cell_2/add_1AddV2lstm/lstm_cell_2/mul:z:0lstm/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:         x
lstm/lstm_cell_2/Sigmoid_2Sigmoidlstm/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:         m
lstm/lstm_cell_2/Relu_1Relulstm/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:         Ц
lstm/lstm_cell_2/mul_2Mullstm/lstm_cell_2/Sigmoid_2:y:0%lstm/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:         s
"lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╟
lstm/TensorArrayV2_1TensorListReserve+lstm/TensorArrayV2_1/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥K
	lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : h
lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         Y
lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ┴

lstm/whileWhile lstm/while/loop_counter:output:0&lstm/while/maximum_iterations:output:0lstm/time:output:0lstm/TensorArrayV2_1:handle:0lstm/zeros:output:0lstm/zeros_1:output:0lstm/strided_slice_1:output:0<lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:0/lstm_lstm_cell_2_matmul_readvariableop_resource1lstm_lstm_cell_2_matmul_1_readvariableop_resource0lstm_lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( * 
bodyR
lstm_while_body_7791* 
condR
lstm_while_cond_7790*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Ж
5lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╤
'lstm/TensorArrayV2Stack/TensorListStackTensorListStacklstm/while:output:3>lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0m
lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         f
lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:а
lstm/strided_slice_3StridedSlice0lstm/TensorArrayV2Stack/TensorListStack:tensor:0#lstm/strided_slice_3/stack:output:0%lstm/strided_slice_3/stack_1:output:0%lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskj
lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          е
lstm/transpose_1	Transpose0lstm/TensorArrayV2Stack/TensorListStack:tensor:0lstm/transpose_1/perm:output:0*
T0*+
_output_shapes
:         `
lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    m
dropout/IdentityIdentitylstm/strided_slice_3:output:0*
T0*'
_output_shapes
:         А
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:*
dtype0И
dense/MatMulMatMuldropout/Identity:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0И
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         e
IdentityIdentitydense/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         О
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp(^lstm/lstm_cell_2/BiasAdd/ReadVariableOp'^lstm/lstm_cell_2/MatMul/ReadVariableOp)^lstm/lstm_cell_2/MatMul_1/ReadVariableOp^lstm/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2R
'lstm/lstm_cell_2/BiasAdd/ReadVariableOp'lstm/lstm_cell_2/BiasAdd/ReadVariableOp2P
&lstm/lstm_cell_2/MatMul/ReadVariableOp&lstm/lstm_cell_2/MatMul/ReadVariableOp2T
(lstm/lstm_cell_2/MatMul_1/ReadVariableOp(lstm/lstm_cell_2/MatMul_1/ReadVariableOp2

lstm/while
lstm/while:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ш
╙
D__inference_sequential_layer_call_and_return_conditional_losses_7685

lstm_input
	lstm_7671:x
	lstm_7673:x
	lstm_7675:x

dense_7679:

dense_7681:
identityИвdense/StatefulPartitionedCallвdropout/StatefulPartitionedCallвlstm/StatefulPartitionedCallы
lstm/StatefulPartitionedCallStatefulPartitionedCall
lstm_input	lstm_7671	lstm_7673	lstm_7675*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *G
fBR@
>__inference_lstm_layer_call_and_return_conditional_losses_7580у
dropout/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_7421А
dense/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0
dense_7679
dense_7681*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_7371u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         з
NoOpNoOp^dense/StatefulPartitionedCall ^dropout/StatefulPartitionedCall^lstm/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:W S
+
_output_shapes
:         
$
_user_specified_name
lstm_input
┌I
Н
>__inference_lstm_layer_call_and_return_conditional_losses_7580

inputs<
*lstm_cell_2_matmul_readvariableop_resource:x>
,lstm_cell_2_matmul_1_readvariableop_resource:x9
+lstm_cell_2_biasadd_readvariableop_resource:x
identityИв"lstm_cell_2/BiasAdd/ReadVariableOpв!lstm_cell_2/MatMul/ReadVariableOpв#lstm_cell_2/MatMul_1/ReadVariableOpвwhile;
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
valueB:╤
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
value	B :s
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
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
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
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskМ
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp*lstm_cell_2_matmul_readvariableop_resource*
_output_shapes

:x*
dtype0У
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         xР
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes

:x*
dtype0Н
lstm_cell_2/MatMul_1MatMulzeros:output:0+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         xИ
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:         xК
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype0С
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         x]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :┌
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitl
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*'
_output_shapes
:         n
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*'
_output_shapes
:         u
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         f
lstm_cell_2/ReluRelulstm_cell_2/split:output:2*
T0*'
_output_shapes
:         Г
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:         x
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:         n
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*'
_output_shapes
:         c
lstm_cell_2/Relu_1Relulstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:         З
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0 lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : √
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_2_matmul_readvariableop_resource,lstm_cell_2_matmul_1_readvariableop_resource+lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_7496*
condR
while_cond_7495*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
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
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         ╜
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
╣7
┐
while_body_7262
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_2_matmul_readvariableop_resource_0:xF
4while_lstm_cell_2_matmul_1_readvariableop_resource_0:xA
3while_lstm_cell_2_biasadd_readvariableop_resource_0:x
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_2_matmul_readvariableop_resource:xD
2while_lstm_cell_2_matmul_1_readvariableop_resource:x?
1while_lstm_cell_2_biasadd_readvariableop_resource:xИв(while/lstm_cell_2/BiasAdd/ReadVariableOpв'while/lstm_cell_2/MatMul/ReadVariableOpв)while/lstm_cell_2/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
'while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes

:x*
dtype0╖
while/lstm_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         xЮ
)while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes

:x*
dtype0Ю
while/lstm_cell_2/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         xЪ
while/lstm_cell_2/addAddV2"while/lstm_cell_2/MatMul:product:0$while/lstm_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:         xШ
(while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes
:x*
dtype0г
while/lstm_cell_2/BiasAddBiasAddwhile/lstm_cell_2/add:z:00while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         xc
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ь
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0"while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitx
while/lstm_cell_2/SigmoidSigmoid while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:         z
while/lstm_cell_2/Sigmoid_1Sigmoid while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:         Д
while/lstm_cell_2/mulMulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         r
while/lstm_cell_2/ReluRelu while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:         Х
while/lstm_cell_2/mul_1Mulwhile/lstm_cell_2/Sigmoid:y:0$while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:         К
while/lstm_cell_2/add_1AddV2while/lstm_cell_2/mul:z:0while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:         z
while/lstm_cell_2/Sigmoid_2Sigmoid while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:         o
while/lstm_cell_2/Relu_1Reluwhile/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:         Щ
while/lstm_cell_2/mul_2Mulwhile/lstm_cell_2/Sigmoid_2:y:0&while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:         ─
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥M
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
: x
while/Identity_4Identitywhile/lstm_cell_2/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         x
while/Identity_5Identitywhile/lstm_cell_2/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         ═

while/NoOpNoOp)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_2_biasadd_readvariableop_resource3while_lstm_cell_2_biasadd_readvariableop_resource_0"j
2while_lstm_cell_2_matmul_1_readvariableop_resource4while_lstm_cell_2_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_2_matmul_readvariableop_resource2while_lstm_cell_2_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2T
(while/lstm_cell_2/BiasAdd/ReadVariableOp(while/lstm_cell_2/BiasAdd/ReadVariableOp2R
'while/lstm_cell_2/MatMul/ReadVariableOp'while/lstm_cell_2/MatMul/ReadVariableOp2V
)while/lstm_cell_2/MatMul_1/ReadVariableOp)while/lstm_cell_2/MatMul_1/ReadVariableOp: 
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
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
╓
э
)__inference_sequential_layer_call_fn_7651

lstm_input
unknown:x
	unknown_0:x
	unknown_1:x
	unknown_2:
	unknown_3:
identityИвStatefulPartitionedCallД
StatefulPartitionedCallStatefulPartitionedCall
lstm_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_7623o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
+
_output_shapes
:         
$
_user_specified_name
lstm_input
╖	
Э
lstm_while_cond_7790&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3(
$lstm_while_less_lstm_strided_slice_1<
8lstm_while_lstm_while_cond_7790___redundant_placeholder0<
8lstm_while_lstm_while_cond_7790___redundant_placeholder1<
8lstm_while_lstm_while_cond_7790___redundant_placeholder2<
8lstm_while_lstm_while_cond_7790___redundant_placeholder3
lstm_while_identity
v
lstm/while/LessLesslstm_while_placeholder$lstm_while_less_lstm_strided_slice_1*
T0*
_output_shapes
: U
lstm/while/IdentityIdentitylstm/while/Less:z:0*
T0
*
_output_shapes
: "3
lstm_while_identitylstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         :         : ::::: 
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
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
л
╣
while_cond_7118
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_12
.while_while_cond_7118___redundant_placeholder02
.while_while_cond_7118___redundant_placeholder12
.while_while_cond_7118___redundant_placeholder22
.while_while_cond_7118___redundant_placeholder3
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
@: : : : :         :         : ::::: 
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
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
л
╣
while_cond_8427
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_12
.while_while_cond_8427___redundant_placeholder02
.while_while_cond_8427___redundant_placeholder12
.while_while_cond_8427___redundant_placeholder22
.while_while_cond_8427___redundant_placeholder3
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
@: : : : :         :         : ::::: 
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
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
╓
э
)__inference_sequential_layer_call_fn_7391

lstm_input
unknown:x
	unknown_0:x
	unknown_1:x
	unknown_2:
	unknown_3:
identityИвStatefulPartitionedCallД
StatefulPartitionedCallStatefulPartitionedCall
lstm_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_7378o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
+
_output_shapes
:         
$
_user_specified_name
lstm_input
ж"
╚
while_body_6928
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*
while_lstm_cell_2_6952_0:x*
while_lstm_cell_2_6954_0:x&
while_lstm_cell_2_6956_0:x
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor(
while_lstm_cell_2_6952:x(
while_lstm_cell_2_6954:x$
while_lstm_cell_2_6956:xИв)while/lstm_cell_2/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0ж
)while/lstm_cell_2/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_2_6952_0while_lstm_cell_2_6954_0while_lstm_cell_2_6956_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_2_layer_call_and_return_conditional_losses_6914█
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_2/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щш╥M
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
: П
while/Identity_4Identity2while/lstm_cell_2/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         П
while/Identity_5Identity2while/lstm_cell_2/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         x

while/NoOpNoOp*^while/lstm_cell_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"2
while_lstm_cell_2_6952while_lstm_cell_2_6952_0"2
while_lstm_cell_2_6954while_lstm_cell_2_6954_0"2
while_lstm_cell_2_6956while_lstm_cell_2_6956_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2V
)while/lstm_cell_2/StatefulPartitionedCall)while/lstm_cell_2/StatefulPartitionedCall: 
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
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
√	
`
A__inference_dropout_layer_call_and_return_conditional_losses_8682

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:         C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Ш
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>ж
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:         Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
с
Є
__inference__traced_save_8837
file_prefix+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop6
2savev2_lstm_lstm_cell_2_kernel_read_readvariableop@
<savev2_lstm_lstm_cell_2_recurrent_kernel_read_readvariableop4
0savev2_lstm_lstm_cell_2_bias_read_readvariableop
savev2_const

identity_1ИвMergeV2Checkpointsw
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
: Ё
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Щ
valueПBМB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHy
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B B й
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop2savev2_lstm_lstm_cell_2_kernel_read_readvariableop<savev2_lstm_lstm_cell_2_recurrent_kernel_read_readvariableop0savev2_lstm_lstm_cell_2_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes

2Р
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

identity_1Identity_1:output:0*A
_input_shapes0
.: :::x:x:x: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:x:$ 

_output_shapes

:x: 

_output_shapes
:x:

_output_shapes
: 
ёf
╕
__inference__wrapped_model_6847

lstm_inputL
:sequential_lstm_lstm_cell_2_matmul_readvariableop_resource:xN
<sequential_lstm_lstm_cell_2_matmul_1_readvariableop_resource:xI
;sequential_lstm_lstm_cell_2_biasadd_readvariableop_resource:xA
/sequential_dense_matmul_readvariableop_resource:>
0sequential_dense_biasadd_readvariableop_resource:
identityИв'sequential/dense/BiasAdd/ReadVariableOpв&sequential/dense/MatMul/ReadVariableOpв2sequential/lstm/lstm_cell_2/BiasAdd/ReadVariableOpв1sequential/lstm/lstm_cell_2/MatMul/ReadVariableOpв3sequential/lstm/lstm_cell_2/MatMul_1/ReadVariableOpвsequential/lstm/whileO
sequential/lstm/ShapeShape
lstm_input*
T0*
_output_shapes
:m
#sequential/lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%sequential/lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%sequential/lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
sequential/lstm/strided_sliceStridedSlicesequential/lstm/Shape:output:0,sequential/lstm/strided_slice/stack:output:0.sequential/lstm/strided_slice/stack_1:output:0.sequential/lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
sequential/lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :г
sequential/lstm/zeros/packedPack&sequential/lstm/strided_slice:output:0'sequential/lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
sequential/lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ь
sequential/lstm/zerosFill%sequential/lstm/zeros/packed:output:0$sequential/lstm/zeros/Const:output:0*
T0*'
_output_shapes
:         b
 sequential/lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :з
sequential/lstm/zeros_1/packedPack&sequential/lstm/strided_slice:output:0)sequential/lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
sequential/lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    в
sequential/lstm/zeros_1Fill'sequential/lstm/zeros_1/packed:output:0&sequential/lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:         s
sequential/lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          С
sequential/lstm/transpose	Transpose
lstm_input'sequential/lstm/transpose/perm:output:0*
T0*+
_output_shapes
:         d
sequential/lstm/Shape_1Shapesequential/lstm/transpose:y:0*
T0*
_output_shapes
:o
%sequential/lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'sequential/lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'sequential/lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
sequential/lstm/strided_slice_1StridedSlice sequential/lstm/Shape_1:output:0.sequential/lstm/strided_slice_1/stack:output:00sequential/lstm/strided_slice_1/stack_1:output:00sequential/lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+sequential/lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ф
sequential/lstm/TensorArrayV2TensorListReserve4sequential/lstm/TensorArrayV2/element_shape:output:0(sequential/lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ц
Esequential/lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Р
7sequential/lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsequential/lstm/transpose:y:0Nsequential/lstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥o
%sequential/lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'sequential/lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'sequential/lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╣
sequential/lstm/strided_slice_2StridedSlicesequential/lstm/transpose:y:0.sequential/lstm/strided_slice_2/stack:output:00sequential/lstm/strided_slice_2/stack_1:output:00sequential/lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskм
1sequential/lstm/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp:sequential_lstm_lstm_cell_2_matmul_readvariableop_resource*
_output_shapes

:x*
dtype0├
"sequential/lstm/lstm_cell_2/MatMulMatMul(sequential/lstm/strided_slice_2:output:09sequential/lstm/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         x░
3sequential/lstm/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp<sequential_lstm_lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes

:x*
dtype0╜
$sequential/lstm/lstm_cell_2/MatMul_1MatMulsequential/lstm/zeros:output:0;sequential/lstm/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         x╕
sequential/lstm/lstm_cell_2/addAddV2,sequential/lstm/lstm_cell_2/MatMul:product:0.sequential/lstm/lstm_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:         xк
2sequential/lstm/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp;sequential_lstm_lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype0┴
#sequential/lstm/lstm_cell_2/BiasAddBiasAdd#sequential/lstm/lstm_cell_2/add:z:0:sequential/lstm/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         xm
+sequential/lstm/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :К
!sequential/lstm/lstm_cell_2/splitSplit4sequential/lstm/lstm_cell_2/split/split_dim:output:0,sequential/lstm/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitМ
#sequential/lstm/lstm_cell_2/SigmoidSigmoid*sequential/lstm/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:         О
%sequential/lstm/lstm_cell_2/Sigmoid_1Sigmoid*sequential/lstm/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:         е
sequential/lstm/lstm_cell_2/mulMul)sequential/lstm/lstm_cell_2/Sigmoid_1:y:0 sequential/lstm/zeros_1:output:0*
T0*'
_output_shapes
:         Ж
 sequential/lstm/lstm_cell_2/ReluRelu*sequential/lstm/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:         │
!sequential/lstm/lstm_cell_2/mul_1Mul'sequential/lstm/lstm_cell_2/Sigmoid:y:0.sequential/lstm/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:         и
!sequential/lstm/lstm_cell_2/add_1AddV2#sequential/lstm/lstm_cell_2/mul:z:0%sequential/lstm/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:         О
%sequential/lstm/lstm_cell_2/Sigmoid_2Sigmoid*sequential/lstm/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:         Г
"sequential/lstm/lstm_cell_2/Relu_1Relu%sequential/lstm/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:         ╖
!sequential/lstm/lstm_cell_2/mul_2Mul)sequential/lstm/lstm_cell_2/Sigmoid_2:y:00sequential/lstm/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:         ~
-sequential/lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ш
sequential/lstm/TensorArrayV2_1TensorListReserve6sequential/lstm/TensorArrayV2_1/element_shape:output:0(sequential/lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥V
sequential/lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(sequential/lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         d
"sequential/lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : █
sequential/lstm/whileWhile+sequential/lstm/while/loop_counter:output:01sequential/lstm/while/maximum_iterations:output:0sequential/lstm/time:output:0(sequential/lstm/TensorArrayV2_1:handle:0sequential/lstm/zeros:output:0 sequential/lstm/zeros_1:output:0(sequential/lstm/strided_slice_1:output:0Gsequential/lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:0:sequential_lstm_lstm_cell_2_matmul_readvariableop_resource<sequential_lstm_lstm_cell_2_matmul_1_readvariableop_resource;sequential_lstm_lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *+
body#R!
sequential_lstm_while_body_6756*+
cond#R!
sequential_lstm_while_cond_6755*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations С
@sequential/lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Є
2sequential/lstm/TensorArrayV2Stack/TensorListStackTensorListStacksequential/lstm/while:output:3Isequential/lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0x
%sequential/lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         q
'sequential/lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'sequential/lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╫
sequential/lstm/strided_slice_3StridedSlice;sequential/lstm/TensorArrayV2Stack/TensorListStack:tensor:0.sequential/lstm/strided_slice_3/stack:output:00sequential/lstm/strided_slice_3/stack_1:output:00sequential/lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_masku
 sequential/lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ╞
sequential/lstm/transpose_1	Transpose;sequential/lstm/TensorArrayV2Stack/TensorListStack:tensor:0)sequential/lstm/transpose_1/perm:output:0*
T0*+
_output_shapes
:         k
sequential/lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Г
sequential/dropout/IdentityIdentity(sequential/lstm/strided_slice_3:output:0*
T0*'
_output_shapes
:         Ц
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes

:*
dtype0й
sequential/dense/MatMulMatMul$sequential/dropout/Identity:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Ф
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0й
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         p
IdentityIdentity!sequential/dense/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         ╨
NoOpNoOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp3^sequential/lstm/lstm_cell_2/BiasAdd/ReadVariableOp2^sequential/lstm/lstm_cell_2/MatMul/ReadVariableOp4^sequential/lstm/lstm_cell_2/MatMul_1/ReadVariableOp^sequential/lstm/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         : : : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2h
2sequential/lstm/lstm_cell_2/BiasAdd/ReadVariableOp2sequential/lstm/lstm_cell_2/BiasAdd/ReadVariableOp2f
1sequential/lstm/lstm_cell_2/MatMul/ReadVariableOp1sequential/lstm/lstm_cell_2/MatMul/ReadVariableOp2j
3sequential/lstm/lstm_cell_2/MatMul_1/ReadVariableOp3sequential/lstm/lstm_cell_2/MatMul_1/ReadVariableOp2.
sequential/lstm/whilesequential/lstm/while:W S
+
_output_shapes
:         
$
_user_specified_name
lstm_input
▄
╧
D__inference_sequential_layer_call_and_return_conditional_losses_7623

inputs
	lstm_7609:x
	lstm_7611:x
	lstm_7613:x

dense_7617:

dense_7619:
identityИвdense/StatefulPartitionedCallвdropout/StatefulPartitionedCallвlstm/StatefulPartitionedCallч
lstm/StatefulPartitionedCallStatefulPartitionedCallinputs	lstm_7609	lstm_7611	lstm_7613*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *G
fBR@
>__inference_lstm_layer_call_and_return_conditional_losses_7580у
dropout/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_7421А
dense/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0
dense_7617
dense_7619*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_7371u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         з
NoOpNoOp^dense/StatefulPartitionedCall ^dropout/StatefulPartitionedCall^lstm/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
√	
`
A__inference_dropout_layer_call_and_return_conditional_losses_7421

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:         C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Ш
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         *
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>ж
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:         i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:         Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
ПJ
П
>__inference_lstm_layer_call_and_return_conditional_losses_8226
inputs_0<
*lstm_cell_2_matmul_readvariableop_resource:x>
,lstm_cell_2_matmul_1_readvariableop_resource:x9
+lstm_cell_2_biasadd_readvariableop_resource:x
identityИв"lstm_cell_2/BiasAdd/ReadVariableOpв!lstm_cell_2/MatMul/ReadVariableOpв#lstm_cell_2/MatMul_1/ReadVariableOpвwhile=
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
valueB:╤
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
value	B :s
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
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
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
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskМ
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp*lstm_cell_2_matmul_readvariableop_resource*
_output_shapes

:x*
dtype0У
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         xР
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes

:x*
dtype0Н
lstm_cell_2/MatMul_1MatMulzeros:output:0+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         xИ
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:         xК
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype0С
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         x]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :┌
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitl
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*'
_output_shapes
:         n
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*'
_output_shapes
:         u
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         f
lstm_cell_2/ReluRelulstm_cell_2/split:output:2*
T0*'
_output_shapes
:         Г
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:         x
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:         n
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*'
_output_shapes
:         c
lstm_cell_2/Relu_1Relulstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:         З
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0 lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : √
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_2_matmul_readvariableop_resource,lstm_cell_2_matmul_1_readvariableop_resource+lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_8142*
condR
while_cond_8141*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
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
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         ╜
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
╣7
┐
while_body_8142
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_2_matmul_readvariableop_resource_0:xF
4while_lstm_cell_2_matmul_1_readvariableop_resource_0:xA
3while_lstm_cell_2_biasadd_readvariableop_resource_0:x
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_2_matmul_readvariableop_resource:xD
2while_lstm_cell_2_matmul_1_readvariableop_resource:x?
1while_lstm_cell_2_biasadd_readvariableop_resource:xИв(while/lstm_cell_2/BiasAdd/ReadVariableOpв'while/lstm_cell_2/MatMul/ReadVariableOpв)while/lstm_cell_2/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
'while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes

:x*
dtype0╖
while/lstm_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         xЮ
)while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes

:x*
dtype0Ю
while/lstm_cell_2/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         xЪ
while/lstm_cell_2/addAddV2"while/lstm_cell_2/MatMul:product:0$while/lstm_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:         xШ
(while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes
:x*
dtype0г
while/lstm_cell_2/BiasAddBiasAddwhile/lstm_cell_2/add:z:00while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         xc
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ь
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0"while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitx
while/lstm_cell_2/SigmoidSigmoid while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:         z
while/lstm_cell_2/Sigmoid_1Sigmoid while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:         Д
while/lstm_cell_2/mulMulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         r
while/lstm_cell_2/ReluRelu while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:         Х
while/lstm_cell_2/mul_1Mulwhile/lstm_cell_2/Sigmoid:y:0$while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:         К
while/lstm_cell_2/add_1AddV2while/lstm_cell_2/mul:z:0while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:         z
while/lstm_cell_2/Sigmoid_2Sigmoid while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:         o
while/lstm_cell_2/Relu_1Reluwhile/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:         Щ
while/lstm_cell_2/mul_2Mulwhile/lstm_cell_2/Sigmoid_2:y:0&while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:         ─
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥M
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
: x
while/Identity_4Identitywhile/lstm_cell_2/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         x
while/Identity_5Identitywhile/lstm_cell_2/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         ═

while/NoOpNoOp)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_2_biasadd_readvariableop_resource3while_lstm_cell_2_biasadd_readvariableop_resource_0"j
2while_lstm_cell_2_matmul_1_readvariableop_resource4while_lstm_cell_2_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_2_matmul_readvariableop_resource2while_lstm_cell_2_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2T
(while/lstm_cell_2/BiasAdd/ReadVariableOp(while/lstm_cell_2/BiasAdd/ReadVariableOp2R
'while/lstm_cell_2/MatMul/ReadVariableOp'while/lstm_cell_2/MatMul/ReadVariableOp2V
)while/lstm_cell_2/MatMul_1/ReadVariableOp)while/lstm_cell_2/MatMul_1/ReadVariableOp: 
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
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
╣7
┐
while_body_8285
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_2_matmul_readvariableop_resource_0:xF
4while_lstm_cell_2_matmul_1_readvariableop_resource_0:xA
3while_lstm_cell_2_biasadd_readvariableop_resource_0:x
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_2_matmul_readvariableop_resource:xD
2while_lstm_cell_2_matmul_1_readvariableop_resource:x?
1while_lstm_cell_2_biasadd_readvariableop_resource:xИв(while/lstm_cell_2/BiasAdd/ReadVariableOpв'while/lstm_cell_2/MatMul/ReadVariableOpв)while/lstm_cell_2/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
'while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes

:x*
dtype0╖
while/lstm_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         xЮ
)while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes

:x*
dtype0Ю
while/lstm_cell_2/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         xЪ
while/lstm_cell_2/addAddV2"while/lstm_cell_2/MatMul:product:0$while/lstm_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:         xШ
(while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes
:x*
dtype0г
while/lstm_cell_2/BiasAddBiasAddwhile/lstm_cell_2/add:z:00while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         xc
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ь
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0"while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitx
while/lstm_cell_2/SigmoidSigmoid while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:         z
while/lstm_cell_2/Sigmoid_1Sigmoid while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:         Д
while/lstm_cell_2/mulMulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         r
while/lstm_cell_2/ReluRelu while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:         Х
while/lstm_cell_2/mul_1Mulwhile/lstm_cell_2/Sigmoid:y:0$while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:         К
while/lstm_cell_2/add_1AddV2while/lstm_cell_2/mul:z:0while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:         z
while/lstm_cell_2/Sigmoid_2Sigmoid while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:         o
while/lstm_cell_2/Relu_1Reluwhile/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:         Щ
while/lstm_cell_2/mul_2Mulwhile/lstm_cell_2/Sigmoid_2:y:0&while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:         ─
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥M
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
: x
while/Identity_4Identitywhile/lstm_cell_2/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         x
while/Identity_5Identitywhile/lstm_cell_2/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         ═

while/NoOpNoOp)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_2_biasadd_readvariableop_resource3while_lstm_cell_2_biasadd_readvariableop_resource_0"j
2while_lstm_cell_2_matmul_1_readvariableop_resource4while_lstm_cell_2_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_2_matmul_readvariableop_resource2while_lstm_cell_2_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2T
(while/lstm_cell_2/BiasAdd/ReadVariableOp(while/lstm_cell_2/BiasAdd/ReadVariableOp2R
'while/lstm_cell_2/MatMul/ReadVariableOp'while/lstm_cell_2/MatMul/ReadVariableOp2V
)while/lstm_cell_2/MatMul_1/ReadVariableOp)while/lstm_cell_2/MatMul_1/ReadVariableOp: 
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
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
л
╣
while_cond_8570
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_12
.while_while_cond_8570___redundant_placeholder02
.while_while_cond_8570___redundant_placeholder12
.while_while_cond_8570___redundant_placeholder22
.while_while_cond_8570___redundant_placeholder3
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
@: : : : :         :         : ::::: 
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
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
╘
_
A__inference_dropout_layer_call_and_return_conditional_losses_8670

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:         [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
щ
_
&__inference_dropout_layer_call_fn_8665

inputs
identityИвStatefulPartitionedCall╝
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_7421o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
ж"
╚
while_body_7119
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*
while_lstm_cell_2_7143_0:x*
while_lstm_cell_2_7145_0:x&
while_lstm_cell_2_7147_0:x
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor(
while_lstm_cell_2_7143:x(
while_lstm_cell_2_7145:x$
while_lstm_cell_2_7147:xИв)while/lstm_cell_2/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0ж
)while/lstm_cell_2/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_2_7143_0while_lstm_cell_2_7145_0while_lstm_cell_2_7147_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         :         :         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_2_layer_call_and_return_conditional_losses_7060█
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_2/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щш╥M
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
: П
while/Identity_4Identity2while/lstm_cell_2/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         П
while/Identity_5Identity2while/lstm_cell_2/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         x

while/NoOpNoOp*^while/lstm_cell_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"2
while_lstm_cell_2_7143while_lstm_cell_2_7143_0"2
while_lstm_cell_2_7145while_lstm_cell_2_7145_0"2
while_lstm_cell_2_7147while_lstm_cell_2_7147_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2V
)while/lstm_cell_2/StatefulPartitionedCall)while/lstm_cell_2/StatefulPartitionedCall: 
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
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
е
╔
 __inference__traced_restore_8862
file_prefix/
assignvariableop_dense_kernel:+
assignvariableop_1_dense_bias:<
*assignvariableop_2_lstm_lstm_cell_2_kernel:xF
4assignvariableop_3_lstm_lstm_cell_2_recurrent_kernel:x6
(assignvariableop_4_lstm_lstm_cell_2_bias:x

identity_6ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_2вAssignVariableOp_3вAssignVariableOp_4є
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Щ
valueПBМB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH|
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B B ╝
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*,
_output_shapes
::::::*
dtypes

2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:И
AssignVariableOpAssignVariableOpassignvariableop_dense_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_2AssignVariableOp*assignvariableop_2_lstm_lstm_cell_2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_3AssignVariableOp4assignvariableop_3_lstm_lstm_cell_2_recurrent_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_4AssignVariableOp(assignvariableop_4_lstm_lstm_cell_2_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ┴

Identity_5Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^NoOp"/device:CPU:0*
T0*
_output_shapes
: U

Identity_6IdentityIdentity_5:output:0^NoOp_1*
T0*
_output_shapes
: п
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4*"
_acd_function_control_output(*
_output_shapes
 "!

identity_6Identity_6:output:0*
_input_shapes
: : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_4:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
╚
▒
D__inference_sequential_layer_call_and_return_conditional_losses_7668

lstm_input
	lstm_7654:x
	lstm_7656:x
	lstm_7658:x

dense_7662:

dense_7664:
identityИвdense/StatefulPartitionedCallвlstm/StatefulPartitionedCallы
lstm/StatefulPartitionedCallStatefulPartitionedCall
lstm_input	lstm_7654	lstm_7656	lstm_7658*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *G
fBR@
>__inference_lstm_layer_call_and_return_conditional_losses_7346╙
dropout/PartitionedCallPartitionedCall%lstm/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_7359°
dense/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0
dense_7662
dense_7664*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_7371u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Е
NoOpNoOp^dense/StatefulPartitionedCall^lstm/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:W S
+
_output_shapes
:         
$
_user_specified_name
lstm_input
╩
щ
)__inference_sequential_layer_call_fn_7732

inputs
unknown:x
	unknown_0:x
	unknown_1:x
	unknown_2:
	unknown_3:
identityИвStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_7623o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
В
п
#__inference_lstm_layer_call_fn_8050
inputs_0
unknown:x
	unknown_0:x
	unknown_1:x
identityИвStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *G
fBR@
>__inference_lstm_layer_call_and_return_conditional_losses_6997o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
╣7
┐
while_body_8571
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
2while_lstm_cell_2_matmul_readvariableop_resource_0:xF
4while_lstm_cell_2_matmul_1_readvariableop_resource_0:xA
3while_lstm_cell_2_biasadd_readvariableop_resource_0:x
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
0while_lstm_cell_2_matmul_readvariableop_resource:xD
2while_lstm_cell_2_matmul_1_readvariableop_resource:x?
1while_lstm_cell_2_biasadd_readvariableop_resource:xИв(while/lstm_cell_2/BiasAdd/ReadVariableOpв'while/lstm_cell_2/MatMul/ReadVariableOpв)while/lstm_cell_2/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
'while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_2_matmul_readvariableop_resource_0*
_output_shapes

:x*
dtype0╖
while/lstm_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         xЮ
)while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes

:x*
dtype0Ю
while/lstm_cell_2/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         xЪ
while/lstm_cell_2/addAddV2"while/lstm_cell_2/MatMul:product:0$while/lstm_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:         xШ
(while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes
:x*
dtype0г
while/lstm_cell_2/BiasAddBiasAddwhile/lstm_cell_2/add:z:00while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         xc
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ь
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0"while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitx
while/lstm_cell_2/SigmoidSigmoid while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:         z
while/lstm_cell_2/Sigmoid_1Sigmoid while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:         Д
while/lstm_cell_2/mulMulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         r
while/lstm_cell_2/ReluRelu while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:         Х
while/lstm_cell_2/mul_1Mulwhile/lstm_cell_2/Sigmoid:y:0$while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:         К
while/lstm_cell_2/add_1AddV2while/lstm_cell_2/mul:z:0while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:         z
while/lstm_cell_2/Sigmoid_2Sigmoid while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:         o
while/lstm_cell_2/Relu_1Reluwhile/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:         Щ
while/lstm_cell_2/mul_2Mulwhile/lstm_cell_2/Sigmoid_2:y:0&while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:         ─
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥M
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
: x
while/Identity_4Identitywhile/lstm_cell_2/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         x
while/Identity_5Identitywhile/lstm_cell_2/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         ═

while/NoOpNoOp)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_2_biasadd_readvariableop_resource3while_lstm_cell_2_biasadd_readvariableop_resource_0"j
2while_lstm_cell_2_matmul_1_readvariableop_resource4while_lstm_cell_2_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_2_matmul_readvariableop_resource2while_lstm_cell_2_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         :         : : : : : 2T
(while/lstm_cell_2/BiasAdd/ReadVariableOp(while/lstm_cell_2/BiasAdd/ReadVariableOp2R
'while/lstm_cell_2/MatMul/ReadVariableOp'while/lstm_cell_2/MatMul/ReadVariableOp2V
)while/lstm_cell_2/MatMul_1/ReadVariableOp)while/lstm_cell_2/MatMul_1/ReadVariableOp: 
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
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
: 
л
╣
while_cond_8141
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_12
.while_while_cond_8141___redundant_placeholder02
.while_while_cond_8141___redundant_placeholder12
.while_while_cond_8141___redundant_placeholder22
.while_while_cond_8141___redundant_placeholder3
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
@: : : : :         :         : ::::: 
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
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
ъ
н
#__inference_lstm_layer_call_fn_8083

inputs
unknown:x
	unknown_0:x
	unknown_1:x
identityИвStatefulPartitionedCallр
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *G
fBR@
>__inference_lstm_layer_call_and_return_conditional_losses_7580o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
╚
■
E__inference_lstm_cell_2_layer_call_and_return_conditional_losses_7060

inputs

states
states_10
matmul_readvariableop_resource:x2
 matmul_1_readvariableop_resource:x-
biasadd_readvariableop_resource:x
identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:x*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         xx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:x*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         xd
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:         xr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:x*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         xQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╢
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         С
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_namestates:OK
'
_output_shapes
:         
 
_user_specified_namestates
┬	
Ё
?__inference_dense_layer_call_and_return_conditional_losses_7371

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
╩
щ
)__inference_sequential_layer_call_fn_7717

inputs
unknown:x
	unknown_0:x
	unknown_1:x
	unknown_2:
	unknown_3:
identityИвStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_7378o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
┌I
Н
>__inference_lstm_layer_call_and_return_conditional_losses_8655

inputs<
*lstm_cell_2_matmul_readvariableop_resource:x>
,lstm_cell_2_matmul_1_readvariableop_resource:x9
+lstm_cell_2_biasadd_readvariableop_resource:x
identityИв"lstm_cell_2/BiasAdd/ReadVariableOpв!lstm_cell_2/MatMul/ReadVariableOpв#lstm_cell_2/MatMul_1/ReadVariableOpвwhile;
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
valueB:╤
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
value	B :s
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
:         R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
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
:         c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskМ
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp*lstm_cell_2_matmul_readvariableop_resource*
_output_shapes

:x*
dtype0У
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         xР
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes

:x*
dtype0Н
lstm_cell_2/MatMul_1MatMulzeros:output:0+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         xИ
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*'
_output_shapes
:         xК
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes
:x*
dtype0С
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         x]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :┌
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitl
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*'
_output_shapes
:         n
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*'
_output_shapes
:         u
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         f
lstm_cell_2/ReluRelulstm_cell_2/split:output:2*
T0*'
_output_shapes
:         Г
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:         x
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:         n
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*'
_output_shapes
:         c
lstm_cell_2/Relu_1Relulstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:         З
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0 lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:         n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : √
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_2_matmul_readvariableop_resource,lstm_cell_2_matmul_1_readvariableop_resource+lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         :         : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_8571*
condR
while_cond_8570*K
output_shapes:
8: : : : :         :         : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
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
:         *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         ╜
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
л
╣
while_cond_6927
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_12
.while_while_cond_6927___redundant_placeholder02
.while_while_cond_6927___redundant_placeholder12
.while_while_cond_6927___redundant_placeholder22
.while_while_cond_6927___redundant_placeholder3
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
@: : : : :         :         : ::::: 
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
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
л
╣
while_cond_8284
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_12
.while_while_cond_8284___redundant_placeholder02
.while_while_cond_8284___redundant_placeholder12
.while_while_cond_8284___redundant_placeholder22
.while_while_cond_8284___redundant_placeholder3
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
@: : : : :         :         : ::::: 
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
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
л
╣
while_cond_7261
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_12
.while_while_cond_7261___redundant_placeholder02
.while_while_cond_7261___redundant_placeholder12
.while_while_cond_7261___redundant_placeholder22
.while_while_cond_7261___redundant_placeholder3
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
@: : : : :         :         : ::::: 
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
:         :-)
'
_output_shapes
:         :

_output_shapes
: :

_output_shapes
:
╚
■
E__inference_lstm_cell_2_layer_call_and_return_conditional_losses_6914

inputs

states
states_10
matmul_readvariableop_resource:x2
 matmul_1_readvariableop_resource:x-
biasadd_readvariableop_resource:x
identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:x*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         xx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:x*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         xd
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:         xr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:x*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         xQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╢
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         :         :         :         *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         _
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         С
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         :         : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_namestates:OK
'
_output_shapes
:         
 
_user_specified_namestates"ВL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*▓
serving_defaultЮ
E

lstm_input7
serving_default_lstm_input:0         9
dense0
StatefulPartitionedCall:0         tensorflow/serving/predict:╧h
▓
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
	variables
trainable_variables
regularization_losses
	keras_api

signatures
;__call__
*<&call_and_return_all_conditional_losses
=_default_save_signature"
_tf_keras_sequential
├
	cell


state_spec
	variables
trainable_variables
regularization_losses
	keras_api
>__call__
*?&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
е
	variables
trainable_variables
regularization_losses
	keras_api
@__call__
*A&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
B__call__
*C&call_and_return_all_conditional_losses"
_tf_keras_layer
C
0
1
2
3
4"
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
non_trainable_variables

layers
metrics
layer_regularization_losses
 layer_metrics
	variables
trainable_variables
regularization_losses
;__call__
=_default_save_signature
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses"
_generic_user_object
,
Dserving_default"
signature_map
с
!
state_size

kernel
recurrent_kernel
bias
"	variables
#trainable_variables
$regularization_losses
%	keras_api
E__call__
*F&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
╣

&states
'non_trainable_variables

(layers
)metrics
*layer_regularization_losses
+layer_metrics
	variables
trainable_variables
regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
н
,non_trainable_variables

-layers
.metrics
/layer_regularization_losses
0layer_metrics
	variables
trainable_variables
regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
:2dense/kernel
:2
dense/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
н
1non_trainable_variables

2layers
3metrics
4layer_regularization_losses
5layer_metrics
	variables
trainable_variables
regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses"
_generic_user_object
):'x2lstm/lstm_cell_2/kernel
3:1x2!lstm/lstm_cell_2/recurrent_kernel
#:!x2lstm/lstm_cell_2/bias
 "
trackable_list_wrapper
5
0
1
2"
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
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
н
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
"	variables
#trainable_variables
$regularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
	0"
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
Є2я
)__inference_sequential_layer_call_fn_7391
)__inference_sequential_layer_call_fn_7717
)__inference_sequential_layer_call_fn_7732
)__inference_sequential_layer_call_fn_7651└
╖▓│
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
kwonlydefaultsк 
annotationsк *
 
▐2█
D__inference_sequential_layer_call_and_return_conditional_losses_7882
D__inference_sequential_layer_call_and_return_conditional_losses_8039
D__inference_sequential_layer_call_and_return_conditional_losses_7668
D__inference_sequential_layer_call_and_return_conditional_losses_7685└
╖▓│
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
kwonlydefaultsк 
annotationsк *
 
═B╩
__inference__wrapped_model_6847
lstm_input"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
я2ь
#__inference_lstm_layer_call_fn_8050
#__inference_lstm_layer_call_fn_8061
#__inference_lstm_layer_call_fn_8072
#__inference_lstm_layer_call_fn_8083╒
╠▓╚
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
kwonlydefaultsк 
annotationsк *
 
█2╪
>__inference_lstm_layer_call_and_return_conditional_losses_8226
>__inference_lstm_layer_call_and_return_conditional_losses_8369
>__inference_lstm_layer_call_and_return_conditional_losses_8512
>__inference_lstm_layer_call_and_return_conditional_losses_8655╒
╠▓╚
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
kwonlydefaultsк 
annotationsк *
 
К2З
&__inference_dropout_layer_call_fn_8660
&__inference_dropout_layer_call_fn_8665┤
л▓з
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
kwonlydefaultsк 
annotationsк *
 
└2╜
A__inference_dropout_layer_call_and_return_conditional_losses_8670
A__inference_dropout_layer_call_and_return_conditional_losses_8682┤
л▓з
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
kwonlydefaultsк 
annotationsк *
 
╬2╦
$__inference_dense_layer_call_fn_8691в
Щ▓Х
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
annotationsк *
 
щ2ц
?__inference_dense_layer_call_and_return_conditional_losses_8701в
Щ▓Х
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
annotationsк *
 
╠B╔
"__inference_signature_wrapper_7702
lstm_input"Ф
Н▓Й
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
annotationsк *
 
Ь2Щ
*__inference_lstm_cell_2_layer_call_fn_8718
*__inference_lstm_cell_2_layer_call_fn_8735╛
╡▓▒
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
kwonlydefaultsк 
annotationsк *
 
╥2╧
E__inference_lstm_cell_2_layer_call_and_return_conditional_losses_8767
E__inference_lstm_cell_2_layer_call_and_return_conditional_losses_8799╛
╡▓▒
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
kwonlydefaultsк 
annotationsк *
 Т
__inference__wrapped_model_6847o7в4
-в*
(К%

lstm_input         
к "-к*
(
denseК
dense         Я
?__inference_dense_layer_call_and_return_conditional_losses_8701\/в,
%в"
 К
inputs         
к "%в"
К
0         
Ъ w
$__inference_dense_layer_call_fn_8691O/в,
%в"
 К
inputs         
к "К         б
A__inference_dropout_layer_call_and_return_conditional_losses_8670\3в0
)в&
 К
inputs         
p 
к "%в"
К
0         
Ъ б
A__inference_dropout_layer_call_and_return_conditional_losses_8682\3в0
)в&
 К
inputs         
p
к "%в"
К
0         
Ъ y
&__inference_dropout_layer_call_fn_8660O3в0
)в&
 К
inputs         
p 
к "К         y
&__inference_dropout_layer_call_fn_8665O3в0
)в&
 К
inputs         
p
к "К         ╟
E__inference_lstm_cell_2_layer_call_and_return_conditional_losses_8767¤Ав}
vвs
 К
inputs         
KвH
"К
states/0         
"К
states/1         
p 
к "sвp
iвf
К
0/0         
EЪB
К
0/1/0         
К
0/1/1         
Ъ ╟
E__inference_lstm_cell_2_layer_call_and_return_conditional_losses_8799¤Ав}
vвs
 К
inputs         
KвH
"К
states/0         
"К
states/1         
p
к "sвp
iвf
К
0/0         
EЪB
К
0/1/0         
К
0/1/1         
Ъ Ь
*__inference_lstm_cell_2_layer_call_fn_8718эАв}
vвs
 К
inputs         
KвH
"К
states/0         
"К
states/1         
p 
к "cв`
К
0         
AЪ>
К
1/0         
К
1/1         Ь
*__inference_lstm_cell_2_layer_call_fn_8735эАв}
vвs
 К
inputs         
KвH
"К
states/0         
"К
states/1         
p
к "cв`
К
0         
AЪ>
К
1/0         
К
1/1         ┐
>__inference_lstm_layer_call_and_return_conditional_losses_8226}OвL
EвB
4Ъ1
/К,
inputs/0                  

 
p 

 
к "%в"
К
0         
Ъ ┐
>__inference_lstm_layer_call_and_return_conditional_losses_8369}OвL
EвB
4Ъ1
/К,
inputs/0                  

 
p

 
к "%в"
К
0         
Ъ п
>__inference_lstm_layer_call_and_return_conditional_losses_8512m?в<
5в2
$К!
inputs         

 
p 

 
к "%в"
К
0         
Ъ п
>__inference_lstm_layer_call_and_return_conditional_losses_8655m?в<
5в2
$К!
inputs         

 
p

 
к "%в"
К
0         
Ъ Ч
#__inference_lstm_layer_call_fn_8050pOвL
EвB
4Ъ1
/К,
inputs/0                  

 
p 

 
к "К         Ч
#__inference_lstm_layer_call_fn_8061pOвL
EвB
4Ъ1
/К,
inputs/0                  

 
p

 
к "К         З
#__inference_lstm_layer_call_fn_8072`?в<
5в2
$К!
inputs         

 
p 

 
к "К         З
#__inference_lstm_layer_call_fn_8083`?в<
5в2
$К!
inputs         

 
p

 
к "К         ╖
D__inference_sequential_layer_call_and_return_conditional_losses_7668o?в<
5в2
(К%

lstm_input         
p 

 
к "%в"
К
0         
Ъ ╖
D__inference_sequential_layer_call_and_return_conditional_losses_7685o?в<
5в2
(К%

lstm_input         
p

 
к "%в"
К
0         
Ъ │
D__inference_sequential_layer_call_and_return_conditional_losses_7882k;в8
1в.
$К!
inputs         
p 

 
к "%в"
К
0         
Ъ │
D__inference_sequential_layer_call_and_return_conditional_losses_8039k;в8
1в.
$К!
inputs         
p

 
к "%в"
К
0         
Ъ П
)__inference_sequential_layer_call_fn_7391b?в<
5в2
(К%

lstm_input         
p 

 
к "К         П
)__inference_sequential_layer_call_fn_7651b?в<
5в2
(К%

lstm_input         
p

 
к "К         Л
)__inference_sequential_layer_call_fn_7717^;в8
1в.
$К!
inputs         
p 

 
к "К         Л
)__inference_sequential_layer_call_fn_7732^;в8
1в.
$К!
inputs         
p

 
к "К         г
"__inference_signature_wrapper_7702}EвB
в 
;к8
6

lstm_input(К%

lstm_input         "-к*
(
denseК
dense         