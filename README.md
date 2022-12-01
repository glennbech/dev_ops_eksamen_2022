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

## Del 2

Oppgave 3:

For å løse oppgave 3 må sensor:

- Gå inn på settings i sin fork -> branches
- Under Branch protection rules trykk "Add rule"
- Velg branch name pattern "master"
- Sjekk av på "Require a pull request before merging" og "Require approvals" (minst en godkjenning)
- Sjekk av på "Require status checks to pass before merging" -> i søkefeltet skriv "build" (Github Actions)

(Ekstra: sjekk av "Do not allow bypassing the above settings")

## Del 3

Oppgave 1:

Først og fremst måtte jeg endre branch fra navnet 'main' -> 'master' for å få den til å kjøre når jeg pusher.
Deretter så jeg at workflowen vil ha tilgang til to 'secrets' ved navn av DOCKER_HUB_USERNAME og DOCKER_HUB_TOKEN.
Inne i mitt repo på GitHub gikk jeg til settings -> secrets -> actions. Så trykket jeg på 'new repository secret' og la til
mitt brukernavn og mitt token under de to tagsene. Endret dette README.md for å pushe på nytt og sjekke om det fungerte.

Det gikk, litt usikker på om det var en annen grunn til at workflowen feilet, fordi jeg fikset Dockerfile FØR jeg fikset workflowen.
I Dockerfile så endret jeg hvertfall versjonen av java, og la til en multi-stage-build. Endret også COPY til builder, sånn at man slipper
å bygge en target-mappe/JAR manuelt først.

Sjekker om det fungerer og kjører docker run -p 8080:8080 eksamencada003/shopifly (Port-mapping til 8080)
og curl localhost:8080/carts -> får tilbake en tom "handlevogn". Checks out.

Oppgave 3:

Jeg har nå endret docker.yml filen fra å bygge og pushe til docker hub til å gjøre det samme mot AWS ECR.
Sensor må gå inn på sitt aws/aws terminal og lage en access key for å "logge inn" med github-actions, akkurat som for å logge inn på docker hub.
I søkefeltet skriv inn 'IAM' og velg 'users'/brukere -> finn din egen bruker og trykk på 'security credentials'. Her skal du lage din access key som du skal bruke i github secrets. 
Deretter gå inn på github, slik som i docker hub setupet - settings -> secrets -> actions og new repo secret. Legg til AWS_ACCESS_KEY_ID og AWS_ACCESS_KEY. Verdiene her er de du nettopp lagde i AWS.

Du trenger også et ECR repository. I AWS søk opp 'ECR' og velg Amazon Elastic Container Registry. Velg riktig område og trykk create repository med ditt unike navn.
Når du har laget et repo, må du endre workflow filen (docker.yml) til å inneholde navnet på ditt reposity, istedenfor mitt (altså bytt ut 1036 med ditt unike navn):

Her:
docker tag shopifly 244530008913.dkr.ecr.eu-west-1.amazonaws.com/1036:$rev

Her:
docker push 244530008913.dkr.ecr.eu-west-1.amazonaws.com/1036:$rev

Push de nye endringene til github og se at imaget har blitt lastet opp til ECR/workflow er OK

