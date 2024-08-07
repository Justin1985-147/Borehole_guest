%CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
%C                        GSJ.FOR                                      C
%CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
function XC=GSJ(N,Q,X,FW,M)
for K=1:4
    FW1=JZXC(N,X,M);
    for I=1:M
        FW1(I)=FW(I)-FW1(I);
    end
    DX=JZXC(Q,FW1,M);
    for I=1:M
        XC(I)=X(I)+DX(I);
    end
end
end