function [b]=getGenBank
    sekans=getgenbank('NC_001416','SequenceOnly',true);
    HpaII='CCGG';
    h=strfind(sekans,HpaII);
    fragmanlar=cell(1,length(h));
    uzunluk=zeros(1,length(h));

        for i=1:length(h)-1
            fragmanlar(i)={sekans(h(i):h(i+1)-1)};
            uzunluk(i)=length(fragmanlar{i});
        end
    fragmanlar(end)={sekans(h(end):end)};
    uzunluk(end)=length(fragmanlar{end});
    edges=0:100:2500;
    histogram(uzunluk,edges)
end

