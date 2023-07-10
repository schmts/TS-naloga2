#TS-naloga2
Naloga je zaobjemala kontejnerizacijo prve naloge, kjer sem ustvaril frontend in backend del appa, ki se poveže s postgresql bazo podatkov. Ob prilagoditvi na kubernetes cluster je bilo potrebnega tudi nekaj dodatnega urejanja kode. 

Tokrat bomo aplikacijo dvignili v naslednjih korakih: 

"kubernetes apply -f <path-do-/TS-naloga2> --recursive"

Pred samo uporabo aplikacije, bomo morali ustvariti tabelo. To storimo z execom v pod, logiranjem:

psql -h 10.99.138.45 -p 5432 -d naloga -U postgresUser
Kjer uporabimo geslo: postgresPW.

Ko se uspešno logiramo v bazo, ustvarimo tabelo z 
CREATE TABLE besede (
    id SERIAL PRIMARY KEY,
    word VARCHAR(50)
);

Čestitke, aplikacija je postavljena!

V primeru, da delamo z minikubeom, lahko aplikacijo odpremo z
"minikube service fe-service"


*Pozor, predvideno je, da uporabnik uporablja minikube z ipjem 192.168.49.2

