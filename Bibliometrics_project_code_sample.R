library(igraph)
decision_sciences_graph <- read.graph("C:/Users/Sofiya/Documents/SPBU/2 year/3 sem/MIMSI/Sems/Project/IoT/Data/Decision Sciences/decision_sciences_raw_copy.net", format = 'pajek')
decision_sciences_plot <- plot(decision_sciences_graph)

cluster_leading_eigen(decision_sciences_graph)

cluster_leiden(decision_sciences_graph)

cluster_louvain(decision_sciences_graph)

V(decision_sciences_graph)$degree <- igraph::degree(decision_sciences_graph)
E(decision_sciences_graph)$weight

sapply(decision_sciences_plot, function(x) mean(degree(x)))
which.max(degree(decision_sciences_graph))
assortativity.degree(decision_sciences_graph)
power_centrality(decision_sciences_graph)
d <- decompose.graph(decision_sciences_graph)
table(sapply(d, vcount))
sapply(d, vcount)
largest <- d[[1]]
plot(largest, vertex.label=NA)
power_centrality(largest)
closeness(decision_sciences_graph)
which.max(eigen_centrality(largest)$vector)

edge_density(decision_sciences_graph)
edge_connectivity(decision_sciences_graph)
max_cardinality(decision_sciences_graph)
transitivity(decision_sciences_graph)


cluster_fast_greedy(decision_sciences_graph)

