# UOC_MovieBot
Support documentation to the UOC master's thesis: Chatbot implementation as customer service support for an entertainment company. 

Author is Adrià Riera, supervisor Rafael Luque Ocaña.

The Dialogflow folder contains the initial DialogFlow bot support files:
- MovieBot.zip contains the bot itself (intents, entities and dialog) and can be uploaded to DialogFlow
- VisualStudio.rar contains the WebHook created

The IBM_Watson folder contains the final IBM assistant bot support files:
- .JSON archives correspond to the bot itself (intents, entities and dialog) and can be uploaded as a skill to any IBM assistant
- .txt archives refer to the different web actions created (also available in the body document)

Access data to both frameworks can be found in the body document.

The R folder contains the code used to gather the needed data from MovieLens. Due to their size, support databases are NOT included and need to be downloaded from https://movielens.org. Needed archives are *movies_metadata1*, *credits* and *keywords*. Archives must be downloaded in the same folder than the R code.

The schedule.gan archive is the original project schedule shown in §1.4 and §7.1
