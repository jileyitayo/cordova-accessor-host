
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
value�B�"�2�׾���=�끾���>��G>�_o>"��<p��=d��>5��<�ѱ�ٮ�\�>ʎ�ѻ���>)���i)��V쭾���
3=>˫��߼'�^.�(窾n�>����s���#Q���=9���AMľ=-�p�V�b��;�~�=�
/�&X���1�>G��>E�4����>�->�V���׾U���W�>@��>��n=H�=z.E�K�ԽsV!�s��ZG<�s��>���Ͱ�>��=��>����>��A=�)p�da�;i1�4�,�%��>M��>��?yt�j�JBX�L�L>���>������=�{�>�g���>O@�>�Q�=�>?h�<�)��������辣��2��=
[
Layer_1/kernel/readIdentityLayer_1/kernel*
T0*!
_class
loc:@Layer_1/kernel
�
Layer_1/biasConst*
dtype0*�
value�B�"xa�~�-5�1���Ǔ�n��^Iq=�D<�㣽�y��uo��vx�<,(2=^�༅T뽿�K<7K���R)�I>�<�qF=<��=^֮��@=0��v$��v�>�:��6�����=bpF=� ��
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
value��B��<x"��O����>��->C�>�䕽����1��=,�Z�Ԇ�=:8&�xo<��=O�>�a�����D%=�)������=�@
�G9���&�>�j>�/꽦�>,��������tR7��X>�.>P�=�߽d�^="3��D�;��'=cE��$�=�>{>���� 0���"tS��в��V6> �.��@%�8�8��=0x��܇�="�>q��n1ӽ ����=��
����r!>Ơ3<{�>��^=��髌��+->��b�s�(����=��/>řۼtY����}�0� ��j�=�����=�-t=�/O=�ĉ��U =��>���<����]�=6`�=̩�n�v������ཬ%�>���=f��=57S>슞=D�#>����R�=�*V>��P���w�=Pʰ<���2&�����k��=��]���}�V�:S>Kn6>1͞���彻Rټ�$J>7��e�
�3/^�;�<�8X=X">�E�>T��=����^`3�ˢ��6�=)��Z�ܽ��Խ��d=�0s=A���n�:�a��
�<�K=�k;ڇ�=�{=�PT>�0���|>;�:��T�>gC.>���>R��=M�_��'�:��z>��r>)o�==�x��Ʃ���0�� M=��E>�%��"ɓ<_$Ի���<�XP=Ԕ(=E�=3O��|7�4͖=�@ƽˀ��������wa��7ͺ�u/>L�B>ǰ��U���J�=�!>��=�7"�j��=�4ǽ
�=B�<���<؛����Խ���=$<ڽF������7�Q=ÿL>��>��H���H�>���>��<��g>�3�=R��?TV>�N>*�ͼ2��=���q;���=�䅼i��=��5���=��-�=5?�Y��;���=�'�=}����6�d�=����iݽ��i��(�׼���`>��=��>�U>�	�� y�GZ�>J�2��,t��׫=M=�0�>۫=��/�َT>�;��>q����K�=4�>��=�ㆾ��8=o�o��-�q&!>����|�=��(Z<k4m��	5�Ś��ľ.�UtY���=��x��IN���=<Y>_�+>>*6=��==��=c��=�J�2G>� �=�%�<f.'=�
�=b���`�=n�O.>5 ����4㣼�UL���;Z�E=���=�����@��4Mp�=����ֽ$�2�P� >�#.>\
W��k����F���.���<�@�w�k=�ٽ�]Ӽ2��U��=�օ�x6��T�<��2��_I>��z���+>�̕<��t��d&=��)"��V�w�~��=~�j�K�������>)��=.�z<3����������=0>:�^>��Ľ6T��3;F���>�{3=���;����� <f_�=^����4=�����=�4���?U=�J�=�T�Ê?>�"�>{?̽dfW=Q"��o�M>,�=!ۓ���>>y�������Ľ��}>pԚ>��1>z�=\?J�/#f�pF>�aĽz���qd�ּ��R��}}=ϐ�/�g>Kbl=s�=�9�=�A�<q
#��˂>���>E�'>�Q>�\���s�$`J=��;%�[ ��^�<��:>��Y�ԠK>�fս[S�=rL?>XIM>�Ɇ���b=�>>o���YB�C���:#2>4�#>�,�=�~>T�������I���>�	���O�=hں���=��<��M�'I�>!K>���>Q%�h�=���=�́��4$>�X\>=q<>�IԼ����T>�B�=�7�=�'>s;�>m\Z>�q��>	���)E�S捾u/�>V�.>����1^W�U�����=�=�>
6������)F->~T�=7�g>p�>�9ҽ1>�M>$��<���=<�(��~"����>	b���q=�*Z�՚���V,=��k�y)�>v|.�#����B�C��=1漠;�<����|��S�>�i�=�����;:��ƻ��.�=x`[;�;9�= >\�a>���=�����������KA$�4�
;�[4����ZH =0�Nc	>�U���=�sgv>؃M>g��=W���Rc����7mV��>��<�|c>�un=A�Ǽ�=D�=son>	��<������=i������y�<<�&>��=���l>gK;.�P9/>�ֽU��=�1�=8��<W���D�)=	���.�1lI=��+����<.�e��C�=,��Cs>ѥ�P`
�>v&>�u:=)��<p=Q�4��`)½�pD<�b,>v:>a,i��
<>Y&�=�A�=��_>x�&�>i�;�\��W�=s�7��hc�l�>�=>�`�K�@�X�z>Z�\>�!	�VgP��pV��xB>DZ�<����u3����i��=J��S˽.ɴ���'>|9y��Ƙ��G�>W>�2>�K�>>k�>����9 <h�=
Ί<֗�=_">��n<76=A�p�#��=��>����˔=m����@>��=SQ�H�=>��=Ȕu��:5>��i��L?=+�{>�q\>��>Cݹ=T��>eu>Mq�=/6<_v!>�U���F�=�.ǽ�'�=xG2>�l>�Ƌ=)���������)V�C�*���;�ږ�4{�<L��=�G��!�:�H��=�����ʼ�Sm>��ν��=5���w6p<_qM=��M�>P�T�a>S����&���E�O�=�d>��鑉>���<�S�=��W=���=afؽ��.=�l�<�V�=���=$�.>X�=�����?Y=�๹��S>��=h�=��>܋}=�b�>Bj�=��L�W��=��$<O9��N�>��ݽ*Q�=��o�zC]>�==���=�qԽU�5>q�>��8<,[���=]D�=`k@>��̽�"�'l½'�C=���n3>[=��	�Q�7�t�>c��=�C����4ޟ>i�'>�b�>�� >��w=�	i��\u�L�=�sL��>�W��%�i�<,��=�Pʼ1���@�����D��L�<*�Ƚ!��=�3.�d���Yh=��(�	>���Y>���=� f�'�=8�=Q��X�t>��<z.z��hJ�bO��R�35�=iV0>��0>�3=����<�Qͽ\���R��P�M>��s���~�Hq��B�=׌�=]՟<��>�/ =��=�?C<��>��p>�_>��<>�ѽ���=�>6�=j�3�VS��*S�<{5���4Z>j)���7�<F\��������{��<ؘ�==�o��<v=a	k����>�L=M�!�%�2������
D>���=:���w�j��r�w>҅9>7�=��G>����yWg>�+���(�V�<r\]=q`>'~�>� �>R�!��VK=��=>yüTX;��y���^�>.�=��`�^	��]��R��>X�|���>�� ���
��ܩ>4�M���=Qo�	W
=j��<Ҧ�>K��ʟi=���\i�=���=�/���8=�7�R�>�!�=�����+�
�=���=���H�>�Ɵ�&p�>�S>p_l>�R,<��=�O��ّ>����B0�@D��ce��.>>�"��y>�9z�=�y���ֽec�=�v�3h�=���=(�>���e�8>PC�=�hH=�x�=0DH;�+�<�!�=Ǟj<W35>P�N=�9�=.t~>72(>�Se���=���=z*W=EcY�s��=8�=2��Қ3�s�>T�!��;L��@>Y��pϼE_�;��j�'�)=e>u>ۍ>��!���/�;37>�ܽx��?=�>�����˼�yj��^D=rU����=�aݽ��H�a�>�M>_��=MY�=K������Z>"օ�j�ϻ�1�lF�=K�;��޾O������2��=������="ӗ�@��<#JQ=S}�>Z���h�[��i=Xv:��6&=��I=f=<�����2�=�R>�?>�ּ�{U;�SK�U$��Z>���=rqR���=�=\,���a>�d��j=8 ?>C�T=K:���C�>��>�~]>d.꼒E8��s�=�<���hr�]ȡ���Ž���.z=қ�=�f�<��X������b����>��0>D��S߽Y�P�>���=��ؽ0ſ<Bi<,	>$���}�=�|?=��=�`m>��W>�~r<��5��P;=0��=&}���>��nM��9>��T�z@��~==�l�D�X�09�=�����=`ҏ<�/��_��bV=: ��1��<��2>w��>4��>�Jc>~�<ζ�>�%0>��0>� >>_$�NN�<�?=W���3: �����*q��H�>�=��ϼ(Yֽ�뷽�b��5�=��#>��<� ���B�?���Z=_p2>��བྷ��N_^=q�Y�e�>��<��^>?����6)<�wU= ��+m�>�a,>���<\��QÈ;1��=�.�Ҽ�D>�8?��u>z[�=���=5<߽�̻XPT;��:<K���d=���S%>.�=g��>1m�>8a>a� >����`'���=ѫ7��8��V���1����=ԑ���=�_I=���u6����6=���x��:�&���4>?�e=d>9=>t�z�=	�F���=M:>w�9>�$�E��=v8�=b->�Y<^��<͕>��>��K>��(<w=l_>�>�[�� ��oD�Q<�=��>
�=0�p=5C��{$;n�>�E�=�z �՘�=��4>F��=] l>��z>z�t>b"�����<i5��=C6���f=�C��`���ސ<��r>[P>��H�*�/�w�2���4�B�2>��&>���l��ꏽI��6��R��e�U9��D�0<��>>�m��~w컴�=1�`>$Q)�Hpx=���>N`�=�le><���8i�`8߽�O �_��>`��=�I?���w��[ټ�=��@�8���=O�j�m��p�нxl�=W���>�ٽ��<2[�=����	�<I��=@��>�Wl>mN>P7=���=���=#��=��=�>j�b=~L�=��>e��=ܧ=`�*���c����U�Ė�=���=F�=�'�=���^�>K0�I��!��=6���Wm���h=�Z�6��#>�;�T�`��#>w]-=���=�!��e�|=q�u�C��=+�6<%,�����=�r�<����u>oPi>��=+�r>!}�=�D<>��ҼT�>����u���=e��wP=�֡=����,�f=d�B��&f=l��>W�>[�D�[=�=Weջ�>�(���!>=
���<>>,&�=�n�>�'�dOν�[=�M�x�м D�=�T	>�=Z�>�3�=�}�����x���
>VR��Of�wsL��*�31�=cF�=h�k>���|�!=ٜ�=@��=���>C���\>���=y�>
e�>1�	>�)V=��=e�̷G=�KԾR>�Ƚ��X���̽�Q>5F��H�=q��9 m9�?��=�{�=�Zh�B�*>�����]>�-ռ>=X"�(�=QD*=�q,��7�<1y�=��=18�V9�=1`�=��E��M=)̪�!�#���fz��l�<��?>񐟽4�$��/�>���=Ĭ&����:4[>�%k�}.���L�<�=�!½���<�X<=�;�=>��=���=^=:>y�T��=^�:>7zH=������,�����0�=�%G��x׽~���<1;�>�#޾��3�񢋽�罴L=�I�=wd.=���=�q۽��˽\�����>�>��s=HP-��=4>~��>ו
��#>���ƥH<o/%���(��;U���T�*>)w�;|�f��D���l7>��=j<���3�� >��=6c{=P1y={A�r�ܽ�#��?eC;�<�>��=DC>�4*<�&������
>`s
>�b>� ��? =1s�TL �P��=a�O=h+��^�=B���Xz>�l�,=�<E�޽y��<��;�F<߉ ��.0=���=�)>�l$>�)k>jF�f�g=Ɏ��c�>CqY>n/�=O>s{>�=K)�=!�>�H�=Ns:e��ə�=��� S�=��(��,�ʟ��°<�ّ=wz߼;��=�'�=�޽��<���=�;>,n�=u�>�k	���l�K�.>0��>z�i=�>�>�*>�f¼��3=q���L>���=AC�>P>�1���=��>��ܼO)�7r=0���hu<F(�=���;A�ɽj��=^l<��=g.�Y�1�q=�6A�BQ�>��=NA�<����=7hF���żJ�=�1=>��=��$>W��<���;w����k>��>�à���;��=�e���QJ��漊�Ҽ��$�3>�-a>��P=��'q�=-�;��޽��=�Cb��={�`�����7�xR0�� =ǖ1>�i���6���>>�4�==�c>�7����<k>��I�S�7yH��ʋ�w�>�0�d���=Y<��=Õ��zw�;�ߦ=ȑ=eט�W�<�;ƽ�u��m�=��倽���X��2�ľ�!>kt���9�<�wA�I"��߃B<(��>z�2>���=$r�=�iӼ��}����׈齎7�� <�=����Y/>!T�=f����Y�v߿�	 !��)�@��=�-w��b�=���<�����鰾�{b=�/�=�J]=�m;;��=���=e�'����[ >� @>{�B��̌�]��)�N=���<?	�C�E<�:{���=r��K����y�c�J�<,��e�=v��<u~e=	l�=2�<��|���뻱iN>T�ؾ�=�J����=a̗>o)I=��9>�3���潲�>�)�
�>���=�z	�9v	���7=ZK�����=�=役o�y�S>�	�;�5�a{�=�໼E>N����>��w�5C>�y�=�>�3:�b�>��=�;�=<n)��I��Z�<uc��!B=�N�=�/?>��=4������l�@>Gͭ���ҽ��>d�<���=��<>E�߽�V3>62s=�ۀ��j:>�=[#�=I<2`>3�>��>hK*��	>_�>�����t�<� ��k�<n��=q�>Z�������s��1���f�<�=�.�<��-4��lea�b�=�ή�q@P���m<�2>?  >��m>$��T��=i�<ޔ��5�{�:�R>�F�<�Э="�(�\<�J��/�>GX�]�=�]���iV�
��:�g��>D�ڿ:�����,�Y<tp�<��k>=�R�ӽ�\2=kʱ�1;��Z�>(ž��;>_!@�o5e=<q<>5y�=`i���g>R+�>���>f��<2e >% �~=��,>���=M�ս�hb�?$<>W�=�����=|�>�T�>��b�Iy�>d@>�s�=MHܽ3x=꽤Ǽ��o=V�T�jpº�N�<G�>5|�>z$i>V�V>/R�=O���y�o�6Ǎ>Ϡɼ�.7=PH>zy�0��=�$>�����6>zV<�<=t�Z>k"Y=�t><jr��b���U�U��V�p=��
�_G>w� =�;N>p�>W��>�=�=O�>�������?>��g>�r�&�=MH�9 ����t=
<��欽>mb<l�<�wU=����_#>���`�=��<g��=�����<;�:?�y>��<��
>���=m��=��>	�2>h�?��O��=>��>ľ�<|;��GgZ�5,>m�ᛱ�S>G�<�����=x3����7���M=O�a�>Aˎ=N�Խ��@�;c��ُ�=�+�PE>�
C�Z7v����=� ��E�<�.�S���ܽ=��=��>ڰ�>��ҽ�1��:�<����-˼<؎���ཨ����8��lE>��g>1"	>u�������>�g�����>h�>-��<�,�<IS=��9�E�#�G=�� >r�ǽ�0=0
ϻ1���^�=�`L>_7ռsMٻ�K>���U�$��!>�Ȕ�9Ž���9S��_?��->�Lt����R����n=�!>2S7>×/=����r%>�u=n��=�0M�H���>��	>��<>�w���&��#�>o�=�� �弄�g==�=��� Aƻ��J>�����&�-��=��9>�O�����S�:=��2>�0>���=P�=���=���w ]���F��E\=WE[=j]�jF�==�5>"(I��~9>��4�<1�=讇��N=�[�<Ci�=��<���=�L�:��� H�����=4 &���/�-"T>���=>�<�2Z0=pI�W	��0ƨ=�+�=j�>��5�U�+>��>����̼:ˣ�}4G���ѽ=3P<?��33P<0)=I֛=xK4����>�eJ>2nT�?p,>������L>6g�='m���:�=�Ш=�j>�4>��：����ͽ^C2�b�n=�G�G�3>��� m>sƛ<�d�=�.�2r>��׾@x=�43=du����;u8:=ޚ�������=���=���F������=tĄ>��/>��z���1>�[�={��� �1`[�>�q>��۽�;!>l͋>�Rս�֞=�S���>��|��������ɸ= �g>��< 
o>˝��/>�=�kK���>{i>�Ǜ����=V=�O��	�<;���3N��!�=�A���{�=� i��Q���qM>ۉ2��d��"��z�ý{�н6�5B�<���M�K��#6=�x�=L�n>ci�!�/��$/����E=G�(�e�A��qa=�8��v�>��=��	��T/>݌��KD#>�nA>I9U����<�2�=��l=��*���Ѽ�a >��G>pϢ������=f�=s�;���]>*�#>dAY>��C�=3�=A>>3	ػ=��.�J�+=�r彊~�<�W�=�XR>C'�=�`w��2����V� >�U���z=!G�=>���A�=70@�+��=���z����7��1���{>O�6bs>�&�=��f=i� � >�վ'~�)D��S�O@[>6�>	=4��-N'�\�X��=5�;*ʽ�u>!!6> ���A"=!�>�m�NsM>l5���bt=�k>�o�;���=Gȳ�_�>�u><�E�<P�`�w B�U�>!MZ���=O����G>���2ǼO�D>�ne<��ؼ�<0v�=�mF�q=����E>�8?���.���X�>h@��M>��]�����c�< @>ʸ�=��]>�e���C�;�2�<H�<F�>��c����!���©=�O����=I}>T�7����shQ>ї���=��A����=6�����=���=S��>��>��>�9>A�=4�>�>�0�<<&>,��=�P3�M���>�ွ$7>r���������O;"��eV�����=�C�=�Z>4��>�O��)��>+ኾU�¼V�H>�Pl>'���=_��w7>�i�<�s�=�]>����7k>J�½�`�n�,>/��=��=6 �=)�N�"��=�8ɼ�$+=+<B>���P 2>�w�l��=��=��i=���DGT�_D�;ME=��E>�g>'>phf=KE�����:Yǂ>�
��\��=$�Ľ���<-�j�o��=z�����y�~�>F��U��'��=�[r��(8>�yɾ%=N׌����=>��=z�B��f�<��!<�UF���k>�>�ê=�%�=�R����/<R�=[�=������{��>�s�=��#=F��~@>e �>�>���<���ޜ<�X��b�=N�����=�K>�����s=.\j��M>�]b=ݔ�>�B$>o�>��4�J����\S>̡㽉�ٽݠ��h��=k���T��p�v=��S��Nu=�
�=�>J�ս�B���!T>d�����C=��=���=(�=�>>m	��g��)�<��>".>�m��t�'>�>?��[��=ZY>� ���]��Ax>|��=$Hq�v��=z�|=so[>H(>N�,=����j>>�5�l?���B=	��=5��=�=�=¶'=���=e�B=I%6>�uP>��Q�4�n>������<�;'>w>���Dv���<> �>p�=NWz=��P�.*���T>�[�=8/�<Z�����=��m=F�e��,==cp`=��Z>�ޒ�
v�=OnŽ3'���Or����>�V�=)�޽P��_�;���W>=h�<no�=�C>O�n>G5�>;!�=�`ϻ%�
�_K���?�D�ӽ �<2�ͱ׼E�z>���E��;M�8>�e�>P�)��k=��D=8�b�n�>�D>\<>$�k>Ɩƽ��>��~������X�<��j=v�{�m�=��L��#�=h��8]��t�׼&����i���;�>�Z	��ߔ<89�;��[�����0�)>T�&>z��;������/>j��>rY��
%��">@��f�=�Z=;��
�=^y*>X�.=�J/>�<��Y�/��� >��=L����V��)p:=�d�<�=�=�O��{��=���<Sx>8�ۼ��������],�3�v>��U�ަ)>1B��v�S>u.��r�!�_�^�jY=���ڶ�=���>����K��<��X������>)E8=^gݽ���>oE�� �����O��9��W��P�_��X�����@9������>1>/|�=�*<�&,>0�<�1[>9?������D<c�:>�[�`X<U=��=�'=L_>}c��=�]?H>�4R�;(m���=�(�=�����)��ϑ= ��=���>�}=��=!1��Z�����J�=��<�]��Ϙ�,CD>�T->Zx=�V�=�^p�<�`$���9��
>�ڸ��̹<U!x>�٘=��p��:n��@��qU>z��=�_��[��dg>����#�=�/�=C�D�ս���=�M> ��H�=?5*=!7;���=��~=�Խ���/�=��i=�ͽ��j��� ��L�������ݻ~�
=У���1|>��d>v�"���>�(����>vH�=�*>e�\>=�=���=��>_�F�J	W��U�d=�V`> ^:�kId��*>N,��Ɂ�u��(�t���=� >%����ϾCmt�t@=�,�D'�=߿���6>�[���=�U�>0Y>�������>(P����0>PO�=W�G�����q�$�?�CM�tV��j�=�GT�ؽF���>��C>=zj�������8���D����=�����޽����{��>J'��薇>�^_>��P>��@�@�{�>3�n>V��>B�=f4c<��O>G� >Z��=V5j=᷄=5����U�=����{j<��.=�Z��=,>�x/>	��={I> {��
(>A>-=��=��=0o>1�>D0>qܽ�:>��>i�!��S������Fj>��=�{K=}��=?FD>%�����>@;�:"/=�+��+(n�| �=Ř%�����UD��=��=X]g=��m>wXR>��P��ĺ> �=~��>ER>Q"z>�
{=��ս�l>�)d��`>m�Q�Q4E����<��>�n�=Ħ��̊ >3P���Zн�D�<Ll�4�:=��>dX=�����'2�:̾�,���Yc=��F��j">zmн�x=��>�]�<�R�ϩ�>���=��>��=�G)=V�>7��s�>�a�0q���E�h�=B��7-l=3 �>
�=[=q�y<UMt��b�<�y >�Z���׽T#?e�0��VԻo�������A����2D��H�>�g>q��>~ͫ�z*w� �\=Hl��K>!�3�@��K�>����r���o�����*���0=nY5�O=ἲH���&P��ϐ�E�\�4?߈��l>l��D�;~5>�_=���=���k��=l�|k����O>�xX���ՙ,>�a#>e>�㫽����v�Y���( >ܖ�<L�(��p�=���9řq�	YM�ϐ.����=d&�=��W>�j��z��BM>���=(:?�yO>aj�=�T+��%��b� �J�4��t�>�=W�!�Hu�=�м�+�3��=;�4Q���Z�=pP�=�<��?�>C�8�%Bh����& <��R��v(>�V�>�P1�F�h=�ݽ:[>�-3�T��=`ߵ>�� �<w���|H�i��;s��>�.�n��=��=2;`�nj2<�V> �=��=��]��қ2>��C=*z���0��~L>�q�>��νq�u>��n=�Ol>�>� ���P�Pp�=�b�=;o�=H�=ߎ��� >u��=�Q=�/>�į��<>q9>d�*�N>.�}=K	�}|��a�=l >Z�;	uQ>9\.>]E0=t\�����=٢��n�>E��=05=|�������CQo=նq=�=\	��O>o���&ik>I>�7i=���C��=��n���,�=g����8�;��{C��>�B>�e�>n�:=5�"<S��>��.��;��%>�~#�v�����>k3P����=�Ŏ�>r>�9�=cH�=t���6�����Žo1�>�Ѥ�>C��{u��h�<�;���B<�=>dr��wo=1�=���=��=��<V�(>�l���P��=-�>X�>��V�:E>*���p,��H=4�!>rSN�^�l=0���=�=�	]=����L��=3�G���6��G>����\ 6�@B!>��L>u��=�G�c+>����D>m���>���V��`�Ee=DJ�\����)�
x�=��4�R�W=���;�.>-8�;R�����	>i�r��
6��i<�/�<�/�=�ꬽ�ݓ�%�b>��=/�[��g���+>���=􆎾��(;�ӄ�K��>�K�=/��;��"���׽G���e>����E��֠ڽ��E>c�>A�Q�HV�9I����=���<OΖ=�>$>��<Hf>(�=��c=)�ž}Z����=~@�bǼ�֨��KH>Xl]>��>c��=�E=��+>�6ʼ�h
=4숼��@>ja�=x�$=��=�����*��n�.�Ezw<��)���#�f*������د=XS:>�`���ľ����(�>M��U>��k� >Xf��>���>?�=��L�fp&������`�=f�<��
=��=]v�UՒ>w���ܣ2>oO2�;�
�s���{�[+@�6UG>!ڽ�/0= �N��-	�}��;�.�>�H�+l=mİ=�tŽ�6x>��2>p	>5W�p�=>$���Ql>���B��=�;">xmP��5~�E[$���8>����2��,0>Y��(>�ȹ���\��;ýu3K���>�_�������>�:>ؚ;�x��,�=�tA�fԡ���&>��&>ܓ��C���%�'��;��&>73\>���=ֺ>�lp���=ͥP>������Z'>d*B��D�)te>-�;=*]�=�>`>1���=��p��H��_�>�O>�4���I�;,�==�}�+-ؾw`K>.cd�S��OT�_|�<R��>6f�W^Z>s�=H'�<)��
e�:���u&������h������LB=�}[>�����:�v���>3Z�� ��'�>��?�pnϽ0��==�r=�>��=��c>��9����񄻽@�"=�msy=�>X6�=����m��'�+>ȇ�W�!=+C0=��5=� e=�0�>+�>q>b��=�ւ�֭�=��= Y>���L���?�]{��Ч>����<>���=�;�e��x�S=�_{�2�*>�kb��#C<)��ӓ>���=�Oa�����.>SE�=�qo>��k=׶S���ѽS����--�8�r�ѕ���˼t�D=�'Y�� ����=6^�=|�>�r>�S�ѫ��Tѽ������=��ҽ���'��Z��oﻑ�½�;I>��(�㼐>�ϐ�͂Q>�f���E=����;������K��~P=�������1>+o*�ɳ�����9b�=T[�=��!��L���F��|D�=B�>�*��mu�!(����=��?= 9<�F =�o�>�ؿ���<�u=;׭���>�_7��">��&>^�
>���;+.�>��ֽ���=K��=�S<%��>�ƛ�vO@>�0(>��>�B�=3��=4�ӼsK�=&J�<JB><�>w`N�(�>�a�>j���}4>�}��p8�=��_:�ޑ>('=/�@�9=�=��
�?W�����%��{g>I9>w4>�ٽ�u|<��1>�>�=��>�n>_�#>�-#�qe�7/�.���k��=�Y����=)7>�~>��E=,$���p�>叼g���5R>���$=:�'=@�����d>�����V?=:Μ�\�J�?�ĺel��==E��=ьs�%���?�M>s]�>- =��q>��T��L >S{7=�(r=<.>��>� ��%�>�>Ĝ��D�>>RU>X��=�77�r�=!X=��(��nS=�Aѽ�@`=Tʙ>3t�<���r>�*1�$�����0<���:>���=��>B�>�F���T�P	>u2C>6�>�V >9��De���=ɐO�9�m�솪<���^��=k;�=X�=�K�}ս��f=�$=Ԕ>;�=��=�-N>��e��,>�_�
½�}�>��Q<��=��=/�<����é���ýh����
���
��6�
��}����#�=w.m=a�>����nO����<�$�=\i4>��>�S$>̟�=����D> w���;�����K�A�>w�_=Z=��>'�0��D�?�=K�/>藶=c">^z7��Q�=��=���=,�=1閽ul%>��c�^���UC:=����竽}�ؽ� �X�=��H>�R���^�-��4�N�D��h&>F>��P8>���<��X��#/>!&E>�,7�jHh>tl�=>��<�>�`�=1�*>��Z�ab!>��b���ý���4m����ѕ=�&*��3>9A">�)Y=C�<��M=4�k;k�Z>r����g=6D�[��#ýC��=|E�X?:�랽M55=��V>/Gv���_�-�ؼL�+��O��ף��/ҽrC�=ڳQ�p>)	���4>
 �<�ڥ=�K>R+�N�=�Ͻ�ո<L9���j�Å�=�ٙ=~w>�s>T>�@*=*�E=�ZF�
�_=�'���G>�3�>\5�m��<�%����~�A,J=yA�M����BټJF!>w�c���M��f��=<�z>�����=�=�%��;�� �>�=f��8��>�\�=oy�;�~㽊�/�]����ԽS��A9�x�_=l��=X�=���/V�>�潧�A��!B�E*�=f�S>���=A{>jK��t
>�^=<�T>�|>����_�</!��Z
�;�)�> %>�0%>?Xz>f����%�<$}�=��,��`b>�����b��h�>�Sv�Ǆ)�[��t�m�ƾP;��|a=�Ꞽ�=T,�=o9��s?�~�>�;�<�9��C8�C&W>�g��+8z>�1�=<��=�W�(��\M*>�7>��Ё޽�����ǼI����M>+j�=�>��}����Y�v���>9Б����	*M>�?>"	8>�j׽��<�|Q>P��=K����I>�	��~����#��
y>jD[���<���=8~h��޼�a���U>���=h��iZ�1�3�4a�=ó�=��=rL��O��<|��=�67>'y��{�l�\=�E	>sU��	_�>z^�=��=�MU�ӹ�=��=�HpS>�1>�\�\s��4��=E�9>.Va>��>��=:Ŭ;XX>:k�=b'=���=I�ٽ9VȽ�/>3�>�.��3ű</�>U2>��B���m>��=d=�=�=��>�f>�O>Y�Ͻ�=,���?<�ܹ������&K>7�>_��:q����*�=a�J>8����<��<�����j�8�̼פ]>��!���o=_�1>˹t�1=��+��>�H%����=���=����HvV>�*i<�欽�	̽�U�+J3=�)=�����<�UW�=� g<�,�K�j�N�;O
�<�}<<Ⲽ�{>�d>jH�>>i=2��8�4��;= ���=<i_����=�3��J�`]�)c->����,��=W�n�8���zY>�Y����<�K	��z(�)����F��Z==3�о{g�>oF���8�=qX(�`����z���>���J�=3�a=�-�=������=�<i��=~н$�L��G��.\�KS��럹=t��<|ʃ=�s/>)��&���p������)ݽ�`������kO�RwB>�­�z�/>��@�2㨽�(6��Ae�2��<6��Q�G��I=�z�M6'�ܣ���đ�kci=�14�V���N��>�ǽ�q5�ͫF=ZR�=ױT��������S�G=�=GW{�Ͽ�<�{p�V��=���>��N>�Ir�c�˼`����>ʹu=Ā�|��jX>�B���R>���<����*�En�=�Ĥ� `½��q=iK'��;ٽ�T�=[�=�Y+>(�O>�i4>Z墳6x�>�꘼m�><c�M�=M�J>5P���k��8�W�����=h���t�����^�����DL>��۽�H�=i.��>�N���Q^=w1>нU>��I�=.��=� ��)>5ظ�QL�=��_����Lk<>�i5�D�<z��O>5b&>�o
>q`����=�D�@�������=�I;�U�D%>*Ƽ3�Խ�;���K>��=���=@�>�N>'Sa>BԽE�=���iI>M ��E�\�������ݽ�9���X>+�-=O+��P�=�C��XK����=&�?�/I�=�w~�'r)�%g��Q�1>�m�=\]��=��=-��=K�=@�!� 9Y>N�J:'�]�z���=��>q��37���,>����4�ӽ/�%��t>كC�����G͞>�C>�C��+�����=�뽘FJ>��0>\���(8���Ľ��^>��F���\`���#�=�鶽�m��d�ܽ20V>��=���>��1>�ˀ=&���,z+��9��n/="�2��/����'��ؙ���
>�V�='�ά�=�'��1>.~�=��	�}[������߂=��>�>�==A���B�^r�����#\@�TI)>ZZr�s�=������7�'�W�{����U>D����M<�Cͽ�Jo�յA���#��"�=t7���m�u佽N�=�>��׽�+ >oô��Y����1=�-���9>�T>
U>I{ý�؁���@=�b�=��-��b�*��=����9�=b%�=Ǥ/>=}R=O�7��#������G�=�8������ G>e>�)����Z='��=]I?=��W������3�<>���<9�>�N�=y`ý����>�>(�>\�>:Fӹ!���"X>-�=>Cx���dU>��M>�z����=>ߝ=Yl��ŉn<�"d>,[��a*��߳�"�P>�m ��3�����=g �=��=�Ƅ< ����d�>Da���+����=$P>h��<� ��ͬC��dw=Ux�;�)>H��=@G�>tr��G��A�=O">�~Ƚ���=�:1�ڟ<�&����h=�>��m���>��l<�&����Z=��!�i�>E~d��I��R~> ��=�����>iwO=:Q׻s�>/��<� k��hE>��0>�Y�̸���,>��K>��<���=�C�=Ou�=Ɔ�>�7�=��ľ�lV>�h#>��=�hع��1>r�>j8��kO��`�=%��<�N黜�>���<֙�=�$��Լ=Wt#����=��$>p�(>��>Me�<v>5 \>4Pۻ��A>�>�����G"<PrM�+��;;RƼ�[��Ϥ��L�C=� j�C�>]���P��<��N�_]�??���~>�>�0 >���=�F�>UY�=�u�<#���|>R����H�_� <����[��s��8NS<��½al>�b�>����o�=~>{Ix=�W�=[Q�+g�=�F�=~d�=kْ��&b>S#>tKX;E��Ф�Z`{�_��<�<q=��0>F	>�@���˼��;Tl�<v|�=*�)=$΃�+�D��p���>��1�*�LJ��_'=�"W=X8ϽG����><��>�K���l�XJ��貢=X�����=��	>��>{+m=³,>;�>�#A�q�<<)T>�M�=�H��>���;�>��=�O�=�Q�>�׼�|R=�'�iz�>ľ��9>���1�R���ܑ=��\>��w*!�>/=���>%>6i�*@�c������)�=�����ʽ�g/�2n�����a��='�#=��>)�����_=�iD>"W��~�S�u���>��(��ku�~���$�����>Ԕ��I�4���y��mQ�z���&]=�2<dο�@P6>����$>���=�+�L��=9��=0>�ƻ���:>qQ>���>�&��F��*���B>����9�|�ı��
;����Kf>���=�ݬ�]Sb>�xV>�	<=P�$>g�e>j�ͽ��V=�WR�H>=<j>{��GJ>�R_>���<b�S ������bJ�=J�4��u�N�j��>��������<�nTC��	�<G�H=�H�짡�`?>9����l�A�Eɘ>+]ھ�x>&����n>�=d>�Fr����=R,�LC��R��=�qc=�n��;�>���=��N����{�>�O<FBy��yE����!>�)�'�X��Y�=y?f� �M�޽	/F=#�B�c��>�����6�q`��2�<d����<����q�����g��=�d=xs�=�ٙ<�w=>EB�=��2��<��o��;��I�l�3>�>�<�=�_]>�&�
�C>��'�ιJ<(3��B>NS����R���=���= ?�=��ӽ��z>�>#q+>�ji>�>[5�;T W�o��l}�<�A#��S>�s>�
>eʽE>`}>�~,>w/j>�}#>���伞�I�k��=��;.���f�<��(]Q<�|�=���=���۹��M�!=Ś��w	�],+�.�L=?e�=F�=ho���J=����=GV�=sE���m>�-<��=���=�h�M����`����=�6���z�<�����B��H�+��<E5>xO�=	�=>ao7>��N>�X�>��<{�=g|h>��5>Yx=ʼ
>�M��:�=�� =F�M���>?�0��@<�JE���@-l�
A�;�Y��D<7�ν�k�=OT��\y�����=|��>0��=��>��>Y��>�DI>|��Pt��%qC��\>�Ca>���mBC������G<���=f���aD�<�z0�QZ)>ul:��l�<Xn`<S�>�`%>��=z��=�fe<�e��*�>>�P����z>.�=U�>��G�� >>Nm8>�<��l�a�����d�0�>B/�WbB����H�Z�=����L�T>�U<Թ(��ϻ�˲B�X��=ZJ4<f���"!����<D�>@j�=٭>��=���h��i�==����qL=�	#�}��֔>��<��k���J<���=~��=�:��&�>Ϧ>��(����`�W=!�>C�B;%����>f��=d8��_ձ=�2��V�>?�=�;=���=��w>`�{>�4U�c��=x�4��?ҽ��:=���=Z�>;� ��O\>N�=	��<��<���>���=�_�=M}潕
;���=^����1&>.�6���=�F��ftw�z?+�d�>����ޝ=����P�޽�>Ĥ������4��9�ܽ�B���J]=F'>�ּ:�=[��=�<�=Z�	��Cy���7>��E�̬��>e�߽l����g�*�0��x�=�F���0}�b�D��	��=R�=�g�=�KJ��̛�:�����=�U���K>��>�Ǽ^i�@����Z򽇕$>0���rB>�]��묁�"�Y>J2�=��>>�;>KO��t�6�zڻ�~V���=\���[ >�9=�`�=	=��=���;�����<N?���/>��K=���=���l�.�uΦ��7>���=��\=P�=�M�="f=�|v=~�|>�Q>�h����/>]c �T̲���I����;T?��K�=}Fս]7:Q1��9�d�"�5>�O򼛄8>�k�>"��=�<6�
uJ>y�=N�=�ـ����=�����Gq���=��(>N�l>����]|֧=W���f��e��8���{�=�*>�!>���<8 y�y�4>샙>W-�=��=T4���)��}�=���VX$>��=���\��=d>=��=�\�=E�=�o���L��?X�=�����-���,>܍�=�r">����J�n�>��/>$|Ѽ��ɽ���5�O=��A<!Q
>4���_=�{?>(ǟ=!�������/ZP�\�����M5>��:�J�0>�t�<�����d��=Tq1��&�w�>aK=1�d������D>�*
��$���É���<`!�=�&i��e�=�#>j� ��Qy���">l�>Vͨ=�=�!��u���=}:�=��">{@�HO�=�گ<(�н�>�	>�%>��>�����+޼�>К >�P���p�>�ݒ�=0X=@��=!�=Y1��I&>�=��>�J(��֌=�� ��M<	��=��R|�=X��<�Dv=�w)���=�	ܼ��)�[�=���<���<d�V="�:���}��=��e���낉<�sX>��!�H�#= zE�T�G>��>@e�����JF#�]��=�v�����t�M>�H���A=��h��K1���������>>�W�������,>��D�Z!(>q|2>���='��=����2>=��=T�\>j����j$=���<x��1��=��$=2��=�	V<|�\�zr��ڊl=$><nG}=U��v�R�fߠ�����U�=k�����ʽh��������%>.��Ջ!����;p=�����>�5A�$�:>J����]�=Bt��x=��v�;�E=�J�������ĵ�z��=MK&��S@�Y/�ֈ=1=e#B>�]?>�3=&Y{>f�=������FO�;b�n>��!�5V>����_~=�;�,�=��/��$�m�>�L��L��|��s�����=�.<k8ʽ��>*�!��?W�Yka����=�>f%.��OS���5�T�ٻ���<�����X�>zJ=��彭>��w>lTf>S2�=����i>�)�=�	�>��)=�jƼA�U=fK�����`L�=I���G�̽|��3:P<�&>o\�=^�<�ƽf��h_�>��=��>�Ľ����C>�{=ߕ���ּa	�=�oB>H��<�?����>$,�=��=��=UtC�lR�����4>:��<����vf>V-�<YG[<��=F3>s�^>ԧN>BE<�3">MP&��H��>(7���0>|DL>�>A,>_㢽r�=0��<�2�=�p>r���Y��)��fڻ�w=�O�#�7�Oi�=���=���-�>�2��ш��KǽdFA>}7ǽ���>\}�=��<���>0�H��$N=I��=�̡=NM>�N/�y�ӽᯖ=u ���)s>6[$�x�9���̽�֌������t�=�C⻪#'��@��`k�����(\���=�½0q=�d)=�M�=1sE����<OIX>�D��E
>��>M���Yå;���<o�S=:4�>��p>�A:>���~<=��%���>�P�>�t.=)�4�����[�=ت�=�
�<~@>Y�:�s	>�g=�m��G9={�[>���:;A>΁v�G�<ۑ8�����7���3�lV����<�w��qg���������O>x[F>G�m<f�=��>q�P���=e>UC<Z�x��>��p>�k=>e�?����=���<��$���=��V���m���=x�>wk���E��!>��g=��s�)�2>�h">��,��Z6���׽�_����>���#���;�n<T�>��=EgZ�E��m��~f����� -��>oY=N��<��E��=B@>E��xݬ>9�I<��~=�X>��'>�>�&��I�o��<P���(��`�ʻ
=Wb�������2>u*^��x�<.O㼖4>���=��'n�=��=��=>�"�6��g���r�a��=��>��,�O�0]=�¬��7>A�9��h�=�9>�♽��=&�ֽ̎=���=[��<��D>f���{�>�䐼,�9>�'����=d"���oA>p_8=-h��h�W�|�=���=_|�֚��2-=���=�y�R�5��Y���+>st�=~��{.U���>둫=��=Ǝ=Rx.��m�V�<h������9(.=h��m�CK7>�[ ����=e"=�W�������=�b���Kμ�g�u�Y>�	y��=%�8�E�Z>>�=�+�}f�
/�<���<�w3��R>X��=l��=��h���żA�;>��>��X=v�Y������>T*�=râ��>ߪc>b[ǽ+>�=j7�y�9��܍<����3ݜ=�T�=p=�3>L�d=�b>`J�(ȸ��|����=gX	=��ƽ��3��9=#IA�q�A��ɻZfS��;>�L <6�ȼ
�=���=v.>��<> �>V���.� �>�#>+��=2�<���=�V�=��>�a;�>��W7���">�;o=mF�;�L\>��7�>E� >s�'>�.�>��y=�'3=E@��/>}ƥ�+:��϶�=W��=���=���F'j�N?缽g5�n�u����=?'=���;�>����+�$>j>�~׽���H>�n����=��*>}X�=0�5<8CO>��`=e<�=4��p��=հ
;m�W;�MM�Ρ`��f�=N�=�>�c	=��(>��)>��Q>���<8����L��#�� %=g�ܼh=�ק�㽼s�<B�`<��>���=e">S��=�ջ�>�͏=��9=c���0�>g7e���K>���3�V���t>��0=g(�=�3������<u�=��=� (�R#>�Ե���(�l�Ӽ\��S��v�e�ŉ>�i�=��ܽ�3�=6�3�=���=S�h>����c�;{�!>fsq<���=�v=��i�kKf<�>���=F���ü�ǣ=��<o�=�˚=y��=�i6��)��/�=ު��NR=�����=v�	�H�G>&|=���>ޛ@=�Wf>!|c>�~D���>�d��2�=��.>�6X=^�]>��>Ѻ(=�=��������`yB>R⽷��H<����ZB�A�K����=�iD>�>< >�����Is��G!���>-s=��sYO�/C,��ٺ��d9=�R~>%�;��s���9>R��	�>��=�O�=1�>^$*>ē�<�x
�}1>��=W�x��s�jhO>U�=������>�o><���
���!q=�2�=��=ߠ�>Є�=ɬ>-�3>x�>ӷs>�6W��Z>��T=��>]��9������>�^�:ۗ��,�=7{������=2L�=�1�<
?=�!?�A��=|2����E>�=��|��G����==�l=���=PB�=�<�=�61�c*�=�����=�	<Y�V��P�=Q��=�K�=���U����ؽ�N:=���?���L�7>�U3�tJ(=;}T>�=<�9�>���=a��=�'�>�9>%>:�K=M ��	�ʽD,>w��<�_!�#���d!�Ol��6Qs�.A7�j8�=L���ƽ�L	>�
��o���=��	>슓>�º'n�<$X=&��=�y>3Sֽ91���\1���=(	S=w	�5���� �7r�O�1>Tt>�ٽ"<nE�=�=�^l==�˽�	���w�<��<�=n'�Ͻ�*=�(�==1�=Z�>>bq��2�=օ>��S=��=Q�?h�ڽ{���(��B�=�je<a�>�D�=�|�=������<6�V>�AS=���;iL>���`����q>�����=YA�6�>v�����=�����o<-׽��4?����>3�=,q��bD�;�Ŏ�,W>w�>ռ=`��=>��V�>�R�Mg�)o">����
�<�ۼ5�>�=��=Y=>��7�%t/>;�8>�-=Pص�Z�?�Gx��>�mF��!>���>�8r=�轓�%=S���oW>���=2�彎��v��=p�y�'%�=�71=�����1��;=>x;ѽJ����Γ����.>����Ў���==R��=�����f����<H�e�Ş��O�=�2>[܋=�`�=��>�IK����<Z�<=��<Su�=�<H�D�=�.�\��=�K3=W;	�3���#��p�F֮�JP�ɂH=�s��HE>�_P>=�>��2>jX�<s�=�C�=Y'i>2�-<R#�>0S�=~�ŽP@3��n����=�==5�;�'>A�(>ֽڲ(�̮=����,�>Un��x����>�(���q�����A�����=��N>�$D>:����Y<N�,���L=#p�=�N��%�@���w�a"�����<2=���E>_�0�l%��1>��=��=Iݕ=�������=^a<@"���8�����M<��8�
�=���>�}*=���/�k=�P8���޽��;����ټGp��?��	j�<�vP���=Q��<�{J��q>`�6��Wܽ[��v㽈c��Z�=B~�=�b�=)�=I��=��ؽp��Ŕk<��=�S>��><s�.>�v->�>��*����7�|��<�3�&C�<pKM>ü5>��Ѽ5�ӻ��������r�>����>W�F�����L����=�+F>��
<�p��$���m���k>K��>F�;ѕ��5�d>�.׽��v\E>"�5�S@w=�}>N�.25>����-�ry��m]�=�e<�gF>�ʇ<;��=̄�L�=�q�!2��TѽxRs<��B���%=�Y��3d>`����e�=�� >X�=�M��=�ࡾ~X=�����>��Q��:X>�j�>��D>	�n���=�_ >�>>��h�M6>@�=q$+���۽��1<}~�����'>J��==6�>Mq=.��=M�>�8�=����d �=@5R>��ɽɋ����*���$�����>k�=J�༟^7�T�&=DV��O�N���[���>�V�=�gǽ;[9>�oS��C>N��=]Q/��.��ǽl�Ƚ�L�= �z���m<�%��E�<>�cr��nb>֠>��d>
���� �� >E��=aӽ�o1��̽��
�Py��R>��=�h��Ǽ齊|�=
�ڽ�,=��;�f=XS�t�"=�*˽�'�>�^Ϻ�h;i/>�MU>�����a�>|��T���*=�ff=�R�=�=	��<T�=�ѽ�->����r&��a��.�)1>�m~�
�z�t`���& >�b��dd=⵷���:>�9M>ò&��x��|�1�q�>4\>�D>_g>�@���ye>G��=�W�=rS>#�>s��=���jMr>(:>D5 ���<�ս�}S=3*��ԝ<�bw�H�����<~�+>�::�/q>��=?HB>H��y�=P��l�;����XKX=ypT<%?n�rԶ<G�޽��!>��=>�ӽE�_�I�<> @���3i>|��<Wa�=�;��7;>X�<�g=��B=,��=9�=��O>�7>�����J=J��Ńj���-�+i>38C>~��`D>�,�ް=�@>��=�I>>�>�54��!>�op���<>ج4>��E=�g=�-=B�ֽ�Xؽ2��<(<��s�=��P���!>��=�&d�G�G����Or�=���:�&�>��/>jz�U=3m����<�vD=��_� �=W8����<&W�<<6��W��,�<Y��=�@5��&>T������N���U<!ʢ�l�	=f}z>�'�=X��=���>�T�=���j��=�n����<}��=����ʽ�=�B>�D$�ѝ���\=4��-�:��� >�br>x��=�6�<�
����{�:E��<�
c=8,�����>~��>PC>��<d�>���v�=���>R����U=��Q=s�M=�ʽ��=>�ƃ��>�=F]ܻ��=�������=i�ƽK>I^���5�Cw<>3D��A�M=d�k����gd>=��e>��=��>�>�>��S���>�>.��;Y#��K�<��6�;x ��Ui>Q�=�똾���=�
>o*�=+���e�=�+�=W��=kU\�y�!�[�=�+=A�=�&%>`�$;:q���>��ż�	��z�>
�о4h콦���6��0"�Z <` ��2�>�?�</��e�R��8j=���>H�����=�s?�>Hֽ_)G�3\c��t彴(.>��=<?�L<�F�=����=�k>թ�>(��=�*>��>��+�%�}=5ߔ�½k.>[���,%"�k-&�d&'��5E>�SN�f���	> b�=E��=}3�*=�כ=q��=�w<j->��;���T� >�3�=\�7��f�:��<�x�ͧx��w/=�!�+r0>��A>���=�]ý�W:=��=Y�⽼��V�=�H����>+�=�Q>�.>�*��>>�a>R>�]�#=�=�`=>N�ν����N7���/��ϖ=�_h���Y�6��;�`>��">�����D>��=���P�ѽa>|�<t�+�����GQ��uX=E?1>t�E>a�ؼR�X�߽�
½�n/>.!��ې���p:>~�=OJ����=E>Um�<�]<>ǭ6��;½��Q=%�)>eZ�1f~=/D#���ܞp��2�;�۽�4+=p5Y���=��=�D>=r\=ĭ&��>MR�=G���ض�=��=,>��A>7�ҽN�T��S����/>�e�~�=(@ ;x׽�;�����=��`>1H��Iv�y���1P�=�Me�ԩ=�O�>r(=OU���>Y�w��]D���>���>�A.�Y��>����*>?d|�q���	�	>ioG�u� P����=j�5��ɥ���>�'>�B=��$�n�D�M/>%LԼ)�>�o>䌽��ǽU�Z<��=��P=�>��p>7��=i;��XNA��58�V������>V?|>)`=�ֽ�P�='t0���~�I �F�=����G(/���P�oY�+l!�'�_�9*>D̤>+ >��_��?�!��=�E߻���<1�w>�����G��P�C�c�ɽ1%�>"JU�W����>A�>G�=�f��>��m�#� :��޽�&>�B>Q$�,�f�G�½ A>���=&�ǽ0�>�JH= I�BPV>|���Kɫ��o��iuk>c�P���.�AP6� ��=��>֟=�ݭ�#�?����<;]���q�=+���B���J>�Pl�?ཆjd��G��V4��Xw=���R�F>���=ޖʾ���=m��L�,<=�{N<��>&�ҽ��¾b��zӋ>(�?=4�ݾ���=�U�;ϻ����"�����<+Y�;s ��]=��,���`>3~�=��">��&=򡹾�C5<jq�,*�=iZ~��Y>�nG�,�潴21=���=��;B��|D>uZ��Xʮ��_�����=��}=����3�u�C:Y���:>�;0��%ۻ`�<?��Ν�=��ؽ�"]�d=qCM��u��:��>�I��m�= �=/����ý�@�E���g(<�����q>r>��gT�>X�ҽ�]��H��=�E�!H��'�>�7���=����5����ٽ��)�C7P��8;��K��\�B>)��8@�[#c�X�+���ݾ�8t=�2=�m>9�;z�=1x�w��=�Β>{&>V���>�i�ϻ��߽{�>n}��s!���&��܊�=�M=r�ѽ������ƞ>���k^3�|�=?�
� =5����<wo�<�A�=�:7>��o>>$>@8�>)3=
HĽ���>$�K���L=����#��=f��"��.۽��>��>*���Ni�<p�Q� ���b�;Мƽk=>I >�e����>(����XU=�h\>:�w�a>�=AU<��n>���=����L>��Q=��=�"�9�?��>�^<<ބ�}|">�>���Oi����+��=C�޽(O3�N8�=W4!=JO��I�<�ڝ����=�����>p�>@D�>1��<X�^��e ?�W>���>�2>̓=��5����>0s�<_���v=��'>��>����� ѽ��'=[�t>Wk�>�ma�����㓽(�<G�¼���0㷼�KR�G�q=�W/��>�f�=��O����=�*�=�yH>�(�=����} ��M�>�A>VF�<5�<)w>X�#>%�g>d�&>J\ �l_~�X�2�,�$�=c�=:菽�B>�c��彚U+�OpP>��;tV��>�(|>;"�>��=̓�=�� ��
��)�a=�B>	�->t�<t��<�i�=��i=B�/>�C��Δ�=%�߽$����=h{="�=&H�=za<>8j��2��=Gcp����}>��=:�v>^)�=�ׅ=HJ
�w >=��=�sd<c櫽�L�=�$>>F����b�<_P��DY>��q=�Xǽ�	��]>��a�a}��e���T��o�1�@n���~�$�p���ԽV���V=>�">�6�<3+�>\;<�1>�	\<R=}=�5T�vT�>��ݼE����M���(=N~>��9����=�ڔ=2=��>��=��Ͻ~����ؽ��%>�j���P����H=��н~�%��(J>]b�<ҵ=F7�>�t>B��=
p
/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/readIdentity*rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
T0
�
(rnn/multi_rnn_cell/cell_0/lstm_cell/biasConst*
dtype0*�
value�B�x"�10�<��=>��`=��,>��<1=�p�=X��=L9�=�+�:�;�<˱�=��=@?T=�=4=�X�<����%<E�=��=|1=�)r=A�=m5�<J29>��=Q�Q>���=Re�=W��=8o�<�cl=�Pr<�Bu�3	,<Ȁ=���=P)u�����d�Q������(=�;����-�;Y�;�R���ۍ���m=&�)=a =�5�]�R=�])�K=�1�<$�<7���a~���E�?��<�M�<Sm}=�-���.=u
>i�^=j��(�u�=�z=�)>=�V�[H=�)�=_L&<�z:D/�<l��5b=5_=n��:v�=�Ky=��=��}=��	=��^>CV�<Yv�<㵄=�yP>9t=�&>�X�<���<]�=G��<!N">�~�<<���U�=I���q#����B=����}��<j�H�W"�<DJ=#�D<�U�<?�\;�-�;8�<��=���=}>DF�<�a�=
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
value�8B�8<"�8�m5�(ռ��>R��^HI�O8b�F�o>?t)>����K�P=W�����ż)�f>è�=� ��~��=���2^�E��R��=��r�h>?�="�>L�L>G>9̽���<϶s>��v�8-.���H>C�>P̕� R>�@ܽ޿�=#d�>��>�%\>�'�H��p��=H���׾�#">���M�T<�q�/A�=J}��!�>��>6'O<�"ھk�w0�����O���A@�=,>^G��Ɯ=��d�❈=��k>�ی���ʽm��=�`�>�?>�"/>���]�L��Z��Á>�� {׼B�߼#V����9�&>�ߊ>ޭ	>M�!�xe�=�%���#s������>���۾�4ݾ��ܾ��<J��=UY�'Bv<Ӊ�=D��>a�n��Z�>xǽ�d�<������=���X;�>�W(�ms�[O�=�M>����	�)��>!8�=���=6B�fAƼ�!>45�=5�"�9n��XV7>t�=<p�=2t��PZ|>��!>*e.>��8>�巽�XQ=����;>Rg�����z�������>@ƌ�!ik���=���^|�<��=j����^��|�9Z=׽��=0K%<P�k={Ս�y�>���q���>��<�/ >{@���`����r������z�H>��y>���=�_�=a�;��R�>�*�}m�=��C>f�|��3�=Fɽ���=�F^=��>8'G>jr�>��>1�>���>�N>�#�%#=� �=�>C�G�s.v=#a�Bhh>�}=�4>�`b>֎�V�\���#=�x4�z��=գ�����>$���匾Gf�>���=�*=;�Y><�ܽpC�=��>���=�z��; d=�	�= fv>�C>�tD�>>i��ʾ�v��>�w����>S��=o�鼻j0>���&�=�Yi��J>�"�>�o�=~q��NĽ/"K��==-����K���j=�h)��X�=�Ӄ;cN���Ǿ5?��-����=��]<��8���?>�B���B��9վ�O>V�<*�;>��yV����=��>�Ǿ��>_/U>�l������<:s>�~���Kt>�U>o�u������9�����"6�R�=OQ�� �y����_>�_W=V�&>!C>5Ri:nX3>������W��k��Z���6�'=�78��6?<�p������6B=&4>8)`=<pi>3�,��B�=,ýM_Q>�4b>�֓;J�>��$�}��=#,��jz>��:�����=bP�=y�Ƚ��;�_c3��
@>����GS~=�>��������>7L�=��i>џ�=�"�=]�=do������B�'�Lb >��G�Q �>��>bD�>t�ף0=�ѽ =D>�>uw=�S>+a�=+ګ>z�S��C��=o1�=X��=��=d�A=�~�>l�>ۗ���3�<��6>��썚>}�>�ܽdH�J�Z>�Au�ei>��I��fA>8�����=��S>���=�(��lD>\vq=yUn�{�^�����¬U��Q=�}>��=+"���"<GƼ��S=O�]>ƭ>q��A�=��=��C>gnU��^d==Վ��}w>����m�=��>r��X����G=sO	�*��=Ȥ�>�x)>5�7����nM>�%���^�=�l���ţ��νz���S�Y>u�����QLD>\���w�f��.>[6Z��X�`��� >�e<�;�B�/2�=07�=J.'�dVs>�}>�+>�;�=�#�=���=�0����=>�r��7J>�a>�>�;4�ʭ>Zً�Vܜ>�	���Ϙ>�62>W#*>
�!>���=t]=��F���P��\�>��G<�K��.��)>�=��<�4��>4��?�>��>��d�@d=�k>�A�x��$\����@>�U9nd0���>��a>��\:
 �Ǵ>9	�<�=�� >�E��8��(� =ԏ9���&>��1>���=���r�=�k%�ه��r�>�w-> C�D�=>v�=�L�;���Ib����d>�=��C>�o�=��H�aZ=��=լI=���<2��\�drh>�Bܽ��;A1a�G+U��s���h@>@�8�0�>ZZ=h_\>��	�%�/>p���'�P�Y����_>�����1>��5>�{*��	��X������>eiϽe��<�!�>%;V>�>�$H>I�{>���퀕��6��n�=_��=�qƽS�7�GEK��p��]��aD���,>U'�=�^P���=O=>T�>ֳ5�|7o�$�ƽ=�n>��J���l=�p(>��)>=9�>Gpo�*U=�?���n=�$�=�������&��. <�&�>Yt>S��^�>�(m>-���!>X�<�b�>A�����=�������L���b>��_=��x�?�M�h>[��>�X�=��%� �-�O�s��W�=��&=���)
s��,G�����<�<��k��=�s(>�J��4>����`'>�H��r�ֽI-=�M���c<,=��7!
=j��=��Y�>�N����"���݁��>�>���h�=S�}=:�|�!�=<,���o�<5w'>��0-�=�9>�>=�)���*���c>���;��=�졾�[?>�g�=߼i>�5����>�2��؋���6T��~U>����cb>Pƈ=�V[>
�=���0�w�J�3>:W<"&�>�=�=*A��uR>�`>�{V�]��l̟���;����돽5�E���>�^��ႼkO"�݅.>��޻�YҽYmH=�Ō���!=य�I, ���~>''��7@��>�Nx=lϨ;Tf�����=-�{�VĶ�s�>�ܜ�*����Y���>�Kz<�5j>T�'�t���sR���>�a���/<q4F<�e��]��B��>���~�.>	�*p�>�>ؼ\
��������>�B�����"�>���DL��32��)��>�����v��>��?���Mb��r�!�S�=7W<�MZ�<�߱�jg���D�='-Q>���X햼��=��:�"�(����fY=�}�^�A��>���=���<��^�h�`��]"��)>�J�=��@>��>�I��R�-���oJk<8�¾��>w����=�1�pl7� �Ǿ3��>�U_��=���c�>J9	���=�
=v͎>ד��&C�n��>&�8= �=:���Jq>�Ž;Z���v�>�!a>Wuھ��R��=��Q��*�=��=s�V��S>2潽(�>���5>����}'�ן���z>|�>�F;�¾,��<��B�j�7�}��<1��>�)�F�8�9H�����p�=�U��Ⱦ(���v���[�J�f��N�=[��=6�_�{��k�>�LվL��=�d>���=�nx>]�z�S`'=Ѹ��W[:�����X=�DN��S�<]@2>$=lE>��6��oH����=� >�<U>MGw;'#��I���䷾p���Tt�0 ����
�t�2=���&w>!u�I>o��>ۿ= ��;�w>P�*�3��;>g�q=>}�;Ta���=>��|�����\<�#�p�4JýweW��0I���>���U�>僊=�l���=n>�l>���>�����i����=2��=��'���=i�=��:�~�O�s�;����j���;����e$>6{+�?v2��ㆾuz=��l>�l�Y����]½�轁t���=>b}�$�/;p��>(��t4=b�8�հ���6q��~׽̜���9�8��ʸ(=EB�=��<�2����=��ݼo�>9�����>^b>[\�=����=ז��Z3>�?	�k����Ԋ=�x�lR�>�\3�0>	�l�H>j���m�<�N�>
���T>��Q>��J�:�>u��=$�Ž`�������=Խ� ����>��ż��>4z�<�b�>���>�:��ͅ��� �H_1����	���%�ݼ�Ծ�C;��r�=�8�>���bG�=����[���u��z)�> Rw=k��=��ʽ3g���������"�=#�当)���|�>R�K>1�>a�Z���1��'�[<���Ђ��*Qc=�>_��>T����	> ���6->H��=m�s>�P+��`���i�=�nU=�F�=˯9>��M>��5=��>Ǝ�=[�>7��=3�n>JhW=�Q�=�ɰ�Qy$>=k}=° >�q��f���{�'G�~<`�K�o=e���E½�;��+�X��`|
��J�<Hz���\=sH�'M9��+���P=|�6��7\�1z>iv>I��)�
>�Z���Y���μ�i�>������5>�Ě>�-���<>.�=)����Ӛ>p\��aҊ>r}ý;r=P_��U}�>��>1˸>�S8��UV=]��>��>��_��"A���Z;ĭM>�>��P��=��=��=CI�un�=����>���>
u&���O>J\o>�����D�>�k���_���q��|�}B��_�=��(����y�D>��8>��.>��>���={.I<��>�>�-������ལŉ>���A]���
�4�����=�����^���>��D�4z��}���\>%�뼇�)>E���@�<��B=	_A�찇>�ɽՍ��/�S�� _�'̀��WȾܚa>��>$
���=9l�<�'&>�ݼM�N���L=��+<&Z�;�bl���W�N�t=s'=�S>=��>#����ţ<��>
ԟ=��>3�->�d�Ϩ<qQ�=E�<��>�yoH��F'�q$>OuU�.�нȻh>����ż��=�u�>G��=�]H>W#��tY>6�˽���=�J�g�K>e�Q�6ѷ>�|@>:��=��^�����>���=fm<=���Q�9��J��<���=��&>��9�� >O�Ƽ���y�=M�)��.t�6]|�h�=)�i=�q{>�B?儳;/�>���5�i>n��9���У�v�>�߽�P����=��X��#p�3<>�w4��,�;���=�e�=(h)>~��=3&|=&���%�<?$>�&i>h�G���=�8,>��>�n�=����|����Ș�� ���~�F 	�˼s>>��V�`<M��=م
>�p�=�_�>5�^>�t��2ȼ1�P=?C�=�>@L[���=��>g���}=��<�lF��a���=��������O�>>�!���u�bH��Kx>���������\��輬��>�&�<>G>�i�W��e3�m�ͽvE
=e�I���>b@a>�1!>y��<�4彰Y>��{=*�#�t>�<�==2=�h���ik>�`�uS�>P��>폂���$>>���AM<>�#�;��s�<{�]��:v��=EW0��'۽GY�<�Y�N���CN>y�����ݽ�)6<�w>C��f$�>��u�>�ً���x��
̼�>z����h��嘾T$?��"> �=��)!s>k׌<M6>����>_�ý �=���i�9��t���h�E�>Qû=�K=�m���>�����r>D�=)@�;>{ҽ��A���7�X��;~���=5�>��'>^�Ὂ��f�C�L�V>-}�6�B>N�u�D�����o�Z���<�A>���=��I=v1H>�gv>~�=Ul>����յ�.�D���>�n�=`��=��Z���3>�^>u	>���E>�`ƽR><����=2��=h$���=�ʲ<�$>�e���>�m���aC>Oi�=�9=~?S<��Q�9�`�|Q�>kV��^F�l�����=�h�>\ǩ�%iU>�`X>�Ƀ=�;
��NU��K�/�߽۷9>Ci>��S�M��.?����|�&>�<I=��=��+��2>zY��ڹ=�I�(oN>�K+��C�=n�->S->�n�>܆>`]�<���j�H>t<�
E>�����>)X>��ѽ��5�bU�=`��>�?c>�.����^��c�C�H>Z�=B�A=2�=�0��i*2=4M�ӟ>��8�$߽�7->��]���ѹ��>�d�w��=\�|��բ>=���bɁ�j�=��l=l4y=�V��2)�'I=��!>H�3��;>��
>�?�D��=����`���B�1�E�lYS���ｌ�W��_����=_�=���=>��>���<�����h=|=.�o	������^O>>	��u �A�>>�9�T䁼�/�>C\�>0�&�����ѽ$ �=qʚ�dM�<Lԓ> �#>����B<@2�s�A>獀����>^*�8��ə�>O�=���y��=��u�z�S���;=D>0C>_G>�>Mm>�7> ?(��O>��>�t���k��y�_9k>���=c3��	��wU���>@e->��߽�� �	(�6�w�Su�>�L�=,:=��'�Z�d=Y�=軍>A>�T�<��6�A>��L��2&=�R��44��y��(�ｐ���=:�ݽj�2<�T>eR��&�ν�ɲ�j�J�[l>�&G�r)��xļ>����{�>��O�4+Z>�����?���
��	=�����Z��|��>�vs��_��z�?���u>ۀ��,�3�Q�>��>z�K��bн�u=�2�� ����f>㲘����<�J�<Q ����v�/�a���r!>��->��>�����=i;N��� ��\��jtG��>�;BF��ji�t_�=:7W>��#�|�5=�]��%>9ۋ�͕�;�Q��V�>��λ�y˾��ҽZ�<���|��>6>��L�^=Aj���7��^, ���|�׃ɾ�����E���4���� �0>3���c(;��8�=H��8�����?>�	>��/��=����$e�zo�;P�(>!.>Gs�<�eo�Ŏ=Aо��"^>/�4����>���=�ό>�Vk��m�>2ܯ<Dd��}�<�(a�N�>��g>�@��
���͟[���X���!GS�_�ԼY-
>?�����*��<[�+�I˽�3�QÓ���9�����L[o�>�VN���>A��<��0�>=S�����ý�lg�ᗒ>^�F���/��=���:'>)�W>�����S�O���ǽ�u�/�ɾĮJ�\F�=����=�����MN��n>\#�^�2��T�P	>���>�>��v�9S�=��پ$�8���9>1�����AK=�o>B �<@^��&w�>� ��s7��Y|1��$=
U
dense/kernel/readIdentitydense/kernel*
T0*
_class
loc:@dense/kernel
�

dense/biasConst*
dtype0*�
value�B�"xC�=}�ּ���<	Ё��Eڼ!?'=�7�<��>W�<��-=)�3=��'<��-�i��k��;��<��^<�C%�|Y�=^ѝ��f������¨ =�<���<6H=�d>��$=�+><C��
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
value�B�"�$h��S 2>�!<>rʽ�ו�B>�M����>�5�<3`̾�(��	C=���{y�>�*?�b���'���f����>�'�=���<���>�;�=�	��Rٌ=,��>fy�>����8��n�߽
�>�9�=K'�ۡ�=�>'����>��>�����h��ɬ��T�*���>�a��nw">���>+q��0����r>J�վ���> -�>6�>v�?����s��`?0�L�j>�H��똸�
[
dense_1/kernel/readIdentitydense_1/kernel*
T0*!
_class
loc:@dense_1/kernel
A
dense_1/biasConst*
dtype0*
valueB"G3�53�<
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