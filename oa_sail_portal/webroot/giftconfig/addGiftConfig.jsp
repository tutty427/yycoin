<%@ page contentType="text/html;charset=UTF-8" language="java"
	errorPage="../common/error.jsp"%>
<%@include file="../common/common.jsp"%>
<html>
<head>
<p:link title="增加赠品配置" />
<script language="JavaScript" src="../js/JCheck.js"></script>
<script language="JavaScript" src="../js/common.js"></script>
<script language="JavaScript" src="../js/public.js"></script>
<script language="JavaScript" src="../js/math.js"></script>
<script language="javascript">
function addBean()
{
	submit('确定增加赠品配置?', null, null);
}

function selectProduct()
{
    window.common.modal('../product/product.do?method=rptQueryProduct&load=1&selectMode=1');
}

function clears()
{
    $O('productId').value = '';
    $O('productName').value = '公共';
}

</script>

</head>
<body class="body_class">
<form name="formEntry" action="../sail/giftconfig.do" method="post">
<input type="hidden" name="method" value="addGiftConfig">
<input type="hidden" name="productId" value="0">


<p:navigation
	height="22">
	<td width="550" class="navigation"><span style="cursor: pointer;"
		onclick="javascript:history.go(-1)">赠品配置</span> &gt;&gt; 增加赠品配置</td>
	<td width="85"></td>
	
</p:navigation> <br>

<p:body width="98%">

	<p:title>
		<td class="caption"><strong>赠品配置基本信息：</strong></td>
	</p:title>

	<p:line flag="0" />

	<p:subBody width="100%">
		<p:class value="com.china.center.oa.product.bean.ProductVSGiftBean" />

		<p:table cells="1">

            <p:cell title="活动描述">
                <input type="text" name="activity" id="activity">
            </p:cell>

            <p:cell title="适用银行">
                <input type="text" name="bank" id="bank">
            </p:cell>

            <p:pro field="beginDate" />

            <p:pro field="endDate" />

			<p:pro field="productId" value="销售商品品名" innerString="size=60">
			     <input type="button" value="&nbsp;选择产品&nbsp;" name="qout1" id="qout1"
                    class="button_class" onclick="selectProduct()">&nbsp;
                 <input type="button" value="&nbsp;清 空&nbsp;" name="qout" id="qout"
                        class="button_class" onclick="clears()">&nbsp;&nbsp;
			</p:pro>

            <p:pro field="sailAmount" value="0" innerString="size=60 oncheck='isMathNumber'"/>

            <p:pro field="giftProductId" value="赠送商品品名" innerString="size=60">
                <input type="button" value="&nbsp;选择产品&nbsp;" name="qout1" id="qout1"
                       class="button_class" onclick="selectProduct()">&nbsp;
                <input type="button" value="&nbsp;清 空&nbsp;" name="qout" id="qout"
                       class="button_class" onclick="clears()">&nbsp;&nbsp;
            </p:pro>

            <p:pro field="amount" value="0" innerString="size=60 oncheck='isMathNumber'"/>
			
			<p:pro field="description" cell="0" innerString="rows=3 cols=55" />

		</p:table>
	</p:subBody>

	<p:line flag="1" />

	<p:button leftWidth="100%" rightWidth="0%">
		<div align="right"><input type="button" class="button_class" id="ok_b"
			style="cursor: pointer" value="&nbsp;&nbsp;确 定&nbsp;&nbsp;"
			onclick="addBean()"></div>
	</p:button>

	<p:message2/>
</p:body></form>
</body>
</html>

