# UOC_MovieBot
Documentation to the UOC master's thesis: Chatbot implementation as customer service support for an entertainment company. 

Author is Adrià Riera, supervisor Rafael Luque Ocaña.

The archive FMT_Chatbot Implementation_ARiera_Extract is the body of the thesis. Some information is not given for data protection.

The IBM_Watson folder contains the final IBM assistant bot support files:
- The bot is reachable online: https://assistant-chat-eu-gb.watsonplatform.net/web/public/c3e65089-1ec3-47df-a02d-0ba60372634e
- .json archive correspond to the bot itself (intents, entities and dialog) and can be uploaded as a skill to any IBM assistant
- .txt archives refer to the different web actions created (also available in the body document)

The Dialogflow folder contains the initial DialogFlow bot support files:
- MovieBot.zip contains the bot itself (intents, entities and dialog) and can be uploaded to DialogFlow
- VisualStudio.rar contains the WebHook created

The R folder contains the code used to gather the needed data from MovieLens. Due to their size, support databases are NOT included and need to be downloaded from https://movielens.org. Needed archives are *movies_metadata1*, *credits* and *keywords*. Archives must be downloaded in the same folder than the R code.

The schedule.gan archive is the original project schedule shown in §1.4 and §7.1
