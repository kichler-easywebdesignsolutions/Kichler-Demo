<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Propel_Accessory_Fill_in_Unique</fullName>
        <field>KPLM_Unique_Combination__c</field>
        <formula>KPLM_Combination_Formula__c</formula>
        <name>Propel - Accessory - Fill in Unique</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Propel - Accessory - Uniqueness Requirement</fullName>
        <actions>
            <name>Propel_Accessory_Fill_in_Unique</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>KPLM_Accessory__c.KPLM_Combination_Formula__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
