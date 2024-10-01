# Load package with model evaluation metrics
library(MLmetrics)

# Calculate Metrics
accuracy <- Accuracy(test_preds, test_labels) 
precision <- Precision(test_preds, test_labels) 
specificity <- Specificity(test_preds, test_labels)
sensitivity <- Sensitivity(test_preds, test_labels)
f1 <- F1_Score(test_preds, test_labels)
auc <- AUC(test_preds, test_labels)


# Summarize results into a table
# Create a results table
results_table <- data.frame(
  Metric = c("Accuracy", "Precision", "Specificity", "Sensitivity", "F1 Score", "ROC AUC"),
  Value = c(accuracy, precision, specificity, sensitivity, f1, auc)
)

# Print the results table
print(results_table)
