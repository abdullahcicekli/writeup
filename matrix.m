clc,clear all, clear all,close all
fileID = fopen('flag.txt');
C = textscan(fileID,'%s');
fclose(fileID);
sifre = {'VEqKNYmniAu';'rb_8FTW+f02';'LCtJsOhSl7P';'eBy6D{U}9gI';'GQZjacw4xMd';'zoHX315pkvR'};
harf=char(sifre);
for j=1:33
    dikey=0;
    yatay=0;
    a = C{1}{j};
    for i=1:length(a)
        if a(i)=="D"
            dikey=dikey+1;
        elseif a(i)=="U"
            dikey=dikey-1;
        elseif a(i)=="L"
            yatay = yatay-1;
        elseif a(i)=="R"
            yatay = yatay+1;  
        end                      
    end    
    modyatay= mod(yatay,11)+1;
    moddikey= mod(dikey,6)+1;  
    yeni(j) = harf(moddikey,modyatay)  
end
    
 
   
   
    

    
  
    
