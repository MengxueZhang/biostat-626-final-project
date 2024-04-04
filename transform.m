% Define the directory where the results are stored
resultsDir = '/Users/chunhuigu/Desktop/train/Results'; % Update this to your results directory path
outputFile = 'sum.xlsx'; % Define the name of the summary output file

% Specify the indices of the columns to read from each Excel file
% Column indices: 2, 3, 4, 5, 7, 8
dataColsIndices = [2, 3, 4, 5, 7, 8];

% Preallocate a cell array for the summary data
numSubjects = 225;
numProteins = 52; % Update if the number of proteins varies
summaryData = cell(numSubjects, numProteins * numel(dataColsIndices));

% Define column names for the summary output based on your specified structure
colNames = {};
measurements = {'Count', 'Total_Area', 'Average_Size', 'percent_area', 'Circ', 'Solidity'};
for i = 1:numProteins
    for j = 1:numel(measurements)
        colNames{end+1} = sprintf('protein%d_%s', i, measurements{j});
    end
end

% Loop through all result files
for i = 0:numSubjects-1 % files are named starting from 0
    filename = fullfile(resultsDir, sprintf('%d-data.csv', i));
    % Read the data from each CSV file, skipping the header row
    data = readmatrix(filename, 'NumHeaderLines', 1);
    
    % Extract the required data for each protein and reshape it into a single row
    for j = 1:numProteins
        % Inside your loop where you process each protein
        rowIndex = j;
        proteinData = num2cell(data(rowIndex, dataColsIndices));
        summaryData(i+1, ((j-1)*numel(dataColsIndices) + 1):((j-1)*numel(dataColsIndices) + numel(dataColsIndices))) = proteinData;

        %proteinData = data(j, dataColsIndices); % Directly index into the matrix
        %summaryData{i+1, ((j-1)*numel(dataColsIndices) + 1):((j-1)*numel(dataColsIndices) + numel(dataColsIndices))} = num2cell(proteinData);
        %summaryData{i+1, (j-1)*numel(dataColsIndices) + (1:numel(dataColsIndices))} = proteinData;
    end
end

% Convert cell array to a table for writing to CSV
summaryTable = cell2table(summaryData, 'VariableNames', colNames);

% Write the summary data and column names to the output CSV file
writetable(summaryTable, fullfile(resultsDir, outputFile));
