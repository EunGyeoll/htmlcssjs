<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style type = "text/css">
		
				*{
					margin:0px;
					padding:0px;
				}
			#wrapper {
				border: 1px solid black;
			} 
			
			header {
				border: 1px solid red;
				background-color: darkgray;
				padding: 30px;
				text-align: center;
				font-size: 2em;
				color: white;
				
			}
			
			section {
				border: 1px solid green;
				height: 300px;
			}
			
			footer {
				clear: both;
				border: 1px solid blue;
				padding:10px;
				text-align: center;
				}
			
			nav {
				float: left;
				width: 30%;
				height:100%;
				border: 1px solid yellow;
				box-sizing: border-box;
				background-color: orange;
				padding: 20px;
			}

			
			article {
				float: left;
				left: 70%;
				heght: 100%;
				box-sizing: border-box;
				border: 1px solid yellow;
				
			}
		</style>
	</head>
	
	<body>
	    <div id="wrapper">
        <header>
            <h2>Cities</h2>
        </header>

        <section>
            <nav>
                <ul>
                    <li><a href="#">London</a></li>
                    <li><a href="#">Paris</a></li>
                    <li><a href="#">Seoul</a></li>
                </ul>
            </nav>
            <article>
                <h1>London</h1>
                <p>London is the capital city of England. It is the most populous city in the  United Kingdom, with a metropolitan area of over 13 million inhabitants.</p>
                <p>Standing on the River Thames, London has been a major settlement for two millennia, its history going back to its founding by the Romans, who named it Londinium.</p>
            </article>
        </section>

        <footer>
            <p>Footer</p>
        </footer>
    </div>
		
	</body>
</html>