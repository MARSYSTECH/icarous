<?xml version="1.0" encoding="UTF-8"?><PlexilPlan xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:tr="extended-plexil-translator" FileName="ArrayComplex.ple"><Node NodeType="NodeList" epx="Sequence" LineNo="4" ColNo="2"><NodeId>ArrayComplex</NodeId><VariableDeclarations><DeclareArray LineNo="3" ColNo="2"><Name>foo</Name><Type>Real</Type><MaxSize>4</MaxSize><InitialValue><RealValue>0.0</RealValue><RealValue>0.0</RealValue><RealValue>0.0</RealValue><RealValue>0.0</RealValue></InitialValue></DeclareArray><DeclareArray LineNo="4" ColNo="2"><Name>bar</Name><Type>Real</Type><MaxSize>30</MaxSize></DeclareArray></VariableDeclarations><InvariantCondition><NOT><OR><AND><EQInternal><NodeOutcomeVariable><NodeRef dir="child">Initialize</NodeRef></NodeOutcomeVariable><NodeOutcomeValue>FAILURE</NodeOutcomeValue></EQInternal><EQInternal><NodeStateVariable><NodeRef dir="child">Initialize</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></AND><AND><EQInternal><NodeOutcomeVariable><NodeRef dir="child">for__0</NodeRef></NodeOutcomeVariable><NodeOutcomeValue>FAILURE</NodeOutcomeValue></EQInternal><EQInternal><NodeStateVariable><NodeRef dir="child">for__0</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></AND></OR></NOT></InvariantCondition><NodeBody><NodeList><Node NodeType="NodeList" epx="For" LineNo="7" ColNo="14"><NodeId>Initialize</NodeId><VariableDeclarations><DeclareVariable LineNo="6" ColNo="19"><Name>i</Name><Type>Integer</Type><InitialValue><IntegerValue>0</IntegerValue></InitialValue></DeclareVariable></VariableDeclarations><NodeBody><NodeList><Node NodeType="NodeList" epx="aux"><NodeId>ep2cp_ForLoop</NodeId><SkipCondition><NOT><LT><IntegerVariable>i</IntegerVariable><IntegerValue>30</IntegerValue></LT></NOT></SkipCondition><RepeatCondition><BooleanValue>true</BooleanValue></RepeatCondition><NodeBody><NodeList><Node NodeType="Assignment" LineNo="7" ColNo="59"><NodeId>BarInit</NodeId><NodeBody><Assignment><ArrayElement><ArrayVariable>bar</ArrayVariable><Index><IntegerVariable>i</IntegerVariable></Index></ArrayElement><NumericRHS><RealValue>0.0</RealValue></NumericRHS></Assignment></NodeBody></Node><Node NodeType="Assignment" epx="LoopVariableUpdate"><NodeId>ep2cp_ForLoopUpdater</NodeId><StartCondition><EQInternal><NodeStateVariable><NodeRef dir="sibling">BarInit</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></StartCondition><NodeBody><Assignment><IntegerVariable>i</IntegerVariable><NumericRHS><ADD LineNo="7" ColNo="44"><IntegerVariable>i</IntegerVariable><IntegerValue>1</IntegerValue></ADD></NumericRHS></Assignment></NodeBody></Node></NodeList></NodeBody></Node></NodeList></NodeBody></Node><Node NodeType="NodeList" epx="For" LineNo="9" ColNo="2"><NodeId>for__0</NodeId><VariableDeclarations><DeclareVariable LineNo="8" ColNo="7"><Name>i</Name><Type>Real</Type><InitialValue><RealValue>0.0</RealValue></InitialValue></DeclareVariable></VariableDeclarations><StartCondition><EQInternal><NodeStateVariable><NodeRef dir="sibling">Initialize</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></StartCondition><NodeBody><NodeList><Node NodeType="NodeList" epx="aux"><NodeId>ep2cp_ForLoop</NodeId><SkipCondition><NOT><LT><RealVariable>i</RealVariable><RealValue>10.0</RealValue></LT></NOT></SkipCondition><RepeatCondition><BooleanValue>true</BooleanValue></RepeatCondition><NodeBody><NodeList><Node NodeType="NodeList" epx="Sequence" LineNo="17" ColNo="4"><NodeId>BLOCK__1</NodeId><InvariantCondition><NOT><OR><AND><EQInternal><NodeOutcomeVariable><NodeRef dir="child">SimpleArrayAssignment</NodeRef></NodeOutcomeVariable><NodeOutcomeValue>FAILURE</NodeOutcomeValue></EQInternal><EQInternal><NodeStateVariable><NodeRef dir="child">SimpleArrayAssignment</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></AND><AND><EQInternal><NodeOutcomeVariable><NodeRef dir="child">SimpleArrayAssignment2</NodeRef></NodeOutcomeVariable><NodeOutcomeValue>FAILURE</NodeOutcomeValue></EQInternal><EQInternal><NodeStateVariable><NodeRef dir="child">SimpleArrayAssignment2</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></AND><AND><EQInternal><NodeOutcomeVariable><NodeRef dir="child">SimpleArrayAssignment3</NodeRef></NodeOutcomeVariable><NodeOutcomeValue>FAILURE</NodeOutcomeValue></EQInternal><EQInternal><NodeStateVariable><NodeRef dir="child">SimpleArrayAssignment3</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></AND><AND><EQInternal><NodeOutcomeVariable><NodeRef dir="child">SimpleArrayAssignment4</NodeRef></NodeOutcomeVariable><NodeOutcomeValue>FAILURE</NodeOutcomeValue></EQInternal><EQInternal><NodeStateVariable><NodeRef dir="child">SimpleArrayAssignment4</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></AND></OR></NOT></InvariantCondition><NodeBody><NodeList><Node NodeType="Assignment" LineNo="17" ColNo="28"><NodeId>SimpleArrayAssignment</NodeId><NodeBody><Assignment><ArrayElement><ArrayVariable>foo</ArrayVariable><Index><IntegerValue>1</IntegerValue></Index></ArrayElement><NumericRHS><ADD LineNo="17" ColNo="44"><ArrayElement><ArrayVariable>foo</ArrayVariable><Index><IntegerValue>1</IntegerValue></Index></ArrayElement><RealValue>1.0</RealValue></ADD></NumericRHS></Assignment></NodeBody></Node><Node NodeType="Assignment" LineNo="18" ColNo="28"><NodeId>SimpleArrayAssignment2</NodeId><StartCondition><EQInternal><NodeStateVariable><NodeRef dir="sibling">SimpleArrayAssignment</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></StartCondition><NodeBody><Assignment><ArrayElement><ArrayVariable>bar</ArrayVariable><Index><IntegerValue>2</IntegerValue></Index></ArrayElement><NumericRHS><ADD LineNo="18" ColNo="44"><ArrayElement><ArrayVariable>bar</ArrayVariable><Index><IntegerValue>2</IntegerValue></Index></ArrayElement><RealValue>2.0</RealValue></ADD></NumericRHS></Assignment></NodeBody></Node><Node NodeType="Assignment" LineNo="19" ColNo="28"><NodeId>SimpleArrayAssignment3</NodeId><StartCondition><EQInternal><NodeStateVariable><NodeRef dir="sibling">SimpleArrayAssignment2</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></StartCondition><NodeBody><Assignment><ArrayElement><ArrayVariable>foo</ArrayVariable><Index><IntegerValue>3</IntegerValue></Index></ArrayElement><NumericRHS><ADD LineNo="19" ColNo="44"><ArrayElement><ArrayVariable>foo</ArrayVariable><Index><IntegerValue>3</IntegerValue></Index></ArrayElement><RealValue>3.0</RealValue></ADD></NumericRHS></Assignment></NodeBody></Node><Node NodeType="Assignment" LineNo="20" ColNo="28"><NodeId>SimpleArrayAssignment4</NodeId><StartCondition><EQInternal><NodeStateVariable><NodeRef dir="sibling">SimpleArrayAssignment3</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></StartCondition><NodeBody><Assignment><ArrayElement><ArrayVariable>bar</ArrayVariable><Index><IntegerValue>15</IntegerValue></Index></ArrayElement><NumericRHS><ADD LineNo="20" ColNo="46"><ArrayElement><ArrayVariable>bar</ArrayVariable><Index><IntegerValue>15</IntegerValue></Index></ArrayElement><RealValue>4.0</RealValue></ADD></NumericRHS></Assignment></NodeBody></Node></NodeList></NodeBody></Node><Node NodeType="Assignment" epx="LoopVariableUpdate"><NodeId>ep2cp_ForLoopUpdater</NodeId><StartCondition><EQInternal><NodeStateVariable><NodeRef dir="sibling">BLOCK__1</NodeRef></NodeStateVariable><NodeStateValue>FINISHED</NodeStateValue></EQInternal></StartCondition><NodeBody><Assignment><RealVariable>i</RealVariable><NumericRHS><ADD LineNo="9" ColNo="33"><RealVariable>i</RealVariable><IntegerValue>1</IntegerValue></ADD></NumericRHS></Assignment></NodeBody></Node></NodeList></NodeBody></Node></NodeList></NodeBody></Node></NodeList></NodeBody></Node></PlexilPlan>