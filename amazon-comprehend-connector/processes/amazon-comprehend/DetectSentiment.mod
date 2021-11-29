[Ivy]
17B2AA09321CBAD2 9.3.1 #module
>Proto >Proto Collection #zClass
Dt0 DetectSentiment Big #zClass
Dt0 B #cInfo
Dt0 #process
Dt0 @AnnotationInP-0n ai ai #zField
Dt0 @TextInP .type .type #zField
Dt0 @TextInP .processKind .processKind #zField
Dt0 @TextInP .xml .xml #zField
Dt0 @TextInP .responsibility .responsibility #zField
Dt0 @StartSub f0 '' #zField
Dt0 @EndSub f1 '' #zField
Dt0 @RestClientCall f3 '' #zField
Dt0 @PushWFArc f4 '' #zField
Dt0 @PushWFArc f2 '' #zField
>Proto Dt0 Dt0 DetectSentiment #zField
Dt0 f0 inParamDecl '<com.axonivy.connector.amazon.comprehend.sentiment.DetectSentimentRequest detectSentiment> param;' #txt
Dt0 f0 inParamTable 'out.request=param.detectSentiment;
' #txt
Dt0 f0 outParamDecl '<com.axonivy.connector.amazon.comprehend.sentiment.DetectSentimentResponse response> result;' #txt
Dt0 f0 outParamTable 'result.response=in.response;
' #txt
Dt0 f0 callSignature call(com.axonivy.connector.amazon.comprehend.sentiment.DetectSentimentRequest) #txt
Dt0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>call(DetectSentimentRequest)</name>
    </language>
</elementInfo>
' #txt
Dt0 f0 81 49 30 30 -94 14 #rect
Dt0 f0 res:/webContent/images/amazon-comprehend.png?small #fDecoratorIcon
Dt0 f1 385 49 30 30 0 15 #rect
Dt0 f3 clientId 77574d12-8a1a-47ea-8165-da1bebde6fa6 #txt
Dt0 f3 headers 'Accept=*/*;
X-amz-target="Comprehend_20171127.DetectSentiment";
' #txt
Dt0 f3 method POST #txt
Dt0 f3 bodyInputType RAW #txt
Dt0 f3 bodyMediaType application/x-amz-json-1.1 #txt
Dt0 f3 bodyRaw '{
    "Text": "<%=in.request.text%>",
    "LanguageCode": "<%=in.request.languageCode%>"
}' #txt
Dt0 f3 bodyObjectType com.axonivy.connector.amazon.comprehend.sentiment.DetectSentiment #txt
Dt0 f3 bodyObjectMapping 'param.languageCode="en";
param.text="Amazon.com, Inc. is located in Seattle, WA and was founded July 5th, 1994 by Jeff Bezos, allowing customers to buy everything from books to blenders. Seattle is north of Portland and south of Vancouver, BC. Other notable Seattle - based companies are Starbucks and Boeing.";
' #txt
Dt0 f3 resultType java.lang.String #txt
Dt0 f3 responseCode 'import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.JsonNode;

ObjectMapper mapper = new ObjectMapper();
JsonNode actualObj = mapper.readTree(result);

out.response.sentiment = actualObj.get("Sentiment").textValue();

JsonNode sentimentScoreNode = actualObj.get("SentimentScore");
out.response.negative = sentimentScoreNode.get("Negative").doubleValue();
out.response.positive = sentimentScoreNode.get("Positive").doubleValue();
out.response.mixed = sentimentScoreNode.get("Mixed").doubleValue();
out.response.neutral = sentimentScoreNode.get("Neutral").doubleValue();

' #txt
Dt0 f3 clientErrorCode ivy:error:rest:client #txt
Dt0 f3 statusErrorCode ivy:error:rest:client #txt
Dt0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Detect Sentiment</name>
    </language>
</elementInfo>
' #txt
Dt0 f3 208 42 128 44 -55 -7 #rect
Dt0 f4 111 64 208 64 #arcP
Dt0 f2 336 64 385 64 #arcP
>Proto Dt0 .type com.axonivy.connector.amazon.comprehend.sentiment.DetectSentimentData #txt
>Proto Dt0 .processKind CALLABLE_SUB #txt
>Proto Dt0 0 0 32 24 18 0 #rect
>Proto Dt0 @|BIcon #fIcon
Dt0 f0 mainOut f4 tail #connect
Dt0 f4 head f3 mainIn #connect
Dt0 f3 mainOut f2 tail #connect
Dt0 f2 head f1 mainIn #connect
