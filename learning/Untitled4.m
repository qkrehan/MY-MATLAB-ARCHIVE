tspan = [0 1]; % your time interval
y0 = [1; 0; 0]; % your initial conditions
[t,y] = ode45(@f,tspan,y0); % solver