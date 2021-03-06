    library(ggplot2)

    setwd("/home/eeb177-student/Desktop/eeb-177/eeb-174-final-project/")

    feliformia <- read.csv("feliformia-ranges.csv", header =F, as.is = T)

    names(feliformia) <- c("genus", "species", "minage", "maxage")
    head(feliformia)

    ##      genus                  species   minage    maxage
    ## 1 Acinonyx   Acinonyx_?_pardinensis 5324.794  5324.794
    ## 2 Acinonyx           Acinonyx_?_sp. 4686.391  4686.391
    ## 3 Acinonyx           Acinonyx_aicha 2798.794  2798.794
    ## 4 Acinonyx Acinonyx_cf._pardinensis 4522.794  4522.794
    ## 5 Acinonyx         Acinonyx_jubatus 2396.000  4313.006
    ## 6 Acinonyx     Acinonyx_pardinensis 4821.563 13132.890

    feliformia_occ <- ggplot(feliformia, aes( genus, ymin = maxage, ymax=minage, colour = genus))
    feliformia_occ <- feliformia_occ + geom_linerange()
    feliformia_occ <- feliformia_occ + theme(legend.position="none") #removes legend
    feliformia_occ <- feliformia_occ + coord_flip() #flips axis/graph
    feliformia_occ <- feliformia_occ +  theme(axis.text.y = element_text(size=4)) #larger text size
    feliformia_occ <- feliformia_occ + theme(axis.ticks.y=element_blank()) #removes tick marks
    feliformia_occ <- feliformia_occ + scale_y_continuous(limits=c(0, 31000), expand = c(0, 0), breaks=c(0, 5000,10000 , 15000, 20000, 25000, 30000, 35000)) #removes white space on graphs
    feliformia_occ <- feliformia_occ + labs(title = "Feliformia Fossil Occurrences", x = "Genus", y = "Ma ago") + theme(plot.title = element_text(hjust = 0.5, size=22, face = "bold"), axis.title =element_text(size=20))  #adds title/labels
    feliformia_occ 

![](Graph_of_Genus_GGPlot_files/figure-markdown_strict/unnamed-chunk-2-1.png)

    feliformia_occ <- feliformia_occ + theme(axis.title.x = element_text(margin(r=10)))

    #Feliformia <- read.csv("feliformia-1.csv", header =T, as.is = T)
    #df <- paleobioDB::pbdb_occurrences(Feliformia$The.Paleobiology.Database)

    #paleobioDB::pbdb_map(Feliformia, main = 'feliformia', pch = 19, cex = 0.7)
