
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
value�B�"�C�7���%>
�=0 �z����A�>�C�q�>~>*>�P>�#��V���|>B��b	��@J=e�o>8�>]$�*���ž+��=�B����=�R=3}��;9�>�+�>A��=���>�$>9�V>G!t��M�>h!ͼֲ>0�d>
��=�e�­�e=?��>�Ĩ>b>�����>���>je>�D >�\վ��;��㫽��?|缾��(�\jž��T���/�����4�B�]��� �$*>�Ѿx�,>�y���5>&Ğ�RI׾�%�K��u��>����&�>�����X?>G��<�}�3��=	B����>��>����.�>Xc�>��>���>���>��ڽ
[
Layer_1/kernel/readIdentityLayer_1/kernel*
T0*!
_class
loc:@Layer_1/kernel
�
Layer_1/biasConst*
dtype0*�
value�B�"x��<-{��{<e&K=+��=ƿf<d�>F��E��=(����(�]� =h��=Q����X>Z��=��^�G�ü�]L��<>F䶽F�9g�K:n��=ե?=쮞�+el>**��큼�]ɽ
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
value��B��<x"����u=P>:��|��2���Q�=�;�=DM-> ��>_8�<&�>�\�������O���f��Z�>���R3>���=@U��`�<�=6��I7#=C%�=,�`��,��{�+�Q	>���>ZG�y���z�wT�"�=��>��7���>7����R>��i�-��(+_���C;z<$cT�����R�<��t=o�=Ysj�G<>\>�<�l$>R$�H��=�����޽	,0>4��>�o,���}>*qN�\����ļ~ƚ=d=���=���=1,^>(�q�Zu$�8��>+����,<r��=�k���{=�U7>T��8 �SO+>ꃾDh�>L�h>O���S~���u�=V)�>M���{o=�:\=����Z�P������>�s��ƅ>-?��>!@����-T��ㇾ�^�=��=/�^�O�>��>��=��>W��(����l>h��=ԴJ������v@��z�=(�6>F�z<�7��尣������K��~><�B>�=�1�V 9>�=�p[�h���>F��<��t�?S���>.��<�7��� �;Կg>s�<�>Ob	>LA =�����|3>*�]a<��ŽJ��=���=R�=�3��W�WQ���S�/e;�e���?�=�{�=��~����}����=$k����=�
�<�X>��d��!���=/	P>���	9&>��I>�L�7/�+�B<Ak>���<�j�>;��,��`>�`K>�M�<��[�ץv>ie>�=e`>�lm�N+I>�)\��.��i/=Y�>q�� ���@��t�ɼ�DY>+��Dۺ=k�	=��(���@�6�>l���L�> 4�=��=�Q����>����2�=��e>M@�=&��=� ����b4ڼ7�=����gg�=�{t�s�K><=x	Y���=�5���C>-Y1;xv|��.7��̥�g�X=J��>7�^>ͨY>�����2<ɣ=R���Bj>S}�>�ݺ@[����=�>�<�9G=�xM�P[4>�NO=K��=@{��A�=���=��=�+D�T�<���;�� =�j���0>�+(���>u�=�<J1k��b� L�9�߽�|�n��<"V��O���5 =��>$X�<�=�VǼ�/>�����XM��>.\�G��]�=��D>B�$�"�ü^w�<ϣS>+IL>�a�?j4�jA�<#C?��#��<0���;J�g>�.>=V>��1=��^�v�=��W=�ﶼuH�=,y�=~)>^S�=|��O^�=�&i�*�X=5Kh>2��x�8>��=/�Խ�[9�Q�.>Mb%����<��ý�>=Ǆ����	�*�v�I��>�(/� �=��>b$P>��@�a�
�ݽ���	=BUݽB�>�~X>K��B�=�>�9��P>�Vv��x<� �@��4w�=!s�=k����>���=K�=������K>�g�=����|�>��=�2=��{�]�μ��1�,�1��<�P>^F=�a�=��=���:QU����=fIz�?H<�07�fA����ͽ��>�"��pȎ>��I�#>=�ԽU�J��3K>�;�� ���>j����P>��o�i�=�ʋ=��UFE>/m���O�$s���#�=:%>쒻����yA=(w�>�>ؽ��p<'�B��ٱ������v�� �=�{>	@	>���;���u���R=0��=��P>�����f�VDa��H�-3>uԽ�:�>��3��j����|>�w]����<g���Ⱎ<�e�;����e���9�x��*��|�>G�P��\�>�>�ើ};><O[�>��=��C?�?m�=�)I�,ǝ��7��;j.�v���H>�37=g�>��=���=���>���o�����=h���f�'=>݅����Td��8b�>�µ�;�^>	�Y<���=b��=�,�>E�>C�>B��<��p��;`Gh=ܭ>LW>0��t>K�>�,>등<kr���_�=��=Lޫ��Xr���<"�&��/���>��	��!�:����/=��
��� >���=�`!�k��Z�=��=��c>�4�=��v�h�V�g=J0>�q�=� �=�#A�����A����N���	�O>z(>!EýFZ�=k1��/C�;�vk>�ez=5߼�^V����1T��99>{ "��� >c�>NT>�ӝ�-�=�T���)K���= ���'�7>�ؾt>ͤ<����p���7k���=ko�=�� =
፾�"p�Qm�=��>a>�ZO��(,>�|n<��J=ڸ>T榽��B=�=e&����2���>���^��"��=��F��x>�Cb=5�?V�>௠�Di>jN㽼|"�[��=`	�B./�z �<������W5?ܮT=���Y��m��&�D����=96������|J>a>^>t��w>yUT>���M��BB����r����>U�`>�2�:u=�W>ϕ�<＀�B��>Jgl��=>Ys�=�G�+Y�<�@>\ϡ��g
�lp>s٘=p����O>�> �?̣�8+�tL=���?�����=ϒ̼�yW=�����QȽſ.>>��>Edн��괥=҄�=u�:>o0޼��1>���Q>o��=2��;RŸ<=A�<�����{�<�:>=𑾚��<��>��Z��:>��>�؀=n�-=y�d��v=����R(��C>X�d=�������jоG�=�x\=��L>����	_#�x�>�n'��"K��ؠ�}m�=��y>I\>�ҡ>�y;I�s>�I���p
=���=@�a�{Z�=��kb�>�Qj���_�3�5=���щ��g�<�M�.�	�%�Q>��T=ϔ'����<#�=��n=���2>�?�=2��>H��=�Zo>?�>м
��F3<D��C>m!>�a�b_2>�<��>�]�="��=��^>z������(�0�H>"\<&��!>���7�s�
s��ȧ�ؐ�=J_�7$T=��q>���sn �q�i<|�G>Ϥ�=O����t��UJ�=]Y�=d�>�(7>3�z>�x���ؼ��?=���=*kT>�?/��T�>0�D>��=���X=� �=�a3=�k�!��Ӊ\�W��c9>pՈ�H^>T~P>�Tq�1[I>#���`4��[����=PF�=WZ>�j>�}��fwc�&��=J��;� '�T*�<&�>ԙ>�{���Cz��P�=;�<���� �>@����߼�@��L>+�D�_�=�ׂ> �����=�g��<�=�#>�[�=�"!<uq?�h>%P=���>�綼|�yb��՝��a���8����=�)>%#�>ḟ=Y�����*�y�RϽ�!�=x3�=h�>'�\>�l=��=�d=�rC>����t@��	Z�>{%I���=�<ƽ��L�q�U>�K��h�}����y=2R/��j���& ��;qe�<���9佢xy�'�!��:��i`���C�<����;��=���;��>:_9>�;�<v"���O���M�%>tU"<¥>�>��R<ɻ���=�]V>��ݽ��8�_��9�=����a9�=~�d� $�������k;>�ս?�����r��=%C�<��e<oC�>P��o�b>&�h>��g��r\�]�λ�립�.���J=yv���ܲ��V���=��|'%=�/�I/W>{����X��=IV=fO�=Hq>�%=wո>���=��L=E_B��j�<�L��q����=�l�=�M>PI���T���k�<_O^�9��=r�=�N'=賾�� >hF�=@\q>�%�����=�lI��<n��Q�=c�<%ͻlw��17P>{��>���=����
����>������u(�=�=�E[>×�=�¾������-=��7=%O&>�ܾ>�)(��\J������'>���>9;>�;�9JS�Yg=���=S[>d�">����\6>��`=[�>��2��8�R�X^o<VkN�Bڣ;vb�=;�Z�<=�V����=�(�=� �</I�)�/>�x�<��I������=@X>�:�#D<�L��{�>�L�>��#�f�������'�=�s�<G�ٽ5ji>"����*=eo����2>�!��lR>��}�;ց�w7�=2��>���
->�-!=�Z�=�b=��=��м�]7=!�콺�\>Y����>�@�����>W��=6[�>������p�8䲼�l>��A>��,���>'ɰ=���]H>�8%>�Mǻ�컽�7���ʃ����=�"r��}�=������=����ͅ�U���r��쑽ߔ�;�:>�y��<k_�=��n����=z:`�9�1>;Lڽ�D���/:�-s>�c>�v��9�����qk<`I��*
=��>[ዻ�-���=D��V`�>�E>u����ｦ>7��=y1�=\2/>�_�<w
> &L>`�4>#e���S>ު[��!�=�D�g����;�=,�=��6=��ؼ��=<�
'>���=�K�=��=�pȾo'>��=hӽ��<��l>��=�-�=��&��}��J�=l�=Þ�;t�&���:;�MH��+�+���J>�d4�B3;FJ	���9=�->6d	�?��=��ɾ�`�<�����;"��!7�=���=8�
��쬽֠5�Gm�=eb�=�#�<�a&?˙`����>�Ž��0�%�]=JCC>�Ľ��_�=ۊ�>�<2��=�����r�X���\�=ݿ=q����=��=>X&>�{�AV�>�R����3�=�nǼ͢h>�a�"����_�>`Rܽ0N�$�=�V>� ����[>y��J�v=�GZ>oӅ>��
>�g������օ=e&��&�`�@��=�L����O�|>=-��=ˌ�>�"��5��I�= �j>�_G>�
�VvĽ'��=�}��7=Y0>�!ڽe0>=%!=��&�4��ʟ>觍>��8>/��=jg���+>�vɼG75=|�=	�
�s���>v��MG�=��ͽ� �=�b����=�A>�8���^�
�.kR��F�<���>wƖ��$L>�0�>��=yQ2=d Z>زw�L9E=J)�=T�Z���8>t6�=榆�;���0>+�\<�F	>�������S.��2	=�j���/H��<p��
R�m*��� ?�����=l��<%��=��B��u�<+��=�A����>���="�=�(=���
{6�"��<T\&�lc�~3�=L[�= G���"����<�޽0`�>��Y�:&�fK>���=�=^��5�<٧�>�8M�D>�d���G��Ȥ=�<=�gj>����y�>a��=e��<o4�=�Xq>f?�=�o�=�=�;�:v�ݽ8�5$ʼ��Y=<Z����T<���=�u>~�i;�mO> 3�n|^��>�Þ��2�sǂ=��=]�n=fQ�=P腻�~d� �]=��Q>�ӽ`b����f>�?��n>��Z>��	�|��<Q�Ñ4>/�==��$=��W��w>s�#��Y*;��'>>:	�>�7�����<��ٽ�ν|A�=V��=�*ʽ���9 ���:>Բb>�u��ȟ�������v;�>u4>.���1Q���w�=�_	>R(>'��=u�=��3���S>A��">���	��>�ߕ>�ݽH.�����>�>Q�W��<K��>e^�>�2>�����>GC��ʥ=��>��ڽV�$��q>�.=>�?�=࡬>��<��{=� ��|x����m1R�ʜ��;u>��#?�t�=ɀ	>n��o�2<�<$���0>o�A> �=G�h>'_���N=����A{�����7���5@;=���<E�����zo����>O����<FR�=BՎ����=>�L���=��o=�%��+A+���[����;@Y���㎻`�7�vE�<tf��N>�ҼAH0���1������q>CX�`&>��x�1�8���)��HM<�0/��9�>U덾�kK��i>?��=o�A�)�>�I�>��6>�φ=�.y��<DY��y>���>�ݕ��1Q��>�>8�W���l፽_q;��>����Y>�!˾��V>*�~��=����V˻[hM�9���v ��j>��>���>��G?g�`>�Lm��s��a�8�a�B�M=�r�>�%%���>��>����4q>ֶ%����T��=����z4��͔�&!>1ʾ@��=H��@=ʹ�=��=K��dg�>��
=����փ=`[�>|ί;؄>�U��=Ƭ">��9�ѷ>�=��2�>���=�
��[�u�����T�=@[k=n_=��9>1_��r*;'���=�M>�3�=���6�&�0r�=���>���؞>w�<��$=��#�py�=�c^�C�2<��sN�=�q6>���<�@3��Ny�y)�=騽נ>.:�� ս-F>]���<�=�R�Ί�=["z=�Cս+F@��g�<�y��*�2>�.�=J�>��>�ݽ��S>�(z=��="LS���=�a����=�g
��1>�,��&����=�X�w��='dλ���=����U���>>հ�<ig���F>���=/j>�����j�>X��=Т�=��_>�=Tv(�U�b���;=5��D�=�K>��">&w��Թ$>>�g��}!>9L���b��:�:=�fV��-�<�#�<�>库��>��>�k���s��w~��a�/��z=Z6��S>�ٸ����IY=z�}�\�>Z%1>�Z�<s�Ľ�r'>��?��E>Q���X#��:����<�[=���ސ=�3>���f֋=z>�>�΅��?��-�=��e=X�_��j>�=�t1=?5���ۅ=�:7���@<�&p�Mӽ<	G�<
ß��>��s>��;;����-�4�_�0�W=S}/�_��<�l�[S9���@�,�,=���z|>[>_��3��I_>%�=ƚ����/=�[�>Y0 =�A��$��p���4>��H=��c=)~E��z=q�N>!��=�d>���<���=�2>a����>��=>�4�Zf���~.���:>��>�����䀽�@b>�>/�8?�JL>��n�f��0���]v=��=\9�	"�=]�=���>�~y>��8>��>��;A�S��:�=��Ҿ7�={D�=��=_�𼬥�<2۹=�{�=j��S��	a�<V�L>	�>x >�4>t��=��;>,�>g��F�=��='�>�a+�PW(>J�K>�������>�M���y�����h(>h���R>�MѾR
�I�´��G芾�G½��\���p���E>kK�>d>>��s�}|�=&_�<c���=ge�>�>��9
�=�1��?�r�>�'=�Mӽ�V2=7�*>�Nk>�V��k@>I^t>��>̴��]�=����bƽcJ�L��+��=�w$>�b���K>-	���|	�i�>>�12>!��=�o:���=�"��B4q���9��SM�"o&>B��=9�v>AH��࠼�la=�	>K�I>ȭo>��>i�B�̃l�E��K�=��=+��>��'r=X
�=?->������J>FI$����=��>��?���>k����>o,!>�=�c>���R�
�̧"��Х�/�\�J�I>M8&>S�3>_¸���=�[Ľil%>p�:�ʴ<��:>�s>��>k�S��[ڼ���r >>�sL>[Q��i>�=q��=]���`>�T�=ӼR��>��'��!�<����>�^;��a�>w�Ž��&0>`�_���4>��S��=-��=n>>Am >�Ń=�E4>��=8i<�$�9YK��f6>QCe�����Mh���=��=����(->�M��o�<�E����籪��0>�4�����_�=	jཤ��=#O<�B���>Y�"������!=5kλ�z�>jKV=�DŽrj]>6���3>ԅ�>Q�*�ƴý�/�=��4�Q2�=i�>��'���߽u�"=م-=�:�=���96�>�i�j�y=������=V[��e!|>kj>�.�=Do9���<��>��g�=�J>s�>�`Q>�t>6Y��/��ݳf>�&������l���]�="`t��6���u\�>T�~>:/;>X{��E�'��"��VŽ��=��ɼD�=��B]>�x�=��>�7��x6�KZ>�Կ=y�#=AS>�<>"�-=�
>>�=>�����{;ăr>	��=�`>u���,>O[�>u!>ĺ*�A�="�(>p�=}�n/���k����<G)T�(�:�{���`�q=>����.(>�b�C���Ƚ%g�=e�>oc����߽�Q>���=���=���<�Ƞ=�n=�=h�>楫=n�5�`_����=��e=�M��Dp>4�>�0�=k��<I�-[K>�x��o���AȽ�y�=�|;�s,T>�6e=kG����=w�ҽ)�2>��>��F������)�=�)��#0>���qO)>��k��v>3K=(7>���&?>�ӎ=��=/O���;�ۼ��� Z$���� �P<J�!����"WC�Zik=MTj�
�~��Cս�-���<��Ȉ=a���2@=_�>e.>>*'C��&���߽s��<�S>�<��As7>�>�<�>�2>D[>5X8>�9>ư==�4v>�}[���L>���>t�*=Czd������vE��r�O�d>~�_�Je��m=2�=N�%>p�=�>�;<�">���Z�0��j�:`���<���A�<��;�����w�>#P7�9� ��=Ձ
�i�E���Խ"�>Y�S>���=����@���Q�>q����5>5[A<v�> 㞾+r>�Zg�-~����㽥����w >)�d=x~[���¾��J����=�t����=�>�v��W2>�.&>b1=7r�� Ϗ>5Ǡ�:Z.>��>�t�=yBd=�K��Y���o�0���P>�������=�z<(�<��;��;=J<�BL�>����N1>��=��>�}��H|6��J>�ָ�U�Q9L>R3a>��K >*�c��!z��*>g�����=��]��D>45��=�>���L�>XB;=sϽl̸=2d�(�=�z><�=���=i�=�Y >.��=W�νS��7ֽ�>� �>����?���=� =��>[�=}��4O�=��+>��۽0�̽��)��=�>(�p>�=�G!���>�:��2>��c>�X>>wα=Ng�������/���}�!>3�ɽL��=�����< Ԉ>o���@������&0�=Q��=]Q>��s=�>ꀗ�o�w�l�:>8�=*��=YW��c�>��=Y��=Q�j>i�m��n�>*I��Z�>8[ƽ0FF>p�ݽ4�q���,>��5<��~�]<?>�Q�<"砾�P�QG�<k,�+������<�qν����v��>9���.>�W������3j�<6D�>۵�>Pي;O�O>�N��R�b��>"�P���*�*W>j����������>hG>k�=	��;��=�팽�q= 
�;$f�=�=ҩE=7�>�u�<gau=��y�����9y���4=�R�;~5�7,)�.�>� >E;ڽ�z*�G9��u�<���>G3�>u>�(�<?P>D�>V �,A�=H�v�~��ñ>��>��ɽb}����)<�SQ?�ľE�2�?&>Õ��G3=�E����s���>Vyݽn/�=���R��<Qק�]�ܽ�>��a�]z����4����>�g �̥Ծ`ݼ􉿽�R>4v">F�{���j�z�>)r|=����� >\�;^�-��vI=m� =Ҹ��p=�����>L=�����D�d�w����`2�>���>���ek��<D��=�%��eD�=�B>�a >���=T���7�E��>�c��LwJ>:�?��	��@m3>A�3��0>��>�����@>>4�=b9���jҾ1�o=�}>��o= >�
 >��>u��>h�=��c�lOp=\;=?>"�N��-ݟ��<�>�'����<�!Q2��^�7�4>�uG��(�=?����K�>y��>7^=�A>+^�=�_�=Ak0>�;>ȥe>M����F�>2D޽wI��_�>uJ���o�=��>l~\>�<���)�*>s�<��]��Z�={����=��>Rq�v=�>�C����=�Y�=�y>�T�=P�=,v���A>lw���g�;wZ�<wƽ�%�<��l=��,������=R9=��>ȞK�#��=]��=��ؽ��g���?��C�!-A=Mz�=�f=���>���k~�=ޘ��O�:��r����6���<f�\��5>�j�<Zp����<���������=��`>�q��z|>��Ӿ>�>��I=�U���4��ѭ���->H��=-�a������V�<�w��u�=~d�=&#=+�ɽ-B��ֵC��Ơ>�N�=-��>��<�0?�>�>��J=w�?>�D�=�<>(n%>�*z���R�)��<Ra���Z`=�?�>{��#��>�^�=	��='�Լ�a�>B�B�ht�=�!=�Ps>#�>�\�;ԓ�4>-ʽ ��>���n> �:�d��MC>c�=rn��	�Y��ѣ>*�i<-��p��<��M=�B>��m�Jc�$�ܺ���=Vj(>�t=[&��F�=s�o>����=���=p�=�5>T�{���=��U����P>~ר=R��Hae>w��=�v�= ��=T�Ƚ}�=|%�= �)>�m���g���V%�}�*��>�=���>q�뽝�r>y��=��!��Tֽ�ֳ�a�>�J�&�<��3>Y��I����@.>�9�=�u�=)\���h�=�M,>B�>E�=�8=Ey�=������=��0>*�Q=g+�=����
���>ِ+=�>�7>{�k=:B��>������k�+��8�E�_>�<н@����/,=��=���=X��=a��=�
8>c������=9�<'HH>������>+�>�>Q^>̨=�=>��B4��CJ?�DL���:>�t�=�������< 3>��>2�>�E��b�>�s>�~I<~q�=%���">Pe��}+j���-�.���[��v?/��=�:���>��=j�>��>3�F>z)>�	>���ؚ|>׷H=eS>�2��H��>��=��p=y����<��=X��d�&��=A 3���ν��>TB|�zս6}�;1cR=���<�R�>��:>�1>�Ӥ��Ψ��)%>I��>bi�>c�m��q5��.��"K��N��-iS>�s=�V����=���;��Ƚ3 ϼ���:��=��(��>��p�:ɶ�=�w���4�Z�==�@?�O<=��.�>oX/��E>���>�:?��=]�;>�Q��j0?���>a��<�{>ӀF>Fà>n�p>zB>GJ�>������=&��=ҵ[=�	7�Hf������<"}���R>��8��Y��]>Y�x_>��)���>~Bo>Ze(>-G'>��B=W����H.����\��>�����>��7�"2ͽ��>�>%'H=�Q@��K$>d���D�=�'=K�=�A�>�G�<f�D���K�[S	>Hg=�$ýƚ=N޼ �>/�<u�i)'>�J+����<[�>�� >��Ľ~	>%��w� ���>d�/>P0������=e���V��̓h=&��<wO�#<�<�=��^��k�;�8m�M>����)~>�&>������<>�x`>^6>��t�jT�<R��>)ڕ��n�=��7>_Er=��; D��0�=d>����6���Ͻ��T�W�};��>E�0>Z?>��f����>�>-�E���U>w*��ۻb>�t���;=kI�<(��v�=��>�r�=��>�낼����6�=���S7�F��=��l�גM>��w珼)B>Z8�=��=S)��T$����=�L�=HB�=��>�׈=d��>v�"�����p�=�(����;���=k�>�,9�d�2>4�P=O7���I~>�������F`>�j��|@�촛�ف	=_�>���>]� �/<?��=f󺽏z���1�fE,�i��;��>8�/=�p�����[�>.��;⌽�:_>��>�,��GV=u����=W��GsP>a��=%�>-K�.ξR�c���ݽgy`>h#��O��=� н� R>�J= n�j-}�_�M=F��>�:X�L��>���=��>ǑȽ�M>�D�>n��W���֤j��=��L0����=-I1�,��<��g�)U>(ߊ�!��;�!=�}?��>�7�=���=Аþ�˂<D&�=��O��&�>��t�=z$>,��=3�� �<�u��ڵ�=�܆<�<���>~���m۹��ҽh�#��%<��h�T�ƽ�>�������Ƥ=~�I>� ڽ#�!=�����ż*Խ3B�>���cE�>���>��=�B>�$r�UP�=s�ɽ Q+>� �>P|�=�C:>��^>v��=�|�>����� ��*����=~<k���E�պ��߽+�=>���''�L3�=B��<RJD�6�=�!,>����mt>6>���:H�*�;8���S�<?��=)�=sּ@l�=&jϽ�X��Ğ)><�>>ڽѽq5=�>=A�9���̓<ji�=L��<����Ng>R��=�>�W����8>AB >a�<>X��e�нE����S= �V��+>��>��=
�i>��=ou�:�F��tq�=�VF����߫r=�9����r�^k=1_���=ˣ,=WU�=��
>�VF��~S��SS>O�>�	�>��>㱎�~�:�f ������Ph��+��=ڏ�>�Z�>�h$?�>&[>�+>��=k��j<0t>�	Խu�D�>���>�H>��=Y�Ѽ�=s�ɰ�=�}�=+�0>�8�=�|s>�_�=W�>DI����<�=8D_=SȪ����=p>,>�a>�G=oN�m�F>#oq�>+�Jz4��̈́=)W�=_��=�-�=���<�!>�ף���=��=���[4�\��:�=I��;�t>�S�<��.=�	�=p%V<&���HV�;h^0>��μ�nD��+C=�d�=�佤�J>)ʦ=A�f=��~g=�,��Wʚ=[��<v�=,����=����o�=L�>>ߣ>�IV>'K���=]��>E<x>�r�=���=�A.=#��S�5>���lg�{D=��I=�=��@>|�>�týg�ҽ�����A;ɛ��Ǐ���p��Q/>�#�=���=q4�=�+��E�>B攽0@�>���=cgY=*����t��<���=S���y�>Zm�=��e����=4�y=��o��Y�<��ѽ���=��P�)٫=��H��K�>��ͬ�>\$ڽb=ure��/�9�E�AnH>���g��>�!^=�d�>�>;�YG���H>����R�L>�o�>����
�>P�=� v��q�>k˼����4���^V�9��=�4����m=���>Hp�>�R=iJ>�h>�>N��<=�3�^ū=oV�=��&=�*4��ͣ<�ef=Jr9>Qb��X>>�JM>`}�����= >X$��6�ϻB�B>lU���˻��g=m�1>��N>�#��͵\>z>�<�U>�3�; >0�=+3�>�͸����=��>|ɮ=�Z��Z����m�=��R�=	�l>�u=n�/��-A>��1���>��ؼ��r=K��a}+�VX����=�\��=�Z3>k!�>QK:>��ӽ���կ���>�i ?,�E�,�>��!��4=?�a=Zb��>���R;�*���#�>QO->i�>�*�;�����nJ<:�=��'={)<Ҏ����>�H����=�n>F��=b$��#�� ����/�ۦ޸�g>��L=kvx<l��>���:>O('>���=�0�=	񛽲�>�C�x~�=�Ӥ>���B���#>���={宽\�>4���)��=P�D;�N�=`lR>->,=#��<�V=yTI<6�G>�s���}'�es=#�K>���R>��^>3��=�4<r��=�O�=�~S��$>N�;�w?��*bh>�>�<�=�D�> ���C�>7��=S�"�qIy>�p>�In>V�=ZXu>�Z���׽k� P8��=����-�|>hC>�e>?�r>03ƽ�(�=�ލ=0����QL>M�>��Z�ٙu>v2+����=L >%�1�3��>�:�=Ne�>Dzs�8�(�+0H>����n<�<��#=� u<CJ�>Ӥ���aI�M�=;x����O����>8�J���T>7@7>�y�=13�>8��>P*�Wt��m���>���=a��=�b���߼|
���J�(*���v.>Te8==57�KZ)��e)>9�W=(���6�>��>��T<J��bX)���=�R9>��>�7L�W">�����z��>�>�����p�=/�v�Xj=>|~)>���<�=�6�>�v��Z��;��$�� ��eDּo>�w�=�6>�U������ʽ2u>�9>6��=�G>��f={����=��:���~F>�M;.>",=�m+����c�T>�L>�%�e<�p�e<���=����(��T�=yIl=��C>��>Ӟ>�sV��>2ĝ�_�<=!�W>J?H=E։�Y<%bU=pb:>$�=3��pg�=����T>��=9g�	�">=k޽n�Iwν&\=j[�=&
�<D��<Š�>0=�=�#>Kg+=�2ý��=�����>\��<R�U>��"=�>2�>F3P>Z>2�>>�4�����">�B�ơ�>��=��
>.h7��	�>:����;M�����=B[G>�N�>ͷ#���q=���=�p=�E��>�彩B�� ��=�,�>D9����H=�	V=�:��!~=}:L>ۅ����=��=��$��E����,=�zԻ�x۾��=bm�=��=̌�%��=��C>H�<&��������t<5ý3�M>[z�=�n`�ﵓ���]>Ӌ��-�;B�G>,MW>C�!�쓃>�q>>�t5>�b�=�����1�nl��Ҿ9T��J��2ؿ���=��=W�<|Di��17>N�� P� u��)�B>�t׽w��u�(>j�y��u�>�m�=�N��V�<��>Iҕ=�����e�;�<,���;��$h+<��9>-�нp�{�}<��%_ƽd�J<h�Y>w��>��սD9�<���>B4Ž�⽔?`<�w���|�����Q2�����E��Ls=���ݡ�>\?������~N;T�=`�����=�oS���=�!���31�.2=�B�]�>�;>2�>�h>[�l>��=>*�=Q�>\P@>w� =��#>�I>���<_�н�G�>Ɖ>(T>�m�w�>~�����]0���(=��н$y4>���Z#>���� �G>���5>>�"ͽ-C�;�F�� HK�w7 �>$�!>wh�=(��
�Y>,��<1;�����b��&�\ N=��!�h�\=�m�=.�3�w�$�bhC>�fr=?����?8��<�=�)�=�7�=��i<�uɽ�i����=pɺ<EF�>��)=��>������Ҧ�"ؗ<�ǘ=Ҷx���?>�����>��*>׌�>=E�X���8ܽ�o�=���4����M>ؽ�"��b�=��N;�X�<ځ>7_=(��>81<�T�>���=�����9>�˛=biк�
�=�gJ>C)�;�c��h>:�<��<���>���������6W�u#>�����ݙ={T����>\
�=��!��͏<����[��Bd�>�f�=wZ~=��>��T>�a>���=� <>�  ���e�[Ez>�/f����>�F��y�=6�O>�_�=��4�:��<�C6>O��=�!>�M��z�н�)�=L��bo���7�=�R�=���B.��}��J�	��������=~u�=;N>� F<4�=5�<Ѧ���ѽ�	��z" ���=��H�?����C8>�hʽ"���%��
>P>&м�?���=�=$��I�=c�>�m�=�+�<�j>���;4�n>��wi�=<\���R�<�C�>��=�W������8=��!�<]H}=y�ݻ�݈>E��,ۺ��ʢ��
�>������%<��=����*����=�珽v¾=)��=���>�>!�>�k>����=м�Ӽ��]=Q>R�g��E��Ǫ=�8w= �	>�����,>PW�<�L�������K ���=�3c�X�Q���C>	ϛ>����~�=��꺗��=t��<�\>�e�<pԮ=LA>���=��=���'}>��$>/���F�>MӃ�9�
>߃齸�����ݼ"V�=�;���F�T��6��5J>���=e4Q�I]�><*>��'��Ͼ�CxM>�.�=Z{r������!p>�=��~>�=�_��rU>��>A�=�s�<�ۡ��os����<�p�=�����=Z�*>��=����^0>���ϧ�¡�=W���.�c>½e��-V����;"�=N�=�Q>�8�=ן_�Qs*=�$b��L>RE�=HE����Ľ��;����bϓ����=���W��K�
���,>��b�=��c>S�������f�uE�=���}2�+n�=��=9ם�cSڼ��~>�#>�
<�ӽ�~���
��R�>�t�=��>��<v�Y>�H�=O�>ʳN��s �O����O>2�M�Z,�>�o��(�=��2>Q;�S �<".<�{���Q~����=,�>y�=s�s;��_;Q/T��׶��Vt��
�#M�G��4�>N=Ğ>���μ�Eu>Knz=0ņ�`�;�K��4�;ig����ɽ��>�Z���=��Ž�L	��YS�KNr>���=G���XŽɁ�=�I>�嚾e?1���<@����=���=�ZK>����>�<+�B�Y]�O���"+������)=[C>Do$����:!�A>���=?(���w�=c�-��	���+>bT����K1�-��k>A)e���������<��o�U=�=������=U9���=Oy\���F��e���=�WE�b���Q=�A=�h��~�;oJ�<Y�)=�Y�>Y�@���g>�:=e�<�<q	�=u�R��6��U�'�>|I��B=�Kn>b�0=a�3���=��J>��=����R}�<�%@��� �Gᏽ�LS��&߽�ڼ�.k��n>L�f���<\8>d�'=N�a>N�y�g�=`K�>���>�=ek=���=��J=�3/=+�q=�KE��YD>��<��DH�>ċt���>Hw=jBn>B�ٽ�'�I��	(�>(y�=P
>-1��a����=�ʡ=6�>
�����d�*|s�֏�=���=�T�=M��+�=8�>!�V=�y>fR�=2o�=h�=P�=������=�`��A���y�,n�=���<��F=�!��u�z�q<_�軪R���%��/���>a$�� P,>�v�=��N<��Y?�=��>�m>橽ʺ꽈��<�Z>l�\=��&>Z9	�u���M>���事�"��=�6>Q�>�����g>o-�=�U.<ꁃ��b0��Ľ=-�=؛>�.c�]4<>:V;A��<b4�>v4=>L>�>��߽�2�8���jM��M>綅<~齛K��g	�+Hb=�oi�ssY=7黼��,>��>y2�=lS���e�>)�<�'�?7�h��FM�J2C;�h��">��ip��Ѐ��IG�s >���C��=�e�4P�AM���T>Q'!�S}�=#,y>I��:���%�=
/�=m�����<��e��c����y>iމ�>�>l���f�<=��}�N�=��U%a��N��u�^���m��s�=����m&�=�s#��=��B��=�-���	��c�>4����;���<%͑�Kн�E�~�Y��>	���������^���J��W���󢾎<��|�#��{��g��E��<����>�A��D�<̰4�>\���^+<%a�ȷ�=��>_2��W��>�q㼲b><6�z��H���^�ӕ��,;=��h�>��>��&�H�
�F\=ۋ�4i<Q-C���>`&2>�T��y!����>�䠾1~�>K;h����=���K0�=���=1�*�>T��>E.����>>Y�y	�=aɼ��>�D���4�=qif�0ּ��|�J��̕�=v�s�:�r��kV>V@���>��W��Yk��(o>PkD��BV�#���ٱ�<���Žgj˽��Ҽ�>'O�*�[>̽z��5�����MW>`<�����w�U=�+�O�ؽ�P2�
�=?ڙ���D�2�.�h� >՗J>i<@>5M=ݓ�=��Ͻ�{�=��S����=��n���?��>�I���V����T��N��dՆ�����Ͻ[�'����G�A��@��-�<>�d� ��=�����=��k��T(�Q�<�ay>���%a�=,�i��%���0W=ۋ�>.b��?��7>,�ݽh��<X8���1=�"����K=�V��-9>M���=>$�>]-���p��m�Һ��>鑾�}f���?5+>j��>}b��� >�].>L=:W���vL��7��9������6�9�����v�q��WM�n �>/rK�\7>z�>�E�=��`<�x>.��=��=�ݾ���	���=�8[>SS�<=U�>Yڽ>[����ɽP�>�d����<��^=�,,>�/ =�>kƬ=��;'�Q�8��=�ŧ=���������=p����n�����E�=44Q>�=�;u����I�U>� �=�İ=��Ǽ�B�=x�x}����Cz���d�3">��,�$��И=�ó�s~>�u����4��>���;z�[��J��XJ*>��>H�O�2[��9�zM6>$1(�{��<�!>j�=�E<>�E"�fDy=g,r���C�4��>u��p{���&>�콦n(>0[P>?T˽��N�^�>s~���p>�1�:�<4)>�>����o�=��;Q��=�%>��Y�܅ݽ���<#�3�)>�ཀྵ�ȼBy�<�j=HQ	���$�#�Q�/�>[�U<ʮw=������e2>1�:�/����:>����=��]�>�S�=�=>�G>:X>&И���g�8�
�Ӎ���3�=L᛼�
?N���ս+
�= 6���R�ۋ�=�->�;�߰ӽ&fc�k��=��%�/ZA��!7>�S�<A2>S;���=��=R�6>��=^����69>�SA>��L<*�=t&>�>$�il��v�=g�:��>�߼n�=� >/�*;������|t�<C:���U=�����>F=F����q=��Q=;(<����>,'���H�=����S7=Y�5>8�<LD�=���//�=a,W��M>�¹�	:�<�Sн��>>�|=�;��>��= ��	1%=oB5>�CJ��w�&�>��w��F��7� =b�Z��>(�۽�B>C6�)� <׸!�MN����7>-��=�>$��=c=>�w�>�6I;>���%�>d���,�=�">�f��śU�(��=�<l>Zj=�T>�ި����<���<%��4L�"04>�i�=��.?�>��6>�]�=�����n����=����"�9�]�>�[>��V>��=���=�@h��J�P�W>DR�>]rg>P�=R�;>s2&=@q�����w�=�+>�3~�����<���=��;�ʽ�Tu�ͮ����Y�=�Vڽ������<�>��=!���A>U������=@�M<t�+�ž|= � >��<���=GJڽdA���;� +��L�;b�]<>�$��R���N&����>����2�>-v˽M��=4cN>G���P�;9,Y�I;$>�<a��
g>p߾=��=���.>i#;>���>�Le������=�-��d��8D<�B��+>@�5�~3�]Y�>:�=�P?���=&��>�d-�l6�='�<���=�l��pؽv��>�s�>�׉>n�v;Bs�=3��=�I�(��=<­<0�#=��	>��z����>Mi�qnS���<���ؓ�=���>ܱ���+>�#��t����b=i��=3{��ߴ=>��i��vj>v�">d��<�p�;[ֶ�D�0>�6�=��5���������B>�ʋ��D#>�(�=��
>��F>@��=z=d�¼a�>Hٽ��T=l�$>St�	�>�H�>��2�[�<(�F�VZ�=��$>���=&>��=������=�&�=�>-g">�;k<M�!���C<�*=���=�����/���@��T�=/PP�[\�>��ҹ��A��6=<�=�D<�	i=�*�+^r�@W>�3�=NC>:���4R��@=>V{�qw>+�b>7�uI��8�=���>��=��>��>��=-:(=��#>`��<͌�<,��0�=e����+>���]��"V'>��8�>�Y����=f*����6>|1>�w�=��� ��<~`��3E>�Y>h���[+=�j�>ī��bO=9����4���I[>V�0=S�=ڡ�s��>[�=�51?�J>�CB�<	�h=�~���潥���W�=\���=d�->Mt��=��>��g=��C���>�ٽ'�̽\�ٽ'厼x�w#�> g�=�Ad=���<��#��^;��<;>5��=3�u>!��<\��w C<�l�<J���ox�<����D��x�+��=T�ս�v*>�v�H���!9>��<�]��b�=�Uu>o��=��%=�=h�H�><�=p�>]z=��<���ힶ���4>*h��##=i>�$���=�Ҽ29�::����=��c���>��%?e->RS �t�N>�K��|!>&gq=��A>)��:�0�=4��=�C��?�=��^��i�=�>Zs"��h�>��>'@��n�=z<{j�<�,N>���=ԡ�>�>l3�>��7��rS<�?��ŽDMi�:d�==D��A���#>#H�	��=,��>���=B<x>^fA���y=�Z��p��>A��]�>1�>�5#>�=�`ܻ�=GѽC�8=�,�>}D�<C��>l���DS>�q=>m�#�\�=�e[�R�q>b�Ѽ��_���Bǒ=�(9>W�r=��F=��>3-���9�&3S�W�
>�M��������=�>��G>h�����<�X����=��<>�&�=��=�@��y�:Q=>HZ(>;9�=KH�;�䎽H^�=�9��H�Ӕ�C�>w�F=Ac�<��(>�+���}�>��{=��>u��=偂=��
=��E>"h�=�S�Ƥ���
�7�}�ī ��H`���Y;�1�>�cq��6��g�=�6�>�;:�����B�->W2������B��}���]��)�Ͻ��>	2>@��� x>s'>�C>�t=Fa�;ʏ��U�/>ʥ/>��1>��i��>����c>51�>n��U>��O>G���+��_�<�?<w���aO���2��Q$>-�'��d������>dZ3����˂�.��=��H=U�M��A�{�v;Α��b�>���<9K�=v:�<k埼&3g>�Qj=�_n�)t��s�;��=eܳ���>�����>C�>�b>/^�=Ŀ:�Z����5>O���J���!=.��������>=	X>a(���C.���νa>�]��Р=%R<�?�=@� �.�3��
�=|��=P�W�I�H���<��G��B];��e�=��#�~��=D:�����W=C���0|>?�c>j�[>�-6�ꈘ=��=.O�=�'>�/D�Z� <F�{<9~W�*_�>5Z��8��'�J�������=�{�@�>���;'=�=O𡽑�>�`���/��ۗ�k�=/h���}�=�~�>�Jb�I�^�.�C�R)B=*QX���<�o�6>>|�=��>�r3�g��=*�伀$��CF�S�z��9������p�m�u� ¦���>�}�=!�(���;����1��><�?���>����/>�i=��6>Vc7�#ս|$>dc�8X>�����=u5>��&=���=&=;�S!=�ִ��/̼%���6�O>[վ��s=\���+<�_*���¼F�6�Kʼ=Q*P>z퀽�Px=���a 
�G�z=��L.����ԽWE�=l нM����`�=�ł<�7w>��J��P\>"�g��愿�Wt>��x=	�=a� >�u��<q�3�E>2ʭ=F���P3�=*Uｸ��d�~�`W�=����>�౽�z�=,���o">L#Ҽ��d����4���� ��=�{���g=+8?���"T�=��>�o ���>����
���g��2w�<i?P>���=�O�>Gp�;��4e<�ǹ��C��t�=[A"���;�>I>��P=K"��@��=~������=�&=��^4�b�+>�����J�!�G���q<����|�=���=�d�>��	���>1J=ν�˾Ј�-}>�>�}���$<0�׽B��>�h�=O��>�k�=�����=5�v=G�	�C}���h5�+F�;�U�c��U%B>���=��>�^>�V>L�=(�����= ����ڼ�6�
�?�>>�=���b9��O>�s����ǻ���<�N>[��w`�>C>@=><B�D,R=/�4>��۽���*�	��f��%�y�^�,$�=�E�� �>�~�<>@�=l�<�\8����<�N�.:�>�>�G4������()>"`	����<F �=�=s���k�>�/=�������Q>���[B;K�=Q��x�p�=�����y=���l>bҜ��>=2�7��ģ>t�<��1�>�^;+�<!k=�6?<�$ ��ߌ<^�=�	��1_=��#=S<�=��E>�g�E%2�گ�=
L��􉽂em=�/�՘~>�K�UM:�-��=]3��oK��2A>�魼×	>҄�=d7�`�">,�G2>%��=0_��A>�>�w�>R(�=k���Sy�>��;t�����cT����XY�Dł��(>�ܼ�z���d�<�����=�t��$;1�JH����=�t��n��L�>��>z\L����ɽ- >�*�<�3M��5��}�=_D8>$�9�yqh>0�A>�Y>U�뽥B�'V�'�E=)Ma=��6>��@�&n.��稽�?�g���+�aw�<U>=�����A�H�O���F=gm:��U�=lO>��X���;B���6��2���eɽu ��T%>���<�;�<�곽�}>+�4>�]��Ǝ>�Ү=W��1B�8��=������\=�EѼ{�=a0�T��u&<�J�:��X�*|s=��>N�i=l�,=~�M����/�9�h�K�����v=�,ڽI��:ܼ5�=>��r	!>������%��Z[��&�>b>>��<��Y>uT�>�҂="ֽ�>4�=����?>AR<�|d >��(��]����=�"�yS����=^k�=I�=52��i�;{�@=3��>��>��>��û�9ս*���\>3�}=���=H�=��?���<N�	;w��Zu���Ž��<u�q�6��$'��F?�K��Ё�=Y5��Ҩ=���Tv,>�S�<�*�jsX�NS'=X(��*1�� ���\�=�總�`���	>P�=�4>��*>D,��)�v�q>��&>@�U�0-��;7>��=J�C>e^޽\e>z
}��>�<�m��Q�>��@�ߢ�ɝ=	�罦 >�9>@�Y=�C>P)��ҹ7�2:?L?�����>���<��Z>��K�]N�<B������k�н���f��<!9�=�$U>�^= m�=�۟;-�=#j߽�F�ӌ<�2f���<�'�^��o���@m>:
߾�]8>D�-��a@�:k�>4!&>��x��/E��㖾�����+�2|���	�=��>!��>R2�>u,�=s��<G��>��Y<f�>䝼uc�>2�->2�Ҿw�q<[�m�(h��m����p>�ޞ���
>H=�D�dB=�ѭ=�:����⾙���_:�HA廆QC��7������]�>��=����e�>��F>Q���6q�<�U�=wལ�ܽ��H��)��!`������6��WN>uW��a�=��;�<^��U�>+����*�=�4�w�w��/f�Ei:�WqG>p�_>���>h��=��K>l��<7>6��!�>y�0=|��=�oJ>_߾L�Z>7?��,N�Ұ�=c��>i/2��y޼����߂=�Q�>k>�����Ǿ3�1�| ��z�V=�=I����=�|�=՚�=���>�����=��^�7p��N=A�">Y�ý��>>+�������� >ٟ>}"�=1��=g�=<l�>IT�<˶�>�轸��=MǕ>=�>&a�=1�����q=�g=|���<����Al>0T��S^�=ᡁ=�;$�0��=^�U=(�
>z捽ǽ����=[�= ��>k�D>vb>TD>�OZ>�5W=�I
=8��=v�=%�ɼ���=j��=����O#='F��R�=�Z��<��0>�Bx<�=�Y�=#�=�"�=��H��=��ɽ���ж=H� �O����<C�>���f�M-�T��;qb6����k~�=Nw��=y>u��=P�=N��=�kY>�a �p�F��:$>m�T�7�n�{��!q=�S)>�ȳ=�4꼀�.�@�)>3)$=�N�;Aa<������=�n�v�=��>�u����>z;��;=����Q�=G���)�=m>;�E>3`>cp��Z�8>f�����@��
@>��ˈ>L�m=v��=G}9�V叽�yJ��'�>�w<��5��`(�w��<�Ӣ=R�I>�D<(Ś>S��>&yt>1(���'���]=)5=m�3>C��>	Խ��>� >�T<q�
>]NQ�! C�zz+>��F>�>+�����s�<�y�>�R;>�����3>}�>�g5�кF>�>�z)=ݐQ>]�>����_Z=~Ԣ;�s�=e!D��Ǻ�p�=�|��k?">�j�Z�(>Y !>>�>��C=8�<>������=Ys2�`��2����>���=9뇻���|�=��ͻgᒽ��(>��>��߽�w�Ȟ=�&��c<� =�2��]���޽�@�w�0>���>b�������>'Em>]k���">��M�>�*�
��=��a�=���=���=B �#Y7>�=1O�>�.>8ć=V�> �	>��ȼ!y
��������=�F����=�h�;DI���=���=�v(>?���Х>/��)%�{�:>= ��<v>޺��[[=�
��A���m1��� �L��=��>��>���A�Һ�%�=Тe>��>]=$>K�>n%��N,>�b��p]`=4�>��A=�1�U�=� W>�3>�6�u�S��$>�`=���=���;P�/*<s >n�\�?[�y����y|>�����<��ս�u�<���<�Э=Vн��^���C�F;T�A� =\m�=f��e�Q>W�<�=��>?:{<�GZ�|�*�q{&>����/8��G�� �=P�=H�>M���7���qg�B����=H~=B����T���x��y�=MA>�0:�4��=�A>|�J���	=0W�<<N��(>h�w�]_	>��<v�9>\\>ѵ�=�����%�=�-�>Y�׽�`�>�"=t��>��:U	S�HZb�)Du=��d=�;�=��>
1�=�N>4.�y��=G�=>���(w>5�7�7p��7��=�L�=�l9����=�(��>zQ*>�ϒ=��6>��= �9A�<�=Ǿ�>>��F=K#佤��=��<�l�=^]H=��4�y>���=��=[	>4\����U>�8(>��3>��,>��=I H=�6�=�*�>��ɽ}�����=�nϼ\�>@e�=�p�<����箾hÈ=zz�<¢�=|t=���5<;���K�=���͔=�|�=m��DCʽ��ֽ���΋=���=h���k���r���ǔ���f������;�ơ=u�7>p�A>���=1��=^O�=+���=ņ>���=d�l>�}���;���<�t	�(�	<��<��O->���=ydz=$���Bн�jZ=��<���]}�(ay�#�=#�=��=8�">��`=M��O�r~�3����Ϊ>�q�z�f=�:&�k[5>���;�=c�g>Dɑ=!82>m
�>�9l�H�>;���>*�=[>wY=�.y����=܉t>c�2>��e<$�)=:m�p;���r=��v�[�+��e�=N�N>u�F>uQ�>�V�=�t�=��>$Ap;,�>���(�>�`�<�ýݓn>�g�mc���X<*���|�⽅U��dg*>�+��#�C>Ӵ��L�&Q>�۽�V>,>��*>��,z��=>n�G>$���r|�=| ���'>�#b�g�?=��.=�QQ=�.�<�=:M�=��5>����ׇ<Yػ=���>[���}&۽4�ڽ">K��=b���p=p��=R�=���TT� E�=�<��,�
��>�GJ>�> ��>�-ֽ�:<��>������,<����W�W�<Ux*>��<<b��_>�w"=깗>�|Q�@�T�NN��j���Ž~̋>=1��e�>%�k>��>]%A>Ky�>�>Z�=3�0>��b>��)=�E[>�>ႾSJB>��=6����ҵ�����T���=��J�#�>v�BQ��Z>5\A��@Ѽ��c>��=�օ?�F�>#�j>�
�!e�=|��#�Ɓ�=N!��df<@lA>�e�=�s��=4>t�=V>��=��>�4>x�[=H]��f&>>�� ����>�>
0�<\}K��P>����F�l>�~�=�R=� �=�,5>j�ٽ�W�3&>wj��3���vH�>��o��11b�;�(=��5=
뽳��<�H���-�=�)��`;�O8���=�9�=iҽ�w��	���-M�J�?�e��>o�=���=�E�=�L�;��?=c>|�=nF�F#�<tǆ>d�>x潼���>0��H�i�[z��7�>�|�=�����(>�Q��ء��*� ���bϽ&�N��i>�Λ>Ao�a�k>�>�>p%�<�`�=���:�]UR>�B���+8��)�=ī�>kV>/X(����>��	>L)��)�<RF����>��0>�	>+@�<x��=�!�=�[�<�_��}E=�Ul��$>��<o�]�U�<\��;3�>UF��ϼ�ڃ�"E;>�	<h�>9_Ľ�xоLXd>����ʴ=�꙼B,D���>Y�=�m>i��=���><HԽkU����;!ȍ>��
= ��->T>��8=K�=4Q|;k�>�����E��Y����BX=&K=�R�>�h��Հ!�����,�q�c<�=�=�v#>!���l�n�	=�Ou���.��{��_.>�7��hp�tAU>< �=R�U=:��<~:�=�� >�~���ĺ�=�S��4>Py�=�������=��=\�=��p��u�=��=�� �=��>�v2���<DS=4�~��3ۼU�=��/=�<��;@J=Yֿ>�D�=�y>B���`?�A6>	�����F'h>�F�@yX=��7> �A�M�z=�����,���=Ɍ�<1>>�H��7�=?��=�>����>��=>a� >�*�����=�գ=���>�*�=k�D>ojǾ���=pZ�<绿���F>s� >��u>cN>0Q=Y��>]��P�P��� >�P>� i>��<T�>�6�aw>k޽�5=uLV����:r��Q�1��>ɏ=a�f��.�=������>Ҍ>�B#��de>gD�=-+�&d�>�a-�s�Y�?���
Q>P�>;�>���=��=C��Ѝ>z>g�>��<������<q>�˨��K��Y=���=p`Q>dZ}��u潐�>!���9���4>~r�<N�=T>X�:>��=�3���I����3=b�I>Nн��C=7�W�	}2<�a9>�(G>��=
��C���oH>)��=L��:Ị=����@N����A��~�=�y=�8���@�P�>�O=w�=ͺg>ˏt>�j���aV>�i�=4�>�:>��{=��u=S���مJ=�豽 ��=A�=�A˼

X=��1��W������>��y>�A>�2;>��aC#�$��<��x�e�=>��:���=�.>E��>��n>?�߽�ذ=& |��.=��-��V>���pr������Rd�>n[��~�=�,>��5����*oh<b�>�l >0�����	q�\�=@(����#�/�?�5���&>��!����>.#U>3>�2�>���\���f���y�ꢌ�׫<���z�+	���D=��=����>�$�J��j�>�>�ҷ�i4>l!�>�k=>����*[>��> ��<[i�=�
%����=�K�=�H��̽Ȱ%�1 ��������]+������S8�>d�m;��C�4"���:>z@���K��<�M�=w�>��>�s`<�Y�������u�W@�=�(ݽʛ>�¸����>��=�Hս~�=B�;p>]+v���ξ��_�	f��l���~m�=�G�
p
/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/readIdentity*rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
T0
�
(rnn/multi_rnn_cell/cell_0/lstm_cell/biasConst*
dtype0*�
value�B�x"��	=��|��6�:Ib=��=��>�s.=o�>�j=��p>�S�=��=�G�<�	�=� �;��={"=���>���]�=��=�
�<<<J��<�6>x7�=��|=+�A=�di=���= w!=(ぼ���=��T=�c�<3�=1R�=dȽ����x>�&�<�0H=�Q�xW�=Og<p�Y�f&]�W�=����b�<8������<=�޻�G=��=ݶ�=�\��M!�@鉽�==�����6<#.�<��Y=��>Rh2=֋>�Y<�7>ڨ�<Po�<Ȧ=�{x==��<Ng�<*}'=b�����z=M =��=~�<9�=��<[��=��=�im=�C2=��=��=2J=64"=��=�=�g=W��>��=��k>��0=E�=3y=�&��%��0�=�9�<W>=���=o��>!�����5<��>X�<�ټ<e�=i�4=���=xz=��Y=���=`c�=
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
value�8B�8<"�8���|��=D�6�v72>�/3�)->�i�=���<��3>5|>��<9�d=y���*�cja>�4>�)v>ad_��x����>�ʔ��%�C+�=Á�]�>k�O�
8>���Ut>'�]:�k���,�9�/�|jt>��=��3>扫��Ǔ�k�>Ѝ�9��V>P�n=�2�<��A���@>����1�=k�����==,=����qĽPS��������=�Qc�7�z�@2�=��=��7=�z�O�^��1=��A�>t:B����>`�������M>b�%�	�ż�)����������*=
0��O�<�I=��v���`��T�$Ե=w�>� ��8r$���?>�ך>����鸽l�>�W1>���=�b�r������>Yk�=��>R��>DN�=XVE>�Ǌ>�o<U�̾:�#�Q؂>�[�=+�V>�ȅ���=�<�瀽���=R�=�X@���:�!>�g=!�u>5@�=j\D�e��=��ٽ+3�=9G>�8 >��j>�v�<�����[;��|���ҷ�=�>S>��ӽ���=��K=s��Ǩ<��
�� �>V�<�A>�>��%�鴎:\���0Oo���L>"�>q|e=r�y����W>-��]���x�>/i��e��:��>1�_�Z�x�J�cMj=��*���\}�7h��ۿ�=Ĥ�Rq�=��+>�7���;]>����v>b��}�e�O� 퉽'��>!��{xa= �=��W G��\=��4>A2�>�鴽R
>��ýv�d�=�̺�SoS>�>g�O>��K�b���׏�:�e�n=#��=u'>-��=�ژ=�_8&>D>��M>r�����)C>�Q̾���=}'"������s��6�E>|C�ٖ�=+�ʼKX<�w��>Q�6>�
>�������=����i>�[�奒���.>�����>�?����>��o�v3>'W�>p��<�9��^�=��j�rT��M4>A���]��dv�<�B����P�U>��0>�܄�1f���:
�0߾xI��$����Q����P>-XY��Ky�~��aG=V(��K��1	��v��Fպ=^�<��۽8���� >�ͪ=� Q��JK<u�s���I>�`�=�������=�� ���F>�e��s�v=ϭ���(�=S��Jϼ��>���K�">{*�3�G> =8>�Ƀ����+9����=S�:���9>
=��y>v��>ƫ߽<���6> =2Y���Y>��=��=��=�>n@���ǽ�X>�hu�9n>4s�<����hon;�}��Ö>���꼅��5�>��U>�Z�=d<>yf�Y��=�YQ�
&���a�C���ɤ�Z����z_>�A/>o�ݽײ���g7�BB�<uT&����I��=E/�=3;���{H���
=�9�<Y*v>�T	>�- <=��>�m-> �[����/>}��=m�=��[�+��=�s��iq�=@�p=J�O��1->�m�=�)>�8�����׍<]1�#d>`۽� >�N*<A�޽ߧ>s�<��=t��j�H/�<�qY���ͽ0(�<�S>W ��=r>�(>ٳ=����T>��%�MX;���/���{=�.�5ׯ�!Y�=:�=��>� �>�����Ӽүg�G�<� �>ԕM<���=`�>�7>���=a$�p>�(> G6>�ͽ[S=��guJ��%z>j�)>�|=�to*>$��=d�Ž=���\���P>Q���lx�D�s>HW��Y�+>yL���__�G�>�����>��-�Z���\��q�=<��>�K����<���ەq��)n>3�Y��4��G�'>.o">vg�=��0�YE>��K�t���$�����wb>��>���p=��>!!�,S�>�a�=8g�>6Wj���,�8>k�1�|T��k�ν$����鑾g���X���?>�w���- =�5Z> �=
�=��� �=�<�������eZ����<�%I�젪<�:>1u>��h=ҷ ���Ž����ko+�5��<-�<��-==�¾�/�ŸE��*��fK�,���[�=$�l^���e,�����	v��ˠ�����>���������͍����@�<����o��(�Y�̾�V�>Oy������ν���.l>}L�<��=��D>v�I��[P�!w>�9g��k�;��S�7蕾���=6�:��J�<Q5�;��ӽ�x����;$��=>���=aoJ=��.�ɺ;������=���=�@������!����=f��=�&>r���%�>�����~a��ʀ����o	>���>�O$>��>!>+�T�燔=�4�>�>��=6D½K*R=;+�>T$�>~KԽ	ׇ>���@EϽhzG<ՠ<=�*8>��)>��=U5��Yy��8>�"ɼ��<��]=]��<;�%��K�ڽ���=ˎv>o��=g$<����,瀾���=�'����z=Vݬ<��4�����\�>F��;Ƅ<^ޖ>6���Ȭ��"�;�l
�!NB�J҈���k�ۗ=��>9�6>��Y=�&�����>13�>��#��k��P�=�bU>�T�=��=et5>zw}>�����="�>LUh��j>��ڽ�=��ב�AR"<�6�;���b�>��U���>�����%=2;�����<'�ܽ�ʑ��	ǽ	�j�-��A>j�7=��:��S	���t��1v(�zX>V[-�~�L�0c>��;�><�>�Y���=�c=>�M>'��=^�����=f��옷=ў߼����%>�Fn�I���)j=�hx�5%;+��Y��=Ǵ"=��d<�8�����S�>�B���I�<��>�+��Μ�$-_>cǉ>�i���A�<��!�ĺ=���#Y��*����&�9j"��<D�����7q�&�7;a�!��<t�D���ż��=#\ǽ�ƹ>�Tj�R�����'�����g��=_�㼩3@�L���RY=2�6>�����z�>���=I��=�1⽬�y���<0�z�Mi=��Q����<[%�����>�Ń>.��f�[>L����k�������M>W���z>�L»�ה>�g�;�tq>H+�=�6��%���ϊ���z�n*>|�<,}�=�C>9����=�Z/����a��=���Zݔ>z�]>����(>�:��6��=��Zk/=D@�=1#�>y��<��D�~�½�I<=�h�����=@�E��1>��P��F7��H�>y-��@���`�>��C��W<���u����1������ >H�>)�>�>1���p���>�����Ou�=�==ќ�>�jĽ�G=���o��;=!�}�����>�,>l�8>j��=A��>�=�
]<'f>A�>� �>��F>��K���>Oh��|=tq=�>>f�<�6�=��H����><*�.j�>@ǥ��e>{�B>6
5=�*�`�P�b4��Pؾ�aؾ�u�ۖ��0��0�=�@>�@�<�J�>�2ɼ��,��`���DV���=F�ǽ���N �9{�=7����9#>,!�{�˼L�t�O�=����|����>"N%�`�>tv$=�Q<�B���lF����>��(	��,j��/��d��۔��\�=���=��8>��!�=_H��>���<羀>\����%<�A6��H>@�G>5�eZn>h���r(n=�iu�@�>j��\��>y���������U��=4���|.-�;���&��W^��=3�>v�=n{�=b��=��=�Bn��c�~rۻzS�=֑>�������>�q�����>͡�=�t�,M�P_�<���OF�>�(��Ϧ�>�E��sk7�+1�<7}�>�k?�������=o0�=� 6>/�2���=E~>9�W��.g�� A>U	��S�,>�J>>d���=�n>s�3>�͝>)2>y��-$*�8JB��f�>WN�Ў{���t�J�N=��≠���1��G]�=Ql�<T*>��?�Τ��o�>�s��/W�dw@�-ɺ��<>uZ6��22>u9>fb>�4�=��k>K��>��Ҽof��/~	>z�i���>iJ�3'2=3J#���>�H漚�a�0�8>k��<��>ٸ�;���=�P =�a>i�Z�X�n=ׁb=�i�>��F�2�:��qQ����>�z���U>�9�=*p=q�H>�[��ڽ�L`�p�5�Y�پ�,�=~��=	�뾸�w>�ľH>���-�.U>�d���оz������#��H�:>��=�J��MN>���2/�>\��^�Ѿ�J������-�=��f���!>��_>���>;>��%<{���w�:�J�X㢽�j����Ž%�L��z���9>>�:�5����>�{e>��1��=�F� l�S��=��=F�<�,>?���a,��o>�5U�q�����4=��X��Д��\�~�>�L��`���ʣ���I���bp>W�\�$�ɻ��*���;�1?���2e%>��)��ؽB.ʾ��>,/�?��>��>W0ӽ���\��<Q'	�ܰd��&=�=����=a&>8��]p۽5�N�%Z<���ɽh��;ќ���ʕ<��Q�tᾎMg>)8ս�<�B��=Q�ӾiI>l�d���|>T}����?��ة��$��=�`��Ҁ=�>��u�����m���o�>�x>�u=�6�/m	=��=���M���(��=+f�˼I�7���]@���>�c��>�27�4�*�}P
>��z=�D�������d��%�z��>��7��h�2���x�>�>Ì��� н�@">��,��P��碆>ܖ�>t���U7>m��=t>���>���=����=a�:hz>�gP�r�T=bi>>��3�GE�>꘽\ޔ>�_-�~�>�u�=�,�;���=�->Q���e>�x����=R��=A
E>��J��G�E��UA�<(x>Σ��R-}>�n5�f#���n<�>jO�=8G�n���o>t�2���4>�J>Ұ��Q�J=x!�>��?>-���yH>G��=d�d�֣>��������Ȗ��ю�5iʽpš�?��>�
>��5>�ᔼ!��>�>J�@>r�i=
��=��k���,��=�s�>5��<�z=[g��x���>��>�Pm>D6\>V<(>�H�7��>�~����4�w�=Z6��32�=֔=X�&=w	����=��B�Py_��Q���~�!��>Ӎ�<h�|>�+X�Q�>A>�Z>+9�q��j ������JD���#�+��������%0&�p��=��:>��=zy\>��M>�m��IƼmo]>>O�̽��]<Ɲ�=H�8�'��+p�H%�r��=�>3&�=��=}����Yn>Ԧ`�i5�:y��i�i�Wm$>Nc���Q��֍ƽ�[A�w܏��A!�c�>�b=eH3��j����*��J�>?+N���=ƪ>�d}����>��sO>��k}B>��K�c5���=�.>\�(�L��LC����ż�ӟ��`:��Y�=�l���Y��㳾�9=�;���~��]�<�r>�3�==�l��G��jk��А�=|��®���U>�+�h� ����>�᥾��&�<~�h��솾Ĳ�>���s����l>�o�~aǾΧV���t>���>��������.����=���(�R>�1�=����vs>v���м�nԾ8��:�ξ���>�du���v���S�O\ƽӞ��D��6��h���Ȼ<MY�����q=r���8��8�ֽ#��w����5�=E\�=��>�c�����=���S�����
����b��$��=6h>7���fǴ�����O���=n$�=�e>��h>�Y#>pOe>p�>ʏ�>T��=�!Y>;�v>�T��w3>�`ʽmU��bF>�^<qe��E�����=�+=�̽��->Xu�=��'>�A�=�u]��>T�>����̾>��!>oh*�b�喩>��O�̻!>R��=1~�=-iP>>�>\V>��>&�n���>RS>���=�G\�3�p�݊>qAt�f�G>��"�K�>�m�>��Z>�n/���>�sa���E>f�A>وl=�o��`�=���=W��>�N|>�.�s�;=��g��>��<Z���%�6~>�葾	Z`>CP�=�*)���3����c
���^>\��|�z>[�a>0B>=nv=J22�R��=�@&�_ �<�l+�����>�i>��	�j>h�>� �;9��=5T�=��;>t,�䨶=+�a��k�>�f>�3��}�����H>���ν�<>�w.���0�6{��rr��F�nCB>��>�Ǿ��C����C="h2=�W�<�{>yE���;�8>tAb=G�����=�k�=��#=��<��r�ڌ>� >10?>���<ҽ栳���/��L��{��u���i�=�Z�=��=�M=iZ6>=og�1�ν;�K>e�����4���5>�����.۽`P�=���=u��y�*=L����<��=1���>[>�V>�c�>���mD��9�"����<>�\�;�&4�����n�Xl�=�l�L�{>մ�m��t�v<�>���<��J���>�P�>��Ƚq�I=tJ���!�=g�>�n�>���<T)>���Z�=� �=�N�=��̤þ?ʹ<����k���`X� m*�M-�=�b�.A/>�L׼�?>��)�J��=�{=EU�>|$>Wp�e�V=���ʪ4>���!�>oۥ��>��_�� �>�4ڼO�Ž���=J<>h"C>E->��:f�̍�>�DE>�)��P����ݪ>"A=��i�����ʺ��e¾��E��9=��>:��=K�=����)�=�Y>v=->��=6��>�����<��61>k�%>��{>#���Z���>~�i�9>�Vc�{�f�Q�@����>�*i�sn�;��N?d/ǽ�~~>��>�b{>��>���>6�+>���W�9m$>o0Ѿ�x�>9��<�C>����1�>�:�>q�S�}>c.����#p˾bc[�I���LB >�'A��ݼ���I))���>\~�q�O���<äɾ8j�XL�>ڀP��Fd>xy=l_���=��=i��>M O�T�s=sct�XZ�Bͦ�
U
dense/kernel/readIdentitydense/kernel*
T0*
_class
loc:@dense/kernel
�

dense/biasConst*
dtype0*�
value�B�"x�.�Q/}<�.ϼ�ܬ<x�
�ʤ=��b��U\��V�<c�5<1�����<�ڻF=}��d�:1y�<�ʪ< ��;Tt�;�<��KH�=>n3�x/�=��<Nd=J2:=�<Z={��;�Oq�ƶ�<
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
value�B�"����=�F�j��D�>n��=�57�
]ξiX���?��N��>���>-"ݽ�CL�ٻ���*j��� ?��>x}���ˤ�>4C���>�E#������[������>�r���О�)�>v��iH?&�]��v>��>�Qb�;��F��>Ļ?ը>��?���=�پ�Ƚ�C�=�}Ծ���2v�>�kM=޾ԉ�.0�l���E�>ǉ���n>� �3Ua���>h�ʾ
[
dense_1/kernel/readIdentitydense_1/kernel*
T0*!
_class
loc:@dense_1/kernel
A
dense_1/biasConst*
dtype0*
valueB""���<
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