[Ivy]
17B2AD57F26F3631 9.3.0 #module
>Proto >Proto Collection #zClass
Es0 Entities Big #zClass
Es0 B #cInfo
Es0 #process
Es0 @AnnotationInP-0n ai ai #zField
Es0 @TextInP .type .type #zField
Es0 @TextInP .processKind .processKind #zField
Es0 @TextInP .xml .xml #zField
Es0 @TextInP .responsibility .responsibility #zField
Es0 @StartSub f0 '' #zField
Es0 @EndSub f1 '' #zField
Es0 @RestClientCall f3 '' #zField
Es0 @PushWFArc f4 '' #zField
Es0 @PushWFArc f2 '' #zField
>Proto Es0 Es0 Entities #zField
Es0 f0 inParamDecl '<com.axonivy.connector.amazon.comprehend.entities.DetectEntitiesRequest request> param;' #txt
Es0 f0 inParamTable 'out.request=param.request;
' #txt
Es0 f0 outParamDecl '<com.axonivy.connector.amazon.comprehend.entities.DetectEntitiesResponse response> result;' #txt
Es0 f0 outParamTable 'result.response=in.response;
' #txt
Es0 f0 callSignature call(com.axonivy.connector.amazon.comprehend.entities.DetectEntitiesRequest) #txt
Es0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>call(DetectEntitiesRequest)</name>
    </language>
</elementInfo>
' #txt
Es0 f0 81 49 30 30 -66 27 #rect
Es0 f0 res:/webContent/images/amazon-comprehend.png?small #fDecoratorIcon
Es0 f1 337 49 30 30 0 15 #rect
Es0 f3 clientId 77574d12-8a1a-47ea-8165-da1bebde6fa6 #txt
Es0 f3 headers 'Accept=*/*;
X-amz-target="Comprehend_20171127.DetectEntities";
' #txt
Es0 f3 properties 'accessKey=ivy.var.Amazon_Comprehend_AccessKey;
secretKey=ivy.var.Amazon_Comprehend_SecretKey;
' #txt
Es0 f3 method POST #txt
Es0 f3 bodyInputType RAW #txt
Es0 f3 bodyMediaType application/x-amz-json-1.1 #txt
Es0 f3 bodyRaw '{
    "Text": "<%=in.request.text%>",
    "LanguageCode": "<%=in.request.languageCode%>"
}' #txt
Es0 f3 bodyObjectType com.axonivy.connector.amazon.comprehend.sentiment.DetectSentiment #txt
Es0 f3 bodyObjectMapping 'param.languageCode="en";
param.text="Amazon.com, Inc. is located in Seattle, WA and was founded July 5th, 1994 by Jeff Bezos, allowing customers to buy everything from books to blenders. Seattle is north of Portland and south of Vancouver, BC. Other notable Seattle - based companies are Starbucks and Boeing.";
' #txt
Es0 f3 resultType java.lang.String #txt
Es0 f3 responseCode 'import com.axonivy.connector.amazon.comprehend.entities.Entity;
import java.util.Iterator;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.JsonNode;

ObjectMapper mapper = new ObjectMapper();
JsonNode actualObj = mapper.readTree(result);

 for (JsonNode jsonNode : actualObj.get("Entities")) {
Entity ent = new Entity();
ent.type = jsonNode.get("Type").asText();
ent.text = jsonNode.get("Text").asText();
ent.score = jsonNode.get("Score").asDouble();
ent.beginOffset = jsonNode.get("BeginOffset").asInt();
ent.endOffset = jsonNode.get("EndOffset").asInt();
out.response.entities.add(ent);		

      }

//out.response.sentiment = actualObj.get("Sentiment").textValue();

//JsonNode sentimentScoreNode = actualObj.get("SentimentScore");
//out.response.negative = sentimentScoreNode.get("Negative").doubleValue();
//out.response.positive = sentimentScoreNode.get("Positive").doubleValue();
//out.response.mixed = sentimentScoreNode.get("Mixed").doubleValue();
//out.response.neutral = sentimentScoreNode.get("Neutral").doubleValue();

' #txt
Es0 f3 clientErrorCode ivy:error:rest:client #txt
Es0 f3 statusErrorCode ivy:error:rest:client #txt
Es0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Detect Entities</name>
    </language>
</elementInfo>
' #txt
Es0 f3 176 42 112 44 -46 -7 #rect
Es0 f4 111 64 176 64 #arcP
Es0 f4 0 0.5000000000000001 0 0 #arcLabel
Es0 f2 288 64 337 64 #arcP
>Proto Es0 .type com.axonivy.connector.amazon.comprehend.entities.DetectEntitiesData #txt
>Proto Es0 .processKind CALLABLE_SUB #txt
>Proto Es0 0 0 32 24 18 0 #rect
>Proto Es0 @|BIcon #fIcon
Es0 f0 mainOut f4 tail #connect
Es0 f4 head f3 mainIn #connect
Es0 f3 mainOut f2 tail #connect
Es0 f2 head f1 mainIn #connect
