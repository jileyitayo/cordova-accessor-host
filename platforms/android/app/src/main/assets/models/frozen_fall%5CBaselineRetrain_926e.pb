
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
value�B�"�Қ�>1H�>�G�;�#/��.r<�	C>��}��V�w��=�N�H.5��>�Ь;p朾�þ�yq�	��>���>���>�:>�7��Ͼ����uܾ`��:�>�ԩ><{�>��]>��?���=2y�>lݾ�G�`�=����c�����N���*�=pY�>)��>G��>�\�>��+��>[�3=����L�b>�K��='ʾL��>C�_�ž"'��'�V=�g>����#�"�ծ�����e��>&eʾ4���^)�>ʡ	��3���Q�=D ��nwǾ�a6=����/� ��4N�>�]>��q�9��a����>��?������?7 �#]%�P>7>��>�h/>��
[
Layer_1/kernel/readIdentityLayer_1/kernel*
T0*!
_class
loc:@Layer_1/kernel
�
Layer_1/biasConst*
dtype0*�
value�B�"x��z;፷��k=	\>c�=���/ܾ>�;�>o`=i�>H-�<0��<*F7���=p��=Լ=�|���y<�4��JK<̬�=Ik=������>���=��C�=�����q��4�W�
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
value��B��<x"��Y����"����<���>*�!>�B�=�1�>r�4<1���Pœ�C:;��&���N>,���P>`
�=�Xc>,媼�~�>s}�=?U�>u�������=��c->Yq�>��N=%Ȃ=��2>E)����Z����ݼ���=>P��LX7>�ir�{�#�8-[��YA����<�Ü=��U�`�<���=�����[�"��=!�]>�>�8½9�r=��H�!���X<�M2>�҈�RdX>R�O=d �+,6��2�=�2�=� 2��~��3���=/�M��a*>�\v=�'T>]ZQ>�] >�b	>]؍=��D�~K�<��R�um���iY>��h�?悼|���>��=-u>��8c���/�>��>&O��L��=D,>�B>Q=��:<���=��<i�]>�t#��aN<4a>(���;����^>-�<d�=£�=�tw>��>pa1�8w>=��=d��\������1>�W�������M=3����C4��E�>f`1�5c>'c/>�I��u>��>���>ϰL>8���+��]�ǖ,>o��<�u&>!�O=�>��=#'����;�m�:m�=�y/>GX��� �>�H��걽�t����<*�=Lr�<>[!=#AM����=F��=�P>��k=F+�=�\"�<���(���S��=����ξ^>��<%��=�>3+=��=�R�R�5�$1ܽ��=��=�=*tŽJ� � ��;+zB>|��K��=jM+�M�'>��>�.0>��=œ�<q!�y��zؽ��t���=2b">��½)�V���>p� >B^$>�3>CB���:<4���Q(�>e���̅s>��v��R���k�u훽�a"�$�>'Ji><+�<ݐ�;�O�+�J>[b��N���:��=�9S>ެ.>�*�=��R=�@���u��׽f�>���>=�>��Ƚ����z��G�<;��H9�>@)>�k>]`�=*�'����=2�>Y�o�v,���+p;RI�=<�w>^4���W�
��=��'��Av��ޱ>w� =��7�$I=��r��ݙ>u�9�x�sN�>�ܥ=�N=���_L�߰�>���u	 >L�������+6�	�վ�<�� �Wx+>/�!�'��=���=S��o�
=<�j,>�~�;NF��
��6�<E2>�y��]�Z�>�iO>\}=V�_> WܽPU�>m���H>�sT�=P�$���=˶F�2D�<���EN>z�$�j<���%�?=�	�=c��k (>�-�=��<����^��=��Y>�Rk��4�>���>,�O����=�:>1�.>F0�g��=o�C=��>�/�?~r��௽��S>V�ֽ	H۽�P$�)�=�c	���i�Y�t=�<����~��N">K�Ľ'�> ,�B.���˩>c�*>w�>>���>��=��=�
�=M��=ӄ>ޝ�>������U�w�h�w�LLT>���<AZ�\��=>��	J�=��==F> >�B��-O� ?L>%��O��=���=�(w>y�=b�{>����1H>($q>y�νЎ*>Yn|��ň;�s�=�1�T,s=v���{��\<f=0hӽ�����v����>!nd<��/���=���>�]j�t�G�Zd�,�s=���.��9�����=�� >?��	E>`��>�!�˃E>@�>>��B�m�s>r��=��=v\(=�]�<���{�:�&G����
��>�����?�����>�X>q3 �Ǐ>��
>�9����U�����=���>z��=Ab=�6�>K�
>y����;>�!>��N���=x\(>S98>u�'�^��Ƭ*>�hw��8���w>̉��>�,'��Y->;$�����">�f�>�2><�q�>�Ĕ=^c}���>7�<�]	�Wa=⽾����>>���__c��O>Ͽ<=�=
�$>#xE���>��o�]_�>�H>v�F���8�/m�=��@>#mU=�ż��ν 諒�!ݽ	�Q=��U>��>>�R�͌����=n�^��>�D����=(�㻡�#>-:/���>��Խ�d>E�>L-�<���=�ࣽ
�#�=->�_>�������	����O�`�*>�]����$��e>t}>�=�`@ >eD����>�5�=�����4<��>�a;)��:!�G<�RD��=����7�:�YM=ܝ>�%V��=���"U�=�m�=�Jν�%�S��'����=�������<~��9�i<�=��cO�=�|>��;"*>�Ӎ�o@�=�-i>�_?�S=�%Q��u�=�s>ؼ� ��>�q�=ƿ�>�:>f��{L�=�=�,�<��}=d�X��7��p�\�?��>��=����u����>�%�>��>���>��D>B���kT=v}V=g�>�FH>�D�A�,���>@~�=��"��1s����U���L0��$�=Ϲ=,��ہ>�.��BH�U>�^�=���=a>�j-��c�=���>��=dM�>w4y=w쓽�W7=��>t�=��V>DBֽ��=�O����=ej��]���&=����?>��0��)�<�h��x�=��Y<�9d<�붽)i�>�E �nI˽��=�`&���7>�;�=o��=�����Ss�=`�e>�{<gl=Ԍ�=�\�s��=߾<r��<�W��񕋽�F��h�=�f>���=9O�<M���.L>�}�>��=���j�-�rX��}���>ڛ{��߆�e>��	=�+�>	�۽��=��Y�Ŵ�����=�K����=��.<U*ֽ������i�m���Y��>HE�>��@>���Y�n>�
��}�r:%��=�?>,�?���C/>�Q<����>��<c7����\;ｙ�=��>�Q�=Mt��>�������8>�&�;/7�<
�=ɤ��*�>�9:=�>�>h�*�'��=�T����>���4�=�-�xƨ=��o�rj�<�h�~�>hC'�h�x�Խ2��X��>W�=ZG<��cȺ<_����4�V|�W��>�@>�T��+��,�2k�=�Ws�5��������R�s���Oo���־��7<�����ֽ�>�C>e>���;+y��bE�<�K5>�!->�∾�>қ=��}=C����D�&�=Y�	�7��pY�1��J03�KO>^����=�𛾺z,<m�[>o�">��2>i�X�����WI�=�?a>2=��=�I'��2�=o�>�i>zѽ< �y<L��=0��>�,���E��S4Ҽ��1�
��;��&�~�>H��=|>i^C��Ԕ<���=�>��>?ܽ�b7>��<�Ex�b��>��>x�=7��<W�=4B >�d�>�9=<0�]��[�>��t>D�H>9��1�ܽ�Z�<R}=�l��0>����p����>�I>ɩ�!~U=���=������t�a�#>.Ë>�>DƖ���=\�a������V8�<�=��=.>C��;�W�h� =[~x>h��>����Sp>a�]��B]>B6$����lM���6�=�PD�a��=W�%�<L`�q,��j;���)=ES8=g$&>g;��C<��&5<m��=�
Q��<���=S?5>��,�3Nh�fzw=�|}=h�̥1�= ���rS>A�~�a��1�#>C�#>^X;V�T=+z>F>6�?��$>}�A�|$>�>|=<sR>����c���佘$)=,�y>\Ň=x��=J.>廉=��=Gxd< �Q=h�=,�I>�.Y�}z�=������<c>���=�:�=ˉ>O�>�=��i�G��=c �`'>�mS�E�=�E�����=(������>w߆��Z=i%T=�K�0�<T�����$���>�U�=JE���~D�=`m�=D�=��=���>Q>���=tn�=8��=��=>�>�὾^�>�V���^���>��>��@>���=��u;��:�� �<���$����<`?a=k��<��>�ּ:�j�|%�='��{���@6>۹<MɈ����;�������#��|�彐��9d=� ��8f>���w��<��p=��=��$��v�2B���l2��������CFžj	>Ui�<�Z�{J��]z˽,d��bӸضH>.�Y<|�>6?���=A�>��}=���>�zE=�w>L�v>�YT=�|��,�ߪ�C�� y}>+6>�bɾn�\���u> g>��ʱ���Ϻ�+.��7/��k>�׋>�EZ=0�<
.�<��>���=��t<��������H��ii>����=Y>ܙJ=����=#+�=�O�=҂8>��@�q�A�@i���)=�,�����(e=�m����@�=��<��f���L��C���k�>�T>O{e>{'>k�=}C��r>X�=�ް>ϳ�2x�<t�X�qF5��	>�A]>f%M�t��5߁=2�<;A�Z=�=Rg	>�<bn�<+�?=�cҽ�����=��G<�ý�}�=����0>��=��\>L�t�;S�=��m>�b���>>l�O>AB�-󶽘x�=�cc>���;�=~�q��=��<�e+>���؞��7{����<;3ֽ9<+���=���=��ҽ�?���H> �־���嗀�����k��
�p=����l{��S�>Mb)>N�=���>�Օ���E=�0V=�O_�흀�̉�☲>V�����\��%g�*"�;W`������=�ES�������f�a>�3�=�=4?۷"��z��:o<�n�=jo��1H>K�B>�m=>��;ܓ>"#=��>�l3�خ��|�/�����>�L�ý�Z�>�Ο>�`=;>��=��S>O>2�����i>�e�]=Q�����8�P��!N�Xͽs5�>M&�������D7>��s���h>�_׽�G>��;Jbc�G6=>���H�<p�f�At����El8>��> zW=y5���E>X&�=XY>M�=�$>�bƽOm@>�Z=N�{>RX�=���R�"�K�Y;K=ʼ�=|�&>�߽C=�5��%�%=���=��=,�=4�D���W�>�9C���ѽtYӸH?���<�[|=*�R=x+��5=�=�߽�9<*.8=��(>��b�I�>���<�\��]��>2x�>���_�*��F>�Z����3>��=��0>�}�>(?T<���=߹?>Ә����q:�� >^J�����\�ﻍ�F>��:�d7̽r�R=P�?n�>�����:q���>t��"I�<�߼=�J�>�?>����~�z;�:0�=��Q�ڽ�#}>8>�+<�+�=G��=���^C�;0�V=��O�JF�>�r�=򈖽TG��i�$�*�=�l�>}�1��Q>ç?�s=N��-{=��N�&>��@�j��=[f='%Խ�>�ƽNZ>�>U�Y�><�3ռRA�<��Xm=��;=g��=5�j<�=i\�=���t7�=|���S��<��2>�M�rZ��d��?�=K�����O=��I��8'>��4��Խ/�"�tn�>��=�?>xJ�=��7��=>�5?>�`Ǽ���%���Q
}>��½C5Z��O}<f�=>��4���>����_�>��Q=�g�G�>ٟ�<�]l>\n�=����܏��7��!S>=�^N�b��=rmO�:"�=���گZ=��V>�~:>��=�Ņ=i����ys=��x=_��;AH��q��=g�>�����uֽ%G�=�_��_�"�uX� �a=���=u�)>���[6ǽ {����=E�I�7��>ݓ�>, ���
�>d>�0�=c���獾ň�Y�g>�_t����UJ,�Xi�=2J�>��>W8�=p~\>�Fq���	�x>0�>m�>\'D�H�ܼ�>P��=��<B)���{=�]�n�>�$\>fѫ=v�-=�*���e>úV;f��=_t�Gg)�ɬ�=�[>	�6>��>Ƴ�=���;T���=Y���g��t�T�F;�>��Fg>����d=n>8y\>
��=,s->f����=��=R� �֋0>��P��a<�B���{�D>�ە�9���!>�r�=I�����=�R���ļo���=>�=J>_�l�Ȑ�cT���=�6�2�h��G�>Y0���>����3��w���
��f=�>ƙ�=��>˂>��f=&��������ؽ/o?��,>l&���6��5�>* =fճ�'㎼~�>��C>j��Rݽ��ܽ��E�o��=(ˡ��A�<:��>To0�s�>Ҕ�=�(U>��%F�Ū<�Q�����)>����]��o6<F��=��<�s����>o��9/��"����=!s�>��>r:?���/��8>#�>����0�5���xe�=��0���L�=Y=P��@��!����<�#�#��)V7>R߇���ռƲ=���=��3�}�6��>����h>?�a>��0<��=�#�=����0e=�M��)&>`�C>9Qѽ�y��5�<��J�7�a�b$>��#��E>�i��<��=��=z�">AgK�4�� rF�1"�>K���<�+-]>�D:=��>tNP�C罍��˽�<�>�w�?�>�!ؽ8��i4>���"�<�(>�1>��������J�N>(9=Di6;Ќ��|��>XH>C4h�7=8��>�@��4����i�>���>��F>��B�{�=Qt����a�a6���ֽ�j�����=�kK<(�$�:,�>��6>�10�nF��H|>��+p|>�#*>o>=�j��N��⑾^u,�J>A�=����t��K}�<��=4�<PfW>��;L5>c;>6����x=��-ĝ�,6!>"ay>r.�>�"='b>�����i>���=���=遀=p2Z���]>(�Ľ��?�nib=�I%>�[f>��|>%]��fBS>���₻��=�o����<y?n>�y�?/<�Ԇ�s�S�(�E=�J���N�=5!��wu�y���>�">Y���e�>N$>�z�&�">11>�1�=�U�>6>j��=c�=`b>��>Lx�=
%����=� >�i=�ݽ��림~�'�hG�=�k�>��=�為�b�>������;L�>�"�>Y��>���>�ݐ�	�I�b��>��S=��<�D:>ws?F�=�;�=Qۤ��k�>pO�=Q'J�lQ>S��=��<������꼋�¢U>,����P��>d�>����=��Z2�:9=e3�=�'>۷*��o����1���ɽ�e�<?�Y�>��4�����`2���Z>�m�=�V��(�<ް>���MmE������(꽒�D>W�>q܌=��<>�T>*6�����=��<�7��)8<��>�/Լ_�ϼ��J=L5��"齕��>_,8>n)�=Z*<�=>*�/��u��5�=�D��@=�=7�M>K�`>E7(=,l�>Nw3����<�|>�����->$s��s�h����n=i~J=B�<>���=s���y>c��=�X6>�g����܀n>ԧ ��7 >�+C>.
�&.��o�<�M����)>�9�c�G���}���^=|�����#>�%�����>,����W�2,'=��<�<�>���>.bȽ���X�>6�>��{}<��?�@,>�B@>,+N>��>U��=A�����=���=7�H���s������JS">f(����]>�۫��'�q�j>z�=��K=���=(��<LO>�҆=H��=;�=��<�T=.�n>,�=��J�0dź4��=�<�>��=PV���;=�s=2y(�!�=N�=�9���۾c�<���u�����:��]��=��L�/.����{>	�e�\q����>�C>��r>P~���=a��/>������<`�a�N�<A5�vw><�Ž��>�$�=9A!��M���Y��I@g>� ��Y����U��>�>!�>q�<>��=d��=\3"�v�< �;��3>�<N>�y��P>�p��=��=�w>ו�=�����M>V@>54��JK�~�b>�����>o�'��5�1>v�:>MZ�<^D�2�N>���|>��U=�8��T8�C�;S��>@�9>˱D>zG=<鵾/�y��v=��`=��c=��%>�����#4>0E����ܽ���`v��Ž�
�=������l; @�S�>n��=LA��0�9�>-�N>6I��}�\<-5>Ms��?��=>Eo>6�5>2.=��s����`�;�uN�BD=&1���6���4Ͻ�������>�e��'>����˽��5��H��=��K=�*;>W_E�#^7�G=�����<�ݶ���Y��K>0�8>zR,>�t�=����V��'v�=�1�v�7>���7�=T��=��d�j�
�e����e�I��>��= x���b�=S��R>}Җ=��>cc*= w���� <��c���?����_=�ȡ=ݪټ�؈>+�>��X�'mܽǀ>�^��f���R�h�	����qS�y(o>%���r%�>�K>��>�X���P)>��e>T�b�gx���T�Lq%>`:~���!�o��>���=�s>J;=��S��˽^��=G�<Xٿ=t���+��=]|����5�CM��A�3��>t>>Zk����=Qiw=�ZJ�uhu=���mD0�bjr>�1>ཿfѽj�=��>8/^>A�w=��J>�"�>�E�I��=�]>8V�=0���Q�O4>�߂��=>㰝=',>_����O���>��<�=tɺ��1>K���ٜ.:[���SF>Y���M�
��s�p�S>��\=����m ����=�޽��q=�Ы;[�k=;\�=�����H���<�.c>�"��+(���+�=Y��d>�7&��N=�s��=�A����J=�����]�=[�>�u��IA>�> �ؼE>�	������h���N=*�T>ڐ��ɀ�<�m���>ӻ<�z=��>Fc>w�Ͻ�P����ߚq>�.�=cfr>*-=ii�>yh�=�/�q�=�?߻4iK��J�s�>}'�>�J�<N�:>��	�f������=|'��2#>�GV>8��hV��� >���=�ΰ�Sd:��=[>Ņv�T|q�ϾtR�T�U>�I>HW�=�����=Ȱ�1;,>�h5>Ҝ�=�4=�e�o߽��B�&�>1n�=-����Q3�BT����M�4\>��#>��=��%���y>�AJ=F��Y��=D����Y<=��1��'d�Du�ZH��m�J�w�;��8��",>��c�4�ս�=->�CJ��_>m�U=ͧ���mT>���=�M~�v�˼(i�=��?��@�$Z�=N�ɽ�I��Or��c��N��=�/>J��=�ӽ6j>�=.��m>\0�>&��=0�=��=�(>
<>���B2�>p�h�9p/>�����=V�4>x�˼��w=8U�\-p����=H�=pd.�n%v<��O�	>�Jm>���i��=���=0o��<4�	�<�鼍)!>0@�>�MI<w&J=
�Y��}��䋽��=M4��_!A���a>��O>�	�=/.=�Ό<��I���=I���EA�����h���E�Ľ��:�w=╞��i�=CԘ=og$�@��������;�=��+�&�P>u�����>X����=�����>��f���$��D>�.f<0>(=�>e:<>����O�=n蹼��?����;߾�=�3U>,g�>0�$=��<�.����>�_��#:>���<�C���A���v>P �;}���s|^>A�ݽݬ�P�D>d��/�=��!<�Cz=�R>�Q3>9�>	�^>S͌<�~о덓�$4�=�Z>5��}(�>�t�	=Y����ǂ=����)��8��=���Z�H(	=[6�>�Ȭ�)��<��=P\�=��N=B4��J��=EP>�v�Q/2>
>�+.>�}�<B���ֽ��=���l>!B#�D�=�)f��-O�?�T�h¥=�a�=8��>�x9��o�X�>v�>g�H��=0S�>aKn=�qԽ�vL�M����m��ǻ�E�y=�b�<n>!閾eu��j}�=�'>Ɯ���we>�J>u�g����={����ｪ��=��:=�kd>6�����g@>>�	 �ߧ�=wͶ=bjB��:�<�8�c�M���^>uo>k��D?�=b�ּۖP>���<,��5d�=�>>�M>��B=N�=���=��=Rl>(\
>��#�c�w=��Ǽl�=7�f>��==`�=���< �	=��Y�8�V>W�V>H�!>Ħ�=N�>B>>��=�=>j�\>���������pP���w="ƙ���(�Kg>�d=\�#>6ʺ�yּ
�����*>��½�(!>�}�$�#�^>�>�<,=��0>=���>�G�=��=X6��]'�8dq���@>�<t�=��=r=��L�=����y�=�;R>��������.q�V5��s�>���='��=l;��S!6>��<>��T��=���>����^�=S>*{�=`ڱ>�}�4�����<�Et=�C�<{.����=5����=Z|;��>�#>��ս�瑾 �_�rZa>��F����D�1>Z7�;�eP>�:���61��@���?=�	������G>~>�w�<XG�=;ʤ�����=��x"}�X���u\�=���.>Sb>����n��i��+V>�"���k=g=����Sl��b=��y�K�M>���=D>�/�=�����)����=r�?�\��=˲�>�ɽ�W4>Q�~�S���"*�*�;�����B�=`�Q>1>	>&�K��t���=�$�>��;)��<�����h�'/�=��>���<�{<~o>�>g�>��=�)S>��5>�m}�N�]���=�N.>��ĽT�>��}�=���=X'H��\n>���=�>i��<I�۾S�x=A},>�"+=.V>�(�=��.�%7�>��n���E��麡��>���=F���;"�3J>��);h]#� �/>*����d>��=�{�O�%�� p=�kn>'�c=p���K9>�8P���̾^x�=���=I�C��z�>ؚ�>�ח>�=�����6���A>Op?=K�=8��팜=l�<s��;�>��K=���=0O>��u���<:��=N����?>3%�X!>Ғ�>��=1H޾���tM>(�8>�!n>����`�=�䁾>彵�<��ż1\���>�Mݽ�����t��D���9�=�b�=]���}���x��= ���i�����=�h�=iz�jۍ�]��=J?�/���>o>��q>m�=*_�=>O=��x=�Ԙ>|y>�m��:�B>��	����=��K�M>���bB:��9>;Sҽ!�J���齤�>Nl����Ͻ�Z ��z>*>��+�}]�>r뢽*پ=/Q�=Ҧ>n?S<�=>�>\�=��=�V)��I>P��q->ج4��Tν߄ؽ~�>Dw)��1�>�cк���A=ELn���� j�=��>���>�1>�ՠ��e�R��s=�����=��l�l�^=y��v��G�O�G�>-6�cAv��0:����U�����&������͍=�ͦ�S>M,>S~<��g>s7�=��z������g�=���� ����h���V���&����H�=��=��=]pB� �<���=�J�����=��=���=@u�<	r�;�
c>�qr>��t�!L=1�=����v3���|�?�l>	Ε������u=���=�g�=�ކ=b]">qeA�k�佩Ft��=�=�ڊ>wM�=i� ?m�=*&H>l7�T�4>j����=���V�Q}�>7�L=s�X��g!��q+>C�)�a�+'o�a>���*�Ծ��a=i�(�^0��>(=�M�>x+>���>&-9>0>	2��0�?=F.�NM�=�H2>��==8����3=諮��3>��x=�|��ۃ4=��"=��y>�}�r�>0�=M1�<��ེ�ӽW�!>��>�>�]�<�磼s'����=>�FL=�@ν���>�&X=���=g
�=&Sk='(����(��>p(�:-r�<2]1>-�;]s��f�!�aT*>����d���=������5��<?r��4p��ߕ�=u�=��)��*>�I{>X��=��O>�\�=y�#������%Խٍ��l��Z�N����=��9����=4j=�JO>hc�=�u�=�?>�x9>���=�O>C�;=�$��cʽ�-�{�*�1�=�*����=4>�u2���M>3Zν�#Y>O3)>8=�����U�:�A��f�=�|h>:�<^�,>��	>������>@m�>S��=�4�>�E�=xj��e[>eu�����	O�\J�<�r�=N7�%�8>'*<Ҙ��v�<��"=�ɕ>l����F>&�=����Ԙ=����|D>͸��@�B��=�E�=d|��Uc�u��<nǜ>�6=�,>��=��"����;�!3��G����׽�j���ཤ)'�1g�=�-m<%>�><7��7�=��y=k�=���=�<<>4>�U7<lҗ=#�#>���=���K����=�U8��ka=]W��=�j[;g�A�6�>>:�>ޥ ���;�%>
>�Y��mB>硊=Ry}�}��=1,���,�0�= �Z=]���)~��+T%��x=�o�=l"9>oV�=��:�o�=��=�JS>O[=��>1�]����=�(>�SJ>���=ϓ�=Ɠ=F�:=��9��9A>�g���.y<��>��=!��=���$��=�$�=�]�=��B(>��<�f�=��$>�W�>Kt>�~�=�����5�=���?7���`=��=V{p>R-A<>>hJ�<uz5>�T�=@�½��=��>*�����b�����������_��=��B�^�e=���=iP=V��<���p�$��|�>��ʽ�ֽ�Ѽ��<��!>�Wj=�� �B�;��r��R~>i�;>��	��=�ֻ<�˾�<�=I2X<�H>>��>]�`>�6
>�l|�H�ӽ��K���n��
>oD >n�k>���=�= ㈼pH;=٣轼��=�:�d�A>[Y�==>�N��hH>��;��Ӈ=����� =��F��[	�	��8-'�!|B��^=�d>jpD����w���>����*>���=�$��M =�߅��)C=�����=a�p��U>ẍ�B>ծ�=�ޮ=���:A��=��y�ֶ��>\R>q�2�U�vl�=���>k���V���1��L�=��0=g�=��R�4�3>�Q}>U�[��e�>05a=�19>c�o=�=�\�MнuW>��<u��=~ˁ>sK�U	��j>8�Z���R��4�>H�S�ǽ�>rj�=���=F��=�2a�����+�<��M=f��=n�#>��=h�H>G�Ž0��5h���8@��g��l��<�����/>�ݼ'KS�QY����=7l�;**>U��D=��<2D>ކ�=��>�y>o�@>k,Z>���z[>��W=���>B#�)���|�6�����b���%>wy�;�	G��>*QY>�B=?uٺ��r�Т=�l:>���/�Խ��J>?63��������R>���n.�	�3>#�>����x*����4>�5�=�"V>�m�=�1��uٱ��鍽�z$=�+�V�Z���;�m�[��#�<
�=���x��>�$�=L�8=��2>��
>���=b��=n��т.>+��</y�>��<�hL=Bn���>��O>c���]��1>���y#�=9��>� �kk*>�m�=��*��,>!xc�&l>����B0�>��>�ǳ��8}�� �<2>���=�ꜽ7����\�>��t>Xc��$�=�ޤ=ݗ��e=������=��Ž&����l�Bb�>L��=��>�.#<Ȱ/:}J�=$糼@l>���A(>vR>Geü�-��^��>����g��<�g�>��G=Ky���r�`�N>��>�>�e>->Ľ�q�<���=ŝ>����dɽf����I>�.��^��`��ւ9>��g<�C>��&�gd;�A>�o>>;���f>����&<lX4�=V#<�>���/T=i1[�~;u�S�L����>M�������9>FҾ�<>z}�>�o�=N�4��+�[v<ޖY�@�>�/R��\G>'&>�y	��	e>xĎ=x|���fQ>�>F= W>P�L>��(>B�ʼG��<E�&�Žv�RMR�1G<�R��=�>���<j�M�x��>I�b=�U�>ᦽ=������ף���B=�ԭ=_eK>��?>$��=�bؽ5=̼�\<=,�	>i�B>?a���>MON�ZB��S>;>�HM�:���p���X>JU�T'>���=��c>��w>sE�-�X>ڽ~�<>պ�=mL�=�:#>@,@=�B����=hۋ=G�F��>)tL>I�h< �8>�o>l>b��"	>�3�=3��>�=ʼi->�$�=���!>U�M>���F�	��/�x?��`��ي�a9ｵm>��+�E)a����=�h��}���=�R|"=��+�oi���p���(=y>Izٽ�W$>{�/�:.6�Xʭ<S�:<�o>�H����>�&w>@1>[�(>d7	>Bu���z>�gp=m�O>�;5>�/S<|`Z�<a�=�%�;4G=rY����� KF>�杽�m�@�F>�ѐ�)�W��+>aV>�7�; r�h|�=�>�� �G(_���>~�>��>���IO�p����6'��A�=m�C>�T���I>#��<\�%>R?�����3U>�<%=Wp!���˽m�Y>]䥼��5w	��E>��=)��`XT>;�=Z�4�eU�=GlU�֛��v��>!sC>����>%��=�B>�-	>d�7�񓒽 �
�z�6<�M�>�Q�/�I�k]>���{ݻ�Z>�=ƌ��Ө>rh��;Լ���=�$���c������&�Y7���n��n)�󨿽��<��>>Wx<��
>��UtA�B���y�6L�=�).>#�����[���T>��A��>)����̼��*�=r�7�5n>d����<����=�񈼟K���K�ԓ� :>�0�]@�;%t=	�<��>B:E��������=�!�=�E���K�h��
PF��zI>IZ��O=K���0=�+����=U�=Ӳ=s�@<�-���4=��E��f�{[T>Nm%=]��>��/�l�U>R�����<E���z�ǽw�ѼT_I��w�=�͕>���=�*�=��>���=i�a=�i>����������J>�*R�9�!>�*�<al>{�>(#�ǣ�=���>*n½]��>��S>1�>*�=�����X>�n>�Y2�D16���>�z�ɠ=)ay�dƿ�]����?@L�3t?��e��r�� 5
>t�=���>����mrY>��;;l����E� �=�s>��/>��>�>@��<+���kq>>ս�m.ʽ�p���=lO�=l��=�y��⩒=�N�<^8��!r:�hŉ>�?D�]�^<}S�QŽ�� >۵�5���O���R=���a҇>�|��g>M݉>�l�=�1=s+&����>�#�&��������>� �]gP�l=$>�q�=V�0�#��<��%����=��R��.��Y���1>-k����<��=c{�=��2�q�
��B}>NYj=1��>�N���=;�>≀��?�]�=gï�״<:�c>�)9=�>�T�<<�'�L�6>e��=6Qb�	��>n����V
����<;�=d�K����=4�=�=:�M���=�j����V���K>w">�����e=���>�ދ>�h�.����{=�w>�I����>�W>�*n��9�>��v���r�Z,�>��|=��'�i{Ž�����>(��&��;��=R�=�f7=�{�=�9'��?>)�=��<��4��7+=] ���X�<@�i��XѼ��ɽ��@����=��>�K˽ ��>F��=} ;jO=__��t�=�v�=/�0���E>���=���>3���n���Y=�->H�ܽ�W>���=]�=��e����H�=�9Ѽ�c�=]Ŭ�i��i!�6��>?#�;����1>�(��Dν���>���<��ӽV��br���="X��xe>��
�y�վ�t���=->b��,��k>���MP>��>R� >Wu�!T�=���<������E=�Ā:�	w>a�P��I>��K�(�����=>|>��I��N�����}��>FQ>�Ǥ=���X<>�;E�S�8=��c��YR>�r>�ɼ�7G�}j>ޯ�>,��=�'C=��w��O��ax>��>����i������aO�9�g=�>�W[���н���Ï����=�[�=�
�����"�2=�ӻ��|>߃>\�v>�#�6���k2=2�Y>��>m� >��>s篻�//�H��=�5�&Hb�Ph2�?@ན�F���1��=�a��BP>����u=��K>��>}r�3��=;�'=��,�齨ۍ=���R����g�g�+>-�>K>�4�0�>�������>G�����>�E��5ݽ~�L�9�A��OI�H�h<8���~>���=�Ҽ3Ƚ��=>�阽|F����z��>��>�gz>{[�=���Ԭ�=�>.>���=H��������=��5�>�v>R��=r;����p>@��=ԍ+=����%(r=�8�������=.3[����>Xb���½o�m>�m<x>�/>z\�>�)=�n���?�&2d>�r<�����/>���W>��$���ּx>u���XlD>�2=��>*��=A�>Y��ؾ�=�!����%>�1Ͻ�wK>ICg>�9��o>0�Lɖ=����J�=J��;H<�W�I@==��K�M�N>�,��L=��4>��c1J>�I=X��</+>���Oh��,>������s=���<�����2�D�E��<����k�=S����>圫;Gr���0�2�>!G^=�E?=�>��(>i�+>��m�У��	�P>d�E>X>>z3�=JwB>0j�=˹R���=;�F���w=�3Ӽ��_>(��=߻L�x��;7ͽ��V= b=~o��5=�QS>��=�[��nm;"�Q>I��=�$Y=�F�<�G>*$> ��i���_�J�d�>u[*>�,��f3�>�A���#�=���=��O>_�;��>W����#1>5�=�>�{}���L=.�&>q�;��=t�=砽���t0>1Y>lb=`�Ǻ�\�<��=k:���+��R>h��$GP=�B��.|#�G�O>E��<<�۽ =���e<�(�>���L�<}!=�9Խ*l:��＆�b��%>J�>�|�C+��=�<�l=g�=�ZA>��)��#���㝾x�����:>�e��2M=�(:���=�g�=���[�+��`>gF=<��=�6�M���F�>��g��0>Y��=:%�i#�^�F>�A�=�o�=e���2�=ʹ�=�'_=�,	���̼�R(����=�r7�C���	Y)>XR>O��=��=�G[���G���>p��=|?R<���=[����>�=ܽ�=>H �=�v���=4
I>��ѽ�>�}������F�X>�r�������>�>��O=<�<����=tk���!ƽYԲ=z�=<$=��;9J&�'@<I�>�a+�F��=|�7=��D��:<�k��6��<�@=D��V�=��b����,p>�>Y�&=������
=�s=>o����=�l�=��V>�0���0<O�=IuƼs۹=�Df=Ic��M�=8^��vt�>��)>���  ��쁽�bu��d=�X=]7�=�ٽ���=��t>Y���r�>�$��Z�1�=R��<��Ľ~?�<��=�)Ӿ�����#�a>��=C)�=�Ls��11��2�sk>~d���x ��%,�nU�~Ƚ��o>j��1�&>���=����=�F�L�>�
�=�t���֕=���T�<U�=PnT=�[�<ح=�8��-
�>#|�>��#>�����:>��=�o'=r��2ν!�o|,�{�=ԅ$���=h���3�߽I�N�gG�;wJ�=��K��&>�8��6�:�L+ڽ�>��<���<���<!��>�=�� >�V��b�=��=�،��4��2�>�˽�r=dy��Qk >��>�҉=N���@MC>ԏ
�3�ǽ�Nx���;�R���q���f>�Sb=�%K=�7���6���NŻ� ���g��!L� p��A�����Ii��|�@/��O���|s>LR>�#0<�z���w�d��<��H���=��l�2��g�_�%=C�=�%���<VB+>1��=ϧc�(}X����Y�]��V�=�k$>W�ҽo=��~�<{hͽ�sB�3��=�ܚ���=7�M��1g��Qf�d�i=3ܪ�Si����=i����B1�Ȥ���HL�N�#>�{�~�<P�=f�V�������=�]�?Z=�����n4���=@�>;uR�%u��aT�=�T��0��ѷf<�:�=b��H�����v>��G��6]��	/=?�ۼ�0 ���N�1�<�>�F> �>�����=w�=ox8>7����#�+>�v`=�J��`���wh�x�>�Y�9�d�B��=׫�=ˆ�� >g��>�}{>^7>�@>������6>b�ǽ�Ջ�N=�����O<�tt>�/>�q�<�ß=h;�>�P=�މ>��=˃��m�=)0�A�>���j��=��;����=�8��'!>p�<YS �(� ����=��^��`�=�r	���;�V>�w�=:��T��,'>��������p��)b>�I>��e��m;�D>/Zս �<B��[�=y_>�|�=
���]�m�&Eý���=�*A=�U��!�=Ԝ�;{}>;�ýN0>��0�꼟=k��������>U^�:Vb�=LX�=6�#:ս{7Ͻ�F<�ԃ>w�>/S=yeH�l��1A_���J��!!<���= �P>~,�BC)���r>�Pʽ��>�>�s�=�j��D<M>�]弾�4��0>R]��e=����^8�)�>�}�<-0���ὴ>�"�ϏV��*V>Ķ�������=G�����9s?d%�>S>A��>�.�=�>P������?�=��;��n>�4w>���<M���0
=�W0���(>��?��>)Ҩ�&�R=_f,=K�h>�v����=^����T>���=f� ��LG=�8�>9}�=�C�=�	>�4��k��
�;�g>�Y>6����x=�2M����=��콍L>���o,&=�'<��&��"�=�s�<�?>Bt�=Pm!>!�_��/�;j:L�˽ҡw>-�\=���=���>c S��y׽��'���#��=a�>(+8>_�n�A:�F�<SJ<-�$>B�<��$����=���<|�i>5q���M<6f�=� 5>\�G=�
ۼ��+=�4�Ek=)�e=����ZL|=�%�>�^�<3�$=����">��>��L>EB����=���=8K*��'=NN����4���]�>��;!��>S��>����?����3=W�>1�Ѽ��=˱=�fV=	����0�<^�����>���>�m>�����<]��>^k�<�ۼ��|=5o�=�A��nh=uN�=3r�<�c<=�R?�X�-r>:�=(V�>��>�.��W�
>�=�J|@=�pR>gWJ�g<��i-��q>v�=���C�=0Õ=}*�=?��-���v�K>{��D�W�Xr�=��<cü�r���-
�Qт�Bi�=��=��=��m:>ƌW�O�<�M��H۽¥�=>�Dh��{�=��>�e���>A�r>��>��=��>�/= p�Bǫ<�D�>���<.�;�=���=���=~f}>��1�< n=^̫=X C=��>>5���M�=�]���P0>�vd=ŵ���-���O>�rq>Iv=��>�����+{>�#2�\�`>�>y��=!KM=W��ϼ�>p�ƽ-s<=�ƨ=t�W��a�>8��/��>���>,Y�>,�>ř�}�n=��4>9��<��.>ؽɽ����խ��^"����=�g���B>������<hU��5�f>��b<F�n>q�O��+κe�r��d�>��=��1>1�~�f�����;��3�b(�<���nM�=si���<+�o>R.ƽ�*�=��&>�а�ui̼�D�JR�o��<R�]����,L=澅<�p=�5!�å=�>�-=KǨ��r:>t��mR�>]��>׳��>��=��^�"�߽�3۽���<WWT��4���=�>��]=L� �����ټ�N>k~-��3���@*I>���<Gm�=}[D�����7�;�>��=1q�Es��N%,=_�4=�>T=|_=�w<�|=w�1�HW��>'SR>�s���0>e[)>�Ҿ�-�<���=K��>�=��=h��<�[�=ܞ�e�"=�O<>N�!�Шb�����y�F������|�	i�>��
>��o>�����e>:��_4>�JݼU/�H�;>����5��z;(M�>�?���\��={�	��6��9���q�3W8=z9�Q �=�3�=|a
�9���:=a��>1�=Ȓ�>�lu>�S]=+��>69:�`۹>$�O>�<�=F?��ȑ�j�#�R��Ư�=W+��b��%#�op���=�>�=TC&>�Aɼ�=�ÂN<���==F���򼇩7��:�<�x���ѽ�`}���C�+�=!R�����<�	A>�1H>FZ���&�5W	>׊.��0>�^��U��=f�A>k7>�1>��Ԫ��Y᏾B⨽@��=(!�=~]1���S>A�j>�nH;�z>�^��
�<���>���=6q>Wb���ݽ!������=�� <|/�>�*��L<�7ܽKZ>sQ�.�G>���>ʎ��w>��Z>Gk=Jic<���=.���>'e� ��>�,>A����S>JB�>��>�a/>S/">(�Ǽ=�=>{,>�
����}с��Н��l�=��۽xb�=�J>�N���( >IC�N�m>Ԥp=� /<y�=S5���>��b=lJ��o��=��=���>z�p}�>
�������=6��H>3���<��=DI��h�Q����<�텾��콪94<2�=>��7�g���n�.>�_��K>W>(A4����=��l���󻔣�=ڥ���V4>�Z�=6p%>!7=dS=���[>�=G�$�����7��eA]=������=aM>��=� >_�=�)>Sy>�0`>�<�<ũ:=+������=���=�)��'Ӝ<2��>v��<�+�<#Ż��ǽ;��7)���;^��>>�	'>�CE=�CF��I+>'��>6�J����=��">�	���t>��m<<�=ݸ�>��b�P�<y⮽CSܼ�üo	�CO�>�~=�ő�M�H>��>0��>KB��X[>e�=��o=�x<Ư��%>+�@F@���=�3h�����ՅN=B	˾�-�G��;cw�GH��l��=�f���흽�G��4�(<��=NPK��!�>f<L劼hB/��4��Tҽ��=(~�=�sK>��G>��>Mc.��k6>_���;�=��>���&C��2����|�e_R���m�N���t[=J�ռRm������:���oB>�)���W�>Wu>Q�ཞ����,D&>���<[-�=b�}���;Z;>M����W<�&�=*h)>��6>럞<�b���2(�8'��JBs=��b=eK=��]=��!e�= i0��B8����>g���I?��[�<c=�>X&���Ҿ�=�15���<éZ��9?=<o=+>;�<w�({����>�@{S����x2a����;u���=��:�$=���=J�,=��.��ᐽ��S�P+�=e���y�I>��Y�m�=��q��w���J��O=��=�O>�f>V&������G�e��T�>�`2��D�����h���0/>j|�>L���*�=��{��O�>U#�=��Z��.������a�>'l?��'>9��$�>*1����={��>�B����̊>���:��=Ϧ��E>����n=��	>e�6>;閽��>VhE�>�|�8����p2�]�%=Yb`="�����̱���U��?�A%
=�x�t-���=�ޢ����=,�=�0�=��*>5��=�9�� ���wFܽ��v=0�>�h齆M�<B����<��	=>Y0>,�=5�=��<�:<>��}�,ȥ�	4G>�j��w>��S��p*>�f=�< g��Cـ����M���߼��P>�Kl�!� �
ե=�}�#�9����#>�UN�׌<�)��k���T>�Ƴ����jm��=�2�=6>R�"�$�z>_�I���=\m�>��S=�,��a>��=�q����N��W=�8⻵ӏ>��=��ּ#?v< 2�;�'�>������*�=�xĽ"��=-m>0e$>>U�����T�ף�=�a�<�ء=��۽�m����"��.�~���%��k��Ə��L]�>����C�;O���3��CW�II^=���9KF=D�S��^~�|�ļ7_ =�>I���=I�c>����2��=����#�>�� �A=�R��x�=Hh>^�+=$���z�������m�>�O%��å=�g��B���w<ܢ���ݵ��jc�XG��hI��wF�-<0��F��v>1?�='ķ�qK�������>纚=�A����=鮉�0�:@�0>%>+��=~i������a`>��>b�>epڽx�Z��5�=��=���<�b	>��~z1�X��<��=
-p>����J=z�eBQ��du�� �=�q˽��>�(!>�e\>"��/��=߫�>+�1�;=e�S,��U��#�=�&����=;�\>��"���=4�h=M>�do��=a�x��]�A��=��V0��N���W�_��=k��>�+���t������=l�>�2����>+X�K����?��Џ�v`����=��q���%=��>�*¼������=/��#p(>�s>\�ɾ4�����*�g�P=���(�ƽ��>j���Z��<Y�2��@����>)?9=�K��em>��%�lB��>󽸃��^`�Y�D�j��k��Z:��D���=�=@>ZL(��:�=�}��`��=�և=U<5>�<<		>��1>�Y�<.��>*r���͙>�{��>�;�yO>�k�=����Nʽ�*R�Ki�XF��K�=�et�5z>B�H���X=�\�</.F>�WP�>�{�=V"����=��=s���G��xnT>򝖽}>B�����>�p]>N�;>u���ʹ�>Y>jf[�B0(��꘻n�z=�����1>�>9va=Ԙ�>��g>���>{�>D�:�Z*t�%�~>iB=�	�=g�>_D�=���>�#�=v���w��=Rc=|86>��>#��<�����=�Z=��p;�A	>�<�i��1����2>�\�>�_Y>�P<k��� W>�Z�+
G�����S1=�'>�ü��=,˽�?��Y�>���>�ۅ=��=p$=������;P�O=/�Ƽ������=���;���=G\�=EU�=��]>� >�{>}��=Y��=%W=>��3�&�I>�C+�kmK=�m�}�Ͻ��F=�Mt�N�t�轕�@>�"�=Ss�<�->O�#>� >�T=���N)>��@>��=ǽ�>�Mz��̌>��i>s��=dx>m���/S<����ˡ(����>� u=o��>h�=]��=Q�S>~��D-�>��>�	(>:>�,���_>��������W<�=��>�?���$>�e>�<�=汢=�R�M�%>�ш�b��ԯ=�k>�w�:�	���l�>��=�9&>|����=>0�b���� »ch>�=\NT��J�> ��rڽ�C���0���&�^�$>�E;s��b =t�=�-
���J=�u�=d/�=�J�>)��;k�O�Bp�4�=���|佑]�>V\=Uq�=k"��"D<K<{=�g>>3���J��m�='8���[s�R+�>ލؽz�<Pr��<��r>��$��>2A/�V$K�#��\����s��䈫��փ�>lT��P= ;�=���;�A=cP����!>�w=��>���=������y=����?�����=�	���V�=��<�9=�Z�=�z�='^�L�
>��[��St=�s��eh ><u��rn�5�<�R7=�X���a��l<ʈ���vE�]�|=�/0>�L��s��:=�D�lԍ����>�̩>g����=8~=ٺp��br=ߩ}=�ް�D�c>Jɽ�|)��� ??>:vq>`q�[�P�VŽ>P�0�>�>�P�<)l}�:��=>�5>��Ž�t�=�":�<����<9���k�K>��>� �=Yp{>tޅ=���_�=����A�=?�߽�30>�+�j�'�&yb=Bq���=�%z������q�/�sR½�1�����;���<U�l>6�b=�;˽�u��m��=�s>L��>��=T�ڽ�jþ�C`>EZ=�V���ؽ��}=.3>,��<��5<�Jd>7�>`g�>�AS>�@[�B����>|J�<��@>o�T���>;��<���:u�OF�>�*<�*�=�0��j>
!���q>hy6=c�.����<
���ji�>��s>�����S��/9>�*>���R8>��4>le;C߄<�F���G>�݁� �ǽ뇂�� ��=��>0�>�f�; a���搻��>Pu�<�q%�q,�b?<7�׼Q����K>:�>�k=K��(S�0
>��Q=���=���֑�=j�%=#��='�����2>d�>�[�=i�=��?�P�n>���=�i3>9��=��
>f��>rY�>J�6�a�>��t�Ll[>+Of=Ĕ���ǥ=[�����=���-ŽQ��>�{+>�R>X<�Eg=z���Wc��[������NŽ�Ͻ5�>{�=@.�,뛽p��Y>�>�>�K�R�&>:=�'>��k2��?���NdD>�d>���:�=�͜=��D��ӫ=�H>	��=�,>O�c=@`$�~!�<=m��6��(>��>I�t=8=~s#��3X>,'�=gG>n�B\=5{>�~=�z]=�\=󪻨��<%M�,>�WZ���=K��=�%>2�;L1=��=�5>��=�>��s� ��!>	�1����>�" >�=p>����=9}�=+]1>8;9=TV��}j>o>0�>+%>��y�>\}N=\!���S�^>5j�<���%�=j�9>�>
z��Խo��{:>*[�=07�XfL>�)G�
��=*Z��nh>A�����
���;>M4=Ѳ�=�C>�,��\"� �7�:�h>�߽Ly5>������������A��+׽b >�.>ު�=6��=��{=��<�2�*y{>}��N������K*>��{��:�� >O�����=�85>.�����>=�\�AS�=��>���=�#�=�r�=\��=?����_B>S���O>�8>��,�+�<m->�jB>n�ܼAg>�3����=x��=>��=��=�~r�+r�;����ۺ����=���>�03>傔<��Y>p�G>��q��={r5>� ��dV���2��5�>&uF�����i^=��;������F�tz���]U=���>�Mm>��a=��E=�p�;��;�)=;��3S>sjټ��K�#���=��>��R>��c=Q)O>��K���=� +=wZ^>A>��'�6SϽ�!<=��u>F�>>��;�Z�.D��|��=�Q>"��;Tf �~m�=�3w>Zؽ��U=�V2���*=�*����q-�<���=)D�;&�$>�L{�M�5>�RȽN>�7���v��"�=Ӝ$��=�43�N->E>>>*	��[�b�>(!�{�����>З��U˂��A^=�H�;� н2>8����"D�=v,=	] >��A�_Q��=S���Tp>��=Iώ=��> 'o>��(>P&�=�>`�>S\=v7>w�����>�`�=;�����>σ� T=��k=��<�
�g� ��־;;n~�.=뿤=�,���'��o�ּF��<��@�]���	zz>ʵ.>�+��t>���w���/ٽ�������=܈@=�F�=sn�=2>�3>��=�ek9���Q? =�tX��SM=`(<7q��;3D�>t>gh=�w�=٥����@�"��>@�����0<^aC�Z/�<�G�=��C�s+>=�B��L5����=d�����)>�(νo=�$,�������a����Rƾ�t�`��=��M�>Wf�<m �_<=��3>�l3=(��=�Q�ft�ӕO=%*��0ݗ�����͖=K��	� t>2�	�*h�6/�b�=p� �Iс>����j^=��k>��=6�"=�}�> �9��݇��b�ػv:O2�)��U�O��f�=(�۾(a�=-�J=j�D��L��>#�t=^����#c��Yh��S�>H�5����=c�꼁�d�0������ZI=�/<>���=�˽�� =g-�>1�|��<lf[�g��V1�M�>ٖe�q���49����s�Ѽ�,4>���;���=i���bGT�
�)�br ���>,��<�y"=�r<y]8>��5�����%<m6j>0�=@��fT�<�>w>���>�8��L����>���=����cK>�vk>��<>�#=��n>$֫<���=Dk�r�ֽ�p�=Y����P�D/l<���=�}�=_�B>�z:�?xS��
�>%�ɽv����<�1���}>unڽ�Yv���>8u!���>>��]=��]>�z�=�4�Rc���>���߅a��/->��O�;��<��-�����nz=��w����7��**�U_ؽ$O��h^>�o�<m�ս��W=��0>���<=�=3k��+�=��7=���=�>��=�u�����r���á�>�?��]�=�=�����\�4��=EV���O>��#>@�>j3�;1f�r�s>.S�<��j��=�H>|	W=���<�(�<�������6��=�c�>�� >,�=��Y>�$=��=��Z�N�#>�gܷ����_>��0>�0�=�ic>3r>�c�>"'n>��=�`߽��=��&�z%�=e��=@A�=;ɼ�h	#>z�V=a<�vJ>`�>;�>��g=����v?Q�F@S��?�"۽�A}�� 9�Pˎ���9�6Ԋ><u�=6E��k>e���"8>���>�p=��=Xs=x�r�p��?�=�Q=�A��D���f�=���<�u�<����.�=2�������K9Ѽ���=v1�y�=�ʩ=օp�pJe=X�\����=���c���}̑��w���O8>x:���R�&�>��=:�={�x>�3��2b�h�>^JM>K�s�	
>���ݤ����z�:x1�A���<�>��c���=��=.�8�y�om�=oI>W�������bN>���>��ý��8<`d>�e�>>^�)�F>d�=���>Β/>�{u>2�<dX�=����z>��=�����VB�&��:s>��&>_e�����ʔ�Ba����;\�>���J�T�z!ּ<_�>�я�RR��Z�>��,��uѽ��^�Ac>���>��S>�ֽ=�q�;#���+�:�k����J��H.>
$�=��2>a�=>Ƚ��>�{E>��ci(>3@=Da���d�>��9>!δ�R2�P֢>~>�>͒���hJ��~�=��1>�aa>p��k�=t!�=�
>�t>���]�Ć���m>�R�=
z���a��N�<2 T>B��=�p0>g`,��t��`~�����=��I>�8N��em=��=x%>o���K뜼݇�=��R>��d�ā�=+:��Qz6>���=��%>�=�")>L�=���nt;��a=��=���>�n�=,2��ָ@<ҥ�=@u��s:��N>/�,>z�A=}{�>�9>��9��;�=�e鼆�l=�I�=��(��g>a'+>5y�<f�=޳B��B>�D�=iH�>x�E>�9==���f�����< ��.^=&1�=�h��=�ȼ�讽�oF�.�����Y>Gv�=9�>w2Խ;�><�	����=5)��Ֆ>�K��������;�;��=&��;Ͻ�>a�>S�Z�5 >�7�m�I��"�=�x�==��y:��2"�<6�6�d���fr=�*�=�M�>��׽%�=>����� ��+.;)ŽeӦ>v��=_l�=錹���=�߉�<;%>�yK>F.>�U>�G���^I>"GE�2�k�=L��=�E>�u�����B\G�M�=��>�bN>�-q>a�=�Wɽ	P�=�!�=��=A�&>�,u=GϨ�0^� ��=TEݽ,�=��=�>�W^>�l�<mZ�=;�=�3�=l�b�S��=�Q�=\��g�=�)>��҅=i1>�<�|�=�*R��*>���=t�]|S��Ѭ=ˏ�=\!,��^=��=��<d[t��½(�ͼ£�=��Z>Mϼ��"�<�Ե=�t5��2F<*��<wT��x���J>�Sڽ�M@���">al��7���ο>�|G>��f	4�A>[Xн���>T
Խ�?�|�)=U�V<
p
/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/readIdentity*rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
T0
�
(rnn/multi_rnn_cell/cell_0/lstm_cell/biasConst*
dtype0*�
value�B�x"����<Y<�={��=���>�<�>q�?<���=t+�:�> �;3�=P�=�g�<+ 1=��i=`�����=.�����:>8G�<Y��>�v�=$��=��<�7�<�S>>=u�e=��<��=��$�9r�<{��=J��=�f=���\�E=��ý�������|=���<Ò�����I}�<��ɼ��p:L�Y �����؝==f����#<p�ּ���Y)���<a�k��]4�:%=��<OV�=B]�=��=c>g�W<�=����8���;2A�=|C)=eRD=C�(=D/=.zѼj�J=;�����ֽ"=��=�0�=.��֗=5�=N��<�' =��=Q�R<��n=L�=e3Z>���=��#>ׅY>�bL��ס=V	:��*�=Ш�:���=�q=��
<TK�Lpn:<Y��"�<H�"=�&>�x�<C�O>aՀ=P�=I =_�; ��=��>*}=fQ<���=
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
value�8B�8<"�8��_��J�K��=�v����>>Ž����[�:=��=r�n>��=��< "� ��=iu>K>�s�����p>+�8�)8>n*>��->��"=��=QΑ��v���>��D=;a�I_�>Y&]9[?��č���$�=!�>ў	>����dI�� {ܾ�#G��M���>���;�H>��k��!�]���g=z�2>b�®.={<E�!j4>�P�����>Ĝ�5굾� p>\�ҽ䔮<9J���,L��kG� �a>~��`g<��5�==8�3>g(�=p=v=#�ݼ� ��h=%�u�Xt��Ά��$>ۂ���% ��L�>����i�=^9>l���</>��g�c�U>��>��>�K�=86Ⱦ3콅�����(>p�>>����ͼP��. �LP��_��c�=�ؾ������=����`:���H�=<澾IlC�&#�="9�=;o4;)*��
�����m���k>�m
�X��Eٞ=�]��0����4�1<R<8_�㨏��"m��M>6	=�H��4�L����=�#�� G�-�M��98>1����O����Xڝ�7��=�3�>��x�G;�96�0"�])�=�r���%>t����1>N�k�1/��4�����}��5B>>m2	=�RV��6��*>�G�>�NZ>S&��B0P��?>o�>�Ͱ<�G>�Rh>W�ѽ��g>��<ɍ>)@;?�[�����vl>?ގ>�ā��=�g���o�>Ӎ	>��c>� J���=m�m���W�'r =i�h=�s
�zO!�n~��u~�(-��5L�/'>8��!B:��]L>o�q�T链�?����)��D9>*��89>5�D>ɢ��
`>�Q��Q������]%��N�<} �=A!����=;�Ic�{�h>�Pj������i��5�<Z��=������$>�_Ƽ�Nr�tf�2T�� #N��o�����3��s���Dx>��۽~��<�L�=�qL��x=��=����(�H���h�YI��g������=�0>����XC��!qw��ٕ;����t<a��bZ��j�� ھ�K>~����N>z�B�q+'=A �;��ž��+�-��94>�C�<l�P�I�h��F�a�2>3��Z	O�����g>#�<f��]����l�>�	"��u|�_7�=�Յ<ܒ/���>z�I��	>Ek=�=4��W��>��7���>s�>���$��=�ʾ�;>*Z	>�LļPf�>Zl>�8��7U� �3>��:>X���}>�k>�O>B��<��j>�`�Vu���\<>O�b=�V�=&��<j�>�`�>��U��Ht>�?���O�����>Ќ���>X�(�r��=�j�=s�*��+=�y�>��I������w='匽��=*��EY���(>�Y�=8���<Y��CF����>��۽a\��(>�"��;s=1O>E�)��g���>�=L��>u=���P=!���|�`��^��o����7>1�g>���>���Ж�{J(>����x���>;F���d\=�j����=267=��<r���x<v��M�>b�k=������'>@3�=�Η=֚��pW<$t�=�ٞ�Y�>��Z�Wqt=�{�=�9>�L��v�
=��>\s�"��>�0D��>��Ă�6zP>,����n�>'m >�>h��=0�B>�?���1I>�
��>�<�sG>iS�=F&����>�h=�`>|1c>��L�y	���v>.�H=�*)�4�[>�mi<v�)�E�-�>pν���=W�\>��J>�@=�i��&�r44>�y7>�=� ���y���4�\�?���r����\��>�O�>�.+���==�#>�\
?_��=�}�{]<WU�>j�<�5>���>&�{=z��>D�@>��>c�,=����kϻߺ��v�->I�����x��V�{)Q�e�м��`>���=�>>�Ƀ>�df=���=,V�=lW�2%>��T���[>�����V������gU�3���=�4���=�l�<���R�BP>�wF�eԾ�6�����}��>H�6=�����H��uH�+{�������#�ժ�>�D>Z;:��O���=�٭��fl�rЃ�M�޾e��>A- �	���@i�6��W��>�x=e�b�����>~��=r�t����u�۾�]k����>m�2=�Y�>�f=RM�>�[�%�����`���<�yݼ�7D����9y�>�>�B>њ˾_��=�d���<��μܳ��p�L����<6=	=0?���<�E>'u*>zK�����j�4�N>lp�=u[B>/���U�=)�_��*>�#���[>�ֽ�}���A�Ħ���+>�́<�t���C>�N���o�L��<g�S>�I�>��H=6�,���
=����B��>�d4>_K�PR���o���� �7�ɾ�׽*��>���Y(�$m`>\U�Mm	��h�������׾Q�Չ�>ěn�Zt�<��۽_����5�>"����;>2�Ѥ�>��K=d}>E�S�T���X�=�ۏ>��>>�Hr>72�=2o�>�m������=d>*�½1��=a�X>[=>k�4>��="e@>岥��!>i��=GA���;>��>z�)��a>R���མ-<�m>,�U>@�����5=-R;>,69>��,��c��.8>O�4>8�= ������_��vf*=G@�>i��<\V�=4�=�E>-\	��	1�]�$>��z>��b>��>qv<��Ǻ�y˺�?�9���pX�n�e>�G>y�!��`��3V<�2��j�=�Tǽ򍰾�_���)�7oJ��'��;���f��M	��͓=�)��O�<�#]���8=x��<��V>���u�7����;)u�=+��)��=��;_K�=�Ă>������=F�&>� "=$�G��K>��>�Sý�%սr#�K�����½� �k�>b�Q��0�=���� S>G*.>�=�;=�3{>�XF>�O~���ѽu�q�E%>�:=>�]��f0��H)��R"�����M�[7�>�s��d���'�O=F�=�������ѾC�ӽ���>6�Ľ�+a�=Ĩ��ge��C�=�Ѿ<�z>q]�;�q�=�۱��@н �>�D�>�����=e{{>���T ^� 57>��h�͞+>�:ϼ� >9W��0>��>mD�=f.�>}O�=�ؽD���*<k�=��DH"�{�J>�� ,��}��=_ٽ�5f=�">,�4=��#>[@���Y�>���=	�7>a��=��?>I��'>V��"�>�F
����5_`>�->lO>���=�����>>�=gw>m���Õy�{L�<�\��<�I=~�5>�X��Ǵ��q����S�y>�~� �>�����"�| ��g�y���2E��.= z+��+>YD�<B�߽��,=���9J=H��L	l�����lu>@�M�C���%�=��D���O����<����ܩ�>���=��=w�J=�r�d��=ֹr����=�-�=�D�=�����=aQ}>l73=�l>w�>���=+��=�ܽ�@z>eN5=�P���g�<�\5�?z�<�a>�k��	�/=q�>4u�<B�n=2�@��+a>�;��">�5�=ޟ]�Wy�P=;=S�Ͻ9��5�>P�=sn>�>/�UA=#xz=���=^��;��L>��i<��!>P<a>G�b>[>����*�ͦ�Nh����=�L��ہ5����=�3��s���<���ќ>h����¾� ?>=���r;�l��9����b��G�>�?����ٱ�����zs>7D���)�<�wd�nZ�>k���� >b��Α7�(&!��ٓ>S�8='@>��<d�/�M�����>��G>G�&����Y��=X[׾�׍>|�����=p;��ȳ=Q��=��=�s^>� ���N>��^�ٞ�<{H�av�� n��r��>�u�>A[�]پ�	䜾�?��(f�6���O1u>��UD`��	Y>c�=%���r˾O󱾕G�6�7�;�=�	����7���:ھ��>�����>B	��͜�o+�I��x�O>�w�=y_���s��j=�J��wt����<��E>�tF��|��m�O��b^� �����|k��4=�w㾒=>v�����<���lW��:�>�u%�3��=t�����ͽR��������7�߽�Jb��>~+>���I������=��\=�J>�9g>��x��X)a�b��<�$�MeL>`UY>R���,D=v�ٽBB½¤>ԕO>��=�<����>�@=?d��	p��sd=t-�P�=ó�_��=@4���.��j����z>�]���>�8���+���5�`3=��L=�7���W=�OF�����3�����g񽟕>j����MU�W��=�
J=%H >�5�=Ki.����=�d��o���
�z>�E]>��>WO���;>��>�zL>؈^>����<[���g�Lc>�=>�Ւ��Y�>~���.G��S=��=��=F����<�XǼ�!Ӿ�q>��s>	I�<o���ˢ��\�	��q�=�$���2�>��}�x�� �/܌�a���N�=<&q�w���ȼ�w�L>��#����>g<2>Na��*�=��ݾBut���>�=��s��x=G�%��^>Q�མ�>���@��uA:<�� >��\���������R�%=m�d>9T�˚>)6�=���>Y�@�p�q��**���"> ^ �p�<>��->��q��e<��ڽ�L��Q�>�2{�ca�<�>ޜ>��d>��|>]�<���>^�!����=�"R>�8Q>���P�=��=��A>�z�>_>����G�h�%=��%��X��.(�>Gv��⽾�U*>!&7>�[�>~���W"��r=fW�� �>��P>�o)>o�>
���;{>�Ԕ>�}>�@T��L>f��>�I�>��}<Ȣ�Y
��N��������Ri�=\F=Z�N��{���� ��z�=�����>�;�=��K����=��R���d��Ƚ;���J���&�=@��>P>�Lb>5��=����?�=��z��Ϛ>��>�y�<�8>��2>��0�>����@�>{,>N����F>�2=o���$'��̚=-�X�k�>�=�K"5=�ڼIdA��Fw��w�>e"�@q=��_�8�]>���=O�����=�>L��<�Y��W0�k�=.�=�r>��ӽ�a=��=��<>�½L�;��>7���6��I�`;�>��7<R�=�h=]�ܽ�RD>����y&��;+���|=�x���7�gO@>J� )<Y{=k�w��z>#�T�n$ >�ĉ�tpy���w�)� >�)�>�9=
����)>���g��=�����>�L>m$��>7����$>Yw"� ��;wxQ�z��=�U��q!�'%�>Փ>���=��=��!>wઽ���>��=�W*��~�= Ak>�:(=�<>E,e>h̽�MV�s�`=��>�<�G�q>-oi�`�=��U���a�~��ҽ(ɒ=9��>y�>ui�=8`='�6>OF�U�n>c��>���=u�����<�L���w>ی�=��G�},*�<!��ku>@��=7��k�[�j뜽���俾�	��e�>i,��ʍ����w>Y�>cW¾fG��$�鹼"zZ��a>����춽�Aҽ�B�p��> ��d�&�.���������y�ӽ!5���Ͼ~O�4Ɏ>�e�=��|>~�)�1��>I�����R=���{(�y���'�C�=��>��Y=+hB�f���C�o>\���k�<iR<�7�*�='u�Q�b��5ҽ�C��M5��]y�=4؄>�9�=�
P��A�;����/N>$$=��C>6�=��;��f==�G>e��>3RS�2"�>Fr��v���_AH�6�A>�`Q>�j��;y��ؙ=��,>]�>�@�=��G�R{>{����D�>vO�>����$�����V$��x���;����=�@��Q|�3Q����k=DH�1������)�w�i����v�>�Jļ�괾������G��>�`����.���_=��.>���<�ν�B���f�=�
�o�D��<�=>>��9x��E+��>W�<o�ν4猾>�>g�E>�R�<@��=�1�>��<��>;Ņ���a>��>����W�=�&A�ߔ�3�m>�\�;2Ҧ�֦�=����^>��q<��=�F>���<�E��D��1����>��R>4|�#Zg>��T<����J���1�=vlH�-��� �<~����E�m��o-B>��2>��I���"������=�i�=l?�>�G���e>x�������>,�U�#�=�+�MH����;��@��}����!>M,=#b3��o����={��=c���r3��e O�7e�=s}1��Gn�������>L:���o���8>��l>��ٺ�i7=�?��:s�&J������=�;�=���|�C���1<���=��>s�->҆>���={0O�(
V>��=S�Y����rP߽��>g*!>٘���r�I"��s�7>m�U>�w��!U������#��#����=�T>|��BZs�&k���=��׾�V{��鿽Z�����;��>!�U�4!P>��s����ܶ>,��v��=赆�X�b�X�A��O�=J���#P����s=m7w>x3�;/d[>s�,���R��o�=%�ڽ[}�=x?<����f�>q�%��c�=��O>�:w��Sk=�v��0�=�6>���<�R��}���e�{o9=���=X̻΃�<o	�k6/��>V֊>v�>z�P>@U=�Rܽ�[>���=S�>��5�FҒ���>�)�<'Z��0B=2�F<urs=��ч�=�>V�j=�b��G>�D�G�^�BU
<o��=4v$�dl�=-[���q�h#n��,�=V�Y>��G>tKY�0�5>ŭ���m ����=�O>�&�>�&޼�K�>S��=3�½���<��[�f�=K���P�>�$	>��3�F�D:1>�=>8�"���ϼ֔+�S�C�cC�>��>�O
�.8	>�h����Qш�ԍ=]��=�td���=ӖF�^Z<��K�>_�K��G�>�(��R0�'�"����>a>�┾�G�
U
dense/kernel/readIdentitydense/kernel*
T0*
_class
loc:@dense/kernel
�

dense/biasConst*
dtype0*�
value�B�"x���:������;63�j=��,=�F�=9dV=�#�=���;���<;��<Ԗ��j'��w�c=o�<��qv��[I�<��ɽ0�$=4X=a��;g�~=�9�<O���V=4��<Zk�=f<
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
value�B�"�|*9>�������>������0�q=��>��p��tZ�`+l>���_оV��>���z���ռ>Rw�=���>�/=�w�>�A=���>����>�7�����P,�����d�T�}��>C���7�<Q���;�>�3���9��檾i�ǼFb��?���<P�Y=�>)Ҿ�����{�>�6�;|˅����>��>����땾�_>{��5��>�}=��ʾ\SǾ�.T>
[
dense_1/kernel/readIdentitydense_1/kernel*
T0*!
_class
loc:@dense_1/kernel
A
dense_1/biasConst*
dtype0*
valueB"%�}���};
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