CREATE DATABASE geodjango_serialization;

\c geodjango_serialization

-- make sure we can support Postgis columns and functions
CREATE EXTENSION IF NOT EXISTS "postgis";

CREATE TABLE IF NOT EXISTS test (
    test_id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    geom1 geography,
    geom2 geography,
    geom3 geography,
    geom4 geography,
    geom5 geography,
    geom6 geography,
    geom7 geography,
    geom8 geography
);

INSERT INTO test (name, geom1)
SELECT
'Test Record ' || generate_series(1,50)::text,  -- change the generate_series params to create more or fewer records
E'SRID=4326;MULTIPOLYGON(((-93.2969040204102 44.9835525965937,-93.3205932904297 44.9704379784646,-93.3030838299805 44.9531901197847,-93.2677215863281 44.9524612228475,-93.2605118084961 44.9670374026628,-93.2670349408203 44.9750527231538,-93.2969040204102 44.9835525965937)),((-93.264631681543 45.0138990013088,-93.2512420941406 44.9884091013931,-93.1963104535156 44.9925368069733,-93.2172531415039 45.010501003214,-93.2591385174805 45.0148698208772,-93.264631681543 45.0138990013088)),((-93.2320160199219 44.9437137375152,-93.2567352582031 44.9257286089921,-93.2430023480469 44.9101693608968,-93.2090133954102 44.9070083738084,-93.187727384668 44.9237839333889,-93.2055801678711 44.9337497,-93.2248062420898 44.9400685585158,-93.2320160199219 44.9437137375152)),((-93.2076401043945 44.9602356462344,-93.1980270672852 44.9337497,-93.1310791302734 44.9383673957796,-93.165754728418 44.9646082965136,-93.1966537762695 44.9629078610066,-93.2076401043945 44.9602356462344)),((-93.3875412274414 44.9274301461428,-93.4136337567383 44.9077378477964,-93.374494962793 44.8875523191491,-93.3295196820312 44.8967947659411,-93.3435959149414 44.9172201672096,-93.3703750897461 44.9271870724928,-93.3875412274414 44.9274301461428)),((-93.4177536297852 44.9886519158326,-93.4565491009766 44.9599927114471,-93.4043640423828 44.9429847202303,-93.3593887616211 44.951489345864,-93.3806747723633 44.9762670679341,-93.4102005291992 44.9852524200754,-93.4136337567383 44.9901087808688,-93.4177536297852 44.9886519158326)),((-93.3298630047852 44.9480876468166,-93.3387893963867 44.9296177627052,-93.3212799359375 44.9305900099891,-93.3126968670898 44.9369092161756,-93.319563322168 44.944928745751,-93.3264297772461 44.947115695773,-93.3298630047852 44.9480876468166)),((-93.3655685711914 45.055871910853,-93.3820480633789 45.0209370703072,-93.3504623700195 45.0301580581898,-93.3545822430664 45.0451996391909,-93.3655685711914 45.055871910853)),((-93.3058304120117 45.0311286020897,-93.3264297772461 45.0165687155203,-93.3037704754883 45.0024906385858,-93.2811111737305 45.0097728345354,-93.2962173749023 45.0243344491763,-93.3058304120117 45.0311286020897)),((-93.2625717450195 45.0476253303419,-93.2296127606445 45.0296727800682,-93.224119596582 45.0432590122099,-93.2447189618164 45.0578121099311,-93.2632583905273 45.0544167183427,-93.2625717450195 45.0476253303419)),((-93.1479019452148 45.0277316264371,-93.1575149823242 45.0160833221939,-93.1245559979492 44.996178653265,-93.1170028973633 45.0282169210166,-93.1451553631836 45.0451996391909,-93.1479019452148 45.0277316264371)),((-93.3655685711914 44.9335066530939,-93.3676285077148 44.915032078515,-93.3284897137695 44.9062788905628,-93.3147568036133 44.9203805926772,-93.3298630047852 44.937881340026,-93.3731216717773 44.9383673957796,-93.3655685711914 44.9335066530939)),((-93.0874771405273 44.9014154323462,-93.1183761883789 44.8654130539037,-93.0655044842773 44.8649263809854,-93.033918790918 44.8868225890377,-93.055891447168 44.895092321557,-93.0874771405273 44.9014154323462)),((-93.182029136849 44.9912625054519,-93.1792825548178 44.9718349846133,-93.1535333482748 44.9691631856767,-93.1288141099936 44.9786353657379,-93.1480401842123 44.9929621003123,-93.182029136849 44.9912625054519)),((-93.196792015267 45.0220901741639,-93.1950754014975 45.0063143061422,-93.1665796129233 45.0017020777325,-93.1686395494467 45.0160230469242,-93.1806558458334 45.018692662113,-93.1899255601889 45.020148763393,-93.196792015267 45.0220901741639)),((-93.368796714974 44.9958755742395,-93.3670801012045 44.9822780953265,-93.3300012437826 44.9803353350138,-93.3310312120444 44.9907768976629,-93.3427041856772 44.9956327904029,-93.368796714974 44.9958755742395)),((-93.4141153184897 45.0087416456298,-93.4072488634115 45.0014593185827,-93.3942025987631 45.0024303490102,-93.3962625352865 45.0116543172379,-93.4206384508139 45.0213621528394,-93.4247583238608 45.0140814304304,-93.4216684190756 45.0075279887437,-93.4141153184897 45.0087416456298)),((-93.2963556138998 44.8711923804749,-93.2712930528647 44.8541580904303,-93.2094949571615 44.8614591176109,-93.225974449349 44.8755718118326,-93.2668298570639 44.8777614025361,-93.2730096666342 44.8731388355559,-93.2963556138998 44.8711923804749)),((-93.412742027474 44.8617024692402,-93.3729165880209 44.8461258913011,-93.3327478258139 44.8570786123915,-93.3361810533529 44.8692458595633,-93.3921426622397 44.8745986336652,-93.4086221544272 44.8699758126197,-93.412742027474 44.8617024692402)),((-93.3282846300131 44.8894378124889,-93.3296579210287 44.8702191282479,-93.3063119737631 44.8716790004168,-93.2747262804037 44.8750852248061,-93.2795327989584 44.8877351503091,-93.31043184681 44.8916268755176,-93.3193582384115 44.8884648688435,-93.3282846300131 44.8894378124889)),((-93.2452005235678 44.8843296747443,-93.2489770738608 44.8685158972495,-93.1885522691733 44.8692458595633,-93.1888955919272 44.8865189321796,-93.2283777086264 44.8930862045827,-93.2452005235678 44.8843296747443)),((-93.2881158678061 44.923237381346,-93.3018487779623 44.9006254815129,-93.2537835924154 44.8955183374027,-93.255500206185 44.9118109740023,-93.2712930528647 44.9237235610438,-93.2781595079428 44.9217788175658,-93.2881158678061 44.923237381346)),((-93.2156747667319 44.917159787967,-93.2139581529623 44.8857891889586,-93.1518167345053 44.8908971970988,-93.1569665758139 44.9152148223093,-93.1943887559897 44.917159787967,-93.2156747667319 44.917159787967)),((-93.130874046517 44.8969775677215,-93.1686395494467 44.8831133846124,-93.1507867662436 44.8597556274045,-93.1195443956381 44.8694891782774,-93.1250375597006 44.88992427814,-93.130874046517 44.8969775677215)),((-93.1339639513022 44.9242097366272,-93.1648629991537 44.9091363803272,-93.1428903429037 44.890653968902,-93.1102746812826 44.8930862045827,-93.1212610094076 44.9084069240878,-93.1339639513022 44.9242097366272)),((-93.2414239732748 44.9562882280901,-93.2565301744467 44.941709317409,-93.2324975816733 44.9261543978163,-93.2046884386069 44.9368488576254,-93.2294076768881 44.955073460301,-93.2414239732748 44.9562882280901)),((-93.28845919056 44.9465693657477,-93.2915490953451 44.9273697776296,-93.2702630846029 44.9234804717092,-93.2448572008139 44.9339323842618,-93.2623666612631 44.9485132698786,-93.2743829576498 44.9465693657477,-93.28845919056 44.9465693657477)),((-93.3423608629233 44.9630904524902,-93.3365243761069 44.9397651828689,-93.3152383653647 44.9458403847265,-93.3121484605795 44.9596894410943,-93.31043184681 44.9674628851872,-93.3317178575522 44.9672199810028,-93.3365243761069 44.964547967086,-93.3423608629233 44.9630904524902)),((-93.3588403551108 44.964547967086,-93.3790963975912 44.9497281765306,-93.3530038682944 44.9409802746711,-93.3269113389975 44.9477843135441,-93.3327478258139 44.9587176865225,-93.3512872545248 44.9640621330018,-93.3588403551108 44.964547967086)),((-93.4182351915365 44.9482702854624,-93.4278482286459 44.9302865842634,-93.3821863023764 44.9246959080961,-93.3749765245444 44.9397651828689,-93.3887094347006 44.9533727421944,-93.4154886095053 44.950214131991,-93.4182351915365 44.9482702854624)),((-93.4340280382162 44.9183753580733,-93.3962625352865 44.891140424267,-93.3784097520834 44.9025709409031,-93.3990091173178 44.9242097366272,-93.4223550645834 44.9227511975337,-93.4340280382162 44.9183753580733)),((-93.4388345567709 44.9596894410943,-93.4683603136069 44.9353906394586,-93.4450143663412 44.9327171433109,-93.4137719957358 44.9344184734418,-93.4110254137045 44.9541016275546,-93.4285348741537 44.9596894410943,-93.4388345567709 44.9596894410943)),((-93.3657068101889 44.8957615450273,-93.3811563341147 44.8643792692754,-93.3499139635092 44.8634059018448,-93.3334344713217 44.8767882613984,-93.3183282701498 44.8828701235002,-93.3330911485678 44.8923565446788,-93.3605569688803 44.8943022838503,-93.3657068101889 44.8957615450273)),((-93.2791894762045 44.8643792692754,-93.3186715929037 44.8461258913011,-93.2815927354819 44.8410139086393,-93.2472604600912 44.8405270294899,-93.2410806505209 44.8524543842177,-93.258933433724 44.8604857008074,-93.2791894762045 44.8643792692754)),((-93.2053750841147 44.8733821378123,-93.2314676134115 44.8561051215287,-93.2029718248373 44.8402835883723,-93.1641763536459 44.8444219474819,-93.1621164171225 44.861945819841,-93.1906122056967 44.8668126158495,-93.1981653062826 44.87362543904,-93.2053750841147 44.8733821378123)),((-93.1422036973959 44.8711923804749,-93.1494134752279 44.8473429631712,-93.1147378770834 44.8419876545949,-93.0927652208334 44.8556183699258,-93.0927652208334 44.8680292505639,-93.1319040147787 44.872408922615,-93.1422036973959 44.8711923804749)),((-93.1103772231609 44.9865578071634,-93.1237668105632 44.9663999720208,-93.1011075088054 44.9421040118432,-93.0708951064616 44.9481789662121,-93.0722683974773 44.9851008518713,-93.0990475722819 44.9918996597543,-93.1103772231609 44.9865578071634)),((-93.2604092666179 45.0263669129302,-93.2779187270671 45.0037956330688,-93.2610959121257 44.9758726084337,-93.2226437636882 44.9834010238953,-93.2212704726726 45.001610843529,-93.2363766738444 45.0173880070166,-93.2556027480632 45.0217562993,-93.2604092666179 45.0263669129302)),((-93.3125943252116 45.0401965258434,-93.3603161880046 45.0137475088652,-93.3328503676921 44.9962698961185,-93.285471827653 44.997726567513,-93.2957715102702 45.0108349437085,-93.3095044204265 45.0229696546779,-93.289248377946 45.0324329440744,-93.3019513198405 45.037770519688,-93.3125943252116 45.0401965258434)),((-93.3901852675944 45.029521329357,-93.4104413100749 45.0103495017818,-93.3860653945476 44.9909284508588,-93.3603161880046 44.9950559750029,-93.3448666640788 45.0130193814623,-93.3548230239421 45.0263669129302,-93.3767956801921 45.0355870262018,-93.3901852675944 45.029521329357)),((-93.432070643571 44.9999115051733,-93.439280421403 44.9751439996394,-93.4125012465984 44.9707721524655,-93.3994549819499 44.9848580223891,-93.4066647597819 44.9967554573645,-93.4241742202312 44.9982121164156,-93.432070643571 44.9999115051733)),((-93.5003918715984 45.1456282369718,-93.5800427505046 45.0802107768138,-93.5154980727702 45.0685731557824,-93.5182446548015 45.1063867591264,-93.5003918715984 45.1456282369718)),((-93.4852856704265 45.096208636101,-93.501765162614 45.0719677067259,-93.4667462417155 45.0676032470542,-93.435847193864 45.0840894571757,-93.4420270034343 45.1107482564037,-93.4777325698405 45.1097790635875,-93.4852856704265 45.096208636101)),((-93.4639996596843 45.1475653882795,-93.4777325698405 45.1277064665975,-93.4207409926921 45.1160785227111,-93.3630627700359 45.1364258692626,-93.4111279555827 45.1504709918089,-93.4495801040202 45.1495024737567,-93.4639996596843 45.1475653882795)),((-93.5862225600749 45.0229696546779,-93.567683131364 44.984129527771,-93.5003918715984 44.9904428402394,-93.5148114272624 45.0176306986645,-93.5573834487468 45.0190868269507,-93.5635632583171 45.0326755719482,-93.5862225600749 45.0229696546779)),((-93.5553235122234 45.0394687347972,-93.5388440200359 45.024425647187,-93.5086316176921 45.0239403204651,-93.483225733903 45.0399539298566,-93.5079449721843 45.0486867373542,-93.5354107924968 45.0525675572279,-93.5498303481609 45.0457759496419,-93.5553235122234 45.0394687347972)),((-93.4763592788249 45.0113203815208,-93.4900921889812 44.9671286919054,-93.4605664321452 44.9758726084337,-93.4516400405437 44.9967554573645,-93.4763592788249 45.0113203815208)),((-93.5724896499187 44.9554680628494,-93.5642499038249 44.9219305531003,-93.4825390883952 44.9199857489275,-93.5120648452312 44.9608128120168,-93.5587567397624 44.9617845311049,-93.5724896499187 44.9554680628494)),((-93.5594433852702 44.8883734544958,-93.5278576919109 44.8324014262509,-93.4633130141765 44.8470080707895,-93.4633130141765 44.8728040931825,-93.505198390153 44.893724449386,-93.5374707290202 44.8942108787804,-93.5594433852702 44.8883734544958)),((-93.505198390153 44.8090230928621,-93.4550732680827 44.7583375173154,-93.3603161880046 44.7754001309934,-93.3651227065593 44.8056129605597,-93.4523266860515 44.8226616060311,-93.4880322524577 44.8153556608418,-93.505198390153 44.8090230928621)),((-93.2401532241374 44.8163298403539,-93.2511395522624 44.7812490097287,-93.2099408217937 44.7715005493567,-93.1680554458171 44.7797868455884,-93.1694287368327 44.800740993264,-93.1845349380046 44.8221745718191,-93.2298535415202 44.8182781500057,-93.2401532241374 44.8163298403539)),((-93.3383435317546 44.8173040034086,-93.3246106215984 44.760775342129,-93.2676190444499 44.7797868455884,-93.2586926528484 44.8036642230137,-93.2889050551921 44.8250967153754,-93.3218640395671 44.8207134444969,-93.3383435317546 44.8173040034086)),((-93.4337872573405 44.8509025506116,-93.4255475112468 44.8216875334928,-93.3726758071452 44.8124330235607,-93.3342236587077 44.8255837249011,-93.3486432143718 44.8397052113894,-93.3802289077312 44.8397052113894,-93.4049481460124 44.8499289553425,-93.4200543471843 44.8489553436158,-93.4337872573405 44.8509025506116)),((-93.4639996596843 44.8966429640358,-93.4351605483562 44.8659911727653,-93.4179944106609 44.8796162071742,-93.4166211196452 44.900534086494,-93.4372204848796 44.9029659043113,-93.4543866225749 44.9088018474006,-93.4639996596843 44.8966429640358)),((-93.5656231948405 44.915609698844,-93.5628766128093 44.8990749464304,-93.4873456069499 44.8981021658158,-93.4777325698405 44.9112333154909,-93.5038250991374 44.915609698844,-93.5656231948405 44.915609698844)),((-93.450266749528 45.0637234475637,-93.4742993423015 45.0292786881113,-93.4509533950359 45.0190868269507,-93.417307765153 45.0263669129302,-93.4125012465984 45.040924307632,-93.4310406753093 45.0579032545943,-93.450266749528 45.0637234475637)),((-93.402888209489 45.0869982946407,-93.4221142837077 45.065178403231,-93.3980816909343 45.0448056541556,-93.3802289077312 45.0515973769462,-93.3671826430827 45.0666333218683,-93.3864087173015 45.0806956262596,-93.402888209489 45.0869982946407)),((-93.4166211196452 45.1112328466401,-93.4207409926921 45.0937850060377,-93.3761090346843 45.0899069839859,-93.3678692885905 45.1039635610786,-93.3761090346843 45.1214082911734,-93.3946484633952 45.1180166779357,-93.4166211196452 45.1112328466401)),((-93.3541363784343 45.0942697402793,-93.3610028335124 45.0680882034755,-93.3362835952312 45.0525675572279,-93.3101910659343 45.0608134251391,-93.3088177749187 45.0811804715909,-93.3383435317546 45.0991168564005,-93.3541363784343 45.0942697402793)),((-93.3507031508952 45.1344883394295,-93.3630627700359 45.1063867591264,-93.3390301772624 45.1059021277457,-93.318430812028 45.0976627647657,-93.2895917006999 45.0981474660917,-93.2889050551921 45.1160785227111,-93.3177441665202 45.1315819212474,-93.3507031508952 45.1344883394295)),((-93.2847851821452 45.084574273706,-93.3067578383952 45.054507868418,-93.293024928239 45.0428650138094,-93.2696789809734 45.0472313620131,-93.2662457534343 45.0617834490717,-93.2477063247234 45.0637234475637,-93.2456463881999 45.0734224525565,-93.263499171403 45.0811804715909,-93.2847851821452 45.084574273706)),((-93.2113141128093 45.0443205002407,-93.219553858903 45.0263669129302,-93.2071942397624 45.0224843156125,-93.1962079116374 45.0326755719482,-93.1762951919109 45.0253962882875,-93.1550091811687 45.0370426977835,-93.1735486098796 45.0486867373542,-93.2003277846843 45.049171854239,-93.2113141128093 45.0443205002407)),((-93.2223004409343 45.0753620560617,-93.2332867690593 45.0608134251391,-93.216120631364 45.0482016163549,-93.197581202653 45.0559630586088,-93.1673688003093 45.054507868418,-93.2078808852702 45.0777864678683,-93.2223004409343 45.0753620560617)),((-93.2703656264812 45.1102636620528,-93.2662457534343 45.0908765141855,-93.2401532241374 45.083604636531,-93.2133740493327 45.0869982946407,-93.2181805678874 45.1025095928767,-93.2428998061687 45.107840628582,-93.2703656264812 45.1102636620528)),((-93.1614522528019 44.8228341287806,-93.1545857977238 44.8004263636975,-93.142912824091 44.7862952548222,-93.1181935858097 44.7862952548222,-93.113387067255 44.8038368026036,-93.1305532049504 44.8228341287806,-93.1525258612004 44.8238081819465,-93.1614522528019 44.8228341287806)),((-93.1113271307316 44.8262432428597,-93.098967511591 44.798964685308,-93.1030873846379 44.7872699251423,-93.0570821356144 44.7858079134906,-93.0536489080754 44.7975029698894,-93.0728749822941 44.8169894641773,-93.1010274481144 44.8262432428597,-93.1113271307316 44.8262432428597)),((-93.0804280828801 44.8505881947089,-93.0996541570988 44.8389039015115,-93.0742482733097 44.8252692308376,-93.0509023260441 44.8048111766904,-93.0385427069035 44.7979902124766,-93.0124501776066 44.8111442071043,-93.0227498602238 44.8330608662038,-93.0447225164738 44.8466936936312,-93.0577687811222 44.847667343587,-93.0804280828801 44.8505881947089)),((-93.0323628973332 44.8758960332402,-93.0460958074894 44.8593498593636,-93.0097035955754 44.8306260932974,-93.0048970770207 44.8160152958088,-92.9794911932316 44.8179636160883,-92.9691915106144 44.8325739198513,-92.9856710028019 44.8530221241644,-93.0124501776066 44.8666502282601,-93.0275563787785 44.8754094489552,-93.0323628973332 44.8758960332402)),((-93.1092671942082 44.9318257827755,-93.1092671942082 44.913350667565,-93.0639485906926 44.9089741121794,-93.0289296697941 44.9186993382258,-93.0625752996769 44.9386309065112,-93.0962209295597 44.9357145236569,-93.1092671942082 44.9318257827755)),((-93.201277692255 45.0978344625867,-93.1882314276066 45.0735942232511,-93.1470326971379 45.0556498239475,-93.0872945379582 45.0532244731057,-93.1017140936222 45.0837763766187,-93.1580190252629 45.0891091613841,-93.1854848455754 45.0944414483026,-93.201277692255 45.0978344625867)),((-93.1051473211613 45.0410961759774,-93.1065206121769 45.0090651158539,-93.0818013738957 44.9959563346489,-93.0612020086613 44.9925572721235,-93.0406026434269 45.0110069024175,-93.0584554266301 45.0260535161933,-93.0852346014347 45.0357589105794,-93.1051473211613 45.0410961759774)),((-93.0309896063176 45.0027538548745,-93.0618886541691 44.9852728878266,-93.0618886541691 44.9653575140194,-93.0406026434269 44.9585555584105,-93.0248097967472 44.9969274583403,-93.0309896063176 45.0027538548745)),((-93.0543355535832 44.9517527963687,-93.0406026434269 44.9327979926825,-93.0131368231144 44.9206441859419,-92.9856710028019 44.9186993382258,-92.9726247381535 44.9352284454473,-93.0055837225285 44.9493230430602,-93.0364827703801 44.9536965249554,-93.0543355535832 44.9517527963687)),((-93.0090169500676 44.9925572721235,-93.0241231512394 44.9629283367343,-92.9849843572941 44.9493230430602,-92.9698781561222 44.9745874496074,-92.9994039129582 44.9838158998769,-93.0090169500676 44.9925572721235)),((-92.9568318914738 44.969243983724,-92.9739980291691 44.9420331659672,-92.9492787908879 44.9269644863736,-92.8991536688176 44.9293951860051,-92.9327992987004 44.9634141804202,-92.9568318914738 44.969243983724)),((-93.0172566961613 44.9080014990572,-93.0460958074894 44.9045972235245,-93.0179433416691 44.8885457804884,-93.011076886591 44.874436268042,-92.9801778387394 44.8681101909502,-92.9664449285832 44.8807616497971,-92.9808644842472 44.9065425485155,-93.0035237860051 44.9065425485155,-93.0172566961613 44.9080014990572)),((-92.9533986639347 44.8739496714137,-92.9767446112004 44.8569161973443,-92.9609517645207 44.8296521553342,-92.9238729070988 44.83500861047,-92.9327992987004 44.8554559507599,-92.9369191717472 44.872976465814,-92.9533986639347 44.8739496714137)),((-92.9616384100285 44.917240659237,-92.9609517645207 44.8914645579456,-92.9499654363957 44.8797885594011,-92.9142598699894 44.8797885594011,-92.9039601873722 44.8968152652513,-92.923186261591 44.9065425485155,-92.9279927801457 44.9201579801846,-92.9506520819035 44.9191855563265,-92.9616384100285 44.917240659237)),((-93.0783681463566 45.0798976750011,-93.0687551092472 45.0498288091202,-93.0296163153019 45.0697148304072,-93.0426625799504 45.0900787051265,-93.0763082098332 45.085715628681,-93.0783681463566 45.0798976750011)),((-93.0234365057316 45.0658351742387,-93.0646352362004 45.0464329435266,-93.0385427069035 45.0216855517831,-92.9733113836613 45.0226562393421,-93.0028371404972 45.04885858238,-93.0234365057316 45.0658351742387)),((-92.9685048651066 45.0114923387723,-93.0254964422551 45.0144048704973,-93.0007772039738 45.0027538548745,-92.9918508123722 44.9920716753049,-92.9506520819035 44.9891580079898,-92.9547719549504 45.00178282993,-92.9685048651066 45.0114923387723)),((-92.9273061346379 44.9954707666315,-92.9513387274113 44.9838158998769,-92.9293660711613 44.9716728935697,-92.8984670233097 44.9536965249554,-92.8785543035832 44.9663291561323,-92.8813008856144 44.9915860743719,-92.9019002508488 44.9925572721235,-92.9273061346379 44.9954707666315)),((-93.2143239569035 44.9799304176416,-93.230803449091 44.9697297739221,-93.223250348505 44.9614707809897,-93.1944112371769 44.9677865884432,-93.1875447820988 44.9813875043383,-93.1999044012394 44.9809018128872,-93.2143239569035 44.9799304176416)),((-93.4814290594425 44.9634141804202,-93.5027150701847 44.9551542781937,-93.4841756414738 44.9362005977521,-93.4676961492863 44.9468931868905,-93.4690694403019 44.960984920846,-93.4814290594425 44.9634141804202)),((-93.4690694403019 44.8384170045317,-93.5219411444035 44.8272172384244,-93.5123281072941 44.8165023820503,-93.4553365301457 44.8272172384244,-93.4690694403019 44.8384170045317)),((-93.3571462225285 44.8072470399061,-93.3392934393254 44.8067598754917,-93.3372335028019 44.7672858941672,-93.3482198309269 44.7458319232435,-93.3530263494816 44.7716732251375,-93.3571462225285 44.7950666952379,-93.3571462225285 44.8072470399061)),((-93.3715657781925 44.7677733918434,-93.4477834295597 44.7516837961696,-93.4367971014347 44.7219306266599,-93.4031514715519 44.7243699870448,-93.3681325506535 44.7429057646085,-93.3715657781925 44.7677733918434)),((-93.2685689520207 44.7697233414051,-93.3399800848332 44.7472949470181,-93.3262471746769 44.7253457023989,-93.2678823065129 44.7292483992446,-93.2568959783879 44.7521714255038,-93.2685689520207 44.7697233414051)),((-93.0051351447868 45.0938546571077,-92.9989553352165 45.0613681298429,-92.9625631233024 45.0414792052675,-92.9261709113884 45.0424495571738,-92.9316640754509 45.0744619372559,-92.9666829963493 45.0802804444373,-93.0051351447868 45.0938546571077)),((-92.9666829963493 45.0802804444373,-92.9151845832634 45.1195398708892,-92.9872823615837 45.1360110926119,-93.004448499279 45.1200243864748,-92.9907155891228 45.1093640931594,-92.9666829963493 45.0802804444373)),((-93.1527639289665 45.1389172850686,-93.1369710822868 45.1069410215004,-93.0854726692009 45.111302476427,-93.0792928596306 45.1331047520364,-93.1307912727165 45.1413389989696,-93.1527639289665 45.1389172850686)),((-93.0497671027946 45.1471506926626,-93.0566335578728 45.1146944887398,-93.0168081184196 45.1098486951479,-93.0092550178337 45.13262034754,-93.0312276740837 45.1452135272621,-93.0497671027946 45.1471506926626)),((-93.2701539347587 45.1437767995791,-93.2687806437431 45.1268233670418,-93.2495545695244 45.1176179643981,-93.2186555216728 45.1127724190471,-93.1884431193291 45.1059879643323,-93.1573724101005 45.0994450478306,-93.1647538493095 45.135058520922,-93.1795167277275 45.1413551892259,-93.1946229288994 45.151041013478,-93.2351350138603 45.1573359167028,-93.261914188665 45.1495882447574,-93.2701539347587 45.1437767995791)),((-93.2398292284712 44.7616361988078,-93.2391425829634 44.7411555786689,-93.2260963183149 44.7318881519918,-93.1883308153852 44.7328637405322,-93.1821510058149 44.7504215200876,-93.207556889604 44.7528596788662,-93.2398292284712 44.7616361988078)),((-93.1444978068291 44.762123744163,-93.1053590128837 44.7626112854039,-93.1005524943291 44.749446227776,-93.1335114787041 44.7426187207938,-93.1609772990166 44.749446227776,-93.1547974894462 44.7572481054665,-93.1451844523369 44.7587108402758,-93.1444978068291 44.762123744163)),((-93.0703400919853 44.7645614092245,-93.0717133830009 44.7411555786689,-93.0456208537041 44.7431064266069,-93.020214969915 44.737253685307,-93.0270814249931 44.7567605189682,-93.0703400919853 44.7645614092245)),((-93.00922864179 44.7825969338494,-93.0030488322197 44.7460325750852,-92.9357575724541 44.7460325750852,-92.9254578898369 44.776748191661,-92.9721497843681 44.8093960881968,-93.0071687052666 44.7918562306412,-92.9845094035087 44.7923435209078,-92.9694032023369 44.7972161972849,-92.9584168742119 44.7874704330958,-92.94331067304 44.7777230231691,-92.9439973185478 44.7655364464488,-92.9467439005791 44.7572481054665,-92.976269657415 44.7567605189682,-92.9900025675712 44.7582232661203,-92.9941224406181 44.7650489298938,-92.9989289591728 44.7708988570089,-93.0030488322197 44.7796726368132,-93.00922864179 44.7825969338494)),((-93.1026124308525 44.7782104327516,-93.0504273722587 44.7791852395737,-93.0428742716728 44.7903943351551,-93.0140351603447 44.8001396056222,-93.0009888956962 44.8069603157325,-92.9975556681572 44.8030628658427,-93.0209016154228 44.7908816377648,-93.00922864179 44.7869831016857,-92.9858826945244 44.788445083573,-92.9714631388603 44.7894197175927,-92.9604768107353 44.7786978382198,-92.9522370646416 44.7704113857114,-92.9597901652275 44.7655364464488,-92.9742097208916 44.7645614092245,-92.9893159220634 44.7665114672159,-92.9934357951103 44.7757733436956,-93.0023621867119 44.7830843022885,-93.0229615519462 44.7860084265225,-93.042187626165 44.7821095612958,-93.0112885783134 44.771386324192,-93.0181550333916 44.7606610957543,-93.0675935099541 44.7684614593782,-93.0792664835869 44.749446227776,-93.09711926679 44.7582232661203,-93.1197785685478 44.771386324192,-93.1094788859306 44.7801600299384,-93.1026124308525 44.7782104327516)),((-93.5873841593681 45.0733088261055,-93.5420655558525 45.0689444688467,-93.5489320109306 45.0519688002721,-93.5729646037041 45.0393550408579,-93.5901307413994 45.0306208088632,-93.5949372599541 45.0490581795821,-93.5949372599541 45.0670046475339,-93.5873841593681 45.0733088261055)),((-93.2358216593681 44.8464071656034,-93.2474946330009 44.8293655425518,-93.2268952677666 44.8249825962612,-93.2131623576103 44.8303394853582,-93.2056092570244 44.8381304353373,-93.2193421671806 44.8429992442035,-93.2358216593681 44.8464071656034)),((-93.1053590128837 45.1043346441694,-93.0689668009697 45.1082116864703,-93.0703400919853 45.1251706504319,-93.0621003458916 45.121779260853,-93.0572938273369 45.1028806854185,-93.0154084513603 45.1043346441694,-93.0147218058525 45.0907629224427,-93.0572938273369 45.0931866807595,-93.0964326212822 45.0888238417293,-93.1328248331962 45.0927019373251,-93.1280183146416 45.1028806854185,-93.1129121134697 45.1038499953669,-93.1053590128837 45.1043346441694)),((-93.1561707804619 45.1198412334335,-93.1493043253837 45.0912476823349,-93.1396912882744 45.0931866807595,-93.1376313517509 45.1014266896377,-93.1465577433525 45.1179031401832,-93.1561707804619 45.1198412334335)),((-93.1554841349541 45.1208102553721,-93.1712769816337 45.1561682929249,-93.1561707804619 45.1585892740101,-93.1568574259697 45.1484204622334,-93.1554841349541 45.1208102553721)),((-93.3802230909773 45.1631144731076,-93.3685501173445 45.1476196472913,-93.3355911329695 45.1398706544534,-93.3019455030867 45.1345426108878,-93.278599555821 45.1364801388771,-93.2813461378523 45.1456824978276,-93.253193672032 45.1592411616355,-93.2573135450788 45.177153019825,-93.3177383497663 45.1844129793471,-93.3472641066023 45.1761849552776,-93.3864029005476 45.1815091066264,-93.3836563185163 45.1703762223856,-93.3802230909773 45.1631144731076)),((-93.0994166802061 45.1379918960078,-93.0767573784483 45.1404136492128,-93.1062831352842 45.1689825690419,-93.1289424370421 45.1619627212363,-93.147481865753 45.1423509777174,-93.1207026909483 45.144530393597,-93.0994166802061 45.1379918960078)))';

UPDATE test SET geom2=geom1, geom3=geom1, geom4=geom1, geom5=geom1, geom6=geom1, geom7=geom1, geom8=geom1 WHERE geom2 IS NULL;

-- get table size
SELECT l.metric, l.nr AS "bytes/ct"
     , CASE WHEN is_size THEN pg_size_pretty(nr) END AS bytes_pretty
     , CASE WHEN is_size THEN nr / NULLIF(x.ct, 0) END AS bytes_per_row
FROM  (
   SELECT min(tableoid)        AS tbl      -- = 'public.tbl'::regclass::oid
        , count(*)             AS ct
        , sum(length(t::text)) AS txt_len  -- length in characters
   FROM   public.test t                     -- provide table name *once*
   ) x
 , LATERAL (
   VALUES
      (true , 'core_relation_size'               , pg_relation_size(tbl))
    , (true , 'visibility_map'                   , pg_relation_size(tbl, 'vm'))
    , (true , 'free_space_map'                   , pg_relation_size(tbl, 'fsm'))
    , (true , 'table_size_incl_toast'            , pg_table_size(tbl))
    , (true , 'indexes_size'                     , pg_indexes_size(tbl))
    , (true , 'total_size_incl_toast_and_indexes', pg_total_relation_size(tbl))
    , (true , 'live_rows_in_text_representation' , txt_len)
    , (false, '------------------------------'   , NULL)
    , (false, 'row_count'                        , ct)
    , (false, 'live_tuples'                      , pg_stat_get_live_tuples(tbl))
    , (false, 'dead_tuples'                      , pg_stat_get_dead_tuples(tbl))
   ) l(is_size, metric, nr);