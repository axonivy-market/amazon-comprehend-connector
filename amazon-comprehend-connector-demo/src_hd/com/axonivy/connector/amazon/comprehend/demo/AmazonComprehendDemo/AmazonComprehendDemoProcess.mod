[Ivy]
17B2B1D02955EE2C 9.3.0 #module
>Proto >Proto Collection #zClass
As0 AmazonComprehendDemoProcess Big #zClass
As0 RD #cInfo
As0 #process
As0 @AnnotationInP-0n ai ai #zField
As0 @TextInP .type .type #zField
As0 @TextInP .processKind .processKind #zField
As0 @TextInP .xml .xml #zField
As0 @TextInP .responsibility .responsibility #zField
As0 @UdInit f0 '' #zField
As0 @UdProcessEnd f1 '' #zField
As0 @PushWFArc f2 '' #zField
As0 @UdEvent f3 '' #zField
As0 @CallSub f7 '' #zField
As0 @CallSub f4 '' #zField
As0 @UdProcessEnd f5 '' #zField
As0 @PushWFArc f8 '' #zField
As0 @UdEvent f11 '' #zField
As0 @PushWFArc f6 '' #zField
As0 @PushWFArc f9 '' #zField
As0 @UdProcessEnd f10 '' #zField
As0 @PushWFArc f12 '' #zField
>Proto As0 As0 AmazonComprehendDemoProcess #zField
As0 f0 guid 17B2B1D029B84942 #txt
As0 f0 method start() #txt
As0 f0 inParameterDecl '<> param;' #txt
As0 f0 inParameterMapAction 'out.languageCode="en";
out.text="John Smith from Austria is buying a new car.";
' #txt
As0 f0 outParameterDecl '<> result;' #txt
As0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
As0 f0 83 51 26 26 -20 15 #rect
As0 f1 603 51 26 26 0 12 #rect
As0 f2 109 64 603 64 #arcP
As0 f3 guid 17B2B1D02A5A1833 #txt
As0 f3 actionTable 'out=in;
' #txt
As0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>detectSentiment</name>
    </language>
</elementInfo>
' #txt
As0 f3 83 147 26 26 -40 16 #rect
As0 f7 processCall amazon-comprehend/DetectEntities:call(com.axonivy.connector.amazon.comprehend.entities.DetectEntitiesRequest) #txt
As0 f7 requestActionDecl '<com.axonivy.connector.amazon.comprehend.entities.DetectEntitiesRequest request> param;' #txt
As0 f7 requestMappingAction 'param.request.languageCode=in.languageCode;
param.request.text=in.text;
' #txt
As0 f7 responseMappingAction 'out=in;
out.detectEntities=result.response;
out.detection="entities";
' #txt
As0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>amazon-comprehend/DetectEntities</name>
    </language>
</elementInfo>
' #txt
As0 f7 260 232 248 48 -112 -7 #rect
As0 f4 processCall amazon-comprehend/DetectSentiment:call(com.axonivy.connector.amazon.comprehend.sentiment.DetectSentimentRequest) #txt
As0 f4 requestActionDecl '<com.axonivy.connector.amazon.comprehend.sentiment.DetectSentimentRequest detectSentiment> param;' #txt
As0 f4 requestMappingAction 'param.detectSentiment.languageCode=in.languageCode;
param.detectSentiment.text=in.text;
' #txt
As0 f4 responseMappingAction 'out=in;
out.detectSentiment=result.response;
out.detection="sentiment";
' #txt
As0 f4 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>amazon-comprehend/DetectSentiment</name>
    </language>
</elementInfo>
' #txt
As0 f4 256 136 256 48 -120 -7 #rect
As0 f5 603 147 26 26 0 12 #rect
As0 f8 512 160 603 160 #arcP
As0 f11 guid 17B2B298F11EDE1F #txt
As0 f11 actionTable 'out=in;
' #txt
As0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>detectEntities</name>
    </language>
</elementInfo>
' #txt
As0 f11 83 243 26 26 -44 18 #rect
As0 f6 109 160 256 160 #arcP
As0 f9 109 256 260 256 #arcP
As0 f10 603 243 26 26 0 12 #rect
As0 f12 508 256 603 256 #arcP
>Proto As0 .type com.axonivy.connector.amazon.comprehend.demo.AmazonComprehendDemo.AmazonComprehendDemoData #txt
>Proto As0 .processKind HTML_DIALOG #txt
>Proto As0 -8 -8 16 16 16 26 #rect
As0 f0 mainOut f2 tail #connect
As0 f2 head f1 mainIn #connect
As0 f4 mainOut f8 tail #connect
As0 f8 head f5 mainIn #connect
As0 f3 mainOut f6 tail #connect
As0 f6 head f4 mainIn #connect
As0 f11 mainOut f9 tail #connect
As0 f9 head f7 mainIn #connect
As0 f7 mainOut f12 tail #connect
As0 f12 head f10 mainIn #connect
