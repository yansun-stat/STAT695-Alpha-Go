��
�$�#
,
Abs
x"T
y"T"
Ttype:

2	
:
Add
x"T
y"T
z"T"
Ttype:
2	
x
Assign
ref"T�

value"T

output_ref"T�"	
Ttype"
validate_shapebool("
use_lockingbool(�
s
	AssignAdd
ref"T�

value"T

output_ref"T�" 
Ttype:
2	"
use_lockingbool( 
s
	AssignSub
ref"T�

value"T

output_ref"T�" 
Ttype:
2	"
use_lockingbool( 
h
BatchMatMul
x"T
y"T
output"T"
Ttype:
	2"
adj_xbool( "
adj_ybool( 
@

BitwiseAnd
x"T
y"T
z"T"
Ttype:

2	�
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
�
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
,
Log
x"T
y"T"
Ttype:

2
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
�
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
;
Minimum
x"T
y"T
z"T"
Ttype:

2	�
=
Mul
x"T
y"T
z"T"
Ttype:
2	�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
w
PadV2

input"T
paddings"	Tpaddings
constant_values"T
output"T"	
Ttype"
	Tpaddingstype0:
2	
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
6
Pow
x"T
y"T
z"T"
Ttype:

2	
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
�
RandomUniformInt

shape"T
minval"Tout
maxval"Tout
output"Tout"
seedint "
seed2int "
Touttype:
2	"
Ttype:
2	�
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
	ReverseV2
tensor"T
axis"Tidx
output"T"
Tidxtype0:
2	"
Ttype:
2	

.
Rsqrt
x"T
y"T"
Ttype:

2
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
-
Sqrt
x"T
y"T"
Ttype:

2
1
Square
x"T
y"T"
Ttype:

2	
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
:
Sub
x"T
y"T
z"T"
Ttype:
2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
�
TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
s

VariableV2
ref"dtype�"
shapeshape"
dtypetype"
	containerstring "
shared_namestring �"serve*1.12.02unknown8��

global_step/Initializer/zerosConst*
value	B	 R *
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
k
global_step
VariableV2*
dtype0	*
_output_shapes
: *
_class
loc:@global_step*
shape: 
�
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
_output_shapes
: *
T0	*
_class
loc:@global_step
j
global_step/readIdentityglobal_step*
_output_shapes
: *
T0	*
_class
loc:@global_step
y
Placeholder_97Placeholder*
dtype0*+
_output_shapes
:���������* 
shape:���������
q
Placeholder_98Placeholder*
dtype0*'
_output_shapes
:���������*
shape:���������
y
Placeholder_99Placeholder*+
_output_shapes
:���������R* 
shape:���������R*
dtype0
r
Placeholder_100Placeholder*
dtype0*'
_output_shapes
:���������@*
shape:���������@
t
Placeholder_101Placeholder*
dtype0*(
_output_shapes
:����������*
shape:����������
r
Placeholder_102Placeholder*'
_output_shapes
:���������=*
shape:���������=*
dtype0
�
Placeholder_103Placeholder*
dtype0*/
_output_shapes
:���������		*$
shape:���������		
V
ConstConst*
_output_shapes
:*
valueB"�@ *
dtype0
f
Reshape/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
Y
ReshapeReshapeConstReshape/shape*
T0*&
_output_shapes
:
P
ExpandDims/dimConst*
_output_shapes
: *
value	B :*
dtype0
r

ExpandDims
ExpandDimsPlaceholder_97ExpandDims/dim*
T0*/
_output_shapes
:���������
g

BitwiseAnd
BitwiseAnd
ExpandDimsReshape*/
_output_shapes
:���������*
T0
d
Reshape_1/shapeConst*
dtype0*
_output_shapes
:*!
valueB"����   X   
g
	Reshape_1Reshape
BitwiseAndReshape_1/shape*
T0*+
_output_shapes
:���������X
h
strided_slice/stackConst*!
valueB"            *
dtype0*
_output_shapes
:
j
strided_slice/stack_1Const*!
valueB"        Q   *
dtype0*
_output_shapes
:
j
strided_slice/stack_2Const*
dtype0*
_output_shapes
:*!
valueB"         
�
strided_sliceStridedSlice	Reshape_1strided_slice/stackstrided_slice/stack_1strided_slice/stack_2*

begin_mask*
end_mask*+
_output_shapes
:���������Q*
T0*
Index0
c
transpose/permConst*!
valueB"          *
dtype0*
_output_shapes
:
k
	transpose	Transposestrided_slicetranspose/perm*
T0*+
_output_shapes
:���������Q
\
CastCast	transpose*

SrcT0*

DstT0*+
_output_shapes
:���������Q
L
Const_1Const*
valueB
 *  �?*
dtype0*
_output_shapes
: 
W
MinimumMinimumCastConst_1*
T0*+
_output_shapes
:���������Q
^
random_uniform/shapeConst*
_output_shapes
:*
valueB:*
dtype0
T
random_uniform/minConst*
value	B : *
dtype0*
_output_shapes
: 
T
random_uniform/maxConst*
value	B :*
dtype0*
_output_shapes
: 
�
random_uniformRandomUniformIntrandom_uniform/shaperandom_uniform/minrandom_uniform/max*
_output_shapes
:*

Tout0*
T0
O
zerosConst*
valueB: *
dtype0*
_output_shapes
:
N
GreaterGreaterrandom_uniformzeros*
T0*
_output_shapes
:
I
Const_2Const*
value	B
 Z *
dtype0
*
_output_shapes
: 
r
include_historyPlaceholder*
dtype0*'
_output_shapes
:���������*
shape:���������
h
Reshape_2/shapeConst*
_output_shapes
:*%
valueB"����	   	      *
dtype0
h
	Reshape_2ReshapeMinimumReshape_2/shape*
T0*/
_output_shapes
:���������		
n
strided_slice_1/stackConst*
dtype0*
_output_shapes
:*%
valueB"                
p
strided_slice_1/stack_1Const*
_output_shapes
:*%
valueB"               *
dtype0
p
strided_slice_1/stack_2Const*%
valueB"            *
dtype0*
_output_shapes
:
�
strided_slice_1StridedSlice	Reshape_2strided_slice_1/stackstrided_slice_1/stack_1strided_slice_1/stack_2*
T0*
Index0*

begin_mask*
end_mask*/
_output_shapes
:���������		
_
strided_slice_2/stackConst*
_output_shapes
:*
valueB: *
dtype0
a
strided_slice_2/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
a
strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
strided_slice_2StridedSliceGreaterstrided_slice_2/stackstrided_slice_2/stack_1strided_slice_2/stack_2*
shrink_axis_mask*
_output_shapes
: *
T0
*
Index0
_
strided_slice_3/stackConst*
dtype0*
_output_shapes
:*
valueB:
a
strided_slice_3/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
a
strided_slice_3/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
strided_slice_3StridedSliceGreaterstrided_slice_3/stackstrided_slice_3/stack_1strided_slice_3/stack_2*
Index0*
T0
*
shrink_axis_mask*
_output_shapes
: 
_
strided_slice_4/stackConst*
dtype0*
_output_shapes
:*
valueB:
a
strided_slice_4/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
a
strided_slice_4/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
�
strided_slice_4StridedSliceGreaterstrided_slice_4/stackstrided_slice_4/stack_1strided_slice_4/stack_2*
T0
*
Index0*
shrink_axis_mask*
_output_shapes
: 
Z
cond/SwitchSwitchstrided_slice_2strided_slice_2*
_output_shapes
: : *
T0

I
cond/switch_tIdentitycond/Switch:1*
T0
*
_output_shapes
: 
G
cond/switch_fIdentitycond/Switch*
_output_shapes
: *
T0

J
cond/pred_idIdentitystrided_slice_2*
_output_shapes
: *
T0

m
cond/ReverseV2/axisConst^cond/switch_t*
valueB:*
dtype0*
_output_shapes
:
�
cond/ReverseV2	ReverseV2cond/ReverseV2/Switch:1cond/ReverseV2/axis*
T0*/
_output_shapes
:���������		
�
cond/ReverseV2/SwitchSwitch	Reshape_2cond/pred_id*
T0*
_class
loc:@Reshape_2*J
_output_shapes8
6:���������		:���������		
�
cond/Switch_1Switch	Reshape_2cond/pred_id*
T0*
_class
loc:@Reshape_2*J
_output_shapes8
6:���������		:���������		
w

cond/MergeMergecond/Switch_1cond/ReverseV2*
T0*
N*1
_output_shapes
:���������		: 
\
cond_1/SwitchSwitchstrided_slice_3strided_slice_3*
T0
*
_output_shapes
: : 
M
cond_1/switch_tIdentitycond_1/Switch:1*
T0
*
_output_shapes
: 
K
cond_1/switch_fIdentitycond_1/Switch*
T0
*
_output_shapes
: 
L
cond_1/pred_idIdentitystrided_slice_3*
T0
*
_output_shapes
: 
q
cond_1/ReverseV2/axisConst^cond_1/switch_t*
valueB:*
dtype0*
_output_shapes
:
�
cond_1/ReverseV2	ReverseV2cond_1/ReverseV2/Switch:1cond_1/ReverseV2/axis*
T0*/
_output_shapes
:���������		
�
cond_1/ReverseV2/SwitchSwitch
cond/Mergecond_1/pred_id*J
_output_shapes8
6:���������		:���������		*
T0*
_class
loc:@cond/Merge
�
cond_1/Switch_1Switch
cond/Mergecond_1/pred_id*
T0*
_class
loc:@cond/Merge*J
_output_shapes8
6:���������		:���������		
}
cond_1/MergeMergecond_1/Switch_1cond_1/ReverseV2*1
_output_shapes
:���������		: *
T0*
N
\
cond_2/SwitchSwitchstrided_slice_4strided_slice_4*
_output_shapes
: : *
T0

M
cond_2/switch_tIdentitycond_2/Switch:1*
T0
*
_output_shapes
: 
K
cond_2/switch_fIdentitycond_2/Switch*
_output_shapes
: *
T0

L
cond_2/pred_idIdentitystrided_slice_4*
T0
*
_output_shapes
: 
�
cond_2/transpose/permConst^cond_2/switch_t*%
valueB"             *
dtype0*
_output_shapes
:
�
cond_2/transpose	Transposecond_2/transpose/Switch:1cond_2/transpose/perm*/
_output_shapes
:���������		*
T0
�
cond_2/transpose/SwitchSwitchcond_1/Mergecond_2/pred_id*
_class
loc:@cond_1/Merge*J
_output_shapes8
6:���������		:���������		*
T0
�
cond_2/Switch_1Switchcond_1/Mergecond_2/pred_id*
T0*
_class
loc:@cond_1/Merge*J
_output_shapes8
6:���������		:���������		
}
cond_2/MergeMergecond_2/Switch_1cond_2/transpose*
N*1
_output_shapes
:���������		: *
T0
�
Const_3Const*�
value�B�"�  �?                                                                                          �?                                                                                          �?                                                                                          �?                                                                                          �?                                                                                          �?                                                                                          �?                                                                                          �?                                                                                          �?                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      �?  �?  �?                                                                                                                                                                                                                                                                          �?                                                                                          �?                                                                                          �?                                                                                          �?                                                                                          �?*
dtype0*
_output_shapes

:
d
Reshape_3/shapeConst*!
valueB"         *
dtype0*
_output_shapes
:
[
	Reshape_3ReshapeConst_3Reshape_3/shape*
T0*"
_output_shapes
:
�L
Const_4Const*�K
value�KB�K"�K                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              �?                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ��  ��                                                                                  �?  �?                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              �?                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ��                                                                                      �?                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  �?                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          �?                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          �?                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                *
dtype0*"
_output_shapes
:
X
Tensordot/axesConst*
valueB:*
dtype0*
_output_shapes
:
X
Tensordot/freeConst*
valueB: *
dtype0*
_output_shapes
:
N
Tensordot/ShapeShapeinclude_history*
_output_shapes
:*
T0
Y
Tensordot/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
Tensordot/GatherV2GatherV2Tensordot/ShapeTensordot/freeTensordot/GatherV2/axis*
Tindices0*
Tparams0*
_output_shapes
:*
Taxis0
[
Tensordot/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
Tensordot/GatherV2_1GatherV2Tensordot/ShapeTensordot/axesTensordot/GatherV2_1/axis*
Tparams0*
_output_shapes
:*
Taxis0*
Tindices0
Y
Tensordot/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
\
Tensordot/ProdProdTensordot/GatherV2Tensordot/Const*
T0*
_output_shapes
: 
[
Tensordot/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
b
Tensordot/Prod_1ProdTensordot/GatherV2_1Tensordot/Const_1*
T0*
_output_shapes
: 
W
Tensordot/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
Tensordot/concatConcatV2Tensordot/freeTensordot/axesTensordot/concat/axis*
T0*
N*
_output_shapes
:
g
Tensordot/stackPackTensordot/ProdTensordot/Prod_1*
N*
_output_shapes
:*
T0
u
Tensordot/transpose	Transposeinclude_historyTensordot/concat*'
_output_shapes
:���������*
T0
}
Tensordot/ReshapeReshapeTensordot/transposeTensordot/stack*0
_output_shapes
:������������������*
T0
o
Tensordot/transpose_1/permConst*!
valueB"          *
dtype0*
_output_shapes
:
t
Tensordot/transpose_1	TransposeConst_4Tensordot/transpose_1/perm*"
_output_shapes
:*
T0
j
Tensordot/Reshape_1/shapeConst*
_output_shapes
:*
valueB"   �  *
dtype0
z
Tensordot/Reshape_1ReshapeTensordot/transpose_1Tensordot/Reshape_1/shape*
_output_shapes
:	�*
T0
u
Tensordot/MatMulMatMulTensordot/ReshapeTensordot/Reshape_1*
T0*(
_output_shapes
:����������
b
Tensordot/Const_2Const*
valueB"      *
dtype0*
_output_shapes
:
Y
Tensordot/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
Tensordot/concat_1ConcatV2Tensordot/GatherV2Tensordot/Const_2Tensordot/concat_1/axis*
T0*
N*
_output_shapes
:
p
	TensordotReshapeTensordot/MatMulTensordot/concat_1*
T0*+
_output_shapes
:���������
V
addAdd	Reshape_3	Tensordot*+
_output_shapes
:���������*
T0
d
Reshape_4/shapeConst*!
valueB"����Q      *
dtype0*
_output_shapes
:
i
	Reshape_4Reshapecond_2/MergeReshape_4/shape*
T0*+
_output_shapes
:���������Q
[
MatMulBatchMatMul	Reshape_4add*+
_output_shapes
:���������Q*
T0
h
Reshape_5/shapeConst*%
valueB"����	   	      *
dtype0*
_output_shapes
:
g
	Reshape_5ReshapeMatMulReshape_5/shape*/
_output_shapes
:���������		*
T0
o
PadV2/paddingsConst*)
value B"            	   *
dtype0*
_output_shapes

:
Z
PadV2/constant_valuesConst*
_output_shapes
: *
valueB
 *  �?*
dtype0
x
PadV2PadV2include_historyPadV2/paddingsPadV2/constant_values*
T0*'
_output_shapes
:���������
S
mulMulPlaceholder_98PadV2*
T0*'
_output_shapes
:���������
n
strided_slice_5/stackConst*%
valueB"                *
dtype0*
_output_shapes
:
p
strided_slice_5/stack_1Const*%
valueB"               *
dtype0*
_output_shapes
:
p
strided_slice_5/stack_2Const*%
valueB"            *
dtype0*
_output_shapes
:
�
strided_slice_5StridedSlice	Reshape_5strided_slice_5/stackstrided_slice_5/stack_1strided_slice_5/stack_2*

begin_mask*
end_mask*/
_output_shapes
:���������		*
Index0*
T0
`
Const_5Const*
dtype0*
_output_shapes
:*%
valueB"             
E
SumSumstrided_slice_5Const_5*
_output_shapes
: *
T0
l
Sum_1/reduction_indicesConst*!
valueB"         *
dtype0*
_output_shapes
:
d
Sum_1Sumstrided_slice_5Sum_1/reduction_indices*
T0*#
_output_shapes
:���������
A
SqrtSqrtSum_1*#
_output_shapes
:���������*
T0
o
truncated_normal/shapeConst*%
valueB"         `   *
dtype0*
_output_shapes
:
Z
truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
\
truncated_normal/stddevConst*
valueB
 *��v=*
dtype0*
_output_shapes
: 
�
 truncated_normal/TruncatedNormalTruncatedNormaltruncated_normal/shape*
dtype0*&
_output_shapes
:`*
T0
�
truncated_normal/mulMul truncated_normal/TruncatedNormaltruncated_normal/stddev*
T0*&
_output_shapes
:`
u
truncated_normalAddtruncated_normal/multruncated_normal/mean*
T0*&
_output_shapes
:`
L
mul_1/yConst*
_output_shapes
: *
valueB
 *  �?*
dtype0
X
mul_1Multruncated_normalmul_1/y*&
_output_shapes
:`*
T0
g
conv1/w
VariableV2*
shape:`*
dtype0*&
_output_shapes
:`
u
conv1/w/AssignAssignconv1/wmul_1*
T0*
_class
loc:@conv1/w*&
_output_shapes
:`
n
conv1/w/readIdentityconv1/w*
T0*
_class
loc:@conv1/w*&
_output_shapes
:`
�
Conv2DConv2D	Reshape_5conv1/w/read*
T0*
strides
*
paddingSAME*/
_output_shapes
:���������		`
i
truncated_normal_1/shapeConst*
valueB"   `   *
dtype0*
_output_shapes
:
\
truncated_normal_1/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
^
truncated_normal_1/stddevConst*
_output_shapes
: *
valueB
 *wֈ>*
dtype0
�
"truncated_normal_1/TruncatedNormalTruncatedNormaltruncated_normal_1/shape*
dtype0*
_output_shapes

:`*
T0
�
truncated_normal_1/mulMul"truncated_normal_1/TruncatedNormaltruncated_normal_1/stddev*
_output_shapes

:`*
T0
s
truncated_normal_1Addtruncated_normal_1/multruncated_normal_1/mean*
T0*
_output_shapes

:`
L
mul_2/yConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
R
mul_2Multruncated_normal_1mul_2/y*
_output_shapes

:`*
T0
W
ginputw
VariableV2*
dtype0*
_output_shapes

:`*
shape
:`
m
ginputw/AssignAssignginputwmul_2*
T0*
_class
loc:@ginputw*
_output_shapes

:`
f
ginputw/readIdentityginputw*
_output_shapes

:`*
T0*
_class
loc:@ginputw
Z
Tensordot_1/axesConst*
dtype0*
_output_shapes
:*
valueB:
Z
Tensordot_1/freeConst*
dtype0*
_output_shapes
:*
valueB: 
D
Tensordot_1/ShapeShapemul*
_output_shapes
:*
T0
[
Tensordot_1/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
Tensordot_1/GatherV2GatherV2Tensordot_1/ShapeTensordot_1/freeTensordot_1/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
]
Tensordot_1/GatherV2_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 
�
Tensordot_1/GatherV2_1GatherV2Tensordot_1/ShapeTensordot_1/axesTensordot_1/GatherV2_1/axis*
Tindices0*
Tparams0*
_output_shapes
:*
Taxis0
[
Tensordot_1/ConstConst*
valueB: *
dtype0*
_output_shapes
:
b
Tensordot_1/ProdProdTensordot_1/GatherV2Tensordot_1/Const*
T0*
_output_shapes
: 
]
Tensordot_1/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
h
Tensordot_1/Prod_1ProdTensordot_1/GatherV2_1Tensordot_1/Const_1*
T0*
_output_shapes
: 
Y
Tensordot_1/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
Tensordot_1/concatConcatV2Tensordot_1/freeTensordot_1/axesTensordot_1/concat/axis*
T0*
N*
_output_shapes
:
m
Tensordot_1/stackPackTensordot_1/ProdTensordot_1/Prod_1*
T0*
N*
_output_shapes
:
m
Tensordot_1/transpose	TransposemulTensordot_1/concat*
T0*'
_output_shapes
:���������
�
Tensordot_1/ReshapeReshapeTensordot_1/transposeTensordot_1/stack*
T0*0
_output_shapes
:������������������
m
Tensordot_1/transpose_1/permConst*
valueB"       *
dtype0*
_output_shapes
:
y
Tensordot_1/transpose_1	Transposeginputw/readTensordot_1/transpose_1/perm*
T0*
_output_shapes

:`
l
Tensordot_1/Reshape_1/shapeConst*
valueB"   `   *
dtype0*
_output_shapes
:

Tensordot_1/Reshape_1ReshapeTensordot_1/transpose_1Tensordot_1/Reshape_1/shape*
_output_shapes

:`*
T0
z
Tensordot_1/MatMulMatMulTensordot_1/ReshapeTensordot_1/Reshape_1*'
_output_shapes
:���������`*
T0
]
Tensordot_1/Const_2Const*
valueB:`*
dtype0*
_output_shapes
:
[
Tensordot_1/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
Tensordot_1/concat_1ConcatV2Tensordot_1/GatherV2Tensordot_1/Const_2Tensordot_1/concat_1/axis*
_output_shapes
:*
T0*
N
r
Tensordot_1ReshapeTensordot_1/MatMulTensordot_1/concat_1*
T0*'
_output_shapes
:���������`
h
Reshape_6/shapeConst*%
valueB"����      `   *
dtype0*
_output_shapes
:
l
	Reshape_6ReshapeTensordot_1Reshape_6/shape*/
_output_shapes
:���������`*
T0
Y
add_1AddConv2D	Reshape_6*
T0*/
_output_shapes
:���������		`
T
zeros_1Const*
_output_shapes
:`*
valueB`*    *
dtype0
`
rconv1/norm1/moving_mean
VariableV2*
_output_shapes
:`*
shape:`*
dtype0
�
rconv1/norm1/moving_mean/AssignAssignrconv1/norm1/moving_meanzeros_1*
_output_shapes
:`*
T0*+
_class!
loc:@rconv1/norm1/moving_mean
�
rconv1/norm1/moving_mean/readIdentityrconv1/norm1/moving_mean*
_output_shapes
:`*
T0*+
_class!
loc:@rconv1/norm1/moving_mean
Q
onesConst*
valueB`*  �?*
dtype0*
_output_shapes
:`
d
rconv1/norm1/moving_variance
VariableV2*
dtype0*
_output_shapes
:`*
shape:`
�
#rconv1/norm1/moving_variance/AssignAssignrconv1/norm1/moving_varianceones*
_output_shapes
:`*
T0*/
_class%
#!loc:@rconv1/norm1/moving_variance
�
!rconv1/norm1/moving_variance/readIdentityrconv1/norm1/moving_variance*
_output_shapes
:`*
T0*/
_class%
#!loc:@rconv1/norm1/moving_variance
T
zeros_2Const*
valueB`*    *
dtype0*
_output_shapes
:`
Y
rconv1/norm1/beta
VariableV2*
dtype0*
_output_shapes
:`*
shape:`
�
rconv1/norm1/beta/AssignAssignrconv1/norm1/betazeros_2*
T0*$
_class
loc:@rconv1/norm1/beta*
_output_shapes
:`
�
rconv1/norm1/beta/readIdentityrconv1/norm1/beta*
T0*$
_class
loc:@rconv1/norm1/beta*
_output_shapes
:`
^
mul_3Muladd_1strided_slice_5*
T0*/
_output_shapes
:���������		`
l
Sum_2/reduction_indicesConst*!
valueB"          *
dtype0*
_output_shapes
:
Q
Sum_2Summul_3Sum_2/reduction_indices*
T0*
_output_shapes
:`
C
truedivRealDivSum_2Sum*
_output_shapes
:`*
T0
T
subSubadd_1truediv*
T0*/
_output_shapes
:���������		`
\
mul_4Mulsubstrided_slice_5*/
_output_shapes
:���������		`*
T0
Q
SquareSquaremul_4*
T0*/
_output_shapes
:���������		`
l
Sum_3/reduction_indicesConst*!
valueB"          *
dtype0*
_output_shapes
:
R
Sum_3SumSquareSum_3/reduction_indices*
_output_shapes
:`*
T0
E
	truediv_1RealDivSum_3Sum*
T0*
_output_shapes
:`
�
AssignMovingAvg/decayConst*
valueB
 *o;*+
_class!
loc:@rconv1/norm1/moving_mean*
dtype0*
_output_shapes
: 
�
.AssignMovingAvg/rconv1/norm1/moving_mean/zerosConst*
valueB`*    *+
_class!
loc:@rconv1/norm1/moving_mean*
dtype0*
_output_shapes
:`
�
rconv1/norm1/moving_mean/biased
VariableV2*
shape:`*
dtype0*
_output_shapes
:`*+
_class!
loc:@rconv1/norm1/moving_mean
�
&rconv1/norm1/moving_mean/biased/AssignAssignrconv1/norm1/moving_mean/biased.AssignMovingAvg/rconv1/norm1/moving_mean/zeros*
T0*+
_class!
loc:@rconv1/norm1/moving_mean*
_output_shapes
:`
�
$rconv1/norm1/moving_mean/biased/readIdentityrconv1/norm1/moving_mean/biased*
T0*+
_class!
loc:@rconv1/norm1/moving_mean*
_output_shapes
:`
�
5rconv1/norm1/moving_mean/local_step/Initializer/zerosConst*
valueB
 *    *+
_class!
loc:@rconv1/norm1/moving_mean*
dtype0*
_output_shapes
: 
�
#rconv1/norm1/moving_mean/local_step
VariableV2*
shape: *
dtype0*
_output_shapes
: *+
_class!
loc:@rconv1/norm1/moving_mean
�
*rconv1/norm1/moving_mean/local_step/AssignAssign#rconv1/norm1/moving_mean/local_step5rconv1/norm1/moving_mean/local_step/Initializer/zeros*
T0*+
_class!
loc:@rconv1/norm1/moving_mean*
_output_shapes
: 
�
(rconv1/norm1/moving_mean/local_step/readIdentity#rconv1/norm1/moving_mean/local_step*
T0*+
_class!
loc:@rconv1/norm1/moving_mean*
_output_shapes
: 
�
,AssignMovingAvg/rconv1/norm1/moving_mean/subSub$rconv1/norm1/moving_mean/biased/readtruediv*
_output_shapes
:`*
T0*+
_class!
loc:@rconv1/norm1/moving_mean
�
,AssignMovingAvg/rconv1/norm1/moving_mean/mulMul,AssignMovingAvg/rconv1/norm1/moving_mean/subAssignMovingAvg/decay*
T0*+
_class!
loc:@rconv1/norm1/moving_mean*
_output_shapes
:`
�
AAssignMovingAvg/rconv1/norm1/moving_mean/rconv1/norm1/moving_mean	AssignSubrconv1/norm1/moving_mean/biased,AssignMovingAvg/rconv1/norm1/moving_mean/mul*
T0*+
_class!
loc:@rconv1/norm1/moving_mean*
_output_shapes
:`
�
8AssignMovingAvg/rconv1/norm1/moving_mean/AssignAdd/valueConst*
valueB
 *  �?*+
_class!
loc:@rconv1/norm1/moving_mean*
dtype0*
_output_shapes
: 
�
2AssignMovingAvg/rconv1/norm1/moving_mean/AssignAdd	AssignAdd#rconv1/norm1/moving_mean/local_step8AssignMovingAvg/rconv1/norm1/moving_mean/AssignAdd/value*
T0*+
_class!
loc:@rconv1/norm1/moving_mean*
_output_shapes
: 
�
-AssignMovingAvg/rconv1/norm1/moving_mean/readIdentityrconv1/norm1/moving_mean/biased3^AssignMovingAvg/rconv1/norm1/moving_mean/AssignAddB^AssignMovingAvg/rconv1/norm1/moving_mean/rconv1/norm1/moving_mean*
_output_shapes
:`*
T0*+
_class!
loc:@rconv1/norm1/moving_mean
�
0AssignMovingAvg/rconv1/norm1/moving_mean/sub_1/xConst3^AssignMovingAvg/rconv1/norm1/moving_mean/AssignAddB^AssignMovingAvg/rconv1/norm1/moving_mean/rconv1/norm1/moving_mean*
dtype0*
_output_shapes
: *
valueB
 *  �?*+
_class!
loc:@rconv1/norm1/moving_mean
�
.AssignMovingAvg/rconv1/norm1/moving_mean/sub_1Sub0AssignMovingAvg/rconv1/norm1/moving_mean/sub_1/xAssignMovingAvg/decay*
T0*+
_class!
loc:@rconv1/norm1/moving_mean*
_output_shapes
: 
�
/AssignMovingAvg/rconv1/norm1/moving_mean/read_1Identity#rconv1/norm1/moving_mean/local_step3^AssignMovingAvg/rconv1/norm1/moving_mean/AssignAddB^AssignMovingAvg/rconv1/norm1/moving_mean/rconv1/norm1/moving_mean*
T0*+
_class!
loc:@rconv1/norm1/moving_mean*
_output_shapes
: 
�
,AssignMovingAvg/rconv1/norm1/moving_mean/PowPow.AssignMovingAvg/rconv1/norm1/moving_mean/sub_1/AssignMovingAvg/rconv1/norm1/moving_mean/read_1*
T0*+
_class!
loc:@rconv1/norm1/moving_mean*
_output_shapes
: 
�
0AssignMovingAvg/rconv1/norm1/moving_mean/sub_2/xConst3^AssignMovingAvg/rconv1/norm1/moving_mean/AssignAddB^AssignMovingAvg/rconv1/norm1/moving_mean/rconv1/norm1/moving_mean*
valueB
 *  �?*+
_class!
loc:@rconv1/norm1/moving_mean*
dtype0*
_output_shapes
: 
�
.AssignMovingAvg/rconv1/norm1/moving_mean/sub_2Sub0AssignMovingAvg/rconv1/norm1/moving_mean/sub_2/x,AssignMovingAvg/rconv1/norm1/moving_mean/Pow*
T0*+
_class!
loc:@rconv1/norm1/moving_mean*
_output_shapes
: 
�
0AssignMovingAvg/rconv1/norm1/moving_mean/truedivRealDiv-AssignMovingAvg/rconv1/norm1/moving_mean/read.AssignMovingAvg/rconv1/norm1/moving_mean/sub_2*
T0*+
_class!
loc:@rconv1/norm1/moving_mean*
_output_shapes
:`
�
.AssignMovingAvg/rconv1/norm1/moving_mean/sub_3Subrconv1/norm1/moving_mean/read0AssignMovingAvg/rconv1/norm1/moving_mean/truediv*+
_class!
loc:@rconv1/norm1/moving_mean*
_output_shapes
:`*
T0
�
AssignMovingAvg	AssignSubrconv1/norm1/moving_mean.AssignMovingAvg/rconv1/norm1/moving_mean/sub_3*
T0*+
_class!
loc:@rconv1/norm1/moving_mean*
_output_shapes
:`
�
AssignMovingAvg_1/decayConst*
valueB
 *o;*/
_class%
#!loc:@rconv1/norm1/moving_variance*
dtype0*
_output_shapes
: 
�
4AssignMovingAvg_1/rconv1/norm1/moving_variance/zerosConst*
_output_shapes
:`*
valueB`*    */
_class%
#!loc:@rconv1/norm1/moving_variance*
dtype0
�
#rconv1/norm1/moving_variance/biased
VariableV2*/
_class%
#!loc:@rconv1/norm1/moving_variance*
shape:`*
dtype0*
_output_shapes
:`
�
*rconv1/norm1/moving_variance/biased/AssignAssign#rconv1/norm1/moving_variance/biased4AssignMovingAvg_1/rconv1/norm1/moving_variance/zeros*
T0*/
_class%
#!loc:@rconv1/norm1/moving_variance*
_output_shapes
:`
�
(rconv1/norm1/moving_variance/biased/readIdentity#rconv1/norm1/moving_variance/biased*
T0*/
_class%
#!loc:@rconv1/norm1/moving_variance*
_output_shapes
:`
�
9rconv1/norm1/moving_variance/local_step/Initializer/zerosConst*
valueB
 *    */
_class%
#!loc:@rconv1/norm1/moving_variance*
dtype0*
_output_shapes
: 
�
'rconv1/norm1/moving_variance/local_step
VariableV2*/
_class%
#!loc:@rconv1/norm1/moving_variance*
shape: *
dtype0*
_output_shapes
: 
�
.rconv1/norm1/moving_variance/local_step/AssignAssign'rconv1/norm1/moving_variance/local_step9rconv1/norm1/moving_variance/local_step/Initializer/zeros*
T0*/
_class%
#!loc:@rconv1/norm1/moving_variance*
_output_shapes
: 
�
,rconv1/norm1/moving_variance/local_step/readIdentity'rconv1/norm1/moving_variance/local_step*
_output_shapes
: *
T0*/
_class%
#!loc:@rconv1/norm1/moving_variance
�
2AssignMovingAvg_1/rconv1/norm1/moving_variance/subSub(rconv1/norm1/moving_variance/biased/read	truediv_1*
T0*/
_class%
#!loc:@rconv1/norm1/moving_variance*
_output_shapes
:`
�
2AssignMovingAvg_1/rconv1/norm1/moving_variance/mulMul2AssignMovingAvg_1/rconv1/norm1/moving_variance/subAssignMovingAvg_1/decay*/
_class%
#!loc:@rconv1/norm1/moving_variance*
_output_shapes
:`*
T0
�
KAssignMovingAvg_1/rconv1/norm1/moving_variance/rconv1/norm1/moving_variance	AssignSub#rconv1/norm1/moving_variance/biased2AssignMovingAvg_1/rconv1/norm1/moving_variance/mul*
T0*/
_class%
#!loc:@rconv1/norm1/moving_variance*
_output_shapes
:`
�
>AssignMovingAvg_1/rconv1/norm1/moving_variance/AssignAdd/valueConst*
valueB
 *  �?*/
_class%
#!loc:@rconv1/norm1/moving_variance*
dtype0*
_output_shapes
: 
�
8AssignMovingAvg_1/rconv1/norm1/moving_variance/AssignAdd	AssignAdd'rconv1/norm1/moving_variance/local_step>AssignMovingAvg_1/rconv1/norm1/moving_variance/AssignAdd/value*
T0*/
_class%
#!loc:@rconv1/norm1/moving_variance*
_output_shapes
: 
�
3AssignMovingAvg_1/rconv1/norm1/moving_variance/readIdentity#rconv1/norm1/moving_variance/biased9^AssignMovingAvg_1/rconv1/norm1/moving_variance/AssignAddL^AssignMovingAvg_1/rconv1/norm1/moving_variance/rconv1/norm1/moving_variance*/
_class%
#!loc:@rconv1/norm1/moving_variance*
_output_shapes
:`*
T0
�
6AssignMovingAvg_1/rconv1/norm1/moving_variance/sub_1/xConst9^AssignMovingAvg_1/rconv1/norm1/moving_variance/AssignAddL^AssignMovingAvg_1/rconv1/norm1/moving_variance/rconv1/norm1/moving_variance*
_output_shapes
: *
valueB
 *  �?*/
_class%
#!loc:@rconv1/norm1/moving_variance*
dtype0
�
4AssignMovingAvg_1/rconv1/norm1/moving_variance/sub_1Sub6AssignMovingAvg_1/rconv1/norm1/moving_variance/sub_1/xAssignMovingAvg_1/decay*/
_class%
#!loc:@rconv1/norm1/moving_variance*
_output_shapes
: *
T0
�
5AssignMovingAvg_1/rconv1/norm1/moving_variance/read_1Identity'rconv1/norm1/moving_variance/local_step9^AssignMovingAvg_1/rconv1/norm1/moving_variance/AssignAddL^AssignMovingAvg_1/rconv1/norm1/moving_variance/rconv1/norm1/moving_variance*
T0*/
_class%
#!loc:@rconv1/norm1/moving_variance*
_output_shapes
: 
�
2AssignMovingAvg_1/rconv1/norm1/moving_variance/PowPow4AssignMovingAvg_1/rconv1/norm1/moving_variance/sub_15AssignMovingAvg_1/rconv1/norm1/moving_variance/read_1*
T0*/
_class%
#!loc:@rconv1/norm1/moving_variance*
_output_shapes
: 
�
6AssignMovingAvg_1/rconv1/norm1/moving_variance/sub_2/xConst9^AssignMovingAvg_1/rconv1/norm1/moving_variance/AssignAddL^AssignMovingAvg_1/rconv1/norm1/moving_variance/rconv1/norm1/moving_variance*
valueB
 *  �?*/
_class%
#!loc:@rconv1/norm1/moving_variance*
dtype0*
_output_shapes
: 
�
4AssignMovingAvg_1/rconv1/norm1/moving_variance/sub_2Sub6AssignMovingAvg_1/rconv1/norm1/moving_variance/sub_2/x2AssignMovingAvg_1/rconv1/norm1/moving_variance/Pow*
T0*/
_class%
#!loc:@rconv1/norm1/moving_variance*
_output_shapes
: 
�
6AssignMovingAvg_1/rconv1/norm1/moving_variance/truedivRealDiv3AssignMovingAvg_1/rconv1/norm1/moving_variance/read4AssignMovingAvg_1/rconv1/norm1/moving_variance/sub_2*
_output_shapes
:`*
T0*/
_class%
#!loc:@rconv1/norm1/moving_variance
�
4AssignMovingAvg_1/rconv1/norm1/moving_variance/sub_3Sub!rconv1/norm1/moving_variance/read6AssignMovingAvg_1/rconv1/norm1/moving_variance/truediv*
_output_shapes
:`*
T0*/
_class%
#!loc:@rconv1/norm1/moving_variance
�
AssignMovingAvg_1	AssignSubrconv1/norm1/moving_variance4AssignMovingAvg_1/rconv1/norm1/moving_variance/sub_3*
T0*/
_class%
#!loc:@rconv1/norm1/moving_variance*
_output_shapes
:`
L
cond_3/SwitchSwitchConst_2Const_2*
_output_shapes
: : *
T0

M
cond_3/switch_tIdentitycond_3/Switch:1*
_output_shapes
: *
T0

K
cond_3/switch_fIdentitycond_3/Switch*
T0
*
_output_shapes
: 
D
cond_3/pred_idIdentityConst_2*
T0
*
_output_shapes
: 
y
cond_3/Switch_1Switchtruedivcond_3/pred_id*
T0*
_class
loc:@truediv* 
_output_shapes
:`:`
}
cond_3/Switch_2Switch	truediv_1cond_3/pred_id*
_class
loc:@truediv_1* 
_output_shapes
:`:`*
T0
�
cond_3/Switch_3Switchrconv1/norm1/moving_mean/readcond_3/pred_id*+
_class!
loc:@rconv1/norm1/moving_mean* 
_output_shapes
:`:`*
T0
�
cond_3/Switch_4Switch!rconv1/norm1/moving_variance/readcond_3/pred_id* 
_output_shapes
:`:`*
T0*/
_class%
#!loc:@rconv1/norm1/moving_variance
i
cond_3/MergeMergecond_3/Switch_3cond_3/Switch_1:1*
N*
_output_shapes

:`: *
T0
k
cond_3/Merge_1Mergecond_3/Switch_4cond_3/Switch_2:1*
T0*
N*
_output_shapes

:`: 
T
batchnorm/add/yConst*
valueB
 *o�:*
dtype0*
_output_shapes
: 
Z
batchnorm/addAddcond_3/Merge_1batchnorm/add/y*
_output_shapes
:`*
T0
L
batchnorm/RsqrtRsqrtbatchnorm/add*
_output_shapes
:`*
T0
f
batchnorm/mulMuladd_1batchnorm/Rsqrt*
T0*/
_output_shapes
:���������		`
Z
batchnorm/mul_1Mulcond_3/Mergebatchnorm/Rsqrt*
_output_shapes
:`*
T0
b
batchnorm/subSubrconv1/norm1/beta/readbatchnorm/mul_1*
_output_shapes
:`*
T0
n
batchnorm/add_1Addbatchnorm/mulbatchnorm/sub*/
_output_shapes
:���������		`*
T0
h
mul_5Mulbatchnorm/add_1strided_slice_5*/
_output_shapes
:���������		`*
T0
M
ReluRelumul_5*
T0*/
_output_shapes
:���������		`
q
truncated_normal_2/shapeConst*%
valueB"      `   `   *
dtype0*
_output_shapes
:
\
truncated_normal_2/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
^
truncated_normal_2/stddevConst*
valueB
 *�E=*
dtype0*
_output_shapes
: 
�
"truncated_normal_2/TruncatedNormalTruncatedNormaltruncated_normal_2/shape*
T0*
dtype0*&
_output_shapes
:``
�
truncated_normal_2/mulMul"truncated_normal_2/TruncatedNormaltruncated_normal_2/stddev*&
_output_shapes
:``*
T0
{
truncated_normal_2Addtruncated_normal_2/multruncated_normal_2/mean*&
_output_shapes
:``*
T0
L
mul_6/yConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
Z
mul_6Multruncated_normal_2mul_6/y*
T0*&
_output_shapes
:``
i
	rconv1/w1
VariableV2*
dtype0*&
_output_shapes
:``*
shape:``
{
rconv1/w1/AssignAssign	rconv1/w1mul_6*
T0*
_class
loc:@rconv1/w1*&
_output_shapes
:``
t
rconv1/w1/readIdentity	rconv1/w1*&
_output_shapes
:``*
T0*
_class
loc:@rconv1/w1
�
Conv2D_1Conv2DRelurconv1/w1/read*
T0*
strides
*
paddingSAME*/
_output_shapes
:���������		`
T
zeros_3Const*
valueB`*    *
dtype0*
_output_shapes
:`
`
rconv1/norm2/moving_mean
VariableV2*
shape:`*
dtype0*
_output_shapes
:`
�
rconv1/norm2/moving_mean/AssignAssignrconv1/norm2/moving_meanzeros_3*
T0*+
_class!
loc:@rconv1/norm2/moving_mean*
_output_shapes
:`
�
rconv1/norm2/moving_mean/readIdentityrconv1/norm2/moving_mean*
T0*+
_class!
loc:@rconv1/norm2/moving_mean*
_output_shapes
:`
S
ones_1Const*
valueB`*  �?*
dtype0*
_output_shapes
:`
d
rconv1/norm2/moving_variance
VariableV2*
dtype0*
_output_shapes
:`*
shape:`
�
#rconv1/norm2/moving_variance/AssignAssignrconv1/norm2/moving_varianceones_1*
T0*/
_class%
#!loc:@rconv1/norm2/moving_variance*
_output_shapes
:`
�
!rconv1/norm2/moving_variance/readIdentityrconv1/norm2/moving_variance*
T0*/
_class%
#!loc:@rconv1/norm2/moving_variance*
_output_shapes
:`
T
zeros_4Const*
valueB`*    *
dtype0*
_output_shapes
:`
Y
rconv1/norm2/beta
VariableV2*
_output_shapes
:`*
shape:`*
dtype0
�
rconv1/norm2/beta/AssignAssignrconv1/norm2/betazeros_4*$
_class
loc:@rconv1/norm2/beta*
_output_shapes
:`*
T0
�
rconv1/norm2/beta/readIdentityrconv1/norm2/beta*
T0*$
_class
loc:@rconv1/norm2/beta*
_output_shapes
:`
a
mul_7MulConv2D_1strided_slice_5*
T0*/
_output_shapes
:���������		`
l
Sum_4/reduction_indicesConst*
dtype0*
_output_shapes
:*!
valueB"          
Q
Sum_4Summul_7Sum_4/reduction_indices*
_output_shapes
:`*
T0
E
	truediv_2RealDivSum_4Sum*
T0*
_output_shapes
:`
[
sub_1SubConv2D_1	truediv_2*/
_output_shapes
:���������		`*
T0
^
mul_8Mulsub_1strided_slice_5*/
_output_shapes
:���������		`*
T0
S
Square_1Squaremul_8*
T0*/
_output_shapes
:���������		`
l
Sum_5/reduction_indicesConst*
_output_shapes
:*!
valueB"          *
dtype0
T
Sum_5SumSquare_1Sum_5/reduction_indices*
T0*
_output_shapes
:`
E
	truediv_3RealDivSum_5Sum*
T0*
_output_shapes
:`
�
AssignMovingAvg_2/decayConst*
valueB
 *o;*+
_class!
loc:@rconv1/norm2/moving_mean*
dtype0*
_output_shapes
: 
�
0AssignMovingAvg_2/rconv1/norm2/moving_mean/zerosConst*
valueB`*    *+
_class!
loc:@rconv1/norm2/moving_mean*
dtype0*
_output_shapes
:`
�
rconv1/norm2/moving_mean/biased
VariableV2*
shape:`*
dtype0*
_output_shapes
:`*+
_class!
loc:@rconv1/norm2/moving_mean
�
&rconv1/norm2/moving_mean/biased/AssignAssignrconv1/norm2/moving_mean/biased0AssignMovingAvg_2/rconv1/norm2/moving_mean/zeros*
T0*+
_class!
loc:@rconv1/norm2/moving_mean*
_output_shapes
:`
�
$rconv1/norm2/moving_mean/biased/readIdentityrconv1/norm2/moving_mean/biased*
T0*+
_class!
loc:@rconv1/norm2/moving_mean*
_output_shapes
:`
�
5rconv1/norm2/moving_mean/local_step/Initializer/zerosConst*
valueB
 *    *+
_class!
loc:@rconv1/norm2/moving_mean*
dtype0*
_output_shapes
: 
�
#rconv1/norm2/moving_mean/local_step
VariableV2*+
_class!
loc:@rconv1/norm2/moving_mean*
shape: *
dtype0*
_output_shapes
: 
�
*rconv1/norm2/moving_mean/local_step/AssignAssign#rconv1/norm2/moving_mean/local_step5rconv1/norm2/moving_mean/local_step/Initializer/zeros*
T0*+
_class!
loc:@rconv1/norm2/moving_mean*
_output_shapes
: 
�
(rconv1/norm2/moving_mean/local_step/readIdentity#rconv1/norm2/moving_mean/local_step*
T0*+
_class!
loc:@rconv1/norm2/moving_mean*
_output_shapes
: 
�
.AssignMovingAvg_2/rconv1/norm2/moving_mean/subSub$rconv1/norm2/moving_mean/biased/read	truediv_2*
T0*+
_class!
loc:@rconv1/norm2/moving_mean*
_output_shapes
:`
�
.AssignMovingAvg_2/rconv1/norm2/moving_mean/mulMul.AssignMovingAvg_2/rconv1/norm2/moving_mean/subAssignMovingAvg_2/decay*
T0*+
_class!
loc:@rconv1/norm2/moving_mean*
_output_shapes
:`
�
CAssignMovingAvg_2/rconv1/norm2/moving_mean/rconv1/norm2/moving_mean	AssignSubrconv1/norm2/moving_mean/biased.AssignMovingAvg_2/rconv1/norm2/moving_mean/mul*
T0*+
_class!
loc:@rconv1/norm2/moving_mean*
_output_shapes
:`
�
:AssignMovingAvg_2/rconv1/norm2/moving_mean/AssignAdd/valueConst*
valueB
 *  �?*+
_class!
loc:@rconv1/norm2/moving_mean*
dtype0*
_output_shapes
: 
�
4AssignMovingAvg_2/rconv1/norm2/moving_mean/AssignAdd	AssignAdd#rconv1/norm2/moving_mean/local_step:AssignMovingAvg_2/rconv1/norm2/moving_mean/AssignAdd/value*
T0*+
_class!
loc:@rconv1/norm2/moving_mean*
_output_shapes
: 
�
/AssignMovingAvg_2/rconv1/norm2/moving_mean/readIdentityrconv1/norm2/moving_mean/biased5^AssignMovingAvg_2/rconv1/norm2/moving_mean/AssignAddD^AssignMovingAvg_2/rconv1/norm2/moving_mean/rconv1/norm2/moving_mean*
T0*+
_class!
loc:@rconv1/norm2/moving_mean*
_output_shapes
:`
�
2AssignMovingAvg_2/rconv1/norm2/moving_mean/sub_1/xConst5^AssignMovingAvg_2/rconv1/norm2/moving_mean/AssignAddD^AssignMovingAvg_2/rconv1/norm2/moving_mean/rconv1/norm2/moving_mean*
valueB
 *  �?*+
_class!
loc:@rconv1/norm2/moving_mean*
dtype0*
_output_shapes
: 
�
0AssignMovingAvg_2/rconv1/norm2/moving_mean/sub_1Sub2AssignMovingAvg_2/rconv1/norm2/moving_mean/sub_1/xAssignMovingAvg_2/decay*+
_class!
loc:@rconv1/norm2/moving_mean*
_output_shapes
: *
T0
�
1AssignMovingAvg_2/rconv1/norm2/moving_mean/read_1Identity#rconv1/norm2/moving_mean/local_step5^AssignMovingAvg_2/rconv1/norm2/moving_mean/AssignAddD^AssignMovingAvg_2/rconv1/norm2/moving_mean/rconv1/norm2/moving_mean*
T0*+
_class!
loc:@rconv1/norm2/moving_mean*
_output_shapes
: 
�
.AssignMovingAvg_2/rconv1/norm2/moving_mean/PowPow0AssignMovingAvg_2/rconv1/norm2/moving_mean/sub_11AssignMovingAvg_2/rconv1/norm2/moving_mean/read_1*
_output_shapes
: *
T0*+
_class!
loc:@rconv1/norm2/moving_mean
�
2AssignMovingAvg_2/rconv1/norm2/moving_mean/sub_2/xConst5^AssignMovingAvg_2/rconv1/norm2/moving_mean/AssignAddD^AssignMovingAvg_2/rconv1/norm2/moving_mean/rconv1/norm2/moving_mean*
valueB
 *  �?*+
_class!
loc:@rconv1/norm2/moving_mean*
dtype0*
_output_shapes
: 
�
0AssignMovingAvg_2/rconv1/norm2/moving_mean/sub_2Sub2AssignMovingAvg_2/rconv1/norm2/moving_mean/sub_2/x.AssignMovingAvg_2/rconv1/norm2/moving_mean/Pow*+
_class!
loc:@rconv1/norm2/moving_mean*
_output_shapes
: *
T0
�
2AssignMovingAvg_2/rconv1/norm2/moving_mean/truedivRealDiv/AssignMovingAvg_2/rconv1/norm2/moving_mean/read0AssignMovingAvg_2/rconv1/norm2/moving_mean/sub_2*
T0*+
_class!
loc:@rconv1/norm2/moving_mean*
_output_shapes
:`
�
0AssignMovingAvg_2/rconv1/norm2/moving_mean/sub_3Subrconv1/norm2/moving_mean/read2AssignMovingAvg_2/rconv1/norm2/moving_mean/truediv*
T0*+
_class!
loc:@rconv1/norm2/moving_mean*
_output_shapes
:`
�
AssignMovingAvg_2	AssignSubrconv1/norm2/moving_mean0AssignMovingAvg_2/rconv1/norm2/moving_mean/sub_3*+
_class!
loc:@rconv1/norm2/moving_mean*
_output_shapes
:`*
T0
�
AssignMovingAvg_3/decayConst*
valueB
 *o;*/
_class%
#!loc:@rconv1/norm2/moving_variance*
dtype0*
_output_shapes
: 
�
4AssignMovingAvg_3/rconv1/norm2/moving_variance/zerosConst*
dtype0*
_output_shapes
:`*
valueB`*    */
_class%
#!loc:@rconv1/norm2/moving_variance
�
#rconv1/norm2/moving_variance/biased
VariableV2*
shape:`*
dtype0*
_output_shapes
:`*/
_class%
#!loc:@rconv1/norm2/moving_variance
�
*rconv1/norm2/moving_variance/biased/AssignAssign#rconv1/norm2/moving_variance/biased4AssignMovingAvg_3/rconv1/norm2/moving_variance/zeros*
T0*/
_class%
#!loc:@rconv1/norm2/moving_variance*
_output_shapes
:`
�
(rconv1/norm2/moving_variance/biased/readIdentity#rconv1/norm2/moving_variance/biased*
T0*/
_class%
#!loc:@rconv1/norm2/moving_variance*
_output_shapes
:`
�
9rconv1/norm2/moving_variance/local_step/Initializer/zerosConst*
_output_shapes
: *
valueB
 *    */
_class%
#!loc:@rconv1/norm2/moving_variance*
dtype0
�
'rconv1/norm2/moving_variance/local_step
VariableV2*/
_class%
#!loc:@rconv1/norm2/moving_variance*
shape: *
dtype0*
_output_shapes
: 
�
.rconv1/norm2/moving_variance/local_step/AssignAssign'rconv1/norm2/moving_variance/local_step9rconv1/norm2/moving_variance/local_step/Initializer/zeros*
_output_shapes
: *
T0*/
_class%
#!loc:@rconv1/norm2/moving_variance
�
,rconv1/norm2/moving_variance/local_step/readIdentity'rconv1/norm2/moving_variance/local_step*
T0*/
_class%
#!loc:@rconv1/norm2/moving_variance*
_output_shapes
: 
�
2AssignMovingAvg_3/rconv1/norm2/moving_variance/subSub(rconv1/norm2/moving_variance/biased/read	truediv_3*
_output_shapes
:`*
T0*/
_class%
#!loc:@rconv1/norm2/moving_variance
�
2AssignMovingAvg_3/rconv1/norm2/moving_variance/mulMul2AssignMovingAvg_3/rconv1/norm2/moving_variance/subAssignMovingAvg_3/decay*
_output_shapes
:`*
T0*/
_class%
#!loc:@rconv1/norm2/moving_variance
�
KAssignMovingAvg_3/rconv1/norm2/moving_variance/rconv1/norm2/moving_variance	AssignSub#rconv1/norm2/moving_variance/biased2AssignMovingAvg_3/rconv1/norm2/moving_variance/mul*
_output_shapes
:`*
T0*/
_class%
#!loc:@rconv1/norm2/moving_variance
�
>AssignMovingAvg_3/rconv1/norm2/moving_variance/AssignAdd/valueConst*
dtype0*
_output_shapes
: *
valueB
 *  �?*/
_class%
#!loc:@rconv1/norm2/moving_variance
�
8AssignMovingAvg_3/rconv1/norm2/moving_variance/AssignAdd	AssignAdd'rconv1/norm2/moving_variance/local_step>AssignMovingAvg_3/rconv1/norm2/moving_variance/AssignAdd/value*
_output_shapes
: *
T0*/
_class%
#!loc:@rconv1/norm2/moving_variance
�
3AssignMovingAvg_3/rconv1/norm2/moving_variance/readIdentity#rconv1/norm2/moving_variance/biased9^AssignMovingAvg_3/rconv1/norm2/moving_variance/AssignAddL^AssignMovingAvg_3/rconv1/norm2/moving_variance/rconv1/norm2/moving_variance*
_output_shapes
:`*
T0*/
_class%
#!loc:@rconv1/norm2/moving_variance
�
6AssignMovingAvg_3/rconv1/norm2/moving_variance/sub_1/xConst9^AssignMovingAvg_3/rconv1/norm2/moving_variance/AssignAddL^AssignMovingAvg_3/rconv1/norm2/moving_variance/rconv1/norm2/moving_variance*
valueB
 *  �?*/
_class%
#!loc:@rconv1/norm2/moving_variance*
dtype0*
_output_shapes
: 
�
4AssignMovingAvg_3/rconv1/norm2/moving_variance/sub_1Sub6AssignMovingAvg_3/rconv1/norm2/moving_variance/sub_1/xAssignMovingAvg_3/decay*
T0*/
_class%
#!loc:@rconv1/norm2/moving_variance*
_output_shapes
: 
�
5AssignMovingAvg_3/rconv1/norm2/moving_variance/read_1Identity'rconv1/norm2/moving_variance/local_step9^AssignMovingAvg_3/rconv1/norm2/moving_variance/AssignAddL^AssignMovingAvg_3/rconv1/norm2/moving_variance/rconv1/norm2/moving_variance*
_output_shapes
: *
T0*/
_class%
#!loc:@rconv1/norm2/moving_variance
�
2AssignMovingAvg_3/rconv1/norm2/moving_variance/PowPow4AssignMovingAvg_3/rconv1/norm2/moving_variance/sub_15AssignMovingAvg_3/rconv1/norm2/moving_variance/read_1*
_output_shapes
: *
T0*/
_class%
#!loc:@rconv1/norm2/moving_variance
�
6AssignMovingAvg_3/rconv1/norm2/moving_variance/sub_2/xConst9^AssignMovingAvg_3/rconv1/norm2/moving_variance/AssignAddL^AssignMovingAvg_3/rconv1/norm2/moving_variance/rconv1/norm2/moving_variance*
valueB
 *  �?*/
_class%
#!loc:@rconv1/norm2/moving_variance*
dtype0*
_output_shapes
: 
�
4AssignMovingAvg_3/rconv1/norm2/moving_variance/sub_2Sub6AssignMovingAvg_3/rconv1/norm2/moving_variance/sub_2/x2AssignMovingAvg_3/rconv1/norm2/moving_variance/Pow*
T0*/
_class%
#!loc:@rconv1/norm2/moving_variance*
_output_shapes
: 
�
6AssignMovingAvg_3/rconv1/norm2/moving_variance/truedivRealDiv3AssignMovingAvg_3/rconv1/norm2/moving_variance/read4AssignMovingAvg_3/rconv1/norm2/moving_variance/sub_2*/
_class%
#!loc:@rconv1/norm2/moving_variance*
_output_shapes
:`*
T0
�
4AssignMovingAvg_3/rconv1/norm2/moving_variance/sub_3Sub!rconv1/norm2/moving_variance/read6AssignMovingAvg_3/rconv1/norm2/moving_variance/truediv*/
_class%
#!loc:@rconv1/norm2/moving_variance*
_output_shapes
:`*
T0
�
AssignMovingAvg_3	AssignSubrconv1/norm2/moving_variance4AssignMovingAvg_3/rconv1/norm2/moving_variance/sub_3*
T0*/
_class%
#!loc:@rconv1/norm2/moving_variance*
_output_shapes
:`
L
cond_4/SwitchSwitchConst_2Const_2*
_output_shapes
: : *
T0

M
cond_4/switch_tIdentitycond_4/Switch:1*
T0
*
_output_shapes
: 
K
cond_4/switch_fIdentitycond_4/Switch*
T0
*
_output_shapes
: 
D
cond_4/pred_idIdentityConst_2*
T0
*
_output_shapes
: 
}
cond_4/Switch_1Switch	truediv_2cond_4/pred_id* 
_output_shapes
:`:`*
T0*
_class
loc:@truediv_2
}
cond_4/Switch_2Switch	truediv_3cond_4/pred_id* 
_output_shapes
:`:`*
T0*
_class
loc:@truediv_3
�
cond_4/Switch_3Switchrconv1/norm2/moving_mean/readcond_4/pred_id*
T0*+
_class!
loc:@rconv1/norm2/moving_mean* 
_output_shapes
:`:`
�
cond_4/Switch_4Switch!rconv1/norm2/moving_variance/readcond_4/pred_id*
T0*/
_class%
#!loc:@rconv1/norm2/moving_variance* 
_output_shapes
:`:`
i
cond_4/MergeMergecond_4/Switch_3cond_4/Switch_1:1*
T0*
N*
_output_shapes

:`: 
k
cond_4/Merge_1Mergecond_4/Switch_4cond_4/Switch_2:1*
T0*
N*
_output_shapes

:`: 
V
batchnorm_1/add/yConst*
_output_shapes
: *
valueB
 *o�:*
dtype0
^
batchnorm_1/addAddcond_4/Merge_1batchnorm_1/add/y*
_output_shapes
:`*
T0
P
batchnorm_1/RsqrtRsqrtbatchnorm_1/add*
T0*
_output_shapes
:`
m
batchnorm_1/mulMulConv2D_1batchnorm_1/Rsqrt*
T0*/
_output_shapes
:���������		`
^
batchnorm_1/mul_1Mulcond_4/Mergebatchnorm_1/Rsqrt*
T0*
_output_shapes
:`
f
batchnorm_1/subSubrconv1/norm2/beta/readbatchnorm_1/mul_1*
T0*
_output_shapes
:`
t
batchnorm_1/add_1Addbatchnorm_1/mulbatchnorm_1/sub*
T0*/
_output_shapes
:���������		`
j
mul_9Mulbatchnorm_1/add_1strided_slice_5*
T0*/
_output_shapes
:���������		`
O
Relu_1Relumul_9*
T0*/
_output_shapes
:���������		`
q
truncated_normal_3/shapeConst*
_output_shapes
:*%
valueB"      `   `   *
dtype0
\
truncated_normal_3/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
^
truncated_normal_3/stddevConst*
valueB
 *�E=*
dtype0*
_output_shapes
: 
�
"truncated_normal_3/TruncatedNormalTruncatedNormaltruncated_normal_3/shape*
T0*
dtype0*&
_output_shapes
:``
�
truncated_normal_3/mulMul"truncated_normal_3/TruncatedNormaltruncated_normal_3/stddev*
T0*&
_output_shapes
:``
{
truncated_normal_3Addtruncated_normal_3/multruncated_normal_3/mean*&
_output_shapes
:``*
T0
M
mul_10/yConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
\
mul_10Multruncated_normal_3mul_10/y*
T0*&
_output_shapes
:``
i
	rconv1/w2
VariableV2*
shape:``*
dtype0*&
_output_shapes
:``
|
rconv1/w2/AssignAssign	rconv1/w2mul_10*
T0*
_class
loc:@rconv1/w2*&
_output_shapes
:``
t
rconv1/w2/readIdentity	rconv1/w2*
T0*
_class
loc:@rconv1/w2*&
_output_shapes
:``
�
Conv2D_2Conv2DRelu_1rconv1/w2/read*
strides
*
paddingSAME*/
_output_shapes
:���������		`*
T0
W
add_2Addadd_1Conv2D_2*
T0*/
_output_shapes
:���������		`
T
zeros_5Const*
valueB`*    *
dtype0*
_output_shapes
:`
`
rconv2/norm1/moving_mean
VariableV2*
shape:`*
dtype0*
_output_shapes
:`
�
rconv2/norm1/moving_mean/AssignAssignrconv2/norm1/moving_meanzeros_5*
_output_shapes
:`*
T0*+
_class!
loc:@rconv2/norm1/moving_mean
�
rconv2/norm1/moving_mean/readIdentityrconv2/norm1/moving_mean*
T0*+
_class!
loc:@rconv2/norm1/moving_mean*
_output_shapes
:`
S
ones_2Const*
valueB`*  �?*
dtype0*
_output_shapes
:`
d
rconv2/norm1/moving_variance
VariableV2*
dtype0*
_output_shapes
:`*
shape:`
�
#rconv2/norm1/moving_variance/AssignAssignrconv2/norm1/moving_varianceones_2*
T0*/
_class%
#!loc:@rconv2/norm1/moving_variance*
_output_shapes
:`
�
!rconv2/norm1/moving_variance/readIdentityrconv2/norm1/moving_variance*
T0*/
_class%
#!loc:@rconv2/norm1/moving_variance*
_output_shapes
:`
T
zeros_6Const*
_output_shapes
:`*
valueB`*    *
dtype0
Y
rconv2/norm1/beta
VariableV2*
_output_shapes
:`*
shape:`*
dtype0
�
rconv2/norm1/beta/AssignAssignrconv2/norm1/betazeros_6*
T0*$
_class
loc:@rconv2/norm1/beta*
_output_shapes
:`
�
rconv2/norm1/beta/readIdentityrconv2/norm1/beta*
T0*$
_class
loc:@rconv2/norm1/beta*
_output_shapes
:`
_
mul_11Muladd_2strided_slice_5*
T0*/
_output_shapes
:���������		`
l
Sum_6/reduction_indicesConst*
dtype0*
_output_shapes
:*!
valueB"          
R
Sum_6Summul_11Sum_6/reduction_indices*
_output_shapes
:`*
T0
E
	truediv_4RealDivSum_6Sum*
T0*
_output_shapes
:`
X
sub_2Subadd_2	truediv_4*/
_output_shapes
:���������		`*
T0
_
mul_12Mulsub_2strided_slice_5*/
_output_shapes
:���������		`*
T0
T
Square_2Squaremul_12*
T0*/
_output_shapes
:���������		`
l
Sum_7/reduction_indicesConst*!
valueB"          *
dtype0*
_output_shapes
:
T
Sum_7SumSquare_2Sum_7/reduction_indices*
_output_shapes
:`*
T0
E
	truediv_5RealDivSum_7Sum*
T0*
_output_shapes
:`
�
AssignMovingAvg_4/decayConst*
valueB
 *o;*+
_class!
loc:@rconv2/norm1/moving_mean*
dtype0*
_output_shapes
: 
�
0AssignMovingAvg_4/rconv2/norm1/moving_mean/zerosConst*
valueB`*    *+
_class!
loc:@rconv2/norm1/moving_mean*
dtype0*
_output_shapes
:`
�
rconv2/norm1/moving_mean/biased
VariableV2*
dtype0*
_output_shapes
:`*+
_class!
loc:@rconv2/norm1/moving_mean*
shape:`
�
&rconv2/norm1/moving_mean/biased/AssignAssignrconv2/norm1/moving_mean/biased0AssignMovingAvg_4/rconv2/norm1/moving_mean/zeros*
T0*+
_class!
loc:@rconv2/norm1/moving_mean*
_output_shapes
:`
�
$rconv2/norm1/moving_mean/biased/readIdentityrconv2/norm1/moving_mean/biased*
T0*+
_class!
loc:@rconv2/norm1/moving_mean*
_output_shapes
:`
�
5rconv2/norm1/moving_mean/local_step/Initializer/zerosConst*
valueB
 *    *+
_class!
loc:@rconv2/norm1/moving_mean*
dtype0*
_output_shapes
: 
�
#rconv2/norm1/moving_mean/local_step
VariableV2*
_output_shapes
: *+
_class!
loc:@rconv2/norm1/moving_mean*
shape: *
dtype0
�
*rconv2/norm1/moving_mean/local_step/AssignAssign#rconv2/norm1/moving_mean/local_step5rconv2/norm1/moving_mean/local_step/Initializer/zeros*
T0*+
_class!
loc:@rconv2/norm1/moving_mean*
_output_shapes
: 
�
(rconv2/norm1/moving_mean/local_step/readIdentity#rconv2/norm1/moving_mean/local_step*
T0*+
_class!
loc:@rconv2/norm1/moving_mean*
_output_shapes
: 
�
.AssignMovingAvg_4/rconv2/norm1/moving_mean/subSub$rconv2/norm1/moving_mean/biased/read	truediv_4*
T0*+
_class!
loc:@rconv2/norm1/moving_mean*
_output_shapes
:`
�
.AssignMovingAvg_4/rconv2/norm1/moving_mean/mulMul.AssignMovingAvg_4/rconv2/norm1/moving_mean/subAssignMovingAvg_4/decay*
T0*+
_class!
loc:@rconv2/norm1/moving_mean*
_output_shapes
:`
�
CAssignMovingAvg_4/rconv2/norm1/moving_mean/rconv2/norm1/moving_mean	AssignSubrconv2/norm1/moving_mean/biased.AssignMovingAvg_4/rconv2/norm1/moving_mean/mul*
T0*+
_class!
loc:@rconv2/norm1/moving_mean*
_output_shapes
:`
�
:AssignMovingAvg_4/rconv2/norm1/moving_mean/AssignAdd/valueConst*
valueB
 *  �?*+
_class!
loc:@rconv2/norm1/moving_mean*
dtype0*
_output_shapes
: 
�
4AssignMovingAvg_4/rconv2/norm1/moving_mean/AssignAdd	AssignAdd#rconv2/norm1/moving_mean/local_step:AssignMovingAvg_4/rconv2/norm1/moving_mean/AssignAdd/value*
T0*+
_class!
loc:@rconv2/norm1/moving_mean*
_output_shapes
: 
�
/AssignMovingAvg_4/rconv2/norm1/moving_mean/readIdentityrconv2/norm1/moving_mean/biased5^AssignMovingAvg_4/rconv2/norm1/moving_mean/AssignAddD^AssignMovingAvg_4/rconv2/norm1/moving_mean/rconv2/norm1/moving_mean*
T0*+
_class!
loc:@rconv2/norm1/moving_mean*
_output_shapes
:`
�
2AssignMovingAvg_4/rconv2/norm1/moving_mean/sub_1/xConst5^AssignMovingAvg_4/rconv2/norm1/moving_mean/AssignAddD^AssignMovingAvg_4/rconv2/norm1/moving_mean/rconv2/norm1/moving_mean*
valueB
 *  �?*+
_class!
loc:@rconv2/norm1/moving_mean*
dtype0*
_output_shapes
: 
�
0AssignMovingAvg_4/rconv2/norm1/moving_mean/sub_1Sub2AssignMovingAvg_4/rconv2/norm1/moving_mean/sub_1/xAssignMovingAvg_4/decay*
T0*+
_class!
loc:@rconv2/norm1/moving_mean*
_output_shapes
: 
�
1AssignMovingAvg_4/rconv2/norm1/moving_mean/read_1Identity#rconv2/norm1/moving_mean/local_step5^AssignMovingAvg_4/rconv2/norm1/moving_mean/AssignAddD^AssignMovingAvg_4/rconv2/norm1/moving_mean/rconv2/norm1/moving_mean*
T0*+
_class!
loc:@rconv2/norm1/moving_mean*
_output_shapes
: 
�
.AssignMovingAvg_4/rconv2/norm1/moving_mean/PowPow0AssignMovingAvg_4/rconv2/norm1/moving_mean/sub_11AssignMovingAvg_4/rconv2/norm1/moving_mean/read_1*
T0*+
_class!
loc:@rconv2/norm1/moving_mean*
_output_shapes
: 
�
2AssignMovingAvg_4/rconv2/norm1/moving_mean/sub_2/xConst5^AssignMovingAvg_4/rconv2/norm1/moving_mean/AssignAddD^AssignMovingAvg_4/rconv2/norm1/moving_mean/rconv2/norm1/moving_mean*
_output_shapes
: *
valueB
 *  �?*+
_class!
loc:@rconv2/norm1/moving_mean*
dtype0
�
0AssignMovingAvg_4/rconv2/norm1/moving_mean/sub_2Sub2AssignMovingAvg_4/rconv2/norm1/moving_mean/sub_2/x.AssignMovingAvg_4/rconv2/norm1/moving_mean/Pow*
_output_shapes
: *
T0*+
_class!
loc:@rconv2/norm1/moving_mean
�
2AssignMovingAvg_4/rconv2/norm1/moving_mean/truedivRealDiv/AssignMovingAvg_4/rconv2/norm1/moving_mean/read0AssignMovingAvg_4/rconv2/norm1/moving_mean/sub_2*
T0*+
_class!
loc:@rconv2/norm1/moving_mean*
_output_shapes
:`
�
0AssignMovingAvg_4/rconv2/norm1/moving_mean/sub_3Subrconv2/norm1/moving_mean/read2AssignMovingAvg_4/rconv2/norm1/moving_mean/truediv*
T0*+
_class!
loc:@rconv2/norm1/moving_mean*
_output_shapes
:`
�
AssignMovingAvg_4	AssignSubrconv2/norm1/moving_mean0AssignMovingAvg_4/rconv2/norm1/moving_mean/sub_3*
T0*+
_class!
loc:@rconv2/norm1/moving_mean*
_output_shapes
:`
�
AssignMovingAvg_5/decayConst*
dtype0*
_output_shapes
: *
valueB
 *o;*/
_class%
#!loc:@rconv2/norm1/moving_variance
�
4AssignMovingAvg_5/rconv2/norm1/moving_variance/zerosConst*
valueB`*    */
_class%
#!loc:@rconv2/norm1/moving_variance*
dtype0*
_output_shapes
:`
�
#rconv2/norm1/moving_variance/biased
VariableV2*/
_class%
#!loc:@rconv2/norm1/moving_variance*
shape:`*
dtype0*
_output_shapes
:`
�
*rconv2/norm1/moving_variance/biased/AssignAssign#rconv2/norm1/moving_variance/biased4AssignMovingAvg_5/rconv2/norm1/moving_variance/zeros*
_output_shapes
:`*
T0*/
_class%
#!loc:@rconv2/norm1/moving_variance
�
(rconv2/norm1/moving_variance/biased/readIdentity#rconv2/norm1/moving_variance/biased*
T0*/
_class%
#!loc:@rconv2/norm1/moving_variance*
_output_shapes
:`
�
9rconv2/norm1/moving_variance/local_step/Initializer/zerosConst*
valueB
 *    */
_class%
#!loc:@rconv2/norm1/moving_variance*
dtype0*
_output_shapes
: 
�
'rconv2/norm1/moving_variance/local_step
VariableV2*
dtype0*
_output_shapes
: */
_class%
#!loc:@rconv2/norm1/moving_variance*
shape: 
�
.rconv2/norm1/moving_variance/local_step/AssignAssign'rconv2/norm1/moving_variance/local_step9rconv2/norm1/moving_variance/local_step/Initializer/zeros*
T0*/
_class%
#!loc:@rconv2/norm1/moving_variance*
_output_shapes
: 
�
,rconv2/norm1/moving_variance/local_step/readIdentity'rconv2/norm1/moving_variance/local_step*
T0*/
_class%
#!loc:@rconv2/norm1/moving_variance*
_output_shapes
: 
�
2AssignMovingAvg_5/rconv2/norm1/moving_variance/subSub(rconv2/norm1/moving_variance/biased/read	truediv_5*
T0*/
_class%
#!loc:@rconv2/norm1/moving_variance*
_output_shapes
:`
�
2AssignMovingAvg_5/rconv2/norm1/moving_variance/mulMul2AssignMovingAvg_5/rconv2/norm1/moving_variance/subAssignMovingAvg_5/decay*/
_class%
#!loc:@rconv2/norm1/moving_variance*
_output_shapes
:`*
T0
�
KAssignMovingAvg_5/rconv2/norm1/moving_variance/rconv2/norm1/moving_variance	AssignSub#rconv2/norm1/moving_variance/biased2AssignMovingAvg_5/rconv2/norm1/moving_variance/mul*
_output_shapes
:`*
T0*/
_class%
#!loc:@rconv2/norm1/moving_variance
�
>AssignMovingAvg_5/rconv2/norm1/moving_variance/AssignAdd/valueConst*
valueB
 *  �?*/
_class%
#!loc:@rconv2/norm1/moving_variance*
dtype0*
_output_shapes
: 
�
8AssignMovingAvg_5/rconv2/norm1/moving_variance/AssignAdd	AssignAdd'rconv2/norm1/moving_variance/local_step>AssignMovingAvg_5/rconv2/norm1/moving_variance/AssignAdd/value*
T0*/
_class%
#!loc:@rconv2/norm1/moving_variance*
_output_shapes
: 
�
3AssignMovingAvg_5/rconv2/norm1/moving_variance/readIdentity#rconv2/norm1/moving_variance/biased9^AssignMovingAvg_5/rconv2/norm1/moving_variance/AssignAddL^AssignMovingAvg_5/rconv2/norm1/moving_variance/rconv2/norm1/moving_variance*/
_class%
#!loc:@rconv2/norm1/moving_variance*
_output_shapes
:`*
T0
�
6AssignMovingAvg_5/rconv2/norm1/moving_variance/sub_1/xConst9^AssignMovingAvg_5/rconv2/norm1/moving_variance/AssignAddL^AssignMovingAvg_5/rconv2/norm1/moving_variance/rconv2/norm1/moving_variance*
valueB
 *  �?*/
_class%
#!loc:@rconv2/norm1/moving_variance*
dtype0*
_output_shapes
: 
�
4AssignMovingAvg_5/rconv2/norm1/moving_variance/sub_1Sub6AssignMovingAvg_5/rconv2/norm1/moving_variance/sub_1/xAssignMovingAvg_5/decay*/
_class%
#!loc:@rconv2/norm1/moving_variance*
_output_shapes
: *
T0
�
5AssignMovingAvg_5/rconv2/norm1/moving_variance/read_1Identity'rconv2/norm1/moving_variance/local_step9^AssignMovingAvg_5/rconv2/norm1/moving_variance/AssignAddL^AssignMovingAvg_5/rconv2/norm1/moving_variance/rconv2/norm1/moving_variance*
T0*/
_class%
#!loc:@rconv2/norm1/moving_variance*
_output_shapes
: 
�
2AssignMovingAvg_5/rconv2/norm1/moving_variance/PowPow4AssignMovingAvg_5/rconv2/norm1/moving_variance/sub_15AssignMovingAvg_5/rconv2/norm1/moving_variance/read_1*
T0*/
_class%
#!loc:@rconv2/norm1/moving_variance*
_output_shapes
: 
�
6AssignMovingAvg_5/rconv2/norm1/moving_variance/sub_2/xConst9^AssignMovingAvg_5/rconv2/norm1/moving_variance/AssignAddL^AssignMovingAvg_5/rconv2/norm1/moving_variance/rconv2/norm1/moving_variance*
valueB
 *  �?*/
_class%
#!loc:@rconv2/norm1/moving_variance*
dtype0*
_output_shapes
: 
�
4AssignMovingAvg_5/rconv2/norm1/moving_variance/sub_2Sub6AssignMovingAvg_5/rconv2/norm1/moving_variance/sub_2/x2AssignMovingAvg_5/rconv2/norm1/moving_variance/Pow*
_output_shapes
: *
T0*/
_class%
#!loc:@rconv2/norm1/moving_variance
�
6AssignMovingAvg_5/rconv2/norm1/moving_variance/truedivRealDiv3AssignMovingAvg_5/rconv2/norm1/moving_variance/read4AssignMovingAvg_5/rconv2/norm1/moving_variance/sub_2*
T0*/
_class%
#!loc:@rconv2/norm1/moving_variance*
_output_shapes
:`
�
4AssignMovingAvg_5/rconv2/norm1/moving_variance/sub_3Sub!rconv2/norm1/moving_variance/read6AssignMovingAvg_5/rconv2/norm1/moving_variance/truediv*
T0*/
_class%
#!loc:@rconv2/norm1/moving_variance*
_output_shapes
:`
�
AssignMovingAvg_5	AssignSubrconv2/norm1/moving_variance4AssignMovingAvg_5/rconv2/norm1/moving_variance/sub_3*
T0*/
_class%
#!loc:@rconv2/norm1/moving_variance*
_output_shapes
:`
L
cond_5/SwitchSwitchConst_2Const_2*
T0
*
_output_shapes
: : 
M
cond_5/switch_tIdentitycond_5/Switch:1*
T0
*
_output_shapes
: 
K
cond_5/switch_fIdentitycond_5/Switch*
T0
*
_output_shapes
: 
D
cond_5/pred_idIdentityConst_2*
_output_shapes
: *
T0

}
cond_5/Switch_1Switch	truediv_4cond_5/pred_id*
T0*
_class
loc:@truediv_4* 
_output_shapes
:`:`
}
cond_5/Switch_2Switch	truediv_5cond_5/pred_id*
T0*
_class
loc:@truediv_5* 
_output_shapes
:`:`
�
cond_5/Switch_3Switchrconv2/norm1/moving_mean/readcond_5/pred_id*
T0*+
_class!
loc:@rconv2/norm1/moving_mean* 
_output_shapes
:`:`
�
cond_5/Switch_4Switch!rconv2/norm1/moving_variance/readcond_5/pred_id*
T0*/
_class%
#!loc:@rconv2/norm1/moving_variance* 
_output_shapes
:`:`
i
cond_5/MergeMergecond_5/Switch_3cond_5/Switch_1:1*
T0*
N*
_output_shapes

:`: 
k
cond_5/Merge_1Mergecond_5/Switch_4cond_5/Switch_2:1*
N*
_output_shapes

:`: *
T0
V
batchnorm_2/add/yConst*
_output_shapes
: *
valueB
 *o�:*
dtype0
^
batchnorm_2/addAddcond_5/Merge_1batchnorm_2/add/y*
T0*
_output_shapes
:`
P
batchnorm_2/RsqrtRsqrtbatchnorm_2/add*
T0*
_output_shapes
:`
j
batchnorm_2/mulMuladd_2batchnorm_2/Rsqrt*
T0*/
_output_shapes
:���������		`
^
batchnorm_2/mul_1Mulcond_5/Mergebatchnorm_2/Rsqrt*
T0*
_output_shapes
:`
f
batchnorm_2/subSubrconv2/norm1/beta/readbatchnorm_2/mul_1*
T0*
_output_shapes
:`
t
batchnorm_2/add_1Addbatchnorm_2/mulbatchnorm_2/sub*/
_output_shapes
:���������		`*
T0
k
mul_13Mulbatchnorm_2/add_1strided_slice_5*
T0*/
_output_shapes
:���������		`
P
Relu_2Relumul_13*/
_output_shapes
:���������		`*
T0
q
truncated_normal_4/shapeConst*%
valueB"      `   `   *
dtype0*
_output_shapes
:
\
truncated_normal_4/meanConst*
_output_shapes
: *
valueB
 *    *
dtype0
^
truncated_normal_4/stddevConst*
_output_shapes
: *
valueB
 *�E=*
dtype0
�
"truncated_normal_4/TruncatedNormalTruncatedNormaltruncated_normal_4/shape*
T0*
dtype0*&
_output_shapes
:``
�
truncated_normal_4/mulMul"truncated_normal_4/TruncatedNormaltruncated_normal_4/stddev*
T0*&
_output_shapes
:``
{
truncated_normal_4Addtruncated_normal_4/multruncated_normal_4/mean*&
_output_shapes
:``*
T0
M
mul_14/yConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
\
mul_14Multruncated_normal_4mul_14/y*&
_output_shapes
:``*
T0
i
	rconv2/w1
VariableV2*
dtype0*&
_output_shapes
:``*
shape:``
|
rconv2/w1/AssignAssign	rconv2/w1mul_14*
T0*
_class
loc:@rconv2/w1*&
_output_shapes
:``
t
rconv2/w1/readIdentity	rconv2/w1*
T0*
_class
loc:@rconv2/w1*&
_output_shapes
:``
�
Conv2D_3Conv2DRelu_2rconv2/w1/read*
paddingSAME*/
_output_shapes
:���������		`*
T0*
strides

T
zeros_7Const*
dtype0*
_output_shapes
:`*
valueB`*    
`
rconv2/norm2/moving_mean
VariableV2*
dtype0*
_output_shapes
:`*
shape:`
�
rconv2/norm2/moving_mean/AssignAssignrconv2/norm2/moving_meanzeros_7*
_output_shapes
:`*
T0*+
_class!
loc:@rconv2/norm2/moving_mean
�
rconv2/norm2/moving_mean/readIdentityrconv2/norm2/moving_mean*
_output_shapes
:`*
T0*+
_class!
loc:@rconv2/norm2/moving_mean
S
ones_3Const*
valueB`*  �?*
dtype0*
_output_shapes
:`
d
rconv2/norm2/moving_variance
VariableV2*
shape:`*
dtype0*
_output_shapes
:`
�
#rconv2/norm2/moving_variance/AssignAssignrconv2/norm2/moving_varianceones_3*
T0*/
_class%
#!loc:@rconv2/norm2/moving_variance*
_output_shapes
:`
�
!rconv2/norm2/moving_variance/readIdentityrconv2/norm2/moving_variance*
T0*/
_class%
#!loc:@rconv2/norm2/moving_variance*
_output_shapes
:`
T
zeros_8Const*
valueB`*    *
dtype0*
_output_shapes
:`
Y
rconv2/norm2/beta
VariableV2*
dtype0*
_output_shapes
:`*
shape:`
�
rconv2/norm2/beta/AssignAssignrconv2/norm2/betazeros_8*
_output_shapes
:`*
T0*$
_class
loc:@rconv2/norm2/beta
�
rconv2/norm2/beta/readIdentityrconv2/norm2/beta*
_output_shapes
:`*
T0*$
_class
loc:@rconv2/norm2/beta
b
mul_15MulConv2D_3strided_slice_5*
T0*/
_output_shapes
:���������		`
l
Sum_8/reduction_indicesConst*!
valueB"          *
dtype0*
_output_shapes
:
R
Sum_8Summul_15Sum_8/reduction_indices*
_output_shapes
:`*
T0
E
	truediv_6RealDivSum_8Sum*
T0*
_output_shapes
:`
[
sub_3SubConv2D_3	truediv_6*/
_output_shapes
:���������		`*
T0
_
mul_16Mulsub_3strided_slice_5*/
_output_shapes
:���������		`*
T0
T
Square_3Squaremul_16*/
_output_shapes
:���������		`*
T0
l
Sum_9/reduction_indicesConst*!
valueB"          *
dtype0*
_output_shapes
:
T
Sum_9SumSquare_3Sum_9/reduction_indices*
T0*
_output_shapes
:`
E
	truediv_7RealDivSum_9Sum*
_output_shapes
:`*
T0
�
AssignMovingAvg_6/decayConst*
valueB
 *o;*+
_class!
loc:@rconv2/norm2/moving_mean*
dtype0*
_output_shapes
: 
�
0AssignMovingAvg_6/rconv2/norm2/moving_mean/zerosConst*
valueB`*    *+
_class!
loc:@rconv2/norm2/moving_mean*
dtype0*
_output_shapes
:`
�
rconv2/norm2/moving_mean/biased
VariableV2*
shape:`*
dtype0*
_output_shapes
:`*+
_class!
loc:@rconv2/norm2/moving_mean
�
&rconv2/norm2/moving_mean/biased/AssignAssignrconv2/norm2/moving_mean/biased0AssignMovingAvg_6/rconv2/norm2/moving_mean/zeros*
T0*+
_class!
loc:@rconv2/norm2/moving_mean*
_output_shapes
:`
�
$rconv2/norm2/moving_mean/biased/readIdentityrconv2/norm2/moving_mean/biased*
_output_shapes
:`*
T0*+
_class!
loc:@rconv2/norm2/moving_mean
�
5rconv2/norm2/moving_mean/local_step/Initializer/zerosConst*
valueB
 *    *+
_class!
loc:@rconv2/norm2/moving_mean*
dtype0*
_output_shapes
: 
�
#rconv2/norm2/moving_mean/local_step
VariableV2*
shape: *
dtype0*
_output_shapes
: *+
_class!
loc:@rconv2/norm2/moving_mean
�
*rconv2/norm2/moving_mean/local_step/AssignAssign#rconv2/norm2/moving_mean/local_step5rconv2/norm2/moving_mean/local_step/Initializer/zeros*
T0*+
_class!
loc:@rconv2/norm2/moving_mean*
_output_shapes
: 
�
(rconv2/norm2/moving_mean/local_step/readIdentity#rconv2/norm2/moving_mean/local_step*
T0*+
_class!
loc:@rconv2/norm2/moving_mean*
_output_shapes
: 
�
.AssignMovingAvg_6/rconv2/norm2/moving_mean/subSub$rconv2/norm2/moving_mean/biased/read	truediv_6*
_output_shapes
:`*
T0*+
_class!
loc:@rconv2/norm2/moving_mean
�
.AssignMovingAvg_6/rconv2/norm2/moving_mean/mulMul.AssignMovingAvg_6/rconv2/norm2/moving_mean/subAssignMovingAvg_6/decay*
_output_shapes
:`*
T0*+
_class!
loc:@rconv2/norm2/moving_mean
�
CAssignMovingAvg_6/rconv2/norm2/moving_mean/rconv2/norm2/moving_mean	AssignSubrconv2/norm2/moving_mean/biased.AssignMovingAvg_6/rconv2/norm2/moving_mean/mul*
T0*+
_class!
loc:@rconv2/norm2/moving_mean*
_output_shapes
:`
�
:AssignMovingAvg_6/rconv2/norm2/moving_mean/AssignAdd/valueConst*
valueB
 *  �?*+
_class!
loc:@rconv2/norm2/moving_mean*
dtype0*
_output_shapes
: 
�
4AssignMovingAvg_6/rconv2/norm2/moving_mean/AssignAdd	AssignAdd#rconv2/norm2/moving_mean/local_step:AssignMovingAvg_6/rconv2/norm2/moving_mean/AssignAdd/value*
T0*+
_class!
loc:@rconv2/norm2/moving_mean*
_output_shapes
: 
�
/AssignMovingAvg_6/rconv2/norm2/moving_mean/readIdentityrconv2/norm2/moving_mean/biased5^AssignMovingAvg_6/rconv2/norm2/moving_mean/AssignAddD^AssignMovingAvg_6/rconv2/norm2/moving_mean/rconv2/norm2/moving_mean*
_output_shapes
:`*
T0*+
_class!
loc:@rconv2/norm2/moving_mean
�
2AssignMovingAvg_6/rconv2/norm2/moving_mean/sub_1/xConst5^AssignMovingAvg_6/rconv2/norm2/moving_mean/AssignAddD^AssignMovingAvg_6/rconv2/norm2/moving_mean/rconv2/norm2/moving_mean*
_output_shapes
: *
valueB
 *  �?*+
_class!
loc:@rconv2/norm2/moving_mean*
dtype0
�
0AssignMovingAvg_6/rconv2/norm2/moving_mean/sub_1Sub2AssignMovingAvg_6/rconv2/norm2/moving_mean/sub_1/xAssignMovingAvg_6/decay*
_output_shapes
: *
T0*+
_class!
loc:@rconv2/norm2/moving_mean
�
1AssignMovingAvg_6/rconv2/norm2/moving_mean/read_1Identity#rconv2/norm2/moving_mean/local_step5^AssignMovingAvg_6/rconv2/norm2/moving_mean/AssignAddD^AssignMovingAvg_6/rconv2/norm2/moving_mean/rconv2/norm2/moving_mean*
T0*+
_class!
loc:@rconv2/norm2/moving_mean*
_output_shapes
: 
�
.AssignMovingAvg_6/rconv2/norm2/moving_mean/PowPow0AssignMovingAvg_6/rconv2/norm2/moving_mean/sub_11AssignMovingAvg_6/rconv2/norm2/moving_mean/read_1*
T0*+
_class!
loc:@rconv2/norm2/moving_mean*
_output_shapes
: 
�
2AssignMovingAvg_6/rconv2/norm2/moving_mean/sub_2/xConst5^AssignMovingAvg_6/rconv2/norm2/moving_mean/AssignAddD^AssignMovingAvg_6/rconv2/norm2/moving_mean/rconv2/norm2/moving_mean*
valueB
 *  �?*+
_class!
loc:@rconv2/norm2/moving_mean*
dtype0*
_output_shapes
: 
�
0AssignMovingAvg_6/rconv2/norm2/moving_mean/sub_2Sub2AssignMovingAvg_6/rconv2/norm2/moving_mean/sub_2/x.AssignMovingAvg_6/rconv2/norm2/moving_mean/Pow*
_output_shapes
: *
T0*+
_class!
loc:@rconv2/norm2/moving_mean
�
2AssignMovingAvg_6/rconv2/norm2/moving_mean/truedivRealDiv/AssignMovingAvg_6/rconv2/norm2/moving_mean/read0AssignMovingAvg_6/rconv2/norm2/moving_mean/sub_2*+
_class!
loc:@rconv2/norm2/moving_mean*
_output_shapes
:`*
T0
�
0AssignMovingAvg_6/rconv2/norm2/moving_mean/sub_3Subrconv2/norm2/moving_mean/read2AssignMovingAvg_6/rconv2/norm2/moving_mean/truediv*
T0*+
_class!
loc:@rconv2/norm2/moving_mean*
_output_shapes
:`
�
AssignMovingAvg_6	AssignSubrconv2/norm2/moving_mean0AssignMovingAvg_6/rconv2/norm2/moving_mean/sub_3*
T0*+
_class!
loc:@rconv2/norm2/moving_mean*
_output_shapes
:`
�
AssignMovingAvg_7/decayConst*
_output_shapes
: *
valueB
 *o;*/
_class%
#!loc:@rconv2/norm2/moving_variance*
dtype0
�
4AssignMovingAvg_7/rconv2/norm2/moving_variance/zerosConst*
valueB`*    */
_class%
#!loc:@rconv2/norm2/moving_variance*
dtype0*
_output_shapes
:`
�
#rconv2/norm2/moving_variance/biased
VariableV2*/
_class%
#!loc:@rconv2/norm2/moving_variance*
shape:`*
dtype0*
_output_shapes
:`
�
*rconv2/norm2/moving_variance/biased/AssignAssign#rconv2/norm2/moving_variance/biased4AssignMovingAvg_7/rconv2/norm2/moving_variance/zeros*
_output_shapes
:`*
T0*/
_class%
#!loc:@rconv2/norm2/moving_variance
�
(rconv2/norm2/moving_variance/biased/readIdentity#rconv2/norm2/moving_variance/biased*
T0*/
_class%
#!loc:@rconv2/norm2/moving_variance*
_output_shapes
:`
�
9rconv2/norm2/moving_variance/local_step/Initializer/zerosConst*
dtype0*
_output_shapes
: *
valueB
 *    */
_class%
#!loc:@rconv2/norm2/moving_variance
�
'rconv2/norm2/moving_variance/local_step
VariableV2*
dtype0*
_output_shapes
: */
_class%
#!loc:@rconv2/norm2/moving_variance*
shape: 
�
.rconv2/norm2/moving_variance/local_step/AssignAssign'rconv2/norm2/moving_variance/local_step9rconv2/norm2/moving_variance/local_step/Initializer/zeros*
T0*/
_class%
#!loc:@rconv2/norm2/moving_variance*
_output_shapes
: 
�
,rconv2/norm2/moving_variance/local_step/readIdentity'rconv2/norm2/moving_variance/local_step*
T0*/
_class%
#!loc:@rconv2/norm2/moving_variance*
_output_shapes
: 
�
2AssignMovingAvg_7/rconv2/norm2/moving_variance/subSub(rconv2/norm2/moving_variance/biased/read	truediv_7*
T0*/
_class%
#!loc:@rconv2/norm2/moving_variance*
_output_shapes
:`
�
2AssignMovingAvg_7/rconv2/norm2/moving_variance/mulMul2AssignMovingAvg_7/rconv2/norm2/moving_variance/subAssignMovingAvg_7/decay*
T0*/
_class%
#!loc:@rconv2/norm2/moving_variance*
_output_shapes
:`
�
KAssignMovingAvg_7/rconv2/norm2/moving_variance/rconv2/norm2/moving_variance	AssignSub#rconv2/norm2/moving_variance/biased2AssignMovingAvg_7/rconv2/norm2/moving_variance/mul*
T0*/
_class%
#!loc:@rconv2/norm2/moving_variance*
_output_shapes
:`
�
>AssignMovingAvg_7/rconv2/norm2/moving_variance/AssignAdd/valueConst*
_output_shapes
: *
valueB
 *  �?*/
_class%
#!loc:@rconv2/norm2/moving_variance*
dtype0
�
8AssignMovingAvg_7/rconv2/norm2/moving_variance/AssignAdd	AssignAdd'rconv2/norm2/moving_variance/local_step>AssignMovingAvg_7/rconv2/norm2/moving_variance/AssignAdd/value*
T0*/
_class%
#!loc:@rconv2/norm2/moving_variance*
_output_shapes
: 
�
3AssignMovingAvg_7/rconv2/norm2/moving_variance/readIdentity#rconv2/norm2/moving_variance/biased9^AssignMovingAvg_7/rconv2/norm2/moving_variance/AssignAddL^AssignMovingAvg_7/rconv2/norm2/moving_variance/rconv2/norm2/moving_variance*
_output_shapes
:`*
T0*/
_class%
#!loc:@rconv2/norm2/moving_variance
�
6AssignMovingAvg_7/rconv2/norm2/moving_variance/sub_1/xConst9^AssignMovingAvg_7/rconv2/norm2/moving_variance/AssignAddL^AssignMovingAvg_7/rconv2/norm2/moving_variance/rconv2/norm2/moving_variance*
dtype0*
_output_shapes
: *
valueB
 *  �?*/
_class%
#!loc:@rconv2/norm2/moving_variance
�
4AssignMovingAvg_7/rconv2/norm2/moving_variance/sub_1Sub6AssignMovingAvg_7/rconv2/norm2/moving_variance/sub_1/xAssignMovingAvg_7/decay*
T0*/
_class%
#!loc:@rconv2/norm2/moving_variance*
_output_shapes
: 
�
5AssignMovingAvg_7/rconv2/norm2/moving_variance/read_1Identity'rconv2/norm2/moving_variance/local_step9^AssignMovingAvg_7/rconv2/norm2/moving_variance/AssignAddL^AssignMovingAvg_7/rconv2/norm2/moving_variance/rconv2/norm2/moving_variance*/
_class%
#!loc:@rconv2/norm2/moving_variance*
_output_shapes
: *
T0
�
2AssignMovingAvg_7/rconv2/norm2/moving_variance/PowPow4AssignMovingAvg_7/rconv2/norm2/moving_variance/sub_15AssignMovingAvg_7/rconv2/norm2/moving_variance/read_1*
T0*/
_class%
#!loc:@rconv2/norm2/moving_variance*
_output_shapes
: 
�
6AssignMovingAvg_7/rconv2/norm2/moving_variance/sub_2/xConst9^AssignMovingAvg_7/rconv2/norm2/moving_variance/AssignAddL^AssignMovingAvg_7/rconv2/norm2/moving_variance/rconv2/norm2/moving_variance*
valueB
 *  �?*/
_class%
#!loc:@rconv2/norm2/moving_variance*
dtype0*
_output_shapes
: 
�
4AssignMovingAvg_7/rconv2/norm2/moving_variance/sub_2Sub6AssignMovingAvg_7/rconv2/norm2/moving_variance/sub_2/x2AssignMovingAvg_7/rconv2/norm2/moving_variance/Pow*
T0*/
_class%
#!loc:@rconv2/norm2/moving_variance*
_output_shapes
: 
�
6AssignMovingAvg_7/rconv2/norm2/moving_variance/truedivRealDiv3AssignMovingAvg_7/rconv2/norm2/moving_variance/read4AssignMovingAvg_7/rconv2/norm2/moving_variance/sub_2*
_output_shapes
:`*
T0*/
_class%
#!loc:@rconv2/norm2/moving_variance
�
4AssignMovingAvg_7/rconv2/norm2/moving_variance/sub_3Sub!rconv2/norm2/moving_variance/read6AssignMovingAvg_7/rconv2/norm2/moving_variance/truediv*
T0*/
_class%
#!loc:@rconv2/norm2/moving_variance*
_output_shapes
:`
�
AssignMovingAvg_7	AssignSubrconv2/norm2/moving_variance4AssignMovingAvg_7/rconv2/norm2/moving_variance/sub_3*
_output_shapes
:`*
T0*/
_class%
#!loc:@rconv2/norm2/moving_variance
L
cond_6/SwitchSwitchConst_2Const_2*
_output_shapes
: : *
T0

M
cond_6/switch_tIdentitycond_6/Switch:1*
T0
*
_output_shapes
: 
K
cond_6/switch_fIdentitycond_6/Switch*
_output_shapes
: *
T0

D
cond_6/pred_idIdentityConst_2*
_output_shapes
: *
T0

}
cond_6/Switch_1Switch	truediv_6cond_6/pred_id*
T0*
_class
loc:@truediv_6* 
_output_shapes
:`:`
}
cond_6/Switch_2Switch	truediv_7cond_6/pred_id*
T0*
_class
loc:@truediv_7* 
_output_shapes
:`:`
�
cond_6/Switch_3Switchrconv2/norm2/moving_mean/readcond_6/pred_id*
T0*+
_class!
loc:@rconv2/norm2/moving_mean* 
_output_shapes
:`:`
�
cond_6/Switch_4Switch!rconv2/norm2/moving_variance/readcond_6/pred_id*
T0*/
_class%
#!loc:@rconv2/norm2/moving_variance* 
_output_shapes
:`:`
i
cond_6/MergeMergecond_6/Switch_3cond_6/Switch_1:1*
_output_shapes

:`: *
T0*
N
k
cond_6/Merge_1Mergecond_6/Switch_4cond_6/Switch_2:1*
_output_shapes

:`: *
T0*
N
V
batchnorm_3/add/yConst*
_output_shapes
: *
valueB
 *o�:*
dtype0
^
batchnorm_3/addAddcond_6/Merge_1batchnorm_3/add/y*
T0*
_output_shapes
:`
P
batchnorm_3/RsqrtRsqrtbatchnorm_3/add*
_output_shapes
:`*
T0
m
batchnorm_3/mulMulConv2D_3batchnorm_3/Rsqrt*
T0*/
_output_shapes
:���������		`
^
batchnorm_3/mul_1Mulcond_6/Mergebatchnorm_3/Rsqrt*
T0*
_output_shapes
:`
f
batchnorm_3/subSubrconv2/norm2/beta/readbatchnorm_3/mul_1*
T0*
_output_shapes
:`
t
batchnorm_3/add_1Addbatchnorm_3/mulbatchnorm_3/sub*/
_output_shapes
:���������		`*
T0
k
mul_17Mulbatchnorm_3/add_1strided_slice_5*
T0*/
_output_shapes
:���������		`
P
Relu_3Relumul_17*/
_output_shapes
:���������		`*
T0
q
truncated_normal_5/shapeConst*%
valueB"      `   `   *
dtype0*
_output_shapes
:
\
truncated_normal_5/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
^
truncated_normal_5/stddevConst*
valueB
 *�E=*
dtype0*
_output_shapes
: 
�
"truncated_normal_5/TruncatedNormalTruncatedNormaltruncated_normal_5/shape*
T0*
dtype0*&
_output_shapes
:``
�
truncated_normal_5/mulMul"truncated_normal_5/TruncatedNormaltruncated_normal_5/stddev*
T0*&
_output_shapes
:``
{
truncated_normal_5Addtruncated_normal_5/multruncated_normal_5/mean*
T0*&
_output_shapes
:``
M
mul_18/yConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
\
mul_18Multruncated_normal_5mul_18/y*
T0*&
_output_shapes
:``
i
	rconv2/w2
VariableV2*
dtype0*&
_output_shapes
:``*
shape:``
|
rconv2/w2/AssignAssign	rconv2/w2mul_18*&
_output_shapes
:``*
T0*
_class
loc:@rconv2/w2
t
rconv2/w2/readIdentity	rconv2/w2*
T0*
_class
loc:@rconv2/w2*&
_output_shapes
:``
�
Conv2D_4Conv2DRelu_3rconv2/w2/read*
T0*
strides
*
paddingSAME*/
_output_shapes
:���������		`
W
add_3Addadd_2Conv2D_4*
T0*/
_output_shapes
:���������		`
T
zeros_9Const*
valueB`*    *
dtype0*
_output_shapes
:`
`
rconv3/norm1/moving_mean
VariableV2*
_output_shapes
:`*
shape:`*
dtype0
�
rconv3/norm1/moving_mean/AssignAssignrconv3/norm1/moving_meanzeros_9*
T0*+
_class!
loc:@rconv3/norm1/moving_mean*
_output_shapes
:`
�
rconv3/norm1/moving_mean/readIdentityrconv3/norm1/moving_mean*+
_class!
loc:@rconv3/norm1/moving_mean*
_output_shapes
:`*
T0
S
ones_4Const*
valueB`*  �?*
dtype0*
_output_shapes
:`
d
rconv3/norm1/moving_variance
VariableV2*
dtype0*
_output_shapes
:`*
shape:`
�
#rconv3/norm1/moving_variance/AssignAssignrconv3/norm1/moving_varianceones_4*
T0*/
_class%
#!loc:@rconv3/norm1/moving_variance*
_output_shapes
:`
�
!rconv3/norm1/moving_variance/readIdentityrconv3/norm1/moving_variance*/
_class%
#!loc:@rconv3/norm1/moving_variance*
_output_shapes
:`*
T0
U
zeros_10Const*
valueB`*    *
dtype0*
_output_shapes
:`
Y
rconv3/norm1/beta
VariableV2*
dtype0*
_output_shapes
:`*
shape:`
�
rconv3/norm1/beta/AssignAssignrconv3/norm1/betazeros_10*$
_class
loc:@rconv3/norm1/beta*
_output_shapes
:`*
T0
�
rconv3/norm1/beta/readIdentityrconv3/norm1/beta*
T0*$
_class
loc:@rconv3/norm1/beta*
_output_shapes
:`
_
mul_19Muladd_3strided_slice_5*/
_output_shapes
:���������		`*
T0
m
Sum_10/reduction_indicesConst*
_output_shapes
:*!
valueB"          *
dtype0
T
Sum_10Summul_19Sum_10/reduction_indices*
T0*
_output_shapes
:`
F
	truediv_8RealDivSum_10Sum*
T0*
_output_shapes
:`
X
sub_4Subadd_3	truediv_8*/
_output_shapes
:���������		`*
T0
_
mul_20Mulsub_4strided_slice_5*
T0*/
_output_shapes
:���������		`
T
Square_4Squaremul_20*
T0*/
_output_shapes
:���������		`
m
Sum_11/reduction_indicesConst*
_output_shapes
:*!
valueB"          *
dtype0
V
Sum_11SumSquare_4Sum_11/reduction_indices*
T0*
_output_shapes
:`
F
	truediv_9RealDivSum_11Sum*
_output_shapes
:`*
T0
�
AssignMovingAvg_8/decayConst*
valueB
 *o;*+
_class!
loc:@rconv3/norm1/moving_mean*
dtype0*
_output_shapes
: 
�
0AssignMovingAvg_8/rconv3/norm1/moving_mean/zerosConst*
_output_shapes
:`*
valueB`*    *+
_class!
loc:@rconv3/norm1/moving_mean*
dtype0
�
rconv3/norm1/moving_mean/biased
VariableV2*
shape:`*
dtype0*
_output_shapes
:`*+
_class!
loc:@rconv3/norm1/moving_mean
�
&rconv3/norm1/moving_mean/biased/AssignAssignrconv3/norm1/moving_mean/biased0AssignMovingAvg_8/rconv3/norm1/moving_mean/zeros*
_output_shapes
:`*
T0*+
_class!
loc:@rconv3/norm1/moving_mean
�
$rconv3/norm1/moving_mean/biased/readIdentityrconv3/norm1/moving_mean/biased*
_output_shapes
:`*
T0*+
_class!
loc:@rconv3/norm1/moving_mean
�
5rconv3/norm1/moving_mean/local_step/Initializer/zerosConst*
valueB
 *    *+
_class!
loc:@rconv3/norm1/moving_mean*
dtype0*
_output_shapes
: 
�
#rconv3/norm1/moving_mean/local_step
VariableV2*+
_class!
loc:@rconv3/norm1/moving_mean*
shape: *
dtype0*
_output_shapes
: 
�
*rconv3/norm1/moving_mean/local_step/AssignAssign#rconv3/norm1/moving_mean/local_step5rconv3/norm1/moving_mean/local_step/Initializer/zeros*
T0*+
_class!
loc:@rconv3/norm1/moving_mean*
_output_shapes
: 
�
(rconv3/norm1/moving_mean/local_step/readIdentity#rconv3/norm1/moving_mean/local_step*
T0*+
_class!
loc:@rconv3/norm1/moving_mean*
_output_shapes
: 
�
.AssignMovingAvg_8/rconv3/norm1/moving_mean/subSub$rconv3/norm1/moving_mean/biased/read	truediv_8*
T0*+
_class!
loc:@rconv3/norm1/moving_mean*
_output_shapes
:`
�
.AssignMovingAvg_8/rconv3/norm1/moving_mean/mulMul.AssignMovingAvg_8/rconv3/norm1/moving_mean/subAssignMovingAvg_8/decay*
T0*+
_class!
loc:@rconv3/norm1/moving_mean*
_output_shapes
:`
�
CAssignMovingAvg_8/rconv3/norm1/moving_mean/rconv3/norm1/moving_mean	AssignSubrconv3/norm1/moving_mean/biased.AssignMovingAvg_8/rconv3/norm1/moving_mean/mul*
T0*+
_class!
loc:@rconv3/norm1/moving_mean*
_output_shapes
:`
�
:AssignMovingAvg_8/rconv3/norm1/moving_mean/AssignAdd/valueConst*
valueB
 *  �?*+
_class!
loc:@rconv3/norm1/moving_mean*
dtype0*
_output_shapes
: 
�
4AssignMovingAvg_8/rconv3/norm1/moving_mean/AssignAdd	AssignAdd#rconv3/norm1/moving_mean/local_step:AssignMovingAvg_8/rconv3/norm1/moving_mean/AssignAdd/value*
T0*+
_class!
loc:@rconv3/norm1/moving_mean*
_output_shapes
: 
�
/AssignMovingAvg_8/rconv3/norm1/moving_mean/readIdentityrconv3/norm1/moving_mean/biased5^AssignMovingAvg_8/rconv3/norm1/moving_mean/AssignAddD^AssignMovingAvg_8/rconv3/norm1/moving_mean/rconv3/norm1/moving_mean*
_output_shapes
:`*
T0*+
_class!
loc:@rconv3/norm1/moving_mean
�
2AssignMovingAvg_8/rconv3/norm1/moving_mean/sub_1/xConst5^AssignMovingAvg_8/rconv3/norm1/moving_mean/AssignAddD^AssignMovingAvg_8/rconv3/norm1/moving_mean/rconv3/norm1/moving_mean*
valueB
 *  �?*+
_class!
loc:@rconv3/norm1/moving_mean*
dtype0*
_output_shapes
: 
�
0AssignMovingAvg_8/rconv3/norm1/moving_mean/sub_1Sub2AssignMovingAvg_8/rconv3/norm1/moving_mean/sub_1/xAssignMovingAvg_8/decay*
_output_shapes
: *
T0*+
_class!
loc:@rconv3/norm1/moving_mean
�
1AssignMovingAvg_8/rconv3/norm1/moving_mean/read_1Identity#rconv3/norm1/moving_mean/local_step5^AssignMovingAvg_8/rconv3/norm1/moving_mean/AssignAddD^AssignMovingAvg_8/rconv3/norm1/moving_mean/rconv3/norm1/moving_mean*
_output_shapes
: *
T0*+
_class!
loc:@rconv3/norm1/moving_mean
�
.AssignMovingAvg_8/rconv3/norm1/moving_mean/PowPow0AssignMovingAvg_8/rconv3/norm1/moving_mean/sub_11AssignMovingAvg_8/rconv3/norm1/moving_mean/read_1*+
_class!
loc:@rconv3/norm1/moving_mean*
_output_shapes
: *
T0
�
2AssignMovingAvg_8/rconv3/norm1/moving_mean/sub_2/xConst5^AssignMovingAvg_8/rconv3/norm1/moving_mean/AssignAddD^AssignMovingAvg_8/rconv3/norm1/moving_mean/rconv3/norm1/moving_mean*
_output_shapes
: *
valueB
 *  �?*+
_class!
loc:@rconv3/norm1/moving_mean*
dtype0
�
0AssignMovingAvg_8/rconv3/norm1/moving_mean/sub_2Sub2AssignMovingAvg_8/rconv3/norm1/moving_mean/sub_2/x.AssignMovingAvg_8/rconv3/norm1/moving_mean/Pow*
_output_shapes
: *
T0*+
_class!
loc:@rconv3/norm1/moving_mean
�
2AssignMovingAvg_8/rconv3/norm1/moving_mean/truedivRealDiv/AssignMovingAvg_8/rconv3/norm1/moving_mean/read0AssignMovingAvg_8/rconv3/norm1/moving_mean/sub_2*
_output_shapes
:`*
T0*+
_class!
loc:@rconv3/norm1/moving_mean
�
0AssignMovingAvg_8/rconv3/norm1/moving_mean/sub_3Subrconv3/norm1/moving_mean/read2AssignMovingAvg_8/rconv3/norm1/moving_mean/truediv*
_output_shapes
:`*
T0*+
_class!
loc:@rconv3/norm1/moving_mean
�
AssignMovingAvg_8	AssignSubrconv3/norm1/moving_mean0AssignMovingAvg_8/rconv3/norm1/moving_mean/sub_3*
_output_shapes
:`*
T0*+
_class!
loc:@rconv3/norm1/moving_mean
�
AssignMovingAvg_9/decayConst*
valueB
 *o;*/
_class%
#!loc:@rconv3/norm1/moving_variance*
dtype0*
_output_shapes
: 
�
4AssignMovingAvg_9/rconv3/norm1/moving_variance/zerosConst*
valueB`*    */
_class%
#!loc:@rconv3/norm1/moving_variance*
dtype0*
_output_shapes
:`
�
#rconv3/norm1/moving_variance/biased
VariableV2*/
_class%
#!loc:@rconv3/norm1/moving_variance*
shape:`*
dtype0*
_output_shapes
:`
�
*rconv3/norm1/moving_variance/biased/AssignAssign#rconv3/norm1/moving_variance/biased4AssignMovingAvg_9/rconv3/norm1/moving_variance/zeros*
T0*/
_class%
#!loc:@rconv3/norm1/moving_variance*
_output_shapes
:`
�
(rconv3/norm1/moving_variance/biased/readIdentity#rconv3/norm1/moving_variance/biased*
T0*/
_class%
#!loc:@rconv3/norm1/moving_variance*
_output_shapes
:`
�
9rconv3/norm1/moving_variance/local_step/Initializer/zerosConst*
valueB
 *    */
_class%
#!loc:@rconv3/norm1/moving_variance*
dtype0*
_output_shapes
: 
�
'rconv3/norm1/moving_variance/local_step
VariableV2*/
_class%
#!loc:@rconv3/norm1/moving_variance*
shape: *
dtype0*
_output_shapes
: 
�
.rconv3/norm1/moving_variance/local_step/AssignAssign'rconv3/norm1/moving_variance/local_step9rconv3/norm1/moving_variance/local_step/Initializer/zeros*
T0*/
_class%
#!loc:@rconv3/norm1/moving_variance*
_output_shapes
: 
�
,rconv3/norm1/moving_variance/local_step/readIdentity'rconv3/norm1/moving_variance/local_step*
T0*/
_class%
#!loc:@rconv3/norm1/moving_variance*
_output_shapes
: 
�
2AssignMovingAvg_9/rconv3/norm1/moving_variance/subSub(rconv3/norm1/moving_variance/biased/read	truediv_9*
T0*/
_class%
#!loc:@rconv3/norm1/moving_variance*
_output_shapes
:`
�
2AssignMovingAvg_9/rconv3/norm1/moving_variance/mulMul2AssignMovingAvg_9/rconv3/norm1/moving_variance/subAssignMovingAvg_9/decay*
T0*/
_class%
#!loc:@rconv3/norm1/moving_variance*
_output_shapes
:`
�
KAssignMovingAvg_9/rconv3/norm1/moving_variance/rconv3/norm1/moving_variance	AssignSub#rconv3/norm1/moving_variance/biased2AssignMovingAvg_9/rconv3/norm1/moving_variance/mul*
T0*/
_class%
#!loc:@rconv3/norm1/moving_variance*
_output_shapes
:`
�
>AssignMovingAvg_9/rconv3/norm1/moving_variance/AssignAdd/valueConst*
valueB
 *  �?*/
_class%
#!loc:@rconv3/norm1/moving_variance*
dtype0*
_output_shapes
: 
�
8AssignMovingAvg_9/rconv3/norm1/moving_variance/AssignAdd	AssignAdd'rconv3/norm1/moving_variance/local_step>AssignMovingAvg_9/rconv3/norm1/moving_variance/AssignAdd/value*
T0*/
_class%
#!loc:@rconv3/norm1/moving_variance*
_output_shapes
: 
�
3AssignMovingAvg_9/rconv3/norm1/moving_variance/readIdentity#rconv3/norm1/moving_variance/biased9^AssignMovingAvg_9/rconv3/norm1/moving_variance/AssignAddL^AssignMovingAvg_9/rconv3/norm1/moving_variance/rconv3/norm1/moving_variance*
T0*/
_class%
#!loc:@rconv3/norm1/moving_variance*
_output_shapes
:`
�
6AssignMovingAvg_9/rconv3/norm1/moving_variance/sub_1/xConst9^AssignMovingAvg_9/rconv3/norm1/moving_variance/AssignAddL^AssignMovingAvg_9/rconv3/norm1/moving_variance/rconv3/norm1/moving_variance*
valueB
 *  �?*/
_class%
#!loc:@rconv3/norm1/moving_variance*
dtype0*
_output_shapes
: 
�
4AssignMovingAvg_9/rconv3/norm1/moving_variance/sub_1Sub6AssignMovingAvg_9/rconv3/norm1/moving_variance/sub_1/xAssignMovingAvg_9/decay*
T0*/
_class%
#!loc:@rconv3/norm1/moving_variance*
_output_shapes
: 
�
5AssignMovingAvg_9/rconv3/norm1/moving_variance/read_1Identity'rconv3/norm1/moving_variance/local_step9^AssignMovingAvg_9/rconv3/norm1/moving_variance/AssignAddL^AssignMovingAvg_9/rconv3/norm1/moving_variance/rconv3/norm1/moving_variance*/
_class%
#!loc:@rconv3/norm1/moving_variance*
_output_shapes
: *
T0
�
2AssignMovingAvg_9/rconv3/norm1/moving_variance/PowPow4AssignMovingAvg_9/rconv3/norm1/moving_variance/sub_15AssignMovingAvg_9/rconv3/norm1/moving_variance/read_1*
T0*/
_class%
#!loc:@rconv3/norm1/moving_variance*
_output_shapes
: 
�
6AssignMovingAvg_9/rconv3/norm1/moving_variance/sub_2/xConst9^AssignMovingAvg_9/rconv3/norm1/moving_variance/AssignAddL^AssignMovingAvg_9/rconv3/norm1/moving_variance/rconv3/norm1/moving_variance*
valueB
 *  �?*/
_class%
#!loc:@rconv3/norm1/moving_variance*
dtype0*
_output_shapes
: 
�
4AssignMovingAvg_9/rconv3/norm1/moving_variance/sub_2Sub6AssignMovingAvg_9/rconv3/norm1/moving_variance/sub_2/x2AssignMovingAvg_9/rconv3/norm1/moving_variance/Pow*
T0*/
_class%
#!loc:@rconv3/norm1/moving_variance*
_output_shapes
: 
�
6AssignMovingAvg_9/rconv3/norm1/moving_variance/truedivRealDiv3AssignMovingAvg_9/rconv3/norm1/moving_variance/read4AssignMovingAvg_9/rconv3/norm1/moving_variance/sub_2*
T0*/
_class%
#!loc:@rconv3/norm1/moving_variance*
_output_shapes
:`
�
4AssignMovingAvg_9/rconv3/norm1/moving_variance/sub_3Sub!rconv3/norm1/moving_variance/read6AssignMovingAvg_9/rconv3/norm1/moving_variance/truediv*
_output_shapes
:`*
T0*/
_class%
#!loc:@rconv3/norm1/moving_variance
�
AssignMovingAvg_9	AssignSubrconv3/norm1/moving_variance4AssignMovingAvg_9/rconv3/norm1/moving_variance/sub_3*
T0*/
_class%
#!loc:@rconv3/norm1/moving_variance*
_output_shapes
:`
L
cond_7/SwitchSwitchConst_2Const_2*
T0
*
_output_shapes
: : 
M
cond_7/switch_tIdentitycond_7/Switch:1*
_output_shapes
: *
T0

K
cond_7/switch_fIdentitycond_7/Switch*
_output_shapes
: *
T0

D
cond_7/pred_idIdentityConst_2*
T0
*
_output_shapes
: 
}
cond_7/Switch_1Switch	truediv_8cond_7/pred_id*
_class
loc:@truediv_8* 
_output_shapes
:`:`*
T0
}
cond_7/Switch_2Switch	truediv_9cond_7/pred_id*
T0*
_class
loc:@truediv_9* 
_output_shapes
:`:`
�
cond_7/Switch_3Switchrconv3/norm1/moving_mean/readcond_7/pred_id* 
_output_shapes
:`:`*
T0*+
_class!
loc:@rconv3/norm1/moving_mean
�
cond_7/Switch_4Switch!rconv3/norm1/moving_variance/readcond_7/pred_id*
T0*/
_class%
#!loc:@rconv3/norm1/moving_variance* 
_output_shapes
:`:`
i
cond_7/MergeMergecond_7/Switch_3cond_7/Switch_1:1*
_output_shapes

:`: *
T0*
N
k
cond_7/Merge_1Mergecond_7/Switch_4cond_7/Switch_2:1*
T0*
N*
_output_shapes

:`: 
V
batchnorm_4/add/yConst*
valueB
 *o�:*
dtype0*
_output_shapes
: 
^
batchnorm_4/addAddcond_7/Merge_1batchnorm_4/add/y*
_output_shapes
:`*
T0
P
batchnorm_4/RsqrtRsqrtbatchnorm_4/add*
_output_shapes
:`*
T0
j
batchnorm_4/mulMuladd_3batchnorm_4/Rsqrt*
T0*/
_output_shapes
:���������		`
^
batchnorm_4/mul_1Mulcond_7/Mergebatchnorm_4/Rsqrt*
T0*
_output_shapes
:`
f
batchnorm_4/subSubrconv3/norm1/beta/readbatchnorm_4/mul_1*
T0*
_output_shapes
:`
t
batchnorm_4/add_1Addbatchnorm_4/mulbatchnorm_4/sub*/
_output_shapes
:���������		`*
T0
k
mul_21Mulbatchnorm_4/add_1strided_slice_5*/
_output_shapes
:���������		`*
T0
P
Relu_4Relumul_21*/
_output_shapes
:���������		`*
T0
q
truncated_normal_6/shapeConst*%
valueB"      `   @   *
dtype0*
_output_shapes
:
\
truncated_normal_6/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
^
truncated_normal_6/stddevConst*
valueB
 *�E=*
dtype0*
_output_shapes
: 
�
"truncated_normal_6/TruncatedNormalTruncatedNormaltruncated_normal_6/shape*
T0*
dtype0*&
_output_shapes
:`@
�
truncated_normal_6/mulMul"truncated_normal_6/TruncatedNormaltruncated_normal_6/stddev*
T0*&
_output_shapes
:`@
{
truncated_normal_6Addtruncated_normal_6/multruncated_normal_6/mean*&
_output_shapes
:`@*
T0
M
mul_22/yConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
\
mul_22Multruncated_normal_6mul_22/y*&
_output_shapes
:`@*
T0
j

rconv3/w1a
VariableV2*
shape:`@*
dtype0*&
_output_shapes
:`@

rconv3/w1a/AssignAssign
rconv3/w1amul_22*
T0*
_class
loc:@rconv3/w1a*&
_output_shapes
:`@
w
rconv3/w1a/readIdentity
rconv3/w1a*&
_output_shapes
:`@*
T0*
_class
loc:@rconv3/w1a
q
truncated_normal_7/shapeConst*%
valueB"      `       *
dtype0*
_output_shapes
:
\
truncated_normal_7/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
^
truncated_normal_7/stddevConst*
valueB
 *�E=*
dtype0*
_output_shapes
: 
�
"truncated_normal_7/TruncatedNormalTruncatedNormaltruncated_normal_7/shape*&
_output_shapes
:` *
T0*
dtype0
�
truncated_normal_7/mulMul"truncated_normal_7/TruncatedNormaltruncated_normal_7/stddev*&
_output_shapes
:` *
T0
{
truncated_normal_7Addtruncated_normal_7/multruncated_normal_7/mean*&
_output_shapes
:` *
T0
M
mul_23/yConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
\
mul_23Multruncated_normal_7mul_23/y*&
_output_shapes
:` *
T0
j

rconv3/w1b
VariableV2*
shape:` *
dtype0*&
_output_shapes
:` 

rconv3/w1b/AssignAssign
rconv3/w1bmul_23*
T0*
_class
loc:@rconv3/w1b*&
_output_shapes
:` 
w
rconv3/w1b/readIdentity
rconv3/w1b*&
_output_shapes
:` *
T0*
_class
loc:@rconv3/w1b
�
Conv2D_5Conv2DRelu_4rconv3/w1a/read*
T0*
strides
*
paddingSAME*/
_output_shapes
:���������		@
�
Conv2D_6Conv2DRelu_4rconv3/w1b/read*
T0*
strides
*
paddingSAME*/
_output_shapes
:���������		 
U
zeros_11Const*
valueB *    *
dtype0*
_output_shapes
: 
a
rconv3/norm1b/moving_mean
VariableV2*
dtype0*
_output_shapes
: *
shape: 
�
 rconv3/norm1b/moving_mean/AssignAssignrconv3/norm1b/moving_meanzeros_11*
_output_shapes
: *
T0*,
_class"
 loc:@rconv3/norm1b/moving_mean
�
rconv3/norm1b/moving_mean/readIdentityrconv3/norm1b/moving_mean*
T0*,
_class"
 loc:@rconv3/norm1b/moving_mean*
_output_shapes
: 
S
ones_5Const*
valueB *  �?*
dtype0*
_output_shapes
: 
e
rconv3/norm1b/moving_variance
VariableV2*
dtype0*
_output_shapes
: *
shape: 
�
$rconv3/norm1b/moving_variance/AssignAssignrconv3/norm1b/moving_varianceones_5*
_output_shapes
: *
T0*0
_class&
$"loc:@rconv3/norm1b/moving_variance
�
"rconv3/norm1b/moving_variance/readIdentityrconv3/norm1b/moving_variance*
T0*0
_class&
$"loc:@rconv3/norm1b/moving_variance*
_output_shapes
: 
U
zeros_12Const*
_output_shapes
: *
valueB *    *
dtype0
Z
rconv3/norm1b/beta
VariableV2*
dtype0*
_output_shapes
: *
shape: 
�
rconv3/norm1b/beta/AssignAssignrconv3/norm1b/betazeros_12*
_output_shapes
: *
T0*%
_class
loc:@rconv3/norm1b/beta
�
rconv3/norm1b/beta/readIdentityrconv3/norm1b/beta*
T0*%
_class
loc:@rconv3/norm1b/beta*
_output_shapes
: 
b
mul_24MulConv2D_6strided_slice_5*/
_output_shapes
:���������		 *
T0
m
Sum_12/reduction_indicesConst*!
valueB"          *
dtype0*
_output_shapes
:
T
Sum_12Summul_24Sum_12/reduction_indices*
T0*
_output_shapes
: 
G

truediv_10RealDivSum_12Sum*
_output_shapes
: *
T0
\
sub_5SubConv2D_6
truediv_10*/
_output_shapes
:���������		 *
T0
_
mul_25Mulsub_5strided_slice_5*
T0*/
_output_shapes
:���������		 
T
Square_5Squaremul_25*
T0*/
_output_shapes
:���������		 
m
Sum_13/reduction_indicesConst*!
valueB"          *
dtype0*
_output_shapes
:
V
Sum_13SumSquare_5Sum_13/reduction_indices*
T0*
_output_shapes
: 
G

truediv_11RealDivSum_13Sum*
_output_shapes
: *
T0
�
AssignMovingAvg_10/decayConst*
valueB
 *o;*,
_class"
 loc:@rconv3/norm1b/moving_mean*
dtype0*
_output_shapes
: 
�
2AssignMovingAvg_10/rconv3/norm1b/moving_mean/zerosConst*
valueB *    *,
_class"
 loc:@rconv3/norm1b/moving_mean*
dtype0*
_output_shapes
: 
�
 rconv3/norm1b/moving_mean/biased
VariableV2*
_output_shapes
: *,
_class"
 loc:@rconv3/norm1b/moving_mean*
shape: *
dtype0
�
'rconv3/norm1b/moving_mean/biased/AssignAssign rconv3/norm1b/moving_mean/biased2AssignMovingAvg_10/rconv3/norm1b/moving_mean/zeros*
T0*,
_class"
 loc:@rconv3/norm1b/moving_mean*
_output_shapes
: 
�
%rconv3/norm1b/moving_mean/biased/readIdentity rconv3/norm1b/moving_mean/biased*
T0*,
_class"
 loc:@rconv3/norm1b/moving_mean*
_output_shapes
: 
�
6rconv3/norm1b/moving_mean/local_step/Initializer/zerosConst*
valueB
 *    *,
_class"
 loc:@rconv3/norm1b/moving_mean*
dtype0*
_output_shapes
: 
�
$rconv3/norm1b/moving_mean/local_step
VariableV2*
shape: *
dtype0*
_output_shapes
: *,
_class"
 loc:@rconv3/norm1b/moving_mean
�
+rconv3/norm1b/moving_mean/local_step/AssignAssign$rconv3/norm1b/moving_mean/local_step6rconv3/norm1b/moving_mean/local_step/Initializer/zeros*
T0*,
_class"
 loc:@rconv3/norm1b/moving_mean*
_output_shapes
: 
�
)rconv3/norm1b/moving_mean/local_step/readIdentity$rconv3/norm1b/moving_mean/local_step*
_output_shapes
: *
T0*,
_class"
 loc:@rconv3/norm1b/moving_mean
�
0AssignMovingAvg_10/rconv3/norm1b/moving_mean/subSub%rconv3/norm1b/moving_mean/biased/read
truediv_10*,
_class"
 loc:@rconv3/norm1b/moving_mean*
_output_shapes
: *
T0
�
0AssignMovingAvg_10/rconv3/norm1b/moving_mean/mulMul0AssignMovingAvg_10/rconv3/norm1b/moving_mean/subAssignMovingAvg_10/decay*
T0*,
_class"
 loc:@rconv3/norm1b/moving_mean*
_output_shapes
: 
�
FAssignMovingAvg_10/rconv3/norm1b/moving_mean/rconv3/norm1b/moving_mean	AssignSub rconv3/norm1b/moving_mean/biased0AssignMovingAvg_10/rconv3/norm1b/moving_mean/mul*
T0*,
_class"
 loc:@rconv3/norm1b/moving_mean*
_output_shapes
: 
�
<AssignMovingAvg_10/rconv3/norm1b/moving_mean/AssignAdd/valueConst*
valueB
 *  �?*,
_class"
 loc:@rconv3/norm1b/moving_mean*
dtype0*
_output_shapes
: 
�
6AssignMovingAvg_10/rconv3/norm1b/moving_mean/AssignAdd	AssignAdd$rconv3/norm1b/moving_mean/local_step<AssignMovingAvg_10/rconv3/norm1b/moving_mean/AssignAdd/value*
T0*,
_class"
 loc:@rconv3/norm1b/moving_mean*
_output_shapes
: 
�
1AssignMovingAvg_10/rconv3/norm1b/moving_mean/readIdentity rconv3/norm1b/moving_mean/biased7^AssignMovingAvg_10/rconv3/norm1b/moving_mean/AssignAddG^AssignMovingAvg_10/rconv3/norm1b/moving_mean/rconv3/norm1b/moving_mean*
_output_shapes
: *
T0*,
_class"
 loc:@rconv3/norm1b/moving_mean
�
4AssignMovingAvg_10/rconv3/norm1b/moving_mean/sub_1/xConst7^AssignMovingAvg_10/rconv3/norm1b/moving_mean/AssignAddG^AssignMovingAvg_10/rconv3/norm1b/moving_mean/rconv3/norm1b/moving_mean*
valueB
 *  �?*,
_class"
 loc:@rconv3/norm1b/moving_mean*
dtype0*
_output_shapes
: 
�
2AssignMovingAvg_10/rconv3/norm1b/moving_mean/sub_1Sub4AssignMovingAvg_10/rconv3/norm1b/moving_mean/sub_1/xAssignMovingAvg_10/decay*
T0*,
_class"
 loc:@rconv3/norm1b/moving_mean*
_output_shapes
: 
�
3AssignMovingAvg_10/rconv3/norm1b/moving_mean/read_1Identity$rconv3/norm1b/moving_mean/local_step7^AssignMovingAvg_10/rconv3/norm1b/moving_mean/AssignAddG^AssignMovingAvg_10/rconv3/norm1b/moving_mean/rconv3/norm1b/moving_mean*
T0*,
_class"
 loc:@rconv3/norm1b/moving_mean*
_output_shapes
: 
�
0AssignMovingAvg_10/rconv3/norm1b/moving_mean/PowPow2AssignMovingAvg_10/rconv3/norm1b/moving_mean/sub_13AssignMovingAvg_10/rconv3/norm1b/moving_mean/read_1*
T0*,
_class"
 loc:@rconv3/norm1b/moving_mean*
_output_shapes
: 
�
4AssignMovingAvg_10/rconv3/norm1b/moving_mean/sub_2/xConst7^AssignMovingAvg_10/rconv3/norm1b/moving_mean/AssignAddG^AssignMovingAvg_10/rconv3/norm1b/moving_mean/rconv3/norm1b/moving_mean*
valueB
 *  �?*,
_class"
 loc:@rconv3/norm1b/moving_mean*
dtype0*
_output_shapes
: 
�
2AssignMovingAvg_10/rconv3/norm1b/moving_mean/sub_2Sub4AssignMovingAvg_10/rconv3/norm1b/moving_mean/sub_2/x0AssignMovingAvg_10/rconv3/norm1b/moving_mean/Pow*
_output_shapes
: *
T0*,
_class"
 loc:@rconv3/norm1b/moving_mean
�
4AssignMovingAvg_10/rconv3/norm1b/moving_mean/truedivRealDiv1AssignMovingAvg_10/rconv3/norm1b/moving_mean/read2AssignMovingAvg_10/rconv3/norm1b/moving_mean/sub_2*
_output_shapes
: *
T0*,
_class"
 loc:@rconv3/norm1b/moving_mean
�
2AssignMovingAvg_10/rconv3/norm1b/moving_mean/sub_3Subrconv3/norm1b/moving_mean/read4AssignMovingAvg_10/rconv3/norm1b/moving_mean/truediv*
T0*,
_class"
 loc:@rconv3/norm1b/moving_mean*
_output_shapes
: 
�
AssignMovingAvg_10	AssignSubrconv3/norm1b/moving_mean2AssignMovingAvg_10/rconv3/norm1b/moving_mean/sub_3*
_output_shapes
: *
T0*,
_class"
 loc:@rconv3/norm1b/moving_mean
�
AssignMovingAvg_11/decayConst*
valueB
 *o;*0
_class&
$"loc:@rconv3/norm1b/moving_variance*
dtype0*
_output_shapes
: 
�
6AssignMovingAvg_11/rconv3/norm1b/moving_variance/zerosConst*
valueB *    *0
_class&
$"loc:@rconv3/norm1b/moving_variance*
dtype0*
_output_shapes
: 
�
$rconv3/norm1b/moving_variance/biased
VariableV2*
shape: *
dtype0*
_output_shapes
: *0
_class&
$"loc:@rconv3/norm1b/moving_variance
�
+rconv3/norm1b/moving_variance/biased/AssignAssign$rconv3/norm1b/moving_variance/biased6AssignMovingAvg_11/rconv3/norm1b/moving_variance/zeros*
T0*0
_class&
$"loc:@rconv3/norm1b/moving_variance*
_output_shapes
: 
�
)rconv3/norm1b/moving_variance/biased/readIdentity$rconv3/norm1b/moving_variance/biased*
T0*0
_class&
$"loc:@rconv3/norm1b/moving_variance*
_output_shapes
: 
�
:rconv3/norm1b/moving_variance/local_step/Initializer/zerosConst*
valueB
 *    *0
_class&
$"loc:@rconv3/norm1b/moving_variance*
dtype0*
_output_shapes
: 
�
(rconv3/norm1b/moving_variance/local_step
VariableV2*0
_class&
$"loc:@rconv3/norm1b/moving_variance*
shape: *
dtype0*
_output_shapes
: 
�
/rconv3/norm1b/moving_variance/local_step/AssignAssign(rconv3/norm1b/moving_variance/local_step:rconv3/norm1b/moving_variance/local_step/Initializer/zeros*
_output_shapes
: *
T0*0
_class&
$"loc:@rconv3/norm1b/moving_variance
�
-rconv3/norm1b/moving_variance/local_step/readIdentity(rconv3/norm1b/moving_variance/local_step*
T0*0
_class&
$"loc:@rconv3/norm1b/moving_variance*
_output_shapes
: 
�
4AssignMovingAvg_11/rconv3/norm1b/moving_variance/subSub)rconv3/norm1b/moving_variance/biased/read
truediv_11*
_output_shapes
: *
T0*0
_class&
$"loc:@rconv3/norm1b/moving_variance
�
4AssignMovingAvg_11/rconv3/norm1b/moving_variance/mulMul4AssignMovingAvg_11/rconv3/norm1b/moving_variance/subAssignMovingAvg_11/decay*
T0*0
_class&
$"loc:@rconv3/norm1b/moving_variance*
_output_shapes
: 
�
NAssignMovingAvg_11/rconv3/norm1b/moving_variance/rconv3/norm1b/moving_variance	AssignSub$rconv3/norm1b/moving_variance/biased4AssignMovingAvg_11/rconv3/norm1b/moving_variance/mul*
T0*0
_class&
$"loc:@rconv3/norm1b/moving_variance*
_output_shapes
: 
�
@AssignMovingAvg_11/rconv3/norm1b/moving_variance/AssignAdd/valueConst*
valueB
 *  �?*0
_class&
$"loc:@rconv3/norm1b/moving_variance*
dtype0*
_output_shapes
: 
�
:AssignMovingAvg_11/rconv3/norm1b/moving_variance/AssignAdd	AssignAdd(rconv3/norm1b/moving_variance/local_step@AssignMovingAvg_11/rconv3/norm1b/moving_variance/AssignAdd/value*
T0*0
_class&
$"loc:@rconv3/norm1b/moving_variance*
_output_shapes
: 
�
5AssignMovingAvg_11/rconv3/norm1b/moving_variance/readIdentity$rconv3/norm1b/moving_variance/biased;^AssignMovingAvg_11/rconv3/norm1b/moving_variance/AssignAddO^AssignMovingAvg_11/rconv3/norm1b/moving_variance/rconv3/norm1b/moving_variance*
T0*0
_class&
$"loc:@rconv3/norm1b/moving_variance*
_output_shapes
: 
�
8AssignMovingAvg_11/rconv3/norm1b/moving_variance/sub_1/xConst;^AssignMovingAvg_11/rconv3/norm1b/moving_variance/AssignAddO^AssignMovingAvg_11/rconv3/norm1b/moving_variance/rconv3/norm1b/moving_variance*
valueB
 *  �?*0
_class&
$"loc:@rconv3/norm1b/moving_variance*
dtype0*
_output_shapes
: 
�
6AssignMovingAvg_11/rconv3/norm1b/moving_variance/sub_1Sub8AssignMovingAvg_11/rconv3/norm1b/moving_variance/sub_1/xAssignMovingAvg_11/decay*
_output_shapes
: *
T0*0
_class&
$"loc:@rconv3/norm1b/moving_variance
�
7AssignMovingAvg_11/rconv3/norm1b/moving_variance/read_1Identity(rconv3/norm1b/moving_variance/local_step;^AssignMovingAvg_11/rconv3/norm1b/moving_variance/AssignAddO^AssignMovingAvg_11/rconv3/norm1b/moving_variance/rconv3/norm1b/moving_variance*
_output_shapes
: *
T0*0
_class&
$"loc:@rconv3/norm1b/moving_variance
�
4AssignMovingAvg_11/rconv3/norm1b/moving_variance/PowPow6AssignMovingAvg_11/rconv3/norm1b/moving_variance/sub_17AssignMovingAvg_11/rconv3/norm1b/moving_variance/read_1*
T0*0
_class&
$"loc:@rconv3/norm1b/moving_variance*
_output_shapes
: 
�
8AssignMovingAvg_11/rconv3/norm1b/moving_variance/sub_2/xConst;^AssignMovingAvg_11/rconv3/norm1b/moving_variance/AssignAddO^AssignMovingAvg_11/rconv3/norm1b/moving_variance/rconv3/norm1b/moving_variance*
valueB
 *  �?*0
_class&
$"loc:@rconv3/norm1b/moving_variance*
dtype0*
_output_shapes
: 
�
6AssignMovingAvg_11/rconv3/norm1b/moving_variance/sub_2Sub8AssignMovingAvg_11/rconv3/norm1b/moving_variance/sub_2/x4AssignMovingAvg_11/rconv3/norm1b/moving_variance/Pow*
_output_shapes
: *
T0*0
_class&
$"loc:@rconv3/norm1b/moving_variance
�
8AssignMovingAvg_11/rconv3/norm1b/moving_variance/truedivRealDiv5AssignMovingAvg_11/rconv3/norm1b/moving_variance/read6AssignMovingAvg_11/rconv3/norm1b/moving_variance/sub_2*0
_class&
$"loc:@rconv3/norm1b/moving_variance*
_output_shapes
: *
T0
�
6AssignMovingAvg_11/rconv3/norm1b/moving_variance/sub_3Sub"rconv3/norm1b/moving_variance/read8AssignMovingAvg_11/rconv3/norm1b/moving_variance/truediv*
_output_shapes
: *
T0*0
_class&
$"loc:@rconv3/norm1b/moving_variance
�
AssignMovingAvg_11	AssignSubrconv3/norm1b/moving_variance6AssignMovingAvg_11/rconv3/norm1b/moving_variance/sub_3*
_output_shapes
: *
T0*0
_class&
$"loc:@rconv3/norm1b/moving_variance
L
cond_8/SwitchSwitchConst_2Const_2*
_output_shapes
: : *
T0

M
cond_8/switch_tIdentitycond_8/Switch:1*
T0
*
_output_shapes
: 
K
cond_8/switch_fIdentitycond_8/Switch*
_output_shapes
: *
T0

D
cond_8/pred_idIdentityConst_2*
T0
*
_output_shapes
: 

cond_8/Switch_1Switch
truediv_10cond_8/pred_id*
T0*
_class
loc:@truediv_10* 
_output_shapes
: : 

cond_8/Switch_2Switch
truediv_11cond_8/pred_id*
T0*
_class
loc:@truediv_11* 
_output_shapes
: : 
�
cond_8/Switch_3Switchrconv3/norm1b/moving_mean/readcond_8/pred_id*
T0*,
_class"
 loc:@rconv3/norm1b/moving_mean* 
_output_shapes
: : 
�
cond_8/Switch_4Switch"rconv3/norm1b/moving_variance/readcond_8/pred_id*
T0*0
_class&
$"loc:@rconv3/norm1b/moving_variance* 
_output_shapes
: : 
i
cond_8/MergeMergecond_8/Switch_3cond_8/Switch_1:1*
T0*
N*
_output_shapes

: : 
k
cond_8/Merge_1Mergecond_8/Switch_4cond_8/Switch_2:1*
T0*
N*
_output_shapes

: : 
V
batchnorm_5/add/yConst*
valueB
 *o�:*
dtype0*
_output_shapes
: 
^
batchnorm_5/addAddcond_8/Merge_1batchnorm_5/add/y*
T0*
_output_shapes
: 
P
batchnorm_5/RsqrtRsqrtbatchnorm_5/add*
_output_shapes
: *
T0
m
batchnorm_5/mulMulConv2D_6batchnorm_5/Rsqrt*
T0*/
_output_shapes
:���������		 
^
batchnorm_5/mul_1Mulcond_8/Mergebatchnorm_5/Rsqrt*
T0*
_output_shapes
: 
g
batchnorm_5/subSubrconv3/norm1b/beta/readbatchnorm_5/mul_1*
T0*
_output_shapes
: 
t
batchnorm_5/add_1Addbatchnorm_5/mulbatchnorm_5/sub*/
_output_shapes
:���������		 *
T0
k
mul_26Mulbatchnorm_5/add_1strided_slice_5*
T0*/
_output_shapes
:���������		 
P
Relu_5Relumul_26*
T0*/
_output_shapes
:���������		 
h
Reshape_7/shapeConst*%
valueB"����         *
dtype0*
_output_shapes
:
f
	Reshape_7ReshapeSum_1Reshape_7/shape*
T0*/
_output_shapes
:���������
h
Reshape_8/shapeConst*%
valueB"����         *
dtype0*
_output_shapes
:
e
	Reshape_8ReshapeSqrtReshape_8/shape*
T0*/
_output_shapes
:���������
i
Sum_14/reduction_indicesConst*
valueB"      *
dtype0*
_output_shapes
:
z
Sum_14SumRelu_5Sum_14/reduction_indices*/
_output_shapes
:��������� *
	keep_dims(*
T0
b

truediv_12RealDivSum_14	Reshape_7*
T0*/
_output_shapes
:��������� 
f
Max/reduction_indicesConst*
_output_shapes
:*
valueB"      *
dtype0
t
MaxMaxRelu_5Max/reduction_indices*
T0*/
_output_shapes
:��������� *
	keep_dims(
L
sub_6/yConst*
_output_shapes
: *
valueB
 *  `A*
dtype0
Z
sub_6Sub	Reshape_8sub_6/y*/
_output_shapes
:���������*
T0
Q
truediv_13/yConst*
valueB
 *   A*
dtype0*
_output_shapes
: 
d

truediv_13RealDivsub_6truediv_13/y*
T0*/
_output_shapes
:���������
_
mul_27Mul
truediv_12
truediv_13*/
_output_shapes
:��������� *
T0
M
concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
{
concatConcatV2
truediv_12mul_27Maxconcat/axis*/
_output_shapes
:���������`*
T0*
N
i
truncated_normal_8/shapeConst*
valueB"`   @   *
dtype0*
_output_shapes
:
\
truncated_normal_8/meanConst*
_output_shapes
: *
valueB
 *    *
dtype0
^
truncated_normal_8/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *:�>
�
"truncated_normal_8/TruncatedNormalTruncatedNormaltruncated_normal_8/shape*
T0*
dtype0*
_output_shapes

:`@
�
truncated_normal_8/mulMul"truncated_normal_8/TruncatedNormaltruncated_normal_8/stddev*
_output_shapes

:`@*
T0
s
truncated_normal_8Addtruncated_normal_8/multruncated_normal_8/mean*
T0*
_output_shapes

:`@
M
mul_28/yConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
T
mul_28Multruncated_normal_8mul_28/y*
_output_shapes

:`@*
T0
Z

rconv3/w1r
VariableV2*
dtype0*
_output_shapes

:`@*
shape
:`@
w
rconv3/w1r/AssignAssign
rconv3/w1rmul_28*
T0*
_class
loc:@rconv3/w1r*
_output_shapes

:`@
o
rconv3/w1r/readIdentity
rconv3/w1r*
T0*
_class
loc:@rconv3/w1r*
_output_shapes

:`@
Z
Tensordot_2/axesConst*
valueB:*
dtype0*
_output_shapes
:
e
Tensordot_2/freeConst*
_output_shapes
:*!
valueB"          *
dtype0
G
Tensordot_2/ShapeShapeconcat*
_output_shapes
:*
T0
[
Tensordot_2/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
Tensordot_2/GatherV2GatherV2Tensordot_2/ShapeTensordot_2/freeTensordot_2/GatherV2/axis*
Tindices0*
Tparams0*
_output_shapes
:*
Taxis0
]
Tensordot_2/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
Tensordot_2/GatherV2_1GatherV2Tensordot_2/ShapeTensordot_2/axesTensordot_2/GatherV2_1/axis*
Tindices0*
Tparams0*
_output_shapes
:*
Taxis0
[
Tensordot_2/ConstConst*
valueB: *
dtype0*
_output_shapes
:
b
Tensordot_2/ProdProdTensordot_2/GatherV2Tensordot_2/Const*
_output_shapes
: *
T0
]
Tensordot_2/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
h
Tensordot_2/Prod_1ProdTensordot_2/GatherV2_1Tensordot_2/Const_1*
T0*
_output_shapes
: 
Y
Tensordot_2/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
Tensordot_2/concatConcatV2Tensordot_2/freeTensordot_2/axesTensordot_2/concat/axis*
T0*
N*
_output_shapes
:
m
Tensordot_2/stackPackTensordot_2/ProdTensordot_2/Prod_1*
T0*
N*
_output_shapes
:
x
Tensordot_2/transpose	TransposeconcatTensordot_2/concat*
T0*/
_output_shapes
:���������`
�
Tensordot_2/ReshapeReshapeTensordot_2/transposeTensordot_2/stack*
T0*0
_output_shapes
:������������������
m
Tensordot_2/transpose_1/permConst*
dtype0*
_output_shapes
:*
valueB"       
|
Tensordot_2/transpose_1	Transposerconv3/w1r/readTensordot_2/transpose_1/perm*
_output_shapes

:`@*
T0
l
Tensordot_2/Reshape_1/shapeConst*
valueB"`   @   *
dtype0*
_output_shapes
:

Tensordot_2/Reshape_1ReshapeTensordot_2/transpose_1Tensordot_2/Reshape_1/shape*
T0*
_output_shapes

:`@
z
Tensordot_2/MatMulMatMulTensordot_2/ReshapeTensordot_2/Reshape_1*
T0*'
_output_shapes
:���������@
]
Tensordot_2/Const_2Const*
valueB:@*
dtype0*
_output_shapes
:
[
Tensordot_2/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
Tensordot_2/concat_1ConcatV2Tensordot_2/GatherV2Tensordot_2/Const_2Tensordot_2/concat_1/axis*
N*
_output_shapes
:*
T0
z
Tensordot_2ReshapeTensordot_2/MatMulTensordot_2/concat_1*/
_output_shapes
:���������@*
T0
]
add_4AddConv2D_5Tensordot_2*/
_output_shapes
:���������		@*
T0
U
zeros_13Const*
_output_shapes
:@*
valueB@*    *
dtype0
`
rconv3/norm2/moving_mean
VariableV2*
_output_shapes
:@*
shape:@*
dtype0
�
rconv3/norm2/moving_mean/AssignAssignrconv3/norm2/moving_meanzeros_13*
T0*+
_class!
loc:@rconv3/norm2/moving_mean*
_output_shapes
:@
�
rconv3/norm2/moving_mean/readIdentityrconv3/norm2/moving_mean*
T0*+
_class!
loc:@rconv3/norm2/moving_mean*
_output_shapes
:@
S
ones_6Const*
valueB@*  �?*
dtype0*
_output_shapes
:@
d
rconv3/norm2/moving_variance
VariableV2*
_output_shapes
:@*
shape:@*
dtype0
�
#rconv3/norm2/moving_variance/AssignAssignrconv3/norm2/moving_varianceones_6*/
_class%
#!loc:@rconv3/norm2/moving_variance*
_output_shapes
:@*
T0
�
!rconv3/norm2/moving_variance/readIdentityrconv3/norm2/moving_variance*
T0*/
_class%
#!loc:@rconv3/norm2/moving_variance*
_output_shapes
:@
U
zeros_14Const*
_output_shapes
:@*
valueB@*    *
dtype0
Y
rconv3/norm2/beta
VariableV2*
shape:@*
dtype0*
_output_shapes
:@
�
rconv3/norm2/beta/AssignAssignrconv3/norm2/betazeros_14*
T0*$
_class
loc:@rconv3/norm2/beta*
_output_shapes
:@
�
rconv3/norm2/beta/readIdentityrconv3/norm2/beta*
T0*$
_class
loc:@rconv3/norm2/beta*
_output_shapes
:@
_
mul_29Muladd_4strided_slice_5*
T0*/
_output_shapes
:���������		@
m
Sum_15/reduction_indicesConst*!
valueB"          *
dtype0*
_output_shapes
:
T
Sum_15Summul_29Sum_15/reduction_indices*
_output_shapes
:@*
T0
G

truediv_14RealDivSum_15Sum*
T0*
_output_shapes
:@
Y
sub_7Subadd_4
truediv_14*
T0*/
_output_shapes
:���������		@
_
mul_30Mulsub_7strided_slice_5*
T0*/
_output_shapes
:���������		@
T
Square_6Squaremul_30*
T0*/
_output_shapes
:���������		@
m
Sum_16/reduction_indicesConst*!
valueB"          *
dtype0*
_output_shapes
:
V
Sum_16SumSquare_6Sum_16/reduction_indices*
T0*
_output_shapes
:@
G

truediv_15RealDivSum_16Sum*
T0*
_output_shapes
:@
�
AssignMovingAvg_12/decayConst*
valueB
 *o;*+
_class!
loc:@rconv3/norm2/moving_mean*
dtype0*
_output_shapes
: 
�
1AssignMovingAvg_12/rconv3/norm2/moving_mean/zerosConst*
valueB@*    *+
_class!
loc:@rconv3/norm2/moving_mean*
dtype0*
_output_shapes
:@
�
rconv3/norm2/moving_mean/biased
VariableV2*
dtype0*
_output_shapes
:@*+
_class!
loc:@rconv3/norm2/moving_mean*
shape:@
�
&rconv3/norm2/moving_mean/biased/AssignAssignrconv3/norm2/moving_mean/biased1AssignMovingAvg_12/rconv3/norm2/moving_mean/zeros*
_output_shapes
:@*
T0*+
_class!
loc:@rconv3/norm2/moving_mean
�
$rconv3/norm2/moving_mean/biased/readIdentityrconv3/norm2/moving_mean/biased*
_output_shapes
:@*
T0*+
_class!
loc:@rconv3/norm2/moving_mean
�
5rconv3/norm2/moving_mean/local_step/Initializer/zerosConst*
valueB
 *    *+
_class!
loc:@rconv3/norm2/moving_mean*
dtype0*
_output_shapes
: 
�
#rconv3/norm2/moving_mean/local_step
VariableV2*+
_class!
loc:@rconv3/norm2/moving_mean*
shape: *
dtype0*
_output_shapes
: 
�
*rconv3/norm2/moving_mean/local_step/AssignAssign#rconv3/norm2/moving_mean/local_step5rconv3/norm2/moving_mean/local_step/Initializer/zeros*
T0*+
_class!
loc:@rconv3/norm2/moving_mean*
_output_shapes
: 
�
(rconv3/norm2/moving_mean/local_step/readIdentity#rconv3/norm2/moving_mean/local_step*
T0*+
_class!
loc:@rconv3/norm2/moving_mean*
_output_shapes
: 
�
/AssignMovingAvg_12/rconv3/norm2/moving_mean/subSub$rconv3/norm2/moving_mean/biased/read
truediv_14*
_output_shapes
:@*
T0*+
_class!
loc:@rconv3/norm2/moving_mean
�
/AssignMovingAvg_12/rconv3/norm2/moving_mean/mulMul/AssignMovingAvg_12/rconv3/norm2/moving_mean/subAssignMovingAvg_12/decay*
T0*+
_class!
loc:@rconv3/norm2/moving_mean*
_output_shapes
:@
�
DAssignMovingAvg_12/rconv3/norm2/moving_mean/rconv3/norm2/moving_mean	AssignSubrconv3/norm2/moving_mean/biased/AssignMovingAvg_12/rconv3/norm2/moving_mean/mul*
T0*+
_class!
loc:@rconv3/norm2/moving_mean*
_output_shapes
:@
�
;AssignMovingAvg_12/rconv3/norm2/moving_mean/AssignAdd/valueConst*
valueB
 *  �?*+
_class!
loc:@rconv3/norm2/moving_mean*
dtype0*
_output_shapes
: 
�
5AssignMovingAvg_12/rconv3/norm2/moving_mean/AssignAdd	AssignAdd#rconv3/norm2/moving_mean/local_step;AssignMovingAvg_12/rconv3/norm2/moving_mean/AssignAdd/value*
T0*+
_class!
loc:@rconv3/norm2/moving_mean*
_output_shapes
: 
�
0AssignMovingAvg_12/rconv3/norm2/moving_mean/readIdentityrconv3/norm2/moving_mean/biased6^AssignMovingAvg_12/rconv3/norm2/moving_mean/AssignAddE^AssignMovingAvg_12/rconv3/norm2/moving_mean/rconv3/norm2/moving_mean*
T0*+
_class!
loc:@rconv3/norm2/moving_mean*
_output_shapes
:@
�
3AssignMovingAvg_12/rconv3/norm2/moving_mean/sub_1/xConst6^AssignMovingAvg_12/rconv3/norm2/moving_mean/AssignAddE^AssignMovingAvg_12/rconv3/norm2/moving_mean/rconv3/norm2/moving_mean*
valueB
 *  �?*+
_class!
loc:@rconv3/norm2/moving_mean*
dtype0*
_output_shapes
: 
�
1AssignMovingAvg_12/rconv3/norm2/moving_mean/sub_1Sub3AssignMovingAvg_12/rconv3/norm2/moving_mean/sub_1/xAssignMovingAvg_12/decay*+
_class!
loc:@rconv3/norm2/moving_mean*
_output_shapes
: *
T0
�
2AssignMovingAvg_12/rconv3/norm2/moving_mean/read_1Identity#rconv3/norm2/moving_mean/local_step6^AssignMovingAvg_12/rconv3/norm2/moving_mean/AssignAddE^AssignMovingAvg_12/rconv3/norm2/moving_mean/rconv3/norm2/moving_mean*
T0*+
_class!
loc:@rconv3/norm2/moving_mean*
_output_shapes
: 
�
/AssignMovingAvg_12/rconv3/norm2/moving_mean/PowPow1AssignMovingAvg_12/rconv3/norm2/moving_mean/sub_12AssignMovingAvg_12/rconv3/norm2/moving_mean/read_1*
_output_shapes
: *
T0*+
_class!
loc:@rconv3/norm2/moving_mean
�
3AssignMovingAvg_12/rconv3/norm2/moving_mean/sub_2/xConst6^AssignMovingAvg_12/rconv3/norm2/moving_mean/AssignAddE^AssignMovingAvg_12/rconv3/norm2/moving_mean/rconv3/norm2/moving_mean*
valueB
 *  �?*+
_class!
loc:@rconv3/norm2/moving_mean*
dtype0*
_output_shapes
: 
�
1AssignMovingAvg_12/rconv3/norm2/moving_mean/sub_2Sub3AssignMovingAvg_12/rconv3/norm2/moving_mean/sub_2/x/AssignMovingAvg_12/rconv3/norm2/moving_mean/Pow*
_output_shapes
: *
T0*+
_class!
loc:@rconv3/norm2/moving_mean
�
3AssignMovingAvg_12/rconv3/norm2/moving_mean/truedivRealDiv0AssignMovingAvg_12/rconv3/norm2/moving_mean/read1AssignMovingAvg_12/rconv3/norm2/moving_mean/sub_2*
T0*+
_class!
loc:@rconv3/norm2/moving_mean*
_output_shapes
:@
�
1AssignMovingAvg_12/rconv3/norm2/moving_mean/sub_3Subrconv3/norm2/moving_mean/read3AssignMovingAvg_12/rconv3/norm2/moving_mean/truediv*+
_class!
loc:@rconv3/norm2/moving_mean*
_output_shapes
:@*
T0
�
AssignMovingAvg_12	AssignSubrconv3/norm2/moving_mean1AssignMovingAvg_12/rconv3/norm2/moving_mean/sub_3*
_output_shapes
:@*
T0*+
_class!
loc:@rconv3/norm2/moving_mean
�
AssignMovingAvg_13/decayConst*
valueB
 *o;*/
_class%
#!loc:@rconv3/norm2/moving_variance*
dtype0*
_output_shapes
: 
�
5AssignMovingAvg_13/rconv3/norm2/moving_variance/zerosConst*
valueB@*    */
_class%
#!loc:@rconv3/norm2/moving_variance*
dtype0*
_output_shapes
:@
�
#rconv3/norm2/moving_variance/biased
VariableV2*/
_class%
#!loc:@rconv3/norm2/moving_variance*
shape:@*
dtype0*
_output_shapes
:@
�
*rconv3/norm2/moving_variance/biased/AssignAssign#rconv3/norm2/moving_variance/biased5AssignMovingAvg_13/rconv3/norm2/moving_variance/zeros*
_output_shapes
:@*
T0*/
_class%
#!loc:@rconv3/norm2/moving_variance
�
(rconv3/norm2/moving_variance/biased/readIdentity#rconv3/norm2/moving_variance/biased*
_output_shapes
:@*
T0*/
_class%
#!loc:@rconv3/norm2/moving_variance
�
9rconv3/norm2/moving_variance/local_step/Initializer/zerosConst*
valueB
 *    */
_class%
#!loc:@rconv3/norm2/moving_variance*
dtype0*
_output_shapes
: 
�
'rconv3/norm2/moving_variance/local_step
VariableV2*/
_class%
#!loc:@rconv3/norm2/moving_variance*
shape: *
dtype0*
_output_shapes
: 
�
.rconv3/norm2/moving_variance/local_step/AssignAssign'rconv3/norm2/moving_variance/local_step9rconv3/norm2/moving_variance/local_step/Initializer/zeros*
T0*/
_class%
#!loc:@rconv3/norm2/moving_variance*
_output_shapes
: 
�
,rconv3/norm2/moving_variance/local_step/readIdentity'rconv3/norm2/moving_variance/local_step*
T0*/
_class%
#!loc:@rconv3/norm2/moving_variance*
_output_shapes
: 
�
3AssignMovingAvg_13/rconv3/norm2/moving_variance/subSub(rconv3/norm2/moving_variance/biased/read
truediv_15*
T0*/
_class%
#!loc:@rconv3/norm2/moving_variance*
_output_shapes
:@
�
3AssignMovingAvg_13/rconv3/norm2/moving_variance/mulMul3AssignMovingAvg_13/rconv3/norm2/moving_variance/subAssignMovingAvg_13/decay*
T0*/
_class%
#!loc:@rconv3/norm2/moving_variance*
_output_shapes
:@
�
LAssignMovingAvg_13/rconv3/norm2/moving_variance/rconv3/norm2/moving_variance	AssignSub#rconv3/norm2/moving_variance/biased3AssignMovingAvg_13/rconv3/norm2/moving_variance/mul*/
_class%
#!loc:@rconv3/norm2/moving_variance*
_output_shapes
:@*
T0
�
?AssignMovingAvg_13/rconv3/norm2/moving_variance/AssignAdd/valueConst*
valueB
 *  �?*/
_class%
#!loc:@rconv3/norm2/moving_variance*
dtype0*
_output_shapes
: 
�
9AssignMovingAvg_13/rconv3/norm2/moving_variance/AssignAdd	AssignAdd'rconv3/norm2/moving_variance/local_step?AssignMovingAvg_13/rconv3/norm2/moving_variance/AssignAdd/value*/
_class%
#!loc:@rconv3/norm2/moving_variance*
_output_shapes
: *
T0
�
4AssignMovingAvg_13/rconv3/norm2/moving_variance/readIdentity#rconv3/norm2/moving_variance/biased:^AssignMovingAvg_13/rconv3/norm2/moving_variance/AssignAddM^AssignMovingAvg_13/rconv3/norm2/moving_variance/rconv3/norm2/moving_variance*
T0*/
_class%
#!loc:@rconv3/norm2/moving_variance*
_output_shapes
:@
�
7AssignMovingAvg_13/rconv3/norm2/moving_variance/sub_1/xConst:^AssignMovingAvg_13/rconv3/norm2/moving_variance/AssignAddM^AssignMovingAvg_13/rconv3/norm2/moving_variance/rconv3/norm2/moving_variance*
valueB
 *  �?*/
_class%
#!loc:@rconv3/norm2/moving_variance*
dtype0*
_output_shapes
: 
�
5AssignMovingAvg_13/rconv3/norm2/moving_variance/sub_1Sub7AssignMovingAvg_13/rconv3/norm2/moving_variance/sub_1/xAssignMovingAvg_13/decay*
_output_shapes
: *
T0*/
_class%
#!loc:@rconv3/norm2/moving_variance
�
6AssignMovingAvg_13/rconv3/norm2/moving_variance/read_1Identity'rconv3/norm2/moving_variance/local_step:^AssignMovingAvg_13/rconv3/norm2/moving_variance/AssignAddM^AssignMovingAvg_13/rconv3/norm2/moving_variance/rconv3/norm2/moving_variance*/
_class%
#!loc:@rconv3/norm2/moving_variance*
_output_shapes
: *
T0
�
3AssignMovingAvg_13/rconv3/norm2/moving_variance/PowPow5AssignMovingAvg_13/rconv3/norm2/moving_variance/sub_16AssignMovingAvg_13/rconv3/norm2/moving_variance/read_1*
T0*/
_class%
#!loc:@rconv3/norm2/moving_variance*
_output_shapes
: 
�
7AssignMovingAvg_13/rconv3/norm2/moving_variance/sub_2/xConst:^AssignMovingAvg_13/rconv3/norm2/moving_variance/AssignAddM^AssignMovingAvg_13/rconv3/norm2/moving_variance/rconv3/norm2/moving_variance*
valueB
 *  �?*/
_class%
#!loc:@rconv3/norm2/moving_variance*
dtype0*
_output_shapes
: 
�
5AssignMovingAvg_13/rconv3/norm2/moving_variance/sub_2Sub7AssignMovingAvg_13/rconv3/norm2/moving_variance/sub_2/x3AssignMovingAvg_13/rconv3/norm2/moving_variance/Pow*
T0*/
_class%
#!loc:@rconv3/norm2/moving_variance*
_output_shapes
: 
�
7AssignMovingAvg_13/rconv3/norm2/moving_variance/truedivRealDiv4AssignMovingAvg_13/rconv3/norm2/moving_variance/read5AssignMovingAvg_13/rconv3/norm2/moving_variance/sub_2*
T0*/
_class%
#!loc:@rconv3/norm2/moving_variance*
_output_shapes
:@
�
5AssignMovingAvg_13/rconv3/norm2/moving_variance/sub_3Sub!rconv3/norm2/moving_variance/read7AssignMovingAvg_13/rconv3/norm2/moving_variance/truediv*
T0*/
_class%
#!loc:@rconv3/norm2/moving_variance*
_output_shapes
:@
�
AssignMovingAvg_13	AssignSubrconv3/norm2/moving_variance5AssignMovingAvg_13/rconv3/norm2/moving_variance/sub_3*
_output_shapes
:@*
T0*/
_class%
#!loc:@rconv3/norm2/moving_variance
L
cond_9/SwitchSwitchConst_2Const_2*
T0
*
_output_shapes
: : 
M
cond_9/switch_tIdentitycond_9/Switch:1*
T0
*
_output_shapes
: 
K
cond_9/switch_fIdentitycond_9/Switch*
T0
*
_output_shapes
: 
D
cond_9/pred_idIdentityConst_2*
T0
*
_output_shapes
: 

cond_9/Switch_1Switch
truediv_14cond_9/pred_id*
T0*
_class
loc:@truediv_14* 
_output_shapes
:@:@

cond_9/Switch_2Switch
truediv_15cond_9/pred_id* 
_output_shapes
:@:@*
T0*
_class
loc:@truediv_15
�
cond_9/Switch_3Switchrconv3/norm2/moving_mean/readcond_9/pred_id* 
_output_shapes
:@:@*
T0*+
_class!
loc:@rconv3/norm2/moving_mean
�
cond_9/Switch_4Switch!rconv3/norm2/moving_variance/readcond_9/pred_id*
T0*/
_class%
#!loc:@rconv3/norm2/moving_variance* 
_output_shapes
:@:@
i
cond_9/MergeMergecond_9/Switch_3cond_9/Switch_1:1*
T0*
N*
_output_shapes

:@: 
k
cond_9/Merge_1Mergecond_9/Switch_4cond_9/Switch_2:1*
T0*
N*
_output_shapes

:@: 
V
batchnorm_6/add/yConst*
_output_shapes
: *
valueB
 *o�:*
dtype0
^
batchnorm_6/addAddcond_9/Merge_1batchnorm_6/add/y*
T0*
_output_shapes
:@
P
batchnorm_6/RsqrtRsqrtbatchnorm_6/add*
T0*
_output_shapes
:@
j
batchnorm_6/mulMuladd_4batchnorm_6/Rsqrt*
T0*/
_output_shapes
:���������		@
^
batchnorm_6/mul_1Mulcond_9/Mergebatchnorm_6/Rsqrt*
T0*
_output_shapes
:@
f
batchnorm_6/subSubrconv3/norm2/beta/readbatchnorm_6/mul_1*
T0*
_output_shapes
:@
t
batchnorm_6/add_1Addbatchnorm_6/mulbatchnorm_6/sub*/
_output_shapes
:���������		@*
T0
k
mul_31Mulbatchnorm_6/add_1strided_slice_5*
T0*/
_output_shapes
:���������		@
P
Relu_6Relumul_31*
T0*/
_output_shapes
:���������		@
q
truncated_normal_9/shapeConst*%
valueB"      @   `   *
dtype0*
_output_shapes
:
\
truncated_normal_9/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
^
truncated_normal_9/stddevConst*
_output_shapes
: *
valueB
 *�[q=*
dtype0
�
"truncated_normal_9/TruncatedNormalTruncatedNormaltruncated_normal_9/shape*
T0*
dtype0*&
_output_shapes
:@`
�
truncated_normal_9/mulMul"truncated_normal_9/TruncatedNormaltruncated_normal_9/stddev*
T0*&
_output_shapes
:@`
{
truncated_normal_9Addtruncated_normal_9/multruncated_normal_9/mean*&
_output_shapes
:@`*
T0
M
mul_32/yConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
\
mul_32Multruncated_normal_9mul_32/y*
T0*&
_output_shapes
:@`
i
	rconv3/w2
VariableV2*
shape:@`*
dtype0*&
_output_shapes
:@`
|
rconv3/w2/AssignAssign	rconv3/w2mul_32*&
_output_shapes
:@`*
T0*
_class
loc:@rconv3/w2
t
rconv3/w2/readIdentity	rconv3/w2*
T0*
_class
loc:@rconv3/w2*&
_output_shapes
:@`
�
Conv2D_7Conv2DRelu_6rconv3/w2/read*
paddingSAME*/
_output_shapes
:���������		`*
T0*
strides

W
add_5Addadd_3Conv2D_7*
T0*/
_output_shapes
:���������		`
U
zeros_15Const*
_output_shapes
:`*
valueB`*    *
dtype0
`
rconv4/norm1/moving_mean
VariableV2*
dtype0*
_output_shapes
:`*
shape:`
�
rconv4/norm1/moving_mean/AssignAssignrconv4/norm1/moving_meanzeros_15*
_output_shapes
:`*
T0*+
_class!
loc:@rconv4/norm1/moving_mean
�
rconv4/norm1/moving_mean/readIdentityrconv4/norm1/moving_mean*
_output_shapes
:`*
T0*+
_class!
loc:@rconv4/norm1/moving_mean
S
ones_7Const*
dtype0*
_output_shapes
:`*
valueB`*  �?
d
rconv4/norm1/moving_variance
VariableV2*
shape:`*
dtype0*
_output_shapes
:`
�
#rconv4/norm1/moving_variance/AssignAssignrconv4/norm1/moving_varianceones_7*
T0*/
_class%
#!loc:@rconv4/norm1/moving_variance*
_output_shapes
:`
�
!rconv4/norm1/moving_variance/readIdentityrconv4/norm1/moving_variance*
T0*/
_class%
#!loc:@rconv4/norm1/moving_variance*
_output_shapes
:`
U
zeros_16Const*
_output_shapes
:`*
valueB`*    *
dtype0
Y
rconv4/norm1/beta
VariableV2*
_output_shapes
:`*
shape:`*
dtype0
�
rconv4/norm1/beta/AssignAssignrconv4/norm1/betazeros_16*$
_class
loc:@rconv4/norm1/beta*
_output_shapes
:`*
T0
�
rconv4/norm1/beta/readIdentityrconv4/norm1/beta*
T0*$
_class
loc:@rconv4/norm1/beta*
_output_shapes
:`
_
mul_33Muladd_5strided_slice_5*/
_output_shapes
:���������		`*
T0
m
Sum_17/reduction_indicesConst*!
valueB"          *
dtype0*
_output_shapes
:
T
Sum_17Summul_33Sum_17/reduction_indices*
T0*
_output_shapes
:`
G

truediv_16RealDivSum_17Sum*
_output_shapes
:`*
T0
Y
sub_8Subadd_5
truediv_16*
T0*/
_output_shapes
:���������		`
_
mul_34Mulsub_8strided_slice_5*
T0*/
_output_shapes
:���������		`
T
Square_7Squaremul_34*
T0*/
_output_shapes
:���������		`
m
Sum_18/reduction_indicesConst*
dtype0*
_output_shapes
:*!
valueB"          
V
Sum_18SumSquare_7Sum_18/reduction_indices*
T0*
_output_shapes
:`
G

truediv_17RealDivSum_18Sum*
T0*
_output_shapes
:`
�
AssignMovingAvg_14/decayConst*
valueB
 *o;*+
_class!
loc:@rconv4/norm1/moving_mean*
dtype0*
_output_shapes
: 
�
1AssignMovingAvg_14/rconv4/norm1/moving_mean/zerosConst*
valueB`*    *+
_class!
loc:@rconv4/norm1/moving_mean*
dtype0*
_output_shapes
:`
�
rconv4/norm1/moving_mean/biased
VariableV2*+
_class!
loc:@rconv4/norm1/moving_mean*
shape:`*
dtype0*
_output_shapes
:`
�
&rconv4/norm1/moving_mean/biased/AssignAssignrconv4/norm1/moving_mean/biased1AssignMovingAvg_14/rconv4/norm1/moving_mean/zeros*
T0*+
_class!
loc:@rconv4/norm1/moving_mean*
_output_shapes
:`
�
$rconv4/norm1/moving_mean/biased/readIdentityrconv4/norm1/moving_mean/biased*
T0*+
_class!
loc:@rconv4/norm1/moving_mean*
_output_shapes
:`
�
5rconv4/norm1/moving_mean/local_step/Initializer/zerosConst*
valueB
 *    *+
_class!
loc:@rconv4/norm1/moving_mean*
dtype0*
_output_shapes
: 
�
#rconv4/norm1/moving_mean/local_step
VariableV2*
shape: *
dtype0*
_output_shapes
: *+
_class!
loc:@rconv4/norm1/moving_mean
�
*rconv4/norm1/moving_mean/local_step/AssignAssign#rconv4/norm1/moving_mean/local_step5rconv4/norm1/moving_mean/local_step/Initializer/zeros*
_output_shapes
: *
T0*+
_class!
loc:@rconv4/norm1/moving_mean
�
(rconv4/norm1/moving_mean/local_step/readIdentity#rconv4/norm1/moving_mean/local_step*
_output_shapes
: *
T0*+
_class!
loc:@rconv4/norm1/moving_mean
�
/AssignMovingAvg_14/rconv4/norm1/moving_mean/subSub$rconv4/norm1/moving_mean/biased/read
truediv_16*+
_class!
loc:@rconv4/norm1/moving_mean*
_output_shapes
:`*
T0
�
/AssignMovingAvg_14/rconv4/norm1/moving_mean/mulMul/AssignMovingAvg_14/rconv4/norm1/moving_mean/subAssignMovingAvg_14/decay*
_output_shapes
:`*
T0*+
_class!
loc:@rconv4/norm1/moving_mean
�
DAssignMovingAvg_14/rconv4/norm1/moving_mean/rconv4/norm1/moving_mean	AssignSubrconv4/norm1/moving_mean/biased/AssignMovingAvg_14/rconv4/norm1/moving_mean/mul*
T0*+
_class!
loc:@rconv4/norm1/moving_mean*
_output_shapes
:`
�
;AssignMovingAvg_14/rconv4/norm1/moving_mean/AssignAdd/valueConst*
valueB
 *  �?*+
_class!
loc:@rconv4/norm1/moving_mean*
dtype0*
_output_shapes
: 
�
5AssignMovingAvg_14/rconv4/norm1/moving_mean/AssignAdd	AssignAdd#rconv4/norm1/moving_mean/local_step;AssignMovingAvg_14/rconv4/norm1/moving_mean/AssignAdd/value*
T0*+
_class!
loc:@rconv4/norm1/moving_mean*
_output_shapes
: 
�
0AssignMovingAvg_14/rconv4/norm1/moving_mean/readIdentityrconv4/norm1/moving_mean/biased6^AssignMovingAvg_14/rconv4/norm1/moving_mean/AssignAddE^AssignMovingAvg_14/rconv4/norm1/moving_mean/rconv4/norm1/moving_mean*+
_class!
loc:@rconv4/norm1/moving_mean*
_output_shapes
:`*
T0
�
3AssignMovingAvg_14/rconv4/norm1/moving_mean/sub_1/xConst6^AssignMovingAvg_14/rconv4/norm1/moving_mean/AssignAddE^AssignMovingAvg_14/rconv4/norm1/moving_mean/rconv4/norm1/moving_mean*
valueB
 *  �?*+
_class!
loc:@rconv4/norm1/moving_mean*
dtype0*
_output_shapes
: 
�
1AssignMovingAvg_14/rconv4/norm1/moving_mean/sub_1Sub3AssignMovingAvg_14/rconv4/norm1/moving_mean/sub_1/xAssignMovingAvg_14/decay*
T0*+
_class!
loc:@rconv4/norm1/moving_mean*
_output_shapes
: 
�
2AssignMovingAvg_14/rconv4/norm1/moving_mean/read_1Identity#rconv4/norm1/moving_mean/local_step6^AssignMovingAvg_14/rconv4/norm1/moving_mean/AssignAddE^AssignMovingAvg_14/rconv4/norm1/moving_mean/rconv4/norm1/moving_mean*
T0*+
_class!
loc:@rconv4/norm1/moving_mean*
_output_shapes
: 
�
/AssignMovingAvg_14/rconv4/norm1/moving_mean/PowPow1AssignMovingAvg_14/rconv4/norm1/moving_mean/sub_12AssignMovingAvg_14/rconv4/norm1/moving_mean/read_1*
_output_shapes
: *
T0*+
_class!
loc:@rconv4/norm1/moving_mean
�
3AssignMovingAvg_14/rconv4/norm1/moving_mean/sub_2/xConst6^AssignMovingAvg_14/rconv4/norm1/moving_mean/AssignAddE^AssignMovingAvg_14/rconv4/norm1/moving_mean/rconv4/norm1/moving_mean*
dtype0*
_output_shapes
: *
valueB
 *  �?*+
_class!
loc:@rconv4/norm1/moving_mean
�
1AssignMovingAvg_14/rconv4/norm1/moving_mean/sub_2Sub3AssignMovingAvg_14/rconv4/norm1/moving_mean/sub_2/x/AssignMovingAvg_14/rconv4/norm1/moving_mean/Pow*
T0*+
_class!
loc:@rconv4/norm1/moving_mean*
_output_shapes
: 
�
3AssignMovingAvg_14/rconv4/norm1/moving_mean/truedivRealDiv0AssignMovingAvg_14/rconv4/norm1/moving_mean/read1AssignMovingAvg_14/rconv4/norm1/moving_mean/sub_2*
T0*+
_class!
loc:@rconv4/norm1/moving_mean*
_output_shapes
:`
�
1AssignMovingAvg_14/rconv4/norm1/moving_mean/sub_3Subrconv4/norm1/moving_mean/read3AssignMovingAvg_14/rconv4/norm1/moving_mean/truediv*
_output_shapes
:`*
T0*+
_class!
loc:@rconv4/norm1/moving_mean
�
AssignMovingAvg_14	AssignSubrconv4/norm1/moving_mean1AssignMovingAvg_14/rconv4/norm1/moving_mean/sub_3*
T0*+
_class!
loc:@rconv4/norm1/moving_mean*
_output_shapes
:`
�
AssignMovingAvg_15/decayConst*
valueB
 *o;*/
_class%
#!loc:@rconv4/norm1/moving_variance*
dtype0*
_output_shapes
: 
�
5AssignMovingAvg_15/rconv4/norm1/moving_variance/zerosConst*
_output_shapes
:`*
valueB`*    */
_class%
#!loc:@rconv4/norm1/moving_variance*
dtype0
�
#rconv4/norm1/moving_variance/biased
VariableV2*/
_class%
#!loc:@rconv4/norm1/moving_variance*
shape:`*
dtype0*
_output_shapes
:`
�
*rconv4/norm1/moving_variance/biased/AssignAssign#rconv4/norm1/moving_variance/biased5AssignMovingAvg_15/rconv4/norm1/moving_variance/zeros*
T0*/
_class%
#!loc:@rconv4/norm1/moving_variance*
_output_shapes
:`
�
(rconv4/norm1/moving_variance/biased/readIdentity#rconv4/norm1/moving_variance/biased*
T0*/
_class%
#!loc:@rconv4/norm1/moving_variance*
_output_shapes
:`
�
9rconv4/norm1/moving_variance/local_step/Initializer/zerosConst*
valueB
 *    */
_class%
#!loc:@rconv4/norm1/moving_variance*
dtype0*
_output_shapes
: 
�
'rconv4/norm1/moving_variance/local_step
VariableV2*/
_class%
#!loc:@rconv4/norm1/moving_variance*
shape: *
dtype0*
_output_shapes
: 
�
.rconv4/norm1/moving_variance/local_step/AssignAssign'rconv4/norm1/moving_variance/local_step9rconv4/norm1/moving_variance/local_step/Initializer/zeros*
_output_shapes
: *
T0*/
_class%
#!loc:@rconv4/norm1/moving_variance
�
,rconv4/norm1/moving_variance/local_step/readIdentity'rconv4/norm1/moving_variance/local_step*
T0*/
_class%
#!loc:@rconv4/norm1/moving_variance*
_output_shapes
: 
�
3AssignMovingAvg_15/rconv4/norm1/moving_variance/subSub(rconv4/norm1/moving_variance/biased/read
truediv_17*/
_class%
#!loc:@rconv4/norm1/moving_variance*
_output_shapes
:`*
T0
�
3AssignMovingAvg_15/rconv4/norm1/moving_variance/mulMul3AssignMovingAvg_15/rconv4/norm1/moving_variance/subAssignMovingAvg_15/decay*
_output_shapes
:`*
T0*/
_class%
#!loc:@rconv4/norm1/moving_variance
�
LAssignMovingAvg_15/rconv4/norm1/moving_variance/rconv4/norm1/moving_variance	AssignSub#rconv4/norm1/moving_variance/biased3AssignMovingAvg_15/rconv4/norm1/moving_variance/mul*
T0*/
_class%
#!loc:@rconv4/norm1/moving_variance*
_output_shapes
:`
�
?AssignMovingAvg_15/rconv4/norm1/moving_variance/AssignAdd/valueConst*
valueB
 *  �?*/
_class%
#!loc:@rconv4/norm1/moving_variance*
dtype0*
_output_shapes
: 
�
9AssignMovingAvg_15/rconv4/norm1/moving_variance/AssignAdd	AssignAdd'rconv4/norm1/moving_variance/local_step?AssignMovingAvg_15/rconv4/norm1/moving_variance/AssignAdd/value*
_output_shapes
: *
T0*/
_class%
#!loc:@rconv4/norm1/moving_variance
�
4AssignMovingAvg_15/rconv4/norm1/moving_variance/readIdentity#rconv4/norm1/moving_variance/biased:^AssignMovingAvg_15/rconv4/norm1/moving_variance/AssignAddM^AssignMovingAvg_15/rconv4/norm1/moving_variance/rconv4/norm1/moving_variance*
_output_shapes
:`*
T0*/
_class%
#!loc:@rconv4/norm1/moving_variance
�
7AssignMovingAvg_15/rconv4/norm1/moving_variance/sub_1/xConst:^AssignMovingAvg_15/rconv4/norm1/moving_variance/AssignAddM^AssignMovingAvg_15/rconv4/norm1/moving_variance/rconv4/norm1/moving_variance*
valueB
 *  �?*/
_class%
#!loc:@rconv4/norm1/moving_variance*
dtype0*
_output_shapes
: 
�
5AssignMovingAvg_15/rconv4/norm1/moving_variance/sub_1Sub7AssignMovingAvg_15/rconv4/norm1/moving_variance/sub_1/xAssignMovingAvg_15/decay*
T0*/
_class%
#!loc:@rconv4/norm1/moving_variance*
_output_shapes
: 
�
6AssignMovingAvg_15/rconv4/norm1/moving_variance/read_1Identity'rconv4/norm1/moving_variance/local_step:^AssignMovingAvg_15/rconv4/norm1/moving_variance/AssignAddM^AssignMovingAvg_15/rconv4/norm1/moving_variance/rconv4/norm1/moving_variance*
T0*/
_class%
#!loc:@rconv4/norm1/moving_variance*
_output_shapes
: 
�
3AssignMovingAvg_15/rconv4/norm1/moving_variance/PowPow5AssignMovingAvg_15/rconv4/norm1/moving_variance/sub_16AssignMovingAvg_15/rconv4/norm1/moving_variance/read_1*/
_class%
#!loc:@rconv4/norm1/moving_variance*
_output_shapes
: *
T0
�
7AssignMovingAvg_15/rconv4/norm1/moving_variance/sub_2/xConst:^AssignMovingAvg_15/rconv4/norm1/moving_variance/AssignAddM^AssignMovingAvg_15/rconv4/norm1/moving_variance/rconv4/norm1/moving_variance*
valueB
 *  �?*/
_class%
#!loc:@rconv4/norm1/moving_variance*
dtype0*
_output_shapes
: 
�
5AssignMovingAvg_15/rconv4/norm1/moving_variance/sub_2Sub7AssignMovingAvg_15/rconv4/norm1/moving_variance/sub_2/x3AssignMovingAvg_15/rconv4/norm1/moving_variance/Pow*
T0*/
_class%
#!loc:@rconv4/norm1/moving_variance*
_output_shapes
: 
�
7AssignMovingAvg_15/rconv4/norm1/moving_variance/truedivRealDiv4AssignMovingAvg_15/rconv4/norm1/moving_variance/read5AssignMovingAvg_15/rconv4/norm1/moving_variance/sub_2*
_output_shapes
:`*
T0*/
_class%
#!loc:@rconv4/norm1/moving_variance
�
5AssignMovingAvg_15/rconv4/norm1/moving_variance/sub_3Sub!rconv4/norm1/moving_variance/read7AssignMovingAvg_15/rconv4/norm1/moving_variance/truediv*/
_class%
#!loc:@rconv4/norm1/moving_variance*
_output_shapes
:`*
T0
�
AssignMovingAvg_15	AssignSubrconv4/norm1/moving_variance5AssignMovingAvg_15/rconv4/norm1/moving_variance/sub_3*
T0*/
_class%
#!loc:@rconv4/norm1/moving_variance*
_output_shapes
:`
M
cond_10/SwitchSwitchConst_2Const_2*
_output_shapes
: : *
T0

O
cond_10/switch_tIdentitycond_10/Switch:1*
T0
*
_output_shapes
: 
M
cond_10/switch_fIdentitycond_10/Switch*
T0
*
_output_shapes
: 
E
cond_10/pred_idIdentityConst_2*
T0
*
_output_shapes
: 
�
cond_10/Switch_1Switch
truediv_16cond_10/pred_id* 
_output_shapes
:`:`*
T0*
_class
loc:@truediv_16
�
cond_10/Switch_2Switch
truediv_17cond_10/pred_id*
T0*
_class
loc:@truediv_17* 
_output_shapes
:`:`
�
cond_10/Switch_3Switchrconv4/norm1/moving_mean/readcond_10/pred_id*
T0*+
_class!
loc:@rconv4/norm1/moving_mean* 
_output_shapes
:`:`
�
cond_10/Switch_4Switch!rconv4/norm1/moving_variance/readcond_10/pred_id*
T0*/
_class%
#!loc:@rconv4/norm1/moving_variance* 
_output_shapes
:`:`
l
cond_10/MergeMergecond_10/Switch_3cond_10/Switch_1:1*
T0*
N*
_output_shapes

:`: 
n
cond_10/Merge_1Mergecond_10/Switch_4cond_10/Switch_2:1*
T0*
N*
_output_shapes

:`: 
V
batchnorm_7/add/yConst*
valueB
 *o�:*
dtype0*
_output_shapes
: 
_
batchnorm_7/addAddcond_10/Merge_1batchnorm_7/add/y*
T0*
_output_shapes
:`
P
batchnorm_7/RsqrtRsqrtbatchnorm_7/add*
T0*
_output_shapes
:`
j
batchnorm_7/mulMuladd_5batchnorm_7/Rsqrt*
T0*/
_output_shapes
:���������		`
_
batchnorm_7/mul_1Mulcond_10/Mergebatchnorm_7/Rsqrt*
T0*
_output_shapes
:`
f
batchnorm_7/subSubrconv4/norm1/beta/readbatchnorm_7/mul_1*
T0*
_output_shapes
:`
t
batchnorm_7/add_1Addbatchnorm_7/mulbatchnorm_7/sub*/
_output_shapes
:���������		`*
T0
k
mul_35Mulbatchnorm_7/add_1strided_slice_5*
T0*/
_output_shapes
:���������		`
P
Relu_7Relumul_35*/
_output_shapes
:���������		`*
T0
r
truncated_normal_10/shapeConst*%
valueB"      `   `   *
dtype0*
_output_shapes
:
]
truncated_normal_10/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
_
truncated_normal_10/stddevConst*
valueB
 *�E=*
dtype0*
_output_shapes
: 
�
#truncated_normal_10/TruncatedNormalTruncatedNormaltruncated_normal_10/shape*
T0*
dtype0*&
_output_shapes
:``
�
truncated_normal_10/mulMul#truncated_normal_10/TruncatedNormaltruncated_normal_10/stddev*
T0*&
_output_shapes
:``
~
truncated_normal_10Addtruncated_normal_10/multruncated_normal_10/mean*
T0*&
_output_shapes
:``
M
mul_36/yConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
]
mul_36Multruncated_normal_10mul_36/y*
T0*&
_output_shapes
:``
i
	rconv4/w1
VariableV2*
dtype0*&
_output_shapes
:``*
shape:``
|
rconv4/w1/AssignAssign	rconv4/w1mul_36*
T0*
_class
loc:@rconv4/w1*&
_output_shapes
:``
t
rconv4/w1/readIdentity	rconv4/w1*
_class
loc:@rconv4/w1*&
_output_shapes
:``*
T0
�
Conv2D_8Conv2DRelu_7rconv4/w1/read*
T0*
strides
*
paddingSAME*/
_output_shapes
:���������		`
U
zeros_17Const*
dtype0*
_output_shapes
:`*
valueB`*    
`
rconv4/norm2/moving_mean
VariableV2*
dtype0*
_output_shapes
:`*
shape:`
�
rconv4/norm2/moving_mean/AssignAssignrconv4/norm2/moving_meanzeros_17*
T0*+
_class!
loc:@rconv4/norm2/moving_mean*
_output_shapes
:`
�
rconv4/norm2/moving_mean/readIdentityrconv4/norm2/moving_mean*
T0*+
_class!
loc:@rconv4/norm2/moving_mean*
_output_shapes
:`
S
ones_8Const*
_output_shapes
:`*
valueB`*  �?*
dtype0
d
rconv4/norm2/moving_variance
VariableV2*
_output_shapes
:`*
shape:`*
dtype0
�
#rconv4/norm2/moving_variance/AssignAssignrconv4/norm2/moving_varianceones_8*
T0*/
_class%
#!loc:@rconv4/norm2/moving_variance*
_output_shapes
:`
�
!rconv4/norm2/moving_variance/readIdentityrconv4/norm2/moving_variance*
T0*/
_class%
#!loc:@rconv4/norm2/moving_variance*
_output_shapes
:`
U
zeros_18Const*
valueB`*    *
dtype0*
_output_shapes
:`
Y
rconv4/norm2/beta
VariableV2*
dtype0*
_output_shapes
:`*
shape:`
�
rconv4/norm2/beta/AssignAssignrconv4/norm2/betazeros_18*
T0*$
_class
loc:@rconv4/norm2/beta*
_output_shapes
:`
�
rconv4/norm2/beta/readIdentityrconv4/norm2/beta*
T0*$
_class
loc:@rconv4/norm2/beta*
_output_shapes
:`
b
mul_37MulConv2D_8strided_slice_5*/
_output_shapes
:���������		`*
T0
m
Sum_19/reduction_indicesConst*!
valueB"          *
dtype0*
_output_shapes
:
T
Sum_19Summul_37Sum_19/reduction_indices*
T0*
_output_shapes
:`
G

truediv_18RealDivSum_19Sum*
T0*
_output_shapes
:`
\
sub_9SubConv2D_8
truediv_18*
T0*/
_output_shapes
:���������		`
_
mul_38Mulsub_9strided_slice_5*/
_output_shapes
:���������		`*
T0
T
Square_8Squaremul_38*
T0*/
_output_shapes
:���������		`
m
Sum_20/reduction_indicesConst*
_output_shapes
:*!
valueB"          *
dtype0
V
Sum_20SumSquare_8Sum_20/reduction_indices*
T0*
_output_shapes
:`
G

truediv_19RealDivSum_20Sum*
T0*
_output_shapes
:`
�
AssignMovingAvg_16/decayConst*
valueB
 *o;*+
_class!
loc:@rconv4/norm2/moving_mean*
dtype0*
_output_shapes
: 
�
1AssignMovingAvg_16/rconv4/norm2/moving_mean/zerosConst*
valueB`*    *+
_class!
loc:@rconv4/norm2/moving_mean*
dtype0*
_output_shapes
:`
�
rconv4/norm2/moving_mean/biased
VariableV2*+
_class!
loc:@rconv4/norm2/moving_mean*
shape:`*
dtype0*
_output_shapes
:`
�
&rconv4/norm2/moving_mean/biased/AssignAssignrconv4/norm2/moving_mean/biased1AssignMovingAvg_16/rconv4/norm2/moving_mean/zeros*
T0*+
_class!
loc:@rconv4/norm2/moving_mean*
_output_shapes
:`
�
$rconv4/norm2/moving_mean/biased/readIdentityrconv4/norm2/moving_mean/biased*
T0*+
_class!
loc:@rconv4/norm2/moving_mean*
_output_shapes
:`
�
5rconv4/norm2/moving_mean/local_step/Initializer/zerosConst*
valueB
 *    *+
_class!
loc:@rconv4/norm2/moving_mean*
dtype0*
_output_shapes
: 
�
#rconv4/norm2/moving_mean/local_step
VariableV2*
shape: *
dtype0*
_output_shapes
: *+
_class!
loc:@rconv4/norm2/moving_mean
�
*rconv4/norm2/moving_mean/local_step/AssignAssign#rconv4/norm2/moving_mean/local_step5rconv4/norm2/moving_mean/local_step/Initializer/zeros*
T0*+
_class!
loc:@rconv4/norm2/moving_mean*
_output_shapes
: 
�
(rconv4/norm2/moving_mean/local_step/readIdentity#rconv4/norm2/moving_mean/local_step*
T0*+
_class!
loc:@rconv4/norm2/moving_mean*
_output_shapes
: 
�
/AssignMovingAvg_16/rconv4/norm2/moving_mean/subSub$rconv4/norm2/moving_mean/biased/read
truediv_18*
T0*+
_class!
loc:@rconv4/norm2/moving_mean*
_output_shapes
:`
�
/AssignMovingAvg_16/rconv4/norm2/moving_mean/mulMul/AssignMovingAvg_16/rconv4/norm2/moving_mean/subAssignMovingAvg_16/decay*
T0*+
_class!
loc:@rconv4/norm2/moving_mean*
_output_shapes
:`
�
DAssignMovingAvg_16/rconv4/norm2/moving_mean/rconv4/norm2/moving_mean	AssignSubrconv4/norm2/moving_mean/biased/AssignMovingAvg_16/rconv4/norm2/moving_mean/mul*
_output_shapes
:`*
T0*+
_class!
loc:@rconv4/norm2/moving_mean
�
;AssignMovingAvg_16/rconv4/norm2/moving_mean/AssignAdd/valueConst*
dtype0*
_output_shapes
: *
valueB
 *  �?*+
_class!
loc:@rconv4/norm2/moving_mean
�
5AssignMovingAvg_16/rconv4/norm2/moving_mean/AssignAdd	AssignAdd#rconv4/norm2/moving_mean/local_step;AssignMovingAvg_16/rconv4/norm2/moving_mean/AssignAdd/value*
T0*+
_class!
loc:@rconv4/norm2/moving_mean*
_output_shapes
: 
�
0AssignMovingAvg_16/rconv4/norm2/moving_mean/readIdentityrconv4/norm2/moving_mean/biased6^AssignMovingAvg_16/rconv4/norm2/moving_mean/AssignAddE^AssignMovingAvg_16/rconv4/norm2/moving_mean/rconv4/norm2/moving_mean*
T0*+
_class!
loc:@rconv4/norm2/moving_mean*
_output_shapes
:`
�
3AssignMovingAvg_16/rconv4/norm2/moving_mean/sub_1/xConst6^AssignMovingAvg_16/rconv4/norm2/moving_mean/AssignAddE^AssignMovingAvg_16/rconv4/norm2/moving_mean/rconv4/norm2/moving_mean*
valueB
 *  �?*+
_class!
loc:@rconv4/norm2/moving_mean*
dtype0*
_output_shapes
: 
�
1AssignMovingAvg_16/rconv4/norm2/moving_mean/sub_1Sub3AssignMovingAvg_16/rconv4/norm2/moving_mean/sub_1/xAssignMovingAvg_16/decay*
_output_shapes
: *
T0*+
_class!
loc:@rconv4/norm2/moving_mean
�
2AssignMovingAvg_16/rconv4/norm2/moving_mean/read_1Identity#rconv4/norm2/moving_mean/local_step6^AssignMovingAvg_16/rconv4/norm2/moving_mean/AssignAddE^AssignMovingAvg_16/rconv4/norm2/moving_mean/rconv4/norm2/moving_mean*
_output_shapes
: *
T0*+
_class!
loc:@rconv4/norm2/moving_mean
�
/AssignMovingAvg_16/rconv4/norm2/moving_mean/PowPow1AssignMovingAvg_16/rconv4/norm2/moving_mean/sub_12AssignMovingAvg_16/rconv4/norm2/moving_mean/read_1*+
_class!
loc:@rconv4/norm2/moving_mean*
_output_shapes
: *
T0
�
3AssignMovingAvg_16/rconv4/norm2/moving_mean/sub_2/xConst6^AssignMovingAvg_16/rconv4/norm2/moving_mean/AssignAddE^AssignMovingAvg_16/rconv4/norm2/moving_mean/rconv4/norm2/moving_mean*
valueB
 *  �?*+
_class!
loc:@rconv4/norm2/moving_mean*
dtype0*
_output_shapes
: 
�
1AssignMovingAvg_16/rconv4/norm2/moving_mean/sub_2Sub3AssignMovingAvg_16/rconv4/norm2/moving_mean/sub_2/x/AssignMovingAvg_16/rconv4/norm2/moving_mean/Pow*+
_class!
loc:@rconv4/norm2/moving_mean*
_output_shapes
: *
T0
�
3AssignMovingAvg_16/rconv4/norm2/moving_mean/truedivRealDiv0AssignMovingAvg_16/rconv4/norm2/moving_mean/read1AssignMovingAvg_16/rconv4/norm2/moving_mean/sub_2*
_output_shapes
:`*
T0*+
_class!
loc:@rconv4/norm2/moving_mean
�
1AssignMovingAvg_16/rconv4/norm2/moving_mean/sub_3Subrconv4/norm2/moving_mean/read3AssignMovingAvg_16/rconv4/norm2/moving_mean/truediv*
_output_shapes
:`*
T0*+
_class!
loc:@rconv4/norm2/moving_mean
�
AssignMovingAvg_16	AssignSubrconv4/norm2/moving_mean1AssignMovingAvg_16/rconv4/norm2/moving_mean/sub_3*
T0*+
_class!
loc:@rconv4/norm2/moving_mean*
_output_shapes
:`
�
AssignMovingAvg_17/decayConst*
valueB
 *o;*/
_class%
#!loc:@rconv4/norm2/moving_variance*
dtype0*
_output_shapes
: 
�
5AssignMovingAvg_17/rconv4/norm2/moving_variance/zerosConst*
valueB`*    */
_class%
#!loc:@rconv4/norm2/moving_variance*
dtype0*
_output_shapes
:`
�
#rconv4/norm2/moving_variance/biased
VariableV2*
shape:`*
dtype0*
_output_shapes
:`*/
_class%
#!loc:@rconv4/norm2/moving_variance
�
*rconv4/norm2/moving_variance/biased/AssignAssign#rconv4/norm2/moving_variance/biased5AssignMovingAvg_17/rconv4/norm2/moving_variance/zeros*
_output_shapes
:`*
T0*/
_class%
#!loc:@rconv4/norm2/moving_variance
�
(rconv4/norm2/moving_variance/biased/readIdentity#rconv4/norm2/moving_variance/biased*
T0*/
_class%
#!loc:@rconv4/norm2/moving_variance*
_output_shapes
:`
�
9rconv4/norm2/moving_variance/local_step/Initializer/zerosConst*
valueB
 *    */
_class%
#!loc:@rconv4/norm2/moving_variance*
dtype0*
_output_shapes
: 
�
'rconv4/norm2/moving_variance/local_step
VariableV2*
dtype0*
_output_shapes
: */
_class%
#!loc:@rconv4/norm2/moving_variance*
shape: 
�
.rconv4/norm2/moving_variance/local_step/AssignAssign'rconv4/norm2/moving_variance/local_step9rconv4/norm2/moving_variance/local_step/Initializer/zeros*
_output_shapes
: *
T0*/
_class%
#!loc:@rconv4/norm2/moving_variance
�
,rconv4/norm2/moving_variance/local_step/readIdentity'rconv4/norm2/moving_variance/local_step*
T0*/
_class%
#!loc:@rconv4/norm2/moving_variance*
_output_shapes
: 
�
3AssignMovingAvg_17/rconv4/norm2/moving_variance/subSub(rconv4/norm2/moving_variance/biased/read
truediv_19*
_output_shapes
:`*
T0*/
_class%
#!loc:@rconv4/norm2/moving_variance
�
3AssignMovingAvg_17/rconv4/norm2/moving_variance/mulMul3AssignMovingAvg_17/rconv4/norm2/moving_variance/subAssignMovingAvg_17/decay*
_output_shapes
:`*
T0*/
_class%
#!loc:@rconv4/norm2/moving_variance
�
LAssignMovingAvg_17/rconv4/norm2/moving_variance/rconv4/norm2/moving_variance	AssignSub#rconv4/norm2/moving_variance/biased3AssignMovingAvg_17/rconv4/norm2/moving_variance/mul*
T0*/
_class%
#!loc:@rconv4/norm2/moving_variance*
_output_shapes
:`
�
?AssignMovingAvg_17/rconv4/norm2/moving_variance/AssignAdd/valueConst*
valueB
 *  �?*/
_class%
#!loc:@rconv4/norm2/moving_variance*
dtype0*
_output_shapes
: 
�
9AssignMovingAvg_17/rconv4/norm2/moving_variance/AssignAdd	AssignAdd'rconv4/norm2/moving_variance/local_step?AssignMovingAvg_17/rconv4/norm2/moving_variance/AssignAdd/value*
T0*/
_class%
#!loc:@rconv4/norm2/moving_variance*
_output_shapes
: 
�
4AssignMovingAvg_17/rconv4/norm2/moving_variance/readIdentity#rconv4/norm2/moving_variance/biased:^AssignMovingAvg_17/rconv4/norm2/moving_variance/AssignAddM^AssignMovingAvg_17/rconv4/norm2/moving_variance/rconv4/norm2/moving_variance*
T0*/
_class%
#!loc:@rconv4/norm2/moving_variance*
_output_shapes
:`
�
7AssignMovingAvg_17/rconv4/norm2/moving_variance/sub_1/xConst:^AssignMovingAvg_17/rconv4/norm2/moving_variance/AssignAddM^AssignMovingAvg_17/rconv4/norm2/moving_variance/rconv4/norm2/moving_variance*
_output_shapes
: *
valueB
 *  �?*/
_class%
#!loc:@rconv4/norm2/moving_variance*
dtype0
�
5AssignMovingAvg_17/rconv4/norm2/moving_variance/sub_1Sub7AssignMovingAvg_17/rconv4/norm2/moving_variance/sub_1/xAssignMovingAvg_17/decay*
T0*/
_class%
#!loc:@rconv4/norm2/moving_variance*
_output_shapes
: 
�
6AssignMovingAvg_17/rconv4/norm2/moving_variance/read_1Identity'rconv4/norm2/moving_variance/local_step:^AssignMovingAvg_17/rconv4/norm2/moving_variance/AssignAddM^AssignMovingAvg_17/rconv4/norm2/moving_variance/rconv4/norm2/moving_variance*
T0*/
_class%
#!loc:@rconv4/norm2/moving_variance*
_output_shapes
: 
�
3AssignMovingAvg_17/rconv4/norm2/moving_variance/PowPow5AssignMovingAvg_17/rconv4/norm2/moving_variance/sub_16AssignMovingAvg_17/rconv4/norm2/moving_variance/read_1*
T0*/
_class%
#!loc:@rconv4/norm2/moving_variance*
_output_shapes
: 
�
7AssignMovingAvg_17/rconv4/norm2/moving_variance/sub_2/xConst:^AssignMovingAvg_17/rconv4/norm2/moving_variance/AssignAddM^AssignMovingAvg_17/rconv4/norm2/moving_variance/rconv4/norm2/moving_variance*
valueB
 *  �?*/
_class%
#!loc:@rconv4/norm2/moving_variance*
dtype0*
_output_shapes
: 
�
5AssignMovingAvg_17/rconv4/norm2/moving_variance/sub_2Sub7AssignMovingAvg_17/rconv4/norm2/moving_variance/sub_2/x3AssignMovingAvg_17/rconv4/norm2/moving_variance/Pow*
T0*/
_class%
#!loc:@rconv4/norm2/moving_variance*
_output_shapes
: 
�
7AssignMovingAvg_17/rconv4/norm2/moving_variance/truedivRealDiv4AssignMovingAvg_17/rconv4/norm2/moving_variance/read5AssignMovingAvg_17/rconv4/norm2/moving_variance/sub_2*/
_class%
#!loc:@rconv4/norm2/moving_variance*
_output_shapes
:`*
T0
�
5AssignMovingAvg_17/rconv4/norm2/moving_variance/sub_3Sub!rconv4/norm2/moving_variance/read7AssignMovingAvg_17/rconv4/norm2/moving_variance/truediv*
_output_shapes
:`*
T0*/
_class%
#!loc:@rconv4/norm2/moving_variance
�
AssignMovingAvg_17	AssignSubrconv4/norm2/moving_variance5AssignMovingAvg_17/rconv4/norm2/moving_variance/sub_3*/
_class%
#!loc:@rconv4/norm2/moving_variance*
_output_shapes
:`*
T0
M
cond_11/SwitchSwitchConst_2Const_2*
T0
*
_output_shapes
: : 
O
cond_11/switch_tIdentitycond_11/Switch:1*
_output_shapes
: *
T0

M
cond_11/switch_fIdentitycond_11/Switch*
T0
*
_output_shapes
: 
E
cond_11/pred_idIdentityConst_2*
T0
*
_output_shapes
: 
�
cond_11/Switch_1Switch
truediv_18cond_11/pred_id*
T0*
_class
loc:@truediv_18* 
_output_shapes
:`:`
�
cond_11/Switch_2Switch
truediv_19cond_11/pred_id*
T0*
_class
loc:@truediv_19* 
_output_shapes
:`:`
�
cond_11/Switch_3Switchrconv4/norm2/moving_mean/readcond_11/pred_id*
T0*+
_class!
loc:@rconv4/norm2/moving_mean* 
_output_shapes
:`:`
�
cond_11/Switch_4Switch!rconv4/norm2/moving_variance/readcond_11/pred_id*
T0*/
_class%
#!loc:@rconv4/norm2/moving_variance* 
_output_shapes
:`:`
l
cond_11/MergeMergecond_11/Switch_3cond_11/Switch_1:1*
_output_shapes

:`: *
T0*
N
n
cond_11/Merge_1Mergecond_11/Switch_4cond_11/Switch_2:1*
N*
_output_shapes

:`: *
T0
V
batchnorm_8/add/yConst*
_output_shapes
: *
valueB
 *o�:*
dtype0
_
batchnorm_8/addAddcond_11/Merge_1batchnorm_8/add/y*
T0*
_output_shapes
:`
P
batchnorm_8/RsqrtRsqrtbatchnorm_8/add*
T0*
_output_shapes
:`
m
batchnorm_8/mulMulConv2D_8batchnorm_8/Rsqrt*/
_output_shapes
:���������		`*
T0
_
batchnorm_8/mul_1Mulcond_11/Mergebatchnorm_8/Rsqrt*
T0*
_output_shapes
:`
f
batchnorm_8/subSubrconv4/norm2/beta/readbatchnorm_8/mul_1*
T0*
_output_shapes
:`
t
batchnorm_8/add_1Addbatchnorm_8/mulbatchnorm_8/sub*
T0*/
_output_shapes
:���������		`
k
mul_39Mulbatchnorm_8/add_1strided_slice_5*
T0*/
_output_shapes
:���������		`
P
Relu_8Relumul_39*
T0*/
_output_shapes
:���������		`
r
truncated_normal_11/shapeConst*
dtype0*
_output_shapes
:*%
valueB"      `   `   
]
truncated_normal_11/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
_
truncated_normal_11/stddevConst*
valueB
 *�E=*
dtype0*
_output_shapes
: 
�
#truncated_normal_11/TruncatedNormalTruncatedNormaltruncated_normal_11/shape*
T0*
dtype0*&
_output_shapes
:``
�
truncated_normal_11/mulMul#truncated_normal_11/TruncatedNormaltruncated_normal_11/stddev*
T0*&
_output_shapes
:``
~
truncated_normal_11Addtruncated_normal_11/multruncated_normal_11/mean*
T0*&
_output_shapes
:``
M
mul_40/yConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
]
mul_40Multruncated_normal_11mul_40/y*
T0*&
_output_shapes
:``
i
	rconv4/w2
VariableV2*
dtype0*&
_output_shapes
:``*
shape:``
|
rconv4/w2/AssignAssign	rconv4/w2mul_40*
T0*
_class
loc:@rconv4/w2*&
_output_shapes
:``
t
rconv4/w2/readIdentity	rconv4/w2*
T0*
_class
loc:@rconv4/w2*&
_output_shapes
:``
�
Conv2D_9Conv2DRelu_8rconv4/w2/read*
strides
*
paddingSAME*/
_output_shapes
:���������		`*
T0
W
add_6Addadd_5Conv2D_9*/
_output_shapes
:���������		`*
T0
U
zeros_19Const*
valueB`*    *
dtype0*
_output_shapes
:`
`
rconv5/norm1/moving_mean
VariableV2*
_output_shapes
:`*
shape:`*
dtype0
�
rconv5/norm1/moving_mean/AssignAssignrconv5/norm1/moving_meanzeros_19*
T0*+
_class!
loc:@rconv5/norm1/moving_mean*
_output_shapes
:`
�
rconv5/norm1/moving_mean/readIdentityrconv5/norm1/moving_mean*
T0*+
_class!
loc:@rconv5/norm1/moving_mean*
_output_shapes
:`
S
ones_9Const*
dtype0*
_output_shapes
:`*
valueB`*  �?
d
rconv5/norm1/moving_variance
VariableV2*
shape:`*
dtype0*
_output_shapes
:`
�
#rconv5/norm1/moving_variance/AssignAssignrconv5/norm1/moving_varianceones_9*
_output_shapes
:`*
T0*/
_class%
#!loc:@rconv5/norm1/moving_variance
�
!rconv5/norm1/moving_variance/readIdentityrconv5/norm1/moving_variance*
T0*/
_class%
#!loc:@rconv5/norm1/moving_variance*
_output_shapes
:`
U
zeros_20Const*
valueB`*    *
dtype0*
_output_shapes
:`
Y
rconv5/norm1/beta
VariableV2*
_output_shapes
:`*
shape:`*
dtype0
�
rconv5/norm1/beta/AssignAssignrconv5/norm1/betazeros_20*
T0*$
_class
loc:@rconv5/norm1/beta*
_output_shapes
:`
�
rconv5/norm1/beta/readIdentityrconv5/norm1/beta*$
_class
loc:@rconv5/norm1/beta*
_output_shapes
:`*
T0
_
mul_41Muladd_6strided_slice_5*
T0*/
_output_shapes
:���������		`
m
Sum_21/reduction_indicesConst*
_output_shapes
:*!
valueB"          *
dtype0
T
Sum_21Summul_41Sum_21/reduction_indices*
_output_shapes
:`*
T0
G

truediv_20RealDivSum_21Sum*
_output_shapes
:`*
T0
Z
sub_10Subadd_6
truediv_20*
T0*/
_output_shapes
:���������		`
`
mul_42Mulsub_10strided_slice_5*/
_output_shapes
:���������		`*
T0
T
Square_9Squaremul_42*
T0*/
_output_shapes
:���������		`
m
Sum_22/reduction_indicesConst*!
valueB"          *
dtype0*
_output_shapes
:
V
Sum_22SumSquare_9Sum_22/reduction_indices*
_output_shapes
:`*
T0
G

truediv_21RealDivSum_22Sum*
T0*
_output_shapes
:`
�
AssignMovingAvg_18/decayConst*
_output_shapes
: *
valueB
 *o;*+
_class!
loc:@rconv5/norm1/moving_mean*
dtype0
�
1AssignMovingAvg_18/rconv5/norm1/moving_mean/zerosConst*
valueB`*    *+
_class!
loc:@rconv5/norm1/moving_mean*
dtype0*
_output_shapes
:`
�
rconv5/norm1/moving_mean/biased
VariableV2*+
_class!
loc:@rconv5/norm1/moving_mean*
shape:`*
dtype0*
_output_shapes
:`
�
&rconv5/norm1/moving_mean/biased/AssignAssignrconv5/norm1/moving_mean/biased1AssignMovingAvg_18/rconv5/norm1/moving_mean/zeros*
T0*+
_class!
loc:@rconv5/norm1/moving_mean*
_output_shapes
:`
�
$rconv5/norm1/moving_mean/biased/readIdentityrconv5/norm1/moving_mean/biased*
T0*+
_class!
loc:@rconv5/norm1/moving_mean*
_output_shapes
:`
�
5rconv5/norm1/moving_mean/local_step/Initializer/zerosConst*
valueB
 *    *+
_class!
loc:@rconv5/norm1/moving_mean*
dtype0*
_output_shapes
: 
�
#rconv5/norm1/moving_mean/local_step
VariableV2*
_output_shapes
: *+
_class!
loc:@rconv5/norm1/moving_mean*
shape: *
dtype0
�
*rconv5/norm1/moving_mean/local_step/AssignAssign#rconv5/norm1/moving_mean/local_step5rconv5/norm1/moving_mean/local_step/Initializer/zeros*
T0*+
_class!
loc:@rconv5/norm1/moving_mean*
_output_shapes
: 
�
(rconv5/norm1/moving_mean/local_step/readIdentity#rconv5/norm1/moving_mean/local_step*+
_class!
loc:@rconv5/norm1/moving_mean*
_output_shapes
: *
T0
�
/AssignMovingAvg_18/rconv5/norm1/moving_mean/subSub$rconv5/norm1/moving_mean/biased/read
truediv_20*
T0*+
_class!
loc:@rconv5/norm1/moving_mean*
_output_shapes
:`
�
/AssignMovingAvg_18/rconv5/norm1/moving_mean/mulMul/AssignMovingAvg_18/rconv5/norm1/moving_mean/subAssignMovingAvg_18/decay*
_output_shapes
:`*
T0*+
_class!
loc:@rconv5/norm1/moving_mean
�
DAssignMovingAvg_18/rconv5/norm1/moving_mean/rconv5/norm1/moving_mean	AssignSubrconv5/norm1/moving_mean/biased/AssignMovingAvg_18/rconv5/norm1/moving_mean/mul*
T0*+
_class!
loc:@rconv5/norm1/moving_mean*
_output_shapes
:`
�
;AssignMovingAvg_18/rconv5/norm1/moving_mean/AssignAdd/valueConst*
valueB
 *  �?*+
_class!
loc:@rconv5/norm1/moving_mean*
dtype0*
_output_shapes
: 
�
5AssignMovingAvg_18/rconv5/norm1/moving_mean/AssignAdd	AssignAdd#rconv5/norm1/moving_mean/local_step;AssignMovingAvg_18/rconv5/norm1/moving_mean/AssignAdd/value*+
_class!
loc:@rconv5/norm1/moving_mean*
_output_shapes
: *
T0
�
0AssignMovingAvg_18/rconv5/norm1/moving_mean/readIdentityrconv5/norm1/moving_mean/biased6^AssignMovingAvg_18/rconv5/norm1/moving_mean/AssignAddE^AssignMovingAvg_18/rconv5/norm1/moving_mean/rconv5/norm1/moving_mean*
T0*+
_class!
loc:@rconv5/norm1/moving_mean*
_output_shapes
:`
�
3AssignMovingAvg_18/rconv5/norm1/moving_mean/sub_1/xConst6^AssignMovingAvg_18/rconv5/norm1/moving_mean/AssignAddE^AssignMovingAvg_18/rconv5/norm1/moving_mean/rconv5/norm1/moving_mean*
valueB
 *  �?*+
_class!
loc:@rconv5/norm1/moving_mean*
dtype0*
_output_shapes
: 
�
1AssignMovingAvg_18/rconv5/norm1/moving_mean/sub_1Sub3AssignMovingAvg_18/rconv5/norm1/moving_mean/sub_1/xAssignMovingAvg_18/decay*+
_class!
loc:@rconv5/norm1/moving_mean*
_output_shapes
: *
T0
�
2AssignMovingAvg_18/rconv5/norm1/moving_mean/read_1Identity#rconv5/norm1/moving_mean/local_step6^AssignMovingAvg_18/rconv5/norm1/moving_mean/AssignAddE^AssignMovingAvg_18/rconv5/norm1/moving_mean/rconv5/norm1/moving_mean*
_output_shapes
: *
T0*+
_class!
loc:@rconv5/norm1/moving_mean
�
/AssignMovingAvg_18/rconv5/norm1/moving_mean/PowPow1AssignMovingAvg_18/rconv5/norm1/moving_mean/sub_12AssignMovingAvg_18/rconv5/norm1/moving_mean/read_1*
_output_shapes
: *
T0*+
_class!
loc:@rconv5/norm1/moving_mean
�
3AssignMovingAvg_18/rconv5/norm1/moving_mean/sub_2/xConst6^AssignMovingAvg_18/rconv5/norm1/moving_mean/AssignAddE^AssignMovingAvg_18/rconv5/norm1/moving_mean/rconv5/norm1/moving_mean*
_output_shapes
: *
valueB
 *  �?*+
_class!
loc:@rconv5/norm1/moving_mean*
dtype0
�
1AssignMovingAvg_18/rconv5/norm1/moving_mean/sub_2Sub3AssignMovingAvg_18/rconv5/norm1/moving_mean/sub_2/x/AssignMovingAvg_18/rconv5/norm1/moving_mean/Pow*
_output_shapes
: *
T0*+
_class!
loc:@rconv5/norm1/moving_mean
�
3AssignMovingAvg_18/rconv5/norm1/moving_mean/truedivRealDiv0AssignMovingAvg_18/rconv5/norm1/moving_mean/read1AssignMovingAvg_18/rconv5/norm1/moving_mean/sub_2*
T0*+
_class!
loc:@rconv5/norm1/moving_mean*
_output_shapes
:`
�
1AssignMovingAvg_18/rconv5/norm1/moving_mean/sub_3Subrconv5/norm1/moving_mean/read3AssignMovingAvg_18/rconv5/norm1/moving_mean/truediv*
_output_shapes
:`*
T0*+
_class!
loc:@rconv5/norm1/moving_mean
�
AssignMovingAvg_18	AssignSubrconv5/norm1/moving_mean1AssignMovingAvg_18/rconv5/norm1/moving_mean/sub_3*
T0*+
_class!
loc:@rconv5/norm1/moving_mean*
_output_shapes
:`
�
AssignMovingAvg_19/decayConst*
valueB
 *o;*/
_class%
#!loc:@rconv5/norm1/moving_variance*
dtype0*
_output_shapes
: 
�
5AssignMovingAvg_19/rconv5/norm1/moving_variance/zerosConst*
valueB`*    */
_class%
#!loc:@rconv5/norm1/moving_variance*
dtype0*
_output_shapes
:`
�
#rconv5/norm1/moving_variance/biased
VariableV2*
shape:`*
dtype0*
_output_shapes
:`*/
_class%
#!loc:@rconv5/norm1/moving_variance
�
*rconv5/norm1/moving_variance/biased/AssignAssign#rconv5/norm1/moving_variance/biased5AssignMovingAvg_19/rconv5/norm1/moving_variance/zeros*
_output_shapes
:`*
T0*/
_class%
#!loc:@rconv5/norm1/moving_variance
�
(rconv5/norm1/moving_variance/biased/readIdentity#rconv5/norm1/moving_variance/biased*
T0*/
_class%
#!loc:@rconv5/norm1/moving_variance*
_output_shapes
:`
�
9rconv5/norm1/moving_variance/local_step/Initializer/zerosConst*
_output_shapes
: *
valueB
 *    */
_class%
#!loc:@rconv5/norm1/moving_variance*
dtype0
�
'rconv5/norm1/moving_variance/local_step
VariableV2*
shape: *
dtype0*
_output_shapes
: */
_class%
#!loc:@rconv5/norm1/moving_variance
�
.rconv5/norm1/moving_variance/local_step/AssignAssign'rconv5/norm1/moving_variance/local_step9rconv5/norm1/moving_variance/local_step/Initializer/zeros*
_output_shapes
: *
T0*/
_class%
#!loc:@rconv5/norm1/moving_variance
�
,rconv5/norm1/moving_variance/local_step/readIdentity'rconv5/norm1/moving_variance/local_step*
_output_shapes
: *
T0*/
_class%
#!loc:@rconv5/norm1/moving_variance
�
3AssignMovingAvg_19/rconv5/norm1/moving_variance/subSub(rconv5/norm1/moving_variance/biased/read
truediv_21*/
_class%
#!loc:@rconv5/norm1/moving_variance*
_output_shapes
:`*
T0
�
3AssignMovingAvg_19/rconv5/norm1/moving_variance/mulMul3AssignMovingAvg_19/rconv5/norm1/moving_variance/subAssignMovingAvg_19/decay*
T0*/
_class%
#!loc:@rconv5/norm1/moving_variance*
_output_shapes
:`
�
LAssignMovingAvg_19/rconv5/norm1/moving_variance/rconv5/norm1/moving_variance	AssignSub#rconv5/norm1/moving_variance/biased3AssignMovingAvg_19/rconv5/norm1/moving_variance/mul*
T0*/
_class%
#!loc:@rconv5/norm1/moving_variance*
_output_shapes
:`
�
?AssignMovingAvg_19/rconv5/norm1/moving_variance/AssignAdd/valueConst*
valueB
 *  �?*/
_class%
#!loc:@rconv5/norm1/moving_variance*
dtype0*
_output_shapes
: 
�
9AssignMovingAvg_19/rconv5/norm1/moving_variance/AssignAdd	AssignAdd'rconv5/norm1/moving_variance/local_step?AssignMovingAvg_19/rconv5/norm1/moving_variance/AssignAdd/value*
T0*/
_class%
#!loc:@rconv5/norm1/moving_variance*
_output_shapes
: 
�
4AssignMovingAvg_19/rconv5/norm1/moving_variance/readIdentity#rconv5/norm1/moving_variance/biased:^AssignMovingAvg_19/rconv5/norm1/moving_variance/AssignAddM^AssignMovingAvg_19/rconv5/norm1/moving_variance/rconv5/norm1/moving_variance*/
_class%
#!loc:@rconv5/norm1/moving_variance*
_output_shapes
:`*
T0
�
7AssignMovingAvg_19/rconv5/norm1/moving_variance/sub_1/xConst:^AssignMovingAvg_19/rconv5/norm1/moving_variance/AssignAddM^AssignMovingAvg_19/rconv5/norm1/moving_variance/rconv5/norm1/moving_variance*
valueB
 *  �?*/
_class%
#!loc:@rconv5/norm1/moving_variance*
dtype0*
_output_shapes
: 
�
5AssignMovingAvg_19/rconv5/norm1/moving_variance/sub_1Sub7AssignMovingAvg_19/rconv5/norm1/moving_variance/sub_1/xAssignMovingAvg_19/decay*
T0*/
_class%
#!loc:@rconv5/norm1/moving_variance*
_output_shapes
: 
�
6AssignMovingAvg_19/rconv5/norm1/moving_variance/read_1Identity'rconv5/norm1/moving_variance/local_step:^AssignMovingAvg_19/rconv5/norm1/moving_variance/AssignAddM^AssignMovingAvg_19/rconv5/norm1/moving_variance/rconv5/norm1/moving_variance*
T0*/
_class%
#!loc:@rconv5/norm1/moving_variance*
_output_shapes
: 
�
3AssignMovingAvg_19/rconv5/norm1/moving_variance/PowPow5AssignMovingAvg_19/rconv5/norm1/moving_variance/sub_16AssignMovingAvg_19/rconv5/norm1/moving_variance/read_1*
_output_shapes
: *
T0*/
_class%
#!loc:@rconv5/norm1/moving_variance
�
7AssignMovingAvg_19/rconv5/norm1/moving_variance/sub_2/xConst:^AssignMovingAvg_19/rconv5/norm1/moving_variance/AssignAddM^AssignMovingAvg_19/rconv5/norm1/moving_variance/rconv5/norm1/moving_variance*
valueB
 *  �?*/
_class%
#!loc:@rconv5/norm1/moving_variance*
dtype0*
_output_shapes
: 
�
5AssignMovingAvg_19/rconv5/norm1/moving_variance/sub_2Sub7AssignMovingAvg_19/rconv5/norm1/moving_variance/sub_2/x3AssignMovingAvg_19/rconv5/norm1/moving_variance/Pow*
T0*/
_class%
#!loc:@rconv5/norm1/moving_variance*
_output_shapes
: 
�
7AssignMovingAvg_19/rconv5/norm1/moving_variance/truedivRealDiv4AssignMovingAvg_19/rconv5/norm1/moving_variance/read5AssignMovingAvg_19/rconv5/norm1/moving_variance/sub_2*
T0*/
_class%
#!loc:@rconv5/norm1/moving_variance*
_output_shapes
:`
�
5AssignMovingAvg_19/rconv5/norm1/moving_variance/sub_3Sub!rconv5/norm1/moving_variance/read7AssignMovingAvg_19/rconv5/norm1/moving_variance/truediv*
T0*/
_class%
#!loc:@rconv5/norm1/moving_variance*
_output_shapes
:`
�
AssignMovingAvg_19	AssignSubrconv5/norm1/moving_variance5AssignMovingAvg_19/rconv5/norm1/moving_variance/sub_3*
_output_shapes
:`*
T0*/
_class%
#!loc:@rconv5/norm1/moving_variance
M
cond_12/SwitchSwitchConst_2Const_2*
_output_shapes
: : *
T0

O
cond_12/switch_tIdentitycond_12/Switch:1*
T0
*
_output_shapes
: 
M
cond_12/switch_fIdentitycond_12/Switch*
T0
*
_output_shapes
: 
E
cond_12/pred_idIdentityConst_2*
T0
*
_output_shapes
: 
�
cond_12/Switch_1Switch
truediv_20cond_12/pred_id* 
_output_shapes
:`:`*
T0*
_class
loc:@truediv_20
�
cond_12/Switch_2Switch
truediv_21cond_12/pred_id* 
_output_shapes
:`:`*
T0*
_class
loc:@truediv_21
�
cond_12/Switch_3Switchrconv5/norm1/moving_mean/readcond_12/pred_id*
T0*+
_class!
loc:@rconv5/norm1/moving_mean* 
_output_shapes
:`:`
�
cond_12/Switch_4Switch!rconv5/norm1/moving_variance/readcond_12/pred_id* 
_output_shapes
:`:`*
T0*/
_class%
#!loc:@rconv5/norm1/moving_variance
l
cond_12/MergeMergecond_12/Switch_3cond_12/Switch_1:1*
_output_shapes

:`: *
T0*
N
n
cond_12/Merge_1Mergecond_12/Switch_4cond_12/Switch_2:1*
T0*
N*
_output_shapes

:`: 
V
batchnorm_9/add/yConst*
valueB
 *o�:*
dtype0*
_output_shapes
: 
_
batchnorm_9/addAddcond_12/Merge_1batchnorm_9/add/y*
T0*
_output_shapes
:`
P
batchnorm_9/RsqrtRsqrtbatchnorm_9/add*
_output_shapes
:`*
T0
j
batchnorm_9/mulMuladd_6batchnorm_9/Rsqrt*
T0*/
_output_shapes
:���������		`
_
batchnorm_9/mul_1Mulcond_12/Mergebatchnorm_9/Rsqrt*
T0*
_output_shapes
:`
f
batchnorm_9/subSubrconv5/norm1/beta/readbatchnorm_9/mul_1*
T0*
_output_shapes
:`
t
batchnorm_9/add_1Addbatchnorm_9/mulbatchnorm_9/sub*
T0*/
_output_shapes
:���������		`
k
mul_43Mulbatchnorm_9/add_1strided_slice_5*
T0*/
_output_shapes
:���������		`
P
Relu_9Relumul_43*
T0*/
_output_shapes
:���������		`
r
truncated_normal_12/shapeConst*%
valueB"      `   @   *
dtype0*
_output_shapes
:
]
truncated_normal_12/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
_
truncated_normal_12/stddevConst*
valueB
 *�E=*
dtype0*
_output_shapes
: 
�
#truncated_normal_12/TruncatedNormalTruncatedNormaltruncated_normal_12/shape*
dtype0*&
_output_shapes
:`@*
T0
�
truncated_normal_12/mulMul#truncated_normal_12/TruncatedNormaltruncated_normal_12/stddev*&
_output_shapes
:`@*
T0
~
truncated_normal_12Addtruncated_normal_12/multruncated_normal_12/mean*
T0*&
_output_shapes
:`@
M
mul_44/yConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
]
mul_44Multruncated_normal_12mul_44/y*
T0*&
_output_shapes
:`@
j

rconv5/w1a
VariableV2*
dtype0*&
_output_shapes
:`@*
shape:`@

rconv5/w1a/AssignAssign
rconv5/w1amul_44*
T0*
_class
loc:@rconv5/w1a*&
_output_shapes
:`@
w
rconv5/w1a/readIdentity
rconv5/w1a*
T0*
_class
loc:@rconv5/w1a*&
_output_shapes
:`@
r
truncated_normal_13/shapeConst*%
valueB"      `       *
dtype0*
_output_shapes
:
]
truncated_normal_13/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
_
truncated_normal_13/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *�E=
�
#truncated_normal_13/TruncatedNormalTruncatedNormaltruncated_normal_13/shape*
dtype0*&
_output_shapes
:` *
T0
�
truncated_normal_13/mulMul#truncated_normal_13/TruncatedNormaltruncated_normal_13/stddev*
T0*&
_output_shapes
:` 
~
truncated_normal_13Addtruncated_normal_13/multruncated_normal_13/mean*&
_output_shapes
:` *
T0
M
mul_45/yConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
]
mul_45Multruncated_normal_13mul_45/y*
T0*&
_output_shapes
:` 
j

rconv5/w1b
VariableV2*
dtype0*&
_output_shapes
:` *
shape:` 

rconv5/w1b/AssignAssign
rconv5/w1bmul_45*
T0*
_class
loc:@rconv5/w1b*&
_output_shapes
:` 
w
rconv5/w1b/readIdentity
rconv5/w1b*&
_output_shapes
:` *
T0*
_class
loc:@rconv5/w1b
�
	Conv2D_10Conv2DRelu_9rconv5/w1a/read*
T0*
strides
*
paddingSAME*/
_output_shapes
:���������		@
�
	Conv2D_11Conv2DRelu_9rconv5/w1b/read*/
_output_shapes
:���������		 *
T0*
strides
*
paddingSAME
U
zeros_21Const*
dtype0*
_output_shapes
: *
valueB *    
a
rconv5/norm1b/moving_mean
VariableV2*
shape: *
dtype0*
_output_shapes
: 
�
 rconv5/norm1b/moving_mean/AssignAssignrconv5/norm1b/moving_meanzeros_21*
_output_shapes
: *
T0*,
_class"
 loc:@rconv5/norm1b/moving_mean
�
rconv5/norm1b/moving_mean/readIdentityrconv5/norm1b/moving_mean*
_output_shapes
: *
T0*,
_class"
 loc:@rconv5/norm1b/moving_mean
T
ones_10Const*
valueB *  �?*
dtype0*
_output_shapes
: 
e
rconv5/norm1b/moving_variance
VariableV2*
dtype0*
_output_shapes
: *
shape: 
�
$rconv5/norm1b/moving_variance/AssignAssignrconv5/norm1b/moving_varianceones_10*
_output_shapes
: *
T0*0
_class&
$"loc:@rconv5/norm1b/moving_variance
�
"rconv5/norm1b/moving_variance/readIdentityrconv5/norm1b/moving_variance*
T0*0
_class&
$"loc:@rconv5/norm1b/moving_variance*
_output_shapes
: 
U
zeros_22Const*
valueB *    *
dtype0*
_output_shapes
: 
Z
rconv5/norm1b/beta
VariableV2*
shape: *
dtype0*
_output_shapes
: 
�
rconv5/norm1b/beta/AssignAssignrconv5/norm1b/betazeros_22*%
_class
loc:@rconv5/norm1b/beta*
_output_shapes
: *
T0
�
rconv5/norm1b/beta/readIdentityrconv5/norm1b/beta*
T0*%
_class
loc:@rconv5/norm1b/beta*
_output_shapes
: 
c
mul_46Mul	Conv2D_11strided_slice_5*
T0*/
_output_shapes
:���������		 
m
Sum_23/reduction_indicesConst*
dtype0*
_output_shapes
:*!
valueB"          
T
Sum_23Summul_46Sum_23/reduction_indices*
T0*
_output_shapes
: 
G

truediv_22RealDivSum_23Sum*
T0*
_output_shapes
: 
^
sub_11Sub	Conv2D_11
truediv_22*
T0*/
_output_shapes
:���������		 
`
mul_47Mulsub_11strided_slice_5*/
_output_shapes
:���������		 *
T0
U
	Square_10Squaremul_47*
T0*/
_output_shapes
:���������		 
m
Sum_24/reduction_indicesConst*!
valueB"          *
dtype0*
_output_shapes
:
W
Sum_24Sum	Square_10Sum_24/reduction_indices*
T0*
_output_shapes
: 
G

truediv_23RealDivSum_24Sum*
T0*
_output_shapes
: 
�
AssignMovingAvg_20/decayConst*
dtype0*
_output_shapes
: *
valueB
 *o;*,
_class"
 loc:@rconv5/norm1b/moving_mean
�
2AssignMovingAvg_20/rconv5/norm1b/moving_mean/zerosConst*
_output_shapes
: *
valueB *    *,
_class"
 loc:@rconv5/norm1b/moving_mean*
dtype0
�
 rconv5/norm1b/moving_mean/biased
VariableV2*
dtype0*
_output_shapes
: *,
_class"
 loc:@rconv5/norm1b/moving_mean*
shape: 
�
'rconv5/norm1b/moving_mean/biased/AssignAssign rconv5/norm1b/moving_mean/biased2AssignMovingAvg_20/rconv5/norm1b/moving_mean/zeros*
T0*,
_class"
 loc:@rconv5/norm1b/moving_mean*
_output_shapes
: 
�
%rconv5/norm1b/moving_mean/biased/readIdentity rconv5/norm1b/moving_mean/biased*
T0*,
_class"
 loc:@rconv5/norm1b/moving_mean*
_output_shapes
: 
�
6rconv5/norm1b/moving_mean/local_step/Initializer/zerosConst*
valueB
 *    *,
_class"
 loc:@rconv5/norm1b/moving_mean*
dtype0*
_output_shapes
: 
�
$rconv5/norm1b/moving_mean/local_step
VariableV2*,
_class"
 loc:@rconv5/norm1b/moving_mean*
shape: *
dtype0*
_output_shapes
: 
�
+rconv5/norm1b/moving_mean/local_step/AssignAssign$rconv5/norm1b/moving_mean/local_step6rconv5/norm1b/moving_mean/local_step/Initializer/zeros*
_output_shapes
: *
T0*,
_class"
 loc:@rconv5/norm1b/moving_mean
�
)rconv5/norm1b/moving_mean/local_step/readIdentity$rconv5/norm1b/moving_mean/local_step*
T0*,
_class"
 loc:@rconv5/norm1b/moving_mean*
_output_shapes
: 
�
0AssignMovingAvg_20/rconv5/norm1b/moving_mean/subSub%rconv5/norm1b/moving_mean/biased/read
truediv_22*
_output_shapes
: *
T0*,
_class"
 loc:@rconv5/norm1b/moving_mean
�
0AssignMovingAvg_20/rconv5/norm1b/moving_mean/mulMul0AssignMovingAvg_20/rconv5/norm1b/moving_mean/subAssignMovingAvg_20/decay*
T0*,
_class"
 loc:@rconv5/norm1b/moving_mean*
_output_shapes
: 
�
FAssignMovingAvg_20/rconv5/norm1b/moving_mean/rconv5/norm1b/moving_mean	AssignSub rconv5/norm1b/moving_mean/biased0AssignMovingAvg_20/rconv5/norm1b/moving_mean/mul*
_output_shapes
: *
T0*,
_class"
 loc:@rconv5/norm1b/moving_mean
�
<AssignMovingAvg_20/rconv5/norm1b/moving_mean/AssignAdd/valueConst*
valueB
 *  �?*,
_class"
 loc:@rconv5/norm1b/moving_mean*
dtype0*
_output_shapes
: 
�
6AssignMovingAvg_20/rconv5/norm1b/moving_mean/AssignAdd	AssignAdd$rconv5/norm1b/moving_mean/local_step<AssignMovingAvg_20/rconv5/norm1b/moving_mean/AssignAdd/value*
T0*,
_class"
 loc:@rconv5/norm1b/moving_mean*
_output_shapes
: 
�
1AssignMovingAvg_20/rconv5/norm1b/moving_mean/readIdentity rconv5/norm1b/moving_mean/biased7^AssignMovingAvg_20/rconv5/norm1b/moving_mean/AssignAddG^AssignMovingAvg_20/rconv5/norm1b/moving_mean/rconv5/norm1b/moving_mean*,
_class"
 loc:@rconv5/norm1b/moving_mean*
_output_shapes
: *
T0
�
4AssignMovingAvg_20/rconv5/norm1b/moving_mean/sub_1/xConst7^AssignMovingAvg_20/rconv5/norm1b/moving_mean/AssignAddG^AssignMovingAvg_20/rconv5/norm1b/moving_mean/rconv5/norm1b/moving_mean*
valueB
 *  �?*,
_class"
 loc:@rconv5/norm1b/moving_mean*
dtype0*
_output_shapes
: 
�
2AssignMovingAvg_20/rconv5/norm1b/moving_mean/sub_1Sub4AssignMovingAvg_20/rconv5/norm1b/moving_mean/sub_1/xAssignMovingAvg_20/decay*
T0*,
_class"
 loc:@rconv5/norm1b/moving_mean*
_output_shapes
: 
�
3AssignMovingAvg_20/rconv5/norm1b/moving_mean/read_1Identity$rconv5/norm1b/moving_mean/local_step7^AssignMovingAvg_20/rconv5/norm1b/moving_mean/AssignAddG^AssignMovingAvg_20/rconv5/norm1b/moving_mean/rconv5/norm1b/moving_mean*,
_class"
 loc:@rconv5/norm1b/moving_mean*
_output_shapes
: *
T0
�
0AssignMovingAvg_20/rconv5/norm1b/moving_mean/PowPow2AssignMovingAvg_20/rconv5/norm1b/moving_mean/sub_13AssignMovingAvg_20/rconv5/norm1b/moving_mean/read_1*
T0*,
_class"
 loc:@rconv5/norm1b/moving_mean*
_output_shapes
: 
�
4AssignMovingAvg_20/rconv5/norm1b/moving_mean/sub_2/xConst7^AssignMovingAvg_20/rconv5/norm1b/moving_mean/AssignAddG^AssignMovingAvg_20/rconv5/norm1b/moving_mean/rconv5/norm1b/moving_mean*
valueB
 *  �?*,
_class"
 loc:@rconv5/norm1b/moving_mean*
dtype0*
_output_shapes
: 
�
2AssignMovingAvg_20/rconv5/norm1b/moving_mean/sub_2Sub4AssignMovingAvg_20/rconv5/norm1b/moving_mean/sub_2/x0AssignMovingAvg_20/rconv5/norm1b/moving_mean/Pow*
T0*,
_class"
 loc:@rconv5/norm1b/moving_mean*
_output_shapes
: 
�
4AssignMovingAvg_20/rconv5/norm1b/moving_mean/truedivRealDiv1AssignMovingAvg_20/rconv5/norm1b/moving_mean/read2AssignMovingAvg_20/rconv5/norm1b/moving_mean/sub_2*
T0*,
_class"
 loc:@rconv5/norm1b/moving_mean*
_output_shapes
: 
�
2AssignMovingAvg_20/rconv5/norm1b/moving_mean/sub_3Subrconv5/norm1b/moving_mean/read4AssignMovingAvg_20/rconv5/norm1b/moving_mean/truediv*
T0*,
_class"
 loc:@rconv5/norm1b/moving_mean*
_output_shapes
: 
�
AssignMovingAvg_20	AssignSubrconv5/norm1b/moving_mean2AssignMovingAvg_20/rconv5/norm1b/moving_mean/sub_3*,
_class"
 loc:@rconv5/norm1b/moving_mean*
_output_shapes
: *
T0
�
AssignMovingAvg_21/decayConst*
dtype0*
_output_shapes
: *
valueB
 *o;*0
_class&
$"loc:@rconv5/norm1b/moving_variance
�
6AssignMovingAvg_21/rconv5/norm1b/moving_variance/zerosConst*
dtype0*
_output_shapes
: *
valueB *    *0
_class&
$"loc:@rconv5/norm1b/moving_variance
�
$rconv5/norm1b/moving_variance/biased
VariableV2*
shape: *
dtype0*
_output_shapes
: *0
_class&
$"loc:@rconv5/norm1b/moving_variance
�
+rconv5/norm1b/moving_variance/biased/AssignAssign$rconv5/norm1b/moving_variance/biased6AssignMovingAvg_21/rconv5/norm1b/moving_variance/zeros*
T0*0
_class&
$"loc:@rconv5/norm1b/moving_variance*
_output_shapes
: 
�
)rconv5/norm1b/moving_variance/biased/readIdentity$rconv5/norm1b/moving_variance/biased*
T0*0
_class&
$"loc:@rconv5/norm1b/moving_variance*
_output_shapes
: 
�
:rconv5/norm1b/moving_variance/local_step/Initializer/zerosConst*
valueB
 *    *0
_class&
$"loc:@rconv5/norm1b/moving_variance*
dtype0*
_output_shapes
: 
�
(rconv5/norm1b/moving_variance/local_step
VariableV2*
shape: *
dtype0*
_output_shapes
: *0
_class&
$"loc:@rconv5/norm1b/moving_variance
�
/rconv5/norm1b/moving_variance/local_step/AssignAssign(rconv5/norm1b/moving_variance/local_step:rconv5/norm1b/moving_variance/local_step/Initializer/zeros*
T0*0
_class&
$"loc:@rconv5/norm1b/moving_variance*
_output_shapes
: 
�
-rconv5/norm1b/moving_variance/local_step/readIdentity(rconv5/norm1b/moving_variance/local_step*
T0*0
_class&
$"loc:@rconv5/norm1b/moving_variance*
_output_shapes
: 
�
4AssignMovingAvg_21/rconv5/norm1b/moving_variance/subSub)rconv5/norm1b/moving_variance/biased/read
truediv_23*
T0*0
_class&
$"loc:@rconv5/norm1b/moving_variance*
_output_shapes
: 
�
4AssignMovingAvg_21/rconv5/norm1b/moving_variance/mulMul4AssignMovingAvg_21/rconv5/norm1b/moving_variance/subAssignMovingAvg_21/decay*0
_class&
$"loc:@rconv5/norm1b/moving_variance*
_output_shapes
: *
T0
�
NAssignMovingAvg_21/rconv5/norm1b/moving_variance/rconv5/norm1b/moving_variance	AssignSub$rconv5/norm1b/moving_variance/biased4AssignMovingAvg_21/rconv5/norm1b/moving_variance/mul*
T0*0
_class&
$"loc:@rconv5/norm1b/moving_variance*
_output_shapes
: 
�
@AssignMovingAvg_21/rconv5/norm1b/moving_variance/AssignAdd/valueConst*
valueB
 *  �?*0
_class&
$"loc:@rconv5/norm1b/moving_variance*
dtype0*
_output_shapes
: 
�
:AssignMovingAvg_21/rconv5/norm1b/moving_variance/AssignAdd	AssignAdd(rconv5/norm1b/moving_variance/local_step@AssignMovingAvg_21/rconv5/norm1b/moving_variance/AssignAdd/value*
T0*0
_class&
$"loc:@rconv5/norm1b/moving_variance*
_output_shapes
: 
�
5AssignMovingAvg_21/rconv5/norm1b/moving_variance/readIdentity$rconv5/norm1b/moving_variance/biased;^AssignMovingAvg_21/rconv5/norm1b/moving_variance/AssignAddO^AssignMovingAvg_21/rconv5/norm1b/moving_variance/rconv5/norm1b/moving_variance*
T0*0
_class&
$"loc:@rconv5/norm1b/moving_variance*
_output_shapes
: 
�
8AssignMovingAvg_21/rconv5/norm1b/moving_variance/sub_1/xConst;^AssignMovingAvg_21/rconv5/norm1b/moving_variance/AssignAddO^AssignMovingAvg_21/rconv5/norm1b/moving_variance/rconv5/norm1b/moving_variance*
valueB
 *  �?*0
_class&
$"loc:@rconv5/norm1b/moving_variance*
dtype0*
_output_shapes
: 
�
6AssignMovingAvg_21/rconv5/norm1b/moving_variance/sub_1Sub8AssignMovingAvg_21/rconv5/norm1b/moving_variance/sub_1/xAssignMovingAvg_21/decay*
_output_shapes
: *
T0*0
_class&
$"loc:@rconv5/norm1b/moving_variance
�
7AssignMovingAvg_21/rconv5/norm1b/moving_variance/read_1Identity(rconv5/norm1b/moving_variance/local_step;^AssignMovingAvg_21/rconv5/norm1b/moving_variance/AssignAddO^AssignMovingAvg_21/rconv5/norm1b/moving_variance/rconv5/norm1b/moving_variance*0
_class&
$"loc:@rconv5/norm1b/moving_variance*
_output_shapes
: *
T0
�
4AssignMovingAvg_21/rconv5/norm1b/moving_variance/PowPow6AssignMovingAvg_21/rconv5/norm1b/moving_variance/sub_17AssignMovingAvg_21/rconv5/norm1b/moving_variance/read_1*0
_class&
$"loc:@rconv5/norm1b/moving_variance*
_output_shapes
: *
T0
�
8AssignMovingAvg_21/rconv5/norm1b/moving_variance/sub_2/xConst;^AssignMovingAvg_21/rconv5/norm1b/moving_variance/AssignAddO^AssignMovingAvg_21/rconv5/norm1b/moving_variance/rconv5/norm1b/moving_variance*
valueB
 *  �?*0
_class&
$"loc:@rconv5/norm1b/moving_variance*
dtype0*
_output_shapes
: 
�
6AssignMovingAvg_21/rconv5/norm1b/moving_variance/sub_2Sub8AssignMovingAvg_21/rconv5/norm1b/moving_variance/sub_2/x4AssignMovingAvg_21/rconv5/norm1b/moving_variance/Pow*
T0*0
_class&
$"loc:@rconv5/norm1b/moving_variance*
_output_shapes
: 
�
8AssignMovingAvg_21/rconv5/norm1b/moving_variance/truedivRealDiv5AssignMovingAvg_21/rconv5/norm1b/moving_variance/read6AssignMovingAvg_21/rconv5/norm1b/moving_variance/sub_2*
T0*0
_class&
$"loc:@rconv5/norm1b/moving_variance*
_output_shapes
: 
�
6AssignMovingAvg_21/rconv5/norm1b/moving_variance/sub_3Sub"rconv5/norm1b/moving_variance/read8AssignMovingAvg_21/rconv5/norm1b/moving_variance/truediv*
T0*0
_class&
$"loc:@rconv5/norm1b/moving_variance*
_output_shapes
: 
�
AssignMovingAvg_21	AssignSubrconv5/norm1b/moving_variance6AssignMovingAvg_21/rconv5/norm1b/moving_variance/sub_3*
T0*0
_class&
$"loc:@rconv5/norm1b/moving_variance*
_output_shapes
: 
M
cond_13/SwitchSwitchConst_2Const_2*
T0
*
_output_shapes
: : 
O
cond_13/switch_tIdentitycond_13/Switch:1*
_output_shapes
: *
T0

M
cond_13/switch_fIdentitycond_13/Switch*
_output_shapes
: *
T0

E
cond_13/pred_idIdentityConst_2*
T0
*
_output_shapes
: 
�
cond_13/Switch_1Switch
truediv_22cond_13/pred_id*
T0*
_class
loc:@truediv_22* 
_output_shapes
: : 
�
cond_13/Switch_2Switch
truediv_23cond_13/pred_id*
T0*
_class
loc:@truediv_23* 
_output_shapes
: : 
�
cond_13/Switch_3Switchrconv5/norm1b/moving_mean/readcond_13/pred_id*
T0*,
_class"
 loc:@rconv5/norm1b/moving_mean* 
_output_shapes
: : 
�
cond_13/Switch_4Switch"rconv5/norm1b/moving_variance/readcond_13/pred_id*
T0*0
_class&
$"loc:@rconv5/norm1b/moving_variance* 
_output_shapes
: : 
l
cond_13/MergeMergecond_13/Switch_3cond_13/Switch_1:1*
N*
_output_shapes

: : *
T0
n
cond_13/Merge_1Mergecond_13/Switch_4cond_13/Switch_2:1*
_output_shapes

: : *
T0*
N
W
batchnorm_10/add/yConst*
valueB
 *o�:*
dtype0*
_output_shapes
: 
a
batchnorm_10/addAddcond_13/Merge_1batchnorm_10/add/y*
T0*
_output_shapes
: 
R
batchnorm_10/RsqrtRsqrtbatchnorm_10/add*
T0*
_output_shapes
: 
p
batchnorm_10/mulMul	Conv2D_11batchnorm_10/Rsqrt*/
_output_shapes
:���������		 *
T0
a
batchnorm_10/mul_1Mulcond_13/Mergebatchnorm_10/Rsqrt*
T0*
_output_shapes
: 
i
batchnorm_10/subSubrconv5/norm1b/beta/readbatchnorm_10/mul_1*
T0*
_output_shapes
: 
w
batchnorm_10/add_1Addbatchnorm_10/mulbatchnorm_10/sub*
T0*/
_output_shapes
:���������		 
l
mul_48Mulbatchnorm_10/add_1strided_slice_5*/
_output_shapes
:���������		 *
T0
Q
Relu_10Relumul_48*
T0*/
_output_shapes
:���������		 
h
Reshape_9/shapeConst*%
valueB"����         *
dtype0*
_output_shapes
:
f
	Reshape_9ReshapeSum_1Reshape_9/shape*
T0*/
_output_shapes
:���������
i
Reshape_10/shapeConst*%
valueB"����         *
dtype0*
_output_shapes
:
g

Reshape_10ReshapeSqrtReshape_10/shape*
T0*/
_output_shapes
:���������
i
Sum_25/reduction_indicesConst*
valueB"      *
dtype0*
_output_shapes
:
{
Sum_25SumRelu_10Sum_25/reduction_indices*/
_output_shapes
:��������� *
	keep_dims(*
T0
b

truediv_24RealDivSum_25	Reshape_9*/
_output_shapes
:��������� *
T0
h
Max_1/reduction_indicesConst*
valueB"      *
dtype0*
_output_shapes
:
y
Max_1MaxRelu_10Max_1/reduction_indices*/
_output_shapes
:��������� *
	keep_dims(*
T0
M
sub_12/yConst*
valueB
 *  `A*
dtype0*
_output_shapes
: 
]
sub_12Sub
Reshape_10sub_12/y*
T0*/
_output_shapes
:���������
Q
truediv_25/yConst*
valueB
 *   A*
dtype0*
_output_shapes
: 
e

truediv_25RealDivsub_12truediv_25/y*
T0*/
_output_shapes
:���������
_
mul_49Mul
truediv_24
truediv_25*
T0*/
_output_shapes
:��������� 
O
concat_1/axisConst*
value	B :*
dtype0*
_output_shapes
: 
�
concat_1ConcatV2
truediv_24mul_49Max_1concat_1/axis*
T0*
N*/
_output_shapes
:���������`
j
truncated_normal_14/shapeConst*
dtype0*
_output_shapes
:*
valueB"`   @   
]
truncated_normal_14/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
_
truncated_normal_14/stddevConst*
valueB
 *:�>*
dtype0*
_output_shapes
: 
�
#truncated_normal_14/TruncatedNormalTruncatedNormaltruncated_normal_14/shape*
_output_shapes

:`@*
T0*
dtype0
�
truncated_normal_14/mulMul#truncated_normal_14/TruncatedNormaltruncated_normal_14/stddev*
_output_shapes

:`@*
T0
v
truncated_normal_14Addtruncated_normal_14/multruncated_normal_14/mean*
T0*
_output_shapes

:`@
M
mul_50/yConst*
_output_shapes
: *
valueB
 *   ?*
dtype0
U
mul_50Multruncated_normal_14mul_50/y*
T0*
_output_shapes

:`@
Z

rconv5/w1r
VariableV2*
shape
:`@*
dtype0*
_output_shapes

:`@
w
rconv5/w1r/AssignAssign
rconv5/w1rmul_50*
_output_shapes

:`@*
T0*
_class
loc:@rconv5/w1r
o
rconv5/w1r/readIdentity
rconv5/w1r*
_output_shapes

:`@*
T0*
_class
loc:@rconv5/w1r
Z
Tensordot_3/axesConst*
valueB:*
dtype0*
_output_shapes
:
e
Tensordot_3/freeConst*!
valueB"          *
dtype0*
_output_shapes
:
I
Tensordot_3/ShapeShapeconcat_1*
T0*
_output_shapes
:
[
Tensordot_3/GatherV2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
�
Tensordot_3/GatherV2GatherV2Tensordot_3/ShapeTensordot_3/freeTensordot_3/GatherV2/axis*
Tindices0*
Tparams0*
_output_shapes
:*
Taxis0
]
Tensordot_3/GatherV2_1/axisConst*
_output_shapes
: *
value	B : *
dtype0
�
Tensordot_3/GatherV2_1GatherV2Tensordot_3/ShapeTensordot_3/axesTensordot_3/GatherV2_1/axis*
_output_shapes
:*
Taxis0*
Tindices0*
Tparams0
[
Tensordot_3/ConstConst*
valueB: *
dtype0*
_output_shapes
:
b
Tensordot_3/ProdProdTensordot_3/GatherV2Tensordot_3/Const*
_output_shapes
: *
T0
]
Tensordot_3/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
h
Tensordot_3/Prod_1ProdTensordot_3/GatherV2_1Tensordot_3/Const_1*
_output_shapes
: *
T0
Y
Tensordot_3/concat/axisConst*
_output_shapes
: *
value	B : *
dtype0
�
Tensordot_3/concatConcatV2Tensordot_3/freeTensordot_3/axesTensordot_3/concat/axis*
N*
_output_shapes
:*
T0
m
Tensordot_3/stackPackTensordot_3/ProdTensordot_3/Prod_1*
N*
_output_shapes
:*
T0
z
Tensordot_3/transpose	Transposeconcat_1Tensordot_3/concat*
T0*/
_output_shapes
:���������`
�
Tensordot_3/ReshapeReshapeTensordot_3/transposeTensordot_3/stack*
T0*0
_output_shapes
:������������������
m
Tensordot_3/transpose_1/permConst*
valueB"       *
dtype0*
_output_shapes
:
|
Tensordot_3/transpose_1	Transposerconv5/w1r/readTensordot_3/transpose_1/perm*
T0*
_output_shapes

:`@
l
Tensordot_3/Reshape_1/shapeConst*
valueB"`   @   *
dtype0*
_output_shapes
:

Tensordot_3/Reshape_1ReshapeTensordot_3/transpose_1Tensordot_3/Reshape_1/shape*
T0*
_output_shapes

:`@
z
Tensordot_3/MatMulMatMulTensordot_3/ReshapeTensordot_3/Reshape_1*
T0*'
_output_shapes
:���������@
]
Tensordot_3/Const_2Const*
valueB:@*
dtype0*
_output_shapes
:
[
Tensordot_3/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
Tensordot_3/concat_1ConcatV2Tensordot_3/GatherV2Tensordot_3/Const_2Tensordot_3/concat_1/axis*
T0*
N*
_output_shapes
:
z
Tensordot_3ReshapeTensordot_3/MatMulTensordot_3/concat_1*
T0*/
_output_shapes
:���������@
^
add_7Add	Conv2D_10Tensordot_3*
T0*/
_output_shapes
:���������		@
U
zeros_23Const*
dtype0*
_output_shapes
:@*
valueB@*    
`
rconv5/norm2/moving_mean
VariableV2*
shape:@*
dtype0*
_output_shapes
:@
�
rconv5/norm2/moving_mean/AssignAssignrconv5/norm2/moving_meanzeros_23*
T0*+
_class!
loc:@rconv5/norm2/moving_mean*
_output_shapes
:@
�
rconv5/norm2/moving_mean/readIdentityrconv5/norm2/moving_mean*
T0*+
_class!
loc:@rconv5/norm2/moving_mean*
_output_shapes
:@
T
ones_11Const*
valueB@*  �?*
dtype0*
_output_shapes
:@
d
rconv5/norm2/moving_variance
VariableV2*
_output_shapes
:@*
shape:@*
dtype0
�
#rconv5/norm2/moving_variance/AssignAssignrconv5/norm2/moving_varianceones_11*
T0*/
_class%
#!loc:@rconv5/norm2/moving_variance*
_output_shapes
:@
�
!rconv5/norm2/moving_variance/readIdentityrconv5/norm2/moving_variance*
T0*/
_class%
#!loc:@rconv5/norm2/moving_variance*
_output_shapes
:@
U
zeros_24Const*
_output_shapes
:@*
valueB@*    *
dtype0
Y
rconv5/norm2/beta
VariableV2*
dtype0*
_output_shapes
:@*
shape:@
�
rconv5/norm2/beta/AssignAssignrconv5/norm2/betazeros_24*
T0*$
_class
loc:@rconv5/norm2/beta*
_output_shapes
:@
�
rconv5/norm2/beta/readIdentityrconv5/norm2/beta*
_output_shapes
:@*
T0*$
_class
loc:@rconv5/norm2/beta
_
mul_51Muladd_7strided_slice_5*
T0*/
_output_shapes
:���������		@
m
Sum_26/reduction_indicesConst*!
valueB"          *
dtype0*
_output_shapes
:
T
Sum_26Summul_51Sum_26/reduction_indices*
T0*
_output_shapes
:@
G

truediv_26RealDivSum_26Sum*
T0*
_output_shapes
:@
Z
sub_13Subadd_7
truediv_26*
T0*/
_output_shapes
:���������		@
`
mul_52Mulsub_13strided_slice_5*
T0*/
_output_shapes
:���������		@
U
	Square_11Squaremul_52*/
_output_shapes
:���������		@*
T0
m
Sum_27/reduction_indicesConst*!
valueB"          *
dtype0*
_output_shapes
:
W
Sum_27Sum	Square_11Sum_27/reduction_indices*
_output_shapes
:@*
T0
G

truediv_27RealDivSum_27Sum*
T0*
_output_shapes
:@
�
AssignMovingAvg_22/decayConst*
_output_shapes
: *
valueB
 *o;*+
_class!
loc:@rconv5/norm2/moving_mean*
dtype0
�
1AssignMovingAvg_22/rconv5/norm2/moving_mean/zerosConst*
_output_shapes
:@*
valueB@*    *+
_class!
loc:@rconv5/norm2/moving_mean*
dtype0
�
rconv5/norm2/moving_mean/biased
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*+
_class!
loc:@rconv5/norm2/moving_mean
�
&rconv5/norm2/moving_mean/biased/AssignAssignrconv5/norm2/moving_mean/biased1AssignMovingAvg_22/rconv5/norm2/moving_mean/zeros*
T0*+
_class!
loc:@rconv5/norm2/moving_mean*
_output_shapes
:@
�
$rconv5/norm2/moving_mean/biased/readIdentityrconv5/norm2/moving_mean/biased*
T0*+
_class!
loc:@rconv5/norm2/moving_mean*
_output_shapes
:@
�
5rconv5/norm2/moving_mean/local_step/Initializer/zerosConst*
valueB
 *    *+
_class!
loc:@rconv5/norm2/moving_mean*
dtype0*
_output_shapes
: 
�
#rconv5/norm2/moving_mean/local_step
VariableV2*+
_class!
loc:@rconv5/norm2/moving_mean*
shape: *
dtype0*
_output_shapes
: 
�
*rconv5/norm2/moving_mean/local_step/AssignAssign#rconv5/norm2/moving_mean/local_step5rconv5/norm2/moving_mean/local_step/Initializer/zeros*
_output_shapes
: *
T0*+
_class!
loc:@rconv5/norm2/moving_mean
�
(rconv5/norm2/moving_mean/local_step/readIdentity#rconv5/norm2/moving_mean/local_step*+
_class!
loc:@rconv5/norm2/moving_mean*
_output_shapes
: *
T0
�
/AssignMovingAvg_22/rconv5/norm2/moving_mean/subSub$rconv5/norm2/moving_mean/biased/read
truediv_26*
T0*+
_class!
loc:@rconv5/norm2/moving_mean*
_output_shapes
:@
�
/AssignMovingAvg_22/rconv5/norm2/moving_mean/mulMul/AssignMovingAvg_22/rconv5/norm2/moving_mean/subAssignMovingAvg_22/decay*
T0*+
_class!
loc:@rconv5/norm2/moving_mean*
_output_shapes
:@
�
DAssignMovingAvg_22/rconv5/norm2/moving_mean/rconv5/norm2/moving_mean	AssignSubrconv5/norm2/moving_mean/biased/AssignMovingAvg_22/rconv5/norm2/moving_mean/mul*
T0*+
_class!
loc:@rconv5/norm2/moving_mean*
_output_shapes
:@
�
;AssignMovingAvg_22/rconv5/norm2/moving_mean/AssignAdd/valueConst*
valueB
 *  �?*+
_class!
loc:@rconv5/norm2/moving_mean*
dtype0*
_output_shapes
: 
�
5AssignMovingAvg_22/rconv5/norm2/moving_mean/AssignAdd	AssignAdd#rconv5/norm2/moving_mean/local_step;AssignMovingAvg_22/rconv5/norm2/moving_mean/AssignAdd/value*
T0*+
_class!
loc:@rconv5/norm2/moving_mean*
_output_shapes
: 
�
0AssignMovingAvg_22/rconv5/norm2/moving_mean/readIdentityrconv5/norm2/moving_mean/biased6^AssignMovingAvg_22/rconv5/norm2/moving_mean/AssignAddE^AssignMovingAvg_22/rconv5/norm2/moving_mean/rconv5/norm2/moving_mean*
T0*+
_class!
loc:@rconv5/norm2/moving_mean*
_output_shapes
:@
�
3AssignMovingAvg_22/rconv5/norm2/moving_mean/sub_1/xConst6^AssignMovingAvg_22/rconv5/norm2/moving_mean/AssignAddE^AssignMovingAvg_22/rconv5/norm2/moving_mean/rconv5/norm2/moving_mean*
dtype0*
_output_shapes
: *
valueB
 *  �?*+
_class!
loc:@rconv5/norm2/moving_mean
�
1AssignMovingAvg_22/rconv5/norm2/moving_mean/sub_1Sub3AssignMovingAvg_22/rconv5/norm2/moving_mean/sub_1/xAssignMovingAvg_22/decay*
T0*+
_class!
loc:@rconv5/norm2/moving_mean*
_output_shapes
: 
�
2AssignMovingAvg_22/rconv5/norm2/moving_mean/read_1Identity#rconv5/norm2/moving_mean/local_step6^AssignMovingAvg_22/rconv5/norm2/moving_mean/AssignAddE^AssignMovingAvg_22/rconv5/norm2/moving_mean/rconv5/norm2/moving_mean*
T0*+
_class!
loc:@rconv5/norm2/moving_mean*
_output_shapes
: 
�
/AssignMovingAvg_22/rconv5/norm2/moving_mean/PowPow1AssignMovingAvg_22/rconv5/norm2/moving_mean/sub_12AssignMovingAvg_22/rconv5/norm2/moving_mean/read_1*
T0*+
_class!
loc:@rconv5/norm2/moving_mean*
_output_shapes
: 
�
3AssignMovingAvg_22/rconv5/norm2/moving_mean/sub_2/xConst6^AssignMovingAvg_22/rconv5/norm2/moving_mean/AssignAddE^AssignMovingAvg_22/rconv5/norm2/moving_mean/rconv5/norm2/moving_mean*
valueB
 *  �?*+
_class!
loc:@rconv5/norm2/moving_mean*
dtype0*
_output_shapes
: 
�
1AssignMovingAvg_22/rconv5/norm2/moving_mean/sub_2Sub3AssignMovingAvg_22/rconv5/norm2/moving_mean/sub_2/x/AssignMovingAvg_22/rconv5/norm2/moving_mean/Pow*
T0*+
_class!
loc:@rconv5/norm2/moving_mean*
_output_shapes
: 
�
3AssignMovingAvg_22/rconv5/norm2/moving_mean/truedivRealDiv0AssignMovingAvg_22/rconv5/norm2/moving_mean/read1AssignMovingAvg_22/rconv5/norm2/moving_mean/sub_2*
T0*+
_class!
loc:@rconv5/norm2/moving_mean*
_output_shapes
:@
�
1AssignMovingAvg_22/rconv5/norm2/moving_mean/sub_3Subrconv5/norm2/moving_mean/read3AssignMovingAvg_22/rconv5/norm2/moving_mean/truediv*
T0*+
_class!
loc:@rconv5/norm2/moving_mean*
_output_shapes
:@
�
AssignMovingAvg_22	AssignSubrconv5/norm2/moving_mean1AssignMovingAvg_22/rconv5/norm2/moving_mean/sub_3*
T0*+
_class!
loc:@rconv5/norm2/moving_mean*
_output_shapes
:@
�
AssignMovingAvg_23/decayConst*
valueB
 *o;*/
_class%
#!loc:@rconv5/norm2/moving_variance*
dtype0*
_output_shapes
: 
�
5AssignMovingAvg_23/rconv5/norm2/moving_variance/zerosConst*
valueB@*    */
_class%
#!loc:@rconv5/norm2/moving_variance*
dtype0*
_output_shapes
:@
�
#rconv5/norm2/moving_variance/biased
VariableV2*/
_class%
#!loc:@rconv5/norm2/moving_variance*
shape:@*
dtype0*
_output_shapes
:@
�
*rconv5/norm2/moving_variance/biased/AssignAssign#rconv5/norm2/moving_variance/biased5AssignMovingAvg_23/rconv5/norm2/moving_variance/zeros*
T0*/
_class%
#!loc:@rconv5/norm2/moving_variance*
_output_shapes
:@
�
(rconv5/norm2/moving_variance/biased/readIdentity#rconv5/norm2/moving_variance/biased*
_output_shapes
:@*
T0*/
_class%
#!loc:@rconv5/norm2/moving_variance
�
9rconv5/norm2/moving_variance/local_step/Initializer/zerosConst*
_output_shapes
: *
valueB
 *    */
_class%
#!loc:@rconv5/norm2/moving_variance*
dtype0
�
'rconv5/norm2/moving_variance/local_step
VariableV2*
dtype0*
_output_shapes
: */
_class%
#!loc:@rconv5/norm2/moving_variance*
shape: 
�
.rconv5/norm2/moving_variance/local_step/AssignAssign'rconv5/norm2/moving_variance/local_step9rconv5/norm2/moving_variance/local_step/Initializer/zeros*
T0*/
_class%
#!loc:@rconv5/norm2/moving_variance*
_output_shapes
: 
�
,rconv5/norm2/moving_variance/local_step/readIdentity'rconv5/norm2/moving_variance/local_step*
_output_shapes
: *
T0*/
_class%
#!loc:@rconv5/norm2/moving_variance
�
3AssignMovingAvg_23/rconv5/norm2/moving_variance/subSub(rconv5/norm2/moving_variance/biased/read
truediv_27*
T0*/
_class%
#!loc:@rconv5/norm2/moving_variance*
_output_shapes
:@
�
3AssignMovingAvg_23/rconv5/norm2/moving_variance/mulMul3AssignMovingAvg_23/rconv5/norm2/moving_variance/subAssignMovingAvg_23/decay*
_output_shapes
:@*
T0*/
_class%
#!loc:@rconv5/norm2/moving_variance
�
LAssignMovingAvg_23/rconv5/norm2/moving_variance/rconv5/norm2/moving_variance	AssignSub#rconv5/norm2/moving_variance/biased3AssignMovingAvg_23/rconv5/norm2/moving_variance/mul*
T0*/
_class%
#!loc:@rconv5/norm2/moving_variance*
_output_shapes
:@
�
?AssignMovingAvg_23/rconv5/norm2/moving_variance/AssignAdd/valueConst*
dtype0*
_output_shapes
: *
valueB
 *  �?*/
_class%
#!loc:@rconv5/norm2/moving_variance
�
9AssignMovingAvg_23/rconv5/norm2/moving_variance/AssignAdd	AssignAdd'rconv5/norm2/moving_variance/local_step?AssignMovingAvg_23/rconv5/norm2/moving_variance/AssignAdd/value*
T0*/
_class%
#!loc:@rconv5/norm2/moving_variance*
_output_shapes
: 
�
4AssignMovingAvg_23/rconv5/norm2/moving_variance/readIdentity#rconv5/norm2/moving_variance/biased:^AssignMovingAvg_23/rconv5/norm2/moving_variance/AssignAddM^AssignMovingAvg_23/rconv5/norm2/moving_variance/rconv5/norm2/moving_variance*
_output_shapes
:@*
T0*/
_class%
#!loc:@rconv5/norm2/moving_variance
�
7AssignMovingAvg_23/rconv5/norm2/moving_variance/sub_1/xConst:^AssignMovingAvg_23/rconv5/norm2/moving_variance/AssignAddM^AssignMovingAvg_23/rconv5/norm2/moving_variance/rconv5/norm2/moving_variance*
_output_shapes
: *
valueB
 *  �?*/
_class%
#!loc:@rconv5/norm2/moving_variance*
dtype0
�
5AssignMovingAvg_23/rconv5/norm2/moving_variance/sub_1Sub7AssignMovingAvg_23/rconv5/norm2/moving_variance/sub_1/xAssignMovingAvg_23/decay*
T0*/
_class%
#!loc:@rconv5/norm2/moving_variance*
_output_shapes
: 
�
6AssignMovingAvg_23/rconv5/norm2/moving_variance/read_1Identity'rconv5/norm2/moving_variance/local_step:^AssignMovingAvg_23/rconv5/norm2/moving_variance/AssignAddM^AssignMovingAvg_23/rconv5/norm2/moving_variance/rconv5/norm2/moving_variance*
T0*/
_class%
#!loc:@rconv5/norm2/moving_variance*
_output_shapes
: 
�
3AssignMovingAvg_23/rconv5/norm2/moving_variance/PowPow5AssignMovingAvg_23/rconv5/norm2/moving_variance/sub_16AssignMovingAvg_23/rconv5/norm2/moving_variance/read_1*
T0*/
_class%
#!loc:@rconv5/norm2/moving_variance*
_output_shapes
: 
�
7AssignMovingAvg_23/rconv5/norm2/moving_variance/sub_2/xConst:^AssignMovingAvg_23/rconv5/norm2/moving_variance/AssignAddM^AssignMovingAvg_23/rconv5/norm2/moving_variance/rconv5/norm2/moving_variance*
valueB
 *  �?*/
_class%
#!loc:@rconv5/norm2/moving_variance*
dtype0*
_output_shapes
: 
�
5AssignMovingAvg_23/rconv5/norm2/moving_variance/sub_2Sub7AssignMovingAvg_23/rconv5/norm2/moving_variance/sub_2/x3AssignMovingAvg_23/rconv5/norm2/moving_variance/Pow*
T0*/
_class%
#!loc:@rconv5/norm2/moving_variance*
_output_shapes
: 
�
7AssignMovingAvg_23/rconv5/norm2/moving_variance/truedivRealDiv4AssignMovingAvg_23/rconv5/norm2/moving_variance/read5AssignMovingAvg_23/rconv5/norm2/moving_variance/sub_2*
T0*/
_class%
#!loc:@rconv5/norm2/moving_variance*
_output_shapes
:@
�
5AssignMovingAvg_23/rconv5/norm2/moving_variance/sub_3Sub!rconv5/norm2/moving_variance/read7AssignMovingAvg_23/rconv5/norm2/moving_variance/truediv*
T0*/
_class%
#!loc:@rconv5/norm2/moving_variance*
_output_shapes
:@
�
AssignMovingAvg_23	AssignSubrconv5/norm2/moving_variance5AssignMovingAvg_23/rconv5/norm2/moving_variance/sub_3*
T0*/
_class%
#!loc:@rconv5/norm2/moving_variance*
_output_shapes
:@
M
cond_14/SwitchSwitchConst_2Const_2*
_output_shapes
: : *
T0

O
cond_14/switch_tIdentitycond_14/Switch:1*
T0
*
_output_shapes
: 
M
cond_14/switch_fIdentitycond_14/Switch*
_output_shapes
: *
T0

E
cond_14/pred_idIdentityConst_2*
_output_shapes
: *
T0

�
cond_14/Switch_1Switch
truediv_26cond_14/pred_id*
T0*
_class
loc:@truediv_26* 
_output_shapes
:@:@
�
cond_14/Switch_2Switch
truediv_27cond_14/pred_id*
T0*
_class
loc:@truediv_27* 
_output_shapes
:@:@
�
cond_14/Switch_3Switchrconv5/norm2/moving_mean/readcond_14/pred_id* 
_output_shapes
:@:@*
T0*+
_class!
loc:@rconv5/norm2/moving_mean
�
cond_14/Switch_4Switch!rconv5/norm2/moving_variance/readcond_14/pred_id*
T0*/
_class%
#!loc:@rconv5/norm2/moving_variance* 
_output_shapes
:@:@
l
cond_14/MergeMergecond_14/Switch_3cond_14/Switch_1:1*
T0*
N*
_output_shapes

:@: 
n
cond_14/Merge_1Mergecond_14/Switch_4cond_14/Switch_2:1*
T0*
N*
_output_shapes

:@: 
W
batchnorm_11/add/yConst*
valueB
 *o�:*
dtype0*
_output_shapes
: 
a
batchnorm_11/addAddcond_14/Merge_1batchnorm_11/add/y*
T0*
_output_shapes
:@
R
batchnorm_11/RsqrtRsqrtbatchnorm_11/add*
_output_shapes
:@*
T0
l
batchnorm_11/mulMuladd_7batchnorm_11/Rsqrt*/
_output_shapes
:���������		@*
T0
a
batchnorm_11/mul_1Mulcond_14/Mergebatchnorm_11/Rsqrt*
_output_shapes
:@*
T0
h
batchnorm_11/subSubrconv5/norm2/beta/readbatchnorm_11/mul_1*
T0*
_output_shapes
:@
w
batchnorm_11/add_1Addbatchnorm_11/mulbatchnorm_11/sub*
T0*/
_output_shapes
:���������		@
l
mul_53Mulbatchnorm_11/add_1strided_slice_5*
T0*/
_output_shapes
:���������		@
Q
Relu_11Relumul_53*/
_output_shapes
:���������		@*
T0
r
truncated_normal_15/shapeConst*
dtype0*
_output_shapes
:*%
valueB"      @   `   
]
truncated_normal_15/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
_
truncated_normal_15/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *�[q=
�
#truncated_normal_15/TruncatedNormalTruncatedNormaltruncated_normal_15/shape*
T0*
dtype0*&
_output_shapes
:@`
�
truncated_normal_15/mulMul#truncated_normal_15/TruncatedNormaltruncated_normal_15/stddev*
T0*&
_output_shapes
:@`
~
truncated_normal_15Addtruncated_normal_15/multruncated_normal_15/mean*
T0*&
_output_shapes
:@`
M
mul_54/yConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
]
mul_54Multruncated_normal_15mul_54/y*
T0*&
_output_shapes
:@`
i
	rconv5/w2
VariableV2*
dtype0*&
_output_shapes
:@`*
shape:@`
|
rconv5/w2/AssignAssign	rconv5/w2mul_54*
T0*
_class
loc:@rconv5/w2*&
_output_shapes
:@`
t
rconv5/w2/readIdentity	rconv5/w2*
T0*
_class
loc:@rconv5/w2*&
_output_shapes
:@`
�
	Conv2D_12Conv2DRelu_11rconv5/w2/read*/
_output_shapes
:���������		`*
T0*
strides
*
paddingSAME
X
add_8Addadd_6	Conv2D_12*
T0*/
_output_shapes
:���������		`
U
zeros_25Const*
_output_shapes
:`*
valueB`*    *
dtype0
`
rconv6/norm1/moving_mean
VariableV2*
shape:`*
dtype0*
_output_shapes
:`
�
rconv6/norm1/moving_mean/AssignAssignrconv6/norm1/moving_meanzeros_25*+
_class!
loc:@rconv6/norm1/moving_mean*
_output_shapes
:`*
T0
�
rconv6/norm1/moving_mean/readIdentityrconv6/norm1/moving_mean*
T0*+
_class!
loc:@rconv6/norm1/moving_mean*
_output_shapes
:`
T
ones_12Const*
valueB`*  �?*
dtype0*
_output_shapes
:`
d
rconv6/norm1/moving_variance
VariableV2*
dtype0*
_output_shapes
:`*
shape:`
�
#rconv6/norm1/moving_variance/AssignAssignrconv6/norm1/moving_varianceones_12*
T0*/
_class%
#!loc:@rconv6/norm1/moving_variance*
_output_shapes
:`
�
!rconv6/norm1/moving_variance/readIdentityrconv6/norm1/moving_variance*
T0*/
_class%
#!loc:@rconv6/norm1/moving_variance*
_output_shapes
:`
U
zeros_26Const*
valueB`*    *
dtype0*
_output_shapes
:`
Y
rconv6/norm1/beta
VariableV2*
dtype0*
_output_shapes
:`*
shape:`
�
rconv6/norm1/beta/AssignAssignrconv6/norm1/betazeros_26*
_output_shapes
:`*
T0*$
_class
loc:@rconv6/norm1/beta
�
rconv6/norm1/beta/readIdentityrconv6/norm1/beta*$
_class
loc:@rconv6/norm1/beta*
_output_shapes
:`*
T0
_
mul_55Muladd_8strided_slice_5*/
_output_shapes
:���������		`*
T0
m
Sum_28/reduction_indicesConst*
_output_shapes
:*!
valueB"          *
dtype0
T
Sum_28Summul_55Sum_28/reduction_indices*
_output_shapes
:`*
T0
G

truediv_28RealDivSum_28Sum*
T0*
_output_shapes
:`
Z
sub_14Subadd_8
truediv_28*
T0*/
_output_shapes
:���������		`
`
mul_56Mulsub_14strided_slice_5*/
_output_shapes
:���������		`*
T0
U
	Square_12Squaremul_56*/
_output_shapes
:���������		`*
T0
m
Sum_29/reduction_indicesConst*!
valueB"          *
dtype0*
_output_shapes
:
W
Sum_29Sum	Square_12Sum_29/reduction_indices*
T0*
_output_shapes
:`
G

truediv_29RealDivSum_29Sum*
T0*
_output_shapes
:`
�
AssignMovingAvg_24/decayConst*
valueB
 *o;*+
_class!
loc:@rconv6/norm1/moving_mean*
dtype0*
_output_shapes
: 
�
1AssignMovingAvg_24/rconv6/norm1/moving_mean/zerosConst*
valueB`*    *+
_class!
loc:@rconv6/norm1/moving_mean*
dtype0*
_output_shapes
:`
�
rconv6/norm1/moving_mean/biased
VariableV2*+
_class!
loc:@rconv6/norm1/moving_mean*
shape:`*
dtype0*
_output_shapes
:`
�
&rconv6/norm1/moving_mean/biased/AssignAssignrconv6/norm1/moving_mean/biased1AssignMovingAvg_24/rconv6/norm1/moving_mean/zeros*
T0*+
_class!
loc:@rconv6/norm1/moving_mean*
_output_shapes
:`
�
$rconv6/norm1/moving_mean/biased/readIdentityrconv6/norm1/moving_mean/biased*
T0*+
_class!
loc:@rconv6/norm1/moving_mean*
_output_shapes
:`
�
5rconv6/norm1/moving_mean/local_step/Initializer/zerosConst*
valueB
 *    *+
_class!
loc:@rconv6/norm1/moving_mean*
dtype0*
_output_shapes
: 
�
#rconv6/norm1/moving_mean/local_step
VariableV2*+
_class!
loc:@rconv6/norm1/moving_mean*
shape: *
dtype0*
_output_shapes
: 
�
*rconv6/norm1/moving_mean/local_step/AssignAssign#rconv6/norm1/moving_mean/local_step5rconv6/norm1/moving_mean/local_step/Initializer/zeros*
T0*+
_class!
loc:@rconv6/norm1/moving_mean*
_output_shapes
: 
�
(rconv6/norm1/moving_mean/local_step/readIdentity#rconv6/norm1/moving_mean/local_step*
T0*+
_class!
loc:@rconv6/norm1/moving_mean*
_output_shapes
: 
�
/AssignMovingAvg_24/rconv6/norm1/moving_mean/subSub$rconv6/norm1/moving_mean/biased/read
truediv_28*
T0*+
_class!
loc:@rconv6/norm1/moving_mean*
_output_shapes
:`
�
/AssignMovingAvg_24/rconv6/norm1/moving_mean/mulMul/AssignMovingAvg_24/rconv6/norm1/moving_mean/subAssignMovingAvg_24/decay*
T0*+
_class!
loc:@rconv6/norm1/moving_mean*
_output_shapes
:`
�
DAssignMovingAvg_24/rconv6/norm1/moving_mean/rconv6/norm1/moving_mean	AssignSubrconv6/norm1/moving_mean/biased/AssignMovingAvg_24/rconv6/norm1/moving_mean/mul*
T0*+
_class!
loc:@rconv6/norm1/moving_mean*
_output_shapes
:`
�
;AssignMovingAvg_24/rconv6/norm1/moving_mean/AssignAdd/valueConst*
valueB
 *  �?*+
_class!
loc:@rconv6/norm1/moving_mean*
dtype0*
_output_shapes
: 
�
5AssignMovingAvg_24/rconv6/norm1/moving_mean/AssignAdd	AssignAdd#rconv6/norm1/moving_mean/local_step;AssignMovingAvg_24/rconv6/norm1/moving_mean/AssignAdd/value*
_output_shapes
: *
T0*+
_class!
loc:@rconv6/norm1/moving_mean
�
0AssignMovingAvg_24/rconv6/norm1/moving_mean/readIdentityrconv6/norm1/moving_mean/biased6^AssignMovingAvg_24/rconv6/norm1/moving_mean/AssignAddE^AssignMovingAvg_24/rconv6/norm1/moving_mean/rconv6/norm1/moving_mean*
_output_shapes
:`*
T0*+
_class!
loc:@rconv6/norm1/moving_mean
�
3AssignMovingAvg_24/rconv6/norm1/moving_mean/sub_1/xConst6^AssignMovingAvg_24/rconv6/norm1/moving_mean/AssignAddE^AssignMovingAvg_24/rconv6/norm1/moving_mean/rconv6/norm1/moving_mean*
valueB
 *  �?*+
_class!
loc:@rconv6/norm1/moving_mean*
dtype0*
_output_shapes
: 
�
1AssignMovingAvg_24/rconv6/norm1/moving_mean/sub_1Sub3AssignMovingAvg_24/rconv6/norm1/moving_mean/sub_1/xAssignMovingAvg_24/decay*
_output_shapes
: *
T0*+
_class!
loc:@rconv6/norm1/moving_mean
�
2AssignMovingAvg_24/rconv6/norm1/moving_mean/read_1Identity#rconv6/norm1/moving_mean/local_step6^AssignMovingAvg_24/rconv6/norm1/moving_mean/AssignAddE^AssignMovingAvg_24/rconv6/norm1/moving_mean/rconv6/norm1/moving_mean*+
_class!
loc:@rconv6/norm1/moving_mean*
_output_shapes
: *
T0
�
/AssignMovingAvg_24/rconv6/norm1/moving_mean/PowPow1AssignMovingAvg_24/rconv6/norm1/moving_mean/sub_12AssignMovingAvg_24/rconv6/norm1/moving_mean/read_1*+
_class!
loc:@rconv6/norm1/moving_mean*
_output_shapes
: *
T0
�
3AssignMovingAvg_24/rconv6/norm1/moving_mean/sub_2/xConst6^AssignMovingAvg_24/rconv6/norm1/moving_mean/AssignAddE^AssignMovingAvg_24/rconv6/norm1/moving_mean/rconv6/norm1/moving_mean*
valueB
 *  �?*+
_class!
loc:@rconv6/norm1/moving_mean*
dtype0*
_output_shapes
: 
�
1AssignMovingAvg_24/rconv6/norm1/moving_mean/sub_2Sub3AssignMovingAvg_24/rconv6/norm1/moving_mean/sub_2/x/AssignMovingAvg_24/rconv6/norm1/moving_mean/Pow*+
_class!
loc:@rconv6/norm1/moving_mean*
_output_shapes
: *
T0
�
3AssignMovingAvg_24/rconv6/norm1/moving_mean/truedivRealDiv0AssignMovingAvg_24/rconv6/norm1/moving_mean/read1AssignMovingAvg_24/rconv6/norm1/moving_mean/sub_2*
_output_shapes
:`*
T0*+
_class!
loc:@rconv6/norm1/moving_mean
�
1AssignMovingAvg_24/rconv6/norm1/moving_mean/sub_3Subrconv6/norm1/moving_mean/read3AssignMovingAvg_24/rconv6/norm1/moving_mean/truediv*
_output_shapes
:`*
T0*+
_class!
loc:@rconv6/norm1/moving_mean
�
AssignMovingAvg_24	AssignSubrconv6/norm1/moving_mean1AssignMovingAvg_24/rconv6/norm1/moving_mean/sub_3*
T0*+
_class!
loc:@rconv6/norm1/moving_mean*
_output_shapes
:`
�
AssignMovingAvg_25/decayConst*
valueB
 *o;*/
_class%
#!loc:@rconv6/norm1/moving_variance*
dtype0*
_output_shapes
: 
�
5AssignMovingAvg_25/rconv6/norm1/moving_variance/zerosConst*
_output_shapes
:`*
valueB`*    */
_class%
#!loc:@rconv6/norm1/moving_variance*
dtype0
�
#rconv6/norm1/moving_variance/biased
VariableV2*
dtype0*
_output_shapes
:`*/
_class%
#!loc:@rconv6/norm1/moving_variance*
shape:`
�
*rconv6/norm1/moving_variance/biased/AssignAssign#rconv6/norm1/moving_variance/biased5AssignMovingAvg_25/rconv6/norm1/moving_variance/zeros*
T0*/
_class%
#!loc:@rconv6/norm1/moving_variance*
_output_shapes
:`
�
(rconv6/norm1/moving_variance/biased/readIdentity#rconv6/norm1/moving_variance/biased*
T0*/
_class%
#!loc:@rconv6/norm1/moving_variance*
_output_shapes
:`
�
9rconv6/norm1/moving_variance/local_step/Initializer/zerosConst*
valueB
 *    */
_class%
#!loc:@rconv6/norm1/moving_variance*
dtype0*
_output_shapes
: 
�
'rconv6/norm1/moving_variance/local_step
VariableV2*
_output_shapes
: */
_class%
#!loc:@rconv6/norm1/moving_variance*
shape: *
dtype0
�
.rconv6/norm1/moving_variance/local_step/AssignAssign'rconv6/norm1/moving_variance/local_step9rconv6/norm1/moving_variance/local_step/Initializer/zeros*
T0*/
_class%
#!loc:@rconv6/norm1/moving_variance*
_output_shapes
: 
�
,rconv6/norm1/moving_variance/local_step/readIdentity'rconv6/norm1/moving_variance/local_step*/
_class%
#!loc:@rconv6/norm1/moving_variance*
_output_shapes
: *
T0
�
3AssignMovingAvg_25/rconv6/norm1/moving_variance/subSub(rconv6/norm1/moving_variance/biased/read
truediv_29*
_output_shapes
:`*
T0*/
_class%
#!loc:@rconv6/norm1/moving_variance
�
3AssignMovingAvg_25/rconv6/norm1/moving_variance/mulMul3AssignMovingAvg_25/rconv6/norm1/moving_variance/subAssignMovingAvg_25/decay*/
_class%
#!loc:@rconv6/norm1/moving_variance*
_output_shapes
:`*
T0
�
LAssignMovingAvg_25/rconv6/norm1/moving_variance/rconv6/norm1/moving_variance	AssignSub#rconv6/norm1/moving_variance/biased3AssignMovingAvg_25/rconv6/norm1/moving_variance/mul*
T0*/
_class%
#!loc:@rconv6/norm1/moving_variance*
_output_shapes
:`
�
?AssignMovingAvg_25/rconv6/norm1/moving_variance/AssignAdd/valueConst*
valueB
 *  �?*/
_class%
#!loc:@rconv6/norm1/moving_variance*
dtype0*
_output_shapes
: 
�
9AssignMovingAvg_25/rconv6/norm1/moving_variance/AssignAdd	AssignAdd'rconv6/norm1/moving_variance/local_step?AssignMovingAvg_25/rconv6/norm1/moving_variance/AssignAdd/value*
T0*/
_class%
#!loc:@rconv6/norm1/moving_variance*
_output_shapes
: 
�
4AssignMovingAvg_25/rconv6/norm1/moving_variance/readIdentity#rconv6/norm1/moving_variance/biased:^AssignMovingAvg_25/rconv6/norm1/moving_variance/AssignAddM^AssignMovingAvg_25/rconv6/norm1/moving_variance/rconv6/norm1/moving_variance*
_output_shapes
:`*
T0*/
_class%
#!loc:@rconv6/norm1/moving_variance
�
7AssignMovingAvg_25/rconv6/norm1/moving_variance/sub_1/xConst:^AssignMovingAvg_25/rconv6/norm1/moving_variance/AssignAddM^AssignMovingAvg_25/rconv6/norm1/moving_variance/rconv6/norm1/moving_variance*
dtype0*
_output_shapes
: *
valueB
 *  �?*/
_class%
#!loc:@rconv6/norm1/moving_variance
�
5AssignMovingAvg_25/rconv6/norm1/moving_variance/sub_1Sub7AssignMovingAvg_25/rconv6/norm1/moving_variance/sub_1/xAssignMovingAvg_25/decay*/
_class%
#!loc:@rconv6/norm1/moving_variance*
_output_shapes
: *
T0
�
6AssignMovingAvg_25/rconv6/norm1/moving_variance/read_1Identity'rconv6/norm1/moving_variance/local_step:^AssignMovingAvg_25/rconv6/norm1/moving_variance/AssignAddM^AssignMovingAvg_25/rconv6/norm1/moving_variance/rconv6/norm1/moving_variance*/
_class%
#!loc:@rconv6/norm1/moving_variance*
_output_shapes
: *
T0
�
3AssignMovingAvg_25/rconv6/norm1/moving_variance/PowPow5AssignMovingAvg_25/rconv6/norm1/moving_variance/sub_16AssignMovingAvg_25/rconv6/norm1/moving_variance/read_1*
_output_shapes
: *
T0*/
_class%
#!loc:@rconv6/norm1/moving_variance
�
7AssignMovingAvg_25/rconv6/norm1/moving_variance/sub_2/xConst:^AssignMovingAvg_25/rconv6/norm1/moving_variance/AssignAddM^AssignMovingAvg_25/rconv6/norm1/moving_variance/rconv6/norm1/moving_variance*
valueB
 *  �?*/
_class%
#!loc:@rconv6/norm1/moving_variance*
dtype0*
_output_shapes
: 
�
5AssignMovingAvg_25/rconv6/norm1/moving_variance/sub_2Sub7AssignMovingAvg_25/rconv6/norm1/moving_variance/sub_2/x3AssignMovingAvg_25/rconv6/norm1/moving_variance/Pow*/
_class%
#!loc:@rconv6/norm1/moving_variance*
_output_shapes
: *
T0
�
7AssignMovingAvg_25/rconv6/norm1/moving_variance/truedivRealDiv4AssignMovingAvg_25/rconv6/norm1/moving_variance/read5AssignMovingAvg_25/rconv6/norm1/moving_variance/sub_2*/
_class%
#!loc:@rconv6/norm1/moving_variance*
_output_shapes
:`*
T0
�
5AssignMovingAvg_25/rconv6/norm1/moving_variance/sub_3Sub!rconv6/norm1/moving_variance/read7AssignMovingAvg_25/rconv6/norm1/moving_variance/truediv*
T0*/
_class%
#!loc:@rconv6/norm1/moving_variance*
_output_shapes
:`
�
AssignMovingAvg_25	AssignSubrconv6/norm1/moving_variance5AssignMovingAvg_25/rconv6/norm1/moving_variance/sub_3*
_output_shapes
:`*
T0*/
_class%
#!loc:@rconv6/norm1/moving_variance
M
cond_15/SwitchSwitchConst_2Const_2*
_output_shapes
: : *
T0

O
cond_15/switch_tIdentitycond_15/Switch:1*
_output_shapes
: *
T0

M
cond_15/switch_fIdentitycond_15/Switch*
_output_shapes
: *
T0

E
cond_15/pred_idIdentityConst_2*
_output_shapes
: *
T0

�
cond_15/Switch_1Switch
truediv_28cond_15/pred_id*
T0*
_class
loc:@truediv_28* 
_output_shapes
:`:`
�
cond_15/Switch_2Switch
truediv_29cond_15/pred_id*
_class
loc:@truediv_29* 
_output_shapes
:`:`*
T0
�
cond_15/Switch_3Switchrconv6/norm1/moving_mean/readcond_15/pred_id*
T0*+
_class!
loc:@rconv6/norm1/moving_mean* 
_output_shapes
:`:`
�
cond_15/Switch_4Switch!rconv6/norm1/moving_variance/readcond_15/pred_id*
T0*/
_class%
#!loc:@rconv6/norm1/moving_variance* 
_output_shapes
:`:`
l
cond_15/MergeMergecond_15/Switch_3cond_15/Switch_1:1*
T0*
N*
_output_shapes

:`: 
n
cond_15/Merge_1Mergecond_15/Switch_4cond_15/Switch_2:1*
T0*
N*
_output_shapes

:`: 
W
batchnorm_12/add/yConst*
valueB
 *o�:*
dtype0*
_output_shapes
: 
a
batchnorm_12/addAddcond_15/Merge_1batchnorm_12/add/y*
T0*
_output_shapes
:`
R
batchnorm_12/RsqrtRsqrtbatchnorm_12/add*
T0*
_output_shapes
:`
l
batchnorm_12/mulMuladd_8batchnorm_12/Rsqrt*
T0*/
_output_shapes
:���������		`
a
batchnorm_12/mul_1Mulcond_15/Mergebatchnorm_12/Rsqrt*
T0*
_output_shapes
:`
h
batchnorm_12/subSubrconv6/norm1/beta/readbatchnorm_12/mul_1*
T0*
_output_shapes
:`
w
batchnorm_12/add_1Addbatchnorm_12/mulbatchnorm_12/sub*/
_output_shapes
:���������		`*
T0
l
mul_57Mulbatchnorm_12/add_1strided_slice_5*
T0*/
_output_shapes
:���������		`
Q
Relu_12Relumul_57*
T0*/
_output_shapes
:���������		`
r
truncated_normal_16/shapeConst*
_output_shapes
:*%
valueB"      `   `   *
dtype0
]
truncated_normal_16/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
_
truncated_normal_16/stddevConst*
valueB
 *�E=*
dtype0*
_output_shapes
: 
�
#truncated_normal_16/TruncatedNormalTruncatedNormaltruncated_normal_16/shape*
dtype0*&
_output_shapes
:``*
T0
�
truncated_normal_16/mulMul#truncated_normal_16/TruncatedNormaltruncated_normal_16/stddev*
T0*&
_output_shapes
:``
~
truncated_normal_16Addtruncated_normal_16/multruncated_normal_16/mean*&
_output_shapes
:``*
T0
M
mul_58/yConst*
_output_shapes
: *
valueB
 *  �?*
dtype0
]
mul_58Multruncated_normal_16mul_58/y*&
_output_shapes
:``*
T0
i
	rconv6/w1
VariableV2*&
_output_shapes
:``*
shape:``*
dtype0
|
rconv6/w1/AssignAssign	rconv6/w1mul_58*
T0*
_class
loc:@rconv6/w1*&
_output_shapes
:``
t
rconv6/w1/readIdentity	rconv6/w1*
T0*
_class
loc:@rconv6/w1*&
_output_shapes
:``
�
	Conv2D_13Conv2DRelu_12rconv6/w1/read*
strides
*
paddingSAME*/
_output_shapes
:���������		`*
T0
U
zeros_27Const*
dtype0*
_output_shapes
:`*
valueB`*    
`
rconv6/norm2/moving_mean
VariableV2*
_output_shapes
:`*
shape:`*
dtype0
�
rconv6/norm2/moving_mean/AssignAssignrconv6/norm2/moving_meanzeros_27*
T0*+
_class!
loc:@rconv6/norm2/moving_mean*
_output_shapes
:`
�
rconv6/norm2/moving_mean/readIdentityrconv6/norm2/moving_mean*
T0*+
_class!
loc:@rconv6/norm2/moving_mean*
_output_shapes
:`
T
ones_13Const*
valueB`*  �?*
dtype0*
_output_shapes
:`
d
rconv6/norm2/moving_variance
VariableV2*
shape:`*
dtype0*
_output_shapes
:`
�
#rconv6/norm2/moving_variance/AssignAssignrconv6/norm2/moving_varianceones_13*
_output_shapes
:`*
T0*/
_class%
#!loc:@rconv6/norm2/moving_variance
�
!rconv6/norm2/moving_variance/readIdentityrconv6/norm2/moving_variance*/
_class%
#!loc:@rconv6/norm2/moving_variance*
_output_shapes
:`*
T0
U
zeros_28Const*
valueB`*    *
dtype0*
_output_shapes
:`
Y
rconv6/norm2/beta
VariableV2*
dtype0*
_output_shapes
:`*
shape:`
�
rconv6/norm2/beta/AssignAssignrconv6/norm2/betazeros_28*
T0*$
_class
loc:@rconv6/norm2/beta*
_output_shapes
:`
�
rconv6/norm2/beta/readIdentityrconv6/norm2/beta*
_output_shapes
:`*
T0*$
_class
loc:@rconv6/norm2/beta
c
mul_59Mul	Conv2D_13strided_slice_5*/
_output_shapes
:���������		`*
T0
m
Sum_30/reduction_indicesConst*!
valueB"          *
dtype0*
_output_shapes
:
T
Sum_30Summul_59Sum_30/reduction_indices*
T0*
_output_shapes
:`
G

truediv_30RealDivSum_30Sum*
_output_shapes
:`*
T0
^
sub_15Sub	Conv2D_13
truediv_30*
T0*/
_output_shapes
:���������		`
`
mul_60Mulsub_15strided_slice_5*/
_output_shapes
:���������		`*
T0
U
	Square_13Squaremul_60*/
_output_shapes
:���������		`*
T0
m
Sum_31/reduction_indicesConst*
_output_shapes
:*!
valueB"          *
dtype0
W
Sum_31Sum	Square_13Sum_31/reduction_indices*
_output_shapes
:`*
T0
G

truediv_31RealDivSum_31Sum*
_output_shapes
:`*
T0
�
AssignMovingAvg_26/decayConst*
valueB
 *o;*+
_class!
loc:@rconv6/norm2/moving_mean*
dtype0*
_output_shapes
: 
�
1AssignMovingAvg_26/rconv6/norm2/moving_mean/zerosConst*
valueB`*    *+
_class!
loc:@rconv6/norm2/moving_mean*
dtype0*
_output_shapes
:`
�
rconv6/norm2/moving_mean/biased
VariableV2*+
_class!
loc:@rconv6/norm2/moving_mean*
shape:`*
dtype0*
_output_shapes
:`
�
&rconv6/norm2/moving_mean/biased/AssignAssignrconv6/norm2/moving_mean/biased1AssignMovingAvg_26/rconv6/norm2/moving_mean/zeros*
T0*+
_class!
loc:@rconv6/norm2/moving_mean*
_output_shapes
:`
�
$rconv6/norm2/moving_mean/biased/readIdentityrconv6/norm2/moving_mean/biased*+
_class!
loc:@rconv6/norm2/moving_mean*
_output_shapes
:`*
T0
�
5rconv6/norm2/moving_mean/local_step/Initializer/zerosConst*
valueB
 *    *+
_class!
loc:@rconv6/norm2/moving_mean*
dtype0*
_output_shapes
: 
�
#rconv6/norm2/moving_mean/local_step
VariableV2*+
_class!
loc:@rconv6/norm2/moving_mean*
shape: *
dtype0*
_output_shapes
: 
�
*rconv6/norm2/moving_mean/local_step/AssignAssign#rconv6/norm2/moving_mean/local_step5rconv6/norm2/moving_mean/local_step/Initializer/zeros*
_output_shapes
: *
T0*+
_class!
loc:@rconv6/norm2/moving_mean
�
(rconv6/norm2/moving_mean/local_step/readIdentity#rconv6/norm2/moving_mean/local_step*
T0*+
_class!
loc:@rconv6/norm2/moving_mean*
_output_shapes
: 
�
/AssignMovingAvg_26/rconv6/norm2/moving_mean/subSub$rconv6/norm2/moving_mean/biased/read
truediv_30*
T0*+
_class!
loc:@rconv6/norm2/moving_mean*
_output_shapes
:`
�
/AssignMovingAvg_26/rconv6/norm2/moving_mean/mulMul/AssignMovingAvg_26/rconv6/norm2/moving_mean/subAssignMovingAvg_26/decay*
T0*+
_class!
loc:@rconv6/norm2/moving_mean*
_output_shapes
:`
�
DAssignMovingAvg_26/rconv6/norm2/moving_mean/rconv6/norm2/moving_mean	AssignSubrconv6/norm2/moving_mean/biased/AssignMovingAvg_26/rconv6/norm2/moving_mean/mul*
T0*+
_class!
loc:@rconv6/norm2/moving_mean*
_output_shapes
:`
�
;AssignMovingAvg_26/rconv6/norm2/moving_mean/AssignAdd/valueConst*
valueB
 *  �?*+
_class!
loc:@rconv6/norm2/moving_mean*
dtype0*
_output_shapes
: 
�
5AssignMovingAvg_26/rconv6/norm2/moving_mean/AssignAdd	AssignAdd#rconv6/norm2/moving_mean/local_step;AssignMovingAvg_26/rconv6/norm2/moving_mean/AssignAdd/value*
_output_shapes
: *
T0*+
_class!
loc:@rconv6/norm2/moving_mean
�
0AssignMovingAvg_26/rconv6/norm2/moving_mean/readIdentityrconv6/norm2/moving_mean/biased6^AssignMovingAvg_26/rconv6/norm2/moving_mean/AssignAddE^AssignMovingAvg_26/rconv6/norm2/moving_mean/rconv6/norm2/moving_mean*
_output_shapes
:`*
T0*+
_class!
loc:@rconv6/norm2/moving_mean
�
3AssignMovingAvg_26/rconv6/norm2/moving_mean/sub_1/xConst6^AssignMovingAvg_26/rconv6/norm2/moving_mean/AssignAddE^AssignMovingAvg_26/rconv6/norm2/moving_mean/rconv6/norm2/moving_mean*
valueB
 *  �?*+
_class!
loc:@rconv6/norm2/moving_mean*
dtype0*
_output_shapes
: 
�
1AssignMovingAvg_26/rconv6/norm2/moving_mean/sub_1Sub3AssignMovingAvg_26/rconv6/norm2/moving_mean/sub_1/xAssignMovingAvg_26/decay*
_output_shapes
: *
T0*+
_class!
loc:@rconv6/norm2/moving_mean
�
2AssignMovingAvg_26/rconv6/norm2/moving_mean/read_1Identity#rconv6/norm2/moving_mean/local_step6^AssignMovingAvg_26/rconv6/norm2/moving_mean/AssignAddE^AssignMovingAvg_26/rconv6/norm2/moving_mean/rconv6/norm2/moving_mean*
T0*+
_class!
loc:@rconv6/norm2/moving_mean*
_output_shapes
: 
�
/AssignMovingAvg_26/rconv6/norm2/moving_mean/PowPow1AssignMovingAvg_26/rconv6/norm2/moving_mean/sub_12AssignMovingAvg_26/rconv6/norm2/moving_mean/read_1*
T0*+
_class!
loc:@rconv6/norm2/moving_mean*
_output_shapes
: 
�
3AssignMovingAvg_26/rconv6/norm2/moving_mean/sub_2/xConst6^AssignMovingAvg_26/rconv6/norm2/moving_mean/AssignAddE^AssignMovingAvg_26/rconv6/norm2/moving_mean/rconv6/norm2/moving_mean*
valueB
 *  �?*+
_class!
loc:@rconv6/norm2/moving_mean*
dtype0*
_output_shapes
: 
�
1AssignMovingAvg_26/rconv6/norm2/moving_mean/sub_2Sub3AssignMovingAvg_26/rconv6/norm2/moving_mean/sub_2/x/AssignMovingAvg_26/rconv6/norm2/moving_mean/Pow*
_output_shapes
: *
T0*+
_class!
loc:@rconv6/norm2/moving_mean
�
3AssignMovingAvg_26/rconv6/norm2/moving_mean/truedivRealDiv0AssignMovingAvg_26/rconv6/norm2/moving_mean/read1AssignMovingAvg_26/rconv6/norm2/moving_mean/sub_2*
_output_shapes
:`*
T0*+
_class!
loc:@rconv6/norm2/moving_mean
�
1AssignMovingAvg_26/rconv6/norm2/moving_mean/sub_3Subrconv6/norm2/moving_mean/read3AssignMovingAvg_26/rconv6/norm2/moving_mean/truediv*
_output_shapes
:`*
T0*+
_class!
loc:@rconv6/norm2/moving_mean
�
AssignMovingAvg_26	AssignSubrconv6/norm2/moving_mean1AssignMovingAvg_26/rconv6/norm2/moving_mean/sub_3*
_output_shapes
:`*
T0*+
_class!
loc:@rconv6/norm2/moving_mean
�
AssignMovingAvg_27/decayConst*
_output_shapes
: *
valueB
 *o;*/
_class%
#!loc:@rconv6/norm2/moving_variance*
dtype0
�
5AssignMovingAvg_27/rconv6/norm2/moving_variance/zerosConst*
dtype0*
_output_shapes
:`*
valueB`*    */
_class%
#!loc:@rconv6/norm2/moving_variance
�
#rconv6/norm2/moving_variance/biased
VariableV2*
dtype0*
_output_shapes
:`*/
_class%
#!loc:@rconv6/norm2/moving_variance*
shape:`
�
*rconv6/norm2/moving_variance/biased/AssignAssign#rconv6/norm2/moving_variance/biased5AssignMovingAvg_27/rconv6/norm2/moving_variance/zeros*/
_class%
#!loc:@rconv6/norm2/moving_variance*
_output_shapes
:`*
T0
�
(rconv6/norm2/moving_variance/biased/readIdentity#rconv6/norm2/moving_variance/biased*
T0*/
_class%
#!loc:@rconv6/norm2/moving_variance*
_output_shapes
:`
�
9rconv6/norm2/moving_variance/local_step/Initializer/zerosConst*
valueB
 *    */
_class%
#!loc:@rconv6/norm2/moving_variance*
dtype0*
_output_shapes
: 
�
'rconv6/norm2/moving_variance/local_step
VariableV2*
shape: *
dtype0*
_output_shapes
: */
_class%
#!loc:@rconv6/norm2/moving_variance
�
.rconv6/norm2/moving_variance/local_step/AssignAssign'rconv6/norm2/moving_variance/local_step9rconv6/norm2/moving_variance/local_step/Initializer/zeros*
T0*/
_class%
#!loc:@rconv6/norm2/moving_variance*
_output_shapes
: 
�
,rconv6/norm2/moving_variance/local_step/readIdentity'rconv6/norm2/moving_variance/local_step*
T0*/
_class%
#!loc:@rconv6/norm2/moving_variance*
_output_shapes
: 
�
3AssignMovingAvg_27/rconv6/norm2/moving_variance/subSub(rconv6/norm2/moving_variance/biased/read
truediv_31*
T0*/
_class%
#!loc:@rconv6/norm2/moving_variance*
_output_shapes
:`
�
3AssignMovingAvg_27/rconv6/norm2/moving_variance/mulMul3AssignMovingAvg_27/rconv6/norm2/moving_variance/subAssignMovingAvg_27/decay*
T0*/
_class%
#!loc:@rconv6/norm2/moving_variance*
_output_shapes
:`
�
LAssignMovingAvg_27/rconv6/norm2/moving_variance/rconv6/norm2/moving_variance	AssignSub#rconv6/norm2/moving_variance/biased3AssignMovingAvg_27/rconv6/norm2/moving_variance/mul*
T0*/
_class%
#!loc:@rconv6/norm2/moving_variance*
_output_shapes
:`
�
?AssignMovingAvg_27/rconv6/norm2/moving_variance/AssignAdd/valueConst*
valueB
 *  �?*/
_class%
#!loc:@rconv6/norm2/moving_variance*
dtype0*
_output_shapes
: 
�
9AssignMovingAvg_27/rconv6/norm2/moving_variance/AssignAdd	AssignAdd'rconv6/norm2/moving_variance/local_step?AssignMovingAvg_27/rconv6/norm2/moving_variance/AssignAdd/value*/
_class%
#!loc:@rconv6/norm2/moving_variance*
_output_shapes
: *
T0
�
4AssignMovingAvg_27/rconv6/norm2/moving_variance/readIdentity#rconv6/norm2/moving_variance/biased:^AssignMovingAvg_27/rconv6/norm2/moving_variance/AssignAddM^AssignMovingAvg_27/rconv6/norm2/moving_variance/rconv6/norm2/moving_variance*
T0*/
_class%
#!loc:@rconv6/norm2/moving_variance*
_output_shapes
:`
�
7AssignMovingAvg_27/rconv6/norm2/moving_variance/sub_1/xConst:^AssignMovingAvg_27/rconv6/norm2/moving_variance/AssignAddM^AssignMovingAvg_27/rconv6/norm2/moving_variance/rconv6/norm2/moving_variance*
valueB
 *  �?*/
_class%
#!loc:@rconv6/norm2/moving_variance*
dtype0*
_output_shapes
: 
�
5AssignMovingAvg_27/rconv6/norm2/moving_variance/sub_1Sub7AssignMovingAvg_27/rconv6/norm2/moving_variance/sub_1/xAssignMovingAvg_27/decay*
T0*/
_class%
#!loc:@rconv6/norm2/moving_variance*
_output_shapes
: 
�
6AssignMovingAvg_27/rconv6/norm2/moving_variance/read_1Identity'rconv6/norm2/moving_variance/local_step:^AssignMovingAvg_27/rconv6/norm2/moving_variance/AssignAddM^AssignMovingAvg_27/rconv6/norm2/moving_variance/rconv6/norm2/moving_variance*
_output_shapes
: *
T0*/
_class%
#!loc:@rconv6/norm2/moving_variance
�
3AssignMovingAvg_27/rconv6/norm2/moving_variance/PowPow5AssignMovingAvg_27/rconv6/norm2/moving_variance/sub_16AssignMovingAvg_27/rconv6/norm2/moving_variance/read_1*
_output_shapes
: *
T0*/
_class%
#!loc:@rconv6/norm2/moving_variance
�
7AssignMovingAvg_27/rconv6/norm2/moving_variance/sub_2/xConst:^AssignMovingAvg_27/rconv6/norm2/moving_variance/AssignAddM^AssignMovingAvg_27/rconv6/norm2/moving_variance/rconv6/norm2/moving_variance*
dtype0*
_output_shapes
: *
valueB
 *  �?*/
_class%
#!loc:@rconv6/norm2/moving_variance
�
5AssignMovingAvg_27/rconv6/norm2/moving_variance/sub_2Sub7AssignMovingAvg_27/rconv6/norm2/moving_variance/sub_2/x3AssignMovingAvg_27/rconv6/norm2/moving_variance/Pow*
T0*/
_class%
#!loc:@rconv6/norm2/moving_variance*
_output_shapes
: 
�
7AssignMovingAvg_27/rconv6/norm2/moving_variance/truedivRealDiv4AssignMovingAvg_27/rconv6/norm2/moving_variance/read5AssignMovingAvg_27/rconv6/norm2/moving_variance/sub_2*
T0*/
_class%
#!loc:@rconv6/norm2/moving_variance*
_output_shapes
:`
�
5AssignMovingAvg_27/rconv6/norm2/moving_variance/sub_3Sub!rconv6/norm2/moving_variance/read7AssignMovingAvg_27/rconv6/norm2/moving_variance/truediv*
T0*/
_class%
#!loc:@rconv6/norm2/moving_variance*
_output_shapes
:`
�
AssignMovingAvg_27	AssignSubrconv6/norm2/moving_variance5AssignMovingAvg_27/rconv6/norm2/moving_variance/sub_3*
T0*/
_class%
#!loc:@rconv6/norm2/moving_variance*
_output_shapes
:`
M
cond_16/SwitchSwitchConst_2Const_2*
T0
*
_output_shapes
: : 
O
cond_16/switch_tIdentitycond_16/Switch:1*
_output_shapes
: *
T0

M
cond_16/switch_fIdentitycond_16/Switch*
T0
*
_output_shapes
: 
E
cond_16/pred_idIdentityConst_2*
_output_shapes
: *
T0

�
cond_16/Switch_1Switch
truediv_30cond_16/pred_id*
T0*
_class
loc:@truediv_30* 
_output_shapes
:`:`
�
cond_16/Switch_2Switch
truediv_31cond_16/pred_id* 
_output_shapes
:`:`*
T0*
_class
loc:@truediv_31
�
cond_16/Switch_3Switchrconv6/norm2/moving_mean/readcond_16/pred_id* 
_output_shapes
:`:`*
T0*+
_class!
loc:@rconv6/norm2/moving_mean
�
cond_16/Switch_4Switch!rconv6/norm2/moving_variance/readcond_16/pred_id*
T0*/
_class%
#!loc:@rconv6/norm2/moving_variance* 
_output_shapes
:`:`
l
cond_16/MergeMergecond_16/Switch_3cond_16/Switch_1:1*
T0*
N*
_output_shapes

:`: 
n
cond_16/Merge_1Mergecond_16/Switch_4cond_16/Switch_2:1*
T0*
N*
_output_shapes

:`: 
W
batchnorm_13/add/yConst*
dtype0*
_output_shapes
: *
valueB
 *o�:
a
batchnorm_13/addAddcond_16/Merge_1batchnorm_13/add/y*
T0*
_output_shapes
:`
R
batchnorm_13/RsqrtRsqrtbatchnorm_13/add*
T0*
_output_shapes
:`
p
batchnorm_13/mulMul	Conv2D_13batchnorm_13/Rsqrt*
T0*/
_output_shapes
:���������		`
a
batchnorm_13/mul_1Mulcond_16/Mergebatchnorm_13/Rsqrt*
T0*
_output_shapes
:`
h
batchnorm_13/subSubrconv6/norm2/beta/readbatchnorm_13/mul_1*
T0*
_output_shapes
:`
w
batchnorm_13/add_1Addbatchnorm_13/mulbatchnorm_13/sub*
T0*/
_output_shapes
:���������		`
l
mul_61Mulbatchnorm_13/add_1strided_slice_5*/
_output_shapes
:���������		`*
T0
Q
Relu_13Relumul_61*
T0*/
_output_shapes
:���������		`
r
truncated_normal_17/shapeConst*%
valueB"      `   `   *
dtype0*
_output_shapes
:
]
truncated_normal_17/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
_
truncated_normal_17/stddevConst*
valueB
 *�E=*
dtype0*
_output_shapes
: 
�
#truncated_normal_17/TruncatedNormalTruncatedNormaltruncated_normal_17/shape*
dtype0*&
_output_shapes
:``*
T0
�
truncated_normal_17/mulMul#truncated_normal_17/TruncatedNormaltruncated_normal_17/stddev*&
_output_shapes
:``*
T0
~
truncated_normal_17Addtruncated_normal_17/multruncated_normal_17/mean*
T0*&
_output_shapes
:``
M
mul_62/yConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
]
mul_62Multruncated_normal_17mul_62/y*&
_output_shapes
:``*
T0
i
	rconv6/w2
VariableV2*
dtype0*&
_output_shapes
:``*
shape:``
|
rconv6/w2/AssignAssign	rconv6/w2mul_62*
T0*
_class
loc:@rconv6/w2*&
_output_shapes
:``
t
rconv6/w2/readIdentity	rconv6/w2*
T0*
_class
loc:@rconv6/w2*&
_output_shapes
:``
�
	Conv2D_14Conv2DRelu_13rconv6/w2/read*
paddingSAME*/
_output_shapes
:���������		`*
T0*
strides

X
add_9Addadd_8	Conv2D_14*
T0*/
_output_shapes
:���������		`
U
zeros_29Const*
valueB`*    *
dtype0*
_output_shapes
:`
^
trunk/norm/moving_mean
VariableV2*
dtype0*
_output_shapes
:`*
shape:`
�
trunk/norm/moving_mean/AssignAssigntrunk/norm/moving_meanzeros_29*
_output_shapes
:`*
T0*)
_class
loc:@trunk/norm/moving_mean
�
trunk/norm/moving_mean/readIdentitytrunk/norm/moving_mean*
_output_shapes
:`*
T0*)
_class
loc:@trunk/norm/moving_mean
T
ones_14Const*
valueB`*  �?*
dtype0*
_output_shapes
:`
b
trunk/norm/moving_variance
VariableV2*
dtype0*
_output_shapes
:`*
shape:`
�
!trunk/norm/moving_variance/AssignAssigntrunk/norm/moving_varianceones_14*-
_class#
!loc:@trunk/norm/moving_variance*
_output_shapes
:`*
T0
�
trunk/norm/moving_variance/readIdentitytrunk/norm/moving_variance*
_output_shapes
:`*
T0*-
_class#
!loc:@trunk/norm/moving_variance
U
zeros_30Const*
valueB`*    *
dtype0*
_output_shapes
:`
W
trunk/norm/beta
VariableV2*
shape:`*
dtype0*
_output_shapes
:`
�
trunk/norm/beta/AssignAssigntrunk/norm/betazeros_30*
T0*"
_class
loc:@trunk/norm/beta*
_output_shapes
:`
z
trunk/norm/beta/readIdentitytrunk/norm/beta*
_output_shapes
:`*
T0*"
_class
loc:@trunk/norm/beta
_
mul_63Muladd_9strided_slice_5*
T0*/
_output_shapes
:���������		`
m
Sum_32/reduction_indicesConst*!
valueB"          *
dtype0*
_output_shapes
:
T
Sum_32Summul_63Sum_32/reduction_indices*
T0*
_output_shapes
:`
G

truediv_32RealDivSum_32Sum*
_output_shapes
:`*
T0
Z
sub_16Subadd_9
truediv_32*
T0*/
_output_shapes
:���������		`
`
mul_64Mulsub_16strided_slice_5*
T0*/
_output_shapes
:���������		`
U
	Square_14Squaremul_64*
T0*/
_output_shapes
:���������		`
m
Sum_33/reduction_indicesConst*!
valueB"          *
dtype0*
_output_shapes
:
W
Sum_33Sum	Square_14Sum_33/reduction_indices*
T0*
_output_shapes
:`
G

truediv_33RealDivSum_33Sum*
T0*
_output_shapes
:`
�
AssignMovingAvg_28/decayConst*
valueB
 *o;*)
_class
loc:@trunk/norm/moving_mean*
dtype0*
_output_shapes
: 
�
/AssignMovingAvg_28/trunk/norm/moving_mean/zerosConst*
_output_shapes
:`*
valueB`*    *)
_class
loc:@trunk/norm/moving_mean*
dtype0
�
trunk/norm/moving_mean/biased
VariableV2*
dtype0*
_output_shapes
:`*)
_class
loc:@trunk/norm/moving_mean*
shape:`
�
$trunk/norm/moving_mean/biased/AssignAssigntrunk/norm/moving_mean/biased/AssignMovingAvg_28/trunk/norm/moving_mean/zeros*
T0*)
_class
loc:@trunk/norm/moving_mean*
_output_shapes
:`
�
"trunk/norm/moving_mean/biased/readIdentitytrunk/norm/moving_mean/biased*
T0*)
_class
loc:@trunk/norm/moving_mean*
_output_shapes
:`
�
3trunk/norm/moving_mean/local_step/Initializer/zerosConst*
valueB
 *    *)
_class
loc:@trunk/norm/moving_mean*
dtype0*
_output_shapes
: 
�
!trunk/norm/moving_mean/local_step
VariableV2*
shape: *
dtype0*
_output_shapes
: *)
_class
loc:@trunk/norm/moving_mean
�
(trunk/norm/moving_mean/local_step/AssignAssign!trunk/norm/moving_mean/local_step3trunk/norm/moving_mean/local_step/Initializer/zeros*
_output_shapes
: *
T0*)
_class
loc:@trunk/norm/moving_mean
�
&trunk/norm/moving_mean/local_step/readIdentity!trunk/norm/moving_mean/local_step*)
_class
loc:@trunk/norm/moving_mean*
_output_shapes
: *
T0
�
-AssignMovingAvg_28/trunk/norm/moving_mean/subSub"trunk/norm/moving_mean/biased/read
truediv_32*
T0*)
_class
loc:@trunk/norm/moving_mean*
_output_shapes
:`
�
-AssignMovingAvg_28/trunk/norm/moving_mean/mulMul-AssignMovingAvg_28/trunk/norm/moving_mean/subAssignMovingAvg_28/decay*
T0*)
_class
loc:@trunk/norm/moving_mean*
_output_shapes
:`
�
@AssignMovingAvg_28/trunk/norm/moving_mean/trunk/norm/moving_mean	AssignSubtrunk/norm/moving_mean/biased-AssignMovingAvg_28/trunk/norm/moving_mean/mul*)
_class
loc:@trunk/norm/moving_mean*
_output_shapes
:`*
T0
�
9AssignMovingAvg_28/trunk/norm/moving_mean/AssignAdd/valueConst*
valueB
 *  �?*)
_class
loc:@trunk/norm/moving_mean*
dtype0*
_output_shapes
: 
�
3AssignMovingAvg_28/trunk/norm/moving_mean/AssignAdd	AssignAdd!trunk/norm/moving_mean/local_step9AssignMovingAvg_28/trunk/norm/moving_mean/AssignAdd/value*
T0*)
_class
loc:@trunk/norm/moving_mean*
_output_shapes
: 
�
.AssignMovingAvg_28/trunk/norm/moving_mean/readIdentitytrunk/norm/moving_mean/biased4^AssignMovingAvg_28/trunk/norm/moving_mean/AssignAddA^AssignMovingAvg_28/trunk/norm/moving_mean/trunk/norm/moving_mean*
_output_shapes
:`*
T0*)
_class
loc:@trunk/norm/moving_mean
�
1AssignMovingAvg_28/trunk/norm/moving_mean/sub_1/xConst4^AssignMovingAvg_28/trunk/norm/moving_mean/AssignAddA^AssignMovingAvg_28/trunk/norm/moving_mean/trunk/norm/moving_mean*
dtype0*
_output_shapes
: *
valueB
 *  �?*)
_class
loc:@trunk/norm/moving_mean
�
/AssignMovingAvg_28/trunk/norm/moving_mean/sub_1Sub1AssignMovingAvg_28/trunk/norm/moving_mean/sub_1/xAssignMovingAvg_28/decay*
T0*)
_class
loc:@trunk/norm/moving_mean*
_output_shapes
: 
�
0AssignMovingAvg_28/trunk/norm/moving_mean/read_1Identity!trunk/norm/moving_mean/local_step4^AssignMovingAvg_28/trunk/norm/moving_mean/AssignAddA^AssignMovingAvg_28/trunk/norm/moving_mean/trunk/norm/moving_mean*
T0*)
_class
loc:@trunk/norm/moving_mean*
_output_shapes
: 
�
-AssignMovingAvg_28/trunk/norm/moving_mean/PowPow/AssignMovingAvg_28/trunk/norm/moving_mean/sub_10AssignMovingAvg_28/trunk/norm/moving_mean/read_1*)
_class
loc:@trunk/norm/moving_mean*
_output_shapes
: *
T0
�
1AssignMovingAvg_28/trunk/norm/moving_mean/sub_2/xConst4^AssignMovingAvg_28/trunk/norm/moving_mean/AssignAddA^AssignMovingAvg_28/trunk/norm/moving_mean/trunk/norm/moving_mean*
valueB
 *  �?*)
_class
loc:@trunk/norm/moving_mean*
dtype0*
_output_shapes
: 
�
/AssignMovingAvg_28/trunk/norm/moving_mean/sub_2Sub1AssignMovingAvg_28/trunk/norm/moving_mean/sub_2/x-AssignMovingAvg_28/trunk/norm/moving_mean/Pow*)
_class
loc:@trunk/norm/moving_mean*
_output_shapes
: *
T0
�
1AssignMovingAvg_28/trunk/norm/moving_mean/truedivRealDiv.AssignMovingAvg_28/trunk/norm/moving_mean/read/AssignMovingAvg_28/trunk/norm/moving_mean/sub_2*
T0*)
_class
loc:@trunk/norm/moving_mean*
_output_shapes
:`
�
/AssignMovingAvg_28/trunk/norm/moving_mean/sub_3Subtrunk/norm/moving_mean/read1AssignMovingAvg_28/trunk/norm/moving_mean/truediv*
_output_shapes
:`*
T0*)
_class
loc:@trunk/norm/moving_mean
�
AssignMovingAvg_28	AssignSubtrunk/norm/moving_mean/AssignMovingAvg_28/trunk/norm/moving_mean/sub_3*
T0*)
_class
loc:@trunk/norm/moving_mean*
_output_shapes
:`
�
AssignMovingAvg_29/decayConst*
valueB
 *o;*-
_class#
!loc:@trunk/norm/moving_variance*
dtype0*
_output_shapes
: 
�
3AssignMovingAvg_29/trunk/norm/moving_variance/zerosConst*
valueB`*    *-
_class#
!loc:@trunk/norm/moving_variance*
dtype0*
_output_shapes
:`
�
!trunk/norm/moving_variance/biased
VariableV2*-
_class#
!loc:@trunk/norm/moving_variance*
shape:`*
dtype0*
_output_shapes
:`
�
(trunk/norm/moving_variance/biased/AssignAssign!trunk/norm/moving_variance/biased3AssignMovingAvg_29/trunk/norm/moving_variance/zeros*
T0*-
_class#
!loc:@trunk/norm/moving_variance*
_output_shapes
:`
�
&trunk/norm/moving_variance/biased/readIdentity!trunk/norm/moving_variance/biased*
_output_shapes
:`*
T0*-
_class#
!loc:@trunk/norm/moving_variance
�
7trunk/norm/moving_variance/local_step/Initializer/zerosConst*
dtype0*
_output_shapes
: *
valueB
 *    *-
_class#
!loc:@trunk/norm/moving_variance
�
%trunk/norm/moving_variance/local_step
VariableV2*-
_class#
!loc:@trunk/norm/moving_variance*
shape: *
dtype0*
_output_shapes
: 
�
,trunk/norm/moving_variance/local_step/AssignAssign%trunk/norm/moving_variance/local_step7trunk/norm/moving_variance/local_step/Initializer/zeros*
T0*-
_class#
!loc:@trunk/norm/moving_variance*
_output_shapes
: 
�
*trunk/norm/moving_variance/local_step/readIdentity%trunk/norm/moving_variance/local_step*
_output_shapes
: *
T0*-
_class#
!loc:@trunk/norm/moving_variance
�
1AssignMovingAvg_29/trunk/norm/moving_variance/subSub&trunk/norm/moving_variance/biased/read
truediv_33*
_output_shapes
:`*
T0*-
_class#
!loc:@trunk/norm/moving_variance
�
1AssignMovingAvg_29/trunk/norm/moving_variance/mulMul1AssignMovingAvg_29/trunk/norm/moving_variance/subAssignMovingAvg_29/decay*
T0*-
_class#
!loc:@trunk/norm/moving_variance*
_output_shapes
:`
�
HAssignMovingAvg_29/trunk/norm/moving_variance/trunk/norm/moving_variance	AssignSub!trunk/norm/moving_variance/biased1AssignMovingAvg_29/trunk/norm/moving_variance/mul*
_output_shapes
:`*
T0*-
_class#
!loc:@trunk/norm/moving_variance
�
=AssignMovingAvg_29/trunk/norm/moving_variance/AssignAdd/valueConst*
_output_shapes
: *
valueB
 *  �?*-
_class#
!loc:@trunk/norm/moving_variance*
dtype0
�
7AssignMovingAvg_29/trunk/norm/moving_variance/AssignAdd	AssignAdd%trunk/norm/moving_variance/local_step=AssignMovingAvg_29/trunk/norm/moving_variance/AssignAdd/value*
T0*-
_class#
!loc:@trunk/norm/moving_variance*
_output_shapes
: 
�
2AssignMovingAvg_29/trunk/norm/moving_variance/readIdentity!trunk/norm/moving_variance/biased8^AssignMovingAvg_29/trunk/norm/moving_variance/AssignAddI^AssignMovingAvg_29/trunk/norm/moving_variance/trunk/norm/moving_variance*
T0*-
_class#
!loc:@trunk/norm/moving_variance*
_output_shapes
:`
�
5AssignMovingAvg_29/trunk/norm/moving_variance/sub_1/xConst8^AssignMovingAvg_29/trunk/norm/moving_variance/AssignAddI^AssignMovingAvg_29/trunk/norm/moving_variance/trunk/norm/moving_variance*
valueB
 *  �?*-
_class#
!loc:@trunk/norm/moving_variance*
dtype0*
_output_shapes
: 
�
3AssignMovingAvg_29/trunk/norm/moving_variance/sub_1Sub5AssignMovingAvg_29/trunk/norm/moving_variance/sub_1/xAssignMovingAvg_29/decay*
T0*-
_class#
!loc:@trunk/norm/moving_variance*
_output_shapes
: 
�
4AssignMovingAvg_29/trunk/norm/moving_variance/read_1Identity%trunk/norm/moving_variance/local_step8^AssignMovingAvg_29/trunk/norm/moving_variance/AssignAddI^AssignMovingAvg_29/trunk/norm/moving_variance/trunk/norm/moving_variance*
T0*-
_class#
!loc:@trunk/norm/moving_variance*
_output_shapes
: 
�
1AssignMovingAvg_29/trunk/norm/moving_variance/PowPow3AssignMovingAvg_29/trunk/norm/moving_variance/sub_14AssignMovingAvg_29/trunk/norm/moving_variance/read_1*
T0*-
_class#
!loc:@trunk/norm/moving_variance*
_output_shapes
: 
�
5AssignMovingAvg_29/trunk/norm/moving_variance/sub_2/xConst8^AssignMovingAvg_29/trunk/norm/moving_variance/AssignAddI^AssignMovingAvg_29/trunk/norm/moving_variance/trunk/norm/moving_variance*
valueB
 *  �?*-
_class#
!loc:@trunk/norm/moving_variance*
dtype0*
_output_shapes
: 
�
3AssignMovingAvg_29/trunk/norm/moving_variance/sub_2Sub5AssignMovingAvg_29/trunk/norm/moving_variance/sub_2/x1AssignMovingAvg_29/trunk/norm/moving_variance/Pow*
_output_shapes
: *
T0*-
_class#
!loc:@trunk/norm/moving_variance
�
5AssignMovingAvg_29/trunk/norm/moving_variance/truedivRealDiv2AssignMovingAvg_29/trunk/norm/moving_variance/read3AssignMovingAvg_29/trunk/norm/moving_variance/sub_2*-
_class#
!loc:@trunk/norm/moving_variance*
_output_shapes
:`*
T0
�
3AssignMovingAvg_29/trunk/norm/moving_variance/sub_3Subtrunk/norm/moving_variance/read5AssignMovingAvg_29/trunk/norm/moving_variance/truediv*
_output_shapes
:`*
T0*-
_class#
!loc:@trunk/norm/moving_variance
�
AssignMovingAvg_29	AssignSubtrunk/norm/moving_variance3AssignMovingAvg_29/trunk/norm/moving_variance/sub_3*
T0*-
_class#
!loc:@trunk/norm/moving_variance*
_output_shapes
:`
M
cond_17/SwitchSwitchConst_2Const_2*
T0
*
_output_shapes
: : 
O
cond_17/switch_tIdentitycond_17/Switch:1*
_output_shapes
: *
T0

M
cond_17/switch_fIdentitycond_17/Switch*
_output_shapes
: *
T0

E
cond_17/pred_idIdentityConst_2*
T0
*
_output_shapes
: 
�
cond_17/Switch_1Switch
truediv_32cond_17/pred_id*
_class
loc:@truediv_32* 
_output_shapes
:`:`*
T0
�
cond_17/Switch_2Switch
truediv_33cond_17/pred_id*
T0*
_class
loc:@truediv_33* 
_output_shapes
:`:`
�
cond_17/Switch_3Switchtrunk/norm/moving_mean/readcond_17/pred_id*
T0*)
_class
loc:@trunk/norm/moving_mean* 
_output_shapes
:`:`
�
cond_17/Switch_4Switchtrunk/norm/moving_variance/readcond_17/pred_id*
T0*-
_class#
!loc:@trunk/norm/moving_variance* 
_output_shapes
:`:`
l
cond_17/MergeMergecond_17/Switch_3cond_17/Switch_1:1*
T0*
N*
_output_shapes

:`: 
n
cond_17/Merge_1Mergecond_17/Switch_4cond_17/Switch_2:1*
T0*
N*
_output_shapes

:`: 
W
batchnorm_14/add/yConst*
valueB
 *o�:*
dtype0*
_output_shapes
: 
a
batchnorm_14/addAddcond_17/Merge_1batchnorm_14/add/y*
T0*
_output_shapes
:`
R
batchnorm_14/RsqrtRsqrtbatchnorm_14/add*
_output_shapes
:`*
T0
l
batchnorm_14/mulMuladd_9batchnorm_14/Rsqrt*
T0*/
_output_shapes
:���������		`
a
batchnorm_14/mul_1Mulcond_17/Mergebatchnorm_14/Rsqrt*
_output_shapes
:`*
T0
f
batchnorm_14/subSubtrunk/norm/beta/readbatchnorm_14/mul_1*
T0*
_output_shapes
:`
w
batchnorm_14/add_1Addbatchnorm_14/mulbatchnorm_14/sub*/
_output_shapes
:���������		`*
T0
l
mul_65Mulbatchnorm_14/add_1strided_slice_5*/
_output_shapes
:���������		`*
T0
Q
Relu_14Relumul_65*
T0*/
_output_shapes
:���������		`
r
truncated_normal_18/shapeConst*%
valueB"      `       *
dtype0*
_output_shapes
:
]
truncated_normal_18/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
_
truncated_normal_18/stddevConst*
valueB
 *:�>*
dtype0*
_output_shapes
: 
�
#truncated_normal_18/TruncatedNormalTruncatedNormaltruncated_normal_18/shape*&
_output_shapes
:` *
T0*
dtype0
�
truncated_normal_18/mulMul#truncated_normal_18/TruncatedNormaltruncated_normal_18/stddev*&
_output_shapes
:` *
T0
~
truncated_normal_18Addtruncated_normal_18/multruncated_normal_18/mean*&
_output_shapes
:` *
T0
M
mul_66/yConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
]
mul_66Multruncated_normal_18mul_66/y*
T0*&
_output_shapes
:` 
v
p1/intermediate_conv/w
VariableV2*
dtype0*&
_output_shapes
:` *
shape:` 
�
p1/intermediate_conv/w/AssignAssignp1/intermediate_conv/wmul_66*
T0*)
_class
loc:@p1/intermediate_conv/w*&
_output_shapes
:` 
�
p1/intermediate_conv/w/readIdentityp1/intermediate_conv/w*
T0*)
_class
loc:@p1/intermediate_conv/w*&
_output_shapes
:` 
�
	Conv2D_15Conv2DRelu_14p1/intermediate_conv/w/read*
T0*
strides
*
paddingSAME*/
_output_shapes
:���������		 
r
truncated_normal_19/shapeConst*%
valueB"      `       *
dtype0*
_output_shapes
:
]
truncated_normal_19/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
_
truncated_normal_19/stddevConst*
valueB
 *:�>*
dtype0*
_output_shapes
: 
�
#truncated_normal_19/TruncatedNormalTruncatedNormaltruncated_normal_19/shape*
T0*
dtype0*&
_output_shapes
:` 
�
truncated_normal_19/mulMul#truncated_normal_19/TruncatedNormaltruncated_normal_19/stddev*
T0*&
_output_shapes
:` 
~
truncated_normal_19Addtruncated_normal_19/multruncated_normal_19/mean*
T0*&
_output_shapes
:` 
M
mul_67/yConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
]
mul_67Multruncated_normal_19mul_67/y*
T0*&
_output_shapes
:` 
d
g1/w
VariableV2*
dtype0*&
_output_shapes
:` *
shape:` 
m
g1/w/AssignAssigng1/wmul_67*
T0*
_class
	loc:@g1/w*&
_output_shapes
:` 
e
	g1/w/readIdentityg1/w*
T0*
_class
	loc:@g1/w*&
_output_shapes
:` 
�
	Conv2D_16Conv2DRelu_14	g1/w/read*
paddingSAME*/
_output_shapes
:���������		 *
T0*
strides

U
zeros_31Const*
valueB *    *
dtype0*
_output_shapes
: 
[
g1/norm/moving_mean
VariableV2*
shape: *
dtype0*
_output_shapes
: 
�
g1/norm/moving_mean/AssignAssigng1/norm/moving_meanzeros_31*
T0*&
_class
loc:@g1/norm/moving_mean*
_output_shapes
: 
�
g1/norm/moving_mean/readIdentityg1/norm/moving_mean*
_output_shapes
: *
T0*&
_class
loc:@g1/norm/moving_mean
T
ones_15Const*
valueB *  �?*
dtype0*
_output_shapes
: 
_
g1/norm/moving_variance
VariableV2*
dtype0*
_output_shapes
: *
shape: 
�
g1/norm/moving_variance/AssignAssigng1/norm/moving_varianceones_15*
T0**
_class 
loc:@g1/norm/moving_variance*
_output_shapes
: 
�
g1/norm/moving_variance/readIdentityg1/norm/moving_variance*
T0**
_class 
loc:@g1/norm/moving_variance*
_output_shapes
: 
U
zeros_32Const*
_output_shapes
: *
valueB *    *
dtype0
T
g1/norm/beta
VariableV2*
dtype0*
_output_shapes
: *
shape: 
{
g1/norm/beta/AssignAssigng1/norm/betazeros_32*
T0*
_class
loc:@g1/norm/beta*
_output_shapes
: 
q
g1/norm/beta/readIdentityg1/norm/beta*
T0*
_class
loc:@g1/norm/beta*
_output_shapes
: 
c
mul_68Mul	Conv2D_16strided_slice_5*/
_output_shapes
:���������		 *
T0
m
Sum_34/reduction_indicesConst*
_output_shapes
:*!
valueB"          *
dtype0
T
Sum_34Summul_68Sum_34/reduction_indices*
T0*
_output_shapes
: 
G

truediv_34RealDivSum_34Sum*
T0*
_output_shapes
: 
^
sub_17Sub	Conv2D_16
truediv_34*
T0*/
_output_shapes
:���������		 
`
mul_69Mulsub_17strided_slice_5*
T0*/
_output_shapes
:���������		 
U
	Square_15Squaremul_69*
T0*/
_output_shapes
:���������		 
m
Sum_35/reduction_indicesConst*
_output_shapes
:*!
valueB"          *
dtype0
W
Sum_35Sum	Square_15Sum_35/reduction_indices*
T0*
_output_shapes
: 
G

truediv_35RealDivSum_35Sum*
_output_shapes
: *
T0
�
AssignMovingAvg_30/decayConst*
valueB
 *o;*&
_class
loc:@g1/norm/moving_mean*
dtype0*
_output_shapes
: 
�
,AssignMovingAvg_30/g1/norm/moving_mean/zerosConst*
valueB *    *&
_class
loc:@g1/norm/moving_mean*
dtype0*
_output_shapes
: 
�
g1/norm/moving_mean/biased
VariableV2*
shape: *
dtype0*
_output_shapes
: *&
_class
loc:@g1/norm/moving_mean
�
!g1/norm/moving_mean/biased/AssignAssigng1/norm/moving_mean/biased,AssignMovingAvg_30/g1/norm/moving_mean/zeros*
T0*&
_class
loc:@g1/norm/moving_mean*
_output_shapes
: 
�
g1/norm/moving_mean/biased/readIdentityg1/norm/moving_mean/biased*
T0*&
_class
loc:@g1/norm/moving_mean*
_output_shapes
: 
�
0g1/norm/moving_mean/local_step/Initializer/zerosConst*
valueB
 *    *&
_class
loc:@g1/norm/moving_mean*
dtype0*
_output_shapes
: 
�
g1/norm/moving_mean/local_step
VariableV2*&
_class
loc:@g1/norm/moving_mean*
shape: *
dtype0*
_output_shapes
: 
�
%g1/norm/moving_mean/local_step/AssignAssigng1/norm/moving_mean/local_step0g1/norm/moving_mean/local_step/Initializer/zeros*
_output_shapes
: *
T0*&
_class
loc:@g1/norm/moving_mean
�
#g1/norm/moving_mean/local_step/readIdentityg1/norm/moving_mean/local_step*
T0*&
_class
loc:@g1/norm/moving_mean*
_output_shapes
: 
�
*AssignMovingAvg_30/g1/norm/moving_mean/subSubg1/norm/moving_mean/biased/read
truediv_34*
T0*&
_class
loc:@g1/norm/moving_mean*
_output_shapes
: 
�
*AssignMovingAvg_30/g1/norm/moving_mean/mulMul*AssignMovingAvg_30/g1/norm/moving_mean/subAssignMovingAvg_30/decay*
T0*&
_class
loc:@g1/norm/moving_mean*
_output_shapes
: 
�
:AssignMovingAvg_30/g1/norm/moving_mean/g1/norm/moving_mean	AssignSubg1/norm/moving_mean/biased*AssignMovingAvg_30/g1/norm/moving_mean/mul*
_output_shapes
: *
T0*&
_class
loc:@g1/norm/moving_mean
�
6AssignMovingAvg_30/g1/norm/moving_mean/AssignAdd/valueConst*
_output_shapes
: *
valueB
 *  �?*&
_class
loc:@g1/norm/moving_mean*
dtype0
�
0AssignMovingAvg_30/g1/norm/moving_mean/AssignAdd	AssignAddg1/norm/moving_mean/local_step6AssignMovingAvg_30/g1/norm/moving_mean/AssignAdd/value*
_output_shapes
: *
T0*&
_class
loc:@g1/norm/moving_mean
�
+AssignMovingAvg_30/g1/norm/moving_mean/readIdentityg1/norm/moving_mean/biased1^AssignMovingAvg_30/g1/norm/moving_mean/AssignAdd;^AssignMovingAvg_30/g1/norm/moving_mean/g1/norm/moving_mean*
_output_shapes
: *
T0*&
_class
loc:@g1/norm/moving_mean
�
.AssignMovingAvg_30/g1/norm/moving_mean/sub_1/xConst1^AssignMovingAvg_30/g1/norm/moving_mean/AssignAdd;^AssignMovingAvg_30/g1/norm/moving_mean/g1/norm/moving_mean*
valueB
 *  �?*&
_class
loc:@g1/norm/moving_mean*
dtype0*
_output_shapes
: 
�
,AssignMovingAvg_30/g1/norm/moving_mean/sub_1Sub.AssignMovingAvg_30/g1/norm/moving_mean/sub_1/xAssignMovingAvg_30/decay*
_output_shapes
: *
T0*&
_class
loc:@g1/norm/moving_mean
�
-AssignMovingAvg_30/g1/norm/moving_mean/read_1Identityg1/norm/moving_mean/local_step1^AssignMovingAvg_30/g1/norm/moving_mean/AssignAdd;^AssignMovingAvg_30/g1/norm/moving_mean/g1/norm/moving_mean*
T0*&
_class
loc:@g1/norm/moving_mean*
_output_shapes
: 
�
*AssignMovingAvg_30/g1/norm/moving_mean/PowPow,AssignMovingAvg_30/g1/norm/moving_mean/sub_1-AssignMovingAvg_30/g1/norm/moving_mean/read_1*
T0*&
_class
loc:@g1/norm/moving_mean*
_output_shapes
: 
�
.AssignMovingAvg_30/g1/norm/moving_mean/sub_2/xConst1^AssignMovingAvg_30/g1/norm/moving_mean/AssignAdd;^AssignMovingAvg_30/g1/norm/moving_mean/g1/norm/moving_mean*
valueB
 *  �?*&
_class
loc:@g1/norm/moving_mean*
dtype0*
_output_shapes
: 
�
,AssignMovingAvg_30/g1/norm/moving_mean/sub_2Sub.AssignMovingAvg_30/g1/norm/moving_mean/sub_2/x*AssignMovingAvg_30/g1/norm/moving_mean/Pow*
_output_shapes
: *
T0*&
_class
loc:@g1/norm/moving_mean
�
.AssignMovingAvg_30/g1/norm/moving_mean/truedivRealDiv+AssignMovingAvg_30/g1/norm/moving_mean/read,AssignMovingAvg_30/g1/norm/moving_mean/sub_2*
T0*&
_class
loc:@g1/norm/moving_mean*
_output_shapes
: 
�
,AssignMovingAvg_30/g1/norm/moving_mean/sub_3Subg1/norm/moving_mean/read.AssignMovingAvg_30/g1/norm/moving_mean/truediv*
T0*&
_class
loc:@g1/norm/moving_mean*
_output_shapes
: 
�
AssignMovingAvg_30	AssignSubg1/norm/moving_mean,AssignMovingAvg_30/g1/norm/moving_mean/sub_3*
T0*&
_class
loc:@g1/norm/moving_mean*
_output_shapes
: 
�
AssignMovingAvg_31/decayConst*
valueB
 *o;**
_class 
loc:@g1/norm/moving_variance*
dtype0*
_output_shapes
: 
�
0AssignMovingAvg_31/g1/norm/moving_variance/zerosConst*
valueB *    **
_class 
loc:@g1/norm/moving_variance*
dtype0*
_output_shapes
: 
�
g1/norm/moving_variance/biased
VariableV2*
_output_shapes
: **
_class 
loc:@g1/norm/moving_variance*
shape: *
dtype0
�
%g1/norm/moving_variance/biased/AssignAssigng1/norm/moving_variance/biased0AssignMovingAvg_31/g1/norm/moving_variance/zeros*
_output_shapes
: *
T0**
_class 
loc:@g1/norm/moving_variance
�
#g1/norm/moving_variance/biased/readIdentityg1/norm/moving_variance/biased**
_class 
loc:@g1/norm/moving_variance*
_output_shapes
: *
T0
�
4g1/norm/moving_variance/local_step/Initializer/zerosConst*
dtype0*
_output_shapes
: *
valueB
 *    **
_class 
loc:@g1/norm/moving_variance
�
"g1/norm/moving_variance/local_step
VariableV2*
shape: *
dtype0*
_output_shapes
: **
_class 
loc:@g1/norm/moving_variance
�
)g1/norm/moving_variance/local_step/AssignAssign"g1/norm/moving_variance/local_step4g1/norm/moving_variance/local_step/Initializer/zeros*
T0**
_class 
loc:@g1/norm/moving_variance*
_output_shapes
: 
�
'g1/norm/moving_variance/local_step/readIdentity"g1/norm/moving_variance/local_step*
T0**
_class 
loc:@g1/norm/moving_variance*
_output_shapes
: 
�
.AssignMovingAvg_31/g1/norm/moving_variance/subSub#g1/norm/moving_variance/biased/read
truediv_35*
_output_shapes
: *
T0**
_class 
loc:@g1/norm/moving_variance
�
.AssignMovingAvg_31/g1/norm/moving_variance/mulMul.AssignMovingAvg_31/g1/norm/moving_variance/subAssignMovingAvg_31/decay*
T0**
_class 
loc:@g1/norm/moving_variance*
_output_shapes
: 
�
BAssignMovingAvg_31/g1/norm/moving_variance/g1/norm/moving_variance	AssignSubg1/norm/moving_variance/biased.AssignMovingAvg_31/g1/norm/moving_variance/mul*
T0**
_class 
loc:@g1/norm/moving_variance*
_output_shapes
: 
�
:AssignMovingAvg_31/g1/norm/moving_variance/AssignAdd/valueConst*
valueB
 *  �?**
_class 
loc:@g1/norm/moving_variance*
dtype0*
_output_shapes
: 
�
4AssignMovingAvg_31/g1/norm/moving_variance/AssignAdd	AssignAdd"g1/norm/moving_variance/local_step:AssignMovingAvg_31/g1/norm/moving_variance/AssignAdd/value*
_output_shapes
: *
T0**
_class 
loc:@g1/norm/moving_variance
�
/AssignMovingAvg_31/g1/norm/moving_variance/readIdentityg1/norm/moving_variance/biased5^AssignMovingAvg_31/g1/norm/moving_variance/AssignAddC^AssignMovingAvg_31/g1/norm/moving_variance/g1/norm/moving_variance*
_output_shapes
: *
T0**
_class 
loc:@g1/norm/moving_variance
�
2AssignMovingAvg_31/g1/norm/moving_variance/sub_1/xConst5^AssignMovingAvg_31/g1/norm/moving_variance/AssignAddC^AssignMovingAvg_31/g1/norm/moving_variance/g1/norm/moving_variance*
valueB
 *  �?**
_class 
loc:@g1/norm/moving_variance*
dtype0*
_output_shapes
: 
�
0AssignMovingAvg_31/g1/norm/moving_variance/sub_1Sub2AssignMovingAvg_31/g1/norm/moving_variance/sub_1/xAssignMovingAvg_31/decay**
_class 
loc:@g1/norm/moving_variance*
_output_shapes
: *
T0
�
1AssignMovingAvg_31/g1/norm/moving_variance/read_1Identity"g1/norm/moving_variance/local_step5^AssignMovingAvg_31/g1/norm/moving_variance/AssignAddC^AssignMovingAvg_31/g1/norm/moving_variance/g1/norm/moving_variance*
_output_shapes
: *
T0**
_class 
loc:@g1/norm/moving_variance
�
.AssignMovingAvg_31/g1/norm/moving_variance/PowPow0AssignMovingAvg_31/g1/norm/moving_variance/sub_11AssignMovingAvg_31/g1/norm/moving_variance/read_1*
T0**
_class 
loc:@g1/norm/moving_variance*
_output_shapes
: 
�
2AssignMovingAvg_31/g1/norm/moving_variance/sub_2/xConst5^AssignMovingAvg_31/g1/norm/moving_variance/AssignAddC^AssignMovingAvg_31/g1/norm/moving_variance/g1/norm/moving_variance*
valueB
 *  �?**
_class 
loc:@g1/norm/moving_variance*
dtype0*
_output_shapes
: 
�
0AssignMovingAvg_31/g1/norm/moving_variance/sub_2Sub2AssignMovingAvg_31/g1/norm/moving_variance/sub_2/x.AssignMovingAvg_31/g1/norm/moving_variance/Pow**
_class 
loc:@g1/norm/moving_variance*
_output_shapes
: *
T0
�
2AssignMovingAvg_31/g1/norm/moving_variance/truedivRealDiv/AssignMovingAvg_31/g1/norm/moving_variance/read0AssignMovingAvg_31/g1/norm/moving_variance/sub_2*
_output_shapes
: *
T0**
_class 
loc:@g1/norm/moving_variance
�
0AssignMovingAvg_31/g1/norm/moving_variance/sub_3Subg1/norm/moving_variance/read2AssignMovingAvg_31/g1/norm/moving_variance/truediv*
T0**
_class 
loc:@g1/norm/moving_variance*
_output_shapes
: 
�
AssignMovingAvg_31	AssignSubg1/norm/moving_variance0AssignMovingAvg_31/g1/norm/moving_variance/sub_3*
T0**
_class 
loc:@g1/norm/moving_variance*
_output_shapes
: 
M
cond_18/SwitchSwitchConst_2Const_2*
T0
*
_output_shapes
: : 
O
cond_18/switch_tIdentitycond_18/Switch:1*
_output_shapes
: *
T0

M
cond_18/switch_fIdentitycond_18/Switch*
T0
*
_output_shapes
: 
E
cond_18/pred_idIdentityConst_2*
T0
*
_output_shapes
: 
�
cond_18/Switch_1Switch
truediv_34cond_18/pred_id*
_class
loc:@truediv_34* 
_output_shapes
: : *
T0
�
cond_18/Switch_2Switch
truediv_35cond_18/pred_id*
T0*
_class
loc:@truediv_35* 
_output_shapes
: : 
�
cond_18/Switch_3Switchg1/norm/moving_mean/readcond_18/pred_id* 
_output_shapes
: : *
T0*&
_class
loc:@g1/norm/moving_mean
�
cond_18/Switch_4Switchg1/norm/moving_variance/readcond_18/pred_id**
_class 
loc:@g1/norm/moving_variance* 
_output_shapes
: : *
T0
l
cond_18/MergeMergecond_18/Switch_3cond_18/Switch_1:1*
T0*
N*
_output_shapes

: : 
n
cond_18/Merge_1Mergecond_18/Switch_4cond_18/Switch_2:1*
N*
_output_shapes

: : *
T0
W
batchnorm_15/add/yConst*
valueB
 *o�:*
dtype0*
_output_shapes
: 
a
batchnorm_15/addAddcond_18/Merge_1batchnorm_15/add/y*
_output_shapes
: *
T0
R
batchnorm_15/RsqrtRsqrtbatchnorm_15/add*
_output_shapes
: *
T0
p
batchnorm_15/mulMul	Conv2D_16batchnorm_15/Rsqrt*
T0*/
_output_shapes
:���������		 
a
batchnorm_15/mul_1Mulcond_18/Mergebatchnorm_15/Rsqrt*
_output_shapes
: *
T0
c
batchnorm_15/subSubg1/norm/beta/readbatchnorm_15/mul_1*
_output_shapes
: *
T0
w
batchnorm_15/add_1Addbatchnorm_15/mulbatchnorm_15/sub*/
_output_shapes
:���������		 *
T0
l
mul_70Mulbatchnorm_15/add_1strided_slice_5*
T0*/
_output_shapes
:���������		 
Q
Relu_15Relumul_70*
T0*/
_output_shapes
:���������		 
i
Reshape_11/shapeConst*%
valueB"����         *
dtype0*
_output_shapes
:
h

Reshape_11ReshapeSum_1Reshape_11/shape*
T0*/
_output_shapes
:���������
i
Reshape_12/shapeConst*
_output_shapes
:*%
valueB"����         *
dtype0
g

Reshape_12ReshapeSqrtReshape_12/shape*/
_output_shapes
:���������*
T0
i
Sum_36/reduction_indicesConst*
valueB"      *
dtype0*
_output_shapes
:
{
Sum_36SumRelu_15Sum_36/reduction_indices*/
_output_shapes
:��������� *
	keep_dims(*
T0
c

truediv_36RealDivSum_36
Reshape_11*
T0*/
_output_shapes
:��������� 
h
Max_2/reduction_indicesConst*
valueB"      *
dtype0*
_output_shapes
:
y
Max_2MaxRelu_15Max_2/reduction_indices*
T0*/
_output_shapes
:��������� *
	keep_dims(
M
sub_18/yConst*
valueB
 *  `A*
dtype0*
_output_shapes
: 
]
sub_18Sub
Reshape_12sub_18/y*
T0*/
_output_shapes
:���������
Q
truediv_37/yConst*
valueB
 *   A*
dtype0*
_output_shapes
: 
e

truediv_37RealDivsub_18truediv_37/y*
T0*/
_output_shapes
:���������
_
mul_71Mul
truediv_36
truediv_37*/
_output_shapes
:��������� *
T0
O
concat_2/axisConst*
_output_shapes
: *
value	B :*
dtype0
�
concat_2ConcatV2
truediv_36mul_71Max_2concat_2/axis*
T0*
N*/
_output_shapes
:���������`
j
truncated_normal_20/shapeConst*
valueB"`       *
dtype0*
_output_shapes
:
]
truncated_normal_20/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
_
truncated_normal_20/stddevConst*
valueB
 *:͓=*
dtype0*
_output_shapes
: 
�
#truncated_normal_20/TruncatedNormalTruncatedNormaltruncated_normal_20/shape*
T0*
dtype0*
_output_shapes

:` 
�
truncated_normal_20/mulMul#truncated_normal_20/TruncatedNormaltruncated_normal_20/stddev*
_output_shapes

:` *
T0
v
truncated_normal_20Addtruncated_normal_20/multruncated_normal_20/mean*
_output_shapes

:` *
T0
M
mul_72/yConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
U
mul_72Multruncated_normal_20mul_72/y*
T0*
_output_shapes

:` 
Y
	matmulg2w
VariableV2*
_output_shapes

:` *
shape
:` *
dtype0
t
matmulg2w/AssignAssign	matmulg2wmul_72*
_output_shapes

:` *
T0*
_class
loc:@matmulg2w
l
matmulg2w/readIdentity	matmulg2w*
T0*
_class
loc:@matmulg2w*
_output_shapes

:` 
Z
Tensordot_4/axesConst*
valueB:*
dtype0*
_output_shapes
:
e
Tensordot_4/freeConst*!
valueB"          *
dtype0*
_output_shapes
:
I
Tensordot_4/ShapeShapeconcat_2*
T0*
_output_shapes
:
[
Tensordot_4/GatherV2/axisConst*
_output_shapes
: *
value	B : *
dtype0
�
Tensordot_4/GatherV2GatherV2Tensordot_4/ShapeTensordot_4/freeTensordot_4/GatherV2/axis*
Tparams0*
_output_shapes
:*
Taxis0*
Tindices0
]
Tensordot_4/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
Tensordot_4/GatherV2_1GatherV2Tensordot_4/ShapeTensordot_4/axesTensordot_4/GatherV2_1/axis*
Tparams0*
_output_shapes
:*
Taxis0*
Tindices0
[
Tensordot_4/ConstConst*
valueB: *
dtype0*
_output_shapes
:
b
Tensordot_4/ProdProdTensordot_4/GatherV2Tensordot_4/Const*
_output_shapes
: *
T0
]
Tensordot_4/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
h
Tensordot_4/Prod_1ProdTensordot_4/GatherV2_1Tensordot_4/Const_1*
_output_shapes
: *
T0
Y
Tensordot_4/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
Tensordot_4/concatConcatV2Tensordot_4/freeTensordot_4/axesTensordot_4/concat/axis*
T0*
N*
_output_shapes
:
m
Tensordot_4/stackPackTensordot_4/ProdTensordot_4/Prod_1*
T0*
N*
_output_shapes
:
z
Tensordot_4/transpose	Transposeconcat_2Tensordot_4/concat*/
_output_shapes
:���������`*
T0
�
Tensordot_4/ReshapeReshapeTensordot_4/transposeTensordot_4/stack*
T0*0
_output_shapes
:������������������
m
Tensordot_4/transpose_1/permConst*
valueB"       *
dtype0*
_output_shapes
:
{
Tensordot_4/transpose_1	Transposematmulg2w/readTensordot_4/transpose_1/perm*
T0*
_output_shapes

:` 
l
Tensordot_4/Reshape_1/shapeConst*
_output_shapes
:*
valueB"`       *
dtype0

Tensordot_4/Reshape_1ReshapeTensordot_4/transpose_1Tensordot_4/Reshape_1/shape*
T0*
_output_shapes

:` 
z
Tensordot_4/MatMulMatMulTensordot_4/ReshapeTensordot_4/Reshape_1*'
_output_shapes
:��������� *
T0
]
Tensordot_4/Const_2Const*
valueB: *
dtype0*
_output_shapes
:
[
Tensordot_4/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
Tensordot_4/concat_1ConcatV2Tensordot_4/GatherV2Tensordot_4/Const_2Tensordot_4/concat_1/axis*
N*
_output_shapes
:*
T0
z
Tensordot_4ReshapeTensordot_4/MatMulTensordot_4/concat_1*
T0*/
_output_shapes
:��������� 
_
add_10Add	Conv2D_15Tensordot_4*
T0*/
_output_shapes
:���������		 
U
zeros_33Const*
valueB *    *
dtype0*
_output_shapes
: 
[
p1/norm/moving_mean
VariableV2*
dtype0*
_output_shapes
: *
shape: 
�
p1/norm/moving_mean/AssignAssignp1/norm/moving_meanzeros_33*
T0*&
_class
loc:@p1/norm/moving_mean*
_output_shapes
: 
�
p1/norm/moving_mean/readIdentityp1/norm/moving_mean*
T0*&
_class
loc:@p1/norm/moving_mean*
_output_shapes
: 
T
ones_16Const*
valueB *  �?*
dtype0*
_output_shapes
: 
_
p1/norm/moving_variance
VariableV2*
dtype0*
_output_shapes
: *
shape: 
�
p1/norm/moving_variance/AssignAssignp1/norm/moving_varianceones_16*
T0**
_class 
loc:@p1/norm/moving_variance*
_output_shapes
: 
�
p1/norm/moving_variance/readIdentityp1/norm/moving_variance*
T0**
_class 
loc:@p1/norm/moving_variance*
_output_shapes
: 
U
zeros_34Const*
valueB *    *
dtype0*
_output_shapes
: 
T
p1/norm/beta
VariableV2*
dtype0*
_output_shapes
: *
shape: 
{
p1/norm/beta/AssignAssignp1/norm/betazeros_34*
T0*
_class
loc:@p1/norm/beta*
_output_shapes
: 
q
p1/norm/beta/readIdentityp1/norm/beta*
T0*
_class
loc:@p1/norm/beta*
_output_shapes
: 
`
mul_73Muladd_10strided_slice_5*/
_output_shapes
:���������		 *
T0
m
Sum_37/reduction_indicesConst*!
valueB"          *
dtype0*
_output_shapes
:
T
Sum_37Summul_73Sum_37/reduction_indices*
T0*
_output_shapes
: 
G

truediv_38RealDivSum_37Sum*
T0*
_output_shapes
: 
[
sub_19Subadd_10
truediv_38*
T0*/
_output_shapes
:���������		 
`
mul_74Mulsub_19strided_slice_5*
T0*/
_output_shapes
:���������		 
U
	Square_16Squaremul_74*
T0*/
_output_shapes
:���������		 
m
Sum_38/reduction_indicesConst*!
valueB"          *
dtype0*
_output_shapes
:
W
Sum_38Sum	Square_16Sum_38/reduction_indices*
_output_shapes
: *
T0
G

truediv_39RealDivSum_38Sum*
T0*
_output_shapes
: 
�
AssignMovingAvg_32/decayConst*
valueB
 *o;*&
_class
loc:@p1/norm/moving_mean*
dtype0*
_output_shapes
: 
�
,AssignMovingAvg_32/p1/norm/moving_mean/zerosConst*
valueB *    *&
_class
loc:@p1/norm/moving_mean*
dtype0*
_output_shapes
: 
�
p1/norm/moving_mean/biased
VariableV2*
dtype0*
_output_shapes
: *&
_class
loc:@p1/norm/moving_mean*
shape: 
�
!p1/norm/moving_mean/biased/AssignAssignp1/norm/moving_mean/biased,AssignMovingAvg_32/p1/norm/moving_mean/zeros*
_output_shapes
: *
T0*&
_class
loc:@p1/norm/moving_mean
�
p1/norm/moving_mean/biased/readIdentityp1/norm/moving_mean/biased*
T0*&
_class
loc:@p1/norm/moving_mean*
_output_shapes
: 
�
0p1/norm/moving_mean/local_step/Initializer/zerosConst*
valueB
 *    *&
_class
loc:@p1/norm/moving_mean*
dtype0*
_output_shapes
: 
�
p1/norm/moving_mean/local_step
VariableV2*
dtype0*
_output_shapes
: *&
_class
loc:@p1/norm/moving_mean*
shape: 
�
%p1/norm/moving_mean/local_step/AssignAssignp1/norm/moving_mean/local_step0p1/norm/moving_mean/local_step/Initializer/zeros*
T0*&
_class
loc:@p1/norm/moving_mean*
_output_shapes
: 
�
#p1/norm/moving_mean/local_step/readIdentityp1/norm/moving_mean/local_step*
_output_shapes
: *
T0*&
_class
loc:@p1/norm/moving_mean
�
*AssignMovingAvg_32/p1/norm/moving_mean/subSubp1/norm/moving_mean/biased/read
truediv_38*
_output_shapes
: *
T0*&
_class
loc:@p1/norm/moving_mean
�
*AssignMovingAvg_32/p1/norm/moving_mean/mulMul*AssignMovingAvg_32/p1/norm/moving_mean/subAssignMovingAvg_32/decay*
T0*&
_class
loc:@p1/norm/moving_mean*
_output_shapes
: 
�
:AssignMovingAvg_32/p1/norm/moving_mean/p1/norm/moving_mean	AssignSubp1/norm/moving_mean/biased*AssignMovingAvg_32/p1/norm/moving_mean/mul*
T0*&
_class
loc:@p1/norm/moving_mean*
_output_shapes
: 
�
6AssignMovingAvg_32/p1/norm/moving_mean/AssignAdd/valueConst*
_output_shapes
: *
valueB
 *  �?*&
_class
loc:@p1/norm/moving_mean*
dtype0
�
0AssignMovingAvg_32/p1/norm/moving_mean/AssignAdd	AssignAddp1/norm/moving_mean/local_step6AssignMovingAvg_32/p1/norm/moving_mean/AssignAdd/value*
T0*&
_class
loc:@p1/norm/moving_mean*
_output_shapes
: 
�
+AssignMovingAvg_32/p1/norm/moving_mean/readIdentityp1/norm/moving_mean/biased1^AssignMovingAvg_32/p1/norm/moving_mean/AssignAdd;^AssignMovingAvg_32/p1/norm/moving_mean/p1/norm/moving_mean*&
_class
loc:@p1/norm/moving_mean*
_output_shapes
: *
T0
�
.AssignMovingAvg_32/p1/norm/moving_mean/sub_1/xConst1^AssignMovingAvg_32/p1/norm/moving_mean/AssignAdd;^AssignMovingAvg_32/p1/norm/moving_mean/p1/norm/moving_mean*
valueB
 *  �?*&
_class
loc:@p1/norm/moving_mean*
dtype0*
_output_shapes
: 
�
,AssignMovingAvg_32/p1/norm/moving_mean/sub_1Sub.AssignMovingAvg_32/p1/norm/moving_mean/sub_1/xAssignMovingAvg_32/decay*
_output_shapes
: *
T0*&
_class
loc:@p1/norm/moving_mean
�
-AssignMovingAvg_32/p1/norm/moving_mean/read_1Identityp1/norm/moving_mean/local_step1^AssignMovingAvg_32/p1/norm/moving_mean/AssignAdd;^AssignMovingAvg_32/p1/norm/moving_mean/p1/norm/moving_mean*&
_class
loc:@p1/norm/moving_mean*
_output_shapes
: *
T0
�
*AssignMovingAvg_32/p1/norm/moving_mean/PowPow,AssignMovingAvg_32/p1/norm/moving_mean/sub_1-AssignMovingAvg_32/p1/norm/moving_mean/read_1*
_output_shapes
: *
T0*&
_class
loc:@p1/norm/moving_mean
�
.AssignMovingAvg_32/p1/norm/moving_mean/sub_2/xConst1^AssignMovingAvg_32/p1/norm/moving_mean/AssignAdd;^AssignMovingAvg_32/p1/norm/moving_mean/p1/norm/moving_mean*
dtype0*
_output_shapes
: *
valueB
 *  �?*&
_class
loc:@p1/norm/moving_mean
�
,AssignMovingAvg_32/p1/norm/moving_mean/sub_2Sub.AssignMovingAvg_32/p1/norm/moving_mean/sub_2/x*AssignMovingAvg_32/p1/norm/moving_mean/Pow*
T0*&
_class
loc:@p1/norm/moving_mean*
_output_shapes
: 
�
.AssignMovingAvg_32/p1/norm/moving_mean/truedivRealDiv+AssignMovingAvg_32/p1/norm/moving_mean/read,AssignMovingAvg_32/p1/norm/moving_mean/sub_2*
T0*&
_class
loc:@p1/norm/moving_mean*
_output_shapes
: 
�
,AssignMovingAvg_32/p1/norm/moving_mean/sub_3Subp1/norm/moving_mean/read.AssignMovingAvg_32/p1/norm/moving_mean/truediv*
T0*&
_class
loc:@p1/norm/moving_mean*
_output_shapes
: 
�
AssignMovingAvg_32	AssignSubp1/norm/moving_mean,AssignMovingAvg_32/p1/norm/moving_mean/sub_3*
T0*&
_class
loc:@p1/norm/moving_mean*
_output_shapes
: 
�
AssignMovingAvg_33/decayConst*
valueB
 *o;**
_class 
loc:@p1/norm/moving_variance*
dtype0*
_output_shapes
: 
�
0AssignMovingAvg_33/p1/norm/moving_variance/zerosConst*
valueB *    **
_class 
loc:@p1/norm/moving_variance*
dtype0*
_output_shapes
: 
�
p1/norm/moving_variance/biased
VariableV2*
dtype0*
_output_shapes
: **
_class 
loc:@p1/norm/moving_variance*
shape: 
�
%p1/norm/moving_variance/biased/AssignAssignp1/norm/moving_variance/biased0AssignMovingAvg_33/p1/norm/moving_variance/zeros**
_class 
loc:@p1/norm/moving_variance*
_output_shapes
: *
T0
�
#p1/norm/moving_variance/biased/readIdentityp1/norm/moving_variance/biased*
_output_shapes
: *
T0**
_class 
loc:@p1/norm/moving_variance
�
4p1/norm/moving_variance/local_step/Initializer/zerosConst*
valueB
 *    **
_class 
loc:@p1/norm/moving_variance*
dtype0*
_output_shapes
: 
�
"p1/norm/moving_variance/local_step
VariableV2**
_class 
loc:@p1/norm/moving_variance*
shape: *
dtype0*
_output_shapes
: 
�
)p1/norm/moving_variance/local_step/AssignAssign"p1/norm/moving_variance/local_step4p1/norm/moving_variance/local_step/Initializer/zeros*
_output_shapes
: *
T0**
_class 
loc:@p1/norm/moving_variance
�
'p1/norm/moving_variance/local_step/readIdentity"p1/norm/moving_variance/local_step*
T0**
_class 
loc:@p1/norm/moving_variance*
_output_shapes
: 
�
.AssignMovingAvg_33/p1/norm/moving_variance/subSub#p1/norm/moving_variance/biased/read
truediv_39*
T0**
_class 
loc:@p1/norm/moving_variance*
_output_shapes
: 
�
.AssignMovingAvg_33/p1/norm/moving_variance/mulMul.AssignMovingAvg_33/p1/norm/moving_variance/subAssignMovingAvg_33/decay*
T0**
_class 
loc:@p1/norm/moving_variance*
_output_shapes
: 
�
BAssignMovingAvg_33/p1/norm/moving_variance/p1/norm/moving_variance	AssignSubp1/norm/moving_variance/biased.AssignMovingAvg_33/p1/norm/moving_variance/mul*
T0**
_class 
loc:@p1/norm/moving_variance*
_output_shapes
: 
�
:AssignMovingAvg_33/p1/norm/moving_variance/AssignAdd/valueConst*
valueB
 *  �?**
_class 
loc:@p1/norm/moving_variance*
dtype0*
_output_shapes
: 
�
4AssignMovingAvg_33/p1/norm/moving_variance/AssignAdd	AssignAdd"p1/norm/moving_variance/local_step:AssignMovingAvg_33/p1/norm/moving_variance/AssignAdd/value*
T0**
_class 
loc:@p1/norm/moving_variance*
_output_shapes
: 
�
/AssignMovingAvg_33/p1/norm/moving_variance/readIdentityp1/norm/moving_variance/biased5^AssignMovingAvg_33/p1/norm/moving_variance/AssignAddC^AssignMovingAvg_33/p1/norm/moving_variance/p1/norm/moving_variance*
_output_shapes
: *
T0**
_class 
loc:@p1/norm/moving_variance
�
2AssignMovingAvg_33/p1/norm/moving_variance/sub_1/xConst5^AssignMovingAvg_33/p1/norm/moving_variance/AssignAddC^AssignMovingAvg_33/p1/norm/moving_variance/p1/norm/moving_variance*
dtype0*
_output_shapes
: *
valueB
 *  �?**
_class 
loc:@p1/norm/moving_variance
�
0AssignMovingAvg_33/p1/norm/moving_variance/sub_1Sub2AssignMovingAvg_33/p1/norm/moving_variance/sub_1/xAssignMovingAvg_33/decay*
T0**
_class 
loc:@p1/norm/moving_variance*
_output_shapes
: 
�
1AssignMovingAvg_33/p1/norm/moving_variance/read_1Identity"p1/norm/moving_variance/local_step5^AssignMovingAvg_33/p1/norm/moving_variance/AssignAddC^AssignMovingAvg_33/p1/norm/moving_variance/p1/norm/moving_variance*
T0**
_class 
loc:@p1/norm/moving_variance*
_output_shapes
: 
�
.AssignMovingAvg_33/p1/norm/moving_variance/PowPow0AssignMovingAvg_33/p1/norm/moving_variance/sub_11AssignMovingAvg_33/p1/norm/moving_variance/read_1**
_class 
loc:@p1/norm/moving_variance*
_output_shapes
: *
T0
�
2AssignMovingAvg_33/p1/norm/moving_variance/sub_2/xConst5^AssignMovingAvg_33/p1/norm/moving_variance/AssignAddC^AssignMovingAvg_33/p1/norm/moving_variance/p1/norm/moving_variance*
valueB
 *  �?**
_class 
loc:@p1/norm/moving_variance*
dtype0*
_output_shapes
: 
�
0AssignMovingAvg_33/p1/norm/moving_variance/sub_2Sub2AssignMovingAvg_33/p1/norm/moving_variance/sub_2/x.AssignMovingAvg_33/p1/norm/moving_variance/Pow*
T0**
_class 
loc:@p1/norm/moving_variance*
_output_shapes
: 
�
2AssignMovingAvg_33/p1/norm/moving_variance/truedivRealDiv/AssignMovingAvg_33/p1/norm/moving_variance/read0AssignMovingAvg_33/p1/norm/moving_variance/sub_2*
T0**
_class 
loc:@p1/norm/moving_variance*
_output_shapes
: 
�
0AssignMovingAvg_33/p1/norm/moving_variance/sub_3Subp1/norm/moving_variance/read2AssignMovingAvg_33/p1/norm/moving_variance/truediv**
_class 
loc:@p1/norm/moving_variance*
_output_shapes
: *
T0
�
AssignMovingAvg_33	AssignSubp1/norm/moving_variance0AssignMovingAvg_33/p1/norm/moving_variance/sub_3*
T0**
_class 
loc:@p1/norm/moving_variance*
_output_shapes
: 
M
cond_19/SwitchSwitchConst_2Const_2*
_output_shapes
: : *
T0

O
cond_19/switch_tIdentitycond_19/Switch:1*
_output_shapes
: *
T0

M
cond_19/switch_fIdentitycond_19/Switch*
_output_shapes
: *
T0

E
cond_19/pred_idIdentityConst_2*
T0
*
_output_shapes
: 
�
cond_19/Switch_1Switch
truediv_38cond_19/pred_id*
T0*
_class
loc:@truediv_38* 
_output_shapes
: : 
�
cond_19/Switch_2Switch
truediv_39cond_19/pred_id* 
_output_shapes
: : *
T0*
_class
loc:@truediv_39
�
cond_19/Switch_3Switchp1/norm/moving_mean/readcond_19/pred_id*
T0*&
_class
loc:@p1/norm/moving_mean* 
_output_shapes
: : 
�
cond_19/Switch_4Switchp1/norm/moving_variance/readcond_19/pred_id*
T0**
_class 
loc:@p1/norm/moving_variance* 
_output_shapes
: : 
l
cond_19/MergeMergecond_19/Switch_3cond_19/Switch_1:1*
T0*
N*
_output_shapes

: : 
n
cond_19/Merge_1Mergecond_19/Switch_4cond_19/Switch_2:1*
T0*
N*
_output_shapes

: : 
W
batchnorm_16/add/yConst*
valueB
 *o�:*
dtype0*
_output_shapes
: 
a
batchnorm_16/addAddcond_19/Merge_1batchnorm_16/add/y*
T0*
_output_shapes
: 
R
batchnorm_16/RsqrtRsqrtbatchnorm_16/add*
T0*
_output_shapes
: 
m
batchnorm_16/mulMuladd_10batchnorm_16/Rsqrt*
T0*/
_output_shapes
:���������		 
a
batchnorm_16/mul_1Mulcond_19/Mergebatchnorm_16/Rsqrt*
T0*
_output_shapes
: 
c
batchnorm_16/subSubp1/norm/beta/readbatchnorm_16/mul_1*
T0*
_output_shapes
: 
w
batchnorm_16/add_1Addbatchnorm_16/mulbatchnorm_16/sub*
T0*/
_output_shapes
:���������		 
l
mul_75Mulbatchnorm_16/add_1strided_slice_5*
T0*/
_output_shapes
:���������		 
Q
Relu_16Relumul_75*
T0*/
_output_shapes
:���������		 
r
truncated_normal_21/shapeConst*%
valueB"             *
dtype0*
_output_shapes
:
]
truncated_normal_21/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
_
truncated_normal_21/stddevConst*
valueB
 *  �>*
dtype0*
_output_shapes
: 
�
#truncated_normal_21/TruncatedNormalTruncatedNormaltruncated_normal_21/shape*
T0*
dtype0*&
_output_shapes
: 
�
truncated_normal_21/mulMul#truncated_normal_21/TruncatedNormaltruncated_normal_21/stddev*&
_output_shapes
: *
T0
~
truncated_normal_21Addtruncated_normal_21/multruncated_normal_21/mean*
T0*&
_output_shapes
: 
M
mul_76/yConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
]
mul_76Multruncated_normal_21mul_76/y*
T0*&
_output_shapes
: 
d
p2/w
VariableV2*
dtype0*&
_output_shapes
: *
shape: 
m
p2/w/AssignAssignp2/wmul_76*&
_output_shapes
: *
T0*
_class
	loc:@p2/w
e
	p2/w/readIdentityp2/w*
T0*
_class
	loc:@p2/w*&
_output_shapes
: 
�
	Conv2D_17Conv2DRelu_16	p2/w/read*/
_output_shapes
:���������		*
T0*
strides
*
paddingSAME
M
sub_20/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
b
sub_20Subsub_20/xstrided_slice_5*
T0*/
_output_shapes
:���������		
M
mul_77/yConst*
valueB
 * @�E*
dtype0*
_output_shapes
: 
Y
mul_77Mulsub_20mul_77/y*
T0*/
_output_shapes
:���������		
Z
sub_21Sub	Conv2D_17mul_77*/
_output_shapes
:���������		*
T0
_
strided_slice_6/stackConst*
dtype0*
_output_shapes
:*
valueB: 
a
strided_slice_6/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
a
strided_slice_6/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
strided_slice_6StridedSliceGreaterstrided_slice_6/stackstrided_slice_6/stack_1strided_slice_6/stack_2*
shrink_axis_mask*
_output_shapes
: *
Index0*
T0

_
strided_slice_7/stackConst*
_output_shapes
:*
valueB:*
dtype0
a
strided_slice_7/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
a
strided_slice_7/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
strided_slice_7StridedSliceGreaterstrided_slice_7/stackstrided_slice_7/stack_1strided_slice_7/stack_2*
_output_shapes
: *
T0
*
Index0*
shrink_axis_mask
_
strided_slice_8/stackConst*
dtype0*
_output_shapes
:*
valueB:
a
strided_slice_8/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
a
strided_slice_8/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
�
strided_slice_8StridedSliceGreaterstrided_slice_8/stackstrided_slice_8/stack_1strided_slice_8/stack_2*
shrink_axis_mask*
_output_shapes
: *
T0
*
Index0
]
cond_20/SwitchSwitchstrided_slice_8strided_slice_8*
T0
*
_output_shapes
: : 
O
cond_20/switch_tIdentitycond_20/Switch:1*
T0
*
_output_shapes
: 
M
cond_20/switch_fIdentitycond_20/Switch*
_output_shapes
: *
T0

M
cond_20/pred_idIdentitystrided_slice_8*
T0
*
_output_shapes
: 
�
cond_20/transpose/permConst^cond_20/switch_t*
_output_shapes
:*%
valueB"             *
dtype0
�
cond_20/transpose	Transposecond_20/transpose/Switch:1cond_20/transpose/perm*
T0*/
_output_shapes
:���������		
�
cond_20/transpose/SwitchSwitchsub_21cond_20/pred_id*
T0*
_class
loc:@sub_21*J
_output_shapes8
6:���������		:���������		
�
cond_20/Switch_1Switchsub_21cond_20/pred_id*J
_output_shapes8
6:���������		:���������		*
T0*
_class
loc:@sub_21
�
cond_20/MergeMergecond_20/Switch_1cond_20/transpose*
N*1
_output_shapes
:���������		: *
T0
]
cond_21/SwitchSwitchstrided_slice_6strided_slice_6*
T0
*
_output_shapes
: : 
O
cond_21/switch_tIdentitycond_21/Switch:1*
T0
*
_output_shapes
: 
M
cond_21/switch_fIdentitycond_21/Switch*
T0
*
_output_shapes
: 
M
cond_21/pred_idIdentitystrided_slice_6*
T0
*
_output_shapes
: 
s
cond_21/ReverseV2/axisConst^cond_21/switch_t*
_output_shapes
:*
valueB:*
dtype0
�
cond_21/ReverseV2	ReverseV2cond_21/ReverseV2/Switch:1cond_21/ReverseV2/axis*
T0*/
_output_shapes
:���������		
�
cond_21/ReverseV2/SwitchSwitchcond_20/Mergecond_21/pred_id* 
_class
loc:@cond_20/Merge*J
_output_shapes8
6:���������		:���������		*
T0
�
cond_21/Switch_1Switchcond_20/Mergecond_21/pred_id*
T0* 
_class
loc:@cond_20/Merge*J
_output_shapes8
6:���������		:���������		
�
cond_21/MergeMergecond_21/Switch_1cond_21/ReverseV2*
N*1
_output_shapes
:���������		: *
T0
]
cond_22/SwitchSwitchstrided_slice_7strided_slice_7*
T0
*
_output_shapes
: : 
O
cond_22/switch_tIdentitycond_22/Switch:1*
_output_shapes
: *
T0

M
cond_22/switch_fIdentitycond_22/Switch*
T0
*
_output_shapes
: 
M
cond_22/pred_idIdentitystrided_slice_7*
T0
*
_output_shapes
: 
s
cond_22/ReverseV2/axisConst^cond_22/switch_t*
dtype0*
_output_shapes
:*
valueB:
�
cond_22/ReverseV2	ReverseV2cond_22/ReverseV2/Switch:1cond_22/ReverseV2/axis*/
_output_shapes
:���������		*
T0
�
cond_22/ReverseV2/SwitchSwitchcond_21/Mergecond_22/pred_id*J
_output_shapes8
6:���������		:���������		*
T0* 
_class
loc:@cond_21/Merge
�
cond_22/Switch_1Switchcond_21/Mergecond_22/pred_id*
T0* 
_class
loc:@cond_21/Merge*J
_output_shapes8
6:���������		:���������		
�
cond_22/MergeMergecond_22/Switch_1cond_22/ReverseV2*
T0*
N*1
_output_shapes
:���������		: 
e
Reshape_13/shapeConst*!
valueB"����Q      *
dtype0*
_output_shapes
:
l

Reshape_13Reshapecond_22/MergeReshape_13/shape*
T0*+
_output_shapes
:���������Q
j
truncated_normal_22/shapeConst*
valueB"`      *
dtype0*
_output_shapes
:
]
truncated_normal_22/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
_
truncated_normal_22/stddevConst*
valueB
 *�Q=*
dtype0*
_output_shapes
: 
�
#truncated_normal_22/TruncatedNormalTruncatedNormaltruncated_normal_22/shape*
T0*
dtype0*
_output_shapes

:`
�
truncated_normal_22/mulMul#truncated_normal_22/TruncatedNormaltruncated_normal_22/stddev*
_output_shapes

:`*
T0
v
truncated_normal_22Addtruncated_normal_22/multruncated_normal_22/mean*
_output_shapes

:`*
T0
M
mul_78/yConst*
_output_shapes
: *
valueB
 *  �?*
dtype0
U
mul_78Multruncated_normal_22mul_78/y*
T0*
_output_shapes

:`
Z

matmulpass
VariableV2*
dtype0*
_output_shapes

:`*
shape
:`
w
matmulpass/AssignAssign
matmulpassmul_78*
T0*
_class
loc:@matmulpass*
_output_shapes

:`
o
matmulpass/readIdentity
matmulpass*
T0*
_class
loc:@matmulpass*
_output_shapes

:`
Z
Tensordot_5/axesConst*
valueB:*
dtype0*
_output_shapes
:
e
Tensordot_5/freeConst*!
valueB"          *
dtype0*
_output_shapes
:
I
Tensordot_5/ShapeShapeconcat_2*
_output_shapes
:*
T0
[
Tensordot_5/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
Tensordot_5/GatherV2GatherV2Tensordot_5/ShapeTensordot_5/freeTensordot_5/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
]
Tensordot_5/GatherV2_1/axisConst*
_output_shapes
: *
value	B : *
dtype0
�
Tensordot_5/GatherV2_1GatherV2Tensordot_5/ShapeTensordot_5/axesTensordot_5/GatherV2_1/axis*
Tindices0*
Tparams0*
_output_shapes
:*
Taxis0
[
Tensordot_5/ConstConst*
valueB: *
dtype0*
_output_shapes
:
b
Tensordot_5/ProdProdTensordot_5/GatherV2Tensordot_5/Const*
_output_shapes
: *
T0
]
Tensordot_5/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
h
Tensordot_5/Prod_1ProdTensordot_5/GatherV2_1Tensordot_5/Const_1*
T0*
_output_shapes
: 
Y
Tensordot_5/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
Tensordot_5/concatConcatV2Tensordot_5/freeTensordot_5/axesTensordot_5/concat/axis*
N*
_output_shapes
:*
T0
m
Tensordot_5/stackPackTensordot_5/ProdTensordot_5/Prod_1*
T0*
N*
_output_shapes
:
z
Tensordot_5/transpose	Transposeconcat_2Tensordot_5/concat*/
_output_shapes
:���������`*
T0
�
Tensordot_5/ReshapeReshapeTensordot_5/transposeTensordot_5/stack*
T0*0
_output_shapes
:������������������
m
Tensordot_5/transpose_1/permConst*
valueB"       *
dtype0*
_output_shapes
:
|
Tensordot_5/transpose_1	Transposematmulpass/readTensordot_5/transpose_1/perm*
T0*
_output_shapes

:`
l
Tensordot_5/Reshape_1/shapeConst*
valueB"`      *
dtype0*
_output_shapes
:

Tensordot_5/Reshape_1ReshapeTensordot_5/transpose_1Tensordot_5/Reshape_1/shape*
T0*
_output_shapes

:`
z
Tensordot_5/MatMulMatMulTensordot_5/ReshapeTensordot_5/Reshape_1*
T0*'
_output_shapes
:���������
]
Tensordot_5/Const_2Const*
valueB:*
dtype0*
_output_shapes
:
[
Tensordot_5/concat_1/axisConst*
_output_shapes
: *
value	B : *
dtype0
�
Tensordot_5/concat_1ConcatV2Tensordot_5/GatherV2Tensordot_5/Const_2Tensordot_5/concat_1/axis*
T0*
N*
_output_shapes
:
z
Tensordot_5ReshapeTensordot_5/MatMulTensordot_5/concat_1*/
_output_shapes
:���������*
T0
e
Reshape_14/shapeConst*
dtype0*
_output_shapes
:*!
valueB"����      
j

Reshape_14ReshapeTensordot_5Reshape_14/shape*
T0*+
_output_shapes
:���������
T
policy_output/axisConst*
value	B :*
dtype0*
_output_shapes
: 
�
policy_outputConcatV2
Reshape_13
Reshape_14policy_output/axis*
T0*
N*+
_output_shapes
:���������R
r
truncated_normal_23/shapeConst*%
valueB"      `       *
dtype0*
_output_shapes
:
]
truncated_normal_23/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    
_
truncated_normal_23/stddevConst*
valueB
 *:�>*
dtype0*
_output_shapes
: 
�
#truncated_normal_23/TruncatedNormalTruncatedNormaltruncated_normal_23/shape*
T0*
dtype0*&
_output_shapes
:` 
�
truncated_normal_23/mulMul#truncated_normal_23/TruncatedNormaltruncated_normal_23/stddev*
T0*&
_output_shapes
:` 
~
truncated_normal_23Addtruncated_normal_23/multruncated_normal_23/mean*
T0*&
_output_shapes
:` 
M
mul_79/yConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
]
mul_79Multruncated_normal_23mul_79/y*&
_output_shapes
:` *
T0
d
v1/w
VariableV2*
dtype0*&
_output_shapes
:` *
shape:` 
m
v1/w/AssignAssignv1/wmul_79*&
_output_shapes
:` *
T0*
_class
	loc:@v1/w
e
	v1/w/readIdentityv1/w*
T0*
_class
	loc:@v1/w*&
_output_shapes
:` 
�
	Conv2D_18Conv2DRelu_14	v1/w/read*
T0*
strides
*
paddingSAME*/
_output_shapes
:���������		 
U
zeros_35Const*
valueB *    *
dtype0*
_output_shapes
: 
[
v1/norm/moving_mean
VariableV2*
dtype0*
_output_shapes
: *
shape: 
�
v1/norm/moving_mean/AssignAssignv1/norm/moving_meanzeros_35*
T0*&
_class
loc:@v1/norm/moving_mean*
_output_shapes
: 
�
v1/norm/moving_mean/readIdentityv1/norm/moving_mean*
T0*&
_class
loc:@v1/norm/moving_mean*
_output_shapes
: 
T
ones_17Const*
valueB *  �?*
dtype0*
_output_shapes
: 
_
v1/norm/moving_variance
VariableV2*
_output_shapes
: *
shape: *
dtype0
�
v1/norm/moving_variance/AssignAssignv1/norm/moving_varianceones_17*
T0**
_class 
loc:@v1/norm/moving_variance*
_output_shapes
: 
�
v1/norm/moving_variance/readIdentityv1/norm/moving_variance*
T0**
_class 
loc:@v1/norm/moving_variance*
_output_shapes
: 
U
zeros_36Const*
valueB *    *
dtype0*
_output_shapes
: 
T
v1/norm/beta
VariableV2*
shape: *
dtype0*
_output_shapes
: 
{
v1/norm/beta/AssignAssignv1/norm/betazeros_36*
T0*
_class
loc:@v1/norm/beta*
_output_shapes
: 
q
v1/norm/beta/readIdentityv1/norm/beta*
T0*
_class
loc:@v1/norm/beta*
_output_shapes
: 
c
mul_80Mul	Conv2D_18strided_slice_5*
T0*/
_output_shapes
:���������		 
m
Sum_39/reduction_indicesConst*!
valueB"          *
dtype0*
_output_shapes
:
T
Sum_39Summul_80Sum_39/reduction_indices*
_output_shapes
: *
T0
G

truediv_40RealDivSum_39Sum*
T0*
_output_shapes
: 
^
sub_22Sub	Conv2D_18
truediv_40*/
_output_shapes
:���������		 *
T0
`
mul_81Mulsub_22strided_slice_5*/
_output_shapes
:���������		 *
T0
U
	Square_17Squaremul_81*
T0*/
_output_shapes
:���������		 
m
Sum_40/reduction_indicesConst*!
valueB"          *
dtype0*
_output_shapes
:
W
Sum_40Sum	Square_17Sum_40/reduction_indices*
T0*
_output_shapes
: 
G

truediv_41RealDivSum_40Sum*
_output_shapes
: *
T0
�
AssignMovingAvg_34/decayConst*
valueB
 *o;*&
_class
loc:@v1/norm/moving_mean*
dtype0*
_output_shapes
: 
�
,AssignMovingAvg_34/v1/norm/moving_mean/zerosConst*
_output_shapes
: *
valueB *    *&
_class
loc:@v1/norm/moving_mean*
dtype0
�
v1/norm/moving_mean/biased
VariableV2*
shape: *
dtype0*
_output_shapes
: *&
_class
loc:@v1/norm/moving_mean
�
!v1/norm/moving_mean/biased/AssignAssignv1/norm/moving_mean/biased,AssignMovingAvg_34/v1/norm/moving_mean/zeros*
T0*&
_class
loc:@v1/norm/moving_mean*
_output_shapes
: 
�
v1/norm/moving_mean/biased/readIdentityv1/norm/moving_mean/biased*
_output_shapes
: *
T0*&
_class
loc:@v1/norm/moving_mean
�
0v1/norm/moving_mean/local_step/Initializer/zerosConst*
_output_shapes
: *
valueB
 *    *&
_class
loc:@v1/norm/moving_mean*
dtype0
�
v1/norm/moving_mean/local_step
VariableV2*
_output_shapes
: *&
_class
loc:@v1/norm/moving_mean*
shape: *
dtype0
�
%v1/norm/moving_mean/local_step/AssignAssignv1/norm/moving_mean/local_step0v1/norm/moving_mean/local_step/Initializer/zeros*
_output_shapes
: *
T0*&
_class
loc:@v1/norm/moving_mean
�
#v1/norm/moving_mean/local_step/readIdentityv1/norm/moving_mean/local_step*
T0*&
_class
loc:@v1/norm/moving_mean*
_output_shapes
: 
�
*AssignMovingAvg_34/v1/norm/moving_mean/subSubv1/norm/moving_mean/biased/read
truediv_40*
_output_shapes
: *
T0*&
_class
loc:@v1/norm/moving_mean
�
*AssignMovingAvg_34/v1/norm/moving_mean/mulMul*AssignMovingAvg_34/v1/norm/moving_mean/subAssignMovingAvg_34/decay*
T0*&
_class
loc:@v1/norm/moving_mean*
_output_shapes
: 
�
:AssignMovingAvg_34/v1/norm/moving_mean/v1/norm/moving_mean	AssignSubv1/norm/moving_mean/biased*AssignMovingAvg_34/v1/norm/moving_mean/mul*
T0*&
_class
loc:@v1/norm/moving_mean*
_output_shapes
: 
�
6AssignMovingAvg_34/v1/norm/moving_mean/AssignAdd/valueConst*
valueB
 *  �?*&
_class
loc:@v1/norm/moving_mean*
dtype0*
_output_shapes
: 
�
0AssignMovingAvg_34/v1/norm/moving_mean/AssignAdd	AssignAddv1/norm/moving_mean/local_step6AssignMovingAvg_34/v1/norm/moving_mean/AssignAdd/value*
T0*&
_class
loc:@v1/norm/moving_mean*
_output_shapes
: 
�
+AssignMovingAvg_34/v1/norm/moving_mean/readIdentityv1/norm/moving_mean/biased1^AssignMovingAvg_34/v1/norm/moving_mean/AssignAdd;^AssignMovingAvg_34/v1/norm/moving_mean/v1/norm/moving_mean*&
_class
loc:@v1/norm/moving_mean*
_output_shapes
: *
T0
�
.AssignMovingAvg_34/v1/norm/moving_mean/sub_1/xConst1^AssignMovingAvg_34/v1/norm/moving_mean/AssignAdd;^AssignMovingAvg_34/v1/norm/moving_mean/v1/norm/moving_mean*
dtype0*
_output_shapes
: *
valueB
 *  �?*&
_class
loc:@v1/norm/moving_mean
�
,AssignMovingAvg_34/v1/norm/moving_mean/sub_1Sub.AssignMovingAvg_34/v1/norm/moving_mean/sub_1/xAssignMovingAvg_34/decay*
_output_shapes
: *
T0*&
_class
loc:@v1/norm/moving_mean
�
-AssignMovingAvg_34/v1/norm/moving_mean/read_1Identityv1/norm/moving_mean/local_step1^AssignMovingAvg_34/v1/norm/moving_mean/AssignAdd;^AssignMovingAvg_34/v1/norm/moving_mean/v1/norm/moving_mean*
_output_shapes
: *
T0*&
_class
loc:@v1/norm/moving_mean
�
*AssignMovingAvg_34/v1/norm/moving_mean/PowPow,AssignMovingAvg_34/v1/norm/moving_mean/sub_1-AssignMovingAvg_34/v1/norm/moving_mean/read_1*
T0*&
_class
loc:@v1/norm/moving_mean*
_output_shapes
: 
�
.AssignMovingAvg_34/v1/norm/moving_mean/sub_2/xConst1^AssignMovingAvg_34/v1/norm/moving_mean/AssignAdd;^AssignMovingAvg_34/v1/norm/moving_mean/v1/norm/moving_mean*
_output_shapes
: *
valueB
 *  �?*&
_class
loc:@v1/norm/moving_mean*
dtype0
�
,AssignMovingAvg_34/v1/norm/moving_mean/sub_2Sub.AssignMovingAvg_34/v1/norm/moving_mean/sub_2/x*AssignMovingAvg_34/v1/norm/moving_mean/Pow*
_output_shapes
: *
T0*&
_class
loc:@v1/norm/moving_mean
�
.AssignMovingAvg_34/v1/norm/moving_mean/truedivRealDiv+AssignMovingAvg_34/v1/norm/moving_mean/read,AssignMovingAvg_34/v1/norm/moving_mean/sub_2*
T0*&
_class
loc:@v1/norm/moving_mean*
_output_shapes
: 
�
,AssignMovingAvg_34/v1/norm/moving_mean/sub_3Subv1/norm/moving_mean/read.AssignMovingAvg_34/v1/norm/moving_mean/truediv*&
_class
loc:@v1/norm/moving_mean*
_output_shapes
: *
T0
�
AssignMovingAvg_34	AssignSubv1/norm/moving_mean,AssignMovingAvg_34/v1/norm/moving_mean/sub_3*
_output_shapes
: *
T0*&
_class
loc:@v1/norm/moving_mean
�
AssignMovingAvg_35/decayConst*
valueB
 *o;**
_class 
loc:@v1/norm/moving_variance*
dtype0*
_output_shapes
: 
�
0AssignMovingAvg_35/v1/norm/moving_variance/zerosConst*
_output_shapes
: *
valueB *    **
_class 
loc:@v1/norm/moving_variance*
dtype0
�
v1/norm/moving_variance/biased
VariableV2**
_class 
loc:@v1/norm/moving_variance*
shape: *
dtype0*
_output_shapes
: 
�
%v1/norm/moving_variance/biased/AssignAssignv1/norm/moving_variance/biased0AssignMovingAvg_35/v1/norm/moving_variance/zeros*
T0**
_class 
loc:@v1/norm/moving_variance*
_output_shapes
: 
�
#v1/norm/moving_variance/biased/readIdentityv1/norm/moving_variance/biased*
T0**
_class 
loc:@v1/norm/moving_variance*
_output_shapes
: 
�
4v1/norm/moving_variance/local_step/Initializer/zerosConst*
valueB
 *    **
_class 
loc:@v1/norm/moving_variance*
dtype0*
_output_shapes
: 
�
"v1/norm/moving_variance/local_step
VariableV2**
_class 
loc:@v1/norm/moving_variance*
shape: *
dtype0*
_output_shapes
: 
�
)v1/norm/moving_variance/local_step/AssignAssign"v1/norm/moving_variance/local_step4v1/norm/moving_variance/local_step/Initializer/zeros*
_output_shapes
: *
T0**
_class 
loc:@v1/norm/moving_variance
�
'v1/norm/moving_variance/local_step/readIdentity"v1/norm/moving_variance/local_step*
T0**
_class 
loc:@v1/norm/moving_variance*
_output_shapes
: 
�
.AssignMovingAvg_35/v1/norm/moving_variance/subSub#v1/norm/moving_variance/biased/read
truediv_41**
_class 
loc:@v1/norm/moving_variance*
_output_shapes
: *
T0
�
.AssignMovingAvg_35/v1/norm/moving_variance/mulMul.AssignMovingAvg_35/v1/norm/moving_variance/subAssignMovingAvg_35/decay*
T0**
_class 
loc:@v1/norm/moving_variance*
_output_shapes
: 
�
BAssignMovingAvg_35/v1/norm/moving_variance/v1/norm/moving_variance	AssignSubv1/norm/moving_variance/biased.AssignMovingAvg_35/v1/norm/moving_variance/mul*
T0**
_class 
loc:@v1/norm/moving_variance*
_output_shapes
: 
�
:AssignMovingAvg_35/v1/norm/moving_variance/AssignAdd/valueConst*
valueB
 *  �?**
_class 
loc:@v1/norm/moving_variance*
dtype0*
_output_shapes
: 
�
4AssignMovingAvg_35/v1/norm/moving_variance/AssignAdd	AssignAdd"v1/norm/moving_variance/local_step:AssignMovingAvg_35/v1/norm/moving_variance/AssignAdd/value*
T0**
_class 
loc:@v1/norm/moving_variance*
_output_shapes
: 
�
/AssignMovingAvg_35/v1/norm/moving_variance/readIdentityv1/norm/moving_variance/biased5^AssignMovingAvg_35/v1/norm/moving_variance/AssignAddC^AssignMovingAvg_35/v1/norm/moving_variance/v1/norm/moving_variance*
T0**
_class 
loc:@v1/norm/moving_variance*
_output_shapes
: 
�
2AssignMovingAvg_35/v1/norm/moving_variance/sub_1/xConst5^AssignMovingAvg_35/v1/norm/moving_variance/AssignAddC^AssignMovingAvg_35/v1/norm/moving_variance/v1/norm/moving_variance*
_output_shapes
: *
valueB
 *  �?**
_class 
loc:@v1/norm/moving_variance*
dtype0
�
0AssignMovingAvg_35/v1/norm/moving_variance/sub_1Sub2AssignMovingAvg_35/v1/norm/moving_variance/sub_1/xAssignMovingAvg_35/decay*
T0**
_class 
loc:@v1/norm/moving_variance*
_output_shapes
: 
�
1AssignMovingAvg_35/v1/norm/moving_variance/read_1Identity"v1/norm/moving_variance/local_step5^AssignMovingAvg_35/v1/norm/moving_variance/AssignAddC^AssignMovingAvg_35/v1/norm/moving_variance/v1/norm/moving_variance*
T0**
_class 
loc:@v1/norm/moving_variance*
_output_shapes
: 
�
.AssignMovingAvg_35/v1/norm/moving_variance/PowPow0AssignMovingAvg_35/v1/norm/moving_variance/sub_11AssignMovingAvg_35/v1/norm/moving_variance/read_1*
_output_shapes
: *
T0**
_class 
loc:@v1/norm/moving_variance
�
2AssignMovingAvg_35/v1/norm/moving_variance/sub_2/xConst5^AssignMovingAvg_35/v1/norm/moving_variance/AssignAddC^AssignMovingAvg_35/v1/norm/moving_variance/v1/norm/moving_variance*
valueB
 *  �?**
_class 
loc:@v1/norm/moving_variance*
dtype0*
_output_shapes
: 
�
0AssignMovingAvg_35/v1/norm/moving_variance/sub_2Sub2AssignMovingAvg_35/v1/norm/moving_variance/sub_2/x.AssignMovingAvg_35/v1/norm/moving_variance/Pow**
_class 
loc:@v1/norm/moving_variance*
_output_shapes
: *
T0
�
2AssignMovingAvg_35/v1/norm/moving_variance/truedivRealDiv/AssignMovingAvg_35/v1/norm/moving_variance/read0AssignMovingAvg_35/v1/norm/moving_variance/sub_2*
T0**
_class 
loc:@v1/norm/moving_variance*
_output_shapes
: 
�
0AssignMovingAvg_35/v1/norm/moving_variance/sub_3Subv1/norm/moving_variance/read2AssignMovingAvg_35/v1/norm/moving_variance/truediv*
T0**
_class 
loc:@v1/norm/moving_variance*
_output_shapes
: 
�
AssignMovingAvg_35	AssignSubv1/norm/moving_variance0AssignMovingAvg_35/v1/norm/moving_variance/sub_3*
T0**
_class 
loc:@v1/norm/moving_variance*
_output_shapes
: 
M
cond_23/SwitchSwitchConst_2Const_2*
T0
*
_output_shapes
: : 
O
cond_23/switch_tIdentitycond_23/Switch:1*
_output_shapes
: *
T0

M
cond_23/switch_fIdentitycond_23/Switch*
T0
*
_output_shapes
: 
E
cond_23/pred_idIdentityConst_2*
T0
*
_output_shapes
: 
�
cond_23/Switch_1Switch
truediv_40cond_23/pred_id* 
_output_shapes
: : *
T0*
_class
loc:@truediv_40
�
cond_23/Switch_2Switch
truediv_41cond_23/pred_id*
T0*
_class
loc:@truediv_41* 
_output_shapes
: : 
�
cond_23/Switch_3Switchv1/norm/moving_mean/readcond_23/pred_id*&
_class
loc:@v1/norm/moving_mean* 
_output_shapes
: : *
T0
�
cond_23/Switch_4Switchv1/norm/moving_variance/readcond_23/pred_id* 
_output_shapes
: : *
T0**
_class 
loc:@v1/norm/moving_variance
l
cond_23/MergeMergecond_23/Switch_3cond_23/Switch_1:1*
_output_shapes

: : *
T0*
N
n
cond_23/Merge_1Mergecond_23/Switch_4cond_23/Switch_2:1*
T0*
N*
_output_shapes

: : 
W
batchnorm_17/add/yConst*
valueB
 *o�:*
dtype0*
_output_shapes
: 
a
batchnorm_17/addAddcond_23/Merge_1batchnorm_17/add/y*
T0*
_output_shapes
: 
R
batchnorm_17/RsqrtRsqrtbatchnorm_17/add*
_output_shapes
: *
T0
p
batchnorm_17/mulMul	Conv2D_18batchnorm_17/Rsqrt*
T0*/
_output_shapes
:���������		 
a
batchnorm_17/mul_1Mulcond_23/Mergebatchnorm_17/Rsqrt*
T0*
_output_shapes
: 
c
batchnorm_17/subSubv1/norm/beta/readbatchnorm_17/mul_1*
_output_shapes
: *
T0
w
batchnorm_17/add_1Addbatchnorm_17/mulbatchnorm_17/sub*
T0*/
_output_shapes
:���������		 
l
mul_82Mulbatchnorm_17/add_1strided_slice_5*
T0*/
_output_shapes
:���������		 
Q
Relu_17Relumul_82*
T0*/
_output_shapes
:���������		 
a
Reshape_15/shapeConst*
valueB"����   *
dtype0*
_output_shapes
:
`

Reshape_15ReshapeSum_1Reshape_15/shape*'
_output_shapes
:���������*
T0
a
Reshape_16/shapeConst*
valueB"����   *
dtype0*
_output_shapes
:
_

Reshape_16ReshapeSqrtReshape_16/shape*
T0*'
_output_shapes
:���������
i
Sum_41/reduction_indicesConst*
valueB"      *
dtype0*
_output_shapes
:
b
Sum_41SumRelu_17Sum_41/reduction_indices*
T0*'
_output_shapes
:��������� 
[

truediv_42RealDivSum_41
Reshape_15*
T0*'
_output_shapes
:��������� 
M
sub_23/yConst*
dtype0*
_output_shapes
: *
valueB
 *  `A
U
sub_23Sub
Reshape_16sub_23/y*'
_output_shapes
:���������*
T0
Q
truediv_43/yConst*
valueB
 *   A*
dtype0*
_output_shapes
: 
]

truediv_43RealDivsub_23truediv_43/y*
T0*'
_output_shapes
:���������
W
mul_83Mul
truediv_42
truediv_43*'
_output_shapes
:��������� *
T0
M
sub_24/yConst*
valueB
 *  `A*
dtype0*
_output_shapes
: 
U
sub_24Sub
Reshape_16sub_24/y*'
_output_shapes
:���������*
T0
M
	Square_18Squaresub_24*
T0*'
_output_shapes
:���������
Q
truediv_44/yConst*
valueB
 *  �B*
dtype0*
_output_shapes
: 
`

truediv_44RealDiv	Square_18truediv_44/y*'
_output_shapes
:���������*
T0
M
sub_25/yConst*
valueB
 *���=*
dtype0*
_output_shapes
: 
U
sub_25Sub
truediv_44sub_25/y*
T0*'
_output_shapes
:���������
S
mul_84Mul
truediv_42sub_25*
T0*'
_output_shapes
:��������� 
O
concat_3/axisConst*
value	B :*
dtype0*
_output_shapes
: 
z
concat_3ConcatV2
truediv_42mul_83mul_84concat_3/axis*
T0*
N*'
_output_shapes
:���������`
j
truncated_normal_24/shapeConst*
valueB"`   0   *
dtype0*
_output_shapes
:
]
truncated_normal_24/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
_
truncated_normal_24/stddevConst*
valueB
 *:�>*
dtype0*
_output_shapes
: 
�
#truncated_normal_24/TruncatedNormalTruncatedNormaltruncated_normal_24/shape*
T0*
dtype0*
_output_shapes

:`0
�
truncated_normal_24/mulMul#truncated_normal_24/TruncatedNormaltruncated_normal_24/stddev*
T0*
_output_shapes

:`0
v
truncated_normal_24Addtruncated_normal_24/multruncated_normal_24/mean*
T0*
_output_shapes

:`0
M
mul_85/yConst*
_output_shapes
: *
valueB
 *  �?*
dtype0
U
mul_85Multruncated_normal_24mul_85/y*
_output_shapes

:`0*
T0
T
v2/w
VariableV2*
dtype0*
_output_shapes

:`0*
shape
:`0
e
v2/w/AssignAssignv2/wmul_85*
T0*
_class
	loc:@v2/w*
_output_shapes

:`0
]
	v2/w/readIdentityv2/w*
T0*
_class
	loc:@v2/w*
_output_shapes

:`0
c
truncated_normal_25/shapeConst*
_output_shapes
:*
valueB:0*
dtype0
]
truncated_normal_25/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
_
truncated_normal_25/stddevConst*
valueB
 *:�>*
dtype0*
_output_shapes
: 
�
#truncated_normal_25/TruncatedNormalTruncatedNormaltruncated_normal_25/shape*
dtype0*
_output_shapes
:0*
T0
�
truncated_normal_25/mulMul#truncated_normal_25/TruncatedNormaltruncated_normal_25/stddev*
T0*
_output_shapes
:0
r
truncated_normal_25Addtruncated_normal_25/multruncated_normal_25/mean*
_output_shapes
:0*
T0
M
mul_86/yConst*
valueB
 *��L>*
dtype0*
_output_shapes
: 
Q
mul_86Multruncated_normal_25mul_86/y*
_output_shapes
:0*
T0
L
v2/b
VariableV2*
dtype0*
_output_shapes
:0*
shape:0
a
v2/b/AssignAssignv2/bmul_86*
_class
	loc:@v2/b*
_output_shapes
:0*
T0
Y
	v2/b/readIdentityv2/b*
T0*
_class
	loc:@v2/b*
_output_shapes
:0
Y
MatMul_1MatMulconcat_3	v2/w/read*
T0*'
_output_shapes
:���������0
T
add_11AddMatMul_1	v2/b/read*
T0*'
_output_shapes
:���������0
I
Relu_18Reluadd_11*
T0*'
_output_shapes
:���������0
j
truncated_normal_26/shapeConst*
_output_shapes
:*
valueB"0      *
dtype0
]
truncated_normal_26/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
_
truncated_normal_26/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *�Q>
�
#truncated_normal_26/TruncatedNormalTruncatedNormaltruncated_normal_26/shape*
T0*
dtype0*
_output_shapes

:0
�
truncated_normal_26/mulMul#truncated_normal_26/TruncatedNormaltruncated_normal_26/stddev*
T0*
_output_shapes

:0
v
truncated_normal_26Addtruncated_normal_26/multruncated_normal_26/mean*
_output_shapes

:0*
T0
M
mul_87/yConst*
_output_shapes
: *
valueB
 *  �?*
dtype0
U
mul_87Multruncated_normal_26mul_87/y*
T0*
_output_shapes

:0
T
v3/w
VariableV2*
dtype0*
_output_shapes

:0*
shape
:0
e
v3/w/AssignAssignv3/wmul_87*
T0*
_class
	loc:@v3/w*
_output_shapes

:0
]
	v3/w/readIdentityv3/w*
_class
	loc:@v3/w*
_output_shapes

:0*
T0
c
truncated_normal_27/shapeConst*
valueB:*
dtype0*
_output_shapes
:
]
truncated_normal_27/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
_
truncated_normal_27/stddevConst*
_output_shapes
: *
valueB
 *�Q>*
dtype0
�
#truncated_normal_27/TruncatedNormalTruncatedNormaltruncated_normal_27/shape*
T0*
dtype0*
_output_shapes
:
�
truncated_normal_27/mulMul#truncated_normal_27/TruncatedNormaltruncated_normal_27/stddev*
T0*
_output_shapes
:
r
truncated_normal_27Addtruncated_normal_27/multruncated_normal_27/mean*
_output_shapes
:*
T0
M
mul_88/yConst*
_output_shapes
: *
valueB
 *��L>*
dtype0
Q
mul_88Multruncated_normal_27mul_88/y*
T0*
_output_shapes
:
L
v3/b
VariableV2*
dtype0*
_output_shapes
:*
shape:
a
v3/b/AssignAssignv3/bmul_88*
T0*
_class
	loc:@v3/b*
_output_shapes
:
Y
	v3/b/readIdentityv3/b*
T0*
_class
	loc:@v3/b*
_output_shapes
:
X
MatMul_2MatMulRelu_18	v3/w/read*
T0*'
_output_shapes
:���������
T
add_12AddMatMul_2	v3/b/read*
T0*'
_output_shapes
:���������
j
truncated_normal_28/shapeConst*
valueB"0      *
dtype0*
_output_shapes
:
]
truncated_normal_28/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
_
truncated_normal_28/stddevConst*
_output_shapes
: *
valueB
 *�Q>*
dtype0
�
#truncated_normal_28/TruncatedNormalTruncatedNormaltruncated_normal_28/shape*
T0*
dtype0*
_output_shapes

:0
�
truncated_normal_28/mulMul#truncated_normal_28/TruncatedNormaltruncated_normal_28/stddev*
T0*
_output_shapes

:0
v
truncated_normal_28Addtruncated_normal_28/multruncated_normal_28/mean*
T0*
_output_shapes

:0
M
mul_89/yConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
U
mul_89Multruncated_normal_28mul_89/y*
T0*
_output_shapes

:0
U
mv3/w
VariableV2*
_output_shapes

:0*
shape
:0*
dtype0
h
mv3/w/AssignAssignmv3/wmul_89*
T0*
_class

loc:@mv3/w*
_output_shapes

:0
`

mv3/w/readIdentitymv3/w*
T0*
_class

loc:@mv3/w*
_output_shapes

:0
c
truncated_normal_29/shapeConst*
valueB:*
dtype0*
_output_shapes
:
]
truncated_normal_29/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
_
truncated_normal_29/stddevConst*
_output_shapes
: *
valueB
 *�Q>*
dtype0
�
#truncated_normal_29/TruncatedNormalTruncatedNormaltruncated_normal_29/shape*
T0*
dtype0*
_output_shapes
:
�
truncated_normal_29/mulMul#truncated_normal_29/TruncatedNormaltruncated_normal_29/stddev*
T0*
_output_shapes
:
r
truncated_normal_29Addtruncated_normal_29/multruncated_normal_29/mean*
T0*
_output_shapes
:
M
mul_90/yConst*
_output_shapes
: *
valueB
 *���=*
dtype0
Q
mul_90Multruncated_normal_29mul_90/y*
T0*
_output_shapes
:
M
mv3/b
VariableV2*
dtype0*
_output_shapes
:*
shape:
d
mv3/b/AssignAssignmv3/bmul_90*
T0*
_class

loc:@mv3/b*
_output_shapes
:
\

mv3/b/readIdentitymv3/b*
T0*
_class

loc:@mv3/b*
_output_shapes
:
Y
MatMul_3MatMulRelu_18
mv3/w/read*
T0*'
_output_shapes
:���������
U
add_13AddMatMul_3
mv3/b/read*
T0*'
_output_shapes
:���������
\
Const_6Const*!
valueB"         @��*
dtype0*
_output_shapes
:
P
add_14Addadd_12Const_6*'
_output_shapes
:���������*
T0
c
value_output/shapeConst*
valueB"����   *
dtype0*
_output_shapes
:
e
value_outputReshapeadd_14value_output/shape*
T0*'
_output_shapes
:���������
h
miscvalues_output/shapeConst*
dtype0*
_output_shapes
:*
valueB"����   
o
miscvalues_outputReshapeadd_13miscvalues_output/shape*
T0*'
_output_shapes
:���������
j
truncated_normal_30/shapeConst*
_output_shapes
:*
valueB"`   0   *
dtype0
]
truncated_normal_30/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
_
truncated_normal_30/stddevConst*
_output_shapes
: *
valueB
 *�	>*
dtype0
�
#truncated_normal_30/TruncatedNormalTruncatedNormaltruncated_normal_30/shape*
dtype0*
_output_shapes

:`0*
T0
�
truncated_normal_30/mulMul#truncated_normal_30/TruncatedNormaltruncated_normal_30/stddev*
_output_shapes

:`0*
T0
v
truncated_normal_30Addtruncated_normal_30/multruncated_normal_30/mean*
_output_shapes

:`0*
T0
M
mul_91/yConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
U
mul_91Multruncated_normal_30mul_91/y*
T0*
_output_shapes

:`0
U
sb2/w
VariableV2*
dtype0*
_output_shapes

:`0*
shape
:`0
h
sb2/w/AssignAssignsb2/wmul_91*
T0*
_class

loc:@sb2/w*
_output_shapes

:`0
`

sb2/w/readIdentitysb2/w*
_output_shapes

:`0*
T0*
_class

loc:@sb2/w
c
truncated_normal_31/shapeConst*
dtype0*
_output_shapes
:*
valueB:0
]
truncated_normal_31/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    
_
truncated_normal_31/stddevConst*
valueB
 *�	>*
dtype0*
_output_shapes
: 
�
#truncated_normal_31/TruncatedNormalTruncatedNormaltruncated_normal_31/shape*
T0*
dtype0*
_output_shapes
:0
�
truncated_normal_31/mulMul#truncated_normal_31/TruncatedNormaltruncated_normal_31/stddev*
T0*
_output_shapes
:0
r
truncated_normal_31Addtruncated_normal_31/multruncated_normal_31/mean*
T0*
_output_shapes
:0
M
mul_92/yConst*
valueB
 *��L>*
dtype0*
_output_shapes
: 
Q
mul_92Multruncated_normal_31mul_92/y*
_output_shapes
:0*
T0
M
sb2/b
VariableV2*
dtype0*
_output_shapes
:0*
shape:0
d
sb2/b/AssignAssignsb2/bmul_92*
T0*
_class

loc:@sb2/b*
_output_shapes
:0
\

sb2/b/readIdentitysb2/b*
_output_shapes
:0*
T0*
_class

loc:@sb2/b
Z
MatMul_4MatMulconcat_3
sb2/w/read*
T0*'
_output_shapes
:���������0
U
add_15AddMatMul_4
sb2/b/read*'
_output_shapes
:���������0*
T0
�	
Const_7Const*�	
value�B��"�����33������  ��gf������33������  ��gf������33������  ��gf������33������  ��gf������33������  ��gf���̸�33������  ��gf���̰�33������  ��gf���̨�33������  ��gf���̠�33������  ��gf���̘�33������  ��gf���̐�33������  ��gf���̈�33������  ��gf���̀�gf~�33{�  x���t���q�gfn�33k�  h���d���a�gf^�33[�  X���T���Q�gfN�33K�  H���D���A�gf>�33;�  8���4���1�gf.�33+�  (���$���!�gf�33�  �������gf�33�  �����������gf��  𿚙�33���ܿgfֿ  п��ɿ33ÿ�̼�gf��  ������33���̜�gf��  ������33����y���l�  `�33S�gfF���9���,�   �33�gf�33󾚙پ  ��gf���̌�gff�333�   �������̼���<���=   >333>gff>�̌>gf�>  �>���>33�>gf?33?   ?��,?��9?gfF?33S?  `?��l?��y?33�?���?  �?gf�?�̜?33�?���?  �?gf�?�̼?33�?���?  �?gf�?���?33�?���?  �?gf�?���?��@��@  @33@gf@��@��@  @33@gf@��!@��$@  (@33+@gf.@��1@��4@  8@33;@gf>@��A@��D@  H@33K@gfN@��Q@��T@  X@33[@gf^@��a@��d@  h@33k@gfn@��q@��t@  x@33{@gf~@�̀@gf�@  �@���@33�@�̈@gf�@  �@���@33�@�̐@gf�@  �@���@33�@�̘@gf�@  �@���@33�@�̠@gf�@  �@���@33�@�̨@gf�@  �@���@33�@�̰@gf�@  �@���@33�@�̸@gf�@  �@���@33�@���@gf�@  �@���@33�@���@gf�@  �@���@33�@���@gf�@  �@���@33�@���@gf�@  �@���@33�@���@*
dtype0*
_output_shapes	
:�
�	
Reshape_17/tensorConst*�	
value�B��"�   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?   �   ?*
dtype0*
_output_shapes	
:�
a
Reshape_17/shapeConst*
valueB"   ����*
dtype0*
_output_shapes
:
d

Reshape_17ReshapeReshape_17/tensorReshape_17/shape*
T0*
_output_shapes
:	�
f
strided_slice_9/stackConst*
valueB"       *
dtype0*
_output_shapes
:
h
strided_slice_9/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
h
strided_slice_9/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
�
strided_slice_9StridedSlicemulstrided_slice_9/stackstrided_slice_9/stack_1strided_slice_9/stack_2*

begin_mask*
end_mask*'
_output_shapes
:���������*
Index0*
T0
]
mul_93Mul
Reshape_17strided_slice_9*
T0*(
_output_shapes
:����������
j
truncated_normal_32/shapeConst*
valueB"   0   *
dtype0*
_output_shapes
:
]
truncated_normal_32/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
_
truncated_normal_32/stddevConst*
valueB
 *�	>*
dtype0*
_output_shapes
: 
�
#truncated_normal_32/TruncatedNormalTruncatedNormaltruncated_normal_32/shape*
dtype0*
_output_shapes

:0*
T0
�
truncated_normal_32/mulMul#truncated_normal_32/TruncatedNormaltruncated_normal_32/stddev*
_output_shapes

:0*
T0
v
truncated_normal_32Addtruncated_normal_32/multruncated_normal_32/mean*
T0*
_output_shapes

:0
M
mul_94/yConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
U
mul_94Multruncated_normal_32mul_94/y*
_output_shapes

:0*
T0
\
sb2_offset/w
VariableV2*
dtype0*
_output_shapes

:0*
shape
:0
}
sb2_offset/w/AssignAssignsb2_offset/wmul_94*
T0*
_class
loc:@sb2_offset/w*
_output_shapes

:0
u
sb2_offset/w/readIdentitysb2_offset/w*
T0*
_class
loc:@sb2_offset/w*
_output_shapes

:0
a
Reshape_18/shapeConst*
_output_shapes
:*
valueB"����   *
dtype0
Z

Reshape_18ReshapeConst_7Reshape_18/shape*
T0*
_output_shapes
:	�
[
MatMul_5MatMul
Reshape_18sb2_offset/w/read*
T0*
_output_shapes
:	�0
j
truncated_normal_33/shapeConst*
valueB"   0   *
dtype0*
_output_shapes
:
]
truncated_normal_33/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    
_
truncated_normal_33/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *�	>
�
#truncated_normal_33/TruncatedNormalTruncatedNormaltruncated_normal_33/shape*
_output_shapes

:0*
T0*
dtype0
�
truncated_normal_33/mulMul#truncated_normal_33/TruncatedNormaltruncated_normal_33/stddev*
_output_shapes

:0*
T0
v
truncated_normal_33Addtruncated_normal_33/multruncated_normal_33/mean*
T0*
_output_shapes

:0
M
mul_95/yConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
U
mul_95Multruncated_normal_33mul_95/y*
T0*
_output_shapes

:0
\
sb2_parity/w
VariableV2*
shape
:0*
dtype0*
_output_shapes

:0
}
sb2_parity/w/AssignAssignsb2_parity/wmul_95*
T0*
_class
loc:@sb2_parity/w*
_output_shapes

:0
u
sb2_parity/w/readIdentitysb2_parity/w*
_output_shapes

:0*
T0*
_class
loc:@sb2_parity/w
a
Reshape_19/shapeConst*
dtype0*
_output_shapes
:*
valueB"����   
a

Reshape_19Reshapemul_93Reshape_19/shape*
T0*'
_output_shapes
:���������
c
MatMul_6MatMul
Reshape_19sb2_parity/w/read*'
_output_shapes
:���������0*
T0
e
Reshape_20/shapeConst*!
valueB"����   0   *
dtype0*
_output_shapes
:
e

Reshape_20Reshapeadd_15Reshape_20/shape*
T0*+
_output_shapes
:���������0
e
Reshape_21/shapeConst*!
valueB"     0   *
dtype0*
_output_shapes
:
_

Reshape_21ReshapeMatMul_5Reshape_21/shape*
T0*#
_output_shapes
:�0
\
add_16Add
Reshape_20
Reshape_21*
T0*,
_output_shapes
:����������0
e
Reshape_22/shapeConst*!
valueB"����  0   *
dtype0*
_output_shapes
:
h

Reshape_22ReshapeMatMul_6Reshape_22/shape*,
_output_shapes
:����������0*
T0
X
add_17Addadd_16
Reshape_22*
T0*,
_output_shapes
:����������0
N
Relu_19Reluadd_17*
T0*,
_output_shapes
:����������0
j
truncated_normal_34/shapeConst*
valueB"`   0   *
dtype0*
_output_shapes
:
]
truncated_normal_34/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    
_
truncated_normal_34/stddevConst*
valueB
 *�	>*
dtype0*
_output_shapes
: 
�
#truncated_normal_34/TruncatedNormalTruncatedNormaltruncated_normal_34/shape*
T0*
dtype0*
_output_shapes

:`0
�
truncated_normal_34/mulMul#truncated_normal_34/TruncatedNormaltruncated_normal_34/stddev*
_output_shapes

:`0*
T0
v
truncated_normal_34Addtruncated_normal_34/multruncated_normal_34/mean*
T0*
_output_shapes

:`0
M
mul_96/yConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
U
mul_96Multruncated_normal_34mul_96/y*
T0*
_output_shapes

:`0
Z

sbscale2/w
VariableV2*
dtype0*
_output_shapes

:`0*
shape
:`0
w
sbscale2/w/AssignAssign
sbscale2/wmul_96*
T0*
_class
loc:@sbscale2/w*
_output_shapes

:`0
o
sbscale2/w/readIdentity
sbscale2/w*
T0*
_class
loc:@sbscale2/w*
_output_shapes

:`0
c
truncated_normal_35/shapeConst*
dtype0*
_output_shapes
:*
valueB:0
]
truncated_normal_35/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
_
truncated_normal_35/stddevConst*
valueB
 *�	>*
dtype0*
_output_shapes
: 
�
#truncated_normal_35/TruncatedNormalTruncatedNormaltruncated_normal_35/shape*
T0*
dtype0*
_output_shapes
:0
�
truncated_normal_35/mulMul#truncated_normal_35/TruncatedNormaltruncated_normal_35/stddev*
_output_shapes
:0*
T0
r
truncated_normal_35Addtruncated_normal_35/multruncated_normal_35/mean*
T0*
_output_shapes
:0
M
mul_97/yConst*
valueB
 *��L>*
dtype0*
_output_shapes
: 
Q
mul_97Multruncated_normal_35mul_97/y*
_output_shapes
:0*
T0
R

sbscale2/b
VariableV2*
dtype0*
_output_shapes
:0*
shape:0
s
sbscale2/b/AssignAssign
sbscale2/bmul_97*
T0*
_class
loc:@sbscale2/b*
_output_shapes
:0
k
sbscale2/b/readIdentity
sbscale2/b*
T0*
_class
loc:@sbscale2/b*
_output_shapes
:0
_
MatMul_7MatMulconcat_3sbscale2/w/read*'
_output_shapes
:���������0*
T0
Z
add_18AddMatMul_7sbscale2/b/read*
T0*'
_output_shapes
:���������0
I
Relu_20Reluadd_18*'
_output_shapes
:���������0*
T0
j
truncated_normal_36/shapeConst*
valueB"0      *
dtype0*
_output_shapes
:
]
truncated_normal_36/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    
_
truncated_normal_36/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *�Q>
�
#truncated_normal_36/TruncatedNormalTruncatedNormaltruncated_normal_36/shape*
dtype0*
_output_shapes

:0*
T0
�
truncated_normal_36/mulMul#truncated_normal_36/TruncatedNormaltruncated_normal_36/stddev*
T0*
_output_shapes

:0
v
truncated_normal_36Addtruncated_normal_36/multruncated_normal_36/mean*
T0*
_output_shapes

:0
M
mul_98/yConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
U
mul_98Multruncated_normal_36mul_98/y*
T0*
_output_shapes

:0
U
sb3/w
VariableV2*
shape
:0*
dtype0*
_output_shapes

:0
h
sb3/w/AssignAssignsb3/wmul_98*
T0*
_class

loc:@sb3/w*
_output_shapes

:0
`

sb3/w/readIdentitysb3/w*
_output_shapes

:0*
T0*
_class

loc:@sb3/w
Z
Tensordot_6/axesConst*
dtype0*
_output_shapes
:*
valueB:
a
Tensordot_6/freeConst*
valueB"       *
dtype0*
_output_shapes
:
H
Tensordot_6/ShapeShapeRelu_19*
_output_shapes
:*
T0
[
Tensordot_6/GatherV2/axisConst*
_output_shapes
: *
value	B : *
dtype0
�
Tensordot_6/GatherV2GatherV2Tensordot_6/ShapeTensordot_6/freeTensordot_6/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
]
Tensordot_6/GatherV2_1/axisConst*
_output_shapes
: *
value	B : *
dtype0
�
Tensordot_6/GatherV2_1GatherV2Tensordot_6/ShapeTensordot_6/axesTensordot_6/GatherV2_1/axis*
_output_shapes
:*
Taxis0*
Tindices0*
Tparams0
[
Tensordot_6/ConstConst*
valueB: *
dtype0*
_output_shapes
:
b
Tensordot_6/ProdProdTensordot_6/GatherV2Tensordot_6/Const*
_output_shapes
: *
T0
]
Tensordot_6/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
h
Tensordot_6/Prod_1ProdTensordot_6/GatherV2_1Tensordot_6/Const_1*
_output_shapes
: *
T0
Y
Tensordot_6/concat/axisConst*
_output_shapes
: *
value	B : *
dtype0
�
Tensordot_6/concatConcatV2Tensordot_6/freeTensordot_6/axesTensordot_6/concat/axis*
T0*
N*
_output_shapes
:
m
Tensordot_6/stackPackTensordot_6/ProdTensordot_6/Prod_1*
T0*
N*
_output_shapes
:
v
Tensordot_6/transpose	TransposeRelu_19Tensordot_6/concat*
T0*,
_output_shapes
:����������0
�
Tensordot_6/ReshapeReshapeTensordot_6/transposeTensordot_6/stack*0
_output_shapes
:������������������*
T0
m
Tensordot_6/transpose_1/permConst*
valueB"       *
dtype0*
_output_shapes
:
w
Tensordot_6/transpose_1	Transpose
sb3/w/readTensordot_6/transpose_1/perm*
T0*
_output_shapes

:0
l
Tensordot_6/Reshape_1/shapeConst*
valueB"0      *
dtype0*
_output_shapes
:

Tensordot_6/Reshape_1ReshapeTensordot_6/transpose_1Tensordot_6/Reshape_1/shape*
T0*
_output_shapes

:0
z
Tensordot_6/MatMulMatMulTensordot_6/ReshapeTensordot_6/Reshape_1*'
_output_shapes
:���������*
T0
]
Tensordot_6/Const_2Const*
valueB:*
dtype0*
_output_shapes
:
[
Tensordot_6/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
Tensordot_6/concat_1ConcatV2Tensordot_6/GatherV2Tensordot_6/Const_2Tensordot_6/concat_1/axis*
N*
_output_shapes
:*
T0
w
Tensordot_6ReshapeTensordot_6/MatMulTensordot_6/concat_1*
T0*,
_output_shapes
:����������
j
truncated_normal_37/shapeConst*
valueB"0      *
dtype0*
_output_shapes
:
]
truncated_normal_37/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
_
truncated_normal_37/stddevConst*
_output_shapes
: *
valueB
 *�Q>*
dtype0
�
#truncated_normal_37/TruncatedNormalTruncatedNormaltruncated_normal_37/shape*
T0*
dtype0*
_output_shapes

:0
�
truncated_normal_37/mulMul#truncated_normal_37/TruncatedNormaltruncated_normal_37/stddev*
T0*
_output_shapes

:0
v
truncated_normal_37Addtruncated_normal_37/multruncated_normal_37/mean*
T0*
_output_shapes

:0
M
mul_99/yConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
U
mul_99Multruncated_normal_37mul_99/y*
_output_shapes

:0*
T0
Z

sbscale3/w
VariableV2*
dtype0*
_output_shapes

:0*
shape
:0
w
sbscale3/w/AssignAssign
sbscale3/wmul_99*
_output_shapes

:0*
T0*
_class
loc:@sbscale3/w
o
sbscale3/w/readIdentity
sbscale3/w*
_output_shapes

:0*
T0*
_class
loc:@sbscale3/w
Y
MatMul_8MatMulRelu_20
sb3/w/read*'
_output_shapes
:���������*
T0
F
AbsAbsMatMul_8*
T0*'
_output_shapes
:���������
P
Greater_1/yConst*
dtype0*
_output_shapes
: *
valueB
 *    
]
	Greater_1GreaterMatMul_8Greater_1/y*'
_output_shapes
:���������*
T0
M
add_19/yConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
N
add_19AddAbsadd_19/y*
T0*'
_output_shapes
:���������
D
LogLogadd_19*
T0*'
_output_shapes
:���������
M
add_20/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
N
add_20Addadd_20/xLog*
T0*'
_output_shapes
:���������
M
add_21/yConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
N
add_21AddAbsadd_21/y*'
_output_shapes
:���������*
T0
F
Log_1Logadd_21*
T0*'
_output_shapes
:���������
M
add_22/xConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
P
add_22Addadd_22/xLog_1*'
_output_shapes
:���������*
T0
Q
truediv_45/xConst*
_output_shapes
: *
valueB
 *  �?*
dtype0
]

truediv_45RealDivtruediv_45/xadd_22*'
_output_shapes
:���������*
T0
a
SelectSelect	Greater_1add_20
truediv_45*
T0*'
_output_shapes
:���������
e
Reshape_23/shapeConst*!
valueB"����      *
dtype0*
_output_shapes
:
e

Reshape_23ReshapeSelectReshape_23/shape*
T0*+
_output_shapes
:���������
^
mul_100MulTensordot_6
Reshape_23*,
_output_shapes
:����������*
T0
i
scorebelief_output/shapeConst*
_output_shapes
:*
valueB"����  *
dtype0
s
scorebelief_outputReshapemul_100scorebelief_output/shape*
T0*(
_output_shapes
:����������
j
truncated_normal_38/shapeConst*
valueB"`       *
dtype0*
_output_shapes
:
]
truncated_normal_38/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
_
truncated_normal_38/stddevConst*
valueB
 *�	>*
dtype0*
_output_shapes
: 
�
#truncated_normal_38/TruncatedNormalTruncatedNormaltruncated_normal_38/shape*
_output_shapes

:` *
T0*
dtype0
�
truncated_normal_38/mulMul#truncated_normal_38/TruncatedNormaltruncated_normal_38/stddev*
T0*
_output_shapes

:` 
v
truncated_normal_38Addtruncated_normal_38/multruncated_normal_38/mean*
_output_shapes

:` *
T0
N
	mul_101/yConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
W
mul_101Multruncated_normal_38	mul_101/y*
T0*
_output_shapes

:` 
U
bb2/w
VariableV2*
dtype0*
_output_shapes

:` *
shape
:` 
i
bb2/w/AssignAssignbb2/wmul_101*
_output_shapes

:` *
T0*
_class

loc:@bb2/w
`

bb2/w/readIdentitybb2/w*
T0*
_class

loc:@bb2/w*
_output_shapes

:` 
c
truncated_normal_39/shapeConst*
valueB: *
dtype0*
_output_shapes
:
]
truncated_normal_39/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    
_
truncated_normal_39/stddevConst*
valueB
 *�	>*
dtype0*
_output_shapes
: 
�
#truncated_normal_39/TruncatedNormalTruncatedNormaltruncated_normal_39/shape*
T0*
dtype0*
_output_shapes
: 
�
truncated_normal_39/mulMul#truncated_normal_39/TruncatedNormaltruncated_normal_39/stddev*
T0*
_output_shapes
: 
r
truncated_normal_39Addtruncated_normal_39/multruncated_normal_39/mean*
T0*
_output_shapes
: 
N
	mul_102/yConst*
valueB
 *��L>*
dtype0*
_output_shapes
: 
S
mul_102Multruncated_normal_39	mul_102/y*
_output_shapes
: *
T0
M
bb2/b
VariableV2*
dtype0*
_output_shapes
: *
shape: 
e
bb2/b/AssignAssignbb2/bmul_102*
T0*
_class

loc:@bb2/b*
_output_shapes
: 
\

bb2/b/readIdentitybb2/b*
T0*
_class

loc:@bb2/b*
_output_shapes
: 
Z
MatMul_9MatMulconcat_3
bb2/w/read*
T0*'
_output_shapes
:��������� 
U
add_23AddMatMul_9
bb2/b/read*
T0*'
_output_shapes
:��������� 
�
Const_8Const*�
value�B�="�  p�  h�  `�  X�  P�  H�  @�  8�  0�  (�   �  �  �  �   �  ��  ��  ��  ��  ��  ��  ��  ��  `�  @�   �   �  ��  ��   �       ?  �?  �?   @   @  @@  `@  �@  �@  �@  �@  �@  �@  �@  �@   A  A  A  A   A  (A  0A  8A  @A  HA  PA  XA  `A  hA  pA*
dtype0*
_output_shapes
:=
j
truncated_normal_40/shapeConst*
_output_shapes
:*
valueB"       *
dtype0
]
truncated_normal_40/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
_
truncated_normal_40/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *�	>
�
#truncated_normal_40/TruncatedNormalTruncatedNormaltruncated_normal_40/shape*
T0*
dtype0*
_output_shapes

: 
�
truncated_normal_40/mulMul#truncated_normal_40/TruncatedNormaltruncated_normal_40/stddev*
_output_shapes

: *
T0
v
truncated_normal_40Addtruncated_normal_40/multruncated_normal_40/mean*
T0*
_output_shapes

: 
N
	mul_103/yConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
W
mul_103Multruncated_normal_40	mul_103/y*
T0*
_output_shapes

: 
\
bb2_offset/w
VariableV2*
shape
: *
dtype0*
_output_shapes

: 
~
bb2_offset/w/AssignAssignbb2_offset/wmul_103*
T0*
_class
loc:@bb2_offset/w*
_output_shapes

: 
u
bb2_offset/w/readIdentitybb2_offset/w*
_class
loc:@bb2_offset/w*
_output_shapes

: *
T0
a
Reshape_24/shapeConst*
_output_shapes
:*
valueB"����   *
dtype0
Y

Reshape_24ReshapeConst_8Reshape_24/shape*
T0*
_output_shapes

:=
[
	MatMul_10MatMul
Reshape_24bb2_offset/w/read*
T0*
_output_shapes

:= 
e
Reshape_25/shapeConst*!
valueB"����       *
dtype0*
_output_shapes
:
e

Reshape_25Reshapeadd_23Reshape_25/shape*
T0*+
_output_shapes
:��������� 
e
Reshape_26/shapeConst*!
valueB"   =       *
dtype0*
_output_shapes
:
_

Reshape_26Reshape	MatMul_10Reshape_26/shape*"
_output_shapes
:= *
T0
[
add_24Add
Reshape_25
Reshape_26*+
_output_shapes
:���������= *
T0
M
Relu_21Reluadd_24*
T0*+
_output_shapes
:���������= 
j
truncated_normal_41/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
]
truncated_normal_41/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
_
truncated_normal_41/stddevConst*
valueB
 *  �>*
dtype0*
_output_shapes
: 
�
#truncated_normal_41/TruncatedNormalTruncatedNormaltruncated_normal_41/shape*
_output_shapes

: *
T0*
dtype0
�
truncated_normal_41/mulMul#truncated_normal_41/TruncatedNormaltruncated_normal_41/stddev*
T0*
_output_shapes

: 
v
truncated_normal_41Addtruncated_normal_41/multruncated_normal_41/mean*
T0*
_output_shapes

: 
N
	mul_104/yConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
W
mul_104Multruncated_normal_41	mul_104/y*
_output_shapes

: *
T0
U
bb3/w
VariableV2*
_output_shapes

: *
shape
: *
dtype0
i
bb3/w/AssignAssignbb3/wmul_104*
T0*
_class

loc:@bb3/w*
_output_shapes

: 
`

bb3/w/readIdentitybb3/w*
_output_shapes

: *
T0*
_class

loc:@bb3/w
Z
Tensordot_7/axesConst*
valueB:*
dtype0*
_output_shapes
:
a
Tensordot_7/freeConst*
valueB"       *
dtype0*
_output_shapes
:
H
Tensordot_7/ShapeShapeRelu_21*
T0*
_output_shapes
:
[
Tensordot_7/GatherV2/axisConst*
_output_shapes
: *
value	B : *
dtype0
�
Tensordot_7/GatherV2GatherV2Tensordot_7/ShapeTensordot_7/freeTensordot_7/GatherV2/axis*
_output_shapes
:*
Taxis0*
Tindices0*
Tparams0
]
Tensordot_7/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
Tensordot_7/GatherV2_1GatherV2Tensordot_7/ShapeTensordot_7/axesTensordot_7/GatherV2_1/axis*
_output_shapes
:*
Taxis0*
Tindices0*
Tparams0
[
Tensordot_7/ConstConst*
valueB: *
dtype0*
_output_shapes
:
b
Tensordot_7/ProdProdTensordot_7/GatherV2Tensordot_7/Const*
T0*
_output_shapes
: 
]
Tensordot_7/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
h
Tensordot_7/Prod_1ProdTensordot_7/GatherV2_1Tensordot_7/Const_1*
T0*
_output_shapes
: 
Y
Tensordot_7/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
Tensordot_7/concatConcatV2Tensordot_7/freeTensordot_7/axesTensordot_7/concat/axis*
T0*
N*
_output_shapes
:
m
Tensordot_7/stackPackTensordot_7/ProdTensordot_7/Prod_1*
T0*
N*
_output_shapes
:
u
Tensordot_7/transpose	TransposeRelu_21Tensordot_7/concat*
T0*+
_output_shapes
:���������= 
�
Tensordot_7/ReshapeReshapeTensordot_7/transposeTensordot_7/stack*0
_output_shapes
:������������������*
T0
m
Tensordot_7/transpose_1/permConst*
valueB"       *
dtype0*
_output_shapes
:
w
Tensordot_7/transpose_1	Transpose
bb3/w/readTensordot_7/transpose_1/perm*
T0*
_output_shapes

: 
l
Tensordot_7/Reshape_1/shapeConst*
_output_shapes
:*
valueB"       *
dtype0

Tensordot_7/Reshape_1ReshapeTensordot_7/transpose_1Tensordot_7/Reshape_1/shape*
_output_shapes

: *
T0
z
Tensordot_7/MatMulMatMulTensordot_7/ReshapeTensordot_7/Reshape_1*'
_output_shapes
:���������*
T0
]
Tensordot_7/Const_2Const*
dtype0*
_output_shapes
:*
valueB:
[
Tensordot_7/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
Tensordot_7/concat_1ConcatV2Tensordot_7/GatherV2Tensordot_7/Const_2Tensordot_7/concat_1/axis*
T0*
N*
_output_shapes
:
v
Tensordot_7ReshapeTensordot_7/MatMulTensordot_7/concat_1*
T0*+
_output_shapes
:���������=
a
Reshape_27/shapeConst*
valueB"����=   *
dtype0*
_output_shapes
:
f

Reshape_27ReshapeTensordot_7Reshape_27/shape*
T0*'
_output_shapes
:���������=
�
Const_9Const*�
value�B�="�                                                                                                                         @�E                                                                                                                        *
dtype0*
_output_shapes
:=
T
add_25Add
Reshape_27Const_9*'
_output_shapes
:���������=*
T0
i
bonusbelief_output/shapeConst*
valueB"����=   *
dtype0*
_output_shapes
:
q
bonusbelief_outputReshapeadd_25bonusbelief_output/shape*
T0*'
_output_shapes
:���������=
r
truncated_normal_42/shapeConst*%
valueB"             *
dtype0*
_output_shapes
:
]
truncated_normal_42/meanConst*
_output_shapes
: *
valueB
 *    *
dtype0
_
truncated_normal_42/stddevConst*
valueB
 *  �>*
dtype0*
_output_shapes
: 
�
#truncated_normal_42/TruncatedNormalTruncatedNormaltruncated_normal_42/shape*
dtype0*&
_output_shapes
: *
T0
�
truncated_normal_42/mulMul#truncated_normal_42/TruncatedNormaltruncated_normal_42/stddev*
T0*&
_output_shapes
: 
~
truncated_normal_42Addtruncated_normal_42/multruncated_normal_42/mean*
T0*&
_output_shapes
: 
N
	mul_105/yConst*
valueB
 *��L>*
dtype0*
_output_shapes
: 
_
mul_105Multruncated_normal_42	mul_105/y*
T0*&
_output_shapes
: 
l
vownership/w
VariableV2*&
_output_shapes
: *
shape: *
dtype0
�
vownership/w/AssignAssignvownership/wmul_105*
_class
loc:@vownership/w*&
_output_shapes
: *
T0
}
vownership/w/readIdentityvownership/w*
T0*
_class
loc:@vownership/w*&
_output_shapes
: 
�
	Conv2D_19Conv2DRelu_17vownership/w/read*
paddingSAME*/
_output_shapes
:���������		*
T0*
strides

d
mul_106Mul	Conv2D_19strided_slice_5*/
_output_shapes
:���������		*
T0
`
strided_slice_10/stackConst*
dtype0*
_output_shapes
:*
valueB: 
b
strided_slice_10/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
b
strided_slice_10/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
strided_slice_10StridedSliceGreaterstrided_slice_10/stackstrided_slice_10/stack_1strided_slice_10/stack_2*
shrink_axis_mask*
_output_shapes
: *
T0
*
Index0
`
strided_slice_11/stackConst*
valueB:*
dtype0*
_output_shapes
:
b
strided_slice_11/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
b
strided_slice_11/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
�
strided_slice_11StridedSliceGreaterstrided_slice_11/stackstrided_slice_11/stack_1strided_slice_11/stack_2*
shrink_axis_mask*
_output_shapes
: *
Index0*
T0

`
strided_slice_12/stackConst*
valueB:*
dtype0*
_output_shapes
:
b
strided_slice_12/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
b
strided_slice_12/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
strided_slice_12StridedSliceGreaterstrided_slice_12/stackstrided_slice_12/stack_1strided_slice_12/stack_2*
shrink_axis_mask*
_output_shapes
: *
T0
*
Index0
_
cond_24/SwitchSwitchstrided_slice_12strided_slice_12*
T0
*
_output_shapes
: : 
O
cond_24/switch_tIdentitycond_24/Switch:1*
T0
*
_output_shapes
: 
M
cond_24/switch_fIdentitycond_24/Switch*
_output_shapes
: *
T0

N
cond_24/pred_idIdentitystrided_slice_12*
T0
*
_output_shapes
: 
�
cond_24/transpose/permConst^cond_24/switch_t*%
valueB"             *
dtype0*
_output_shapes
:
�
cond_24/transpose	Transposecond_24/transpose/Switch:1cond_24/transpose/perm*/
_output_shapes
:���������		*
T0
�
cond_24/transpose/SwitchSwitchmul_106cond_24/pred_id*
T0*
_class
loc:@mul_106*J
_output_shapes8
6:���������		:���������		
�
cond_24/Switch_1Switchmul_106cond_24/pred_id*
T0*
_class
loc:@mul_106*J
_output_shapes8
6:���������		:���������		
�
cond_24/MergeMergecond_24/Switch_1cond_24/transpose*
T0*
N*1
_output_shapes
:���������		: 
_
cond_25/SwitchSwitchstrided_slice_10strided_slice_10*
T0
*
_output_shapes
: : 
O
cond_25/switch_tIdentitycond_25/Switch:1*
T0
*
_output_shapes
: 
M
cond_25/switch_fIdentitycond_25/Switch*
T0
*
_output_shapes
: 
N
cond_25/pred_idIdentitystrided_slice_10*
_output_shapes
: *
T0

s
cond_25/ReverseV2/axisConst^cond_25/switch_t*
valueB:*
dtype0*
_output_shapes
:
�
cond_25/ReverseV2	ReverseV2cond_25/ReverseV2/Switch:1cond_25/ReverseV2/axis*/
_output_shapes
:���������		*
T0
�
cond_25/ReverseV2/SwitchSwitchcond_24/Mergecond_25/pred_id*
T0* 
_class
loc:@cond_24/Merge*J
_output_shapes8
6:���������		:���������		
�
cond_25/Switch_1Switchcond_24/Mergecond_25/pred_id*
T0* 
_class
loc:@cond_24/Merge*J
_output_shapes8
6:���������		:���������		
�
cond_25/MergeMergecond_25/Switch_1cond_25/ReverseV2*
T0*
N*1
_output_shapes
:���������		: 
_
cond_26/SwitchSwitchstrided_slice_11strided_slice_11*
T0
*
_output_shapes
: : 
O
cond_26/switch_tIdentitycond_26/Switch:1*
_output_shapes
: *
T0

M
cond_26/switch_fIdentitycond_26/Switch*
T0
*
_output_shapes
: 
N
cond_26/pred_idIdentitystrided_slice_11*
T0
*
_output_shapes
: 
s
cond_26/ReverseV2/axisConst^cond_26/switch_t*
valueB:*
dtype0*
_output_shapes
:
�
cond_26/ReverseV2	ReverseV2cond_26/ReverseV2/Switch:1cond_26/ReverseV2/axis*/
_output_shapes
:���������		*
T0
�
cond_26/ReverseV2/SwitchSwitchcond_25/Mergecond_26/pred_id* 
_class
loc:@cond_25/Merge*J
_output_shapes8
6:���������		:���������		*
T0
�
cond_26/Switch_1Switchcond_25/Mergecond_26/pred_id*
T0* 
_class
loc:@cond_25/Merge*J
_output_shapes8
6:���������		:���������		
�
cond_26/MergeMergecond_26/Switch_1cond_26/ReverseV2*
T0*
N*1
_output_shapes
:���������		: 
k
ownership_output/shapeConst*!
valueB"����	   	   *
dtype0*
_output_shapes
:
x
ownership_outputReshapecond_26/Mergeownership_output/shape*+
_output_shapes
:���������		*
T0

initNoOp

init_all_tablesNoOp

init_1NoOp
4

group_depsNoOp^init^init_1^init_all_tables
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
save/StringJoin/inputs_1Const*<
value3B1 B+_temp_03f3822e3c3442898934435a246a8072/part*
dtype0*
_output_shapes
: 
d
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
_output_shapes
: *
N
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
�
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
�"
save/SaveV2/tensor_namesConst"/device:CPU:0*�"
value�"B�"�Bbb2/bBbb2/wBbb2_offset/wBbb3/wBconv1/wBg1/norm/betaBg1/norm/moving_meanBg1/norm/moving_mean/biasedBg1/norm/moving_mean/local_stepBg1/norm/moving_varianceBg1/norm/moving_variance/biasedB"g1/norm/moving_variance/local_stepBg1/wBginputwBglobal_stepB	matmulg2wB
matmulpassBmv3/bBmv3/wBp1/intermediate_conv/wBp1/norm/betaBp1/norm/moving_meanBp1/norm/moving_mean/biasedBp1/norm/moving_mean/local_stepBp1/norm/moving_varianceBp1/norm/moving_variance/biasedB"p1/norm/moving_variance/local_stepBp2/wBrconv1/norm1/betaBrconv1/norm1/moving_meanBrconv1/norm1/moving_mean/biasedB#rconv1/norm1/moving_mean/local_stepBrconv1/norm1/moving_varianceB#rconv1/norm1/moving_variance/biasedB'rconv1/norm1/moving_variance/local_stepBrconv1/norm2/betaBrconv1/norm2/moving_meanBrconv1/norm2/moving_mean/biasedB#rconv1/norm2/moving_mean/local_stepBrconv1/norm2/moving_varianceB#rconv1/norm2/moving_variance/biasedB'rconv1/norm2/moving_variance/local_stepB	rconv1/w1B	rconv1/w2Brconv2/norm1/betaBrconv2/norm1/moving_meanBrconv2/norm1/moving_mean/biasedB#rconv2/norm1/moving_mean/local_stepBrconv2/norm1/moving_varianceB#rconv2/norm1/moving_variance/biasedB'rconv2/norm1/moving_variance/local_stepBrconv2/norm2/betaBrconv2/norm2/moving_meanBrconv2/norm2/moving_mean/biasedB#rconv2/norm2/moving_mean/local_stepBrconv2/norm2/moving_varianceB#rconv2/norm2/moving_variance/biasedB'rconv2/norm2/moving_variance/local_stepB	rconv2/w1B	rconv2/w2Brconv3/norm1/betaBrconv3/norm1/moving_meanBrconv3/norm1/moving_mean/biasedB#rconv3/norm1/moving_mean/local_stepBrconv3/norm1/moving_varianceB#rconv3/norm1/moving_variance/biasedB'rconv3/norm1/moving_variance/local_stepBrconv3/norm1b/betaBrconv3/norm1b/moving_meanB rconv3/norm1b/moving_mean/biasedB$rconv3/norm1b/moving_mean/local_stepBrconv3/norm1b/moving_varianceB$rconv3/norm1b/moving_variance/biasedB(rconv3/norm1b/moving_variance/local_stepBrconv3/norm2/betaBrconv3/norm2/moving_meanBrconv3/norm2/moving_mean/biasedB#rconv3/norm2/moving_mean/local_stepBrconv3/norm2/moving_varianceB#rconv3/norm2/moving_variance/biasedB'rconv3/norm2/moving_variance/local_stepB
rconv3/w1aB
rconv3/w1bB
rconv3/w1rB	rconv3/w2Brconv4/norm1/betaBrconv4/norm1/moving_meanBrconv4/norm1/moving_mean/biasedB#rconv4/norm1/moving_mean/local_stepBrconv4/norm1/moving_varianceB#rconv4/norm1/moving_variance/biasedB'rconv4/norm1/moving_variance/local_stepBrconv4/norm2/betaBrconv4/norm2/moving_meanBrconv4/norm2/moving_mean/biasedB#rconv4/norm2/moving_mean/local_stepBrconv4/norm2/moving_varianceB#rconv4/norm2/moving_variance/biasedB'rconv4/norm2/moving_variance/local_stepB	rconv4/w1B	rconv4/w2Brconv5/norm1/betaBrconv5/norm1/moving_meanBrconv5/norm1/moving_mean/biasedB#rconv5/norm1/moving_mean/local_stepBrconv5/norm1/moving_varianceB#rconv5/norm1/moving_variance/biasedB'rconv5/norm1/moving_variance/local_stepBrconv5/norm1b/betaBrconv5/norm1b/moving_meanB rconv5/norm1b/moving_mean/biasedB$rconv5/norm1b/moving_mean/local_stepBrconv5/norm1b/moving_varianceB$rconv5/norm1b/moving_variance/biasedB(rconv5/norm1b/moving_variance/local_stepBrconv5/norm2/betaBrconv5/norm2/moving_meanBrconv5/norm2/moving_mean/biasedB#rconv5/norm2/moving_mean/local_stepBrconv5/norm2/moving_varianceB#rconv5/norm2/moving_variance/biasedB'rconv5/norm2/moving_variance/local_stepB
rconv5/w1aB
rconv5/w1bB
rconv5/w1rB	rconv5/w2Brconv6/norm1/betaBrconv6/norm1/moving_meanBrconv6/norm1/moving_mean/biasedB#rconv6/norm1/moving_mean/local_stepBrconv6/norm1/moving_varianceB#rconv6/norm1/moving_variance/biasedB'rconv6/norm1/moving_variance/local_stepBrconv6/norm2/betaBrconv6/norm2/moving_meanBrconv6/norm2/moving_mean/biasedB#rconv6/norm2/moving_mean/local_stepBrconv6/norm2/moving_varianceB#rconv6/norm2/moving_variance/biasedB'rconv6/norm2/moving_variance/local_stepB	rconv6/w1B	rconv6/w2Bsb2/bBsb2/wBsb2_offset/wBsb2_parity/wBsb3/wB
sbscale2/bB
sbscale2/wB
sbscale3/wBtrunk/norm/betaBtrunk/norm/moving_meanBtrunk/norm/moving_mean/biasedB!trunk/norm/moving_mean/local_stepBtrunk/norm/moving_varianceB!trunk/norm/moving_variance/biasedB%trunk/norm/moving_variance/local_stepBv1/norm/betaBv1/norm/moving_meanBv1/norm/moving_mean/biasedBv1/norm/moving_mean/local_stepBv1/norm/moving_varianceBv1/norm/moving_variance/biasedB"v1/norm/moving_variance/local_stepBv1/wBv2/bBv2/wBv3/bBv3/wBvownership/w*
dtype0*
_output_shapes	
:�
�
save/SaveV2/shape_and_slicesConst"/device:CPU:0*�
value�B��B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes	
:�
�$
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbb2/bbb2/wbb2_offset/wbb3/wconv1/wg1/norm/betag1/norm/moving_meang1/norm/moving_mean/biasedg1/norm/moving_mean/local_stepg1/norm/moving_varianceg1/norm/moving_variance/biased"g1/norm/moving_variance/local_stepg1/wginputwglobal_step	matmulg2w
matmulpassmv3/bmv3/wp1/intermediate_conv/wp1/norm/betap1/norm/moving_meanp1/norm/moving_mean/biasedp1/norm/moving_mean/local_stepp1/norm/moving_variancep1/norm/moving_variance/biased"p1/norm/moving_variance/local_stepp2/wrconv1/norm1/betarconv1/norm1/moving_meanrconv1/norm1/moving_mean/biased#rconv1/norm1/moving_mean/local_steprconv1/norm1/moving_variance#rconv1/norm1/moving_variance/biased'rconv1/norm1/moving_variance/local_steprconv1/norm2/betarconv1/norm2/moving_meanrconv1/norm2/moving_mean/biased#rconv1/norm2/moving_mean/local_steprconv1/norm2/moving_variance#rconv1/norm2/moving_variance/biased'rconv1/norm2/moving_variance/local_step	rconv1/w1	rconv1/w2rconv2/norm1/betarconv2/norm1/moving_meanrconv2/norm1/moving_mean/biased#rconv2/norm1/moving_mean/local_steprconv2/norm1/moving_variance#rconv2/norm1/moving_variance/biased'rconv2/norm1/moving_variance/local_steprconv2/norm2/betarconv2/norm2/moving_meanrconv2/norm2/moving_mean/biased#rconv2/norm2/moving_mean/local_steprconv2/norm2/moving_variance#rconv2/norm2/moving_variance/biased'rconv2/norm2/moving_variance/local_step	rconv2/w1	rconv2/w2rconv3/norm1/betarconv3/norm1/moving_meanrconv3/norm1/moving_mean/biased#rconv3/norm1/moving_mean/local_steprconv3/norm1/moving_variance#rconv3/norm1/moving_variance/biased'rconv3/norm1/moving_variance/local_steprconv3/norm1b/betarconv3/norm1b/moving_mean rconv3/norm1b/moving_mean/biased$rconv3/norm1b/moving_mean/local_steprconv3/norm1b/moving_variance$rconv3/norm1b/moving_variance/biased(rconv3/norm1b/moving_variance/local_steprconv3/norm2/betarconv3/norm2/moving_meanrconv3/norm2/moving_mean/biased#rconv3/norm2/moving_mean/local_steprconv3/norm2/moving_variance#rconv3/norm2/moving_variance/biased'rconv3/norm2/moving_variance/local_step
rconv3/w1a
rconv3/w1b
rconv3/w1r	rconv3/w2rconv4/norm1/betarconv4/norm1/moving_meanrconv4/norm1/moving_mean/biased#rconv4/norm1/moving_mean/local_steprconv4/norm1/moving_variance#rconv4/norm1/moving_variance/biased'rconv4/norm1/moving_variance/local_steprconv4/norm2/betarconv4/norm2/moving_meanrconv4/norm2/moving_mean/biased#rconv4/norm2/moving_mean/local_steprconv4/norm2/moving_variance#rconv4/norm2/moving_variance/biased'rconv4/norm2/moving_variance/local_step	rconv4/w1	rconv4/w2rconv5/norm1/betarconv5/norm1/moving_meanrconv5/norm1/moving_mean/biased#rconv5/norm1/moving_mean/local_steprconv5/norm1/moving_variance#rconv5/norm1/moving_variance/biased'rconv5/norm1/moving_variance/local_steprconv5/norm1b/betarconv5/norm1b/moving_mean rconv5/norm1b/moving_mean/biased$rconv5/norm1b/moving_mean/local_steprconv5/norm1b/moving_variance$rconv5/norm1b/moving_variance/biased(rconv5/norm1b/moving_variance/local_steprconv5/norm2/betarconv5/norm2/moving_meanrconv5/norm2/moving_mean/biased#rconv5/norm2/moving_mean/local_steprconv5/norm2/moving_variance#rconv5/norm2/moving_variance/biased'rconv5/norm2/moving_variance/local_step
rconv5/w1a
rconv5/w1b
rconv5/w1r	rconv5/w2rconv6/norm1/betarconv6/norm1/moving_meanrconv6/norm1/moving_mean/biased#rconv6/norm1/moving_mean/local_steprconv6/norm1/moving_variance#rconv6/norm1/moving_variance/biased'rconv6/norm1/moving_variance/local_steprconv6/norm2/betarconv6/norm2/moving_meanrconv6/norm2/moving_mean/biased#rconv6/norm2/moving_mean/local_steprconv6/norm2/moving_variance#rconv6/norm2/moving_variance/biased'rconv6/norm2/moving_variance/local_step	rconv6/w1	rconv6/w2sb2/bsb2/wsb2_offset/wsb2_parity/wsb3/w
sbscale2/b
sbscale2/w
sbscale3/wtrunk/norm/betatrunk/norm/moving_meantrunk/norm/moving_mean/biased!trunk/norm/moving_mean/local_steptrunk/norm/moving_variance!trunk/norm/moving_variance/biased%trunk/norm/moving_variance/local_stepv1/norm/betav1/norm/moving_meanv1/norm/moving_mean/biasedv1/norm/moving_mean/local_stepv1/norm/moving_variancev1/norm/moving_variance/biased"v1/norm/moving_variance/local_stepv1/wv2/bv2/wv3/bv3/wvownership/w"/device:CPU:0*�
dtypes�
�2�	
�
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
�
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
T0*
N*
_output_shapes
:
u
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0
�
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
_output_shapes
: *
T0
�"
save/RestoreV2/tensor_namesConst"/device:CPU:0*�"
value�"B�"�Bbb2/bBbb2/wBbb2_offset/wBbb3/wBconv1/wBg1/norm/betaBg1/norm/moving_meanBg1/norm/moving_mean/biasedBg1/norm/moving_mean/local_stepBg1/norm/moving_varianceBg1/norm/moving_variance/biasedB"g1/norm/moving_variance/local_stepBg1/wBginputwBglobal_stepB	matmulg2wB
matmulpassBmv3/bBmv3/wBp1/intermediate_conv/wBp1/norm/betaBp1/norm/moving_meanBp1/norm/moving_mean/biasedBp1/norm/moving_mean/local_stepBp1/norm/moving_varianceBp1/norm/moving_variance/biasedB"p1/norm/moving_variance/local_stepBp2/wBrconv1/norm1/betaBrconv1/norm1/moving_meanBrconv1/norm1/moving_mean/biasedB#rconv1/norm1/moving_mean/local_stepBrconv1/norm1/moving_varianceB#rconv1/norm1/moving_variance/biasedB'rconv1/norm1/moving_variance/local_stepBrconv1/norm2/betaBrconv1/norm2/moving_meanBrconv1/norm2/moving_mean/biasedB#rconv1/norm2/moving_mean/local_stepBrconv1/norm2/moving_varianceB#rconv1/norm2/moving_variance/biasedB'rconv1/norm2/moving_variance/local_stepB	rconv1/w1B	rconv1/w2Brconv2/norm1/betaBrconv2/norm1/moving_meanBrconv2/norm1/moving_mean/biasedB#rconv2/norm1/moving_mean/local_stepBrconv2/norm1/moving_varianceB#rconv2/norm1/moving_variance/biasedB'rconv2/norm1/moving_variance/local_stepBrconv2/norm2/betaBrconv2/norm2/moving_meanBrconv2/norm2/moving_mean/biasedB#rconv2/norm2/moving_mean/local_stepBrconv2/norm2/moving_varianceB#rconv2/norm2/moving_variance/biasedB'rconv2/norm2/moving_variance/local_stepB	rconv2/w1B	rconv2/w2Brconv3/norm1/betaBrconv3/norm1/moving_meanBrconv3/norm1/moving_mean/biasedB#rconv3/norm1/moving_mean/local_stepBrconv3/norm1/moving_varianceB#rconv3/norm1/moving_variance/biasedB'rconv3/norm1/moving_variance/local_stepBrconv3/norm1b/betaBrconv3/norm1b/moving_meanB rconv3/norm1b/moving_mean/biasedB$rconv3/norm1b/moving_mean/local_stepBrconv3/norm1b/moving_varianceB$rconv3/norm1b/moving_variance/biasedB(rconv3/norm1b/moving_variance/local_stepBrconv3/norm2/betaBrconv3/norm2/moving_meanBrconv3/norm2/moving_mean/biasedB#rconv3/norm2/moving_mean/local_stepBrconv3/norm2/moving_varianceB#rconv3/norm2/moving_variance/biasedB'rconv3/norm2/moving_variance/local_stepB
rconv3/w1aB
rconv3/w1bB
rconv3/w1rB	rconv3/w2Brconv4/norm1/betaBrconv4/norm1/moving_meanBrconv4/norm1/moving_mean/biasedB#rconv4/norm1/moving_mean/local_stepBrconv4/norm1/moving_varianceB#rconv4/norm1/moving_variance/biasedB'rconv4/norm1/moving_variance/local_stepBrconv4/norm2/betaBrconv4/norm2/moving_meanBrconv4/norm2/moving_mean/biasedB#rconv4/norm2/moving_mean/local_stepBrconv4/norm2/moving_varianceB#rconv4/norm2/moving_variance/biasedB'rconv4/norm2/moving_variance/local_stepB	rconv4/w1B	rconv4/w2Brconv5/norm1/betaBrconv5/norm1/moving_meanBrconv5/norm1/moving_mean/biasedB#rconv5/norm1/moving_mean/local_stepBrconv5/norm1/moving_varianceB#rconv5/norm1/moving_variance/biasedB'rconv5/norm1/moving_variance/local_stepBrconv5/norm1b/betaBrconv5/norm1b/moving_meanB rconv5/norm1b/moving_mean/biasedB$rconv5/norm1b/moving_mean/local_stepBrconv5/norm1b/moving_varianceB$rconv5/norm1b/moving_variance/biasedB(rconv5/norm1b/moving_variance/local_stepBrconv5/norm2/betaBrconv5/norm2/moving_meanBrconv5/norm2/moving_mean/biasedB#rconv5/norm2/moving_mean/local_stepBrconv5/norm2/moving_varianceB#rconv5/norm2/moving_variance/biasedB'rconv5/norm2/moving_variance/local_stepB
rconv5/w1aB
rconv5/w1bB
rconv5/w1rB	rconv5/w2Brconv6/norm1/betaBrconv6/norm1/moving_meanBrconv6/norm1/moving_mean/biasedB#rconv6/norm1/moving_mean/local_stepBrconv6/norm1/moving_varianceB#rconv6/norm1/moving_variance/biasedB'rconv6/norm1/moving_variance/local_stepBrconv6/norm2/betaBrconv6/norm2/moving_meanBrconv6/norm2/moving_mean/biasedB#rconv6/norm2/moving_mean/local_stepBrconv6/norm2/moving_varianceB#rconv6/norm2/moving_variance/biasedB'rconv6/norm2/moving_variance/local_stepB	rconv6/w1B	rconv6/w2Bsb2/bBsb2/wBsb2_offset/wBsb2_parity/wBsb3/wB
sbscale2/bB
sbscale2/wB
sbscale3/wBtrunk/norm/betaBtrunk/norm/moving_meanBtrunk/norm/moving_mean/biasedB!trunk/norm/moving_mean/local_stepBtrunk/norm/moving_varianceB!trunk/norm/moving_variance/biasedB%trunk/norm/moving_variance/local_stepBv1/norm/betaBv1/norm/moving_meanBv1/norm/moving_mean/biasedBv1/norm/moving_mean/local_stepBv1/norm/moving_varianceBv1/norm/moving_variance/biasedB"v1/norm/moving_variance/local_stepBv1/wBv2/bBv2/wBv3/bBv3/wBvownership/w*
dtype0*
_output_shapes	
:�
�
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes	
:�*�
value�B��B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*�
dtypes�
�2�	*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
k
save/AssignAssignbb2/bsave/RestoreV2*
_output_shapes
: *
T0*
_class

loc:@bb2/b
s
save/Assign_1Assignbb2/wsave/RestoreV2:1*
T0*
_class

loc:@bb2/w*
_output_shapes

:` 
�
save/Assign_2Assignbb2_offset/wsave/RestoreV2:2*
T0*
_class
loc:@bb2_offset/w*
_output_shapes

: 
s
save/Assign_3Assignbb3/wsave/RestoreV2:3*
T0*
_class

loc:@bb3/w*
_output_shapes

: 

save/Assign_4Assignconv1/wsave/RestoreV2:4*
_class
loc:@conv1/w*&
_output_shapes
:`*
T0
}
save/Assign_5Assigng1/norm/betasave/RestoreV2:5*
T0*
_class
loc:@g1/norm/beta*
_output_shapes
: 
�
save/Assign_6Assigng1/norm/moving_meansave/RestoreV2:6*
_output_shapes
: *
T0*&
_class
loc:@g1/norm/moving_mean
�
save/Assign_7Assigng1/norm/moving_mean/biasedsave/RestoreV2:7*
T0*&
_class
loc:@g1/norm/moving_mean*
_output_shapes
: 
�
save/Assign_8Assigng1/norm/moving_mean/local_stepsave/RestoreV2:8*
T0*&
_class
loc:@g1/norm/moving_mean*
_output_shapes
: 
�
save/Assign_9Assigng1/norm/moving_variancesave/RestoreV2:9*
T0**
_class 
loc:@g1/norm/moving_variance*
_output_shapes
: 
�
save/Assign_10Assigng1/norm/moving_variance/biasedsave/RestoreV2:10*
T0**
_class 
loc:@g1/norm/moving_variance*
_output_shapes
: 
�
save/Assign_11Assign"g1/norm/moving_variance/local_stepsave/RestoreV2:11*
T0**
_class 
loc:@g1/norm/moving_variance*
_output_shapes
: 
{
save/Assign_12Assigng1/wsave/RestoreV2:12*
T0*
_class
	loc:@g1/w*&
_output_shapes
:` 
y
save/Assign_13Assignginputwsave/RestoreV2:13*
_output_shapes

:`*
T0*
_class
loc:@ginputw
y
save/Assign_14Assignglobal_stepsave/RestoreV2:14*
T0	*
_class
loc:@global_step*
_output_shapes
: 
}
save/Assign_15Assign	matmulg2wsave/RestoreV2:15*
_output_shapes

:` *
T0*
_class
loc:@matmulg2w

save/Assign_16Assign
matmulpasssave/RestoreV2:16*
T0*
_class
loc:@matmulpass*
_output_shapes

:`
q
save/Assign_17Assignmv3/bsave/RestoreV2:17*
T0*
_class

loc:@mv3/b*
_output_shapes
:
u
save/Assign_18Assignmv3/wsave/RestoreV2:18*
T0*
_class

loc:@mv3/w*
_output_shapes

:0
�
save/Assign_19Assignp1/intermediate_conv/wsave/RestoreV2:19*
T0*)
_class
loc:@p1/intermediate_conv/w*&
_output_shapes
:` 

save/Assign_20Assignp1/norm/betasave/RestoreV2:20*
T0*
_class
loc:@p1/norm/beta*
_output_shapes
: 
�
save/Assign_21Assignp1/norm/moving_meansave/RestoreV2:21*
T0*&
_class
loc:@p1/norm/moving_mean*
_output_shapes
: 
�
save/Assign_22Assignp1/norm/moving_mean/biasedsave/RestoreV2:22*
_output_shapes
: *
T0*&
_class
loc:@p1/norm/moving_mean
�
save/Assign_23Assignp1/norm/moving_mean/local_stepsave/RestoreV2:23*
T0*&
_class
loc:@p1/norm/moving_mean*
_output_shapes
: 
�
save/Assign_24Assignp1/norm/moving_variancesave/RestoreV2:24**
_class 
loc:@p1/norm/moving_variance*
_output_shapes
: *
T0
�
save/Assign_25Assignp1/norm/moving_variance/biasedsave/RestoreV2:25*
T0**
_class 
loc:@p1/norm/moving_variance*
_output_shapes
: 
�
save/Assign_26Assign"p1/norm/moving_variance/local_stepsave/RestoreV2:26*
_output_shapes
: *
T0**
_class 
loc:@p1/norm/moving_variance
{
save/Assign_27Assignp2/wsave/RestoreV2:27*&
_output_shapes
: *
T0*
_class
	loc:@p2/w
�
save/Assign_28Assignrconv1/norm1/betasave/RestoreV2:28*
T0*$
_class
loc:@rconv1/norm1/beta*
_output_shapes
:`
�
save/Assign_29Assignrconv1/norm1/moving_meansave/RestoreV2:29*
T0*+
_class!
loc:@rconv1/norm1/moving_mean*
_output_shapes
:`
�
save/Assign_30Assignrconv1/norm1/moving_mean/biasedsave/RestoreV2:30*
T0*+
_class!
loc:@rconv1/norm1/moving_mean*
_output_shapes
:`
�
save/Assign_31Assign#rconv1/norm1/moving_mean/local_stepsave/RestoreV2:31*
T0*+
_class!
loc:@rconv1/norm1/moving_mean*
_output_shapes
: 
�
save/Assign_32Assignrconv1/norm1/moving_variancesave/RestoreV2:32*
T0*/
_class%
#!loc:@rconv1/norm1/moving_variance*
_output_shapes
:`
�
save/Assign_33Assign#rconv1/norm1/moving_variance/biasedsave/RestoreV2:33*
T0*/
_class%
#!loc:@rconv1/norm1/moving_variance*
_output_shapes
:`
�
save/Assign_34Assign'rconv1/norm1/moving_variance/local_stepsave/RestoreV2:34*
_output_shapes
: *
T0*/
_class%
#!loc:@rconv1/norm1/moving_variance
�
save/Assign_35Assignrconv1/norm2/betasave/RestoreV2:35*
T0*$
_class
loc:@rconv1/norm2/beta*
_output_shapes
:`
�
save/Assign_36Assignrconv1/norm2/moving_meansave/RestoreV2:36*
T0*+
_class!
loc:@rconv1/norm2/moving_mean*
_output_shapes
:`
�
save/Assign_37Assignrconv1/norm2/moving_mean/biasedsave/RestoreV2:37*
T0*+
_class!
loc:@rconv1/norm2/moving_mean*
_output_shapes
:`
�
save/Assign_38Assign#rconv1/norm2/moving_mean/local_stepsave/RestoreV2:38*
_output_shapes
: *
T0*+
_class!
loc:@rconv1/norm2/moving_mean
�
save/Assign_39Assignrconv1/norm2/moving_variancesave/RestoreV2:39*
_output_shapes
:`*
T0*/
_class%
#!loc:@rconv1/norm2/moving_variance
�
save/Assign_40Assign#rconv1/norm2/moving_variance/biasedsave/RestoreV2:40*
T0*/
_class%
#!loc:@rconv1/norm2/moving_variance*
_output_shapes
:`
�
save/Assign_41Assign'rconv1/norm2/moving_variance/local_stepsave/RestoreV2:41*
T0*/
_class%
#!loc:@rconv1/norm2/moving_variance*
_output_shapes
: 
�
save/Assign_42Assign	rconv1/w1save/RestoreV2:42*
T0*
_class
loc:@rconv1/w1*&
_output_shapes
:``
�
save/Assign_43Assign	rconv1/w2save/RestoreV2:43*
_class
loc:@rconv1/w2*&
_output_shapes
:``*
T0
�
save/Assign_44Assignrconv2/norm1/betasave/RestoreV2:44*
_output_shapes
:`*
T0*$
_class
loc:@rconv2/norm1/beta
�
save/Assign_45Assignrconv2/norm1/moving_meansave/RestoreV2:45*
T0*+
_class!
loc:@rconv2/norm1/moving_mean*
_output_shapes
:`
�
save/Assign_46Assignrconv2/norm1/moving_mean/biasedsave/RestoreV2:46*
_output_shapes
:`*
T0*+
_class!
loc:@rconv2/norm1/moving_mean
�
save/Assign_47Assign#rconv2/norm1/moving_mean/local_stepsave/RestoreV2:47*
T0*+
_class!
loc:@rconv2/norm1/moving_mean*
_output_shapes
: 
�
save/Assign_48Assignrconv2/norm1/moving_variancesave/RestoreV2:48*
_output_shapes
:`*
T0*/
_class%
#!loc:@rconv2/norm1/moving_variance
�
save/Assign_49Assign#rconv2/norm1/moving_variance/biasedsave/RestoreV2:49*
T0*/
_class%
#!loc:@rconv2/norm1/moving_variance*
_output_shapes
:`
�
save/Assign_50Assign'rconv2/norm1/moving_variance/local_stepsave/RestoreV2:50*
T0*/
_class%
#!loc:@rconv2/norm1/moving_variance*
_output_shapes
: 
�
save/Assign_51Assignrconv2/norm2/betasave/RestoreV2:51*
T0*$
_class
loc:@rconv2/norm2/beta*
_output_shapes
:`
�
save/Assign_52Assignrconv2/norm2/moving_meansave/RestoreV2:52*
T0*+
_class!
loc:@rconv2/norm2/moving_mean*
_output_shapes
:`
�
save/Assign_53Assignrconv2/norm2/moving_mean/biasedsave/RestoreV2:53*
T0*+
_class!
loc:@rconv2/norm2/moving_mean*
_output_shapes
:`
�
save/Assign_54Assign#rconv2/norm2/moving_mean/local_stepsave/RestoreV2:54*
T0*+
_class!
loc:@rconv2/norm2/moving_mean*
_output_shapes
: 
�
save/Assign_55Assignrconv2/norm2/moving_variancesave/RestoreV2:55*
T0*/
_class%
#!loc:@rconv2/norm2/moving_variance*
_output_shapes
:`
�
save/Assign_56Assign#rconv2/norm2/moving_variance/biasedsave/RestoreV2:56*/
_class%
#!loc:@rconv2/norm2/moving_variance*
_output_shapes
:`*
T0
�
save/Assign_57Assign'rconv2/norm2/moving_variance/local_stepsave/RestoreV2:57*
T0*/
_class%
#!loc:@rconv2/norm2/moving_variance*
_output_shapes
: 
�
save/Assign_58Assign	rconv2/w1save/RestoreV2:58*&
_output_shapes
:``*
T0*
_class
loc:@rconv2/w1
�
save/Assign_59Assign	rconv2/w2save/RestoreV2:59*
T0*
_class
loc:@rconv2/w2*&
_output_shapes
:``
�
save/Assign_60Assignrconv3/norm1/betasave/RestoreV2:60*
T0*$
_class
loc:@rconv3/norm1/beta*
_output_shapes
:`
�
save/Assign_61Assignrconv3/norm1/moving_meansave/RestoreV2:61*
T0*+
_class!
loc:@rconv3/norm1/moving_mean*
_output_shapes
:`
�
save/Assign_62Assignrconv3/norm1/moving_mean/biasedsave/RestoreV2:62*
T0*+
_class!
loc:@rconv3/norm1/moving_mean*
_output_shapes
:`
�
save/Assign_63Assign#rconv3/norm1/moving_mean/local_stepsave/RestoreV2:63*
T0*+
_class!
loc:@rconv3/norm1/moving_mean*
_output_shapes
: 
�
save/Assign_64Assignrconv3/norm1/moving_variancesave/RestoreV2:64*
T0*/
_class%
#!loc:@rconv3/norm1/moving_variance*
_output_shapes
:`
�
save/Assign_65Assign#rconv3/norm1/moving_variance/biasedsave/RestoreV2:65*
T0*/
_class%
#!loc:@rconv3/norm1/moving_variance*
_output_shapes
:`
�
save/Assign_66Assign'rconv3/norm1/moving_variance/local_stepsave/RestoreV2:66*
T0*/
_class%
#!loc:@rconv3/norm1/moving_variance*
_output_shapes
: 
�
save/Assign_67Assignrconv3/norm1b/betasave/RestoreV2:67*
T0*%
_class
loc:@rconv3/norm1b/beta*
_output_shapes
: 
�
save/Assign_68Assignrconv3/norm1b/moving_meansave/RestoreV2:68*
T0*,
_class"
 loc:@rconv3/norm1b/moving_mean*
_output_shapes
: 
�
save/Assign_69Assign rconv3/norm1b/moving_mean/biasedsave/RestoreV2:69*
T0*,
_class"
 loc:@rconv3/norm1b/moving_mean*
_output_shapes
: 
�
save/Assign_70Assign$rconv3/norm1b/moving_mean/local_stepsave/RestoreV2:70*
T0*,
_class"
 loc:@rconv3/norm1b/moving_mean*
_output_shapes
: 
�
save/Assign_71Assignrconv3/norm1b/moving_variancesave/RestoreV2:71*
T0*0
_class&
$"loc:@rconv3/norm1b/moving_variance*
_output_shapes
: 
�
save/Assign_72Assign$rconv3/norm1b/moving_variance/biasedsave/RestoreV2:72*
T0*0
_class&
$"loc:@rconv3/norm1b/moving_variance*
_output_shapes
: 
�
save/Assign_73Assign(rconv3/norm1b/moving_variance/local_stepsave/RestoreV2:73*
T0*0
_class&
$"loc:@rconv3/norm1b/moving_variance*
_output_shapes
: 
�
save/Assign_74Assignrconv3/norm2/betasave/RestoreV2:74*
_output_shapes
:@*
T0*$
_class
loc:@rconv3/norm2/beta
�
save/Assign_75Assignrconv3/norm2/moving_meansave/RestoreV2:75*
T0*+
_class!
loc:@rconv3/norm2/moving_mean*
_output_shapes
:@
�
save/Assign_76Assignrconv3/norm2/moving_mean/biasedsave/RestoreV2:76*
T0*+
_class!
loc:@rconv3/norm2/moving_mean*
_output_shapes
:@
�
save/Assign_77Assign#rconv3/norm2/moving_mean/local_stepsave/RestoreV2:77*
T0*+
_class!
loc:@rconv3/norm2/moving_mean*
_output_shapes
: 
�
save/Assign_78Assignrconv3/norm2/moving_variancesave/RestoreV2:78*
T0*/
_class%
#!loc:@rconv3/norm2/moving_variance*
_output_shapes
:@
�
save/Assign_79Assign#rconv3/norm2/moving_variance/biasedsave/RestoreV2:79*
_output_shapes
:@*
T0*/
_class%
#!loc:@rconv3/norm2/moving_variance
�
save/Assign_80Assign'rconv3/norm2/moving_variance/local_stepsave/RestoreV2:80*
T0*/
_class%
#!loc:@rconv3/norm2/moving_variance*
_output_shapes
: 
�
save/Assign_81Assign
rconv3/w1asave/RestoreV2:81*
_class
loc:@rconv3/w1a*&
_output_shapes
:`@*
T0
�
save/Assign_82Assign
rconv3/w1bsave/RestoreV2:82*
_class
loc:@rconv3/w1b*&
_output_shapes
:` *
T0

save/Assign_83Assign
rconv3/w1rsave/RestoreV2:83*
_class
loc:@rconv3/w1r*
_output_shapes

:`@*
T0
�
save/Assign_84Assign	rconv3/w2save/RestoreV2:84*
T0*
_class
loc:@rconv3/w2*&
_output_shapes
:@`
�
save/Assign_85Assignrconv4/norm1/betasave/RestoreV2:85*
T0*$
_class
loc:@rconv4/norm1/beta*
_output_shapes
:`
�
save/Assign_86Assignrconv4/norm1/moving_meansave/RestoreV2:86*
T0*+
_class!
loc:@rconv4/norm1/moving_mean*
_output_shapes
:`
�
save/Assign_87Assignrconv4/norm1/moving_mean/biasedsave/RestoreV2:87*
T0*+
_class!
loc:@rconv4/norm1/moving_mean*
_output_shapes
:`
�
save/Assign_88Assign#rconv4/norm1/moving_mean/local_stepsave/RestoreV2:88*
T0*+
_class!
loc:@rconv4/norm1/moving_mean*
_output_shapes
: 
�
save/Assign_89Assignrconv4/norm1/moving_variancesave/RestoreV2:89*
_output_shapes
:`*
T0*/
_class%
#!loc:@rconv4/norm1/moving_variance
�
save/Assign_90Assign#rconv4/norm1/moving_variance/biasedsave/RestoreV2:90*
_output_shapes
:`*
T0*/
_class%
#!loc:@rconv4/norm1/moving_variance
�
save/Assign_91Assign'rconv4/norm1/moving_variance/local_stepsave/RestoreV2:91*
T0*/
_class%
#!loc:@rconv4/norm1/moving_variance*
_output_shapes
: 
�
save/Assign_92Assignrconv4/norm2/betasave/RestoreV2:92*
T0*$
_class
loc:@rconv4/norm2/beta*
_output_shapes
:`
�
save/Assign_93Assignrconv4/norm2/moving_meansave/RestoreV2:93*
T0*+
_class!
loc:@rconv4/norm2/moving_mean*
_output_shapes
:`
�
save/Assign_94Assignrconv4/norm2/moving_mean/biasedsave/RestoreV2:94*
_output_shapes
:`*
T0*+
_class!
loc:@rconv4/norm2/moving_mean
�
save/Assign_95Assign#rconv4/norm2/moving_mean/local_stepsave/RestoreV2:95*
_output_shapes
: *
T0*+
_class!
loc:@rconv4/norm2/moving_mean
�
save/Assign_96Assignrconv4/norm2/moving_variancesave/RestoreV2:96*
T0*/
_class%
#!loc:@rconv4/norm2/moving_variance*
_output_shapes
:`
�
save/Assign_97Assign#rconv4/norm2/moving_variance/biasedsave/RestoreV2:97*
_output_shapes
:`*
T0*/
_class%
#!loc:@rconv4/norm2/moving_variance
�
save/Assign_98Assign'rconv4/norm2/moving_variance/local_stepsave/RestoreV2:98*
T0*/
_class%
#!loc:@rconv4/norm2/moving_variance*
_output_shapes
: 
�
save/Assign_99Assign	rconv4/w1save/RestoreV2:99*
T0*
_class
loc:@rconv4/w1*&
_output_shapes
:``
�
save/Assign_100Assign	rconv4/w2save/RestoreV2:100*
_class
loc:@rconv4/w2*&
_output_shapes
:``*
T0
�
save/Assign_101Assignrconv5/norm1/betasave/RestoreV2:101*$
_class
loc:@rconv5/norm1/beta*
_output_shapes
:`*
T0
�
save/Assign_102Assignrconv5/norm1/moving_meansave/RestoreV2:102*
T0*+
_class!
loc:@rconv5/norm1/moving_mean*
_output_shapes
:`
�
save/Assign_103Assignrconv5/norm1/moving_mean/biasedsave/RestoreV2:103*
_output_shapes
:`*
T0*+
_class!
loc:@rconv5/norm1/moving_mean
�
save/Assign_104Assign#rconv5/norm1/moving_mean/local_stepsave/RestoreV2:104*
_output_shapes
: *
T0*+
_class!
loc:@rconv5/norm1/moving_mean
�
save/Assign_105Assignrconv5/norm1/moving_variancesave/RestoreV2:105*
T0*/
_class%
#!loc:@rconv5/norm1/moving_variance*
_output_shapes
:`
�
save/Assign_106Assign#rconv5/norm1/moving_variance/biasedsave/RestoreV2:106*
T0*/
_class%
#!loc:@rconv5/norm1/moving_variance*
_output_shapes
:`
�
save/Assign_107Assign'rconv5/norm1/moving_variance/local_stepsave/RestoreV2:107*
T0*/
_class%
#!loc:@rconv5/norm1/moving_variance*
_output_shapes
: 
�
save/Assign_108Assignrconv5/norm1b/betasave/RestoreV2:108*
T0*%
_class
loc:@rconv5/norm1b/beta*
_output_shapes
: 
�
save/Assign_109Assignrconv5/norm1b/moving_meansave/RestoreV2:109*
T0*,
_class"
 loc:@rconv5/norm1b/moving_mean*
_output_shapes
: 
�
save/Assign_110Assign rconv5/norm1b/moving_mean/biasedsave/RestoreV2:110*
T0*,
_class"
 loc:@rconv5/norm1b/moving_mean*
_output_shapes
: 
�
save/Assign_111Assign$rconv5/norm1b/moving_mean/local_stepsave/RestoreV2:111*
T0*,
_class"
 loc:@rconv5/norm1b/moving_mean*
_output_shapes
: 
�
save/Assign_112Assignrconv5/norm1b/moving_variancesave/RestoreV2:112*
T0*0
_class&
$"loc:@rconv5/norm1b/moving_variance*
_output_shapes
: 
�
save/Assign_113Assign$rconv5/norm1b/moving_variance/biasedsave/RestoreV2:113*
T0*0
_class&
$"loc:@rconv5/norm1b/moving_variance*
_output_shapes
: 
�
save/Assign_114Assign(rconv5/norm1b/moving_variance/local_stepsave/RestoreV2:114*
T0*0
_class&
$"loc:@rconv5/norm1b/moving_variance*
_output_shapes
: 
�
save/Assign_115Assignrconv5/norm2/betasave/RestoreV2:115*
T0*$
_class
loc:@rconv5/norm2/beta*
_output_shapes
:@
�
save/Assign_116Assignrconv5/norm2/moving_meansave/RestoreV2:116*
T0*+
_class!
loc:@rconv5/norm2/moving_mean*
_output_shapes
:@
�
save/Assign_117Assignrconv5/norm2/moving_mean/biasedsave/RestoreV2:117*
T0*+
_class!
loc:@rconv5/norm2/moving_mean*
_output_shapes
:@
�
save/Assign_118Assign#rconv5/norm2/moving_mean/local_stepsave/RestoreV2:118*
T0*+
_class!
loc:@rconv5/norm2/moving_mean*
_output_shapes
: 
�
save/Assign_119Assignrconv5/norm2/moving_variancesave/RestoreV2:119*
_output_shapes
:@*
T0*/
_class%
#!loc:@rconv5/norm2/moving_variance
�
save/Assign_120Assign#rconv5/norm2/moving_variance/biasedsave/RestoreV2:120*/
_class%
#!loc:@rconv5/norm2/moving_variance*
_output_shapes
:@*
T0
�
save/Assign_121Assign'rconv5/norm2/moving_variance/local_stepsave/RestoreV2:121*
T0*/
_class%
#!loc:@rconv5/norm2/moving_variance*
_output_shapes
: 
�
save/Assign_122Assign
rconv5/w1asave/RestoreV2:122*
T0*
_class
loc:@rconv5/w1a*&
_output_shapes
:`@
�
save/Assign_123Assign
rconv5/w1bsave/RestoreV2:123*&
_output_shapes
:` *
T0*
_class
loc:@rconv5/w1b
�
save/Assign_124Assign
rconv5/w1rsave/RestoreV2:124*
T0*
_class
loc:@rconv5/w1r*
_output_shapes

:`@
�
save/Assign_125Assign	rconv5/w2save/RestoreV2:125*&
_output_shapes
:@`*
T0*
_class
loc:@rconv5/w2
�
save/Assign_126Assignrconv6/norm1/betasave/RestoreV2:126*
T0*$
_class
loc:@rconv6/norm1/beta*
_output_shapes
:`
�
save/Assign_127Assignrconv6/norm1/moving_meansave/RestoreV2:127*
_output_shapes
:`*
T0*+
_class!
loc:@rconv6/norm1/moving_mean
�
save/Assign_128Assignrconv6/norm1/moving_mean/biasedsave/RestoreV2:128*+
_class!
loc:@rconv6/norm1/moving_mean*
_output_shapes
:`*
T0
�
save/Assign_129Assign#rconv6/norm1/moving_mean/local_stepsave/RestoreV2:129*
_output_shapes
: *
T0*+
_class!
loc:@rconv6/norm1/moving_mean
�
save/Assign_130Assignrconv6/norm1/moving_variancesave/RestoreV2:130*
T0*/
_class%
#!loc:@rconv6/norm1/moving_variance*
_output_shapes
:`
�
save/Assign_131Assign#rconv6/norm1/moving_variance/biasedsave/RestoreV2:131*
T0*/
_class%
#!loc:@rconv6/norm1/moving_variance*
_output_shapes
:`
�
save/Assign_132Assign'rconv6/norm1/moving_variance/local_stepsave/RestoreV2:132*
T0*/
_class%
#!loc:@rconv6/norm1/moving_variance*
_output_shapes
: 
�
save/Assign_133Assignrconv6/norm2/betasave/RestoreV2:133*
T0*$
_class
loc:@rconv6/norm2/beta*
_output_shapes
:`
�
save/Assign_134Assignrconv6/norm2/moving_meansave/RestoreV2:134*
_output_shapes
:`*
T0*+
_class!
loc:@rconv6/norm2/moving_mean
�
save/Assign_135Assignrconv6/norm2/moving_mean/biasedsave/RestoreV2:135*
_output_shapes
:`*
T0*+
_class!
loc:@rconv6/norm2/moving_mean
�
save/Assign_136Assign#rconv6/norm2/moving_mean/local_stepsave/RestoreV2:136*
_output_shapes
: *
T0*+
_class!
loc:@rconv6/norm2/moving_mean
�
save/Assign_137Assignrconv6/norm2/moving_variancesave/RestoreV2:137*
_output_shapes
:`*
T0*/
_class%
#!loc:@rconv6/norm2/moving_variance
�
save/Assign_138Assign#rconv6/norm2/moving_variance/biasedsave/RestoreV2:138*
T0*/
_class%
#!loc:@rconv6/norm2/moving_variance*
_output_shapes
:`
�
save/Assign_139Assign'rconv6/norm2/moving_variance/local_stepsave/RestoreV2:139*
T0*/
_class%
#!loc:@rconv6/norm2/moving_variance*
_output_shapes
: 
�
save/Assign_140Assign	rconv6/w1save/RestoreV2:140*&
_output_shapes
:``*
T0*
_class
loc:@rconv6/w1
�
save/Assign_141Assign	rconv6/w2save/RestoreV2:141*
T0*
_class
loc:@rconv6/w2*&
_output_shapes
:``
s
save/Assign_142Assignsb2/bsave/RestoreV2:142*
T0*
_class

loc:@sb2/b*
_output_shapes
:0
w
save/Assign_143Assignsb2/wsave/RestoreV2:143*
T0*
_class

loc:@sb2/w*
_output_shapes

:`0
�
save/Assign_144Assignsb2_offset/wsave/RestoreV2:144*
_class
loc:@sb2_offset/w*
_output_shapes

:0*
T0
�
save/Assign_145Assignsb2_parity/wsave/RestoreV2:145*
T0*
_class
loc:@sb2_parity/w*
_output_shapes

:0
w
save/Assign_146Assignsb3/wsave/RestoreV2:146*
T0*
_class

loc:@sb3/w*
_output_shapes

:0
}
save/Assign_147Assign
sbscale2/bsave/RestoreV2:147*
T0*
_class
loc:@sbscale2/b*
_output_shapes
:0
�
save/Assign_148Assign
sbscale2/wsave/RestoreV2:148*
_class
loc:@sbscale2/w*
_output_shapes

:`0*
T0
�
save/Assign_149Assign
sbscale3/wsave/RestoreV2:149*
T0*
_class
loc:@sbscale3/w*
_output_shapes

:0
�
save/Assign_150Assigntrunk/norm/betasave/RestoreV2:150*
T0*"
_class
loc:@trunk/norm/beta*
_output_shapes
:`
�
save/Assign_151Assigntrunk/norm/moving_meansave/RestoreV2:151*
T0*)
_class
loc:@trunk/norm/moving_mean*
_output_shapes
:`
�
save/Assign_152Assigntrunk/norm/moving_mean/biasedsave/RestoreV2:152*
T0*)
_class
loc:@trunk/norm/moving_mean*
_output_shapes
:`
�
save/Assign_153Assign!trunk/norm/moving_mean/local_stepsave/RestoreV2:153*
T0*)
_class
loc:@trunk/norm/moving_mean*
_output_shapes
: 
�
save/Assign_154Assigntrunk/norm/moving_variancesave/RestoreV2:154*
_output_shapes
:`*
T0*-
_class#
!loc:@trunk/norm/moving_variance
�
save/Assign_155Assign!trunk/norm/moving_variance/biasedsave/RestoreV2:155*
T0*-
_class#
!loc:@trunk/norm/moving_variance*
_output_shapes
:`
�
save/Assign_156Assign%trunk/norm/moving_variance/local_stepsave/RestoreV2:156*
T0*-
_class#
!loc:@trunk/norm/moving_variance*
_output_shapes
: 
�
save/Assign_157Assignv1/norm/betasave/RestoreV2:157*
_class
loc:@v1/norm/beta*
_output_shapes
: *
T0
�
save/Assign_158Assignv1/norm/moving_meansave/RestoreV2:158*
T0*&
_class
loc:@v1/norm/moving_mean*
_output_shapes
: 
�
save/Assign_159Assignv1/norm/moving_mean/biasedsave/RestoreV2:159*
T0*&
_class
loc:@v1/norm/moving_mean*
_output_shapes
: 
�
save/Assign_160Assignv1/norm/moving_mean/local_stepsave/RestoreV2:160*
T0*&
_class
loc:@v1/norm/moving_mean*
_output_shapes
: 
�
save/Assign_161Assignv1/norm/moving_variancesave/RestoreV2:161*
T0**
_class 
loc:@v1/norm/moving_variance*
_output_shapes
: 
�
save/Assign_162Assignv1/norm/moving_variance/biasedsave/RestoreV2:162*
T0**
_class 
loc:@v1/norm/moving_variance*
_output_shapes
: 
�
save/Assign_163Assign"v1/norm/moving_variance/local_stepsave/RestoreV2:163*
T0**
_class 
loc:@v1/norm/moving_variance*
_output_shapes
: 
}
save/Assign_164Assignv1/wsave/RestoreV2:164*
T0*
_class
	loc:@v1/w*&
_output_shapes
:` 
q
save/Assign_165Assignv2/bsave/RestoreV2:165*
T0*
_class
	loc:@v2/b*
_output_shapes
:0
u
save/Assign_166Assignv2/wsave/RestoreV2:166*
_output_shapes

:`0*
T0*
_class
	loc:@v2/w
q
save/Assign_167Assignv3/bsave/RestoreV2:167*
T0*
_class
	loc:@v3/b*
_output_shapes
:
u
save/Assign_168Assignv3/wsave/RestoreV2:168*
_output_shapes

:0*
T0*
_class
	loc:@v3/w
�
save/Assign_169Assignvownership/wsave/RestoreV2:169*
T0*
_class
loc:@vownership/w*&
_output_shapes
: 
�
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_100^save/Assign_101^save/Assign_102^save/Assign_103^save/Assign_104^save/Assign_105^save/Assign_106^save/Assign_107^save/Assign_108^save/Assign_109^save/Assign_11^save/Assign_110^save/Assign_111^save/Assign_112^save/Assign_113^save/Assign_114^save/Assign_115^save/Assign_116^save/Assign_117^save/Assign_118^save/Assign_119^save/Assign_12^save/Assign_120^save/Assign_121^save/Assign_122^save/Assign_123^save/Assign_124^save/Assign_125^save/Assign_126^save/Assign_127^save/Assign_128^save/Assign_129^save/Assign_13^save/Assign_130^save/Assign_131^save/Assign_132^save/Assign_133^save/Assign_134^save/Assign_135^save/Assign_136^save/Assign_137^save/Assign_138^save/Assign_139^save/Assign_14^save/Assign_140^save/Assign_141^save/Assign_142^save/Assign_143^save/Assign_144^save/Assign_145^save/Assign_146^save/Assign_147^save/Assign_148^save/Assign_149^save/Assign_15^save/Assign_150^save/Assign_151^save/Assign_152^save/Assign_153^save/Assign_154^save/Assign_155^save/Assign_156^save/Assign_157^save/Assign_158^save/Assign_159^save/Assign_16^save/Assign_160^save/Assign_161^save/Assign_162^save/Assign_163^save/Assign_164^save/Assign_165^save/Assign_166^save/Assign_167^save/Assign_168^save/Assign_169^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_4^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_43^save/Assign_44^save/Assign_45^save/Assign_46^save/Assign_47^save/Assign_48^save/Assign_49^save/Assign_5^save/Assign_50^save/Assign_51^save/Assign_52^save/Assign_53^save/Assign_54^save/Assign_55^save/Assign_56^save/Assign_57^save/Assign_58^save/Assign_59^save/Assign_6^save/Assign_60^save/Assign_61^save/Assign_62^save/Assign_63^save/Assign_64^save/Assign_65^save/Assign_66^save/Assign_67^save/Assign_68^save/Assign_69^save/Assign_7^save/Assign_70^save/Assign_71^save/Assign_72^save/Assign_73^save/Assign_74^save/Assign_75^save/Assign_76^save/Assign_77^save/Assign_78^save/Assign_79^save/Assign_8^save/Assign_80^save/Assign_81^save/Assign_82^save/Assign_83^save/Assign_84^save/Assign_85^save/Assign_86^save/Assign_87^save/Assign_88^save/Assign_89^save/Assign_9^save/Assign_90^save/Assign_91^save/Assign_92^save/Assign_93^save/Assign_94^save/Assign_95^save/Assign_96^save/Assign_97^save/Assign_98^save/Assign_99
-
save/restore_allNoOp^save/restore_shard"<
save/Const:0save/Identity:0save/restore_all (5 @F8"� 
trainable_variables� � 
6
	conv1/w:0conv1/w/Assignconv1/w/read:02mul_1:08
6
	ginputw:0ginputw/Assignginputw/read:02mul_2:08
V
rconv1/norm1/beta:0rconv1/norm1/beta/Assignrconv1/norm1/beta/read:02	zeros_2:08
<
rconv1/w1:0rconv1/w1/Assignrconv1/w1/read:02mul_6:08
V
rconv1/norm2/beta:0rconv1/norm2/beta/Assignrconv1/norm2/beta/read:02	zeros_4:08
=
rconv1/w2:0rconv1/w2/Assignrconv1/w2/read:02mul_10:08
V
rconv2/norm1/beta:0rconv2/norm1/beta/Assignrconv2/norm1/beta/read:02	zeros_6:08
=
rconv2/w1:0rconv2/w1/Assignrconv2/w1/read:02mul_14:08
V
rconv2/norm2/beta:0rconv2/norm2/beta/Assignrconv2/norm2/beta/read:02	zeros_8:08
=
rconv2/w2:0rconv2/w2/Assignrconv2/w2/read:02mul_18:08
W
rconv3/norm1/beta:0rconv3/norm1/beta/Assignrconv3/norm1/beta/read:02
zeros_10:08
@
rconv3/w1a:0rconv3/w1a/Assignrconv3/w1a/read:02mul_22:08
@
rconv3/w1b:0rconv3/w1b/Assignrconv3/w1b/read:02mul_23:08
Z
rconv3/norm1b/beta:0rconv3/norm1b/beta/Assignrconv3/norm1b/beta/read:02
zeros_12:08
@
rconv3/w1r:0rconv3/w1r/Assignrconv3/w1r/read:02mul_28:08
W
rconv3/norm2/beta:0rconv3/norm2/beta/Assignrconv3/norm2/beta/read:02
zeros_14:08
=
rconv3/w2:0rconv3/w2/Assignrconv3/w2/read:02mul_32:08
W
rconv4/norm1/beta:0rconv4/norm1/beta/Assignrconv4/norm1/beta/read:02
zeros_16:08
=
rconv4/w1:0rconv4/w1/Assignrconv4/w1/read:02mul_36:08
W
rconv4/norm2/beta:0rconv4/norm2/beta/Assignrconv4/norm2/beta/read:02
zeros_18:08
=
rconv4/w2:0rconv4/w2/Assignrconv4/w2/read:02mul_40:08
W
rconv5/norm1/beta:0rconv5/norm1/beta/Assignrconv5/norm1/beta/read:02
zeros_20:08
@
rconv5/w1a:0rconv5/w1a/Assignrconv5/w1a/read:02mul_44:08
@
rconv5/w1b:0rconv5/w1b/Assignrconv5/w1b/read:02mul_45:08
Z
rconv5/norm1b/beta:0rconv5/norm1b/beta/Assignrconv5/norm1b/beta/read:02
zeros_22:08
@
rconv5/w1r:0rconv5/w1r/Assignrconv5/w1r/read:02mul_50:08
W
rconv5/norm2/beta:0rconv5/norm2/beta/Assignrconv5/norm2/beta/read:02
zeros_24:08
=
rconv5/w2:0rconv5/w2/Assignrconv5/w2/read:02mul_54:08
W
rconv6/norm1/beta:0rconv6/norm1/beta/Assignrconv6/norm1/beta/read:02
zeros_26:08
=
rconv6/w1:0rconv6/w1/Assignrconv6/w1/read:02mul_58:08
W
rconv6/norm2/beta:0rconv6/norm2/beta/Assignrconv6/norm2/beta/read:02
zeros_28:08
=
rconv6/w2:0rconv6/w2/Assignrconv6/w2/read:02mul_62:08
Q
trunk/norm/beta:0trunk/norm/beta/Assigntrunk/norm/beta/read:02
zeros_30:08
d
p1/intermediate_conv/w:0p1/intermediate_conv/w/Assignp1/intermediate_conv/w/read:02mul_66:08
.
g1/w:0g1/w/Assigng1/w/read:02mul_67:08
H
g1/norm/beta:0g1/norm/beta/Assigng1/norm/beta/read:02
zeros_32:08
=
matmulg2w:0matmulg2w/Assignmatmulg2w/read:02mul_72:08
H
p1/norm/beta:0p1/norm/beta/Assignp1/norm/beta/read:02
zeros_34:08
.
p2/w:0p2/w/Assignp2/w/read:02mul_76:08
@
matmulpass:0matmulpass/Assignmatmulpass/read:02mul_78:08
.
v1/w:0v1/w/Assignv1/w/read:02mul_79:08
H
v1/norm/beta:0v1/norm/beta/Assignv1/norm/beta/read:02
zeros_36:08
.
v2/w:0v2/w/Assignv2/w/read:02mul_85:08
.
v2/b:0v2/b/Assignv2/b/read:02mul_86:08
.
v3/w:0v3/w/Assignv3/w/read:02mul_87:08
.
v3/b:0v3/b/Assignv3/b/read:02mul_88:08
1
mv3/w:0mv3/w/Assignmv3/w/read:02mul_89:08
1
mv3/b:0mv3/b/Assignmv3/b/read:02mul_90:08
1
sb2/w:0sb2/w/Assignsb2/w/read:02mul_91:08
1
sb2/b:0sb2/b/Assignsb2/b/read:02mul_92:08
F
sb2_offset/w:0sb2_offset/w/Assignsb2_offset/w/read:02mul_94:08
F
sb2_parity/w:0sb2_parity/w/Assignsb2_parity/w/read:02mul_95:08
@
sbscale2/w:0sbscale2/w/Assignsbscale2/w/read:02mul_96:08
@
sbscale2/b:0sbscale2/b/Assignsbscale2/b/read:02mul_97:08
1
sb3/w:0sb3/w/Assignsb3/w/read:02mul_98:08
@
sbscale3/w:0sbscale3/w/Assignsbscale3/w/read:02mul_99:08
2
bb2/w:0bb2/w/Assignbb2/w/read:02	mul_101:08
2
bb2/b:0bb2/b/Assignbb2/b/read:02	mul_102:08
G
bb2_offset/w:0bb2_offset/w/Assignbb2_offset/w/read:02	mul_103:08
2
bb3/w:0bb3/w/Assignbb3/w/read:02	mul_104:08
G
vownership/w:0vownership/w/Assignvownership/w/read:02	mul_105:08"Ч
	variables����
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0
6
	conv1/w:0conv1/w/Assignconv1/w/read:02mul_1:08
6
	ginputw:0ginputw/Assignginputw/read:02mul_2:08
i
rconv1/norm1/moving_mean:0rconv1/norm1/moving_mean/Assignrconv1/norm1/moving_mean/read:02	zeros_1:0
r
rconv1/norm1/moving_variance:0#rconv1/norm1/moving_variance/Assign#rconv1/norm1/moving_variance/read:02ones:0
V
rconv1/norm1/beta:0rconv1/norm1/beta/Assignrconv1/norm1/beta/read:02	zeros_2:08
�
!rconv1/norm1/moving_mean/biased:0&rconv1/norm1/moving_mean/biased/Assign&rconv1/norm1/moving_mean/biased/read:020AssignMovingAvg/rconv1/norm1/moving_mean/zeros:0
�
%rconv1/norm1/moving_mean/local_step:0*rconv1/norm1/moving_mean/local_step/Assign*rconv1/norm1/moving_mean/local_step/read:027rconv1/norm1/moving_mean/local_step/Initializer/zeros:0
�
%rconv1/norm1/moving_variance/biased:0*rconv1/norm1/moving_variance/biased/Assign*rconv1/norm1/moving_variance/biased/read:026AssignMovingAvg_1/rconv1/norm1/moving_variance/zeros:0
�
)rconv1/norm1/moving_variance/local_step:0.rconv1/norm1/moving_variance/local_step/Assign.rconv1/norm1/moving_variance/local_step/read:02;rconv1/norm1/moving_variance/local_step/Initializer/zeros:0
<
rconv1/w1:0rconv1/w1/Assignrconv1/w1/read:02mul_6:08
i
rconv1/norm2/moving_mean:0rconv1/norm2/moving_mean/Assignrconv1/norm2/moving_mean/read:02	zeros_3:0
t
rconv1/norm2/moving_variance:0#rconv1/norm2/moving_variance/Assign#rconv1/norm2/moving_variance/read:02ones_1:0
V
rconv1/norm2/beta:0rconv1/norm2/beta/Assignrconv1/norm2/beta/read:02	zeros_4:08
�
!rconv1/norm2/moving_mean/biased:0&rconv1/norm2/moving_mean/biased/Assign&rconv1/norm2/moving_mean/biased/read:022AssignMovingAvg_2/rconv1/norm2/moving_mean/zeros:0
�
%rconv1/norm2/moving_mean/local_step:0*rconv1/norm2/moving_mean/local_step/Assign*rconv1/norm2/moving_mean/local_step/read:027rconv1/norm2/moving_mean/local_step/Initializer/zeros:0
�
%rconv1/norm2/moving_variance/biased:0*rconv1/norm2/moving_variance/biased/Assign*rconv1/norm2/moving_variance/biased/read:026AssignMovingAvg_3/rconv1/norm2/moving_variance/zeros:0
�
)rconv1/norm2/moving_variance/local_step:0.rconv1/norm2/moving_variance/local_step/Assign.rconv1/norm2/moving_variance/local_step/read:02;rconv1/norm2/moving_variance/local_step/Initializer/zeros:0
=
rconv1/w2:0rconv1/w2/Assignrconv1/w2/read:02mul_10:08
i
rconv2/norm1/moving_mean:0rconv2/norm1/moving_mean/Assignrconv2/norm1/moving_mean/read:02	zeros_5:0
t
rconv2/norm1/moving_variance:0#rconv2/norm1/moving_variance/Assign#rconv2/norm1/moving_variance/read:02ones_2:0
V
rconv2/norm1/beta:0rconv2/norm1/beta/Assignrconv2/norm1/beta/read:02	zeros_6:08
�
!rconv2/norm1/moving_mean/biased:0&rconv2/norm1/moving_mean/biased/Assign&rconv2/norm1/moving_mean/biased/read:022AssignMovingAvg_4/rconv2/norm1/moving_mean/zeros:0
�
%rconv2/norm1/moving_mean/local_step:0*rconv2/norm1/moving_mean/local_step/Assign*rconv2/norm1/moving_mean/local_step/read:027rconv2/norm1/moving_mean/local_step/Initializer/zeros:0
�
%rconv2/norm1/moving_variance/biased:0*rconv2/norm1/moving_variance/biased/Assign*rconv2/norm1/moving_variance/biased/read:026AssignMovingAvg_5/rconv2/norm1/moving_variance/zeros:0
�
)rconv2/norm1/moving_variance/local_step:0.rconv2/norm1/moving_variance/local_step/Assign.rconv2/norm1/moving_variance/local_step/read:02;rconv2/norm1/moving_variance/local_step/Initializer/zeros:0
=
rconv2/w1:0rconv2/w1/Assignrconv2/w1/read:02mul_14:08
i
rconv2/norm2/moving_mean:0rconv2/norm2/moving_mean/Assignrconv2/norm2/moving_mean/read:02	zeros_7:0
t
rconv2/norm2/moving_variance:0#rconv2/norm2/moving_variance/Assign#rconv2/norm2/moving_variance/read:02ones_3:0
V
rconv2/norm2/beta:0rconv2/norm2/beta/Assignrconv2/norm2/beta/read:02	zeros_8:08
�
!rconv2/norm2/moving_mean/biased:0&rconv2/norm2/moving_mean/biased/Assign&rconv2/norm2/moving_mean/biased/read:022AssignMovingAvg_6/rconv2/norm2/moving_mean/zeros:0
�
%rconv2/norm2/moving_mean/local_step:0*rconv2/norm2/moving_mean/local_step/Assign*rconv2/norm2/moving_mean/local_step/read:027rconv2/norm2/moving_mean/local_step/Initializer/zeros:0
�
%rconv2/norm2/moving_variance/biased:0*rconv2/norm2/moving_variance/biased/Assign*rconv2/norm2/moving_variance/biased/read:026AssignMovingAvg_7/rconv2/norm2/moving_variance/zeros:0
�
)rconv2/norm2/moving_variance/local_step:0.rconv2/norm2/moving_variance/local_step/Assign.rconv2/norm2/moving_variance/local_step/read:02;rconv2/norm2/moving_variance/local_step/Initializer/zeros:0
=
rconv2/w2:0rconv2/w2/Assignrconv2/w2/read:02mul_18:08
i
rconv3/norm1/moving_mean:0rconv3/norm1/moving_mean/Assignrconv3/norm1/moving_mean/read:02	zeros_9:0
t
rconv3/norm1/moving_variance:0#rconv3/norm1/moving_variance/Assign#rconv3/norm1/moving_variance/read:02ones_4:0
W
rconv3/norm1/beta:0rconv3/norm1/beta/Assignrconv3/norm1/beta/read:02
zeros_10:08
�
!rconv3/norm1/moving_mean/biased:0&rconv3/norm1/moving_mean/biased/Assign&rconv3/norm1/moving_mean/biased/read:022AssignMovingAvg_8/rconv3/norm1/moving_mean/zeros:0
�
%rconv3/norm1/moving_mean/local_step:0*rconv3/norm1/moving_mean/local_step/Assign*rconv3/norm1/moving_mean/local_step/read:027rconv3/norm1/moving_mean/local_step/Initializer/zeros:0
�
%rconv3/norm1/moving_variance/biased:0*rconv3/norm1/moving_variance/biased/Assign*rconv3/norm1/moving_variance/biased/read:026AssignMovingAvg_9/rconv3/norm1/moving_variance/zeros:0
�
)rconv3/norm1/moving_variance/local_step:0.rconv3/norm1/moving_variance/local_step/Assign.rconv3/norm1/moving_variance/local_step/read:02;rconv3/norm1/moving_variance/local_step/Initializer/zeros:0
@
rconv3/w1a:0rconv3/w1a/Assignrconv3/w1a/read:02mul_22:08
@
rconv3/w1b:0rconv3/w1b/Assignrconv3/w1b/read:02mul_23:08
m
rconv3/norm1b/moving_mean:0 rconv3/norm1b/moving_mean/Assign rconv3/norm1b/moving_mean/read:02
zeros_11:0
w
rconv3/norm1b/moving_variance:0$rconv3/norm1b/moving_variance/Assign$rconv3/norm1b/moving_variance/read:02ones_5:0
Z
rconv3/norm1b/beta:0rconv3/norm1b/beta/Assignrconv3/norm1b/beta/read:02
zeros_12:08
�
"rconv3/norm1b/moving_mean/biased:0'rconv3/norm1b/moving_mean/biased/Assign'rconv3/norm1b/moving_mean/biased/read:024AssignMovingAvg_10/rconv3/norm1b/moving_mean/zeros:0
�
&rconv3/norm1b/moving_mean/local_step:0+rconv3/norm1b/moving_mean/local_step/Assign+rconv3/norm1b/moving_mean/local_step/read:028rconv3/norm1b/moving_mean/local_step/Initializer/zeros:0
�
&rconv3/norm1b/moving_variance/biased:0+rconv3/norm1b/moving_variance/biased/Assign+rconv3/norm1b/moving_variance/biased/read:028AssignMovingAvg_11/rconv3/norm1b/moving_variance/zeros:0
�
*rconv3/norm1b/moving_variance/local_step:0/rconv3/norm1b/moving_variance/local_step/Assign/rconv3/norm1b/moving_variance/local_step/read:02<rconv3/norm1b/moving_variance/local_step/Initializer/zeros:0
@
rconv3/w1r:0rconv3/w1r/Assignrconv3/w1r/read:02mul_28:08
j
rconv3/norm2/moving_mean:0rconv3/norm2/moving_mean/Assignrconv3/norm2/moving_mean/read:02
zeros_13:0
t
rconv3/norm2/moving_variance:0#rconv3/norm2/moving_variance/Assign#rconv3/norm2/moving_variance/read:02ones_6:0
W
rconv3/norm2/beta:0rconv3/norm2/beta/Assignrconv3/norm2/beta/read:02
zeros_14:08
�
!rconv3/norm2/moving_mean/biased:0&rconv3/norm2/moving_mean/biased/Assign&rconv3/norm2/moving_mean/biased/read:023AssignMovingAvg_12/rconv3/norm2/moving_mean/zeros:0
�
%rconv3/norm2/moving_mean/local_step:0*rconv3/norm2/moving_mean/local_step/Assign*rconv3/norm2/moving_mean/local_step/read:027rconv3/norm2/moving_mean/local_step/Initializer/zeros:0
�
%rconv3/norm2/moving_variance/biased:0*rconv3/norm2/moving_variance/biased/Assign*rconv3/norm2/moving_variance/biased/read:027AssignMovingAvg_13/rconv3/norm2/moving_variance/zeros:0
�
)rconv3/norm2/moving_variance/local_step:0.rconv3/norm2/moving_variance/local_step/Assign.rconv3/norm2/moving_variance/local_step/read:02;rconv3/norm2/moving_variance/local_step/Initializer/zeros:0
=
rconv3/w2:0rconv3/w2/Assignrconv3/w2/read:02mul_32:08
j
rconv4/norm1/moving_mean:0rconv4/norm1/moving_mean/Assignrconv4/norm1/moving_mean/read:02
zeros_15:0
t
rconv4/norm1/moving_variance:0#rconv4/norm1/moving_variance/Assign#rconv4/norm1/moving_variance/read:02ones_7:0
W
rconv4/norm1/beta:0rconv4/norm1/beta/Assignrconv4/norm1/beta/read:02
zeros_16:08
�
!rconv4/norm1/moving_mean/biased:0&rconv4/norm1/moving_mean/biased/Assign&rconv4/norm1/moving_mean/biased/read:023AssignMovingAvg_14/rconv4/norm1/moving_mean/zeros:0
�
%rconv4/norm1/moving_mean/local_step:0*rconv4/norm1/moving_mean/local_step/Assign*rconv4/norm1/moving_mean/local_step/read:027rconv4/norm1/moving_mean/local_step/Initializer/zeros:0
�
%rconv4/norm1/moving_variance/biased:0*rconv4/norm1/moving_variance/biased/Assign*rconv4/norm1/moving_variance/biased/read:027AssignMovingAvg_15/rconv4/norm1/moving_variance/zeros:0
�
)rconv4/norm1/moving_variance/local_step:0.rconv4/norm1/moving_variance/local_step/Assign.rconv4/norm1/moving_variance/local_step/read:02;rconv4/norm1/moving_variance/local_step/Initializer/zeros:0
=
rconv4/w1:0rconv4/w1/Assignrconv4/w1/read:02mul_36:08
j
rconv4/norm2/moving_mean:0rconv4/norm2/moving_mean/Assignrconv4/norm2/moving_mean/read:02
zeros_17:0
t
rconv4/norm2/moving_variance:0#rconv4/norm2/moving_variance/Assign#rconv4/norm2/moving_variance/read:02ones_8:0
W
rconv4/norm2/beta:0rconv4/norm2/beta/Assignrconv4/norm2/beta/read:02
zeros_18:08
�
!rconv4/norm2/moving_mean/biased:0&rconv4/norm2/moving_mean/biased/Assign&rconv4/norm2/moving_mean/biased/read:023AssignMovingAvg_16/rconv4/norm2/moving_mean/zeros:0
�
%rconv4/norm2/moving_mean/local_step:0*rconv4/norm2/moving_mean/local_step/Assign*rconv4/norm2/moving_mean/local_step/read:027rconv4/norm2/moving_mean/local_step/Initializer/zeros:0
�
%rconv4/norm2/moving_variance/biased:0*rconv4/norm2/moving_variance/biased/Assign*rconv4/norm2/moving_variance/biased/read:027AssignMovingAvg_17/rconv4/norm2/moving_variance/zeros:0
�
)rconv4/norm2/moving_variance/local_step:0.rconv4/norm2/moving_variance/local_step/Assign.rconv4/norm2/moving_variance/local_step/read:02;rconv4/norm2/moving_variance/local_step/Initializer/zeros:0
=
rconv4/w2:0rconv4/w2/Assignrconv4/w2/read:02mul_40:08
j
rconv5/norm1/moving_mean:0rconv5/norm1/moving_mean/Assignrconv5/norm1/moving_mean/read:02
zeros_19:0
t
rconv5/norm1/moving_variance:0#rconv5/norm1/moving_variance/Assign#rconv5/norm1/moving_variance/read:02ones_9:0
W
rconv5/norm1/beta:0rconv5/norm1/beta/Assignrconv5/norm1/beta/read:02
zeros_20:08
�
!rconv5/norm1/moving_mean/biased:0&rconv5/norm1/moving_mean/biased/Assign&rconv5/norm1/moving_mean/biased/read:023AssignMovingAvg_18/rconv5/norm1/moving_mean/zeros:0
�
%rconv5/norm1/moving_mean/local_step:0*rconv5/norm1/moving_mean/local_step/Assign*rconv5/norm1/moving_mean/local_step/read:027rconv5/norm1/moving_mean/local_step/Initializer/zeros:0
�
%rconv5/norm1/moving_variance/biased:0*rconv5/norm1/moving_variance/biased/Assign*rconv5/norm1/moving_variance/biased/read:027AssignMovingAvg_19/rconv5/norm1/moving_variance/zeros:0
�
)rconv5/norm1/moving_variance/local_step:0.rconv5/norm1/moving_variance/local_step/Assign.rconv5/norm1/moving_variance/local_step/read:02;rconv5/norm1/moving_variance/local_step/Initializer/zeros:0
@
rconv5/w1a:0rconv5/w1a/Assignrconv5/w1a/read:02mul_44:08
@
rconv5/w1b:0rconv5/w1b/Assignrconv5/w1b/read:02mul_45:08
m
rconv5/norm1b/moving_mean:0 rconv5/norm1b/moving_mean/Assign rconv5/norm1b/moving_mean/read:02
zeros_21:0
x
rconv5/norm1b/moving_variance:0$rconv5/norm1b/moving_variance/Assign$rconv5/norm1b/moving_variance/read:02	ones_10:0
Z
rconv5/norm1b/beta:0rconv5/norm1b/beta/Assignrconv5/norm1b/beta/read:02
zeros_22:08
�
"rconv5/norm1b/moving_mean/biased:0'rconv5/norm1b/moving_mean/biased/Assign'rconv5/norm1b/moving_mean/biased/read:024AssignMovingAvg_20/rconv5/norm1b/moving_mean/zeros:0
�
&rconv5/norm1b/moving_mean/local_step:0+rconv5/norm1b/moving_mean/local_step/Assign+rconv5/norm1b/moving_mean/local_step/read:028rconv5/norm1b/moving_mean/local_step/Initializer/zeros:0
�
&rconv5/norm1b/moving_variance/biased:0+rconv5/norm1b/moving_variance/biased/Assign+rconv5/norm1b/moving_variance/biased/read:028AssignMovingAvg_21/rconv5/norm1b/moving_variance/zeros:0
�
*rconv5/norm1b/moving_variance/local_step:0/rconv5/norm1b/moving_variance/local_step/Assign/rconv5/norm1b/moving_variance/local_step/read:02<rconv5/norm1b/moving_variance/local_step/Initializer/zeros:0
@
rconv5/w1r:0rconv5/w1r/Assignrconv5/w1r/read:02mul_50:08
j
rconv5/norm2/moving_mean:0rconv5/norm2/moving_mean/Assignrconv5/norm2/moving_mean/read:02
zeros_23:0
u
rconv5/norm2/moving_variance:0#rconv5/norm2/moving_variance/Assign#rconv5/norm2/moving_variance/read:02	ones_11:0
W
rconv5/norm2/beta:0rconv5/norm2/beta/Assignrconv5/norm2/beta/read:02
zeros_24:08
�
!rconv5/norm2/moving_mean/biased:0&rconv5/norm2/moving_mean/biased/Assign&rconv5/norm2/moving_mean/biased/read:023AssignMovingAvg_22/rconv5/norm2/moving_mean/zeros:0
�
%rconv5/norm2/moving_mean/local_step:0*rconv5/norm2/moving_mean/local_step/Assign*rconv5/norm2/moving_mean/local_step/read:027rconv5/norm2/moving_mean/local_step/Initializer/zeros:0
�
%rconv5/norm2/moving_variance/biased:0*rconv5/norm2/moving_variance/biased/Assign*rconv5/norm2/moving_variance/biased/read:027AssignMovingAvg_23/rconv5/norm2/moving_variance/zeros:0
�
)rconv5/norm2/moving_variance/local_step:0.rconv5/norm2/moving_variance/local_step/Assign.rconv5/norm2/moving_variance/local_step/read:02;rconv5/norm2/moving_variance/local_step/Initializer/zeros:0
=
rconv5/w2:0rconv5/w2/Assignrconv5/w2/read:02mul_54:08
j
rconv6/norm1/moving_mean:0rconv6/norm1/moving_mean/Assignrconv6/norm1/moving_mean/read:02
zeros_25:0
u
rconv6/norm1/moving_variance:0#rconv6/norm1/moving_variance/Assign#rconv6/norm1/moving_variance/read:02	ones_12:0
W
rconv6/norm1/beta:0rconv6/norm1/beta/Assignrconv6/norm1/beta/read:02
zeros_26:08
�
!rconv6/norm1/moving_mean/biased:0&rconv6/norm1/moving_mean/biased/Assign&rconv6/norm1/moving_mean/biased/read:023AssignMovingAvg_24/rconv6/norm1/moving_mean/zeros:0
�
%rconv6/norm1/moving_mean/local_step:0*rconv6/norm1/moving_mean/local_step/Assign*rconv6/norm1/moving_mean/local_step/read:027rconv6/norm1/moving_mean/local_step/Initializer/zeros:0
�
%rconv6/norm1/moving_variance/biased:0*rconv6/norm1/moving_variance/biased/Assign*rconv6/norm1/moving_variance/biased/read:027AssignMovingAvg_25/rconv6/norm1/moving_variance/zeros:0
�
)rconv6/norm1/moving_variance/local_step:0.rconv6/norm1/moving_variance/local_step/Assign.rconv6/norm1/moving_variance/local_step/read:02;rconv6/norm1/moving_variance/local_step/Initializer/zeros:0
=
rconv6/w1:0rconv6/w1/Assignrconv6/w1/read:02mul_58:08
j
rconv6/norm2/moving_mean:0rconv6/norm2/moving_mean/Assignrconv6/norm2/moving_mean/read:02
zeros_27:0
u
rconv6/norm2/moving_variance:0#rconv6/norm2/moving_variance/Assign#rconv6/norm2/moving_variance/read:02	ones_13:0
W
rconv6/norm2/beta:0rconv6/norm2/beta/Assignrconv6/norm2/beta/read:02
zeros_28:08
�
!rconv6/norm2/moving_mean/biased:0&rconv6/norm2/moving_mean/biased/Assign&rconv6/norm2/moving_mean/biased/read:023AssignMovingAvg_26/rconv6/norm2/moving_mean/zeros:0
�
%rconv6/norm2/moving_mean/local_step:0*rconv6/norm2/moving_mean/local_step/Assign*rconv6/norm2/moving_mean/local_step/read:027rconv6/norm2/moving_mean/local_step/Initializer/zeros:0
�
%rconv6/norm2/moving_variance/biased:0*rconv6/norm2/moving_variance/biased/Assign*rconv6/norm2/moving_variance/biased/read:027AssignMovingAvg_27/rconv6/norm2/moving_variance/zeros:0
�
)rconv6/norm2/moving_variance/local_step:0.rconv6/norm2/moving_variance/local_step/Assign.rconv6/norm2/moving_variance/local_step/read:02;rconv6/norm2/moving_variance/local_step/Initializer/zeros:0
=
rconv6/w2:0rconv6/w2/Assignrconv6/w2/read:02mul_62:08
d
trunk/norm/moving_mean:0trunk/norm/moving_mean/Assigntrunk/norm/moving_mean/read:02
zeros_29:0
o
trunk/norm/moving_variance:0!trunk/norm/moving_variance/Assign!trunk/norm/moving_variance/read:02	ones_14:0
Q
trunk/norm/beta:0trunk/norm/beta/Assigntrunk/norm/beta/read:02
zeros_30:08
�
trunk/norm/moving_mean/biased:0$trunk/norm/moving_mean/biased/Assign$trunk/norm/moving_mean/biased/read:021AssignMovingAvg_28/trunk/norm/moving_mean/zeros:0
�
#trunk/norm/moving_mean/local_step:0(trunk/norm/moving_mean/local_step/Assign(trunk/norm/moving_mean/local_step/read:025trunk/norm/moving_mean/local_step/Initializer/zeros:0
�
#trunk/norm/moving_variance/biased:0(trunk/norm/moving_variance/biased/Assign(trunk/norm/moving_variance/biased/read:025AssignMovingAvg_29/trunk/norm/moving_variance/zeros:0
�
'trunk/norm/moving_variance/local_step:0,trunk/norm/moving_variance/local_step/Assign,trunk/norm/moving_variance/local_step/read:029trunk/norm/moving_variance/local_step/Initializer/zeros:0
d
p1/intermediate_conv/w:0p1/intermediate_conv/w/Assignp1/intermediate_conv/w/read:02mul_66:08
.
g1/w:0g1/w/Assigng1/w/read:02mul_67:08
[
g1/norm/moving_mean:0g1/norm/moving_mean/Assigng1/norm/moving_mean/read:02
zeros_31:0
f
g1/norm/moving_variance:0g1/norm/moving_variance/Assigng1/norm/moving_variance/read:02	ones_15:0
H
g1/norm/beta:0g1/norm/beta/Assigng1/norm/beta/read:02
zeros_32:08
�
g1/norm/moving_mean/biased:0!g1/norm/moving_mean/biased/Assign!g1/norm/moving_mean/biased/read:02.AssignMovingAvg_30/g1/norm/moving_mean/zeros:0
�
 g1/norm/moving_mean/local_step:0%g1/norm/moving_mean/local_step/Assign%g1/norm/moving_mean/local_step/read:022g1/norm/moving_mean/local_step/Initializer/zeros:0
�
 g1/norm/moving_variance/biased:0%g1/norm/moving_variance/biased/Assign%g1/norm/moving_variance/biased/read:022AssignMovingAvg_31/g1/norm/moving_variance/zeros:0
�
$g1/norm/moving_variance/local_step:0)g1/norm/moving_variance/local_step/Assign)g1/norm/moving_variance/local_step/read:026g1/norm/moving_variance/local_step/Initializer/zeros:0
=
matmulg2w:0matmulg2w/Assignmatmulg2w/read:02mul_72:08
[
p1/norm/moving_mean:0p1/norm/moving_mean/Assignp1/norm/moving_mean/read:02
zeros_33:0
f
p1/norm/moving_variance:0p1/norm/moving_variance/Assignp1/norm/moving_variance/read:02	ones_16:0
H
p1/norm/beta:0p1/norm/beta/Assignp1/norm/beta/read:02
zeros_34:08
�
p1/norm/moving_mean/biased:0!p1/norm/moving_mean/biased/Assign!p1/norm/moving_mean/biased/read:02.AssignMovingAvg_32/p1/norm/moving_mean/zeros:0
�
 p1/norm/moving_mean/local_step:0%p1/norm/moving_mean/local_step/Assign%p1/norm/moving_mean/local_step/read:022p1/norm/moving_mean/local_step/Initializer/zeros:0
�
 p1/norm/moving_variance/biased:0%p1/norm/moving_variance/biased/Assign%p1/norm/moving_variance/biased/read:022AssignMovingAvg_33/p1/norm/moving_variance/zeros:0
�
$p1/norm/moving_variance/local_step:0)p1/norm/moving_variance/local_step/Assign)p1/norm/moving_variance/local_step/read:026p1/norm/moving_variance/local_step/Initializer/zeros:0
.
p2/w:0p2/w/Assignp2/w/read:02mul_76:08
@
matmulpass:0matmulpass/Assignmatmulpass/read:02mul_78:08
.
v1/w:0v1/w/Assignv1/w/read:02mul_79:08
[
v1/norm/moving_mean:0v1/norm/moving_mean/Assignv1/norm/moving_mean/read:02
zeros_35:0
f
v1/norm/moving_variance:0v1/norm/moving_variance/Assignv1/norm/moving_variance/read:02	ones_17:0
H
v1/norm/beta:0v1/norm/beta/Assignv1/norm/beta/read:02
zeros_36:08
�
v1/norm/moving_mean/biased:0!v1/norm/moving_mean/biased/Assign!v1/norm/moving_mean/biased/read:02.AssignMovingAvg_34/v1/norm/moving_mean/zeros:0
�
 v1/norm/moving_mean/local_step:0%v1/norm/moving_mean/local_step/Assign%v1/norm/moving_mean/local_step/read:022v1/norm/moving_mean/local_step/Initializer/zeros:0
�
 v1/norm/moving_variance/biased:0%v1/norm/moving_variance/biased/Assign%v1/norm/moving_variance/biased/read:022AssignMovingAvg_35/v1/norm/moving_variance/zeros:0
�
$v1/norm/moving_variance/local_step:0)v1/norm/moving_variance/local_step/Assign)v1/norm/moving_variance/local_step/read:026v1/norm/moving_variance/local_step/Initializer/zeros:0
.
v2/w:0v2/w/Assignv2/w/read:02mul_85:08
.
v2/b:0v2/b/Assignv2/b/read:02mul_86:08
.
v3/w:0v3/w/Assignv3/w/read:02mul_87:08
.
v3/b:0v3/b/Assignv3/b/read:02mul_88:08
1
mv3/w:0mv3/w/Assignmv3/w/read:02mul_89:08
1
mv3/b:0mv3/b/Assignmv3/b/read:02mul_90:08
1
sb2/w:0sb2/w/Assignsb2/w/read:02mul_91:08
1
sb2/b:0sb2/b/Assignsb2/b/read:02mul_92:08
F
sb2_offset/w:0sb2_offset/w/Assignsb2_offset/w/read:02mul_94:08
F
sb2_parity/w:0sb2_parity/w/Assignsb2_parity/w/read:02mul_95:08
@
sbscale2/w:0sbscale2/w/Assignsbscale2/w/read:02mul_96:08
@
sbscale2/b:0sbscale2/b/Assignsbscale2/b/read:02mul_97:08
1
sb3/w:0sb3/w/Assignsb3/w/read:02mul_98:08
@
sbscale3/w:0sbscale3/w/Assignsbscale3/w/read:02mul_99:08
2
bb2/w:0bb2/w/Assignbb2/w/read:02	mul_101:08
2
bb2/b:0bb2/b/Assignbb2/b/read:02	mul_102:08
G
bb2_offset/w:0bb2_offset/w/Assignbb2_offset/w/read:02	mul_103:08
2
bb3/w:0bb3/w/Assignbb3/w/read:02	mul_104:08
G
vownership/w:0vownership/w/Assignvownership/w/read:02	mul_105:08"�
moving_average_variables��
i
rconv1/norm1/moving_mean:0rconv1/norm1/moving_mean/Assignrconv1/norm1/moving_mean/read:02	zeros_1:0
r
rconv1/norm1/moving_variance:0#rconv1/norm1/moving_variance/Assign#rconv1/norm1/moving_variance/read:02ones:0
i
rconv1/norm2/moving_mean:0rconv1/norm2/moving_mean/Assignrconv1/norm2/moving_mean/read:02	zeros_3:0
t
rconv1/norm2/moving_variance:0#rconv1/norm2/moving_variance/Assign#rconv1/norm2/moving_variance/read:02ones_1:0
i
rconv2/norm1/moving_mean:0rconv2/norm1/moving_mean/Assignrconv2/norm1/moving_mean/read:02	zeros_5:0
t
rconv2/norm1/moving_variance:0#rconv2/norm1/moving_variance/Assign#rconv2/norm1/moving_variance/read:02ones_2:0
i
rconv2/norm2/moving_mean:0rconv2/norm2/moving_mean/Assignrconv2/norm2/moving_mean/read:02	zeros_7:0
t
rconv2/norm2/moving_variance:0#rconv2/norm2/moving_variance/Assign#rconv2/norm2/moving_variance/read:02ones_3:0
i
rconv3/norm1/moving_mean:0rconv3/norm1/moving_mean/Assignrconv3/norm1/moving_mean/read:02	zeros_9:0
t
rconv3/norm1/moving_variance:0#rconv3/norm1/moving_variance/Assign#rconv3/norm1/moving_variance/read:02ones_4:0
m
rconv3/norm1b/moving_mean:0 rconv3/norm1b/moving_mean/Assign rconv3/norm1b/moving_mean/read:02
zeros_11:0
w
rconv3/norm1b/moving_variance:0$rconv3/norm1b/moving_variance/Assign$rconv3/norm1b/moving_variance/read:02ones_5:0
j
rconv3/norm2/moving_mean:0rconv3/norm2/moving_mean/Assignrconv3/norm2/moving_mean/read:02
zeros_13:0
t
rconv3/norm2/moving_variance:0#rconv3/norm2/moving_variance/Assign#rconv3/norm2/moving_variance/read:02ones_6:0
j
rconv4/norm1/moving_mean:0rconv4/norm1/moving_mean/Assignrconv4/norm1/moving_mean/read:02
zeros_15:0
t
rconv4/norm1/moving_variance:0#rconv4/norm1/moving_variance/Assign#rconv4/norm1/moving_variance/read:02ones_7:0
j
rconv4/norm2/moving_mean:0rconv4/norm2/moving_mean/Assignrconv4/norm2/moving_mean/read:02
zeros_17:0
t
rconv4/norm2/moving_variance:0#rconv4/norm2/moving_variance/Assign#rconv4/norm2/moving_variance/read:02ones_8:0
j
rconv5/norm1/moving_mean:0rconv5/norm1/moving_mean/Assignrconv5/norm1/moving_mean/read:02
zeros_19:0
t
rconv5/norm1/moving_variance:0#rconv5/norm1/moving_variance/Assign#rconv5/norm1/moving_variance/read:02ones_9:0
m
rconv5/norm1b/moving_mean:0 rconv5/norm1b/moving_mean/Assign rconv5/norm1b/moving_mean/read:02
zeros_21:0
x
rconv5/norm1b/moving_variance:0$rconv5/norm1b/moving_variance/Assign$rconv5/norm1b/moving_variance/read:02	ones_10:0
j
rconv5/norm2/moving_mean:0rconv5/norm2/moving_mean/Assignrconv5/norm2/moving_mean/read:02
zeros_23:0
u
rconv5/norm2/moving_variance:0#rconv5/norm2/moving_variance/Assign#rconv5/norm2/moving_variance/read:02	ones_11:0
j
rconv6/norm1/moving_mean:0rconv6/norm1/moving_mean/Assignrconv6/norm1/moving_mean/read:02
zeros_25:0
u
rconv6/norm1/moving_variance:0#rconv6/norm1/moving_variance/Assign#rconv6/norm1/moving_variance/read:02	ones_12:0
j
rconv6/norm2/moving_mean:0rconv6/norm2/moving_mean/Assignrconv6/norm2/moving_mean/read:02
zeros_27:0
u
rconv6/norm2/moving_variance:0#rconv6/norm2/moving_variance/Assign#rconv6/norm2/moving_variance/read:02	ones_13:0
d
trunk/norm/moving_mean:0trunk/norm/moving_mean/Assigntrunk/norm/moving_mean/read:02
zeros_29:0
o
trunk/norm/moving_variance:0!trunk/norm/moving_variance/Assign!trunk/norm/moving_variance/read:02	ones_14:0
[
g1/norm/moving_mean:0g1/norm/moving_mean/Assigng1/norm/moving_mean/read:02
zeros_31:0
f
g1/norm/moving_variance:0g1/norm/moving_variance/Assigng1/norm/moving_variance/read:02	ones_15:0
[
p1/norm/moving_mean:0p1/norm/moving_mean/Assignp1/norm/moving_mean/read:02
zeros_33:0
f
p1/norm/moving_variance:0p1/norm/moving_variance/Assignp1/norm/moving_variance/read:02	ones_16:0
[
v1/norm/moving_mean:0v1/norm/moving_mean/Assignv1/norm/moving_mean/read:02
zeros_35:0
f
v1/norm/moving_variance:0v1/norm/moving_variance/Assignv1/norm/moving_variance/read:02	ones_17:0"�

update_ops�
�
AssignMovingAvg:0
AssignMovingAvg_1:0
AssignMovingAvg_2:0
AssignMovingAvg_3:0
AssignMovingAvg_4:0
AssignMovingAvg_5:0
AssignMovingAvg_6:0
AssignMovingAvg_7:0
AssignMovingAvg_8:0
AssignMovingAvg_9:0
AssignMovingAvg_10:0
AssignMovingAvg_11:0
AssignMovingAvg_12:0
AssignMovingAvg_13:0
AssignMovingAvg_14:0
AssignMovingAvg_15:0
AssignMovingAvg_16:0
AssignMovingAvg_17:0
AssignMovingAvg_18:0
AssignMovingAvg_19:0
AssignMovingAvg_20:0
AssignMovingAvg_21:0
AssignMovingAvg_22:0
AssignMovingAvg_23:0
AssignMovingAvg_24:0
AssignMovingAvg_25:0
AssignMovingAvg_26:0
AssignMovingAvg_27:0
AssignMovingAvg_28:0
AssignMovingAvg_29:0
AssignMovingAvg_30:0
AssignMovingAvg_31:0
AssignMovingAvg_32:0
AssignMovingAvg_33:0
AssignMovingAvg_34:0
AssignMovingAvg_35:0"k
global_step\Z
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0"��
cond_contextΈʈ
�
cond/cond_textcond/pred_id:0cond/switch_t:0 *�
Reshape_2:0
cond/ReverseV2/Switch:1
cond/ReverseV2/axis:0
cond/ReverseV2:0
cond/pred_id:0
cond/switch_t:0 
cond/pred_id:0cond/pred_id:0&
Reshape_2:0cond/ReverseV2/Switch:1
�
cond/cond_text_1cond/pred_id:0cond/switch_f:0*�
Reshape_2:0
cond/Switch_1:0
cond/Switch_1:1
cond/pred_id:0
cond/switch_f:0
Reshape_2:0cond/Switch_1:0 
cond/pred_id:0cond/pred_id:0
�
cond_1/cond_textcond_1/pred_id:0cond_1/switch_t:0 *�
cond/Merge:0
cond_1/ReverseV2/Switch:1
cond_1/ReverseV2/axis:0
cond_1/ReverseV2:0
cond_1/pred_id:0
cond_1/switch_t:0$
cond_1/pred_id:0cond_1/pred_id:0)
cond/Merge:0cond_1/ReverseV2/Switch:1
�
cond_1/cond_text_1cond_1/pred_id:0cond_1/switch_f:0*�
cond/Merge:0
cond_1/Switch_1:0
cond_1/Switch_1:1
cond_1/pred_id:0
cond_1/switch_f:0$
cond_1/pred_id:0cond_1/pred_id:0!
cond/Merge:0cond_1/Switch_1:0
�
cond_2/cond_textcond_2/pred_id:0cond_2/switch_t:0 *�
cond_1/Merge:0
cond_2/pred_id:0
cond_2/switch_t:0
cond_2/transpose/Switch:1
cond_2/transpose/perm:0
cond_2/transpose:0+
cond_1/Merge:0cond_2/transpose/Switch:1$
cond_2/pred_id:0cond_2/pred_id:0
�
cond_2/cond_text_1cond_2/pred_id:0cond_2/switch_f:0*�
cond_1/Merge:0
cond_2/Switch_1:0
cond_2/Switch_1:1
cond_2/pred_id:0
cond_2/switch_f:0$
cond_2/pred_id:0cond_2/pred_id:0#
cond_1/Merge:0cond_2/Switch_1:0
�
cond_3/cond_textcond_3/pred_id:0cond_3/switch_t:0 *�
cond_3/Switch_1:0
cond_3/Switch_1:1
cond_3/Switch_2:0
cond_3/Switch_2:1
cond_3/pred_id:0
cond_3/switch_t:0
	truediv:0
truediv_1:0 
truediv_1:0cond_3/Switch_2:1
	truediv:0cond_3/Switch_1:1$
cond_3/pred_id:0cond_3/pred_id:0
�
cond_3/cond_text_1cond_3/pred_id:0cond_3/switch_f:0*�
cond_3/Switch_3:0
cond_3/Switch_3:1
cond_3/Switch_4:0
cond_3/Switch_4:1
cond_3/pred_id:0
cond_3/switch_f:0
rconv1/norm1/moving_mean/read:0
#rconv1/norm1/moving_variance/read:08
#rconv1/norm1/moving_variance/read:0cond_3/Switch_4:04
rconv1/norm1/moving_mean/read:0cond_3/Switch_3:0$
cond_3/pred_id:0cond_3/pred_id:0
�
cond_4/cond_textcond_4/pred_id:0cond_4/switch_t:0 *�
cond_4/Switch_1:0
cond_4/Switch_1:1
cond_4/Switch_2:0
cond_4/Switch_2:1
cond_4/pred_id:0
cond_4/switch_t:0
truediv_2:0
truediv_3:0 
truediv_2:0cond_4/Switch_1:1 
truediv_3:0cond_4/Switch_2:1$
cond_4/pred_id:0cond_4/pred_id:0
�
cond_4/cond_text_1cond_4/pred_id:0cond_4/switch_f:0*�
cond_4/Switch_3:0
cond_4/Switch_3:1
cond_4/Switch_4:0
cond_4/Switch_4:1
cond_4/pred_id:0
cond_4/switch_f:0
rconv1/norm2/moving_mean/read:0
#rconv1/norm2/moving_variance/read:0$
cond_4/pred_id:0cond_4/pred_id:08
#rconv1/norm2/moving_variance/read:0cond_4/Switch_4:04
rconv1/norm2/moving_mean/read:0cond_4/Switch_3:0
�
cond_5/cond_textcond_5/pred_id:0cond_5/switch_t:0 *�
cond_5/Switch_1:0
cond_5/Switch_1:1
cond_5/Switch_2:0
cond_5/Switch_2:1
cond_5/pred_id:0
cond_5/switch_t:0
truediv_4:0
truediv_5:0 
truediv_4:0cond_5/Switch_1:1 
truediv_5:0cond_5/Switch_2:1$
cond_5/pred_id:0cond_5/pred_id:0
�
cond_5/cond_text_1cond_5/pred_id:0cond_5/switch_f:0*�
cond_5/Switch_3:0
cond_5/Switch_3:1
cond_5/Switch_4:0
cond_5/Switch_4:1
cond_5/pred_id:0
cond_5/switch_f:0
rconv2/norm1/moving_mean/read:0
#rconv2/norm1/moving_variance/read:08
#rconv2/norm1/moving_variance/read:0cond_5/Switch_4:04
rconv2/norm1/moving_mean/read:0cond_5/Switch_3:0$
cond_5/pred_id:0cond_5/pred_id:0
�
cond_6/cond_textcond_6/pred_id:0cond_6/switch_t:0 *�
cond_6/Switch_1:0
cond_6/Switch_1:1
cond_6/Switch_2:0
cond_6/Switch_2:1
cond_6/pred_id:0
cond_6/switch_t:0
truediv_6:0
truediv_7:0 
truediv_6:0cond_6/Switch_1:1 
truediv_7:0cond_6/Switch_2:1$
cond_6/pred_id:0cond_6/pred_id:0
�
cond_6/cond_text_1cond_6/pred_id:0cond_6/switch_f:0*�
cond_6/Switch_3:0
cond_6/Switch_3:1
cond_6/Switch_4:0
cond_6/Switch_4:1
cond_6/pred_id:0
cond_6/switch_f:0
rconv2/norm2/moving_mean/read:0
#rconv2/norm2/moving_variance/read:08
#rconv2/norm2/moving_variance/read:0cond_6/Switch_4:04
rconv2/norm2/moving_mean/read:0cond_6/Switch_3:0$
cond_6/pred_id:0cond_6/pred_id:0
�
cond_7/cond_textcond_7/pred_id:0cond_7/switch_t:0 *�
cond_7/Switch_1:0
cond_7/Switch_1:1
cond_7/Switch_2:0
cond_7/Switch_2:1
cond_7/pred_id:0
cond_7/switch_t:0
truediv_8:0
truediv_9:0 
truediv_8:0cond_7/Switch_1:1 
truediv_9:0cond_7/Switch_2:1$
cond_7/pred_id:0cond_7/pred_id:0
�
cond_7/cond_text_1cond_7/pred_id:0cond_7/switch_f:0*�
cond_7/Switch_3:0
cond_7/Switch_3:1
cond_7/Switch_4:0
cond_7/Switch_4:1
cond_7/pred_id:0
cond_7/switch_f:0
rconv3/norm1/moving_mean/read:0
#rconv3/norm1/moving_variance/read:0$
cond_7/pred_id:0cond_7/pred_id:08
#rconv3/norm1/moving_variance/read:0cond_7/Switch_4:04
rconv3/norm1/moving_mean/read:0cond_7/Switch_3:0
�
cond_8/cond_textcond_8/pred_id:0cond_8/switch_t:0 *�
cond_8/Switch_1:0
cond_8/Switch_1:1
cond_8/Switch_2:0
cond_8/Switch_2:1
cond_8/pred_id:0
cond_8/switch_t:0
truediv_10:0
truediv_11:0$
cond_8/pred_id:0cond_8/pred_id:0!
truediv_10:0cond_8/Switch_1:1!
truediv_11:0cond_8/Switch_2:1
�
cond_8/cond_text_1cond_8/pred_id:0cond_8/switch_f:0*�
cond_8/Switch_3:0
cond_8/Switch_3:1
cond_8/Switch_4:0
cond_8/Switch_4:1
cond_8/pred_id:0
cond_8/switch_f:0
 rconv3/norm1b/moving_mean/read:0
$rconv3/norm1b/moving_variance/read:09
$rconv3/norm1b/moving_variance/read:0cond_8/Switch_4:05
 rconv3/norm1b/moving_mean/read:0cond_8/Switch_3:0$
cond_8/pred_id:0cond_8/pred_id:0
�
cond_9/cond_textcond_9/pred_id:0cond_9/switch_t:0 *�
cond_9/Switch_1:0
cond_9/Switch_1:1
cond_9/Switch_2:0
cond_9/Switch_2:1
cond_9/pred_id:0
cond_9/switch_t:0
truediv_14:0
truediv_15:0$
cond_9/pred_id:0cond_9/pred_id:0!
truediv_14:0cond_9/Switch_1:1!
truediv_15:0cond_9/Switch_2:1
�
cond_9/cond_text_1cond_9/pred_id:0cond_9/switch_f:0*�
cond_9/Switch_3:0
cond_9/Switch_3:1
cond_9/Switch_4:0
cond_9/Switch_4:1
cond_9/pred_id:0
cond_9/switch_f:0
rconv3/norm2/moving_mean/read:0
#rconv3/norm2/moving_variance/read:08
#rconv3/norm2/moving_variance/read:0cond_9/Switch_4:04
rconv3/norm2/moving_mean/read:0cond_9/Switch_3:0$
cond_9/pred_id:0cond_9/pred_id:0
�
cond_10/cond_textcond_10/pred_id:0cond_10/switch_t:0 *�
cond_10/Switch_1:0
cond_10/Switch_1:1
cond_10/Switch_2:0
cond_10/Switch_2:1
cond_10/pred_id:0
cond_10/switch_t:0
truediv_16:0
truediv_17:0"
truediv_17:0cond_10/Switch_2:1&
cond_10/pred_id:0cond_10/pred_id:0"
truediv_16:0cond_10/Switch_1:1
�
cond_10/cond_text_1cond_10/pred_id:0cond_10/switch_f:0*�
cond_10/Switch_3:0
cond_10/Switch_3:1
cond_10/Switch_4:0
cond_10/Switch_4:1
cond_10/pred_id:0
cond_10/switch_f:0
rconv4/norm1/moving_mean/read:0
#rconv4/norm1/moving_variance/read:09
#rconv4/norm1/moving_variance/read:0cond_10/Switch_4:05
rconv4/norm1/moving_mean/read:0cond_10/Switch_3:0&
cond_10/pred_id:0cond_10/pred_id:0
�
cond_11/cond_textcond_11/pred_id:0cond_11/switch_t:0 *�
cond_11/Switch_1:0
cond_11/Switch_1:1
cond_11/Switch_2:0
cond_11/Switch_2:1
cond_11/pred_id:0
cond_11/switch_t:0
truediv_18:0
truediv_19:0"
truediv_18:0cond_11/Switch_1:1&
cond_11/pred_id:0cond_11/pred_id:0"
truediv_19:0cond_11/Switch_2:1
�
cond_11/cond_text_1cond_11/pred_id:0cond_11/switch_f:0*�
cond_11/Switch_3:0
cond_11/Switch_3:1
cond_11/Switch_4:0
cond_11/Switch_4:1
cond_11/pred_id:0
cond_11/switch_f:0
rconv4/norm2/moving_mean/read:0
#rconv4/norm2/moving_variance/read:0&
cond_11/pred_id:0cond_11/pred_id:09
#rconv4/norm2/moving_variance/read:0cond_11/Switch_4:05
rconv4/norm2/moving_mean/read:0cond_11/Switch_3:0
�
cond_12/cond_textcond_12/pred_id:0cond_12/switch_t:0 *�
cond_12/Switch_1:0
cond_12/Switch_1:1
cond_12/Switch_2:0
cond_12/Switch_2:1
cond_12/pred_id:0
cond_12/switch_t:0
truediv_20:0
truediv_21:0&
cond_12/pred_id:0cond_12/pred_id:0"
truediv_20:0cond_12/Switch_1:1"
truediv_21:0cond_12/Switch_2:1
�
cond_12/cond_text_1cond_12/pred_id:0cond_12/switch_f:0*�
cond_12/Switch_3:0
cond_12/Switch_3:1
cond_12/Switch_4:0
cond_12/Switch_4:1
cond_12/pred_id:0
cond_12/switch_f:0
rconv5/norm1/moving_mean/read:0
#rconv5/norm1/moving_variance/read:0&
cond_12/pred_id:0cond_12/pred_id:09
#rconv5/norm1/moving_variance/read:0cond_12/Switch_4:05
rconv5/norm1/moving_mean/read:0cond_12/Switch_3:0
�
cond_13/cond_textcond_13/pred_id:0cond_13/switch_t:0 *�
cond_13/Switch_1:0
cond_13/Switch_1:1
cond_13/Switch_2:0
cond_13/Switch_2:1
cond_13/pred_id:0
cond_13/switch_t:0
truediv_22:0
truediv_23:0"
truediv_22:0cond_13/Switch_1:1"
truediv_23:0cond_13/Switch_2:1&
cond_13/pred_id:0cond_13/pred_id:0
�
cond_13/cond_text_1cond_13/pred_id:0cond_13/switch_f:0*�
cond_13/Switch_3:0
cond_13/Switch_3:1
cond_13/Switch_4:0
cond_13/Switch_4:1
cond_13/pred_id:0
cond_13/switch_f:0
 rconv5/norm1b/moving_mean/read:0
$rconv5/norm1b/moving_variance/read:0:
$rconv5/norm1b/moving_variance/read:0cond_13/Switch_4:06
 rconv5/norm1b/moving_mean/read:0cond_13/Switch_3:0&
cond_13/pred_id:0cond_13/pred_id:0
�
cond_14/cond_textcond_14/pred_id:0cond_14/switch_t:0 *�
cond_14/Switch_1:0
cond_14/Switch_1:1
cond_14/Switch_2:0
cond_14/Switch_2:1
cond_14/pred_id:0
cond_14/switch_t:0
truediv_26:0
truediv_27:0"
truediv_26:0cond_14/Switch_1:1&
cond_14/pred_id:0cond_14/pred_id:0"
truediv_27:0cond_14/Switch_2:1
�
cond_14/cond_text_1cond_14/pred_id:0cond_14/switch_f:0*�
cond_14/Switch_3:0
cond_14/Switch_3:1
cond_14/Switch_4:0
cond_14/Switch_4:1
cond_14/pred_id:0
cond_14/switch_f:0
rconv5/norm2/moving_mean/read:0
#rconv5/norm2/moving_variance/read:09
#rconv5/norm2/moving_variance/read:0cond_14/Switch_4:05
rconv5/norm2/moving_mean/read:0cond_14/Switch_3:0&
cond_14/pred_id:0cond_14/pred_id:0
�
cond_15/cond_textcond_15/pred_id:0cond_15/switch_t:0 *�
cond_15/Switch_1:0
cond_15/Switch_1:1
cond_15/Switch_2:0
cond_15/Switch_2:1
cond_15/pred_id:0
cond_15/switch_t:0
truediv_28:0
truediv_29:0"
truediv_28:0cond_15/Switch_1:1"
truediv_29:0cond_15/Switch_2:1&
cond_15/pred_id:0cond_15/pred_id:0
�
cond_15/cond_text_1cond_15/pred_id:0cond_15/switch_f:0*�
cond_15/Switch_3:0
cond_15/Switch_3:1
cond_15/Switch_4:0
cond_15/Switch_4:1
cond_15/pred_id:0
cond_15/switch_f:0
rconv6/norm1/moving_mean/read:0
#rconv6/norm1/moving_variance/read:09
#rconv6/norm1/moving_variance/read:0cond_15/Switch_4:05
rconv6/norm1/moving_mean/read:0cond_15/Switch_3:0&
cond_15/pred_id:0cond_15/pred_id:0
�
cond_16/cond_textcond_16/pred_id:0cond_16/switch_t:0 *�
cond_16/Switch_1:0
cond_16/Switch_1:1
cond_16/Switch_2:0
cond_16/Switch_2:1
cond_16/pred_id:0
cond_16/switch_t:0
truediv_30:0
truediv_31:0&
cond_16/pred_id:0cond_16/pred_id:0"
truediv_30:0cond_16/Switch_1:1"
truediv_31:0cond_16/Switch_2:1
�
cond_16/cond_text_1cond_16/pred_id:0cond_16/switch_f:0*�
cond_16/Switch_3:0
cond_16/Switch_3:1
cond_16/Switch_4:0
cond_16/Switch_4:1
cond_16/pred_id:0
cond_16/switch_f:0
rconv6/norm2/moving_mean/read:0
#rconv6/norm2/moving_variance/read:0&
cond_16/pred_id:0cond_16/pred_id:09
#rconv6/norm2/moving_variance/read:0cond_16/Switch_4:05
rconv6/norm2/moving_mean/read:0cond_16/Switch_3:0
�
cond_17/cond_textcond_17/pred_id:0cond_17/switch_t:0 *�
cond_17/Switch_1:0
cond_17/Switch_1:1
cond_17/Switch_2:0
cond_17/Switch_2:1
cond_17/pred_id:0
cond_17/switch_t:0
truediv_32:0
truediv_33:0"
truediv_32:0cond_17/Switch_1:1"
truediv_33:0cond_17/Switch_2:1&
cond_17/pred_id:0cond_17/pred_id:0
�
cond_17/cond_text_1cond_17/pred_id:0cond_17/switch_f:0*�
cond_17/Switch_3:0
cond_17/Switch_3:1
cond_17/Switch_4:0
cond_17/Switch_4:1
cond_17/pred_id:0
cond_17/switch_f:0
trunk/norm/moving_mean/read:0
!trunk/norm/moving_variance/read:0&
cond_17/pred_id:0cond_17/pred_id:07
!trunk/norm/moving_variance/read:0cond_17/Switch_4:03
trunk/norm/moving_mean/read:0cond_17/Switch_3:0
�
cond_18/cond_textcond_18/pred_id:0cond_18/switch_t:0 *�
cond_18/Switch_1:0
cond_18/Switch_1:1
cond_18/Switch_2:0
cond_18/Switch_2:1
cond_18/pred_id:0
cond_18/switch_t:0
truediv_34:0
truediv_35:0"
truediv_35:0cond_18/Switch_2:1&
cond_18/pred_id:0cond_18/pred_id:0"
truediv_34:0cond_18/Switch_1:1
�
cond_18/cond_text_1cond_18/pred_id:0cond_18/switch_f:0*�
cond_18/Switch_3:0
cond_18/Switch_3:1
cond_18/Switch_4:0
cond_18/Switch_4:1
cond_18/pred_id:0
cond_18/switch_f:0
g1/norm/moving_mean/read:0
g1/norm/moving_variance/read:0&
cond_18/pred_id:0cond_18/pred_id:04
g1/norm/moving_variance/read:0cond_18/Switch_4:00
g1/norm/moving_mean/read:0cond_18/Switch_3:0
�
cond_19/cond_textcond_19/pred_id:0cond_19/switch_t:0 *�
cond_19/Switch_1:0
cond_19/Switch_1:1
cond_19/Switch_2:0
cond_19/Switch_2:1
cond_19/pred_id:0
cond_19/switch_t:0
truediv_38:0
truediv_39:0"
truediv_38:0cond_19/Switch_1:1"
truediv_39:0cond_19/Switch_2:1&
cond_19/pred_id:0cond_19/pred_id:0
�
cond_19/cond_text_1cond_19/pred_id:0cond_19/switch_f:0*�
cond_19/Switch_3:0
cond_19/Switch_3:1
cond_19/Switch_4:0
cond_19/Switch_4:1
cond_19/pred_id:0
cond_19/switch_f:0
p1/norm/moving_mean/read:0
p1/norm/moving_variance/read:04
p1/norm/moving_variance/read:0cond_19/Switch_4:00
p1/norm/moving_mean/read:0cond_19/Switch_3:0&
cond_19/pred_id:0cond_19/pred_id:0
�
cond_20/cond_textcond_20/pred_id:0cond_20/switch_t:0 *�
cond_20/pred_id:0
cond_20/switch_t:0
cond_20/transpose/Switch:1
cond_20/transpose/perm:0
cond_20/transpose:0
sub_21:0&
cond_20/pred_id:0cond_20/pred_id:0&
sub_21:0cond_20/transpose/Switch:1
�
cond_20/cond_text_1cond_20/pred_id:0cond_20/switch_f:0*�
cond_20/Switch_1:0
cond_20/Switch_1:1
cond_20/pred_id:0
cond_20/switch_f:0
sub_21:0&
cond_20/pred_id:0cond_20/pred_id:0
sub_21:0cond_20/Switch_1:0
�
cond_21/cond_textcond_21/pred_id:0cond_21/switch_t:0 *�
cond_20/Merge:0
cond_21/ReverseV2/Switch:1
cond_21/ReverseV2/axis:0
cond_21/ReverseV2:0
cond_21/pred_id:0
cond_21/switch_t:0-
cond_20/Merge:0cond_21/ReverseV2/Switch:1&
cond_21/pred_id:0cond_21/pred_id:0
�
cond_21/cond_text_1cond_21/pred_id:0cond_21/switch_f:0*�
cond_20/Merge:0
cond_21/Switch_1:0
cond_21/Switch_1:1
cond_21/pred_id:0
cond_21/switch_f:0&
cond_21/pred_id:0cond_21/pred_id:0%
cond_20/Merge:0cond_21/Switch_1:0
�
cond_22/cond_textcond_22/pred_id:0cond_22/switch_t:0 *�
cond_21/Merge:0
cond_22/ReverseV2/Switch:1
cond_22/ReverseV2/axis:0
cond_22/ReverseV2:0
cond_22/pred_id:0
cond_22/switch_t:0-
cond_21/Merge:0cond_22/ReverseV2/Switch:1&
cond_22/pred_id:0cond_22/pred_id:0
�
cond_22/cond_text_1cond_22/pred_id:0cond_22/switch_f:0*�
cond_21/Merge:0
cond_22/Switch_1:0
cond_22/Switch_1:1
cond_22/pred_id:0
cond_22/switch_f:0&
cond_22/pred_id:0cond_22/pred_id:0%
cond_21/Merge:0cond_22/Switch_1:0
�
cond_23/cond_textcond_23/pred_id:0cond_23/switch_t:0 *�
cond_23/Switch_1:0
cond_23/Switch_1:1
cond_23/Switch_2:0
cond_23/Switch_2:1
cond_23/pred_id:0
cond_23/switch_t:0
truediv_40:0
truediv_41:0"
truediv_40:0cond_23/Switch_1:1&
cond_23/pred_id:0cond_23/pred_id:0"
truediv_41:0cond_23/Switch_2:1
�
cond_23/cond_text_1cond_23/pred_id:0cond_23/switch_f:0*�
cond_23/Switch_3:0
cond_23/Switch_3:1
cond_23/Switch_4:0
cond_23/Switch_4:1
cond_23/pred_id:0
cond_23/switch_f:0
v1/norm/moving_mean/read:0
v1/norm/moving_variance/read:0&
cond_23/pred_id:0cond_23/pred_id:04
v1/norm/moving_variance/read:0cond_23/Switch_4:00
v1/norm/moving_mean/read:0cond_23/Switch_3:0
�
cond_24/cond_textcond_24/pred_id:0cond_24/switch_t:0 *�
cond_24/pred_id:0
cond_24/switch_t:0
cond_24/transpose/Switch:1
cond_24/transpose/perm:0
cond_24/transpose:0
	mul_106:0&
cond_24/pred_id:0cond_24/pred_id:0'
	mul_106:0cond_24/transpose/Switch:1
�
cond_24/cond_text_1cond_24/pred_id:0cond_24/switch_f:0*�
cond_24/Switch_1:0
cond_24/Switch_1:1
cond_24/pred_id:0
cond_24/switch_f:0
	mul_106:0
	mul_106:0cond_24/Switch_1:0&
cond_24/pred_id:0cond_24/pred_id:0
�
cond_25/cond_textcond_25/pred_id:0cond_25/switch_t:0 *�
cond_24/Merge:0
cond_25/ReverseV2/Switch:1
cond_25/ReverseV2/axis:0
cond_25/ReverseV2:0
cond_25/pred_id:0
cond_25/switch_t:0&
cond_25/pred_id:0cond_25/pred_id:0-
cond_24/Merge:0cond_25/ReverseV2/Switch:1
�
cond_25/cond_text_1cond_25/pred_id:0cond_25/switch_f:0*�
cond_24/Merge:0
cond_25/Switch_1:0
cond_25/Switch_1:1
cond_25/pred_id:0
cond_25/switch_f:0&
cond_25/pred_id:0cond_25/pred_id:0%
cond_24/Merge:0cond_25/Switch_1:0
�
cond_26/cond_textcond_26/pred_id:0cond_26/switch_t:0 *�
cond_25/Merge:0
cond_26/ReverseV2/Switch:1
cond_26/ReverseV2/axis:0
cond_26/ReverseV2:0
cond_26/pred_id:0
cond_26/switch_t:0-
cond_25/Merge:0cond_26/ReverseV2/Switch:1&
cond_26/pred_id:0cond_26/pred_id:0
�
cond_26/cond_text_1cond_26/pred_id:0cond_26/switch_f:0*�
cond_25/Merge:0
cond_26/Switch_1:0
cond_26/Switch_1:1
cond_26/pred_id:0
cond_26/switch_f:0&
cond_26/pred_id:0cond_26/pred_id:0%
cond_25/Merge:0cond_26/Switch_1:0"%
saved_model_main_op


group_deps"�
model_variables��
i
rconv1/norm1/moving_mean:0rconv1/norm1/moving_mean/Assignrconv1/norm1/moving_mean/read:02	zeros_1:0
r
rconv1/norm1/moving_variance:0#rconv1/norm1/moving_variance/Assign#rconv1/norm1/moving_variance/read:02ones:0
i
rconv1/norm2/moving_mean:0rconv1/norm2/moving_mean/Assignrconv1/norm2/moving_mean/read:02	zeros_3:0
t
rconv1/norm2/moving_variance:0#rconv1/norm2/moving_variance/Assign#rconv1/norm2/moving_variance/read:02ones_1:0
i
rconv2/norm1/moving_mean:0rconv2/norm1/moving_mean/Assignrconv2/norm1/moving_mean/read:02	zeros_5:0
t
rconv2/norm1/moving_variance:0#rconv2/norm1/moving_variance/Assign#rconv2/norm1/moving_variance/read:02ones_2:0
i
rconv2/norm2/moving_mean:0rconv2/norm2/moving_mean/Assignrconv2/norm2/moving_mean/read:02	zeros_7:0
t
rconv2/norm2/moving_variance:0#rconv2/norm2/moving_variance/Assign#rconv2/norm2/moving_variance/read:02ones_3:0
i
rconv3/norm1/moving_mean:0rconv3/norm1/moving_mean/Assignrconv3/norm1/moving_mean/read:02	zeros_9:0
t
rconv3/norm1/moving_variance:0#rconv3/norm1/moving_variance/Assign#rconv3/norm1/moving_variance/read:02ones_4:0
m
rconv3/norm1b/moving_mean:0 rconv3/norm1b/moving_mean/Assign rconv3/norm1b/moving_mean/read:02
zeros_11:0
w
rconv3/norm1b/moving_variance:0$rconv3/norm1b/moving_variance/Assign$rconv3/norm1b/moving_variance/read:02ones_5:0
j
rconv3/norm2/moving_mean:0rconv3/norm2/moving_mean/Assignrconv3/norm2/moving_mean/read:02
zeros_13:0
t
rconv3/norm2/moving_variance:0#rconv3/norm2/moving_variance/Assign#rconv3/norm2/moving_variance/read:02ones_6:0
j
rconv4/norm1/moving_mean:0rconv4/norm1/moving_mean/Assignrconv4/norm1/moving_mean/read:02
zeros_15:0
t
rconv4/norm1/moving_variance:0#rconv4/norm1/moving_variance/Assign#rconv4/norm1/moving_variance/read:02ones_7:0
j
rconv4/norm2/moving_mean:0rconv4/norm2/moving_mean/Assignrconv4/norm2/moving_mean/read:02
zeros_17:0
t
rconv4/norm2/moving_variance:0#rconv4/norm2/moving_variance/Assign#rconv4/norm2/moving_variance/read:02ones_8:0
j
rconv5/norm1/moving_mean:0rconv5/norm1/moving_mean/Assignrconv5/norm1/moving_mean/read:02
zeros_19:0
t
rconv5/norm1/moving_variance:0#rconv5/norm1/moving_variance/Assign#rconv5/norm1/moving_variance/read:02ones_9:0
m
rconv5/norm1b/moving_mean:0 rconv5/norm1b/moving_mean/Assign rconv5/norm1b/moving_mean/read:02
zeros_21:0
x
rconv5/norm1b/moving_variance:0$rconv5/norm1b/moving_variance/Assign$rconv5/norm1b/moving_variance/read:02	ones_10:0
j
rconv5/norm2/moving_mean:0rconv5/norm2/moving_mean/Assignrconv5/norm2/moving_mean/read:02
zeros_23:0
u
rconv5/norm2/moving_variance:0#rconv5/norm2/moving_variance/Assign#rconv5/norm2/moving_variance/read:02	ones_11:0
j
rconv6/norm1/moving_mean:0rconv6/norm1/moving_mean/Assignrconv6/norm1/moving_mean/read:02
zeros_25:0
u
rconv6/norm1/moving_variance:0#rconv6/norm1/moving_variance/Assign#rconv6/norm1/moving_variance/read:02	ones_12:0
j
rconv6/norm2/moving_mean:0rconv6/norm2/moving_mean/Assignrconv6/norm2/moving_mean/read:02
zeros_27:0
u
rconv6/norm2/moving_variance:0#rconv6/norm2/moving_variance/Assign#rconv6/norm2/moving_variance/read:02	ones_13:0
d
trunk/norm/moving_mean:0trunk/norm/moving_mean/Assigntrunk/norm/moving_mean/read:02
zeros_29:0
o
trunk/norm/moving_variance:0!trunk/norm/moving_variance/Assign!trunk/norm/moving_variance/read:02	ones_14:0
[
g1/norm/moving_mean:0g1/norm/moving_mean/Assigng1/norm/moving_mean/read:02
zeros_31:0
f
g1/norm/moving_variance:0g1/norm/moving_variance/Assigng1/norm/moving_variance/read:02	ones_15:0
[
p1/norm/moving_mean:0p1/norm/moving_mean/Assignp1/norm/moving_mean/read:02
zeros_33:0
f
p1/norm/moving_variance:0p1/norm/moving_variance/Assignp1/norm/moving_variance/read:02	ones_16:0
[
v1/norm/moving_mean:0v1/norm/moving_mean/Assignv1/norm/moving_mean/read:02
zeros_35:0
f
v1/norm/moving_variance:0v1/norm/moving_variance/Assignv1/norm/moving_variance/read:02	ones_17:0*�
serving_default�
0
sdn)
Placeholder_101:0����������
4
ptncm+
Placeholder_99:0���������R
6
binchwp+
Placeholder_97:0���������
:
vtnchw0
Placeholder_103:0���������		
/
ginc'
Placeholder_98:0���������
0
sbsn(
Placeholder_102:0���������=
0
gtnc(
Placeholder_100:0���������@5
value_output%
value_output:0���������;
policy_output*
policy_output:0���������Rtensorflow/serving/predict