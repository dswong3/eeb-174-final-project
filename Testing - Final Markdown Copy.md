
## Introduction

The Carnivora order is divided into the suborders Feliformia (cat-like) and Caniformia (dog-like) suborders. Feliformia includes felids (true cats), hyenas, mongooses, civets, and related taxa, while the Caniformia contains includes "dog-like" carnivores such as dogs, wolves, bears, weasels, and skunks (Sussle.org). In the Middle Eocene (about 40 mya), the branch of Carnivora order began to appear. Carnivora are unique from other mammals in that they have four carnassial teeth in the front of the jaw. These upper and lower pairs of teeth (molars or premolars) help self-sharpening edges to pass by each other to create a shearing manner. Feliforms are unique from Caniformia in that they have double chambered auditory bullae, which is a portion of the skull that encloses the auditory region (Feliformia - New World Encyclopedia). Molecular phylogenies suggest that all extant Feliformia are monophyletic, meaning it contains ancestral species and all its descendants (Sussle.org).

The Feliforms began mainly as forest-dwelling, ambush hunters at the time. Some of the most specialized and well-known species were the saber-tooths. Most species can be found in a wide range of environments, but some have adapted to a limited range of habitats like the sand cats (Etnyre et. al). Though many species have gone extinct, there are still many species that continue to evolve. 

Source:

Etnyre, Erika, Jenna Lande, and Alison Mckenna. "Felidae (cats)." Animal Diversity Web. Accessed March 1, 2017. http://animaldiversity.org/accounts/Felidae/.

"Feliformia." Feliformia - New World Encyclopedia. December 26, 2008. Accessed February 27, 2017. http://www.newworldencyclopedia.org/entry/Feliformia.

Sussle.org. Accessed March 6, 2017. https://sussle.org/t/Feliformia.

## Function: Choose a species and figure out its time period!



```python
import csv
file = open("/home/eeb177-student/Desktop/eeb-177/eeb-174-final-project/new.feliformia.csv")

#read csv and remove commas / delimiters (characters that separate text strings)  
readCSV = csv.reader(file, delimiter=',')

    
def Feliformia (identifier):
    i = 0  #counter / identifier for which row we are on
    era = None #assign default value, and when era = None then identifier does not exist 
    for row in readCSV:
        if( len(row) < 13 ): #want to check if there are at least 12 columns per row or else skip
            continue
        if( row[5] == identifier ): #check if column 6 is the same value as the identifier
            era = row[12] #overwrites era with column 13 value
            break

    if( era == None ): #checks if "era" is equal to None, so identifier doesn't exist, so print string below 
        print( "Please enter a valid species" )
    return era
```


```python
Feliformia("Viverrinae indet.")
```




    'Turolian'



## Function: Choose a time period to discover how many species and which species are found in that time period!


```python
import csv
file = open("/home/eeb177-student/Desktop/eeb-177/eeb-174-final-project/feliformia.csv")
readCSV = csv.reader(file, delimiter=',')

ListOfSpecies = [] #create empty list

def Feliformia (TimePeriod):
    i = 0
    identifier = None
    for row in readCSV:
        if( len(row) < 12 ):
            continue
        if (row[12] == TimePeriod):
            identifier = row[5]
            ListOfSpecies.append(identifier) #add or append identifier to list
            continue
```


```python
Feliformia("Turolian")

str1 = ' , '.join(ListOfSpecies) #gives every element/species from list, separated by a " , " 
print ("This Time Period includes " + str(len(ListOfSpecies)) + " species, which are: " + str1)
```

    This Time Period includes 83 species, which are: Ictitherium gaudryi , Viverrinae indet. , Machairodus fires , Metailurus sp. , Machairodus ex gr. gigantheus , Ictitherium sp. , Ictitherium cf. sinence , Adcrocuta eximia , Hyaenictitherium hyaenoides , Machairodus kurteni , Hyaena sp. , Felidae indet. , Ictitherium sp. , Felis christoli , Dinofelis sp. , Amphimachairodus giganteus , Paramachairodus ? maximiliani , Thalassictis aff. hyaenoides , Metailurus parvulus , Machairodus giganteus , Adcrocuta eximia , Thalassictis adroveri , Plioviverrops guerini , Lycyaena sp. , Viverra sp. , Ictitherium sp. , Felis sp. , Ictitherium hipparionum , Adcrocuta eximia , Machairodus sp. , Ictitherium hipparionum , Adcrocuta eximia , Metailurus major , Machairodus sp. , Ictitherium hipparionum , Hyaenictis eximia , Paradoxurinae indet. , Viverridae ? indet. , Ictitherium gaudryi , Viverrinae indet. , Ictitherium gaudryi , Epimachairodus fires , Pseudaelurus sp. , Viverra sp. , Paradoxurinae indet. , Viverridae indet. , Ictitherium gaudryi , Ictitherium sp. , Epimachairodus fires , Pseudaelurus sp. , Viverrinae indet. , Ictitherium gaudryi , Pseudaelurus sp. , Viverra sp. , Viverrinae indet. , Viverridae indet. , Ictitherium gaudryi , Pseudaelurus sp. , Felis sp. , Paradoxurinae indet. , Viverridae indet. , Ictitherium gaudryi , Ictitherium sp. , Epimachairodus fires , Pseudaelurus sp. , Felis attica , Paramachairodus sp. , Machairodus sp. , Adcrocuta eximia , Felis sp. , Dinofelis sp. , Adcrocuta sp. , Ictitherium (Ictitherium) sp. , Ictitherium (Palhyaena) sp. , Machairodus giganteus , Felis attica , Paramachairodus orientalis , Adcrocuta eximia , Adcrocuta eximia , Plioviverrops sp. , cf. Metailurus parvulus , Viverridae indet. , Chasmaporthetes sp.


## Function: See how many unique species are in each time period



```python
def Feliformia():
    FeliformiaCSV= open("/home/eeb177-student/Desktop/eeb-177/eeb-174-final-project/feliformia.csv", "r", encoding = "ISO-8859-1")
    alldata=FeliformiaCSV.readlines() [19:] #include lines 19 and after
    Timeperiod_dict = {} #empty dictionary
    for line in alldata:
        record_elements = line.split(",") #remove commas / delimiters
        if len(record_elements) < 12:
            continue
        Timeperiod = record_elements[12] #timeperiod assigned as column 13 values
        if Timeperiod in Timeperiod_dict: #search dictionary for time period 
            count = Timeperiod_dict[Timeperiod] #extract count value for the time period
            Timeperiod_dict[Timeperiod] = count + 1 #add one to the count value
        else: 
            Timeperiod_dict[Timeperiod] = 1 #when time period is new assign value of 1           
    return Timeperiod_dict
```


```python
print (Feliformia())
```

    {'Ruscinian': 14, 'MN 2': 8, 'Barstovian': 21, 'Late Clarendonian': 4, 'MN 13': 3, 'Monroecreekian': 1, 'Early Pleistocene': 170, 'Pleistocene': 337, 'MP 24': 1, 'Vallesian': 9, 'Lujanian': 9, 'MN 6': 8, 'Villanyian': 33, 'Tortonian': 73, 'MN 15': 10, 'Chattian': 4, 'Duchesnean': 1, 'MN 1': 2, 'MN 14': 3, 'Rupelian': 2, 'Calabrian': 16, 'MP 21': 3, 'MN 4': 22, 'Late Hemphillian': 29, 'Pliocene': 218, 'Middle Pleistocene': 184, 'Holocene': 127, 'MP 26': 1, 'Late Pleistocene': 239, 'Late Pliocene': 57, 'Hemphillian': 46, 'Astaracian': 6, 'Chadronian': 29, 'MP 25': 9, 'Harrisonian': 4, 'early Early Hemphillian': 2, 'Clarendonian': 28, 'Neogene': 4, 'Blancan': 142, 'MP 23': 9, 'Early Pliocene': 2, 'MN 12': 9, 'Sarmatian': 5, 'Early Barstovian': 4, 'MP 22': 14, 'Miocene': 32, 'Baodean': 1, 'MP 30': 3, 'Turolian': 82, 'Langhian': 15, 'Early Oligocene': 24, 'Arikareean': 20, 'MN 7 + 8': 2, 'Uquian': 1, 'MN 5': 12, 'Serravallian': 11, 'MN 10': 3, 'Irvingtonian': 116, 'Early Miocene': 25, 'early Early Arikareean': 1, 'MN 11': 6, 'Middle Miocene': 5, 'MN 9': 4, 'Rancholabrean': 15, 'Whitneyan': 14, 'Burdigalian': 10, 'Late Oligocene': 5, 'Middle Eocene': 1, 'Hemingfordian': 13, 'Oligocene': 1, 'Late Miocene': 57, 'Ensenadan': 6, 'MN 16': 10, 'Late Eocene': 10, 'Orellan': 40, 'MN 17': 32, 'Zanclean': 68, 'Geringian': 14, 'Gelasian': 65, 'Piacenzian': 87, 'MP 28': 5, 'Torrejonian': 1, 'Messinian': 40}



```python
import matplotlib.pyplot as plot
plot.figure(figsize=(21,10))
plot.bar(range(len(Feliformia())), Feliformia().values(), align='center')
plot.xticks(range(len(Feliformia())), list(Feliformia().keys()), rotation = 'vertical')
plot.margins(0.01)
plot.subplots_adjust(bottom=0.1)
plot.title('Number of Species in Each Time Period', fontsize = 35)
plot.xlabel('Time Period', fontsize = 30)
plot.ylabel('Number of Species', fontsize = 30)

plot.show()
```


![png](output_10_0.png)


## Setting up RStudio Graph (in juptyer notebook)



```python
in_file = '/home/eeb177-student/Desktop/eeb-177/eeb-174-final-project/cleanfeliformia.csv'
with open(in_file, "r") as ff:
    feliformia_recs = ff.readlines()[1:]
```


```python
def sort_feliformia_name(data):
    return(data.split(",")[5])
    
feliformia_sort_csv = sorted(feliformia_recs, key = sort_feliformia_name)   

output_file = open("sorted_feliformia.csv", "w")
for entry in feliformia_sort_csv:
    output_file.write(entry)
    
output_file.close()
```


```python
def feliformia_dict(csv):
    from collections import defaultdict
    
    with open(csv, "r") as zz:
        
        feliformia_data = zz.readlines()
    
    species_ranges = defaultdict(list)

    i = 0 #counter / identifier for which row we are on, this case starting with 0
    for line in feliformia_data:
        #if i > 135: #this method was to check where the error was occurring
        #    break
        if i == 136:
            continue
        if i == 1593: #unknown float error in code at this row so bypassing it  
            continue
        line = line.replace('"', '')
        species = line.split(",")[5]
        if len(species.split(" ")) > 1:
            minage = float(line.split(',')[14])
            maxage = float(line.split(',')[15])
            meanage = (minage + maxage) / 2
            species_ranges[species].append(meanage) 
        i += 1 #adds 1 to i each time it is processed
    return species_ranges
```


```python
feliformia_new_dict = feliformia_dict("sorted_feliformia.csv")
```


```python
def feliformia_summary(dictionary, outputfile):
    output = open(str(outputfile), "w")
    for key in sorted(dictionary.keys()): 
        ages = dictionary[key]
        maxage = max(ages)
        minage = min(ages)
        genus = key.split(" ")[0] 
        species =key.replace(" ", "_")  
        outline = "{},{},{},{}\n".format(genus, species, minage, maxage)
        output.write(outline)
    output.close()
```


```python
feliformia_summary(feliformia_new_dict, "feliformia-ranges.csv")
```


```python

```

## RStudio Graph (in RStudio)

library(ggplot2)

setwd("/home/eeb177-student/Desktop/eeb-177/eeb-174-final-project/")

feliformia <- read.csv("feliformia-ranges.csv", header =F, as.is = T)

names(feliformia) <- c("genus", "species", "minage", "maxage")
head(feliformia)

      genus                  species   minage    maxage
 1 Acinonyx   Acinonyx_?_pardinensis 5324.794  5324.794
 2 Acinonyx           Acinonyx_?_sp. 4686.391  4686.391
 3 Acinonyx           Acinonyx_aicha 2798.794  2798.794
 4 Acinonyx Acinonyx_cf._pardinensis 4522.794  4522.794
 5 Acinonyx         Acinonyx_jubatus 2396.000  4313.006
 6 Acinonyx     Acinonyx_pardinensis 4821.563 13132.890

feliformia_occ <- ggplot(feliformia, aes( genus, ymin = maxage, ymax=minage, colour = genus))
feliformia_occ <- feliformia_occ + geom_linerange()
feliformia_occ <- feliformia_occ + theme(legend.position="none") #removes legend
feliformia_occ <- feliformia_occ + coord_flip() #flips axis/graph
feliformia_occ <- feliformia_occ +  theme(axis.text.y = element_text(size=4)) #larger text size
feliformia_occ <- feliformia_occ + theme(axis.ticks.y=element_blank()) #removes tick marks
feliformia_occ <- feliformia_occ + scale_y_continuous(limits=c(0, 31000), expand = c(0, 0), breaks=c(0, 5000,10000 , 15000, 20000, 25000, 30000, 35000)) #removes white space on graphs
feliformia_occ <- feliformia_occ + labs(title = "Feliformia Fossil Occurrences", x = "Genus", y = "Ma ago") + theme(plot.title = element_text(hjust = 0.5, size=22, face = "bold"), axis.title =element_text(size=20))  #adds title/labels
feliformia_occ 


```python
from IPython.display import IFrame
IFrame("Rplot.pdf", width = 600, height = 600)
```





        <iframe
            width="600"
            height="600"
            src="Rplot.pdf"
            frameborder="0"
            allowfullscreen
        ></iframe>
        



![RPlot PDF](/home/eeb177-student/Desktop/eeb-177/eeb-174-final-project/Rplot1.png)

## Feliformia Photo Examples

![This is a picture of some feliformia species](https://bjdeming.files.wordpress.com/2013/12/feliformia.png)


```python

```
