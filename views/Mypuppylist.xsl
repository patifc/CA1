<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">

	<html> 
		<head>
			<title> Puppy's Adoption </title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
       <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
                <script src="views/Mypuppylist.js"></script>
               <script>
			        window.addEventListener("load", function() {
                        
                        
			            document.querySelector("#button").addEventListener("click", function() {
			                document.forms[0].txtAdoptPuppy.value = calculateBill('puppylist');
			            });
			            document.querySelector("#button").addEventListener("click", function() {
			                highlightAvailable('puppylist', this.checked);
			            });
                    });
                    
                    
			    </script>

</head>
	<body>
    <h1> My puppy's Adoption</h1>
    <h2>
         <img src="https://cdn-04.independent.ie/regionals/newrossstandard/lifestyle/article38571541.ece/70abc/AUTOCROP/w620/2019-10-08_wex_53943643_I1.JPG" width="100" height="100"></img>
    </h2>
    <h3> Select your puppy from the list below. To check if it still available, click the Adopte this puppy button.</h3>
    <table id="puppylist" border="1" class="indent table-hover table-sm">
	<thead>
	<tr>
      <th>Name</th>
      <th> Dog </th>
      <th>Description</th>
	  <th>Breed</th>
	  <th>Age</th>
	  <th>Sex</th>	
 
	  </tr>	
	</thead>
	 	
     <tbody>

	  <xsl:for-each select="puppyListing/puppy">
	  	<tr>
              
	  		<td align="right">
              <xsl:value-of select="name" />
             
            <button type="button" class="btn btn-outline-success btn-sm">Adopt</button>
            
             </td>
             <td>
            
              <xsl:variable name="link" select="img" />
              <img src="{$link}" width="100" height="100" /> 
               
         </td>	
	  	<td>
	  		<xsl:value-of select="description" />
        </td>
	  	<td align="right">
	  		<xsl:value-of select="breed" />
	  	</td>
	  	<td>
	  		<xsl:value-of select="age" />
	  	</td>

	  	<td>
	  	 <xsl:value-of select="sex" />
          </td>
          
	  </tr>
    </xsl:for-each>
    <!--> <script type="text/javascript" src="Mypuppylist.js"></script>>-->
        </tbody>
    </table>
    <form class="indent">
    </form>
    </body>
	</html>
    
</xsl:template>
</xsl:stylesheet>




