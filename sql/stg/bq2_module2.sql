/*
Objective:
  
      Merge Module 2 v1/v2. If participants have completed both versions, only 
      the responses to v2 will be included.
      
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

WITH m2_dup AS
(SELECT 
  Connect_ID, 
	D_100937200, 
	D_101144925_D_434243220, 
	D_101144925_D_970604592, 
	D_111082535, 
	D_111235606, 
	D_111271067, 
	D_112024853, 
	D_113681507, 
	D_118237712, 
	D_128705365_D_199039940, 
	D_128705365_D_491484323, 
	D_128705365_D_588637585, 
	D_128705365_D_607323377, 
	D_128705365_D_986476579, 
	D_129924389_D_434243220, 
	D_129924389_D_970604592, 
	D_133297530_1_1, 
	D_133297530_10_10, 
	D_133297530_11_11, 
	D_133297530_12_12, 
	D_133297530_2_2, 
	D_133297530_3_3, 
	D_133297530_4_4, 
	D_133297530_5_5, 
	D_133297530_6_6, 
	D_133297530_7_7, 
	D_133297530_8_8, 
	D_133297530_9_9, 
	D_138836502, 
	D_139348254_D_434243220, 
	D_139348254_D_970604592, 
	D_139673389, 
	D_141251197, 
	D_147792229, 
	D_149884127_D_152773041, 
	D_149884127_D_249341444, 
	D_149884127_D_690018400, 
	D_149884127_D_917302906, 
	D_152138929_D_191656389, 
	D_152138929_D_243596698, 
	D_152138929_D_283652434, 
	D_152138929_D_323106499, 
	D_152138929_D_558504672, 
	D_152138929_D_727773491, 
	D_152138929_D_769901710, 
	D_152138929_D_853261835, 
	D_163057677, 
	D_164595895, 
	D_167207966, 
	D_167966775, 
	D_167997205, 
	D_168431681, 
	D_172234651_D_765748316, 
	D_172234651_D_785412329, 
	D_177526169, 
	D_184448791, 
	D_184692605, 
	D_187772368_D_152773041, 
	D_187772368_D_249341444, 
	D_187772368_D_690018400, 
	D_187772368_D_917302906, 
	D_190721176, 
	D_195662769, 
	D_198719822, 
	D_199254974_D_120485458, 
	D_199254974_D_863007380, 
	D_204421360_D_383015037, 
	D_204421360_D_500744195, 
	D_204421360_D_535003378, 
	D_204421360_D_797221287, 
	D_214750556, 
	D_214870856, 
	D_215455305_D_434243220, 
	D_215455305_D_970604592, 
	D_219538082, 
	D_220105997, 
	D_222110888_D_152773041, 
	D_222110888_D_249341444, 
	D_222110888_D_690018400, 
	D_222110888_D_917302906, 
	D_224681201, 
	D_225047594, 
	D_234177873_D_765748316, 
	D_234177873_D_785412329, 
	D_248599913_D_765748316, 
	D_248599913_D_785412329, 
	D_255761998, 
	D_262305264_D_152773041, 
	D_262305264_D_249341444, 
	D_262305264_D_690018400, 
	D_262305264_D_917302906, 
	D_263114971, 
	D_263785082_D_263785082_D_535003378, 
	D_263785082_D_263785082_D_807835037, 
	D_263785082_D_263785082_D_837393880, 
	D_263785082_D_263785082_D_944874693, 
	D_263785082_D_542108835, 
	D_265428345, 
	D_266752903_D_765748316, 
	D_266752903_D_785412329, 
	D_267122668, 
	D_267261558, 
	D_268372217_D_434243220, 
	D_268372217_D_970604592, 
	D_270254670, 
	D_272119228, 
	D_273218182_D_101310722, 
	D_273218182_D_273218182, 
	D_275143071_D_191656389, 
	D_275143071_D_243596698, 
	D_275143071_D_283652434, 
	D_275143071_D_323106499, 
	D_275143071_D_558504672, 
	D_275143071_D_727773491, 
	D_275143071_D_769901710, 
	D_275143071_D_853261835, 
	D_278277373_1_1, 
	D_278277373_10_10, 
	D_278277373_11_11, 
	D_278277373_12_12, 
	D_278277373_2_2, 
	D_278277373_3_3, 
	D_278277373_4_4, 
	D_278277373_5_5, 
	D_278277373_6_6, 
	D_278277373_7_7, 
	D_278277373_8_8, 
	D_278277373_9_9, 
	D_281494550_1_1, 
	D_281494550_2_2, 
	D_281494550_3_3, 
	D_281494550_4_4, 
	D_281494550_5_5, 
	D_281494550_6_6, 
	D_281494550_7_7, 
	D_290126991, 
	D_291707744, 
	D_292658699, 
	D_295472931, 
	D_297084062, 
	D_301052397, 
	D_305195766_D_434243220, 
	D_305195766_D_970604592, 
	D_305292465_D_765748316, 
	D_305292465_D_785412329, 
	D_305312165, 
	D_307736999, 
	D_309710463, 
	D_322479862, 
	D_344573484, 
	D_352531133, 
	D_354980163, 
	D_356969766, 
	D_358011592_D_434243220, 
	D_358011592_D_970604592, 
	D_358259099_D_707805344, 
	D_358259099_D_850393641, 
	D_368595692, 
	D_370798456, 
	D_371176229, 
	D_371748514_D_152773041, 
	D_371748514_D_249341444, 
	D_371748514_D_690018400, 
	D_371748514_D_917302906, 
	D_376720409, 
	D_378572291, 
	D_378921620, 
	D_388804810_D_765748316, 
	D_388804810_D_785412329, 
	D_391951010_1_1, 
	D_391951010_10_10, 
	D_391951010_11_11, 
	D_391951010_12_12, 
	D_391951010_13_13, 
	D_391951010_14_14, 
	D_391951010_15_15, 
	D_391951010_16_16, 
	D_391951010_2_2, 
	D_391951010_3_3, 
	D_391951010_4_4, 
	D_391951010_5_5, 
	D_391951010_6_6, 
	D_391951010_7_7, 
	D_391951010_8_8, 
	D_391951010_9_9, 
	D_392629868, 
	D_392658845_D_239572239, 
	D_392658845_D_589522790, 
	D_392658845_D_652561589, 
	D_392658845_D_699101535, 
	D_392874924, 
	D_399078599, 
	D_399982309_D_194424439, 
	D_399982309_D_221645137, 
	D_399982309_D_422188606, 
	D_399982309_D_469512398, 
	D_399982309_D_535003378, 
	D_399982309_D_555555502, 
	D_399982309_D_800410166, 
	D_399982309_D_974248369, 
	D_404596261, 
	D_405571048, 
	D_406137786, 
	D_406846149, 
	D_409324592_D_152773041, 
	D_409324592_D_249341444, 
	D_409324592_D_690018400, 
	D_409324592_D_917302906, 
	D_411788467, 
	D_414005872, 
	D_414663452, 
	D_416865817_D_765748316, 
	D_416865817_D_785412329, 
	D_421859821_D_151006826, 
	D_421859821_D_220238240, 
	D_421859821_D_257137378, 
	D_421859821_D_453071098, 
	D_421859821_D_513065503, 
	D_421859821_D_781115321, 
	D_421859821_D_965290070, 
	D_422260069, 
	D_424047361, 
	D_424183977, 
	D_424807655_D_707805344, 
	D_424807655_D_850393641, 
	D_429531329, 
	D_438682764_D_101310722, 
	D_438682764_D_438682764, 
	D_439072744, 
	D_442059084_D_152773041, 
	D_442059084_D_249341444, 
	D_442059084_D_690018400, 
	D_442059084_D_917302906, 
	D_445571225, 
	D_450131058, 
	D_452984435, 
	D_453820991, 
	D_465017353, 
	D_465635548, 
	D_466346054, 
	D_466727144, 
	D_471018082, 
	D_479628567_D_370923702, 
	D_479628567_D_495144424, 
	D_479628567_D_531811052, 
	D_479628567_D_535003378, 
	D_479628567_D_728393970, 
	D_484006644, 
	D_486574018_1_1, 
	D_486574018_10_10, 
	D_486574018_11_11, 
	D_486574018_12_12, 
	D_486574018_2_2, 
	D_486574018_3_3, 
	D_486574018_4_4, 
	D_486574018_5_5, 
	D_486574018_6_6, 
	D_486574018_7_7, 
	D_486574018_8_8, 
	D_486574018_9_9, 
	D_491549803, 
	D_492822047, 
	D_496539718_D_496539718_D_648960871, 
	D_496539718_D_969451837, 
	D_497904005, 
	D_509383583_D_191656389, 
	D_509383583_D_243596698, 
	D_509383583_D_283652434, 
	D_509383583_D_323106499, 
	D_509383583_D_558504672, 
	D_509383583_D_727773491, 
	D_509383583_D_769901710, 
	D_509383583_D_853261835, 
	D_517976064_D_181769837, 
	D_517976064_D_182827107, 
	D_517976064_D_203192394, 
	D_517976064_D_261267696, 
	D_517976064_D_345916806, 
	D_517976064_D_371531887, 
	D_517976064_D_420058896, 
	D_517976064_D_423631576, 
	D_517976064_D_535003378, 
	D_517976064_D_619501806, 
	D_517976064_D_734860227, 
	D_517976064_D_760484278, 
	D_517976064_D_868685663, 
	D_517976064_D_904954920, 
	D_517976064_D_926584500, 
	D_517976064_D_936042582, 
	D_522949496, 
	D_532767229_D_707805344, 
	D_532767229_D_850393641, 
	D_534920374, 
	D_535533643_D_434243220, 
	D_535533643_D_970604592, 
	D_538349354, 
	D_543780863_D_684201296, 
	D_547633480_D_120016082, 
	D_547633480_D_386152189, 
	D_547633480_D_503760666, 
	D_547633480_D_535003378, 
	D_547633480_D_801183888, 
	D_547633480_D_825584471, 
	D_548355426_D_548355426_D_201434907, 
	D_548355426_D_548355426_D_202355614, 
	D_548355426_D_548355426_D_342735868, 
	D_548355426_D_548355426_D_498799217, 
	D_548355426_D_548355426_D_570171052, 
	D_548355426_D_548355426_D_807835037, 
	D_548355426_D_548355426_D_833755477, 
	D_548355426_D_548355426_D_863286658, 
	D_548355426_D_548355426_D_990599372, 
	D_548355426_D_833755477, 
	D_550092533_D_101310722, 
	D_550092533_D_550092533, 
	D_556129044_D_434243220, 
	D_556129044_D_970604592, 
	D_556235252, 
	D_557526470, 
	D_560711355, 
	D_560845692, 
	D_563663099, 
	D_564185028, 
	D_564242877_D_152773041, 
	D_564242877_D_249341444, 
	D_564242877_D_690018400, 
	D_564242877_D_917302906, 
	D_564374538, 
	D_570187182, 
	D_571361258, 
	D_575646308, 
	D_578176688_D_434243220, 
	D_578176688_D_970604592, 
	D_580367946, 
	D_583012139, 
	D_583111732, 
	D_590329439, 
	D_591723682, 
	D_596961796_D_101310722, 
	D_596961796_D_596961796, 
	D_597869478_D_434243220, 
	D_597869478_D_597869478_num, 
	D_597869478_D_970604592, 
	D_603209609, 
	D_604086099_D_434243220, 
	D_604086099_D_970604592, 
	D_612068433, 
	D_614123836_D_480724806, 
	D_614123836_D_535003378, 
	D_614123836_D_819373917, 
	D_614145455_D_614145455, 
	D_614145455_D_672810476, 
	D_614446276_D_765748316, 
	D_614446276_D_785412329, 
	D_615905904, 
	D_615979584, 
	D_618427836_D_101310722, 
	D_618427836_D_618427836, 
	D_618482103_D_152773041, 
	D_618482103_D_249341444, 
	D_618482103_D_690018400, 
	D_618482103_D_917302906, 
	D_621744463, 
	D_621878019, 
	D_623759247_D_434243220, 
	D_623759247_D_970604592, 
	D_628137243, 
	D_629010195_D_629010195_D_417201414, 
	D_629010195_D_629010195_D_535003378, 
	D_629010195_D_629010195_D_576852249, 
	D_629010195_D_629010195_D_807835037, 
	D_629010195_D_629010195_D_959572576, 
	D_629010195_D_654253676, 
	D_630231395_D_191656389, 
	D_630231395_D_243596698, 
	D_630231395_D_283652434, 
	D_630231395_D_323106499, 
	D_630231395_D_558504672, 
	D_630231395_D_727773491, 
	D_630231395_D_769901710, 
	D_630231395_D_853261835, 
	D_631303960, 
	D_635874413_D_152773041, 
	D_635874413_D_249341444, 
	D_635874413_D_690018400, 
	D_635874413_D_917302906, 
	D_636757313, 
	D_643361372_D_449861632, 
	D_643361372_D_535003378, 
	D_643361372_D_920460744, 
	D_643361372_D_933374659, 
	D_643807999_D_191656389, 
	D_643807999_D_243596698, 
	D_643807999_D_283652434, 
	D_643807999_D_323106499, 
	D_643807999_D_558504672, 
	D_643807999_D_727773491, 
	D_643807999_D_769901710, 
	D_643807999_D_853261835, 
	D_644018981, 
	D_646042915_D_101310722, 
	D_646042915_D_646042915, 
	D_648678282, 
	D_649352910_D_263483736, 
	D_649352910_D_396649512, 
	D_649352910_D_654385712, 
	D_649352910_D_806746224, 
	D_650405110, 
	D_653906464_D_707805344, 
	D_653906464_D_850393641, 
	D_654271781_D_434243220, 
	D_654271781_D_970604592, 
	D_655266993_D_191656389, 
	D_655266993_D_243596698, 
	D_655266993_D_283652434, 
	D_655266993_D_323106499, 
	D_655266993_D_558504672, 
	D_655266993_D_727773491, 
	D_655266993_D_769901710, 
	D_655266993_D_853261835, 
	D_658018390, 
	D_668834883_D_640559281, 
	D_668834883_D_668834883_D_246843973, 
	D_668834883_D_668834883_D_515434780, 
	D_668834883_D_668834883_D_535003378, 
	D_668834883_D_668834883_D_640559281, 
	D_668834883_D_668834883_D_674148137, 
	D_668834883_D_668834883_D_807835037, 
	D_668834883_D_668834883_D_854184254, 
	D_674976924, 
	D_680730257, 
	D_689956879, 
	D_694817520_D_765748316, 
	D_694817520_D_785412329, 
	D_695206943_D_434243220, 
	D_695206943_D_970604592, 
	D_697661603_D_765748316, 
	D_697661603_D_785412329, 
	D_698673038, 
	D_708921303, 
	D_711365027_D_707805344, 
	D_711365027_D_850393641, 
	D_725713485, 
	D_728437398, 
	D_731790154_D_765748316, 
	D_731790154_D_785412329, 
	D_733547268_D_115422925, 
	D_733547268_D_151161693, 
	D_733547268_D_980120253, 
	D_733547268_D_980196073, 
	D_733547268_D_993029890, 
	D_733861762, 
	D_734836192, 
	D_737490587, 
	D_745223146_D_765748316, 
	D_745223146_D_785412329, 
	D_745775718_D_434243220, 
	D_745775718_D_970604592, 
	D_747629521, 
	D_753416375_D_101310722, 
	D_753416375_D_753416375, 
	D_753610471_D_101310722, 
	D_753610471_D_753610471, 
	D_756521698, 
	D_760801131, 
	D_761822652, 
	D_767785846, 
	D_768302347, 
	D_771526486, 
	D_771528780_1_1, 
	D_771528780_10_10, 
	D_771528780_11_11, 
	D_771528780_12_12, 
	D_771528780_2_2, 
	D_771528780_3_3, 
	D_771528780_4_4, 
	D_771528780_5_5, 
	D_771528780_6_6, 
	D_771528780_7_7, 
	D_771528780_8_8, 
	D_771528780_9_9, 
	D_774514900, 
	D_774992239, 
	D_775324618, 
	D_779052408_1_1, 
	D_779052408_10_10, 
	D_779052408_11_11, 
	D_779052408_12_12, 
	D_779052408_2_2, 
	D_779052408_3_3, 
	D_779052408_4_4, 
	D_779052408_5_5, 
	D_779052408_6_6, 
	D_779052408_7_7, 
	D_779052408_8_8, 
	D_779052408_9_9, 
	D_779165920, 
	D_787591805_D_152773041, 
	D_787591805_D_249341444, 
	D_787591805_D_690018400, 
	D_787591805_D_917302906, 
	D_791830593, 
	D_792792066, 
	D_797076693, 
	D_798182168, 
	D_798889867, 
	D_799338907_D_101310722, 
	D_799338907_D_799338907, 
	D_799382711, 
	D_799903478, 
	D_800943768_D_235516216, 
	D_800943768_D_800943768_D_535003378, 
	D_800943768_D_800943768_D_687050279, 
	D_800943768_D_800943768_D_807835037, 
	D_801749224, 
	D_803968511_D_101310722, 
	D_803968511_D_803968511, 
	D_806253825, 
	D_807214881, 
	D_809735528, 
	D_814141708, 
	D_815229596_D_152773041, 
	D_815229596_D_249341444, 
	D_815229596_D_690018400, 
	D_815229596_D_917302906, 
	D_819957363, 
	D_820694957, 
	D_823541843, 
	D_823919522, 
	D_824165133, 
	D_824251330_D_434243220, 
	D_824251330_D_970604592, 
	D_824287808, 
	D_825189914_D_101310722, 
	D_825189914_D_825189914, 
	D_825227968_D_707805344, 
	D_825227968_D_850393641, 
	D_829749579_D_152773041, 
	D_829749579_D_249341444, 
	D_829749579_D_690018400, 
	D_829749579_D_917302906, 
	D_831643763, 
	D_837412550_D_765748316, 
	D_837412550_D_785412329, 
	D_845164425_D_152773041, 
	D_845164425_D_249341444, 
	D_845164425_D_690018400, 
	D_845164425_D_917302906, 
	D_846227588, 
	D_846978339, 
	D_849399881, 
	D_849945160, 
	D_850202336_D_526448646, 
	D_850202336_D_850202336, 
	D_850536692, 
	D_854078473, 
	D_856627601, 
	D_858525957_D_152773041, 
	D_858525957_D_249341444, 
	D_858525957_D_690018400, 
	D_858525957_D_917302906, 
	D_861824298, 
	D_861838892_D_765748316, 
	D_861838892_D_785412329, 
	D_865200503, 
	D_872509317, 
	D_874262904, 
	D_875135634, 
	D_876683805, 
	D_876846761, 
	D_880331901, 
	D_881200765_D_762700622, 
	D_881200765_D_881200765_D_100181644, 
	D_881200765_D_881200765_D_256131117, 
	D_881200765_D_881200765_D_304927036, 
	D_881200765_D_881200765_D_372219003, 
	D_881200765_D_881200765_D_454641975, 
	D_881200765_D_881200765_D_459188493, 
	D_881200765_D_881200765_D_532607252, 
	D_881200765_D_881200765_D_535003378, 
	D_881200765_D_881200765_D_619799524, 
	D_881200765_D_881200765_D_642004888, 
	D_881200765_D_881200765_D_663814928, 
	D_881200765_D_881200765_D_743731422, 
	D_881200765_D_881200765_D_762700622, 
	D_881200765_D_881200765_D_807835037, 
	D_887435355_D_191656389, 
	D_887435355_D_243596698, 
	D_887435355_D_283652434, 
	D_887435355_D_323106499, 
	D_887435355_D_558504672, 
	D_887435355_D_727773491, 
	D_887435355_D_769901710, 
	D_887435355_D_853261835, 
	D_888313306, 
	D_889053435, 
	D_893965588_D_101310722, 
	D_893965588_D_893965588, 
	D_894363067, 
	D_894610280_D_152773041, 
	D_894610280_D_249341444, 
	D_894610280_D_690018400, 
	D_894610280_D_917302906, 
	D_895837106_D_152773041, 
	D_895837106_D_249341444, 
	D_895837106_D_690018400, 
	D_895837106_D_917302906, 
	D_899455852_D_434243220, 
	D_899455852_D_970604592, 
	D_900299856_D_152773041, 
	D_900299856_D_249341444, 
	D_900299856_D_690018400, 
	D_900299856_D_917302906, 
	D_901154649, 
	D_901498441_D_101310722, 
	D_901498441_D_901498441, 
	D_901660173, 
	D_902999015, 
	D_904844824, 
	D_906459952, 
	D_910856756, 
	D_912818075, 
	D_921220809, 
	D_922903688, 
	D_936366310, 
	D_938969985, 
	D_939897560, 
	D_940733450, 
	D_943996164, 
	D_944699052, 
	D_946211808, 
	D_946710366_D_434243220, 
	D_946710366_D_970604592, 
	D_946849196_D_108104748, 
	D_946849196_D_158214723, 
	D_946849196_D_658810736, 
	D_946849196_D_717308596, 
	D_946849196_D_729863969, 
	D_946849196_D_746788766, 
	D_949663397, 
	D_953510929, 
	D_958009220, 
	D_963284259, 
	D_968816827_1_1, 
	D_968816827_10_10, 
	D_968816827_11_11, 
	D_968816827_12_12, 
	D_968816827_13_13, 
	D_968816827_14_14, 
	D_968816827_15_15, 
	D_968816827_16_16, 
	D_968816827_2_2, 
	D_968816827_3_3, 
	D_968816827_4_4, 
	D_968816827_5_5, 
	D_968816827_6_6, 
	D_968816827_7_7, 
	D_968816827_8_8, 
	D_968816827_9_9, 
	D_972593606, 
	D_976052812, 
	D_981441822_D_179705366, 
	D_981441822_D_186488870, 
	D_981441822_D_354550061, 
	D_981441822_D_403155173, 
	D_981441822_D_576621769, 
	D_981441822_D_760686611, 
	D_981441822_D_922388461, 
	D_981441822_D_955609858, 
	D_981441822_D_988508028, 
	D_981509686, 
	D_982448213, 
	D_984514646, 
	D_984901301_D_434243220, 
	D_984901301_D_970604592, 
	D_991330361, 
	D_991427384, 
	D_991622246_D_101310722, 
	D_991622246_D_991622246, 
	D_991873978, 
	D_992022740, 
	D_994899398, 
	D_996243083, 
	sha, 
	uid, 
	date, 
  2 as version 
FROM 
  `nih-nci-dceg-connect-stg-5519.FlatConnect.module2_v2_JP`
UNION ALL
SELECT
  Connect_ID, 
	D_100937200, 
	D_101144925_D_434243220, 
	D_101144925_D_970604592, 
	D_111082535, 
	D_111235606, 
	D_111271067, 
	D_112024853, 
	D_113681507, 
	D_118237712, 
	D_128705365_D_199039940, 
	D_128705365_D_491484323, 
	D_128705365_D_588637585, 
	D_128705365_D_607323377, 
	D_128705365_D_986476579, 
	D_129924389_D_434243220, 
	D_129924389_D_970604592, 
	D_133297530_1_1, 
	D_133297530_10_10, 
	D_133297530_11_11, 
	D_133297530_12_12, 
	D_133297530_2_2, 
	D_133297530_3_3, 
	D_133297530_4_4, 
	D_133297530_5_5, 
	D_133297530_6_6, 
	D_133297530_7_7, 
	D_133297530_8_8, 
	D_133297530_9_9, 
	D_138836502, 
	D_139348254_D_434243220, 
	D_139348254_D_970604592, 
	D_139673389, 
	D_141251197, 
	D_147792229, 
	D_149884127_D_152773041, 
	D_149884127_D_249341444, 
	D_149884127_D_690018400, 
	D_149884127_D_917302906, 
	D_152138929_D_191656389, 
	D_152138929_D_243596698, 
	D_152138929_D_283652434, 
	D_152138929_D_323106499, 
	D_152138929_D_558504672, 
	D_152138929_D_727773491, 
	D_152138929_D_769901710, 
	D_152138929_D_853261835, 
	D_163057677, 
	D_164595895, 
	D_167207966, 
	D_167966775, 
	D_167997205, 
	D_168431681, 
	D_172234651_D_765748316, 
	D_172234651_D_785412329, 
	D_177526169, 
	D_184448791, 
	D_184692605, 
	D_187772368_D_152773041, 
	D_187772368_D_249341444, 
	D_187772368_D_690018400, 
	D_187772368_D_917302906, 
	D_190721176, 
	D_195662769, 
	D_198719822, 
	D_199254974_D_120485458, 
	D_199254974_D_863007380, 
	D_204421360_D_383015037, 
	D_204421360_D_500744195, 
	D_204421360_D_535003378, 
	D_204421360_D_797221287, 
	D_214750556, 
	D_214870856, 
	D_215455305_D_434243220, 
	D_215455305_D_970604592, 
	D_219538082, 
	D_220105997, 
	D_222110888_D_152773041, 
	D_222110888_D_249341444, 
	D_222110888_D_690018400, 
	D_222110888_D_917302906, 
	D_224681201, 
	D_225047594, 
	D_234177873_D_765748316, 
	D_234177873_D_785412329, 
	D_248599913_D_765748316, 
	D_248599913_D_785412329, 
	D_255761998, 
	D_262305264_D_152773041, 
	D_262305264_D_249341444, 
	D_262305264_D_690018400, 
	D_262305264_D_917302906, 
	D_263114971, 
	D_263785082_D_263785082_D_535003378, 
	D_263785082_D_263785082_D_807835037, 
	D_263785082_D_263785082_D_837393880, 
	D_263785082_D_263785082_D_944874693, 
	D_263785082_D_542108835, 
	D_265428345, 
	D_266752903_D_765748316, 
	D_266752903_D_785412329, 
	D_267122668, 
	D_267261558, 
	D_268372217_D_434243220, 
	D_268372217_D_970604592, 
	D_270254670, 
	D_272119228, 
	D_273218182_D_101310722, 
	D_273218182_D_273218182, 
	D_275143071_D_191656389, 
	D_275143071_D_243596698, 
	D_275143071_D_283652434, 
	D_275143071_D_323106499, 
	D_275143071_D_558504672, 
	D_275143071_D_727773491, 
	D_275143071_D_769901710, 
	D_275143071_D_853261835, 
	D_278277373_1_1, 
	D_278277373_10_10, 
	D_278277373_11_11, 
	D_278277373_12_12, 
	D_278277373_2_2, 
	D_278277373_3_3, 
	D_278277373_4_4, 
	D_278277373_5_5, 
	D_278277373_6_6, 
	D_278277373_7_7, 
	D_278277373_8_8, 
	D_278277373_9_9, 
	D_281494550_1_1, 
	D_281494550_2_2, 
	D_281494550_3_3, 
	D_281494550_4_4, 
	D_281494550_5_5, 
	D_281494550_6_6, 
	D_281494550_7_7, 
	D_290126991, 
	D_291707744, 
	D_292658699, 
	D_295472931, 
	D_297084062, 
	D_301052397, 
	D_305195766_D_434243220, 
	D_305195766_D_970604592, 
	D_305292465_D_765748316, 
	D_305292465_D_785412329, 
	D_305312165, 
	D_307736999, 
	D_309710463, 
	D_322479862, 
	D_344573484, 
	D_352531133, 
	D_354980163, 
	D_356969766, 
	D_358011592_D_434243220, 
	D_358011592_D_970604592, 
	D_358259099_D_707805344, 
	D_358259099_D_850393641, 
	D_368595692, 
	D_370798456, 
	D_371176229, 
	D_371748514_D_152773041, 
	D_371748514_D_249341444, 
	D_371748514_D_690018400, 
	D_371748514_D_917302906, 
	D_376720409, 
	D_378572291, 
	D_378921620, 
	D_388804810_D_765748316, 
	D_388804810_D_785412329, 
	D_391951010_1_1, 
	D_391951010_10_10, 
	D_391951010_11_11, 
	D_391951010_12_12, 
	D_391951010_13_13, 
	D_391951010_14_14, 
	D_391951010_15_15, 
	D_391951010_16_16, 
	D_391951010_2_2, 
	D_391951010_3_3, 
	D_391951010_4_4, 
	D_391951010_5_5, 
	D_391951010_6_6, 
	D_391951010_7_7, 
	D_391951010_8_8, 
	D_391951010_9_9, 
	D_392629868, 
	D_392658845_D_239572239, 
	D_392658845_D_589522790, 
	D_392658845_D_652561589, 
	D_392658845_D_699101535, 
	D_392874924, 
	D_399078599, 
	D_399982309_D_194424439, 
	D_399982309_D_221645137, 
	D_399982309_D_422188606, 
	D_399982309_D_469512398, 
	D_399982309_D_535003378, 
	D_399982309_D_555555502, 
	D_399982309_D_800410166, 
	D_399982309_D_974248369, 
	D_404596261, 
	D_405571048, 
	D_406137786, 
	D_406846149, 
	D_409324592_D_152773041, 
	D_409324592_D_249341444, 
	D_409324592_D_690018400, 
	D_409324592_D_917302906, 
	D_411788467, 
	D_414005872, 
	D_414663452, 
	D_416865817_D_765748316, 
	D_416865817_D_785412329, 
	D_421859821_D_151006826, 
	D_421859821_D_220238240, 
	D_421859821_D_257137378, 
	D_421859821_D_453071098, 
	D_421859821_D_513065503, 
	D_421859821_D_781115321, 
	D_421859821_D_965290070, 
	D_422260069, 
	D_424047361, 
	D_424183977, 
	D_424807655_D_707805344, 
	D_424807655_D_850393641, 
	D_429531329, 
	D_438682764_D_101310722, 
	D_438682764_D_438682764, 
	D_439072744, 
	D_442059084_D_152773041, 
	D_442059084_D_249341444, 
	D_442059084_D_690018400, 
	D_442059084_D_917302906, 
	D_445571225, 
	D_450131058, 
	D_452984435, 
	D_453820991, 
	D_465017353, 
	D_465635548, 
	D_466346054, 
	D_466727144, 
	D_471018082, 
	D_479628567_D_370923702, 
	D_479628567_D_495144424, 
	D_479628567_D_531811052, 
	D_479628567_D_535003378, 
	D_479628567_D_728393970, 
	D_484006644, 
	D_486574018_1_1, 
	D_486574018_10_10, 
	D_486574018_11_11, 
	D_486574018_12_12, 
	D_486574018_2_2, 
	D_486574018_3_3, 
	D_486574018_4_4, 
	D_486574018_5_5, 
	D_486574018_6_6, 
	D_486574018_7_7, 
	D_486574018_8_8, 
	D_486574018_9_9, 
	D_491549803, 
	D_492822047, 
	D_496539718_D_496539718_D_648960871, 
	D_496539718_D_969451837, 
	D_497904005, 
	D_509383583_D_191656389, 
	D_509383583_D_243596698, 
	D_509383583_D_283652434, 
	D_509383583_D_323106499, 
	D_509383583_D_558504672, 
	D_509383583_D_727773491, 
	D_509383583_D_769901710, 
	D_509383583_D_853261835, 
	D_517976064_D_181769837, 
	D_517976064_D_182827107, 
	D_517976064_D_203192394, 
	D_517976064_D_261267696, 
	D_517976064_D_345916806, 
	D_517976064_D_371531887, 
	D_517976064_D_420058896, 
	D_517976064_D_423631576, 
	D_517976064_D_535003378, 
	D_517976064_D_619501806, 
	D_517976064_D_734860227, 
	D_517976064_D_760484278, 
	D_517976064_D_868685663, 
	D_517976064_D_904954920, 
	D_517976064_D_926584500, 
	D_517976064_D_936042582, 
	D_522949496, 
	D_532767229_D_707805344, 
	D_532767229_D_850393641, 
	D_534920374, 
	D_535533643_D_434243220, 
	D_535533643_D_970604592, 
	D_538349354, 
	D_543780863_D_684201296, 
	D_547633480_D_120016082, 
	D_547633480_D_386152189, 
	D_547633480_D_503760666, 
	D_547633480_D_535003378, 
	D_547633480_D_801183888, 
	D_547633480_D_825584471, 
	D_548355426_D_548355426_D_201434907, 
	D_548355426_D_548355426_D_202355614, 
	D_548355426_D_548355426_D_342735868, 
	D_548355426_D_548355426_D_498799217, 
	D_548355426_D_548355426_D_570171052, 
	D_548355426_D_548355426_D_807835037, 
	D_548355426_D_548355426_D_833755477, 
	D_548355426_D_548355426_D_863286658, 
	D_548355426_D_548355426_D_990599372, 
	D_548355426_D_833755477, 
	D_550092533_D_101310722, 
	D_550092533_D_550092533, 
	D_556129044_D_434243220, 
	D_556129044_D_970604592, 
	D_556235252, 
	D_557526470, 
	D_560711355, 
	D_560845692, 
	D_563663099, 
	D_564185028, 
	D_564242877_D_152773041, 
	D_564242877_D_249341444, 
	D_564242877_D_690018400, 
	D_564242877_D_917302906, 
	D_564374538, 
	D_570187182, 
	D_571361258, 
	D_575646308, 
	D_578176688_D_434243220, 
	D_578176688_D_970604592, 
	D_580367946, 
	D_583012139, 
	D_583111732, 
	D_590329439, 
	D_591723682, 
	D_596961796_D_101310722, 
	D_596961796_D_596961796, 
	D_597869478_D_434243220, 
	D_597869478_D_597869478_num, 
	D_597869478_D_970604592, 
	D_603209609, 
	D_604086099_D_434243220, 
	D_604086099_D_970604592, 
	D_612068433, 
	D_614123836_D_480724806, 
	D_614123836_D_535003378, 
	D_614123836_D_819373917, 
	D_614145455_D_614145455, 
	D_614145455_D_672810476, 
	D_614446276_D_765748316, 
	D_614446276_D_785412329, 
	D_615905904, 
	D_615979584, 
	D_618427836_D_101310722, 
	D_618427836_D_618427836, 
	D_618482103_D_152773041, 
	D_618482103_D_249341444, 
	D_618482103_D_690018400, 
	D_618482103_D_917302906, 
	D_621744463, 
	D_621878019, 
	D_623759247_D_434243220, 
	D_623759247_D_970604592, 
	D_628137243, 
	D_629010195_D_629010195_D_417201414, 
	D_629010195_D_629010195_D_535003378, 
	D_629010195_D_629010195_D_576852249, 
	D_629010195_D_629010195_D_807835037, 
	D_629010195_D_629010195_D_959572576, 
	D_629010195_D_654253676, 
	D_630231395_D_191656389, 
	D_630231395_D_243596698, 
	D_630231395_D_283652434, 
	D_630231395_D_323106499, 
	D_630231395_D_558504672, 
	D_630231395_D_727773491, 
	D_630231395_D_769901710, 
	D_630231395_D_853261835, 
	D_631303960, 
	D_635874413_D_152773041, 
	D_635874413_D_249341444, 
	D_635874413_D_690018400, 
	D_635874413_D_917302906, 
	D_636757313, 
	D_643361372_D_449861632, 
	D_643361372_D_535003378, 
	D_643361372_D_920460744, 
	D_643361372_D_933374659, 
	D_643807999_D_191656389, 
	D_643807999_D_243596698, 
	D_643807999_D_283652434, 
	D_643807999_D_323106499, 
	D_643807999_D_558504672, 
	D_643807999_D_727773491, 
	D_643807999_D_769901710, 
	D_643807999_D_853261835, 
	D_644018981, 
	D_646042915_D_101310722, 
	D_646042915_D_646042915, 
	D_648678282, 
	D_649352910_D_263483736, 
	D_649352910_D_396649512, 
	D_649352910_D_654385712, 
	D_649352910_D_806746224, 
	D_650405110, 
	D_653906464_D_707805344, 
	D_653906464_D_850393641, 
	D_654271781_D_434243220, 
	D_654271781_D_970604592, 
	D_655266993_D_191656389, 
	D_655266993_D_243596698, 
	D_655266993_D_283652434, 
	D_655266993_D_323106499, 
	D_655266993_D_558504672, 
	D_655266993_D_727773491, 
	D_655266993_D_769901710, 
	D_655266993_D_853261835, 
	D_658018390, 
	D_668834883_D_640559281, 
	D_668834883_D_668834883_D_246843973, 
	D_668834883_D_668834883_D_515434780, 
	D_668834883_D_668834883_D_535003378, 
	D_668834883_D_668834883_D_640559281, 
	D_668834883_D_668834883_D_674148137, 
	D_668834883_D_668834883_D_807835037, 
	D_668834883_D_668834883_D_854184254, 
	D_674976924, 
	D_680730257, 
	D_689956879, 
	D_694817520_D_765748316, 
	D_694817520_D_785412329, 
	D_695206943_D_434243220, 
	D_695206943_D_970604592, 
	D_697661603_D_765748316, 
	D_697661603_D_785412329, 
	D_698673038, 
	D_708921303, 
	D_711365027_D_707805344, 
	D_711365027_D_850393641, 
	D_725713485, 
	D_728437398, 
	D_731790154_D_765748316, 
	D_731790154_D_785412329, 
	D_733547268_D_115422925, 
	D_733547268_D_151161693, 
	D_733547268_D_980120253, 
	D_733547268_D_980196073, 
	D_733547268_D_993029890, 
	D_733861762, 
	D_734836192, 
	D_737490587, 
	D_745223146_D_765748316, 
	D_745223146_D_785412329, 
	D_745775718_D_434243220, 
	D_745775718_D_970604592, 
	D_747629521, 
	D_753416375_D_101310722, 
	D_753416375_D_753416375, 
	D_753610471_D_101310722, 
	D_753610471_D_753610471, 
	D_756521698, 
	D_760801131, 
	D_761822652, 
	D_767785846, 
	D_768302347, 
	D_771526486, 
	D_771528780_1_1, 
	D_771528780_10_10, 
	D_771528780_11_11, 
	D_771528780_12_12, 
	D_771528780_2_2, 
	D_771528780_3_3, 
	D_771528780_4_4, 
	D_771528780_5_5, 
	D_771528780_6_6, 
	D_771528780_7_7, 
	D_771528780_8_8, 
	D_771528780_9_9, 
	D_774514900, 
	D_774992239, 
	D_775324618, 
	D_779052408_1_1, 
	D_779052408_10_10, 
	D_779052408_11_11, 
	D_779052408_12_12, 
	D_779052408_2_2, 
	D_779052408_3_3, 
	D_779052408_4_4, 
	D_779052408_5_5, 
	D_779052408_6_6, 
	D_779052408_7_7, 
	D_779052408_8_8, 
	D_779052408_9_9, 
	D_779165920, 
	D_787591805_D_152773041, 
	D_787591805_D_249341444, 
	D_787591805_D_690018400, 
	D_787591805_D_917302906, 
	D_791830593, 
	D_792792066, 
	D_797076693, 
	D_798182168, 
	D_798889867, 
	D_799338907_D_101310722, 
	D_799338907_D_799338907, 
	D_799382711, 
	D_799903478, 
	D_800943768_D_235516216, 
	D_800943768_D_800943768_D_535003378, 
	D_800943768_D_800943768_D_687050279, 
	D_800943768_D_800943768_D_807835037, 
	D_801749224, 
	D_803968511_D_101310722, 
	D_803968511_D_803968511, 
	D_806253825, 
	D_807214881, 
	D_809735528, 
	D_814141708, 
	D_815229596_D_152773041, 
	D_815229596_D_249341444, 
	D_815229596_D_690018400, 
	D_815229596_D_917302906, 
	D_819957363, 
	D_820694957, 
	D_823541843, 
	D_823919522, 
	D_824165133, 
	D_824251330_D_434243220, 
	D_824251330_D_970604592, 
	D_824287808, 
	D_825189914_D_101310722, 
	D_825189914_D_825189914, 
	D_825227968_D_707805344, 
	D_825227968_D_850393641, 
	D_829749579_D_152773041, 
	D_829749579_D_249341444, 
	D_829749579_D_690018400, 
	D_829749579_D_917302906, 
	D_831643763, 
	D_837412550_D_765748316, 
	D_837412550_D_785412329, 
	D_845164425_D_152773041, 
	D_845164425_D_249341444, 
	D_845164425_D_690018400, 
	D_845164425_D_917302906, 
	D_846227588, 
	D_846978339, 
	D_849399881, 
	D_849945160, 
	D_850202336_D_526448646, 
	D_850202336_D_850202336, 
	D_850536692, 
	D_854078473, 
	D_856627601, 
	D_858525957_D_152773041, 
	D_858525957_D_249341444, 
	D_858525957_D_690018400, 
	D_858525957_D_917302906, 
	D_861824298, 
	D_861838892_D_765748316, 
	D_861838892_D_785412329, 
	D_865200503, 
	D_872509317, 
	D_874262904, 
	D_875135634, 
	D_876683805, 
	D_876846761, 
	D_880331901, 
	D_881200765_D_762700622, 
	D_881200765_D_881200765_D_100181644, 
	D_881200765_D_881200765_D_256131117, 
	D_881200765_D_881200765_D_304927036, 
	D_881200765_D_881200765_D_372219003, 
	D_881200765_D_881200765_D_454641975, 
	D_881200765_D_881200765_D_459188493, 
	D_881200765_D_881200765_D_532607252, 
	D_881200765_D_881200765_D_535003378, 
	D_881200765_D_881200765_D_619799524, 
	D_881200765_D_881200765_D_642004888, 
	D_881200765_D_881200765_D_663814928, 
	D_881200765_D_881200765_D_743731422, 
	D_881200765_D_881200765_D_762700622, 
	D_881200765_D_881200765_D_807835037, 
	D_887435355_D_191656389, 
	D_887435355_D_243596698, 
	D_887435355_D_283652434, 
	D_887435355_D_323106499, 
	D_887435355_D_558504672, 
	D_887435355_D_727773491, 
	D_887435355_D_769901710, 
	D_887435355_D_853261835, 
	D_888313306, 
	D_889053435, 
	D_893965588_D_101310722, 
	D_893965588_D_893965588, 
	D_894363067, 
	D_894610280_D_152773041, 
	D_894610280_D_249341444, 
	D_894610280_D_690018400, 
	D_894610280_D_917302906, 
	D_895837106_D_152773041, 
	D_895837106_D_249341444, 
	D_895837106_D_690018400, 
	D_895837106_D_917302906, 
	D_899455852_D_434243220, 
	D_899455852_D_970604592, 
	D_900299856_D_152773041, 
	D_900299856_D_249341444, 
	D_900299856_D_690018400, 
	D_900299856_D_917302906, 
	D_901154649, 
	D_901498441_D_101310722, 
	D_901498441_D_901498441, 
	D_901660173, 
	D_902999015, 
	D_904844824, 
	D_906459952, 
	D_910856756, 
	D_912818075, 
	D_921220809, 
	D_922903688, 
	D_936366310, 
	D_938969985, 
	D_939897560, 
	D_940733450, 
	D_943996164, 
	D_944699052, 
	D_946211808, 
	D_946710366_D_434243220, 
	D_946710366_D_970604592, 
	D_946849196_D_108104748, 
	D_946849196_D_158214723, 
	D_946849196_D_658810736, 
	D_946849196_D_717308596, 
	D_946849196_D_729863969, 
	D_946849196_D_746788766, 
	D_949663397, 
	D_953510929, 
	D_958009220, 
	D_963284259, 
	D_968816827_1_1, 
	D_968816827_10_10, 
	D_968816827_11_11, 
	D_968816827_12_12, 
	D_968816827_13_13, 
	D_968816827_14_14, 
	D_968816827_15_15, 
	D_968816827_16_16, 
	D_968816827_2_2, 
	D_968816827_3_3, 
	D_968816827_4_4, 
	D_968816827_5_5, 
	D_968816827_6_6, 
	D_968816827_7_7, 
	D_968816827_8_8, 
	D_968816827_9_9, 
	D_972593606, 
	D_976052812, 
	D_981441822_D_179705366, 
	D_981441822_D_186488870, 
	D_981441822_D_354550061, 
	D_981441822_D_403155173, 
	D_981441822_D_576621769, 
	D_981441822_D_760686611, 
	D_981441822_D_922388461, 
	D_981441822_D_955609858, 
	D_981441822_D_988508028, 
	D_981509686, 
	D_982448213, 
	D_984514646, 
	D_984901301_D_434243220, 
	D_984901301_D_970604592, 
	D_991330361, 
	D_991427384, 
	D_991622246_D_101310722, 
	D_991622246_D_991622246, 
	D_991873978, 
	D_992022740, 
	D_994899398, 
	D_996243083, 
	sha, 
	uid, 
	date, 
  1 as version 
FROM 
  `nih-nci-dceg-connect-stg-5519.FlatConnect.module2_v1_JP`
-- Remove participants that completed both v1 & v2 from the table for v1.
WHERE 
  Connect_ID NOT IN ('9488878670')
)
SELECT 
  -- Select variables that are common to both versions
  dup.*,
  -- Select variables that are unique to v1
  COMPLETED, 
	v1.COMPLETED_TS, 
	v1.D_281494550_11_11, 
	v1.D_281494550_12_12, 
	v1.D_496539718, 
	v1.D_543780863_D_543780863_D_100752105, 
	v1.D_543780863_D_543780863_D_205223932, 
	v1.D_543780863_D_543780863_D_207913198, 
	v1.D_543780863_D_543780863_D_441493408, 
	v1.D_543780863_D_543780863_D_535003378, 
	v1.D_543780863_D_543780863_D_612012325, 
	v1.D_543780863_D_543780863_D_684201296, 
	v1.D_543780863_D_543780863_D_787142499, 
	v1.D_543780863_D_543780863_D_807835037, 
	v1.D_543780863_D_543780863_D_817131019, 
	v1.D_543780863_D_543780863_D_863920008, 
	v1.treeJSON,
  -- Select variables that are unique to v2
  D_133297530_13_13, 
	v2.D_133297530_14_14, 
	v2.D_133297530_15_15, 
	v2.D_133297530_18_18, 
	v2.D_133297530_19_19, 
	v2.D_133297530_20_20, 
	v2.D_133297530_21_21, 
	v2.D_133297530_22_22, 
	v2.D_278277373_13_13, 
	v2.D_278277373_15_15, 
	v2.D_278277373_19_19, 
	v2.D_278277373_20_20, 
	v2.D_278277373_21_21, 
	v2.D_278277373_22_22, 
	v2.D_281494550_18_18, 
	v2.D_281494550_8_8, 
	v2.D_281494550_9_9, 
	v2.D_391951010_17_17, 
	v2.D_391951010_18_18, 
	v2.D_391951010_19_19, 
	v2.D_391951010_20_20, 
	v2.D_391951010_21_21, 
	v2.D_391951010_22_22, 
	v2.D_486574018_13_13, 
	v2.D_486574018_15_15, 
	v2.D_486574018_18_18, 
	v2.D_486574018_19_19, 
	v2.D_486574018_20_20, 
	v2.D_486574018_21_21, 
	v2.D_486574018_22_22, 
	v2.D_543780863_D_100752105, 
	v2.D_543780863_D_181769837, 
	v2.D_543780863_D_205223932, 
	v2.D_543780863_D_207913198, 
	v2.D_543780863_D_441493408, 
	v2.D_543780863_D_535003378, 
	v2.D_543780863_D_612012325, 
	v2.D_543780863_D_787142499, 
	v2.D_543780863_D_807835037, 
	v2.D_543780863_D_817131019, 
	v2.D_543780863_D_863920008, 
	v2.D_771528780_13_13, 
	v2.D_771528780_15_15, 
	v2.D_771528780_18_18, 
	v2.D_771528780_19_19, 
	v2.D_771528780_20_20, 
	v2.D_771528780_21_21, 
	v2.D_771528780_22_22, 
	v2.D_779052408_13_13, 
	v2.D_779052408_14_14, 
	v2.D_779052408_15_15, 
	v2.D_779052408_18_18, 
	v2.D_779052408_19_19, 
	v2.D_779052408_20_20, 
	v2.D_779052408_21_21, 
	v2.D_779052408_22_22, 
	v2.d_932127832, 
	v2.D_968816827_17_17, 
	v2.D_968816827_18_18, 
	v2.D_968816827_19_19, 
	v2.D_968816827_20_20, 
	v2.D_968816827_21_21, 
	v2.D_968816827_22_22,
  p.Connect_ID 
FROM
  m2_dup AS dup
LEFT JOIN `nih-nci-dceg-connect-stg-5519.FlatConnect.module2_v1_JP` AS v1
  ON dup.Connect_ID = v1.Connect_ID
LEFT JOIN	`nih-nci-dceg-connect-stg-5519.FlatConnect.module2_v2_JP` AS v2
  ON v2.Connect_ID = coalesce(dup.Connect_ID,v1.Connect_ID)
INNER JOIN `nih-nci-dceg-connect-stg-5519.FlatConnect.participants_JP` AS p
  ON coalesce(dup.Connect_ID, v1.Connect_ID, v2.Connect_ID) = p.Connect_ID
WHERE 
  p.d_821247024 = '197316935'      -- is verified 
  AND p.d_747006172 != '353358909' -- has not withdrawn consent 
