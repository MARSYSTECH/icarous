<?xml version="1.0" encoding="UTF-8"?><PlexilPlan xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:tr="extended-plexil-translator" FileName="repeat2.ple"><GlobalDeclarations LineNo="2" ColNo="8"><StateDeclaration LineNo="2" ColNo="8"><Name>x</Name><Return><Name>_return_0</Name><Type>Integer</Type></Return></StateDeclaration><CommandDeclaration LineNo="3" ColNo="0"><Name>foo</Name></CommandDeclaration></GlobalDeclarations><Node NodeType="NodeList" epx="Sequence" LineNo="7" ColNo="2"><NodeId>repeat2</NodeId><EndCondition><NENumeric><LookupOnChange><Name><StringValue>x</StringValue></Name></LookupOnChange><IntegerValue>0</IntegerValue></NENumeric></EndCondition><InvariantCondition><NOT><AND><EQInternal><NodeOutcomeVariable><NodeRef dir="child">Wrapper1</NodeRef></NodeOutcomeVariable><NodeOutcomeValue>FAILURE</NodeOutcomeValue></EQInternal><EQInternal><NodeStateVariable><NodeRef dir="child">Wrapper1</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></AND></NOT></InvariantCondition><NodeBody><NodeList><Node NodeType="NodeList" epx="Sequence" LineNo="10" ColNo="4"><NodeId>Wrapper1</NodeId><InvariantCondition><NOT><AND><EQInternal><NodeOutcomeVariable><NodeRef dir="child">Wrapper2</NodeRef></NodeOutcomeVariable><NodeOutcomeValue>FAILURE</NodeOutcomeValue></EQInternal><EQInternal><NodeStateVariable><NodeRef dir="child">Wrapper2</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></AND></NOT></InvariantCondition><NodeBody><NodeList><Node NodeType="NodeList" epx="Sequence" LineNo="11" ColNo="6"><NodeId>Wrapper2</NodeId><InvariantCondition><NOT><AND><EQInternal><NodeOutcomeVariable><NodeRef dir="child">FooCall</NodeRef></NodeOutcomeVariable><NodeOutcomeValue>FAILURE</NodeOutcomeValue></EQInternal><EQInternal><NodeStateVariable><NodeRef dir="child">FooCall</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></AND></NOT></InvariantCondition><NodeBody><NodeList><Node NodeType="Command" LineNo="12" ColNo="8"><NodeId>FooCall</NodeId><RepeatCondition><BooleanValue>true</BooleanValue></RepeatCondition><NodeBody><Command><Name><StringValue>foo</StringValue></Name></Command></NodeBody></Node></NodeList></NodeBody></Node></NodeList></NodeBody></Node></NodeList></NodeBody></Node></PlexilPlan>