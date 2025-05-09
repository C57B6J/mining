# Pubmed API info: https://www.ncbi.nlm.nih.gov/books/NBK25499/#_chapter4_ESearch_

#Pull UIDs for all anatomical terms relating to the inner ear from 1825 to 2025, and exclude non-ear related terms like protstatic utricle and laryngeal saccule (63611 hits)
curl -s "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/esearch.fcgi?db=pubmed&term=\
cochlea+OR\tectorial+membrane+OR\+basilar+papilla+OR\+organ+of+corti+OR\+stria+vascularis+OR\+basilar+membrane+OR\+reissner's+membrane+OR\+spiral+ganglion+OR\
\vestibular+labyrinth+OR\+semicircular+canal+OR\+vestibular+macula+OR\+otolith+OR\+crista+ampullaris+OR\+utricle+OR\+saccule+NOT\
+prostatic+NOT\+laryngeal\
&datetype=pdat\
&mindate=1825\
&maxdate=2025\
&retstart=0\
&retmax=60\
&tool=biomed3&retmode=json"

#Return Cochlear/Auditory hits only, but exclude all vestibular (34,320 hits)
curl -s "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/esearch.fcgi?db=pubmed&term=\
cochlea+OR\tectorial+membrane+OR\+basilar+papilla+OR\+organ+of+corti+OR\+stria+vascularis+OR\+basilar+membrane+OR\+reissner's+membrane+OR\+spiral+ganglion+NOT\
\vestibular+labyrinth+NOT\+semicircular+canal+NOT\+vestibular+macula+NOT\+otolith+NOT\+crista+ampullaris+NOT\+utricle+NOT\+saccule+NOT\
+prostatic+NOT\+laryngeal\
&datetype=pdat\
&mindate=1825\
&maxdate=2025\
&retstart=0\
&retmax=60\
&tool=biomed3&retmode=json"

#Return Vestibular Hits Only (27,282 hits)
curl -s "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/esearch.fcgi?db=pubmed&term=\
\vestibular+labyrinth+OR\+semicircular+canal+OR\+vestibular+macula+OR\+otolith+OR\+crista+ampullaris+OR\+utricle+OR\+saccule+NOT\
cochlea+NOT\tectorial+membrane+NOT\+basilar+papilla+NOT\+organ+of+corti+NOT\+stria+vascularis+NOT\+basilar+membrane+NOT\+reissner's+membrane+NOT\+spiral+ganglion+NOT\
\+prostatic+NOT\+laryngeal\
&datetype=pdat\
&mindate=1825\
&maxdate=2025\
&retstart=0\
&retmax=60\
&tool=biomed3&retmode=json"

#Pull UIDs for all auditory/Cochlear AND vestibular terms 1825 to 2025, and exclude non-ear related terms like protstatic utricle and laryngeal saccule (17514 hits)
curl -s "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/esearch.fcgi?db=pubmed&term=\
cochlea+OR\tectorial+membrane+OR\+basilar+papilla+OR\+organ+of+corti+OR\+stria+vascularis+OR\+basilar+membrane+OR\+reissner's+membrane+OR\+spiral+ganglion+AND\
\vestibular+labyrinth+OR\+semicircular+canal+OR\+vestibular+macula+OR\+otolith+OR\+crista+ampullaris+OR\+utricle+OR\+saccule+NOT\
+prostatic+NOT\+laryngeal\
&datetype=pdat\
&mindate=1825\
&maxdate=2025\
&retstart=0\
&retmax=60\
&tool=biomed3&retmode=json"

cochlea+OR+utricle\
&datetype=pdat\
&mindate=1800/01/01\
&maxdate=3000/01/01\
&dbfrom=pubmed\
&tool=biomed3&\
&retmode=json"


# # Search boolean terms
# curl -s "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/esearch.fcgi?db=pubmed&term=\
# +covid19\
# &datetype=edat\
# &mindate=1880\
# &maxdate=2015\
# &tool=biomed3&\
# &retmode=json"

------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Return Utricle from Vestibular Hits Only (4111 hits)
curl -s "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/esearch.fcgi?db=pubmed&term=\
+utricle+NOT\tectorial+membrane+NOT\cochlea+NOT\+basilar+papilla+NOT\+organ+of+corti+NOT\+stria+vascularis+NOT\+basilar+membrane+NOT\+reissner's+membrane+NOT\+spiral+ganglion+NOT\
\+prostatic+NOT\+laryngeal\
&datetype=pdat\
&mindate=1825\
&maxdate=2025\
&retstart=0\
&retmax=60\
&tool=biomed3&retmode=json"

#Return Saccule from Vestibular Hits Only (4642 hits)
curl -s "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/esearch.fcgi?db=pubmed&term=\
+saccule+NOT\tectorial+membrane+NOT\cochlea+NOT\+basilar+papilla+NOT\+organ+of+corti+NOT\+stria+vascularis+NOT\+basilar+membrane+NOT\+reissner's+membrane+NOT\+spiral+ganglion+NOT\
\+prostatic+NOT\+laryngeal\
&datetype=pdat\
&mindate=1825\
&maxdate=2025\
&retstart=0\
&retmax=60\
&tool=biomed3&retmode=json"

#Return Semicircular Canal from Vestibular Hits Only (7888 hits)
curl -s "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/esearch.fcgi?db=pubmed&term=\
+semicircular+canal+NOT\
cochlea+NOT\tectorial+membrane+NOT\+basilar+papilla+NOT\+organ+of+corti+NOT\+stria+vascularis+NOT\+basilar+membrane+NOT\+reissner's+membrane+NOT\+spiral+ganglion+NOT\
\+prostatic+NOT\+laryngeal\
&datetype=pdat\
&mindate=1825\
&maxdate=2025\
&retstart=0\
&retmax=60\
&tool=biomed3&retmode=json"

#Return Crista Ampullaris from Vestibular Hits Only (304 hits)
curl -s "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/esearch.fcgi?db=pubmed&term=\
\crista+ampullaris+NOT\tectorial+membrane+NOT\cochlea+NOT\+basilar+papilla+NOT\+organ+of+corti+NOT\+stria+vascularis+NOT\+basilar+membrane+NOT\+reissner's+membrane+NOT\+spiral+ganglion+NOT\
\+prostatic+NOT\+laryngeal\
&datetype=pdat\
&mindate=1825\
&maxdate=2025\
&retstart=0\
&retmax=60\
&tool=biomed3&retmode=json"

#Return Vestibular Macula from Vestibular Hits Only (436 hits)
curl -s "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/esearch.fcgi?db=pubmed&term=\
\vestibular+macula+NOT\cochlea+NOT\tectorial+membrane+NOT\+basilar+papilla+NOT\+organ+of+corti+NOT\+stria+vascularis+NOT\+basilar+membrane+NOT\+reissner's+membrane+NOT\+spiral+ganglion+NOT\
\+prostatic+NOT\+laryngeal\
&datetype=pdat\
&mindate=1825\
&maxdate=2025\
&retstart=0\
&retmax=60\
&tool=biomed3&retmode=json"

#Return Otolith from Vestibular Hits Only (4794 hits)
curl -s "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/esearch.fcgi?db=pubmed&term=\
\otolith+NOT\cochlea+NOT\tectorial+membrane+NOT\+basilar+papilla+NOT\+organ+of+corti+NOT\+stria+vascularis+NOT\+basilar+membrane+NOT\+reissner's+membrane+NOT\+spiral+ganglion+NOT\
\+prostatic+NOT\+laryngeal\
&datetype=pdat\
&mindate=1825\
&maxdate=2025\
&retstart=0\
&retmax=60\
&tool=biomed3&retmode=json"

#Return "Vestibular Labyrinth" from vestibular hits only (13594 hits)
curl -s "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/esearch.fcgi?db=pubmed&term=\
vestibular+labyrinth+NOT\tectorial+membrane+NOT\+basilar+papilla+NOT\+organ+of+corti+NOT\+stria+vascularis+NOT\+basilar+membrane+NOT\+reissner's+membrane+NOT\+spiral+ganglion+NOT\
\+semicircular+canal+NOT\+vestibular+macula+NOT\+otolith+NOT\+crista+ampullaris+NOT\+utricle+NOT\+saccule+NOT\
+prostatic+NOT\+laryngeal\
&datetype=pdat\
&mindate=1825\
&maxdate=2025\
&retstart=0\
&retmax=60\
&tool=biomed3&retmode=json"
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Return "cochlea" from auditory hits only (32,657 hits)
curl -s "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/esearch.fcgi?db=pubmed&term=\
cochlea+NOT\vestibular+labyrinth+NOT\+semicircular+canal+NOT\+vestibular+macula+NOT\+otolith+NOT\+crista+ampullaris+NOT\+utricle+NOT\+saccule+NOT\
+prostatic+NOT\+laryngeal\
&datetype=pdat\
&mindate=1825\
&maxdate=2025\
&retstart=0\
&retmax=60\
&tool=biomed3&retmode=json"

#Return "organ of corti" from auditory hits only (11,977 hits)
curl -s "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/esearch.fcgi?db=pubmed&term=\
organ+of+corti+NOT\vestibular+labyrinth+NOT\+semicircular+canal+NOT\+vestibular+macula+NOT\+otolith+NOT\+crista+ampullaris+NOT\+utricle+NOT\+saccule+NOT\
+prostatic+NOT\+laryngeal\
&datetype=pdat\
&mindate=1825\
&maxdate=2025\
&retstart=0\
&retmax=60\
&tool=biomed3&retmode=json"

#Return "basilar membrane" from auditory hits only (2925 hits)
curl -s "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/esearch.fcgi?db=pubmed&term=\
+basilar+membrane+NOT\vestibular+labyrinth+NOT\+semicircular+canal+NOT\+vestibular+macula+NOT\+otolith+NOT\+crista+ampullaris+NOT\+utricle+NOT\+saccule+NOT\
+prostatic+NOT\+laryngeal\
&datetype=pdat\
&mindate=1825\
&maxdate=2025\
&retstart=0\
&retmax=60\
&tool=biomed3&retmode=json"

#Return "tectorial membrane" from auditory hits only (773 hits)
curl -s "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/esearch.fcgi?db=pubmed&term=\
tectorial+membrane+NOT\vestibular+labyrinth+NOT\+semicircular+canal+NOT\+vestibular+macula+NOT\+otolith+NOT\+crista+ampullaris+NOT\+utricle+NOT\+saccule+NOT\
+prostatic+NOT\+laryngeal\
&datetype=pdat\
&mindate=1825\
&maxdate=2025\
&retstart=0\
&retmax=60\
&tool=biomed3&retmode=json"

#Return "Reissner's membrane" from auditory hits only (374 hits)
curl -s "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/esearch.fcgi?db=pubmed&term=\
+reissner+membrane+NOT\vestibular+labyrinth+NOT\+semicircular+canal+NOT\+vestibular+macula+NOT\+otolith+NOT\+crista+ampullaris+NOT\+utricle+NOT\+saccule+NOT\
+prostatic+NOT\+laryngeal\
&datetype=pdat\
&mindate=1825\
&maxdate=2025\
&retstart=0\
&retmax=60\
&tool=biomed3&retmode=json"

#Return "stria vascularis" from auditory hits only (2002 hits)
curl -s "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/esearch.fcgi?db=pubmed&term=\
+stria+vascularis+NOT\vestibular+labyrinth+NOT\+semicircular+canal+NOT\+vestibular+macula+NOT\+otolith+NOT\+crista+ampullaris+NOT\+utricle+NOT\+saccule+NOT\
+prostatic+NOT\+laryngeal\
&datetype=pdat\
&mindate=1825\
&maxdate=2025\
&retstart=0\
&retmax=60\
&tool=biomed3&retmode=json"

#Return "Spiral gangli" from auditory hits only (3804 hits)
curl -s "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/esearch.fcgi?db=pubmed&term=\
+spiral+ganglion+NOT\vestibular+labyrinth+NOT\+semicircular+canal+NOT\+vestibular+macula+NOT\+otolith+NOT\+crista+ampullaris+NOT\+utricle+NOT\+saccule+NOT\
+prostatic+NOT\+laryngeal\
&datetype=pdat\
&mindate=1825\
&maxdate=2025\
&retstart=0\
&retmax=60\
&tool=biomed3&retmode=json"
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

