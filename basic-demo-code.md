# Pure HTML
```
 	<div>
 		<h2>HTML</h2>
 		<ul>
 			<li>Stands for Hyper Text Markup Language</li>
 			<li>Lots of tags
 				<ol>
 					<li>Doctype</li>
 					<li>HTML</li>
 					<li>Head
 						<ol>
 							<li>Title</li>
 						</ol>
 					</li>
 					<li>Body</li>
 				</ol>
 			</li>
 			<li>Headings</li>
 			<li>Paragraph</li>
 			<li><em>em</em></li>
 			<li><strong>strong</strong></li>
 		</ul>
<!--  		<a href="http://www.google.com">
 			<img src="https://images.pexels.com/photos/7720/night-animal-dog-pet.jpg?h=350&auto=compress&cs=tinysrgb" >
 		</a> -->
 	</div>
 	<div>
 		<table border="1">
 			<thead>
 				<tr>
 					<th>Name</th>
 					<th>Age</th>
 				</tr>
 			</thead>
 			<tbody>
 				<tr>
 					<td>Jane</td>
 					<td>21</td>
 				</tr>
 				<tr>
 					<td>Mike</td>
 					<td>18</td>
 				</tr>
 				<tr></tr>
 			</tbody>
 		</table>
 	</div>
 	<div>
 		<h1>Register</h1>
 		<form>
 			<label for="first_name">First Name:</label>
 			<input type="text" name="first_name" id="first_name" placeholder="John" required>
 			<label for="last_name">Last Name:</label>
 			<input type="text" name="last_name" id="last_name" placeholder="Smith" required>
 			<br>
 			<label for="male">Male:</label>
 			<input type="radio" id="male" name="gender" value="male">	
 			<label for="female">Female:</label>
 			<input type="radio" id="female" name="gender" value="female">	
 			<label for="other">Other:</label>
 			<input type="radio" id="other" name="gender" value="other">	
 			<br>
 			<label>Email:
 				<input type="email" name="email" placeholder="your email" required>
 			</label>
 			<label>Password:
 				<input type="password" name="password" placeholder="your password" pattern=".{5,10}" title="Password has to be 5 to 10 characters" required>
 			</label>
 			<br>
 			<label>Birthday:
 				<div>
 					<select name="month">
 						<option>Month</option>
 						<option>January</option>
 					</select>
 					<select name="day">
 						<option>Day</option>
 						<option>01</option>
 					</select>
 					<select name="year">
 						<option>Year</option>
 						<option>1900</option>
 					</select>
 				</div>
 			</label>
 			<label for="agreement">I agree to the terms and conditions</label>
 			<input type="checkbox" id="agreement" required>

 			<button>Submit</button>
 		</form>
 	</div>

 	<div id="testdiv">
 		<p>This is to test CSS</p>
 		<!-- <p class="class-selector">This is to test CSS</p> -->
 		<!-- <p id="id-selector" class="class-selector">This is to test CSS</p> -->
 		<p id="testp" class="class1 class2">Classes</p>
 	</div>
 </body>
```

# CSS
### Tic Tac Toe - HTML
```
 	<!-- Tic Tac Toe -->
 	<div>
 		<h1 id="ttt-title">Tic Tac Toe Board</h1>
 		<table id="ttt-table">
 			<tr>
 				<td></td>
 				<td class="vertical"></td>
 				<td></td>
 			</tr>
 			<tr>
 				<td class="horizontal"></td>
 				<td class="vertical horizontal"></td>
 				<td class="horizontal"></td>
 			</tr>
 			<tr>
 				<td></td>
 				<td class="vertical"></td>
 				<td></td>
 			</tr>
 		</table>

 	</div>
```
### Tic Tac Toe - CSS
```
/*Tic Tac Toe*/

td {
	margin: 0;
	padding: 0;
	height:100px;
	width:100px;
	border-color: black;
}

.vertical {
	border-left: 2px solid;
	border-right: 2px solid;
}

.horizontal {
	border-top: 2px solid;
	border-bottom: 2px solid;
}

#ttt-title {
	text-align: center;
}

#ttt-table {
	margin: auto;
}
```

### Photo blog - HTML
```
 	<!-- Photo blog -->
 	<h1 id="blog-title">Stories that you'll never know</h1>
 	<div id="photo-blog-div">
 		<img src="https://ae01.alicdn.com/kf/HTB19yWtIVXXXXcaXpXXq6xXFXXXJ/Diamond-painting-Diy-Diamond-embroidery-scenery-square-Diamond-mosaic-pasted-Cross-stitch-Craft-Needlework-Eiffel-tower.jpg_640x640.jpg">

 		<img src="https://ae01.alicdn.com/kf/HTB1ZSekKFXXXXcAXVXXq6xXFXXXG/princess-girl-5d-diy-diamond-painting-cross-stitch-scenery-full-square-diamond-embroidery-rhinestones-painting-landscape.jpg_640x640.jpg">

 		<img src="http://read.html5.qq.com/image?src=forum&q=5&r=0&imgflag=7&imageUrl=http://mmbiz.qpic.cn/mmbiz_jpg/fAv6yhWCqSps7ozKW1sX26gQYLQIaXNPcaLKCgCj6AVia7BoiaZbu26ThtmQ0ibHsen4Dv4fRET4HERs9kM0uOx5g/0?wx_fmt=jpeg">

 		<img src="http://read.html5.qq.com/image?src=forum&q=5&r=0&imgflag=7&imageUrl=http://mmbiz.qpic.cn/mmbiz_jpg/fAv6yhWCqSps7ozKW1sX26gQYLQIaXNPbXq3uQG65PSu4MqiaZfffRibHs5UtPGPBjCROUicIPdXbEL0hATrOeticg/0?wx_fmt=jpeg">

 		<img src="http://read.html5.qq.com/image?src=forum&q=5&r=0&imgflag=7&imageUrl=http://mmbiz.qpic.cn/mmbiz_jpg/fAv6yhWCqSps7ozKW1sX26gQYLQIaXNPLAibtAjMnQiafUibR2qLiah2PczMRe8VyJbqak53oUYtjzKNlEN0VBEfgw/0?wx_fmt=jpeg">

 		<img src="http://read.html5.qq.com/image?src=forum&q=5&r=0&imgflag=7&imageUrl=http://mmbiz.qpic.cn/mmbiz_jpg/fAv6yhWCqSps7ozKW1sX26gQYLQIaXNP2EfdXicCWgiarbmddOdaDicV06aE01H4QbP4YljGBWpibxWm1YiczySvic4g/0?wx_fmt=jpeg">

 	</div>
```
### Photo blog - CSS
```
/*Photo blog*/
#blog-title {
	font-family: raleway, sans-serif;;
	margin-left: 1.66%;
	text-transform: uppercase; 
	padding-bottom: 20px;
	border-bottom: 3px solid lightgrey;
	width: 30%;
}

#photo-blog-div img {
	width: 30%;
	filter: grayscale(100%);
	float: left;
	margin: 1.66%;
}

#photo-blog-div img:hover {
	opacity: 0.6;
}
```

### Word blog - HTML
```
 	<!-- Word blog -->
 	<div id="word-blog-div">

 		<div class="blog-post">
 			<p class="word-blog-date">December 23, 2016</p>
 			<h2 class="word-blog-title">What is Lorem Ipsum?</h2>
 			<p class="word-blog-content">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
 			<p class="word-blog-content">"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p>
 		</div>

 		<hr class="line"></hr>
 		<div class="blog-post">
 			<p class="word-blog-date">January 15, 2017</p>
 			<h2 class="word-blog-title">Why do we use it?</h2>
 			<p class="word-blog-content">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>
 			<p class="word-blog-content">"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains."</p>
 		</div>

 	</div>
```

### Word blog - CSS
```
/*Normal blog*/
#word-blog-div {
	border: 20px solid grey;
	padding: 20px;
	width:70%;
	margin: 20px auto;
}

.word-blog-date {
	font-size: 20px;
	color: #1199CC;
	font-family: 'Oswald', sans-serif;
	text-transform: uppercase;
	letter-spacing: 0.3rem;
}

.word-blog-title {
	color: #4444CC;
	font-family: 'Oswald', sans-serif;
}

.word-blog-content {
	font-size: 20px;
	font-family: raleway, sans-serif;
	font-weight: 500;
}

.line {
	width: 95%;
	color: grey;
	opacity: 0.5;
	margin: auto;
}
```
