% Example state matrix: Two states

sma = NewStateMachine();

sma = AddState(sma, 'Name', 'Port1Lit', ...
    'Timer', 1,...
    'StateChangeConditions', {'Tup', 'Port3Lit'},...
    'OutputActions', {'PWM1', 255});
sma = AddState(sma, 'Name', 'Port3Lit', ...
    'Timer', 1,...
    'StateChangeConditions', {'Tup', '>exit'},...
    'OutputActions', {'PWM3', 255});