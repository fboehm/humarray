\name{humarray-package}
\alias{humarray-package}
\alias{humarray}
\docType{package}
\title{
Simplify Analysis and Annotation of Human Microarray Datasets
}
\description{
Utilises GRanges, data.frame or IRanges objects. Integrates gene annotation for ImmunoChip (or your custom chip) with function calls. Intuitive wrappers for annotation lookup (gene lists, exon ranges, etc) and conversion (e.g, between build 36 and 37 coordinates). Conversion between ensembl and HGNC gene ids, chip ids to rs-ids for SNP-arrays. Retrieval of chromosome and position for gene, band or SNP-ids, or reverse lookup. Simulation functions for ranges objects. 
}
\details{
\tabular{ll}{
Package: \tab humarray\cr
Type: \tab humarray\cr
Version: \tab 1.2\cr
Date: \tab 2017-11-17\cr
License: \tab GPL (>= 2)\cr
}
This package helps to simplify common tasks in human genetics research, such as annotation lookup, conversion and labelling for GWAS analysis. Functions are provided that utilise GRanges, IRanges and data.frame (snpStats) objects for input and output. 
The new ChipInfo object, based on GRanges, once established, can provide seamless and automatic lookup for SNPs and their features within all functions, with no need to keep passing an object explicitly with each function call. By default, the annotation for immunoChip is built-in, but you can provide your own annotation for any chip to take its place.
Intuitive wrappers are provided for annotation lookup (gene lists, exon ranges, cytobands, telomeres, etc) which take care of database lookup and download seamlessly in the background. Conversion between build 36 and 37 coordinates, with parameters required in most cases. New functions allow simple conversion between ensembl and HGNC gene labels, and chip specific ids to rs-ids for SNP-arrays. Simple function allow fast retrieval of chromosome and position for gene labels, karyotype bands or SNP-ids, or reverse lookup to see which features appear at, or nearest to a given location. There are randomisation functions to generate simulated GRanges and RangedData objects, lists of sample IDs and lists of SNP-ids.  

List of functions
ANNOTATION LOOKUP:
\itemize{
 \item{\emph{compact.gene.list }}{ Make a compact version of gene annotation }
 \item{\emph{ENS.to.GENE Convert }}{ ensembl ids to HGNC gene ids }
 \item{\emph{GENE.to.ENS Convert }}{ gene ids to ensembl ids }
 \item{\emph{get.immunobase.snps }}{ Download GWAS hits from immunobase.org }
 \item{\emph{get.centromere.locs }}{ Return Centromere locations across the genome } 
 \item{\emph{get.chr.lens }}{ Get chromosome lengths from build database }
 \item{\emph{get.cyto }}{ Return Cytoband/Karyotype locations across the genome }
 \item{\emph{get.exon.annot }}{ Get exon names and locations from UCSC } 
 \item{\emph{get.gene.annot }}{ Get human gene names and locations from biomart } 
 \item{\emph{get.genic.subset }}{ return subset of a ranged object that overlaps genes }
 \item{\emph{get.GO.for.genes }}{ Retreive GO terms from biomart for a given gene list }
 \item{\emph{get.immunog.locs }}{ Retrieve locations of Immunoglobin regions across the genome }
 \item{\emph{get.recombination.map }}{ Get HapMap recombination rates for hg18 (build 36) }
 \item{\emph{get.telomere.locs }}{ Derive Telomere locations across the genome }
 \item{\emph{get.t1d.regions }}{ Obtain a listing of known T1D associated genomic regions }
 \item{\emph{get.t1d.subset }}{ return subset of a ranged object that overlaps ichip dense mapped regions }
 \item{\emph{nearest.gene }}{ Retrieve the 'n' closest GENE labels or positions near specified locus }
 \item{\emph{plotGeneAnnot }}{ Plot genes to annotate figures with genomic axes } 
 \item{\emph{ucsc.sanitizer }}{ Standardize genome build string }
}
RANGED DATA:
\itemize{
 \item{\emph{makeGRanges }}{ Wrapper to construct GRanges object from chr,pos or chr,start,end }
 \item{\emph{conv.37.36 }}{ Convert from build 37 to build 36 SNP coordinates }
 \item{\emph{conv.36.37 }}{ Convert from build 36 to build 37 SNP coordinates }
 \item{\emph{conv.37.38 }}{ Convert from build 37 to build 38 SNP coordinates }
 \item{\emph{conv.38.37 }}{ Convert from build 38 to build 37 SNP coordinates }
 \item{\emph{recomWindow }}{ Extend an interval or SNP by distance in centimorgans (recombination distance) }
 \item{\emph{ranges.to.txt }}{ Convert GRanges/RangedData to chr:pos1-pos2 vector }
 \item{\emph{select.autosomes }}{ Select ranges only within the 22 autosomes in a ranged data object }
 \item{\emph{ranges.to.data.frame }}{ Convert RangedData/GRanges to a data.frame }
 \item{\emph{data.frame.to.GRanges }}{ Convert a data.frame with positional information to GRanges }
 \item{\emph{data.frame.to.ranges }}{ Convert a data.frame with positional information to RangedData/GRanges }
 \item{\emph{chrSel }}{ Select chromosome subset of GRanges or RangedData object }
 \item{\emph{rranges }}{ Simulate a GRanges or RangedData object }
 \item{\emph{chrNums }}{ Extract chromosome numbers from GRanges/RangedData }
 \item{\emph{expand.nsnp }}{ Expand genomic locations to the ranges covering the 'n' closest SNPs }
 \item{\emph{endSnp }}{ Find closest SNPs to the ends of ranges }
 \item{\emph{rangeSnp }}{ Find closest SNPs to the starts and ends of ranges }
 \item{\emph{startSnp }}{ Find closest SNPs to the starts of ranges } 
 \item{\emph{force.chr.pos }}{ Force a valid genomic range, given the inputted coordinates }
 \item{\emph{in.window }}{ Select all ranges lying within a chromosome window }
 \item{\emph{plotRanges }}{ Plot the locations specified in a GRanges or RangedData object } 
 \item{\emph{set.chr.to.char }}{ Change the chromosome labels in a RangedData or GRanges object to string codes }
 \item{\emph{set.chr.to.numeric }}{ Change the chromosome labels in a RangedData or GRanges object to numbers }
 \item{\emph{invGRanges }}{ Invert a ranged object }
}
CHIP SUPPORT:
\itemize{
 \item{\emph{convert.textpos.to.data }}{ Convert a chr:pos1-pos2 vector to a matrix }
 \item{\emph{chip.support }}{ Retrieve current ChipInfo annotation object }
 \item{\emph{ids.by.pos }}{ Order rs-ids or ichip ids by chrosome and position }
 \item{\emph{id.to.rs }}{ Convert from chip ID labels to dbSNP rs-ids }
 \item{\emph{rs.to.id }}{ Convert from dbSNP rs-ids to chip ID labels }
 \item{\emph{get.nearby.snp.lists }}{ Obtain nearby SNP-lists within a recombination window }
 \item{\emph{nearest.snp }}{ Retrieve the 'n' closest SNP ids or positions near specified locus }
 \item{\emph{snps.in.range }}{ Retrieve SNP ids or positions in specified range }
 \item{\emph{AB }}{ Returns the A and B allele for SNP ids }
 \item{\emph{Band }}{ Retrieve the cytoband(s) for snp ids, genes or locations }
 \item{\emph{Band.gene }}{ Retrieve the cytoband(s) for genes labels }
 \item{\emph{Band.pos }}{ Find the cytoband(s) overlapping a chromosome location }
 \item{\emph{Chr }}{ Find chromosome for SNP ids, gene name or band }
 \item{\emph{Gene.pos }}{ Find the gene(s) overlapping a chromosome location }
 \item{\emph{Pos }}{ Find the chromosome position for SNP ids, gene name or band }
 \item{\emph{Pos.gene }}{ Find the chromosome, start and end position for gene names }
 \item{\emph{Pos.band }}{ Find the chromosome, start and end position for cytoband names }
}
}
\author{
Nicholas Cooper

Maintainer: 
Nicholas Cooper <njcooper@gmx.co.uk>
}
\keyword{ package }
\keyword{ manip }
\keyword{ multivariate }
\keyword{ array }
\seealso{
\code{\link[NCmisc:NCmisc-package]{NCmisc}} ~~

}
\examples{
#' randomly generated GRanges object
rranges()
}
