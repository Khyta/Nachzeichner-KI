��	
��
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
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

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
H
ShardedFilename
basename	
shard

num_shards
filename
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
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
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
 �"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68��
�
glob_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameglob_conv1/kernel

%glob_conv1/kernel/Read/ReadVariableOpReadVariableOpglob_conv1/kernel*&
_output_shapes
: *
dtype0
v
glob_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameglob_conv1/bias
o
#glob_conv1/bias/Read/ReadVariableOpReadVariableOpglob_conv1/bias*
_output_shapes
: *
dtype0
�
glob_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*"
shared_nameglob_conv2/kernel

%glob_conv2/kernel/Read/ReadVariableOpReadVariableOpglob_conv2/kernel*&
_output_shapes
: @*
dtype0
v
glob_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameglob_conv2/bias
o
#glob_conv2/bias/Read/ReadVariableOpReadVariableOpglob_conv2/bias*
_output_shapes
:@*
dtype0
�
glob_conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*"
shared_nameglob_conv3/kernel

%glob_conv3/kernel/Read/ReadVariableOpReadVariableOpglob_conv3/kernel*&
_output_shapes
:@@*
dtype0
v
glob_conv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameglob_conv3/bias
o
#glob_conv3/bias/Read/ReadVariableOpReadVariableOpglob_conv3/bias*
_output_shapes
:@*
dtype0
�
loc_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*!
shared_nameloc_conv1/kernel
~
$loc_conv1/kernel/Read/ReadVariableOpReadVariableOploc_conv1/kernel*'
_output_shapes
:�*
dtype0
u
loc_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameloc_conv1/bias
n
"loc_conv1/bias/Read/ReadVariableOpReadVariableOploc_conv1/bias*
_output_shapes	
:�*
dtype0
x
dense1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�I�*
shared_namedense1/kernel
q
!dense1/kernel/Read/ReadVariableOpReadVariableOpdense1/kernel* 
_output_shapes
:
�I�*
dtype0
o
dense1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense1/bias
h
dense1/bias/Read/ReadVariableOpReadVariableOpdense1/bias*
_output_shapes	
:�*
dtype0
w
output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�b*
shared_nameoutput/kernel
p
!output/kernel/Read/ReadVariableOpReadVariableOpoutput/kernel*
_output_shapes
:	�b*
dtype0
n
output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:b*
shared_nameoutput/bias
g
output/bias/Read/ReadVariableOpReadVariableOpoutput/bias*
_output_shapes
:b*
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
Adam/glob_conv1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/glob_conv1/kernel/m
�
,Adam/glob_conv1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/glob_conv1/kernel/m*&
_output_shapes
: *
dtype0
�
Adam/glob_conv1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/glob_conv1/bias/m
}
*Adam/glob_conv1/bias/m/Read/ReadVariableOpReadVariableOpAdam/glob_conv1/bias/m*
_output_shapes
: *
dtype0
�
Adam/glob_conv2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*)
shared_nameAdam/glob_conv2/kernel/m
�
,Adam/glob_conv2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/glob_conv2/kernel/m*&
_output_shapes
: @*
dtype0
�
Adam/glob_conv2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/glob_conv2/bias/m
}
*Adam/glob_conv2/bias/m/Read/ReadVariableOpReadVariableOpAdam/glob_conv2/bias/m*
_output_shapes
:@*
dtype0
�
Adam/glob_conv3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*)
shared_nameAdam/glob_conv3/kernel/m
�
,Adam/glob_conv3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/glob_conv3/kernel/m*&
_output_shapes
:@@*
dtype0
�
Adam/glob_conv3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/glob_conv3/bias/m
}
*Adam/glob_conv3/bias/m/Read/ReadVariableOpReadVariableOpAdam/glob_conv3/bias/m*
_output_shapes
:@*
dtype0
�
Adam/loc_conv1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*(
shared_nameAdam/loc_conv1/kernel/m
�
+Adam/loc_conv1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/loc_conv1/kernel/m*'
_output_shapes
:�*
dtype0
�
Adam/loc_conv1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameAdam/loc_conv1/bias/m
|
)Adam/loc_conv1/bias/m/Read/ReadVariableOpReadVariableOpAdam/loc_conv1/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/dense1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�I�*%
shared_nameAdam/dense1/kernel/m

(Adam/dense1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense1/kernel/m* 
_output_shapes
:
�I�*
dtype0
}
Adam/dense1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*#
shared_nameAdam/dense1/bias/m
v
&Adam/dense1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense1/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�b*%
shared_nameAdam/output/kernel/m
~
(Adam/output/kernel/m/Read/ReadVariableOpReadVariableOpAdam/output/kernel/m*
_output_shapes
:	�b*
dtype0
|
Adam/output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:b*#
shared_nameAdam/output/bias/m
u
&Adam/output/bias/m/Read/ReadVariableOpReadVariableOpAdam/output/bias/m*
_output_shapes
:b*
dtype0
�
Adam/glob_conv1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/glob_conv1/kernel/v
�
,Adam/glob_conv1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/glob_conv1/kernel/v*&
_output_shapes
: *
dtype0
�
Adam/glob_conv1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/glob_conv1/bias/v
}
*Adam/glob_conv1/bias/v/Read/ReadVariableOpReadVariableOpAdam/glob_conv1/bias/v*
_output_shapes
: *
dtype0
�
Adam/glob_conv2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*)
shared_nameAdam/glob_conv2/kernel/v
�
,Adam/glob_conv2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/glob_conv2/kernel/v*&
_output_shapes
: @*
dtype0
�
Adam/glob_conv2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/glob_conv2/bias/v
}
*Adam/glob_conv2/bias/v/Read/ReadVariableOpReadVariableOpAdam/glob_conv2/bias/v*
_output_shapes
:@*
dtype0
�
Adam/glob_conv3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*)
shared_nameAdam/glob_conv3/kernel/v
�
,Adam/glob_conv3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/glob_conv3/kernel/v*&
_output_shapes
:@@*
dtype0
�
Adam/glob_conv3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/glob_conv3/bias/v
}
*Adam/glob_conv3/bias/v/Read/ReadVariableOpReadVariableOpAdam/glob_conv3/bias/v*
_output_shapes
:@*
dtype0
�
Adam/loc_conv1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*(
shared_nameAdam/loc_conv1/kernel/v
�
+Adam/loc_conv1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/loc_conv1/kernel/v*'
_output_shapes
:�*
dtype0
�
Adam/loc_conv1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameAdam/loc_conv1/bias/v
|
)Adam/loc_conv1/bias/v/Read/ReadVariableOpReadVariableOpAdam/loc_conv1/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/dense1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�I�*%
shared_nameAdam/dense1/kernel/v

(Adam/dense1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense1/kernel/v* 
_output_shapes
:
�I�*
dtype0
}
Adam/dense1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*#
shared_nameAdam/dense1/bias/v
v
&Adam/dense1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense1/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�b*%
shared_nameAdam/output/kernel/v
~
(Adam/output/kernel/v/Read/ReadVariableOpReadVariableOpAdam/output/kernel/v*
_output_shapes
:	�b*
dtype0
|
Adam/output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:b*#
shared_nameAdam/output/bias/v
u
&Adam/output/bias/v/Read/ReadVariableOpReadVariableOpAdam/output/bias/v*
_output_shapes
:b*
dtype0

NoOpNoOp
�T
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�T
value�TB�T B�T
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer_with_weights-5

layer-9
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
* 
�

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
�

kernel
bias
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses*
* 
�

$kernel
%bias
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses*
�

,kernel
-bias
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses*
�
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses* 
�
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses* 
�

@kernel
Abias
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses*
�

Hkernel
Ibias
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses*
�
Piter

Qbeta_1

Rbeta_2
	Sdecay
Tlearning_ratem�m�m�m�$m�%m�,m�-m�@m�Am�Hm�Im�v�v�v�v�$v�%v�,v�-v�@v�Av�Hv�Iv�*
Z
0
1
2
3
$4
%5
,6
-7
@8
A9
H10
I11*
Z
0
1
2
3
$4
%5
,6
-7
@8
A9
H10
I11*
* 
�
Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

Zserving_default* 
a[
VARIABLE_VALUEglob_conv1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEglob_conv1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
�
[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
a[
VARIABLE_VALUEglob_conv2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEglob_conv2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
�
`non_trainable_variables

alayers
bmetrics
clayer_regularization_losses
dlayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses*
* 
* 
a[
VARIABLE_VALUEglob_conv3/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEglob_conv3/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

$0
%1*

$0
%1*
* 
�
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses*
* 
* 
`Z
VARIABLE_VALUEloc_conv1/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEloc_conv1/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

,0
-1*

,0
-1*
* 
�
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
�
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
�
tnon_trainable_variables

ulayers
vmetrics
wlayer_regularization_losses
xlayer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses* 
* 
* 
]W
VARIABLE_VALUEdense1/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEdense1/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

@0
A1*

@0
A1*
* 
�
ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses*
* 
* 
]W
VARIABLE_VALUEoutput/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEoutput/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*

H0
I1*

H0
I1*
* 
�
~non_trainable_variables

layers
�metrics
 �layer_regularization_losses
�layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses*
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
* 
J
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
9*
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
�~
VARIABLE_VALUEAdam/glob_conv1/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/glob_conv1/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/glob_conv2/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/glob_conv2/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/glob_conv3/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/glob_conv3/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/loc_conv1/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/loc_conv1/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/dense1/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/dense1/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/output/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/output/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/glob_conv1/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/glob_conv1/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/glob_conv2/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/glob_conv2/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUEAdam/glob_conv3/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/glob_conv3/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/loc_conv1/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/loc_conv1/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/dense1/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/dense1/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/output/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/output/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
serving_default_global_inputPlaceholder*&
_output_shapes
:@*
dtype0*
shape:@
|
serving_default_local_inputPlaceholder*&
_output_shapes
:@*
dtype0*
shape:@
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_global_inputserving_default_local_inputglob_conv1/kernelglob_conv1/biasglob_conv2/kernelglob_conv2/biasglob_conv3/kernelglob_conv3/biasloc_conv1/kernelloc_conv1/biasdense1/kerneldense1/biasoutput/kerneloutput/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:@b*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *-
f(R&
$__inference_signature_wrapper_242909
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%glob_conv1/kernel/Read/ReadVariableOp#glob_conv1/bias/Read/ReadVariableOp%glob_conv2/kernel/Read/ReadVariableOp#glob_conv2/bias/Read/ReadVariableOp%glob_conv3/kernel/Read/ReadVariableOp#glob_conv3/bias/Read/ReadVariableOp$loc_conv1/kernel/Read/ReadVariableOp"loc_conv1/bias/Read/ReadVariableOp!dense1/kernel/Read/ReadVariableOpdense1/bias/Read/ReadVariableOp!output/kernel/Read/ReadVariableOpoutput/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp,Adam/glob_conv1/kernel/m/Read/ReadVariableOp*Adam/glob_conv1/bias/m/Read/ReadVariableOp,Adam/glob_conv2/kernel/m/Read/ReadVariableOp*Adam/glob_conv2/bias/m/Read/ReadVariableOp,Adam/glob_conv3/kernel/m/Read/ReadVariableOp*Adam/glob_conv3/bias/m/Read/ReadVariableOp+Adam/loc_conv1/kernel/m/Read/ReadVariableOp)Adam/loc_conv1/bias/m/Read/ReadVariableOp(Adam/dense1/kernel/m/Read/ReadVariableOp&Adam/dense1/bias/m/Read/ReadVariableOp(Adam/output/kernel/m/Read/ReadVariableOp&Adam/output/bias/m/Read/ReadVariableOp,Adam/glob_conv1/kernel/v/Read/ReadVariableOp*Adam/glob_conv1/bias/v/Read/ReadVariableOp,Adam/glob_conv2/kernel/v/Read/ReadVariableOp*Adam/glob_conv2/bias/v/Read/ReadVariableOp,Adam/glob_conv3/kernel/v/Read/ReadVariableOp*Adam/glob_conv3/bias/v/Read/ReadVariableOp+Adam/loc_conv1/kernel/v/Read/ReadVariableOp)Adam/loc_conv1/bias/v/Read/ReadVariableOp(Adam/dense1/kernel/v/Read/ReadVariableOp&Adam/dense1/bias/v/Read/ReadVariableOp(Adam/output/kernel/v/Read/ReadVariableOp&Adam/output/bias/v/Read/ReadVariableOpConst*:
Tin3
12/	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *(
f#R!
__inference__traced_save_243214
�	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameglob_conv1/kernelglob_conv1/biasglob_conv2/kernelglob_conv2/biasglob_conv3/kernelglob_conv3/biasloc_conv1/kernelloc_conv1/biasdense1/kerneldense1/biasoutput/kerneloutput/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/glob_conv1/kernel/mAdam/glob_conv1/bias/mAdam/glob_conv2/kernel/mAdam/glob_conv2/bias/mAdam/glob_conv3/kernel/mAdam/glob_conv3/bias/mAdam/loc_conv1/kernel/mAdam/loc_conv1/bias/mAdam/dense1/kernel/mAdam/dense1/bias/mAdam/output/kernel/mAdam/output/bias/mAdam/glob_conv1/kernel/vAdam/glob_conv1/bias/vAdam/glob_conv2/kernel/vAdam/glob_conv2/bias/vAdam/glob_conv3/kernel/vAdam/glob_conv3/bias/vAdam/loc_conv1/kernel/vAdam/loc_conv1/bias/vAdam/dense1/kernel/vAdam/dense1/bias/vAdam/output/kernel/vAdam/output/bias/v*9
Tin2
02.*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *+
f&R$
"__inference__traced_restore_243359��
�

�
F__inference_glob_conv1_layer_call_and_return_conditional_losses_242293

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:@ *
data_formatNCHW*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:@ *
data_formatNCHWO
ReluReluBiasAdd:output:0*
T0*&
_output_shapes
:@ `
IdentityIdentityRelu:activations:0^NoOp*
T0*&
_output_shapes
:@ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:N J
&
_output_shapes
:@
 
_user_specified_nameinputs
�	
�
B__inference_dense1_layer_call_and_return_conditional_losses_242380

inputs2
matmul_readvariableop_resource:
�I�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
�I�*
dtype0a
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	@�s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	@�H
ReluReluBiasAdd:output:0*
T0*
_output_shapes
:	@�Y
IdentityIdentityRelu:activations:0^NoOp*
T0*
_output_shapes
:	@�w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*"
_input_shapes
:	@�I: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:G C

_output_shapes
:	@�I
 
_user_specified_nameinputs
�
Z
.__inference_concatenate_1_layer_call_fn_242995
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:@�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_concatenate_1_layer_call_and_return_conditional_losses_242357`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:@�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:@@:@�:P L
&
_output_shapes
:@@
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:@�
"
_user_specified_name
inputs/1
�
�
'__inference_dense1_layer_call_fn_243024

inputs
unknown:
�I�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	@�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense1_layer_call_and_return_conditional_losses_242380g
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
:	@�`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*"
_input_shapes
:	@�I: : 22
StatefulPartitionedCallStatefulPartitionedCall:G C

_output_shapes
:	@�I
 
_user_specified_nameinputs
�

�
F__inference_glob_conv3_layer_call_and_return_conditional_losses_242327

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@*
data_formatNCHW*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@*
data_formatNCHWO
ReluReluBiasAdd:output:0*
T0*&
_output_shapes
:@@`
IdentityIdentityRelu:activations:0^NoOp*
T0*&
_output_shapes
:@@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:N J
&
_output_shapes
:@@
 
_user_specified_nameinputs
�G
�
!__inference__wrapped_model_242273
global_input
local_inputK
1model_1_glob_conv1_conv2d_readvariableop_resource: @
2model_1_glob_conv1_biasadd_readvariableop_resource: K
1model_1_glob_conv2_conv2d_readvariableop_resource: @@
2model_1_glob_conv2_biasadd_readvariableop_resource:@K
1model_1_glob_conv3_conv2d_readvariableop_resource:@@@
2model_1_glob_conv3_biasadd_readvariableop_resource:@K
0model_1_loc_conv1_conv2d_readvariableop_resource:�@
1model_1_loc_conv1_biasadd_readvariableop_resource:	�A
-model_1_dense1_matmul_readvariableop_resource:
�I�=
.model_1_dense1_biasadd_readvariableop_resource:	�@
-model_1_output_matmul_readvariableop_resource:	�b<
.model_1_output_biasadd_readvariableop_resource:b
identity��%model_1/dense1/BiasAdd/ReadVariableOp�$model_1/dense1/MatMul/ReadVariableOp�)model_1/glob_conv1/BiasAdd/ReadVariableOp�(model_1/glob_conv1/Conv2D/ReadVariableOp�)model_1/glob_conv2/BiasAdd/ReadVariableOp�(model_1/glob_conv2/Conv2D/ReadVariableOp�)model_1/glob_conv3/BiasAdd/ReadVariableOp�(model_1/glob_conv3/Conv2D/ReadVariableOp�(model_1/loc_conv1/BiasAdd/ReadVariableOp�'model_1/loc_conv1/Conv2D/ReadVariableOp�%model_1/output/BiasAdd/ReadVariableOp�$model_1/output/MatMul/ReadVariableOp�
(model_1/glob_conv1/Conv2D/ReadVariableOpReadVariableOp1model_1_glob_conv1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
model_1/glob_conv1/Conv2DConv2Dglobal_input0model_1/glob_conv1/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:@ *
data_formatNCHW*
paddingSAME*
strides
�
)model_1/glob_conv1/BiasAdd/ReadVariableOpReadVariableOp2model_1_glob_conv1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
model_1/glob_conv1/BiasAddBiasAdd"model_1/glob_conv1/Conv2D:output:01model_1/glob_conv1/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:@ *
data_formatNCHWu
model_1/glob_conv1/ReluRelu#model_1/glob_conv1/BiasAdd:output:0*
T0*&
_output_shapes
:@ �
(model_1/glob_conv2/Conv2D/ReadVariableOpReadVariableOp1model_1_glob_conv2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
model_1/glob_conv2/Conv2DConv2D%model_1/glob_conv1/Relu:activations:00model_1/glob_conv2/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@*
data_formatNCHW*
paddingSAME*
strides
�
)model_1/glob_conv2/BiasAdd/ReadVariableOpReadVariableOp2model_1_glob_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model_1/glob_conv2/BiasAddBiasAdd"model_1/glob_conv2/Conv2D:output:01model_1/glob_conv2/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@*
data_formatNCHWu
model_1/glob_conv2/ReluRelu#model_1/glob_conv2/BiasAdd:output:0*
T0*&
_output_shapes
:@@�
(model_1/glob_conv3/Conv2D/ReadVariableOpReadVariableOp1model_1_glob_conv3_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
model_1/glob_conv3/Conv2DConv2D%model_1/glob_conv2/Relu:activations:00model_1/glob_conv3/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@*
data_formatNCHW*
paddingSAME*
strides
�
)model_1/glob_conv3/BiasAdd/ReadVariableOpReadVariableOp2model_1_glob_conv3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model_1/glob_conv3/BiasAddBiasAdd"model_1/glob_conv3/Conv2D:output:01model_1/glob_conv3/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@*
data_formatNCHWu
model_1/glob_conv3/ReluRelu#model_1/glob_conv3/BiasAdd:output:0*
T0*&
_output_shapes
:@@�
'model_1/loc_conv1/Conv2D/ReadVariableOpReadVariableOp0model_1_loc_conv1_conv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
model_1/loc_conv1/Conv2DConv2Dlocal_input/model_1/loc_conv1/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:@�*
data_formatNCHW*
paddingSAME*
strides
�
(model_1/loc_conv1/BiasAdd/ReadVariableOpReadVariableOp1model_1_loc_conv1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model_1/loc_conv1/BiasAddBiasAdd!model_1/loc_conv1/Conv2D:output:00model_1/loc_conv1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:@�*
data_formatNCHWt
model_1/loc_conv1/ReluRelu"model_1/loc_conv1/BiasAdd:output:0*
T0*'
_output_shapes
:@�c
!model_1/concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
model_1/concatenate_1/concatConcatV2%model_1/glob_conv3/Relu:activations:0$model_1/loc_conv1/Relu:activations:0*model_1/concatenate_1/concat/axis:output:0*
N*
T0*'
_output_shapes
:@�w
model_1/Flatten/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
model_1/Flatten/transpose	Transpose%model_1/concatenate_1/concat:output:0'model_1/Flatten/transpose/perm:output:0*
T0*'
_output_shapes
:@�f
model_1/Flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����$  �
model_1/Flatten/ReshapeReshapemodel_1/Flatten/transpose:y:0model_1/Flatten/Const:output:0*
T0*
_output_shapes
:	@�I�
$model_1/dense1/MatMul/ReadVariableOpReadVariableOp-model_1_dense1_matmul_readvariableop_resource* 
_output_shapes
:
�I�*
dtype0�
model_1/dense1/MatMulMatMul model_1/Flatten/Reshape:output:0,model_1/dense1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	@��
%model_1/dense1/BiasAdd/ReadVariableOpReadVariableOp.model_1_dense1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model_1/dense1/BiasAddBiasAddmodel_1/dense1/MatMul:product:0-model_1/dense1/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	@�f
model_1/dense1/ReluRelumodel_1/dense1/BiasAdd:output:0*
T0*
_output_shapes
:	@��
$model_1/output/MatMul/ReadVariableOpReadVariableOp-model_1_output_matmul_readvariableop_resource*
_output_shapes
:	�b*
dtype0�
model_1/output/MatMulMatMul!model_1/dense1/Relu:activations:0,model_1/output/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:@b�
%model_1/output/BiasAdd/ReadVariableOpReadVariableOp.model_1_output_biasadd_readvariableop_resource*
_output_shapes
:b*
dtype0�
model_1/output/BiasAddBiasAddmodel_1/output/MatMul:product:0-model_1/output/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:@be
model_1/output/ReluRelumodel_1/output/BiasAdd:output:0*
T0*
_output_shapes

:@bg
IdentityIdentity!model_1/output/Relu:activations:0^NoOp*
T0*
_output_shapes

:@b�
NoOpNoOp&^model_1/dense1/BiasAdd/ReadVariableOp%^model_1/dense1/MatMul/ReadVariableOp*^model_1/glob_conv1/BiasAdd/ReadVariableOp)^model_1/glob_conv1/Conv2D/ReadVariableOp*^model_1/glob_conv2/BiasAdd/ReadVariableOp)^model_1/glob_conv2/Conv2D/ReadVariableOp*^model_1/glob_conv3/BiasAdd/ReadVariableOp)^model_1/glob_conv3/Conv2D/ReadVariableOp)^model_1/loc_conv1/BiasAdd/ReadVariableOp(^model_1/loc_conv1/Conv2D/ReadVariableOp&^model_1/output/BiasAdd/ReadVariableOp%^model_1/output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:@:@: : : : : : : : : : : : 2N
%model_1/dense1/BiasAdd/ReadVariableOp%model_1/dense1/BiasAdd/ReadVariableOp2L
$model_1/dense1/MatMul/ReadVariableOp$model_1/dense1/MatMul/ReadVariableOp2V
)model_1/glob_conv1/BiasAdd/ReadVariableOp)model_1/glob_conv1/BiasAdd/ReadVariableOp2T
(model_1/glob_conv1/Conv2D/ReadVariableOp(model_1/glob_conv1/Conv2D/ReadVariableOp2V
)model_1/glob_conv2/BiasAdd/ReadVariableOp)model_1/glob_conv2/BiasAdd/ReadVariableOp2T
(model_1/glob_conv2/Conv2D/ReadVariableOp(model_1/glob_conv2/Conv2D/ReadVariableOp2V
)model_1/glob_conv3/BiasAdd/ReadVariableOp)model_1/glob_conv3/BiasAdd/ReadVariableOp2T
(model_1/glob_conv3/Conv2D/ReadVariableOp(model_1/glob_conv3/Conv2D/ReadVariableOp2T
(model_1/loc_conv1/BiasAdd/ReadVariableOp(model_1/loc_conv1/BiasAdd/ReadVariableOp2R
'model_1/loc_conv1/Conv2D/ReadVariableOp'model_1/loc_conv1/Conv2D/ReadVariableOp2N
%model_1/output/BiasAdd/ReadVariableOp%model_1/output/BiasAdd/ReadVariableOp2L
$model_1/output/MatMul/ReadVariableOp$model_1/output/MatMul/ReadVariableOp:T P
&
_output_shapes
:@
&
_user_specified_nameglobal_input:SO
&
_output_shapes
:@
%
_user_specified_namelocal_input
�

�
F__inference_glob_conv3_layer_call_and_return_conditional_losses_242969

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@*
data_formatNCHW*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@*
data_formatNCHWO
ReluReluBiasAdd:output:0*
T0*&
_output_shapes
:@@`
IdentityIdentityRelu:activations:0^NoOp*
T0*&
_output_shapes
:@@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:N J
&
_output_shapes
:@@
 
_user_specified_nameinputs
�\
�
__inference__traced_save_243214
file_prefix0
,savev2_glob_conv1_kernel_read_readvariableop.
*savev2_glob_conv1_bias_read_readvariableop0
,savev2_glob_conv2_kernel_read_readvariableop.
*savev2_glob_conv2_bias_read_readvariableop0
,savev2_glob_conv3_kernel_read_readvariableop.
*savev2_glob_conv3_bias_read_readvariableop/
+savev2_loc_conv1_kernel_read_readvariableop-
)savev2_loc_conv1_bias_read_readvariableop,
(savev2_dense1_kernel_read_readvariableop*
&savev2_dense1_bias_read_readvariableop,
(savev2_output_kernel_read_readvariableop*
&savev2_output_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop7
3savev2_adam_glob_conv1_kernel_m_read_readvariableop5
1savev2_adam_glob_conv1_bias_m_read_readvariableop7
3savev2_adam_glob_conv2_kernel_m_read_readvariableop5
1savev2_adam_glob_conv2_bias_m_read_readvariableop7
3savev2_adam_glob_conv3_kernel_m_read_readvariableop5
1savev2_adam_glob_conv3_bias_m_read_readvariableop6
2savev2_adam_loc_conv1_kernel_m_read_readvariableop4
0savev2_adam_loc_conv1_bias_m_read_readvariableop3
/savev2_adam_dense1_kernel_m_read_readvariableop1
-savev2_adam_dense1_bias_m_read_readvariableop3
/savev2_adam_output_kernel_m_read_readvariableop1
-savev2_adam_output_bias_m_read_readvariableop7
3savev2_adam_glob_conv1_kernel_v_read_readvariableop5
1savev2_adam_glob_conv1_bias_v_read_readvariableop7
3savev2_adam_glob_conv2_kernel_v_read_readvariableop5
1savev2_adam_glob_conv2_bias_v_read_readvariableop7
3savev2_adam_glob_conv3_kernel_v_read_readvariableop5
1savev2_adam_glob_conv3_bias_v_read_readvariableop6
2savev2_adam_loc_conv1_kernel_v_read_readvariableop4
0savev2_adam_loc_conv1_bias_v_read_readvariableop3
/savev2_adam_dense1_kernel_v_read_readvariableop1
-savev2_adam_dense1_bias_v_read_readvariableop3
/savev2_adam_output_kernel_v_read_readvariableop1
-savev2_adam_output_bias_v_read_readvariableop
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
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*�
value�B�.B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_glob_conv1_kernel_read_readvariableop*savev2_glob_conv1_bias_read_readvariableop,savev2_glob_conv2_kernel_read_readvariableop*savev2_glob_conv2_bias_read_readvariableop,savev2_glob_conv3_kernel_read_readvariableop*savev2_glob_conv3_bias_read_readvariableop+savev2_loc_conv1_kernel_read_readvariableop)savev2_loc_conv1_bias_read_readvariableop(savev2_dense1_kernel_read_readvariableop&savev2_dense1_bias_read_readvariableop(savev2_output_kernel_read_readvariableop&savev2_output_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop3savev2_adam_glob_conv1_kernel_m_read_readvariableop1savev2_adam_glob_conv1_bias_m_read_readvariableop3savev2_adam_glob_conv2_kernel_m_read_readvariableop1savev2_adam_glob_conv2_bias_m_read_readvariableop3savev2_adam_glob_conv3_kernel_m_read_readvariableop1savev2_adam_glob_conv3_bias_m_read_readvariableop2savev2_adam_loc_conv1_kernel_m_read_readvariableop0savev2_adam_loc_conv1_bias_m_read_readvariableop/savev2_adam_dense1_kernel_m_read_readvariableop-savev2_adam_dense1_bias_m_read_readvariableop/savev2_adam_output_kernel_m_read_readvariableop-savev2_adam_output_bias_m_read_readvariableop3savev2_adam_glob_conv1_kernel_v_read_readvariableop1savev2_adam_glob_conv1_bias_v_read_readvariableop3savev2_adam_glob_conv2_kernel_v_read_readvariableop1savev2_adam_glob_conv2_bias_v_read_readvariableop3savev2_adam_glob_conv3_kernel_v_read_readvariableop1savev2_adam_glob_conv3_bias_v_read_readvariableop2savev2_adam_loc_conv1_kernel_v_read_readvariableop0savev2_adam_loc_conv1_bias_v_read_readvariableop/savev2_adam_dense1_kernel_v_read_readvariableop-savev2_adam_dense1_bias_v_read_readvariableop/savev2_adam_output_kernel_v_read_readvariableop-savev2_adam_output_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *<
dtypes2
02.	�
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
�: : : : @:@:@@:@:�:�:
�I�:�:	�b:b: : : : : : : : : : : : @:@:@@:@:�:�:
�I�:�:	�b:b: : : @:@:@@:@:�:�:
�I�:�:	�b:b: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:-)
'
_output_shapes
:�:!

_output_shapes	
:�:&	"
 
_output_shapes
:
�I�:!


_output_shapes	
:�:%!

_output_shapes
:	�b: 

_output_shapes
:b:

_output_shapes
: :
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
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:-)
'
_output_shapes
:�:!

_output_shapes	
:�:&"
 
_output_shapes
:
�I�:!

_output_shapes	
:�:% !

_output_shapes
:	�b: !

_output_shapes
:b:,"(
&
_output_shapes
: : #

_output_shapes
: :,$(
&
_output_shapes
: @: %

_output_shapes
:@:,&(
&
_output_shapes
:@@: '

_output_shapes
:@:-()
'
_output_shapes
:�:!)

_output_shapes	
:�:&*"
 
_output_shapes
:
�I�:!+

_output_shapes	
:�:%,!

_output_shapes
:	�b: -

_output_shapes
:b:.

_output_shapes
: 
�'
�
C__inference_model_1_layer_call_and_return_conditional_losses_242705
global_input
local_input+
glob_conv1_242672: 
glob_conv1_242674: +
glob_conv2_242677: @
glob_conv2_242679:@+
glob_conv3_242682:@@
glob_conv3_242684:@+
loc_conv1_242687:�
loc_conv1_242689:	�!
dense1_242694:
�I�
dense1_242696:	� 
output_242699:	�b
output_242701:b
identity��dense1/StatefulPartitionedCall�"glob_conv1/StatefulPartitionedCall�"glob_conv2/StatefulPartitionedCall�"glob_conv3/StatefulPartitionedCall�!loc_conv1/StatefulPartitionedCall�output/StatefulPartitionedCall�
"glob_conv1/StatefulPartitionedCallStatefulPartitionedCallglobal_inputglob_conv1_242672glob_conv1_242674*
Tin
2*
Tout
2*
_collective_manager_ids
 *&
_output_shapes
:@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_glob_conv1_layer_call_and_return_conditional_losses_242293�
"glob_conv2/StatefulPartitionedCallStatefulPartitionedCall+glob_conv1/StatefulPartitionedCall:output:0glob_conv2_242677glob_conv2_242679*
Tin
2*
Tout
2*
_collective_manager_ids
 *&
_output_shapes
:@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_glob_conv2_layer_call_and_return_conditional_losses_242310�
"glob_conv3/StatefulPartitionedCallStatefulPartitionedCall+glob_conv2/StatefulPartitionedCall:output:0glob_conv3_242682glob_conv3_242684*
Tin
2*
Tout
2*
_collective_manager_ids
 *&
_output_shapes
:@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_glob_conv3_layer_call_and_return_conditional_losses_242327�
!loc_conv1/StatefulPartitionedCallStatefulPartitionedCalllocal_inputloc_conv1_242687loc_conv1_242689*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:@�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_loc_conv1_layer_call_and_return_conditional_losses_242344�
concatenate_1/PartitionedCallPartitionedCall+glob_conv3/StatefulPartitionedCall:output:0*loc_conv1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:@�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_concatenate_1_layer_call_and_return_conditional_losses_242357�
Flatten/PartitionedCallPartitionedCall&concatenate_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	@�I* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_Flatten_layer_call_and_return_conditional_losses_242367�
dense1/StatefulPartitionedCallStatefulPartitionedCall Flatten/PartitionedCall:output:0dense1_242694dense1_242696*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	@�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense1_layer_call_and_return_conditional_losses_242380�
output/StatefulPartitionedCallStatefulPartitionedCall'dense1/StatefulPartitionedCall:output:0output_242699output_242701*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:@b*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_242397m
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:@b�
NoOpNoOp^dense1/StatefulPartitionedCall#^glob_conv1/StatefulPartitionedCall#^glob_conv2/StatefulPartitionedCall#^glob_conv3/StatefulPartitionedCall"^loc_conv1/StatefulPartitionedCall^output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:@:@: : : : : : : : : : : : 2@
dense1/StatefulPartitionedCalldense1/StatefulPartitionedCall2H
"glob_conv1/StatefulPartitionedCall"glob_conv1/StatefulPartitionedCall2H
"glob_conv2/StatefulPartitionedCall"glob_conv2/StatefulPartitionedCall2H
"glob_conv3/StatefulPartitionedCall"glob_conv3/StatefulPartitionedCall2F
!loc_conv1/StatefulPartitionedCall!loc_conv1/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:T P
&
_output_shapes
:@
&
_user_specified_nameglobal_input:SO
&
_output_shapes
:@
%
_user_specified_namelocal_input
�>
�	
C__inference_model_1_layer_call_and_return_conditional_losses_242824
inputs_0
inputs_1C
)glob_conv1_conv2d_readvariableop_resource: 8
*glob_conv1_biasadd_readvariableop_resource: C
)glob_conv2_conv2d_readvariableop_resource: @8
*glob_conv2_biasadd_readvariableop_resource:@C
)glob_conv3_conv2d_readvariableop_resource:@@8
*glob_conv3_biasadd_readvariableop_resource:@C
(loc_conv1_conv2d_readvariableop_resource:�8
)loc_conv1_biasadd_readvariableop_resource:	�9
%dense1_matmul_readvariableop_resource:
�I�5
&dense1_biasadd_readvariableop_resource:	�8
%output_matmul_readvariableop_resource:	�b4
&output_biasadd_readvariableop_resource:b
identity��dense1/BiasAdd/ReadVariableOp�dense1/MatMul/ReadVariableOp�!glob_conv1/BiasAdd/ReadVariableOp� glob_conv1/Conv2D/ReadVariableOp�!glob_conv2/BiasAdd/ReadVariableOp� glob_conv2/Conv2D/ReadVariableOp�!glob_conv3/BiasAdd/ReadVariableOp� glob_conv3/Conv2D/ReadVariableOp� loc_conv1/BiasAdd/ReadVariableOp�loc_conv1/Conv2D/ReadVariableOp�output/BiasAdd/ReadVariableOp�output/MatMul/ReadVariableOp�
 glob_conv1/Conv2D/ReadVariableOpReadVariableOp)glob_conv1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
glob_conv1/Conv2DConv2Dinputs_0(glob_conv1/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:@ *
data_formatNCHW*
paddingSAME*
strides
�
!glob_conv1/BiasAdd/ReadVariableOpReadVariableOp*glob_conv1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
glob_conv1/BiasAddBiasAddglob_conv1/Conv2D:output:0)glob_conv1/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:@ *
data_formatNCHWe
glob_conv1/ReluReluglob_conv1/BiasAdd:output:0*
T0*&
_output_shapes
:@ �
 glob_conv2/Conv2D/ReadVariableOpReadVariableOp)glob_conv2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
glob_conv2/Conv2DConv2Dglob_conv1/Relu:activations:0(glob_conv2/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@*
data_formatNCHW*
paddingSAME*
strides
�
!glob_conv2/BiasAdd/ReadVariableOpReadVariableOp*glob_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
glob_conv2/BiasAddBiasAddglob_conv2/Conv2D:output:0)glob_conv2/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@*
data_formatNCHWe
glob_conv2/ReluReluglob_conv2/BiasAdd:output:0*
T0*&
_output_shapes
:@@�
 glob_conv3/Conv2D/ReadVariableOpReadVariableOp)glob_conv3_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
glob_conv3/Conv2DConv2Dglob_conv2/Relu:activations:0(glob_conv3/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@*
data_formatNCHW*
paddingSAME*
strides
�
!glob_conv3/BiasAdd/ReadVariableOpReadVariableOp*glob_conv3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
glob_conv3/BiasAddBiasAddglob_conv3/Conv2D:output:0)glob_conv3/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@*
data_formatNCHWe
glob_conv3/ReluReluglob_conv3/BiasAdd:output:0*
T0*&
_output_shapes
:@@�
loc_conv1/Conv2D/ReadVariableOpReadVariableOp(loc_conv1_conv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
loc_conv1/Conv2DConv2Dinputs_1'loc_conv1/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:@�*
data_formatNCHW*
paddingSAME*
strides
�
 loc_conv1/BiasAdd/ReadVariableOpReadVariableOp)loc_conv1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
loc_conv1/BiasAddBiasAddloc_conv1/Conv2D:output:0(loc_conv1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:@�*
data_formatNCHWd
loc_conv1/ReluReluloc_conv1/BiasAdd:output:0*
T0*'
_output_shapes
:@�[
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatenate_1/concatConcatV2glob_conv3/Relu:activations:0loc_conv1/Relu:activations:0"concatenate_1/concat/axis:output:0*
N*
T0*'
_output_shapes
:@�o
Flatten/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
Flatten/transpose	Transposeconcatenate_1/concat:output:0Flatten/transpose/perm:output:0*
T0*'
_output_shapes
:@�^
Flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����$  s
Flatten/ReshapeReshapeFlatten/transpose:y:0Flatten/Const:output:0*
T0*
_output_shapes
:	@�I�
dense1/MatMul/ReadVariableOpReadVariableOp%dense1_matmul_readvariableop_resource* 
_output_shapes
:
�I�*
dtype0�
dense1/MatMulMatMulFlatten/Reshape:output:0$dense1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	@��
dense1/BiasAdd/ReadVariableOpReadVariableOp&dense1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense1/BiasAddBiasAdddense1/MatMul:product:0%dense1/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	@�V
dense1/ReluReludense1/BiasAdd:output:0*
T0*
_output_shapes
:	@��
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes
:	�b*
dtype0�
output/MatMulMatMuldense1/Relu:activations:0$output/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:@b�
output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:b*
dtype0�
output/BiasAddBiasAddoutput/MatMul:product:0%output/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:@bU
output/ReluReluoutput/BiasAdd:output:0*
T0*
_output_shapes

:@b_
IdentityIdentityoutput/Relu:activations:0^NoOp*
T0*
_output_shapes

:@b�
NoOpNoOp^dense1/BiasAdd/ReadVariableOp^dense1/MatMul/ReadVariableOp"^glob_conv1/BiasAdd/ReadVariableOp!^glob_conv1/Conv2D/ReadVariableOp"^glob_conv2/BiasAdd/ReadVariableOp!^glob_conv2/Conv2D/ReadVariableOp"^glob_conv3/BiasAdd/ReadVariableOp!^glob_conv3/Conv2D/ReadVariableOp!^loc_conv1/BiasAdd/ReadVariableOp ^loc_conv1/Conv2D/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:@:@: : : : : : : : : : : : 2>
dense1/BiasAdd/ReadVariableOpdense1/BiasAdd/ReadVariableOp2<
dense1/MatMul/ReadVariableOpdense1/MatMul/ReadVariableOp2F
!glob_conv1/BiasAdd/ReadVariableOp!glob_conv1/BiasAdd/ReadVariableOp2D
 glob_conv1/Conv2D/ReadVariableOp glob_conv1/Conv2D/ReadVariableOp2F
!glob_conv2/BiasAdd/ReadVariableOp!glob_conv2/BiasAdd/ReadVariableOp2D
 glob_conv2/Conv2D/ReadVariableOp glob_conv2/Conv2D/ReadVariableOp2F
!glob_conv3/BiasAdd/ReadVariableOp!glob_conv3/BiasAdd/ReadVariableOp2D
 glob_conv3/Conv2D/ReadVariableOp glob_conv3/Conv2D/ReadVariableOp2D
 loc_conv1/BiasAdd/ReadVariableOp loc_conv1/BiasAdd/ReadVariableOp2B
loc_conv1/Conv2D/ReadVariableOploc_conv1/Conv2D/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp:P L
&
_output_shapes
:@
"
_user_specified_name
inputs/0:PL
&
_output_shapes
:@
"
_user_specified_name
inputs/1
�
�
'__inference_output_layer_call_fn_243044

inputs
unknown:	�b
	unknown_0:b
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:@b*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_242397f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:@b`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*"
_input_shapes
:	@�: : 22
StatefulPartitionedCallStatefulPartitionedCall:G C

_output_shapes
:	@�
 
_user_specified_nameinputs
�
u
I__inference_concatenate_1_layer_call_and_return_conditional_losses_243002
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :w
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*'
_output_shapes
:@�W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:@�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:@@:@�:P L
&
_output_shapes
:@@
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:@�
"
_user_specified_name
inputs/1
�	
�
B__inference_dense1_layer_call_and_return_conditional_losses_243035

inputs2
matmul_readvariableop_resource:
�I�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
�I�*
dtype0a
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	@�s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	@�H
ReluReluBiasAdd:output:0*
T0*
_output_shapes
:	@�Y
IdentityIdentityRelu:activations:0^NoOp*
T0*
_output_shapes
:	@�w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*"
_input_shapes
:	@�I: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:G C

_output_shapes
:	@�I
 
_user_specified_nameinputs
�'
�
C__inference_model_1_layer_call_and_return_conditional_losses_242404

inputs
inputs_1+
glob_conv1_242294: 
glob_conv1_242296: +
glob_conv2_242311: @
glob_conv2_242313:@+
glob_conv3_242328:@@
glob_conv3_242330:@+
loc_conv1_242345:�
loc_conv1_242347:	�!
dense1_242381:
�I�
dense1_242383:	� 
output_242398:	�b
output_242400:b
identity��dense1/StatefulPartitionedCall�"glob_conv1/StatefulPartitionedCall�"glob_conv2/StatefulPartitionedCall�"glob_conv3/StatefulPartitionedCall�!loc_conv1/StatefulPartitionedCall�output/StatefulPartitionedCall�
"glob_conv1/StatefulPartitionedCallStatefulPartitionedCallinputsglob_conv1_242294glob_conv1_242296*
Tin
2*
Tout
2*
_collective_manager_ids
 *&
_output_shapes
:@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_glob_conv1_layer_call_and_return_conditional_losses_242293�
"glob_conv2/StatefulPartitionedCallStatefulPartitionedCall+glob_conv1/StatefulPartitionedCall:output:0glob_conv2_242311glob_conv2_242313*
Tin
2*
Tout
2*
_collective_manager_ids
 *&
_output_shapes
:@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_glob_conv2_layer_call_and_return_conditional_losses_242310�
"glob_conv3/StatefulPartitionedCallStatefulPartitionedCall+glob_conv2/StatefulPartitionedCall:output:0glob_conv3_242328glob_conv3_242330*
Tin
2*
Tout
2*
_collective_manager_ids
 *&
_output_shapes
:@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_glob_conv3_layer_call_and_return_conditional_losses_242327�
!loc_conv1/StatefulPartitionedCallStatefulPartitionedCallinputs_1loc_conv1_242345loc_conv1_242347*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:@�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_loc_conv1_layer_call_and_return_conditional_losses_242344�
concatenate_1/PartitionedCallPartitionedCall+glob_conv3/StatefulPartitionedCall:output:0*loc_conv1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:@�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_concatenate_1_layer_call_and_return_conditional_losses_242357�
Flatten/PartitionedCallPartitionedCall&concatenate_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	@�I* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_Flatten_layer_call_and_return_conditional_losses_242367�
dense1/StatefulPartitionedCallStatefulPartitionedCall Flatten/PartitionedCall:output:0dense1_242381dense1_242383*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	@�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense1_layer_call_and_return_conditional_losses_242380�
output/StatefulPartitionedCallStatefulPartitionedCall'dense1/StatefulPartitionedCall:output:0output_242398output_242400*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:@b*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_242397m
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:@b�
NoOpNoOp^dense1/StatefulPartitionedCall#^glob_conv1/StatefulPartitionedCall#^glob_conv2/StatefulPartitionedCall#^glob_conv3/StatefulPartitionedCall"^loc_conv1/StatefulPartitionedCall^output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:@:@: : : : : : : : : : : : 2@
dense1/StatefulPartitionedCalldense1/StatefulPartitionedCall2H
"glob_conv1/StatefulPartitionedCall"glob_conv1/StatefulPartitionedCall2H
"glob_conv2/StatefulPartitionedCall"glob_conv2/StatefulPartitionedCall2H
"glob_conv3/StatefulPartitionedCall"glob_conv3/StatefulPartitionedCall2F
!loc_conv1/StatefulPartitionedCall!loc_conv1/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:N J
&
_output_shapes
:@
 
_user_specified_nameinputs:NJ
&
_output_shapes
:@
 
_user_specified_nameinputs
�

�
F__inference_glob_conv2_layer_call_and_return_conditional_losses_242949

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@*
data_formatNCHW*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@*
data_formatNCHWO
ReluReluBiasAdd:output:0*
T0*&
_output_shapes
:@@`
IdentityIdentityRelu:activations:0^NoOp*
T0*&
_output_shapes
:@@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:@ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:N J
&
_output_shapes
:@ 
 
_user_specified_nameinputs
�
�
*__inference_loc_conv1_layer_call_fn_242978

inputs"
unknown:�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:@�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_loc_conv1_layer_call_and_return_conditional_losses_242344o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:@�`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:@: : 22
StatefulPartitionedCallStatefulPartitionedCall:N J
&
_output_shapes
:@
 
_user_specified_nameinputs
�
s
I__inference_concatenate_1_layer_call_and_return_conditional_losses_242357

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :u
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*'
_output_shapes
:@�W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:@�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:@@:@�:N J
&
_output_shapes
:@@
 
_user_specified_nameinputs:OK
'
_output_shapes
:@�
 
_user_specified_nameinputs
�
�
E__inference_loc_conv1_layer_call_and_return_conditional_losses_242344

inputs9
conv2d_readvariableop_resource:�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:@�*
data_formatNCHW*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:@�*
data_formatNCHWP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:@�a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:@�w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:N J
&
_output_shapes
:@
 
_user_specified_nameinputs
�
�
(__inference_model_1_layer_call_fn_242741
inputs_0
inputs_1!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@$
	unknown_5:�
	unknown_6:	�
	unknown_7:
�I�
	unknown_8:	�
	unknown_9:	�b

unknown_10:b
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:@b*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_model_1_layer_call_and_return_conditional_losses_242404f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:@b`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:@:@: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
&
_output_shapes
:@
"
_user_specified_name
inputs/0:PL
&
_output_shapes
:@
"
_user_specified_name
inputs/1
�

�
F__inference_glob_conv2_layer_call_and_return_conditional_losses_242310

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@*
data_formatNCHW*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@*
data_formatNCHWO
ReluReluBiasAdd:output:0*
T0*&
_output_shapes
:@@`
IdentityIdentityRelu:activations:0^NoOp*
T0*&
_output_shapes
:@@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:@ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:N J
&
_output_shapes
:@ 
 
_user_specified_nameinputs
�
�
(__inference_model_1_layer_call_fn_242771
inputs_0
inputs_1!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@$
	unknown_5:�
	unknown_6:	�
	unknown_7:
�I�
	unknown_8:	�
	unknown_9:	�b

unknown_10:b
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:@b*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_model_1_layer_call_and_return_conditional_losses_242574f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:@b`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:@:@: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
&
_output_shapes
:@
"
_user_specified_name
inputs/0:PL
&
_output_shapes
:@
"
_user_specified_name
inputs/1
�
_
C__inference_Flatten_layer_call_and_return_conditional_losses_243015

inputs
identityg
transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             i
	transpose	Transposeinputstranspose/perm:output:0*
T0*'
_output_shapes
:@�V
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����$  [
ReshapeReshapetranspose:y:0Const:output:0*
T0*
_output_shapes
:	@�IP
IdentityIdentityReshape:output:0*
T0*
_output_shapes
:	@�I"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:@�:O K
'
_output_shapes
:@�
 
_user_specified_nameinputs
�
�
(__inference_model_1_layer_call_fn_242431
global_input
local_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@$
	unknown_5:�
	unknown_6:	�
	unknown_7:
�I�
	unknown_8:	�
	unknown_9:	�b

unknown_10:b
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallglobal_inputlocal_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:@b*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_model_1_layer_call_and_return_conditional_losses_242404f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:@b`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:@:@: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
&
_output_shapes
:@
&
_user_specified_nameglobal_input:SO
&
_output_shapes
:@
%
_user_specified_namelocal_input
�>
�	
C__inference_model_1_layer_call_and_return_conditional_losses_242877
inputs_0
inputs_1C
)glob_conv1_conv2d_readvariableop_resource: 8
*glob_conv1_biasadd_readvariableop_resource: C
)glob_conv2_conv2d_readvariableop_resource: @8
*glob_conv2_biasadd_readvariableop_resource:@C
)glob_conv3_conv2d_readvariableop_resource:@@8
*glob_conv3_biasadd_readvariableop_resource:@C
(loc_conv1_conv2d_readvariableop_resource:�8
)loc_conv1_biasadd_readvariableop_resource:	�9
%dense1_matmul_readvariableop_resource:
�I�5
&dense1_biasadd_readvariableop_resource:	�8
%output_matmul_readvariableop_resource:	�b4
&output_biasadd_readvariableop_resource:b
identity��dense1/BiasAdd/ReadVariableOp�dense1/MatMul/ReadVariableOp�!glob_conv1/BiasAdd/ReadVariableOp� glob_conv1/Conv2D/ReadVariableOp�!glob_conv2/BiasAdd/ReadVariableOp� glob_conv2/Conv2D/ReadVariableOp�!glob_conv3/BiasAdd/ReadVariableOp� glob_conv3/Conv2D/ReadVariableOp� loc_conv1/BiasAdd/ReadVariableOp�loc_conv1/Conv2D/ReadVariableOp�output/BiasAdd/ReadVariableOp�output/MatMul/ReadVariableOp�
 glob_conv1/Conv2D/ReadVariableOpReadVariableOp)glob_conv1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
glob_conv1/Conv2DConv2Dinputs_0(glob_conv1/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:@ *
data_formatNCHW*
paddingSAME*
strides
�
!glob_conv1/BiasAdd/ReadVariableOpReadVariableOp*glob_conv1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
glob_conv1/BiasAddBiasAddglob_conv1/Conv2D:output:0)glob_conv1/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:@ *
data_formatNCHWe
glob_conv1/ReluReluglob_conv1/BiasAdd:output:0*
T0*&
_output_shapes
:@ �
 glob_conv2/Conv2D/ReadVariableOpReadVariableOp)glob_conv2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
glob_conv2/Conv2DConv2Dglob_conv1/Relu:activations:0(glob_conv2/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@*
data_formatNCHW*
paddingSAME*
strides
�
!glob_conv2/BiasAdd/ReadVariableOpReadVariableOp*glob_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
glob_conv2/BiasAddBiasAddglob_conv2/Conv2D:output:0)glob_conv2/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@*
data_formatNCHWe
glob_conv2/ReluReluglob_conv2/BiasAdd:output:0*
T0*&
_output_shapes
:@@�
 glob_conv3/Conv2D/ReadVariableOpReadVariableOp)glob_conv3_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
glob_conv3/Conv2DConv2Dglob_conv2/Relu:activations:0(glob_conv3/Conv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@*
data_formatNCHW*
paddingSAME*
strides
�
!glob_conv3/BiasAdd/ReadVariableOpReadVariableOp*glob_conv3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
glob_conv3/BiasAddBiasAddglob_conv3/Conv2D:output:0)glob_conv3/BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@*
data_formatNCHWe
glob_conv3/ReluReluglob_conv3/BiasAdd:output:0*
T0*&
_output_shapes
:@@�
loc_conv1/Conv2D/ReadVariableOpReadVariableOp(loc_conv1_conv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
loc_conv1/Conv2DConv2Dinputs_1'loc_conv1/Conv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:@�*
data_formatNCHW*
paddingSAME*
strides
�
 loc_conv1/BiasAdd/ReadVariableOpReadVariableOp)loc_conv1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
loc_conv1/BiasAddBiasAddloc_conv1/Conv2D:output:0(loc_conv1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:@�*
data_formatNCHWd
loc_conv1/ReluReluloc_conv1/BiasAdd:output:0*
T0*'
_output_shapes
:@�[
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatenate_1/concatConcatV2glob_conv3/Relu:activations:0loc_conv1/Relu:activations:0"concatenate_1/concat/axis:output:0*
N*
T0*'
_output_shapes
:@�o
Flatten/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
Flatten/transpose	Transposeconcatenate_1/concat:output:0Flatten/transpose/perm:output:0*
T0*'
_output_shapes
:@�^
Flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����$  s
Flatten/ReshapeReshapeFlatten/transpose:y:0Flatten/Const:output:0*
T0*
_output_shapes
:	@�I�
dense1/MatMul/ReadVariableOpReadVariableOp%dense1_matmul_readvariableop_resource* 
_output_shapes
:
�I�*
dtype0�
dense1/MatMulMatMulFlatten/Reshape:output:0$dense1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	@��
dense1/BiasAdd/ReadVariableOpReadVariableOp&dense1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense1/BiasAddBiasAdddense1/MatMul:product:0%dense1/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	@�V
dense1/ReluReludense1/BiasAdd:output:0*
T0*
_output_shapes
:	@��
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes
:	�b*
dtype0�
output/MatMulMatMuldense1/Relu:activations:0$output/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:@b�
output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:b*
dtype0�
output/BiasAddBiasAddoutput/MatMul:product:0%output/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:@bU
output/ReluReluoutput/BiasAdd:output:0*
T0*
_output_shapes

:@b_
IdentityIdentityoutput/Relu:activations:0^NoOp*
T0*
_output_shapes

:@b�
NoOpNoOp^dense1/BiasAdd/ReadVariableOp^dense1/MatMul/ReadVariableOp"^glob_conv1/BiasAdd/ReadVariableOp!^glob_conv1/Conv2D/ReadVariableOp"^glob_conv2/BiasAdd/ReadVariableOp!^glob_conv2/Conv2D/ReadVariableOp"^glob_conv3/BiasAdd/ReadVariableOp!^glob_conv3/Conv2D/ReadVariableOp!^loc_conv1/BiasAdd/ReadVariableOp ^loc_conv1/Conv2D/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:@:@: : : : : : : : : : : : 2>
dense1/BiasAdd/ReadVariableOpdense1/BiasAdd/ReadVariableOp2<
dense1/MatMul/ReadVariableOpdense1/MatMul/ReadVariableOp2F
!glob_conv1/BiasAdd/ReadVariableOp!glob_conv1/BiasAdd/ReadVariableOp2D
 glob_conv1/Conv2D/ReadVariableOp glob_conv1/Conv2D/ReadVariableOp2F
!glob_conv2/BiasAdd/ReadVariableOp!glob_conv2/BiasAdd/ReadVariableOp2D
 glob_conv2/Conv2D/ReadVariableOp glob_conv2/Conv2D/ReadVariableOp2F
!glob_conv3/BiasAdd/ReadVariableOp!glob_conv3/BiasAdd/ReadVariableOp2D
 glob_conv3/Conv2D/ReadVariableOp glob_conv3/Conv2D/ReadVariableOp2D
 loc_conv1/BiasAdd/ReadVariableOp loc_conv1/BiasAdd/ReadVariableOp2B
loc_conv1/Conv2D/ReadVariableOploc_conv1/Conv2D/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp:P L
&
_output_shapes
:@
"
_user_specified_name
inputs/0:PL
&
_output_shapes
:@
"
_user_specified_name
inputs/1
�
�
+__inference_glob_conv2_layer_call_fn_242938

inputs!
unknown: @
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *&
_output_shapes
:@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_glob_conv2_layer_call_and_return_conditional_losses_242310n
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*&
_output_shapes
:@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:@ : : 22
StatefulPartitionedCallStatefulPartitionedCall:N J
&
_output_shapes
:@ 
 
_user_specified_nameinputs
�
�
E__inference_loc_conv1_layer_call_and_return_conditional_losses_242989

inputs9
conv2d_readvariableop_resource:�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:�*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*'
_output_shapes
:@�*
data_formatNCHW*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:@�*
data_formatNCHWP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:@�a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:@�w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:N J
&
_output_shapes
:@
 
_user_specified_nameinputs
�
_
C__inference_Flatten_layer_call_and_return_conditional_losses_242367

inputs
identityg
transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             i
	transpose	Transposeinputstranspose/perm:output:0*
T0*'
_output_shapes
:@�V
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����$  [
ReshapeReshapetranspose:y:0Const:output:0*
T0*
_output_shapes
:	@�IP
IdentityIdentityReshape:output:0*
T0*
_output_shapes
:	@�I"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:@�:O K
'
_output_shapes
:@�
 
_user_specified_nameinputs
�
�
$__inference_signature_wrapper_242909
global_input
local_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@$
	unknown_5:�
	unknown_6:	�
	unknown_7:
�I�
	unknown_8:	�
	unknown_9:	�b

unknown_10:b
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallglobal_inputlocal_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:@b*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� **
f%R#
!__inference__wrapped_model_242273f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:@b`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:@:@: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
&
_output_shapes
:@
&
_user_specified_nameglobal_input:SO
&
_output_shapes
:@
%
_user_specified_namelocal_input
�
�
(__inference_model_1_layer_call_fn_242631
global_input
local_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@$
	unknown_5:�
	unknown_6:	�
	unknown_7:
�I�
	unknown_8:	�
	unknown_9:	�b

unknown_10:b
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallglobal_inputlocal_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:@b*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_model_1_layer_call_and_return_conditional_losses_242574f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:@b`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:@:@: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
&
_output_shapes
:@
&
_user_specified_nameglobal_input:SO
&
_output_shapes
:@
%
_user_specified_namelocal_input
�
D
(__inference_Flatten_layer_call_fn_243007

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	@�I* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_Flatten_layer_call_and_return_conditional_losses_242367X
IdentityIdentityPartitionedCall:output:0*
T0*
_output_shapes
:	@�I"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:@�:O K
'
_output_shapes
:@�
 
_user_specified_nameinputs
�'
�
C__inference_model_1_layer_call_and_return_conditional_losses_242574

inputs
inputs_1+
glob_conv1_242541: 
glob_conv1_242543: +
glob_conv2_242546: @
glob_conv2_242548:@+
glob_conv3_242551:@@
glob_conv3_242553:@+
loc_conv1_242556:�
loc_conv1_242558:	�!
dense1_242563:
�I�
dense1_242565:	� 
output_242568:	�b
output_242570:b
identity��dense1/StatefulPartitionedCall�"glob_conv1/StatefulPartitionedCall�"glob_conv2/StatefulPartitionedCall�"glob_conv3/StatefulPartitionedCall�!loc_conv1/StatefulPartitionedCall�output/StatefulPartitionedCall�
"glob_conv1/StatefulPartitionedCallStatefulPartitionedCallinputsglob_conv1_242541glob_conv1_242543*
Tin
2*
Tout
2*
_collective_manager_ids
 *&
_output_shapes
:@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_glob_conv1_layer_call_and_return_conditional_losses_242293�
"glob_conv2/StatefulPartitionedCallStatefulPartitionedCall+glob_conv1/StatefulPartitionedCall:output:0glob_conv2_242546glob_conv2_242548*
Tin
2*
Tout
2*
_collective_manager_ids
 *&
_output_shapes
:@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_glob_conv2_layer_call_and_return_conditional_losses_242310�
"glob_conv3/StatefulPartitionedCallStatefulPartitionedCall+glob_conv2/StatefulPartitionedCall:output:0glob_conv3_242551glob_conv3_242553*
Tin
2*
Tout
2*
_collective_manager_ids
 *&
_output_shapes
:@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_glob_conv3_layer_call_and_return_conditional_losses_242327�
!loc_conv1/StatefulPartitionedCallStatefulPartitionedCallinputs_1loc_conv1_242556loc_conv1_242558*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:@�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_loc_conv1_layer_call_and_return_conditional_losses_242344�
concatenate_1/PartitionedCallPartitionedCall+glob_conv3/StatefulPartitionedCall:output:0*loc_conv1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:@�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_concatenate_1_layer_call_and_return_conditional_losses_242357�
Flatten/PartitionedCallPartitionedCall&concatenate_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	@�I* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_Flatten_layer_call_and_return_conditional_losses_242367�
dense1/StatefulPartitionedCallStatefulPartitionedCall Flatten/PartitionedCall:output:0dense1_242563dense1_242565*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	@�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense1_layer_call_and_return_conditional_losses_242380�
output/StatefulPartitionedCallStatefulPartitionedCall'dense1/StatefulPartitionedCall:output:0output_242568output_242570*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:@b*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_242397m
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:@b�
NoOpNoOp^dense1/StatefulPartitionedCall#^glob_conv1/StatefulPartitionedCall#^glob_conv2/StatefulPartitionedCall#^glob_conv3/StatefulPartitionedCall"^loc_conv1/StatefulPartitionedCall^output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:@:@: : : : : : : : : : : : 2@
dense1/StatefulPartitionedCalldense1/StatefulPartitionedCall2H
"glob_conv1/StatefulPartitionedCall"glob_conv1/StatefulPartitionedCall2H
"glob_conv2/StatefulPartitionedCall"glob_conv2/StatefulPartitionedCall2H
"glob_conv3/StatefulPartitionedCall"glob_conv3/StatefulPartitionedCall2F
!loc_conv1/StatefulPartitionedCall!loc_conv1/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:N J
&
_output_shapes
:@
 
_user_specified_nameinputs:NJ
&
_output_shapes
:@
 
_user_specified_nameinputs
�'
�
C__inference_model_1_layer_call_and_return_conditional_losses_242668
global_input
local_input+
glob_conv1_242635: 
glob_conv1_242637: +
glob_conv2_242640: @
glob_conv2_242642:@+
glob_conv3_242645:@@
glob_conv3_242647:@+
loc_conv1_242650:�
loc_conv1_242652:	�!
dense1_242657:
�I�
dense1_242659:	� 
output_242662:	�b
output_242664:b
identity��dense1/StatefulPartitionedCall�"glob_conv1/StatefulPartitionedCall�"glob_conv2/StatefulPartitionedCall�"glob_conv3/StatefulPartitionedCall�!loc_conv1/StatefulPartitionedCall�output/StatefulPartitionedCall�
"glob_conv1/StatefulPartitionedCallStatefulPartitionedCallglobal_inputglob_conv1_242635glob_conv1_242637*
Tin
2*
Tout
2*
_collective_manager_ids
 *&
_output_shapes
:@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_glob_conv1_layer_call_and_return_conditional_losses_242293�
"glob_conv2/StatefulPartitionedCallStatefulPartitionedCall+glob_conv1/StatefulPartitionedCall:output:0glob_conv2_242640glob_conv2_242642*
Tin
2*
Tout
2*
_collective_manager_ids
 *&
_output_shapes
:@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_glob_conv2_layer_call_and_return_conditional_losses_242310�
"glob_conv3/StatefulPartitionedCallStatefulPartitionedCall+glob_conv2/StatefulPartitionedCall:output:0glob_conv3_242645glob_conv3_242647*
Tin
2*
Tout
2*
_collective_manager_ids
 *&
_output_shapes
:@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_glob_conv3_layer_call_and_return_conditional_losses_242327�
!loc_conv1/StatefulPartitionedCallStatefulPartitionedCalllocal_inputloc_conv1_242650loc_conv1_242652*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:@�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_loc_conv1_layer_call_and_return_conditional_losses_242344�
concatenate_1/PartitionedCallPartitionedCall+glob_conv3/StatefulPartitionedCall:output:0*loc_conv1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:@�* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_concatenate_1_layer_call_and_return_conditional_losses_242357�
Flatten/PartitionedCallPartitionedCall&concatenate_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	@�I* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_Flatten_layer_call_and_return_conditional_losses_242367�
dense1/StatefulPartitionedCallStatefulPartitionedCall Flatten/PartitionedCall:output:0dense1_242657dense1_242659*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	@�*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense1_layer_call_and_return_conditional_losses_242380�
output/StatefulPartitionedCallStatefulPartitionedCall'dense1/StatefulPartitionedCall:output:0output_242662output_242664*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:@b*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_242397m
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:@b�
NoOpNoOp^dense1/StatefulPartitionedCall#^glob_conv1/StatefulPartitionedCall#^glob_conv2/StatefulPartitionedCall#^glob_conv3/StatefulPartitionedCall"^loc_conv1/StatefulPartitionedCall^output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:@:@: : : : : : : : : : : : 2@
dense1/StatefulPartitionedCalldense1/StatefulPartitionedCall2H
"glob_conv1/StatefulPartitionedCall"glob_conv1/StatefulPartitionedCall2H
"glob_conv2/StatefulPartitionedCall"glob_conv2/StatefulPartitionedCall2H
"glob_conv3/StatefulPartitionedCall"glob_conv3/StatefulPartitionedCall2F
!loc_conv1/StatefulPartitionedCall!loc_conv1/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:T P
&
_output_shapes
:@
&
_user_specified_nameglobal_input:SO
&
_output_shapes
:@
%
_user_specified_namelocal_input
��
�
"__inference__traced_restore_243359
file_prefix<
"assignvariableop_glob_conv1_kernel: 0
"assignvariableop_1_glob_conv1_bias: >
$assignvariableop_2_glob_conv2_kernel: @0
"assignvariableop_3_glob_conv2_bias:@>
$assignvariableop_4_glob_conv3_kernel:@@0
"assignvariableop_5_glob_conv3_bias:@>
#assignvariableop_6_loc_conv1_kernel:�0
!assignvariableop_7_loc_conv1_bias:	�4
 assignvariableop_8_dense1_kernel:
�I�-
assignvariableop_9_dense1_bias:	�4
!assignvariableop_10_output_kernel:	�b-
assignvariableop_11_output_bias:b'
assignvariableop_12_adam_iter:	 )
assignvariableop_13_adam_beta_1: )
assignvariableop_14_adam_beta_2: (
assignvariableop_15_adam_decay: 0
&assignvariableop_16_adam_learning_rate: #
assignvariableop_17_total: #
assignvariableop_18_count: %
assignvariableop_19_total_1: %
assignvariableop_20_count_1: F
,assignvariableop_21_adam_glob_conv1_kernel_m: 8
*assignvariableop_22_adam_glob_conv1_bias_m: F
,assignvariableop_23_adam_glob_conv2_kernel_m: @8
*assignvariableop_24_adam_glob_conv2_bias_m:@F
,assignvariableop_25_adam_glob_conv3_kernel_m:@@8
*assignvariableop_26_adam_glob_conv3_bias_m:@F
+assignvariableop_27_adam_loc_conv1_kernel_m:�8
)assignvariableop_28_adam_loc_conv1_bias_m:	�<
(assignvariableop_29_adam_dense1_kernel_m:
�I�5
&assignvariableop_30_adam_dense1_bias_m:	�;
(assignvariableop_31_adam_output_kernel_m:	�b4
&assignvariableop_32_adam_output_bias_m:bF
,assignvariableop_33_adam_glob_conv1_kernel_v: 8
*assignvariableop_34_adam_glob_conv1_bias_v: F
,assignvariableop_35_adam_glob_conv2_kernel_v: @8
*assignvariableop_36_adam_glob_conv2_bias_v:@F
,assignvariableop_37_adam_glob_conv3_kernel_v:@@8
*assignvariableop_38_adam_glob_conv3_bias_v:@F
+assignvariableop_39_adam_loc_conv1_kernel_v:�8
)assignvariableop_40_adam_loc_conv1_bias_v:	�<
(assignvariableop_41_adam_dense1_kernel_v:
�I�5
&assignvariableop_42_adam_dense1_bias_v:	�;
(assignvariableop_43_adam_output_kernel_v:	�b4
&assignvariableop_44_adam_output_bias_v:b
identity_46��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*�
value�B�.B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:.*
dtype0*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::*<
dtypes2
02.	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp"assignvariableop_glob_conv1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp"assignvariableop_1_glob_conv1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp$assignvariableop_2_glob_conv2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp"assignvariableop_3_glob_conv2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp$assignvariableop_4_glob_conv3_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp"assignvariableop_5_glob_conv3_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp#assignvariableop_6_loc_conv1_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp!assignvariableop_7_loc_conv1_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp assignvariableop_8_dense1_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense1_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp!assignvariableop_10_output_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_output_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_iterIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_beta_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_beta_2Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_decayIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp&assignvariableop_16_adam_learning_rateIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpassignvariableop_17_totalIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOpassignvariableop_18_countIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOpassignvariableop_19_total_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOpassignvariableop_20_count_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp,assignvariableop_21_adam_glob_conv1_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_glob_conv1_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp,assignvariableop_23_adam_glob_conv2_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_glob_conv2_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp,assignvariableop_25_adam_glob_conv3_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adam_glob_conv3_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_loc_conv1_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_loc_conv1_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp(assignvariableop_29_adam_dense1_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp&assignvariableop_30_adam_dense1_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp(assignvariableop_31_adam_output_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp&assignvariableop_32_adam_output_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp,assignvariableop_33_adam_glob_conv1_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp*assignvariableop_34_adam_glob_conv1_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp,assignvariableop_35_adam_glob_conv2_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp*assignvariableop_36_adam_glob_conv2_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp,assignvariableop_37_adam_glob_conv3_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp*assignvariableop_38_adam_glob_conv3_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp+assignvariableop_39_adam_loc_conv1_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp)assignvariableop_40_adam_loc_conv1_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp(assignvariableop_41_adam_dense1_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp&assignvariableop_42_adam_dense1_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp(assignvariableop_43_adam_output_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp&assignvariableop_44_adam_output_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_45Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_46IdentityIdentity_45:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_46Identity_46:output:0*o
_input_shapes^
\: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_44AssignVariableOp_442(
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
�	
�
B__inference_output_layer_call_and_return_conditional_losses_242397

inputs1
matmul_readvariableop_resource:	�b-
biasadd_readvariableop_resource:b
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�b*
dtype0`
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:@br
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:b*
dtype0m
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:@bG
ReluReluBiasAdd:output:0*
T0*
_output_shapes

:@bX
IdentityIdentityRelu:activations:0^NoOp*
T0*
_output_shapes

:@bw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*"
_input_shapes
:	@�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:G C

_output_shapes
:	@�
 
_user_specified_nameinputs
�	
�
B__inference_output_layer_call_and_return_conditional_losses_243055

inputs1
matmul_readvariableop_resource:	�b-
biasadd_readvariableop_resource:b
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�b*
dtype0`
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:@br
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:b*
dtype0m
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:@bG
ReluReluBiasAdd:output:0*
T0*
_output_shapes

:@bX
IdentityIdentityRelu:activations:0^NoOp*
T0*
_output_shapes

:@bw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*"
_input_shapes
:	@�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:G C

_output_shapes
:	@�
 
_user_specified_nameinputs
�
�
+__inference_glob_conv3_layer_call_fn_242958

inputs!
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *&
_output_shapes
:@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_glob_conv3_layer_call_and_return_conditional_losses_242327n
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*&
_output_shapes
:@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:N J
&
_output_shapes
:@@
 
_user_specified_nameinputs
�

�
F__inference_glob_conv1_layer_call_and_return_conditional_losses_242929

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*&
_output_shapes
:@ *
data_formatNCHW*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*&
_output_shapes
:@ *
data_formatNCHWO
ReluReluBiasAdd:output:0*
T0*&
_output_shapes
:@ `
IdentityIdentityRelu:activations:0^NoOp*
T0*&
_output_shapes
:@ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:N J
&
_output_shapes
:@
 
_user_specified_nameinputs
�
�
+__inference_glob_conv1_layer_call_fn_242918

inputs!
unknown: 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *&
_output_shapes
:@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_glob_conv1_layer_call_and_return_conditional_losses_242293n
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*&
_output_shapes
:@ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:@: : 22
StatefulPartitionedCallStatefulPartitionedCall:N J
&
_output_shapes
:@
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
D
global_input4
serving_default_global_input:0@
B
local_input3
serving_default_local_input:0@1
output'
StatefulPartitionedCall:0@btensorflow/serving/predict:��
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer_with_weights-5

layer-9
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
�

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
�

kernel
bias
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses"
_tf_keras_layer
"
_tf_keras_input_layer
�

$kernel
%bias
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses"
_tf_keras_layer
�

,kernel
-bias
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses"
_tf_keras_layer
�
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses"
_tf_keras_layer
�
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses"
_tf_keras_layer
�

@kernel
Abias
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses"
_tf_keras_layer
�

Hkernel
Ibias
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses"
_tf_keras_layer
�
Piter

Qbeta_1

Rbeta_2
	Sdecay
Tlearning_ratem�m�m�m�$m�%m�,m�-m�@m�Am�Hm�Im�v�v�v�v�$v�%v�,v�-v�@v�Av�Hv�Iv�"
	optimizer
v
0
1
2
3
$4
%5
,6
-7
@8
A9
H10
I11"
trackable_list_wrapper
v
0
1
2
3
$4
%5
,6
-7
@8
A9
H10
I11"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�2�
(__inference_model_1_layer_call_fn_242431
(__inference_model_1_layer_call_fn_242741
(__inference_model_1_layer_call_fn_242771
(__inference_model_1_layer_call_fn_242631�
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
C__inference_model_1_layer_call_and_return_conditional_losses_242824
C__inference_model_1_layer_call_and_return_conditional_losses_242877
C__inference_model_1_layer_call_and_return_conditional_losses_242668
C__inference_model_1_layer_call_and_return_conditional_losses_242705�
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
!__inference__wrapped_model_242273global_inputlocal_input"�
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
Zserving_default"
signature_map
+:) 2glob_conv1/kernel
: 2glob_conv1/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�2�
+__inference_glob_conv1_layer_call_fn_242918�
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
F__inference_glob_conv1_layer_call_and_return_conditional_losses_242929�
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
+:) @2glob_conv2/kernel
:@2glob_conv2/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
`non_trainable_variables

alayers
bmetrics
clayer_regularization_losses
dlayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
�2�
+__inference_glob_conv2_layer_call_fn_242938�
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
F__inference_glob_conv2_layer_call_and_return_conditional_losses_242949�
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
+:)@@2glob_conv3/kernel
:@2glob_conv3/bias
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses"
_generic_user_object
�2�
+__inference_glob_conv3_layer_call_fn_242958�
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
F__inference_glob_conv3_layer_call_and_return_conditional_losses_242969�
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
+:)�2loc_conv1/kernel
:�2loc_conv1/bias
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
�
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses"
_generic_user_object
�2�
*__inference_loc_conv1_layer_call_fn_242978�
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
E__inference_loc_conv1_layer_call_and_return_conditional_losses_242989�
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
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
�2�
.__inference_concatenate_1_layer_call_fn_242995�
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
I__inference_concatenate_1_layer_call_and_return_conditional_losses_243002�
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
tnon_trainable_variables

ulayers
vmetrics
wlayer_regularization_losses
xlayer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
�2�
(__inference_Flatten_layer_call_fn_243007�
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
C__inference_Flatten_layer_call_and_return_conditional_losses_243015�
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
!:
�I�2dense1/kernel
:�2dense1/bias
.
@0
A1"
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses"
_generic_user_object
�2�
'__inference_dense1_layer_call_fn_243024�
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
B__inference_dense1_layer_call_and_return_conditional_losses_243035�
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
 :	�b2output/kernel
:b2output/bias
.
H0
I1"
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
~non_trainable_variables

layers
�metrics
 �layer_regularization_losses
�layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses"
_generic_user_object
�2�
'__inference_output_layer_call_fn_243044�
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
B__inference_output_layer_call_and_return_conditional_losses_243055�
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
 "
trackable_list_wrapper
f
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
9"
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
$__inference_signature_wrapper_242909global_inputlocal_input"�
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
0:. 2Adam/glob_conv1/kernel/m
":  2Adam/glob_conv1/bias/m
0:. @2Adam/glob_conv2/kernel/m
": @2Adam/glob_conv2/bias/m
0:.@@2Adam/glob_conv3/kernel/m
": @2Adam/glob_conv3/bias/m
0:.�2Adam/loc_conv1/kernel/m
": �2Adam/loc_conv1/bias/m
&:$
�I�2Adam/dense1/kernel/m
:�2Adam/dense1/bias/m
%:#	�b2Adam/output/kernel/m
:b2Adam/output/bias/m
0:. 2Adam/glob_conv1/kernel/v
":  2Adam/glob_conv1/bias/v
0:. @2Adam/glob_conv2/kernel/v
": @2Adam/glob_conv2/bias/v
0:.@@2Adam/glob_conv3/kernel/v
": @2Adam/glob_conv3/bias/v
0:.�2Adam/loc_conv1/kernel/v
": �2Adam/loc_conv1/bias/v
&:$
�I�2Adam/dense1/kernel/v
:�2Adam/dense1/bias/v
%:#	�b2Adam/output/kernel/v
:b2Adam/output/bias/v�
C__inference_Flatten_layer_call_and_return_conditional_losses_243015P/�,
%�"
 �
inputs@�
� "�
�
0	@�I
� o
(__inference_Flatten_layer_call_fn_243007C/�,
%�"
 �
inputs@�
� "�	@�I�
!__inference__wrapped_model_242273�$%,-@AHI_�\
U�R
P�M
%�"
global_input@
$�!
local_input@
� "&�#
!
output�
output@b�
I__inference_concatenate_1_layer_call_and_return_conditional_losses_243002�Y�V
O�L
J�G
!�
inputs/0@@
"�
inputs/1@�
� "%�"
�
0@�
� �
.__inference_concatenate_1_layer_call_fn_242995uY�V
O�L
J�G
!�
inputs/0@@
"�
inputs/1@�
� "�@��
B__inference_dense1_layer_call_and_return_conditional_losses_243035L@A'�$
�
�
inputs	@�I
� "�
�
0	@�
� j
'__inference_dense1_layer_call_fn_243024?@A'�$
�
�
inputs	@�I
� "�	@��
F__inference_glob_conv1_layer_call_and_return_conditional_losses_242929Z.�+
$�!
�
inputs@
� "$�!
�
0@ 
� |
+__inference_glob_conv1_layer_call_fn_242918M.�+
$�!
�
inputs@
� "�@ �
F__inference_glob_conv2_layer_call_and_return_conditional_losses_242949Z.�+
$�!
�
inputs@ 
� "$�!
�
0@@
� |
+__inference_glob_conv2_layer_call_fn_242938M.�+
$�!
�
inputs@ 
� "�@@�
F__inference_glob_conv3_layer_call_and_return_conditional_losses_242969Z$%.�+
$�!
�
inputs@@
� "$�!
�
0@@
� |
+__inference_glob_conv3_layer_call_fn_242958M$%.�+
$�!
�
inputs@@
� "�@@�
E__inference_loc_conv1_layer_call_and_return_conditional_losses_242989[,-.�+
$�!
�
inputs@
� "%�"
�
0@�
� |
*__inference_loc_conv1_layer_call_fn_242978N,-.�+
$�!
�
inputs@
� "�@��
C__inference_model_1_layer_call_and_return_conditional_losses_242668�$%,-@AHIg�d
]�Z
P�M
%�"
global_input@
$�!
local_input@
p 

 
� "�
�
0@b
� �
C__inference_model_1_layer_call_and_return_conditional_losses_242705�$%,-@AHIg�d
]�Z
P�M
%�"
global_input@
$�!
local_input@
p

 
� "�
�
0@b
� �
C__inference_model_1_layer_call_and_return_conditional_losses_242824�$%,-@AHI`�]
V�S
I�F
!�
inputs/0@
!�
inputs/1@
p 

 
� "�
�
0@b
� �
C__inference_model_1_layer_call_and_return_conditional_losses_242877�$%,-@AHI`�]
V�S
I�F
!�
inputs/0@
!�
inputs/1@
p

 
� "�
�
0@b
� �
(__inference_model_1_layer_call_fn_242431�$%,-@AHIg�d
]�Z
P�M
%�"
global_input@
$�!
local_input@
p 

 
� "�@b�
(__inference_model_1_layer_call_fn_242631�$%,-@AHIg�d
]�Z
P�M
%�"
global_input@
$�!
local_input@
p

 
� "�@b�
(__inference_model_1_layer_call_fn_242741�$%,-@AHI`�]
V�S
I�F
!�
inputs/0@
!�
inputs/1@
p 

 
� "�@b�
(__inference_model_1_layer_call_fn_242771�$%,-@AHI`�]
V�S
I�F
!�
inputs/0@
!�
inputs/1@
p

 
� "�@b�
B__inference_output_layer_call_and_return_conditional_losses_243055KHI'�$
�
�
inputs	@�
� "�
�
0@b
� i
'__inference_output_layer_call_fn_243044>HI'�$
�
�
inputs	@�
� "�@b�
$__inference_signature_wrapper_242909�$%,-@AHIy�v
� 
o�l
5
global_input%�"
global_input@
3
local_input$�!
local_input@"&�#
!
output�
output@b