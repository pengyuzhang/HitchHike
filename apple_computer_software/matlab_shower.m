clear;clc;close all;

% data = [load(['data_plot/data1.txt'])];
% 
% data_plot = [];
% mark = [];
% 
% data_plot = [data_plot data(1,1)];
% for index=2:length(data)
% %     data_plot = [data_plot data(index,1)];
% %     mark = [mark data(index,3)];
%     if data(index,1)==data(index,2) & data(index,1)<1.1*data(index-1,1) & data(index,1)>0.9*data(index-1,1)
%     %if data(index,1)==data(index,2)
%         data_plot = [data_plot data(index,1)];
%         mark = [mark data(index,3)];
%     end
% end
% plot(data_plot)
% hold on;
% plot(mark*20,'r')
% 
% return;

tmp = [];
for file_index=1:2000
    
    file_index
    
    data = [];
    
    while length(data)==0
        try 
            data = load(['data_plot/data' int2str(file_index) '.txt']);
        catch
            data = [];
            disp('Did not load that last file, but it''s ok.'); 
            pause(1);
        end
    end
    
    data_plot = [];
    data_plot = [tmp data_plot];
    
    for index=2:length(data)-1
        if data(index,1)==data(index,2) & data(index,1)<1.1*data(index-1,1) & data(index,1)>0.9*data(index-1,1)
            data_plot = [data_plot data(index,1)];
        end
    end
    
    if length(data_plot)>1006
        tmp = data_plot(length(data_plot)-1000:end);
        for i=1:5:length(data_plot)-1000
            plot(data_plot(i:i+1000))
            ylim([200,800]);
            drawnow;
        end
    else
        tmp = data_plot;
    end
    

end