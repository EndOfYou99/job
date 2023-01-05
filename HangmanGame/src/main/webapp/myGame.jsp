<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.UUID" %>
    <%@page import="java.util.ArrayList" %>
    <%@page import="java.util.HashMap" %>
        <%@page import="java.util.Set" %>
    <%@ page import="hangman.businessLogic.GameService" %>
     <%@ page import="hangman.businessLogic.GameBean" %>
<%@page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP</title>
</head>
<body>
<%
GameService gameRepo=(GameService)config.getServletContext().getAttribute("gameService");
%>
<%String stringId=""; %>
<%Set <String> urlParams=request.getParameterMap().keySet(); 
for(String name:urlParams){
	if(name.equals("id")){
	String value=request.getParameter(name);
	stringId=value;
	}
}
%>
<%UUID id=UUID.fromString(stringId); 
%>

<%System.out.println("This is my id:" + id);%>
<%GameBean myGame=gameRepo.getGame(id);%>
 <div is="game" align="center">
 
 <%if(myGame.getResult().equals("N")){%>
 
 <%System.out.println("My games current values are: " + gameRepo.toString()); %>

            
            <h3>Welcome to hangman game</h3>
            <h2>You have made <%=myGame.getTries()%> mistakes from total of <%=myGame.getMaxTries()%></h2>
            <h3>
                <b><%=myGame.getHiddenWord() %></b> 
                <sub>(<%=myGame.getHiddenWord().length()%>)</sub>
            </h3><br>
            <form action="Game" method="GET">
            <input type="hidden" name="id" value=<%=id %>>
            <input type="submit" name="letter" value="a">
            <input type="submit" name="letter" value="b">
            <input type="submit" name="letter" value="c">
            <input type="submit" name="letter" value="d">
            <input type="submit" name="letter" value="e">
            <input type="submit" name="letter" value="f">
            <input type="submit" name="letter" value="g">
            <input type="submit" name="letter" value="h">
            <input type="submit" name="letter" value="i">
            <input type="submit" name="letter" value="j">
            <input type="submit" name="letter" value="k">
            <input type="submit" name="letter" value="l">
            <input type="submit" name="letter" value="m">
            <input type="submit" name="letter" value="n">
            <input type="submit" name="letter" value="o">
            <input type="submit" name="letter" value="p">
            <input type="submit" name="letter" value="q">
            <input type="submit" name="letter" value="r">
            <input type="submit" name="letter" value="s">
            <input type="submit" name="letter" value="t">
            <input type="submit" name="letter" value="u">
            <input type="submit" name="letter" value="v">
            <input type="submit" name="letter" value="w">
            <input type="submit" name="letter" value="x">
            <input type="submit" name="letter" value="y">
            <input type="submit" name="letter" value="z">
            
            </form>
            <%=myGame.getUsedLetters() %> 
            <%System.out.println(myGame.getUsedLetters()); %>
   
            <%}else if (myGame.getResult().equals("W")){ %>
            You win!
            <%}else if (myGame.getResult().equals("L")){ %>
            You lose!
            <br>
            The word was: <%=myGame.getWord()%>
            <div align="left">
_____ <br>
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|   <br>
| &nbsp;&nbsp;&nbsp;@   <br>
|   &nbsp;&nbsp;&nbsp;/|\<br>
|   &nbsp;&nbsp;&nbsp;/&nbsp;\<br>   
|______<br> 
            </div>
            <%} %>
            
            
            
            
 

 
 </div>
</body>

</html>