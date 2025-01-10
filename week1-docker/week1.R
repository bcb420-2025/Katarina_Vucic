library("DESeq2")
library("pheatmap")
library("enrichplot")
# setting the seed is not necessary for this assignment but a good habit 
set.seed(42) # the secret to the universe :) 

# create a 5 by 10 matrix of random integers
data <- matrix(sample(1:100, 50, replace = TRUE), nrow = 5, ncol = 10)

# define column names as cond1, cond2, cond3, cond4, cond5, ctrl1, ctrl2, ctrl3,
#  ctrl4, ctrl5
colnames(data) <- c("cond1", "cond2", "cond3", "cond4", "cond5", "ctrl1", 
"ctrl2", "ctrl3", "ctrl4", "ctrl5")

# define row names as gene1, gene2, gene3 ...
rownames(data) <- c("gene1", "gene2", "gene3", "gene4", "gene5")

# visualize the data using pheatmap
pheatmap(data)

# compute the fold change for each gene
cond_mean <- rowMeans(data[, 1:5])
ctrl_mean <- rowMeans(data[, 6:10])
fold_change <- cond_mean / ctrl_mean

print(fold_change)
