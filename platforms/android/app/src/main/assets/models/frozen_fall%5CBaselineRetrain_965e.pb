
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
value�B�"��y<>p?��VU#;��>p��>!ŕ>d�>�$���}>L}���W�>��>�xV����>�=Rz�>��>y��<A� .q���D<{]>��n=x[y>2v�=d}~�{�>�ֱ>ƿ��"P>��?��l>{+>k��<1=޾��-��Z���"?��
�W��wB�>���=)0>
��>����>*b�>/x>O�>a⾽_=�ë>�7�>��b�އ.�Vi(=%ǚ�����!�>�������}1��^�yj,>�����Τ>�����>��2/��
t������ɾ��>���>�b?��w=��>t��W8?M�7���|��eg�fk���μM����@>2�����p��
[
Layer_1/kernel/readIdentityLayer_1/kernel*
T0*!
_class
loc:@Layer_1/kernel
�
Layer_1/biasConst*
dtype0*�
value�B�"x�2м2R@=`��=u��
�:0[ۼ�qT=xc>�L��A��>إ̼�8�J��=�+���5s�࠼�<�ə�/���	�=@�=#>���rA���=J�7�D`���\�vG�<��<yPl=
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
value��B��<x"�������=i�p>wY�=�����஽��>F�;���ν}w���=B�þ���=w��=�����{��G̻�kc>��P="Ԩ<||=���Œ"=��=�z���z=�q>�]���i�f%�=��н3�=���bf�y�#>��c>=��#g�B�>�(`=Bfs��F�h?>a/8��>�o���;�>?��=漋<���=��7�=3�]�5'R=\i=�FR��-�������A�V:�ai ������KQ��>	%"�m��������~�N�=M[@�R��+�>m�r=��5��l���u�=�!>�c�=_�����o�
>� Z>ꭊ�)�=z2��x�߼6;U>Qɽ��5�A[B>�m���.>d>����̾��.=�6ҽ=���rg0>�Z���z>��Ӽ�J=<������i@�CF>�_�<D��� >�����b��@�;r���6���N;�=[Z��{�=����m��n�->��=�mG�����z��MY=3Ğ�zQ�=c�U���K>q�L��؈�[O2��!���[���=��S��R9����>5I�bG.��2��=��½�>N�]>8%����=�����?�	��L�(=�?����_��p�=�� >�(A�������*�の�-�4<��=@����:>��=	�i>��<�9>�pƽN�����F>��=a�s="Z���9��I:> f����=� >F->e.�>. k<�^ֽ.	�=r>Ǿ��g׾{=bV�\T{����)�=�f0��}c>&��<`�e>��%�t���<v�>�A�U��=e����Y{��܃�p�4�n���Q��)�>�(�N�B>�ֱ�.�U=x'�o�=�������䞾��	������%ɽ!��<M��=grj���>��нqX���S�aD��\'"������ػx��U��ދ�>x�*>���8����s>[Q
>�T>	��= >*�>f�>�͔������p=���=��=P��V��>�����W�*P�>��=�9�/x�=�D���=q��=C7i�c��$��������>*��=�l��������j>'�1O�-��o�>O�J=_��ƥ�=h�=m�W����=H[�}쾼^!ƽ�=�����;��Y�ᐆ>��н�B�����=c�ͼ���!ڽ �>�?�=�����l���`�p]�<�,��G<�\��~׽>��Z>�-�=&p,<�y�=�o<�i˾���=�:J<�u�=7����}���ݽ���Pmr�u>�b <����6\>G";q�M���κf��=����JJ>-�b>���=�;��F^:�1�.>~��=���;{�f=ȡ�=E��U"�����{-�=Um�=��=O؊>*}]�
�Խ
F:=뿝���P�*���޽���=dA<+FE�>U>�0#������DC�dH�>Ù(>�H�=х�=oa�!Mp>4T�����=�Tc=��!�V�"��S)>���=���py����=�D�>�>#=S|�=. U�_IĽ��r>��ٽ�=���>"Z�W�>���>DA���+>�Y@>�U�=Y{>���hQ�=��'>���:�<�"��ܷ輤����t�='�>Ό��~C��>A��:�=��=姉<$h��ht��)i=F��>��2>��,�_��<�<ug�>�7F>V=�O>�	�r��=�.�����5���ј�7�Y>���a �5"��ǰS>�80=
�=o]ɾ��E>n�>m�>��>x��>��m�l\>�I�>�E=xљ���V���:=-�=��[=�Y=�|�;���>ʸ�<���>���<�D�D�t>8�]= ���BLپSh�>N�輕�n�(p�� �о��>B;>����(2���=��>Q%ڽ{�=�����=G�2>
�=���=��d=�*k�"��=�yŽ&�n>��]��｟X�< |8=$X�=� !� " >��$='��>Qږ=���<0���_L>o�#>�@�D-y�]�K�L]>�����rI>������<���<�*B>�F���Ž����32<�W>�j�;�C��|=�V���=f�4<�zZ��S��ý.����~��C�����=���N>�ކ<"0�=]�	�ֶ8��#>w��͆I�R�=�p`�j�F�
�p�����������>�'��.�F�������޽��5=��4>�
�=�����`�>���= ռ>��);�a���� �{Kl>��>
�<�F������>۽�č=�>���	nA��J>�=g?�=E�C<p�;��=���>ф�IY&>��J�<��=ɧM>a-���z>LFZ>�r�>�r�@��pj�=r���)�Z>����\����=��ý�ރ�S���ɕ��mD�O�H>��>�h�>O�w�S�]<.m�>aC=<F�v>+V�=̧?>R�D��>���;��i��n����x>{=?�W^>y�0�d=.��>������=_���Qb�=��\>��<m���ߦ>��!>�]3<J�>��Z��|�=�1�=��=��>��=Ty�=@X�|�=��>��V>���<���Fn>I���m0��k��<�{{>��>���=�@�;���=qfY����
Y>�^���<~��3� =��>����E��,�>��:>��~��{�S�Ǎ�<م\=-A�=B3 �g�E�ރ>9�F>	!�>�HԼSiB�/�T>��)>L*=\�=Ϊ*>]�O��&j>	|$>_�c�F�>� ͽ:��7�'����<	���N0��Q��>���=�R>��=>I��U��O��>�=�X�>-�x����< (���f���H��P>��>��>�e+�i�>;�E��E�zk�>�,'�Y7*�:⁽�2��f�=Kj`�וe�K�*>���=#�>�*��� �<���=��`>�>��ڼ)�=>u��U	>Ի���(��f!����E�)>�>���`�����޽��= ��;�=�ڶ㽭����">�=�'R=HR��s}8>�Ƚ�����{�֥�c�=*���;>�#��?Cɾ{�4��*�^��G����c>O�9=�b��Oý)����$m��]D���	=���b	�<�(�����=��;�=��>}��>� �<�%�=p�=!@�u{m;��9>��=1̝�jB�<�9����>G�0���׽:�9���=1jy=������=�̚��)��]V>�o>>�����&�g>���=������=<�>t�>�{�>�َ�Km=el��5k=��>����o��u<�u6�<	��=�h<i1��J��J%��mw<�!�?�h=g)�=��=�k�
c�� ���$���5>cj�>L�?�4l��B�	=s�>��E>wʏ>Cr<�2����OO�����W;v�������> �>>��?�>�33�Z(� r���e=� ��L2�E�h����
Q��\l> >��u�ui>���>_�ܾ��ͥ;�ZI>�����vD�h�>�,��!�J=�f۾ʤ�=>]=��5=x����]>��=T���� >5����e�;�}��Ç<{H>�˨��+�����m$��R>5`����>�*s>��]ڽ�_*��:F=�#����V=3($<� o���ľ_=���>��>8p>�0D>J�P��^������ ����B=�<�����l�=���=:�W>R:�=��D=o\>���=hRb>��N�Hk>#Q����>��
>3>��[����=0�S��۔�A��d�=7�><�<�]�=X�>S�T>��ߓǾjQ~�gb�|���P�����7��>��o>�o1�dC#>9�	��"1>ήD>�0>�{��%����fU>- ὝV�>��=J�%>8���Z�Ą���������=�ٳ=���; ^0�O��=��=!�C��>�G���� >LN4<����>�$�&�Q=0?���q=+�<�Ն��Y%��f�z��j;>Xn>ɘ2>� �<�6>��;�Rۿ�{�;>R=�@<w��yf{�ᐲ=&m1���=�*>��w=r����,>�l�=�>k ���7>%i�� ��=�Ė��g��w�>l�H>M=F�'>Ǟ=%��=�&>O�ƽ����-��������>x痾�'�R�<�
!>.���*V����W�͔��e>,/�:��<���=1½<=�{�I��=�&�A�W>���>�&ۼ"�=��;��=�������=\�z<��˼G������=7�=-�f=�ty��!�F�B��'=�νcO�=ď�!W�<��|�)|=9�g=�lN<�r�=�$=ߝ,���z���>.{��N�=
�`>�>�-M>�+=�H��p�>�	��O��2��r�>B�>�!����7��=��)�!�)>�X��x�>9�^=��Z��E��_'^>2����.�=�>�X�;t}�kս�9�1����ݙ>��/��V�=���96����,��+:>��S>f��sN=l�����=�M�_��<�x�0��(E>#�>m$�Bsh�0Ƭ�dޫ=E��zց>T�U�TH��C�>]=�vp�=�:�>�4>�H��|�6�7I�;�4h�[�U��I=P�<s����w��������>���WIĽ9���ԑ���09�)E>�+�1�׽���<E�|�v����׽��T>�>Kܸ=P
�>Z��=��>��@����>��i��Ο=����۽ڣ�={��z?>z�(��Z>�s�>m�>[�=L����s���l<j��=̉������P�=���>�0�XG�>A!=��F��~�����O=����=����i��=,(d<�Y>�7��孽>ҳ�=�Y�<��W�,�>z��J�탊="��=��X>r��=`�O<��>gQ½�r��M#>�<>�,J>��˽ƽ#>}��<�/��S8>���J�<��;�=��#>�2�=h_-=3��(�[>��G�-�`��.��8���Z7�xL�>�����<;�<��=|�,=�F�=n���x�/��V/��v�=���=�����|�<e<�+����=��,>кH���9ca���J>�^�=<��������<I�G=�ؽO��=7b>z�>ի�>_3H>�ZC�r�׽��8>�5>�/ý5�d>���=&,�� ��ӳG>��4����Z0>/��=�)�J�o�TIb���>d�gk>�o�2�n=�(=��=����,�?��ό�>N�Z=�5�;�=
LM���#�+w��'���3J=G�I���ʼ������J�]<�R��J���'���p<[��=N��=�Q:�zi�=8GX>.��f=J>���IK>����s���̽���$>J�4��g{��߽k��=3�:�fm�� �=�t����1=���=��<�(�h^��q�K����=�=[�e�j>ϲ!>�p�B3���im���> \������q@��9P>2��=a�f��f�e�
�P/e�0���HY"<�8�=�6�=��=�C���iw=Y^�=��F�J�ѽ/K�����w/*�6��=�uǽB�����=Z�q}�='J����ٽ%-�>�%��[���@]>��=��>��>>�vؼO��=id	�F� =��潵7s�.Q��5��.g��R�=������=��u�r�<("�>)�Խ+?�=ܗ�=�׽@Ǜ>~��>�I�[�$>��i=e��PE��C=r3t=�T�>�K�?����D�4
����T�ϼn^O��N�=vЮ�ɱ;��#>�t_>���Ѥt�>���>�CN<��T;�?��۾�"�f>��<��g�s ͽ����U>��<U�����c���">m۩>�P���>7�4��3>i�=��=�Ζ>""�C�I>�iݾIԸ�������=,ͽ�B�&��>��=�%ӽ(|��A>-�����=�����=π��nK>0^>�KY=>_s=W�>���lq�=�9E>�a=�y=���=���=q��<�"�=�Ҿ�FT<PmE>�N>YEJ<��>�M#>MA=�u!���!��Gy>�&T�c�=��Q�L�'>G^>�TU>�1@�z��>�䊾5С�Ζӽ]�=��->]]��k%�������}�=B	��]�q>��>�a�=�Y����=�k�=]����3>+�ʽD�� "Ⱦ�F`�uTS������
��;>A�6>qW�>*О��.�=�OE��'�<Q�	9[�=��=�1�=��=�>>^q8<c�=K����(>��9=�1q>w#$>j� >�Z�=a\�=ꆔ��S�>��=�^����G�֏��Q�>}F|>���=.B>�]R=Qfݽ��Y����I4�-b"�G1�<l"�.3����>:߄;A��=>p>�������ϟ�=�0��,>��y���b��;RD�=b�ƽ�X̻�D(>H��=[�>AA�-D&>E���B<>������� ߰<��=z������=�=%�>k�O>Ҵ>>FX"���`>Q2u<��=����p��������Z����z>�Ku;�>�8����[P�Vݬ�W�!>J��:������yeѽś�99��=��ƽn�O��g7>��U>MV>�L$=�{��zq���=!�=i��IK=����G�}>���>�<.c�=�6�>��}�{V>�K��S�>4Ng=D�>��R=����v���	�6>+tV���D>���=��=���=��<�3��v=�ݝ��1���=_
>��=�ڲ>�L�����#��=�>��_Y=���=_��/�.=��6=WO2?x ;;X�=)&Z���<�3=��*����=4g�=�u/��Y�X� +^�`�<�m�|@>=�?�MP=�$��,>�\4�,N��h%��1��<�p~=��;;�����;i�r��=�2>�e��TK��J���M>`�q�I0�=b�2>b�<)�=���=輖r�<by���=�!>xI%=	S�<?>C��<�
��a�=/8�Aj�=^�E�<��>��ཨu��wz>yY>�?��=��||��A���=�2�=�EӾj�z=�[�<���g� >�>h���� G�@��=U���p;U>CU>)��=(�R<��>䢄�W�>�K�Z]����־Y}M�Aa��9���>���=H0y��8>X�[���=��>_�e0 �C�=�C=x\��D�=`q��P�=.�Y>:g��-�>�|�ȼ��g�=.���vP�>H�9�lC=>��v����y��=���=��^=U��>���=�w��x�=�~+<�iB���t���}bK= �.>s9�'>	���O>���x��h��>�W(>���>��C=7F=�#�#0�=@w�<�&*>T��=�8>�2;>X	>Ĵ�=���=��=([�=~�2>/�弔��=���L16>�9k����=^A4�m���=�&�`P�=��>�\n>ڡ>�\��(��f1����=NY��}�s>}��!�ܽ�k>���=H�����=᧽=�B0>A�;�h��<9(�;�нX�=�m>�	�\N/>W�>�S>K�'>���8<��;�'�=���=�=��i=Sz�>{x�>�*�=�hؼ�Ϟ=z�=��(>5{]<E��<=�`3�iG/���,<���`,:>9�>��i�c�8F>�0�=���;#�H>���u8>H�d<`��լ=>�=٫���2��J5���>�)>�<2��=����8>s� >ML.>^�>��)�A`���0�=$@+=n:��ݼL�=������~�>'�ib=��L!>9�>�u<��3	>S�h���ѻ�XP=����'>%�O;>eQ��d=
><=��>�wF��׃;RNW>15=_j5��yH�F~�>��;ŵ2>N>�I<٣�=�ʹ����%Ζ��Ԣ�yG<�}�O�=�uH�s��=�3V=T{��I&<�A(>(��D�i=^�t����5�`=�]>� ����;X�y=��;=k�4����>��r���Q�{e�=��K>pq1>�x�N��=����:d����AzT=ֺ��ʾ��=�@�>Ѝ���/�<f� �p�	>�%���>Zw����%��;�W��=8'�����=p��>��`=�C]<rT>>�:�
H=>(�m�E�7>�����C>�~Z>�+�>�K����<�%>�=UW��hS���9"=�hw�r��<��I���r���T>T�l��\�<�yp>F�<L5���<��۽��ӻl������S>�. =:�$>�>;z>Hoy>�vr=�1�;�0>}�=���=��ҽ�T�<u>߫L��� >�HǾZf���� ���M>�2>>7~�=��l��e�U���=1�k�T���_��0G>O��=�s�<���=��y=G�>ɪ->R�e���7�b�=�F/�9����ц��n>>���:̬ν9|���=e/<~?>��6>i��:v:�>m�-��T@�M�>� �=��y� ��=���=�篽�k�>���<5p׽���=<>�C���t6���>i8V>�+>E ��k�X�Z>6P��yV�rb�ߴ�>K�#9�>Ֆ>D��:Bw�sQƾ�!9���=T
>�Z������O�>Y4�ZQ;>9�r����Qk>���=��='�ӻ	�?�9�>B=�<�l���ٽRz�����>`�\�D��=��D>XK>���#�ҽI�<3@,�V�1�����q�?~�t�ϽO��Z��=e�u����>�>(Qֺ8�>����;p��\��=�}s���*�ܻ���X���r���>����K>Ʉ�>O��=����e>�=��T�<�&(��f�=2�>P�<��b��*>W��Mʈ�Bu4>*5�;dQ=���>w��Gw�7�7��xƽhW6���>��	�f����u��4?j�=k�y>EX@>��;���G�=C�
3+>�,B>��|=OI7��/���Ƒ�萀�3陽7����0�>rŀ>E�R>�ϰ>��6>��n>/�=�1�=�����>]�޾Jٛ�ZЗ�3
?އQ�w�>��=!�e>%1<�驽ǋ=f���*p�9��Aƾ@���|'������}wt���>\s(�ns>;\�<IY�=���>w��>��=�η�Sx��I����=�V����x9�=X�>?T?�H�M�p�P�<���=8�+==/��Z<�!�=8�_=�~O��:*>���Z�=��02�>�ɲ>�n\=��\�h=U)>r�>b%���>��+��H�<(~��_��=Z�V>3Ij>�n>��<�1���+���H>7^6>�$�#��>�G}>+�>g (:���=bV�W��<
q>WT>�>��j���w�>�F�<C��*5�9}V�Ğ�=}%�R=,��=
S�>��?A@�=�">�~�i:>Ѓ�=����%��>���=��zaڽ���'ý1ȭ=#�?>?>	a�>���=yˠ;����>���(̰>7I��E�/۸��p��ڽt��>(J�=*�}�Ji�;�ۅ=Lb�=z�o>��������=Y����+D=)�������Z��=�Y�>�j���a�>��*��ޕ=��G�=���2/"�F����D�=���9�M>��޽C^��r+>Cv@���5��	�O`�=���ƽC��;�9�������ͨ=I�i���W>Z����wi>��&=�2�>긹��(�t�=��'=a�/>��>��4>g�> �B��pi>;î���p>�y�%�4=x��=\,��2�=����>&���kT
�J}��)�����,86=���ҷ��X{*>�*���>�L>x�x>no���>� �=Á���R>߈X>��^��ȧ<����©�=x��=��5<Z�n�e��a6<�нߘ��W�=�H;��qu>hS'���=<>l<C����N�>�����4>���=�,x=�L�>3V�;�&�%��=^�ὶl���H�K�G��x=2Z����\�v��=���L>[�	��X6��O���y;=D��z����g�H�;��@>�@L��cc>0'y�ك���V�>�{\>�@��fQ>�,�=Dy�=��ż�����l=��a>E5�=�6�=,��>��l�/�G�����ź=6�1���=R�=ЖL=T6<�,ED�Ouν��ֽ�ȸ=N�<�����t>'W=�q>�^Y>-3���=^Ƹ��e�<���=҃D=ǃ�� �<2ZA=�c��,T>T�3����S��f��=�,#��=/rM��S�ca�LT�<�G���<��=x}����:�����=A�����<�N�����v��a>�l>3]��lTL�]�>�#5>L��W�=�J�=9���}����>�w�=KV�=0�=bY�=��A�FdL��>�,=�>=��>~%��b�=�s�=3"�e��=���m��>�}�>��>��K=��<LD���>=��ħ]��T>9
�=F�M<�x��fD�������o�=_���6��?9��=ft����{���:L�>�Q:=���%k���>0�=]��<���>˂=��]>H��u`������9� �-�Թe���=���!g���T=����c���9>^G�==SH��Y2>g��<��1>�r�>�p�=��g=���=k�=^m�&�x�h+>�MR>κN��s6>�s >Er>x?����(ƽ����>���pg��X��6T�=M��=EQ�=��S>���7H�=>7��=V>1�=���������!����=�9�����=�=��L�;��ʾi\;��Y>�>�Y�=�(N�D{׼<�I>�0��0�>�">���=��=x@�C�>���=��>���=,��<c==zW>��*>2s=�y�=.��!���)=Rpm>��p<�``��>�~�������g|��������IB���߳���0�w`]>�>����=�>�`���y�����rq����=����$"�;�ͻ=j��=��A=��S=\��'4>��>9q>�=[�`>PHd>=�=m��=!���A=n�H>]7F� =>Y�]���C>�4w�����O/���=4�8��P��^� <�+3�Sr�>�G��C%>#D�=��<{jV>�:>���=�"��b-=���=�C6�����:>�d>��n=�7�<,W!=��&�̾u(<=�^�<�d���p�~=L���X>���rZ�B야18@�����ҽ�;)<QU�<Ia�="B�����=3O��4�=,9�>r��[�=9i
��/�=��<"_�=� >U�j�ŰA���M��&�=dE�������_�=S��>^7q>�~�<7'=�C#>v =hRL>��G>���%�����	>)>�=�!�;'�\���ϻS�W=#B��:�>^�=�>/�3<? ���Ї<�%8=!5��U7=��=HO��"���9���:����[>�u�<�_�=���f��9�=�[�U����%39>�~�=8g>$c�=
¼�6�^]�����>�pL�;��/�=D��=�'s>K�=y��ۥ��U�=�<�>(E�=%�D���6��th<V�F���q��5�s�����A �1)]>-l!>��>�׽\�>���_�=P"��s=>�(>�o=w��;�CO>�PV=&�> ��<���:j����"�냨�꺍���<	��=���<M�/���Q��q>�Q���f��]=腽��E�7ԣ������(U>��'>�ڵ=h�;�<���x`�=>8&��L־D�Y^?ZF���h=5ɰ��������>������\��d%�^j ��f��"��i#>���� ^>_�>��=����jȉ=��#=1I>[ϳ=t>�X�<�ö>Ɋ#>�I�0oC=Wv==P��4�����&>��"��$ļ��&�7�L>��@���!���������pzP>�[��  >�x�]�^;?�d=ZG��[#J�Q0���K>� &=2Ƚ|�_=3à=E�+��%y>)����!�������G�2�@E�����:Z�l4�=���n�=�*��:/�nL½f�@>���>�I8��\>o�=A��3��*�ʬ�O�������&U>_)>��d�,<H,<>v�Z��=�\>i$�7��X\���� >G�� چ=ê;Ai��@��=��B��>�j��o�> ���	$�;�>y���	B�,e��vMk�<p̼h�g>�Ώ������=�=|��>Kl�=�I8>�>��E9_>�����U�������w�>�^������G�<��t�#�#��J>�7�>i�J�Bf�<\�(���9>~�>ξR>hu���Wp��g�����=�>^��=�j�Mk�=�ҿ== ���N==/L��mw����=��p��kN������C��a �wbY��l�>�������<**a���5�����-��xp=]~��-��K�=yr��&Q=t�&�>�7��=���=��G>4�佗�E>�K��0�=O<����=��d>�I�l��=`>)?ܬ>\~���$����>Ǐ���h>Ç0�m�1=�H�==x�<��>�<M����=Ю��yQ>�m:����=\0�� R���� �p'��g{=��>��ϻ�� �5f2>���<�Aͽa�C>֩��l>k�@��(#��)>x�=W2�bV�;�~��/�=L�>�W>�������=1�>�����v���½Ai^�{ =��*>�t0>��%��=�B�=k�j�7U�=��f�N��>�E����>E�8�A2���Q�D�Q>���=��N�I�(>f����0D>S�J=��p>���R�<��.R`��+=-�+>-��=�.@>���>���=�7�;pv�=�[6=I��=��y>��~�}��>ǆl>2)>�����i��Je�'��yt>�>���<t��=w;*>t[h�&e>�v��R��9&]>�75�r,�=V����R���j�>�\L>��>�^���h>����O��<�#���p�aMJ<�(ļ����7ܽ|h���o�Y,=��rO>�.�EJ�;���77�'/�;8=�Fh�h=�p^=!_p�qs�=N���p�">�yM>���6�8>�U>�p��q�>�f_>�ꈾv�6���e=y�=��c<����=�cA���=gY�;�#��
f���X�0�>�����B����`�>�D�������`%���.�*��>�5s��y=zō=�e�='���Z�= V>��DX���꽽QѺ>/��\ힾW�=Q��=���Q�ý�{�εܽ���=�
>jA�=���=t��a#��c��b�<5P=�6F��՜>R�>y�I>��i�ڣ�����<����8�<>�����=�D	�g�<H��==?A�܎-��<�O>�`�\����=F-<�Z�I�٤=zۼ�:!�L>| >��XC׽[�h>i ����8R=%��2>y�� ˽zjz���;�=���=���l�)��.<�C�5���}=��==,>���G�>͖���ȼ+�&�����g&>?]�>��=V)нAo�=`�xl>�*��ĕ��ۨ�ml�>U�%��BM�=.>1;whp=��j�N�=&���\>1a���>>�P=��>p2��U>��3>�7�=�;Ӽ���<�姽�;ײ�<#8T���|<͇e=c��>k�=���'�߽S��=�=����LP�؈�=(�@�p��r-�<U��<�㧼xa�>mR ���ŽL >�=>�>>�(=>N,�Oݞ��">=cDV>e�[�>�Z>�J�>��5�J�{�
�-�����n�����Ǿ6$�~ƚ��$=�&�=EP>"�����>fo�=���*�����R��Kg�i�<�y�<�=�-���l>�A>Jr���0��.=Jo�<�S?� '�=�|>�>h>���xl>lL��ɍ����Q=���}�?>V�����>9�=������>J�>=�Z.=���=X}��Ӂ��i���	�=K��{�=�r�=�	e�̚�>�����Ib�=I�=yEۼ��>F�>=)+>I�=0�=����#&>U�6�t��:	8>@꽻�=֛<��=�7�=��>ᆻZE =���=��l��Ĭ��ų�F��="��=�e=���c=E���8�=YR>�H>W!>i]�<�5ƽ&n#�o,�=һ�=F%c�_,�=%A�=�y>��.���=�_�=�m>�z$>��0=Ô½m�O>gA��=H��:��W���X�΃=�
>g��=�41��$�<dõ=ʀP>E�>d�j=��K>�.�=����H�5S�<��a����v{�=�O�\�K��C6��8(<ɨ�>�h[p��ٖ=�U�=���=yφ=����=�N��7��71>m)�����'�=G�j=Y?�\>�J>	�x*���&�=�K>w�u>)���2y>6��\ >�w�>�(>)�<���=[�x�α<>T�(�e
�>#z>��<wb�>�Й>�F>ھ?�U�=�-;�F���/�r������aν7�>��=�([>7_��&����x�;��6��M�=�$��lx��W�����<t�">��D>�zQ=�λ�(}�	�a>��~>�H=�O1>�T�;���=�l&���b>�3k=$і>�%>��=���=�Yi�M=�&����7>�?�=�r�<7�$>�ދ�a��SO>�O�=8,>���<�[N��Â="M��*.>�\c=D�d���>n��=���*�0�ɘ�>���^>�����>]�<�2�;lI&=�)4=����*k>@.�Ig�=P��>t�c����<FU�=0�>�d>0�8=]!������Z� �>��4>�*>�6�<Ļ���a�=8�<�=�ȕ������D��	�>4��>�K�;��>85>G�-�>���N��>�?=Z�%>���=ulG���l�yl\>L��N#B>�"�>�b�>�Ț=!k>jT+=E��>�65�7g�=�;!�� M����>��=\_�哉>�q�=,��>6$>ܶݽ�=L��='0}>��=�M׾��'�������>�K�>��<���=��$���-=w-->�7i=�d�=��>$@	�,RK>8ս��ྞn�;R�=8�ѽ���*����(==?ҹ>��<�y������>(��>~�
���>q�׽���=M��>���=�.��q���@�D>�Ш>d)j>�,=�v�>����P�%&��=�o=t(;>�½�ǯ�>ṙ�Lh�8�p>L�н�¯>�D������>� 5?��d<� �>Ҧ!<�Z$=�|>�jk>�˽����ג>��W<��=�o'����:�u��[�;r��>���>�H�=��s�U_t=5?�-_>%�=mk� @J���L~N�o�=$��=�pq={�?��zb���U>%d�'��CZ>L�>t�9=/����!��,���h<�3��Y|s�BgI>Lp>&��>н�9ս��<½=`������t�=�M��y[�=��;N�Y��=H�=>�q(>�^��(��=FX��<�����;��8>k8&����"�*���.�������>��"���L=��8�E3=�!�B"�a�	���[=��>�3>�k�7�!�7O+>1< ����q+��k�����P=F����=�!��= �=��>Da�hG�E���������<���h;�`�%>���xü|��=Y0�=�RD���?���>la����ͽ�u��h'�u��-r�;GG����<��g>zw=�+�=��T���r=O?7�};Z���#�\��S�KD���A�� G��=e=���z�=�y���}Y�=��>���<�W�<��H=�1=J'>U=�=Ȝj=kq6�@��=pΝ�9^�����>������>/�=��=�FH��B5�c�����.�K��� �f=3�>�1��=��=k�>!н�r,�,];�V���'/=DK!=2��16>�)�=h@;=�S��Uz��!E=�8�>��� ��)'��v��=�,D=P��>k.����|.��'+>�>=�h>cP�<H���UF�c�}=
6>�t7=}�=FG�=!	>���)�=U>-�P<���<�S)<r����=D�d���Y�=�i���O�=��>��>�\���Be�z�;ν�/==��s��a�>���>6^��5�0�3`����>J�>��>=���>��Z�Q�a>n�A>O�R=pS?�'V�<>[��M�"��)���l��F��k����=�|�=���;꼛=��������=+�,>����P�>��I>��>�{�=�b1��k<c��=�/��I>�ٽ|ӛ=���=�Ui>8U"=�$�=�z�=�%�����S!;jyq<̢�>�����нtl�8�K��-<>�� >t��g=��s>�	;s�>�7Z��B���=��F�=����n�L�'�V�.=��� =Q�>�g>��z�$����=�h6>�P'>F�l��CJ=|4>?��<�7>�v�=��t>M�9>!�<b�|��:�Δ�=8,=�CZ>vh��5��=
`��D�=T�½[��yG��Zv�6�w=~���K����>/u载�<Xq�(�C>]FU���[���!�ZC�>&��=��=��(=1;��Q����Q>�;���>���Vv�=H�x;ے>�4�iH� �_=����T�����ܢ>�B>$��=����&�`<
>�/ӽ�ۿ=�g9��r>�<w,=>�Q:�y����=��=%2>�� ��<Ӗv������`����="d|>T�&���=eHʽ`�0>��K>a?�=#z�=� =�At<�WA>���>�=��;=�ý��<�E�=i�e�����F.�=e�=��9>u�8>�T����@9>��ѽ͗��9�=���Z�t��n#=
�=�� >�<��>Y�r>���=@a�Z�n��x>ֈ
>
��>��=�������：�W=6s;=# $<�����\���U��g�=%Q������T�=[|��5
��\>��9=�\>�5��ċ�<��m>kc�=��;h����=�@Z>�� ?�gd> ��=�󍽮C��9�)�B�WF�=���=�H�<��-�j˼">�=�s�F�7>_<32�VV��� ��"7��=�8�>SY��L��n&'>���=�~*���=�8}=��x>d:Y>+�YgY>���W�6=ǒj�~�b>+�b;�g��cَ�!���TD�=) W>��<�Ũ���=���n�=���=�i":�l.�%Q�>#���V��=�T�+���Q>�f<��V�Ĭ�=�!?�C=��=�����I>�O�=S=>sC���H�m8'>�� >dF>P!>��~>�r�=W ��)B��R�>)�=i�=!���M����
�Uʧ<�_>S��=
��H1�&=>b��<�[ѽ�>�	d>h >U`;�x5Z=".�H�$�yB�=�X��L�V��p�/ŝ<��ɽ7>�����=�y='��=o�{>��=]�F>�(=��=n>֬)>���=��0= �Ͻ��ļ>T����轁� ��#>M�8�ѓ4��z<Rt�=7�_=	f>�#޽u��;��6>Ԍ>��\>�e�=+
�=oh>��=�$���=>�>�T>p}�=8���(>t�:�B�=}�>F�<�u?�3;iR>�o�b��Й>ѓ�= A��"�=�1�����=U����!>�b=�����=9�>�������?�=�N�>Ȧ;>�'�=�!�н">P֌>�2>�3�=̊>?�>5_�wI�=���+�>�IW>?�|> 5�=����4Ͻ
Ά=�ր=oOz�i9�=J=��$>��=���&�=k�Ѽ6>9�s>���;QL�L�>+s>O�)>�%{�8�9�M��<K%�<�ݹ��7�=��=�Jo=�}�=�A^>޼2��@�<��ڽm�=�Y">�i�"e>��&=�P9>�<Y�M<S��=��=[�~>cP��{�e��͚�Z���]v���>Xz�>��=����^	>T����G�,�ѽ��:O�>�x��.�(k=����R8>�g>So=0{ԽTٕ>B7�=V뷽�J�>�zY�f{�>��J>!�ͽHw>���=�8>�����Z>e��=b�i>�jo��'�<M)�Է��6�)<l�='�=�\/>M���;l�=��R>�h�=~Z���y>+�<��>��=��>ف�j>�7޺j�>��>	Aj��{>��vH��\3>��<>�}Q���$=�P��zj|>R/&�!VU���:S�V�L�>�Ǿ�G>�2��+u��$�=�,�������5>dJ>b�=6�p����=L|��h,>���=�,�,ڦ=�F!�S)�<�ww>Vʽ����*���H=U�X�3p&�D�/=�GT�H%V�J �xR<R�㼣�ٽsQ(>D&�=0e>���=G�>��=ڦm>6�>+y >��=%�=G��.�3���ս�1!�A��=l۽L��=�=)&_=
��=L4��7����`=��U=]6>Rн�x�=�ӼZ0�=���=ZĽ��ͽP񓽏�l>ϊg��K�=�Fw>x�>��>Sx�����<��6��<�=I�~�D3�=sMB�St=�Xs=���oE����糼<�b�0*>u���a��%>h?=vBc��2����T>�=2�v<�X>WN�P�̽��秬�����2L>��"���>>�
>�U'��L�N�����;&W>�U��_}
<f�=��<�ū=VR	=Λ����
>X�P=�O��*'H���9>��]={:_�r}x=��>��*>�舽�
;>Nǃ��ѽ�x_�w�l��m���m>�Vk=���0B"�'[�=m"�K�������F>ּD��1�=�h�>�����=��c��>	d�/P��C=]h��� �]��2d.>F�ѽ�
�>	�~>�b�=�����	>��>6|�>�b�=st�������Q��)>uҥ��!�>J�y>!4m="�l>�"�<u��=L�=���#q��?�==�*5���F�\p����>���=H�<=D�U>	d�=�˥�xa����>O��l<����=I���#�è��>@:�<${>��>�0>Y�>��I;V��=��~>�Ⱥ����=��7�M��=/��=��<��q��k�|ͅ=��؉���=m������$�<���>��ѽ���6����� >� �>rF��y�X�<�=n�<��M[��ʼ��=f���U�f=rU>���9�Ͷ:�N��L�.�x:��n�U��=`N�>7t:>�۶<GM��4x���h=�9�}i$=��=�#>��=��S������� ������=��˽fm4=`���ҡ�=��ý4弾�I>9X=>dIV���X�~w3>Ю�=��X>�G���>5�7=!k�<�a�sJ��.�y�=۲b����=;�>����̼v6��mV0>��=Gq����`>��&���=�=��A2�zHP>-�,<c���˸���<����.�1<w��=���=���=�H
����=&j>a��l�=C��>??rս'��=0����=�!>�>(>�h��F���T>S\μ���<��|=����:
>	�x�#l�=Z�|�����ݘ=�l�rA�����;��,��R�M�W>{������,0=�3�X�l�7P�=D����-�����>�d�>T�T���8=�ӽ������=OF�{�o��Q�����=k��5�>�{.���=���=oV����Y��GyE=�)a>�`���=G	���>3�>���;��6�[�����#�=��=F�Q>G�X>�Ѫ�:�>g�=�,�
��>�p<���t8���9|�I3�	���+�ip5��0�=�n����7$��񄄾d��=0B�=�G���>�Q�=������>�<|0>��
��+�=?h�%3>��*���=>w7��5r�>���=X{0>��J=���>i9�==΅�/\Խ6\��(�ཨ��+�U��]Q>����y��=5ս&�=�>��Im��h�=#�=O3��B>%�=�v�>�ю>�p>WŔ����=͗�=���=�a�>�}h>�c#>���=��>6ϻ�� j�lGh>�ýޜ(=^���ij>��;ٖ��5��>2h�����=h��=C<�>�#�=x��=a}�#�@��)>�TX���#=�z/>��=���1����ׄ��A�=2=�h����= <@>q��=�>%5>y���`��>��!�r9�W�e=S<`�z(�=�5�=r.�;��J���=�g��<�>��?�y�=$Be�I�E��=P�(</��=���K�9�����=�U>>	�x<��>�ý�C>��J<��>�ɜ���=3�'=G���?��,>�:|>=&��k�T>�֭��&>��޽�<�<��Ľ��>c.>�
>�=�5��^A�.��[�<�Ҩ<ʓ>R�=?�4>���<J��>�<�z�= W~=�C>��=:r�i�S��>l�?�dL�;p��ФH>�eh>Kj�=�u=l��Ӈ>.�[�ǭ�<�=>R�F<�����7>{6$=n���d�H>��!><X>�z׻;6'�����4>N��?���f}��g<>A�>7?>�\�>�W��1H����
��> 2_>���J^��ϔ��_�=�`>����G�iHk>�c>��=�T>��	=r�m>�6>E�I>y>�>�z�=��-��P>W8���#�kv2�LD�<5[ǽu��d:c>�π=A��e8	>�
�<�� >�SJ=��=*�M>J�5>�J=a��=[I&�S�>������|>L�8�K�=��=w�S>1����|g=��]=4_|=-0��mU��Ԋl��d>�>S�Q>Ѯ�V��=$���S@>ī\�]��S�=S��=��>�(>��3=�;�k ��H>?��7�>+j���^�=ŭ<;>��S>���l<�=�;���=��|��Ĳ>Et> M�%�<�$�=�u6�=y�V�@��=��Ȼ���>�	T>:0>����=T>̼/��FX=|�ս6�=��ܽ�oB<����뽱��=�hk��w&���<y��:�#��s,>�3>h8�>�3<b$">����� q>G��=�==��MM>=��>��>Mr>mw�����#��"ּ0oݽ�[C=듎�N�<>�����ʷ����T>�y���7<2�)>�Y����,�&>��нt�P�8Kh>����'>{\�;b����y�=ߒ=Iz轒ͤ�����P��Sg��fFC>��?��='�B��3��
E��+e=1Ə<m�j����<�~�=��_=R3>ǱP>�J�=�6>��<>�.N>%R�=��/��3c�=P����}�>�>���%�=u�9>=݉<M�>�I�=m7��(�=);t>���e�-<g51>�d��	)>f>x �[ӡ��g={F;>Y��>=��=^��<��=���=�J	���C�=,�3���]�>��̽,�>s4Ž��(����<�υ<xN�>�(�=�3V=tQ>��o=���@��=a�������8*�=��#DR���>�y=/����;v<�e�I�H���y��Y>3���N��נ�_�=p�>�<��y��C��sg>�aF=�ա��L=�,��6�|%�Ds�=�`)<'�,?�I߼�\>0\����Ľ5�
�;����>�t>�<�T����=���=��S>���8M>H<?>�@�_��6�ʽJ�Ž��#>�+=�!�H�@>VN��A'=�)�=� �>��o)>Y{=�m��%^^=��5���	>�p*>��� ->,nm>�z�=wK��EE�<�Tt��A> ����#>J-�5�߼C=�6�g�a>�<�<��ܻ�kW���3>�>���;�b�>mѼ�@�/��s�>/�^��u�=���:�#�>��<roF>���=�7Y=Zo=�tf��_��X~��_=zi���k=�Q����b�w�A�L�>��">;j����>�  >����HG>h�N�o�=Ͱ
>�x�>��y>c<���>��M>��9>���>v�i�:>������=%�>K�c5���W>�o�>6�V��2:>'"p<*��=D!">���>/W�;#�"> �l�F�F>-b,�����|�F���=�O���:�@�_>D:�ĺ��� �R��=���=,�^};v��=4��������=Q��l������h�����M�=���=d�ƽ�ho�����}=����:�Rk >n��:e.��6Ͻ�[b=!7)>�R��<�� 7�=����Hh�<>�ʽ�Z��7!�E�h=lv�s+`��S >��+���=�~=���=��F=��T<H��>��콀�޽�>�g�ˁ�����ne����="����I�J�L>�U<��Z�P�u=d�>�D[>�~ֽט���v�=+�ؼK��>�H)�M��=c�;>*�!�YdX���C*�=ڂs=�����o0=�����H>�������Ne=hd�c�=o�����̽��^��4=z[��h��<���� �>>�l޾�]Ծݺ�����=�fH=Ԥ0>M�J��=�L=��=(��=q�^����=5M�<�}ֽ�Ij= U:�6 ��O��>�#<�[�=�2�>5u*�"��=��ٽ���->ި�=�˓=,��=����5��5�W���<;潃s!>�!=2|#;TBM<�6��d�=��=	�ѽ2>�=�Q�=��>��T>%�>�a3���<X_=�N>�3�aN>�S":�O���~;e��>b� >:���Ytľo��FXS�L�=���Ȉ>�I�<s*2����=х�t7
��}�=Ft�=��=� �>qq6>�����b�=Ö�>�Q��qֻ�5�ν�bP=>��<��X��Z�Z�֬=>�0a�}�*>�T���m��IϽ�Ʒ=���;��>8�#�ނg>s��>Pu<�A�= �>�A۽�f�=��W>�����8T���s�>��^;7�=�%�=h(>_	��MT�r$<��l��=
N>g2=S�%��f>T�1>a˼��=�O=��'=*���=pD8�(��<��=��%�0SK>|�|=��>.�[�������n��.4=r�$=q��>��=R��<JԽ{T�<<��=�� >��C=�iL��>��ƽ��>Ս�=�<>�������Н=zLN��sӽʌн�D��=�B=��Ƚ��
��lG=ky���Nx�.<>��&>(���;��ƺ��=�+B>Ñ�����>���>�'>{�
<7ƽ�ڄ�n��=�I�>�᜽*���-�S>�Y=�>�Y<�ℿ=`>p���&�=��= Z:>G�!���5>����`>a�>Ű��5�: �9>�C�����>	[ڽ�2�=�2�=%p����1��8N>u|=X�:CB�D$=�=�f<��-��<��%v=��>�4=>���.�T>�7>�1��>�ڀ��λ��鼶��<�Y����<7}�>[��v1>[�ͽ	h�=]M�@<�<���=d�>G�=*?
>O��<S�;�G�F�2=Dc>��=	�{
>���= ��;}I�= ��<M--��?(�=��X=�=d0���K�=�d=[�%>6�f>&��dD���:8g>>��=�q�����=CiF>QѤ����1�=�k�-�߽K�q<��q>���=2Iؼ���0�=�>1SZ=C'>����=�� >��>��>�I��ݪ=k�*�}��<b��� ��;p�>>�VL�d=�<<�>1�g>�Ry>ID�=0 R��>�^�=��3�a�K>L�q> ��8~�==�,��^h�Ȗ�='�	?l����iL�[8t>S���@�>���=<���_����Pe��o;�]���0�=>���3Q>7��=����T��������E���c~�$f�=(�>l�+�W1e='�C;�A{=�����s�=�#?�=H<N�>�x�=�֪;jJc>^bV>���LvƼIŽ�_�>������o@=Z/���DA��	> u{=�`=&�>�)�篮�kKY=>I�x	>ǟ>�`,��˖=q}Ƚ~�z=��>\[�>2����7�r6l>�=e�
��`T>@�==���8�K���L&<b��@�D>���<�k>��~<�L�=1J�<���u{=8��=B�[�	�V���l>��=�S�n~>�e��ţ���<�X�=\��=�:�<�什ߦ�>��=�s.��/=Am0>�r��H!��=�5�=���<���;j�z>$]�������օ=}sn�V��=�T�=��Y>��8cG�c�=�Ph��#�>~�>ay=z���½�F<C�~=��>����롽�TɼZ�<���I�;�n��������=���K��>�̽�� �}0z<��R�ewL���=�TB�~������r�!>�W�=5��<�)�>� >*v;��c�Z 7>5t�>�RO>{�=3O�>$V��.���+>��*=�v�5���K=)��"*>�M ���	> �L�'�=mH���<�F�=k���T�H��=>`�2=X��=����� >�\g��c=
"��o���8>כ��}M>iF>u�=�p�H�<�+����������=3>b>���=��p=�H��{�=�UC>�~����M>B�?�C�۽�qؼ�2V��D����=�Z=�Fq>�>�=Y���ջ�>]�>������=.�%>~������ܽ�,�=��X>!��wm">#ɐ����ԁ�><+0>�>LQ��sG>q=��=,��#�}>!)�=��>�G>l�8��n�={�>M�>G��=yҏ=�y4=��>8>�4�=s<Y=ڼb=�ؽ�pM�^m�<��=�P�@WB>�ɦ=���=r�{>=�����ɼ}rN��O>�<>:�=���>[S �����\<:<�<6@}=rc�;�脾�:��6U=�fw=�E�<�=�о�=�vq����<�j���N�;�陽­>� S>1���ݍ��������X���b��W�Z|���W{>/_��vt=��=;DU>�29=l��=�%6=gM��;8>Ÿ-=�� �v�=G �!!��L�6�c�q>�J�^O�txb>�T���O�R>�]9>FkP>j�>=О�<�ؽ����>F��=m�\=X0]�'��U�r�c����>��=I	>v	�]q���^�=u���X(<�"��y������4���~d=���h�">QE�>n�%�=���LȎ� ��ǝ_�7;>8�k��:�=~N ��<8��4>,d�=�B�>�2>m�=���b�0)J>�C��_b>g'>/���=�:����=�e��n���G�Fɴ=mQC� V>E��>�%>�����=m�A=7���
�T>�(>]`�=��˼�M���"�h�<J�?{VL=�1��np=��;>�c~>�)=��ݽ[k�;����=��f�ߟ彮@:�ݨ>a�->�gr<ņ>�tD����U=��>'�<���=.��7q��b0���=b:O=�m�㻪<�ן�Up*>�_w=����xV�aA��������怾潳=���=��ɧ7�� ���;��{�=��d>��!��m>ך>��ͽM�1��]�=�V�_s�;h�`=�Ԥ<؆k����Z8>�S>ڐʽ(�7���<&�����=�਽��=����ƽGK���T=��p��<�2�*�=�p>���= 	c><G�$a�_|���'��j+a�	<KB�� �=�?M>���>���>��;��!s=3�����=�Y=�->r�L�M��=<�i>�J�[aX�z��q�e �" �{�r�F��<p=ے� �t>�M���8�q���]�;�JM=O�=<"���=���=5��>�R>󖽿�ؽt�!�j�W���>��_���=>������U=g/�=�I:><2��� o9<�J��t��:m���!Õ=�-���8>�[��=2)>q������F"#���׽�+=t'=5]ӽ�ĩ��>�+��ء�գI=��	��>=���u½�z�=��E>>,>���<S2��p�k=̔'<g>���=�GN�d�=��=������=T"m><�+�dT;B��=፟=9��;Z>��3��0üm�U���<��#��=�9G>2J�:�E�_xf<	=>+�=5>Ha�=�	f<����)����l>�˛���>�[s>,R>�dL�Vٽ2�>�Yo>��<	.==����=�e�y����=6�Z�nv=�6]=� [�GC��F�����=֤��@g��d�k��=�=>6���c[n<]���@�:	>���:E��=!���@X��K7->[� �UD�>�q>�bU��ӈ�����;6�1H|>:@>y��ˬ�=��}�]Q2>���F��N�$�s��=�w>y�8��#>s�2=L��=�[�gf<�F�>��>���ػ�U8<�m>��c�*6�aUg��-k=v��p�@���i>8ȝ=,>�^����o�/S����L��2=L����&�;���WX>��O>����?<�,�dT=��=.{�|��if�<o���'=�㉽B½iÆ<�z��)��=�d򽜩�=%c�>����%2��=f�但v��]�=��*>�V.���J=�͊��H�<�Ͻһ�=Я�� �<=E����"������>��M<u�:>Vk���=�I?�.!���	>�6.�r�q=�x�է,>2�=>���=�᾽��=�sB�Tu�<�� �O�&������`�(C=�ٽ\��\�����!8�=���=�+>~y=�[�D���wH�]&`��L>�@9=���ӗ����d0�=M=���B��= �>�r�=��T>tq��Q��h�=�����(>�����w�=��=8$&��#�n��>2��TŤ=6R�>CH�=Id��*�=�]h�����E�`�5�T��:$>������fy�=�oY�������=�G�N�D>���/ֽ��P>�+��8`�"�Z<�S��m�=v�>��<?[ԼV׃>����f���ܽ��=yw<'|>��=mO���c�=~=~>л���>�xݾ��a�O��=,��=�C��c��>V�;�_^f�h >��>'�d>�V��9>���<Pg�3H=���>{��<|._=p�p;���>�I<�+>�r<�	�>0�������ee�Ѱ��$�C=�����Xm�
��`��>Z,p�SYR>2̇��}����=�8i>�����%D��m!=��f`�;�fѼ1��=^>�%�7.�>�gȽ�����kr�c��=�~�>#�M=�h�=�g��Bܪ���>O	Ǿ�Բ�Gt�=}��>i���MB!>"�_>`-��>�)>�o ;��<��%>�V=�x"�;MF���<&:ڽ"�y��72
��t��>L��L�B����j=���ύC>.�4>���==����tW�Y@�=Ak>BRV>3�>T3�=6�����=�����>
f>P�"�+��=4�=��=�Q���i:=5���b��9�J�&��*Y>�vZ=���au�=c�T��:���A>��(>�;��` �/b����<_�J>�I�=t�R>�"D�EA>o�	=HF >��=b�:>����%ҽ���=�?>E�Y���]��?��=4��[M>eYm?c�>}�<>]����8=*n�=6�.>���^⽽�>")>@�H�=^3��v=�eG>�	ν}�Q>�B(�K��=�&�=�+> r=�Z�<e��=�־'�}�I�*����=n��=��<>P��=�=:=T��^�>���Y�y�Y�دҼ�bJ�Ѐ=��[�MA���@>�&�-}=�j(> <4��Å��Iܽ�
>[���I>Q�w�gu�'��=�S�>[�P��������˽�}���7{=�u2��#�ڀ���[=M����!>ڑf>/s��b�½�\�=��<~D>�*>n�=�m=�4F>�=��n�6F)<�]e>,��w�>d��=�.ͼ��ҽ��;S�D=��=���=E%7�m*;>F�>�Ⱦ<�3K=n'> ʾ�>T��J���H=�����>�f�W�Լ\��!�v�ϝ��9��N�=�,׽�oT=dv=�k����}<��n=r���'�=�>!�=�!�>-헼G�)>�o���JZ�f�ּg�i���9���w�$>�V������ڱ;�>�ƈ��=0*���ؔ���g>�eW��4����<�K�=�*>�g�=2w�G1=&��=�tu�[=ܽȃ?3��=�e�=�����)��!O�5�@c=�5��h�I=�-����˓=��.�l�<r�:��M>x?=�?e=�F����=�p���=2^̼�9�=]�>�>w���j�/=(�z>C�>u��=%p�<H�'���=�=��=��>f���,�&> ���#Ͻ��8=�����>P�N>�n���s>��m=�Eǽ�=�	m>[�=��1>��'>��o���\��>x�>�Q>a��>�Ja>��B� x'��=�=Ȁ��"+=��P>�Q>��=�C>��<ɢp>��H�߱=�}��g݅��ͽ$:��v��p>�)�q=�h>��s��Ў=o;>M_!>��>�q�>C�����>��4��IʽD� �=����������=�2=TU����<\��=��*>����$Q=ݣ=��3��ۙ={T�>1I>5���u�<p�h>�O)�a�����=����D͞=���
p
/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/readIdentity*rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
T0
�
(rnn/multi_rnn_cell/cell_0/lstm_cell/biasConst*
dtype0*�
value�B�x"�G��=�c=�;>���
R�=�%M=_ڏ=\��=�=M �=DԽ<M�@=�'�=�a>�1=O�;�|�=e��=z�=��=�0�<�x�<�o|<� ;��=,�<�=�D���a=b�=��=�����B�=5u ��B�<AL�=@&5=	_=��=U7�<�W�D�����<�;6=��h=�j?<i>�<_(��m�B={�=��y��
L�܌ļ�h<��n<����yv��Ԟ<B$<�E=�?�=V/�=?��=:�[<껲=N�=��;=��?=��=���=t��� =���=r�h=q�	=�uM=+�<B(>�7�='ق=x�	=N&=��=�2��#�.=�m��J��|�*�M��=��=r��C�Z>��>���z�$=x�H=|�=0��=��=i��=w<���=�X�=`G�=nUU;o$��B&<y'�=�V�<���=�R�<t/�<��x=�;u~�3G�=�]�=�ӹ<�Q}=�H=
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
value�8B�8<"�8�������=��>�q�>�|�<@�N�T��.�'�K
���6>�hh�שe>n1>>T>�����;�l�=e�=�l�=yW>��>��s��2�=Mo��)(�2���Rg�=dg���7߽��O=I��=i��=��=��=�>���>�[?Wቼ@+>#t�>S�R>e�*>1�i��@�>�>��T��o^�r6�>�4�>�C���M�O %>�#�=R�h��ȼ�I/�L=��*>&�>�=�>,�c>Lc`�r�վQڒ��%i>�ݚ>.�;>�Kk��0��BɽW����n���ʾ�(���=�v�=�F��if�=a[�ƚ��t�	=��=�*>µ;>C{�>.AӼ�Ά>�h�<&�C>Z�*>�*>�_>>���R>�"5=��P+>�d��
I���$=�� ��`>�Z>O��m�ֽ+��Ю��~��^�>m#>M=#>�X���V�T/�=��>�
>x=���"��c>W�ҽ�bf��$�����"�(>7<�=~~�>H3�>F�j=�Z����m�́`���ƽi����>�29>�����UB�@䧼��V3��A�->>c>��k��e�>�#<��=x ���`>��>돃�f�'>Q����m�>�9f���>:�u>���(�h��D[>��%��v�>�[>׮���!>`Y�=��>������o>W��=������%>���&�*Gi�LD_=�>ʴQ=z�����>�ʾkQ�>�
�<LT�=9U�=�c�>aA>/��<�XM=~���A>!I>r�½f?����C>W-=�b�<>z0�=<�:a��=ʪA>�9�=f\S�pv�=�v>A邾JG�=�[�����>��<�������=���=�G�=�V�<���=Rh
��i_���ܽ�3��ϫ�>?�l=�">ܹܽ��������/oW>��p>�K�(Ȅ��sD>7���!<�ZE�.�H>�T���c<�Q�r<u�K>��$��>���=g�=5h`��AV����5A^�&�Խ�{��8�z>�{�=��7=8��9=>l�^>7�\(
>SQp�D���-�@�	>�=��r���ӕ�=8:�E5*>�k������/��9-=6;�=4� >�.+=4ܞ��N����۽�>��=Ko>�_@�Lы��� ���}��K�>1OW<t%->�t�>�].��:�V�O�=/_��㯾a&�=02t����=k�3��Pd��a�p�Z~�2��64�=l7��ZB��S_C�9�>���7no�ؠ����<wR�=cy�=�U�.���E����м�X?����=v+�[B��]><����}>�n����h�#=8�y>��,�Ba'�Mfn�g�{<���"''�o��<�%>iz��`��I>��%��[�>z��~q�B��=L�:>DLǾ ����u����BE�,S$>cP�[�8�����p :>��z�Ch\�r	 >�`��3�>&g���[�=�(�{O�=�1*������-��{����>�>"�&�,4'>��=M�I>�<7�YJ>���8��:=W/�=���=�I>h�7>�n��W��h���-�|D*>��^��5d�7��'�Q��>#c>n;�>}�>�ד�~����,=�B�<����[�B�Gϕ>fŽJ�<1P�B|�=p�D�����C>ra�Ӂ�:-�>�"3�s �>X)�6�N>D.��D>�J��=�:5٬=$.�������Q79|�������^�<7jE>ӆ�0݇> s�������J<{~�� �-�>�`N���v�et��A��5�h��0���{�������<=�k��M�=���>cff>����;H]>E�B=(�k>�u6���M����<n�>��g=?���_�(>P6�<"��=-ݍ>�l���| >�t#�v���s�,>�`�=�v5��)���Qh�ww�=A�� */>��K�+7_<t@�<Q�>ɔ=Y�W�(�_�+ �<�-Q=dt����z!��;ƽgL0>��<���_�D���j=�t�jb=�P�=3��=ym����=1%*�K��=��%=�GC>��=>��b�kA����=JEw�M1�����a�
J>j	ʽ��w�^k�'j�;IP��ˍ���3�S��<$�q�J��=���x�0�p�]���J>D���)M=��=@�A�#G)�475��%Z�M��;n��2�n�p=q�,,�>Q޽��{�Н�>�A��z�@��м>O
۽I��<U]�� �R�=�(
��-���,�=��>��->�5�;K�4�(+�-
��w(�?TJ=d}��M����:���>(܃�sY�=�X����b��»�V�>�7�V�q>wza�Qw��=�jξ�#����>X�<I�>�#y���J>ō����=2������>]޻�=��ʔ>�l1��6�>�qt;2��=�M>��1�	n�=���>[>K�A=V�]��,1>��!^B��+_���>����*�,>%`q��4��|4��g�=hY~�k�=�L=E�;�R�O�轱d����B���_��:����=�ּ��.����W�F�a���L=��>줰���R�<v��{>+`���c�=�bG=/[.;/�=* �2<L���d���Ͻ��&=�4����=+z�=٬�:�`>�Á����$�Q>�=z:����=�����"��=>��=�Žst¾�,R�ɷ>Jn>n(���%>���=Ѡ>�^��x�@�9������>�g��rj>��i���=6�>{�Y��c��G��=�St�d*]>�\�=@��=y����h>缗�o�=�}��!;��f�c�����ۨ��������>�"�F��}Dq�$A�����x|�=c�r�jƉ���U�c�@h�<��P���tk_������
��Z�>��%>r	u���6>��>�i��(p�<35��Z���*��+Y�����'>�>�A"�>����9D>g��>D?�;�V=�Q�>Z��=l�����U0�����{C����8�Y"��5F=Y��<�3�Pz�>m��P�Q>�������7�K>F˯����>L����%�=����?�_|c=�Ա=��a�^ۮ=\{>#�L��̐�Uj�<$P7�>��E��/������C>��D�WL"�a�v��bH>������쾏n��#¾���>$�>�ǆ>�����6>H�=e���&��KН>c��>(�=�𹼿��;qZ;�� ��ܘ��5�>/3<�����=�~=o@>c�>>  
>V4+>�G?��e�=N8�CȲ����ux\>�y4>�1�<|k�>�R�<���+�Y>�U&�6~����=ER�=@��>0��>F�T�a���n�_�=j�L�)>�:=���� D�ִT�9(>�*�;p�'�j>kEM�[}����=�j�=-�$��4'���1=.�%>��>�@�úݽ�᯽Ev=�7�=�a}�һZ>z��=�VI���W�SY��H�B�U�S������>?��[�r�CT�+�{�K��=h�>���<�G>,����Ӫ=v>9pY�o��:�<M*>|U��I�>d� >��>IF��x�<,M2��N=�ƽb	ټ�u�=:�t>\:>���=F�k��w�=s`�=*�=�Q�Ń�O��>��>�̍=�����5>Jة��~־:-�>+�����=o5�>��n<�m=��;���O>���=<\>hQD=6N�>_ �)U=d��
\9>1Q��1��=�6���h��MO�o-K�S��>,�:�hA�S�F���*��?��\>bD>}�S?T�#G
�����>C4>y�<��L��ވ��ߴ=d:b��0>���=��<Y���D�������u{��*�>:;=`V>�j">�q�>�Z=������S��t��>c:X>�k�=�'���*�7�O2;8ۨ���-�/V_�e�>E���̣�P��=K�߾,�V�!�=7=c�!;L"z��=��>� "���p=���>Ӊ��q?��}7>|�6��gu�v�t>��������d3>\�9>�%Z>܏����#���	��b<	>>�g��#̾�D>�[���x��zn>o9��>d=u�=����׽�1U>9���xI>--�>��2=a��i㵾z�P�9}L>�
�<\��>Fc��"? ���<=ө�Eo���d>���>T5"�K̲<e~�ҵ�����2��<�V%�5Ƃ>l�Ƚ���h+`�g�{=ܧi>���>`�7>�,��!>�<2�>�:��Þ=�蓽�:?��%���5���M�%S>�I[>������L>цL�n>����AjU�J�@��{2�Wr�c�ཇ	*�rXe����=)ƻ=���<4<�;#�W<[����[>�+>�1�M��4K>���=�6���Ⱦ��>��m���=��[�J�=�*�=�)=>���=����n�c>��>�&�<��Ž����'������@	��&���	��"�|��ע�z�Q�+�>�	�=&�w�����8#�کW����C>���䐟=���>�nJ=#q��ֆ��Q�=M�x���H�'	>y �j��k��=k"[>�+���,]>�����]%>^���7琽���חc<#A�<BL�<wv>�V���9;��1M������M���>��T��!^>��O�UR>:%�=s�1��昽�-�C�>��b�u$\�#P�w�l��wQ>�/E>e���R�.>������������>
D3>;���cw��~k�D/Ѿk���S=
�����&��=��?����Va̾���>�G�>e����=0�>+�:���<�(�<�A>�V=N���E���;r���>��h�3���B=���I���R">��<"^���G���3= �^u��T���<���ud> {�6�>�Z=Ȍ=��{���4����=s�%�4���A
��-ey����=F�-���h>0O>V`Ǿ`�ؽ��=�X�;o�;O񸾱p
����v׾
-�>����B��D�>��>���ܾ2�=��>�܉=Mن>\/E>S��<M�	��c��d��Ҿ�iĽRҮ��}�;&����g>�3�<�r,�歀>����@�g9>B>�����Ot��7S=��\>؉+>��ۼݦ�=�0^����=.�Q>���g=��=�5��Ⓗ�@��/>*�=>7�ֽ�k=�:�f�N=ynT>j�0=�*���b��ǯ��@�>�(�<~��=X�=�r>���=Zf�����(�=E~�Ꞡ>��h��3O�/�=Ȗ��!����-w��N��=s���.�T��[�:=~��>2uK��)�=�����=x�@�<;@���=.�>�χ>�cj>�Iu���(�OW½�4x>q�=�d{/�$c>޳����-�x'>���<�����R`>҂=
�۽��=B�s����>����x2�>�
���I�;y<��/˅��M�=�5�>�$���=�O�f=k32=�xU>��ֽ/A>����a����2�=�|����>P�\>@c�괹����RwػxRH��=�J>{�K���1'�� s��
���Z����C�� ��< |>��l>X�v�եƾ{.b��S�������,¼��J>��>��ս�q��e���D�>���I�>�.�>\���~��d��=����퀽+�s� n?��}�B�*�W&�>TAM>�=Y�c>�Au=���>w�=?c���=W�=b��=/�;�σ�=�T�=�|�)�=�F��=qK�-:@=
*���"=kB>K[�=��=*e��TR�>csD��;��LH=p�u>�<�aL�=�O �~>^^=���=k�K�}��=�L>*_����K���=��`>\I����=�p�;ߍ����(="�=�*���`h>d1>= �ͼ�=>O�=�:[��=>H≾��Խ ���e?F�ƒ��*�/�]�=s�����	:�=(��>��=��Q=��];}|���s�=��>~sR<_��~=n�=F�>׸�=��1>=��>~�
=q	�<�_�<�<�rн�f�z�e>YB7>��=lϷ=Ș>-�U�=�d�=WC�=pX:>fQ�첱�jb�Xֲ>��_=}_=��>��>[��>�)鼠�=Z�f=,�G����=bAM��w7�b?\���M�ײ6=cū��n>�o9=�`=���/>�ߛ>�C\=bNȽN��e;����៾����� �4��>�R�=>�X���ϼ�����=�-=��E�2�>�>�Qɽ�->��`���i;�eM=��]��XP��%�=��o�q(�>*�<���V���>/�=�#���������=���<cݺ�l=�Yp>�tA=	?���Q�8k�>��%�������<rg/���a>n�}i��	�~=�,��l=�MS�6�~����=3���3��(����J���ǽZ�:��Z�=��@��엾Շ=>����|S���>�ŵ�����޲�=��� ���	=𢃾�p+=R�e�K�=X~U�g���Ž�>�;>���>m�#>P�^��5�=�$>�/�>�D,�0i5>�/���6�&)����m=�x	��DJ=�\�=����.�=J�7=��=pU��l��>ڒ`>9A�;qgq��R�@1�=�4>Q�1�׽ >1�k����= %�<�E��~�T��#�BU��3п=4���p��Y{=-?�=����#���� �O�>���<�ݽ��.>�y��|Ѽ��=�앾��m�Zb���ԽiP��P;�=`劾�h���\���H���>��>��Q�(uR��`Q����;��?u�=���=F��ƴ�>���7�D2�>����4�94����^���& �� �'>(�>��>�t6=��v�3��ں��)w�tڑ>:Il=[�����#=o�k>�t�>��1�V^F�U甾x�>�p<>�4;>\�ٽ���=zx�nѓ���r=�"?T�h>�n-�IQ>l�� ����9�(�;�W>��ֽ^��=cY��d{��kL�������<��=�C3���=�4>`n=����彼���B����8>�=��Ѽ����c=K��> �p���q�N!*�]U�=E���-�=�C;�"�X>�S��>%=Z�%��>y�A>��ž��>z.x>���>��3�ӜC�i�?>ʻ��m>X =�8=�2?�<�=�@A>�7�=�b�<��r>u�I>ι���9�dh�>��\��E�6�>�(���>D�A>�m8>=|h>x�k>
U
dense/kernel/readIdentitydense/kernel*
T0*
_class
loc:@dense/kernel
�

dense/biasConst*
dtype0*�
value�B�"x��==��!�aV��/pP<��z=���d�>����u�={��8��?�;��(<`A�<f�D����<iN�<B�3<]o�1��<�(a;�%<�T�^�^�A����<!������8�W������
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
value�B�"�w��>��a'�=�g�cȾ����z��?>���t>�A�>����d�=@�}=r����x �*�te%?��8�Y̰>�z�l���Bׄ>�j߾E��=��x����>HB�>�V��:�>��5����=�-�>y��tv�>���>���L{�~f�=n���>�>h>���>}�T�m�վ,�=y�#F�>�>;��>q�ӽD�>3g�����>��Sq�>ș�=��N=E4��
[
dense_1/kernel/readIdentitydense_1/kernel*
T0*!
_class
loc:@dense_1/kernel
A
dense_1/biasConst*
dtype0*
valueB"'���#��=
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