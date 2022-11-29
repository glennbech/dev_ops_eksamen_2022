# DevOps 2022

## Oppgave 1:
En av de kulturelle grunnene til at dagens systemutvikling har utfordringer er ansvarsfraskrivelse, eller assymetri i
kunnskap i de forskjellige "gruppene"/avdelingene. Med ansvarsfraskrivelse så snakker jeg om ordtaket "skin in the game".

Ved bruk av gamle prosjektmetoder vil et "dev"-team levere fra seg prosjektet etter at kundens behov er oppfylt, og
oppstår det problemer senere er ikke det lenger deres "problem". Dette kan føre til stor teknisk gjeld, ved at koden ikke
god nok, testene er ikke gode nok fordi man har et mindset om at man slipper å forholde seg til dette selv. 

Den tekniske gjelden kommer også fra kunder og/eller ledelse som ikke har nok kunnskap om hvor lang tid, eller hvor stor kostnad,
et prosjekt egentlig har. Splittelse, eller såkalt asymmetri i systemutvikling fører altså til store, og unødvendige, problemer underveis.

    
Med et DevOps-team vil "alle" være involvert i de forskjellige prosessene på en eller annen måte,
og kan derfor ikke gi fra seg ansvaret og må alltid lære av egne feil. Dette fører til økt kompetanse,
smidighet, kontinuerlig forbedring og det nevnte ordtaket "skin in the game".

Dette gjelder også ledelse, da man ikke kan ha en DevOps-avdeling "ovenifra" og ned.
Det fratar hele DevOps-tankegangen og gjør det til et anti-prosjekt. De som skal utføre prosjektet har mest 
sannsynlig mer kunnskap om hvordan arbeidet skal utføres enn noen utenforstående.
Da er vi tilbake igjen på å gi fra seg ansvar og man mister "skin in the game", derfor er dette en viktig del av DevOps.

Oppsummert sett vil de nevnte utfordringene fra eldre systemutvikling være dårligere sluttprodukt, vanskeligere å 
opprettholde, treigere utvikling og generelt høyere frustrasjon i de isolerte gruppene.
Altså blir DevOps-prinsipper som samarbeid, kontinuerlig utvikling, kontinuerlig forbedring, automatisering, læring av å feile og ansvar for
produktet brutt.

Problemet med å ikke gi ut ny funksjonalitet for større kontroll/kvalitetsikring kan være at man
overdriver optimaliseringen. Dette fører til lang ventetid på oppgaver som burde vært fullført, og unødvendig bruk av tid og ressurser,
eller såkalt "waste". I DevOps vil man ha minst mulig "waste" og mest mulig "flow". 

Med lavere hyppighet på levering så vil det føre til en stor levering, eller en "batch", noe som åpenbart fører til store flaskehalser i produksjonen.
Teamet kan miste fokus ved å måtte bytte oppgaver ofte, ikke fullføre det man startet på og man får lite tilbakemelding under produksjon.
En av løsningene kan være å begrense oppgavestørrelsene for å oppnå bedre flyt. En god DevOps-løsning er små team på mindre feature-branches som leverer hyppige commits og kjører pull-request og automatiserte bygg til en felles main-branch.
Man kan også innføre en "one piece flow" som tilsier at man har en grense på hvor
mye arbeid som gjøres samtidig (WIP), og er det noe som feiler eller ikke fungerer som tiltenkt, skal alle gå inn for å løse problemet. 
Dette er ikke en enkel ting å innføre, men har store fordeler om det fungerer som det skal.

Innføring av hyppige release må komme med gode automatiserte tester og jobber for at systemet skal fungere. Er det ikke god nok infrastruktur vil dette igjen stjele tid
og skape dårlig flyt, som da bryter med DevOps-tankegang.

## Oppgave 3:


