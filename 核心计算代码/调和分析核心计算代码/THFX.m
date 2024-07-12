%%%%%%%%%%%%%%%̨վ����%%%%%%%%%%%%%%%%%%%%%%%%%%
function [FBM,jieguo]=THFX(timeu,data,IBOL)
global BM1 BN1 BM2 BN2 BM3 BN3 DL1 DL2 DL3 M
QMN(timeu,data);
if IBOL==1
    [BBM,DELTA,SIGMAD,FKAPA,SIGMAK,SIGMA0]=ZTHFX(BM1,BN1,1,DL1);
    jieguo=[DELTA;SIGMAD;FKAPA';SIGMAK];
    FBM=BBM;
elseif IBOL==2
    [BBM,DELTA,SIGMAD,FKAPA,SIGMAK,SIGMA0]=ZTHFX(BM2,BN2,2,DL2);
    jieguo=[DELTA;SIGMAD;FKAPA';SIGMAK];
    FBM=BBM;
elseif IBOL==3
    [BBM,DELTA,SIGMAD,FKAPA,SIGMAK,SIGMA0]=ZTHFX(BM3,BN3,3,DL3);
    jieguo=[DELTA;SIGMAD;FKAPA';SIGMAK];
    FBM=BBM;
elseif IBOL==5
    [BBM1,DELTA1,SIGMAD1,FKAPA1,SIGMAK1,SIGMA01]=ZTHFX(BM1,BN1,1,DL1);
    [BBM2,DELTA2,SIGMAD2,FKAPA2,SIGMAK2,SIGMA02]=ZTHFX(BM2,BN2,2,DL2);
    [BBM3,DELTA3,SIGMAD3,FKAPA3,SIGMAK3,SIGMA03]=ZTHFX(BM3,BN3,3,DL3);
    jieguo=[DELTA1,DELTA2,DELTA3;SIGMAD1,SIGMAD2,SIGMAD3;FKAPA1',FKAPA2',FKAPA3';SIGMAK1,SIGMAK2,SIGMAK3];
    FBM=[BBM1,BBM2,BBM3];
else
end
end