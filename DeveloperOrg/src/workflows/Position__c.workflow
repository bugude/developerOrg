<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Position_Type</fullName>
        <field>Position_Type__c</field>
        <literalValue>Part Time</literalValue>
        <name>Position Type</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Position Rule</fullName>
        <actions>
            <name>Position_Type</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 OR 2</booleanFilter>
        <criteriaItems>
            <field>Position__c.Duration__c</field>
            <operation>greaterThan</operation>
            <value>10</value>
        </criteriaItems>
        <criteriaItems>
            <field>Position__c.Position_Type__c</field>
            <operation>equals</operation>
            <value>Temp</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
