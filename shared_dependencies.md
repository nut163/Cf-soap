Shared dependencies between the generated files:

1. framework/modules/soap.cfc:
   - None

2. framework/modules/xml.cfc:
   - None

3. framework/components/soapRequestGenerator.cfc:
   - framework/modules/soap.cfc
   - framework/modules/xml.cfc

4. framework/components/xmlSigner.cfc:
   - framework/modules/xml.cfc