channelID = 3351612;

writeAPIKey = 'YOUR_WRITE_API';
readAPIKey  = 'YOUR_READ_API';

A = 10;
B = 5;

thingSpeakWrite(channelID, [A B], 'WriteKey', writeAPIKey);
pause(2);

data = thingSpeakRead(channelID, 'ReadKey', readAPIKey, 'NumPoints', 1);

A = data(1);
B = data(2);

add = A + B;
sub = A - B;
mul = A * B;

if B ~= 0
    div = A / B;
else
    div = NaN;
end

min_val = min(A, B);
max_val = max(A, B);

fprintf('A = %.2f\n', A);
fprintf('B = %.2f\n', B);
fprintf('Add = %.2f\n', add);
fprintf('Sub = %.2f\n', sub);
fprintf('Mul = %.2f\n', mul);
fprintf('Div = %.2f\n', div);
fprintf('Min = %.2f\n', min_val);
fprintf('Max = %.2f\n', max_val);
