<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>ContactEmail</fullName>
        <description>ContactEmail</description>
        <protected>false</protected>
        <recipients>
            <recipient>b.r.lakshman@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SUPPORTSelfServiceNewUserLoginInformationSAMPLE</template>
    </alerts>
    <rules>
        <fullName>ServerPingChange</fullName>
        <actions>
            <name>ContactEmail</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <formula>1 = 1</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
