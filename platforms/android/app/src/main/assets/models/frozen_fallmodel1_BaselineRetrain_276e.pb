
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
value�B�"�����C�>�����Dv
�^���x��=���>� ƾ��>�@?�,���7j��N\>�
�,-�=�ž\�>�ı=�w>�� ?3��>bO����p>(�<�l���<��ʾ$"?>�ў>Y�>����-O�>�qb�*����`>~}]�7�>�lx=3�>N�>xJC�DԜ:�W���C�ŀ ��6;�DW �;?R����>zk?�>=kѽ�����>���> �����;� �����=��u��O>W��1N��?S�8�K>J=!���==�N�>�j�>m������>�A?\4T>6�>� ���P><]��՗�!�=QoX�虝>�c?�_پ�?�r&�US��
[
Layer_1/kernel/readIdentityLayer_1/kernel*
T0*!
_class
loc:@Layer_1/kernel
�
Layer_1/biasConst*
dtype0*�
value�B�"x�G>HOi�{d�=��B=MJ��^@>��)=m��;s��<��9�����/X��e��=�;�<C���O/'<�1����g>_弹-=U�L;�XH�? *:CB?=�K7�ʲA�'��>������=�6�=
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
value��B��<x"��(q/>���=j/��?$\>��>)�'�$�!��$�7�w>�-��1����K������ S���/��2�<~I>,e���zƽ���!�� c�	����=a�=\W">��>�
N�Ġ>��>-�Z>�ͥ�s<���M=�N�=���=!�+���
��M>~��]�o��U�c4,�
t�=>�_�|A�=f*>���=Oة�q�S��C>���b�=��=��ؽ�>�A<>*U��:��0>}�J=V>�~��`>��.�Jl
=(E��!���W=��½Ũ�>�?��;�,>΂A>�e>�+->�=�<��=���=\���J��=5z��`+>��2>e�<J�=��t>��>+�σ��>sPL=oZf=�!�>1�5>չ��r��C��=B���M���������;ԙ#�����ڻ�>��I>	(�=QǍ��Ͻ<��=��E���<VA���h��H�<�'��.�=��>������(<�a��jB<�����{� %>�v�?�����=���=-�=%㧽wO��QB�=�->���>�����=�_ݽ��ѽ�����@�x���;<@�>�_�<�\�=�^�z���!	��=<>z�=>_-�R�A4X���	>6��=� e= Qy���Ra�k}�&�=C�C>�ٯ=d�>(
�tD'���>�[׼�D�D��<�k!>��>J��B���s靽7=>/����X�^`>&n���{f��B{<�$3��'>N���п=���FF�׳=��>��A�=+�>4{�;� > �i=1�=|i�;j��=4���H�^��<�J�K>&��*H���I2>�yF>]�>�rl� ��=��p������a(=���=�
�#;����R�K�9�� =�M�ɠ��#>�u>�)q>�Ѩ=P���潃��=�X�<���;��n>]�ʽ��>d�!�
$�>f�=��>��=�/�=;h0����=�&>GG=�{<�5a�\���e�>=�9 �,2P��.�=�Wz��-�<�M�=�,�=��=2m"=)I���-<E�=4^C>җQ����=k��ľ�>#� ����@�=")���-�=]���\�=7w5�R*�=���`N��^>L�#=��=>1ľ��Z�4=~Kؽ�f>Ȯ��~��B�W���J>m�z
Z><ތ��@S�� >jO����=��S���3>���	��̴�^5\>������~��\G=$.>��?�>h��J8��d1��-
>j�->4��<y����_��p�=YI���=��;>T�<.1����!>5�/�#>��:<D�!�:��W`<d�=L�q>�B�>���=U ��̂����?�i(�������� ��u�[gu�QI)<;��<�V�T���H �����=��ݽ�{�=���=l���?���z >=��>|>D�$�����, ��	>AM> �>��˽��c�}齯�����n=>���GL��x�<B`>͠��ҭ�=u#�>��,��3W<1Z�=
j	��ݓ���>�*Ƚ_�N>rR�=	�=�����-�;oZ�=3#d�`;����=�o5=�S;qd>>�m�����Ù>:D���ὸ���2ƽ1�Q=A����/���>�3]�.�<��<N>I���ǂ����<��= ���Q��=ɤ�=# M<r��$�1<印�9����T/�Yd�a*�a�<<b}��i�=J�F���.ڽ��>s��=||�n<���d��%�^�������=�dC>F�3�
O=P�o�O�4��}�h=���,'��ϬE>�,�=�?�
�����=E}?�$�=]dj>�/>�l�>c��7��T����|��6�=��=�Q�=�<����>T�v�9"��m�D��r%�JB>s߼=V��=��>�H>�x��՞�>_ʽ��>,)>��<��$ý�ʢ>^|���(8>�1�=ӄ����U>^7�I�">�D��+�=��w�}�>̃6�
l=f�#��=�=64��������ʽ,n�E߀>�z�;���>��=���=�b����R�#�Pu�=FV���4˽tW��p�ӽ�{�<�2�;"�Q��=�=Bf�:��;���=���=�d#>����������*��?���5�=C��!���>�
�0Vٹ�4�>%u�y�<��=Ggh��@ͽ@��+�=i.N>�ے>,��=и?>�A�y>a���X:>��@��SQ>�QJ>vO"��5�=ly.�
~q��r�=��C��⏽i���5�>/1>�18=<�'>�Խ�>�X�=�x>%(>�F`>?�z>p^��{�+>A);�g�W=���s཈D[=r΁��n��9�/>t��<$�����e>��=|�'=�kk����=�?0�	R�mY=�z-��*7>�
�>���>�ӽU��=;�ý����F�>B�> ��=g����/��z ��#��M�ʼ!B�G��-�����I��>5W9��2��kC+=.�����K��a�=��>����)�=%�3�iR�<5!�=��v=D\ݽ���<���V���
D#=[b�>�E>�ˏ�''��]=�����9�������=�l����ƽ)�徬y��~��=F�<N.���o>A��>g���%1=Z�)>$�5���d�>H��=�2=����RG�����>���ϡ&>~~z�JS�=I^P�P���+6�CӾ�w�b�=�h$��\~�k2��&�<�>2�a����/>u�>}��=b����Ғ��58���<j5>�1>�������^��>��=ls?.O�>׾0=WT㽆͔<���ON=OB�=���"4�#`X�oDE�v�1:��ܾL�7������=�W3�=.s$�'P�=�Ҥ��G���ŽJ��<!��=��D>�[M���'8:f29�u�$?�Eo=��h>X���P>��<%��=#���<�F�=�ڞ��T>_��>8t�=�>!�t;U��=8��ˣy>���\KU<��m��l۽�*�<{%�Dr��Ed��O�oX=�"�=;
>g7&�vq<�Y{">eP�=è)�ǿ��[��`��37�^�1�	�=^cZ>VJR���>!�2=��Z�]sa��k;>7
��֊�<H�p=ǥ���(>�'=��J�`ټ������&>��>q��
�=�b��.œ�Y1�>O�)�s��<�ǋ�8ܥ=TB�>*uG��9m����|"2=QF=Y>ڊ�=��=T�ٽ��-�T�^=%�9���.�0=�U0��_�>K}�*&e�%`&�
~>P�;?C��V�>��>���<�ō�b�=����ƑS���^>L��h�<$'=���>'�_�Y�½�u6>
ެ�:a����>�	>��R��y�.�9>0���î=����7d�>֟h;q$�q)	>��=�j�0�$=l˙=\�=B���F:>fʇ�L�+�_b->g;>�=3>F��;�U�3	>�.b=u�����}�E>Ǭ=��D>�@�)kl>��=N�G>�O>��}=������=��v���W>���}h�=��='a�=j�a��n�>����ĳ��e��=1ރ��u	�z��!}:����=7�=J2a�Ԋ���>!�>�X=��y<�{�;�8=�$9���_<:���w�!�2���>��h=��)�iP>�����o>��#>柊>��=-�|=C�!>S3���>��='#ս��>���=��Ap��>�s=�7����������=Z�g>j	E���I>È�=���=[�¾��;;��>�Ap=)b��������Ȩ��Uo�=�X�=&��V5<��>z��PwF��t��qā��&E��8=|R^>: ��λ�5_m<��>*{�=���=*=�>v��i�C�K!�<9��<bt�~��`��i3?�@��=)�O���n=˿Z;?�ֽ�[o��-��?�>R�=R�#�0 ���F�"�-=�A&��܋�<��>�M�-}�=�NX=������s����<u��=�����T>�G���!�e.��vͽ�^�<B��=`�K��3���}�=F��=QE��:Z��K���<]=���.9$>L�B�r�ؽ�Ѿ�y3>W�4�T��;y���J�>��A���˼����=G`L��m�>[Ǆ>Hy�=-hC=,��"W>��;�[e>�B`�AU�=h~�=[��=�zƾZ��V;�VꌾCн��=�Y=�ƺ�p�>7�����=G�ҽ~�b>�a=l�= T���>?��=�=�=���>rf�5��<!�_>�f�:�b����
5�|w�>9�T��?]�Bd����0�=����ʈ��Q�=����*?>��m:&Ӓ>�1<�=L����=�8�=�|���T�s0Y<�?C��@>�>=A,>�4�����=���=�����5>t՜=��l>M�{>F~ӽw�#<'Z�<��\=�`>��������p)��R>����]�@�>}\�>��~��L�=M�=):U�2��������^���+W2�U�=5?H>��2����>��<)���&�Z�U��=�,��T�W<�;&iO�w���mό�N�����q>�H�<�,����Y��p���d=J���i��=#�*�';>%I�<$>�����=�=�=)�ͽ� |��/�<s6�<���<��:�vu=�TA=$k�<��.>ʷk<��=����6e�=��ս�n">�ު=QO��������%>���>��=�c=aH>ԕ�+�ƾ;>�=��X�ឪ<1��mܽ��<����%�;�c>*W�=�*��8c>�T4>��%>�^>�)A>5h=��_<�f>hA�=d���	>��#��1>J�=UA~=�ú=w�3<�8�=��;��D���=!��<_���zur��=F�(>N*��%S3>��;�5<�X�<*��= �k>?w�=@�l��	�=��>�p�<�\>�'>���b�=���>�d�>Sb(��䔽t�=�%Z>8��=�?�m��=��=����J�<��=�n���;�>X䋾M;>A�R=�f�> ?2>�u<�*�E�$�=�>��dl����<%C�;��=�3��p�=�V><o|��s�=�M=\P���*�$`K�����"�52$��So>�+&=�[=#)>8�>�0Ὦ�>��;o�^=aс>��Q����T2���i�=x���ů8�dX�=T`,>�qڽ�����{���>�=m�R>�7Ž��E ��I��]���z`>/�:>�L���)>���<����}a�	�=��+=)/7=z��<@�E=ע>�OQ=*�`>=��<S��T�F>�z�礽��=ᡑ>-:�^�;F��ʥs=��=\?�n�~��@���C�<"ݚ=PT>�s">ZE�<���>��>$=�>��>�c<�֊����=�<@�l<|@��j ;w�[>��0�9{�=�Q�^����d��G����{���t>�z�<�	�˩T>�c!>坊�l렼�����U�<��Q�a����=|e�=]�=dٛ�Q��'��=�lн@砻����]��ȿE>鹊��/2�o`�=l��=��q>�%w�5.�Zˠ�Hu�����>ڳ߾¢,>�N�<oC>�[>�d�^�>08:>��}>{�>�3����=Bc-;�?�b&1�mc�9H��=Ĉ>�*?{�=���u�>�,�>7�0=d���O��t?�=|=�1(�t�g=]9�>#�<���t�Ľ�>�9'�8/�;^�>���<$��)�>e�>�:�>�&#>�3�����]1>�::>����?�<q�e����;I�;%,>Ѿv>�`}�Xz�䷯=W���@$>�V">��d>�Y>t�=��d�T3���.�~u��A�d>������=uB�Ggt>R�>Ļ���.�(>���>;ߺ<�N&=��=e�=쪓>	q���d�>fZý��Ⱦ�����ƽ���=}��=mWW>�Z�<XoH>�|)��2�*i>�� ��9�=�p���>>>�
�%�<���ڼ�;�9�r�Ͻ���r!>Ɓ0�0�>����Ā=W]>��5�mK�=����9�=�`A�-�ٽn�>zE>�>_��=X�<U3�>�(�W[�Ӽ�<�蘾g��=�q�=I�v>-Dx�6X����ݼ�F>���=��!��>�μ�>Qe>F]�[�=���;�Y��>�T-��SH>BM�=���>L�>�q��R<��k���#K=P�;YO<>�:���0�pW�=[�j>��b>[@�����>{�=�>CǍ��ý�'���������><o ��No>�"I>���;��D=�f�=�<%5l��Ps�(�ڼC����c���w���Ƚ�=D��d�ɽZ����U=�9��·R=������=LT��=!ݸ=������[=�`*���>�"��{S�>�=���x=��=p����;���kO>l\,��a>u����n��F��=<�9��P>z�=��>���=�>�ֽD1>�����<���=�J#>k����Փ�X��y������>i�=e)O>a-h=rĺ<�>�Ws=0�q�5��=�/C��z��$ƾ�c�=��O>[���A->Ñ�=W0�<xY>��佃��=�?O>�E�=ң���z�N-2���=�>e]S>�M����u���H�.X|> ��:�V���">�2�毚=8�<�R>���=t,�^::>]aS>�V�<y.l= �r>��<	�l>Z��<%\b>��>j-���e�c/&���>j�v�kPE=G���%�S�;_�=���>���>3�0|��:d�=�<5`���$����^=hko=�����;ּ;�t>����N>�Pe>��>���>�hx>�[>!%���?n����=���P��>��5�nʂ=�G�
�߽O�I�i��=j�>�G�<�=�$>�઺㜾MP�="E�=�M>��㽿\�=2������=�7=�=�F>�ͽ<ݛH>ȿ=>���D��5= b�=�ً�8A+>��,>����<>�봽P�>�\�<����=�N>ƽ�����rBX=@E>W:*>�>����(�=�;����=o��H!�t-=��+>r��>�9�=9��`=0�=��;N=N�#>�'��>;!=�B�>�������<53x>��Q>R�<�gx��,��L5>y.>�T'���Q�� �=�Q����<6�	�z��<�7�=���=�)/>���=�@n=O9�=�_�<hR=�j>��d=v� ��6/>U.5��u;>�'����!��?ҽ��!��˼���R�	>&��=;:u��c��v� ��m�u?� �>+�G��i>�1s>ȕ]�P��=���ƍ"=^�n;��>2u:=;��8�������ߔ=���=bz���n8�� >��6�;��=/����iW=h�p>wYN�,����9>��w<���=�	>��>��G��D>R�z<��Z>^�μe�����=ny���<��I>�����y)>�&=L9@>���X6����=�>`�>o���n�>۪��rG>���>B���F�(=^�>�m�ᛠ=���[��>��=ޚ
�����K����ؽE���7�>*��������=�fA��^>S�.�$վ��L��j�=1L=�mE=N45=�d>��=��;e��$ێ��	b;������?�<Ќ�>c�>J��>��\������7�G��4d�j8h>���<�z�x��=ǔ���>\`�>8��Wߕ��׾@�����">��>�ր=j�G>p	>s[�=��'=�y�>z�=�ĳ<�b>V2�=@��>�>@����=wYc=���=d�>�q��2t�Յ�>&c3;��L�ߚP=N�=gk���F�=���N~���Y>F <:>�v=��S>Q$=��z��p�=8�z��@:>غ�t���<�8>$q�>�;�*�=�t���&T>�g���J����=6�?>���<z�;�>CqS�"�=�^=�6�=nʂ>%d�V�=+�<�J���G>y9��
"P=I��=X*S>`��=Xր��=e/�=/��=�D���.�f]�=e�E>�$?��=2L�>��=>zMA�|UN>n�T>;	�:��}=��m��=��T>J��>��ݽIJƽv��;�&=�=�O�t=� ��L��=��>�=>'S=���>��K�F�X> L�Y�7��9M���<>�����V8>�LU>�{½@��>i� >@=v>>�&�L%�=��F�C��=��>y��=1B���Ji�9F��M>6�н.�O>�_ɽye������0̡9]��>�������"<>�r>�XZ��r�>�l�=H��_��>p,��X�>�no�
5*�����N��������C��&P>��=�ų��(��v$ �� y��q=$jξ�0<Gs�=���cu,��hý�봽B�=5�E�����ć=��b>�^M����<��D>�W�=M�=����}^>�V�ޛ���e>�B=|��=J�>>=hֽ���>x�Z���z�Ra>����a_=���!��qU��?����\�QTv��˾��Ľ�)�tX��ƕV��}�=�:���>��S>��=(����6<�ٽ@�[>�o�>k�>��>K����`u��r>V����>��5`��=�!��Q<J>1]׼W����=#�T�[�)>Ⅱ<Bռ=*>��)����>Ho����>Z�>x{����+)�=*�!=�e;*�>��?��������?�`ך>�I�=N�>��>|�>��Z�/>��>���B��<�#>��9���J�qwŻ&>�*">Y>{i��	��+�ܼ��=W&���M�� �:'���w�ox�=�I�=�>$<�=���=F����;�*�=>ؽ���=�E⽢0V=�\��ٌ>>����Q>^�Y�|=l��>=J|�>Gf�=y��=	�>8�=��=d��Vػ�
�>���;�%�������ҽ��>R,�uh6�J��=h��>Ð�>��_<$�=�֒�Zü�|ؽk��5#�29ֽ`�n>�NY>��>#/N>�6<=� ]�p��l����.��m7����<��>ӡ�?��;�3o>�>`|�s���т��y��m9�e>>kk�Kq$=s���#Z>zE7���'��>]�>뱽�->���.��>�<>1�G>R޽q녽�>Q�>/T���R>Ctr=�0>s�O���(>d �q�a>g:�=�Җ=�	|Ҽ[Ǭ>�@k�_.�>���>�}����.�����2H�ր	�8���Ƹ�=�6l>�n;�E���t�e>��%�9��=j;�['<7;�K���B�(><%>x���W<HcA��
��Dn���b>�C��+e�.��?"M����_@>m�н�V����2<�9���#���#U=)��=��=��:=�<8���=��=�>��Q���I=dg��;39���<=�؀>&��=�Z��-5�=˽a9�>��g>%[�<�cU>�� ����E��V�=߬T=j��>p��>������>MCn>�?j>.8>~o��;�<� t=�/=�$�AN�;b��=�qܽ�ǌ�*�� X��i��K�F���#=$�m>�>|<�=���=�g�<H�9��2�bs⽙�r>$��=^�8���+>�=�q�����<[��=�>��7>�B��>�T�=�9�8���l=1?t+� �=*��F!>�0�?�=f�=�]�)�b>�i�=�$>�G�=�y�=R�
��j.�ܭ�����=����!�=�/*=-#>��9>�ߒ�y'��|�==�8�>TI��Љ�>����=ha>˘>��#;��=Y�֖�;]�E>��:������=���M�H>�m׾��>�9���� ��	�<ܽ��=D3Խ2.k�HHW������K�06s>�Ze��pS�2��>�S��k��=���T����V-�_/�>P�>ne>D�=J��U��÷>���)��#��A�(>���>�N>�Le��%�=V)�����=�ʃ>�lU�G�F>��S=+>Ze<ו5>�F?�
a�X��
�@�r I>��=���=��d�SD�=�`�7�¼�ݼ���<Q�V�LTl>���`��Ei�>a{�<[�=<e+<I4��c�<��:�m����#)��bK=vd���j��r=P��f��s�=݇(�T"��U�<�>��Q��Rn��l>jن=)Y>��>i��>��<_�I��@�>�N�=-�M�<1K>��7�=K��>\�\>�W='fN�5KμN6$<�=�ܽ�zܽ���=Ռ�<X�<.�=f���C�k>�aL��hz�!�==��3=��>O��<�s3�<O@>~;m=^\�=��f��!ͼ����=1�=B,>SJý��ýw���q�8>���=Ú��]��=Yɘ�Fc&��%>e���I�">S�=�>=�<~h=��n>D��i�C=��>�a>G�n��Oh=}�~>����>߃�=e7&>�ԥ=f��=d��;�a9�/�e>x6�=`�����d��'>W�>`:>�Z�=����V{���	���#><�]���1>m�E��">�V���zk>h�����C=�}�����H�t�_r�=ى>�/>l���ܼ�]پ�0a�%��<�M$>�+z<3�<����C>8O,>�?[>/�t�5E��<a�>W��=X�>B�w=َ5=D�#>���=�G�=����ʽ=�=M�t=]Fм	}=C�1��xg�[�[�_}�=�e5>Ft�lP>?{�=㟖<�ݽ�ޡ<Ԋ��L�<���{v;>�=�-*>�?@=�H�=�,)>��=�>��*>6�=q�<��6>[��~��=X��g���S��=j^E>�Qٽ$q/>m�>`D�ў*>��O>_=��C��Ӡw=��=�！5s>w�/�J�&>���=Z��=���W?H���>zR�c\c;��'>�#��V =���s=ɞ��|żZ
>k<��CP���ܼ>�*���&9>M>Y>�Z/���;b��=�t=��;�ݰ8>�C�"��<�,=��C����6Z�ҽ��T>?��>C7�=�����	>$D�=g��=�w��WG=o� >��=��[�բ�=@��=�:>Y�ࡶ�I� >J�o>���9o>�5ݼr���Y�=�-,<��˽ہ2�͞�=5U4=�;�<�f�>A9�&�>�?Y=M��=�J�m	��l�����?>o&�=E=h�=.�=I׺<�qw�$\���m�>��<�녾�7>��6�j��=�D�=>��=y���BR��v���7=�o�=Ȟ>5��=B#>%w>d߼DB==]:&>����&�=�����I=�V��b,�p(�=rU��!>�=��=�g=Cb�=O��U�0�ə�=�H����y=�/��,>�,V��7�O=�y�=$`N���=%�</
�=<�>�W��������0�O�=��`�	�P>ü?�õ����=��=����׭���=��>��>y��f����b+��v��.��D�S����;>rh	��1;�Tx>��t>11>�<[=�$�=Д�=�J�!�7o+>�~==��<����~�>�{x=a�"=dʕ��Я��c->&�O�;N��=gV4>�:K>wC��X=9�ݽĿ�=7C	>V�"�S=�>�;�<mT>y{;>�P�=@Y�N��M��>q�9<,�>�սm%=�E=��9>��i:ɻ��f�k(<��{@ ��y�=|��<�	H>m>a�	�#�ͽ1�>2�)>��=���<�U=�A�>���>d�0>����}
��vj=�UE�ƌ*>ڡ�������o>��=\�)>GW_�-;K��I>|`�=�|>�D�=�߽͋�j�.=+�<ٔ�b�
;�� >jF9>�ｾ5��P�|>'zR��>�:y>��d=gw2>���=��=f���K�>Um���Cd��Ȼ�=��Ǿ`��=[LV= Л�U��a�o�$���C�=K �=��[�� #�����׌=�˔��>�^7������=*&�=�6�=BA���<VX\�H�V=h9(�^��=�T,��W�=�ޣ�P"+>���,<�����s���ua>>ɯd�7�Ƚ܉>B�<��7j��� �={L�=���<B�#>>4�kۮ>%+,=�U|�H�=��>��S>4��TZ�>�Z����S>�u�=O�+��w�=9��=fEվݖ�=é>�M�
,>�R%������	�=bצ�N���ɱ߽�b.�Po�>{�>2%O����>��\>-$)>��>�v�=��D=�s#>pjs>e�> ~2<�2>ʯi=��>��4>tYx�ao�=�If<7�ӻ�.�>�,*���~�E_q>�vn=;j>�w��=l>g_н�i޽6k2=M�jח>��>�=����T�T�.>-(¼�N�=�S>�f-�8��<&�]>�'=�E�=z{�; �&��3ؽ��)>�z��R2m=L���-��b�=:�?>B8�����B*�=:k3�	��$Y6�^�J<}c4>h��>��(�P�=-���r)>m0��nf�==γ<0�ý\�����m�1>KcT>�[��"0�ˊ���S��Ȁ=x;>�ݏ>���>N��F`e��湽"�5������,�s7#>�.�����=SdL>�Ǿ�=3
���J>�g�=�@�=�/�=���68�8���1D�=�;����3>���=%�R���#� w�o��>u��=�4x�7_���O������`zĻl�"=�8�\	'>���=��&>\N�>Xqؾ��>�%
���W=>���@�=!:��gv�^4���R���o�[�>��>E��:�[�j�Ec4>��i�3i�.윽5�ȽF�žďн엔���S��M����Za��VZ�p�Ǿ�>'�7;L������o>�-8>^�.�6>��T��}�����=��W>�*��|:��ת<�>�H=?d;>��S>�K��hx����'�a@�9U>b�ܻ��f>�s����=땳=�'��1��D�=����ļNc���ĽƵ��	�=��I��<� ����=b���e^�8!�=� =T���<���ؽ��=�����=��0���?>�&x�;:��=���=��<���hh�=��=��D>VB��]>��!=)��~>9"`=�EZ>k����X>$���F >={�=c��=�#���nI�Qv)>�)
��ց<g����=8)��:-�<̐.>:u����Y>:]�>�<��ż�F��f�=�5#>�ߚ����1Ľxm!��!>Y���rC>����R��-��Z�>+�>:�Q>�ǒ��|	>,�0;r(e=�ć=�j�=1-o=�ho����<8x�=��>�ռ�M�:dR�=mr	�:�>�4>ƞ=h���:��'�>-,�=�?����\=L�(=�Y	>�뾽gW��w�þ!��3�K��%>�$v�q�n�Qd�<��;bbоک�;���=�\{>���=��(>�u�+b��`v>K�T�6�@�9mF���=>e��=�R*�'p>=OJ>?��=�5> ��>��K>d�ֽ�����!v>�sX=�V�=R�<����<c�>�=w���=X�Q��3i����=[�>�j>h������=�G�iA��H���O�C=�=��C<v�>V,]��l=Щ�~�=���<y��=y�r>�M< ��n�>l� ����5��q��2��%�=�q]��ԝ>F�V>DON����>	!�f>`�^=��S>����~?����C�F���Q��� ">N��X\�=��J>s�==�`>iLd���Z>�Y�=ˈH=mC<�J��=�MM=�Im�,Z�=�:J>n�>�)>#�	�Q>�'�=�}!< �i>d�G����/�w�W��>v�4��^��-����>�0���/>�=���w#�>�5�>�=���=膎��'�tOl��vl��=��Z�=Y�q>��B�iA>�R>�1=��<�+�=([>-�����(���q�>R/�
<�@�h����=`,+=���=�n���޳=��y;�N�=�� ��>l2L��n1>��<��Xȼ!��!A<�Wؼ���=9!�<�>K��>8�=����ĽA�<��f1�,�}=�̔>�N�<|�6���)<g�>�E�=�W�=�����=<ہ=��}��>�摽��k>{<��^>oH>\�E�R��;�┾�R;(o��b�=k��LOF>�Sn��߽^=>=:Y��y�Z>~���%�#-��[.�r� �m�C>�φ�}��<�P�<�����.���	>�P=�>���>���>᚛��/�>R�>�=-3������#C>�-.=���jz���>\K�=�>ן��z.�=3��=��kP�<�=�$�� ��=g�=*R>�=}63>?�>�^�<�m��cx�=F���t1>3mb>�$���O�J�$�(d>:�ؼ�l�<t��=��,>��=a�3=�p>�`��k�=!��>�< �7�>nj��W2 ��Z>xQe���=>3Ҽ�+=�]�<�>��
��j�=�>n5����k�Z=��=�^�=`�����I�Q$O�z�=��� >2�㝒���{>�꼹�:
���W�^ڴ=:�Ľ4��U��;#����>�����-$=|�$�`Eq�)�D��������<�:��z�F�}��;�ʆ����=2׊����=$��=7TU=��S>�ȼ�!��]��J>�L=�#F=�4t�u�=/�I>��ͽ�I>E��<�и=��=[�����5<��}>�	�=���=�;=*uľm�ڽW��<�$">��"c��l7l>)��=x�=se(>Hۑ�%)A=h{>���;�%���� >20X���I�/��<�ӏ<$�&�	�J=�yS>�S>����UՀ���D��{S�8���P���j[>���^��'�я�������D�=oߘ=j|>��>�4t="zS>��R=�q��+`�<An@>�m2>k6&>7��<�67>O��>Hl��U��=�_�=ݶ>�H->w&�tB��K4ǽ=��=�u)��ٮ�?��=b�l=��+>4<��WJ�=y��k�ю=/b>�Z����=}�)=��= >FUk=��-�\�:�3�N/%>����n`�<�oF>(>�%>��>��+�d>���̼�@:>��=& i>Ēk=U��|�<ʚ��h�=���}�"Q/>��*>�!޽t����ݻ;ȉ>�p�=<Ʃ��jV�pO�=9�G=��~�>YB�=�;>D>#�I�(��<�h>�>��g=��>ˬ<=��8��� �䕲�mɯ�����5O�������\�=�!��/+>�����>X��=X�_=�T==�>q=/�>��_>������h�=�����y�=Bun=g�Z=n@��C��ܣ��3q9>��O���;g�7���>[��=�,�<�NB��*�=L�ҼS�=6Ѽ ���±2>�.��}
>,b�>�7>��H>ޒ�=�K�=��^=�]���>Ej�=+��h���V�=��>�p�=����o�=a^B�zs���]��-�1�������-�=^��=�Q�R�N>vޕ����;|�O=��������<�Z`>s�>(p�<N�=j�=ʽ=�Ɓ=�>��=g�-�l��=�l��P��F��<�x:>%Nƽ�	>�`j>��=4!Z=5�C�7�=�7>���<&� >��2<M��=�>X��>m7�=j:�;�Q;��<���<�+��n>��=QK�?Ľ�*>�ý�||�9u��n�=.�=m�-�t���6a<�.=�]����c�ޠ>��p�eZ��ة=��<�5�<X��>��>���<w
��0>��>��<VI��(��f>�:����^=�?N�v�ռ�T�<r?�=&p=RK�<� >5�Ľ	C����򁻽�.�dr/�{�Ƽd��c T��Y��˒=����a�C<��t<�=S��>�t�=f!�@�A>Y�<Y_-����Q�>X���V>������>b�?�+콫��=��=6�=�>�e>�Ne>�f��L/Z>���3�<>^a=sFl>S��<P�p>��9�,#���t����ּ�)>��&�\�����)Y�=ꈻ=��=��6<���ڿ��s��=�=��>��S�۽����P5>�8�=X��=늩=L�}=][�=�ؘ>EJ�*��=�S�>5�ؽLǍ������E>�]�>31k=w�>P#>�H.>_X�>��V�{ M>��=�A>=��>M��=���=����UZ<ͧ>=�ٽ��Z��~���_>���U��<���=X*�=-��=fI>聑<D���+1;�$�>J� >
��>e�=W����>sbO>͂;��5>T�X��쁽��=�,ؽ�rP�������=�r3> nϽ��q�aK��x�=rj�>E_���C>X=I�9>��>��>��=�Z)�E�=,�>�+X>��?ֶ��oI =�N�>��=Qf�=������=&��<�s�=� >�*����9�O=��j��>���
�-L/>8�T>n=c�r=	��=��[�7�>��<�d	>�fb�ȟk���(=g�P=6+>!�>��ϻ��������=�T$�^޴=�ʤ��-Hp>@f���>�f�>�x�=:�#�<��߼�~>k>j�,>8>ѕ�=qĵ����/�5	ӽ��&�[�H>B�b����>&��<�V=�aH=���=p�'<�����<��=�*����<YL(�����=��(�pe�>���ٹ ��>���g�!>��>jQ��>=��=����>&�^>�ҽ�6n=�~T?G=P>�/>��=�>]Nν\���a�=�ԧ>��=b?�y�D�9��=���8��=j?9>ft�=Cp>5N,�~�)���o�`X�==�Y�o�=�A��'5=���=���>�%I>��>G)?>;WA>��E��9A=���=-��j��A�D>Hy�<�=?����XF��:V���$=�F>�|�<�H����>ށ�������$>V�����=܃�=x��<����.)�=���<S�V>W�s<� �����m<�m�� ������,��\&���<5����"=��Y�{XӼ��=�@�u{��>��<��~=�Q1=?�>�Qk�d���l�=�y�<,�L>�H2=.I>��>��_>5݄=�>����,ܑ>�a��	�8��{$��j�=LM�nW>,t�=Xp��͝�<�=��(>Z��y?Ƚ7JR=��:=�(����9�@[+���<��g=4���%OH>�I>m���ٽ�-�=?A=t5�>��ƽ�E���=�7X=�͆�0*>U�a��6�= oӽ�(>�*>M�h>�L?Rq�-�=U2��I�>�Ό����>)�1���x<�@��_�$=�e���YY>(�=yt�=��>�E���d�����>�at��J>�0M���=܈}��W >�gS��=��=�o��hJ>v�<Zp�=��$����=骴��jn=gx� +g=�Z���;0>H�H>����L>�۽P�9>�9ǽP�������>���=JmD���d=wM�=�b��]M�P����;�R��Fn�=<>u���b�=
�&>N���3ͽ7u��!�B<8χ= �=h����*=��2��f����O9>bI�>���.@�IA>8kE=i�V=����A>mi�=&}<Q��=���6->h��=�"�=�n:��>��>���@0��,ݝ=�V]>7v.=O��=Ԏ�<�߽�w=����,�%QG�G�>7��� >;o�>ѱ��M��Эx=��=~��=<,Z��tu=)A<K�,>h���*6��fd�aa�<u�C>ǁS�PM>;�Y�%�>�ud�y�>7N%>��>�:M>wc=�y0�Ƴ>}i>�r���;���F??��>�f�>��=s �=��]��t>�>h�ɻo��=WD��Jֽ3Ͻ˓�>�Q�:�0����O朽㤑>9�E������a&=q�a>_ ���=y�Ͻ�z��Xө�k>ߺ�v�Iu=1���}ʻ5	H�����N�8�S�=��(<�O >c��<�A����=�~^��*~=l��=��P��ê=�Q��������s��MV�x�M����i�/>�o^�D壽ku�>�oL>4�ֽ��=]�>����.+ɼs��=v�'�Y�����ٽ��{gT>4��=ޕz��o�>�v����]��g>�X=�->�֒>YgO>�!>"ja=�n�>�C��������0>g�@>�"2=��ѽ/̘>^�=(��=��>"�w�'$*��ۭ���[������_��i'�Zۜ=�T=�J_>�L�<,*=�hp"=訹�(}��1�=��۽��<��r=,���<ݽ�̹=���<�l8>Ems�Qf/>�w�=�`������v;�=� e��[��LT=�w@>���@=�;8�>��Q�F3�=9�;��4�������Qg���M�b���֝��&>�r>��Z>�'<>���]�=�>TWc���	�����i�=���=ia_=�*���>3qp�R />s� ����:��<ꃾ�b(���	��h�����. ���[=l:���J��:�fq>���_����b�5���t,�yO���<M�m>n��:��x=h_-;	�-=
�q�4<A<��=a%�rʽ.�Q>������<��=����鮼����T��BԼ���>��Ƚ��>,�=���:�=ń<�>��>>@�}>��<q'�:��=��<,sd;m����&=�/>�XJ��g;>�>I<>�6>P�>u�/�"��=���=9
�=��>��<��=�8��_V��#�������\>�>��ƽ.>/�>�6'>��>O�<�I�=��8�1�䭯��=;~�=0�=)k�=l58>i��=yJ�<�5=�1�< S+�">0>vL�-=>�>��=��>Na�����=��.����=��=��ܽ{{ֽ{'�¾��Pǆ���*����=�X@=��x=Ѵ�=�x<Q�=��<پ�=����|�ZV[=�xW=��=j��"�������&>�}>�>���ý;�Z�H�<�?�KH��L>��@��$����>uq>s��=���<�P�<N�����=8؋=K#L��~S���<���<�.���>�$>�w��O<�_>5ڻ��3����=F���=`H�>]N�>e���F��"�>׿d�1 �;d�=W������=ွ�ѫ=�n�=}�����H��vu=t�=XBQ=c�>j�<L!���d��H=]���o�I>�E���= �5>`�#>Gf�"^���}>J52=zK&����=Fū<����P/��,����>�%E>̮�=�-=������7=@p�=�\����f>�7�=�]m�U)>]��=�l��a�pi.>�Й=�4�<�q{>~�ɽ�֜�5:==���=�|�=�!=r�������h��g>�xw;�g8p{��`(>%L.��*>���=V������ �t>��߻�b>n�=B�A��bE�`��;(�=�#}=��A���Y>�c��w�=B�����=���=Qe(�]{><��=\(>ځF������>����� ;>�a"����<�[|=藐>��׽�Ì=���h�c=QX>�e2��M�>`����R>� ]������i>Ƿ7��=<"�Џ<�=cʄ���I��L�:F�>rD	�5�E>á:>ĸ_=�V¼+u�=h->��ӽI)��?ý_D?=�h��Om���EV>�X�=+\���R?�^�=k�=��Ƽ�.>9Ὄ!�>��~>׶�􈾽�ˀ>6�>?;O>��<laL>1E>�:�[s��B�����>
>���>�E6=��a��:�0��\�>��M�=25ٽ�j
���=la�=,/>#�=�y�=�~2>@��|�_�<�;�O��l ;e.<�9����U)��k�e$�=VeW>�Pb>fL�T3�=� 3�[Ֆ��+>�j#�����1P>uv����r�=>L!>��>?�(=�X���0�����j�4=��=��=��g=�>�:G�+�Ľio;>�Um>XSd<�	>��J�J�=�,a>@*=�w�L��=u��=�p����z.���d>���>"�1��?�����qsk�>�n�t�=S*��ۄ��a���<�+d>'M�>R��=_ֽ�>7=S4t<U�=.���AC�x���*�=�N�>�ߴ��>A74>�|�=`*�>���=��>��=��!��T<x�ʻt�=�G��@�>�"=�!��~n7��K�>}OV��2>n$���V�=�3!��>$����u�6>W>�<=�
��i��=}�ܼ��e�>�B>qР=fg,�*g>���j�N=��<U���+�E����=�=�>� =?��=y=��9F�=\���L4�;�>�|����&���ǽb���U<�V�=�W�14e������/��=�ׅ<w�=��z9pE(>M>�2<>vf�>�-H>�\�<'s��E�>��<�>�>Q}���(J���H>�!.;�"���us;@H%>�->�[>�2�LҲ=`Q�=��|��s���,M�#-�=��=�e�@Ұ>Na>��;=�l>R�����>f'߽3s>E�d>����$>��>��>y�K�v \�A��=L��>(=rق�fq�]mn>j�I�+�˽d`�=h�/�²ݽ�L�=}'�;�U>o|�=��=��ǽu&���Ԛ��.����V>e.>V-νh���̽޻(�Q˾<]�>tY
��-|=�=���~1���T=�Ep��s�=_`˽�5�=Eӽ�e�=.8<��,>��=>���9vk>�H�=����b<�9���N>gS=>�t彵�>aΙ=�}���/N>�@<_��*���B>%{T�D�;AH��(1=��Q��3�=�����V>���=�!߽$�@��>����g���#0>�,>���='`-�Lo
�A>o6���s���7r���,�+��=zӫ=�W�HJ�Q�=��>���<ɱH��>���=���=�o�=���<��E>]��=��<�>nD=4�->��h=���Y+C>��>r��=>�=�.��O�=ot���Ā��/>�7>��Ƽ�|>!CC�Y��<��$>�K<o���3�<b }=�+�=�l,=��󽡶>p�P>O�8>��=2R=�/>�:v�ࣄ��ZX=ɦ�C�1=����-��ǝ==��=��O=��:����=�?e>K �|�x>�㉽��$>�aغ�z=w� ��Q�=.�=���>��-����=��~>a�*�Y�=��<[G�=C����q=r�;�� �=</%�n�5>���=�=7L�;_.'=#�=�����3���,=�ޚ� �=���=4�^>���</��l�4>�^=V�<��}>�7�=X��=(�O���L>�b=�b>��8��ܘ:9Li>_�&�*x���5=��*>!�>WK�����W����>�����E�����7e=~�l=(�p=�~��k�<E.�=�Θ��\ٽ�r=��We�=�=p	��ܘ=��9�?��<��彲 ��4��A=1=sz+=�ź��s��N˱=)	��O�=Ul}>u�x��D�9bLԽ��c>���#�w�����=�;�=*��*�=�Ā>��>6=˽;�_��?��T孾9p>�z��Á�iE�=�=�A���нf>h�����=��,>e��=�)�������8>��=������<��7O�i(6�_s�~͉=�<~=@��=Ϊ=��:��%>#��=�����0C=�2���ҭ��׽�{D�S=��Q��Ֆ=�d=!�w.�=(L>�k��9�<�
>��2��
�=�#4���.>��=�6��Zb�b��=c�O>��=���������Z��+�>u��N���w��_�M؊=�<�0-W��n?=y ٽ�j�G91=�j�=w:�=9�=�Bc>]��=�P��{^=�0����>��x��)��a�>80�=�Y>�&>�fW��b�q��<�M��ɽ}�Y>8v(=ԥ�=�X>�z��s���D=�\�)xs�z�f>���U=h�`>Be>ZfD�'~8=@�=��=�x<�i�(=b��=j�ϼ��>�T �)�|>�V�=������f�>F]7>p �>Lo==6Y�>�񇽐K>s�$=w�S>��0>�~>�#�f�����<�F>ޒ���D>T}=��=�>W���B^>"��>q|�=qm�����%��>�|�=��=�<=J������>m�S5�s��=��O��Ei>Y��ڑ|�:��+'=2	#�W]=K�[N2>U�b��$��`Ƽʹ=`>3�Z>5��=�a=�x=�.�7���ҾG�=c/>"?%>�C�>��>�N�<ev�>�&�b4�=Խ����U=�>����B<���9��u�= �7X^=��9>�N=�;
�vQ>:E���=W�`>(D>b���r"����X��<�-���<T>�%�XѼ#Fs��ķ=�w�� ����S�;�1�=Cav>2{�>Qr2���=2��=���>c��Sg)>�����6>ڏX�L��)qC>}�l<v��=*���>��>A�&>��>�E�O�>]1�>��#�Z� �dY���Z�=Yr>:5�<{~[��L�~�>v$3<7�8�/k�=,�4�r��=�I�<B潽�d��>gR)� ]Q�<�ܽmͱ<ۋ>���7>	VD��붽8�B>s=>�F3�W� �\Lͽ�u۽ZZ�=�o-�+G=�O>�]�=ʐ%>��;���<C~�=�h�cz���|K��H>"�&�3m>�*d�>��i�HLD>C<8;<�.>�E=�N�=^�=��
�����3>6���*�Z>l�	<��P�=h��TB~�1�׽pu�>g�=Vw	>��=�ٽ��9>���=̮�<��=�d��}\K�օ&�6� �g���^��,�1ޅ<Q%�͸>x�W����=�n�>De�=����v���z,�;t������=%�1��'u>b�>R�k=nx�>g�p�<�<��Y��>�Q5�4��=|�%= ��=�[i����;R�=�tE={E�=&�>���<�G�=�� 
�y����|a�'�ļ��
>c2 =	�<���տ�T �<�6�=󵞽��n=�q6>(-����1�8=�����9>�=�=3j
����v����=H�>�=�<��<��v��}��_!>��ý��>'c�=`=[gý<^輚��c�V)
�W�4<��<㼢�����'<�~�!��r=�+�<B�0>6>��=�>�3Ś��5�&�1�NG�<�|����=q��ih=���[4>ץ�=,��=�ڴ=gW�={�g���罷�O>F��=?�=KO5��K��V
���'Z�l���4>��>��3>)	 >�#���ú>�T�=��=Ա�PK=�<"��=C��=���=����->Z�=Bɽ�<�8�=���+�=`��=��I�=��2>��y��w:���=���=.�񼃯�= ������ѵ��"�,���O�=M���"޽�=��E�A
�;Fq��<b<=�Ţ=�0[=]n���u=�9ʽ�]|=^�0���@>TM���=ˇ�>������=�)I��I��"���"c��,��X-�D�=ɧ�=X7��η�;�;H��<>p��0��=�>�D�2ܼT/�<C>.>� =���}dW=�5=%���<^>za$>ηǽٶ�=��_<\Ȼ9��L(>>S�%�˽5&>s!w���<[���r=k��X*�<e)0���<'��=�м��=���8>��=w�>Y��n>��׫*>bB�>[@�=��c>��=ͷ߼.��=���=Q�=�P*������؏�12ӽ��*=��>�I=�K��Ϲ7=�HN��/A=�f8�J�L���>��=E�
=�6*>:J�f4=J'c�Q�K�=�M>�<>�)��_�=�(�k��<I�1>�Z;�Vݽa8>iC��B:y<����E��=�/�6i=�$k�;|h >MtO�ֵH�\Ǧ��T>k�>�gb��Y�=Ki�=���>�s��EՖ���=�z)m�b
�=��<�����s/���6���B4�ә�=S�a>�Q1>���=,y(�̕3>YT�3mh>�]�=}f>7&j>�<���+�\��|>��=8����G�Z����8�|��=��c����<˞���1��Q�ih��>Nl<ν4>bL>��l��M�=N���y��n��\�齾�=�lr>_��$>�`�<�N�<_�>��=&i8��a��>�N��2�q=����ٵt��c>=�
>�W�>4���f�/!=V}:��,����=��;Z��=���c�_=��n>NdT=¦˽̴�=�30�����[6>��d>9v>�䬽� >�^#>��>��l��<<��������Ef�=Է:>��q<�/��_>e�齧��=6�;,x�>��5>�-N��I}�7�8>��,��>(�=q�L>7�2"v��k��1>p*=���� j=F��=5R�= �=��=t�>.3N=Oε��������|c��{=�G�=wwE=V�7>��K>�ă�X#I��JG>�~�G9ŽsŁ��+�<X�=A�^>۴=��<�a��=o���e�x���Hy<�pV���=��>-����h>�P=����I���͞��Y���=<w^6>6@�>l�v=�?�<wle;W�4>5̽=@<.��<<NA�{�>L�:>!<�{6�>� =�Dg�#�^����&L���h�6�Z��AI�
T�=��>0\�;sN��9=�mpU�=H>M$=.�1>\_?u�_���>bL >��Լ�s����>pd�=�m�=�ۊ>��J���T=�2=��2>�%�=.�B�G��k�T=O獽��=�N��e�=��d����=g�3�")#=�]�=�����:�;�qp<�a>�,�����= }����j�0>�=�n�;�n�=�C�J=����'�~��%�o���k>F��=�0R���D:Y�����A�x��ݽm�B���#=;�>>ܻ;g�G>+���CG$��H �mý�����ϟ>%ׇ<���=?��=�v�d�>=%���u��r
�z<���=��n��=�� ��u�w�<	0��C��YнY�">1>ļ�|���a>�6�͖E=�n<�Y]>����~�"I�;{��<S&G�8B&>�p�=p�G>7R=Tm��:Q%>��>
��<s�&�\�e����O^��<<�99��<�e�=jh >L)�<��н%�o���>˔3�h���'�@>b<�=弊�޽����=�?>�J>�D4�u�=�i|���K<-҄���=*��h7���,�<4�= 谼
sK=t�%>m�=�ױ=��-�0?�<7}=�7��v1��"Z��������=��<������B��g5>=�y>Vm\��/���9��q�=�R̽��,�p�=��Q>G��>z��=��W>�,Q>j�+>B�H>��s�ה>B,	>��;>������<ν(>�k�<�>�]�>GO7�m��>H#��P0�����3��\�������I������?����=^�J>;��=�Zi=���4O>?�>2�\=�W�m�ٽ$+>�㽧�>���Oe	�hӦ=/����v��l�(>�}�Q�ȼ��;u�=��½������=t�e��qR>H�">V�=��<��F���ҽ~�;��=�> �@!=��9>X�%>�7> ���*f=�B=�D=��u�=8��b�нX�i=�P�M�]>��"���z��k ���g=�c2�{����9>�Z��)�$N�<�~>�XZ>�h>�r=򀚽��>�i�>��<;/�~�s�K>�bC=&��;�h���F�=== �����=��~>��*�v>��Ǽ@��=�`��!�Y=B�^�W�(=/'=I���=�X�=v��=n#i>�����O��E�S��<ǂ�;Gi<q9>��=�"=�0E>��M=�:>!_��/����7#>�I?�6=�U>�LL����=¤<�Rc/>����(�S0�;�tO��ň<� ���a>�>��t�����G�Z�2��J����w=2�̽e	>s�<ߚ>M��%TX=~�׽:*��t=��ջ�j >L�>8�����:���ƽ���=��>>ӓ=�&�=|�޽m�R=UQȽ
 ǽ���=�5˽e4�=�{>K���0��=c#��<+�GI=J�F�����=�= �=�P<������1>��x>��Q=�m7�O�)>���xn+�f?
�񺷼�����m�<��>��G>@A�^�C=S^�F� >���==��H�5�/�P>J�<%UT=?y�Vҋ�3*}=q����M#��!����?7=+�>�f�w�G>��d)9><g��Q̽��=��>G�>n�]�CP��N(H>�}�=	��qG��z���!<%�>{�5=݉P>S�>��J>S��<�V���@�9���x��\{?�8ʴ��!}>���<7B?>.�K�b&����=�>E>���=����갌=A�=�>*/>� ��K����:��@>5:>����<>�?$>�� >88k<GJ���I>;��=�2�l���=b,=[�&����I�=׃K�x�="C>U�=�9>� =�'ݼ}��<s�X��5�w��C�
�Ȭ]=\����Mu��B���,>���="=#�+�K\��>?�= �>28>�ӿ�OO�<h� =�>��=�ns<��B>	h�>~>3ޮ��e-=��>oE�=��o=�G�<�N���>�<�=Y�>5e�<��=SSV>J/��%"B>�%�=�@۽n�R=�Y>�.�<�	ӽY��<<�^���C=7X	��>�[>n;<�g$>�=V==z,�i�=Բq=+>�wuW>�>On�����=�>t�3=���<zT��n��=Ѵ�=��ټ�|r>�p>0ژ>NH/�1&��:��>-I�=�"�>"g���@Ͻ�-�zL>�^���%�=�]=Ј6>
o�~�}�����=i���JdB�xz��>�*�>C4=�B�=�W>lv��*�<<I7��E}�	�>�z�<��J���m��6`=_��=F�{�M�5>��_>qý����*��!?�{�����=0�\�in�=@|3�Xg2<�A�����=/����$�Oi�=���=;<�=�ꢽl\>n|9�7&�<yk�>�H�>ɖE>�9�<�@b� q�=��(>%�P��I_=wǊ>�X�"k������:��[��=�߽�B�=��̽1=�?6>nc�����=Ѽ\>��=�� �^@��g������6��*��=�z�>e��>q�=�9��
�Լ���.��=N6�=�:���F�y��)C;>m7=4g�Y3�h���7P��8=XB��D>���U=;�Z���<1d�<I�vO�AB-;�f>������=M�J��A�<%3Ҽˈ�=.�7�����E��4��2=U��r>�\>�>>B�2�88/>�������1��{�i<Pk��Fl=�C�=��_=��>�������U�=͜���{�x\�=cƽ�.	��\�=F��=�].��Ҧ�� �=�0:=eK�=�ԽUT^�]hj=_�/>�M>j��sW:>N�qBp��f��x{��(����H>�i��^�=$����?���;/>��ؽd2�<�k�=�$">�m�����>�y>� _<�νs��=�jɻ��ի$�)�=���t=�X�=1;o>��<>n'�=X���/��5[��U���[��AO=H)���ز�.���
�=伫�h��:;>�E�>O�9��Ng�9ٽ�%�=�5|�Æ�K�����=1; �
��m=׼q/���y������=Ys$�eW<=�U�����=��׽8ə=�@=�#0>u���N>�Rm<�F=�������9����`������3��;���f�r}9=+iO�(5F�d���|�h>�s��/�=��F�!n>��=��ϻ��μD>p�v�e�: �=g�<�N�=\l�=�7V=G:;r`'>&(�\e���]L�@1������Fm̼�n��e�=�� ���;>+)�K
�=n�c=�	������>����y>�/�=IL��xT��"=q���=����\����=�{>ܝ�l�=��9<T�׽S4,��̝<��g���9���=9�o�ku��<(��ɻd������)���ȧ���=�w���=[��m���ޑ���=>�����Ғ��5�= �>=
��HI�>0/}�!zl�K+3=���4m���;0�a>F�6�����vY=���=�	ѽ�=zQ9=��<��>��,�׀!>.Q��>]�=e�~=ͅ�=��=�[>n�}�QGH�������=1�<�<��3�T	��R�>�a�hם=�2W=s�M�d�� �>Y����(>��z>�u�=4�}>��Q>�̺=H��|��=����>���p%>�� �Q>|��eǇ�ʟʼp�����=�9=JF�=��=��N�t	>74���>�|=]��=_'�@A����=�P>f�Z>B���"=`eh�Q�j<��4>a��<�2P>�J�Tf>��ؾ��0>�ʽ�v���&��Ƚ�p��z����ܦ�q�f����s_�>�ž��9��;2>�%�.�:�z���R_�<��W:�z>8H�<,+�=&3>���=�dv;/��r�=ű�<�v0>�b>��=��>��=>n��;���,�>d�*������x�>8���a�5`�=�4>��������B8/�>&�=��=�?I=��P�-�3���y=Xj�<
p
/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/readIdentity*rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
T0
�
(rnn/multi_rnn_cell/cell_0/lstm_cell/biasConst*
dtype0*�
value�B�x"���<s�<��
���#>�7�=�i�=��F9_��=�:�=���<��;=:��=�e!=�!=t}_��}�=�p�=��=q��5	���̅=Uh�=��k=8�<\���C�<��4�@y�=,�Z=�Nc=�
�U<�;�T�8��<�3�=#i�<dk��c��<�ۛ=ͪ<:�d=��=����m7=ـ���k��r=L��<�cȼ|���T=/Υ<�6g=�������&�<&��I�F�������=Zj���V�<�t�<���=C��=X�e=�*P�}�=�M�=�f�;͜=���<��ĽEw=�ļ!�<��<xFO=�4e;A����h9=�t�=&�=���<�������=�o]�M��<Lyv=/�-=�yd;�_�<�8��Й=�R�=�[_=���; s=x�=D:n��E=i]8=l���ّU=q�Ӻ���=O�<=��<�Nռ@jT8J
B=���=O��=�:���F���@�<�/����=.p�=�g\=
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
value�8B�8<"�8\�>y�ֽ�J���=_}m��*�>H�>��>ޮ>�U�={�=K=��<F�Y��5�=&[f>�O8>��>�OO��i�
�`�.<>��]>�2>u�=-q���>������ņ���k>��h>�ъ>�}�B�����>(�>G6~������ɽ��μ,rs=vM�;TB�7r��?�2>�VV=�p����=�e�>��t>C�������a���BW<�ik>ju>b$F=���<��>@�a�z0㻢�L<@4�<�ئ��n�1/�nA����<V>�w>t���_��>�26���;=�V-=�>}#�>@h�=l�>����MB�;t�xP߽4_3>.���F�=�Xz��B��u5>��Q�m����W�XĚ�-w='u��$��2�>�)>��=c�N�����4�����>,;����3=��澘.>᪨��>�lE�f�>��ྫr_>Ē>bY�Yg��-����N=oe-������=��&>��=G)�=0��=���>um��n��<��ֽ�	H��3�<d�>��=�0=�G�:5��<�O����=�߂>�E���7߼��>'*�=�g.>�������r�>Լ�"Z��᝾���>��>��[=�
u=t�x�n�侣5\��t;��j=I�>و>K6Ⱦ�z�=uO%���>�!\>��D>�L?>��ͬ���tM>�'>󣽕�G=w3m>y����@�ð(>�>G�8;�˴���>�6/��i�=B�e��]�=�[>��,>ᴬ���>ω">�&��l >�+�>�$z>y
�=�_,��$����ν��t�Pt�==�6���1=�50�ļ7���!b��=V8P���`=@���a�v��Z\��@"=�ۀ�i]6���f=7�=�� ��e=
�����G����T>�;>�ߔ���H>�������PF��P�m)[��Ղ��|�=��>s~�=�$<<���=;Ln��*�ﶼ9��qn�=F��>i%l��M��jI��[gW>'|c>�욽�=��:���@>HǾ����>1pz>�1E>B���Ri>Q�>��"=q\=3s|>p�>�=>.ؽ�Ɇ���1�\������x7,��x	��
'���{=83>L�#�b��=r����w�>TRd>�>O�I>�Ӄ=��[>nf0���)��$n>��m�S��=�ֽ�v���킽Ȧ=(Y�� >�nS>c�=�W+���^<��=� ��4\/>�8>�]c�%��=�?�>���<�m���g�f6>j�3>}�>����HbJ=��=�(ӽ��=IQ=�ᅾ'����=T�=�q���i��+�=�,y�P��Q�>�KW�"�=��9��G=���W��V/�k�g>��@<�UF��E>�U>�?1>����A����>�߁c>��> �A��m��� �׽>�����}6>�����<k��v)��.��>y䮾(X�=yt�y��g�j��	'����>�^��f�=ؘ������G=�2{>"��%%>��<��=>7�>#��=��7���>������f6��\��U?����=����P>!�	=�t��-�=F+�<�n�=�C�z:=�*����<�B��e?�>�7�������=@�=5�9�\�->�S<s>��z��]�9�ܹ6>bۚ<p���L�����=YD<>���=�o�c�b>�?�>�Fݽe9�컽�{l=�d��5�ƽ:��Z̽�2�=�f���m>� <�}�=c�K=��;>��5���߽�A��d�@>�a�=
��֐t��T�=eq5>��>�ZY���,<����������V�"=���>���l9���  ?�9,���X�����>�#e>]R��qG��s�ҾC���
�A=�R&>��پAf�kl����k����>�!w>1��Y?�>U���$�,J�>�'�����-g�=�Ki��F^>��>�|�=���?���K>ĉ��t�>;��=�"�c>I>~��0�>5P=>?7�F$L=�p�>�iL>5fz>9�ƾ�=�(E>���=t�=��=���ߓ>fW�>8�=� ��ޚ>S�]>߶[�[�w�!�P� �u�����T���9}>Ku������l׾2<��c�&>����C��sؾ:B�=��$��C�=�υ>.�$>�),>tW�`��=]y�><����j�����=�7�XC=6<Q��hP�|�l����=��=<�V=�w>P���.0{��>[����+?>"Wg=�2�����	G�����)��3���>@A��[y��d�{ S>�1;>�8=�O�7����)K�y '��5����鱽����B)�ᔤ���>C^�:��w0]�,es=�5��۽�g�< p����<�Σ���0>2��2D��Q��={�D>H�ĽYڻ�q���[�]0>Wk��D�>d ���Ⱥ�Y=��w�R�`�Or����=$P�=(E>k�_>'s�=Q>l=?�Q>\��� ;�<�>9|�=�Gk���2�{�>�!�>�D]���b>LУ�V�0>�)�>�3C>r��=4���4��>j��<�{�=-�\��>�|Z�����m�x>o�>�L=�� ��)Y�%����Z> 2��K��=�]������ٿY�Q�s��6=�[��>�����o�����ܽ7��F��B>��ٽ&��St>]U/��i?>��#��@L���>آd��1��\�:�����4�<^�5=F>ݽ� $�S�Ⱦ��?>2L>-O�� >� 0�V��<z(ٽ�f����	=�����fO�2<Η>V~M>X�V��0��i�l�b�������̜�e.�/�>���>�6�=>J6�}�$>3�A>���gJ>A��=�Л��ȕ>	}H>�{ҼP=��kU��GL>Ԫ<+���,��̧<Y�S<�~�=��9�|(5>~*ɽN�=~��0>�a��9V!��y3<#T.<iЊ�$�(�l=��K=�虽
Ƞ�-9>_u%�u��I��KN�>%����R>�6����=(->j�<�旾���ǽ�m���iQ>Ǜ����r�;�=�����E��]>�νs���#>��b����=�Q�=�r���#>]�j=����5��=&k�=(,����=ц+>���g��P(>8J=\�%>
����g�>QF>_P����m>���3̽�+*� |=/��<	˻=Q��4TJ�3��v��=�:0��X�͆�cO��k4����ɾ����}r�=���� %��g��=`E�>�
\��B�=�K�=�����Ƞ:Q�Z���8�2=>�"�gA��D��>ar��!"���#P��>:7�R0�=؃k>��E���->|�}x(�窥=���<�х>{�I>�A����>�Y�8>P����.Z<j3�>�+�>U�+�~�>]<7��gнy� �w�!�������0K��6T@�2�����d�\���>�Bw<���PC����9��=0�t��>E���a�����'L<>�m^������V뽔���l������E>Os�<��9>5rq�S$>K���y��?��=�D==:�>�L���ǽƄ�=v�=��w�1T>'Ի��C������;u>m[�=0�<eb�=�:>#/��b��
D�=�7=���<F+��0[�=��f>�V���<k��A�T�>����t>�Ӎ�XT%>Zi>I��>c�ѽLc�)�N�#�=�-w�D>��6<'6��C�A�H�C>�;C�*@>�$B>ц<wљ=��нߣQ��ň<�8�>���=r���˂�ӫ���nG>H&ɽj��=��V8S�>A�>�"=�J{>�5v>���<���7�=~إ<l:>���>�ϻs�e���Z>K2>�.>�RM�=�(>��^�Q�(�Z�>��>a�=����D>~�����uX<�ր>?W�q�=\�>%�"��َ;^m=G�=�W=�����I��k>왕�r5�=�lu>�r���i���=�o��ٱu=�x��kK.>�*߽�̼̱��=!������>�u�\���ʚ>���<ި��7����o���r��劉>K`>r6����+�����;]�=���>�� �� h>���1�}�+4�=��=o��WD�>W>%/�<t��HRG=�2�>�`�>�uK�㹝�}�=�*�1 >Q�%=�G�&E���
�> 8�Q���.��ET��Wo=��w=�2~>a�=!��=��>/D��6��=P(U�������V腽�>a�"��޽2��=$��=��^�6�)�$���$��Y�>J<%����>Ȯ�=!/��crX�mS�>G"u>����c�=]�$�	���UD���MG�� z�l�>cن��_�>�vL�y;z����*�:k�C�;O�վ�"�=r��E>L�(��͐��=r>��>W�ܽh夽�XL>3�=���]�I>tʽ���=�����/��t�Q<;�>���i->�}���P�K�s>��=��,�U�<�sS�<��(��>�==/_�DW�>1�F��$���c�=��<���>{��>��>Hwt=�$�=��K>H�d����>�G>����XU��&�C��N�;��;�/E<-��>c0>�c(>�7�L>"��j[>_���T[>t��ë>��>d��>�>J�7>�>�?3>
ԽVx��	�=?��6PR>̱�=���j��S7?��`�6�==Izѽ5�>QX���b1�=쏾D9>����b:��߽:@���M><>"
��?>��c��8���=��'>r�8R��v�=��n�N@����x&=�W�0�|��{[���m;���=cv���>Җ���=���s	�<�I����>��>R�_>w�e>D��*>�s�=�Q��|�>*i=[ ��`����C4�/�=>��Ƽ�)�l2,��9]>�_�-^w��M]>vۂ���p>��t��潐e >�N��a�>rP>ޭZ>�����I�|c�c��>�^
=b$L�؞��ط=N�g>>�����>F�i�ơZ>d��=9��x-�#t7>���E*�����>
��$P�x��>���> P>����=x�K]>�Q��<���Wj���s=Zm��$>R�=�������>�	h��&,>:%�=+L�� ->O��=��B=��=��Z��剾.����B�+4=���j=)�>x��xkT<�^E>��������#��<�);Hf'����=ՆD���%���м���;�Ƌ>PE���(��Lp>�S>4����Y�n M��T���!�"׵�~Ͻ�v�=��~�<�) >K���>�>c�q=������:=�F���Խ��&��H=�&�=�]#��0^�W�A>E�a��G̽Ri����K��R�D�U�
�:��:	>�*8>��=vSݽ'n�=�w�󴈾�޽h�ս��>I5>^Z��>�(3��|�=�[>h�.>�w��"w���1E>�;���'���I�J��=V$�=��)�!��:$��z����`o>�S�>M���G��.�o��'K��t�=��>������7>����FǾ/A�=*��̟7�9l�;-Z�>؋�����=�&�>�|.�/kf>�[1>�4>�Ž��.=�==�(�=<�T<���I�S>ӹ3���=@?*��˄��Ժm`��v>>���@D>�Z`��J�>p��>�&����=2��=��������v�-�GK>�����8>;�	��.��#Ԏ�Lo=�/F����\=^��2�G�K�a=Ĉc>��N�<�p!>�b>�E�<H�h>Nz����=�H���`���ȼ��+�l�=)�M��m�>ful=�'n��l=>EI�����&~��@W���!dA=|Mu��@�z<�=�iy�W]P>i�> ����W��r�Ov�=A�>".A>u�=p�x>ɘP���C>��x�W�;�@ ��)��j�= l\>!��W�Ľ?��=�Y>����꽳ס��\"��>��k=���=M�>f9=�bc��7���:�/��>��b�-5;>�"/���	�;�D��ϼD�=j?�=##q<m���
8C�R�=>����|3>��$>�i>������=�U.�G���x�>���
;�<��+�|��=P&�9�(�k,�=��6�j�>�:���2 ��7Ͻ���=�3��柺��,��>9=����=�˒>�ͩ�5>�
>���۠���6�>nw�>ޕ�=�p�ҽ!뭼u�<�Ƀ�]S����L��������z����>��>LX=p�t<��>d�ǽFl��-'�=��[>��A>
�=���wս��?���>`K�<��R�gn=Ϳw>����:�����;�մ�/M>{_g>�p=q
�C��=�r,�1��32�<k�-=O_��[I����=�
�>SS��G[콨��>Qx=	G@�,o����=ļ.~���>����#=>A�]���|> �>�&��>�t&=0㌽�5`>�O>X� >��>�����>���=�v>"�W�W�꽵wy�hx<yr�=��B>�~�>�	d=$-Ͻ:�,<A9�=/�z>�hR��7�61�ƱC�)F0> �=�4*�� ���ˌ*�t�9�;S �����\����>����(K���6$>s�Ѽ�=e�>>ք�=m�5�@�L�P=�����>��.�lJ�=�u��}g<��@=��A�+u��7v� K���Ƚ�����>֦$>��9��NS�+<w��6t>�ٜ���>s�=�*�=�E����?����=ޠz>S��C*��-���X;��x�>�]����j�5>��x>�2�>�I><.x�R�>��I�C>�`�=ҭ���+>��<�j��{�u����:��U�J��V�=e�";W
>l���0�l�Z�:���<~8>d1|��Y����������c���O�o:`=�0�=�iw���%=B!�M��B﫾����v��q%Q��V����/ӾH�a����F=�[!<|gټ���Ɣ�{�ٽ.�=�U1�����C���T�n����?+��Z[����=�T[=~��;�=�>������,�U>e�������ZJ=?rὋ���"{��Q�>�ǟ�/��B�=#Ҿ���K���+V�xC�=T��^A=���K�$>B�����<�{�>
HM>d㢽��>9j�:Gr�=0�,���>[T��8K>Ș�@p�=ġt�0rF�Z-i>�d��^ �
�z>�����|&�ƅ>P��=>iJ>�|�1�"2�=��ʾS�[<�V�
U
dense/kernel/readIdentitydense/kernel*
T0*
_class
loc:@dense/kernel
�

dense/biasConst*
dtype0*�
value�B�"x�
�;0j4��[��F5����<�l<�����p/>*�=���aS<�5�< 
�ZÃ=����Y����ļ3���e�Ix8<�z> �V7%��=~�����ջi�=�K���UŻ{��=�	�<
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
value�B�"���-=@-�����h~Y>���`ȋ>�
>����-(����>4��?�Ў�9�;=E��=KQ�a7�<e��EHE�
��=�(Ӿ���>�쌾!	?<����*>�!�=� �[o�=�N�<gE>f��>�(��M�>�Kn���\>�Ƚb�=��?������>̹&��>80�=�
�QY�������>�<� ��>���=]T��=�	>���>���oø>ddw>xժ�&��>;8��
[
dense_1/kernel/readIdentitydense_1/kernel*
T0*!
_class
loc:@dense_1/kernel
A
dense_1/biasConst*
dtype0*
valueB"��$���$<
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