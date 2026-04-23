channelID = 2903361;
readAPIKey = "G7JJ4UR2WANS9AXC";

humidity = thingSpeakRead(channelID, 'Fields', 1, 'NumMinutes', 60, 'ReadKey', readAPIKey);

disp(humidity)

avgValue = mean(humidity, 'omitnan');
minValue = min(humidity, [], 'omitnan');
maxValue = max(humidity, [], 'omitnan');

disp("Average Humidity:")
disp(avgValue)

disp("Minimum Humidity:")
disp(minValue)

disp("Maximum Humidity:")
disp(maxValue)
