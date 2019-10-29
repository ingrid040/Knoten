# Skript Erstellung einfaches Netzwerk

# lädt igraph Bibliothek (ggf. vorher installieren)
library(igraph)

# liest die Edgelist als "el" ein
el <- read.csv("https://raw.githubusercontent.com/ingrid040/Knoten/master/EdgelistGoldeneye%20-%20EdgelistJamesBondGoldeneye.csv", header=T, as.is=T, sep = ",")

# zeigt die ersten sechs Zeilen des Datensatzes an
head(el)

# liest die Nodelist mit den Namen ein
nodes <- read.csv("https://raw.githubusercontent.com/ingrid040/Knoten/master/NodelistJamesBondGoldeye%20-%20NodelistJamesBondGoldeye.csv", header=T, as.is=T, sep = ",")

# zeigt die ersten sechs Zeilen der Nodelist und die Attribute der Nodes an
head(nodes)

# Zwischenschritt verbindet die Edge- und Nodelist zu einer Matrix
jb_matrix <- as.matrix(el)

# zeigt die Matrix an
jb_matrix

# generiert ein igraph-Objekt (dataframe) aus der Matrix, das gerichtet ist (directed = true)
# hp <- graph_from_data_frame(d=hp_matrix, vertices=nodes, directed=TRUE)

# generiert ein igraph-Objekt (dataframe) aus der Matrix, das ungerichtet ist (directed = false)
jb <- graph_from_data_frame(d=jb_matrix, vertices=nodes, directed=FALSE)

# ruft unser neues igraph-Objekt auf
jb

# generiert die Standard-Visualisierung des Netzwerks
plot(jb, main="GoldenEye - gemeinsame Szenen",
     sub="erstellt von ib040")



