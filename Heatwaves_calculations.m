%% Import csvs

df_length = readmatrix('df_length.csv','Delimiter',',');
df_temp = readmatrix('df_temp.csv','Delimiter',',');

%% 
for ii = 1:size(df_temp,1)
    a1=max(df_length(ii,:));
    a2=find(df_length(ii,:)==a1);
    for jj=1:a2-1
        a3(ii,jj) = df_length(ii,jj);
        a4(ii) = sum(a3(ii,:));
    end
end
leng_1=a4';
clearvars a1 a2 a3 a4 ii jj

%% Find corresponding values to calculate the mean, std and max 
% % for longest heatwave in each year

for ii = 1: size(df_temp,1)
    
    if isnan(df_temp(ii,:))
        fin_mean(ii) = NaN;
        fin_std(ii) = NaN;
        fin_max(ii) = NaN;
    else
        
        aa = df_temp(ii,leng_1(ii,:)+1);
        bb = df_temp(ii,leng_1(ii,:)+max(df_length(ii,:)));
        a1 = find(df_temp(ii,:)==aa); 
        a2 = find(df_temp(ii,:)==bb);
        
        if size(a2,2)>1
            a2 = a2(1,2);
        end
        metrics(ii,1) = nanmean(df_temp(ii,a1:a2));
        metrics(ii,2) = nanstd(df_temp(ii,a1:a2));
        metrics(ii,3) = nanmax(df_temp(ii,a1:a2));
    end
end

writematrix(metrics,'metrics.csv');

