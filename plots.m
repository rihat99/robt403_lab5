data = readtable('data_joint_states.csv');
data_x = readtable('data_end_x.csv');
data_y = readtable('data_end_y.csv');

subplot(3,1,1);
hold on
plot(data.x_time, data.field_position0);
plot(data.x_time, data.field_position1);
plot(data.x_time, data.field_position2);
plot(data.x_time, data.field_position3);
plot(data.x_time, data.field_position4);
hold off
legend('joint0','joint1','joint2', 'joint3', 'joint4')
title('Joint Angles')

subplot(3,1,2);
plot(data_x.x_time, data_x.field_data)
title('Position of an end effector in X')
xlabel('t(s)')
ylabel('X(mm)')

subplot(3,1,3);
plot(data_y.x_time, data_y.field_data)
title('Position of an end effector in Y')
xlabel('t(s)')
ylabel('Y(mm)')