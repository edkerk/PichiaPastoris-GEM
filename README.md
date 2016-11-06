PichiaPastoris-GEM
========================

This repository contains the current genome-scale model of _Pichia pastoris_ used in the @SysBioChalmers group. The 'normal' _P. pastoris_ model iLC915 was published here:
>Caspeta L, Shoaie S, Agren R, et al (2012) Genome-scale metabolic reconstructions of Pichia stipitis and Pichia pastoris and in silico evaluation of their potentials. BMC Syst Biol 6:24. doi: [10.1186/1752-0509-6-24](http://doi.org/10.1186/1752-0509-6-24).

This model was later further extended to include native and humanized N-glycosylation pathways, specifically for a number of heterologous proteins:
>Irani ZA, Kerkhoven EJ, Shojaosadati SA, Nielsen J (2016) Genome-scale metabolic model of Pichia pastoris with native and humanized glycosylation of recombinant proteins. Biotechnol Bioeng 113:961–969. doi: [10.1002/bit.25863](http://doi.org/10.1002/bit.25863).

For Irani _et al._, a number of curations were performed on iLC915, which are detailed in the included Matlab script and applied to the enclosed iLC915 model file. Additionally, a Matlab script is included that converts iLC915 to ihGlycopastoris. The models are provided in COBRA SBML format, while the conversion scripts are for RAVEN.

This repository is administered by Eduard Kerkhoven (@edkerk), Division of Systems and Synthetic Biology, Department of Biology and Biological Engineering, Chalmers University of Technology.

Last update: 2016-11-06

========================

## Required Software:

* MATLAB (7.5 or higher)
* The COBRA toolbox (https://github.com/opencobra/cobratoolbox) for MATLAB
* RAVEN 1.9 or higher to run the conversion scripts

========================