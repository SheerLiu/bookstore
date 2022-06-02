<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ page import="java.util.*,bookstore.Book"%> 
<!doctype html>
<html lang="en"><!-- InstanceBegin template="/Templates/bookstore.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
	<meta charset="UTF-8">
	<!-- InstanceBeginEditable name="doctitle" -->
	<title>购物车</title>
	<!-- InstanceEndEditable -->
	<link href="style.css" rel="stylesheet" type="text/css">
	<meta name="author" content="张树明">
	<meta name="keywords" content="书店,一间书店,图书">
	<meta name="description" content="一间书店是一个销售书籍的网上书店。">
	<meta name="robots" content="../index,follow">
    <!-- InstanceBeginEditable name="head" --><!-- InstanceEndEditable -->
</head>
<body>
	<!--页眉-->
	<div id="header-wrapper">
		<!--网站logo-->
		<header class="container">
			<div id="logo">
				<a href="./index.html"><h1>一间书店</h1></a>
			</div>
			<div id="search">
				<form action="./index.html" method="get">
					<input type="search" placeholder="站内搜索"><input type="submit" value="搜索">
				</form>
			</div>
		</header>
		<!--导航菜单-->
		<div id="nav">
			<nav class="container">
				<ul>
					<li><a href="./index.html">首页</a></li><li>
					<a href="category.html">书籍分类</a>
					<ul>
						<li><a href="#">编程语言</a></li><li>
						<a href="#">数据库</a></li><li>
						<a href="#">图形图像</a></li>
					</ul>
				</li><li>
					<a href="specials.html">特刊降价</a></li><li>
					<a href="contact.html">联系我们</a></li><li>
					<a href="about.html">关于我们</a></li>
				</ul>
				<div id="menu-logo">
					<a href="cart.html">购物车</a>
				</div>
			</nav>
		</div>
	</div>
	<!--内容-->
	<div id="content-wrapper" class="container">
		<!--左边内容区-->
		<article>
	    <!-- InstanceBeginEditable name="EditRegion3" -->
		<section class="cartt"><h2 id="title8">购物车</h2>
		<table class="cart-table">
			<tr class="cart-title">
				<th colspan="2">名称</th>
				<th>单价</th>
				<th>数量</th>
				<th>合计</th>
			</tr>
<%List<Book> allbook=(List<Book>)request.getAttribute("books");%> 
<%double all=0.0;%> 
			<tr>
<%for(int i=0;i<allbook.size();i++){%>
		<td class="td-center"><a href="details.jsp?<%=allbook.get(i).getbookname()%>"><img src="../<%=allbook.get(i).getimage_path()%>" alt="封面"/></a></td>
				<td><h3><%=allbook.get(i).getbookname()%></h3></td>
				<td class="td-right"><%=allbook.get(i).getprice_current()%></td>
				<td class="td-right">1</td>
				<td class="td-right"><%=allbook.get(i).getprice_current()%></td>
<%all=all+allbook.get(i).getprice_current();%> 
			</tr>
<%}%>

			<tr class="cart-total"> 
				<td colspan="5" class="td-right">3件商品总价（不含运费）：￥<%=all%><a href="#">去结算</a></td>
			</tr>
		</table>
	</section>
		
	    <!-- InstanceEndEditable -->		
		</article><!--右边边栏区--><aside>
			<!--广告区-->
			<section id="advert">
				<a href="#"><img src="../images/ad1.jpg" alt="广告"></a>
				<a href="#"><img src="../images/ad2.jpg" alt="广告"></a>
				<a href="#"><img src="../images/ad3.jpg" alt="广告"></a>
			</section>
			<!--畅销图书-->
			<section id="best-selling">
				<h2 id="title7">畅销图书</h2>
				<ul>
					<li><a class="selling" href="#">查令十字街84号</a>
						<div class="curr">
							<div class="p-img">
								<a title="查令十字街84号" href="#"><img width="80" height="80" src="../images/selling1.jpg"></a>
							</div>
							<div class="p-name">
								<a title="查令十字街84号" href="#">查令十字街84号</a>
								<strong>￥43.50</strong>
								<del>￥52.00</del>
							</div>
						</div>
					</li>
					<li><a class="selling" href="#">分享经济 供给侧改革的新经济方案</a>
						<div class="curr">
							<div class="p-img">
								<a title="分享经济 供给侧改革的新经济方案" href="#"><img width="80" height="80" src="../images/selling2.jpg"></a>
							</div>
							<div class="p-name">
								<a title="分享经济 供给侧改革的新经济方案" href="#">分享经济 供给侧改革的新经济方案</a>
								<strong>￥43.50</strong>
								<del>￥52.00</del>
							</div>
						</div>
					</li>
				</ul>
			</section>
			<!--图书分类-->
			<section class="aside-section">
				<h2 id="title4">图书分类</h2>
				<ul>
					<li><a href="category.html">编程语言</a></li>
					<li><a href="category.html">数据库</a></li>
					<li><a href="category.html">图形图像</a></li>
					<li><a href="category.html">网页制作</a></li>
					<li><a href="category.html">考试认证</a></li>
				</ul>
			</section><!--合作伙伴--><section class="aside-section">
				<h2 id="title5">合作伙伴</h2>
				<ul>
					<li><a href="#">中国电子商务研究中心</a></li>
					<li><a href="#">清华大学出版社</a></li>
					<li><a href="#">中国人民大学出版社</a></li>
					<li><a href="#">中国社会科学出版社</a></li>
				</ul>
			</section>
			<!--关于书店-->
			<section class="about">
				<h2 id="title6">关于书店</h2>
				<img src="../images/about.gif" alt="一间书店">
				<p>一间书店成立于2022.5.29日。是专业技术实践课程的大作业项目。</p>
			</section>
		</aside>
</div>
	<!--页脚-->
	<div id="footer-wrapper">
		<!--页脚导航-->
		<footer class="container">
			<section>
				<a href="./index.html">首页</a> <a href="about.html">关于我们</a> <a href="#">服务条款</a> <a href="#">隐私策略</a> <a href="#">联系我们</a>
			</section>
		</footer>
	</div>
</body>
<!-- InstanceEnd --></html>