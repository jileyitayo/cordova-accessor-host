
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
value�B�"�	1W=����R��=���=�e>�^}��￾V��>��i>hpϾZo�'��ߴ�=WI>P�����>FB=(���A,�>���>,X�>]��>30?�B��*���;Q>>���>*�g>�ka��>�¦>�r�>
�>����HJϾz��>*�V]��0�����>G��>�Y�=N=��;'<�>y���)O��8����	��w>.��d��>E�>���>�#�9:�<6��>�P>,+����|�]�����>��4�C��`6?�X��W�!��:��J�>�/辭��>�K?�i�>WT�>���>#��>@`��)�>U�����>K�>Ʌ�:�?;
�>-`p>N�=u��{���
[
Layer_1/kernel/readIdentityLayer_1/kernel*
T0*!
_class
loc:@Layer_1/kernel
�
Layer_1/biasConst*
dtype0*�
value�B�"xc*W��/5=�V��Y=Rv;����|`	>oo��˷3�( �>H�j;LQ������QJ���'<�&=��-=�qQ=�� ���=<���命����#E=�|��<������<]"f��%��=��
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
value��B��<x"�����>�~�= OS�΋���=�>�k�������->���9f���=Mu%=��H<D|#�5�*��Xx=��K��'=C.)��$�ڶ�=�6��@">�< ]��<f���(i��3s=�ʪ�
�=��9�^2�=�����:�&��=L��>�Ҋ�o
d>u�^=�z<2���兾�K9>�� �=�p�R1�bp��dq?��HG>yH���<m]�=��=�=��ͽ�'>~A>����>t����Q�M>i�=V6��w`�=�.�����=C����>�tw=D����=>�9>���=1��=��=q�>2�i�;u�X��=tmG����U\�:>��,=�Պ�8w?>/)>bۓ�>�{>:�>�+F>���=��<(T�I�<>|lU=5��;_Ÿ=��=�a�9 RW��),��6�=)2�=�d�=�?��y�;Tأ>7�A��E!���C��9��tP�qf���=?*3>�ƽ?����F>����ױ��/<�ޅ>4W����H��S׼u��/�ݕ��G�R� k�=�GK>^*D>�/�ƀ)>�'��'�뽟k��S&	�(!=��>n\\>A�<8E�=)�m����=AF>S_s=�ۢ=� 	�cڠ�#�0=Y��=��+��D����&r2��q�;"E>�%T>v1>>��e�!~^��H�=�ƞ����=}>%��q�)��N>#�v�R����
���	��ݽ62>�5�=sW���킽[�����=�O;;Y�o>G�4���E/=
X׽m�C>��L�S�=˔�>WIҼ�=�j���;v��=li���=��<���>�r�=���=�$E���f�����&�>qfO<�[&�� :��2P>��>:V����=qX"��ax���x�������X�����F�<f���=f��b���JR��������<���:<�^�>�>��<�Q� ҏ� ��>�m>S>>��=�>������<(o޽��>�`��A��<�ܞ=l��Z��=�5��_���=��h���`�Ѫ*>4!)>Q��=b�ǽ��=�?�=�B���w�@����|�)ޡ������=�ݽG�z>�	(=J>�~0> ��=J�d�F>є�=���~��P(>\�}>�Z�=�_G�ĀU�xq��ߩ�_K<������<*��=���=���˃/=�׽�ْ�Jv�>Guh�L����=PO���k��	�=��u>Q�5�;�c�/&�>�K^��h5�ރl=ȱ��ğ�7��8����B�H�><��>�9���@(��*>�:<>>H�=&�=�/�K�>׋�� e�>w��:�=�K>>G=_!�=R֌>xҠ=AH�6���v�%GӼ-p@��,�<0F��1�x`A�<�&�W;���U=t�y���<x��H%|>G��Xb�u�=.�#�}�e ����=�v>u�=l`g>M�`>kݽsi�>k�X���=���"��=mA7>+�V�>!$>"��Q�n<M�=t>��</�>|x��:�S��5&>�o�<z�Խ��S>//Y>�=f�;o'>mb�=b��=�7<��-�<d䂾�)b����=���=�ȽP�<�Z�=��>�x�=eu=.�>:Q>��N��r>Z7�=(�Ry}=��T=�p��e=Dn	>0��CN>
�v=�[
>P�>>��<�;EuI=%oϼ
�I<�<3�T�I�]-x��,�=����p�F��x׼����њ�!��n��=�����`=�>;���=Y���L�����(���TĽ�"�=��=��
���>`5�=ZM>���h>�߂<��>M3�.??>�<n.�P|�;��ݽ�=ؼ]��=~��=��x�u��xA)��1�=S�=>@�=D��<1I>-P'�m=���=q_��O2h=p�)�K�=��{��>6�_=�9\=�W�	�
����>Y�>�!K�Z�= �5�0��=Tx��kߕ��n>U��=U	���A�>;��=^)�z}i�w��Eꕼ�e���,�>U�>�)��:����E�=m�U�Ž �����*>J�&>��=N�$�9��=��4>���(>4=��7>!�'��o��e�>��~��e�=�ҽDh(>o��>=߳>}%�����>͚F=�=E�[�[�s�}:>���=չ�<D0=p�e�=����G>L�4�"	.���#=��g>�'�ѥ?�4ꇾŰ�����TŻ>F5�����<�y�����	��zI=h�Q�̈K�x E>��?>�]j>��/��n<c">�$>�6���>��k�~ �>��>��ܽ�ؽ�!�=�H����`����=���=!�׽�~>d�C>fU�������O=�>:Q=� w>��N�=R�<��o>Fq=���>Ǎ�>�=��,���=�}����=�A�=�?�<���>�U۾�a�����˻�=	�<��P����;�m�U|�r�<hk����M��V�;|��=Ȱ<������3>j(`>���=TX��{i���>ǳ	�CG<l=��>O��<��<�����8>�ӑ�~,<�CF�p11>�P}=�ͨ�_���F>���U+>Ǝ�=��v���zϽ-{ͽ�RZ>��sc��o�G�F�>Rt=u#�=�>�ļ��뼐�w��&>��=v�#��+I�%Y<J���=�>���<v.�rɾBtM>ܺ&�^��<�㽙c(�5d�>�g=p|�>��V��wx>���������=�i�=w�O=��>� �=�,��a>[&�V�=MT>����;����o=2��y��=�jJ>H��=1���d���l��#�
�8��;Oǂ�#mT�=��=&g�˞����<�NW��(�Yݠ<u~h>�?��N�>~��>��UQ$?���C�ۼ�3��b�ܽ��X=w�=ȳa=��O����=ꅥ>�oս�{��D.>R��=�!�-X>�:�>��>H�S>��>��(z=�g�=V��<@�q;�)K>��<=�
B�����N2>���=�7���֥������������==�>�5W��d�<�n>��QI>x���Y���N�E\�=��-��]ཨn���w�>K���6�ؽ��=�3��6H=_&$�X��l.�>�+=%�lU>!�)��9�>�M��p�<cQ�>_�������X���	>���=c.����Z�<�ݾ&0.>
4�;�}��'09�y��=�=J<("�gQ>�e;��L��~��w�.xd��8G>&>[O�<��>r���6�M�-��;Qe����b>�����e����1��x�<�x �-��>�[������m�<��=5s8���>��->�[�;d6i=��S>U��=S��<��	>�D>p����
��=�T�=��Q�a�@�5>�b��� >�I�>�=�w#��i��i�=F
���B���;=?٥>��ս�v�������=�ͽ�#C>��>K��<fb�=e?)��$��F;�����=oB&>Õ�=�m�>�a��y�-=��=2�Q>b�1>1�ν w]>���=wW�eu�xD=�.=U�^��+K>]�������>~,��6½pa^>O�>�P>Ԅ��$���0>@Y'>ӧ=m��=x�>_���ֲ��: �3p>dQ5>y�+>�7N���=���=��G>�>Z�սm>�߃=/=P��=����$=��e=m�>�xd>��>L��=�њ�w��=R�g>��=��]=k����=+���2�n���;�-��>3r>զ�<n]>�կ=K�; ��;�y����:��>�50�+�k>F��=1]�> .Ƚ�֨�%b;>ȵ��^!��$�<n�3>���>5r�=�$>�Do=iv��lD�p�=�s�>$p>@`f��?��Iӽ��x=`���># ��ʻ��=V��>�<��e=~C����=]��='&ͽ"k�=�
�>\�>��=�e=Kϯ>9>ڼ�D> K�=�.E>��]>�U�ׁ>�\3�����@�'> '��Q��-��Gj�*�^&G>E�g>�4�=�F��^7=�
�;�p;���<<D׽��=��>/YA��@e����=��>H	G>N��<f�=d�����i��s�=5�S�+����=�j�=�F�=�+>�v�>f_=�t=��<�eU>nII=_c^��Ea<
q���R=�N��=�eV==,�>�6�>%YN>��C�TC0��8>6>z/<�7�=�_�=��a�V�Q��Z�󾯽+��=F�>�,N=�=s��=�#�>�>H>̡)�v�8���0�`��<�]g>t�A���>�ab�����9.>�g�=h$��tջ��~�/��=ǽ�[�=�B�=ؚܽ�ڽ�2�<��>�I��V?���[��<x׼�$�=��!�����hn=���P�{=��Q�  �>3L���A�<�M�����p�>N�������X�><=�;<�=�\=E�D�ه��9[�����=@����8������ɿ��=U�����a����<���cSO=� ����<���=_�Ⱦ���=SSn�2f��I%=_��}�X=�[=�Z���z����]6&�"G���0��C�|>N׾�AC�;
�>F�t��~>����z�վYo��I�=O�w�}3�	��<W���˶��8M=�����l>�C�������
���n�Y��=~�����=�)Z�^���\ѾIN<ݟ�<�+q�UXi>/�7��>����������Y=#��=�񻌝����ӽ��,��7��2�=�,==$|��I>}�e��l�䡡�����ހ��U�=*I�=P�y�+�2��">=҂#=��8��r'>�<�_�|�>:�f=�L�=c�ɼX�6��<k}���=&��=v��=�=���>,�=�'����<�S��T6���=[<���<
�>����H��TD�e=��M�����ȳ���>�>T��=Q�н8@v=�i���u����Np+�J7����:�;��J02�%�ٽ�7�==�=�#��c>�
��a=ݏ<&��>H�<ɪ�=��<�6��^=f!۽
�=ND�R���d��,t>��)��	��:�ʾ��Z>[b+��e�=@SU<ƪ�F�<n��=��=���Wݾ#�"=)*=/b���]�=EP�=}bG�u�i>p��*�=7�i�+�f<�쾽D�a>2c�i���T3��?d�>Y�)=#����G��l��Qi�=S���%�<'��(|��R�3� �<nT�򀞽�_H�,��>[���f=�P=����
���Ⱦ�>�$�=m�%���b�����:hi=�>H�Cuo<��⾐��=xEO��6�=G�w�Y�6�g˼3��=�,��#�=jm;����Ԩ��J'
�5c�>��=Y�7=�ԍ=Y�=�V�<�؊�@ͼ<Dw�=�)�=>���rѽ�>G�>�½%9�=�n��D���~�>�vBx�})�= ��=�b#>%��=Ê���H�=��&�=���=�`"��=Q;��L�*?k���K=��V�W�վH�>���=_R�� �I�$������G��j����><|�8(,��=�ؘ=-1�=��e��=���<8u��oQ>`.½��r>���RM�pa�>2���k>�4?�o�9>�Nw�/����]ʻ�S=��=z_��}	�Z���2�>�'�/A����H��o��,�8�b��<���=�x��8��E���o۽6{⻙Ǝ�0OH�?���q+�=sچ��3>���(얽�g���c,�7��<��=��A�D�y>G��>_������>�a/����*V�=8}?<Jx��*VG���=���=O-��X���L�=��*��<^���sV� 򃾅��>�zD��w9��o>h�?��<G�>?.>�]=�;��6>���V��jt5=c�Խ�{�s@>�	��X#n>D�̽���w% >�+�<?�if<>	���8׼)���~ɽ�(=�%9=.b]>�ؤ�H�>�֞>z����λ4*&�v��>������.�<Idm>>��=��Ƚ1�QHֽ7O���?>��K�̀n������>�w�;MK��=m�3���{��Y��S�-x<�"�=rn��/In>׫V=$��=�"��j�>�s>L�m>E�=���>��>��=�*��	>����B��3�=һ��_Q����y�����t�нm�(=T�>2V��8�d=����G��M�:>O�3;��:=f�޽UM�ҡ�G'5=+�=�gP������>��R>Os,=�r�>1=��O=�P>�ļ=�%=���א���������^Q�'&,�޺F����=�G?>1o7>-�*�p�>�t>q�$>I E�&���p6>/VI�=2���X"=�����M���P%�=Ct�<�/�A����;=8v��R0>\�0>�<`�����82>M�Խ�[>����l߽�&�=��=�<>v�R=Ǽ<����]���8>�=FV�>�����^D�tԕ��\�$3�<줦��м���:�!�`�����=<��=��e�>�J2>�u">Y�:�h"�<�i	�V�=�%�vO���	=�0D>�Ӣ��i�<��=��Φ�;UL	>At>nJ�>�BA��Ä�6�=Pթ>F�+�6������=ͤ�<����ܾ�s��ws>	�=�~�>ʻ�5��k�=�p�����2�>v���������5��>�Oҽ���1Op=.=%��<~�= P=F�P�#�$?��%
�i��>�ʴ=>��=�=�<�a�Z�U�D���R�>�����8���=�汽�b^���> ˭�(�=2��	=����?<>(�>]@�>D(�=M�`=�(��}\�=��ҽ+�����> �<����X'�8V�=��	>��0>}F>M��=�x���L>��z�yF��4P<�}w=UHP>2?�:a��<���=�lH���>r�!��a>>_W�D濼`]��V����7��$W<�bR=W"�>����x >֊=��F���Ž�I�=���>��=�`|>�!�=�X��Z��2�>$P�N�m��=��,���<Lj�<Y����U����HZ�0y0=gl=�y>��6�2\>-�;��=s��{��.C>�$����=AV�=
>��y����>EE���n���kq=|��<1g3���'>*��ȼ佣��� ��=C�D����=Է>���=Fڒ=Rw��F��ܖ=��>��=;��:��Q��E�_�=�<�T->u��=㈘=~u�U��>�Og�?����K<��8�Cy�:�>k�;l�����Ba0=-�k>*
%<���U�k=
��^<���=O��=�.޼~+	>�k2��=�i����2�HC=�=�%>�[f��$�<�ɍ=�&>�m>c�0>Z�>G9K���=�!��!E�;�iD>���=��Έ�=�
��;2|��zԪ�D��<��>C��LA>1�ݽĽ����S�u�6����<yp�=���>8�=�H�>mD�W+��򵁼�� �-���N�=��=��w�$�i>fG=2��*7>$����GO>j >�y�C>j�X�-�gv�>�7�aR����<6\�R+=�c_=�Ҙ�%@:���}<�m��)L���	4>�>�i>�>�A����>xjH���@�P2�<a�9��묻H�}=���>#���K��O�=��>�f�=��>����ә>��>��ǽ��>��#��N�=B	� !N��.&��f������S
��@Ȟ�:>��~M(�4}�= ��=D�=�F�<?�U��!��������>��H���>�g���U���K=C{�=S��=,-���=��J=F��=y
7>�O�=��I�	�=�a��w�=𿣻��ѼN�D��6]=1i�=x�@>��ʽ��\��U=ǽ>*�i>h���!�>�s�;���<�76�c>37�=��#>������g>�^μ1��<N�=ya�e�=0>�b=V��:�݁=��*�|�Z��c�=P1-�S#W�� >��a=X/�RgI>�w�=���=��=p2">4�A>6P?>��J���E�v�P��>�@�==O��\Ͻ�BX>|�{�D��&�=�]�[�+���<�t=���F��1ü�߀=D�>�>� ��o���o�8��a<��:=\*l���>�"�:Zc?Uꆽ���<G5>> >��=�_���:>�Z>)���j_���ླྀEw;;��<`3;62�2������ .%�	ܥ�eD�=xC&>�\>���>��>�@��݁���=���=R�$>8��=N���q�� I>2;*<=
�ꇾk�;gH�=O��<����
��NP>�~D>�K+=����������='���>r����r��Z>��۽��=�-�=Lf��a�.��<�u=�g�>H���Oؼ��>6@���%>��qۭ�*��>n����=ߍn��E=N��"��=s���c ���j>� o�4��=ak���սk��b>�=��|>��t=]M=@�2���9�5΍=�Ͻ��>���Q=�>L��� ��	Y����ｏҎ>����1<c=�c����:d@?~�=5?��3>)J�<�f��C��k"���������:>Iwa;�]>�N�<k��={)h�+>�w=�P)>L#>�Rj��=��=��-��<Y�R>~�\5W<w��=D.=��-��Q�=����O��=�F��6�/<8	���h���뱽9��>-�4=pX=�����<��Hl�0��<��t��@H>�t=t����C>.Y���g=����?>碞=õP>X�=N��=�K�=a�/<l�=��[���S��U�=<x�=��>��<��H<$�=�
��){>9��ǹ�z��ǁ�q�=a_�<"7�r�~�7d����<ϼ����;=��ؽw+��cb�QD6=dS=�[���К��%C�*�Ͻ%�t�f���a�<ꌃ���=�,�=D�Y>#�T����=��1>�w�=mꅽ��!=ת��x(<ά�<�I>@�<�� �����t�>z==�\	��J>pf�<F��=Z��=�֮;�|>��,��ɹ=ֿ���>����{J�=q���	�>�Vݽ���C��=~�=���<�j=&[>��˽���=:�����=��>�5>��*>��X��o[��`��j]����99��.�=�/=�0�<:׽ F޽h(�<F>�=Q>A��;��5=��ɽ8�5>|��'�,���{� �,ƌ�F�V��y��̮���&���C=���=|�p>��>��>ȈR>��&=e�;>� �l���� >�ԃ=����5P>����K'>��^�0��=ݞབྷ�����>>�1ļb|L�����p�so>2�>bA�(�o�Bݸ=Z�z<�&>��>��>�����T�=��R>u�G���}=�k��,B>f�9>(�����<	x�=����;�=���>�>?a>'���/��>c�L=G�>��>~�=ז��;?���=���)��F�έ��[�5��E�������ܼ]�ؽ�d����I�2�>d���N����L;��X�=ڷ]<C��=Փ7=��}=I�޽f�)=��.>ܓb>N:�=3�A>�C�=C��g[Ͻe�
>C��=lߥ���c>�&>�>:�=ý�`�=N�%�*C(�k��&�>��6�Ψ���$��y>�U��H�<�H�=�v���<C�?>�(1����;��½�#3>JU)�$�>hS}={���#HX��5�=G�;��ҽJ�콺�>B��=l�=��>-���
���SF>�1>�����򽾳w��x�:�޽3��<`V꼒%V��,���+D=�7o��q�y	�7b�=!�=�����	q��ͽ�9>c�>�,�=ͼ�=w}>�=��V=�L=�%�]}��NL�>TH�=�'�ϚX�5�>�������=��=�O��
4��*=�)�>�ӽӡ�=���˚=�=�b>�:Ͻb���@�!��=����뙮���=�Z.>�PR�?����"Y�d+=��>z�y�}�0�ə>殾�e򍽵j�=	|C�My�N`����>!� =�r񽬍&=8�=1�$�s�<��5;Q��>r�����=G����=���6��7. ��
?�3��=��">�&�<^_��U���.�J��>����g̔<p1�>-B�>ջ��Q���)��I�<X���=��=i4S>���=���W�=�7λ��=�O<(�<��b�<Ke�=����ｪ�o>2U�n�>6�J��=�؋=����{�iu�=˃��zk�TK��<C�=�R�<�u�=�AýF{�����
2[><H���3�8����>*>)�=d�3LK�+L`��?��C>)�wO�=����zj˼�|p=�齸�˽|=tɈ=9�Et>�fA=)�m>��>�=P�>�q5��}2>��8�d�?>�0�=����v�>�{�>�0��b�>K>�)��^>e�N=��=*�>>�����=���=X-<L+=���>�� >��=5/���n=>$>�0�҄?>��F=a��=�'�/�B>�F7����Ur=��A>^A����m�'��=�Hɺm�9>���=zy��y��|�%`m�>1a?>��;��r�=��9������L3>0�)���<�v�#���R!3��Ɏ���Y>��/>a�
�@\��>#�=��)=d���w =b����w�=��q:0���>��=h6!��ɱ;5�H=�$�=�Dg�z��<~"E=��?>{er���!�-ѱ;�S	��k,�9D?>��佲���b��=%>��V�UA�D>�ۖ���;Q�d>����P��t�����Y>��%���>�dͽ_ƽs�Z�S���d����x>P+<]��u>�3.�{�>k�<��+>�|�;�雽�>亠�'��=�X��>�?�LI�={`z��N�=v�!>�%&�A������=���=�.�?%&��,��9��=~jQ�,��V���)�>w��=�q�<o�V>׹-�Y~�=��6�e��>��彆D�=�a�����q���Cܽɺ���<>X�K��0C���(���=�\>?=m�?>�\��<`�QJ�=T`ܽ�K=�E���c=Fg�=I��N���	�=$;>�%�7�f<��>$2p��I��쨼Y��E����=�R�� ��=r��ʬ!��Ah����MU��p@;*	[>�vڽdT>�@�=�@^>��Z
>|��=�se�ju�����=O�=6�x>!-�qI �_e���3��̓A�|t�f�#�����T�����=Z>]�*�}�<�o<�ֽ�0b=k�:=� �� 	2�� �=�QݽQ�r��Q�<�L��߮�
n;>&~)���h>Hb$>:O>tl޽M���Ϊ����V�=��Ļd�ӽP�=���>�@ɼU>QaN�TAk�����P�=�b��^26��[S=���c/=���u�hl�XK&>��t�:�澌h;vE�J�U>^�3=�mu>)㩾����>�祽.����m�нP���ۼ��?�Â�K}E> �����<z������R=Y��<��3��Y�ε�>�A��v��������P�����zr>�C���{�=e�=](8���;��-�=bL����o�=F��;��\�н����w=Ӄ�=�R{>��]�>���q<p�j����=��=�$>ߵ�=ˢ
>I��=����I>ӽ��>1׼)�=NH�=l\����3��?=����ۘ�c��>�Z�=Ps">yn����<�_���5�=ϻ<� >~�־N��<���NV#=�2ړ=
�=V��(�>�k�=����(��=5Mc�(�����=z��=4ul�ߌ4>�G�=޷=`O��	����D>�!h��޽	Fٽ�>%�>)���PH�*��=��<0�=ˁ���2余N����<\�ϼ��P>r7�;�Ȟ����[�=i�V�!ł>7�.�zhP<�{>�$%=[�-�um�<��>��>	��;?�g=w���&�={o>�4=�"��8<B�ý��I>J�f�K����'>�[�ㆥ�w�<�#�n?�>F>1��*8�`��<�%t>|�,>g��=�!�����6/��>$N˽�W9�w�ݽC�C���a�w5y=
�=O�Q>��=�O>]�����):->�b(� ='>M�j<��=��->A��<���=�O�=��K����=-݊=�B���!�d��8�!d=-E"��B�l_��9��^	>O�;��>�
#���=9 F��H��s��=���{�>�T=�j>���=��_ؘ<�g�=� �g�v��Nʽ��L>�һ��a����=�TM>��J>�� ���>��X<oK+>��;����k<��x<T���X>kCսX*��z�`>���}�jm>;��>4(=���'���<�썽��Y]�<��>*K�����<(���"�)>�	5���K�!f�>�Ƽ/jR=|QT>�jb=�\�=��">�u�����>�4�Pb�=$h>�o=�c>W����.��q���fW'�r���1>э��޽�iM���%>�˽�R>�7�<:��<�C��>�f����D�^������=J��H.N=;D]��q>١>�<>ReB>eF��%�q��@>Iw�<b��=1�=O4F<Ł3=�b�=���=�Ov���H>%ǆ�CA)>~7���`彨�t=�^��W7��aq>|F>�#��,����ݽ�Wk=f��=��D>��=�����"�=��F>�v�<�8>C��=?��=Sn�����=�rf�],��q<��}1p��B�=D@�=�̴=�,��t�'>���=+�a>�����D ?VO�<o �MLҽ�#8��㥼p�Q�q�=(�9���=�V��RRμ�)������֫�=n>�>��<"O�ѹ�=��|>H�I>�Z<%���A$�=�4�xgG�%]k>���n�ҽ��;��>hHr�t꽈���~��==G�
D������>�-�=��r=�%8>�)%��r8=�=x�j�.���Ɋ:�Τ���R<Y�>�$�^p �ʂ�=���=0̓�a�>�*����=��=;چ��I=��F>����R����!J>8oP<�K>Q�j<�>FHL>�k7;I����)>W�(>p�=>���=�l�=n^�ϗ2� ��=���<LR�<2�{�6H9>�2�i���>Of=��!>ᒑ>�}3=ۧ`=.�<�e�=��̽�M>W�>�U->؍�;L�>����=�j�=��=��T>��2>���N9����>Č�����5?=��>���C�����r>��i�N�:�4P3�|�>_o�b�K�S����=�gݽH�P=/�@>l�N��]���I=QH>���l�W��F�ZZy=�*���PA�G�ѽ���=[!R>3xݼ3,H��0�>�u�<(MӽD�n>[\���|�� |o��)?�9��.��<O��=|c
>�}���������0q�>\�����%��	�Yl5�Ԃ콳��=ڸ�;����ž�R&=PN�k]&>��)���{=��9?/�=�p�=�<��/�@>06��*���=g)>� 5�|�>Ш��Cx��$�=����>a���="L`=���m��=F7>1�V�y~N=�Q��#k>t,�X�ڡݽ�ޑ>|n�>v�c���<�6>D���:��a���9\>Տ>"�;�Ҵ��y��d2}��>�a=L���
=����;H2f�$L�=EM��K+?�Cf���۾��D>�<����S����=�)��W3<Ǽ^�E=j ���9�>�B����Ž���+ �����Xj0>-.�>a`s����>��=��e�e �� )U<�e�=>�2��A�=����DN>z���̇�7��K��9�E>^�>���t�G���[�\D<>!�=��
�/������L�Z�Q�!��A=$Hn>���jT8��}���j�<]S/>#�_��
����n��%��q��p��d>׼Y>�{��n�=0�3>�:�1M＂v�f=�(�z:����>�+>x�`=���ss>�#0�����n�;�`�=b<">2(S>Gt�>.��>26�z�4��
>�����>�$>���>�k�I,�|�Sr�<T��W<�Ӵ�<k�=0'��>}ݯ����0����+�<�56>����BλFPl={,�[���e�Mj���������<�gf>u�����˥�= �>���>ʓA����14�����|%�>&G��0s�<B����_=i'Y=�"��n�<dP���Ӽ=�k`>T�Ƚ�f<����w>� =H%�����|i:��<®5>I/��f4���=�	7>|N�=�F�A���<�<>'P�<%���ҝl��Dc����	>ɛ����H�>�7^=n8S=N�v�o�]<�[�Da�=i~s� vB>�?�=�A�O{=��=�����v�t�i�Э�㱮��ི
j�X�;����<䫳�{"V=�Gq���>@Lܽ _4��#�<�h���&m<ۙ=Y0>D�0>h@�^���Q�>{�+">8M���
~#>}�?>��K��<>�����	���⊽��� ���Mb!�.W>�˽g�|=7���/��;8>"�ս0v�=e7 ��M��'�>;�=GY��W�r=��>�3�7�=s�Ѽ����K���+�\�	��=�v?=�"�=$�׽<��<iʰ=$�=�+T�t�>��=K�<>�ӥ�j9�4彯��2x�=�N��T�>�dN=wj���3>6��Z�H>�+m=V�4�|����ȼ7�U=��<m��=��K��D=���� >���=�54>�z��v5�������G�>1s�����*�:��A��t:�𛾟���w�>T�= �W=k���  a�[K=v��o�˽_�=Z���pf�>�.３-=Sp���=�@n=te^<AT�=cb>8C��B(��Gi���=�"����=! �=QG�=�V>�	l��?ѽ<{a>a��n���`m>���@s��6�=�� ��~<��=�D�Ҟ�<���ۼ��i>4���E�_���>zMF>��)��P�>F1=+����9>�¼@�=g�-�gٕ���;U½�p�W��<E�8>��w�@(�>_�D<g��=�e#��Lq�tj�=�
������j=��<>'�����<Qo�=��ý$���H��E��G��va��g�>	��>T��>m꥽=T#�g����8>�\�=���>J�n>�$���޽���;
�=O|~�����
cB>(4���m�!�|�)�n�C�I<��^�0u=�|���i��޶��	���FvC>�P����k�f��=m�g����=� 9���i��!���m�=\���	M��Rg��=Լ� ؐ�-��:=JG���m1��!����}���A�d^��?:����4D<�0�=�of�𦙽sI^�(�5>����ȁ½��=H�ü��_8�C�}�%>��(>V�C<�!Y��n�<ё�<��Z>!���SP��2v��'@�����L l�*"<��� >^sȽ܅�=P\�Ƙ,>�>H�H>g@<Z-�.�񪳾p�=��ս��=���b1��ǽ8ٽf�E>���rq�HM�>=;?������������E�Ģ>0)�⭿;�̽��=p|>�Z-�=='˔=����N;�k@��p���IH>��Խİ)<�"�v�<X��=�	>_>%N>7�">[CD=?��=.�������Ľ�5��m�(���>e =��H=Q />��R>�V>���<�/�=�����N��]ܽ}ݘ={cM�vJ��R�v���-�+�:>�=_��l�~e=~�<������>�z���I>J��>G֙=�O�R����Լ�m>�n#>����Q��,�=b>��F=+n�X �����>@�!>�N��t8�\��>��ֽ�'��Xs�3g+����;Zf>I{�<mD�=�=�MS>��7��=3=B=H�>1��=V��=ܥu��!=��>�=N=~�>�a2>��,>��4>X(l���=	��=g�4�.�[�^�"\�=ͽWEB���j\�=T���C:�
�z���QX�>g�I>��#<C>C>Q��U�½�2>����̋>{��|ل>�}ս��C����6��< ڽ�->�[�=R>%�l���>>�<=�n��Z��=莽�Ӽ����Cu|>8���+����m=�oF=*C>�י=���=_��=Ñ��ur=�b~�NnD��o�>vֽ6����0�<�>y�
>%�<�}i>-|��G������a>Y�:G�S���='��=��~�Lڝ>2�e�o�=$J>.���=i>���=���=gPA�k���3>��K=���&��=�̄�nq�i=����=�����r�DB�>_��>t	B�Չ(>Y*ɽ�j�B�=+@>��>����;6=�>�,>6�>�
d;5�>U�Ƽ	#�=DaֽK�`��Y6>�`<:nH�qB2>LBF����X|�=� �=a��<
�ʽ,+P��N�=؝p=�)>@�$>0�����=�l���|ȽQ-�=6�=@����=^���j=xd.>�>Y2%��="����+�=`E���ὧ��=���~��
�R>=� ���(>$������s>I���4Ͻ�'>뜈�-���oU�>&ԝ=��>��c>��><ˁ=��0�p���f��=��9�B>V��=B��= B>�PP�5o��V����>u�=�ڽ<4� >L~ܽ#7[���>�<���6���>�>H��=�O<}I<��/>���>�� ֽNl��:z=e��Bk��^<�}e	>�$�����sپD���&��ǖ=a�
<�3��Y����o��{젾�s<�H�=��6<Bש�v�ż�N[> ��;��Ni>�8>�>��>k1���j>��||���!�,~��@1=w�=�D�%⼽�E3�5L/�n�[�Ѯ�91�<t-���T��>���=�SO=b�N>d��=g*�<b��>5�=��=��@>h��<��=**`�e�=�罳����D'>��G���>h3>�|x=���B����
�(�6���>�>z�V�5��}�.���ʽ~�>�1>f��G�>�����jd>OI>������=mܗ=��x>���<2'>��I=>A�;�r�=�0�<�Z���[>���$B<�a��<	�=����n��'F��ۮ�h��=;
� � >�(=��=T(>�a"?����L�`���?�Qn���=����>��S���9><ψ�=����oc>�[����<����ꝼ��w�t��=C㾱��>���>�$'��/R>67�=��0<=�Cb��u�>�ր��P>��k�����Z[=6R=�=�8�ͬq�|i�=?��x�?J���a�=U��<)�뽋o�p�uaI=�V8��þ�U&��j�>�Ċ=s�?��D��E�E��NN<�_`�鍜>0����.�>�1���ý;؍>�t�<��=��]��'�p4��6��<�Ƥ�� ����=G�	>n̳��>�:g��JCP���B�'=2>s�{>�z��u��<��Z��x	���þ9� >QW�=�&
=���>�����q���_=�~>(�	>O�\>����@�=���#3þ��=Ib�>;$���۽����<����X�=8_E��\#��)'=�x�>�FY���>J�U��oG��\��h��a�D=�O/=�D1>��>>��� ��=e_|=��>�2.?��r=Z�@>$���W=_-/>e�y�eL�=j[0>���R���7����>�Q��1�>�K!��_�Yj�=&��="7�n^���=b�ݽֽ�=Qi^=��=I��=d_��mC}>2Ľ�=Ů>?�}��=���yUν�����C<wճ�����4m>�Z�=�>��Z=�c�=3��<�D^>��=>�8>��1���;>dm;����Wr=H�x>D�ɼ�s�=Ο���G>P�O=u3?m���a�>$���5�>% >皯=l��=�Qm=Y\պj�3=���<�3�+�=���A>�c5=P>�J>F�L�z�>5� >T+�=	"��.�(��޼�tE���b>��+�O-��8�(>���}>^�X����4�=ݕ>��׽��>�<�����2NU�ʽG=x�>Vh#>J�=��f���)�">5>5>fR�<��-<�A�=�7�=^@>*��<�nѽ>%c=�����'7�8����<uZ�=?4D�'ʳ=w�j<�,D>�#������Js=�b�<�#��~��=>T�[f<M(����<YAm>ьu���	>�I;� {>	-��W���C�>F��=�^>k� �<\��=�/Ὡ\���H=n��X
��e�=��m;(Q�w02>z��=oJ;���:L$>�@����<����>/F�>��'�I��+�V��ȼ�\f�1B/>��|@>2ci���=����Q�=u4=�_�/b���d���/�?+3>��=��>���<Z���0�ާ<0O�>�K=���� �!�e�>�[��y>l1�=+e?<NK��S�=�$>k��jb�>��K�L>������$>��=��E>����O��=|����a=�s�;LGE��>.o�=�ѽVy����\>��w�=T�5�{g�ޢ�>�[�ȒM����<�9�=k���5���F�>˚>^�!?��7���;>!=7��?%�F>�Ǳ>�|�<4P>䒿=pS�=�,<��zU�/���}�-bT���->����Ȗx������S�H6�=�o?�%��>OA�=G��<b<�= �ۼg�����g �������>��L�-�{>�ܣ;�HZ�C�8>�'��}�<$���c��W�;�=�'�=y$��"�˽��^�T��<P�`�:t->S�/>�-�Z#��JMI=	�f>�� >���>f�Y>�GK�k�$�o��A�=����Lx=���=E�=D��=Ӭ7��]伅��=��Y��e�~5��*���D��e=(�@��[j>�>8����<��R���>���)��/n�>��ʽ�<�>h�>ЗK����ǝ?�%2<Ͳ�>y�7�p\�=f����!<�c=� l=�Y8>��Y=�{�=��j=᠕�������r�bR-=�3�=S	P��̗?d`輰����<]�=$yE>Mŕ=W#���'>���{Je=��X&];�K?U�J���.<�� �Q�T�"�%�	o�=	kR=�j?=����:�=1;>��(=���=8L�F==߄��_j>6�н�4�<"�B>�z.=�߽�;>���=��'�Yݠ�d�� - �GKX>~Ľ~�z=�"W���=�]>>N��<ݎ�p�<[ѼI"�f�=�;��GK>J��=A4V�IՔ��z�=̷���W=o�=�->�)A�8�3��!�=���=H�H=s���*>�nd��ك��ͬ>�R=�dw=��0>�����K�)�<��=�R��V�B�IOO>/鹻K�ڼ��&�����[>v4�>]����>�R�<=�7=�C>�X�<#�>N�1=0�i��Ь�>��h��>٧ ��YY>�Ǥ=���PZ�<Ah�	�"<~�˽Ǹ˽T�{�5�>ܶ>�,�$����>r4�=Y��>$�A�^��-�MY����>t1���6�=��>�+2>�פ��U)=	<���>�l>6+*��mS;�>���}������:���=ʨL=YL�=���<��J=��=!�����;�R��P�>B�v>�B'>�M�=�����Ƚ�>`��m&>�f�=��>���<�gZ�(�����=)��=��ν��K=p�>���=27<?���~Q��R>���=�gm>d�%>B��=�
V=�?u=0����G�96p�-�;�Ϝ<��1<���)|=^�M=�>Ӭ��\ ���>��=q��=�D=��8>�n>��$=���"�&�=�B����=���;!��=$��\g����=^F&>��=tlP��C=ל�>2>D�^<6d
?�j�.^3�2� >�>$��������>d���O�$c)��D�=��i$�=Z��xg�=e�t=ݼ������r=�%�>/�A�i��>x�
�>#F;�Ed��
5>�m>�
:�3߼�5h>�~�>V~t>Yd�=n�H���Y>��>���;��+>��O>ۺ�=?2��~oA�ȅ�=!S&����<�u��x�=�f�=A�>>��Ž���<��>��۽..>�;N>>Ӏ��1�=��>I�=�X2�ʡ;>���'{'�+���6Ͻl�����=�2�<�=X�=�H�<��!>�U�=�%>�>y���3T>��4����9=>��L=�ޡ=}Y<��<L55��ǅ�Xf>%&�=�#�=@�=��>U�Ǽ����M��d`>����7`+�ٸ;���f>- >���<X劼r�<���=� �W�O�@n�=%f�
����*>Jm��� k>�z� 96�SI�=]��>�2R>���h�>�>o=욉>�p)>�޽�J��a-<&Ў��u�>|���=+� >Nj����v;^=��=;�=�y�=�YQ�t��=����d�=v��>uH]���k=4o����>Pa>{��*�>��<JP)��Z�<|B�=ڪC>�==}�=�$?<`o=گ>��G>�Q�=���~>���������=9��m=�y<>��^>��='��>l�=3�ν=6I>��8>���=+�!>�7�=����6�߽�,�ޞ>��%�;�)>��\=q7ռ]&>%�V=���=�\A> )#>�j��i��F>����M��;';�;�А=$ƨ=5I>31�3�p=Kz<S�¦�<н���u\�H?g>5H��D�B>Օ��w��W`=��R��
=�ф>N����D>�B=O�&<�SL�g>[�� I�ݺ>�7��E_=�ZI>��K>~�=��^>GXμa�u����<t�+>�)>��Ľ<ˤ=�����A*�X�)�d=�}���X7=��=$>>��ĽV�I>_S�<ΪW;�ɥ����=�"�o9�c�&=�(3>��}=��㚚:58"��L�>�?�������A�6}ֽ�e����`Q>��>>�>ؼ�w�k
��m�=�jʽx�=��>(�=���=m�'=�-=����2�=F���	�[��~���dɡ=���=�">�*=�p�>�b����U�I��=0O���~�=Ŧ�<i>���=��ɽ�2A��i�=`�=��=]��=P]�<�T�=h>M*�<,>=6~=ʅ~��ý%���K׽˚=��z���+>!�>
ɂ�6%<(���ӽ@m�������=��>4�>�"j>�m=p�S�+f����=�/�(�H<��=gc��C>�z�T�<��=#�=⏿�kE�qB����%��r���a=�k'>��C>�d>2�K2E>"�����8>\y�%�L>�m�? ��� >�f>��Ľf�A����= ̂=�=�>�c-�:�ֽu�
�/2>(�>;X@<�A�@>Hzq��w����������>`��ً>"�:Ҹ��F�=�׽<p�=,��=�(< �E=b��=9�ֽ2���'�-�v����� ���x�4�x�I=��>�+>�����a�</jt�N�˽� x�m����=�@%>���:q��I�>�8P=�y�>����� ��=��=���=cY��s����=;�����J9�=W��o����#]�w1�<��׽�9'>A�W>��>�jz�P׽S�޽I\~�u�=iB�>���<}�=���U�G=��y>���=f}�<��/�g{	��S�<�Tj��K8>�(�5�>��m�s��=��ؽ�#��ꒇ�@&#�t�=4�ٰQ��"�=P�>�ƪ�W�R���=p���a_>�'>��<v�<���6���B*>��=���wL;>��=Q�����=��U&a<vU�<��b��K�=�W4�������=�*���g�:��=��=c98<�si�T<>�#��n=�r5>��Q����=7�E>�]6>S�k<Lq߽��8>��>8�= ����>��=0�,� ��>xo}��>6 �A6�:�@�=%�i66>��=����������>,i�>�>�[�/*�=�
~>��K���>��3>��T=��Y>
��;��z�1>!����"�=?*=3��G|*=��=A��=B�y=���D�=Dc���j��Sh:>��:='��|�ýb{4>��I���+��\�P>�E�=A;>��&>�=>��=8,>K#�=�V�>������O>$潈��=yև=���>�G'>�u�>b��=p�>e�@>J�=4��=�PF>���e�=�� ���f=�н6������8�-˻���=�x�=Rb;=ʐ�=��>���I��gr�b%p==`�=���=J7>�Z� �>�^4�8}�=�֙=�>��8�6>��>��@>��>5C>�G=Gzh=R［��|=��F�RV�=	5�="]F>�9�=��=]tR>:��=� >8U�="::<S��=�%>K�z=k��>yX�>SI�=&H�=�Z>Q��ӊ��}v=��=�4��j�L���<P�=n�>�,|��'ɽ^��;.+��Ѓ����>�I�=vN��O�k�����=���O*�3Ǚ=J�4��V�����=�@�p"ڽ� }=D�F�������
>��4<��=���b��=�]>'W��Z�M=AX�=1�>��6�=܂�鮝���=��$>����&N�!uʽ�ܽ���<��>CCh��Q�<�������=���=�U�����<�q�=B�=�>�u��h=�>%������X/�g��l������=g��=@Z������V�<3�X>�>*�Z>�c|=c$=������<�E,=H�0=����\�>��<8��]�=�PS<kj>P�=�T���9"��ǐ��V�0����J�=@�2�(*ݽ�X=l`�z_�= Ϩ=�������=-��-�>t�>� �=��>�EP=9�a=i9��w�����>��=s����={H>:�'�R4ü�v#�"�>���p�#<r��R)L��4q=��F��3�=A>A��o��C?�=��^�w^'>-�>�'>cD>�7)���=Jv>E���q>����?�Q�>mE�<�����V���T��p�=�
>>n�=�m2:�Խ�rм�E>zX>ъ
��=!>�5����<�
>�����9�>�(>�-<�/�=Ȳu=����՛�=��N=�����k
��~=*>p$V>,>O�ٽT:�=3�c=�9n�n�<���2�ڽq�>jW5=s�S�.z�V*I>�G��*�=g�=j��=�}*>^�U>Zeؽ����cb��k=g���L׽��ɽ��=������;>��>D[��ClA��C>ĚмR^�=0M*�m����03�����^�b�q�>u�|>�Jݽ�Ð>��!����Q�k>ϼ����>��t>S� ­�ݒ�=�|��>�= �>O��=����鎾7L�W�<��'�\ =F�>��<�ѽd]�=�!8�@-�;�E�<$��=��7��=^�n=�I+>���=�� ��=�������x+=�($���?�0����+��tᗼA�;�fɧ='ŏ�o�Z��I�����p>B5��
K>���m-���RN>8�ܾo+�=��>*�+���J=H4�>��=��=g���M���M>B�7>+�<��,�b����g'���I�ŗ~>t[=O��=�d/�f{����ec�+>K=\��=:d���=���=�|��˽��졽,�,>��K=�������<%��'��>�rr>L2�>��9i���c;�����>_Ϡ>���]=�=�K�=	d�I>�:B�t�>�J<�c��%+��Ǉ>���.��x��ߺ���
���*.>EJV��o)����=��=�L�=Sk�;-�=���B0��4>�5�=�>�D�>����!˽��<56T=�F��w�@>�\O������
�����Q�<��3>->> h#�fw�=g�͢>h� ���J�m#�<�}ڽ�p���н�9=h�	>+ �=a>����!��<$�����r=Ϛ>���:kZ>�ɳ��hM>?���n舽N�T>4�ӽv�%> _�g���48>���<&<�<��">��->	W<��%�x�<?>���<*w9>�.=]�Pt=��4�y�����]��N =DýS7�=�>��>�	>{RW�-+=>���43�����	�>��k<��2>F� =ӣ<�I�=�>��1>#-�=�>
��~>�"�5>��L>P~�=n75>ӭ�<�u�=Ha���-�=��e�K~�=⣫���;%��Җ���4�=��>��2�~��=�K>/͏�M⮽-�=j����v>��Q��;��Z6>���=�7 >V�=��b>��@<��%�k����X�v��=�N>�|�<�>� +>�Y���ja=ʘ��81>��|=�̐=��X��a��U��=�d�=�,�E�f�
�4� @�<ݣ=�p>�ჽ`[�'!>�|:=�m4��\�R�>�!-���<��=��h����_������*�>�lY�/�Խ�N���6>c�>4��=F�D��60=R
��J>���[|f�G�����>�!�Hh[=(b";��!���B>Tߊ>�2�@T�<�r3=�w�=Z{Z<٭��]}�_J3>�!���ݼƓ󽨂�����.&>��%�կc��yF=�d�=]j�<-D�;���<���]�?<�}<�W�#>��@=-=�է=��C>{�>�}�=1<���;���<Z�>aܳ=p��=̃����*>3I���>'Ȃ��'a>��潨r/>��r=*) >�X=��"�e��>#�1���>��K=`����� �QT���?g>Q'�>� -=����Ls>�?������>Q�>_t=�`Ľ`^x=t�>J�Ƽm�=�>\5T�����{�>֩d=�
�d4>�qE>q3��)T=m��=Α=>�>�>��v>!�K�R�㚽��D��nL�~���z����=���� �t>�=��w>$�}<�.>��%�l������="�>k<���K=N�>�/>>40��tٽW�u=�_��"Oμ��v>)�;��t�=0��='F�>֥x<��Ľ��o<�L�>�h�>�+(=x��=M��=��"=\�b��B�Қ>�>s`L>y������=��`��~�<L��:�M�Gʲ��
�A��<^s4=�>M�=��Ҽ-̥>��=��0.>�Z�ټ�lĽ��=v!���q>e,��u��:>�4�7��<m�=1O[>T���mx��D�>p�%>Ш�=��g�8[�=7�R=!2���uw>�6x���8>G��=� ��p�=>���8!>$e����	�"��=qv���ʽ\�;�70>�!Ƚ�a�=�%=*���s>�:�=pw��Ӿz�R�f��=xZ�g�>v����F=�Y����o>xD�> ���kB�>�Q<$>�JC=�#>!i���p�I&>�'C>�a��H�M>T��u�.>�ft�k�=��&��tu<�A��f�8�=O��=H����&>�/�>cp��N�ᕔ��\\>@>�4��!P>�*�<Q�x>r1�u6>��h�M���3�.���JI��WD���ok�$�&=�:���ٿ=	�.=�y>5Z=>�L�=̦>;�Ľ"��!������>%'����>�*>�[�>�K7>�}2>��R>�"<�ڑ>��4��N>��$>֙��j;Lx�=�EM���#>��=d:�L}��F��ݮ�<�����&>�\-��1>,�#�	�=�������mک��}n>�H>x�>˗��j�3�6>j����]>O�>C�=1�9���>�2�mOO?yY2>�>�E=> D�/����=2��=�:�C�X��%���=��>��!�=�K�=���=��*���>nH9��!>P��52�>���=���!R>�_ ����<r�<�v������]�>aX �Or�=�˂�!�j=�G>a>l��=��r=P=�~�=���=�P�=N�P>j`�=�~>���=��]��=骽Hm=ƣ�=ڷ��7�=�F�=�|���U>��}�\�y�>>���>��������=;�, =��>dd�=�N4�������=�K�=E$>����Xƽ��;�Ӓn=��A<�2>�ʙ�W��=��5>~9�>s6Ƚ��I>�3��=��<��½�	��T5&��Z>�֌=J<>(8�=2_e�=}�=��7�+�=�"�=QH�,��j=g=�þ��cX��=F3�=ZM�� �>���<��ļ�����*_>N�f|�J链+��>,��=���>����!>��z�E�>O �r ��0#�>��4�G�g>��H=d�+��mq�J{��DF>��[>v-����>Y��s�>���>����!�&=��>���> [u�x��>�E	�Ɠ>Ɯy��&�=ⲽ�+���<ҽi1���V@�����->����M!�P�<¬��\߽x c����=���TM>��i����=zy��ko>X(��L/�> ����=)9���ً>J]S�7�J>P�=6�ݼ�p�<�@(>A��>���=��ؽ~����>Fm���=�c?�>$;�I]���S��
U>��>�� ��n�>tU����>1<h>c#1���=�Բ�������Ux?M�۾�O�>e2'=��#�e4���m��Q�����¼���>��>yؽU>>��>_�	�K:�=��|��b�>,��=�ĽQJĽ��->�[>�(P�@��=�ƽ��ɼQ�����=~.?W=�<M�=x�r�o�>^2>G����>�A�;8k ���N>+`��P�>��*��>n�C��G�=w6|��Eü��G��J�����=��8���9�੅=�c�;d�>��9>'Q<,>��7=��(�=YJ�=\!D<���>��=.�/��H�=���m�BͽC$���W���9����hd�<��g<�{7>���щļ���=ҕ]���;k=4��Z����T��kN�=��὞�ʽ��G���ڽ������=�E�,����=W�Ƽ	9&��=�X��~�=�n����=�ڽ�
)>W#��lo/>2>��L�٘�=dɍ��[���L>
]����>�½q�l��X���<����2��0z�=�+H>0�>@�	��E���z3���I���Խ���	��,�=�IM='��e�{�b>���=I�]����=�q���(�ͯ�=m��M���Ze=k�>u�=�>=��<�!>(�=3f�>ʪf<'>G�=T�Խ����>���x���Y�6Ա���<4�%N���=D�>���j�>\���3佾ܓ�2$�n�=-)#>�Eu=AB�<�Q�=��`=0_�=S!!��
�=b :={)7>L/���;3�6=͚���,8f	��г<��;��2�y��ha=x�9�jo�=�2�S��>��=U���>��=�6���y<:�.>�s�=�δ���=��>�>� ;��?�=�H�:c��<Ez⽨Kt��l���K���3�=��>�I�=���<�}�=�(�<��<H%���=,P�>�β�z��>?0e>�.`���.>�������E�>��[����9<�Q�wm���V����������f=�.�x�>݂$�R ޾
�v��e��u�K:a��rd>D�>mC�q�/�כ>(?�����5�������0���U�����ꊴ=v�R> 8$����� �>y��6��<L�<f�>���ZhU>�>��=�ͣ��&c=KT1>3Έ=�ۢ��U!=�xc�<JU�Ъu��@>��=Q��=<�W�>��>�;h>l#�;���>�:ѽ=����%�=$!G>;^�2�=A�>��D��W=̏=eM��z�½�5>W�O�<�E>�[=�5>��[=%	�=�u<�gd=t漦YN�O�>��� %>ȧ|=MZ>C��=�/=}T>�^\>�yM>�d�=�fm�	s&>��߽�7R=0�O>Do�=�Aǽs#<��a�Mn�<=�q>&M�<��.>l>9%�<ĉF�0�8>r�E>�Ң=2�ҽGN��?t>��2>˨:���=Z��=�i���"&>% �E�g>���>/_�=��;�������7H>	*�BY�<�W\=��=���}6�:m�<>�X-�Tn�����@>I��	b>�.�7�=���!%=�����<�Jy>Ռm>�?�>l��=��	��a'�P��?��=
"�>Ȓ�>�%>	���)>��ýV�;<�ǘ=�^��d=�ZнT�
�L�轃tf�	�<[���H a=�>�u��y�>>X��=^=.�=a�+�2���4�b�Q�&=�?��n1�=�H�=�N3>�`C=����s�?�U��=��?��z2�'G�}�l<K��=���tO=>��3� �m=>P�=/<�al>�$@>5� >\oC��5����u=��=��`��S�>l};=1ڨ�g!.>�-�>'�=��#>C6��Ŋ�A?�6>���=IE�>ܽ���=������M>m4��OB�fC}�� />��׽_-�=��c>��x>+��>?J�9��=��>;C\>�"�>��?��<��S��ؾ>^">�96>GW*>�����Ì��OT�w�
���d޼��;��<�$`��ٽ<e5��oؽ���=;�=��>7�<|k�Fr>�%z��
p
/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/readIdentity*rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
T0
�
(rnn/multi_rnn_cell/cell_0/lstm_cell/biasConst*
dtype0*�
value�B�x"���>_��=�G�<Y6=���<���<LP=�hf<�O�>\w>�6��貱;4r+=ȭ�;aX�<s�0=P�?=_��<|�\=g��=�>���\=H��=U�s=��<] >V �<j�=��=W��=X��=s�0=�b�;�5;�m�<G�<Z"ʽҖ��{��;h>��Ҽs�<!=|G�<$�<�5<2����	�=.�</�c=�ة���=��	>�G����<[����I�)�C=��Q<�?�=�eM>;6�=;n=ֿ��f��<���<{��=�u�<�c>�#=,=_롻$��=��<@~�<�\=�%�<�(�<�O�<�� <�S�9C9L=��=�=8!���=�>�;i�<Ĉ�=_&�= �>Y�=5��=��<�2F=��<��/>1�t<��>�W�<��; ?�<!�=	
�<6+�<�\�=��<{��ڄ�=\V=�$+;+S�<���=��=��;�ކ=���<�Y�=�px=�;�<
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
value�8B�8<"�8_�A�j���)[�l>��T�����>�:=j
x>�=f������T�<y�>�H�=!�������x���>)l�U�B>��
���d=C��>#AO�W|*��w��M���^����=��=ٖs> ��;���==�����ս�r�=kÌ=��M���y���@{'��@�:�׫=��y����w�
>�y�<*ս=�ؽ��?��F<�_��j�W�> ��v�����>U��}^�=���;��a>Mv��0�=~}>G ���4����޿Y>�
@>1㹽kaw����=�yĽI��=L�D>��]>�t��V+�=�:�=�T]:�#���J@>8o��7�c=��hK���w0=�>�=d;�=Zs�<_���Z�ƽc�i>��:>��>��,����.�3>�!��m
?����#�ƾ4>"�Э�>�\�=�^�=���>���β�>��q�ht�>��[����>��K��>�>�֣>%�Ѽ����I��蓾r���:m�J"�=���=��=�=M��=��>�,��`��_C=ݼH>=�>..>(����Q>�2����=]��=bN��y��)>���=TY>x��m
�n�_��5>�%����>�Tk����=��E>	�%>N��=�24�VR�=)_~>�U >9���
=>�	���=7�KRV����C����N�a9�=Ļt=�ˀ�o����:� ��>�|X>b�<���"��߾��w>V���v3�q3�걢>i�O>Cu=hO����)��m����>��>�n��������4��ľ�>w�<�ֽ$8��q� k"���>�{;�	�þ���=�z��z��=;,z=�����>.���|�=�J�=���=�~>������U�&����@��WY>#p���Sr�b��=��=gE�=����Ĝ"��p�=���>C��j9ս���<��>㓚=��>��N��SE�-n��} �;@ޥ����=�������r�Ⱦ:��� 4y>"z>tlb>�� ���Ђ�:�2ѽ�ȇ��/��Y������ȍ�������#=���P6>]�о���=.4���s>���=�x%>�g>O�?�!;����<2t�>��b>�y���֦=Q{��h0�=6;0>XŃ=�ƣ�J�нDA;�u�
=�>PT>�T���	�==NY=޹^=��ڽ�t���s=��>H�prD��u�>/Qf���>���q����||����<h�7>��v>n�>�v�=��ބ@�̀�>����cg�=���>��U�o��=s�<�s���y�VG�=l`�C��N<�=7>sD>�Ľw�=�w���)=��>�}�;��<
����^���;Md>u�;]���>͋�<\r=eP�r2�QbĽ-��>���=��O�*�]�/=<U��z�C������=��2>5Q5�.\>4�d��YF�pz>r�=W��=��¼�a@��X!<�.ռ� 9�����{��=�;��X���i>/\˽ �>b��}�<@�e>:_U��ȱ�a�ǽ�(=t{
>/����̼z��=^��=.c��72�<uR>w�X�k2)>'�߽�
f�X>��0�[/���(>n�v�u���cu�<�6)>��->δN>����o���P>d�o=qu=�;>� L��,��=�b>o4#>�pb=R>.ŷ�Uމ�y�a>ct�=���S�t��>��7>/�»!%��qZ���PE>\g�=�"��/F=�A+>�M�>���=��ٽ�ݞ=�î=��	��D��!!�6�ý�@w>�ټؐs���D�;����eo�=S';���_=�8>��J�G�>�jC>�q�=�}�=Z
0�E@|��	����ǽ�{��C�%���AƁ=��I>�F>P��<�,$>N��=���j��=���=�+�<mUϽ��>=�>���=f}>�`*�,������=�������e= 3f>��>�;�>P���'}m���佂�>L&�=���;.�;>
n�=�k>$��<�n>���\w�>�ӹ>�C!�%��=b�#<\@`>|��=��=v��=-��<�'�<�^<��ȃ��sg��i>K\=�|>�����������>h�Ž��<
:��E�?=f�d>𯆼&�\>��|��Rн>�<>�(�=��>Sw��S�=��< ��=Ѩ�=�eG�WY[>�+	�/A�x�>��&=��$>��۽ ��=�=���v��=+�߽a�.��ɿ�Í=><V=6���3��N�=�g����a=/!>���$F��G/��%�=߁���=���Żx���A))=��]��>�j;��9��B=s�
=��K�;��=��%���X>&w�>w�|=\E�=��U�`�5=�@�m�H=�R���Q�z���:��M7��(>)��>P�>�Ֆ>�-;>�m>��O�it�g��<��E���>> /½���Q�I�v&g��9P=sk#>��+�e���Q� �>�q�>#P�=2��=�/���ý�$��n�k<*_.>�n��+A?������=6�#�YL���	�f��=�`d��d�<mn>X_�=�]��qX�<�8�=�A��e����j���2>F��?�r>���>�L�.c����<�C�0�]�g!/>&����;@�����2>�!c>��	�bK_��yY��C��#�=C<�>Rj���j�>�1�<�f�=�\�	C]�DS�&�<�UK��^?�At>9�!��:�=񉞾tP��Y8:�J��>��,>���ڶ%����<)�=�[�; G�=Dk�1�=OM����>P��=mb8;���=?�0>��.=���>��*t5>��>�$|��뽾b���<��Zv= ȥ>��E�h'��'B��F��?cȾ����栾9f���?>�Μ��ܾxS��0��t��>�)>,��>i9==��C6>��+:�i�>ӓ�=.睾�W̾-�2�5u>�-��i���vL=��>��C>3u/>�i=�a[�i"�&~<���>�����$��=.N�-�x>�1��*�n>�m
�E˞=���=�B��#�<}�7>���>�ľ�6ɾj��>5L���I>����=�~�t3?��=/��>+�?> z��`��?y��>�,!��Zt��9�>����.F�O��>^�=��L��b�鮎�Cz������(�գ�<hwQ���������=�~&=t�{�є�t	��v'<�ٽ�<�;X�9C�
��16><������>�
�=ְ_�|S>��F�On�>��.�PrL>�%��9/f��u�'?�=3��<�ٟ=��u>�J½t뿽��$>�'r=aH�>OZe>���i�����=�&�>(��>":�>���=|��>b�C>̓�>�Ш�`����=ΐ�>�F�>�ƕ�i��>f��A�����g2>}����*j���S@���7>��ý�>e�K<�׽��l��)�
GP��/>�Mْ��|���g<������z�>�a�Y!�0�U>/0�*�L��=3l\�����Q�M�˽Ӳ�=އ���?1>�X�>�څ=��Լ4\���Ѵ=i��?����Ͻ�PE��g����=���>���={Om�{�g��%u>f�>Zc=x�S>�]�����M�&��s>/!����=Q�>�V=pv&=���Z����������c>�)>������2<;#�p�	�@^�>R��>��m�=����z��m�h�c>tO˾\�|��)>�a.�+~�>3��aʾ�s��BV���;@�>�2żi��>_�����@�p�>��>eގ>� '>m��=x'W�D�B=q���i¨���/>��=>����_,>]〼�h�=����9=.�/�;�[=tN>Cu����¾�D��
^>��x�N׽^Y�>M�=��Ž�U�<�9�:C=[��	��Q�e�����t<.��=vR���>�M�>�����h�=�T����;��J�	�>�>>�e���l���p����=�K��ZX�����{����>�s���c �2*�>[X�>���<������>��>ORZ=�I�B�'���g���>H��>!�>�G��>�0&��g>����=/�!������J��"�>�)����>p!���O=�+�5	������N=�ʝ��	�>-�g5J>���ু=�gU>��D��K8>�FH=~�>�)�?�>��w>��F�����{Q=�������=�`f=�"�ip��\C>`�=���=��P>�&��=	n�~�W>�
F>�3�� �R> ��e1�=6���I���0�{>�Ѥ��S=�
��?Xt�R���O��~5���{~>��v#��&>@B����i=>p3I>C @��q�=�}������u��Ҿ�# =�I�>�i�>@&L�n��8�=��v����>4>��n	��7CT�^�7���>2��Y$Q=|�x'�	È�����$�L�ݼS�K��2�Z'�>�[-����>�� �>�w*>�;�=SJ��O���>dĈ>���G,>��<�Q{�D�&�����c����Q�Ь%>b�>�_<�:�>�l��
�<��=�$>�����0c>9�=*<&�%�[��ܺ>���!�����soս�k;��d��I�=�J��r3��iݓ=\��>��>��D��+ F�%���*���¾#ͽі�����>����K��I̾�$�Gv:��<�S�o>1K��2R=��=�&��\���q��6"�]
y����k����>�ħ�N��: ��'>ZA�>^es>�>>�%�����@��P睼�&���|>hn3=�%(���Y>]DƼBv�<\���Q
��>hQ�+�9�Q�?���>�\�8A.��Ž���\�X�)�u�~>��>�zB>��=U���cT���!P>�=�>�/�=�L=��U�M��O��<�˯��:>za>a�y>����k9>� ��;7=�-.>��'>'�=_S�<�n=������$>@�f�2(�� >�ݐ��>6�j	i>��(�þ��������O>LY��j�<�e����iT>>�&(���3=��=��=���;9l
>!�ս�8O>�r>�	���m�=�n��b�b>��:>K�!���4>+!z���ؼE�W�@���ta��)d>\9U>B(��ފ<��C>/'>�Y!>i�$�y�=L�m���C���]�?>��e>u�<�;�=In=R�'��R�=[�=9�U������=F/�=�ܾi$;>紽�T4��>�=�����Y�#���X>6z��]2.>��D>�^%>�#�g��=�?|����r��D?=9�@�No^>{u$>��=)=m���H�{>.^P���8��[3=q�?>��-���Z>��s��BH�o��=�69>�x��I��n=�����i�7�-�:�B>��<��=����ɫ�h�ٽ{$�>ҀN=[@���<8u�<q�>�E�>�:!�#���/	w>��m�2�G��>���<w�>?�
��|�8:&�=G~�:�G>�Y�<]����i���>�^�y�)>����@��> ��P�Ӿ��R�Z>�t�=�
�=.�>c_�Ű�m�(>�W�>��>~��=�`)>��Z=X-�������@Z>P�^><{�>&�=���=?׻,vf�5H�=g5>� �{�!��>�c�����=��K�z��鐚��^>��P�g,b��都�G�%��=d	�=���q޽��B>�L^=7M=��jr��j����2��=Q�=�l��爾?x��B/�mb)�U�>����M;>7����9߽-���
>�e�=�_�>	O>nB�j¯�=��J�+����c��R1�=(�=󄥽���=L�$�X�-�4ӑ��q����3�zSU>�DS=+"/>`���b��L��<D��"�6>��2>Z��>�,��C+>%���b�~=5��=S5���+Y>��߽ƀ�=;\�==-�=��	>��T������'�=�u>�'���>�a��ğ�UԼ�>�	R$> 1�=�E�=e�Ľ��M>����/��=�y��J!���f�=G����;�0W>��=�_w>� >BX>��e>�[V��:D�:�O=��>;V>�=>N��=��+>�xp=��Q�<}S >fm�����Cнg�\�+�[>���=j��=г���>ΖN�#�{=*n@�ȷ��K
>0	=�=�u����T�ڷ�>�e3>EG��h��>J�Q>>����� >����	j=��,�m!6���x>4�b�}is>t�}<;�˼�8��ӧ��u�b<�>�
�>�B>`�>�s�<$���L[�'2X������g<�S�>�=�X�J<;oԾQ�n<^g�;폽B��><B[��� �F.��$@T>��z�[yd����+1=��J���^=�#r>y-���j=�;�=�H���𾧰����>��>y z��7=.s���������>��?�ӕ<����
�侃֢���>R4��S��=�{��"Kj>�:��f3����s-���۾��>l�>�����l���9=9B'>���=��/7�-���𵫾�(�>��>��->*�����>:��=�I�>���=�=��)5>��>K�*�Aω�S3C��x�f>߃нz��>7꽩N��V���w~>a��u����{�d>�ttȾ��o�sA=����60�=t�̾o ���*3�\�:?�h�=�4����>����g�>��>�KM>�2���e����;޼�Eþ�U�>�*	>�}D��y���W�xV徔�Ƚ�U�K�=�/�=��6�>ۊ=���>��Fr>�g�=�KK��L�>��G>C^<�g��'m�-���#L�ZǞ�4�n=�>����A�=¶�lW�>�\Y�(ǽE�.�i�s�>�w�>[P�=7��<a��Q���D;�>��O>�Լ7�<��6�pX?�Ҝ>:�<]��>!���S�=l1�=˼?=��H�X;SՑ>X2�>訩��m�>�{�>����K�Y�������ν��><C�>5�B<,u��;���s����0ڡ=f�=�2Ld=)�<��"�����=�!̽�U4��ê; ��>�>_}L�rO�
�=%����G�&�׽�,W��EM>3V}>���=� ���sG>AA>q�żs�>@�^��:���o��	!��	&�۳�=,� >N�>q�T��UV>3X$�5�0>�%=;�;>qS�q�-�;�.76�KTҽk��W��=p��;'�h>�LǾtj��
U
dense/kernel/readIdentitydense/kernel*
T0*
_class
loc:@dense/kernel
�

dense/biasConst*
dtype0*�
value�B�"xt�
>�9���H�;DX<y拽Y>�K�������&~����<?�=6l�=����2=�9�<9��l��=a�Ի��~�����5O;�S�=1Թ�T�L<�"�;��_=!싼�
�=��=�q>
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
value�B�"�WeK?�ߩ��<��Y#�>��|�_��=œ�CF�>=$?��ҾD��>�W~�1�L�=��a���>�5��@>��!=���>�	�>K<�y�>}�#>$�#��0�=dSQ�hd�> �t�=>�}¾����
�>;mľ 侊t�=��Ⱦ�x�>a�վ��>D���c�>e�s>68���<>̲�>�m�a>��t=F�>��Ƹ�=U��= �>���>�4`<��|��#��N�>0�:
[
dense_1/kernel/readIdentitydense_1/kernel*
T0*!
_class
loc:@dense_1/kernel
A
dense_1/biasConst*
dtype0*
valueB"
�@<�@�
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