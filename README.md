# HSV-RGB-Histogram
RGB:
Initializez vectorul cu 3*count_bins. salvez cu imread imaginea intr-o matrice. Pun in matricile R G B pixelii respectivi. Creez un vector de intervale cu pasul 256/count_bins. Avand in vedere ca asttfel se pierde o bucata din interval, pun pe ultima pozitie 256, ultimul element. Pentru fiecare matrice R,G,B pun intr-o matrice auxiliara cu histc elementele aflate in fiecare interval. Pe fiecare pozitie din sol1/2/3 pun suma pixelilor de culoarea ceruta. Sterg ultimul element din vector pentru ca era cate unul in plus. La final concatenez cei 3 vectori creati.
HSV:
Merge pe acelasi principiu ca si RGB. Diferenta este ca lucrez cu matricile create in functia RGB2HSV al carei algoritm a fost explicat in enunt si aplicat pentru fiecare pixel din matrice. In plus, intervalul nu mai este de la 0 la 255 ci de la 0 la 0.01 cu pasul 0.01/count_bins.
