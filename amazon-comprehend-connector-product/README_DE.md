### Beschleunig Arbeitsgang Automatisierung mit NLP und #ML

#Axon Efeus [#Amazon Fasst auf API](https://aws.amazon.com/comprehend/)
Anschluss aktiviert du zu erweitern eure Arbeitsgang Automatisierung Initiativen
#aushebeln mal die Kraft von Natural Sprache Verarbeitung (NLP) und Maschine
#Lernen (#ML). Dieser Anschluss integriert #bruchlos #Amazon Fasst aufhat
Fähigkeiten hinein eure Arbeitsgang Arbeit, erlaubend dir zu entdecken kostbare
Einblicke und Beziehungen versteckt innerhalb Text #Daten.

Wesentliche Charakterzüge und Nutzen:

- **Freemium #Preisfindung Model**: Der Anschluss ist gegründet weiter AWSs
  freemium #Preisfindung Model, versehend preisgünstigen Zugang zu
  fortgeschritten NLP und #ML Funktionalitäten.

- **Umfassend NLP APIs**: Gewinn Zugang zu einem weiten Bereich von APIs,
  #einschließen Keyphrase Gewinnung, Gefühl Auswertung, Entität Bestätigung,
  Gegenstand #Modellieren, und Sprache Entdeckung. Diese APIs ermächtigen dir zu
  gewinnen sinnvolle Auskunft von unstructured Text #Daten.

- **Identifizieren Kritische Elemente**: #Amazon Fasst auf hilft du
  identifizierst unerlässliche Elemente innerhalb #eure #Daten, wie Verweise zu
  Sprachen, Leute, und Orte. Dies aktiviert du zu gewinnen ein tieferes
  #begreifend von eurem Text-basisbezogene Auskunft und Herstellung informierte
  Entscheide.

- **Text #Kategorisierung**: Automatisch #kategorisieren eure Text Dateien
  gegründet auf relevant Gegenstände, machend ihm leichter zu organisieren und
  analysieren große Inhalte von Daten.

- **Demo Ausführung**: Zu minimieren eure Integration Anstrengung, #Axon #Ivy
  versieht ein leichtes-zu-Kopie Demo Ausführung. Dieser Sample Code serviert
  wie ein startend Punkt, erlaubend dir zu schnell verleiben #der #Amazon Fasst
  auf API hinein eure eigenen Arbeitsgänge.

### Wie #abweichen es von ChatGPT?
Ob eure primäres Tor ist zu aufführen **spezifisch NLP Tasks** gleichnamige
Gefühl Auswertung oder Entität Bestätigung auf groß Inhalte von Text #Daten, AWS
Fasst auf ist eine passende Auswahl. Es bietet an pre-ausgebildete Models,
#Skalierbarkeit, und **Integration mit die AWS Ökosystem**. Indes, ob du
bedürfst eine More **vielseitiges Sprache Model** für offen-endete
Unterhaltungen oder generierend menschlich-gleichnamigen Text, ChatGPT darf sein
eine bessere Passform.




## Demo

### Gefühl Entdeckung

1. Tipp irgendwelchen Text du magst hinein das Text Feld gleichnamig: _Ich
   eigentlich gleichnamig jenes Auto_.
2. Klick Herausfinden weiter Gefühl
3. #Amazon Fasst auf will herausfinden als das Gefühl dir.

![Demo-verarbeite](images/comprehend-demo-sentiment.png)

### Entitäten Entdeckung

1. Tipp irgendwelchen Text du magst hinein das Text Feld gleichnamig: _#John
   Smith ist von #Schweiz_.
2. Klick Herausfinden weiter Entitäten
3. #Amazon Fasst auf will herausfinden als die Entitäten dir.

![Demo-verarbeite](images/comprehend-demo-entities.png)


## Einrichtung

1. Zuerst brauchst du zu schaffen einen geheimen Schlüssel und einen Zugang
   Schlüssel für #Amazon. Geh zu https://aws.amazon.com

2. Anmeldung oder schaffen ein neues Konto.

3. Klick auf Meine Sicherheit #Berechtigungsnachweis:

![Demo-verarbeite](images/comprehend-setup-credentials.png)

4. Schaff einen neuen Zugang Schlüssel und ein neues Geheimnis Schlüssel.

![Demo-verarbeite](images/comprehend-setup-keys.png)

5. Konfigurier die folgenden Variablen in eurem Projekt:

```
Variables:

  Amazon.Comprehend:

    # Secret key to access amazon comprehend     
    SecretKey: <YOUR_SECRET_KEY>

    # Access key to access amazon comprehend
    AccessKey: <YOUR_ACCESS_KEY>
```
