## PIXL search engine for Cross-linking Mass Spectrometry
Features of PIXL search are described in 
"High-density cross-linking for protein-protein interactions" by Julian Mintseris and Steven Gygi

The code requires [MSLib](https://github.com/gygilab/MSLib) and [JMUtil](https://github.com/gygilab/JMUtil) libraries

Licensed AGPL for open source use.  You are welcome to contact the authors for a Commercial License if you are interested in this software for commercial use.  

## Run peak files
https://www.ebi.ac.uk/pride/archive/projects/PXD011296
The peak .dta files need to be downloaded from PRIDE and un-archived in their individual subdirectories, e.g.
/data/t03272_150218_Prtsm_150E

Files for additional runs can be placed in similar directories.  
Note that for each additional run, you have to make sure that the searchDir option in the parameter file points to the correct directory for the run's .dta files

## Parameter files
Parameter files used for all runs are all located in https://github.com/gygilab/mintseris_gygi_PNAS_2020

## Fasta sequence dtabases
All fasta databases are located in https://github.com/gygilab/mintseris_gygi_PNAS_2020.  Note that reverse sequences by default are denoted by a "##' tag at the beginning of the header.
If desired, this behavior can be modified by changing the DigestOptions::reverseTag variable but this will require re-compiling the code.  

Documentation of the parameter files can be obtained by running PIXL with the '-h' option:

```
Usage: pixl -p param_file [options] ...:

General options:
  --version                  print current version
  -v [ --verbose ] arg (=0)  verbose output
  -h [ --help ]              print this help message
  -p [ --param-file ] arg    digest parameter file
  -t [ --maxNumThreads ] arg maximum threads to use [1]

Digest Options:
  -d [ --Digest.fastaFile ] arg (=undef)
                                        fasta file
  --Digest.fastaHeaderRegEx arg (=>(.+?)\s.*?)
                                        fasta header id parse regex
  --Digest.minMass arg (=400)           minimum peptide mass
  --Digest.maxMass arg (=6000)          maximum peptide mass
  --Digest.minLength arg (=5)           minimum peptide length
  --Digest.maxLength arg (=100)         maximum peptide length
  --Digest.enzymeName arg (=Trypsin)    enzyme name
  -e [ --Digest.enzymeRegEx ] arg       enzyme regex
  --Digest.maxMissedCleavages arg (=2)  maxiumum missed cleavages
  --Digest.enzymeSpecificity arg        enzyme specificity: 2 = full; 1 = 
                                        partial; 0 = none
  --Digest.swapReverseInitMet arg (=0)  swap N-terminal Met for reverse 
                                        sequences to avoid FWD bias
  --Digest.swapReverseCutSites arg (=0) swap each enzyme cut site eg [KR] with 
                                        previous residue to avoid exact mass 
                                        matches for reverse sequences
  --Digest.cleaveInitMet arg (=0)       cleave initiator Met when enzyme 
                                        specificity == 2

Mass Options:
  --Mass.elementMods arg  space-separated mass/element pairs, e.g. 1.0 N
  --Mass.staticMods arg   space-separated mass/residue pairs, e.g. 57.02146374 
                          C
  --Mass.variableMods arg space-separated mass/residue pairs, e.g. 15.9949 M 
                          79.9663 STY

Spectrum Options:
  --Spectrum.windowSize arg (=100)      window size for filtering MS/MS spectra
  --Spectrum.peakDepth arg (=9)         peak depth for filtering MS/MS spectra)
  --Spectrum.deIsotope arg (=1)         de-isotope MS/MS spectra?
  --Spectrum.printDeisoSpectra arg (=0) print de-isotoped MS/MS spectra?
  --Spectrum.filterLowMzMass arg (=0)   filter low m/z below this mass
  --Spectrum.filterCommonCorrel arg (=0)
                                        filter low m/z below this mass
  --Spectrum.removeWaterNLoss arg (=1)  remove NL of waters from MS/MS spectra?
  --Spectrum.removePhosphoNLoss arg (=0)
                                        remove phospho NL from MS/MS spectra?
  --Spectrum.maxTheoFragCharge arg (=4) max theoretical MS/MS fragment charge

Search Options:
  --Search.precursorTol arg             precursor ion tolerance ('X Th' or 'X 
                                        ppm')
  --Search.fragmentTol arg              fragment ion tolerance ('X Th' or 'X 
                                        ppm')
  --Search.nMaxVariableMods arg (=3)    maximum number of variable mods
  --Search.noModSiteCleavage arg (=1)   Terminal cleavage positions excluded 
                                        from modifications. (default: True)
  -s [ --Search.searchDir ] arg (=./)   directory with dta files
  -o [ --Search.outputFile ] arg (=xlink.out)
                                        file to output
  --Search.maxHitOutputRank arg (=1)    number of hits per spectrum to output
  --Search.precursorStepRange arg       precursor interval step range, e.g. '-1
                                        1' or '-3 2' (default '0 0')
  --Search.scoringFunction arg (=Binomial)
                                        scoring function
  --Search.searchType arg               space-separated search options with the
                                        format: [maxMissedCleavages 
                                        enzymeSpecificity SearchType linkType 
                                        linkerMass linkedRes1 linkedRes2], e.g.
                                        'XLink CC -2.0 C C', 'XLink 0_DE -18. 
                                        DE- K+'
  --Search.indexSeenSequences arg (=1)  index peptides (1-default/0), turn off 
                                        to save memory (for very large 
                                        databases), lose speed
  --Search.xFilterTopProts arg (=50)    number of first (forward or reverse) 
                                        sequences to consider for xlink search
  --Search.skipREVREVsearch arg (=1)    skip REV-REV search
  --Search.skipHalfREVFWDsearch arg (=1)
                                        cut number of REV-FWD decoys in half

```
## Missed Cleavage Sites
Note that specified number missed cleavage sites for XLink search type applies per peptide.  So setting it 2 implies up to 4 missed cleavage sites allowed per cross-linked PSM.  In addition, enzyme cut sites do not contribute to this count.  Thus when using a Lysine-Lysine cross-linker with trypsin, a setting of 2 actually implies up to 6 sites, 2 of which are not available to trypsin.  

## Variable Modfication Symbols
XL follows SEQUEST-based conventions to mark modified residues in output files with symbols '*', '#', '@', '^', '~', '$'.
N and C-terminal peptide modifications are denoted by ']' and '[', respectively.  Note that when specifying terminal modifications in the parameter file, '+' and '-' are used protein termini, but ']' and '[' for peptide termini, but only the latter are used in output files for both cases.  Instead, in the output files '+' and '-' are used in flanking residue positions to denote protein termini.  

## Run time
Run time varies depending on the cross-link type and other parameter values.  The t03272_150218_Prtsm_150E run that runs in the default example (yeast proteasome zero-length cross-linked run) runs for about 2 hours.  The mICA-CAH2 runs should be quite a bit faster, while the other proteasome runs maybe take quite a bit longer

## Search results
Search results are saved in a tab-delimited file, with the first line of output containing abbreviated descriptions of the fields.  Many of these are self-explanatory but some are briefly explained below. 
- dtaPath
- Score
- fracItyExplained
- diffSeqDeltaScore
- nMatches/nIons - for regular peptides, just the fraction of matched ions are reported.  For cross-linked peptides, this field contains additional, space-separated fields with debug output
- theo_m_h
- ppm
- peptide - for cross-linked peptides, this field includes both peptides, separated by a dash.  Note that for regular peptides, the dash is also there, but the second peptide is missing. 
- protein - for cross-linked peptides, this field includes both proteins, separated by a dash, listed in the same order as the peptides.  
- redun - for cross-linked peptides, this field includes redundancy information for both peptides, separated by a dash, listed in the same order as the peptides.  Note that for cross-linked peptides, redundancy is only calculated among proteins included in cross-linked search, as defined by xFilterTopProts paramter above
- posInfo - for regular peptides, a single value is reported which corresponds to the protein position of the first amino acid of the peptide.  For cross-linked peptides, this field has the format 'LPos1-LPos2:GPos1-GPos2', where LPos refers to local position of the cross-link in the peptides, and GPos refers to global position of the cross-link in the protein
- searchType - the following search types are used
    + peptide - regular peptide search
    + BS3 - BS3 cross-linked
    + 0_DE* - EDC zero-length cross-linked
    + DE_* - EDC diamine cross-linked (E-EDC)
    + any of the above cross-linked search typs may also have '-loop' appended indicated a loop-linked peptides identification.

