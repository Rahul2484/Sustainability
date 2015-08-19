function bw = red( im )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
[m,n,t]=size(im);
bw=zeros(m,n);
for i=1:m 
    for j=1:n 
        if(im(i,j,1)>150 && im(i,j,2)<50 && im(i,j,3)<50)
            %Specifying range for red bw(i,j)=1; end end
            bw(i,j)=1;
        end
    end
    
end

