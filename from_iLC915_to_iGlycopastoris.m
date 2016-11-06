model=importModel('iLC915.xml',true,true);
%% Protein production
% Human Serum Albumin (Alb-Redhill)
% Glycosylation sites: 1
rxnToAdd.rxns={'r2001'};
rxnToAdd.subSystems={'Recombinant protein polymerization'};
rxnToAdd.rxnNames={'Alb-Redhill synthesis'};
rxnToAdd.equations={'62 L-Alanine[c] + 28 L-Arginine[c] + 17 L-Asparagine[c] + 36 L-Aspartate[c] + 35 L-Cysteine[c] + 62 L-Glutamate[c] + 20 L-Glutamine[c] + 13 Glycine[c] + 16 L-Histidine[c] + 9 L-Isoleucine[c] + 64 L-Leucine[c] + 60 L-Lysine[c] + 7 L-Methionine[c] + 35 L-Phenylalanine[c] + 24 L-Proline[c] + 28 L-Serine[c] + 30 L-Threonine[c] + 2 L-Tryptophan[c] + 19 L-Tyrosine[c] + 43 L-Valine[c] + 2436 ATP[c] => 2436 ADP[c] + Orthophosphate[c] + Alb-Redhill[c]'};
rxnToAdd.lb=0;
rxnToAdd.ub=1000;
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2002'};
rxnToAdd.subSystems={'Transport recombinant protein'};
rxnToAdd.rxnNames={'Alb-Redhill transport, ER'};
rxnToAdd.equations={'Alb-Redhill[c] <=> Alb-Redhill[r]'};
rxnToAdd.lb=-1000;
rxnToAdd.ub=1000;
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2002_1'};
rxnToAdd.subSystems={'Transport recombinant protein'};
rxnToAdd.rxnNames={'Alb-Redhill transport, extracellular'};
rxnToAdd.equations={'Alb-Redhill[c] <=> Alb-Redhill[e]'};
rxnToAdd.lb=-1000;
rxnToAdd.ub=1000;
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

% Interferon-Thao (INF-t)
% Glycosylation sites: 1
rxnToAdd.rxns={'r2003'};
rxnToAdd.subSystems={'Recombinant protein polymerization'};
rxnToAdd.rxnNames={'INF synthesis'};
rxnToAdd.equations={'7 L-Alanine[c] + 14 L-Arginine[c] + 5 L-Asparagine[c] + 13 L-Aspartate[c] + 6 L-Cysteine[c] + 12 L-Glutamate[c] + 14 L-Glutamine[c] + 13 Glycine[c] + 4 L-Histidine[c] + 3 L-Isoleucine[c] + 29 L-Leucine[c] + 10 L-Lysine[c] + 9 L-Methionine[c] + 5 L-Phenylalanine[c] + 7 L-Proline[c] + 13 L-Serine[c] + 11 L-Threonine[c] + 2 L-Tryptophan[c] + 7 L-Tyrosine[c] + 11 L-Valine[c] + 780 ATP[c] => 780 ADP[c] + Orthophosphate[c] + INF[c]'};
rxnToAdd.lb=0;
rxnToAdd.ub=1000;
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2004'};
rxnToAdd.subSystems={'Transport recombinant protein'};
rxnToAdd.rxnNames={'INF transport, ER'};
rxnToAdd.equations={'INF[c] <=> INF[r]'};
rxnToAdd.lb=-1000;
rxnToAdd.ub=1000;
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2004_1'};
rxnToAdd.subSystems={'Transport recombinant protein'};
rxnToAdd.rxnNames={'INF transport, extracellular'};
rxnToAdd.equations={'INF[c] <=> INF[e]'};
rxnToAdd.lb=-1000;
rxnToAdd.ub=1000;
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

% Human interleukin 4 (hIL4)
% Glycosylation sites: 1
rxnToAdd.rxns={'r2005'};
rxnToAdd.subSystems={'Recombinant protein polymerization'};
rxnToAdd.rxnNames={'hIL4 synthesis'};
rxnToAdd.equations={'10 L-Alanine[c] + 9 L-Arginine[c] + 7 L-Asparagine[c] + 4 L-Aspartate[c] + 7 L-Cysteine[c] + 10 L-Glutamate[c] + 8 L-Glutamine[c] + 6 Glycine[c] + 6 L-Histidine[c] + 6 L-Isoleucine[c] + 22 L-Leucine[c] + 12 L-Lysine[c] + 2 L-Methionine[c] + 9 L-Phenylalanine[c] + 3 L-Proline[c] + 9 L-Serine[c] + 16 L-Threonine[c] + 1 L-Tryptophan[c] + 2 L-Tyrosine[c] + 4 L-Valine[c] + 612 ATP[c] => 612 ADP[c] + Orthophosphate[c] + hIL4[c]'};
rxnToAdd.lb=0;
rxnToAdd.ub=1000;
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2006'};
rxnToAdd.subSystems={'Transport recombinant protein'};
rxnToAdd.rxnNames={'hIL4 transport, ER'};
rxnToAdd.equations={'hIL4[c] <=> hIL4[r]'};
rxnToAdd.lb=-1000;
rxnToAdd.ub=1000;
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2006_1'};
rxnToAdd.subSystems={'Transport recombinant protein'};
rxnToAdd.rxnNames={'hIL4 transport, extracellular'};
rxnToAdd.equations={'hIL4[c] <=> hIL4[e]'};
rxnToAdd.lb=-1000;
rxnToAdd.ub=1000;
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

% Human mast cell chymase (chy)
% Glycosylation sites: 2
rxnToAdd.rxns={'r2007'};
rxnToAdd.subSystems={'Recombinant protein polymerization'};
rxnToAdd.rxnNames={'chy synthesis'};
rxnToAdd.equations={'17 L-Alanine[c] + 15 L-Arginine[c] + 9 L-Asparagine[c] + 8 L-Aspartate[c] + 8 L-Cysteine[c] + 10 L-Glutamate[c] + 9 L-Glutamine[c] + 21 Glycine[c] + 9 L-Histidine[c] + 12 L-Isoleucine[c] + 30 L-Leucine[c] + 14 L-Lysine[c] + 5 L-Methionine[c] + 12 L-Phenylalanine[c] + 17 L-Proline[c] + 15 L-Serine[c] + 15 L-Threonine[c] + 3 L-Tryptophan[c] + 5 L-Tyrosine[c] + 13 L-Valine[c] + 988 ATP[c] => 988 ADP[c] + Orthophosphate[c] + chy[c]'};
rxnToAdd.lb=0;
rxnToAdd.ub=1000;
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2008'};
rxnToAdd.subSystems={'Transport recombinant protein'};
rxnToAdd.rxnNames={'chy transport, ER'};
rxnToAdd.equations={'chy[c] <=> chy[r]'};
rxnToAdd.lb=-1000;
rxnToAdd.ub=1000;
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2008_1'};
rxnToAdd.subSystems={'Transport recombinant protein'};
rxnToAdd.rxnNames={'chy transport, extracellular'};
rxnToAdd.equations={'chy[c] <=> chy[e]'};
rxnToAdd.lb=-1000;
rxnToAdd.ub=1000;
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd
 
% Erythropoietin (EPO)
% Glycosylation sites: 3
rxnToAdd.rxns={'r2009'};
rxnToAdd.subSystems={'Recombinant protein polymerization'};
rxnToAdd.rxnNames={'epo synthesis'};
rxnToAdd.equations={'20 L-Alanine[c] + 13 L-Arginine[c] + 6 L-Asparagine[c] + 6 L-Aspartate[c] + 5 L-Cysteine[c] + 13 L-Glutamate[c] + 7 L-Glutamine[c] + 12 Glycine[c] + 3 L-Histidine[c] + 5 L-Isoleucine[c] + 33 L-Leucine[c] + 8 L-Lysine[c] + 2 L-Methionine[c] + 4 L-Phenylalanine[c] + 11 L-Proline[c] + 12 L-Serine[c] + 11 L-Threonine[c] + 5 L-Tryptophan[c] + 4 L-Tyrosine[c] + 13 L-Valine[c] + 772 ATP[c] => 772 ADP[c] + Orthophosphate[c] + epo[c]'};
rxnToAdd.lb=0;
rxnToAdd.ub=1000;
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2010'};
rxnToAdd.subSystems={'Transport recombinant protein'};
rxnToAdd.rxnNames={'epo transport, ER'};
rxnToAdd.equations={'epo[c] <=> epo[r]'};
rxnToAdd.lb=-1000;
rxnToAdd.ub=1000;
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2010_1'};
rxnToAdd.subSystems={'Transport recombinant protein'};
rxnToAdd.rxnNames={'epo transport, extracellular'};
rxnToAdd.equations={'epo[c] <=> epo[e]'};
rxnToAdd.lb=-1000;
rxnToAdd.ub=1000;
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

% prostaglandin H synthases (PGHS)
% Glycosylation sites: 4
rxnToAdd.rxns={'r2011'};
rxnToAdd.subSystems={'Recombinant protein polymerization'};
rxnToAdd.rxnNames={'PGHS synthesis'};
rxnToAdd.equations={'31 L-Alanine[c] + 27 L-Arginine[c] + 29 L-Asparagine[c] + 26 L-Aspartate[c] + 13 L-Cysteine[c] + 36 L-Glutamate[c] + 31 L-Glutamine[c] + 37 Glycine[c] + 19 L-Histidine[c] + 34 L-Isoleucine[c] + 57 L-Leucine[c] + 34 L-Lysine[c] + 15 L-Methionine[c] + 38 L-Phenylalanine[c] + 40 L-Proline[c] + 35 L-Serine[c] + 34 L-Threonine[c] + 6 L-Tryptophan[c] + 27 L-Tyrosine[c] + 35 L-Valine[c] + 2416 ATP[c] => 2416 ADP[c] + Orthophosphate[c] + PGHS[c]'};
rxnToAdd.lb=0;
rxnToAdd.ub=1000;
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2012'};
rxnToAdd.subSystems={'Transport recombinant protein'};
rxnToAdd.rxnNames={'PGHS transport, ER'};
rxnToAdd.equations={'PGHS[c] <=> PGHS[r]'};
rxnToAdd.lb=-1000;
rxnToAdd.ub=1000;
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2012_1'};
rxnToAdd.subSystems={'Transport recombinant protein'};
rxnToAdd.rxnNames={'PGHS transport, extracellular'};
rxnToAdd.equations={'PGHS[c] <=> PGHS[e]'};
rxnToAdd.lb=-1000;
rxnToAdd.ub=1000;
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd
%% Dehydrodolichyl diphosphate synthase :
% 2-trans,6-trans-farnesyl diphosphate[c] + 17 Isopentenyl diphosphate[c] => di-trans-poly-cis-polyprenyl diphosphate[c] + 17 diphosphate[c]
% IDs:
% trans,trans-Farnesyl diphosphate[c]: m951
% Isopentenyl diphosphate[c]: m1147
% di-trans-poly-cis-polyprenyl diphosphate[c]: m1149
% Diphosphate[c]: m23
% P. pastoris contains primarily dolichol-17, or C85 dolichol. PMID: 16271301
model = changeRxns(model,'r505',{'1 m951 + 17 m1147 => 1 m1149 + 17 m23'},1);
%% Polyprenol reductase :
% di-trans, poly-cis-polyprenol[c] + NADPH[c] + H+[c] => dolichol[c] + NADP+[c]
% Reference:
% PMID: 11173532 and PMID: 16213651
rxnToAdd.rxns={'r2015'};
rxnToAdd.subSystems={'N-Glycan metabolism'};
rxnToAdd.rxnNames={'Polyprenol reductase'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.equations={'di-trans-poly-cis-polyprenol[c] + NADPH[c] + H+[c] => Dolichol[c] + NADP+[c]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd
%% Dolichol kinase:
% dolichol[c] + CTP[c] => dolichyl phosphate[c] + CDP[c] + H+[c]
% There are two reactions with the same Gene: PAS_chr2-1_0498 but none of
% them was in the cytoplasm
rxnToAdd.rxns={'r2016'};
rxnToAdd.subSystems={'N-Glycan metabolism'};
rxnToAdd.rxnNames={'Dolichol kinase'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.equations={'Dolichol[c] + CTP[c] => Dolichyl phosphate[c] + CDP[c] + H+[c]'};
rxnToAdd.grRules={'PAS_chr2-1_0498'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd
%% UDP-N-acetylglucosamine-dolichyl-phosphate N-acetylglocosaminephosphotransferase :
% dolichyl phosphate[c] + UDP-N-acetyl-alpha-D-glucosamine[c] => UMP[c] +  N-acetyl-D-glucosaminyldiphosphodolichol[c]
% already present, r661
%% UDP-N-acetylglucosamine: dolichyl diphosphate N-acetylglucosamine, N-acetylglucosamine transferase :
% N-acetyl-D-glucosaminyldiphosphodolichol[c] + UDP-N-acetyl-alpha-D-glucosamine[c] => (N-acetylglucosaminyl)2-diphosphodolichol[c] + H+[c] + UDP[c]
% IDs:
% N-Acetyl-D-glucosaminyldiphosphodolichol[c]: m972
% UDP-N-acetyl-D-glucosamine[c]: m447
% (N-acetylglucosaminyl)2-diphosphodolichol[c]: m973, as N,N'-Chitobiosyldiphosphodolichol[c]
% H+[c]: m16
% UDP[c] : m25
model = changeRxns(model,'r454',{'1 m972 + 1 m447 => 1 m16 + 1 m25 + 1 m973'},1);
%% chitobiosyldiphosphodolichol beta-mannosyltransferase :
% (N-acetylglucosaminyl)2-diphosphodolichol[c] + GDP-mannose[c] => mannosyl-(N-acetylglucosaminyl)2-diphosphodolichol[c] + H+[c] + GDP[c]
% IDs:
% (N-acetylglucosaminyl)2-diphosphodolichol[c]:  m973, as
% N,N'-Chitobiosyldiphosphodolichol[c]
% GDP-mannose[c]: m784 % GDP-D-mannose is also mentioned in the model, but not connected to the rest of metabolism.
% mannosyl-(N-acetylglucosaminyl)2-diphosphodolichol[c]: m975, as (GlcNAc)2(Man)1(PP-Dol)1[c]
% H+[c]: m16
% GDP[c] : m368
model = changeRxns(model,'r455',{'1 m973 + 1 m784 => 1 m16 + 1 m368 + 1 m975'},1);
%% GDP-Man Man2GlcNAc2-PP-dolichol alpha-1,3-mannosyltransferase :
% mannosyl-(N-acetylglucosaminyl)2-diphosphodolichol[c] + GDP-alpha-D-mannose[c] => (mannosyl)2-(N-acetylglucosaminyl)2-diphosphodolichol[c] + H+[c] + GDP[c]
% IDs:
% mannosyl-(N-acetylglucosaminyl)2-diphosphodolichol[c]: m975
% GDP-mannose[c] : m784
% (mannosyl)2-(N-acetylglucosaminyl)2-diphosphodolichol[c]: m976, as (GlcNAc)2(Man)2(PP-Dol)1[c]
% H+[c]: H+[c]
% GDP[c] : m368
model = changeRxns(model,'r452',{'1 m975 + 1 m784 => 1 m16 + 1 m368 + 1 m976'},1);
%% GDP-Man Man2GlcNAc2-PP-dolichol alpha-1,6-mannosyltransferase :
% (mannosyl)2-(N-acetylglucosaminyl)2-diphosphodolichol[c] + GDP-alpha-D-mannose[c] => (mannosyl)3-(N-acetylglucosaminyl)2-diphosphodolichol[c] + H+[c] + GDP[c]
% IDs:
% (mannosyl)2-(N-acetylglucosaminyl)2-diphosphodolichol[c] : m976
% GDP-mannose[c] : m784
% (mannosyl)3-(N-acetylglucosaminyl)2-diphosphodolichol[c] : m989, as (GlcNAc)2(Man)3(PP-Dol)1[c]
% H+[c]: m16
% GDP[c] : m368
model = changeRxns(model,'r453',{'1 m976 + 1 m784 => 1 m16 + 1 m368 + 1 m989'},1);
%% GDP-Man Man3GlcNAc2-PP-dolichol alpha-1,2-mannosyltransferase :
% (mannosyl)3-(N-acetylglucosaminyl)2-diphosphodolichol[c] + 2 GDP-alpha-D-mannose[c] => (GlcNAc)2(Man)4(PP-Dol)1[c] + 2 H+[c] + 2 GDP[c]
% As two reactions
% IDs:
% (mannosyl)3-(N-acetylglucosaminyl)2-diphosphodolichol[c]: m989
% GDP-mannose[c]: m784
% (GlcNAc)2(Man)4(PP-Dol)1[c]: m995
% H+[c]: m16
% GDP[c]: m368
model = changeRxns(model,'r448',{'1 m989 + 1 m784 => 1 m16 + 1 m368 + 1 m990'},1);
model = changeRxns(model,'r450',{'1 m990 + 1 m784 => 1 m16 + 1 m368 + 1 m995'},1);
%% M5-DLO FLippase : 
% (GlcNAc)2(Man)4(PP-Dol)1[c] <=> (GlcNAc)2(Man)4(PP-Dol)1[r]
% Reference:23720757
rxnToAdd.rxns={'r2022'};
rxnToAdd.subSystems={'ER transport'};
rxnToAdd.rxnNames={'M5-DLO FLippase'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=-1000;
rxnToAdd.equations={'(GlcNAc)2(Man)4(PP-Dol)1[c] <=> (GlcNAc)2(Man)4(PP-Dol)1[r]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd
%% MPD FLippase : 
% dolichyl beta-D-mannosyl phosphate[c] <=> dolichyl beta-D-mannosyl phosphate[r]
% Reference:23720757
rxnToAdd.rxns={'r2023'};
rxnToAdd.subSystems={'ER transport'};
rxnToAdd.rxnNames={'MPD FLippase'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=-1000;
rxnToAdd.equations={'Dolichyl phosphate D-mannose[c] <=> Dolichyl phosphate D-mannose[r]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd
%% Simple dolichyl phosphate diffusion : 
rxnToAdd.rxns={'r2024'};
rxnToAdd.subSystems={'ER transport'};
rxnToAdd.rxnNames={'Simple dolichyl phosphate diffusion'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=-1000;
rxnToAdd.equations={'Dolichyl phosphate[c] <=> Dolichyl phosphate[r]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd
%% Dol-P-Man Man5GlcNAc2-PP-Dol mannosyltransferase :
% (GlcNAc)2(Man)4(PP-Dol)1[r] + dolichyl beta-D-mannosyl phosphate[r] => (GlcNAc)2(Man)6(PP-Dol)1[r] + H+[r] + dolichyl phosphate[r]
rxnToAdd.rxns={'r2025'};
rxnToAdd.subSystems={'N-Glycan metabolism'};
rxnToAdd.rxnNames={'Dol-P-Man Man5GlcNAc2-PP-Dol mannosyltransferase'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.equations={'(GlcNAc)2(Man)4(PP-Dol)1[r] + Dolichyl phosphate D-mannose[r] => (GlcNAc)2(Man)6(PP-Dol)1[r] + H+[r] + Dolichyl phosphate[r]'};
rxnToAdd.grRules={'PAS_chr4_0712'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd
model=removeReactions(model,'r444',true); % Was localized in cytosol, should be ER.
%% (mannosyl)6-(N-acetylglucosaminyl)2-diphosphodolichol glucosyltransferase :
%(GlcNAc)2(Man)6(PP-Dol)1[r] + dolichyl beta-D-mannosyl phosphate[r] => (GlcNAc)2(Man)7(PP-Dol)1[r] + H+[r] + dolichyl phosphate[r]
rxnToAdd.rxns={'r2026'};
rxnToAdd.subSystems={'N-Glycan metabolism'};
rxnToAdd.rxnNames={'(mannosyl)6-(N-acetylglucosaminyl)2-diphosphodolichol glucosyltransferase'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.grRules={'PAS_chr2-2_0036'};
rxnToAdd.equations={'(GlcNAc)2(Man)6(PP-Dol)1[r] + Dolichyl phosphate D-mannose[r] => (GlcNAc)2(Man)7(PP-Dol)1[r] + H+[r] + Dolichyl phosphate[r]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd
model=removeReactions(model,'r445',true); % Was localized in cytosol, should be ER.
%% alpha-1,6-mannosyl transferase :
%(GlcNAc)2(Man)7(PP-Dol)1[r] + dolichyl beta-D-mannosyl phosphate[r] => (GlcNAc)2(Man)8(PP-Dol)1[r] + H+[r] + dolichyl phosphate[r]
rxnToAdd.rxns={'r2027'};
rxnToAdd.subSystems={'N-Glycan metabolism'};
rxnToAdd.rxnNames={'alpha-1,6-mannosyl transferase'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.grRules={'PAS_chr4_0544'};
rxnToAdd.equations={'(GlcNAc)2(Man)7(PP-Dol)1[r] + Dolichyl phosphate D-mannose[r] => (GlcNAc)2(Man)8(PP-Dol)1[r] + H+[r] + Dolichyl phosphate[r]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd
model=removeReactions(model,'r446',true); % Was localized in cytosol, should be ER.
%% (mannosyl)8-(N-acetylglucosaminyl)2-diphosphodolichol glucosyltransferase :
%(GlcNAc)2(Man)8(PP-Dol)1[r] + dolichyl beta-D-mannosyl phosphate[r] => (GlcNAc)2(Man)9(PP-Dol)1[r] + H+[r] + dolichyl phosphate[r]
rxnToAdd.rxns={'r2028'};
rxnToAdd.subSystems={'N-Glycan metabolism'};
rxnToAdd.rxnNames={'(mannosyl)8-(N-acetylglucosaminyl)2-diphosphodolichol glucosyltransferase'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.grRules={'PAS_chr2-2_0036'};
rxnToAdd.equations={'(GlcNAc)2(Man)8(PP-Dol)1[r] + Dolichyl phosphate D-mannose[r] => (GlcNAc)2(Man)9(PP-Dol)1[r] + H+[r] + Dolichyl phosphate[r]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd
model=removeReactions(model,'r447',true); % Was localized in cytosol, should be ER.
%% ADD GENES
genesToAdd.genes={'PAS_chr4_0839'}; %%
model=addGenes(model, genesToAdd);
genesToAdd.genes={'PAS_chr2-2_0552'}; %%
model=addGenes(model, genesToAdd);
%% UDP-glucose:dolichyl-phosphate glucosyltransferase :
%dolichyl phosphate[c] + UDP-D-glucose[c] => dolichyl beta-D-glucosyl phosphate[c] + UDP[c]
rxnToAdd.rxns={'r2029'};
rxnToAdd.subSystems={'N-Glycan metabolism'};
rxnToAdd.rxnNames={'UDP-glucose-dolichyl-phosphate glucosyltransferase'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.grRules={'PAS_chr3_0552'};
rxnToAdd.equations={'Dolichyl phosphate[c] + UDP-glucose[c] => Dolichyl beta-D-glucosyl phosphate[c] + UDP[c]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd
%% GPD FLippase : 
%dolichyl beta-D-glucosyl phosphate[c] <=> dolichyl beta-D-glucosyl phosphate[r]
%Reference:23720757
rxnToAdd.rxns={'r2030'};
rxnToAdd.subSystems={'ER transport'};
rxnToAdd.rxnNames={'GPD FLippase'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=-1000;
rxnToAdd.equations={'Dolichyl beta-D-glucosyl phosphate[r] <=> Dolichyl beta-D-glucosyl phosphate[c]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd
%% (mannosyl)9-(N-acetylglucosaminyl)2-diphosphodolichol glucosyltransferase :
%(GlcNAc)2(Man)9(PP-Dol)1[r] + dolichyl beta-D-glucosyl phosphate[r] => (Glc)1(GlcNAc)2(Man)9(PP-Dol)1[r] + H+[r] + dolichyl phosphate[r]
rxnToAdd.rxns={'r2031'};
rxnToAdd.subSystems={'N-Glycan metabolism'};
rxnToAdd.rxnNames={'(mannosyl)9-(N-acetylglucosaminyl)2-diphosphodolichol glucosyltransferase'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.grRules={'PAS_chr2-1_0549'};
rxnToAdd.equations={'(GlcNAc)2(Man)9(PP-Dol)1[r] + Dolichyl beta-D-glucosyl phosphate[r] => (Glc)1(GlcNAc)2(Man)9(PP-Dol)1[r] + H+[r] + Dolichyl phosphate[r]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd
model=removeReactions(model,'r434',true); % Was localized in cytosol, should be ER.
%% glucosyl-(GlcNAc)2(Man)9-diphosphodolichol glucosyltransferase :
%(Glc)1(GlcNAc)2(Man)9(PP-Dol)1[r] + dolichyl beta-D-glucosyl phosphate[r] => (Glc)2(GlcNAc)2(Man)9(PP-Dol)1[r] + H+[r] + dolichyl phosphate[r]
rxnToAdd.rxns={'r2032'};
rxnToAdd.subSystems={'N-Glycan metabolism'};
rxnToAdd.rxnNames={'glucosyl-(GlcNAc)2(Man)9-diphosphodolicol glucosyltransferase'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.grRules={'PAS_chr3_0999'};
rxnToAdd.equations={'(Glc)1(GlcNAc)2(Man)9(PP-Dol)1[r] + Dolichyl beta-D-glucosyl phosphate[r] => (Glc)2(GlcNAc)2(Man)9(PP-Dol)1[r] + H+[r] + Dolichyl phosphate[r]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd
model=removeReactions(model,'r435',true); % Was localized in cytosol, should be ER.
%% alpha-1,2 glucosyltransferase :
%(Glc)2(GlcNAc)2(Man)9(PP-Dol)1[r] + dolichyl beta-D-glucosyl phosphate[r] => (Glc)3(GlcNAc)2(Man)9(PP-Dol)1[r] + H+[r] + dolichyl phosphate[r]
rxnToAdd.rxns={'r2033'};
rxnToAdd.subSystems={'N-Glycan metabolism'};
rxnToAdd.rxnNames={'alpha-1,2 glucosyltransferase'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.grRules={'PAS_chr1-4_0475'};
rxnToAdd.equations={'(Glc)2(GlcNAc)2(Man)9(PP-Dol)1[r] + Dolichyl beta-D-glucosyl phosphate[r] => (Glc)3(GlcNAc)2(Man)9(PP-Dol)1[r] + H+[r] + Dolichyl phosphate[r]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd
model=removeReactions(model,'r436',true); % Was localized in cytosol, should be ER.
%% Dolichyldiphosphatase:
%dolichyl diphosphate[r] + H2O[r] => dolichyl phosphate[r] + phosphate[r]
% Already in model, r833
%% Transfer of the Dolichol-linked precursor to nascent proteins in Pichia pastoris
% Number of precursors transfers to protein dependent on N-glycosylation
% sites
rxnToAdd.rxns={'r2035'};
rxnToAdd.subSystems={'Native N-glycosylation processing'};
rxnToAdd.rxnNames={'Alb-Redhill glycosylation'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.grRules={'PAS_chr1-4_0685'};
rxnToAdd.equations={'(Glc)3(GlcNAc)2(Man)9(PP-Dol)1[r] + Alb-Redhill[r] => Alb-Redhill-(Glc)3(GlcNAc)2(Man)9[r] + Dolichyl phosphate[r]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2036'};
rxnToAdd.subSystems={'Native N-glycosylation processing'};
rxnToAdd.rxnNames={'INF glycosylation'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.grRules={'PAS_chr1-4_0685'};
rxnToAdd.equations={'(Glc)3(GlcNAc)2(Man)9(PP-Dol)1[r] + INF[r] => INF-(Glc)3(GlcNAc)2(Man)9[r] + Dolichyl phosphate[r]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2037'};
rxnToAdd.subSystems={'Native N-glycosylation processing'};
rxnToAdd.rxnNames={'hIL4 glycosylation'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.grRules={'PAS_chr1-4_0685'};
rxnToAdd.equations={'(Glc)3(GlcNAc)2(Man)9(PP-Dol)1[r] + hIL4[r] => hIL4-(Glc)3(GlcNAc)2(Man)9[r] + Dolichyl phosphate[r]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2038'};
rxnToAdd.subSystems={'Native N-glycosylation processing'};
rxnToAdd.rxnNames={'chy glycosylation'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.grRules={'PAS_chr1-4_0685'};
rxnToAdd.equations={'2 (Glc)3(GlcNAc)2(Man)9(PP-Dol)1[r] + chy[r] => chy-(Glc)3(GlcNAc)2(Man)9[r] + 2 Dolichyl phosphate[r]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2039'};
rxnToAdd.subSystems={'Native N-glycosylation processing'};
rxnToAdd.rxnNames={'epo glycosylation'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.grRules={'PAS_chr1-4_0685'};
rxnToAdd.equations={'3 (Glc)3(GlcNAc)2(Man)9(PP-Dol)1[r] + epo[r] => epo-(Glc)3(GlcNAc)2(Man)9[r] + 3 Dolichyl phosphate[r]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2040'};
rxnToAdd.subSystems={'Native N-glycosylation processing'};
rxnToAdd.rxnNames={'PGHS glycosylation'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.grRules={'PAS_chr1-4_0685'};
rxnToAdd.equations={'4 (Glc)3(GlcNAc)2(Man)9(PP-Dol)1[r] + PGHS[r] => PGHS-(Glc)3(GlcNAc)2(Man)9[r] + 4 Dolichyl phosphate[r]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd
%% Glucosidases, working on N-glycosylated recombinant proteins
rxnToAdd.rxns={'r2048'};
rxnToAdd.subSystems={'Native N-glycosylation processing'};
rxnToAdd.rxnNames={'Alb-Redhill Glucosidase1'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.equations={'Alb-Redhill-(Glc)3(GlcNAc)2(Man)9[r] + H2O[r] => Alb-Redhill-(Glc)2(GlcNAc)2(Man)9[r] + D-Glucose[r]'};
rxnToAdd.grRules={'PAS_chr1-1_0215'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2049'};
rxnToAdd.subSystems={'Native N-glycosylation processing'};
rxnToAdd.rxnNames={'INF Glucosidase1'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.equations={'INF-(Glc)3(GlcNAc)2(Man)9[r] + H2O[r] => INF-(Glc)2(GlcNAc)2(Man)9[r] + D-Glucose[r]'};
rxnToAdd.grRules={'PAS_chr1-1_0215'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2050'};
rxnToAdd.subSystems={'Native N-glycosylation processing'};
rxnToAdd.rxnNames={'hIL4 Glucosidase1'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.equations={'hIL4-(Glc)3(GlcNAc)2(Man)9[r] + H2O[r] => hIL4-(Glc)2(GlcNAc)2(Man)9[r] + D-Glucose[r]'};
rxnToAdd.grRules={'PAS_chr1-1_0215'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2051'};
rxnToAdd.subSystems={'Native N-glycosylation processing'};
rxnToAdd.rxnNames={'chy Glucosidase1'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.equations={'chy-(Glc)3(GlcNAc)2(Man)9[r] + 2 H2O[r] => chy-(Glc)2(GlcNAc)2(Man)9[r] + 2 D-Glucose[r]'};
rxnToAdd.grRules={'PAS_chr1-1_0215'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2052'};
rxnToAdd.subSystems={'Native N-glycosylation processing'};
rxnToAdd.rxnNames={'epo Glucosidase1'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.equations={'epo-(Glc)3(GlcNAc)2(Man)9[r] + 3 H2O[r] => epo-(Glc)2(GlcNAc)2(Man)9[r] + 3 D-Glucose[r]'};
rxnToAdd.grRules={'PAS_chr1-1_0215'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2053'};
rxnToAdd.rxnNames={'PGHS Glucosidase1'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.equations={'PGHS-(Glc)3(GlcNAc)2(Man)9[r] + 4 H2O[r] => PGHS-(Glc)2(GlcNAc)2(Man)9[r] + 4 D-Glucose[r]'};
rxnToAdd.grRules={'PAS_chr1-1_0215'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd
%% Transport of glucose between ER and cytosol 
rxnToAdd.rxns={'r2054'};
rxnToAdd.subSystems={'ER transport'};
rxnToAdd.rxnNames={'D-Glucose ER transport'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=-1000;
rxnToAdd.equations={'D-Glucose[r] <=> alpha-D-Glucose[c]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd
%% Additional glucosidase working on N-glycosylated protein
rxnToAdd.rxns={'r2055','r2056','r2057','r2058','r2059','r2060'};
rxnToAdd.rxnNames={'Alb-Redhill Glucosidase2','INF Glucosidase2','hIL4 Glucosidase2','chy Glucosidase2',...
    'epo Glucosidase2','PGHS Glucosidase2'};
rxnToAdd.subSystems={'Native N-glycosylation processing',...
    'Native N-glycosylation processing','Native N-glycosylation processing',...
    'Native N-glycosylation processing','Native N-glycosylation processing',...
    'Native N-glycosylation processing'};
rxnToAdd.ub=[1000,1000,1000,1000,1000,1000];
rxnToAdd.lb=[0,0,0,0,0,0];
rxnToAdd.equations={'Alb-Redhill-(Glc)2(GlcNAc)2(Man)9[r] + H2O[r] => Alb-Redhill-(Glc)1(GlcNAc)2(Man)9[r] + D-Glucose[r]',...
    'INF-(Glc)2(GlcNAc)2(Man)9[r] + H2O[r] => INF-(Glc)1(GlcNAc)2(Man)9[r] + D-Glucose[r]',...
    'hIL4-(Glc)2(GlcNAc)2(Man)9[r] + H2O[r] => hIL4-(Glc)1(GlcNAc)2(Man)9[r] + D-Glucose[r]',...
    'chy-(Glc)2(GlcNAc)2(Man)9[r] + 2 H2O[r] => chy-(Glc)1(GlcNAc)2(Man)9[r] + 2 D-Glucose[r]',...
    'epo-(Glc)2(GlcNAc)2(Man)9[r] + 3 H2O[r] => epo-(Glc)1(GlcNAc)2(Man)9[r] + 3 D-Glucose[r]',...
    'PGHS-(Glc)2(GlcNAc)2(Man)9[r] + 4 H2O[r] => PGHS-(Glc)1(GlcNAc)2(Man)9[r] + 4 D-Glucose[r]'};
rxnToAdd.grRules={'PAS_chr2-1_0778','PAS_chr2-1_0778','PAS_chr2-1_0778','PAS_chr2-1_0778','PAS_chr2-1_0778','PAS_chr2-1_0778'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd
%% Final glucosidase working on N-glycosylated protein
rxnToAdd.rxns={'r2061','r2062','r2063','r2064','r2065','r2066'};
rxnToAdd.rxnNames={'Alb-Redhill Glucosidase3','INF Glucosidase3','hIL4 Glucosidase3','chy Glucosidase3',...
    'epo Glucosidase3','PGHS Glucosidase3'};
rxnToAdd.subSystems={'Native N-glycosylation processing',...
    'Native N-glycosylation processing','Native N-glycosylation processing',...
    'Native N-glycosylation processing','Native N-glycosylation processing',...
    'Native N-glycosylation processing'};
rxnToAdd.ub=[1000,1000,1000,1000,1000,1000];
rxnToAdd.lb=[0,0,0,0,0,0];
rxnToAdd.equations={'Alb-Redhill-(Glc)1(GlcNAc)2(Man)9[r] + H2O[r] => Alb-Redhill-(GlcNAc)2(Man)9[r] + D-Glucose[r]',...
    'INF-(Glc)1(GlcNAc)2(Man)9[r] + H2O[r] => INF-(GlcNAc)2(Man)9[r] + D-Glucose[r]',...
    'hIL4-(Glc)1(GlcNAc)2(Man)9[r] + H2O[r] => hIL4-(GlcNAc)2(Man)9[r] + D-Glucose[r]',...
    'chy-(Glc)1(GlcNAc)2(Man)9[r] + 2 H2O[r] => chy-(GlcNAc)2(Man)9[r] + 2 D-Glucose[r]',...
    'epo-(Glc)1(GlcNAc)2(Man)9[r] + 3 H2O[r] => epo-(GlcNAc)2(Man)9[r] + 3 D-Glucose[r]',...
    'PGHS-(Glc)1(GlcNAc)2(Man)9[r] + 4 H2O[r] => PGHS-(GlcNAc)2(Man)9[r] + 4 D-Glucose[r]'};
rxnToAdd.grRules={'PAS_chr2-1_0778','PAS_chr2-1_0778','PAS_chr2-1_0778','PAS_chr2-1_0778','PAS_chr2-1_0778','PAS_chr2-1_0778'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd
%%  Mannosidase
%(GlcNAc)2(Man)9(PP-Dol)1[r] + H2O[r] => (GlcNAc)2(Man)9(PP-Dol)1[r] + D-Mannose[r] 
rxnToAdd.grRules={'PAS_chr2-1_0753','PAS_chr2-1_0753','PAS_chr2-1_0753',...
    'PAS_chr2-1_0753','PAS_chr2-1_0753','PAS_chr2-1_0753'};
rxnToAdd.rxns={'r2067','r2068','r2069','r2070','r2071','r2072'};
rxnToAdd.subSystems={'Native N-glycosylation processing',...
    'Native N-glycosylation processing','Native N-glycosylation processing',...
    'Native N-glycosylation processing','Native N-glycosylation processing',...
    'Native N-glycosylation processing'};
rxnToAdd.rxnNames={'Alb-Redhill mannosidase','INF mannosidase','hIL4 mannosidase','chy mannosidase','epo mannosidase','PGHS mannosidase'};
rxnToAdd.ub=[1000,1000,1000,1000,1000,1000];
rxnToAdd.lb=[0,0,0,0,0,0];
rxnToAdd.equations={'Alb-Redhill-(GlcNAc)2(Man)9[r] + H2O[r] => Alb-Redhill-(GlcNAc)2(Man)8[r] + D-Mannose[r]',...
    'INF-(GlcNAc)2(Man)9[r] + H2O[r] => INF-(GlcNAc)2(Man)8[r] + D-Mannose[r]',...
    'hIL4-(GlcNAc)2(Man)9[r] + H2O[r] => hIL4-(GlcNAc)2(Man)8[r] + D-Mannose[r]',...
    'chy-(GlcNAc)2(Man)9[r] + 2 H2O[r] => chy-(GlcNAc)2(Man)8[r] + 2 D-Mannose[r]',...
    'epo-(GlcNAc)2(Man)9[r] + 3 H2O[r] => epo-(GlcNAc)2(Man)8[r] + 3 D-Mannose[r]',...
    'PGHS-(GlcNAc)2(Man)9[r] + 4 H2O[r] => PGHS-(GlcNAc)2(Man)8[r] + 4 D-Mannose[r]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd
%% Mannose transport
rxnToAdd.rxns={'r2072_1'};
rxnToAdd.subSystems={'ER transport'};
rxnToAdd.rxnNames={'D-Mannose ER transport'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=-1000;
rxnToAdd.equations={'D-Mannose[r] <=> D-Mannose[c]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2072_2'};
rxnToAdd.subSystems={'Golgi transport'};
rxnToAdd.rxnNames={'D-Mannose Golgi transport'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=-1000;
rxnToAdd.equations={'D-Mannose[g] <=> D-Mannose[c]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd
%% Transport of N-glycosylated protein from ER to Golgi
rxnToAdd.rxns={'r2073'};
rxnToAdd.subSystems={'Transport recombinant protein'};
rxnToAdd.rxnNames={'Alb-Redhill-(GlcNAc)2(Man)8 transport, Golgi'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=-1000;
rxnToAdd.equations={'Alb-Redhill-(GlcNAc)2(Man)8[r] <=> Alb-Redhill-(GlcNAc)2(Man)8[g]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2074'};
rxnToAdd.subSystems={'Transport recombinant protein'};
rxnToAdd.rxnNames={'INF-(GlcNAc)2(Man)8 transport, Golgi'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=-1000;
rxnToAdd.equations={'INF-(GlcNAc)2(Man)8[r] <=> INF-(GlcNAc)2(Man)8[g]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2075'};
rxnToAdd.subSystems={'Transport recombinant protein'};
rxnToAdd.rxnNames={'hIL4-(GlcNAc)2(Man)8 transport, Golgi'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=-1000;
rxnToAdd.equations={'hIL4-(GlcNAc)2(Man)8[r] <=> hIL4-(GlcNAc)2(Man)8[g]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2076'};
rxnToAdd.subSystems={'Transport recombinant protein'};
rxnToAdd.rxnNames={'chy-(GlcNAc)2(Man)8 transport, Golgi'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=-1000;
rxnToAdd.equations={'chy-(GlcNAc)2(Man)8[r] <=> chy-(GlcNAc)2(Man)8[g]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2077'};
rxnToAdd.subSystems={'Transport recombinant protein'};
rxnToAdd.rxnNames={'epo-(GlcNAc)2(Man)8 transport, Golgi'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=-1000;
rxnToAdd.equations={'epo-(GlcNAc)2(Man)8[r] <=> epo-(GlcNAc)2(Man)8[g]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2078'};
rxnToAdd.subSystems={'Transport recombinant protein'};
rxnToAdd.rxnNames={'PGHS-(GlcNAc)2(Man)8 transport, Golgi'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=-1000;
rxnToAdd.equations={'PGHS-(GlcNAc)2(Man)8[r] <=> PGHS-(GlcNAc)2(Man)8[g]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd
%% Glycan Processing in Golgi Apparatus in Pichia pastoris
%0.75*8.5+0.17*10+0.08*11=8.955=9
rxnToAdd.rxns={'r2079'};
rxnToAdd.subSystems={'Native N-glycosylation processing'};
rxnToAdd.rxnNames={'Alb-Redhill Mannosyltransferase1'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.equations={'GDP-D-mannose[g] + Alb-Redhill-(GlcNAc)2(Man)8[g] => Alb-Redhill-(GlcNAc)2(Man)9[g] + GDP[g]'};
rxnToAdd.grRules={'PAS_chr1-3_0251'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2080'};
rxnToAdd.subSystems={'Native N-glycosylation processing'};
rxnToAdd.rxnNames={'INF Mannosyltransferase1'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.equations={'GDP-D-mannose[g] + INF-(GlcNAc)2(Man)8[g] => INF-(GlcNAc)2(Man)9[g] + GDP[g]'};
rxnToAdd.grRules={'PAS_chr1-3_0251'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2081'};
rxnToAdd.subSystems={'Native N-glycosylation processing'};
rxnToAdd.rxnNames={'hIL4 Mannosyltransferase1'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.equations={'GDP-D-mannose[g] + hIL4-(GlcNAc)2(Man)8[g] => hIL4-(GlcNAc)2(Man)9[g] + GDP[g]'};
rxnToAdd.grRules={'PAS_chr1-3_0251'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2081_1'};
rxnToAdd.subSystems={'Native N-glycosylation processing'};
rxnToAdd.rxnNames={'chy Mannosyltransferase1'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.equations={'2 GDP-D-mannose[g] + chy-(GlcNAc)2(Man)8[g] => chy-(GlcNAc)2(Man)9[g] + 2 GDP[g]'};
rxnToAdd.grRules={'PAS_chr1-3_0251'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2082'};
rxnToAdd.subSystems={'Native N-glycosylation processing'};
rxnToAdd.rxnNames={'epo Mannosyltransferase1'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.equations={'3 GDP-D-mannose[g] + epo-(GlcNAc)2(Man)8[g] => epo-(GlcNAc)2(Man)9[g] + 3 GDP[g]'};
rxnToAdd.grRules={'PAS_chr1-3_0251'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2083'};
rxnToAdd.subSystems={'Native N-glycosylation processing'};
rxnToAdd.rxnNames={'PGHS Mannosyltransferase1'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.equations={'4 GDP-D-mannose[g] + PGHS-(GlcNAc)2(Man)8[g] => PGHS-(GlcNAc)2(Man)9[g] + 4 GDP[g]'};
rxnToAdd.grRules={'PAS_chr1-3_0251'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd
%%
rxnToAdd.rxns={'r2084'};
rxnToAdd.subSystems={'Golgi transport'};
rxnToAdd.rxnNames={'GDP-D-mannose Golgi transport'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=-1000;
rxnToAdd.equations={'GDP-D-mannose[g] <=> GDP-mannose[c]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2085'};
rxnToAdd.subSystems={'Golgi transport'};
rxnToAdd.rxnNames={'GDP Golgi transport'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=-1000;
rxnToAdd.equations={'GDP[g] <=> GDP[c]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd
%%
rxnToAdd.rxns={'r2086'};
rxnToAdd.subSystems={'Transport recombinant protein'};
rxnToAdd.rxnNames={'Alb-Redhill-(GlcNAc)2(Man)9 transport, cytosol'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=-1000;
rxnToAdd.equations={'Alb-Redhill-(GlcNAc)2(Man)9[g] <=> Alb-Redhill-(GlcNAc)2(Man)9[c]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2087'};
rxnToAdd.subSystems={'Transport recombinant protein'};
rxnToAdd.rxnNames={'Alb-Redhill-(GlcNAc)2(Man)9 transport, extracellular'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=-1000;
rxnToAdd.equations={'Alb-Redhill-(GlcNAc)2(Man)9[c] <=> Alb-Redhill-(GlcNAc)2(Man)9[e]'};
model=addRxns(model,rxnToAdd,3,[],true);

rxnToAdd.rxns={'r2088'};
rxnToAdd.subSystems={'Transport recombinant protein'};
rxnToAdd.rxnNames={'INF-(GlcNAc)2(Man)9 transport, cytosol'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=-1000;
rxnToAdd.equations={'INF-(GlcNAc)2(Man)9[g] <=> INF-(GlcNAc)2(Man)9[c]'};
model=addRxns(model,rxnToAdd,3,[],true);

rxnToAdd.rxns={'r2089'};
rxnToAdd.subSystems={'Transport recombinant protein'};
rxnToAdd.rxnNames={'INF-(GlcNAc)2(Man)9 transport, extracellular'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=-1000;
rxnToAdd.equations={'INF-(GlcNAc)2(Man)9[c] <=> INF-(GlcNAc)2(Man)9[e]'};
model=addRxns(model,rxnToAdd,3,[],true);

rxnToAdd.rxns={'r2090'};
rxnToAdd.subSystems={'Transport recombinant protein'};
rxnToAdd.rxnNames={'hIL4-(GlcNAc)2(Man)9 transport, cytosol'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=-1000;
rxnToAdd.equations={'hIL4-(GlcNAc)2(Man)9[g] <=> hIL4-(GlcNAc)2(Man)9[c]'};
model=addRxns(model,rxnToAdd,3,[],true);

rxnToAdd.rxns={'r2091'};
rxnToAdd.subSystems={'Transport recombinant protein'};
rxnToAdd.rxnNames={'hIL4-(GlcNAc)2(Man)9 transport, extracellular'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=-1000;
rxnToAdd.equations={'hIL4-(GlcNAc)2(Man)9[c] <=> hIL4-(GlcNAc)2(Man)9[e]'};
model=addRxns(model,rxnToAdd,3,[],true);

rxnToAdd.rxns={'r2092'};
rxnToAdd.subSystems={'Transport recombinant protein'};
rxnToAdd.rxnNames={'chy-(GlcNAc)2(Man)9 transport, cytosol'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=-1000;
rxnToAdd.equations={'chy-(GlcNAc)2(Man)9[g] <=> chy-(GlcNAc)2(Man)9[c]'};
model=addRxns(model,rxnToAdd,3,[],true);

rxnToAdd.rxns={'r2093'};
rxnToAdd.subSystems={'Transport recombinant protein'};
rxnToAdd.rxnNames={'chy-(GlcNAc)2(Man)9 transport, extracellular'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=-1000;
rxnToAdd.equations={'chy-(GlcNAc)2(Man)9[c] <=> chy-(GlcNAc)2(Man)9[e]'};
model=addRxns(model,rxnToAdd,3,[],true);

rxnToAdd.rxns={'r2094'};
rxnToAdd.subSystems={'Transport recombinant protein'};
rxnToAdd.rxnNames={'epo-(GlcNAc)2(Man)9 transport, cytosol'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=-1000;
rxnToAdd.equations={'epo-(GlcNAc)2(Man)9[g] <=> epo-(GlcNAc)2(Man)9[c]'};
model=addRxns(model,rxnToAdd,3,[],true);

rxnToAdd.rxns={'r2095'};
rxnToAdd.subSystems={'Transport recombinant protein'};
rxnToAdd.rxnNames={'epo-(GlcNAc)2(Man)9 transport, extracellular'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=-1000;
rxnToAdd.equations={'epo-(GlcNAc)2(Man)9[c] <=> epo-(GlcNAc)2(Man)9[e]'};
model=addRxns(model,rxnToAdd,3,[],true);

rxnToAdd.rxns={'r2096'};
rxnToAdd.subSystems={'Transport recombinant protein'};
rxnToAdd.rxnNames={'PGHS-(GlcNAc)2(Man)9 transport, cytosol'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=-1000;
rxnToAdd.equations={'PGHS-(GlcNAc)2(Man)9[g] <=> PGHS-(GlcNAc)2(Man)9[c]'};
model=addRxns(model,rxnToAdd,3,[],true);

rxnToAdd.rxns={'r2097'};
rxnToAdd.subSystems={'Transport recombinant protein'};
rxnToAdd.rxnNames={'PGHS-(GlcNAc)2(Man)9 transport, extracellular'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=-1000;
rxnToAdd.equations={'PGHS-(GlcNAc)2(Man)9[c] <=> PGHS-(GlcNAc)2(Man)9[e]'};
model=addRxns(model,rxnToAdd,3,[],true);
%% Glycan Processing in Golgi Apparatus in synthetic glycosylation pathway (hummanized Pichia pastoris)
rxnToAdd.rxns={'r2098'};
rxnToAdd.subSystems={'Humanized N-glycosylation processing'};
rxnToAdd.rxnNames={'Alb-Redhill mannosidase1'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.equations={'Alb-Redhill-(GlcNAc)2(Man)8[g] + 3 H2O[g] => Alb-Redhill-(GlcNAc)2(Man)5[g] + 3 D-Mannose[g]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2099'};
rxnToAdd.subSystems={'Humanized N-glycosylation processing'};
rxnToAdd.rxnNames={'INF mannosidase1'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.equations={'INF-(GlcNAc)2(Man)8[g] + 3 H2O[g] => INF-(GlcNAc)2(Man)5[g] + 3 D-Mannose[g]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2100'};
rxnToAdd.subSystems={'Humanized N-glycosylation processing'};
rxnToAdd.rxnNames={'hIL4 mannosidase1'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.equations={'hIL4-(GlcNAc)2(Man)8[g] + 3 H2O[g] => hIL4-(GlcNAc)2(Man)5[g] + 3 D-Mannose[g]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2101'};
rxnToAdd.subSystems={'Humanized N-glycosylation processing'};
rxnToAdd.rxnNames={'chy mannosidase1'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.equations={'chy-(GlcNAc)2(Man)8[g] + 6 H2O[g] => chy-(GlcNAc)2(Man)5[g] + 6 D-Mannose[g]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2102'};
rxnToAdd.subSystems={'Humanized N-glycosylation processing'};
rxnToAdd.rxnNames={'epo mannosidase1'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.equations={'epo-(GlcNAc)2(Man)8[g] + 9 H2O[g] => epo-(GlcNAc)2(Man)5[g] + 9 D-Mannose[g]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2103'};
rxnToAdd.subSystems={'Humanized N-glycosylation processing'};
rxnToAdd.rxnNames={'PGHS mannosidase1'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.equations={'PGHS-(GlcNAc)2(Man)8[g] + 12 H2O[g] => PGHS-(GlcNAc)2(Man)5[g] + 12 D-Mannose[g]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd
%%
rxnToAdd.rxns={'r2104'};
rxnToAdd.subSystems={'Humanized N-glycosylation processing'};
rxnToAdd.rxnNames={'Alb-Redhill mannosidase2'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.equations={'Alb-Redhill-(GlcNAc)2(Man)5[g] + 2 H2O[g] => Alb-Redhill-(GlcNAc)2(Man)3[g] + 2 D-Mannose[g]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2105'};
rxnToAdd.subSystems={'Humanized N-glycosylation processing'};
rxnToAdd.rxnNames={'INF mannosidase2'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.equations={'INF-(GlcNAc)2(Man)5[g] + 2 H2O[g] => INF-(GlcNAc)2(Man)3[g] + 2 D-Mannose[g]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2106'};
rxnToAdd.subSystems={'Humanized N-glycosylation processing'};
rxnToAdd.rxnNames={'hIL4 mannosidase2'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.equations={'hIL4-(GlcNAc)2(Man)5[g] + 2 H2O[g] => hIL4-(GlcNAc)2(Man)3[g] + 2 D-Mannose[g]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2107'};
rxnToAdd.subSystems={'Humanized N-glycosylation processing'};
rxnToAdd.rxnNames={'chy mannosidase2'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.equations={'chy-(GlcNAc)2(Man)5[g] + 4 H2O[g] => chy-(GlcNAc)2(Man)3[g] + 4 D-Mannose[g]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2108'};
rxnToAdd.subSystems={'Humanized N-glycosylation processing'};
rxnToAdd.rxnNames={'epo mannosidase2'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.equations={'epo-(GlcNAc)2(Man)5[g] + 6 H2O[g] => epo-(GlcNAc)2(Man)3[g] + 6 D-Mannose[g]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2109'};
rxnToAdd.subSystems={'Humanized N-glycosylation processing'};
rxnToAdd.rxnNames={'PGHS mannosidase2'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.equations={'PGHS-(GlcNAc)2(Man)5[g] + 8 H2O[g] => PGHS-(GlcNAc)2(Man)3[g] + 8 D-Mannose[g]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd
%% Transport of UDP-GlcNAc and UDP
rxnToAdd.rxns={'r2110'};
rxnToAdd.subSystems={'Golgi transport'};
rxnToAdd.rxnNames={'UDP-GlcNAc transport, Golgi'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=-1000;
rxnToAdd.equations={'UDP-N-acetyl-D-glucosamine[c] <=> UDP-GlcNAc[g]'};
model=addRxns(model,rxnToAdd,3,[],true);

rxnToAdd.rxns={'r2111'};
rxnToAdd.subSystems={'Golgi transport'};
rxnToAdd.rxnNames={'UDP transport, Golgi'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=-1000;
rxnToAdd.equations={'UDP[c] <=> UDP[g]'};
model=addRxns(model,rxnToAdd,3,[],true);
%% 
rxnToAdd.rxns={'r2112'};
rxnToAdd.subSystems={'Humanized N-glycosylation processing'};
rxnToAdd.rxnNames={'Alb-Redhill GlcNAc transferase1'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.equations={'Alb-Redhill-(GlcNAc)2(Man)3[g] + UDP-GlcNAc[g] => Alb-Redhill-(GlcNAc)3(Man)3[g] + UDP[g] + H+[g]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2113'};
rxnToAdd.subSystems={'Humanized N-glycosylation processing'};
rxnToAdd.rxnNames={'INF GlcNAc transferase1'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.equations={'INF-(GlcNAc)2(Man)3[g] + UDP-GlcNAc[g] => INF-(GlcNAc)3(Man)3[g] + UDP[g] + H+[g]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2114'};
rxnToAdd.subSystems={'Humanized N-glycosylation processing'};
rxnToAdd.rxnNames={'hIL4 GlcNAc transferase1'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.equations={'hIL4-(GlcNAc)2(Man)3[g] + UDP-GlcNAc[g] => hIL4-(GlcNAc)3(Man)3[g] + UDP[g] + H+[g]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2115'};
rxnToAdd.subSystems={'Humanized N-glycosylation processing'};
rxnToAdd.rxnNames={'chy GlcNAc transferase1'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.equations={'chy-(GlcNAc)2(Man)3[g] + 2 UDP-GlcNAc[g] => chy-(GlcNAc)3(Man)3[g] + 2 UDP[g] + 2 H+[g]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2116'};
rxnToAdd.subSystems={'Humanized N-glycosylation processing'};
rxnToAdd.rxnNames={'epo GlcNAc transferase1'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.equations={'epo-(GlcNAc)2(Man)3[g] + 3 UDP-GlcNAc[g] => epo-(GlcNAc)3(Man)3[g] + 3 UDP[g] + 3 H+[g]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2117'};
rxnToAdd.subSystems={'Humanized N-glycosylation processing'};
rxnToAdd.rxnNames={'PGHS GlcNAc transferase1'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.equations={'PGHS-(GlcNAc)2(Man)3[g] + 4 UDP-GlcNAc[g] => PGHS-(GlcNAc)3(Man)3[g] + 4 UDP[g] + 4 H+[g]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd
%%  
rxnToAdd.rxns={'r2118'};
rxnToAdd.subSystems={'Humanized N-glycosylation processing'};
rxnToAdd.rxnNames={'Alb-Redhill GlcNAc transferase2'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.equations={'Alb-Redhill-(GlcNAc)3(Man)3[g] + UDP-GlcNAc[g] => Alb-Redhill-(GlcNAc)4(Man)3[g] + UDP[g] + H+[g]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2119'};
rxnToAdd.subSystems={'Humanized N-glycosylation processing'};
rxnToAdd.rxnNames={'INF GlcNAc transferase2'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.equations={'INF-(GlcNAc)3(Man)3[g] + UDP-GlcNAc[g] => INF-(GlcNAc)4(Man)3[g] + UDP[g] + H+[g]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2120'};
rxnToAdd.subSystems={'Humanized N-glycosylation processing'};
rxnToAdd.rxnNames={'hIL4 GlcNAc transferase2'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.equations={'hIL4-(GlcNAc)3(Man)3[g] + UDP-GlcNAc[g] => hIL4-(GlcNAc)4(Man)3[g] + UDP[g] + H+[g]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2121'};
rxnToAdd.subSystems={'Humanized N-glycosylation processing'};
rxnToAdd.rxnNames={'chy GlcNAc transferase2'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.equations={'chy-(GlcNAc)3(Man)3[g] + 2 UDP-GlcNAc[g] => chy-(GlcNAc)4(Man)3[g] + 2 UDP[g] + 2 H+[g]'};

model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2122'};
rxnToAdd.subSystems={'Humanized N-glycosylation processing'};
rxnToAdd.rxnNames={'epo GlcNAc transferase2'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.equations={'epo-(GlcNAc)3(Man)3[g] + 3 UDP-GlcNAc[g] => epo-(GlcNAc)4(Man)3[g] + 3 UDP[g] + 3 H+[g]'};

model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2123'};
rxnToAdd.subSystems={'Humanized N-glycosylation processing'};
rxnToAdd.rxnNames={'PGHS GlcNAc transferase2'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.equations={'PGHS-(GlcNAc)3(Man)3[g] + 4 UDP-GlcNAc[g] => PGHS-(GlcNAc)4(Man)3[g] + 4 UDP[g] + 4 H+[g]'};

model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd
%%
rxnToAdd.rxns={'r2124'};
rxnToAdd.subSystems={'Humanized N-glycosylation precursors'};
rxnToAdd.rxnNames={'UDP-glucose 4-epimerase'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=-1000;
rxnToAdd.equations={'UDP-glucose[c] <=> UDP-Galactose[c]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2125'};
rxnToAdd.subSystems={'Golgi transport'};
rxnToAdd.rxnNames={'UDP-Galactose transport, Golgi'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=-1000;
rxnToAdd.equations={'UDP-Galactose[c] <=> UDP-Galactose[g]'}; % Made reversible
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2126'};
rxnToAdd.subSystems={'Humanized N-glycosylation processing'};
rxnToAdd.rxnNames={'Alb-Redhill Galactosyltransferase'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.equations={'Alb-Redhill-(GlcNAc)4(Man)3[g] + 2 UDP-Galactose[g] => Alb-Redhill-(GlcNAc)4(Man)3(Gal)2[g] + 2 UDP[g]'};

model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2127'};
rxnToAdd.subSystems={'Humanized N-glycosylation processing'};
rxnToAdd.rxnNames={'INF Galactosyltransferase'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.equations={'INF-(GlcNAc)4(Man)3[g] + 2 UDP-Galactose[g] => INF-(GlcNAc)4(Man)3(Gal)2[g] + 2 UDP[g]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2128'};
rxnToAdd.subSystems={'Humanized N-glycosylation processing'};
rxnToAdd.rxnNames={'hIL4 Galactosyltransferase'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.equations={'hIL4-(GlcNAc)4(Man)3[g] + 2 UDP-Galactose[g] => hIL4-(GlcNAc)4(Man)3(Gal)2[g] + 2 UDP[g]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2129'};
rxnToAdd.subSystems={'Humanized N-glycosylation processing'};
rxnToAdd.rxnNames={'chy Galactosyltransferase'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.equations={'chy-(GlcNAc)4(Man)3[g] + 4 UDP-Galactose[g] => chy-(GlcNAc)4(Man)3(Gal)2[g] + 4 UDP[g]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2130'};
rxnToAdd.subSystems={'Humanized N-glycosylation processing'};
rxnToAdd.rxnNames={'epo Galactosyltransferase'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.equations={'epo-(GlcNAc)4(Man)3[g] + 6 UDP-Galactose[g] => epo-(GlcNAc)4(Man)3(Gal)2[g] + 6 UDP[g]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2131'};
rxnToAdd.subSystems={'Humanized N-glycosylation processing'};
rxnToAdd.rxnNames={'PGHS Galactosyltransferase'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.equations={'PGHS-(GlcNAc)4(Man)3[g] + 8 UDP-Galactose[g] => PGHS-(GlcNAc)4(Man)3(Gal)2[g] + 8 UDP[g]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd
%%
rxnToAdd.rxns={'r2132'};
rxnToAdd.subSystems={'Humanized N-glycosylation precursors'};
rxnToAdd.rxnNames={'UDP-N-acetyl-D-glucosamine 2-epimerase'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.equations={'UDP-N-acetyl-D-glucosamine[c] + H2O[c] => N-Acetyl-D-mannosamine[c] + UDP[c]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2133'};
rxnToAdd.subSystems={'Humanized N-glycosylation precursors'};
rxnToAdd.rxnNames={'N-Acetyl-D-mannosamine 6-phosphotransferase'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=-1000;
rxnToAdd.equations={'N-Acetyl-D-mannosamine[c] + ATP[c] <=> N-Acetyl-D-mannosamine 6-phosphate[c] + ADP[c]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2134'};
rxnToAdd.subSystems={'Humanized N-glycosylation precursors'};
rxnToAdd.rxnNames={'phosphorylating'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=-1000;
rxnToAdd.equations={'N-Acetyl-D-mannosamine 6-phosphate[c] + Phosphoenolpyruvate[c] <=> H2O[c] + N-Acetylneuraminate 9-phosphate[c] + Orthophosphate[c]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2135'};
rxnToAdd.subSystems={'Humanized N-glycosylation precursors'};
rxnToAdd.rxnNames={'N-Acetylneuraminate 9-phosphate phosphohydrolase'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.equations={'N-Acetylneuraminate 9-phosphate[c] + H2O[c] => N-Acetylneuraminate[c] + Orthophosphate[c]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2136'};
rxnToAdd.subSystems={'Humanized N-glycosylation precursors'};
rxnToAdd.rxnNames={'N-acetylneuraminate cytidylyltransferase'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.equations={'N-Acetylneuraminate[c] + CTP[c] => CMP-N-acetylneuraminate[c] + Diphosphate[c]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2137'};
rxnToAdd.subSystems={'Humanized N-glycosylation precursors'};
rxnToAdd.rxnNames={'CMP-N-acetylneuraminate transport, Golgi'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.equations={'CMP-N-acetylneuraminate[c] => CMP-N-acetylneuraminate[g]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd
%% 
rxnToAdd.rxns={'r2138'};
rxnToAdd.subSystems={'Humanized N-glycosylation processing'};
rxnToAdd.rxnNames={'Alb-Redhill sialyltransferase'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.equations={'Alb-Redhill-(GlcNAc)4(Man)3(Gal)2[g] + 2 CMP-N-acetylneuraminate[g] => Alb-Redhill-(GlcNAc)4(Man)3(Gal)2(Sial)2[g] + 2 UDP[g]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2139'};
rxnToAdd.subSystems={'Transport recombinant protein'};
rxnToAdd.rxnNames={'Alb-Redhill transport, cytosol'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=-1000;
rxnToAdd.equations={'Alb-Redhill-(GlcNAc)4(Man)3(Gal)2(Sial)2[g] <=> Alb-Redhill-(GlcNAc)4(Man)3(Gal)2(Sial)2[c]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd
 
rxnToAdd.rxns={'r2140'};
rxnToAdd.subSystems={'Transport recombinant protein'};
rxnToAdd.rxnNames={'Alb-Redhill transport, extracellular'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=-1000;
rxnToAdd.equations={'Alb-Redhill-(GlcNAc)4(Man)3(Gal)2(Sial)2[c] <=> Alb-Redhill-(GlcNAc)4(Man)3(Gal)2(Sial)2[e]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd
%% 
rxnToAdd.rxns={'r2141'};
rxnToAdd.subSystems={'Humanized N-glycosylation processing'};
rxnToAdd.rxnNames={'INF sialyltransferase'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.equations={'INF-(GlcNAc)4(Man)3(Gal)2[g] + 2 CMP-N-acetylneuraminate[g] => INF-(GlcNAc)4(Man)3(Gal)2(Sial)2[g] + 2 UDP[g]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2142'};
rxnToAdd.subSystems={'Transport recombinant protein'};
rxnToAdd.rxnNames={'INF transport, cytosol'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=-1000;
rxnToAdd.equations={'INF-(GlcNAc)4(Man)3(Gal)2(Sial)2[g] <=> INF-(GlcNAc)4(Man)3(Gal)2(Sial)2[c]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2143'};
rxnToAdd.subSystems={'Transport recombinant protein'};
rxnToAdd.rxnNames={'INF transport, extracellular'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=-1000;
rxnToAdd.equations={'INF-(GlcNAc)4(Man)3(Gal)2(Sial)2[c] <=> INF-(GlcNAc)4(Man)3(Gal)2(Sial)2[e]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd
%% 
rxnToAdd.rxns={'r2144'};
rxnToAdd.subSystems={'Humanized N-glycosylation processing'};
rxnToAdd.rxnNames={'hIL4 sialyltransferase'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.equations={'hIL4-(GlcNAc)4(Man)3(Gal)2[g] + 2 CMP-N-acetylneuraminate[g] => hIL4-(GlcNAc)4(Man)3(Gal)2(Sial)2[g] + 2 UDP[g]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2145'};
rxnToAdd.subSystems={'Transport recombinant protein'};
rxnToAdd.rxnNames={'hIL4 transport, cytosol'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=-1000;
rxnToAdd.equations={'hIL4-(GlcNAc)4(Man)3(Gal)2(Sial)2[g] <=> hIL4-(GlcNAc)4(Man)3(Gal)2(Sial)2[c]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2146'};
rxnToAdd.subSystems={'Transport recombinant protein'};
rxnToAdd.rxnNames={'hIL4 transport, extracellular'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=-1000;
rxnToAdd.equations={'hIL4-(GlcNAc)4(Man)3(Gal)2(Sial)2[c] <=> hIL4-(GlcNAc)4(Man)3(Gal)2(Sial)2[e]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd
%% 
rxnToAdd.rxns={'r2147'};
rxnToAdd.subSystems={'Humanized N-glycosylation processing'};
rxnToAdd.rxnNames={'chy sialyltransferase'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.equations={'chy-(GlcNAc)4(Man)3(Gal)2[g] + 4 CMP-N-acetylneuraminate[g] => chy-(GlcNAc)4(Man)3(Gal)2(Sial)2[g] + 4 UDP[g]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2148'};
rxnToAdd.subSystems={'Transport recombinant protein'};
rxnToAdd.rxnNames={'chy transport, cytosol'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=-1000;
rxnToAdd.equations={'chy-(GlcNAc)4(Man)3(Gal)2(Sial)2[g] <=> chy-(GlcNAc)4(Man)3(Gal)2(Sial)2[c]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2149'};
rxnToAdd.subSystems={'Transport recombinant protein'};
rxnToAdd.rxnNames={'chy transport, extracellular'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=-1000;
rxnToAdd.equations={'chy-(GlcNAc)4(Man)3(Gal)2(Sial)2[c] <=> chy-(GlcNAc)4(Man)3(Gal)2(Sial)2[e]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd
%% 
rxnToAdd.rxns={'r2150'};
rxnToAdd.subSystems={'Humanized N-glycosylation processing'};
rxnToAdd.rxnNames={'epo sialyltransferase'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.equations={'epo-(GlcNAc)4(Man)3(Gal)2[g] + 6 CMP-N-acetylneuraminate[g] => epo-(GlcNAc)4(Man)3(Gal)2(Sial)2[g] + 6 UDP[g]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2151'};
rxnToAdd.subSystems={'Transport recombinant protein'};
rxnToAdd.rxnNames={'epo transport, cytosol'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=-1000;
rxnToAdd.equations={'epo-(GlcNAc)4(Man)3(Gal)2(Sial)2[g] <=> epo-(GlcNAc)4(Man)3(Gal)2(Sial)2[c]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2152'};
rxnToAdd.subSystems={'Transport recombinant protein'};
rxnToAdd.rxnNames={'epo transport, extracellular'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=-1000;
rxnToAdd.equations={'epo-(GlcNAc)4(Man)3(Gal)2(Sial)2[c] <=> epo-(GlcNAc)4(Man)3(Gal)2(Sial)2[e]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd
%% 
rxnToAdd.rxns={'r2153'};
rxnToAdd.subSystems={'Humanized N-glycosylation processing'};
rxnToAdd.rxnNames={'PGHS sialyltransferase'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=0;
rxnToAdd.equations={'PGHS-(GlcNAc)4(Man)3(Gal)2[g] + 8 CMP-N-acetylneuraminate[g] => PGHS-(GlcNAc)4(Man)3(Gal)2(Sial)2[g] + 8 UDP[g]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2154'};
rxnToAdd.subSystems={'Transport recombinant protein'};
rxnToAdd.rxnNames={'PGHS transport, cytosol'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=-1000;
rxnToAdd.equations={'PGHS-(GlcNAc)4(Man)3(Gal)2(Sial)2[g] <=> PGHS-(GlcNAc)4(Man)3(Gal)2(Sial)2[c]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2155'};
rxnToAdd.subSystems={'Transport recombinant protein'};
rxnToAdd.rxnNames={'PGHS transport, extracellular'};
rxnToAdd.ub=1000; 
rxnToAdd.lb=-1000;
rxnToAdd.equations={'PGHS-(GlcNAc)4(Man)3(Gal)2(Sial)2[c] <=> PGHS-(GlcNAc)4(Man)3(Gal)2(Sial)2[e]'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd
%% Exchange reactions of all protein products from extracellular
rxnToAdd.rxns={'r2156','r2157','r2158'};
rxnToAdd.subSystems={'Exchange recombinant protein','Exchange recombinant protein',...
    'Exchange recombinant protein'};
rxnToAdd.rxnNames={'Alb-Redhill exchange','Alb-Redhill-(GlcNAc)2(Man)9 exchange','Alb-Redhill-(GlcNAc)4(Man)3(Gal)2(Sial)2 exchange'};
rxnToAdd.ub=[1000,1000,1000]; 
rxnToAdd.lb=[0,0,0];
rxnToAdd.equations={'Alb-Redhill[e] =>','Alb-Redhill-(GlcNAc)2(Man)9[e] =>','Alb-Redhill-(GlcNAc)4(Man)3(Gal)2(Sial)2[e] =>'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2159','r2160','r2161'};
rxnToAdd.subSystems={'Exchange recombinant protein','Exchange recombinant protein',...
    'Exchange recombinant protein'};
rxnToAdd.rxnNames={'INF exchange','INF-(GlcNAc)2(Man)9 exchange','INF-(GlcNAc)4(Man)3(Gal)2(Sial)2 exchange'};
rxnToAdd.ub=[1000,1000,1000]; 
rxnToAdd.lb=[0,0,0];
rxnToAdd.equations={'INF[e] =>','INF-(GlcNAc)2(Man)9[e] =>','INF-(GlcNAc)4(Man)3(Gal)2(Sial)2[e] =>'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2162','r2163','r2164'};
rxnToAdd.subSystems={'Exchange recombinant protein','Exchange recombinant protein',...
    'Exchange recombinant protein'};
rxnToAdd.rxnNames={'hIL4 exchange','hIL4-(GlcNAc)2(Man)9 exchange','hIL4-(GlcNAc)4(Man)3(Gal)2(Sial)2 exchange'};
rxnToAdd.ub=[1000,1000,1000]; 
rxnToAdd.lb=[0,0,0];
rxnToAdd.equations={'hIL4[e] =>','hIL4-(GlcNAc)2(Man)9[e] =>','hIL4-(GlcNAc)4(Man)3(Gal)2(Sial)2[e] =>'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2165','r2166','r2167'};
rxnToAdd.subSystems={'Exchange recombinant protein','Exchange recombinant protein',...
    'Exchange recombinant protein'};
rxnToAdd.rxnNames={'chy exchange','chy-(GlcNAc)2(Man)9 exchange','chy-(GlcNAc)4(Man)3(Gal)2(Sial)2 exchange'};
rxnToAdd.ub=[1000,1000,1000]; 
rxnToAdd.lb=[0,0,0];
rxnToAdd.equations={'chy[e] =>','chy-(GlcNAc)2(Man)9[e] =>','chy-(GlcNAc)4(Man)3(Gal)2(Sial)2[e] =>'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2168','r2169','r2170'};
rxnToAdd.subSystems={'Exchange recombinant protein','Exchange recombinant protein',...
    'Exchange recombinant protein'};
rxnToAdd.rxnNames={'epo exchange','epo-(GlcNAc)2(Man)9 exchange','epo-(GlcNAc)4(Man)3(Gal)2(Sial)2 exchange'};
rxnToAdd.ub=[1000,1000,1000]; 
rxnToAdd.lb=[0,0,0];
rxnToAdd.equations={'epo[e] =>','epo-(GlcNAc)2(Man)9[e] =>','epo-(GlcNAc)4(Man)3(Gal)2(Sial)2[e] =>'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

rxnToAdd.rxns={'r2171','r2172','r2173'};
rxnToAdd.subSystems={'Exchange recombinant protein','Exchange recombinant protein',...
    'Exchange recombinant protein'};
rxnToAdd.rxnNames={'PGHS exchange','PGHS-(GlcNAc)2(Man)9 exchange','PGHS-(GlcNAc)4(Man)3(Gal)2(Sial)2 exchange'};
rxnToAdd.ub=[1000,1000,1000]; 
rxnToAdd.lb=[0,0,0];
rxnToAdd.equations={'PGHS[e] =>','PGHS-(GlcNAc)2(Man)9[e] =>','PGHS-(GlcNAc)4(Man)3(Gal)2(Sial)2[e] =>'};
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd
%% Reactions for (native) N-glycosylation of host P. pastoris proteome
% Host-prefix is used to indicate that the N-Glycan is connected to host
% proteins.
rxnToAdd.rxns={'r2174','r2175','r2176','r2177','r2178','r2179','r2180','r2181'};
rxnToAdd.subSystems={'Host N-glycosylation','Host N-glycosylation',...
    'Host N-glycosylation','Host N-glycosylation','Host N-glycosylation',...
    'Host N-glycosylation','Host N-glycosylation','Host N-glycosylation'};
rxnToAdd.rxnNames={'Host glycosylation','Host Glucosidase1','Host Glucosidase2',...
    'Host Glucosidase3','Host mannosidase','Host-(GlcNAc)2(Man)8 transport, Golgi',...
    'Host Mannosyltransferase1','Host-(GlcNAc)2(Man)9 transport, cytosol'};
rxnToAdd.grRules={'PAS_chr1-4_0685','PAS_chr1-1_0215','PAS_chr2-1_0778',...
    'PAS_chr2-1_0778','PAS_chr2-1_0753','','PAS_chr1-3_0251',''};
rxnToAdd.equations={'(Glc)3(GlcNAc)2(Man)9(PP-Dol)1[r] => Host-(Glc)3(GlcNAc)2(Man)9[r] + Dolichyl phosphate[r]',...
    'Host-(Glc)3(GlcNAc)2(Man)9[r] + H2O[r] => Host-(Glc)2(GlcNAc)2(Man)9[r] + D-Glucose[r]',...
    'Host-(Glc)2(GlcNAc)2(Man)9[r] + H2O[r] => Host-(Glc)1(GlcNAc)2(Man)9[r] + D-Glucose[r]',...
    'Host-(Glc)1(GlcNAc)2(Man)9[r] + H2O[r] => Host-(GlcNAc)2(Man)9[r] + D-Glucose[r]',...
    'Host-(GlcNAc)2(Man)9[r] + H2O[r] => Host-(GlcNAc)2(Man)8[r] + D-Mannose[r]',...
    'Host-(GlcNAc)2(Man)8[r] <=> Host-(GlcNAc)2(Man)8[g]',...
    'GDP-D-mannose[g] + Host-(GlcNAc)2(Man)8[g] => Host-(GlcNAc)2(Man)9[g] + GDP[g]',...
    'Host-(GlcNAc)2(Man)9[g] <=> Host-(GlcNAc)2(Man)9[c]'};
rxnToAdd.lb=[0,0,0,0,0,-1000,0,-1000];
rxnToAdd.ub=[1000,1000,1000,1000,1000,1000,1000,1000];
model=addRxns(model,rxnToAdd,3,[],true);
clear rxnToAdd

% Adjust biomass equation to include host protein coupled N-Glycan.
tmp=constructEquations(model,'r1187');
model=changeRxns(model,'r1187',['0.000702547 Host-(GlcNAc)2(Man)9[c] + ',tmp{1}],3);
clear tmp


%% Test objective functions
% model=setParam(model,'obj','r1133',1);
% sol=solveLP(model,1)
% for i=1567:1584
%     model=setParam(model,'obj',model.rxns(i),1);
%     sol=solveLP(model,1)
% end
%% Export SBML
exportModel(model,'ihGlycopastoris.xml',true)