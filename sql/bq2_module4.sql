/*
Objective:
  
      Select all non-PII variables from Module 4.
      
      For participants to be included:
       - Verification Status [821247024] MUST BE verified
       - Consent Withdrawn [747006172] MUST NOT be YES [353358909]

Note:
      This SQL query was generated by generate_bq2_queries.qmd. This code 
      lives in a GitHub repo (https://github.com/Analyticsphere/bq2). The 
      code was written by Jing Wu and edited by Jake Peters. The BQ2 tables 
      that are generated in this query are currated and maintained by Jake 
      Peters, Jing Wu and Rebecca Sansale. Other details will be documented here..
*/

SELECT m4.Connect_ID, 
	m4.D_100591237, 
	m4.D_101219440, 
	m4.D_101341673, 
	m4.D_101804763, 
	m4.D_103327434, 
	m4.D_103689435, 
	m4.D_104666483, 
	m4.D_105941645_D_105941645, 
	m4.D_105941645_D_132979567, 
	m4.D_107050954, 
	m4.D_107428524, 
	m4.D_107659596, 
	m4.D_108530997, 
	m4.D_109431893, 
	m4.D_109991481, 
	m4.D_110516520, 
	m4.D_110852652, 
	m4.D_111275683, 
	m4.D_113352592, 
	m4.D_113557709, 
	m4.D_113930886_D_101219440, 
	m4.D_113930886_D_127963610, 
	m4.D_113930886_D_164233037, 
	m4.D_113930886_D_306805272, 
	m4.D_113930886_D_418702418, 
	m4.D_113930886_D_819844467, 
	m4.D_113930886_D_882731998, 
	m4.D_115195973, 
	m4.D_116442173, 
	m4.D_116882225, 
	m4.D_117544868, 
	m4.D_117703279, 
	m4.D_118738120_D_118738120, 
	m4.D_118738120_D_890134757, 
	m4.D_119483547, 
	m4.D_120942783, 
	m4.D_120942783_D_120942783, 
	m4.D_121490150_D_195068098, 
	m4.D_121490150_D_202784871, 
	m4.D_121490150_D_255248624, 
	m4.D_121490150_D_303500597, 
	m4.D_121490150_D_469838242, 
	m4.D_121490150_D_831127170, 
	m4.D_121490150_D_945532934, 
	m4.D_122054737, 
	m4.D_123104885_D_123104885, 
	m4.D_123104885_D_462701424, 
	m4.D_123104885_D_707276214, 
	m4.D_124320444, 
	m4.D_127963610, 
	m4.D_128827522, 
	m4.D_129226572, 
	m4.D_130174162, 
	m4.D_130500844, 
	m4.D_132779701, 
	m4.D_132979567, 
	m4.D_133566757_D_199489170, 
	m4.D_133566757_D_248996395, 
	m4.D_133566757_D_300476868, 
	m4.D_133566757_D_384403974, 
	m4.D_133566757_D_525778327, 
	m4.D_133566757_D_585153023, 
	m4.D_133566757_D_605155921, 
	m4.D_134210521, 
	m4.D_134624195, 
	m4.D_135207939, 
	m4.D_135529881_D_154229258, 
	m4.D_135529881_D_173979298, 
	m4.D_135529881_D_185533250, 
	m4.D_135529881_D_265423096, 
	m4.D_135529881_D_330492115, 
	m4.D_135529881_D_769785846, 
	m4.D_135529881_D_891237683, 
	m4.D_135529881_D_980695076, 
	m4.D_136660779, 
	m4.D_137216656, 
	m4.D_138116092_D_138116092, 
	m4.D_138116092_D_386624051, 
	m4.D_138397553, 
	m4.D_139208251, 
	m4.D_141249692, 
	m4.D_142318726, 
	m4.D_143093472, 
	m4.D_143927994_D_113352592, 
	m4.D_143927994_D_119483547, 
	m4.D_143927994_D_194338739, 
	m4.D_143927994_D_387077376, 
	m4.D_143927994_D_733365745, 
	m4.D_143927994_D_768114466, 
	m4.D_143927994_D_938180781, 
	m4.D_146307133, 
	m4.D_147113671, 
	m4.D_148846635, 
	m4.D_149476435_D_149476435, 
	m4.D_149476435_D_708136662, 
	m4.D_149514187, 
	m4.D_150560299, 
	m4.D_154163153, 
	m4.D_154170916_D_154170916, 
	m4.D_154170916_D_175293001, 
	m4.D_154229258, 
	m4.D_155199731, 
	m4.D_158186064, 
	m4.D_158518077, 
	m4.D_158678876, 
	m4.D_158795242, 
	m4.D_160188014, 
	m4.D_161170041, 
	m4.D_164233037, 
	m4.D_165923738, 
	m4.D_167987013, 
	m4.D_168091937, 
	m4.D_168563469, 
	m4.D_169499951, 
	m4.D_170035952_D_170035952, 
	m4.D_170035952_D_674785575, 
	m4.D_171937884_D_264707783, 
	m4.D_171937884_D_282089547, 
	m4.D_171937884_D_612617245, 
	m4.D_171937884_D_666011940, 
	m4.D_171937884_D_674024553, 
	m4.D_171937884_D_886247195, 
	m4.D_171937884_D_981594981, 
	m4.D_172103427, 
	m4.D_172669345_D_142318726, 
	m4.D_172669345_D_172669345, 
	m4.D_172669345_D_520630754, 
	m4.D_173413183_D_173413183, 
	m4.D_173413183_D_354833686, 
	m4.D_173413183_D_416620941, 
	m4.D_173413183_D_661148931, 
	m4.D_173413183_D_915859406, 
	m4.D_173979298, 
	m4.D_174111872, 
	m4.D_175293001, 
	m4.D_177539753, 
	m4.d_180097038, 
	m4.D_181005197, 
	m4.D_181422361, 
	m4.D_182144476, 
	m4.D_183816760, 
	m4.D_184681822, 
	m4.D_185533250, 
	m4.D_186636914, 
	m4.D_190307069_D_190307069, 
	m4.D_190307069_D_988941261, 
	m4.D_190883115, 
	m4.D_191221569_D_191221569_D_178420302, 
	m4.D_191221569_D_191221569_D_858353109, 
	m4.D_191221569_D_858353109, 
	m4.D_191221569_D_948416598, 
	m4.D_192184336_D_117544868, 
	m4.D_192184336_D_192184336, 
	m4.D_192184336_D_868650023, 
	m4.D_192663941, 
	m4.D_193077021, 
	m4.D_194165243, 
	m4.D_194338739, 
	m4.D_194944818_D_101804763, 
	m4.D_194944818_D_194944818, 
	m4.D_194944818_D_502068619, 
	m4.D_194944818_D_540340377, 
	m4.D_194944818_D_787391994, 
	m4.D_195068098, 
	m4.D_195167143, 
	m4.D_195367894_D_195367894, 
	m4.D_195367894_D_300611347, 
	m4.D_195803565, 
	m4.D_197093427, 
	m4.D_198883577, 
	m4.D_199489170, 
	m4.D_200086909_D_154163153, 
	m4.D_200086909_D_200086909, 
	m4.D_200086909_D_351319555, 
	m4.D_201906316_D_201906316, 
	m4.D_201906316_D_476697171, 
	m4.D_201906316_D_605344820, 
	m4.D_201906316_D_627992821, 
	m4.D_201906316_D_814644814, 
	m4.D_201989756, 
	m4.D_202104231, 
	m4.D_202784871, 
	m4.D_203943120, 
	m4.D_204186397, 
	m4.D_205492848_D_205492848, 
	m4.D_205492848_D_481599610, 
	m4.D_205492848_D_756458580, 
	m4.D_207263450, 
	m4.D_209510432, 
	m4.D_211269389, 
	m4.D_211740798_D_211740798, 
	m4.D_211740798_D_325825550, 
	m4.D_212343294_D_212343294, 
	m4.D_212343294_D_348049244, 
	m4.D_212343294_D_445867902, 
	m4.D_212343294_D_600319581, 
	m4.D_212343294_D_684217044, 
	m4.D_214274185, 
	m4.D_216096388_D_181005197, 
	m4.D_216096388_D_216096388, 
	m4.D_216096388_D_450433102, 
	m4.D_216096388_D_589689090, 
	m4.D_216096388_D_855530921, 
	m4.D_216954796, 
	m4.D_218334768, 
	m4.D_219317801_D_214274185, 
	m4.D_219317801_D_291458877, 
	m4.D_219317801_D_453417964, 
	m4.D_219317801_D_533003859, 
	m4.D_219317801_D_550646850, 
	m4.D_219317801_D_576149634, 
	m4.D_219317801_D_949549557, 
	m4.D_219317801_D_990162153, 
	m4.D_219893040, 
	m4.D_224209278_D_744987950, 
	m4.D_224209278_D_770959058, 
	m4.D_224594497, 
	m4.D_225725599, 
	m4.D_230376384, 
	m4.D_230528407, 
	m4.D_234037089, 
	m4.D_234731641_D_234731641_D_678602069, 
	m4.D_234731641_D_943813942, 
	m4.D_237204853, 
	m4.D_239279719_D_143093472, 
	m4.D_239279719_D_390941579, 
	m4.D_239279719_D_711881258, 
	m4.D_239279719_D_737885885, 
	m4.D_239279719_D_746619983, 
	m4.D_239279719_D_911964974, 
	m4.D_242761203, 
	m4.D_243695994, 
	m4.D_244488084, 
	m4.D_245044197, 
	m4.D_248168118, 
	m4.D_248996395, 
	m4.D_249657148, 
	m4.D_250486386_D_224594497, 
	m4.D_250486386_D_250486386, 
	m4.D_251048648_D_158678876, 
	m4.D_251048648_D_197093427, 
	m4.D_251048648_D_251048648_D_158678876, 
	m4.D_251048648_D_251048648_D_197093427, 
	m4.D_251048648_D_251048648_D_368973683, 
	m4.D_251048648_D_251048648_D_450075248, 
	m4.D_251048648_D_251048648_D_471142791, 
	m4.D_251048648_D_251048648_D_572643998, 
	m4.D_251048648_D_251048648_D_779421821, 
	m4.D_251048648_D_251048648_D_830201925, 
	m4.D_251048648_D_251048648_D_925663113, 
	m4.D_251048648_D_368973683, 
	m4.D_251048648_D_450075248, 
	m4.D_251048648_D_471142791, 
	m4.D_251048648_D_572643998, 
	m4.D_251048648_D_779421821, 
	m4.D_251048648_D_830201925, 
	m4.D_251048648_D_925663113, 
	m4.D_253017624, 
	m4.D_255248624, 
	m4.D_255474241_D_218334768, 
	m4.D_255474241_D_255474241, 
	m4.D_255474241_D_394294282, 
	m4.D_255474241_D_803526907, 
	m4.D_255474241_D_941168091, 
	m4.D_255860829, 
	m4.D_256790385, 
	m4.D_258501440, 
	m4.D_258544530, 
	m4.D_261025083, 
	m4.D_263588196_D_101341673, 
	m4.D_263588196_D_237204853, 
	m4.D_263588196_D_263588196, 
	m4.D_263588196_D_583500714, 
	m4.D_263588196_D_742105146, 
	m4.D_264644252, 
	m4.D_264707783, 
	m4.D_264797252_D_264797252, 
	m4.D_264797252_D_451394598, 
	m4.D_264797252_D_847327251, 
	m4.D_264797252_D_890792569, 
	m4.D_264797252_D_984908796, 
	m4.D_265423096, 
	m4.D_267027102, 
	m4.D_268612977_D_268612977, 
	m4.D_268612977_D_421779583, 
	m4.D_268612977_D_467126157, 
	m4.D_268612977_D_587765197, 
	m4.D_268612977_D_599753334, 
	m4.D_268661616, 
	m4.D_270011675, 
	m4.D_270024672_D_665593888, 
	m4.D_270587543, 
	m4.D_274189667_D_554901696, 
	m4.D_274189667_D_565515774, 
	m4.D_274189667_D_742177990, 
	m4.D_274189667_D_819429013, 
	m4.D_274189667_D_838725845, 
	m4.D_274189667_D_843508307, 
	m4.D_274189667_D_848348504, 
	m4.D_274257975_D_274257975, 
	m4.D_274257975_D_800859736, 
	m4.D_274396191, 
	m4.D_274780951_D_274780951, 
	m4.D_274780951_D_673667112, 
	m4.D_274940131, 
	m4.D_275244758, 
	m4.D_275978701, 
	m4.D_276249147, 
	m4.D_277312204, 
	m4.D_277348878, 
	m4.D_277745320, 
	m4.D_278164536, 
	m4.D_279026426, 
	m4.D_279093430_D_109991481, 
	m4.D_279093430_D_134210521, 
	m4.D_279093430_D_440796912, 
	m4.D_279093430_D_476938134, 
	m4.D_279093430_D_494380686, 
	m4.D_279093430_D_561635035, 
	m4.D_279093430_D_715370929, 
	m4.D_280877371, 
	m4.D_282089547, 
	m4.D_282326355, 
	m4.D_283900560, 
	m4.D_284547539, 
	m4.D_285545471_D_285545471, 
	m4.D_285545471_D_936382173, 
	m4.D_285968511, 
	m4.D_286382158, 
	m4.D_286781627, 
	m4.D_288109261_D_288109261_D_196962759, 
	m4.D_288109261_D_314198277, 
	m4.D_289302451, 
	m4.D_290370013, 
	m4.D_290969423, 
	m4.D_291458877, 
	m4.D_291959537, 
	m4.D_293954660_D_230376384, 
	m4.D_293954660_D_293954660, 
	m4.D_293954660_D_526462982, 
	m4.D_293954660_D_860984191, 
	m4.D_293954660_D_892150843, 
	m4.D_294308065, 
	m4.D_294634899, 
	m4.D_295693777, 
	m4.D_296254034, 
	m4.D_296694684_D_296694684, 
	m4.D_296694684_D_562313563, 
	m4.D_298170847, 
	m4.D_298296694_D_298296694, 
	m4.D_298296694_D_325919807, 
	m4.D_298296694_D_915527263, 
	m4.D_300476868, 
	m4.D_300611347, 
	m4.D_300933270, 
	m4.D_302947409, 
	m4.D_303500597, 
	m4.D_304326324, 
	m4.D_304685106_D_183816760, 
	m4.D_304685106_D_304685106, 
	m4.D_306092529, 
	m4.D_306805272, 
	m4.D_309461541, 
	m4.D_311891586_D_311891586_D_116442173, 
	m4.D_311891586_D_311891586_D_172103427, 
	m4.D_311891586_D_311891586_D_296254034, 
	m4.D_311891586_D_311891586_D_639735881, 
	m4.D_311891586_D_311891586_D_683306241, 
	m4.D_311891586_D_311891586_D_766970054, 
	m4.D_311891586_D_311891586_D_794959813, 
	m4.D_311891586_D_311891586_D_807973203, 
	m4.D_311891586_D_311891586_D_886203785, 
	m4.D_311891586_D_886203785, 
	m4.D_313586037, 
	m4.D_314198277, 
	m4.D_318621931, 
	m4.D_320166033_D_275244758, 
	m4.D_320166033_D_452103273, 
	m4.D_320166033_D_557852952, 
	m4.D_320166033_D_570311888, 
	m4.D_320166033_D_688216428, 
	m4.D_320166033_D_843674851, 
	m4.D_320166033_D_970217879, 
	m4.D_321932473_D_321932473, 
	m4.D_321932473_D_641655118, 
	m4.D_322665488_D_322665488, 
	m4.D_322665488_D_734547775, 
	m4.D_325825550, 
	m4.D_325919807, 
	m4.D_330492115, 
	m4.D_333362587, 
	m4.D_333852852, 
	m4.D_335218615, 
	m4.D_335435992, 
	m4.D_337088272, 
	m4.D_337574535_D_337574535, 
	m4.D_337574535_D_495342185, 
	m4.D_340877879, 
	m4.D_342677547, 
	m4.D_343406242, 
	m4.D_345355061_D_107428524, 
	m4.D_345355061_D_198883577, 
	m4.D_345355061_D_345355061_D_107428524, 
	m4.D_345355061_D_345355061_D_467242967, 
	m4.D_345355061_D_345355061_D_634680635, 
	m4.D_345355061_D_345355061_D_756061540, 
	m4.D_345355061_D_345355061_D_790657437, 
	m4.D_345355061_D_467242967, 
	m4.D_345355061_D_634680635, 
	m4.D_345355061_D_645051966, 
	m4.D_345355061_D_656067463, 
	m4.D_345355061_D_756061540, 
	m4.D_345355061_D_790657437, 
	m4.D_345355061_D_804918983, 
	m4.D_348049244, 
	m4.D_348817644, 
	m4.D_350394531_D_132779701, 
	m4.D_350394531_D_168091937, 
	m4.D_350394531_D_350394531, 
	m4.D_350394531_D_652022112, 
	m4.D_350394531_D_730666903, 
	m4.D_351069956, 
	m4.D_351319555, 
	m4.D_351559015, 
	m4.D_351559021, 
	m4.D_354833686, 
	m4.D_355179190_D_115195973, 
	m4.D_355179190_D_355179190, 
	m4.D_355179190_D_706861475, 
	m4.D_364303962_D_130500844, 
	m4.D_364303962_D_364303962, 
	m4.D_367684056, 
	m4.D_368486703, 
	m4.D_368973683, 
	m4.D_370121390_D_370121390, 
	m4.D_370121390_D_580185896, 
	m4.D_370121390_D_599607007, 
	m4.D_371588177, 
	m4.D_374639590, 
	m4.D_376408004_D_234037089, 
	m4.D_376408004_D_304326324, 
	m4.D_376408004_D_416862112, 
	m4.D_376408004_D_477319994, 
	m4.D_376408004_D_556576930, 
	m4.D_376408004_D_671149035, 
	m4.D_376408004_D_812433386, 
	m4.D_379754686, 
	m4.D_380579855_D_596301593, 
	m4.D_380579855_D_824151724, 
	m4.D_380621340_D_380621340_D_678602069, 
	m4.D_380621340_D_943813942, 
	m4.D_383535171_D_398622449, 
	m4.D_383535171_D_521925072, 
	m4.D_383535171_D_666445636, 
	m4.D_383535171_D_687407917, 
	m4.D_383535171_D_888514303, 
	m4.D_383535171_D_905002640, 
	m4.D_383535171_D_932828568, 
	m4.D_384403974, 
	m4.D_385583361, 
	m4.D_386487941_D_386487941, 
	m4.D_386487941_D_527558834, 
	m4.D_386624051, 
	m4.D_387077376, 
	m4.D_388427546, 
	m4.D_389478638, 
	m4.D_390463636, 
	m4.D_390941579, 
	m4.D_393682471_D_165923738, 
	m4.D_393682471_D_393682471, 
	m4.D_394294282, 
	m4.D_398249766, 
	m4.D_398622449, 
	m4.D_398762737_D_398762737, 
	m4.D_398762737_D_474541595, 
	m4.D_398762737_D_553357862, 
	m4.D_403679963, 
	m4.D_404118353_D_314198277, 
	m4.D_404118353_D_404118353_D_196962759, 
	m4.D_404141282, 
	m4.D_404697804_D_404697804_D_137216656, 
	m4.D_404697804_D_404697804_D_244488084, 
	m4.D_404697804_D_404697804_D_581991828, 
	m4.D_404697804_D_404697804_D_631088397, 
	m4.D_404697804_D_404697804_D_660927579, 
	m4.D_404697804_D_404697804_D_669359763, 
	m4.D_404697804_D_404697804_D_846844103, 
	m4.D_404697804_D_404697804_D_940452831, 
	m4.D_404697804_D_404697804_D_950972496, 
	m4.D_404697804_D_631088397, 
	m4.D_404863614_D_207263450, 
	m4.D_404863614_D_211269389, 
	m4.D_404863614_D_255860829, 
	m4.D_404863614_D_279026426, 
	m4.D_404863614_D_404863614_D_207263450, 
	m4.D_404863614_D_404863614_D_211269389, 
	m4.D_404863614_D_404863614_D_255860829, 
	m4.D_404863614_D_404863614_D_279026426, 
	m4.D_404863614_D_404863614_D_638833327, 
	m4.D_404863614_D_404863614_D_691579493, 
	m4.D_404863614_D_404863614_D_736981982, 
	m4.D_404863614_D_404863614_D_782113721, 
	m4.D_404863614_D_404863614_D_932195315, 
	m4.D_404863614_D_638833327, 
	m4.D_404863614_D_691579493, 
	m4.D_404863614_D_736981982, 
	m4.D_404863614_D_782113721, 
	m4.D_404863614_D_932195315, 
	m4.D_411791779, 
	m4.D_412195193_D_412195193_D_232063618, 
	m4.D_412195193_D_451310566, 
	m4.D_416620941, 
	m4.D_416862112, 
	m4.D_418702418, 
	m4.D_419151253, 
	m4.D_419659205, 
	m4.D_421779583, 
	m4.D_423713680, 
	m4.D_424272506, 
	m4.D_424347938, 
	m4.D_425315696_D_425315696_D_678602069, 
	m4.D_425315696_D_943813942, 
	m4.D_426743354_D_426743354, 
	m4.D_426743354_D_490504789, 
	m4.D_428044531, 
	m4.D_429200007, 
	m4.D_431441193, 
	m4.D_431488717, 
	m4.D_437395872_D_314198277, 
	m4.D_437395872_D_437395872_D_196962759, 
	m4.D_438475588, 
	m4.D_439447560, 
	m4.D_440093675_D_242761203, 
	m4.D_440093675_D_453004768, 
	m4.D_440093675_D_511991969, 
	m4.D_440093675_D_546570171, 
	m4.D_440093675_D_569993305, 
	m4.D_440093675_D_587434250, 
	m4.D_440093675_D_593010802, 
	m4.D_440093675_D_593010802_sm, 
	m4.D_440093675_D_662584384, 
	m4.D_440597740_D_440597740, 
	m4.D_440597740_D_573998459, 
	m4.D_440597740_D_760197341, 
	m4.D_440796912, 
	m4.D_441314504, 
	m4.D_441498892, 
	m4.D_443596662, 
	m4.D_443679537_D_443679537, 
	m4.D_443679537_D_494271326, 
	m4.D_443679537_D_952170182, 
	m4.D_444145120_D_195845897, 
	m4.D_444145120_D_288498031, 
	m4.D_444145120_D_444145120, 
	m4.D_444145120_D_924583345, 
	m4.D_444145120_D_936129960, 
	m4.D_445867902, 
	m4.D_449752653, 
	m4.D_450075248, 
	m4.D_450154625_D_450154625_D_678602069, 
	m4.D_450154625_D_943813942, 
	m4.D_450433102, 
	m4.D_450630128, 
	m4.D_451310566, 
	m4.D_451394598, 
	m4.D_452103273, 
	m4.D_452942800, 
	m4.D_453004768, 
	m4.D_453417964, 
	m4.D_453691095, 
	m4.D_455968200, 
	m4.D_462009573, 
	m4.D_462701424, 
	m4.D_463064782, 
	m4.D_463952618, 
	m4.D_467126157, 
	m4.D_467242967, 
	m4.D_467947502, 
	m4.D_469679476, 
	m4.D_469838242, 
	m4.D_469914719_D_204186397, 
	m4.D_469914719_D_469914719, 
	m4.D_469914719_D_952124199, 
	m4.D_471142791, 
	m4.D_475144270, 
	m4.D_476697171, 
	m4.D_476938134, 
	m4.D_477319994, 
	m4.D_478513687, 
	m4.D_480127323, 
	m4.D_481599610, 
	m4.D_484550481, 
	m4.D_486511102, 
	m4.D_487043303, 
	m4.D_489019597, 
	m4.D_489075623, 
	m4.D_490504789, 
	m4.D_491337167, 
	m4.D_493984171, 
	m4.D_494271326, 
	m4.D_494357137, 
	m4.D_494380686, 
	m4.D_494698740, 
	m4.D_494698740_D_285968511, 
	m4.D_494698740_D_494698740, 
	m4.D_494968690, 
	m4.D_495330716, 
	m4.D_495342185, 
	m4.D_496801729, 
	m4.D_497260033, 
	m4.D_500100435, 
	m4.D_502068619, 
	m4.D_504158362, 
	m4.D_505863509_D_441314504, 
	m4.D_505863509_D_505863509, 
	m4.D_508187475_D_209510432, 
	m4.D_508187475_D_508187475, 
	m4.D_508587741_D_103689435, 
	m4.D_508587741_D_508587741, 
	m4.D_508587741_D_659457234, 
	m4.D_508587741_D_686611963, 
	m4.D_508587741_D_900950849, 
	m4.D_509121242, 
	m4.D_509526051_D_351069956, 
	m4.D_509526051_D_509526051, 
	m4.D_509526051_D_542763783, 
	m4.D_509553290_D_295693777, 
	m4.D_509553290_D_298170847, 
	m4.D_509553290_D_367684056, 
	m4.D_509553290_D_389478638, 
	m4.D_509553290_D_646099557, 
	m4.D_509553290_D_886284650, 
	m4.D_509553290_D_949478044, 
	m4.D_510435329, 
	m4.D_511991969, 
	m4.D_512143997, 
	m4.D_513925041, 
	m4.D_516936572, 
	m4.D_520264332, 
	m4.D_520630754, 
	m4.D_521925072, 
	m4.D_524305502, 
	m4.D_525375987, 
	m4.D_525778327, 
	m4.D_526462982, 
	m4.D_527558834, 
	m4.D_529608184_D_529608184_D_678602069, 
	m4.D_529608184_D_943813942, 
	m4.D_531671855, 
	m4.D_532944666, 
	m4.D_533003859, 
	m4.D_535386940, 
	m4.D_536516743, 
	m4.D_537011756_D_202104231, 
	m4.D_537011756_D_290370013, 
	m4.D_537011756_D_351559021, 
	m4.D_537011756_D_453691095, 
	m4.D_537011756_D_709374950, 
	m4.D_537011756_D_853931010, 
	m4.D_537011756_D_988266183, 
	m4.D_539057792_D_194165243, 
	m4.D_539057792_D_438475588, 
	m4.D_539057792_D_489019597, 
	m4.D_539057792_D_516936572, 
	m4.D_539057792_D_673034401, 
	m4.D_539057792_D_744290061, 
	m4.D_539057792_D_893639464, 
	m4.D_539909957_D_539909957, 
	m4.D_539909957_D_994632550, 
	m4.D_540340377, 
	m4.D_541565665_D_286382158, 
	m4.D_541565665_D_541565665, 
	m4.D_542086156_D_542086156, 
	m4.D_542086156_D_997984387, 
	m4.D_542763783, 
	m4.D_544692849, 
	m4.D_546570171, 
	m4.D_548773158, 
	m4.D_548863580, 
	m4.D_550646850, 
	m4.D_552298163_D_552298163_D_232063618, 
	m4.D_552410034, 
	m4.D_554901696, 
	m4.D_555767576, 
	m4.D_556576930, 
	m4.D_557852952, 
	m4.D_558981691_D_398249766, 
	m4.D_558981691_D_558981691, 
	m4.D_558981691_D_571926996, 
	m4.D_558981691_D_645589113, 
	m4.D_558981691_D_701056236, 
	m4.D_559488982, 
	m4.D_561635035, 
	m4.D_562190570, 
	m4.D_562313563, 
	m4.D_563832508, 
	m4.D_564557026, 
	m4.D_564684946_D_148846635, 
	m4.D_564684946_D_192663941, 
	m4.D_564684946_D_245044197, 
	m4.D_564684946_D_261025083, 
	m4.D_564684946_D_564684946, 
	m4.D_565515774, 
	m4.D_569375463, 
	m4.D_569993305, 
	m4.D_570311888, 
	m4.D_571926996, 
	m4.D_572209771, 
	m4.D_572643998, 
	m4.D_573998459, 
	m4.D_574985342_D_111275683, 
	m4.D_574985342_D_129226572, 
	m4.D_574985342_D_283900560, 
	m4.D_574985342_D_368486703, 
	m4.D_574985342_D_467947502, 
	m4.D_574985342_D_536516743, 
	m4.D_574985342_D_985267931, 
	m4.D_575883949, 
	m4.D_576149634, 
	m4.D_576956950, 
	m4.D_580185896, 
	m4.D_581231591_D_581231591, 
	m4.D_581231591_D_732107715, 
	m4.D_581231591_D_803219073, 
	m4.D_581991828, 
	m4.D_583500714, 
	m4.D_584350267, 
	m4.D_585153023, 
	m4.D_585360350, 
	m4.D_585473282, 
	m4.D_587434250, 
	m4.D_587765197, 
	m4.D_588699608, 
	m4.D_589689090, 
	m4.D_590222838, 
	m4.D_593010802, 
	m4.D_593146348, 
	m4.D_596301593, 
	m4.D_596318751_D_101341673, 
	m4.D_596318751_D_182144476, 
	m4.D_596318751_D_237204853, 
	m4.D_596318751_D_253017624, 
	m4.D_596318751_D_263588196, 
	m4.D_596318751_D_294634899, 
	m4.D_596318751_D_404141282, 
	m4.D_596318751_D_411791779, 
	m4.D_596318751_D_493984171, 
	m4.D_596318751_D_583500714, 
	m4.D_596318751_D_742105146, 
	m4.D_596318751_D_774707280, 
	m4.D_596318751_D_959804472, 
	m4.D_596751155, 
	m4.D_598478268_D_598478268, 
	m4.D_598478268_D_670605457, 
	m4.D_599607007, 
	m4.D_599753334, 
	m4.D_600319581, 
	m4.D_603853574, 
	m4.D_603945794_D_603945794, 
	m4.D_603945794_D_940219092, 
	m4.D_605155921, 
	m4.D_605344820, 
	m4.D_612617245, 
	m4.D_613251957_D_314198277, 
	m4.D_613251957_D_489075623, 
	m4.D_613251957_D_613251957_D_196962759, 
	m4.D_622968789, 
	m4.D_623452399, 
	m4.D_624226136, 
	m4.D_627992821, 
	m4.D_631088397, 
	m4.D_632533534_D_128827522, 
	m4.D_632533534_D_284547539, 
	m4.D_632533534_D_286781627, 
	m4.D_632533534_D_439447560, 
	m4.D_632533534_D_733929451, 
	m4.D_632533534_D_746533238, 
	m4.D_632533534_D_802585033, 
	m4.D_633590687, 
	m4.D_634680635, 
	m4.D_635467479_D_635467479_D_107659596, 
	m4.D_635467479_D_635467479_D_158795242, 
	m4.D_635467479_D_635467479_D_177539753, 
	m4.D_635467479_D_635467479_D_248168118, 
	m4.D_635467479_D_635467479_D_443596662, 
	m4.D_635467479_D_635467479_D_509121242, 
	m4.D_635467479_D_635467479_D_575883949, 
	m4.D_635467479_D_635467479_D_635467479, 
	m4.D_635467479_D_635467479_D_892894242, 
	m4.D_635467479_D_635467479_D_902077989, 
	m4.D_635467479_D_902077989, 
	m4.D_636020848_D_636020848, 
	m4.D_636020848_D_996493158, 
	m4.D_636708825, 
	m4.D_638833327, 
	m4.D_639735881, 
	m4.D_641655118, 
	m4.D_645051966, 
	m4.D_645150792, 
	m4.D_645589113, 
	m4.D_646099557, 
	m4.D_647612167, 
	m4.D_648495207, 
	m4.D_649864362, 
	m4.D_651233069, 
	m4.D_652022112, 
	m4.D_653181757, 
	m4.D_656067463, 
	m4.D_657986901_D_149514187, 
	m4.D_657986901_D_657986901, 
	m4.D_657986901_D_677739650, 
	m4.D_657986901_D_726739712, 
	m4.D_657986901_D_845446624, 
	m4.D_659122266, 
	m4.D_659457234, 
	m4.D_659744749, 
	m4.D_659799855, 
	m4.D_660217075, 
	m4.D_660927579, 
	m4.D_661148931, 
	m4.D_662584384, 
	m4.D_663265240, 
	m4.D_663869343, 
	m4.D_664561394_D_664561394_D_678602069, 
	m4.D_664561394_D_943813942, 
	m4.D_665593888_D_665593888, 
	m4.D_665593888_D_669305975, 
	m4.D_665978055_D_513925041, 
	m4.D_665978055_D_665978055, 
	m4.D_666011940, 
	m4.D_666445636, 
	m4.D_668887646_D_147113671, 
	m4.D_668887646_D_225725599, 
	m4.D_668887646_D_668887646, 
	m4.D_668887646_D_977086216, 
	m4.D_668887646_D_997041632, 
	m4.D_669305975, 
	m4.D_669359763, 
	m4.D_670316988_D_258544530, 
	m4.D_670316988_D_306092529, 
	m4.D_670316988_D_670316988, 
	m4.D_670605457, 
	m4.D_671149035, 
	m4.D_673034401, 
	m4.D_673667112, 
	m4.D_674024553, 
	m4.D_674785575, 
	m4.D_675539614, 
	m4.D_677739650, 
	m4.D_677922318, 
	m4.D_679430807_D_462009573, 
	m4.D_679430807_D_480127323, 
	m4.D_679430807_D_572209771, 
	m4.D_679430807_D_686494153, 
	m4.D_679430807_D_702555988, 
	m4.D_679430807_D_786749210, 
	m4.D_679430807_D_897920852, 
	m4.D_679430807_D_935326619, 
	m4.D_680046149_D_130174162, 
	m4.D_680046149_D_455968200, 
	m4.D_680046149_D_563832508, 
	m4.D_680046149_D_728704613, 
	m4.D_680046149_D_756548442, 
	m4.D_680046149_D_817839081, 
	m4.D_680046149_D_930511603, 
	m4.D_682457230_D_314198277, 
	m4.D_682457230_D_682457230_D_196962759, 
	m4.D_683306241, 
	m4.D_684217044, 
	m4.D_684542266, 
	m4.D_686494153, 
	m4.D_686611963, 
	m4.D_686647703, 
	m4.D_687407917, 
	m4.D_688216428, 
	m4.D_690973619, 
	m4.D_691579493, 
	m4.D_694113343, 
	m4.D_696017690, 
	m4.D_696874548, 
	m4.D_696972918, 
	m4.D_697751634, 
	m4.D_701056236, 
	m4.D_701803756_D_451310566, 
	m4.D_701803756_D_701803756_D_232063618, 
	m4.D_702555988, 
	m4.D_703944664, 
	m4.D_705673076, 
	m4.D_706592013, 
	m4.D_706861475, 
	m4.D_707276214, 
	m4.D_708136662, 
	m4.D_709374950, 
	m4.D_709755471_D_451310566, 
	m4.D_709755471_D_709755471_D_232063618, 
	m4.D_710443293_D_451310566, 
	m4.D_710443293_D_710443293_D_232063618, 
	m4.D_710449106, 
	m4.D_711881258, 
	m4.D_714365367_D_158518077, 
	m4.D_714365367_D_714365367, 
	m4.D_715370929, 
	m4.D_716117817_D_135529881_D_154229258, 
	m4.D_716117817_D_135529881_D_173979298, 
	m4.D_716117817_D_135529881_D_185533250, 
	m4.D_716117817_D_135529881_D_265423096, 
	m4.D_716117817_D_135529881_D_330492115, 
	m4.D_716117817_D_135529881_D_769785846, 
	m4.D_716117817_D_135529881_D_891237683, 
	m4.D_716117817_D_135529881_D_980695076, 
	m4.D_716343828, 
	m4.D_719647239_D_719647239, 
	m4.D_719647239_D_863092608, 
	m4.D_720221117, 
	m4.D_723108194, 
	m4.D_725408440, 
	m4.D_725583683, 
	m4.D_726654963_D_276249147, 
	m4.D_726654963_D_726654963, 
	m4.D_726739712, 
	m4.D_727126965, 
	m4.D_728155643_D_728155643_D_678602069, 
	m4.D_728155643_D_943813942, 
	m4.D_728256340_D_727126965, 
	m4.D_728256340_D_728256340, 
	m4.D_728704613, 
	m4.D_730666903, 
	m4.D_732107715, 
	m4.D_733317111_D_584350267, 
	m4.D_733317111_D_733317111, 
	m4.D_733317111_D_840147245, 
	m4.D_733365745, 
	m4.D_733619119, 
	m4.D_733929451, 
	m4.D_734345879, 
	m4.D_734547775, 
	m4.D_734596352, 
	m4.D_734790700, 
	m4.D_735022625, 
	m4.D_736086261, 
	m4.D_736981982, 
	m4.D_737885885, 
	m4.D_740535024_D_104666483, 
	m4.D_740535024_D_740535024, 
	m4.D_742105146, 
	m4.D_742177990, 
	m4.D_744039577, 
	m4.D_744290061, 
	m4.D_744987950, 
	m4.D_746533238, 
	m4.D_746604821_D_423713680, 
	m4.D_746604821_D_555767576, 
	m4.D_746604821_D_746604821, 
	m4.D_746619983, 
	m4.D_750000285_D_451310566, 
	m4.D_750000285_D_750000285_D_232063618, 
	m4.D_752015272_D_139208251, 
	m4.D_752015272_D_752015272_D_139208251, 
	m4.D_752015272_D_752015272_D_178420302, 
	m4.D_752015272_D_943813942, 
	m4.D_752101258_D_300933270, 
	m4.D_752101258_D_544692849, 
	m4.D_752101258_D_648495207, 
	m4.D_752101258_D_649864362, 
	m4.D_752101258_D_723108194, 
	m4.D_752101258_D_752101258, 
	m4.D_756061540, 
	m4.D_756458580, 
	m4.D_756548442, 
	m4.D_757983656_D_158186064, 
	m4.D_757983656_D_274940131, 
	m4.D_757983656_D_313586037, 
	m4.D_757983656_D_757983656, 
	m4.D_757983656_D_983038259, 
	m4.D_760197341, 
	m4.D_763354979_D_424347938, 
	m4.D_763354979_D_677922318, 
	m4.D_763354979_D_763354979, 
	m4.D_766970054, 
	m4.D_768114466, 
	m4.D_768802173, 
	m4.D_769785846, 
	m4.D_770959058, 
	m4.D_771505558_D_184681822, 
	m4.D_771505558_D_771505558, 
	m4.D_772382520, 
	m4.D_773680071, 
	m4.D_774087638, 
	m4.D_774707280, 
	m4.D_775038507, 
	m4.D_776406200, 
	m4.D_776580384, 
	m4.D_778495585_D_314198277, 
	m4.D_778495585_D_778495585_D_196962759, 
	m4.D_778711683_D_117703279, 
	m4.D_778711683_D_160188014, 
	m4.D_778711683_D_278164536, 
	m4.D_778711683_D_596751155, 
	m4.D_778711683_D_624226136, 
	m4.D_778711683_D_734790700, 
	m4.D_778711683_D_807127029, 
	m4.D_778721228, 
	m4.D_779421821, 
	m4.D_780298998, 
	m4.D_782113721, 
	m4.D_783797179, 
	m4.D_785588454, 
	m4.D_786244297, 
	m4.D_786253125_D_100591237, 
	m4.D_786253125_D_146307133, 
	m4.D_786253125_D_289302451, 
	m4.D_786253125_D_419151253, 
	m4.D_786253125_D_552410034, 
	m4.D_786253125_D_659799855, 
	m4.D_786253125_D_772382520, 
	m4.D_786253125_D_823402922, 
	m4.D_787064287_D_429200007, 
	m4.D_787064287_D_787064287, 
	m4.D_787064287_D_862255177, 
	m4.D_787064287_D_891573875, 
	m4.D_787064287_D_972332937, 
	m4.D_787391994, 
	m4.D_789637860, 
	m4.D_790359238, 
	m4.D_790657437, 
	m4.D_794959813, 
	m4.D_795253129, 
	m4.D_799451743, 
	m4.D_800194290, 
	m4.D_800859736, 
	m4.D_802585033, 
	m4.D_803219073, 
	m4.D_803526907, 
	m4.D_804504024_D_105043152, 
	m4.D_804504024_D_543135391, 
	m4.D_804504024_D_804504024, 
	m4.D_804918983, 
	m4.D_805353966, 
	m4.D_806530984_D_314198277, 
	m4.D_806530984_D_806530984_D_196962759, 
	m4.D_807127029, 
	m4.D_807973203, 
	m4.D_809387606, 
	m4.D_809682067, 
	m4.D_809728747_D_256790385, 
	m4.D_809728747_D_351559015, 
	m4.D_809728747_D_390463636, 
	m4.D_809728747_D_703944664, 
	m4.D_809728747_D_903490632, 
	m4.D_809728747_D_906119853, 
	m4.D_809728747_D_915222355, 
	m4.D_812161236_D_812161236_D_678602069, 
	m4.D_812161236_D_943813942, 
	m4.D_812433386, 
	m4.D_814137809, 
	m4.D_814644814, 
	m4.D_817839081, 
	m4.D_819429013, 
	m4.D_819844467, 
	m4.D_822005593, 
	m4.D_823402922, 
	m4.D_823509509_D_823509509, 
	m4.D_823509509_D_971016509, 
	m4.D_824151724, 
	m4.D_825109070_D_744039577, 
	m4.D_825109070_D_825109070, 
	m4.D_828086036_D_335435992, 
	m4.D_828086036_D_337088272, 
	m4.D_828086036_D_544692849, 
	m4.D_828086036_D_585360350, 
	m4.D_828086036_D_588699608, 
	m4.D_828086036_D_645150792, 
	m4.D_828086036_D_875706715, 
	m4.D_828766803_D_309461541, 
	m4.D_828766803_D_450630128, 
	m4.D_828766803_D_622968789, 
	m4.D_828766803_D_696874548, 
	m4.D_828766803_D_780298998, 
	m4.D_828766803_D_789637860, 
	m4.D_828766803_D_795253129, 
	m4.D_828801156, 
	m4.D_829751791_D_314198277, 
	m4.D_829751791_D_829751791_D_196962759, 
	m4.D_830201925, 
	m4.D_831127170, 
	m4.D_831438612_D_831438612_D_431441193, 
	m4.D_831438612_D_831438612_D_525375987, 
	m4.D_831438612_D_831438612_D_531671855, 
	m4.D_831438612_D_831438612_D_834822910, 
	m4.D_831438612_D_831438612_D_863839736, 
	m4.D_831438612_D_831438612_D_995797773, 
	m4.D_831438612_D_834822910, 
	m4.D_834822910, 
	m4.D_838725845, 
	m4.D_839233937, 
	m4.D_839454121, 
	m4.D_840147245, 
	m4.D_842657297, 
	m4.D_843508307, 
	m4.D_843674851, 
	m4.D_843680322, 
	m4.D_845446624, 
	m4.D_845483079, 
	m4.D_845811202_D_510435329, 
	m4.D_845811202_D_520264332, 
	m4.D_845811202_D_845811202, 
	m4.D_846844103, 
	m4.D_847327251, 
	m4.D_848348504, 
	m4.D_849066624_D_849066624_D_678602069, 
	m4.D_849066624_D_943813942, 
	m4.D_849811593, 
	m4.D_849979952_D_451310566, 
	m4.D_849979952_D_849979952_D_232063618, 
	m4.D_851731394_D_110516520, 
	m4.D_851731394_D_851731394, 
	m4.D_851731394_D_993557817, 
	m4.D_853931010, 
	m4.D_855530921, 
	m4.D_855583262, 
	m4.D_857265979, 
	m4.D_858353109, 
	m4.D_860269869_D_451310566, 
	m4.D_860269869_D_860269869_D_232063618, 
	m4.D_860984191, 
	m4.D_861097935, 
	m4.D_862052821, 
	m4.D_862255177, 
	m4.D_863092608, 
	m4.D_863839736, 
	m4.D_864213677_D_280877371, 
	m4.D_864213677_D_463064782, 
	m4.D_864213677_D_864213677, 
	m4.D_864213677_D_865310914, 
	m4.D_864213677_D_900377581, 
	m4.D_865310914, 
	m4.D_867096017_D_340877879, 
	m4.D_867109611, 
	m4.D_867247249, 
	m4.D_868650023, 
	m4.D_869829679, 
	m4.D_872527709, 
	m4.D_875706715, 
	m4.D_876443676, 
	m4.D_876521406, 
	m4.D_878144094_D_878144094_D_232063618, 
	m4.D_878688378_D_585473282, 
	m4.D_878688378_D_706592013, 
	m4.D_878688378_D_814137809, 
	m4.D_878688378_D_876521406, 
	m4.D_878688378_D_878688378, 
	m4.D_879180101_D_267027102, 
	m4.D_879180101_D_486511102, 
	m4.D_879180101_D_734345879, 
	m4.D_879180101_D_879180101, 
	m4.D_879180101_D_931999203, 
	m4.D_882731998, 
	m4.D_884494489, 
	m4.D_886203785, 
	m4.D_886247195, 
	m4.D_886284650, 
	m4.D_888514303, 
	m4.D_890134757, 
	m4.D_890661849_D_174111872, 
	m4.D_890661849_D_735022625, 
	m4.D_890661849_D_890661849, 
	m4.D_890792569, 
	m4.D_891237683, 
	m4.D_891573875, 
	m4.D_892150843, 
	m4.D_892894242, 
	m4.D_893639464, 
	m4.D_897920852, 
	m4.D_900377581, 
	m4.D_900950849, 
	m4.D_902077989, 
	m4.D_902193418_D_633590687, 
	m4.D_902193418_D_857265979, 
	m4.D_902193418_D_902193418, 
	m4.D_903490632, 
	m4.D_903896611, 
	m4.D_905002640, 
	m4.D_906119853, 
	m4.D_911964974, 
	m4.D_914325712_D_314198277, 
	m4.D_914325712_D_914325712_D_196962759, 
	m4.D_914696832_D_161170041, 
	m4.D_914696832_D_190883115, 
	m4.D_914696832_D_249657148, 
	m4.D_914696832_D_403679963, 
	m4.D_914696832_D_636708825, 
	m4.D_914696832_D_660217075, 
	m4.D_914696832_D_884494489, 
	m4.D_914696832_D_970996351, 
	m4.D_915222355, 
	m4.D_915527263, 
	m4.D_915859406, 
	m4.D_917021073, 
	m4.D_920576363_D_500100435, 
	m4.D_920576363_D_725583683, 
	m4.D_920576363_D_917021073, 
	m4.D_920576363_D_920576363, 
	m4.D_920576363_D_970000442, 
	m4.D_921090200, 
	m4.D_921998144_D_686647703, 
	m4.D_921998144_D_872527709, 
	m4.D_921998144_D_921998144, 
	m4.D_925663113, 
	m4.D_925747671, 
	m4.D_927932321_D_270011675, 
	m4.D_927932321_D_927932321, 
	m4.D_928112898_D_451310566, 
	m4.D_928112898_D_928112898_D_232063618, 
	m4.D_930511603, 
	m4.D_931999203, 
	m4.D_932195315, 
	m4.D_932828568, 
	m4.D_933017499_D_933017499, 
	m4.D_933017499_D_980497607, 
	m4.D_934184033_D_675539614, 
	m4.D_934184033_D_934184033, 
	m4.D_935326619, 
	m4.D_935378391_D_419659205, 
	m4.D_935378391_D_497260033, 
	m4.D_935378391_D_653181757, 
	m4.D_935378391_D_716343828, 
	m4.D_935378391_D_733619119, 
	m4.D_935378391_D_785588454, 
	m4.D_935378391_D_843680322, 
	m4.D_936382173, 
	m4.D_936393993, 
	m4.D_938180781, 
	m4.D_940219092, 
	m4.D_940452831, 
	m4.D_940513931, 
	m4.D_940631293, 
	m4.D_941168091, 
	m4.D_943813942, 
	m4.D_944517297_D_258501440, 
	m4.D_944517297_D_944517297, 
	m4.D_945532934, 
	m4.D_945794974, 
	m4.D_948416598, 
	m4.D_948492967, 
	m4.D_949478044, 
	m4.D_949549557, 
	m4.D_950972496, 
	m4.D_952124199, 
	m4.D_952170182, 
	m4.D_953722451_D_103327434, 
	m4.D_953722451_D_953722451, 
	m4.D_957717014_D_957717014, 
	m4.D_957717014_D_984805254, 
	m4.D_958419506_D_799451743, 
	m4.D_958419506_D_958419506, 
	m4.D_959371875, 
	m4.D_959488634, 
	m4.D_959804472, 
	m4.D_961178879_D_193077021, 
	m4.D_961178879_D_961178879, 
	m4.D_961572487_D_216954796, 
	m4.D_961572487_D_469679476, 
	m4.D_961572487_D_961572487, 
	m4.D_962868433, 
	m4.D_963795928, 
	m4.D_964437163_D_943813942, 
	m4.D_964437163_D_964437163_D_678602069, 
	m4.D_964853797_D_388427546, 
	m4.D_964853797_D_487043303, 
	m4.D_964853797_D_548773158, 
	m4.D_964853797_D_659122266, 
	m4.D_964853797_D_964853797, 
	m4.D_968388901_D_109431893, 
	m4.D_968388901_D_116882225, 
	m4.D_968388901_D_169499951, 
	m4.D_968388901_D_343406242, 
	m4.D_968388901_D_478513687, 
	m4.D_968388901_D_494357137, 
	m4.D_968388901_D_786244297, 
	m4.D_968388901_D_861097935, 
	m4.D_970000442, 
	m4.D_970217879, 
	m4.D_970996351, 
	m4.D_971016509, 
	m4.D_972332937, 
	m4.D_975198123_D_314198277, 
	m4.D_975198123_D_975198123_D_196962759, 
	m4.D_976597527, 
	m4.D_977086216, 
	m4.D_980007418, 
	m4.D_980497607, 
	m4.D_980695076, 
	m4.D_981594981, 
	m4.D_982650994, 
	m4.D_983038259, 
	m4.D_983592172, 
	m4.D_984805254, 
	m4.D_984908796, 
	m4.D_985267931, 
	m4.D_986989731_D_431488717, 
	m4.D_986989731_D_986989731, 
	m4.D_988266183, 
	m4.D_988941261, 
	m4.D_990162153, 
	m4.D_992180692_D_108530997, 
	m4.D_992180692_D_110852652, 
	m4.D_992180692_D_371588177, 
	m4.D_992180692_D_452053599, 
	m4.D_992180692_D_855583262, 
	m4.D_992180692_D_867109611, 
	m4.D_992180692_D_903896611, 
	m4.D_992180692_D_962868433, 
	m4.D_993557817, 
	m4.D_994632550, 
	m4.D_995620555, 
	m4.D_995797773, 
	m4.D_996493158, 
	m4.D_997041632, 
	m4.D_997984387, 
	m4.D_999694720_D_943813942, 
	m4.D_999694720_D_999694720_D_678602069, 
	m4.sha, 
	m4.uid, 
	m4.date) 
 FROM `nih-nci-dceg-connect-prod-6d04.FlatConnect.module4_v1_JP` b
INNER JOIN `nih-nci-dceg-connect-prod-6d04.FlatConnect.participants_JP` p 
   ON cast(b.Connect_ID as int64) = cast(p.Connect_ID as int64)
WHERE p.d_821247024 = '197316935' 
  AND p.d_747006172 != '353358909'
