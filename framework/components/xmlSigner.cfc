<cfcomponent>
    <cfset this.name = "xmlSigner">
    
    <cffunction name="signXMLRequest" access="public" returntype="string">
        <cfargument name="xmlRequest" type="string" required="true">
        
        <!--- Add your XML signing algorithm here --->
        
        <cfreturn signedXMLRequest>
    </cffunction>
</cfcomponent>