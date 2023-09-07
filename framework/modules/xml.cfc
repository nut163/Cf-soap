<cfcomponent>
    <cffunction name="generateXML" access="public" returntype="string">
        <cfargument name="data" type="struct" required="true">
        <cfset var xml = "" />
        
        <cfset xml = '<?xml version="1.0" encoding="UTF-8"?>' & chr(13) & chr(10) />
        <cfset xml &= '<soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">' & chr(13) & chr(10) />
        <cfset xml &= '    <soap:Body>' & chr(13) & chr(10) />
        <cfset xml &= '        <soap:Request>' & chr(13) & chr(10) />
        
        <cfloop collection="#data#" item="key">
            <cfset xml &= '            <' & key & '>' & data[key] & '</' & key & '>' & chr(13) & chr(10) />
        </cfloop>
        
        <cfset xml &= '        </soap:Request>' & chr(13) & chr(10) />
        <cfset xml &= '    </soap:Body>' & chr(13) & chr(10) />
        <cfset xml &= '</soap:Envelope>' & chr(13) & chr(10) />
        
        <cfreturn xml>
    </cffunction>
</cfcomponent>