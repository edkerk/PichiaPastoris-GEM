% RUN IN RAVEN TOOLBOX
model=importModel('iLC915.xml',false,false); % Original model from paper
model=setParam(model,'obj','r1339',1); %Set growth as objective function
model=setParam(model,'ub',{'r639','r640','r641','r642','r643','r644','r645','r646','r649','r650','r651','r652','r653','r654','r655','r656'},0); %Strange loops are occuring when reversible, not realistic and reactions are not required.
model=setParam(model,'eq',{'r1090','r1091','r1092','r1093','r1094','r1095','r1096','r1097','r1098','r1099'},0); %Obsolete biomass equations, use r1187 instead.
model=setParam(model,'eq',{'r600','r601','r602','r603','r825','r1096'},0); %Polyphosphate recycling, produces net phosphate, switch off by default
model=changeRxns(model,'r717','H2O[6] + 1D-myo-Inositol 1,4,5,6-tetrakisphosphate[6] => Orthophosphate[6] + D-myo-Inositol 1,4,5-trisphosphate[6]',3); %Corrected equation, previous equation made net phosphates
model=changeRxns(model,'r1392','Orthophosphate[7] => Orthophosphate[6]',3); %Removed hydrogens from uptake, these are not modelled for any of the other transport reactions.
model=changeRxns(model,'r843','ATP[5] + H2O[5] + 3 H+[5] => 2 H+[6] + ADP[5] + Orthophosphate[5]',3); %Vacuolar H-pump, was modelled as ATP synthase.
model.metNames(strmatch(' D-Arabitol',model.metNames))={'D-Arabitol'}; %Remove leading space
model.metNames(strmatch('(GlcN)1 (Ino(acyl)-P)1 (Man)4 (EtN)2 (P)2',model.metNames))={'(GlcN)1(Ino(acyl)-P)1(Man)4(EtN)2(P)2'}; %Remove spaces in metabolite name
model.metNames(strmatch('(GlcN)1 (Ino(acyl)-P)1 (Man)4 (EtN)3 (P)3',model.metNames))={'(GlcN)1(Ino(acyl)-P)1(Man)4(EtN)3(P)3'};
model=setParam(model,'lb',{'r1049'},0); %Succinate-CoA ligase, should be irreversible
model=setParam(model,'eq',{'r718'},0);
%Pichia pastoris can grow on mannitol, but reactions for this are not included. Add mannitol dehydrogenase (doi:10.1002/yea.320110906)
rxnToAdd.rxns={'r1998'};
rxnToAdd.subSystems={'Fructose and mannose metabolism'};
rxnToAdd.rxnNames={'mannitol dehydrogenase'};
rxnToAdd.equations={'Mannitol[6] + NAD+[6] => beta-D-Fructose[6] + NADH[6] + H+[6]'};
rxnToAdd.lb=0;
rxnToAdd.ub=1000;
model=addRxns(model,rxnToAdd,3,[],true);
%Also able to excrete citrate, add citrate transport
rxnToAdd.rxns={'r1996','r1997'};
rxnToAdd.subSystems={'Transport plasma membrane','Exchange reaction'};
rxnToAdd.rxnNames={'Citrate transport extracellular','Drain of citrate'};
rxnToAdd.equations={'Citrate[6] <=> Citrate[7]','Citrate[7] =>'};
rxnToAdd.lb=[-1000,0];
rxnToAdd.ub=[1000,1000];
model=addRxns(model,rxnToAdd,3,[],true);
model=setParam(model,'rev','r1167',1); % Pyruvate can be excreted
%C16:1 was not included in any of the pooled acyl-CoA and fatty acid
%reactions, add the formation off C16:1, change and adjust all pooled
%reactions and biomass equation:
rxnToAdd.rxns={'r1999'};
rxnToAdd.subSystems={'Fatty acid biosynthesis'};
rxnToAdd.rxnNames={'Palmitoleate:CoA ligase (AMP-forming)'};
rxnToAdd.equations={'ATP[6] + CoA[6] + (9Z)-hexadecenoic acid[6] => Diphosphate[6] + AMP[6] + (9Z)-hexadecenoyl-CoA[6]'};
rxnToAdd.lb=0;
rxnToAdd.ub=1000;
model=addRxns(model,rxnToAdd,3,[],true);
model=changeRxns(model,'r334','0.167 Palmitoyl-CoA[6] + 0.3415 (9Z)-Octadecenoyl-CoA[6] + 0.293 (9Z,12Z)-Octadecadienoyl-CoA[6] + 0.1265 (9Z,12Z,15Z)-Octadecatrienoyl-CoA[6] + 0.0305 Stearoyl-CoA[6] + 0.0415 (9Z)-hexadecenoyl-CoA[6] + sn-Glycerol 3-phosphate[6] => CoA[6] + 1-Acyl-sn-glycerol 3-phosphate[6]',3);
model=changeRxns(model,'r374','0.167 Palmitoyl-CoA[6] + 0.3415 (9Z)-Octadecenoyl-CoA[6] + 0.293 (9Z,12Z)-Octadecadienoyl-CoA[6] + 0.1265 (9Z,12Z,15Z)-Octadecatrienoyl-CoA[6] + 0.0305 Stearoyl-CoA[6] + 0.0415 (9Z)-hexadecenoyl-CoA[6] + 1,2-Diacyl-sn-glycerol 3-phosphate[6] => CoA[6] + Triacylglycerol[6]',3);
model=changeRxns(model,'r402','0.167 Palmitoyl-CoA[6] + 0.3415 (9Z)-Octadecenoyl-CoA[6] + 0.293 (9Z,12Z)-Octadecadienoyl-CoA[6] + 0.1265 (9Z,12Z,15Z)-Octadecatrienoyl-CoA[6] + 0.0305 Stearoyl-CoA[6] + 0.0415 (9Z)-hexadecenoyl-CoA[6] + 1-Acyl-sn-glycerol 3-phosphate[6] => CoA[6] + 1,2-Diacyl-sn-glycerol 3-phosphate[6]',3);
model=changeRxns(model,'r679','H2O[6] + 1,2-Diacyl-sn-glycerol  3-phosphate[6] => 0.1265 (9Z,12Z,15Z)-Octadecatrienoic acid[6] + 0.0415 (9Z)-hexadecenoic acid[6] + 0.167 Hexadecanoic acid[6] + 0.0305 Octadecanoic acid[6] + 0.3415 (9Z)-Octadecenoic acid[6] + 0.293 (9Z,12Z)-Octadecadienoic acid[6] + 1-Acyl-sn-glycerol 3-phosphate[6]',3);
model=changeRxns(model,'r680','H2O[6] + 1-Acyl-sn-glycerol 3-phosphate[6] => 0.1265 (9Z,12Z,15Z)-Octadecatrienoic acid[6] + 0.0415 (9Z)-hexadecenoic acid[6] + 0.167 Hexadecanoic acid[6] + 0.0305 Octadecanoic acid[6] + 0.3415 (9Z)-Octadecenoic acid[6] + 0.293 (9Z,12Z)-Octadecadienoic acid[6] + sn-Glycerol 3-phosphate[6]',3);
model=changeRxns(model,'r681','H2O[6] + Triacylglycerol[6] => 0.1265 (9Z,12Z,15Z)-Octadecatrienoic acid[6] + 0.0415 (9Z)-hexadecenoic acid[6] + 0.167 Hexadecanoic acid[6] + 0.0305 Octadecanoic acid[6] + 0.3415 (9Z)-Octadecenoic acid[6] + 0.293 (9Z,12Z)-Octadecadienoic acid[6] + 1,2-Diacyl-sn-glycerol  3-phosphate[6]',3);
model=changeRxns(model,'r330','0.167 Palmitoyl-CoA[6] + 0.3415 (9Z)-Octadecenoyl-CoA[6] + 0.293 (9Z,12Z)-Octadecadienoyl-CoA[6] + 0.1265 (9Z,12Z,15Z)-Octadecatrienoyl-CoA[6] + 0.0415 (9Z)-hexadecenoyl-CoA[6] + 0.0305 Stearoyl-CoA[6] + 1-Acyl-sn-glycero-3-phosphoglycerol[6] <=> CoA[6] + Phosphatidylglycerol[6]',3);
model=changeRxns(model,'r331','0.167 Palmitoyl-CoA[6] + 0.3415 (9Z)-Octadecenoyl-CoA[6] + 0.293 (9Z,12Z)-Octadecadienoyl-CoA[6] + 0.1265 (9Z,12Z,15Z)-Octadecatrienoyl-CoA[6] + 0.0415 (9Z)-hexadecenoyl-CoA[6] + 0.0305 Stearoyl-CoA[6] + Monolysocardiolipin[6] => CoA[6] + Cardiolipin[6]',3);
model=changeRxns(model,'r362','0.167 Palmitoyl-CoA[6] + 0.3415 (9Z)-Octadecenoyl-CoA[6] + 0.293 (9Z,12Z)-Octadecadienoyl-CoA[6] + 0.1265 (9Z,12Z,15Z)-Octadecatrienoyl-CoA[6] + 0.0415 (9Z)-hexadecenoyl-CoA[6] + 0.0305 Stearoyl-CoA[6] + 1-Acyl-sn-glycero-3-phosphocholine[6] => CoA[6] + Phosphatidylcholine[6]',3);
model=changeRxns(model,'r363','0.167 Palmitoyl-CoA[6] + 0.3415 (9Z)-Octadecenoyl-CoA[6] + 0.293 (9Z,12Z)-Octadecadienoyl-CoA[6] + 0.1265 (9Z,12Z,15Z)-Octadecatrienoyl-CoA[6] + 0.0415 (9Z)-hexadecenoyl-CoA[6] + 0.0305 Stearoyl-CoA[6] + 1-Acyl-sn-glycero-3-phosphoethanolamine[6] => CoA[6] + Phosphatidylethanolamine[6]',3);
model=changeRxns(model,'r399','Glycerone phosphate[6] + 0.167 Palmitoyl-CoA[6] + 0.3415 (9Z)-Octadecenoyl-CoA[6] + 0.293 (9Z,12Z)-Octadecadienoyl-CoA[6] + 0.1265 (9Z,12Z,15Z)-Octadecatrienoyl-CoA[6] + 0.0415 (9Z)-hexadecenoyl-CoA[6] + 0.0305 Stearoyl-CoA[6] => CoA[6] + Acylglycerone phosphate[6]',3);
model=changeRxns(model,'r673','H2O[6] + Cardiolipin[6] => 0.1265 (9Z,12Z,15Z)-Octadecatrienoic acid[6] + 0.0415 (9Z)-hexadecenoic acid[6] + 0.167 Hexadecanoic acid[6] + 0.0305 Octadecanoic acid[6] + 0.3415 (9Z)-Octadecenoic acid[6] + 0.293 (9Z,12Z)-Octadecadienoic acid[6] + Monolysocardiolipin[6]',3);
model=changeRxns(model,'r683','H2O[6] + Phosphatidylethanolamine[6] => 0.1265 (9Z,12Z,15Z)-Octadecatrienoic acid[6] + 0.0415 (9Z)-hexadecenoic acid[6] + 0.167 Hexadecanoic acid[6] + 0.0305 Octadecanoic acid[6] + 0.3415 (9Z)-Octadecenoic acid[6] + 0.293 (9Z,12Z)-Octadecadienoic acid[6] + 1-Acyl-sn-glycero-3-phosphoethanolamine[6]',3);
model=changeRxns(model,'r684','H2O[6] + 1-Acyl-sn-glycero-3-phosphocholine[6] => 0.1265 (9Z,12Z,15Z)-Octadecatrienoic acid[6] + 0.0415 (9Z)-hexadecenoic acid[6] + 0.167 Hexadecanoic acid[6] + 0.0305 Octadecanoic acid[6] + 0.3415 (9Z)-Octadecenoic acid[6] + 0.293 (9Z,12Z)-Octadecadienoic acid[6] + sn-glycero-3-Phosphocholine[6]',3);
model=changeRxns(model,'r685','H2O[6] + Phosphatidylcholine[6] => 0.1265 (9Z,12Z,15Z)-Octadecatrienoic acid[6] + 0.167 Hexadecanoic acid[6] + 0.0305 Octadecanoic acid[6] + 0.3415 (9Z)-Octadecenoic acid[6] + 0.293 (9Z,12Z)-Octadecadienoic acid[6] + 0.0415 (9Z)-hexadecenoic acid[6] + 1-Acyl-sn-glycero-3-phosphocholine[6]',3);
model=changeRxns(model,'r686','H2O[6] + 1-Acyl-sn-glycero-3-phosphoethanolamine[6] => 0.1265 (9Z,12Z,15Z)-Octadecatrienoic acid[6] + 0.0415 (9Z)-hexadecenoic acid[6] + 0.167 Hexadecanoic acid[6] + 0.0305 Octadecanoic acid[6] + 0.3415 (9Z)-Octadecenoic acid[6] + 0.293 (9Z,12Z)-Octadecadienoic acid[6] + sn-glycero-3-Phosphoethanolamine[6]',3);
model=changeRxns(model,'r376','0.167 Palmitoyl-CoA[6] + 0.3415 (9Z)-Octadecenoyl-CoA[6] + 0.293 (9Z,12Z)-Octadecadienoyl-CoA[6] + 0.1265 (9Z,12Z,15Z)-Octadecatrienoyl-CoA[6] + 0.0415 (9Z)-hexadecenoyl-CoA[6] + 0.0305 Stearoyl-CoA[6] + Zymosterol[6] => CoA[6] + Zymosterol ester[6]',3);
model=changeRxns(model,'r377','0.167 Palmitoyl-CoA[6] + 0.3415 (9Z)-Octadecenoyl-CoA[6] + 0.293 (9Z,12Z)-Octadecadienoyl-CoA[6] + 0.1265 (9Z,12Z,15Z)-Octadecatrienoyl-CoA[6] + 0.0415 (9Z)-hexadecenoyl-CoA[6] + 0.0305 Stearoyl-CoA[6] + Ergosterol[6] => CoA[6] + Ergosterol ester[6]',3);
model=changeRxns(model,'r378','0.167 Palmitoyl-CoA[6] + 0.3415 (9Z)-Octadecenoyl-CoA[6] + 0.293 (9Z,12Z)-Octadecadienoyl-CoA[6] + 0.1265 (9Z,12Z,15Z)-Octadecatrienoyl-CoA[6] + 0.0415 (9Z)-hexadecenoyl-CoA[6] + 0.0305 Stearoyl-CoA[6] + Episterol[6] => CoA[6] + Episterol ester[6]',3);
model=changeRxns(model,'r379','0.167 Palmitoyl-CoA[6] + 0.3415 (9Z)-Octadecenoyl-CoA[6] + 0.293 (9Z,12Z)-Octadecadienoyl-CoA[6] + 0.1265 (9Z,12Z,15Z)-Octadecatrienoyl-CoA[6] + 0.0415 (9Z)-hexadecenoyl-CoA[6] + 0.0305 Stearoyl-CoA[6] + Fecosterol[6] => CoA[6] + Fecosterol ester[6]',3);
model=changeRxns(model,'r380','0.167 Palmitoyl-CoA[6] + 0.3415 (9Z)-Octadecenoyl-CoA[6] + 0.293 (9Z,12Z)-Octadecadienoyl-CoA[6] + 0.1265 (9Z,12Z,15Z)-Octadecatrienoyl-CoA[6] + 0.0415 (9Z)-hexadecenoyl-CoA[6] + 0.0305 Stearoyl-CoA[6] + Lanosterol[6] => CoA[6] + Lanosterol ester[6]',3);
model=changeRxns(model,'r674','H2O[6] + Zymosterol ester[6] => 0.1265 (9Z,12Z,15Z)-Octadecatrienoic acid[6] + 0.167 Hexadecanoic acid[6] + 0.0305 Octadecanoic acid[6] + 0.3415 (9Z)-Octadecenoic acid[6] + 0.293 (9Z,12Z)-Octadecadienoic acid[6] + 0.0415 (9Z)-hexadecenoic acid[6] + 1,2-Diacyl-sn-glycerol[6]',3); 
model=changeRxns(model,'r675','H2O[6] + Ergosterol ester[6] => 0.1265 (9Z,12Z,15Z)-Octadecatrienoic acid[6] + 0.167 Hexadecanoic acid[6] + 0.0305 Octadecanoic acid[6] + 0.3415 (9Z)-Octadecenoic acid[6] + 0.293 (9Z,12Z)-Octadecadienoic acid[6] + 0.0415 (9Z)-hexadecenoic acid[6] + 1,2-Diacyl-sn-glycerol[6]',3);
model=changeRxns(model,'r676','H2O[6] + Episterol ester[6] => 0.1265 (9Z,12Z,15Z)-Octadecatrienoic acid[6] + 0.167 Hexadecanoic acid[6] + 0.0305 Octadecanoic acid[6] + 0.3415 (9Z)-Octadecenoic acid[6] + 0.293 (9Z,12Z)-Octadecadienoic acid[6] + 0.0415 (9Z)-hexadecenoic acid[6] + 1,2-Diacyl-sn-glycerol[6]',3);
model=changeRxns(model,'r677','H2O[6] + Fecosterol ester[6] => 0.1265 (9Z,12Z,15Z)-Octadecatrienoic acid[6] + 0.167 Hexadecanoic acid[6] + 0.0305 Octadecanoic acid[6] + 0.3415 (9Z)-Octadecenoic acid[6] + 0.293 (9Z,12Z)-Octadecadienoic acid[6] + 0.0415 (9Z)-hexadecenoic acid[6] + 1,2-Diacyl-sn-glycerol[6]',3);
model=changeRxns(model,'r678','H2O[6] + Lanosterol ester[6] => 0.1265 (9Z,12Z,15Z)-Octadecatrienoic acid[6] + 0.167 Hexadecanoic acid[6] + 0.0305 Octadecanoic acid[6] + 0.3415 (9Z)-Octadecenoic acid[6] + 0.293 (9Z,12Z)-Octadecadienoic acid[6] + 0.0415 (9Z)-hexadecenoic acid[6] + 1,2-Diacyl-sn-glycerol[6]',3);
model=changeRxns(model,'r1187','20.7 ATP[6] + 20.7 H2O[6] + 1.701 1,3-beta-D-Glucan[6] + 0.0096 alpha,alpha-Trehalose[6] + 0.1689 Glycogen[6] + 0.051 AMP[6] + 0.33208 L-Alanine[6] + 0.2689 L-Glutamate[6] + 0.15382 L-Aspartate[6] + 0.19585 L-Arginine[6] + 0.15382 L-Asparagine[6] + 0.2689 L-Glutamine[6] + 0.040222 L-Ornithine[6] + 0.13623 L-Proline[6] + 0.22237 L-Lysine[6] + 0.24035 Glycine[6] + 0.20297 L-Valine[6] + 0.24287 L-Leucine[6] + 0.14544 L-Isoleucine[6] + 0.10532 L-Phenylalanine[6] + 0.074636 L-Tyrosine[6] + 0.22018 L-Serine[6] + 0.046031 L-Tryptophan[6] + 0.19541 L-Threonine[6] + 0.0057539 L-Cysteine[6] + 0.024879 L-Methionine[6] + 0.051 GMP[6] + 0.00082 dGMP[6] + 0.00118 dAMP[6] + 0.067 UMP[6] + 0.05 CMP[6] + 0.00082 dCMP[6] + 0.00118 dTMP[6] + 0.20522 (9Z,12Z,15Z)-Octadecatrienoic acid[6] + 0.05984 L-Histidine[6] + 0.16654 Hexadecanoic acid[6] + 0.03292 Octadecanoic acid[6] + 0.05956 (9Z)-Hexadecenoic acid[6] + 0.33054 (9Z)-Octadecenoic acid[6] + 0.20522 (9Z,12Z)-Octadecadienoic acid[6] + 0.001 1,2-Diacyl-sn-glycerol 3-phosphate[6] + 0.001 Phosphatidylserine[6] + 0.002 Cardiolipin[6] + 0.064 Phosphatidylethanolamine[6] + 0.116 Phosphatidylcholine[6] + 0.003 1-Phosphatidyl-D-myo-inositol[6] + 0.002 Zymosterol[6] + 0.0388 Ergosterol[6] + 0.0007 Episterol[6] + 0.0007 Fecosterol[6] + 0.0002 Lanosterol[6] => 20.7 ADP[6] + 20.7 Orthophosphate[6] + Biomass[6]',3);

model=setParam(model,'ub',{'r1122','r1123','r1124','r1125','r1126','r1127','r1128','r1129','r1130','r1131','r1132','r1134','r1135','r1136','r1138','r1139','r1140',...
    'r1142','r1143','r1144','r1146','r1147','r1148','r1149','r1151','r1152','r1153','r1154','r1155','r1156','r1157','r1158','r1161','r1162','r1163','r1165',...
    'r1167','r1168','r1170','r1171','r1172','r1173','r1174','r1175','r1176','r1177','r1178'},0); %Exchange reactions that use amino acids as carbon/nitrogen source, switch off uptake by default.
model=setParam(model,'lb',{'r1141'},0); %Use of ethanol as carbon source, switch off by default
model=setParam(model,'ub',{'r1145'},1); %Set glucose uptake to 1

% Change compartment IDs, to use letters instead of numbers
model.comps=model.compNames;
model.compNames={'mitochondrion';'peroxisome';'ER';'golgi';'vacuole';'cytosol';'extracellular';'boundary'};
model.compOutside={'c';'c';'c';'c';'c';'e';'b';''};

exportModel(model,'iLC915.xml',true);