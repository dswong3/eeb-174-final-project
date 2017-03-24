---
title: "Untitled"
author: "Dustin Wong"
date: "March 23, 2017"
output: html_document
---

```{r}
source("~/PyRate/pyrate_utilities.r")

# we need to give the utilities a list of extant species
extant_feliformia = c("Acinonyx jubatus", 'Atilax paludinosus', 'Bdeogale', 'Caracal caracal', 'Caracal serval', 'Civettictis civetta', 'Crocuta', 'Crocuta crocuta', 'Crossarchus', 'Cryptoprocta', 'Cryptoprocta ferox', 'Cynictis penicillata', 'Felidae', 'Felis', 'Felis libyca', 'Felis silvestris', 'Fossa fossana', 'Genetta', 'Genetta genetta', 'Genetta tigrina', 'Herpestes', 'Herpestes ichneumon', 'Herpestes pulverulentus', 'Herpestes sanguineus', 'Herpestidae', 'Hyaena', 'Hyaena hyaena', 'Ichneumia albicauda', 'Leopardus', 'Leopardus braccatus', 'Leopardus pardalis', 'Leopardus tigrinus', 'Leopardus wiedii', 'Lynx', 'Lynx lynx', 'Lynx rufus', 'Megantereon', 'Mungos mungo', 'Paguma larvata', 'Panthera leo', 'Panthera leo atrox', 'Panthera onca', 'Panthera pardus', 'Panthera tigris', 'Parahyaena brunnea', 'Proteles', 'Puma', 'Puma concolor', 'Puma yagouaroundi', 'Smilodon fatalis', 'Smilodon populator', 'Suricata', 'Viverra', 'Viverridae')
                      
extract.ages.pbdb(file="feliformia_occ.csv",extant_species=extant_feliformia)

```