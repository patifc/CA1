<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">


    <table id="results" border="1" class="indent table-hover">
	<thead>
	<tr>
        <th colspan="6"> Dogs Selection </th>
        </tr>
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

	  <xsl:for-each select="/puppyListing/puppy">
	  	<tr>
	  		<td align="right" colspan="6">
              <xsl:value-of select="name" />
              </td>
             
            <button type="button" class="btn btn-outline-success btn-sm">Adopt</button>
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

        </tbody>
    </table>
    
   

    
</xsl:template>
</xsl:stylesheet>




