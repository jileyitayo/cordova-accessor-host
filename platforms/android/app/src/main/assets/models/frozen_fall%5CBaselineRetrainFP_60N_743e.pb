
C
InputPlaceholder*
dtype0* 
shape:���������#
<
Keep_Prob/inputConst*
dtype0*
valueB
 *  �?
N
	Keep_ProbPlaceholderWithDefaultKeep_Prob/input*
dtype0*
shape: 
�
Layer_1/kernelConst*
dtype0*�
value�B�"�:�j=c�������P��>���DJͽx��>��>e&<��9P�q\Ծ�J��v",��jC>��v>i&l>�x<+�ǽ�>��2=�c�8Y����W���=���b�����vK�>�|���>�5>��0>��>��<=����Y�8K$>���(�>8 ݾ��>Z:>�Ʌ�"��>���><�S>�w�>q�>
'j>��R>m#�>Ip�>+n�>����>�!� �J�L���pi[�&$��[Ѿ�Ƶ<� >�J>6?�`�+���v<��6���*=-�>S��>Ɓ޾���>?��>�=�^��7����=(�!���>1,L>�b�>��>��_�]\�k��>(��>}>��LS�
[
Layer_1/kernel/readIdentityLayer_1/kernel*
T0*!
_class
loc:@Layer_1/kernel
�
Layer_1/biasConst*
dtype0*�
value�B�"x������>�[<�t=��=�H�>(��=D�����<G�>?�m=����ԫ�=荦�X1�<����v�G|.��`*�qdK�h�N=��Y��6=;�L=�d�6��=m?�=,t���<>��<
U
Layer_1/bias/readIdentityLayer_1/bias*
T0*
_class
loc:@Layer_1/bias
D
Layer_1/Tensordot/axesConst*
dtype0*
valueB:
K
Layer_1/Tensordot/freeConst*
dtype0*
valueB"       
@
Layer_1/Tensordot/ShapeShapeInput*
T0*
out_type0
I
Layer_1/Tensordot/GatherV2/axisConst*
dtype0*
value	B : 
�
Layer_1/Tensordot/GatherV2GatherV2Layer_1/Tensordot/ShapeLayer_1/Tensordot/freeLayer_1/Tensordot/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0
K
!Layer_1/Tensordot/GatherV2_1/axisConst*
dtype0*
value	B : 
�
Layer_1/Tensordot/GatherV2_1GatherV2Layer_1/Tensordot/ShapeLayer_1/Tensordot/axes!Layer_1/Tensordot/GatherV2_1/axis*
Taxis0*
Tindices0*
Tparams0
E
Layer_1/Tensordot/ConstConst*
dtype0*
valueB: 
y
Layer_1/Tensordot/ProdProdLayer_1/Tensordot/GatherV2Layer_1/Tensordot/Const*
T0*

Tidx0*
	keep_dims( 
G
Layer_1/Tensordot/Const_1Const*
dtype0*
valueB: 

Layer_1/Tensordot/Prod_1ProdLayer_1/Tensordot/GatherV2_1Layer_1/Tensordot/Const_1*
T0*

Tidx0*
	keep_dims( 
G
Layer_1/Tensordot/concat/axisConst*
dtype0*
value	B : 
�
Layer_1/Tensordot/concatConcatV2Layer_1/Tensordot/freeLayer_1/Tensordot/axesLayer_1/Tensordot/concat/axis*
N*
T0*

Tidx0
o
Layer_1/Tensordot/stackPackLayer_1/Tensordot/ProdLayer_1/Tensordot/Prod_1*
N*
T0*

axis 
_
Layer_1/Tensordot/transpose	TransposeInputLayer_1/Tensordot/concat*
T0*
Tperm0
q
Layer_1/Tensordot/ReshapeReshapeLayer_1/Tensordot/transposeLayer_1/Tensordot/stack*
T0*
Tshape0
W
"Layer_1/Tensordot/transpose_1/permConst*
dtype0*
valueB"       
y
Layer_1/Tensordot/transpose_1	TransposeLayer_1/kernel/read"Layer_1/Tensordot/transpose_1/perm*
T0*
Tperm0
V
!Layer_1/Tensordot/Reshape_1/shapeConst*
dtype0*
valueB"      

Layer_1/Tensordot/Reshape_1ReshapeLayer_1/Tensordot/transpose_1!Layer_1/Tensordot/Reshape_1/shape*
T0*
Tshape0
�
Layer_1/Tensordot/MatMulMatMulLayer_1/Tensordot/ReshapeLayer_1/Tensordot/Reshape_1*
T0*
transpose_a( *
transpose_b( 
G
Layer_1/Tensordot/Const_2Const*
dtype0*
valueB:
I
Layer_1/Tensordot/concat_1/axisConst*
dtype0*
value	B : 
�
Layer_1/Tensordot/concat_1ConcatV2Layer_1/Tensordot/GatherV2Layer_1/Tensordot/Const_2Layer_1/Tensordot/concat_1/axis*
N*
T0*

Tidx0
i
Layer_1/TensordotReshapeLayer_1/Tensordot/MatMulLayer_1/Tensordot/concat_1*
T0*
Tshape0
`
Layer_1/BiasAddBiasAddLayer_1/TensordotLayer_1/bias/read*
T0*
data_formatNHWC
.
Layer_1/ReluReluLayer_1/BiasAdd*
T0
2
rnn/RankConst*
dtype0*
value	B :
9
rnn/range/startConst*
dtype0*
value	B :
9
rnn/range/deltaConst*
dtype0*
value	B :
J
	rnn/rangeRangernn/range/startrnn/Rankrnn/range/delta*

Tidx0
H
rnn/concat/values_0Const*
dtype0*
valueB"       
9
rnn/concat/axisConst*
dtype0*
value	B : 
e

rnn/concatConcatV2rnn/concat/values_0	rnn/rangernn/concat/axis*
N*
T0*

Tidx0
J
rnn/transpose	TransposeLayer_1/Relu
rnn/concat*
T0*
Tperm0
:
	rnn/ShapeShapernn/transpose*
T0*
out_type0
E
rnn/strided_slice/stackConst*
dtype0*
valueB:
G
rnn/strided_slice/stack_1Const*
dtype0*
valueB:
G
rnn/strided_slice/stack_2Const*
dtype0*
valueB:
�
rnn/strided_sliceStridedSlice	rnn/Shapernn/strided_slice/stackrnn/strided_slice/stack_1rnn/strided_slice/stack_2*
Index0*
T0*

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
h
>rnn/MultiRNNCellZeroState/MultiRNNCellZeroState/ExpandDims/dimConst*
dtype0*
value	B : 
�
:rnn/MultiRNNCellZeroState/MultiRNNCellZeroState/ExpandDims
ExpandDimsrnn/strided_slice>rnn/MultiRNNCellZeroState/MultiRNNCellZeroState/ExpandDims/dim*
T0*

Tdim0
c
5rnn/MultiRNNCellZeroState/MultiRNNCellZeroState/ConstConst*
dtype0*
valueB:<
e
;rnn/MultiRNNCellZeroState/MultiRNNCellZeroState/concat/axisConst*
dtype0*
value	B : 
�
6rnn/MultiRNNCellZeroState/MultiRNNCellZeroState/concatConcatV2:rnn/MultiRNNCellZeroState/MultiRNNCellZeroState/ExpandDims5rnn/MultiRNNCellZeroState/MultiRNNCellZeroState/Const;rnn/MultiRNNCellZeroState/MultiRNNCellZeroState/concat/axis*
N*
T0*

Tidx0
h
;rnn/MultiRNNCellZeroState/MultiRNNCellZeroState/zeros/ConstConst*
dtype0*
valueB
 *    
�
5rnn/MultiRNNCellZeroState/MultiRNNCellZeroState/zerosFill6rnn/MultiRNNCellZeroState/MultiRNNCellZeroState/concat;rnn/MultiRNNCellZeroState/MultiRNNCellZeroState/zeros/Const*
T0*

index_type0
<
rnn/Shape_1Shapernn/transpose*
T0*
out_type0
G
rnn/strided_slice_1/stackConst*
dtype0*
valueB: 
I
rnn/strided_slice_1/stack_1Const*
dtype0*
valueB:
I
rnn/strided_slice_1/stack_2Const*
dtype0*
valueB:
�
rnn/strided_slice_1StridedSlicernn/Shape_1rnn/strided_slice_1/stackrnn/strided_slice_1/stack_1rnn/strided_slice_1/stack_2*
Index0*
T0*

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
2
rnn/timeConst*
dtype0*
value	B : 
�
rnn/TensorArray_1TensorArrayV3rnn/strided_slice_1*
clear_after_read(*
dtype0*
dynamic_size( *$
element_shape:���������*
identical_element_shapes(*.
tensor_array_namernn/dynamic_rnn/input_0
M
rnn/TensorArrayUnstack/ShapeShapernn/transpose*
T0*
out_type0
X
*rnn/TensorArrayUnstack/strided_slice/stackConst*
dtype0*
valueB: 
Z
,rnn/TensorArrayUnstack/strided_slice/stack_1Const*
dtype0*
valueB:
Z
,rnn/TensorArrayUnstack/strided_slice/stack_2Const*
dtype0*
valueB:
�
$rnn/TensorArrayUnstack/strided_sliceStridedSlicernn/TensorArrayUnstack/Shape*rnn/TensorArrayUnstack/strided_slice/stack,rnn/TensorArrayUnstack/strided_slice/stack_1,rnn/TensorArrayUnstack/strided_slice/stack_2*
Index0*
T0*

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
L
"rnn/TensorArrayUnstack/range/startConst*
dtype0*
value	B : 
L
"rnn/TensorArrayUnstack/range/deltaConst*
dtype0*
value	B :
�
rnn/TensorArrayUnstack/rangeRange"rnn/TensorArrayUnstack/range/start$rnn/TensorArrayUnstack/strided_slice"rnn/TensorArrayUnstack/range/delta*

Tidx0
�
>rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3rnn/TensorArray_1rnn/TensorArrayUnstack/rangernn/transposernn/TensorArray_1:1*
T0* 
_class
loc:@rnn/transpose
7
rnn/Maximum/xConst*
dtype0*
value	B :
C
rnn/MaximumMaximumrnn/Maximum/xrnn/strided_slice_1*
T0
A
rnn/MinimumMinimumrnn/strided_slice_1rnn/Maximum*
T0
E
rnn/while/iteration_counterConst*
dtype0*
value	B : 
�
rnn/while/EnterEnterrnn/while/iteration_counter*
T0*'

frame_namernn/while/while_context*
is_constant( *
parallel_iterations 
�
rnn/while/Enter_1Enterrnn/time*
T0*'

frame_namernn/while/while_context*
is_constant( *
parallel_iterations 
�
rnn/while/Enter_3Enter5rnn/MultiRNNCellZeroState/MultiRNNCellZeroState/zeros*
T0*'

frame_namernn/while/while_context*
is_constant( *
parallel_iterations 
T
rnn/while/MergeMergernn/while/Enterrnn/while/NextIteration*
N*
T0
Z
rnn/while/Merge_1Mergernn/while/Enter_1rnn/while/NextIteration_1*
N*
T0
Z
rnn/while/Merge_3Mergernn/while/Enter_3rnn/while/NextIteration_3*
N*
T0
F
rnn/while/LessLessrnn/while/Mergernn/while/Less/Enter*
T0
�
rnn/while/Less/EnterEnterrnn/strided_slice_1*
T0*'

frame_namernn/while/while_context*
is_constant(*
parallel_iterations 
L
rnn/while/Less_1Lessrnn/while/Merge_1rnn/while/Less_1/Enter*
T0
�
rnn/while/Less_1/EnterEnterrnn/Minimum*
T0*'

frame_namernn/while/while_context*
is_constant(*
parallel_iterations 
D
rnn/while/LogicalAnd
LogicalAndrnn/while/Lessrnn/while/Less_1
4
rnn/while/LoopCondLoopCondrnn/while/LogicalAnd
l
rnn/while/SwitchSwitchrnn/while/Mergernn/while/LoopCond*
T0*"
_class
loc:@rnn/while/Merge
r
rnn/while/Switch_1Switchrnn/while/Merge_1rnn/while/LoopCond*
T0*$
_class
loc:@rnn/while/Merge_1
r
rnn/while/Switch_3Switchrnn/while/Merge_3rnn/while/LoopCond*
T0*$
_class
loc:@rnn/while/Merge_3
;
rnn/while/IdentityIdentityrnn/while/Switch:1*
T0
?
rnn/while/Identity_1Identityrnn/while/Switch_1:1*
T0
?
rnn/while/Identity_3Identityrnn/while/Switch_3:1*
T0
N
rnn/while/add/yConst^rnn/while/Identity*
dtype0*
value	B :
B
rnn/while/addAddrnn/while/Identityrnn/while/add/y*
T0
�
rnn/while/TensorArrayReadV3TensorArrayReadV3!rnn/while/TensorArrayReadV3/Enterrnn/while/Identity_1#rnn/while/TensorArrayReadV3/Enter_1*
dtype0
�
!rnn/while/TensorArrayReadV3/EnterEnterrnn/TensorArray_1*
T0*'

frame_namernn/while/while_context*
is_constant(*
parallel_iterations 
�
#rnn/while/TensorArrayReadV3/Enter_1Enter>rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*'

frame_namernn/while/while_context*
is_constant(*
parallel_iterations 
y
/rnn/while/rnn/multi_rnn_cell/cell_0/Slice/beginConst^rnn/while/Identity*
dtype0*
valueB"        
x
.rnn/while/rnn/multi_rnn_cell/cell_0/Slice/sizeConst^rnn/while/Identity*
dtype0*
valueB"����<   
�
)rnn/while/rnn/multi_rnn_cell/cell_0/SliceSlicernn/while/Identity_3/rnn/while/rnn/multi_rnn_cell/cell_0/Slice/begin.rnn/while/rnn/multi_rnn_cell/cell_0/Slice/size*
Index0*
T0
��
*rnn/multi_rnn_cell/cell_0/lstm_cell/kernelConst*
dtype0*��
value��B��<x"���k�:N�8>Ö���:s����=$�;����ND>�.h>���U-�Bբ=%������=�-�=�=<ך������������T�U>�X$��k�Y�>������^=���=V��<��=c8n��>��:YZ>ӦT=5��<QdD>��=��`��91=y��=�Á�ٱ�=��[�� >��k>�xw���j=Z6�=��1=����Ͻ��=u0E>�>N�3>�&>b���\�>�>Q�����4W=��@=G3M>o���	F��SI��O�>����S��`n�~]��-q���<uk"=�O��툺����$ܽ�v��	>�"W=�g>ү(�(�=�����>�">XzQ�w��;��ý�#�<�B�a�E>��>t\�P�@>1�O>2�#=|P�<�Ɖ���W=��m>�Ϻ��D>�Ę>!,�픿�] n������P��l�=�>��f=�M�=�2>��>>m�v�.��=I�<��<.�ӽ�Y#=� �=��	>�yz��ۋ<��>�8@;؏ᾒ;T�%�O>� t�)�>��8=I��>5H�=<�����'�v?6��ڹ=Z$I>#��>K�= �l���%��q�;փ<]��=y*�b�������=9
���U=p>�=�.P��8���l��Ze�����q��<�+�2->�>Es�=�r>O����=DO���Q�=H�i>A�@>��@��%��=>-]ϻ�P'�|��;? ��>�=SX�������Y�k�z=4�ڹ�w���=�?/�_��Z���� >SD��ER={O=�U���M%����:?�j&>L�#:�+��]A9���=&|!>g��<832��e>FZ���=�]���j=��=S�V�h�=I��3��Ҝ��ߠ��m�=��x���k���>dz��<�cj=qk�=t� =j�>���>�"Z;��;)76>o�>���=�c=���=UL�<���=^�=v��=�� >-`�=c>AE�=5�'���Q�_�=_%��	=K��������=�z����j;�I�=���>Ԇ�������=g'�����=�Vf���7�L>X�v:ؖ�����=gBJ=/��=iI�:�����rܝ<洍=���=#.L��h4���> 2D=jA�����i)�WM=�� ��,;>]��=�q����<m�B�F(���>Zϵ<u ]���;�������>�R�l5�(��B���qʼHC����@>�no����g�@=���=L+u�g��|d�=R �=}س��'�- I���h>�mC���g>D0��;��=�>f�=�y���3a>�G�=�<���=���<K<�:ݠ}�J�f�
�,�=*=+>�	R>��>j��=�����>�$½�c��d���;ۼ��s<1��>x���ݻ=����s�=4�ڼjp2�{��>;8�qL�>{�H�?H>\$i�l��<9z>o7��������
>��V��h�=�>� >�B�Y=Kʉ<[��=��_�L*������@��UaO>u�=b�T=�=ڠ�=��;�=�>�Z>7�x>xW&>�K4>�?�=������w��Eٽ�ƽ~�S>��=�.�=�]>�p�8�m���=s��=��0��g=M68>-��!���p�:>lbL>��%�n%=~��=���=��j>��~���=�06>x/>�֠=�?D>�{>�[�=���i�=>'�=l>�MJ>N=��e&�������˼_lE<�>�$��;�>��m��?�9��|��=��g=F_=l�=���=P? >mnc>���=�he>��:5���@>���=�������<��3���D>A�->�O/>�]�z�n>J�;>�0���L7�>�m���=��=�Z>�����N<���+-=���=� ��F�=\%�8��W�\��F����=�@6=������O�����k�G=�f�=�4Ƚ���=���W�Z��9�<�־�?R��	��>��<�[�={f���&�����U9=��
�������J<b�n>q��i8��L�� Z�=�
��=���<{�`=릎���>u\��*rT=3�X=2_��i�.=#�@=4�)8�=�<O2>\�=K!�>ݑ���m>��!>"1�&�x㹽t���	�">��">J��"|�<2�>rYh��R߼�K>>��7���;�::���>��+��#�=:�0��G�=v>��|>�	?��ڽe�NF��h�K>II>�*?����>
Jp���e�M�r�y�p�>�=^=S{a>O�>�"�>�P<���+>�q
����ngȺW�%�=�fy=�5%��`>-Ud>���p"�>:����5>���1>{�g�s�?W�	=��t>1a�=j�=��L>�>F�����p� =8&�=`O���F>�W>y�=����a��7��O��RQ�:f��iIV���:>X΁>Z��>�
>f�
��u>>üR4>%�<�=?uYI<�=>70�Kq��@��>�V�������;�{�!H�=#V�>��"�,�`��U^�>��=�����-��8��{y\���=>ҹ=j��=6	���/=
= �-�	�DtJ�\�=�F��qꌽ�k���f�wx	;*~|��cq>
��=5B�=�3>\>�U߽ː��>���=�=�(མ��x,�F�M��W��=>��轥���w1>��Žy�¾m�=b�9���>9�>�6��D3�>k��=#
�k���}_=g���S�\ֽ=���$}�9 >y4���:>)4s�UN]�6�=>�|=�Y�]n[=�.�>�I>hN�<4O��v�>�&�����=�v��iA�>�8>�H���[>��̽>D���k>�#�>��=�E=�P�=��>h�/�n�k>�B=%���t���=��S>����ٽ1܈=u:���t=YM�=V�x>���:��� P���!>9��<������=��.�C�,�so���S����>�Ս��`D=�0>N+�=�Zֻ+F>(���:>�ِ���>��V�I=�1�=6�_>���;���S+���¼�^�d�-=5�>��>��<�>��W�=F0P�Q��<\�M>a`=a�}=���D�=���x={��h(>��Y> �����#>��\;�}>	$>���=XQb>,��<�֠=�2>{_�gPe����=�]>�~�=H�9|�软m���:=�;;��MHQ=s�>���o>��;>��<>=I>�������=pA�<r+f��d=(1>1��=��Q�>S�>R��=��W=���=X��3I=���� 0P�s�轰�1��V����=I|>�+0=P\��3�!>���04�E�7$>m;�=h���]a>���=7�h=q톽GϨ=��N��M�=�}C>�:W��� >Ԅt>�(1��>Q��=�y>9>��D>�b�=jS�� �[�(gN����<̹��S><>��@�.>�������={�>�
>=�ֽ�q��t�h<-YL>̩3>�Ɉ=���98��/O��XT>i/`��P����ͽKI>�VC�>�=�ች�~Q=oA�=�1>Ĥ$��^���޵=+G���DE=��y�J���3>Se2��
>�>���<8�>*Q���=;B>>{�?>�;�&�=�->̲޼�?���> T�;��)�u�e��g2��7u�%�D>��>&��<�G�<).�=��1<�Q
=L�(>U�=���RT=vyX>�C�=1=���a=p=Z�gD��x��C� m=�cp>p4"�F�=�]�=��Z=|s�M]�=S�5��>�wy>\%F=q�O=�r<-�#>U;>N��H�#����m�=N� >3�=}c�=|��=�(���T>'L���Ue��L�=	�½Mo�=��>̂��MG>�ۀ��7�>m�<�o��>v���9�>�_<$�ի�N��=¹'>l�N�"\2�|jZ=�"�=�?6=�)<wP ��(�;}R ��"G�� �=��~���,=6�~=�=a�<��<�����+�Y�޶=5'�<�<G>���h<�;l��=��ͽU5>>A0򼄬�=fL&>5��8&}�o[��iԣ�j"=i�{���S>7W�����赽(̂��[���o��7|>��=k�8�$�����Py��O>Z"����$M�=�ǝ�<a��=�c���/>1~!��N�=���*���J��A&>O4�{�Y>�1=�a>ݫ=�V���ղ�V4>{��{������=[����N>%	�X��>��о�PD>�w<r��>��O=l��r>xtѽs�{=W13�-㩼���=�>�H,>�C>�O >d�7���H>y��>����0�"�35=>�;�=tg��YU�=ZK��I�7��- P>�8?wt���>�l���M>~n=e�5?�w^�	Ҋ=�x0�a�@�
*�>l���e�J=���=�#���A=�w��7�z<��-��3��=�l�V�#���]/����D���=>ڃ�ͯ�<o��	�>1נ����<^�=:�|=njK>[��;�|��<���=��T����=2}ս�^�>?$�'�3>���=UW��F��I���<����=Ѹ&=�A�;d����#�e>�=�`�H4%��?��>yOž2�*>H�	>N$�<C�R��>�=H>F(>�FI�Vp>����>��=v2�,pH=r�=�!�<}$���.7���p<�@c�}�?���D>'�w�N��=ؔ��e�<9�=��>���=�:�>����>G��	�>B�����>��>8=nML�5�>}=h>�T�3��=�c�:K�=F]���i�����>5]�S)����=+>Xw�=�=o�=	�Pk�2�>w�6>C����о>W����=)�p�� 6<q۹<.	=1s)��I>��>��2>��½���:"� ���=�t>� ��R����;�;a=jw-=LT� 3�<���rƐ=�l��-�c�ȗ��!">�"�<����Nx��iI��(9>n7���Ľa�.��d=!�=K�1>�:��d���6���8�ɽP���%��E-���g�d�J���3>��[����=��)<qEm>�>�U�<(���O�>,L���=:�I>ҙe<~���3�>�Ȳ��x>S�y���W>(�W>�7v�K���5�W^0>(R��X4��5!=0}��a,x=m,k�F�">���=��>�����ý��꼰6�=8�.=���>/��<ּT9>�}r>���7��>:��<>��><��=v�>��=�7��;�=E&E>��=�\>�6�=���;�Ń<��=���=�v�=>�1>��j>����8��j�>r�>5�>ڹ����=�<%\>�+�=]p�>k�/=��ٽ��v��B����@>���=Gڲ;�%��n�< EN>M8ƽ�ڋ=��=����P=i[ܻ�&>(U[�	h>��=�&>Qu�==u5���>�}n��GS;*�C>묰>��=*`B���Q����� ֽ�Ɉ�㑮��0>����o�>׼>��>�Y��	�Խ�;8>[>�M󻨍�j]>j=���<����#�>��E<�p>vdi>ǥ���`�<��2<��2=
u!>U}�>�x�>>/���WfA>��,>�p�=�P��т=�+>~�=ɍ�<D�:��W+�tb�<ش�=^�8�;� >3{����ս�b\�J��='R>���>��>B���T�=X\ýjp�>4��<,w�>�|�;5q�=ٷ��TH�=W�>��*��Q8�:�>>A�u=�'�=�b�<�2><�I䜽������(>{ǽez'��y��%���>���>��>�xA��7>�S����>â���*?;��=��y��@���
=BY\=ssT�"(�����"e��Z	��>��<�&=�cý��G=�">��ν~z�;1����v;��0��U=K]7���M=r����{����=l�1>8�н��>h�<�|�)�7�߽�^ý�[��S�=��S�*�=�2i>�����>���=��Žݛy�`�̽�#0>
iĽL���?����=�{&��	>a��> ׾m�<0g�><��=�ĭ��T�����/��$d�qBؽs罁�>���	s���:ؼ� >�w�=2�i>I!"�������>�����̼K�~���<p=�y�=ũ���=��x�X��>Y�>��A>β�=���>���[�/�������È�I;����>���=�$���r=�eY>�ڽW%>�4>�����@��d>�Y�<�)8>���=�E�=��#��z�e��=���=��=1��ψ>�X�l�>�9���qӼ���6	��>���򼠳V>T�e=)��`c>��>���=�k��]7=�	>���:MWj��j2�� �=�#=�:��vX:�3}=��%��3�<*�e����<�$<��H>!�3>�\o���=2B���\����=a�/;�/E�q;�=_���@<U�7��=�=NC>�����ߺ$�=6��<�R>֘0=O�½�/ �j>U���<utJ��=�=�Ɩ=��V>a�=�Z�=ٺ�=.�s>_<�hM>N?\=Y�<>HVx=�*���mj>���`$�=���=\Yν׷_=� M��+�V��ԧ���2���$�<cA�=K̮>��<�2>�2>xCغQH��0`�=4䕽�p">5���Ϙ<�\�ȫ{<|�⻁m��F�=���3������09>U3�=�<K>�>��p='Y>�+�|�H=�E�=}+=�jʼ�F>��ɽ��N�����O=Y�O�#�F>h�	>Z�!>^I>��罋Zi<"{=��Ľ$��a��=r�ڽs�[>5$=9��>�1 ���,>��z�����������J���?>���=��ӻ����AX�X�h�a��=���=��Y>�=��>v$H=��2���u��ކ���>f��=Zg���̽�e��~&>r��=�+�;Dc�3���9������#�<��<\(P>��/=g��=�yT>��>��V���D=̚��/���>:>^@�=�
��q�����=É̻�4�T�3>p/�=�M>*��>&��=��a��yF>"��=`3>m��������]�=��'=ï�=��	>1�Y=3��>���w�=�Ժ<n d�3x=?�=���=�F]>@%#=-�L>h�=�[ >�+�Q�D�.k�=�&�=��=��=SUM�c3�N��;w�����[� ���H=D�=�,A>K���N>�S�@c��3�=�=������=P_�<I�=Q��>=��X��m���YW?={=��-»#G�>��>4A@=B�y=��T��fm��.�=0�z�
F�R�=�C>��z�=?��o;���"u>,��1P�=5J>Lu.>3�Z��q�=�ʽ�V>�V>h��=Qw=G�=v_�� W��u��=�'���d�j�s<�Dt��潭*3>*m<�M>DN->݌n=��H>��>�E�n�!>��q=���{c򼳂����=��g>}�8>{8>d��ɄO�W�9=p�f�(U�=���=H�L>�X>�$���=W��= ,��Q>>�=�Hm>㩽Q�9��D�>�6�z�=�ت��M�= h�=��>^��eY�rS�=6���{�=�/H>���=�`ּ(�$����=pb[=��;C�X>+�㽎�N�6j�=�ϰ=pp/<�z���Jb>Qw�<Yrv=���=ڽ�=�Z��5�=�,L=�� =,�>�0���$ >���
)��}R>�g>,>�f��	%��X����V=�����n�=�����=نS�-]�=�t-�P<��>�뜽�,��F����f����4n>5Rj�=l[>l�ܽ.�8�L���ǽca�̛��/	�<���=����2��lGl�3>��� >tiN>�f���=rl���+ݽ�׽{.��`�=��⽿O>w�����>Ik\�Ë���)>�4�<���=[�����=���=�i�m�L�^!r>Ț>J�.�ſQ�����SI=:>�r/���4>w��XjH�6�"��S��x�=``Q>9��=��;�40>.&>�5�}��=Ad���>�=5=����G>�[G�⒐>�* ���P��>�A�=����Z>1�������	<>WAG��r/��c���y>��Z���5<'ΐ��Q=�A��d>�"|>�R�=C�;�Z}��,����=�K1�!���UM��=��&��\G>߼�=Jܽ Q=zͼ^c�>3F����c���=?R�=��>Y��>]�=��۾���=��>���Z��&f��v��=��n��z>�2<>��=���#6>�O��Ǿ�RP=�;3���P�Hc���bH�+~�>`�<�����>|�� �ܽ��+�Hw����=u>F=p��T�>4�=��3>˵���`�<���1����>!-�CH=�,=o�6=z���xby���U�ل�=ʋ���,>�u���{�=�A��Έ��/|��sZ�լP>�Zɽ�c����������Bf�雔��!����=EW����z��ꆾ�n�=F� >O>(�W�yu�<��:B�i>,:��M-�>�ڽ�Η�=
'T>�#�<H4彽i9��w3�k���/�#�a�q>{3T���L>7T1>��>�8-��:ݽ�V�=��h>��,���E>����2�x>IV�=+�����! h;_��<9 @�r��.����9>�P����=r���lνy>���='YE��(�_o�=x����(k>��<Q>1�?=j|�=T�>6%�=2�0�Z����=Syl�y�S>s���H����;�tg=���=F�ɽ.a��f+>u��=ɺ>cI>�<=k��:���>^н1*p�7kB�U�����B�s�>����0C>�R�=��93z=�	�[cR=*G >�=L>q4W�E{k>*�=

��Ʊ�=_�>M>M9>S\�=801��N\=`���9>��|�>����>L%�!��X>�I0>�	�����;rб���a>a�����=�\_��^(>�?ƽ0��1��=���=c�v�rɵ��D�9����5�>�3�3� �� �=��Z�dd�>�9=��<�iC���2�D.<�0����B��c#>�Ԯ�=���G���j�� @�<�!�J���D�@>oJ>p�W���T��N�����ہP>-\�=�)U=�;H?�><'���n�:D�j��Y?\_��M�=�.g��P��B>�ks�1H�\�t����=�=��E.>���<;{{�����*U��'�v���La+��9)<<t�=��;�{߻�����/˽�dz>��>F=����1����r�<[H���4�=�[�=��C��h>�r�x>��=���]}2���[=M�H=�>P>p��=٩��FE;��j��7���~�Pv� S>��_<����uk�0yC�u�>�.�%���f����
>���ߡ�3�	>jF�=�=E��
�=�ͣ�jc�ovG<�k�>8�ͽ���l+콞�T<&s��	tc�<Y�=(8���J��㽷Eo��Җ��0C=;�u����>�G]>�U`>�7����>mNj����1��S�ɽ�5������D>S���M��=��m^>G,>��/�wJ =�)>Unо����T��<Z���d&>��ڽ>O+��]�=,h����<�f.>�Y����s��D��=��.�6%����=��=��`�ٲ�=�>=�����n��Zi�<Fw&>�#X�ʬ�=�LS>L��=��J<얌�?�Խ`�y>r�սJys����=�����퍾Fk���Y;����G�}�>��p=L�>�ڍ�aF�=�kr������w��%E��)>�sa>y�=�q=��}<]9��R�k�0�I>1�.�����;>MA�k�:�R0<��Y>�����=�[)��>=ٌ�����4�ֽ'<O=�&=�,�>!r<Q���9.<_%=Y>�L�<�(>���<\����;��6r>���v(>�7D�6]a��=G���KI>��;L��،ԽIj^>`����Jh>|_���d�;�F�8S�>���=�B�=y),>��[<�Ms�tn۽�M�>��:�
[�=M4���>jN�=O!q��R�9��J>F����b:���P;N<���<�蜽f>e��=�����ړ�G�=0��Ƚ��ƼU��=K�����p��6=�w�=ߧ�<􁽹�>1z�=���R��=#�`>瀼��<���� =<r-=a<Ƚb�=��l=�&ѽ=:�h=wYٽ*�ʾ�po<!4<�>�P��A��0wѽv>>T���0�� >e�=��z<�ZT��f�=r}W�r�=��d{:���%�Hݶ�z�ȼs>X���l���{�;���=ʝ�=&W
>*B��d�F>�d�R��>�z#�<�Q�=	�s>��z�7?M>�<�*>�꨽�'ü�AN>��
R�=�d[�y�>6�=4'�=y_������߽;�u�B�V����=��O>7��=�0�;������>���o�>͞��6b�=!��=v�\>	^n��o7>p�L>*j��kD>(�6�[}�>=(�=񲽦9��%>=�C���Ja>*!�����-�o��<�1��!b=Q�=�rl�����f)=#ؽ>6���*�=���=�6�=B��=݆ʽ�ƚ��3�əֽA�:<׎�=���=��s�A��<�ֽH�����ϼ^�]=�T�5�����|��<�S<
�<q�`���-ս�@-<�f�=vR�=�i����[>%�>�ߛ=A�>F�(��=��[��7>�����a=�v!>��d˴=��>�&s<��ɼ���� �������$����=����5`Q��{�=
˲��7>\����_��>�3��T����*<��5=㬅=�?�j=�a���1�� >T�O=��L��6>G�+��P>5 ��>���=b�z�IG�='���ѱ=e׊��P>x}�=�Z�=�Av=4�>��4�P��>�|��G�<O�M��=��ҽ.��>��=6g�bԨ=y�=`6�>��=�<(!�=��8<#��=� �>��ݻ�؄=%�3����_3*�J���>�=տ��@m�V�= �=�0d��P!�%吽ٿO>�m�����=�=�S�=1��=.;���o�=u��=��> A>��|�;��=��D<�Ć=�=�	¼�e�=�i��[���k���{=(��=NY��v˽[2f=h��<���*�,��|[�<$=?�=&�<�i><��=�w9�h�f���=|/�X*�=m�ؽ�0>�h+��f>���=��<���<� �=�*>
S���W=�3=�>�F{ݺO��=SR̻h�>���=I�1������Ö>=c�9��>-q>��A>�/<<�Ƚ׿x���>-y>�t׼!��Y�F>l^=�3��Y�=q��d�/>�Ʒ<î�=�}8=�}�����Z� �}�UĽ!->r{)��l�=�1&�=+>$1h�^�u>Υ�=P�\>c5>�;��,G=�G>�׫�h�*�p����ݼ���>cL>J�=K�^�#Q�>�~����.>?C?��ʧ��V�=7����Q�=�.>��Y�>��'�fRi>�G�O��>MD=�����C�<+A=`CI�=�#> �%>N�F�����᳽0]6>S�>ɸ�1��(j�<���<��/�/q�=�����3��k��+��I��=un��h-�=�=����É��P>�c>���O<�<�� �;oʗ�#S��7�=����D�3�f'�=�%����d��珽�5Ž!��=|^>*#����=�S�z(u�leP�-
>�F�=���m�뾎�#>H��;2u=V=;���=�=���>��"=�x!>Q�+>������`���:��r(>¡>���<͵�<�G_�tj���q=_`=K+�<�^���h�����=Z�=�/
�]��;����K>^����vQ>��"��@�>n�<�ɾ��>�t>�yѽ�k���hE=�Ĥ����=Yu&�&Ѳ>��=��ǽPBJ��	G��-�=�M�=\g�<�N>N��=�!�=�8�=+�սlC>�{<���>��!�`�*>V$�~U�;Ģu= �E>�34>��<�K½8o�=ƍ>�f��en�Ii�=_>/{(��R��q�n��;�<�� ��\L��̼�B>>��>GP�a(0>��>P{�?���t9>����Ͻ�������=ґ�>->��V۽��=��	��������>B4�;��(<HN�	� ��"J>�j>��W����&��D��j�=ym�����Z�>�,=o��=V�2<��H��z=l�˾�@e��=�<.�.O#�-Tl>��u>m�; �r�%����<́�=ϥ�=r��=ߗ�=58>Y",�rh�=&"��d�j�>��=N�=���=T@�^=޽�� �;���l_�>���;��<�= ��=���=A�T�fs>$=$�v3\�t�>�7�>�>��>��a�I��=P�b=�'�= 8���>��=���=�5>>e���A�n�=���(o��w>���=��?�<�T�>�w�=R��>Ā�=C���9�L>e��{�?�\�=x^@>��r=�u�<�����=�8��j��(ʹ=��#=�|����%>v�,>�,�����uT8;�1���l��-ü����$|=�D>�#�!=�0>� z>R�>�7�cv����2�~��<��D�bT�=�6���v��*G<F�=lսy=���@����<�w{��"�=�h>�2V>O���j��!�H�����>�fV>��?�����"�������Q>��'�?C�}>տ\>ⷽ���>��1��G�=n��=�~���9>�Ԩ�k�g>e�l����=ƘG>�˼��I<���aŽ@�;a�{��I8�ࡴ>�½>�(�>�Д��h�=
�V;���>�y�=ʥ�>�!>�Ͳ�0s��g>��>��f���1>K^F����<2��=��>�%�ù�>��=��?��{�;=9=���<<Sg��7l>�j.��o��N��wcp>������>�c5�A6,>t_>
%>��<�����'J=�b׽J������=�`��#�<�Y�=C���7��]��5#����ս� t=191������=@�v>BC�=�'�
��=6Q�=�E ��((=\�=�?��J�=ڦ=x۱��n�<�&>���ɟ=2`�<�>��`~=�><�m���Q���OX>��S>I�=�@L��o<��=�ն��潼G�<T���4Σ<O->�_v�V��=��i=��F�s�~(�=A��;�"C�<��=���
K>&3�<i]R�r�{>�8������=�[;;���d�{�T�>Z��= �L>��>��v��܁>��"�&A>u�>�����m�	%�=W4����%=b�F>)3^�fI�>��*>Iw >s�� B��`B>C��=�½y�h=
q�=��R��:��ai�US�=��<�����SQ>Bb=5���"½�.>�Aڽ٦=:j�*�??b���C/>�Oh���>��e��I�=�V�qiA�C֩<�X��.�<>��l����=�%r>jBZ�F�>�,���Q2=>�ݽ7��!��=���>h���g-�������+�H�{����c�>:�=,]�=&k���=�z(�����L���=-�'���`�pf�=��
<Y�&����������D>��<��p=�>�v�=}����߻�;>8Է��N��<ڏ�;f���nP�Ӹ*��u��/A��e={��;`���=Vɽ��c�|΢��y�h7�=��z�>�>:_�=1�d���.��v�=t7
>�>�ɽxSY>sF���"�2�@>�D>�
˽4�=����
Ƚ�8���)��%)?�J�e�8=���=�>�OU�h�����4>�[��A�^���j�m��>^�A<�\+>T%ƽ�Y&�=\���TX<T�>2kO�t%<x�0>�S�<�~$>E�>'
v�3^�>`>uJX>ي�=��u>|�=�7��PB=>����8>x�I���	>�2��"��ܩ>Bޗ=��o=�'K=��>�.>�y>C����W���i�֪<>rO]=� _=�(���H=r�e$>���=���;J�t�%�=��=�K��F\>�~�<ȏ��S��R�>>��e>��=מ�=���=�K��d��±=�TW<앟���=2����k�=���;��%>�7���� ���e�j��=�{>\�<���wS�=!�$>(>�?�P ˻զ!�3��=E��QP{>��n�^�@>���<x�l�u).>���9�=�b=�>P.#> ��=��=n�	>݄> �+��^C>`�>9�>9�� ^�%�=r���*>�U>�n�=�˳=� Z��]��N�����=�[H�h����t��=ĉ=v
�zͼ���D6��P�>CG�<B��=��$�!c.�o����+w����=5�>�J>�B���L=۱��<6?>��=�3>/�_��L6����Yv9(;>8���B�� �=���>ງ>p��>t��e>�ؼ�2�=�_� |
>��=:�=�;�<RĻ�zB��E��-I>(�ּ��=�)��eDq�gO>�+G=55��$�9��?H>�yH�Ʀ�;g7>=ؽs�>��='0m�9yp��m#>���R�=ix��Ν���i$�}�ý`�ʽBG�=|9=W��&�%�D��� �=�:~>Oh�=>דX�iɨ<�6���3� �=e�ܽ	�����Z�/��n> *�=��Ͻ�9>�Y<d=8��q���e�=]a>R[��F�.��{�=f�(>䬼=�t/>TG<B9=>�G����=v�_��IC>�">{�>.2�=�WI>��	>2��<h���z�C���u��⼭>k�q���r>�8��8?��d�=�K�<�B>[��,����{�=,Z��0���B=��>w����"��Gp=>��>�<�=\�!�t�Dؽ���>;p���S>��_�̼�����`)>v'��T�L<����޷={|=�Vн�����==�,p=��Ƚ��4Ȓ=8�H>΄>qj�=�?��>�3��@��~OJ=�쌾����3��=0�L>k��=D�=�*���Kj�a)�΅�=��=�=��X��v�=�\�M����P'>�~p=���u��V�>>U7�P��}�=&�ଽ������<`�=�I�>��+>Ҙ���Q��g">ΦS>��.��<>ތ<�?��Ƚbp��k0��<<F���v>�[)>�Ɓ�2�-���8�ɾ�;uU��"u!���">�֙=�\�=��U>���\ϭ=C��p�����>��=>�J9JCp>Ͽ>)�h�Uq?ŕr>u���+�={EH�릡>�M��P�<�t|��1���1�7�=P�4>3S>x�9��M>�+b=P�>6��=��7>�`/�pJ��m�=w
�r�L>;@+���ƽ���=!�%>��k��A_>�u����׻Ix8=o�=�Y9=��=;�9>6��=a�L=N��T��=��F]<�L ѽa����=0K�3�"���4>�O���{0�Ү�<�s���1��]>4��<��>	�=�T>��ý�<Ư���<�q�=�%�=�V�7" =�%Z<�g��~>;\N��=�B�=��=�IU;���=Gu��ܸ��ې�2�<>t{����<���I=��<"��~ �w���m��yн��>��>��Ž��=�!-�M> [r>�E=�����(��	��$.�a	�=�Q�=�U&���=Ȯw��6.=mo=���	|>�J�m>�6��
�����`�=g&=�s8�
A+�~��=2��=�ƽ��ٽ��G���=��'��]�s���$��qu�=̣>������<>3�<E4->���=>�����K>��K>�^���ս��=,���_�>i��=1�'>G:ӽ��>����"���=���}ѽ�ա=�8�>^żÂ�=�Nڽ+�Sv��������<m����D�8�<=B�н�b3>����y��f��=A�=`=�I3��_ĽmM>���=P+0�ަ.>~�@>�1>f�����{�޵%��>�$��B4X����=s�>JJY���V�j싾�j�<U�����!C��'ƽ\_&>|;�<@�½ﱁ>�{罘�->��F�3�9<��=Mp>6)���>��5���=&�b��/>X��;��$=�9D>���"�>&���;��X��<�y'�#���y��$޼Y�B>�j=ke�3��= �e>V>-����c>�=�o䟽8-=k뎽���<_�=�I��mr[>Q�A>,�%����=��=-���k�`>��>:Y�;���ƿ���3>�qD>�=��=�>{����==��=VP�=!��>�m�=���=u�o>��	>�����|+=�������>?n�u�Ǿ#ڪ����=��e=8�9>8�7>O��=I�\<�Aý�����%��>�r�=�-+��8�d^F�pO>CE��25�=.�D>޷���WM���=	>>:CA>-Հ>����=�=�,I��L">/=����->�~���dA>5O>�y�{��=?X��s���E�[=h��=)a>bL�=^��=�c=��7�.��=��;�Ͽ��C����b��0ؽф�ײ�>�ˏ=�j�=��8>cV�>ƨZ�T�=>�>Ү.>�����={G�=��=ﯼ>Q��c0�%��ى>8?i=S��=Ǉ>�`>`ۛ����/n�"��&�#�'���bSf>v� ?
��<�L�=
)>�uH��j=#����>���=��0��1X=�R-�$�>���=Kn:>h`4���=����. >0_�=�j< ����ҳ���YU>ة�vD�<��]���۽6W=pO.>�-)���<l�;4&>� D����%�>r>�Cؽ�>>Į �0~E�:j[��p��#=�ۇ����֮%>�����T<�-$��[꼖י���S���=�W%�9R�>:���z/;��Q>5&B=j�>���3��؋���>��=±�=Zg��辣�Y�ٻc�[==��=�Q>D��=�>���=I9�>���g��=K5���<=�P
=~�.�a�@ݠ=�J��Zʻ �q����N����k?�µ��a=>6������=Ţ ?�W*>��D=�é=����,�f>���=��M>��
��C����	��;>ߙ�<��n��&�>�6�=��q�BԄ>*rb�jy�=�D�=�n>�-����,ʽz�۽ � ?[=Q�� N� ��=�FC�h(R=��c��(5�=��t���>��� D-�y��= ��:��2>�>���u0��`�����=�&���"Q=y�=��<A�=J{� ��J_�e��;��\�������=L��h�K=Y8�=!��O���8 Z�f��=3�N��>t�uk��Z��+pϽ��=���"޽��>vH=]n	=�,>��=��*�T�>d��=$W�����=ш�=jo�=`���'�<M�>W�=��=�е=��+=._z�m@\=�[>��C��s�ٽ�T<>&�>_��=�=�:a��1H7�r�>)������G>�
���FŽJ�);de�=Y�'��=��½5�]>p>���M >�IŽ)��<�=��=��׽�*��e�=H���{���6½�x��^�=��L��v=�+���%>�C>�9�=��>P����н�u=��>{{�<��޼����/<���953��LϽ�lY<+ï=�k��("t����.>�-ϽKO��=g�>���=��7��:���ϼ�=)>���>���)��>�&>q�C�eA=7k>Wk_>�}�ީb>���;�5?nO�1�=w^��=b�>�뜾8�(�b<������v>o�>��s=6�q=�=pF�>�4*>u�ǽ>%=�9=�轰�>+_>28�=��>���=�tj>f ��[���<ٙb>��0<:|��@����">�C/>��(����a>sr�>��;>�³=�E>��u�a>Ζ�<�/>��ƽ�R�>3�����*	`>�Y�T�*=h�u��l>�5>���=B�>��=D�>=���G��<�½�}�=J۬�����#T�=���	>?}>m�>�Q��'R�3����W'>֒��u�=�>/]Z>�:�\d>��3>���;�,=�`����>�+�po�7U*>_�5�@�>Q�z=-�6>q@׼+�8>�W����I�'���?=HmJ���>q�=@���}>�(>�z��5��=۠u��6�=->�AQ?H���� >��V<�ҽ���=�`��X�>k�=���=�B�=��1>Rl�~w��
ɻ�>�Ƭ�����b��p>�Lc>�>M�=R@L?/�=1��=����05�d�>�D.��{;�P�>�i�8U*>qC�=�x��ڭ����=Gfh�k�(�E�>�t����N�]��kEA>���:?¦*��,�=��$>�pȼDA�>M;���;�&���=�G�(`<R{��*�?H�J��w�=��$���:=j�`��~�> �<�i��@?ʽ�(�>j>i�=�ے;�!<���mJ��	�>ї�<�܎=���>����Ą�=��=9� ?�]>׍��~�ξ�$���� =�Y>���;r�<�g�>��>�]���L�>t����ߋ<h@��P�<�,�R�9����=Q��ɫ �2T��}�����6�������%?�󔻯
�=� �>~��>9ɋ>]R�;HM>����I����ڙ=�+=��2�&�>�*3���=<>���ǻ�k�K.��tN�> .�̔�=��������O�
�:�c9=H8�=f�e�`&O<Q����5��F��1�=yaf�ϓ8��U=7f�|���ϸ��>� �=m&�=��A`ټ���=7�=0����U4�-,���'K���8=AI>=�9�B�9=���=u�׽bm>�m�X��L�=i��$����>ΊM;��ľ���`ˢ��'>�7;��r�%G��D7��d��=�4��Nn��%S=U��>�ȗ=�N>�Yнݛ��w�:�G����b,��Y��-�2�����Mn�����"Z���c�[h�>W5B>ƞ���A+�^�����=h�y�k;��.�{��&O��>�cM>Y�=�2�=*b<�F�~'��"U���
�>�)�=��=�@=��˵��!(���d����F=�s#�Ն=PG�>��.�eU����?=R��>l�7�}G� �k���=�j�="�� .�<�>�����W��*c#>�\�=�!�]s=N=�>-�=-��=����~콣��_a>��>w����~�0.��M���S�;6�=�\=���>Ԃü����L�u�%>yL��%�=Hބ='֧=>� ��t��X�F�v�0��m��~�e�V�4�����B���Yɂ=�e�=�=�=i`���ɼ���=�d>��v=�R�9!�G=E��<3��1O����k��<�����7=h�S>�a�=O��=�ߗ;nj��$NV>Fwӽ[5���=ݏ�=��>�����C>�p�<f�����.��gC=� �s[޽A�轄�V>բ�>�T���,=��Y���M+�����;.�
>9�9�¥�=FD���M�T�a�>қ&= 0�=8'���<p�3>|�=T\�=?<�IhU��lC�"��>J�>�>����幽�9���=n��=35x����=�����=���^h!>�G�\��<8�ʽX�w�<���n�����Ͻ<�����L��w9<}x=��=�H�_� >���ՈU�u[�=�bM��7k�%0N=b}ؽ.�ڽ�M�=�|D�w�U>�
	�:�=MO�=��X>n�=��=�z!�X�ӽ��d>S=+=�7�=�H<t��<�*��[=h��ڹF>]Ϋ���U���ؽ�H���{E�5���� �R�Hϩ�[t�=g�%=Ex��&�>��� �����v�����=�J�=a���$��l'W���O=��#��:1������<=o�G>�!?�?C�p'�>{V=J�"��<�&<o��e^�j�v>���l�~;����H>_I��d��=�CJ=��>q��=r)^��]��� >D*�=���>�x�=;����@�Ԁ��V�x�����i�"�&�5��>2@=Ř�t>�%����n����=S1F>r�>�e,=�0�=�V����=��=£�=n��{>� �=N7�=&%�Y�:��q��=�߽�Sڼ�k=M=Y=$K�=�>�oD>�%���U>��>b&�L�>H>�$>->V}��	k��v�A��=nx-�ٍw<��$>ò==�������OF>h(��ȹ:h'>���=o�.���7�^�w>E��}a����E>�������=>5>1^=(��=1r�=��&��-�=+�Ǯ�����M�=X)��}�֋>'\P��N+�6�%>���<��:>KL����e="�=�i5=y�>ۍ��Պ�H;PQ>oU�<�:��8�h6�<�M��F>S�>��o>i�=�f >	��C�=�L��E�=�Ӽ�}>�7=��=�)>d�*�}���k(=n0>U�=��ؽ.�-=���=g�>�!4="��9>|�(=� >P�����H>�>n��"�Z�c�5�r*����8Q�<!�̽�OJ���6�M��@�P�L�����\8�B�w�:v�=�B.<߉
�ƾ�=G��=�w�=�!<����v��4�=�!���>�U��X�=����]�4�]�	�eE��q�>�b��B�ܗ�=d�5�Wx�:��K>@����_*=c�P�J�:�48(=$ߍ=�l=��O���?>�<M���ݽ��A>Y�v>�!�<n�&���<�N��RM����f5�ߝ4�u2]���=�����R>AF�>�Nf�Aj/��f8�[;�;pw>�zG��C���->�I0<8^�>�;>R-e=5�N=�qS��sT=U�7>��=��F��n=��-���6>��>�x���9��k$��д:>��c���=a�cV>��%���,>H�=t�u<U�>�b�i���r>&gp����>��=���$�E���w���d=�����2�?W9���H��Lu=��>Q=
>���<��M�<�e=>$Y_>��>���E�=�$�=�.���=�[��o/>r�B=���\p�;L�%>c����ʼ�Hq�6�L�SӋ=\F�>Rh�<��>j�5�n)������Ќ=�|=
>�`Ӊ���T>&ј= cѼ�$ݽ�9��Է�ϫ>`��:�<�*o>����e�=M�>ͨ���՝�g�=(/U���8>�dG>	��=;o>AS=���=�P���?Q=!Z>ڡ�=�h�=��켏�V>'A��?ӽ�a>�\���Vp�bM#>�'>�Eb�����r�ɼҝ!�e����=�<��E>�;�<dϽ�K#=�皽��>��2:\>p��>8 �;I�w�2�>�?=j���ϰ<@�����=��r��I���b%>��>黴>���<uo�=z��=�#�q*=\�<���`=|Fi>�/=>��>
�ս%綠�<�=�^>�,>e%�H�,>6t'>��=��+>u�>}=y�=�k�c�҆���	�>z�l>-~>4�� ��5[>	�)���!�k~����=t&�>B�>D ������7O&>s<�w�!� ���ܾ�&��������8�ꊿ>P�0=���	�u�:;>Ϻ=����Ē>'��>��4>]�>Q]{�h�Ż���=I�N�Q�>#�ں��;=����dt>Jc+>Q?M���>�����~����o����>V?^>��=A�>x�1=�	>~��)A�>��=h�]�����}�>VS�>�.>>���ej��î�q�+?�
p��>i/���6�0�μO>��iX���>I��$��W���6�<ۜ�>e�� �=��=p�>�ݲ</�!;&�.?A�>#���ܕ����,�.�?=��y>�9�ފ>���H���[���𽘨���j��J5>��^�Cҧ���w=z��&���7���ݾ��2�T�>+����6O����=�>��
���>������������m^���(��M�=a�E���;>JS,�%/�=[��=�ɳ=�j=�V>㬗�dy��`<E>b��RV=����DfL�ɭ��G�=�4����f=���=
�D>�L��bF>
�B>���=��/�P��e��%�=��9�:��=k5W>'�[=<݆=r��=*�A>�W�=M�L�S
�<��C��*����=��+>�`��k��	%>�8� .ɽ� >�K�=X~	����c��=�d>�P������ě��$��Zͼ� �u���2�=���O���ϐ�;�M=r]c�����Z'�!��>%�1>(Y=j����w���ٽe�Y<����������q�����=�H�=�t>w<�����1����>p�=A��<{�x>u���f>hj6����>�Ke��J.>��ٽ���<d�_=��>�
�=M��=��=�{��:2>-6�;�:��B_�=D�E>/���~>D�>�:��3<�X>��6>)�=�:�멽~�	>�c�-�>"4N=��>ݘ�>�)�=脔�6�== >�, ��Mr�B� �����=:̤>A@=>jMe=R!��(�i@���3��X���ǽ�� Jy=mv�E�ӽes<�j>�7�=a�<���=��>��˽�|�=p����&>�e�<#��D����t=$f�=�H�&�]=�?f=ST���B��ս;���n>uo�|K���!=��;H!_�z�R>R~.���=T�R>ThѾQ��e�!>�Ȧ=v�=��?�eCy=�&2��
>�W�=j�8>�"��>G����=� V���<O�n>�1%��P�=���:��x>���Q,=�G�=Iǽ:)�=�f>4g�<��y�v݂��&>�X!�zp��p2�=̦>��\�i�>������=�Խ�A<o(e>�g�=s�=���=4H=���v'�i�=a�@�p�>tc��B�&>���=��=G�>[�D>�H��d�=�A<K?��W^�����>�^[�D��=
>z�d�X=�<]�޽P>�V�p��<kl�=��>SQ��A=rm����>o��A������=Yt>�7)>�w�<j� 츽aЩ�4/�<���,=��$�C�9�b�ľc>'0�=>���ry>|A=	
�=h>Q
>`Q�>�q�=��Ľ�Ky��b=�{�=j�5>T�>��.<�<=��=����%���=���_��=�t=;�������/�ҕû���=���l�">0��<t�h�t|U>�VD�.�W>�}�>�Ĵ� )>�#ؽ�٩�ڷͽ�k=�w>�8�=�ޜ�*��=�WW��S>��ϼ��=�����5�ص绤_�=Ү]=��=��=\�|:�z�<'��^%>(sE> Ua>���=�Wo=*���&��Z��>+C'>,�<��AƽAU><���.{=�����;���M>3�<	Ϲ=Ҳ��T�z>M�?�ݽ��<���>�T8>l��>J�$<ρw<㉏9����oy�>����d��<��<�Ɓ����>�/������=��)�>
5�=d�սJt1���=d+s>X��G��=�m`<Ŋ������ؽ�Y�=�j}�R�=�ұ=_�At��ng9=BRw�Nd>��d��2>�8��l!>LX>*�)��F7��\��1_�G0<�鼦=�|���2��q�=�9:`8�8�=�f��8U>%���9К;p�ɼ$��Ҋ=�~�x��=���=�b��
l۽�b?5�)�#����=����l>���=d�>���3��&��=�e�=�d���]=6�L>ͮ�=����n�p�<ݘT=��G<�S}=jt=�o1>pݓ�_��>��0U�e�a>o�9���>�/�=Ⱥٽ)�F=^�e>ְ�>��)���'��Q>3��=m?7>�H�>��=��R��ӎ<=?��a��+>� ���>��>.h���>�a�>rI�>H��<�[&�Oq8=il>��/��>�FD>�y=�|��[�r��]<��ٽtB�� ���n�ý|
�KC7���t=l�(�=�/�L
�N�9� �*�=G�F����Ѐv>q��e�#�_b���$M��Z�6l���u=� >�Y> ���h��=���k)����c>ԽC�Ƞ�%�=#����`�<�-�=�B�� ��ޛ�=�ͱ<��Z�p�2����=K�>I�+=kk>Lz<���n���P��!��<�Lh��̱>�'>�ͽx��U�=� �=���==~�>6��������>{:⽟��=����k==����IJ�G�7�\�=� �����=��=n�J�nP�>�U,?��d���>����C������m>�yG>&;�]��H�&>9��=e����	W��5o>Y�2=7�S��oU�*�>�s��v��\�>T,�=�FY�Ԫ<�Hq����V�4�-���Qe�=1����a>��]���\>�̑��%�)�	>�l�۽~=˹Ǽ_�@�7����C��<Or)���=-t >��S��oY=k\��8��²=�tz��3��3������h�ܼ�|�=���q�c>�c>�H�����rA=�++�\�K�j��f|V=�a5>�S@<�9����=\Ē={�.>��=q"E>�|�=�3'�IǄ>�̽+���J/�=.�=螜��Y�=C��=�� �k#+��MϾ��G>��6><C��
�
>��߽��@�q�>>/ [����=ˮ=�G1�F27>�O?;��+Ҁ=Z�F�7G=}}=�~!��8K=z�e=T���_>HY>O��-�>"���������p�)]�ෝ=��>�[k>�=�q�>k{Q��U\>tXս�޻Y�=C���Q5x>^�+���e���
�� T>�1�=��o>��)>W>6������5�=L}��=/0>���н�C;���`>�c�;y�$=/���Li���׽�[���>ǭ�>+T[�Y�� "=c;�ڗ���Q'=��<��?�`T�=[��=5>�E<��<]�F=�K����<��=ecb�̐�1&���E��=H��S5K>��[���;��]��h��=^��=���R�R>���9���>��-9!���li�=��4>F��=l 1>�R)�l�=�����%��=�>_�=po��â<t�=>}�?���;k�ǾjC��;��!�=�mY�lp�=^��=�87?h;T��S!��r=y�,�^4A>�ȓ=E�O>(ǀ=��=П
�l�*��n�<���=���=���;�ʸ>պ�=�T,��5�g�=&1?o+�>U���X�<��'���V��&V�� ����0>]E?��>*Sݽ�Ƚn��=��>e�=R��=��S�8=�I�<+̚>�>�>����S�(�!&>�������V15>�  �P�����|���=�>��>L�	�9�W=�$�=$���%E�[����Fi���>�䝻��>J�<'�O>�;��Z�=���=MJs>�i5>��>�Z�ǃ�=�􉽜3;�Y������=.�={$<��8rͽ���<o�Ƚ$�#��
>3ٯ�'$q=���k�<@G�=="H>�qQ>tO὾c�^�>kY���ܿ=�qA=?��<�Ľ���=f��=LT>�8f�v�l��=U$�=�'�=�>R^���݌>we�=�Y\�{��?o��3Z�<�z=J�j>;��=x��X�=�$��F�<>�̼=��>��"�Ŗ�=��B��/"�=���a��p�=S��=nH>� >���;�V>��1>��t=��c=�� d6��L	>�,�=��<<KϘ>5Q >��%>)�����F���JZ>� >�r:>�\;>6d{=��=A�=މ,>qZ�=W�����]xY��i=#��=���>v6�m{������=�ܤ�A�X���,�IL�=\��s�=O��<#g�>�#�7�/�I�L>��1>V�A�Χ�;�o6=�\
>$4�m+�=�3^>��=��]=m�ν0�=��6���U�;�>��(>W�����;�N:=p��={�A��=s��G<�����J���N��c���f>\��� $���a�?���u��=�6�=��=p9=!)�=�[2�`�=�p�H�K�3��=�>���=��>�"P�>{�=�W.>�	v�
E>�N>��?��U�=��>�zD�M=?���=���>=ڼ�ݘ�ǅ�>&}����a>�+���ݡ=y�=��>3]I>����.4'�Ik�<~Q�<d�;]��>b��=���=�EN���F>�Y]�R��=C%>σ���"P=x�>��>��E?�m��T�>}��=;��>g�{>�'�=���u諾4�>���=T̋<��>�X�<rĆ����:}<"������E#>"Ӛ��νl��녑����>�D�=8F��ƺ��ѽө<diF>ؙ��Y�UsL=�q��S��=��!=9��2!$��\+>Y����+>����;>������׽HV>�7�4 �=ԕ?>o�����9=}�	���t���#�g�5�W?�D?,>x��s-G=�(�_,	>�>\P���ϼ򨡽�$>H_�=��&>1^>�k��=B�����=1���Ȓ=$��tk��Q >Z���_�<Nͽ��ѽ(���ce<`To�0=D>�u>R?�=��v=�L>~qa>w7�o���Z�>_�D>��Y=C��>Υ�>g| >�a<>#�3<bI�`*�=�?>��+>p�,<H�$�8�=ft�=��->��='�o=���=QD>~<>�!ڽ�A�=��>�|�=��B��݄>#kp>_`���32<c���Vp�>`�;>l�/��)ռꄒ<�[�:�&�j��=�{�n��sm>T;L	�>щy;�h��}�=�b8�3p�>�,��9>.�־8�� К=��F>�3K�e�r�c���`HG=ԯ�=�YU>�,�=0��+<=�D=��>��>MPd=�������|�>�3���\=�>�Ĥ��j#���[>��2=y?����L=���Bҽ2=?��>J�̼Ľ�)= Ľ�7==Ҩ��K��,>�s½W>[���> ��	=�/>ﴽ�s<��
>	�x�RľO�>���=Y�u=2�Z#=y�|>��=���>;�����d�7<?��P'�=	��\�<���>����b�c>9gM>������ǾX
��-v=}:)=��1?<��ʽd#���4�=���^>�O>����"!�Pm	>%E�> �>ڧ>��_�L
>��4��	;�Z���-��Z`���E�i1h��Ԭ>����{�N�
�x(="T>�Gc=���>	�.��۰��v�<u>���=�:>u�/�"T]>U�:>���=��D����;t>�潋y[�����u >���;�y��=�=��f>�̼�H���G>4 />��d�xa�=8�/>S0ν�>O����>}��=$�(��ڽ��3>߂>��F=`1N���"=d� >!	8�)�>����Ԑ=�]�=�ڽl��k�����=d�<�ź����Q�+�=�-=jh��`���d�S��v���<<7�8= S+>>1>
�;���%��iIf>/���w0Z����=I-I>�5�<� ⽜���䩔�t�>��L<��Ƚk}��*����Y���<@C��	��cm�>}���-">�,r=p����=��>�5Խv��=�;����5�G���i�)��<(�>���>Y=��J>q�e=L�t>��w�=��2=���<� i>�t���=$<N>�f��w�L=aRJ���1�1RN�T4�;Y&=��ý�J�V��<�ҏ���=��򽄴��w�9����=�(��F��!�=%Gҽ�1=́=	_����>��N�N��>���]̽?A�dT>�6ƽt�
=��=Y���\�=�`�=�G�=��/=t�E>;�:A�=�@>#!;�*�����=�&>�֥c=j�>�3ͽ��3�x>��=�8�;���fU��D>�zA<
-�:Q�a��@��]�o\>pz�=�o%>�D;>�Y>7Rt���D>LĈ=!F�=��9��g|=G�5�}�����ݺ��6=4��=�K=�\ӱ>c��=@F���S�=���=Qj�=B�ּv��>�ȳ=�{|����=�=�R'=��{�˃ƽ�B�=~U>���=�6i=�V�=O�� W=��=��<B��Lŵ�)=�=�����YK�H>#��>�m=�,;>+>	?>>t)>[_��
?ٷ=�;->P>�./>
�$>W|r<���z�'=�R���v����`��=���=1}=�}�V>�!�=;or=FqP��i�=lP�>N�>���>Eh�=��>�I�>!c�;�լ��#=3�>�+�=L?9>��=^�=�9���>/0=�>�n.�Ԝe��DS>X9>o ">=�?>H�$>�K=�U�<P]9>�Wg��@�����l?>�d�=�	=�.�o��b�=�:G�щ�����+$�C��=�4�=�� �J>]����'=I��=�g<=G��� 8�Y�(<����q���5��=���<��� �;T׉=ղ���>��>BT�V�!<ў">�l�=�s�����=�:=��-�=��x�T�=	�<7-�>V�>�A>p̮=����D�ۼ�<�=o�B=�݃�P㡽T'�������S�<Ņڽv%>).�]�u=bƽ�Գ�VK�=�>�-=�X�=�_P=G8>�>0��=���������D>�@>򨽂���5�>��<e�w�3��=��=���=,�">
p
/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/readIdentity*rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
T0
�
(rnn/multi_rnn_cell/cell_0/lstm_cell/biasConst*
dtype0*�
value�B�x"��ڗ=�<= ��=[�,=��=Q*�<��Լ=�d=�	���=}�
>�4=���<f]�= 7=�b�=#Gм��^��=޳�=:,�>.C�=��=��<�#�=�ą<>��=�8(=#�=x�A=�X�="�D<hT =y�!=��~<!~ܼ�<U�7�q�%��;�'��q=;��<��<��Ɩ=�S����^��(�;�_=`��=[Kh=�]<F�+�耑<�-=C&<�;��<��<{K=�iy=@��<{�q=&{�<���<��;*t��;W=���>�<������<|�<���%0f=�B,=��!;�[�</t�=���=�)	>���=�)>�ͦ<!;2=�ߘ<z\=U�<��H=���<���=��u=��<�%7;W�@=���=�j׺�=��q<{Ac��V����0=�R�<�҃=�V�< ��<I]=�1�<Õ=��S=�(b>�O=����<"�V=R6&<��=��=� S=�s�<
l
-rnn/multi_rnn_cell/cell_0/lstm_cell/bias/readIdentity(rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
T0
�
9rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Slice/beginConst^rnn/while/Identity*
dtype0*
valueB"        
�
8rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Slice/sizeConst^rnn/while/Identity*
dtype0*
valueB"����   
�
3rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/SliceSlice)rnn/while/rnn/multi_rnn_cell/cell_0/Slice9rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Slice/begin8rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Slice/size*
Index0*
T0
�
;rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Slice_1/beginConst^rnn/while/Identity*
dtype0*
valueB"       
�
:rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Slice_1/sizeConst^rnn/while/Identity*
dtype0*
valueB"����   
�
5rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Slice_1Slice)rnn/while/rnn/multi_rnn_cell/cell_0/Slice;rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Slice_1/begin:rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Slice_1/size*
Index0*
T0
x
9rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat/axisConst^rnn/while/Identity*
dtype0*
value	B :
�
4rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concatConcatV2rnn/while/TensorArrayReadV35rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Slice_19rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat/axis*
N*
T0*

Tidx0
�
4rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMulMatMul4rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat:rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter*
T0*
transpose_a( *
transpose_b( 
�
:rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/EnterEnter/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/read*
T0*'

frame_namernn/while/while_context*
is_constant(*
parallel_iterations 
�
5rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAddBiasAdd4rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul;rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter*
T0*
data_formatNHWC
�
;rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/EnterEnter-rnn/multi_rnn_cell/cell_0/lstm_cell/bias/read*
T0*'

frame_namernn/while/while_context*
is_constant(*
parallel_iterations 
|
=rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split/split_dimConst^rnn/while/Identity*
dtype0*
value	B :
�
3rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/splitSplit=rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split/split_dim5rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd*
T0*
	num_split
u
3rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add/yConst^rnn/while/Identity*
dtype0*
valueB
 *  �?
�
1rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/addAdd5rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split:23rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add/y*
T0
|
5rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/SigmoidSigmoid1rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add*
T0
�
1rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mulMul5rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid3rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Slice*
T0
�
7rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_1Sigmoid3rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split*
T0
z
2rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/ReluRelu5rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split:1*
T0
�
3rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1Mul7rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_12rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Relu*
T0
�
3rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1Add1rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul3rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1*
T0
�
7rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_2Sigmoid5rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split:3*
T0
z
4rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Relu_1Relu3rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1*
T0
�
3rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2Mul7rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_24rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Relu_1*
T0
z
;rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1/axisConst^rnn/while/Identity*
dtype0*
value	B :
�
6rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1ConcatV23rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_13rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2;rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1/axis*
N*
T0*

Tidx0
p
#rnn/while/rnn/multi_rnn_cell/concatIdentity6rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_1*
T0
P
rnn/while/add_1/yConst^rnn/while/Identity*
dtype0*
value	B :
H
rnn/while/add_1Addrnn/while/Identity_1rnn/while/add_1/y*
T0
@
rnn/while/NextIterationNextIterationrnn/while/add*
T0
D
rnn/while/NextIteration_1NextIterationrnn/while/add_1*
T0
X
rnn/while/NextIteration_3NextIteration#rnn/while/rnn/multi_rnn_cell/concat*
T0
5
rnn/while/Exit_3Exitrnn/while/Switch_3*
T0
�8
dense/kernelConst*
dtype0*�8
value�8B�8<"�8|*
=[[�JV�����W�=�vf>P>��>�~�=��=���� A>r嗽��>�B�E�y�G�v���>��7� h��$�6>�� >"�F>�x�;�O�=k.�=�?��3�<M6������=>�s��YK�	>�*�>;L>V01��e=�w�<� 
�"����)<�"R��\���>�
�.�>�w���e���1T���x��}�>�[�>�x�=Y��q^�;%ӕ��D���ۯ<��=�y��>��I<*���YV=o�=���l	>Ŧ!��k��k��#M=z��=�@&�!z�=ݧg>(-�'�8�S�0���x=d?��T>M{=sA%��+>(��<*��=��8�b�>�$ջX�>�}�>�>>��W�m��g�U>~>���X�H�=l�>��]���+�|��>p4C>���<���t�����+�G=8Y�=�\漩� �N5����K>&��>�Ga>
�C==I>ȍ���7>t�n���*>�l>��@>����f{�=U�,>���F�>��Y�`jP=Q��=b�=>��ݽ�"\�+�Y�ǚ��;�>K��=��j��CŽd+�>�ui=�[�������>�܆>A�B���*�NQ��O>c�������oU=J�6>��F�Q�>c��=P=>�Iy>Wu�=}�5>#�1=>��������*/���W�(k⻙T%>vн��=a����=>�1>v���ڟ���=�b�Nd�Z;�<���us��*���b��E��&U>˞>�=pi�+^;>b�=�&>O�~�p8���A2��N���b[>:I>��~>����k�=�O>��;>�qG=�Z��L^=��=χ�������>���>�-�>��/� N�>3�)��	���0!��[>���I���N�d=��>�tĽ�>��;�"��MP�;��4�O#�>(|=.��J�x�Bƽ����*�_>}6@>B�b>0�ܽ���OC>T\����=�Y�������;�QG>�k�>_7��j��6��N��<� �=<��2p��g�Wt�>�y5��I>pn2>�8>����c�]��^��\���0f>��;<ʦ�=��<�	�=�8���:>/g�<��,�@���~���* >f>g�ق��ω=��=�����ɪ=b�*�C�<��2��7=�z=��>�	���Ē�s��[:>��k��@K��$E<	���5��f�K>�ǁ�΂½� �ƥ�>C��"�>#ss=��* ���L��z1�mh����=��>�W��^�`<�)V�
��>�9�=&_=C >���>9�=�}:=����'H�>��=y㏼7�B>!R�6cm>3ƾ!�پ���6~>�/'�e����Y>�����߱=��=:�>G
��q{��V�=�Z<��=����JW�=6~��M����z����Pj>�n>�����ɾ5XQ��_i=�]�=�+�n_=�`=0����w���K	�!�H��E���[>��k���=*���T��o  >h���s}A���=ÚZ�f����G>�n=�p>c`C=3�e����Z�>��W>�@����>J�=>�=����!�5F�1a=����-Y�=�
�=Թ=��0>� �:ಥ<�E���Ƚ���;�i��&���=-e�Ỵ:�TJ�]�������{K���W��4s���έ����}���3����>��V=9�?>_d=�u�Y� �4�����Qi<��M��J,>�ł=�`��#I���Ĥ<��M=SR>!�$=�y��N��_>p��z>ܱ�=�ݡ>PL�w�|��#��'Ǡ��Q�|g>]v�6f�>�¤��#{>�9罱��=�7 ��h*�����O=ȅ>�>���[=�?��Q����>�y-�Y�	�IO��F����e�,�,=���>˅�>�m ���:�ε�=����w���lؽ'%�=°��_�#�*��H��h&>&��R��b<
м���hw�<�L�=�T\=~�P�N�%��J7��C?���W>u�ѽE�.�Ї>N�~��������_��7�Y��;��E�*�d8=��>�����0���p�����>�D@>�&A��>���CF�=Q��)Ѝ>�\:iUL�� 2���S>#vZ>�=�޽W߰��cn>����>�i�=f�=ҏ�J[���Z<0�=�+4�G�<�M�<��ǽXr�=(]�=t���|?>iG�=XYV��痽_&�ա>����]|I>_��ݤi=B�>��T>�8�א3�� =���=��3�;�>�S>'���04�=�>c>���<�+p>�{�=��>�w�<r'����=qsK>�V���>s[پ9�;���7>\2��,��r��=P�r=�r�=���=�����?>�"\>m[�b��<�R�;�k��V=��+>�&�5�>>(l��u'>Ծ�{���zi6>���ϯv�-*������.�>���>��>�L����Y<�>jaG��c+?�8ܽ6��=�F�>�:�b���`�d���>�@K>=���}wȾ��^��F]��֡�?��=㖿<?�����󼓋 >�T�jǎ=�[�=��>�޽Zg����	��9�=�=�'\=�1>��<�����=�#�;B��<�ȁ=� ��(���S��;.�l_�}U�੧�[��>�O=S!h=�4��[�f�3Ě��_��;�=�&��6հ>mud>�+�>DT0>�c�i�=�>���U�rjq�ҀU�)�)>t�A;�%��B�=��Z�>���>����.�=x���+��K��>*��}������V^��SE �I�r>'��×~<8�=�"|���׼^_�U:�>B����彆=*>�C>�i�<15>��.�5�
\>f�8�V��:e>��>��=�=��c>�_P�8Q��'>V�=�'>\��>*u�>B>�3�=.��9�7�G=�=z�
>�K�(8�����8>����kG���[��o��]u>�S>3Xd=뤜��2>N�>�`]�	����:>�.#>`�a��w>�F���X%�ğ����<>���$��@vT���?<+A>�,T��;��8`>�]c=�u��:���h稽!x��e!O>�)� je=�I>j�u��w�=s��<Ę���E潢W>e�#=��.������?��_1�n�\���;�����4��+G+>*0��&Z ?�����4�]�>t�!>��j����Q�>�>����~�=`�n>�g>�� =S��=OH���j���M���^=��-����>W齪����R�П�>X�[�u >ö�<(U}>��;�$�=�P�>^��(>���D��1�=$��>���=���<<�>y�G���V<�!]�&s>O��3��J:�>b/\<m�>���&н5r��6ɺ��>\Ϥ=�DE�G��=��=Xӽ�'	���l>L�E��L������<7>�ἤ�N>�4����v>g��U��=��<�,~>:a ���D>��=�<>[>�g�<�<L�������6>g�>3�)9ӻ-v���� =	������=`.=G&W�%6=T:=>�>�Z�<*牾	�>	�m>Z�=��
�L�N=�<�J�n��T�|k>Q���4S4�򰇽�R�����>y\g�7O>g�ٽ31y��甽�)���a>�f��
�K>�8�=�i/>'=6>��=1�;Z��>;�.���E����(�W=�2�����={W���e>�*��\c> �E�r
�Q��>j��<���=�ߛ��&S����=L�\���0��~��8�G�S�t��=p��=����NR�L��7.��a��M>�@����ɽS|&��~(�$�== ����=	a�l�̽\L�!E�=�:x=n
��K�<&R<<bAD�R�_=b`������y(�]n��l��>I4�̊=QEm�Q�:��E�<��=�c�&ro>.喾�� ����=���>yl�=�<b�d>|F��7�>о->uk'�߬������5�J<mv�-���RE^�����Dh���.>�t���>�y�i$�W�ؼ҂~>�e>��K>	K�=A�=�"�<��=��h>�ܽ�<�>��m=������&�>�P�^OȼJ���S�=�l�"H�>�L�=3NM>A/�=�(���F4>^�ýA�Rͽ��>�;�LG>�h��^2��� >�y=�?>�/�>` >M�۽��<�WI={�v<ظ�������i3>i
��P삾�վ��	�|e�=��P>#w�=W�
d�<1)>�4�>��=���>��y�'Ὤ��9û;�3�?a4�%�=��j=��̺!�j�Ѷ�=�~�=҄j�ϙ���y����Y��=�#�=�:8����_���Y�n>���=�D����m=��I>��m>�Z/>Q�ҽ�#��|�>�.����R�f�g3��Ȫ=S5����H>���=b��b{�>=�B�DK���C� ?��P���a>CU�=�ۧ=N�L=(^�>�>��>v�>^�>s�k>�
�=m�B�f�W�s�	�[t(���>�:�mUq>R����W��}�+>y��=��>X>�Vt��Ƚ <{���_H>q2j=�t�=���>�����
�>�3>���?,>zA��>.����.�����q�6�	>p3�iུ!�*{a�c8>@y�w_�>�]%�Hi�����>���sl��`���ǾU��==� �?�%R�n�ֽVB	�N�ھV@">)�>!���Ѿ��>�I,ὔ�����)�j_>q��=�ƾNu��qa>�Ef�L&[>m:,���=>����t����ξ�����Y{�P+U��Mv�ʂ���s��OW��N�=�b��ŧ���ǽ�S>��ɽL�>!��>��<��S=�n>q痾g���� =�� �Cƙ�-�`�������>�u�>Kƛ�̔*>���>�/�<���=��=>b<��YK���_�>2�<W׻>��D��U���[�=��M� ෾��m>�s��>�L���D�>m�a���?>�R>���=>��������|��w�=P��oA�.���h�>T��>1�[�\�@P�V8&�О�=Gt=Ԗ>��>YB>����Q彲��<*�=7�>�LϾ�^���CK��"�<���>r�������=Yf[���d�Z&���:���<�v�8ͅ�Zo������=C�5>��>:�н^F�<�;�\����6���
�"{;&������=����{Xp>��*�{�u����ۂ<_q|���B�V(�BՇ�'�>G��� �9}��2u�=@֏>yd۽��Ⱦ]��=1罠��<
�R�H�.����=��������#S�Y:ԽG{�(2I�3�{=�*|��f>���#=>�ߎ<өs�����'�=�U>���4����6�	�<.�!>R>����L������<�=Ƽ"yE��㔾�G�>�T��}�=#0��v��O]\=�n�{^�=W�(>���<M�8�n#>��� ?���%�z���$Ѿ���=��8=�@K=���=����,�=NZ��A��k�^��湽�+�=k=k��t3>���<�!m���B>�9=(��*s�Cv9>�\o�t]o��ף�J�>}>�=�-3>'�2���,�� �=�a_�׀�=WQ�<��j�T?���<=�6>�y>�Q�
�{�:���Xd>���&��=�Ն��0,>�ݕ=��>�%ҽM`c>��L>!+�=|��"�o�h�y�幏�l/�>4��<T��>���Z�>g�=]|�U����qm>����i��">�9"�*o@>����MY���<@�=�o$=��_=�u�<�x�=X�=�V=�0�* +�3�s<���=��=nɐ>�9׽��h�(�>���Ȩ9���콄zt=k���S!J>8!�%_�=Tk�<{u0>�!���t�G-j���=�K�e���,�Tu���~�m��4׊�f֞��ዽ\,v�]�ڽ� >�(ɽ�>�=�!`��b�=F�j�+���s������>oY>��S>�����q3�2��GO6==兾�M���_7>����m6ξ�h����B�~�v�l���莖>���>?�	?w�׾��=X#P>�l=a�o>����WW�۹=>���6쐾tҢ����>ȥ>�ŏ��3���>d����"�>�i���<����d��=�:���C	�n�l����=֬p>��½s8�=���= Qh�q��==��P?.>�S��+g=��f>u.N��,��&��=�tĽj���,���͈��#>�$��3x�~�J=>�&��r�[m��ŏ��j�;����S���ۅ=u� >p�6>
M=<P��<� �!�v>��6>���>�&��UQ:kޫ>%>�=�6�=��J�g�>�L>	B.=�-��1�=�_����=�L�^]>���<�%�=@<�^�E=?	>�
���(>Κ�=-����z>L:>�5���C� �k�
�c�{�L>]��QI>_Ӥ�i*>\o+��d=�.>Pvc>�7Z>n�9��<2�>�J;�I�>e;>��>���=u�?Z�=���#i>� 7���彴4����d>��>~�0�w��EP�o��>-�=��<+0�>���>X1U��Z@�l��w��>;
�>J[=�i<ev�=�1�<�n>S�`�-��=?�ӽ���<ju��}>3��;kƴ=0!+�\j�=��o�k`$�H�r���=�>lo��������=��}>������O>O��= ;�=~M{��-��5h��3戾�P=�=����=�<�[�=$Ⱦ�v��n�� ���Z����<7O>|�>Y������>����9k��#����C��{��}�D�0�/��UX��L>4p>��;�o񼒒=H��VnҼ�g8=����]��MCX>�C�O^�>5�a>��ݼ��#>M��떾�7=�5�>�_�<΅�=�o>>Jb>>��h���6>�h�=�!ǽ:)�= ?����=[�h>Ƕ >�$�����Rd�='�z���=���>ӛ�>nZ�>�3j�P��=tF�>X�B=��d���n�=x==�!��}t��ʟ��>�'�<� �=�7�>į�>J<��� >L��>L�4>�=��I<>3W>�lT>W���o���E�����%4��8Qý��!�Jv�>q"����<�L�<ؔ�=[�D�M>�暾���>ݼ>��=�,�=ŧ�=:Jk=T�[��m4=5O�=6�{(�=�Ͻ���������=sf���z*>
U
dense/kernel/readIdentitydense/kernel*
T0*
_class
loc:@dense/kernel
�

dense/biasConst*
dtype0*�
value�B�"xD&n:��<��׼�w�;�V<-	<\J��(t;�ȥ�,v!;��>���:[�>U<�ƽ<Yx�=2��?��<���=Ԍ����:��I��fe�8�>��=NI*<4�;��&�Vb;
O
dense/bias/readIdentity
dense/bias*
T0*
_class
loc:@dense/bias
j
dense/MatMulMatMulrnn/while/Exit_3dense/kernel/read*
T0*
transpose_a( *
transpose_b( 
W
dense/BiasAddBiasAdddense/MatMuldense/bias/read*
T0*
data_formatNHWC
*

dense/ReluReludense/BiasAdd*
T0
;
dropout/ShapeShape
dense/Relu*
T0*
out_type0
G
dropout/random_uniform/minConst*
dtype0*
valueB
 *    
G
dropout/random_uniform/maxConst*
dtype0*
valueB
 *  �?
s
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape*
T0*
dtype0*

seed *
seed2 
b
dropout/random_uniform/subSubdropout/random_uniform/maxdropout/random_uniform/min*
T0
l
dropout/random_uniform/mulMul$dropout/random_uniform/RandomUniformdropout/random_uniform/sub*
T0
^
dropout/random_uniformAdddropout/random_uniform/muldropout/random_uniform/min*
T0
>
dropout/addAdd	Keep_Probdropout/random_uniform*
T0
,
dropout/FloorFloordropout/add*
T0
6
dropout/divRealDiv
dense/Relu	Keep_Prob*
T0
7
dropout/mulMuldropout/divdropout/Floor*
T0
�
dense_1/kernelConst*
dtype0*�
value�B�"�y���̲�>l�6>�����!Y>���>��F��>�!���b>�@¾�W�e3P;�
�>����+>>ڌ>U{>v�R�3`z>��N?>�ؽ�Lͽ}A��u�
<rr�O.�AQ}>JH=� �>���>��㾳:�>�&O=I9x>۵�<�i����]�!>&�6�>)��>;��.qܾC.\�à���>��<�k>���>�Y�=�"n=�W�掉8͒�>�ھ�-m>k���v�=Pk�˗l>
[
dense_1/kernel/readIdentitydense_1/kernel*
T0*!
_class
loc:@dense_1/kernel
A
dense_1/biasConst*
dtype0*
valueB"�H��H<
U
dense_1/bias/readIdentitydense_1/bias*
T0*
_class
loc:@dense_1/bias
i
dense_1/MatMulMatMuldropout/muldense_1/kernel/read*
T0*
transpose_a( *
transpose_b( 
]
dense_1/BiasAddBiasAdddense_1/MatMuldense_1/bias/read*
T0*
data_formatNHWC
+
OutputSoftmaxdense_1/BiasAdd*
T0 