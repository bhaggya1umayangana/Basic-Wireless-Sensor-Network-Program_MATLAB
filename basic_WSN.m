clc;
clear all;

%%% according to the user requirement network length and width can be
%%% changed 
no_nodes=input('Enter the number of nodes:');
net_length=input('Enter the length of the network:');
net_width=input('Enter the width of the network:');



for i=1:no_nodes  %%%%%consider nodes are having hetrogeneous location
    x_loc(i)=net_length*rand;
    y_loc(i)=net_width*rand;
    node_id(i)=i; % give the number to the node 
    plot(x_loc(i),y_loc(i),'b^','linewidth',2)
    text(x_loc(i)+10,y_loc(i)+10,['N',num2str(i)]);%node id in text in figure
    hold on;
    xlabel('Network length');
    ylabel('netwrok Height');
    pause(0.5);
    
end 




%{ 
((((here all nodes are ploted same time but we need to plot these nodes one
by one no)))
figure
plot(x_loc,y_loc,'ro','linewidth',2);
text(x_loc+5,y_loc+5,'Nodes');
xlabel('Network length');
ylabel('netwrok Height');
grid on;
%}


% plot the source node and the destination node
source=round(no_nodes*rand);
if source==0;
    source=5; % assume this value when it zero
end

destination=round(no_nodes*rand);
if destination==0;
    destination=6; % assume this value when it zero
end

%%% soutce node and destination node plot funtion

figure(1)
plot(x_loc(source),y_loc(source),'r^','linewidth',3);
text(x_loc(source),y_loc(source),'SRC');
hold on;
plot(x_loc(destination),y_loc(destination),'r^','linewidth',3);
text(x_loc(destination),y_loc(destination),'DEST');

