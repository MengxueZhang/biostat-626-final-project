data = readtable('/Users/chunhuigu/Desktop/train/Col/Col_sum.csv');
proteinCombos = {'39_40', '39_30', '39_31', '39_20', '39_32', ...
                 '30_40', '30_31', '30_20', '30_32', '40_31', ...
                 '40_20', '40_32', '31_20', '31_32', '20_32'};
numSubjects = 225;
numMetrics = 4; 
colocalizationData = array2table(zeros(numSubjects, length(proteinCombos) * numMetrics));
colNames = {};
for i = 1:length(proteinCombos)
    colNames{end+1} = [proteinCombos{i} '_Pearson'];
    colNames{end+1} = [proteinCombos{i} '_Spearman'];
    colNames{end+1} = [proteinCombos{i} '_Overlap'];
    colNames{end+1} = [proteinCombos{i} '_ICQ'];
end
colocalizationData.Properties.VariableNames = colNames;
columnIndices = [7, 8, 15, 21]; 
for i = 1:numSubjects
    for j = 1:length(proteinCombos)
        rowStart = (i-1) * length(proteinCombos) + j;
        colStart = (j-1) * numMetrics + 1;
        colocalizationData{i, colStart:colStart+numMetrics-1} = table2array(data(rowStart, columnIndices));
    end
end
writetable(colocalizationData, 'Colocalization.xlsx');
