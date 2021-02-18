<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Status_To_In_Progress</fullName>
        <field>KPLM_Status__c</field>
        <literalValue>In Progress</literalValue>
        <name>Status To In Progress</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <outboundMessages>
        <fullName>Request_to_Jitterbit</fullName>
        <apiVersion>50.0</apiVersion>
        <endpointUrl>https://api-kichler.jitterbit.net/OnPremQA/1.0/extracts</endpointUrl>
        <fields>Id</fields>
        <fields>Name</fields>
        <includeSessionId>false</includeSessionId>
        <integrationUser>ratluri@kichler.com</integrationUser>
        <name>Request to Jitterbit</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>Run Jitterbit Request</fullName>
        <actions>
            <name>Status_To_In_Progress</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Request_to_Jitterbit</name>
            <type>OutboundMessage</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>KPLM_Jitterbit_Process__c.KPLM_Status__c</field>
            <operation>equals</operation>
            <value>New</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
