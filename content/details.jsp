<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<!doctype html>
<html lang="en">
<!-- InstanceBegin template="/Templates/bookstore.dwt" codeOutsideHTMLIsLocked="false" -->

<head>
	<meta charset="UTF-8">
	<!-- InstanceBeginEditable name="doctitle" -->
	<title>详细内容</title>
	<!-- InstanceEndEditable -->
	<link href="style.css" rel="stylesheet" type="text/css">
	<meta name="author" content="张树明">
	<meta name="keywords" content="书店,一间书店,图书">
	<meta name="description" content="一间书店是一个销售书籍的网上书店。">
	<meta name="robots" content="index,follow">
	<script type="text/javascript" src="./details.js"></script>
	<!-- InstanceBeginEditable name="head" -->
	<!-- InstanceEndEditable -->
</head>

<body>
	<!--页眉-->
	<div id="header-wrapper">
		<!--网站logo-->
		<header class="container">
			<div id="logo">
				<a href="./index.html">
					<h1>一间书店</h1>
				</a>
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
					<li><a href="./index.html">首页</a></li>
					<li>
						<a href="category.html">书籍分类</a>
						<ul>
							<li><a href="#">编程语言</a></li>
							<li>
								<a href="#">数据库</a>
							</li>
							<li>
								<a href="#">图形图像</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="specials.html">特刊降价</a>
					</li>
					<li>
						<a href="contact.html">联系我们</a>
					</li>
					<li>
						<a href="about.html">关于我们</a>
					</li>
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
			<section>
				<h2 class="bookname">《HTML与XHTML权威指南》</h2>
				<section class="title-bar">
					<p>分享到：</p>
					<div class="bdsharebuttonbox">
						<a href="#" class="bds_more" data-cmd="more"></a>
						<a href="#" class="bds_qzone" data-cmd="qzone"></a>
						<a href="#" class="bds_tsina" data-cmd="tsina"></a>
						<a href="#" class="bds_tqq" data-cmd="tqq"></a>
						<a href="#" class="bds_renren" data-cmd="renren"></a>
						<a href="#" class="bds_weixin" data-cmd="weixin"></a>
					</div>
					<!-- <script>window._bd_share_config = { "common": { "bdSnsKey": {}, "bdText": "", "bdMini": "2", "bdPic": "", "bdSize": "0", "bdSize": "16" }, "share": {}, "image": { "viewList": "16" }, "selectShare": { "bdContainerClass": null, "bdSelectMiniList": ["qzone", "tsina", "tqq", "renren", "weixin"] } }; with (document) 0[(getElementsByTagName('head')[0] || body).appendChild(createElement('script')).src = 'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=' + ~(-newData() / 36e5)];</script> -->
				</section>
				<section class="infobook">
					<img src="../images/prod1.jpg" alt="">
					<div class="infobookt">
						<h3>《HTML与CSS权威指南》</h3>
						<ul>	
							<%= ￥book.price_current%>
							<li>一间价：￥63:00</li>
							<li>定价：<del>￥75.00</del></li>
							<li>库存：<strong>暂时缺货</strong></li>
							<li>作者：（美）慕西亚诺 著，张洪涛，邢璐 译</li>
							<li>出版社：清华大学出版社</li>
							<li>出版时间：2007-4-1</li>
							<li>页数：661，字数：920000</li>
							<li>纸张：胶版纸</li>
							<li>ISBN：9787302146933</li>
							<li>包装：平装</li>
						</ul>
						<div><a href="accordion.html" class="more">试读</a>&nbsp;
							<a href="cart.html" class="cart">加入购物车</a>
						</div>
						</dit>
				</section>
				<section class="infobookc">
					<h3>编辑推荐</h3>
					<p>本书的读者对象是任何对学习web语言感兴趣的读者，包括一般的使用者和专业网页设计人员。</p>
					<h3>内容简介</h3>
					<p>作为一本权威指南，本书涵盖了最完整的指南和实战经验。本书是最新的第六版，新增加了对XHTML2和CSS3的介绍。</p>
					<h3>作者简介</h3>
					<p>慕西亚诺，在1982年从佐治亚理工学院计算机科学系获得了学士学位。在1997年，他荣盛为American KennelClub的首席。</p>
				</section>
			</section>
			<section class="context">
				<h5>相关阅读</h5>
				<p>
					<span>上一篇：</span><a href="#">《JavaScript权威指南》</a>
					<span>下一篇：</span><a href="#">《HTML5+CSS3从入门到精通》</a>
				</p>
			</section>

			<!-- InstanceEndEditable -->
		</article>
		<!--右边边栏区-->
		<aside>
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
								<a title="查令十字街84号" href="#"><img width="80" height="80"
										src="../images/selling1.jpg"></a>
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
								<a title="分享经济 供给侧改革的新经济方案" href="#"><img width="80" height="80"
										src="../images/selling2.jpg"></a>
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
			</section>
			<!--合作伙伴-->
			<section class="aside-section">
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
				<a href="./index.html">首页</a> <a href="about.html">关于我们</a> <a href="#">服务条款</a> <a href="#">隐私策略</a> <a
					href="#">联系我们</a>
			</section>
		</footer>
	</div>
	<p id="test">hello</p>
</body>
<!-- InstanceEnd -->

</html>