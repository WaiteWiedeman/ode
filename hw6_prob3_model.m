% (u,v)=(y(1),y(2))
function dy = hw6_prob3_model(t,y)

global B a  % circadian clock

dy = zeros(2,1);
dy(1) = y(2);
dy(2) = B*y(1) - a*(1 - y(1)^2)*y(2);