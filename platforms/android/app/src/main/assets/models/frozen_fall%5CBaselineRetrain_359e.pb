
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
value�B�"�v�\>ɢ�>�Ȩ>g�<�@�=�L�>H�:��pi��x̾�Q>~t����S�>ZKh>㇦�Pk��0�=����O�k۴=���J	=ƃ@>#�>*�^�kֽ̧�����>�D�=w��=�P�=k<���>���=O_p���>g>:�� �=�e�n�]>fr��l�A�^|����<�4h=z�~���־"�>�=-�>k�̾�`���g�@p >|W�>���>@�Z���@>V�5=��)�q���k�m>�;���t�=S�>��>}�K>�&.>�7�:KM�;���>���0�2���>��>tޑ���`��� �y�����=��>��>�k>x��>I��>���>�֍=L ����>��=
[
Layer_1/kernel/readIdentityLayer_1/kernel*
T0*!
_class
loc:@Layer_1/kernel
�
Layer_1/biasConst*
dtype0*�
value�B�"x�Ї��K�<K��Q\�c3� �<��=����U:�<��ὥ�%�s��=�����1=���<��V=�s��?�/�=F[r�2=����i��+=�:�<=��<�@�<f=��x���
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
value��B��<x"����+>��=6�;=��R>�+���uH<��[;�=�l���e=�g=���=�|�=�d���>`x\>����n��_~���>���==�u�K$ϼWY>3X���[�њ'<�>�I�=�W���^�����=	��:YcH�I-���}�;�_&=��<Dn>=�F�P:Y=���=�gD>�L>��=ؙ=�=�Y)���D>~�=-T�=&9\>�:P= =r���m#��_m=$;�=9>>�S>��U�N�½�e�����=QL���>��V�'���2{K=�P:>�א��7=�>g��Sҽ5J>�v~�]#A=̣i<"�>��->L��=U�>���2�s=0�B>�k������J=gԀ�(�Ž�=�z�=��<xI��#٘>�M��A�>��>�m��6]�<1CU>��н�s��^�=���:�7��G�ɽy��=�켼���~<kT�=�+� \�;�_=7���t�=�)$���L���I>]�h"�>3Qм�Q/>E#>�D�>	�!�o>'�r���J>N�>	>��Ǽ՗�q��=�A=�r���j>Z��=
G>�zD>��e=.k�>�G�VQ½�؏=0̃��!<a	;>AR�;�ܜ;X
�> �>�%N<2��+'>�Z��?�>qk�@�>��=�:��e���m�=�@�=m@�ͭ#�P�.=G2���~��㨽�@i�*0>>2�����������Ԓ�>=�'>���=��O=�3������0�=�0+=&���b�=	�>C�b>e�3�z�޽R>@^�<O��=:�?=L�l=(�<��>���>�vż�l�̦�a�><'�R<�0?>J��;>SB:<Y3>+tȽ��=��1�9=��S=���=��6����=�i�=�m�=ZK>�UD���̼���5U�=���]o%�;CҼ;��=B��4��6�˽PM���n�R�< �>V����0ؽڒ�>o���9;�{E>�Ua�l�7+=�9�N>���+�'>�S�=�XW>*��<�� >�t-����=��Y�P<��C >9s >�;���J��>�O�>q�Q�qTg����m1�=oT����⌷��k�� N>6Ɗ���K���ؼD�߼��μ@�7>�������;)�=r*=��9��A�N�=���c�-��yA>�m1>v�'���>��ѽ�c����!>c��.�׽��L�v�<R�Y>R]��w=�9;n_=�`�=���<��|>.��$�(>��N�ԧ��L��o�I=@6�lZ���}�<=�=L ��u2>n�̽�*b>�,>�Z���D��9=� ���5۽ó���HT�#�E�*)=�9�=VQ�<T�@>�����4��(�=�><PD�=�o���>{O�=~�>W�>�F�Hp8>���=����Z�=�s�>TT�=*z>m��+½�F��>���{U��b�1>�k1�
aϽ]�=ݦ�= K�>�->�哾�ý� �>D��b�I�u7X�@�=�콫t�=��(>��)����؀B>��Q��pػ��f���@=���=��=v��\ֵ=�0�1��.*J��R�=.&~�����`�����<ȅ�:a�ݽ��}�@^>����>�{u���ֽ�\��W��=��<4>���=��=��9>C >�� ��,�9� �<��=�
t<��
>9f�����;��ν";�_�=��`�=��=�3��{G=� ��v��^>�:>$J=���<?�;<���x�T�����^R �.+��湽+���:"�Q�^����T$k>p���ߕ�=2�<��1>WX'��<��r=��=��q�W��"��h��=�� �s��_�e>U4>�%n=İ��18�=�^�<�C�;�0 >��;>��>��%����W=��;f�8����3Dʻ?=Ʃ���D"��A�&�F=}qm<��нQ}�=��F�U��=����{�=*}��>�o��=Z�>#����Z>�7�>Cq1�W8���y<o��;Z$�=��F��FŻ�l=�>]�f�����a>1Xv��i�����>�-�Ǽ�)�_����g7�<m�>̌̽�F=��>G�> �;�nɽ�#>j����>h��=���9�K=$�\���<zTM>�Fx�@.=\޿�*4�=s�ǻ��%;zc��re�ȭ=Ih}���@��R۽[�>h�K�\��>c*"=U�>�Z>J�L�-���&�=	���;���{>�r>Z-h=?��=�ٳ<��=�,�q��'���^�`\޼�@�>�4�=p�l�RH�>?���wEy�{[.�ݲܽ1ʽ��$�|�
>���d`>(��={y6���->rt�=�C�,>[��>@�s����=:nx��T3>2-A�R�q��_�ג/�T�'>���%c>9���C=_�J�Gs;��暾�2>�>�
���:�۽�m=�Ż>l)��������>KՏ=f��:;sJ����=��->�Bh<e %=4+�=m���2$>ڸ/��3%���>C7�=v�K>bJ!>��8�⫴=����L�#�3Wy=�R,�R��L�½v-=������>H����b=�w=f���0�=d7���� ���<Yx'�k*d>� =v��=�\�>�.ɽO�%����=R'z>��
�G�'���=_�R��M>MA=��(=x6~<�+�=�Y�=������us>�������Z>��3�b>@�$;~'>�{����
�<�2ǽ�c<���=i9K�j�W>��9=��>ot�=Q>�p:�Rp:��ܻ���	n�=�f����=�5��}8����̽K�>V�m�����U��>��>���=Ú�=B��=;m���-:>Wd׽�8�=Dy�=
C�=z�B�f n=��%>��>����&�=�;<²���eL��C���p��``��~�.�Ԗ���>=�/��{һ��=aI=hN��rM>�v��Ew;;P���-������%��ၽC̔=�����[I>^%�>�~>R�a=aνU=�=��7�Ű=��Y�O>$�;��=�&M=��׽�N>��V=k#�PE�;_1F<��R�q���x6�=�V>k"4�����o�1��6#��h��3ݽ{��=Fe�����<�\�=6��5��A�=Б��+3>A>+>뺌=%{!>!}�=�[���:���}/�a(C>e)?=�]�=Ccٽ��Ƚ=/��b�S>��=>m]d�K�O=�����J<-:�=s]@���J��3d��">@��=�פ�"�3><56<7��	=t��Y8>4�>D�<�Pf̽������۽
~�=ZgP<Pv=�"/��d�=����,�<�EA><�L=
�Ĵ�,I7>?3�ԗ=k�2��Ƣ=�L+>�T=!�h����
9
>
؁�f�=	Lo>%wx>��q�Wm�=��/���B�?�:�-2>�X>�=��>H�
=	�սz`�����s�ýhe=
������=��=�/b���=e5�=o��|���H�=���=�Y�w�_��7�>Ԋ�:X�ٽ�"��[�<��>ly�`ӽ�f�=���=J8=[�>�
ͽ1pf;�yO�����6g�=��=Aa� �S>���=�$=��&<V
O�wt���]>~��T��=ך�=@�������=���=K5K��<��1Z���򼆰 =� �=�oj:�x�C�=�4>��ͽ�=Q�F>"0����=y�e>	Ҷ=J�`�q.�=��C���=�"�U�:��rN�8�=�����R>x�<��Ž�?z=G����~=55��}2ݽh�A>A�B=ܴ�<sHR���=)�>[ҳ���=��>q=�3ֽI�1>���Hܯ���<��S��k>PK�=(y�=�;=��c�>]��Y�=Qȋ=OC}�3KȽtk|�3���]���=Q�ѼΧ ���ɽ\��=4�=8UT>����ѽ�K�=�B3>��(����{O|�Ē����M<@�>�b��3<�S��3-�ݷ6���e�]=�a�<YvG����4��2愾�U�#�����=�C���b��,>7�	��Eu>�H=�hx8���(�Ɠ�=��9Y������&B�����B�<��=���;�����n�<��7��T��
=�{<�b�!�孡��xE:4g����4���ڽo�>���=�����X>�3�=�܆>���<*�����E<<�=�a8��Y��
�=��!��7>
�>j��<������ƽ�3׽� ��L�=��=���@x=��0l��<���޼�Q�6�<i�>���=�_k�]�=�*�_�O�ʘ�=����W>�z">�X�s�>{��=QQ'�NJ>�¨=���i�`�9�=?�~=8`� }�=�;
��r8�4@��\���ļ�Yؽ`~�=��>�;�=��>#�>ԣ���xE�u�B�卆��(=��(7���؆��}|>.d��9B>F(>)<#>����+TԽ��I��N�=��˼U%B�����>��<ϒӽ�=����ƽѩ�=)�P��X����=�5l��V ����=��̽]������~&�=Q&>��=�=�h��.�*��<���>ãU=��G�W�c��ҕ=�����EU���0<�l����=�)�=��E=,��K{�=`�I>����s�����V������{�=(>��=��T���=��:>#Ş�b =�h����X:¬}�z~�<TGw=y��K����C���n����VF�=�I�=��=�=���ȓ>�J��a�O�OT�>�3V>�Y�>�Z�=#">�=�v���t�=��*=�޽7_b�nag����>Q\�=�3>{"R�6�*=��<����>|��C/��:�?=�x�1c�����2">�:>GsV�{W#�E� ����=d�1�9�<�˴��W��@$y=�H���㽒��[nսI��=���=��	;pH��H����s���SF>`��$�?>!k�K�i�)-<#*��U%;�e�=��5�7O��GR�=�T��Ey3��=|�=�.���	����< D>cs�V��=F��C�)=hf`��w輢{�j���{n��(ŽV,��ｨ��=P�2>�Mn="ߖ�� ���+����B>���>�潮�N=���a�-�ֱ�=ra>��L>o8{=�A��XM���.����=4�%>��V�wA�=��t<n�>��=Z9����!>�0>A
�=�=H>��>ǆB�;'нތ�2d�r�ý���=$�C>p�=�go=��>��0E�=䅡�kч�M[���>
=u=DV�Qe>��<�R�=��>L#@�g޻�V=Gq�;�l�;��$>`o�>�����S��:�lĽ���>�� >��=�>g> (=p���wi�èf>��I>�ל���"��=��P<���FU��'H=))���dt>���VN��z���/�u�8� �U>�4����=0HU��i������É��B>Ӽ���M������>H!>�)��HG�=�z�<�`����F����t�<�R�=%��=娑=W_�Ѧּ^��=r��=�%��lG���=���<<e�I�,�3-�=�?���$.�O��=��)�,�/��m>�g�>|�P��x����ӽ d�s�^=׿=��7��N�Z�=�>E�Ѭ=(�>��P�%~0;�X>��'�ڸ5>��C>G?6�En�<�==�0�=<����Qͽ�a�=�C�=L�>��>Cݦ>�t��׽��1>���=&k�<�(��n=�7�>�h���=/�� �B>�* ��������(��.�l����=�=��U,Q�j���{�̴y�+%>7jk�^w<������S=�:|�	�<�S>� >1Hj�}jϽ}��=��;<�>>x�=��5>y�<��<��ܽ�;=�У�=9�>��=��t=������@>u��fD�=�ff>v[F��|�=�H�[B�6	O>�ǽ���<�=I��S>�[X�����M����=b�=��P=3�>_�7��\��J�=��A�#�H���=���=&����C>�y�e�I��jq�#>$�Sp��Z�5��\�=~B>�qS<F�Lܭ;T8#>d�6>0ٽ�-<>S�ݽ�^��_Խ��>�C��yx ����=4��<CS�<"
[=+�Ｑ���b�=(v4>fM�=�*��KDl=�^��zݻ��H<�N���>~�=>���=��L~�=eA=\��{Q7>G�'>W��>h`��1�A=?�>=�X>�hN=\���>n��>s/.�Elb�V#'>o_�XU.>������Ǟ->RO���b���>�Ǻ�jc=PH����H��$��]O>��4��#t=���="��>����3�=Dݺ�E>L>>�
�=>e�={p2���->C�J<Rg�Q�>����K>+.E>�w��=PH�=	섽�r>�6���~=h޽��$�n��
�v>��>/�˽�a�XB�=�A���v��U߽Ϯ�:�>/;��Q>
u6�􆤼;-�=�es;/O��Vx��ͥ��:4��9���e�3��=rLO�)ī��_�4��Q���>uL>�w">Kx�=�*<�M>>π���>�d�����MAP>C=I�<�����ӽ��9�#U>��p��eL=2�<�@C>e@=O��=d]@�b�E>ʱ���]=�����z�=gs���Zv=@,��gi;�em>���_���3�>��>�lL��J��	@;�e=6�=�I<�ť�Ǫ$=�!B��.N��V;&�c>RD=�?�����=ӳ(�8S�7��/���U׻_'ֽ��<�k�=�ۃ==;I>�̽�n��6�=�y�=!7=C9�;P#����<�ǣ��s�'>'� >C�����5>�	�=4����l�."=+��7L>>и�=����w+�Df������>>�0>�>>(6+>J9�9�ٻ>j��[w>�$ļ��">�	~���ӽ��ż^�꽕�$=��:�1��<)/;�v����>�C><���q�J��=�6>��%�_v�"*G�D��=K֢�����!��$�S>#>ر�=�^�=�m!��m_>v�>���>):=���m�	��y>��Q��a=��)�o4��A"�F�张% >���=�H�;�=y>+�:>7� >T=?���+>Ae�� �1=��>>��u>��ͽ;ݽ����]�=� �\�J>
���j=L��gm>��5<�pe=>3x=���ġ>K�ֽ��2>`�0�9j	<�Ҽ9l�8��_Mؽ0����i�~�v��I�=�	����D���v=&�'>ʭl���^��>r,�=܂�a�v=I=p=���=��4><�n�>V�Ժ� >�>$#(�������F=�{@��q=� ;=�}��Ȓ߽��{��RA=����O.=��O�=�J��Ql=G�,��p�=�[>��=A�=%��F+L���6��?��a���t��
<��=uz�=�=����U>�O>����Y:�">N����`=�(�i-���Ƚ���=v3>�V�;{˽<��&�o�<��_<]ۣ����=�1��5L�L޽lF�=3j.=��=�{���=E�=�r�my���=D �1%>��뽠��=�#=c��=R!�"�j�j�=6����y��
>⻝=@��=�^@>�⽼K==C1>L+��r��>�G>> _ĽJ#=n���>o�����=k5>4���:=9�=R��=�M>���s>:�I�9w �*�d�T&���@�=��'(�='��>���>N%���C\>��>��˟>#�d>�<���ے=��������=�{��f�z>z�/��0X��ݮ=-��=Y�=����J���G�B�=�;���d>��J=��ͼ�r>��b=���>���=.>�p��5�<��<��V=�N���=7��
!�{����=��2:
�C>_�#>Xzؼ��G>f�k>So�:��>>j�f�U��-�e�[�u���=�E��=�=c��=�TH=�X��݈�=�P�����=�<sF?;�Z>�V���Ǽ��=˵=?G�������>q >�i�0 �=w�+�c���w�1>>a�=w���]�=kv>�Җ>��=��l���1=�d>��&�>D`���Ͻ�� >�9�= TԽ�M=1X@���=>:���@f>+ ����}�'~�_Q�<�O;>���=Z�=�S.�mM�;���>"�^�̘���:"��h�>��M=�=�p�<5�>�*��c�%;��6>=e��8~~���*�7>�A!>)E�;ѕؼfi>�ɧ>�����=Wx����#���ؼ��½u�����d<y{"�ƭ��J��{���� @=�SF�Sr��o��p��=�$�>hm4��｣~�=��<`�����=��>�pL>�u�	�"�m�k�e��ȖY=V���Y3U>߃J=���;�">.&>���=���=C��K>	��4��>��>��=k�E����;�=v��1�U> �>�|t�:P�=L{�=
�̼�^=�v�=,8�D�<�%>|�=��#>�f�G����.=NR�=m��PB����[�����������=pK>(�5>��>=��F���k��>	���2/>ԍU>r5�D�m>$	\<Dp><���>�F��@uw�u�;�� >B�.<�!4�.4���z�<.���/��N�=c�=&��=����ϖ�T;�>o9��j�=:����>M]#=^I���.���>}�	��^�=#��0l���=�O/�[� ��TU"�@�=�Z�;n�����,��!���'>�]H�Gb��?r��^���"*�T��x�@>*�E=��o>'��>>x�=q$=2��]J@���@=�>@&�}7���@�j�)>��&��\o��m����<2%��Vx�Z�H<���<8 �ߟ�c#�<������=��>��p=�=;���L(�$uj>��K>��T>��`��W(�n>�۽�)<����F>`�Ԋ>�=Ͳ�>��>_l���"��_��_�*�>�Db��r�v z=+�¼"�`��4��Rӄ>!Ƨ=�	�>�U/=�
&>!�{=�4>�o��g��=ܖ߻��E����y���Z��&����P�=헧<�.缧�Z>�ͽ�4����#�_�R�m�=�Cپத�vz6=�r��\���w�Qq�Z[��ܟ�=����.�;(C=�j:>3!4��;3��=,"�-�b;b�N�� �1�@�Q�L�?����7�>Y3���=��<Qu�;�H<��띥�ޞ��Y7���W�x�=>!_��&3�l'�>�AN��� >���=��>��V�-=��=��T=:�5��ݽ��$>'�����d��h$���>�C	����= $��Xż&C��� ���;�΂<tQ�<qL�lӈ=()=���	5�>I񢾼#>=�=�>>$�=Md6�+�<�>�Pi�qk�=�WϽ.��|ĽQ5��_Ƚ��U�0�=�W��=Sr<{C�=���f�$�Z�a��N������]�IE*=�C�<�B>�+?�mj$=ܦ�=+�Z=�S�<6x����->��)=��=�}�=�U.��~�ۜ>(���X�>s������=W��8z}=�1x��_s�� X�O�=|ާ��H=�B	�&%$�t�Խ4�;����X����Z����=�H>�ٛ=G�M���9=��=pޏ<��<!�>�DOc<��X��>��V�~»AQA�)Yv�V�'��S>�ͻ:�>���='��)�9=>d��o<\����=ձ�=̓�=�͟��V��D>�7>�Jr������F=< ���K̼��>G�>�_">
a��E>�:~6=E!�&>��+=YX^>fU�UYo�KEI�H�<Ce����B��X>Xք=�"=*���`�
,�=��>:jl>���=����
��I>��6�������
>Q>~�>J5K�cI"�كL�AF�=R?<=��<]E$>J��>𙩼� ����;%�]���=�}:�\�a�C繽lC޽O�uV>Ct�=� '�q�ϻpZ����=�n�>?G���R=:!k:��=K�>*�">{�G�b{���=����C+��Y.>P�=e��� �e6��RG����A>?է=���>�)g<0�L>?�½�	>�>�F=1�;e;>��}>���1�=P��;�i�=�+B������m�=�\E��=k����=��H>�嵽��<�QY>^�>&w��2��n'�=<jx=��p=W�=�i<ih���T���٫<����i��a9?>B*D>�v#=�V�<8����X��W�={�f=�C���E�>��=[��=��W=}T�=�����%������A�*>F�7>	˼(eO>���=a��>k�>��V<�2�=_�>{��=���>4�{>0�'�=X�x�/�)��S=u�c��f��V���Y8>ك�=��X>�0_�LN>��;z�>J�+��\M�m�������>qսt�3>��=5�>�g:>_�C>.��������]>V��=-H�<^-��*Dp��ˊ���C=�ʽ��%���>o��<�=
��������/c���b���<5 ̽��";�Z��:��=_�<|T�<:Se���>yԣ=��>W"���s=⍐=�#�!�=[>p��xm=�^.�=���]�K>:�
>k<b>�I�=8��4">��>*d8�M�����Ä<�#`���_=��];�-�=	G�g�#>}�⻍��<�2>���<�*,�k>Խ���=\>�v�=7��	&>�!��b�;RT�=U�:=�g�=�.d=ϗ��El��FM3=>�����ؽ����c8�R�2>Շ��bz�������
=�3߽s3<� >�i��Y��=d�<�h=��O= �-<�w)�97��>�K}<S�)=r��t&�=څ���>Y\ｽ���/5�����>��x���n��?)�a�i=]�<��8>������G����>�)>N�.��<o=^�*>~�*>e_/=��W=B�{>��r�h�	�T��ݢ�>���=�},�Xͽ����:��=�-W=a��<��2>� �= �/=�E}�N�p>b�����@F�=҈��+���qJ>�9�j�N�&��1��<̷6>����-����2���w�!�sc<�1��\с<�@>��>�����$>�e��sU���o.�h��Z���^��='�7�9�=$w��dƵ�HN|�@+�\�6>u�=�=Q�������$>�,=68�=��}���"�s�*=B�[�/P����=p=>�|���
y��t�G ��|Y>v@=�U>����P��7K=��=S��>W5�>C�4=�u�=𤃽dq\<�L�=K�>���<8>\� >Dd@>Dw㼕����s>�
���W��TC�!��<��=@�B��ذ���׽8Yh��Q��P�:>Nd���>2���p�S;|(�;�sV�2�tH��Ԑ>n����(�>��>��'���U>В�<�l5��3>;A����v=�:�, (=�|�=���=��6>*�=�g�=RӨ�Qڏ:��=��.o>VK�ڽ��Q>w�}�C�=���>�\I�@�ؽ�)>�5>��=wT�<x��J��zٽ�e@���U�ǽ~[=�p���d�;��C>ޭ=�.>Z�z�?����*>1
����߽}X	�e=֝�=�~����ʋ>^�=�k���N�r�B��;�Zh�/ J���^=�6�/ꗾ��὜��<䲎=]f>���=���<�&���o��KI�������h>%�o>;r�=�Յ�PH�v��=߀v�ו�ى^�z�<WWa>\&�=$�����<�ȣ;���=
�>r7Y=Y�ս=��;�>��]��̻x��S�G�i�=����D�ʽ�#�=�����)�ܩ$>�q<I���p��=�b��e���Q�������V�=�`�=�,\�f�����[>��k���s=^���8hA:J����r<',�=i�����8=x�8=�f���r�> �᭽��W�+Bݼ��_>�F'�n�,�	_��x�=��=�.�<h􎾜q�<��=B��:Sxǽ��=4>�=�F>g���p{���?����=hG�1}��>�-��ūB��z�z�>���=v����E>E>,�7�C��j�=��>��ٽ��=̔P���=5�<�/>���=I�=�7ٽ?�޽ �1�d*J>��������%:#�;�v|�5UF>�>��9�RL��J�<W|����
�G��;�`�=h"������绻<��=�T4���%�j�=�Λ9�8�1L�=Lt>�������K<�pý�7P�:��=϶�>��>��h�e�;�T����<��=e5>�_��
���<�)��w����:t���r]+>���=���i�����=��<a,ƽ��E>�a�={E�>t%������w�=�E�<���1�R=�;>�T+�y�>k5��Y=�kټJ���Y�K=\a>r�<=k)��<���,=^�.>�UW�!.c�������p���vq_>�]~�3�c�E>;�t��q���}�>1�=��>�����+>�=��>[�<�6=��Խ"�>�0����>�x�=.��=2i7�8"/�C,��<l��31=��h<bŽd޻��0!�dgW�x��[j�=�6>�����<c">nH�=�,>� >�_�=��i�X���,�<��1���=���>B#��;��|0���X=��H�ź<�z�`��=|�G=��3��'����8�B����x���i��=�<u��=�R���u\���I>`�=��I>#03>�V�=�<e=�~�=��4�"�[=�₽�1=�c>�u*=ƺ�<��X�=��=�3>&�>�нF��M5���A���p=�"<#@��I=��w>[箽����ќ>=�>���&Q�E[��<J�=�P>L8�������>�y�=�u�>(� ��~��Z;r�����>���=����I>\��AX-������?нI����M��Wa�>��c�!�\=��>�D>=���q>.�=�>�'=�%�BZ��v{>�->pT�o��=�K[�OXB>~n=��� `�����l���� ��>�5��b�ý좿�vK\���>깗=w��= f�o�M��WI>�ߔ=N�=n��=Q潓�=jDf>����Pˊ���>��5���=i':���`�ӂ�=W�<8N�U�C��="�=`�=�i������{�=6�=W�>Ҋ(>��L��4�y�>�>-�ѻ3b=%>wB>���=��<�+>�
>��2>���'9>��>��|=]����>~i�� >��ڽ�=+�Hr��u�>9�5��Y>z��D��=F�=���'k=��Xs>̶�=h��=�|�=&�-=x�h=p�>%��=u�o�b܉=,������,��=/޻<�?>Р���=��=PB�����j��b�>����-l��]���9=20��$�=I�%���G�>��=����WV}=����(��?�#>w�>�
�� �]������#��3$=��<�<F>��D���T�7do>��1<��t��a�=�=�o�������^��2��\=���s�H�B="=�eS>�K>ZI�=Û�#��]7G>������(��a=m}�˒���"�e�	��n >���<�;f�3�="D� N}=}�>��d�>Ϟ�<���;rτ>eF4=�mW��p�1B�<Ɋ�;���5!�!ɣ��|��=��h��E'>�n=1�A�9b=ܵM9�P> �=���>T"�>���=�Ja���.>A�G�����s�ޒǽX>>/�G�"#�<�T��-�=�G�Dg�v`^>LU�=��?>| 8>��ؽ6:���<�>Z2S=�BK�1�.>vɪ�&
o>#B뼜%�= �)��H�=n�>+������S����+���9>�1>�ߎ<+��L�C=&o>���>�NZ>�����a�>�U=��j=�S�=|)�=���=[N[�U �<un?>¢�=5�6�W��DnP>�0>ti=��)>��S�[Ʃ>��m��,i��i�>�{S�����u���ǽE�张 ?>�N|>B���U� ���=�U���@T>��x��m�=�5�nj��>D=�U���

��
�="�>�B�<4��=�j�=�� >�u��z�5�,å��CT��(S�C>�r>��>)��=�>�83��f�!�b="mT=���XS>gR�=��Ku+��D�< 3G>X'l������A�����LE�����>�T�>1.��Q�`>��{�H��<+/�pl����:�Cs>�U�>�x�=�W�=�#�=-"=,��;7T�=��Žػ�={ŉ=RaO=.��=J��;��:=�-���m ������; >��]��p-c=��>�W'>z���Ť���E����>��>�Z>�,y�xV��A��FŎ>��v��Z�?>p�>� �����=n���}.U����=�J?�Ed>G�'=uPU>�MV�fE�����=O7E>4�罜[�=\�`�龂>чn�B�v��]��|P�<s�= ���(����L_�fH&�����%�=T���=X���G�=D7=t�Z�� ���U��<�E�����Ѱ}�o,>��;�X=�+��<ۨ���=�:=Ӏ���Q����=E�J>2��=�䀾�}��J�=��;��\m7�v�=��=>��S�};>/��=��Y�1%=/��>����n�I�V�e�+C���n\>�.�=� ����=sb ��7"=�0'�z�-��U=>j� �����}� !#�[�����]>�s��e<X�g=/�>Rij>L{�=,�4�?*���>/��=�����Em�D݋>�J�p(>õ>��̽T���&A#��3�<�i�>�R]�������<�J.�%�R�l\���0>��L>`�>e�K=&�.��}>D��=��<S�$>�7�k�m=i��:s>�� >H��M��<G��|��>w0�>�����<'�<N.b���>J���>��+>$ߛ=�=y��9�=uA<��L>T�&��=F����>>����S<�[Y�s�'��j>#jW=��>�4a�k��=�".>��=�,>vw�>ǽH�=��>6>�{����=̩=�߽��#=0�+����=| ͽ��<��=�,����8>;��=�]>�$=!k-><�3=�?>X�=&��=ݨ��վý(���ĽF�=�<�=���#ܵ�h��=�s��k�=�x��
���@=��d�9>�p��㋽��н��4=c����w@�6�W>�w�<�0">ė<*��zqX=�J�w���*0�rS>�Y�<����l�L>+�>Gi;>���x��O�@>�f(����=(�Y��tk=%�=_�=mJ���dT��Zy���<b�N�G��=]Ln�54�<�k>(aI�?3�=W8#;*�=������=�T�@�:<�t�4��Q�=�Y�a���R��y�*DW�⬝�b��N;3<+
> ~S�RB���=_k>�r�n�=����
��{=ۑϽ�#���`Ƚ]1���q4�]��˖+>�F���$�y�=_�9>~6网�{>�����U���(��7>�z2����<v5X>�ɻH�>�բ���>0����޻�I'��ļ��=Q��;��>���S'�>G�̽�熼g~�ز>����� =�����
6=(9�>s�>�z������ǽ�%>ip����J'>�$ >�vE=����r�|<�| �{0:<L�:=h��s�<��C=�2��I=���=."e�6�a>΀�,��:^�j��T�>��P��<��->C�����;�5��V=��/>P�L�fW�I�.��a�'C�l	��=<A�;>J����=�U��y�>a��>����=|"������1��m�=!��=���˧6��;C����>�+�=!�.�`{��_μj�T=�#3>��彩U��n���a=����g<�>�3A>n���S(�&d����>jX-�2-`�g�����=r��p�=��Y>J����G��V&>+ =0��;D��=-*ͽ�y^>?�/>sL�=E�>�����j>3�f�P���J��P:>$/>e�Ͻ�X=>t`�=�C <ܶ�>o�Q�đ;�l�>�N>ض9>	H��B��D>~��ȁ��3S����>��>�ę=�Λ=�)�=ŉ7��ǚ>:�=��	>�ջ=c�9��1ֽ�����>���=>��>c�	�q�"�3��>��>�괽M�s>���=��3=��H=���j�={��=.�>
=��l�>��>�x���U��Q���=��e>I�^�+D>�G;�^�=�>�pJ���`>�>tOP=�1�O��=�7�>�%�<�Tr>I2�>�̅��j�=��=�ټB�I>����D=ێ��E�e>��j>�J=��x=6�p�喙=KW>q{>(�������>$�l��_��Hh5>�K�R�=ͦ��(>Hz>�d�=x6>5E��T���2�K��8V;���<�=�{��~�F��o=�&%=�31>��=~e���q�������<8ɜ�����J��=�׮��@�=)�i��=2�`�~)V>j	=��K>��=c��=��>kN�=��=�˼�����}>��ǽY6>���=Ʌ��Iu�>
\>X����<iZ��6ν��)=f���iM���=7N9�N����7�z,U>�mj���=ѡY=C�=>�u>?Q^�����/�=��=,�K=�+�=n)��c�=Z�D���&�^	ӽ�Z�>Vd�>	s�,	ϽGG=|
�=��B>���=)�F��	:�I�=��%=8Cٽ�Ş=I�X�s	y� 86�̊�9��=ݎ���>y潡I��aM>p=ֽ�>�&���c꙽kI���o�;��	=��;>��,��4�<֑�<f��+�j;v�����>���=�0"�L=��y<��ǽ����0�=)߽^�J1t>ө���i%>�<���=d��;�>4����jD��2����>�������;m�X>%��:�bh�U��=>���Ϯ�������j>z�޽�g������&Z=#j��`i=� -���>�N1�Y@=\����p�<�T{>N�½�����.=���=�J�q�;�%��-�=;�y><N署����R�)�> �|�a
�;G>�=�H[=n	��>����R	f���i���>S@��=�0>�i>vm���#��&^���,�ri��"T���>m��������o��4>�w�>����	"6��gE:n�>�Փ=*�)>��=)��d�=Hռ���<J��={졽�����3	>X&���=��<^\���;Ҕ=Fݭ���%�������I�__>hdž1�=QW=���=���=��ȼ >a#>k�뽵o4>ǈ�<L���3���㽨5�'ˢ=KlN='o(��:s��[>�$="6I=R�)���^�P1�C�;=��E�l_>��l�X>x���K=�|��hW-�b���䅼�_>���>�s���v���:=��<��II�����bv��>�ƽ:t<ϓ�^'�f@N�f&=g?�>z�q�5���@��o=��]��H=/;Y�c1<:�8=��|>V��+l>2Y�$��=�Ǽ�d�>�>0	�y�ֽ?��=�` >k�)�n{�>ٱ����w�>��������T>�|��,UD����>�z%<�6��𽕾�0m>7�+��mʽwc>eнw�<�V&>3}�<��=�
��j�=�얾&�=�/��ԧ$�2�s>NX/�we<>,=�}��>����0>�%��A�=V��=r��C���k��w_�>�;>D�=�Y�]�h>x9�<a�<�̽� �<�U=P;���,$���?>�� �wN
?V��=o��>�[�=�D>h�ʽ�J��ӫ�|{�h�S�!�y>���T�>�N�X<�%޽�i�=��=�OѾ�?h�U=�m�؃��G�>�V>�[�����=��D���k>�=���=nN����<�PH���=oG>M-ʾ<t���8s=d>�)ݽ��>�4>�x�=��=�r���<��>6�H�>+և<���>H��=Wg�>"����ួ|	�W4ڽ��d=Ƃ�C��>� ��.�>,ُ��}>�g��О�*������=K#O�8�=�v>G�ʡ1����=�%>n_�>ei�<�=�\�>	*��Ⱥ�"�=|u>�ڳ>�[#���>H��=�]7����<�d����F>.�@�DؽSX^>�R��x�h	J��э>흰�f������=��=�!>�����=��0>6�&>�r��k�>�v�=(i�<����Ž��`��i>$��!�
>tpq����s����m��Ů��ܦ@�͊��W!�U����⋾��=M�ɽ����%x�=��<�|>5=7�6���#>u9=󧟼��>/�>0ݽgtG�W5�=���<&�}� d��a<�+jI���P��(��Rl='�O�]�=�1*�>o)��H�b��=0������g�&�D�z>��^=jւ>ӽ6����=!ﷻC����.-���7Z<#��=��Q�����
�"S�=7�=W
<�6#�i���o=>{>�]����!>�s�¬�Gb�Os>�ҷ��ؐ�d�8>؉�����������&�p�!�Ž}�Q��=�1>E�޽T��=�b=��J<�sn�y`=�8!��A�v�=h��=F:�,�>���=�[ >��>ώ|>���=�%�=})'�lw�=�4�=Ԑ���h>?]�"<�i=d=���=Z�
���4>�$8>]A�<:q�>�.��ݿ�>}>돐>��='/ƽ��V>ڈ0>���+�>�Wa>�����<�.�-��=�]8>�_���SK>_�u>� ��j7<�=��>>k���B�p��*�(�+>?;�=��>'L<iu>P=>b�>-�y=���=�p�>�q����y>|<&>|{>�
{>AZ�=�{�> �Q�3=>�1=N���༼Um�<� ��S��>CH�=9ի=z/:>�|z>��� �>/~3>�]p<�\�<3��d>��>φ�=f�>=T�&>�r=H~;`A
>��>CP?�⁽33p��Ź=�F�=�I��m�����m=h�?�9��; %u>�q#>�1b=��>캊=��=�$�>�_2>%�=����P�>�Vh>Y 8>��~=0�%m)<t%�=�d9>o�>�d�<��>z�ӽš>�_���*>�D��.�aڷ=��;�_t=S7=і(>���=$>
<���r��c>]mt>9�=��%�o?��k�>�˿�~�,>��5<�0��
>��a>I���/���0;粽E�S��X�H��=��h�^�$���?�
x0��J�;S�L>M��<�5�=T*`>��C>�6 >��>��3���l�=�s*��w>Tļ|��=�@�=���=W��J9�=����4->�h>����_�$>#���S�$��=�u7��=��Go>��"�?�Y&*>�d>��=��e�`M��E�=R��=�� ��c��#�f���\�����t��\붽	�C�����x3�6�>��=��> R(>��ڗ�<�=��LYZ>:JӽT�=��,>Nko���	�B�=z>dL���8�)7�q��=���f��q=d�T>� =�=Z�>4���[==�=�q�=�ƍ=��U>\3J>5�K>��y=�1>z3s=|G�� = ��=V����-�1���O�
>�Qǽ����Q�9=�w=��>�/(>H�2>�h6=I��=[�>�h���#ӽ>>���<��+>/�,>��*�ģ��4�=A��=��mD�=TEq=s��=�bw=Ű1�i��ӡ�$�O=3�=�ý�ME>�����=�^>�#=y�=y$E>Ä!���=��h�"<b!�=��>	Ɂ�J>Zǻ�R5>7��>�ܶ�Il$=�dS>��XrA��0�g�=�W"�ݣ��#F��	�>����齊�<(VQ>\��>��c=���>����G=$��>|;��	&��#��K>-?�=�s�<�4��5Z
=�F�>��>c歽/�~>w�>�rA�d�-=k�O>Ц�=�|>%Խ��=�k����n�_�U>�>i�z>qD=�ʂ���>�p�>��K���<�5^=��s=(�*��N>�(�iν�V�<DE�g^=�6�>�$.>O��=�uA�(��	�^>�]e=�q�=Y�>#���=����U
Z>��V>���>f� >~�n=z��d;>]6���S���=�1>�;>���y�=K��=�s��h)>�S�=�;>�hż���<�B�>�d��>.;\�,�Y �?(��E$>WL�=4��=������O6��>�sY�W4> �	=].?=c��=�f:�*Ľ<�A=T�>6N�K��=���<���=f�I>�� >�>J���ڻ-������=��'>��Z=���Y�5��b�q�ݻ��>���s�>�
�g=vt/>J��X���zH��F�=Z���P�׍����=�i>�ŧ=��>���,����> )�x�>�$����ҽڳɽ+f�=�Sv=��X�wڮ<���ǆ�r�>��=Aa�>���;Y >���=Rѻ�Ӂ�ud�Q��$k�ZF�����a,=�������݃н����/�<�[.��]'���Y>�դ=6�h:>T�:<=�=�~�=�>�=��M<oK���<6��=���S
>�B>Ud�	uҽFC��$/=])���.�<�|;�J_����>�n��=�#�>��=�&>9C��=���=15�]�=�*K�㦭���A=�!�<�0=K�="���$
�=ϧL>$�=y�>Hh�<Xܮ�|����Z���#�=<��=�p��W6��] ��=4�m�SNǽmzy>-�ڽ�#>'k>��=����c=T�<" >���T�N�]Q��9=�?���M�>.Gr=�,U��ٲ�8��=�I��,&D��g>߼/>��:l�C�	�#�G%)�)M<� >��=Bu<�OJ=��+=Go>��)>7!2�:�->�q�r'?�#�>���=,�g���n�2j>~�,>�W>;�=����沽������;�h����¼S>	V8�����s==��:�Ƚ�����">i;>��<sc�*�<���=>�/>v�B��ѽS�A��u���)U��a>D�>>/�����=�	>*2M>�q.>�)'�"��=��=�ؽ`@� �&�P�y�SA>0���G5>T+�n�2�� �����L>�������>&�<>{�=�$�=U;�=�g>�����9H>ܼ=�����>(��=�ڻ���rtW=n	Y>�*�����3)>���=��=�]��,9>����7Wj�����m>�2��>��?>*.�>���<��¼ٟ`<g��=��>5�~>�i�%�=�o�,>�����T��O�	=�m�<-��=�q|�+a}���=$��&nF=j@���eӽ5ԇ=�8�>{�&>t�7�I{(=9�<�yk�>]�|�ջc��(*�vaS�� <1��=�I�=�,�<=���=X�<��">p6��1/"=�>��%�� �0�2����G=vN2�A�6=�/>y�
>��=w
���׈=�+6�%ݔ=B�>(�p��^�À(=0�>���>H)��3	��}��<��Q>k�>�>7AA>� ����ʇ>-�"<r�L�*�Q��S�C/Ͻ�A�����k�M�hh����)�}�>bi��8������]�B��^���LP>���+>J�f���O?W>��DPո໐��Ӧ��#���>���k�1��14>��=/\�=�?��%>�L��wE>dv�=���=,+?�@X��7���E>W��=�pB>�}��8>Ppk�-���O=��IC�=��=�@�=�d����]>�64���<>���a�}=޶	�1���oλ=�_M�Ya<�R�=.��=�,��2nt>Q+�+�F�vkg>D�>=��>'G��fݰ���=��=M�"==
P�2/�m���<��{>/�=�t�;��2=�NY�F"�>��R>S���z>>��=�h)>V��=34>f�=�z�=�X.>H�B���2�&J>TH=%���ƹ;�/=��=��^��+��>�{��=
"�=�G}��c>��w>dP?>���<���_�;�ذ>�]�;	�P�g�=Kr�=8��	�I1>�6s="�~��w�=%�2>�Ϡ�����<R?P=ן��ҽ�3>N=>uH&=i���a9>��<�M>�5�=���=1{I>�\��"=����O6>��f���o�$�宝>2*�#K�=%�<��=>i��r�S=`����r���*�<7������ʽ��C=�y�=���=��<p~5>�ы��V.>�S�=1[=��z<@�N�S>�W1>a����.��^�)�kzl����؂�=���=��;>DN>W�>挽PU�=}T�&]�>�K:>*f�=��� >
���+=��񽣜�=p@��0�H=h�>3�U>�`=��>;
!�s�����ϼ���U�˽̕�=r)��`k�<u�<���=܁<�A���� >�%h��e��9��y�=�-ֽ���<�J�=d̾ͬ��6j=�e0�j�Ǽ�x½�>~�=Y�)��nQ��ҕ�а�=`R>(��L�=�-,>
��d��_���h�=����Qk���a)�Z`>��7���̼iU�=�Nl;���<c���L��Z�ɽ ~�������=��7 >�tI�kU�(y�=^퍽&j5��r��з	�$x���C�울����}~�<<�=%(̽��=��TW�(�<��P��P���>_�B��ǽ����A>��u����:=rJW����={����\����E>��=�[>|*�����<Mֻ��c��%<��l��V=��u��<���E��S>�༞G��!�R=c"�����:�C䱾���<�"=�0���<�r>�ʥ�5h���:Q�!��=_�y>��b�h!��l� �z =>h�>�޼�I"��wӼ.O6���/�{���F��&�]M]>gڜ��=í�=ݨɽli.>1�]��%�>�Z>:�O�%>sl=|�Z>י�>��>姓��B>j�w>i�]���4	�����>����*�<?���7�,>�����d>��|����<������O��h:�=��/�C <^��=����G�>)�Y�J�����/�=�p�=Əm��|���=&>�C2=�&�>6�<4�>2�=tr�dk>Ɨ+>������z�3>�DP=L�[���=� ��d��=��t>��<��ɽ��{>v��>b)>ZW>����&�t>  \=��>I��=�Ͼrq*>[4)>�>�J>�Oм��>��">^rr>�0����<��.>%�K<L���ͼ�Z�>�,>ɏ>�[>E�\=}��=�u߽�n>	`>�_$=|�\>qmW�$3[>@%�>�H�nH�c��<���ٻ��=r���ٕ>�ED��ʞ>���}��Ѷ<^"k=�<�D��=��<R��=��ڽ+8L=3�����=�{�=�o�<��>��N<ʟ��m"�$�2�ͼ��X==��>�B4>F�c>*��=5�<�">j�>�<��/$=���=�e��໐��Q�<#�q�nJ�=c�ƽ�g#�gt<�;�d���&ͽ��B=���{�=��F� �ý���=��=w��&P>L�I�Y�B��B:>^���ٽru%>P/ʽ�*e>+ p���=���46�wo:�Ñ���?7>�ݖ��D�=��C>�9C��=��=��T=�1d>�5ֽ�J>�N��6/�"ٳ=* J����EC�uL�=u���s��y슽����ï��&���I>U����
=��<>�q�=7�=
��9:�=y�n����=|J'>�9�=n#��N��;I����)S=�m�QM<��Q>�ڽ���� ս^Z>��<=tO���<�=<�=�h->\�qc�=��»���=��=����=ar>�g�=����*.�<Z�;��C>s6��m�=�y�Br=�=۾>�Y��=ْ�C\�=��>	�*>�V�>�s=�%C>��=��佊�>�x�=��>�/�;�oy=p�f>^@�������L�=J��=�ge=J�T��_��(���繾����=�_�>㩡�6#$���=��=P:>�!h>�Y�B�={��=�5�=˺�<nu�\��Ox�=dv;>0p�=��V=p;c��A�a�=��=[nK>��+>z�>�A2>�:`���־Q���Gy����=�Fs�����L>�n�<�x[>,w��+w�;[��=���=��=>1�=���=�8D>z�<P��>�w ��8�.�>�9����=2�=��>������릷=-Ց=�=#�>�>�(�wD��e�=(n�<'oŽ�T��E!>�����O>�n�=E>m=m��5<��F>�n>�=������=_֦>5U�=5����M������4���໼N�"�l��:/;�u��=bχ�8)A=mڽ�7�=�_Q>�RX=>t
=uM��+>ik>xŌ=�<�=�����R�=N}�>i�s^g=~�׽8��=��=*>��,>��1�(�ý�r_>��
��[�����=�M� �=S��k���~�T�Խ��	<�,/<�1�>;+>���pC����鄺���V�=[ʏ��}6�[̃>C���\>Z��=n��=�Ư����ͽ�=]��vg�=���͖�=p�>�I�<��>]��=K>>U��2~>eb��L�=�>=���A>;5�>/�ɽI�=k�7���'>HD>�9�ο��q�ǻ�<����3�=�Hi=4e>��>�n0�Yv:�=�<|�=-,o<N���nDK>�ف>w!�=���=��PA>��*�@D>���=��s=�V����>���깈;s��>�1_�f��f
�=0�=�ۑ=JG�=X���=�<R�=��\=W��;�匽���<��ڼ]ڽ��M<��V>�'�=��M�<��:В���0�����*���t>�3��L{���M	��<�>o=��
>��E��F�={[�]�'>D��@���A�,�=���<<�������<�P=��K>���֗= ��y�E��f���x�>R�=��w�U/I>��*=�3=0x㽝LT>n1�<�
��0�=y"���� >�z��L-���>� ���n=�+>9�*>x�>X`�=���C�s>tS��M�=�{,���Z�=r�����/=_�L�1�-�*��=�ق>�|Ƽ�Rb�Jm��z)Ž��>j.�<��>mڠ���W;�/��M�=J��Z�!>A�=?��=) �1k<@'G>T��?!���T>�H_�Ң_>��>- >f-7>KA1�.����G=�T�=���=g�>���= K�>7>��#�y;��=�A�=��=��=�gd>R�2<iW��&:�xNȽVڟ=d��=	�h>���;�ξ�D��O���(���<��f�JIh�!5�˷=ek>��%��L��Ũ�<��d=��]>Y;L��==��=�*=<>H� =D��;�|=.5>���P� �H�= �^�88>�ʾ��������n���'�󻭼�W����=�'>�.>���=��='~��ٽ&����#�=�~k��_<��1��X	>�%=Lw\��V=��u����7=�H]���j�˅>�y*�Y�ƼU�X��@\�I���װg>�Ƃ����.u�+q>U�Z>�B�=L3�=������<`�V�W�Q���̼ C�>��R>q����2���XH�mKg>�U�=�b�q�=�_ռ��>;UT��C=�I�<p�>�F�=����y�I=��b>i4�fnF>|�g>5j>�9V����3�<�}v>Lon����K>�k=�ǡ=N<t��>���=3"2>fY�<�=BŪ>`���N��<���<4J��"���A>��=�½�L^��L>���ݓ>A[r��ʏ=��>gs=G�=���>�3Ľ�\1��W >�A�=!p�="�(>�!�=\S�<X��B#���:>t�6�#A�bk�=�Z�; ��<`(&>[��G��=oZ=����M�=�����k<�`.����c|��nF��	��me�>X�>Z}�����i��=��X>O(7�/�H>d&ν_&E>����3�>"�>/yW>��L=ې=p	>������=M����=��VF>����b=u�	;n�U>���=�+y<���<�3/>�ǯ����=�S3�,�ɽȓj<�K�=^T�>'z�=K�#>+���_�/=��^>~S>�����8=��Y>'<�<�>��=�ּK2>��>_�����=:����>���N1���Ć>�^ʼ��M=����+>Lý�%�>���<�<D=��<k�>�5���t.>M:�>�ŗ�A����-뼏�>�^�<�H�=�| �,,>�kW>��f=�/>n�=�6'>��=���g�@��^�=��8>OY�=�_ƽ�׽]�"���p>.z$>6��=�J���=�=K�=.�M����^Q�;?u�����<r��<�&���#3=��V���=B�'̤=�A>�sE�M!y=VnL<�N�`6��D�e=@���>��<3Ǧ�5��=r2=��=��
��X>fPU���^>w�=�}N��'�=\)'>�r,>� >�J�<�\���S����<���.�q�x6�>��>�z=��<6�8=(�~>�c1>E�>S�E=]w<E_�<���=F���ժ�=���=�}>�nQ>A#�={3i>���=7�@=g�=q�Ƚ8]j>��=)�"���)��>ᾎ��>rœ>��>H!<{�<��C=��=�b$>`���'�="
��ފ��=�qn>s�>a�>��>���=���.h�W���l��=�3��� ��ܚ=�q��G����?7>#:>��>
r ��e>��>1�4=��5=C�A����>�>#|>���=��8�qh=� K�
٬� c�<o5��G��MF��^0�&I&=�P����
F��/>�Б<FZ�<��c�q7>�A>�;@>���=B�d�ؼ5��+"�;jy��+�F�f*b<2����^>q��=l(��)�<o�����0>,�V�?� >~�)�<��~>Mۼo�>>J6= Vc�М�=l�"=~ק�,:>�i�=�'�<���>��;>��
>��y���Z�y=�Y�=5�ɼ>ݔ=s�>vL*=��(>�Ʊ�j���>&��=g����ڿ��^h�10�4F ���5>�I�<�M>V����m�=�#�=ӑi=����=���>Ъ>�n=�F�����<���^��=����:���=[�i�C��������}���[>��0�:Ʈ=�>��Ҽ̋���.=��T��6��w������{�=a>�<)����PW��p`�/.�=�#>+5�"�P��o�=���>-��ښG�������v�=#s��L>%�\>ܒ=$�=𽶽o���06�;�r��TR��Յ=c��<�-Y=螸����35�1�ٽ/����T����=��8��ꂽ��>����m���[ƽ����6�=�I(��5,>G}=�.K>)U������`o�=2�R<�i>B����%>�E�=qtȽ��K=���G1>x"L=��,���1>v$|>0Y>��=>D�x:�2�X��=廁���W<V��<Rj,���>R�3��<�����Ʋ<����e��=S��=�Xp�\�Y鍽N~>��<
��}��R�>Ûx<f|�=	�=uO>OA��Ͻ��q���T=le�=�o.=l�=K��=/��<��w��I]=d}4�*z�<w��=�Ta=çp��&���+>���;�䞼�M=t�_�\x�>�oI�m�>*<���hS>!�m�_34=���={�Y>$��=v�<Q
=&g�=�������^�����O��2>�'O��!=a��=�^���$����=/�=Z5>���=�b=���=�����+� w�W8������}-��� �����3���Z�Fc�q,�;ӏ>�NǾ���%�>!Ϭ��6?��LŽ�mq=�=�1�=�A@<@J��af?>V�ҽ}d���Ͻo6.��0�yl�=�����w>��)��D6>d~������s>>�F>f,>�:�<j�Ľ+w��׈��
�� {�>�>�����<~^�J��֝>b)�=����a> k����=�0���n=s�P�`RO=��н�����zn�uL��0.���=Y�>�y=ؤ��L$,>�g��w>�e���ľ���=��=Pty�L�={�E>��@>o���`�/Ki>�V=�t/=��ܽB�Z�Kp)���u>�_�=$ǁ��Mv>`m=)%��1F�slo>J�[=[Em>ٌk>�>t>�潩�,>g,=��Q>I��,?<ì��0�Z>&�,���Y��K�����=Hg�Z"=-թ��_>�+u;(SN���0�T>���=�E+>j�>:�U>�YL=^믽�Z��Cr=눰=�q>� �ԕ������V�@:t ��(�!��c�q��=X.=��n=���=��i���x����=f�z=�,�qą>֚�=g�ƽ$��=�����y=v��=���=�Y�y�=��9>�8�=���=nt,>���=|GѼ�й<pW?���%>�w�;ME�>*S>S��>S�5=��K<�X<�&�=d݇�Ok�=��3>`.����E=�8�=���=���=u>`�<G9>.�>I�	��N/>Ќ�>��=��=����v��9��E>���C�
p
/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/readIdentity*rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
T0
�
(rnn/multi_rnn_cell/cell_0/lstm_cell/biasConst*
dtype0*�
value�B�x"�|">�/�<K��=����=�=��)>덼=b�= ���au=��	=H|=x��=u~�=�=`=!��=�;���9?>g����#=%0 =�z<��v=EB>��V<�<~��93���\�=��/=_�*=lq�;5-=,{�9��;���vC����=ӫ�r�<W3�9�ռw�=�2����x���=}�[<U� >��Ľ�=<�}�<He���<  >��=��S=�#|�c��x=�'"<�.%<2/ =Cs�=�'�/<�=���=���:���=2G�i�=��<涝;a��=�!�;R=��=N�^���;>W����-R=��o=[�Q:?�u=J >���<sп= f�;�x�^@�<d
m��Y>:��<A�=&��?|:/f>�>Ą�=�{<Y��=z�<4�=p0=���;�$�<��=K�B�~�O>*�=��<>|=�Rɼ?��=i��;�AI='�Q=�E�<}��<g<-=I8�;
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
value�8B�8<"�8e=���5Ҿ22>��>���>������=�	�>:>E0�=�Op>�Ȕ���߽a����%f>�5���2>�nb���ٽ�b�>�R�=��;D`a���>܃ӽO�G=g˽����y�>x�G��ˈ>'���n��:c�����
�缌�v��n>/��O1��g-���$=���=&$`���_�ig����=8���N�o�hoq���@>ANu=.�1�0�>�����&�;��>����U��F>�֮��$��Z�<|�<Lz��=ѽ`�J��𖾙ꐾ2�=i6w��������>���a>,؈���3=��)�@�i���W=�����N���-d?h8C=Q����+b=���=��=9?ϾI�ٽD$�=�1���=���=��!��_3>;�>�ri�;�{>̭�>Ai�:�=�6)�;*� w>FS��;��if����>��=֑�=ݡ�>3=����>�>� �>�����C���+��\���i!>���'��^���y�%=��[<�������p��=��]>P��������g>���K�=[؜����9��~>ϚL��d%>&F'>�� ����=;��>���#������M�\�>z->�̾�<VXt>��>�����%��啛��r�=�t9���$>��:}�N���=�OW���7X���2�;;�j>
C>fN���;0��`>M���{�>v��=e\�������`j�*�X���<z|V���jm-�p���C<߾@i=04����)��F�>��0>4��.��!+4>$2�=dU1��ʍ<jV���-���V>��Q�����b��<����~-�F��>'�}��X/<W6�qa�¬1?rہ>��;
m�����0�>�Fl�}"���?�.C��C����)�r�{=ub3>��� Z>�#�?�1�<�ʾl�Ѿ�7�>b�?��ռ���=X�&��WV��_C?SQ	�-�%��G�>5��=c#b��nԻ�*�(1p�F�y��DU�(����D+>V}=�4c=<!�<ݍ�=lY=/�������� >�Ŏ=�^L;!��$��=۷�Ĭ�y�x>̏��`c˾��^�Gl|<LL������ �>/T>Y�VZ��.�����A��=�P4=�t>���=�\��e���E>C��
�+�4@@�܃�����ֽ(�<^��=��R��CC��<�v�= �	�ܮ�>������>μ�U�F=���=Yz��~HA�z3���">$?M����=`�g�σ��.�o<����½�������=K?:�����|)<��=��<>���� eٽ9�Q�*���Z���^Y�����b�=���r�Y�Oa>E໠��p�=�8������w=bT��J�/?�@�>��=�8��>b��;D�`��=w{ھq����Y>7'D>��@=�>�b�>m7w=����������!>�C"=+�Q>��Q�ǽu>=�Z>�T�=���=Q�>.2)��W�;�>��;/���9��=�S��4>v�载��=��!>W����>�?��^�i�jG�>�f���1ؽ&�=�>���=��@��7��(>�@#�q���em�>�z����=����:��)�L��o���ih>��[�C)>������O>�"P���=z�=�9���]A���s�d׽o�P>��r>E�<G��>���|>ʄ.�~m��D�����>��R�E,�<~\2=�u�>�l��<:>)�>�W>��� ֔�)8=�G#�������N><=>�,þ��=�b>���=g�|>�%���=�\��Ơ��o�=��=κ����>>��[>�#D>��5�=�+�=D	g�,��e	��
$>qǰ����������*��#��R�=ݞ�=����)ݼ;t�@D7=���o��=�p���a� s>���=r;S=��E=���=�o9>��s�soz>��O> �5>y�>������=��I>a����6���r��KF�J|<�]�=�YM�=#*>Pv���=iI <�mX=�A>Ϳ�>���>✽��>N�k>+݁�u�z><��=X�f�}(����ʾ6;>�S�߼�d��þ�j<���O���6>��>w)Y=Āf��Nc����=��C���o�F̘�3�7=�ZȽ� =��1=�ɫ=�1����7�x���.sT=�x�>m�>r���uN�L4��>��=AT�=���:��d��=v����L>�3~=�潶~��I��=���=�Oy�?�i>�>�=�-���Q�1>��ܽ5w>\^W�*�����=�A>&�$��W
��?q�{�H���>�<��1<λ>ޏ��"�D�Խ��b>�\l� 7�<�M
��r����|��f�|>���=il�=ͽ˾�˽�gQ>��ӽ�S>�$W����=kb�=,�Ǿ�@D>	.���&��ӌ>�O��_�>���pN�>g�>c�B>�{c<T�>n�7�x>$೼+_r�(��� �=�C>�="�= hI�X
}=Z-,=��y=�¾��S&w�^�>����@���}}<ǒ>��=�=m�v���� >��>�>u�=ܴ��ȵ�Q~>�*`��~�=ꍂ>�xZ>�,:�ڲ�Dǽ�rĽ�1�����	�<⟆=d`��$����>����'>oPI�|,��QԸ<uL(�	�p�퟾H�;�^���<yu����>d$��Tm#�WR~�ߌ�� �I��Tm����ĽI!P<=O=�*>4I\�OC3��)����2İ���ľ�O~=Pl꾃Θ��[=M���o���+׾ QN>>|>�W)>��4���P�{\���<�i�%P�B���ǭ�E�>�!$���߽�c(>V(E�P��=�^�8���C=���>w�;>�u�=�q�����>���=@ν+�>>^��4 ���M�=����q�>�f4��>�[�>�]�Տ>�>E��>uG��+�Q�c�2�E��>:��<T���i��Y�>�ɷ��d��W?��">3��˻>�[���a���g=��p�ֵd>�E2=�i���w>����)�<ߟ�>x�����Vk<�{�=��K�%B�; &�<I8˼ ]>�"����F=�~B>��N>e���'袾O�9>j�#>B(q>�}�=�ͷ�� ��)�4Z(=�����l�=���=X�� ��[�=i�����5��CȻ��"��4�=���|C&��\���!}�RH=c�F�����S�,/��������]w>�ń����=��;~��N!��0�i�ɒ=h�>W�B>�3�=�e�vn�������H�<ͿF>�>���=�?e�ƴm>��?��G��5��)���[�c>�"�=��;p��;;�?�V>��>;%���>���=��=�o���?'�ӳ<��ս�;�>��ھ��⾆�	��:���=H�<�?J>��j���]>�\>�sоK_�=h�ͼ�A����<x9`�Rs��B�<~s��'>kǹ>$�]��G>:n�>���	{��1�����=UcC�������=��{�c�)ٛ>X�x>�;*�c�d�7�^��=���X���9>�뼵�a�!p\��N�<�Q<r�E�R�>v�B��><t�=2�r>�P�;Ivv�
� >��=�!�O�zT>�lм���H��q7>FT��Z�7m�4�=��\��I����
0�
}���T>�$I=���<Yb1<�6��n��/c�v�>{z����>_=>.T����=��,�����p켟����|�=v_�4�	>N>����7꽋�,>��=�U��2;C���T�!>1�G=�o�?�)>u><�� >r;�=d��<�p�>9�r<G<"�0�κ=����=�(��y�T��]�a�o�r��>'ݓ�W2>�lҾ�4ﾆ{�=[:>���¸�(�r�'>=l�J��>�����3�4Փ=��n=z�(�=E�>lU>�3Q�/7����Q����=2�Ծ��[>���Iƽ*9�>T:�s�+��>J>&N@�1�@��Q�=W�� ��ᚚ�68+>f�+�i���O>��\��ng>w�:=�Y��X4>�Ӛ����M�Ƚ�-s>3�x��};�v�E=�Ʊ<p�� ���𽡌�>�-�>e��="F=���=����޵7>�͘��C>�9�p:�>C��=�68��k����	��
��S�?��ŕ�N8c����I�m>��N���=�')�x1�>���}k>6}�B0��,Y�>���)u�!�<�
�冀�Ȭ�Uϒ=�!��
��K�=&���|���9~=�f���N:�x��7��-�֋B�S7^�س'>V��=?�4>�\�<f��=n0H��<��?�x��ǔ�@��<�}�=6�־�6?<"꽥r����>GxU>�R>4��td��o�k>�����!�=l�x>�lO=�Ç��#���P¾����L�@�½��>v=#��ʾ��콒�����`?]<�=^�|8	;�ȕ�N�ƫ >�17���?oZF=㒽k�����ǽ�
���]�⭚>�=?�v���k���!�[
?�.?V�^�*��m�þ��>�?y款����'=?����>XP8�s�U<c&����>v�(>��ʌ�< �W�T�Ž���>C$>Q]<��H�W��0�=����^��mq�<�v�<��T>�w��~?E���aS>T��y������� �K=����r��<�X���	5���Q��A�����>;,i>p�<�`t�/q�=���=[a������)�=��=D�$<v����%�=]?=�/߽�o�Z��o:>,=�ꕅ>&e6=�l��4�5=��ST���a=4h��N��=!>����r[=�
 =X>�rӽ1D[>bM��
>q
I>�=�Y> �*W>��=h`w��Z ;'0��!�Ͼ}�ؾ���=���qZ>���=G��3�=�~>�}}>m��=�мn��_t#>�ҕ����u>^�T?�E�>�{>5n<���=�o��LaC����\u>5�ڼ�_B=��{>���=3��>s/���|��:��>�1��s̚��L�>��<٢>A�=�E��M,
>��=���=?����<�AY>�Ѕ���>
�
�b3�>hb=�YI>����/�W�7���ֽ�C��S�>b`��4�=��4>WS��g��<�<��FeJ>I��"?N�.�>=�!�>��y�2߇=K(�<�����=,���L�<�=�&>*98="~G�̇��?���\�<�����M�3��=��~=��G<i=j��;�*����>��C>V��e�-=�}v="+9>�S�Q�B>��t�p�}�`V�=�TA��Fl����6q�>�J	<�%>�U>�ɽ] �i�9>$,~>G�۽��z>��=J�>6-�=��a����@߾z�����ҽP=�=ؽ�ι�>�t
=hq*>n�I�ٲ�(U ��>ٽf>�o�i3T>�\�?:��RPǽ]&�<�Ȅ�R��뻽��=�Z��i��ɟ3�ki����>������=b|����>ڊ,������O�>.����Ͼ�x��G�<�ʃ>��%����,T��@�vwý�٩�Hp>.�E��0*=A��=J �['>��νHuc�Z�[>_~m=�[���$=���=��?	��;��I�a>�����8p����;h#x���G>I�>s+����y�"��=�O����D=�>|z"�8CG�{�[=�.ž��K=7h��� ���� ��"�=�m��_V��������<u�e�	oB>j�H>Ԅ������y:>!#
��VܽY6f=�ӻ�ր��p�T�ͽs~�=wI>�M%��I�<PR��J$x��
��,6>E��;��N��U>��> ݾ��|��It��C�:��= ���)%=j���T���8;vѧ<.�w>�64=kU8�6��*��=����ѳ��J绾�4��5�<�>��M1��"�(>Q���*�>]�������v�u��P�.;�M����/>�7>x�}�N��U�<�7>���=��=�{}=��+>c�>��<�Ӿv�ݾp>��r>d��=X�	>0�=�ߏ���}<�/<�e�=������^>=h�>鲫��}��Q��;��b>���<|�<����d7�ȳ`<��ӽ����`"�(L�/p��V�=���<i��d�<�U%�'U�<p��>�cD��˃��7�<2�&>�tD>V���Fu��c�p>�>�@b>,t��V_�>,<�}aD;��$�����>Mܰ=`.#���=��>-6i�.٪��g<?"����ǽT'��;����>߹(��6���^�=��%�c�2������{C��:h�����:=v�k���J����ͽ�י��^���s�b�˾N���^�#>z�=�_ ��59��@�>��ͽ��z���@t��Wʾ��e�G�*��8 ;�\�=V&+��\��Ƚؾo�=OB=�y0�H^G>�|�� S��F}��s);�"���,>^e=�m>(�[=�����@ͻ�To=�̈�.|=���=,�=��F� ���<h��=��n��aN>�-F>�䩾�Q�=��=?�*�<�<>>����跾a�}���i?j�>��ᾎ�%��4}������]�X��>�H�����><�ϼ��	>y���)���>BJ�{��<��(�l��>i�M��c>ۣ5>H��>��W>�����Sm>�޺>Bp�>�0>;�˾,ў�E��T��>�뽅AV�V��e?�>�N�>��I1>�>GZN>l���!
>�;>)�����t�=iY>:�l��->#kʾ�9>��ݾ��L�N3�=��2��=[� ?�Ӄ=�h�Ma��ek	�M�ž�����>��T>�nǾL*ؼ���>0�J�i�R<֘�;�~ܽ`�L���پ+iZ>�\ǽt�=�S���m>�by>���+�=ʽ�=���=�k>�L<R 8�=М�,�=O
��zT>ِ���*�����9��r��?K<���>_n2>#E�>�e�<
w6��Gl=�Ƚ �����&�;�#>+�پ��=B�v=lžb��=и�=��۾�W>6�<7�]�M�c=:�">�u?V�L��Ҿ<=�=Ϧ�>�0�<g̣>�>�P�����[��	�>f�{�3�{>��->���)=Q&P>���=��m>5�/>��>>g�y=�V�=�m�����=�>@��=S8��=z�&����X������,O��
U
dense/kernel/readIdentitydense/kernel*
T0*
_class
loc:@dense/kernel
�

dense/biasConst*
dtype0*�
value�B�"x9��>��b���X���ֽ`����?X=�����;D!d>�Gq�rԁ�S�'�0cq�딓�%U��JT��e?�E��O~��GN�^�}>|'b<*�|�:?MS�<�1 �>�>�%�����+�
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
value�B�"�-��=��>�b��>>�^�>Q���qh>?�[����>n5������Pߎ>��+����%f����M>����U
�:Z
�>�		��XŽ�����e�>��<>��<�<�>rk�>�A�<\� >jl
�:���o<>B_e���M<������ѳ�>ZʾL��>�{�G������=랼�����|�>C�-�8��v�>�Q#?uz߽;Х>V�����Ľ��3>b�R>���֔��Q���Zо���>
[
dense_1/kernel/readIdentitydense_1/kernel*
T0*!
_class
loc:@dense_1/kernel
A
dense_1/biasConst*
dtype0*
valueB"9�:�>
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