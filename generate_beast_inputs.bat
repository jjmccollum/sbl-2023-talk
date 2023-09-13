pip install --upgrade teiphy
teiphy -t reconstructed -t defective -t orthographic -t subreading -m overlap -m lac -s"*" -s T --fill-correctors --clock strict --seed 1776 xml/ecm_mark.xml ecm_mark_strict.xml
teiphy -t reconstructed -t defective -t orthographic -t subreading -m overlap -m lac -s"*" -s T --fill-correctors --clock uncorrelated --seed 1776 xml/ecm_mark.xml ecm_mark_uncorrelated.xml
teiphy -t reconstructed -t defective -t orthographic -t subreading -m overlap -m lac -s"*" -s T --fill-correctors --clock local --seed 1776 xml/ecm_mark.xml ecm_mark_local.xml
teiphy -t reconstructed -t defective -t orthographic -t subreading -m overlap -m lac -s"*" -s T --fill-correctors --clock strict --seed 1337 xml/ubs_ephesians.xml ubs_ephesians_strict.xml
teiphy -t reconstructed -t defective -t orthographic -t subreading -m overlap -m lac -s"*" -s T --fill-correctors --clock uncorrelated --seed 1337 xml/ubs_ephesians.xml ubs_ephesians_uncorrelated.xml
teiphy -t reconstructed -t defective -t orthographic -t subreading -m overlap -m lac -s"*" -s T --fill-correctors --clock local --seed 1337 xml/ubs_ephesians.xml ubs_ephesians_local.xml
teiphy -t reconstructed -t defective -t orthographic -t subreading -m overlap -m lac -s"*" -s T --fill-correctors --clock strict --seed 1337 xml/ubs_1_peter.xml ubs_1_peter_strict.xml
teiphy -t reconstructed -t defective -t orthographic -t subreading -m overlap -m lac -s"*" -s T --fill-correctors --clock uncorrelated --seed 1337 xml/ubs_1_peter.xml ubs_1_peter_uncorrelated.xml
teiphy -t reconstructed -t defective -t orthographic -t subreading -m overlap -m lac -s"*" -s T --fill-correctors --clock local --seed 1337 xml/ubs_1_peter.xml ubs_1_peter_local.xml
sed -i -e "s/chainLength=\"100000\"/chainLength=\"20000000\"/" ecm_mark_strict.xml
sed -i -e "s/chainLength=\"100000\"/chainLength=\"20000000\"/" ecm_mark_uncorrelated.xml
sed -i -e "s/chainLength=\"100000\"/chainLength=\"20000000\"/" ecm_mark_local.xml
sed -i -e "s/chainLength=\"100000\"/chainLength=\"20000000\"/" ubs_ephesians_strict.xml
sed -i -e "s/chainLength=\"100000\"/chainLength=\"20000000\"/" ubs_ephesians_uncorrelated.xml
sed -i -e "s/chainLength=\"100000\"/chainLength=\"20000000\"/" ubs_ephesians_local.xml
sed -i -e "s/chainLength=\"100000\"/chainLength=\"20000000\"/" ubs_1_peter_strict.xml
sed -i -e "s/chainLength=\"100000\"/chainLength=\"20000000\"/" ubs_1_peter_uncorrelated.xml
sed -i -e "s/chainLength=\"100000\"/chainLength=\"20000000\"/" ubs_1_peter_local.xml