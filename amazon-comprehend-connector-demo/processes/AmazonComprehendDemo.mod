[Ivy]
17B2A0940C6CF31C 9.3.1 #module
>Proto >Proto Collection #zClass
Ao0 AmazonComprehendDemo Big #zClass
Ao0 B #cInfo
Ao0 #process
Ao0 @AnnotationInP-0n ai ai #zField
Ao0 @TextInP .type .type #zField
Ao0 @TextInP .processKind .processKind #zField
Ao0 @TextInP .xml .xml #zField
Ao0 @TextInP .responsibility .responsibility #zField
Ao0 @EndTask f6 '' #zField
Ao0 @StartRequest f10 '' #zField
Ao0 @UserDialog f11 '' #zField
Ao0 @PushWFArc f12 '' #zField
Ao0 @PushWFArc f0 '' #zField
>Proto Ao0 Ao0 AmazonComprehendDemo #zField
Ao0 f6 441 65 30 30 0 18 #rect
Ao0 f10 outLink demo.ivp #txt
Ao0 f10 inParamDecl '<> param;' #txt
Ao0 f10 requestEnabled true #txt
Ao0 f10 triggerEnabled false #txt
Ao0 f10 callSignature demo() #txt
Ao0 f10 caseData businessCase.attach=true #txt
Ao0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>demo.ivp</name>
    </language>
</elementInfo>
' #txt
Ao0 f10 @C|.responsibility Everybody #txt
Ao0 f10 73 65 30 30 -25 17 #rect
Ao0 f11 dialogId com.axonivy.connector.amazon.comprehend.demo.AmazonComprehendDemo #txt
Ao0 f11 startMethod start() #txt
Ao0 f11 requestActionDecl '<> param;' #txt
Ao0 f11 responseMappingAction 'out=in;
' #txt
Ao0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>AmazonComprehendDemo</name>
    </language>
</elementInfo>
' #txt
Ao0 f11 164 56 216 48 -82 -7 #rect
Ao0 f12 103 80 164 80 #arcP
Ao0 f0 380 80 441 80 #arcP
>Proto Ao0 .type com.axonivy.connector.amazon.comprehend.connector.demo.Data #txt
>Proto Ao0 .processKind NORMAL #txt
>Proto Ao0 0 0 32 24 18 0 #rect
>Proto Ao0 @|BIcon #fIcon
Ao0 f10 mainOut f12 tail #connect
Ao0 f12 head f11 mainIn #connect
Ao0 f11 mainOut f0 tail #connect
Ao0 f0 head f6 mainIn #connect
