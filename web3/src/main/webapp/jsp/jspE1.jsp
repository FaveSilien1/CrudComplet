<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Entrez votre saisie</title>
</head>
<body>
<form action="info" method="post">
<jsp:useBean id="personne" class="fr.formation.inti.entity.Employee"></jsp:useBean> 

        <input type="text" placeholder="login" name="login">
        
        <input type="text" placeholder="password" name="password">
        
        <button type="submit" >Envoyer</button>
     
     
     

        
      
       
  </form>
</body>
</html>