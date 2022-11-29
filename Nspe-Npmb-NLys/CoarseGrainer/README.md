# Automatic Coarse-graining

This code generates a mapping file (*.xml) that can be processed by VOTCA (citation). We developed an automated approach as: 

1. There are too many atoms (280) in the peptoid sequence
2. There will be higher chances of error if this step is done manually. 

Our generl approach

1. We visulaize the peptoid as undirected graph, i.e., the atoms are vertices and the bonds are edges.  
