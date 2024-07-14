* NOTE: You need to set the Stata working directory to the path
* where the data file is located.
cd "C:\Users\joyse\Desktop\UROP\Fall 2023\MTUS"
set more off

clear
quietly infix                                 ///
  byte    rectype                1-1          ///
  long    year                   2-6          ///
  double  caseid                 7-20         ///
  long    serial                 21-27        ///
  byte    inttype_cps8           28-28        ///
  byte    numcontacts_cps8       29-30        ///
  byte    phone                  31-31        ///
  double  hrhhid_cps8            32-46        ///
  long    hrhhid2_cps8           47-52        ///
  str     hrsersuf_cps8          53-53        ///
  str     hrsample_cps8          54-57        ///
  byte    huhhnum_cps8           58-59        ///
  long    cluster                60-65        ///
  long    strata                 66-71        ///
  int     year_cps8              72-75        ///
  byte    month_cps8             76-77        ///
  byte    region                 78-78        ///
  byte    statefip               79-80        ///
  byte    metro                  81-82        ///
  byte    msasize                83-83        ///
  long    metarea                84-88        ///
  long    county                 89-93        ///
  int     famincome              94-96        ///
  int     hh_size                97-99        ///
  byte    poverty130             100-101      ///
  byte    poverty185             102-103      ///
  byte    povertylevel           104-105      ///
  byte    foodstamp              106-107      ///
  byte    hhtenure               108-109      ///
  byte    wic                    110-111      ///
  byte    hh_child               112-113      ///
  byte    anybrk                 114-115      ///
  byte    anylnch                116-117      ///
  byte    housetype              118-119      ///
  byte    hh_numkids             120-121      ///
  byte    fambus                 122-123      ///
  int     ageychild              124-126      ///
  byte    fambus_resp            127-128      ///
  byte    hh_numadults           129-130      ///
  byte    fambus_spouse          131-132      ///
  byte    fambus_other           133-134      ///
  byte    hh_size_cps8           135-136      ///
  byte    fambus_cps8            137-138      ///
  byte    hh_child_cps8          139-140      ///
  int     ageychild_cps8         141-143      ///
  str     kidwaketime            144-151      ///
  str     kidbedtime             152-159      ///
  using `"atus_00001.dat"'
gen  _line_num = _n
drop if rectype != 1
sort _line_num
save __temp_ipums_hier_1.dta, replace

clear
quietly infix                                 ///
  byte    rectype                1-1          ///
  long    year                   2-6          ///
  double  caseid                 7-20         ///
  long    serial                 21-27        ///
  byte    pernum                 28-29        ///
  int     lineno                 30-32        ///
  int     lineno_cps8            33-35        ///
  byte    presence               36-36        ///
  byte    lfproxy_cps8           37-38        ///
  int     month                  39-41        ///
  byte    day                    42-43        ///
  byte    holiday                44-45        ///
  double  date                   46-54        ///
  double  wt06                   55-71        ///
  byte    rwt06                  72-72        ///
  double  wt20                   73-87        ///
  byte    rwt20                  88-88        ///
  double  wt04                   89-105       ///
  double  wt03                   106-120      ///
  double  bwt                    121-133      ///
  byte    rbwt                   134-134      ///
  double  rwt06_1                135-149      ///
  double  rwt06_2                150-164      ///
  double  rwt06_3                165-179      ///
  double  rwt06_4                180-194      ///
  double  rwt06_5                195-209      ///
  double  rwt06_6                210-224      ///
  double  rwt06_7                225-239      ///
  double  rwt06_8                240-254      ///
  double  rwt06_9                255-269      ///
  double  rwt06_10               270-284      ///
  double  rwt06_11               285-299      ///
  double  rwt06_12               300-314      ///
  double  rwt06_13               315-329      ///
  double  rwt06_14               330-344      ///
  double  rwt06_15               345-359      ///
  double  rwt06_16               360-374      ///
  double  rwt06_17               375-389      ///
  double  rwt06_18               390-404      ///
  double  rwt06_19               405-419      ///
  double  rwt06_20               420-434      ///
  double  rwt06_21               435-449      ///
  double  rwt06_22               450-464      ///
  double  rwt06_23               465-479      ///
  double  rwt06_24               480-494      ///
  double  rwt06_25               495-509      ///
  double  rwt06_26               510-524      ///
  double  rwt06_27               525-539      ///
  double  rwt06_28               540-554      ///
  double  rwt06_29               555-569      ///
  double  rwt06_30               570-584      ///
  double  rwt06_31               585-599      ///
  double  rwt06_32               600-614      ///
  double  rwt06_33               615-629      ///
  double  rwt06_34               630-644      ///
  double  rwt06_35               645-659      ///
  double  rwt06_36               660-674      ///
  double  rwt06_37               675-689      ///
  double  rwt06_38               690-704      ///
  double  rwt06_39               705-719      ///
  double  rwt06_40               720-734      ///
  double  rwt06_41               735-749      ///
  double  rwt06_42               750-764      ///
  double  rwt06_43               765-779      ///
  double  rwt06_44               780-794      ///
  double  rwt06_45               795-809      ///
  double  rwt06_46               810-824      ///
  double  rwt06_47               825-839      ///
  double  rwt06_48               840-854      ///
  double  rwt06_49               855-869      ///
  double  rwt06_50               870-884      ///
  double  rwt06_51               885-899      ///
  double  rwt06_52               900-914      ///
  double  rwt06_53               915-929      ///
  double  rwt06_54               930-944      ///
  double  rwt06_55               945-959      ///
  double  rwt06_56               960-974      ///
  double  rwt06_57               975-989      ///
  double  rwt06_58               990-1004     ///
  double  rwt06_59               1005-1019    ///
  double  rwt06_60               1020-1034    ///
  double  rwt06_61               1035-1049    ///
  double  rwt06_62               1050-1064    ///
  double  rwt06_63               1065-1079    ///
  double  rwt06_64               1080-1094    ///
  double  rwt06_65               1095-1109    ///
  double  rwt06_66               1110-1124    ///
  double  rwt06_67               1125-1139    ///
  double  rwt06_68               1140-1154    ///
  double  rwt06_69               1155-1169    ///
  double  rwt06_70               1170-1184    ///
  double  rwt06_71               1185-1199    ///
  double  rwt06_72               1200-1214    ///
  double  rwt06_73               1215-1229    ///
  double  rwt06_74               1230-1244    ///
  double  rwt06_75               1245-1259    ///
  double  rwt06_76               1260-1274    ///
  double  rwt06_77               1275-1289    ///
  double  rwt06_78               1290-1304    ///
  double  rwt06_79               1305-1319    ///
  double  rwt06_80               1320-1334    ///
  double  rwt06_81               1335-1349    ///
  double  rwt06_82               1350-1364    ///
  double  rwt06_83               1365-1379    ///
  double  rwt06_84               1380-1394    ///
  double  rwt06_85               1395-1409    ///
  double  rwt06_86               1410-1424    ///
  double  rwt06_87               1425-1439    ///
  double  rwt06_88               1440-1454    ///
  double  rwt06_89               1455-1469    ///
  double  rwt06_90               1470-1484    ///
  double  rwt06_91               1485-1499    ///
  double  rwt06_92               1500-1514    ///
  double  rwt06_93               1515-1529    ///
  double  rwt06_94               1530-1544    ///
  double  rwt06_95               1545-1559    ///
  double  rwt06_96               1560-1574    ///
  double  rwt06_97               1575-1589    ///
  double  rwt06_98               1590-1604    ///
  double  rwt06_99               1605-1619    ///
  double  rwt06_100              1620-1634    ///
  double  rwt06_101              1635-1649    ///
  double  rwt06_102              1650-1664    ///
  double  rwt06_103              1665-1679    ///
  double  rwt06_104              1680-1694    ///
  double  rwt06_105              1695-1709    ///
  double  rwt06_106              1710-1724    ///
  double  rwt06_107              1725-1739    ///
  double  rwt06_108              1740-1754    ///
  double  rwt06_109              1755-1769    ///
  double  rwt06_110              1770-1784    ///
  double  rwt06_111              1785-1799    ///
  double  rwt06_112              1800-1814    ///
  double  rwt06_113              1815-1829    ///
  double  rwt06_114              1830-1844    ///
  double  rwt06_115              1845-1859    ///
  double  rwt06_116              1860-1874    ///
  double  rwt06_117              1875-1889    ///
  double  rwt06_118              1890-1904    ///
  double  rwt06_119              1905-1919    ///
  double  rwt06_120              1920-1934    ///
  double  rwt06_121              1935-1949    ///
  double  rwt06_122              1950-1964    ///
  double  rwt06_123              1965-1979    ///
  double  rwt06_124              1980-1994    ///
  double  rwt06_125              1995-2009    ///
  double  rwt06_126              2010-2024    ///
  double  rwt06_127              2025-2039    ///
  double  rwt06_128              2040-2054    ///
  double  rwt06_129              2055-2069    ///
  double  rwt06_130              2070-2084    ///
  double  rwt06_131              2085-2099    ///
  double  rwt06_132              2100-2114    ///
  double  rwt06_133              2115-2129    ///
  double  rwt06_134              2130-2144    ///
  double  rwt06_135              2145-2159    ///
  double  rwt06_136              2160-2174    ///
  double  rwt06_137              2175-2189    ///
  double  rwt06_138              2190-2204    ///
  double  rwt06_139              2205-2219    ///
  double  rwt06_140              2220-2234    ///
  double  rwt06_141              2235-2249    ///
  double  rwt06_142              2250-2264    ///
  double  rwt06_143              2265-2279    ///
  double  rwt06_144              2280-2294    ///
  double  rwt06_145              2295-2309    ///
  double  rwt06_146              2310-2324    ///
  double  rwt06_147              2325-2339    ///
  double  rwt06_148              2340-2354    ///
  double  rwt06_149              2355-2369    ///
  double  rwt06_150              2370-2384    ///
  double  rwt06_151              2385-2399    ///
  double  rwt06_152              2400-2414    ///
  double  rwt06_153              2415-2429    ///
  double  rwt06_154              2430-2444    ///
  double  rwt06_155              2445-2459    ///
  double  rwt06_156              2460-2474    ///
  double  rwt06_157              2475-2489    ///
  double  rwt06_158              2490-2504    ///
  double  rwt06_159              2505-2519    ///
  double  rwt06_160              2520-2534    ///
  double  rbwt_1                 2535-2546    ///
  double  rbwt_2                 2547-2558    ///
  double  rbwt_3                 2559-2570    ///
  double  rbwt_4                 2571-2582    ///
  double  rbwt_5                 2583-2594    ///
  double  rbwt_6                 2595-2606    ///
  double  rbwt_7                 2607-2618    ///
  double  rbwt_8                 2619-2630    ///
  double  rbwt_9                 2631-2642    ///
  double  rbwt_10                2643-2654    ///
  double  rbwt_11                2655-2666    ///
  double  rbwt_12                2667-2678    ///
  double  rbwt_13                2679-2690    ///
  double  rbwt_14                2691-2702    ///
  double  rbwt_15                2703-2714    ///
  double  rbwt_16                2715-2726    ///
  double  rbwt_17                2727-2738    ///
  double  rbwt_18                2739-2750    ///
  double  rbwt_19                2751-2762    ///
  double  rbwt_20                2763-2774    ///
  double  rbwt_21                2775-2786    ///
  double  rbwt_22                2787-2798    ///
  double  rbwt_23                2799-2810    ///
  double  rbwt_24                2811-2822    ///
  double  rbwt_25                2823-2834    ///
  double  rbwt_26                2835-2846    ///
  double  rbwt_27                2847-2858    ///
  double  rbwt_28                2859-2870    ///
  double  rbwt_29                2871-2882    ///
  double  rbwt_30                2883-2894    ///
  double  rbwt_31                2895-2906    ///
  double  rbwt_32                2907-2918    ///
  double  rbwt_33                2919-2930    ///
  double  rbwt_34                2931-2942    ///
  double  rbwt_35                2943-2954    ///
  double  rbwt_36                2955-2966    ///
  double  rbwt_37                2967-2978    ///
  double  rbwt_38                2979-2990    ///
  double  rbwt_39                2991-3002    ///
  double  rbwt_40                3003-3014    ///
  double  rbwt_41                3015-3026    ///
  double  rbwt_42                3027-3038    ///
  double  rbwt_43                3039-3050    ///
  double  rbwt_44                3051-3062    ///
  double  rbwt_45                3063-3074    ///
  double  rbwt_46                3075-3086    ///
  double  rbwt_47                3087-3098    ///
  double  rbwt_48                3099-3110    ///
  double  rbwt_49                3111-3122    ///
  double  rbwt_50                3123-3134    ///
  double  rbwt_51                3135-3146    ///
  double  rbwt_52                3147-3158    ///
  double  rbwt_53                3159-3170    ///
  double  rbwt_54                3171-3182    ///
  double  rbwt_55                3183-3194    ///
  double  rbwt_56                3195-3206    ///
  double  rbwt_57                3207-3218    ///
  double  rbwt_58                3219-3230    ///
  double  rbwt_59                3231-3242    ///
  double  rbwt_60                3243-3254    ///
  double  rbwt_61                3255-3266    ///
  double  rbwt_62                3267-3278    ///
  double  rbwt_63                3279-3290    ///
  double  rbwt_64                3291-3302    ///
  double  rbwt_65                3303-3314    ///
  double  rbwt_66                3315-3326    ///
  double  rbwt_67                3327-3338    ///
  double  rbwt_68                3339-3350    ///
  double  rbwt_69                3351-3362    ///
  double  rbwt_70                3363-3374    ///
  double  rbwt_71                3375-3386    ///
  double  rbwt_72                3387-3398    ///
  double  rbwt_73                3399-3410    ///
  double  rbwt_74                3411-3422    ///
  double  rbwt_75                3423-3434    ///
  double  rbwt_76                3435-3446    ///
  double  rbwt_77                3447-3458    ///
  double  rbwt_78                3459-3470    ///
  double  rbwt_79                3471-3482    ///
  double  rbwt_80                3483-3494    ///
  double  rbwt_81                3495-3506    ///
  double  rbwt_82                3507-3518    ///
  double  rbwt_83                3519-3530    ///
  double  rbwt_84                3531-3542    ///
  double  rbwt_85                3543-3554    ///
  double  rbwt_86                3555-3566    ///
  double  rbwt_87                3567-3578    ///
  double  rbwt_88                3579-3590    ///
  double  rbwt_89                3591-3602    ///
  double  rbwt_90                3603-3614    ///
  double  rbwt_91                3615-3626    ///
  double  rbwt_92                3627-3638    ///
  double  rbwt_93                3639-3650    ///
  double  rbwt_94                3651-3662    ///
  double  rbwt_95                3663-3674    ///
  double  rbwt_96                3675-3686    ///
  double  rbwt_97                3687-3698    ///
  double  rbwt_98                3699-3710    ///
  double  rbwt_99                3711-3722    ///
  double  rbwt_100               3723-3734    ///
  double  rbwt_101               3735-3746    ///
  double  rbwt_102               3747-3758    ///
  double  rbwt_103               3759-3770    ///
  double  rbwt_104               3771-3782    ///
  double  rbwt_105               3783-3794    ///
  double  rbwt_106               3795-3806    ///
  double  rbwt_107               3807-3818    ///
  double  rbwt_108               3819-3830    ///
  double  rbwt_109               3831-3842    ///
  double  rbwt_110               3843-3854    ///
  double  rbwt_111               3855-3866    ///
  double  rbwt_112               3867-3878    ///
  double  rbwt_113               3879-3890    ///
  double  rbwt_114               3891-3902    ///
  double  rbwt_115               3903-3914    ///
  double  rbwt_116               3915-3926    ///
  double  rbwt_117               3927-3938    ///
  double  rbwt_118               3939-3950    ///
  double  rbwt_119               3951-3962    ///
  double  rbwt_120               3963-3974    ///
  double  rbwt_121               3975-3986    ///
  double  rbwt_122               3987-3998    ///
  double  rbwt_123               3999-4010    ///
  double  rbwt_124               4011-4022    ///
  double  rbwt_125               4023-4034    ///
  double  rbwt_126               4035-4046    ///
  double  rbwt_127               4047-4058    ///
  double  rbwt_128               4059-4070    ///
  double  rbwt_129               4071-4082    ///
  double  rbwt_130               4083-4094    ///
  double  rbwt_131               4095-4106    ///
  double  rbwt_132               4107-4118    ///
  double  rbwt_133               4119-4130    ///
  double  rbwt_134               4131-4142    ///
  double  rbwt_135               4143-4154    ///
  double  rbwt_136               4155-4166    ///
  double  rbwt_137               4167-4178    ///
  double  rbwt_138               4179-4190    ///
  double  rbwt_139               4191-4202    ///
  double  rbwt_140               4203-4214    ///
  double  rbwt_141               4215-4226    ///
  double  rbwt_142               4227-4238    ///
  double  rbwt_143               4239-4250    ///
  double  rbwt_144               4251-4262    ///
  double  rbwt_145               4263-4274    ///
  double  rbwt_146               4275-4286    ///
  double  rbwt_147               4287-4298    ///
  double  rbwt_148               4299-4310    ///
  double  rbwt_149               4311-4322    ///
  double  rbwt_150               4323-4334    ///
  double  rbwt_151               4335-4346    ///
  double  rbwt_152               4347-4358    ///
  double  rbwt_153               4359-4370    ///
  double  rbwt_154               4371-4382    ///
  double  rbwt_155               4383-4394    ///
  double  rbwt_156               4395-4406    ///
  double  rbwt_157               4407-4418    ///
  double  rbwt_158               4419-4430    ///
  double  rbwt_159               4431-4442    ///
  double  rbwt_160               4443-4454    ///
  double  ehwt                   4455-4471    ///
  byte    rehwt                  4472-4472    ///
  double  rehwt_1                4473-4487    ///
  double  rehwt_2                4488-4502    ///
  double  rehwt_3                4503-4517    ///
  double  rehwt_4                4518-4532    ///
  double  rehwt_5                4533-4547    ///
  double  rehwt_6                4548-4562    ///
  double  rehwt_7                4563-4577    ///
  double  rehwt_8                4578-4592    ///
  double  rehwt_9                4593-4607    ///
  double  rehwt_10               4608-4622    ///
  double  rehwt_11               4623-4637    ///
  double  rehwt_12               4638-4652    ///
  double  rehwt_13               4653-4667    ///
  double  rehwt_14               4668-4682    ///
  double  rehwt_15               4683-4697    ///
  double  rehwt_16               4698-4712    ///
  double  rehwt_17               4713-4727    ///
  double  rehwt_18               4728-4742    ///
  double  rehwt_19               4743-4757    ///
  double  rehwt_20               4758-4772    ///
  double  rehwt_21               4773-4787    ///
  double  rehwt_22               4788-4802    ///
  double  rehwt_23               4803-4817    ///
  double  rehwt_24               4818-4832    ///
  double  rehwt_25               4833-4847    ///
  double  rehwt_26               4848-4862    ///
  double  rehwt_27               4863-4877    ///
  double  rehwt_28               4878-4892    ///
  double  rehwt_29               4893-4907    ///
  double  rehwt_30               4908-4922    ///
  double  rehwt_31               4923-4937    ///
  double  rehwt_32               4938-4952    ///
  double  rehwt_33               4953-4967    ///
  double  rehwt_34               4968-4982    ///
  double  rehwt_35               4983-4997    ///
  double  rehwt_36               4998-5012    ///
  double  rehwt_37               5013-5027    ///
  double  rehwt_38               5028-5042    ///
  double  rehwt_39               5043-5057    ///
  double  rehwt_40               5058-5072    ///
  double  rehwt_41               5073-5087    ///
  double  rehwt_42               5088-5102    ///
  double  rehwt_43               5103-5117    ///
  double  rehwt_44               5118-5132    ///
  double  rehwt_45               5133-5147    ///
  double  rehwt_46               5148-5162    ///
  double  rehwt_47               5163-5177    ///
  double  rehwt_48               5178-5192    ///
  double  rehwt_49               5193-5207    ///
  double  rehwt_50               5208-5222    ///
  double  rehwt_51               5223-5237    ///
  double  rehwt_52               5238-5252    ///
  double  rehwt_53               5253-5267    ///
  double  rehwt_54               5268-5282    ///
  double  rehwt_55               5283-5297    ///
  double  rehwt_56               5298-5312    ///
  double  rehwt_57               5313-5327    ///
  double  rehwt_58               5328-5342    ///
  double  rehwt_59               5343-5357    ///
  double  rehwt_60               5358-5372    ///
  double  rehwt_61               5373-5387    ///
  double  rehwt_62               5388-5402    ///
  double  rehwt_63               5403-5417    ///
  double  rehwt_64               5418-5432    ///
  double  rehwt_65               5433-5447    ///
  double  rehwt_66               5448-5462    ///
  double  rehwt_67               5463-5477    ///
  double  rehwt_68               5478-5492    ///
  double  rehwt_69               5493-5507    ///
  double  rehwt_70               5508-5522    ///
  double  rehwt_71               5523-5537    ///
  double  rehwt_72               5538-5552    ///
  double  rehwt_73               5553-5567    ///
  double  rehwt_74               5568-5582    ///
  double  rehwt_75               5583-5597    ///
  double  rehwt_76               5598-5612    ///
  double  rehwt_77               5613-5627    ///
  double  rehwt_78               5628-5642    ///
  double  rehwt_79               5643-5657    ///
  double  rehwt_80               5658-5672    ///
  double  rehwt_81               5673-5687    ///
  double  rehwt_82               5688-5702    ///
  double  rehwt_83               5703-5717    ///
  double  rehwt_84               5718-5732    ///
  double  rehwt_85               5733-5747    ///
  double  rehwt_86               5748-5762    ///
  double  rehwt_87               5763-5777    ///
  double  rehwt_88               5778-5792    ///
  double  rehwt_89               5793-5807    ///
  double  rehwt_90               5808-5822    ///
  double  rehwt_91               5823-5837    ///
  double  rehwt_92               5838-5852    ///
  double  rehwt_93               5853-5867    ///
  double  rehwt_94               5868-5882    ///
  double  rehwt_95               5883-5897    ///
  double  rehwt_96               5898-5912    ///
  double  rehwt_97               5913-5927    ///
  double  rehwt_98               5928-5942    ///
  double  rehwt_99               5943-5957    ///
  double  rehwt_100              5958-5972    ///
  double  rehwt_101              5973-5987    ///
  double  rehwt_102              5988-6002    ///
  double  rehwt_103              6003-6017    ///
  double  rehwt_104              6018-6032    ///
  double  rehwt_105              6033-6047    ///
  double  rehwt_106              6048-6062    ///
  double  rehwt_107              6063-6077    ///
  double  rehwt_108              6078-6092    ///
  double  rehwt_109              6093-6107    ///
  double  rehwt_110              6108-6122    ///
  double  rehwt_111              6123-6137    ///
  double  rehwt_112              6138-6152    ///
  double  rehwt_113              6153-6167    ///
  double  rehwt_114              6168-6182    ///
  double  rehwt_115              6183-6197    ///
  double  rehwt_116              6198-6212    ///
  double  rehwt_117              6213-6227    ///
  double  rehwt_118              6228-6242    ///
  double  rehwt_119              6243-6257    ///
  double  rehwt_120              6258-6272    ///
  double  rehwt_121              6273-6287    ///
  double  rehwt_122              6288-6302    ///
  double  rehwt_123              6303-6317    ///
  double  rehwt_124              6318-6332    ///
  double  rehwt_125              6333-6347    ///
  double  rehwt_126              6348-6362    ///
  double  rehwt_127              6363-6377    ///
  double  rehwt_128              6378-6392    ///
  double  rehwt_129              6393-6407    ///
  double  rehwt_130              6408-6422    ///
  double  rehwt_131              6423-6437    ///
  double  rehwt_132              6438-6452    ///
  double  rehwt_133              6453-6467    ///
  double  rehwt_134              6468-6482    ///
  double  rehwt_135              6483-6497    ///
  double  rehwt_136              6498-6512    ///
  double  rehwt_137              6513-6527    ///
  double  rehwt_138              6528-6542    ///
  double  rehwt_139              6543-6557    ///
  double  rehwt_140              6558-6572    ///
  double  rehwt_141              6573-6587    ///
  double  rehwt_142              6588-6602    ///
  double  rehwt_143              6603-6617    ///
  double  rehwt_144              6618-6632    ///
  double  rehwt_145              6633-6647    ///
  double  rehwt_146              6648-6662    ///
  double  rehwt_147              6663-6677    ///
  double  rehwt_148              6678-6692    ///
  double  rehwt_149              6693-6707    ///
  double  rehwt_150              6708-6722    ///
  double  rehwt_151              6723-6737    ///
  double  rehwt_152              6738-6752    ///
  double  rehwt_153              6753-6767    ///
  double  rehwt_154              6768-6782    ///
  double  rehwt_155              6783-6797    ///
  double  rehwt_156              6798-6812    ///
  double  rehwt_157              6813-6827    ///
  double  rehwt_158              6828-6842    ///
  double  rehwt_159              6843-6857    ///
  double  rehwt_160              6858-6872    ///
  int     age                    6873-6875    ///
  byte    sex                    6876-6877    ///
  int     race                   6878-6881    ///
  int     hispan                 6882-6885    ///
  int     asian                  6886-6888    ///
  byte    marst                  6889-6890    ///
  int     yrimmig                6891-6893    ///
  int     citizen                6894-6896    ///
  long    bpl                    6897-6902    ///
  long    mbpl                   6903-6908    ///
  long    fbpl                   6909-6914    ///
  int     relate                 6915-6917    ///
  int     age_cps8               6918-6920    ///
  byte    sex_cps8               6921-6922    ///
  int     relate_cps8            6923-6925    ///
  byte    popstat                6926-6927    ///
  byte    genhealth              6928-6929    ///
  int     height                 6930-6932    ///
  int     weight                 6933-6936    ///
  double  bmi                    6937-6942    ///
  int     educ                   6943-6945    ///
  int     educyrs                6946-6948    ///
  byte    schlcoll               6949-6950    ///
  byte    schlcoll_cps8          6951-6952    ///
  byte    vetstat                6953-6954    ///
  int     vetlast                6955-6957    ///
  byte    vet1                   6958-6959    ///
  byte    vet2                   6960-6961    ///
  byte    vet3                   6962-6963    ///
  byte    vet4                   6964-6965    ///
  byte    afnow                  6966-6967    ///
  byte    empstat                6968-6969    ///
  byte    multjobs               6970-6971    ///
  byte    clwkr                  6972-6973    ///
  int     occ2                   6974-6977    ///
  long    occ                    6978-6982    ///
  int     ind2                   6983-6986    ///
  long    ind                    6987-6991    ///
  int     whyabsnt               6992-6994    ///
  byte    fambus_pay             6995-6996    ///
  byte    fambus_wrk             6997-6998    ///
  byte    looking                6999-7000    ///
  byte    retired                7001-7002    ///
  byte    empstat_cps8           7003-7004    ///
  byte    multjobs_cps8          7005-7006    ///
  byte    clwkr_cps8             7007-7008    ///
  byte    clwkr_oj_cps8          7009-7010    ///
  int     occ2_cps8              7011-7014    ///
  long    occ_cps8               7015-7019    ///
  int     occ2_oj_cps8           7020-7023    ///
  long    occ_oj_cps8            7024-7028    ///
  int     ind2_cps8              7029-7032    ///
  long    ind_cps8               7033-7037    ///
  int     ind2_oj_cps8           7038-7041    ///
  long    ind_oj_cps8            7042-7046    ///
  byte    union_cps8             7047-7048    ///
  byte    payifabs_cps8          7049-7050    ///
  int     whyabsnt_cps8          7051-7053    ///
  int     whyptlwk_cps8          7054-7056    ///
  byte    fambus_wrk_cps8        7057-7058    ///
  byte    fambus_pay_cps8        7059-7060    ///
  byte    looking_cps8           7061-7062    ///
  byte    wantjob_cps8           7063-7064    ///
  byte    whyunemp_cps8          7065-7066    ///
  byte    whyleft_cps8           7067-7068    ///
  byte    wnlwnilf_cps8          7069-7070    ///
  byte    intenfwk_cps8          7071-7072    ///
  byte    retired_cps8           7073-7074    ///
  byte    fullpart               7075-7076    ///
  int     uhrsworkt              7077-7080    ///
  int     uhrswork1              7081-7083    ///
  int     uhrswork2              7084-7086    ///
  double  earnweek               7087-7093    ///
  byte    paidhour               7094-7095    ///
  byte    earnrpt                7096-7097    ///
  double  hourwage               7098-7102    ///
  int     hrsatrate              7103-7105    ///
  byte    otusual                7106-7107    ///
  double  otpay                  7108-7114    ///
  byte    cpsupdate              7115-7116    ///
  byte    fullpart_cps8          7117-7118    ///
  int     uhrsworkt_cps8         7119-7122    ///
  int     uhrswork1_cps8         7123-7125    ///
  int     uhrswork2_cps8         7126-7128    ///
  int     hrsworkt_cps8          7129-7132    ///
  int     hrswork1_cps8          7133-7135    ///
  int     hrswork2_cps8          7136-7138    ///
  double  earnweek_cps8          7139-7145    ///
  byte    earnrpt_cps8           7146-7147    ///
  double  hourwage_cps8          7148-7152    ///
  byte    paidhour_cps8          7153-7154    ///
  int     hrsatrate_cps8         7155-7157    ///
  byte    otusual_cps8           7158-7159    ///
  double  otpay_cps8             7160-7166    ///
  byte    fwk_emplr              7167-7168    ///
  byte    fwk_pubag              7169-7170    ///
  byte    fwk_pvtag              7171-7172    ///
  byte    fwk_relate             7173-7174    ///
  byte    fwk_school             7175-7176    ///
  byte    fwk_resume             7177-7178    ///
  byte    fwk_union              7179-7180    ///
  byte    fwk_ads                7181-7182    ///
  byte    fwk_othera             7183-7184    ///
  byte    fwk_readads            7185-7186    ///
  byte    fwk_jobprgm            7187-7188    ///
  byte    fwk_nothing            7189-7190    ///
  byte    fwk_otherp             7191-7192    ///
  byte    fwk_emplr_cps8         7193-7194    ///
  byte    fwk_pubag_cps8         7195-7196    ///
  byte    fwk_pvtag_cps8         7197-7198    ///
  byte    fwk_relate_cps8        7199-7200    ///
  byte    fwk_school_cps8        7201-7202    ///
  byte    fwk_resume_cps8        7203-7204    ///
  byte    fwk_union_cps8         7205-7206    ///
  byte    fwk_ads_cps8           7207-7208    ///
  byte    fwk_othera_cps8        7209-7210    ///
  byte    fwk_readads_cps8       7211-7212    ///
  byte    fwk_jobprgm_cps8       7213-7214    ///
  byte    fwk_nothing_cps8       7215-7216    ///
  byte    fwk_otherp_cps8        7217-7218    ///
  byte    spousepres             7219-7220    ///
  int     spage                  7221-7223    ///
  int     spsex                  7224-7226    ///
  int     sprace                 7227-7230    ///
  int     sphispan               7231-7234    ///
  int     speduc                 7235-7237    ///
  byte    spempnot               7238-7239    ///
  byte    spempstat              7240-7241    ///
  int     spusualhrs             7242-7244    ///
  double  spearnweek             7245-7251    ///
  byte    kidund18               7252-7253    ///
  byte    hh_numownkids          7254-7255    ///
  byte    kidund13               7256-7257    ///
  byte    kidund1                7258-7259    ///
  byte    kid1to2                7260-7261    ///
  byte    kid3to5                7262-7263    ///
  byte    kid6to12               7264-7265    ///
  byte    kid13to17              7266-7267    ///
  byte    dtrund18               7268-7269    ///
  byte    dtrund1                7270-7271    ///
  byte    dtr1to2                7272-7273    ///
  byte    dtr3to5                7274-7275    ///
  byte    dtr6to12               7276-7277    ///
  byte    dtr13to17              7278-7279    ///
  byte    sonund18               7280-7281    ///
  byte    sonund1                7282-7283    ///
  byte    son1to2                7284-7285    ///
  byte    son3to5                7286-7287    ///
  byte    son6to12               7288-7289    ///
  byte    son13to17              7290-7291    ///
  byte    nonhhchild             7292-7293    ///
  byte    nosccrsn1              7294-7295    ///
  byte    nosccrsn2              7296-7297    ///
  long    scc_all                7298-7302    ///
  long    scc_own                7303-7307    ///
  long    scc_hh                 7308-7312    ///
  long    scc_hhnhhown           7313-7317    ///
  long    scc_ownhh              7318-7322    ///
  int     scc_ownnhh             7323-7326    ///
  long    scc_nownhh             7327-7331    ///
  long    scc_nownnhh            7332-7336    ///
  byte    eh_resp                7337-7338    ///
  int     ped                    7339-7342    ///
  long    sed_drink              7343-7347    ///
  int     sed_eat                7348-7351    ///
  byte    foodshop               7352-7353    ///
  byte    mealprep               7354-7355    ///
  byte    soda                   7356-7357    ///
  byte    dietsoda               7358-7359    ///
  byte    milk                   7360-7361    ///
  byte    meat                   7362-7363    ///
  byte    store                  7364-7365    ///
  byte    streason               7366-7367    ///
  byte    exercise               7368-7369    ///
  byte    exfreq                 7370-7371    ///
  byte    fastfd                 7372-7373    ///
  byte    fastfdfreq             7374-7375    ///
  byte    alldaydrk              7376-7377    ///
  byte    fdtherm                7378-7379    ///
  byte    alldayeat              7380-7381    ///
  byte    enoughfd               7382-7383    ///
  byte    anysecdrk              7384-7385    ///
  byte    anyseceat              7386-7387    ///
  byte    schlbrk                7388-7389    ///
  byte    schllnch               7390-7391    ///
  byte    diffany                7392-7393    ///
  byte    diffcare               7394-7395    ///
  byte    diffeye                7396-7397    ///
  byte    diffhear               7398-7399    ///
  byte    diffmob                7400-7401    ///
  byte    diffphys               7402-7403    ///
  byte    diffrem                7404-7405    ///
  int     introdate              7406-7408    ///
  int     intromonth             7409-7411    ///
  long    introyear              7412-7416    ///
  byte    atusdp                 7417-7418    ///
  byte    otherlang              7419-7420    ///
  byte    incent                 7421-7422    ///
  int     totact                 7423-7425    ///
  double  avgdur                 7426-7432    ///
  int     dataqual               7433-7436    ///
  int     outcome                7437-7440    ///
  int     outcome_alt            7441-7444    ///
  str     intid                  7445-7448    ///
  double  cpsidp                 7449-7462    ///
  byte    wb_resp                7463-7464    ///
  byte    rested                 7465-7466    ///
  byte    highbp                 7467-7468    ///
  byte    painmed                7469-7470    ///
  int     wbeligtime             7471-7474    ///
  double  wbwt                   7475-7489    ///
  byte    wbtypical              7490-7491    ///
  int     wbladder               7492-7494    ///
  double  rwbwt_1                7495-7509    ///
  double  rwbwt_2                7510-7524    ///
  double  rwbwt_3                7525-7539    ///
  double  rwbwt_4                7540-7554    ///
  double  rwbwt_5                7555-7569    ///
  double  rwbwt_6                7570-7584    ///
  double  rwbwt_7                7585-7599    ///
  double  rwbwt_8                7600-7614    ///
  double  rwbwt_9                7615-7629    ///
  double  rwbwt_10               7630-7644    ///
  double  rwbwt_11               7645-7659    ///
  double  rwbwt_12               7660-7674    ///
  double  rwbwt_13               7675-7689    ///
  double  rwbwt_14               7690-7704    ///
  double  rwbwt_15               7705-7719    ///
  double  rwbwt_16               7720-7734    ///
  double  rwbwt_17               7735-7749    ///
  double  rwbwt_18               7750-7764    ///
  double  rwbwt_19               7765-7779    ///
  double  rwbwt_20               7780-7794    ///
  double  rwbwt_21               7795-7809    ///
  double  rwbwt_22               7810-7824    ///
  double  rwbwt_23               7825-7839    ///
  double  rwbwt_24               7840-7854    ///
  double  rwbwt_25               7855-7869    ///
  double  rwbwt_26               7870-7884    ///
  double  rwbwt_27               7885-7899    ///
  double  rwbwt_28               7900-7914    ///
  double  rwbwt_29               7915-7929    ///
  double  rwbwt_30               7930-7944    ///
  double  rwbwt_31               7945-7959    ///
  double  rwbwt_32               7960-7974    ///
  double  rwbwt_33               7975-7989    ///
  double  rwbwt_34               7990-8004    ///
  double  rwbwt_35               8005-8019    ///
  double  rwbwt_36               8020-8034    ///
  double  rwbwt_37               8035-8049    ///
  double  rwbwt_38               8050-8064    ///
  double  rwbwt_39               8065-8079    ///
  double  rwbwt_40               8080-8094    ///
  double  rwbwt_41               8095-8109    ///
  double  rwbwt_42               8110-8124    ///
  double  rwbwt_43               8125-8139    ///
  double  rwbwt_44               8140-8154    ///
  double  rwbwt_45               8155-8169    ///
  double  rwbwt_46               8170-8184    ///
  double  rwbwt_47               8185-8199    ///
  double  rwbwt_48               8200-8214    ///
  double  rwbwt_49               8215-8229    ///
  double  rwbwt_50               8230-8244    ///
  double  rwbwt_51               8245-8259    ///
  double  rwbwt_52               8260-8274    ///
  double  rwbwt_53               8275-8289    ///
  double  rwbwt_54               8290-8304    ///
  double  rwbwt_55               8305-8319    ///
  double  rwbwt_56               8320-8334    ///
  double  rwbwt_57               8335-8349    ///
  double  rwbwt_58               8350-8364    ///
  double  rwbwt_59               8365-8379    ///
  double  rwbwt_60               8380-8394    ///
  double  rwbwt_61               8395-8409    ///
  double  rwbwt_62               8410-8424    ///
  double  rwbwt_63               8425-8439    ///
  double  rwbwt_64               8440-8454    ///
  double  rwbwt_65               8455-8469    ///
  double  rwbwt_66               8470-8484    ///
  double  rwbwt_67               8485-8499    ///
  double  rwbwt_68               8500-8514    ///
  double  rwbwt_69               8515-8529    ///
  double  rwbwt_70               8530-8544    ///
  double  rwbwt_71               8545-8559    ///
  double  rwbwt_72               8560-8574    ///
  double  rwbwt_73               8575-8589    ///
  double  rwbwt_74               8590-8604    ///
  double  rwbwt_75               8605-8619    ///
  double  rwbwt_76               8620-8634    ///
  double  rwbwt_77               8635-8649    ///
  double  rwbwt_78               8650-8664    ///
  double  rwbwt_79               8665-8679    ///
  double  rwbwt_80               8680-8694    ///
  double  rwbwt_81               8695-8709    ///
  double  rwbwt_82               8710-8724    ///
  double  rwbwt_83               8725-8739    ///
  double  rwbwt_84               8740-8754    ///
  double  rwbwt_85               8755-8769    ///
  double  rwbwt_86               8770-8784    ///
  double  rwbwt_87               8785-8799    ///
  double  rwbwt_88               8800-8814    ///
  double  rwbwt_89               8815-8829    ///
  double  rwbwt_90               8830-8844    ///
  double  rwbwt_91               8845-8859    ///
  double  rwbwt_92               8860-8874    ///
  double  rwbwt_93               8875-8889    ///
  double  rwbwt_94               8890-8904    ///
  double  rwbwt_95               8905-8919    ///
  double  rwbwt_96               8920-8934    ///
  double  rwbwt_97               8935-8949    ///
  double  rwbwt_98               8950-8964    ///
  double  rwbwt_99               8965-8979    ///
  double  rwbwt_100              8980-8994    ///
  double  rwbwt_101              8995-9009    ///
  double  rwbwt_102              9010-9024    ///
  double  rwbwt_103              9025-9039    ///
  double  rwbwt_104              9040-9054    ///
  double  rwbwt_105              9055-9069    ///
  double  rwbwt_106              9070-9084    ///
  double  rwbwt_107              9085-9099    ///
  double  rwbwt_108              9100-9114    ///
  double  rwbwt_109              9115-9129    ///
  double  rwbwt_110              9130-9144    ///
  double  rwbwt_111              9145-9159    ///
  double  rwbwt_112              9160-9174    ///
  double  rwbwt_113              9175-9189    ///
  double  rwbwt_114              9190-9204    ///
  double  rwbwt_115              9205-9219    ///
  double  rwbwt_116              9220-9234    ///
  double  rwbwt_117              9235-9249    ///
  double  rwbwt_118              9250-9264    ///
  double  rwbwt_119              9265-9279    ///
  double  rwbwt_120              9280-9294    ///
  double  rwbwt_121              9295-9309    ///
  double  rwbwt_122              9310-9324    ///
  double  rwbwt_123              9325-9339    ///
  double  rwbwt_124              9340-9354    ///
  double  rwbwt_125              9355-9369    ///
  double  rwbwt_126              9370-9384    ///
  double  rwbwt_127              9385-9399    ///
  double  rwbwt_128              9400-9414    ///
  double  rwbwt_129              9415-9429    ///
  double  rwbwt_130              9430-9444    ///
  double  rwbwt_131              9445-9459    ///
  double  rwbwt_132              9460-9474    ///
  double  rwbwt_133              9475-9489    ///
  double  rwbwt_134              9490-9504    ///
  double  rwbwt_135              9505-9519    ///
  double  rwbwt_136              9520-9534    ///
  double  rwbwt_137              9535-9549    ///
  double  rwbwt_138              9550-9564    ///
  double  rwbwt_139              9565-9579    ///
  double  rwbwt_140              9580-9594    ///
  double  rwbwt_141              9595-9609    ///
  double  rwbwt_142              9610-9624    ///
  double  rwbwt_143              9625-9639    ///
  double  rwbwt_144              9640-9654    ///
  double  rwbwt_145              9655-9669    ///
  double  rwbwt_146              9670-9684    ///
  double  rwbwt_147              9685-9699    ///
  double  rwbwt_148              9700-9714    ///
  double  rwbwt_149              9715-9729    ///
  double  rwbwt_150              9730-9744    ///
  double  rwbwt_151              9745-9759    ///
  double  rwbwt_152              9760-9774    ///
  double  rwbwt_153              9775-9789    ///
  double  rwbwt_154              9790-9804    ///
  double  rwbwt_155              9805-9819    ///
  double  rwbwt_156              9820-9834    ///
  double  rwbwt_157              9835-9849    ///
  double  rwbwt_158              9850-9864    ///
  double  rwbwt_159              9865-9879    ///
  double  rwbwt_160              9880-9894    ///
  byte    rwbwt                  9895-9895    ///
  byte    aspouse                9896-9897    ///
  byte    pecohab                9898-9899    ///
  byte    pelnmom                9900-9901    ///
  byte    pelndad                9902-9903    ///
  byte    pemomtyp               9904-9905    ///
  byte    pedadtyp               9906-9907    ///
  byte    pepar1typ              9908-9909    ///
  byte    pepar2typ              9910-9911    ///
  byte    pelnpar1               9912-9913    ///
  byte    pelnpar2               9914-9915    ///
  byte    lv_resp                9916-9917    ///
  byte    rcvpdlv                9918-9919    ///
  byte    rcvpdself              9920-9921    ///
  byte    rcvpdfam               9922-9923    ///
  byte    rcvpdchcare            9924-9925    ///
  byte    rcvpdelcare            9928-9929    ///
  byte    rcvpdvac               9930-9931    ///
  byte    rcvpdpers              9932-9933    ///
  byte    rcvpdchild             9934-9935    ///
  byte    rcvunpdlv              9936-9937    ///
  byte    rcvunself              9938-9939    ///
  byte    rcvunfam               9940-9941    ///
  byte    rcvunchcare            9942-9943    ///
  byte    rcvunelcare            9944-9945    ///
  byte    rcvunvac               9946-9947    ///
  byte    rcvunpers              9948-9949    ///
  byte    rcvunchild             9950-9951    ///
  byte    evtkunlv               9952-9953    ///
  byte    evtkunself             9954-9955    ///
  byte    evtkunfam              9956-9957    ///
  byte    evtkunchcare           9958-9959    ///
  byte    evtkunelcare           9960-9961    ///
  byte    evtkunvac              9962-9963    ///
  byte    evtkunpers             9964-9965    ///
  byte    evtkunchild            9966-9967    ///
  byte    leavelw                9968-9969    ///
  int     qleavelw               9970-9972    ///
  byte    nolvlwwork             9973-9974    ///
  byte    nolvlwsave             9975-9976    ///
  byte    nolvlwdeny             9977-9978    ///
  byte    nolvlwlack             9979-9980    ///
  byte    nolvlwfear             9981-9982    ///
  byte    nolvlwinc              9983-9984    ///
  byte    nolvlwoth              9985-9986    ///
  byte    canvary                9987-9988    ///
  byte    varylw                 9989-9990    ///
  byte    tklvwk                 9991-9992    ///
  double  lvwt                   9993-10008   ///
  int     hrslvwk                10009-10012  ///
  int     tklvwkmain             10013-10016  ///
  int     tklvyest               10017-10020  ///
  int     painlwk                10021-10023  ///
  byte    rlvwt                  10024-10024  ///
  double  rlvwt_1                10025-10040  ///
  double  rlvwt_2                10041-10056  ///
  double  rlvwt_3                10057-10072  ///
  double  rlvwt_4                10073-10088  ///
  double  rlvwt_5                10089-10104  ///
  double  rlvwt_6                10105-10120  ///
  double  rlvwt_7                10121-10136  ///
  double  rlvwt_8                10137-10152  ///
  double  rlvwt_9                10153-10168  ///
  double  rlvwt_10               10169-10184  ///
  double  rlvwt_11               10185-10200  ///
  double  rlvwt_12               10201-10216  ///
  double  rlvwt_13               10217-10232  ///
  double  rlvwt_14               10233-10248  ///
  double  rlvwt_15               10249-10264  ///
  double  rlvwt_16               10265-10280  ///
  double  rlvwt_17               10281-10296  ///
  double  rlvwt_18               10297-10312  ///
  double  rlvwt_19               10313-10328  ///
  double  rlvwt_20               10329-10344  ///
  double  rlvwt_21               10345-10360  ///
  double  rlvwt_22               10361-10376  ///
  double  rlvwt_23               10377-10392  ///
  double  rlvwt_24               10393-10408  ///
  double  rlvwt_25               10409-10424  ///
  double  rlvwt_26               10425-10440  ///
  double  rlvwt_27               10441-10456  ///
  double  rlvwt_28               10457-10472  ///
  double  rlvwt_29               10473-10488  ///
  double  rlvwt_30               10489-10504  ///
  double  rlvwt_31               10505-10520  ///
  double  rlvwt_32               10521-10536  ///
  double  rlvwt_33               10537-10552  ///
  double  rlvwt_34               10553-10568  ///
  double  rlvwt_35               10569-10584  ///
  double  rlvwt_36               10585-10600  ///
  double  rlvwt_37               10601-10616  ///
  double  rlvwt_38               10617-10632  ///
  double  rlvwt_39               10633-10648  ///
  double  rlvwt_40               10649-10664  ///
  double  rlvwt_41               10665-10680  ///
  double  rlvwt_42               10681-10696  ///
  double  rlvwt_43               10697-10712  ///
  double  rlvwt_44               10713-10728  ///
  double  rlvwt_45               10729-10744  ///
  double  rlvwt_46               10745-10760  ///
  double  rlvwt_47               10761-10776  ///
  double  rlvwt_48               10777-10792  ///
  double  rlvwt_49               10793-10808  ///
  double  rlvwt_50               10809-10824  ///
  double  rlvwt_51               10825-10840  ///
  double  rlvwt_52               10841-10856  ///
  double  rlvwt_53               10857-10872  ///
  double  rlvwt_54               10873-10888  ///
  double  rlvwt_55               10889-10904  ///
  double  rlvwt_56               10905-10920  ///
  double  rlvwt_57               10921-10936  ///
  double  rlvwt_58               10937-10952  ///
  double  rlvwt_59               10953-10968  ///
  double  rlvwt_60               10969-10984  ///
  double  rlvwt_61               10985-11000  ///
  double  rlvwt_62               11001-11016  ///
  double  rlvwt_63               11017-11032  ///
  double  rlvwt_64               11033-11048  ///
  double  rlvwt_65               11049-11064  ///
  double  rlvwt_66               11065-11080  ///
  double  rlvwt_67               11081-11096  ///
  double  rlvwt_68               11097-11112  ///
  double  rlvwt_69               11113-11128  ///
  double  rlvwt_70               11129-11144  ///
  double  rlvwt_71               11145-11160  ///
  double  rlvwt_72               11161-11176  ///
  double  rlvwt_73               11177-11192  ///
  double  rlvwt_74               11193-11208  ///
  double  rlvwt_75               11209-11224  ///
  double  rlvwt_76               11225-11240  ///
  double  rlvwt_77               11241-11256  ///
  double  rlvwt_78               11257-11272  ///
  double  rlvwt_79               11273-11288  ///
  double  rlvwt_80               11289-11304  ///
  double  rlvwt_81               11305-11320  ///
  double  rlvwt_82               11321-11336  ///
  double  rlvwt_83               11337-11352  ///
  double  rlvwt_84               11353-11368  ///
  double  rlvwt_85               11369-11384  ///
  double  rlvwt_86               11385-11400  ///
  double  rlvwt_87               11401-11416  ///
  double  rlvwt_88               11417-11432  ///
  double  rlvwt_89               11433-11448  ///
  double  rlvwt_90               11449-11464  ///
  double  rlvwt_91               11465-11480  ///
  double  rlvwt_92               11481-11496  ///
  double  rlvwt_93               11497-11512  ///
  double  rlvwt_94               11513-11528  ///
  double  rlvwt_95               11529-11544  ///
  double  rlvwt_96               11545-11560  ///
  double  rlvwt_97               11561-11576  ///
  double  rlvwt_98               11577-11592  ///
  double  rlvwt_99               11593-11608  ///
  double  rlvwt_100              11609-11624  ///
  double  rlvwt_101              11625-11640  ///
  double  rlvwt_102              11641-11656  ///
  double  rlvwt_103              11657-11672  ///
  double  rlvwt_104              11673-11688  ///
  double  rlvwt_105              11689-11704  ///
  double  rlvwt_106              11705-11720  ///
  double  rlvwt_107              11721-11736  ///
  double  rlvwt_108              11737-11752  ///
  double  rlvwt_109              11753-11768  ///
  double  rlvwt_110              11769-11784  ///
  double  rlvwt_111              11785-11800  ///
  double  rlvwt_112              11801-11816  ///
  double  rlvwt_113              11817-11832  ///
  double  rlvwt_114              11833-11848  ///
  double  rlvwt_115              11849-11864  ///
  double  rlvwt_116              11865-11880  ///
  double  rlvwt_117              11881-11896  ///
  double  rlvwt_118              11897-11912  ///
  double  rlvwt_119              11913-11928  ///
  double  rlvwt_120              11929-11944  ///
  double  rlvwt_121              11945-11960  ///
  double  rlvwt_122              11961-11976  ///
  double  rlvwt_123              11977-11992  ///
  double  rlvwt_124              11993-12008  ///
  double  rlvwt_125              12009-12024  ///
  double  rlvwt_126              12025-12040  ///
  double  rlvwt_127              12041-12056  ///
  double  rlvwt_128              12057-12072  ///
  double  rlvwt_129              12073-12088  ///
  double  rlvwt_130              12089-12104  ///
  double  rlvwt_131              12105-12120  ///
  double  rlvwt_132              12121-12136  ///
  double  rlvwt_133              12137-12152  ///
  double  rlvwt_134              12153-12168  ///
  double  rlvwt_135              12169-12184  ///
  double  rlvwt_136              12185-12200  ///
  double  rlvwt_137              12201-12216  ///
  double  rlvwt_138              12217-12232  ///
  double  rlvwt_139              12233-12248  ///
  double  rlvwt_140              12249-12264  ///
  double  rlvwt_141              12265-12280  ///
  double  rlvwt_142              12281-12296  ///
  double  rlvwt_143              12297-12312  ///
  double  rlvwt_144              12313-12328  ///
  double  rlvwt_145              12329-12344  ///
  double  rlvwt_146              12345-12360  ///
  double  rlvwt_147              12361-12376  ///
  double  rlvwt_148              12377-12392  ///
  double  rlvwt_149              12393-12408  ///
  double  rlvwt_150              12409-12424  ///
  double  rlvwt_151              12425-12440  ///
  double  rlvwt_152              12441-12456  ///
  double  rlvwt_153              12457-12472  ///
  double  rlvwt_154              12473-12488  ///
  double  rlvwt_155              12489-12504  ///
  double  rlvwt_156              12505-12520  ///
  double  rlvwt_157              12521-12536  ///
  double  rlvwt_158              12537-12552  ///
  double  rlvwt_159              12553-12568  ///
  double  rlvwt_160              12569-12584  ///
  byte    ecyest                 12585-12586  ///
  byte    ecprior                12587-12588  ///
  byte    ecnum                  12589-12590  ///
  byte    ecfreq                 12591-12592  ///
  byte    sploc                  12593-12594  ///
  byte    momloc                 12595-12596  ///
  byte    momloc2                12597-12598  ///
  byte    poploc                 12599-12600  ///
  byte    poploc2                12601-12602  ///
  byte    sprule                 12603-12604  ///
  byte    momrule                12605-12606  ///
  byte    mom2rule               12607-12608  ///
  byte    poprule                12609-12610  ///
  byte    pop2rule               12611-12612  ///
  byte    eldch                  12613-12614  ///
  byte    yngch                  12615-12616  ///
  byte    nchild                 12617-12617  ///
  byte    nsibs                  12618-12618  ///
  byte    nchlt5                 12619-12619  ///
  byte    tkrcvunlvev            12620-12621  ///
  byte    tklvwkpd               12622-12623  ///
  byte    tklvwkrsn              12624-12625  ///
  byte    tklvwktype             12626-12627  ///
  byte    wrkflexhrs             12628-12629  ///
  byte    wrkflexfreq            12630-12631  ///
  byte    wrkflexpol             12632-12633  ///
  byte    wrkflexinput           12634-12635  ///
  byte    wrkflexadv             12636-12637  ///
  byte    wrkschedus             12638-12639  ///
  byte    wrkshiftrsn            12640-12641  ///
  byte    wrknumus               12642-12643  ///
  byte    wrkschedwk             12644-12645  ///
  byte    wrkschedmon            12646-12647  ///
  byte    wrkschedtue            12648-12649  ///
  byte    wrkschedwed            12650-12651  ///
  byte    wrkschedthu            12652-12653  ///
  byte    wrkschedfri            12654-12655  ///
  byte    wrkschedsat            12656-12657  ///
  byte    wrkschedsun            12658-12659  ///
  byte    wrkschedvary           12660-12661  ///
  double  wrkdaysavg             12662-12665  ///
  byte    wrkhomeable            12666-12667  ///
  byte    wrkhomeev              12668-12669  ///
  byte    wrkhomepd              12670-12671  ///
  byte    wrkhomersn             12672-12673  ///
  byte    wrkhomedays            12674-12675  ///
  byte    wrkhomeoften           12676-12677  ///
  byte    noleavemo              12678-12679  ///
  byte    notklvmochild          12680-12681  ///
  byte    notklvmochcare         12682-12683  ///
  byte    notklvmoelcare         12684-12685  ///
  byte    notklvmopers           12686-12687  ///
  byte    notklvmofam            12688-12689  ///
  byte    notklvmoself           12690-12691  ///
  byte    notklvmooth            12692-12693  ///
  byte    notklvmovac            12694-12695  ///
  byte    nolvmoinc              12696-12697  ///
  byte    nolvmoshft             12698-12699  ///
  byte    nolvmodeny             12700-12701  ///
  byte    nolvmoalt              12702-12703  ///
  byte    nolvmofear             12704-12705  ///
  byte    nolvmolack             12706-12707  ///
  byte    nolvmooth              12708-12709  ///
  byte    nolvmosave             12710-12711  ///
  byte    nolvmowork             12712-12713  ///
  double  rwt20_1                12714-12728  ///
  double  rwt20_2                12729-12743  ///
  double  rwt20_3                12744-12758  ///
  double  rwt20_4                12759-12773  ///
  double  rwt20_5                12774-12788  ///
  double  rwt20_6                12789-12803  ///
  double  rwt20_7                12804-12818  ///
  double  rwt20_8                12819-12833  ///
  double  rwt20_9                12834-12848  ///
  double  rwt20_10               12849-12863  ///
  double  rwt20_11               12864-12878  ///
  double  rwt20_12               12879-12893  ///
  double  rwt20_13               12894-12908  ///
  double  rwt20_14               12909-12923  ///
  double  rwt20_15               12924-12938  ///
  double  rwt20_16               12939-12953  ///
  double  rwt20_17               12954-12968  ///
  double  rwt20_18               12969-12983  ///
  double  rwt20_19               12984-12998  ///
  double  rwt20_20               12999-13013  ///
  double  rwt20_21               13014-13028  ///
  double  rwt20_22               13029-13043  ///
  double  rwt20_23               13044-13058  ///
  double  rwt20_24               13059-13073  ///
  double  rwt20_25               13074-13088  ///
  double  rwt20_26               13089-13103  ///
  double  rwt20_27               13104-13118  ///
  double  rwt20_28               13119-13133  ///
  double  rwt20_29               13134-13148  ///
  double  rwt20_30               13149-13163  ///
  double  rwt20_31               13164-13178  ///
  double  rwt20_32               13179-13193  ///
  double  rwt20_33               13194-13208  ///
  double  rwt20_34               13209-13223  ///
  double  rwt20_35               13224-13238  ///
  double  rwt20_36               13239-13253  ///
  double  rwt20_37               13254-13268  ///
  double  rwt20_38               13269-13283  ///
  double  rwt20_39               13284-13298  ///
  double  rwt20_40               13299-13313  ///
  double  rwt20_41               13314-13328  ///
  double  rwt20_42               13329-13343  ///
  double  rwt20_43               13344-13358  ///
  double  rwt20_44               13359-13373  ///
  double  rwt20_45               13374-13388  ///
  double  rwt20_46               13389-13403  ///
  double  rwt20_47               13404-13418  ///
  double  rwt20_48               13419-13433  ///
  double  rwt20_49               13434-13448  ///
  double  rwt20_50               13449-13463  ///
  double  rwt20_51               13464-13478  ///
  double  rwt20_52               13479-13493  ///
  double  rwt20_53               13494-13508  ///
  double  rwt20_54               13509-13523  ///
  double  rwt20_55               13524-13538  ///
  double  rwt20_56               13539-13553  ///
  double  rwt20_57               13554-13568  ///
  double  rwt20_58               13569-13583  ///
  double  rwt20_59               13584-13598  ///
  double  rwt20_60               13599-13613  ///
  double  rwt20_61               13614-13628  ///
  double  rwt20_62               13629-13643  ///
  double  rwt20_63               13644-13658  ///
  double  rwt20_64               13659-13673  ///
  double  rwt20_65               13674-13688  ///
  double  rwt20_66               13689-13703  ///
  double  rwt20_67               13704-13718  ///
  double  rwt20_68               13719-13733  ///
  double  rwt20_69               13734-13748  ///
  double  rwt20_70               13749-13763  ///
  double  rwt20_71               13764-13778  ///
  double  rwt20_72               13779-13793  ///
  double  rwt20_73               13794-13808  ///
  double  rwt20_74               13809-13823  ///
  double  rwt20_75               13824-13838  ///
  double  rwt20_76               13839-13853  ///
  double  rwt20_77               13854-13868  ///
  double  rwt20_78               13869-13883  ///
  double  rwt20_79               13884-13898  ///
  double  rwt20_80               13899-13913  ///
  double  rwt20_81               13914-13928  ///
  double  rwt20_82               13929-13943  ///
  double  rwt20_83               13944-13958  ///
  double  rwt20_84               13959-13973  ///
  double  rwt20_85               13974-13988  ///
  double  rwt20_86               13989-14003  ///
  double  rwt20_87               14004-14018  ///
  double  rwt20_88               14019-14033  ///
  double  rwt20_89               14034-14048  ///
  double  rwt20_90               14049-14063  ///
  double  rwt20_91               14064-14078  ///
  double  rwt20_92               14079-14093  ///
  double  rwt20_93               14094-14108  ///
  double  rwt20_94               14109-14123  ///
  double  rwt20_95               14124-14138  ///
  double  rwt20_96               14139-14153  ///
  double  rwt20_97               14154-14168  ///
  double  rwt20_98               14169-14183  ///
  double  rwt20_99               14184-14198  ///
  double  rwt20_100              14199-14213  ///
  double  rwt20_101              14214-14228  ///
  double  rwt20_102              14229-14243  ///
  double  rwt20_103              14244-14258  ///
  double  rwt20_104              14259-14273  ///
  double  rwt20_105              14274-14288  ///
  double  rwt20_106              14289-14303  ///
  double  rwt20_107              14304-14318  ///
  double  rwt20_108              14319-14333  ///
  double  rwt20_109              14334-14348  ///
  double  rwt20_110              14349-14363  ///
  double  rwt20_111              14364-14378  ///
  double  rwt20_112              14379-14393  ///
  double  rwt20_113              14394-14408  ///
  double  rwt20_114              14409-14423  ///
  double  rwt20_115              14424-14438  ///
  double  rwt20_116              14439-14453  ///
  double  rwt20_117              14454-14468  ///
  double  rwt20_118              14469-14483  ///
  double  rwt20_119              14484-14498  ///
  double  rwt20_120              14499-14513  ///
  double  rwt20_121              14514-14528  ///
  double  rwt20_122              14529-14543  ///
  double  rwt20_123              14544-14558  ///
  double  rwt20_124              14559-14573  ///
  double  rwt20_125              14574-14588  ///
  double  rwt20_126              14589-14603  ///
  double  rwt20_127              14604-14618  ///
  double  rwt20_128              14619-14633  ///
  double  rwt20_129              14634-14648  ///
  double  rwt20_130              14649-14663  ///
  double  rwt20_131              14664-14678  ///
  double  rwt20_132              14679-14693  ///
  double  rwt20_133              14694-14708  ///
  double  rwt20_134              14709-14723  ///
  double  rwt20_135              14724-14738  ///
  double  rwt20_136              14739-14753  ///
  double  rwt20_137              14754-14768  ///
  double  rwt20_138              14769-14783  ///
  double  rwt20_139              14784-14798  ///
  double  rwt20_140              14799-14813  ///
  double  rwt20_141              14814-14828  ///
  double  rwt20_142              14829-14843  ///
  double  rwt20_143              14844-14858  ///
  double  rwt20_144              14859-14873  ///
  double  rwt20_145              14874-14888  ///
  double  rwt20_146              14889-14903  ///
  double  rwt20_147              14904-14918  ///
  double  rwt20_148              14919-14933  ///
  double  rwt20_149              14934-14948  ///
  double  rwt20_150              14949-14963  ///
  double  rwt20_151              14964-14978  ///
  double  rwt20_152              14979-14993  ///
  double  rwt20_153              14994-15008  ///
  double  rwt20_154              15009-15023  ///
  double  rwt20_155              15024-15038  ///
  double  rwt20_156              15039-15053  ///
  double  rwt20_157              15054-15068  ///
  double  rwt20_158              15069-15083  ///
  double  rwt20_159              15084-15098  ///
  double  rwt20_160              15099-15113  ///
  byte    covidtelew             15114-15115  ///
  byte    covidpaid              15116-15117  ///
  byte    covidunaw              15118-15119  ///
  byte    covidlook              15120-15121  ///
  byte    covidmed               15122-15123  ///
  byte    dietqual               15124-15124  ///
  byte    exint                  15125-15125  ///
  byte    fastfdate              15126-15126  ///
  byte    groshpamt              15127-15127  ///
  byte    groshpenjoy            15128-15128  ///
  byte    ongroshpfreq           15129-15130  ///
  byte    ongroshpget            15131-15131  ///
  byte    ongroshpwhy            15132-15133  ///
  byte    ongroshpwhynot         15134-15135  ///
  byte    prpmelamt              15136-15136  ///
  byte    prpmelenjoy            15137-15137  ///
  int     act_carehh             15138-15141  ///
  int     act_carenhh            15142-15145  ///
  int     act_educ               15146-15149  ///
  int     act_food               15150-15153  ///
  int     act_govserv            15154-15157  ///
  int     act_hhact              15158-15161  ///
  int     act_hhserv             15162-15165  ///
  int     act_pcare              15166-15169  ///
  int     act_phone              15170-15173  ///
  int     act_profserv           15174-15177  ///
  int     act_purch              15178-15181  ///
  int     act_relig              15182-15185  ///
  int     act_social             15186-15189  ///
  int     act_sports             15190-15193  ///
  int     act_travel             15194-15197  ///
  int     act_vol                15198-15201  ///
  int     act_work               15202-15205  ///
  int     bls_carehh             15206-15209  ///
  int     bls_carehh_adult       15210-15213  ///
  int     bls_carehh_kid         15214-15217  ///
  int     bls_carehh_kideduc     15218-15221  ///
  int     bls_carehh_kidhealth   15222-15225  ///
  int     bls_carehh_kidother    15226-15229  ///
  int     bls_carehh_travel      15230-15233  ///
  int     bls_carenhh            15234-15237  ///
  int     bls_carenhh_adult      15238-15241  ///
  int     bls_carenhh_adultcare  15242-15245  ///
  int     bls_carenhh_adulthelp  15246-15249  ///
  int     bls_carenhh_kid        15250-15253  ///
  int     bls_carenhh_travel     15254-15257  ///
  int     bls_comm               15258-15261  ///
  int     bls_comm_msg           15262-15265  ///
  int     bls_comm_msgemail      15266-15269  ///
  int     bls_comm_msgmail       15270-15273  ///
  int     bls_comm_tele          15274-15277  ///
  int     bls_comm_travel        15278-15281  ///
  int     bls_educ               15282-15285  ///
  int     bls_educ_class         15286-15289  ///
  int     bls_educ_hwork         15290-15293  ///
  int     bls_educ_travel        15294-15297  ///
  int     bls_food               15298-15301  ///
  int     bls_food_food          15302-15305  ///
  int     bls_food_travel        15306-15309  ///
  int     bls_hhact              15310-15313  ///
  int     bls_hhact_exter        15314-15317  ///
  int     bls_hhact_food         15318-15321  ///
  int     bls_hhact_hhmgmt       15322-15325  ///
  int     bls_hhact_hwork        15326-15329  ///
  int     bls_hhact_inter        15330-15333  ///
  int     bls_hhact_lawn         15334-15337  ///
  int     bls_hhact_pet          15338-15341  ///
  int     bls_hhact_tool         15342-15345  ///
  int     bls_hhact_travel       15346-15349  ///
  int     bls_hhact_vehic        15350-15353  ///
  int     bls_leis               15354-15357  ///
  int     bls_leis_arts          15358-15361  ///
  int     bls_leis_attend        15362-15365  ///
  int     bls_leis_attsport      15366-15369  ///
  int     bls_leis_partsport     15370-15373  ///
  int     bls_leis_relax         15374-15377  ///
  int     bls_leis_soc           15378-15381  ///
  int     bls_leis_soccom        15382-15385  ///
  int     bls_leis_soccomex      15386-15389  ///
  int     bls_leis_sport         15390-15393  ///
  int     bls_leis_travel        15394-15397  ///
  int     bls_leis_tv            15398-15401  ///
  int     bls_other              15402-15405  ///
  int     bls_pcare              15406-15409  ///
  int     bls_pcare_act          15410-15413  ///
  int     bls_pcare_groom        15414-15417  ///
  int     bls_pcare_health       15418-15421  ///
  int     bls_pcare_sleep        15422-15425  ///
  int     bls_pcare_travel       15426-15429  ///
  int     bls_purch              15430-15433  ///
  int     bls_purch_bank         15434-15437  ///
  int     bls_purch_cons         15438-15441  ///
  int     bls_purch_gov          15442-15445  ///
  int     bls_purch_groc         15446-15449  ///
  int     bls_purch_health       15450-15453  ///
  int     bls_purch_hhserv       15454-15457  ///
  int     bls_purch_home         15458-15461  ///
  int     bls_purch_pcare        15462-15465  ///
  int     bls_purch_prof         15466-15469  ///
  int     bls_purch_travel       15470-15473  ///
  int     bls_purch_vehic        15474-15477  ///
  int     bls_social             15478-15481  ///
  int     bls_social_admin       15482-15485  ///
  int     bls_social_attend      15486-15489  ///
  int     bls_social_civic       15490-15493  ///
  int     bls_social_culture     15494-15497  ///
  int     bls_social_mainten     15498-15501  ///
  int     bls_social_relig       15502-15505  ///
  int     bls_social_socserv     15506-15509  ///
  int     bls_social_travel      15510-15513  ///
  int     bls_social_vol         15514-15517  ///
  int     bls_social_volact      15518-15521  ///
  int     bls_work               15522-15525  ///
  int     bls_work_other         15526-15529  ///
  int     bls_work_search        15530-15533  ///
  int     bls_work_travel        15534-15537  ///
  int     bls_work_working       15538-15541  ///
  int     bls_work_workrel       15542-15545  ///
  int     ers_assoc              15546-15549  ///
  int     ers_prim               15550-15553  ///
  using `"atus_00001.dat"'
gen  _line_num = _n
drop if rectype != 2
sort _line_num
save __temp_ipums_hier_2.dta, replace

clear
quietly infix                                 ///
  byte    rectype                1-1          ///
  long    year                   2-6          ///
  double  caseid                 7-20         ///
  long    serial                 21-27        ///
  byte    actline                28-29        ///
  long    activity               30-35        ///
  int     where                  36-39        ///
  int     duration_ext           40-43        ///
  int     duration               44-47        ///
  double  metvalue               48-52        ///
  int     scc_hhnhhown_ln        53-56        ///
  long    scc_all_ln             57-61        ///
  long    scc_nownnhh_ln         62-66        ///
  int     scc_hh_ln              67-70        ///
  int     scc_nownhh_ln          71-74        ///
  int     scc_own_ln             75-78        ///
  int     scc_ownhh_ln           79-82        ///
  int     scc_ownnhh_ln          83-86        ///
  long    sed_drink_ln           87-91        ///
  int     sed_eat_ln             92-95        ///
  int     sed_all_ln             96-99        ///
  int     sec_all_ln             100-103      ///
  byte    who_ask                104-105      ///
  str     start                  106-113      ///
  str     stop                   114-121      ///
  byte    scpain                 122-123      ///
  byte    schappy                124-125      ///
  byte    scsad                  126-127      ///
  byte    sctired                128-129      ///
  byte    scstress               130-131      ///
  byte    interact               132-133      ///
  byte    meaning                134-135      ///
  byte    osad                   136-137      ///
  byte    ohappy                 138-139      ///
  byte    opain                  140-141      ///
  byte    otired                 142-143      ///
  byte    ostress                144-145      ///
  byte    wbelig                 146-146      ///
  double  awbwt                  147-161      ///
  double  rawbwt_1               162-177      ///
  double  rawbwt_2               178-193      ///
  double  rawbwt_3               194-209      ///
  double  rawbwt_4               210-225      ///
  double  rawbwt_5               226-241      ///
  double  rawbwt_6               242-257      ///
  double  rawbwt_7               258-273      ///
  double  rawbwt_8               274-289      ///
  double  rawbwt_9               290-305      ///
  double  rawbwt_10              306-321      ///
  double  rawbwt_11              322-337      ///
  double  rawbwt_12              338-353      ///
  double  rawbwt_13              354-369      ///
  double  rawbwt_14              370-385      ///
  double  rawbwt_15              386-401      ///
  double  rawbwt_16              402-417      ///
  double  rawbwt_17              418-433      ///
  double  rawbwt_18              434-449      ///
  double  rawbwt_19              450-465      ///
  double  rawbwt_20              466-481      ///
  double  rawbwt_21              482-497      ///
  double  rawbwt_22              498-513      ///
  double  rawbwt_23              514-529      ///
  double  rawbwt_24              530-545      ///
  double  rawbwt_25              546-561      ///
  double  rawbwt_26              562-577      ///
  double  rawbwt_27              578-593      ///
  double  rawbwt_28              594-609      ///
  double  rawbwt_29              610-625      ///
  double  rawbwt_30              626-641      ///
  double  rawbwt_31              642-657      ///
  double  rawbwt_32              658-673      ///
  double  rawbwt_33              674-689      ///
  double  rawbwt_34              690-705      ///
  double  rawbwt_35              706-721      ///
  double  rawbwt_36              722-737      ///
  double  rawbwt_37              738-753      ///
  double  rawbwt_38              754-769      ///
  double  rawbwt_39              770-785      ///
  double  rawbwt_40              786-801      ///
  double  rawbwt_41              802-817      ///
  double  rawbwt_42              818-833      ///
  double  rawbwt_43              834-849      ///
  double  rawbwt_44              850-865      ///
  double  rawbwt_45              866-881      ///
  double  rawbwt_46              882-897      ///
  double  rawbwt_47              898-913      ///
  double  rawbwt_48              914-929      ///
  double  rawbwt_49              930-945      ///
  double  rawbwt_50              946-961      ///
  double  rawbwt_51              962-977      ///
  double  rawbwt_52              978-993      ///
  double  rawbwt_53              994-1009     ///
  double  rawbwt_54              1010-1025    ///
  double  rawbwt_55              1026-1041    ///
  double  rawbwt_56              1042-1057    ///
  double  rawbwt_57              1058-1073    ///
  double  rawbwt_58              1074-1089    ///
  double  rawbwt_59              1090-1105    ///
  double  rawbwt_60              1106-1121    ///
  double  rawbwt_61              1122-1137    ///
  double  rawbwt_62              1138-1153    ///
  double  rawbwt_63              1154-1169    ///
  double  rawbwt_64              1170-1185    ///
  double  rawbwt_65              1186-1201    ///
  double  rawbwt_66              1202-1217    ///
  double  rawbwt_67              1218-1233    ///
  double  rawbwt_68              1234-1249    ///
  double  rawbwt_69              1250-1265    ///
  double  rawbwt_70              1266-1281    ///
  double  rawbwt_71              1282-1297    ///
  double  rawbwt_72              1298-1313    ///
  double  rawbwt_73              1314-1329    ///
  double  rawbwt_74              1330-1345    ///
  double  rawbwt_75              1346-1361    ///
  double  rawbwt_76              1362-1377    ///
  double  rawbwt_77              1378-1393    ///
  double  rawbwt_78              1394-1409    ///
  double  rawbwt_79              1410-1425    ///
  double  rawbwt_80              1426-1441    ///
  double  rawbwt_81              1442-1457    ///
  double  rawbwt_82              1458-1473    ///
  double  rawbwt_83              1474-1489    ///
  double  rawbwt_84              1490-1505    ///
  double  rawbwt_85              1506-1521    ///
  double  rawbwt_86              1522-1537    ///
  double  rawbwt_87              1538-1553    ///
  double  rawbwt_88              1554-1569    ///
  double  rawbwt_89              1570-1585    ///
  double  rawbwt_90              1586-1601    ///
  double  rawbwt_91              1602-1617    ///
  double  rawbwt_92              1618-1633    ///
  double  rawbwt_93              1634-1649    ///
  double  rawbwt_94              1650-1665    ///
  double  rawbwt_95              1666-1681    ///
  double  rawbwt_96              1682-1697    ///
  double  rawbwt_97              1698-1713    ///
  double  rawbwt_98              1714-1729    ///
  double  rawbwt_99              1730-1745    ///
  double  rawbwt_100             1746-1761    ///
  double  rawbwt_101             1762-1777    ///
  double  rawbwt_102             1778-1793    ///
  double  rawbwt_103             1794-1809    ///
  double  rawbwt_104             1810-1825    ///
  double  rawbwt_105             1826-1841    ///
  double  rawbwt_106             1842-1857    ///
  double  rawbwt_107             1858-1873    ///
  double  rawbwt_108             1874-1889    ///
  double  rawbwt_109             1890-1905    ///
  double  rawbwt_110             1906-1921    ///
  double  rawbwt_111             1922-1937    ///
  double  rawbwt_112             1938-1953    ///
  double  rawbwt_113             1954-1969    ///
  double  rawbwt_114             1970-1985    ///
  double  rawbwt_115             1986-2001    ///
  double  rawbwt_116             2002-2017    ///
  double  rawbwt_117             2018-2033    ///
  double  rawbwt_118             2034-2049    ///
  double  rawbwt_119             2050-2065    ///
  double  rawbwt_120             2066-2081    ///
  double  rawbwt_121             2082-2097    ///
  double  rawbwt_122             2098-2113    ///
  double  rawbwt_123             2114-2129    ///
  double  rawbwt_124             2130-2145    ///
  double  rawbwt_125             2146-2161    ///
  double  rawbwt_126             2162-2177    ///
  double  rawbwt_127             2178-2193    ///
  double  rawbwt_128             2194-2209    ///
  double  rawbwt_129             2210-2225    ///
  double  rawbwt_130             2226-2241    ///
  double  rawbwt_131             2242-2257    ///
  double  rawbwt_132             2258-2273    ///
  double  rawbwt_133             2274-2289    ///
  double  rawbwt_134             2290-2305    ///
  double  rawbwt_135             2306-2321    ///
  double  rawbwt_136             2322-2337    ///
  double  rawbwt_137             2338-2353    ///
  double  rawbwt_138             2354-2369    ///
  double  rawbwt_139             2370-2385    ///
  double  rawbwt_140             2386-2401    ///
  double  rawbwt_141             2402-2417    ///
  double  rawbwt_142             2418-2433    ///
  double  rawbwt_143             2434-2449    ///
  double  rawbwt_144             2450-2465    ///
  double  rawbwt_145             2466-2481    ///
  double  rawbwt_146             2482-2497    ///
  double  rawbwt_147             2498-2513    ///
  double  rawbwt_148             2514-2529    ///
  double  rawbwt_149             2530-2545    ///
  double  rawbwt_150             2546-2561    ///
  double  rawbwt_151             2562-2577    ///
  double  rawbwt_152             2578-2593    ///
  double  rawbwt_153             2594-2609    ///
  double  rawbwt_154             2610-2625    ///
  double  rawbwt_155             2626-2641    ///
  double  rawbwt_156             2642-2657    ///
  double  rawbwt_157             2658-2673    ///
  double  rawbwt_158             2674-2689    ///
  double  rawbwt_159             2690-2705    ///
  double  rawbwt_160             2706-2721    ///
  byte    rawbwt                 2722-2722    ///
  using `"atus_00001.dat"'
gen  _line_num = _n
drop if rectype != 3
sort _line_num
save __temp_ipums_hier_3.dta, replace

clear
quietly infix                                 ///
  byte    rectype                1-1          ///
  long    year                   2-6          ///
  double  caseid                 7-20         ///
  long    serial                 21-27        ///
  byte    actlinew               28-29        ///
  int     linenow                30-32        ///
  byte    wholine                33-34        ///
  int     relatew                35-38        ///
  int     relatewu               39-42        ///
  int     agew                   43-45        ///
  byte    sexw                   46-47        ///
  using `"atus_00001.dat"'
gen  _line_num = _n
drop if rectype != 4
sort _line_num
save __temp_ipums_hier_4.dta, replace

clear
quietly infix                                 ///
  byte    rectype                1-1          ///
  long    year                   2-6          ///
  double  caseid                 7-20         ///
  long    serial                 21-27        ///
  byte    linenor                28-29        ///
  byte    hh_ec                  30-30        ///
  int     relater                31-33        ///
  byte    ecage                  34-35        ///
  int     ecyear                 36-38        ///
  byte    ecmonth                39-40        ///
  using `"atus_00001.dat"'
gen  _line_num = _n
drop if rectype != 5
sort _line_num
save __temp_ipums_hier_5.dta, replace

clear
use __temp_ipums_hier_1.dta
append using __temp_ipums_hier_2.dta
append using __temp_ipums_hier_3.dta
append using __temp_ipums_hier_4.dta
append using __temp_ipums_hier_5.dta
sort _line_num
drop _line_num
erase __temp_ipums_hier_1.dta
erase __temp_ipums_hier_2.dta
erase __temp_ipums_hier_3.dta
erase __temp_ipums_hier_4.dta
erase __temp_ipums_hier_5.dta

replace wt20                  = wt20                  / 1000000
replace wt03                  = wt03                  / 1000000
replace rwt06_1               = rwt06_1               / 1000000
replace rwt06_2               = rwt06_2               / 1000000
replace rwt06_3               = rwt06_3               / 1000000
replace rwt06_4               = rwt06_4               / 1000000
replace rwt06_5               = rwt06_5               / 1000000
replace rwt06_6               = rwt06_6               / 1000000
replace rwt06_7               = rwt06_7               / 1000000
replace rwt06_8               = rwt06_8               / 1000000
replace rwt06_9               = rwt06_9               / 1000000
replace rwt06_10              = rwt06_10              / 1000000
replace rwt06_11              = rwt06_11              / 1000000
replace rwt06_12              = rwt06_12              / 1000000
replace rwt06_13              = rwt06_13              / 1000000
replace rwt06_14              = rwt06_14              / 1000000
replace rwt06_15              = rwt06_15              / 1000000
replace rwt06_16              = rwt06_16              / 1000000
replace rwt06_17              = rwt06_17              / 1000000
replace rwt06_18              = rwt06_18              / 1000000
replace rwt06_19              = rwt06_19              / 1000000
replace rwt06_20              = rwt06_20              / 1000000
replace rwt06_21              = rwt06_21              / 1000000
replace rwt06_22              = rwt06_22              / 1000000
replace rwt06_23              = rwt06_23              / 1000000
replace rwt06_24              = rwt06_24              / 1000000
replace rwt06_25              = rwt06_25              / 1000000
replace rwt06_26              = rwt06_26              / 1000000
replace rwt06_27              = rwt06_27              / 1000000
replace rwt06_28              = rwt06_28              / 1000000
replace rwt06_29              = rwt06_29              / 1000000
replace rwt06_30              = rwt06_30              / 1000000
replace rwt06_31              = rwt06_31              / 1000000
replace rwt06_32              = rwt06_32              / 1000000
replace rwt06_33              = rwt06_33              / 1000000
replace rwt06_34              = rwt06_34              / 1000000
replace rwt06_35              = rwt06_35              / 1000000
replace rwt06_36              = rwt06_36              / 1000000
replace rwt06_37              = rwt06_37              / 1000000
replace rwt06_38              = rwt06_38              / 1000000
replace rwt06_39              = rwt06_39              / 1000000
replace rwt06_40              = rwt06_40              / 1000000
replace rwt06_41              = rwt06_41              / 1000000
replace rwt06_42              = rwt06_42              / 1000000
replace rwt06_43              = rwt06_43              / 1000000
replace rwt06_44              = rwt06_44              / 1000000
replace rwt06_45              = rwt06_45              / 1000000
replace rwt06_46              = rwt06_46              / 1000000
replace rwt06_47              = rwt06_47              / 1000000
replace rwt06_48              = rwt06_48              / 1000000
replace rwt06_49              = rwt06_49              / 1000000
replace rwt06_50              = rwt06_50              / 1000000
replace rwt06_51              = rwt06_51              / 1000000
replace rwt06_52              = rwt06_52              / 1000000
replace rwt06_53              = rwt06_53              / 1000000
replace rwt06_54              = rwt06_54              / 1000000
replace rwt06_55              = rwt06_55              / 1000000
replace rwt06_56              = rwt06_56              / 1000000
replace rwt06_57              = rwt06_57              / 1000000
replace rwt06_58              = rwt06_58              / 1000000
replace rwt06_59              = rwt06_59              / 1000000
replace rwt06_60              = rwt06_60              / 1000000
replace rwt06_61              = rwt06_61              / 1000000
replace rwt06_62              = rwt06_62              / 1000000
replace rwt06_63              = rwt06_63              / 1000000
replace rwt06_64              = rwt06_64              / 1000000
replace rwt06_65              = rwt06_65              / 1000000
replace rwt06_66              = rwt06_66              / 1000000
replace rwt06_67              = rwt06_67              / 1000000
replace rwt06_68              = rwt06_68              / 1000000
replace rwt06_69              = rwt06_69              / 1000000
replace rwt06_70              = rwt06_70              / 1000000
replace rwt06_71              = rwt06_71              / 1000000
replace rwt06_72              = rwt06_72              / 1000000
replace rwt06_73              = rwt06_73              / 1000000
replace rwt06_74              = rwt06_74              / 1000000
replace rwt06_75              = rwt06_75              / 1000000
replace rwt06_76              = rwt06_76              / 1000000
replace rwt06_77              = rwt06_77              / 1000000
replace rwt06_78              = rwt06_78              / 1000000
replace rwt06_79              = rwt06_79              / 1000000
replace rwt06_80              = rwt06_80              / 1000000
replace rwt06_81              = rwt06_81              / 1000000
replace rwt06_82              = rwt06_82              / 1000000
replace rwt06_83              = rwt06_83              / 1000000
replace rwt06_84              = rwt06_84              / 1000000
replace rwt06_85              = rwt06_85              / 1000000
replace rwt06_86              = rwt06_86              / 1000000
replace rwt06_87              = rwt06_87              / 1000000
replace rwt06_88              = rwt06_88              / 1000000
replace rwt06_89              = rwt06_89              / 1000000
replace rwt06_90              = rwt06_90              / 1000000
replace rwt06_91              = rwt06_91              / 1000000
replace rwt06_92              = rwt06_92              / 1000000
replace rwt06_93              = rwt06_93              / 1000000
replace rwt06_94              = rwt06_94              / 1000000
replace rwt06_95              = rwt06_95              / 1000000
replace rwt06_96              = rwt06_96              / 1000000
replace rwt06_97              = rwt06_97              / 1000000
replace rwt06_98              = rwt06_98              / 1000000
replace rwt06_99              = rwt06_99              / 1000000
replace rwt06_100             = rwt06_100             / 1000000
replace rwt06_101             = rwt06_101             / 1000000
replace rwt06_102             = rwt06_102             / 1000000
replace rwt06_103             = rwt06_103             / 1000000
replace rwt06_104             = rwt06_104             / 1000000
replace rwt06_105             = rwt06_105             / 1000000
replace rwt06_106             = rwt06_106             / 1000000
replace rwt06_107             = rwt06_107             / 1000000
replace rwt06_108             = rwt06_108             / 1000000
replace rwt06_109             = rwt06_109             / 1000000
replace rwt06_110             = rwt06_110             / 1000000
replace rwt06_111             = rwt06_111             / 1000000
replace rwt06_112             = rwt06_112             / 1000000
replace rwt06_113             = rwt06_113             / 1000000
replace rwt06_114             = rwt06_114             / 1000000
replace rwt06_115             = rwt06_115             / 1000000
replace rwt06_116             = rwt06_116             / 1000000
replace rwt06_117             = rwt06_117             / 1000000
replace rwt06_118             = rwt06_118             / 1000000
replace rwt06_119             = rwt06_119             / 1000000
replace rwt06_120             = rwt06_120             / 1000000
replace rwt06_121             = rwt06_121             / 1000000
replace rwt06_122             = rwt06_122             / 1000000
replace rwt06_123             = rwt06_123             / 1000000
replace rwt06_124             = rwt06_124             / 1000000
replace rwt06_125             = rwt06_125             / 1000000
replace rwt06_126             = rwt06_126             / 1000000
replace rwt06_127             = rwt06_127             / 1000000
replace rwt06_128             = rwt06_128             / 1000000
replace rwt06_129             = rwt06_129             / 1000000
replace rwt06_130             = rwt06_130             / 1000000
replace rwt06_131             = rwt06_131             / 1000000
replace rwt06_132             = rwt06_132             / 1000000
replace rwt06_133             = rwt06_133             / 1000000
replace rwt06_134             = rwt06_134             / 1000000
replace rwt06_135             = rwt06_135             / 1000000
replace rwt06_136             = rwt06_136             / 1000000
replace rwt06_137             = rwt06_137             / 1000000
replace rwt06_138             = rwt06_138             / 1000000
replace rwt06_139             = rwt06_139             / 1000000
replace rwt06_140             = rwt06_140             / 1000000
replace rwt06_141             = rwt06_141             / 1000000
replace rwt06_142             = rwt06_142             / 1000000
replace rwt06_143             = rwt06_143             / 1000000
replace rwt06_144             = rwt06_144             / 1000000
replace rwt06_145             = rwt06_145             / 1000000
replace rwt06_146             = rwt06_146             / 1000000
replace rwt06_147             = rwt06_147             / 1000000
replace rwt06_148             = rwt06_148             / 1000000
replace rwt06_149             = rwt06_149             / 1000000
replace rwt06_150             = rwt06_150             / 1000000
replace rwt06_151             = rwt06_151             / 1000000
replace rwt06_152             = rwt06_152             / 1000000
replace rwt06_153             = rwt06_153             / 1000000
replace rwt06_154             = rwt06_154             / 1000000
replace rwt06_155             = rwt06_155             / 1000000
replace rwt06_156             = rwt06_156             / 1000000
replace rwt06_157             = rwt06_157             / 1000000
replace rwt06_158             = rwt06_158             / 1000000
replace rwt06_159             = rwt06_159             / 1000000
replace rwt06_160             = rwt06_160             / 1000000
replace rbwt_1                = rbwt_1                / 1000000
replace rbwt_2                = rbwt_2                / 1000000
replace rbwt_3                = rbwt_3                / 1000000
replace rbwt_4                = rbwt_4                / 1000000
replace rbwt_5                = rbwt_5                / 1000000
replace rbwt_6                = rbwt_6                / 1000000
replace rbwt_7                = rbwt_7                / 1000000
replace rbwt_8                = rbwt_8                / 1000000
replace rbwt_9                = rbwt_9                / 1000000
replace rbwt_10               = rbwt_10               / 1000000
replace rbwt_11               = rbwt_11               / 1000000
replace rbwt_12               = rbwt_12               / 1000000
replace rbwt_13               = rbwt_13               / 1000000
replace rbwt_14               = rbwt_14               / 1000000
replace rbwt_15               = rbwt_15               / 1000000
replace rbwt_16               = rbwt_16               / 1000000
replace rbwt_17               = rbwt_17               / 1000000
replace rbwt_18               = rbwt_18               / 1000000
replace rbwt_19               = rbwt_19               / 1000000
replace rbwt_20               = rbwt_20               / 1000000
replace rbwt_21               = rbwt_21               / 1000000
replace rbwt_22               = rbwt_22               / 1000000
replace rbwt_23               = rbwt_23               / 1000000
replace rbwt_24               = rbwt_24               / 1000000
replace rbwt_25               = rbwt_25               / 1000000
replace rbwt_26               = rbwt_26               / 1000000
replace rbwt_27               = rbwt_27               / 1000000
replace rbwt_28               = rbwt_28               / 1000000
replace rbwt_29               = rbwt_29               / 1000000
replace rbwt_30               = rbwt_30               / 1000000
replace rbwt_31               = rbwt_31               / 1000000
replace rbwt_32               = rbwt_32               / 1000000
replace rbwt_33               = rbwt_33               / 1000000
replace rbwt_34               = rbwt_34               / 1000000
replace rbwt_35               = rbwt_35               / 1000000
replace rbwt_36               = rbwt_36               / 1000000
replace rbwt_37               = rbwt_37               / 1000000
replace rbwt_38               = rbwt_38               / 1000000
replace rbwt_39               = rbwt_39               / 1000000
replace rbwt_40               = rbwt_40               / 1000000
replace rbwt_41               = rbwt_41               / 1000000
replace rbwt_42               = rbwt_42               / 1000000
replace rbwt_43               = rbwt_43               / 1000000
replace rbwt_44               = rbwt_44               / 1000000
replace rbwt_45               = rbwt_45               / 1000000
replace rbwt_46               = rbwt_46               / 1000000
replace rbwt_47               = rbwt_47               / 1000000
replace rbwt_48               = rbwt_48               / 1000000
replace rbwt_49               = rbwt_49               / 1000000
replace rbwt_50               = rbwt_50               / 1000000
replace rbwt_51               = rbwt_51               / 1000000
replace rbwt_52               = rbwt_52               / 1000000
replace rbwt_53               = rbwt_53               / 1000000
replace rbwt_54               = rbwt_54               / 1000000
replace rbwt_55               = rbwt_55               / 1000000
replace rbwt_56               = rbwt_56               / 1000000
replace rbwt_57               = rbwt_57               / 1000000
replace rbwt_58               = rbwt_58               / 1000000
replace rbwt_59               = rbwt_59               / 1000000
replace rbwt_60               = rbwt_60               / 1000000
replace rbwt_61               = rbwt_61               / 1000000
replace rbwt_62               = rbwt_62               / 1000000
replace rbwt_63               = rbwt_63               / 1000000
replace rbwt_64               = rbwt_64               / 1000000
replace rbwt_65               = rbwt_65               / 1000000
replace rbwt_66               = rbwt_66               / 1000000
replace rbwt_67               = rbwt_67               / 1000000
replace rbwt_68               = rbwt_68               / 1000000
replace rbwt_69               = rbwt_69               / 1000000
replace rbwt_70               = rbwt_70               / 1000000
replace rbwt_71               = rbwt_71               / 1000000
replace rbwt_72               = rbwt_72               / 1000000
replace rbwt_73               = rbwt_73               / 1000000
replace rbwt_74               = rbwt_74               / 1000000
replace rbwt_75               = rbwt_75               / 1000000
replace rbwt_76               = rbwt_76               / 1000000
replace rbwt_77               = rbwt_77               / 1000000
replace rbwt_78               = rbwt_78               / 1000000
replace rbwt_79               = rbwt_79               / 1000000
replace rbwt_80               = rbwt_80               / 1000000
replace rbwt_81               = rbwt_81               / 1000000
replace rbwt_82               = rbwt_82               / 1000000
replace rbwt_83               = rbwt_83               / 1000000
replace rbwt_84               = rbwt_84               / 1000000
replace rbwt_85               = rbwt_85               / 1000000
replace rbwt_86               = rbwt_86               / 1000000
replace rbwt_87               = rbwt_87               / 1000000
replace rbwt_88               = rbwt_88               / 1000000
replace rbwt_89               = rbwt_89               / 1000000
replace rbwt_90               = rbwt_90               / 1000000
replace rbwt_91               = rbwt_91               / 1000000
replace rbwt_92               = rbwt_92               / 1000000
replace rbwt_93               = rbwt_93               / 1000000
replace rbwt_94               = rbwt_94               / 1000000
replace rbwt_95               = rbwt_95               / 1000000
replace rbwt_96               = rbwt_96               / 1000000
replace rbwt_97               = rbwt_97               / 1000000
replace rbwt_98               = rbwt_98               / 1000000
replace rbwt_99               = rbwt_99               / 1000000
replace rbwt_100              = rbwt_100              / 1000000
replace rbwt_101              = rbwt_101              / 1000000
replace rbwt_102              = rbwt_102              / 1000000
replace rbwt_103              = rbwt_103              / 1000000
replace rbwt_104              = rbwt_104              / 1000000
replace rbwt_105              = rbwt_105              / 1000000
replace rbwt_106              = rbwt_106              / 1000000
replace rbwt_107              = rbwt_107              / 1000000
replace rbwt_108              = rbwt_108              / 1000000
replace rbwt_109              = rbwt_109              / 1000000
replace rbwt_110              = rbwt_110              / 1000000
replace rbwt_111              = rbwt_111              / 1000000
replace rbwt_112              = rbwt_112              / 1000000
replace rbwt_113              = rbwt_113              / 1000000
replace rbwt_114              = rbwt_114              / 1000000
replace rbwt_115              = rbwt_115              / 1000000
replace rbwt_116              = rbwt_116              / 1000000
replace rbwt_117              = rbwt_117              / 1000000
replace rbwt_118              = rbwt_118              / 1000000
replace rbwt_119              = rbwt_119              / 1000000
replace rbwt_120              = rbwt_120              / 1000000
replace rbwt_121              = rbwt_121              / 1000000
replace rbwt_122              = rbwt_122              / 1000000
replace rbwt_123              = rbwt_123              / 1000000
replace rbwt_124              = rbwt_124              / 1000000
replace rbwt_125              = rbwt_125              / 1000000
replace rbwt_126              = rbwt_126              / 1000000
replace rbwt_127              = rbwt_127              / 1000000
replace rbwt_128              = rbwt_128              / 1000000
replace rbwt_129              = rbwt_129              / 1000000
replace rbwt_130              = rbwt_130              / 1000000
replace rbwt_131              = rbwt_131              / 1000000
replace rbwt_132              = rbwt_132              / 1000000
replace rbwt_133              = rbwt_133              / 1000000
replace rbwt_134              = rbwt_134              / 1000000
replace rbwt_135              = rbwt_135              / 1000000
replace rbwt_136              = rbwt_136              / 1000000
replace rbwt_137              = rbwt_137              / 1000000
replace rbwt_138              = rbwt_138              / 1000000
replace rbwt_139              = rbwt_139              / 1000000
replace rbwt_140              = rbwt_140              / 1000000
replace rbwt_141              = rbwt_141              / 1000000
replace rbwt_142              = rbwt_142              / 1000000
replace rbwt_143              = rbwt_143              / 1000000
replace rbwt_144              = rbwt_144              / 1000000
replace rbwt_145              = rbwt_145              / 1000000
replace rbwt_146              = rbwt_146              / 1000000
replace rbwt_147              = rbwt_147              / 1000000
replace rbwt_148              = rbwt_148              / 1000000
replace rbwt_149              = rbwt_149              / 1000000
replace rbwt_150              = rbwt_150              / 1000000
replace rbwt_151              = rbwt_151              / 1000000
replace rbwt_152              = rbwt_152              / 1000000
replace rbwt_153              = rbwt_153              / 1000000
replace rbwt_154              = rbwt_154              / 1000000
replace rbwt_155              = rbwt_155              / 1000000
replace rbwt_156              = rbwt_156              / 1000000
replace rbwt_157              = rbwt_157              / 1000000
replace rbwt_158              = rbwt_158              / 1000000
replace rbwt_159              = rbwt_159              / 1000000
replace rbwt_160              = rbwt_160              / 1000000
replace rehwt_1               = rehwt_1               / 1000000
replace rehwt_2               = rehwt_2               / 1000000
replace rehwt_3               = rehwt_3               / 1000000
replace rehwt_4               = rehwt_4               / 1000000
replace rehwt_5               = rehwt_5               / 1000000
replace rehwt_6               = rehwt_6               / 1000000
replace rehwt_7               = rehwt_7               / 1000000
replace rehwt_8               = rehwt_8               / 1000000
replace rehwt_9               = rehwt_9               / 1000000
replace rehwt_10              = rehwt_10              / 1000000
replace rehwt_11              = rehwt_11              / 1000000
replace rehwt_12              = rehwt_12              / 1000000
replace rehwt_13              = rehwt_13              / 1000000
replace rehwt_14              = rehwt_14              / 1000000
replace rehwt_15              = rehwt_15              / 1000000
replace rehwt_16              = rehwt_16              / 1000000
replace rehwt_17              = rehwt_17              / 1000000
replace rehwt_18              = rehwt_18              / 1000000
replace rehwt_19              = rehwt_19              / 1000000
replace rehwt_20              = rehwt_20              / 1000000
replace rehwt_21              = rehwt_21              / 1000000
replace rehwt_22              = rehwt_22              / 1000000
replace rehwt_23              = rehwt_23              / 1000000
replace rehwt_24              = rehwt_24              / 1000000
replace rehwt_25              = rehwt_25              / 1000000
replace rehwt_26              = rehwt_26              / 1000000
replace rehwt_27              = rehwt_27              / 1000000
replace rehwt_28              = rehwt_28              / 1000000
replace rehwt_29              = rehwt_29              / 1000000
replace rehwt_30              = rehwt_30              / 1000000
replace rehwt_31              = rehwt_31              / 1000000
replace rehwt_32              = rehwt_32              / 1000000
replace rehwt_33              = rehwt_33              / 1000000
replace rehwt_34              = rehwt_34              / 1000000
replace rehwt_35              = rehwt_35              / 1000000
replace rehwt_36              = rehwt_36              / 1000000
replace rehwt_37              = rehwt_37              / 1000000
replace rehwt_38              = rehwt_38              / 1000000
replace rehwt_39              = rehwt_39              / 1000000
replace rehwt_40              = rehwt_40              / 1000000
replace rehwt_41              = rehwt_41              / 1000000
replace rehwt_42              = rehwt_42              / 1000000
replace rehwt_43              = rehwt_43              / 1000000
replace rehwt_44              = rehwt_44              / 1000000
replace rehwt_45              = rehwt_45              / 1000000
replace rehwt_46              = rehwt_46              / 1000000
replace rehwt_47              = rehwt_47              / 1000000
replace rehwt_48              = rehwt_48              / 1000000
replace rehwt_49              = rehwt_49              / 1000000
replace rehwt_50              = rehwt_50              / 1000000
replace rehwt_51              = rehwt_51              / 1000000
replace rehwt_52              = rehwt_52              / 1000000
replace rehwt_53              = rehwt_53              / 1000000
replace rehwt_54              = rehwt_54              / 1000000
replace rehwt_55              = rehwt_55              / 1000000
replace rehwt_56              = rehwt_56              / 1000000
replace rehwt_57              = rehwt_57              / 1000000
replace rehwt_58              = rehwt_58              / 1000000
replace rehwt_59              = rehwt_59              / 1000000
replace rehwt_60              = rehwt_60              / 1000000
replace rehwt_61              = rehwt_61              / 1000000
replace rehwt_62              = rehwt_62              / 1000000
replace rehwt_63              = rehwt_63              / 1000000
replace rehwt_64              = rehwt_64              / 1000000
replace rehwt_65              = rehwt_65              / 1000000
replace rehwt_66              = rehwt_66              / 1000000
replace rehwt_67              = rehwt_67              / 1000000
replace rehwt_68              = rehwt_68              / 1000000
replace rehwt_69              = rehwt_69              / 1000000
replace rehwt_70              = rehwt_70              / 1000000
replace rehwt_71              = rehwt_71              / 1000000
replace rehwt_72              = rehwt_72              / 1000000
replace rehwt_73              = rehwt_73              / 1000000
replace rehwt_74              = rehwt_74              / 1000000
replace rehwt_75              = rehwt_75              / 1000000
replace rehwt_76              = rehwt_76              / 1000000
replace rehwt_77              = rehwt_77              / 1000000
replace rehwt_78              = rehwt_78              / 1000000
replace rehwt_79              = rehwt_79              / 1000000
replace rehwt_80              = rehwt_80              / 1000000
replace rehwt_81              = rehwt_81              / 1000000
replace rehwt_82              = rehwt_82              / 1000000
replace rehwt_83              = rehwt_83              / 1000000
replace rehwt_84              = rehwt_84              / 1000000
replace rehwt_85              = rehwt_85              / 1000000
replace rehwt_86              = rehwt_86              / 1000000
replace rehwt_87              = rehwt_87              / 1000000
replace rehwt_88              = rehwt_88              / 1000000
replace rehwt_89              = rehwt_89              / 1000000
replace rehwt_90              = rehwt_90              / 1000000
replace rehwt_91              = rehwt_91              / 1000000
replace rehwt_92              = rehwt_92              / 1000000
replace rehwt_93              = rehwt_93              / 1000000
replace rehwt_94              = rehwt_94              / 1000000
replace rehwt_95              = rehwt_95              / 1000000
replace rehwt_96              = rehwt_96              / 1000000
replace rehwt_97              = rehwt_97              / 1000000
replace rehwt_98              = rehwt_98              / 1000000
replace rehwt_99              = rehwt_99              / 1000000
replace rehwt_100             = rehwt_100             / 1000000
replace rehwt_101             = rehwt_101             / 1000000
replace rehwt_102             = rehwt_102             / 1000000
replace rehwt_103             = rehwt_103             / 1000000
replace rehwt_104             = rehwt_104             / 1000000
replace rehwt_105             = rehwt_105             / 1000000
replace rehwt_106             = rehwt_106             / 1000000
replace rehwt_107             = rehwt_107             / 1000000
replace rehwt_108             = rehwt_108             / 1000000
replace rehwt_109             = rehwt_109             / 1000000
replace rehwt_110             = rehwt_110             / 1000000
replace rehwt_111             = rehwt_111             / 1000000
replace rehwt_112             = rehwt_112             / 1000000
replace rehwt_113             = rehwt_113             / 1000000
replace rehwt_114             = rehwt_114             / 1000000
replace rehwt_115             = rehwt_115             / 1000000
replace rehwt_116             = rehwt_116             / 1000000
replace rehwt_117             = rehwt_117             / 1000000
replace rehwt_118             = rehwt_118             / 1000000
replace rehwt_119             = rehwt_119             / 1000000
replace rehwt_120             = rehwt_120             / 1000000
replace rehwt_121             = rehwt_121             / 1000000
replace rehwt_122             = rehwt_122             / 1000000
replace rehwt_123             = rehwt_123             / 1000000
replace rehwt_124             = rehwt_124             / 1000000
replace rehwt_125             = rehwt_125             / 1000000
replace rehwt_126             = rehwt_126             / 1000000
replace rehwt_127             = rehwt_127             / 1000000
replace rehwt_128             = rehwt_128             / 1000000
replace rehwt_129             = rehwt_129             / 1000000
replace rehwt_130             = rehwt_130             / 1000000
replace rehwt_131             = rehwt_131             / 1000000
replace rehwt_132             = rehwt_132             / 1000000
replace rehwt_133             = rehwt_133             / 1000000
replace rehwt_134             = rehwt_134             / 1000000
replace rehwt_135             = rehwt_135             / 1000000
replace rehwt_136             = rehwt_136             / 1000000
replace rehwt_137             = rehwt_137             / 1000000
replace rehwt_138             = rehwt_138             / 1000000
replace rehwt_139             = rehwt_139             / 1000000
replace rehwt_140             = rehwt_140             / 1000000
replace rehwt_141             = rehwt_141             / 1000000
replace rehwt_142             = rehwt_142             / 1000000
replace rehwt_143             = rehwt_143             / 1000000
replace rehwt_144             = rehwt_144             / 1000000
replace rehwt_145             = rehwt_145             / 1000000
replace rehwt_146             = rehwt_146             / 1000000
replace rehwt_147             = rehwt_147             / 1000000
replace rehwt_148             = rehwt_148             / 1000000
replace rehwt_149             = rehwt_149             / 1000000
replace rehwt_150             = rehwt_150             / 1000000
replace rehwt_151             = rehwt_151             / 1000000
replace rehwt_152             = rehwt_152             / 1000000
replace rehwt_153             = rehwt_153             / 1000000
replace rehwt_154             = rehwt_154             / 1000000
replace rehwt_155             = rehwt_155             / 1000000
replace rehwt_156             = rehwt_156             / 1000000
replace rehwt_157             = rehwt_157             / 1000000
replace rehwt_158             = rehwt_158             / 1000000
replace rehwt_159             = rehwt_159             / 1000000
replace rehwt_160             = rehwt_160             / 1000000
replace earnweek              = earnweek              / 100
replace hourwage              = hourwage              / 100
replace otpay                 = otpay                 / 100
replace earnweek_cps8         = earnweek_cps8         / 100
replace hourwage_cps8         = hourwage_cps8         / 100
replace otpay_cps8            = otpay_cps8            / 100
replace spearnweek            = spearnweek            / 100
replace avgdur                = avgdur                / 10
replace wbwt                  = wbwt                  / 1000000
replace rwbwt_1               = rwbwt_1               / 1000000
replace rwbwt_2               = rwbwt_2               / 1000000
replace rwbwt_3               = rwbwt_3               / 1000000
replace rwbwt_4               = rwbwt_4               / 1000000
replace rwbwt_5               = rwbwt_5               / 1000000
replace rwbwt_6               = rwbwt_6               / 1000000
replace rwbwt_7               = rwbwt_7               / 1000000
replace rwbwt_8               = rwbwt_8               / 1000000
replace rwbwt_9               = rwbwt_9               / 1000000
replace rwbwt_10              = rwbwt_10              / 1000000
replace rwbwt_11              = rwbwt_11              / 1000000
replace rwbwt_12              = rwbwt_12              / 1000000
replace rwbwt_13              = rwbwt_13              / 1000000
replace rwbwt_14              = rwbwt_14              / 1000000
replace rwbwt_15              = rwbwt_15              / 1000000
replace rwbwt_16              = rwbwt_16              / 1000000
replace rwbwt_17              = rwbwt_17              / 1000000
replace rwbwt_18              = rwbwt_18              / 1000000
replace rwbwt_19              = rwbwt_19              / 1000000
replace rwbwt_20              = rwbwt_20              / 1000000
replace rwbwt_21              = rwbwt_21              / 1000000
replace rwbwt_22              = rwbwt_22              / 1000000
replace rwbwt_23              = rwbwt_23              / 1000000
replace rwbwt_24              = rwbwt_24              / 1000000
replace rwbwt_25              = rwbwt_25              / 1000000
replace rwbwt_26              = rwbwt_26              / 1000000
replace rwbwt_27              = rwbwt_27              / 1000000
replace rwbwt_28              = rwbwt_28              / 1000000
replace rwbwt_29              = rwbwt_29              / 1000000
replace rwbwt_30              = rwbwt_30              / 1000000
replace rwbwt_31              = rwbwt_31              / 1000000
replace rwbwt_32              = rwbwt_32              / 1000000
replace rwbwt_33              = rwbwt_33              / 1000000
replace rwbwt_34              = rwbwt_34              / 1000000
replace rwbwt_35              = rwbwt_35              / 1000000
replace rwbwt_36              = rwbwt_36              / 1000000
replace rwbwt_37              = rwbwt_37              / 1000000
replace rwbwt_38              = rwbwt_38              / 1000000
replace rwbwt_39              = rwbwt_39              / 1000000
replace rwbwt_40              = rwbwt_40              / 1000000
replace rwbwt_41              = rwbwt_41              / 1000000
replace rwbwt_42              = rwbwt_42              / 1000000
replace rwbwt_43              = rwbwt_43              / 1000000
replace rwbwt_44              = rwbwt_44              / 1000000
replace rwbwt_45              = rwbwt_45              / 1000000
replace rwbwt_46              = rwbwt_46              / 1000000
replace rwbwt_47              = rwbwt_47              / 1000000
replace rwbwt_48              = rwbwt_48              / 1000000
replace rwbwt_49              = rwbwt_49              / 1000000
replace rwbwt_50              = rwbwt_50              / 1000000
replace rwbwt_51              = rwbwt_51              / 1000000
replace rwbwt_52              = rwbwt_52              / 1000000
replace rwbwt_53              = rwbwt_53              / 1000000
replace rwbwt_54              = rwbwt_54              / 1000000
replace rwbwt_55              = rwbwt_55              / 1000000
replace rwbwt_56              = rwbwt_56              / 1000000
replace rwbwt_57              = rwbwt_57              / 1000000
replace rwbwt_58              = rwbwt_58              / 1000000
replace rwbwt_59              = rwbwt_59              / 1000000
replace rwbwt_60              = rwbwt_60              / 1000000
replace rwbwt_61              = rwbwt_61              / 1000000
replace rwbwt_62              = rwbwt_62              / 1000000
replace rwbwt_63              = rwbwt_63              / 1000000
replace rwbwt_64              = rwbwt_64              / 1000000
replace rwbwt_65              = rwbwt_65              / 1000000
replace rwbwt_66              = rwbwt_66              / 1000000
replace rwbwt_67              = rwbwt_67              / 1000000
replace rwbwt_68              = rwbwt_68              / 1000000
replace rwbwt_69              = rwbwt_69              / 1000000
replace rwbwt_70              = rwbwt_70              / 1000000
replace rwbwt_71              = rwbwt_71              / 1000000
replace rwbwt_72              = rwbwt_72              / 1000000
replace rwbwt_73              = rwbwt_73              / 1000000
replace rwbwt_74              = rwbwt_74              / 1000000
replace rwbwt_75              = rwbwt_75              / 1000000
replace rwbwt_76              = rwbwt_76              / 1000000
replace rwbwt_77              = rwbwt_77              / 1000000
replace rwbwt_78              = rwbwt_78              / 1000000
replace rwbwt_79              = rwbwt_79              / 1000000
replace rwbwt_80              = rwbwt_80              / 1000000
replace rwbwt_81              = rwbwt_81              / 1000000
replace rwbwt_82              = rwbwt_82              / 1000000
replace rwbwt_83              = rwbwt_83              / 1000000
replace rwbwt_84              = rwbwt_84              / 1000000
replace rwbwt_85              = rwbwt_85              / 1000000
replace rwbwt_86              = rwbwt_86              / 1000000
replace rwbwt_87              = rwbwt_87              / 1000000
replace rwbwt_88              = rwbwt_88              / 1000000
replace rwbwt_89              = rwbwt_89              / 1000000
replace rwbwt_90              = rwbwt_90              / 1000000
replace rwbwt_91              = rwbwt_91              / 1000000
replace rwbwt_92              = rwbwt_92              / 1000000
replace rwbwt_93              = rwbwt_93              / 1000000
replace rwbwt_94              = rwbwt_94              / 1000000
replace rwbwt_95              = rwbwt_95              / 1000000
replace rwbwt_96              = rwbwt_96              / 1000000
replace rwbwt_97              = rwbwt_97              / 1000000
replace rwbwt_98              = rwbwt_98              / 1000000
replace rwbwt_99              = rwbwt_99              / 1000000
replace rwbwt_100             = rwbwt_100             / 1000000
replace rwbwt_101             = rwbwt_101             / 1000000
replace rwbwt_102             = rwbwt_102             / 1000000
replace rwbwt_103             = rwbwt_103             / 1000000
replace rwbwt_104             = rwbwt_104             / 1000000
replace rwbwt_105             = rwbwt_105             / 1000000
replace rwbwt_106             = rwbwt_106             / 1000000
replace rwbwt_107             = rwbwt_107             / 1000000
replace rwbwt_108             = rwbwt_108             / 1000000
replace rwbwt_109             = rwbwt_109             / 1000000
replace rwbwt_110             = rwbwt_110             / 1000000
replace rwbwt_111             = rwbwt_111             / 1000000
replace rwbwt_112             = rwbwt_112             / 1000000
replace rwbwt_113             = rwbwt_113             / 1000000
replace rwbwt_114             = rwbwt_114             / 1000000
replace rwbwt_115             = rwbwt_115             / 1000000
replace rwbwt_116             = rwbwt_116             / 1000000
replace rwbwt_117             = rwbwt_117             / 1000000
replace rwbwt_118             = rwbwt_118             / 1000000
replace rwbwt_119             = rwbwt_119             / 1000000
replace rwbwt_120             = rwbwt_120             / 1000000
replace rwbwt_121             = rwbwt_121             / 1000000
replace rwbwt_122             = rwbwt_122             / 1000000
replace rwbwt_123             = rwbwt_123             / 1000000
replace rwbwt_124             = rwbwt_124             / 1000000
replace rwbwt_125             = rwbwt_125             / 1000000
replace rwbwt_126             = rwbwt_126             / 1000000
replace rwbwt_127             = rwbwt_127             / 1000000
replace rwbwt_128             = rwbwt_128             / 1000000
replace rwbwt_129             = rwbwt_129             / 1000000
replace rwbwt_130             = rwbwt_130             / 1000000
replace rwbwt_131             = rwbwt_131             / 1000000
replace rwbwt_132             = rwbwt_132             / 1000000
replace rwbwt_133             = rwbwt_133             / 1000000
replace rwbwt_134             = rwbwt_134             / 1000000
replace rwbwt_135             = rwbwt_135             / 1000000
replace rwbwt_136             = rwbwt_136             / 1000000
replace rwbwt_137             = rwbwt_137             / 1000000
replace rwbwt_138             = rwbwt_138             / 1000000
replace rwbwt_139             = rwbwt_139             / 1000000
replace rwbwt_140             = rwbwt_140             / 1000000
replace rwbwt_141             = rwbwt_141             / 1000000
replace rwbwt_142             = rwbwt_142             / 1000000
replace rwbwt_143             = rwbwt_143             / 1000000
replace rwbwt_144             = rwbwt_144             / 1000000
replace rwbwt_145             = rwbwt_145             / 1000000
replace rwbwt_146             = rwbwt_146             / 1000000
replace rwbwt_147             = rwbwt_147             / 1000000
replace rwbwt_148             = rwbwt_148             / 1000000
replace rwbwt_149             = rwbwt_149             / 1000000
replace rwbwt_150             = rwbwt_150             / 1000000
replace rwbwt_151             = rwbwt_151             / 1000000
replace rwbwt_152             = rwbwt_152             / 1000000
replace rwbwt_153             = rwbwt_153             / 1000000
replace rwbwt_154             = rwbwt_154             / 1000000
replace rwbwt_155             = rwbwt_155             / 1000000
replace rwbwt_156             = rwbwt_156             / 1000000
replace rwbwt_157             = rwbwt_157             / 1000000
replace rwbwt_158             = rwbwt_158             / 1000000
replace rwbwt_159             = rwbwt_159             / 1000000
replace rwbwt_160             = rwbwt_160             / 1000000
replace rlvwt_1               = rlvwt_1               / 1000000
replace rlvwt_2               = rlvwt_2               / 1000000
replace rlvwt_3               = rlvwt_3               / 1000000
replace rlvwt_4               = rlvwt_4               / 1000000
replace rlvwt_5               = rlvwt_5               / 1000000
replace rlvwt_6               = rlvwt_6               / 1000000
replace rlvwt_7               = rlvwt_7               / 1000000
replace rlvwt_8               = rlvwt_8               / 1000000
replace rlvwt_9               = rlvwt_9               / 1000000
replace rlvwt_10              = rlvwt_10              / 1000000
replace rlvwt_11              = rlvwt_11              / 1000000
replace rlvwt_12              = rlvwt_12              / 1000000
replace rlvwt_13              = rlvwt_13              / 1000000
replace rlvwt_14              = rlvwt_14              / 1000000
replace rlvwt_15              = rlvwt_15              / 1000000
replace rlvwt_16              = rlvwt_16              / 1000000
replace rlvwt_17              = rlvwt_17              / 1000000
replace rlvwt_18              = rlvwt_18              / 1000000
replace rlvwt_19              = rlvwt_19              / 1000000
replace rlvwt_20              = rlvwt_20              / 1000000
replace rlvwt_21              = rlvwt_21              / 1000000
replace rlvwt_22              = rlvwt_22              / 1000000
replace rlvwt_23              = rlvwt_23              / 1000000
replace rlvwt_24              = rlvwt_24              / 1000000
replace rlvwt_25              = rlvwt_25              / 1000000
replace rlvwt_26              = rlvwt_26              / 1000000
replace rlvwt_27              = rlvwt_27              / 1000000
replace rlvwt_28              = rlvwt_28              / 1000000
replace rlvwt_29              = rlvwt_29              / 1000000
replace rlvwt_30              = rlvwt_30              / 1000000
replace rlvwt_31              = rlvwt_31              / 1000000
replace rlvwt_32              = rlvwt_32              / 1000000
replace rlvwt_33              = rlvwt_33              / 1000000
replace rlvwt_34              = rlvwt_34              / 1000000
replace rlvwt_35              = rlvwt_35              / 1000000
replace rlvwt_36              = rlvwt_36              / 1000000
replace rlvwt_37              = rlvwt_37              / 1000000
replace rlvwt_38              = rlvwt_38              / 1000000
replace rlvwt_39              = rlvwt_39              / 1000000
replace rlvwt_40              = rlvwt_40              / 1000000
replace rlvwt_41              = rlvwt_41              / 1000000
replace rlvwt_42              = rlvwt_42              / 1000000
replace rlvwt_43              = rlvwt_43              / 1000000
replace rlvwt_44              = rlvwt_44              / 1000000
replace rlvwt_45              = rlvwt_45              / 1000000
replace rlvwt_46              = rlvwt_46              / 1000000
replace rlvwt_47              = rlvwt_47              / 1000000
replace rlvwt_48              = rlvwt_48              / 1000000
replace rlvwt_49              = rlvwt_49              / 1000000
replace rlvwt_50              = rlvwt_50              / 1000000
replace rlvwt_51              = rlvwt_51              / 1000000
replace rlvwt_52              = rlvwt_52              / 1000000
replace rlvwt_53              = rlvwt_53              / 1000000
replace rlvwt_54              = rlvwt_54              / 1000000
replace rlvwt_55              = rlvwt_55              / 1000000
replace rlvwt_56              = rlvwt_56              / 1000000
replace rlvwt_57              = rlvwt_57              / 1000000
replace rlvwt_58              = rlvwt_58              / 1000000
replace rlvwt_59              = rlvwt_59              / 1000000
replace rlvwt_60              = rlvwt_60              / 1000000
replace rlvwt_61              = rlvwt_61              / 1000000
replace rlvwt_62              = rlvwt_62              / 1000000
replace rlvwt_63              = rlvwt_63              / 1000000
replace rlvwt_64              = rlvwt_64              / 1000000
replace rlvwt_65              = rlvwt_65              / 1000000
replace rlvwt_66              = rlvwt_66              / 1000000
replace rlvwt_67              = rlvwt_67              / 1000000
replace rlvwt_68              = rlvwt_68              / 1000000
replace rlvwt_69              = rlvwt_69              / 1000000
replace rlvwt_70              = rlvwt_70              / 1000000
replace rlvwt_71              = rlvwt_71              / 1000000
replace rlvwt_72              = rlvwt_72              / 1000000
replace rlvwt_73              = rlvwt_73              / 1000000
replace rlvwt_74              = rlvwt_74              / 1000000
replace rlvwt_75              = rlvwt_75              / 1000000
replace rlvwt_76              = rlvwt_76              / 1000000
replace rlvwt_77              = rlvwt_77              / 1000000
replace rlvwt_78              = rlvwt_78              / 1000000
replace rlvwt_79              = rlvwt_79              / 1000000
replace rlvwt_80              = rlvwt_80              / 1000000
replace rlvwt_81              = rlvwt_81              / 1000000
replace rlvwt_82              = rlvwt_82              / 1000000
replace rlvwt_83              = rlvwt_83              / 1000000
replace rlvwt_84              = rlvwt_84              / 1000000
replace rlvwt_85              = rlvwt_85              / 1000000
replace rlvwt_86              = rlvwt_86              / 1000000
replace rlvwt_87              = rlvwt_87              / 1000000
replace rlvwt_88              = rlvwt_88              / 1000000
replace rlvwt_89              = rlvwt_89              / 1000000
replace rlvwt_90              = rlvwt_90              / 1000000
replace rlvwt_91              = rlvwt_91              / 1000000
replace rlvwt_92              = rlvwt_92              / 1000000
replace rlvwt_93              = rlvwt_93              / 1000000
replace rlvwt_94              = rlvwt_94              / 1000000
replace rlvwt_95              = rlvwt_95              / 1000000
replace rlvwt_96              = rlvwt_96              / 1000000
replace rlvwt_97              = rlvwt_97              / 1000000
replace rlvwt_98              = rlvwt_98              / 1000000
replace rlvwt_99              = rlvwt_99              / 1000000
replace rlvwt_100             = rlvwt_100             / 1000000
replace rlvwt_101             = rlvwt_101             / 1000000
replace rlvwt_102             = rlvwt_102             / 1000000
replace rlvwt_103             = rlvwt_103             / 1000000
replace rlvwt_104             = rlvwt_104             / 1000000
replace rlvwt_105             = rlvwt_105             / 1000000
replace rlvwt_106             = rlvwt_106             / 1000000
replace rlvwt_107             = rlvwt_107             / 1000000
replace rlvwt_108             = rlvwt_108             / 1000000
replace rlvwt_109             = rlvwt_109             / 1000000
replace rlvwt_110             = rlvwt_110             / 1000000
replace rlvwt_111             = rlvwt_111             / 1000000
replace rlvwt_112             = rlvwt_112             / 1000000
replace rlvwt_113             = rlvwt_113             / 1000000
replace rlvwt_114             = rlvwt_114             / 1000000
replace rlvwt_115             = rlvwt_115             / 1000000
replace rlvwt_116             = rlvwt_116             / 1000000
replace rlvwt_117             = rlvwt_117             / 1000000
replace rlvwt_118             = rlvwt_118             / 1000000
replace rlvwt_119             = rlvwt_119             / 1000000
replace rlvwt_120             = rlvwt_120             / 1000000
replace rlvwt_121             = rlvwt_121             / 1000000
replace rlvwt_122             = rlvwt_122             / 1000000
replace rlvwt_123             = rlvwt_123             / 1000000
replace rlvwt_124             = rlvwt_124             / 1000000
replace rlvwt_125             = rlvwt_125             / 1000000
replace rlvwt_126             = rlvwt_126             / 1000000
replace rlvwt_127             = rlvwt_127             / 1000000
replace rlvwt_128             = rlvwt_128             / 1000000
replace rlvwt_129             = rlvwt_129             / 1000000
replace rlvwt_130             = rlvwt_130             / 1000000
replace rlvwt_131             = rlvwt_131             / 1000000
replace rlvwt_132             = rlvwt_132             / 1000000
replace rlvwt_133             = rlvwt_133             / 1000000
replace rlvwt_134             = rlvwt_134             / 1000000
replace rlvwt_135             = rlvwt_135             / 1000000
replace rlvwt_136             = rlvwt_136             / 1000000
replace rlvwt_137             = rlvwt_137             / 1000000
replace rlvwt_138             = rlvwt_138             / 1000000
replace rlvwt_139             = rlvwt_139             / 1000000
replace rlvwt_140             = rlvwt_140             / 1000000
replace rlvwt_141             = rlvwt_141             / 1000000
replace rlvwt_142             = rlvwt_142             / 1000000
replace rlvwt_143             = rlvwt_143             / 1000000
replace rlvwt_144             = rlvwt_144             / 1000000
replace rlvwt_145             = rlvwt_145             / 1000000
replace rlvwt_146             = rlvwt_146             / 1000000
replace rlvwt_147             = rlvwt_147             / 1000000
replace rlvwt_148             = rlvwt_148             / 1000000
replace rlvwt_149             = rlvwt_149             / 1000000
replace rlvwt_150             = rlvwt_150             / 1000000
replace rlvwt_151             = rlvwt_151             / 1000000
replace rlvwt_152             = rlvwt_152             / 1000000
replace rlvwt_153             = rlvwt_153             / 1000000
replace rlvwt_154             = rlvwt_154             / 1000000
replace rlvwt_155             = rlvwt_155             / 1000000
replace rlvwt_156             = rlvwt_156             / 1000000
replace rlvwt_157             = rlvwt_157             / 1000000
replace rlvwt_158             = rlvwt_158             / 1000000
replace rlvwt_159             = rlvwt_159             / 1000000
replace rlvwt_160             = rlvwt_160             / 1000000
replace rwt20_1               = rwt20_1               / 1000000
replace rwt20_2               = rwt20_2               / 1000000
replace rwt20_3               = rwt20_3               / 1000000
replace rwt20_4               = rwt20_4               / 1000000
replace rwt20_5               = rwt20_5               / 1000000
replace rwt20_6               = rwt20_6               / 1000000
replace rwt20_7               = rwt20_7               / 1000000
replace rwt20_8               = rwt20_8               / 1000000
replace rwt20_9               = rwt20_9               / 1000000
replace rwt20_10              = rwt20_10              / 1000000
replace rwt20_11              = rwt20_11              / 1000000
replace rwt20_12              = rwt20_12              / 1000000
replace rwt20_13              = rwt20_13              / 1000000
replace rwt20_14              = rwt20_14              / 1000000
replace rwt20_15              = rwt20_15              / 1000000
replace rwt20_16              = rwt20_16              / 1000000
replace rwt20_17              = rwt20_17              / 1000000
replace rwt20_18              = rwt20_18              / 1000000
replace rwt20_19              = rwt20_19              / 1000000
replace rwt20_20              = rwt20_20              / 1000000
replace rwt20_21              = rwt20_21              / 1000000
replace rwt20_22              = rwt20_22              / 1000000
replace rwt20_23              = rwt20_23              / 1000000
replace rwt20_24              = rwt20_24              / 1000000
replace rwt20_25              = rwt20_25              / 1000000
replace rwt20_26              = rwt20_26              / 1000000
replace rwt20_27              = rwt20_27              / 1000000
replace rwt20_28              = rwt20_28              / 1000000
replace rwt20_29              = rwt20_29              / 1000000
replace rwt20_30              = rwt20_30              / 1000000
replace rwt20_31              = rwt20_31              / 1000000
replace rwt20_32              = rwt20_32              / 1000000
replace rwt20_33              = rwt20_33              / 1000000
replace rwt20_34              = rwt20_34              / 1000000
replace rwt20_35              = rwt20_35              / 1000000
replace rwt20_36              = rwt20_36              / 1000000
replace rwt20_37              = rwt20_37              / 1000000
replace rwt20_38              = rwt20_38              / 1000000
replace rwt20_39              = rwt20_39              / 1000000
replace rwt20_40              = rwt20_40              / 1000000
replace rwt20_41              = rwt20_41              / 1000000
replace rwt20_42              = rwt20_42              / 1000000
replace rwt20_43              = rwt20_43              / 1000000
replace rwt20_44              = rwt20_44              / 1000000
replace rwt20_45              = rwt20_45              / 1000000
replace rwt20_46              = rwt20_46              / 1000000
replace rwt20_47              = rwt20_47              / 1000000
replace rwt20_48              = rwt20_48              / 1000000
replace rwt20_49              = rwt20_49              / 1000000
replace rwt20_50              = rwt20_50              / 1000000
replace rwt20_51              = rwt20_51              / 1000000
replace rwt20_52              = rwt20_52              / 1000000
replace rwt20_53              = rwt20_53              / 1000000
replace rwt20_54              = rwt20_54              / 1000000
replace rwt20_55              = rwt20_55              / 1000000
replace rwt20_56              = rwt20_56              / 1000000
replace rwt20_57              = rwt20_57              / 1000000
replace rwt20_58              = rwt20_58              / 1000000
replace rwt20_59              = rwt20_59              / 1000000
replace rwt20_60              = rwt20_60              / 1000000
replace rwt20_61              = rwt20_61              / 1000000
replace rwt20_62              = rwt20_62              / 1000000
replace rwt20_63              = rwt20_63              / 1000000
replace rwt20_64              = rwt20_64              / 1000000
replace rwt20_65              = rwt20_65              / 1000000
replace rwt20_66              = rwt20_66              / 1000000
replace rwt20_67              = rwt20_67              / 1000000
replace rwt20_68              = rwt20_68              / 1000000
replace rwt20_69              = rwt20_69              / 1000000
replace rwt20_70              = rwt20_70              / 1000000
replace rwt20_71              = rwt20_71              / 1000000
replace rwt20_72              = rwt20_72              / 1000000
replace rwt20_73              = rwt20_73              / 1000000
replace rwt20_74              = rwt20_74              / 1000000
replace rwt20_75              = rwt20_75              / 1000000
replace rwt20_76              = rwt20_76              / 1000000
replace rwt20_77              = rwt20_77              / 1000000
replace rwt20_78              = rwt20_78              / 1000000
replace rwt20_79              = rwt20_79              / 1000000
replace rwt20_80              = rwt20_80              / 1000000
replace rwt20_81              = rwt20_81              / 1000000
replace rwt20_82              = rwt20_82              / 1000000
replace rwt20_83              = rwt20_83              / 1000000
replace rwt20_84              = rwt20_84              / 1000000
replace rwt20_85              = rwt20_85              / 1000000
replace rwt20_86              = rwt20_86              / 1000000
replace rwt20_87              = rwt20_87              / 1000000
replace rwt20_88              = rwt20_88              / 1000000
replace rwt20_89              = rwt20_89              / 1000000
replace rwt20_90              = rwt20_90              / 1000000
replace rwt20_91              = rwt20_91              / 1000000
replace rwt20_92              = rwt20_92              / 1000000
replace rwt20_93              = rwt20_93              / 1000000
replace rwt20_94              = rwt20_94              / 1000000
replace rwt20_95              = rwt20_95              / 1000000
replace rwt20_96              = rwt20_96              / 1000000
replace rwt20_97              = rwt20_97              / 1000000
replace rwt20_98              = rwt20_98              / 1000000
replace rwt20_99              = rwt20_99              / 1000000
replace rwt20_100             = rwt20_100             / 1000000
replace rwt20_101             = rwt20_101             / 1000000
replace rwt20_102             = rwt20_102             / 1000000
replace rwt20_103             = rwt20_103             / 1000000
replace rwt20_104             = rwt20_104             / 1000000
replace rwt20_105             = rwt20_105             / 1000000
replace rwt20_106             = rwt20_106             / 1000000
replace rwt20_107             = rwt20_107             / 1000000
replace rwt20_108             = rwt20_108             / 1000000
replace rwt20_109             = rwt20_109             / 1000000
replace rwt20_110             = rwt20_110             / 1000000
replace rwt20_111             = rwt20_111             / 1000000
replace rwt20_112             = rwt20_112             / 1000000
replace rwt20_113             = rwt20_113             / 1000000
replace rwt20_114             = rwt20_114             / 1000000
replace rwt20_115             = rwt20_115             / 1000000
replace rwt20_116             = rwt20_116             / 1000000
replace rwt20_117             = rwt20_117             / 1000000
replace rwt20_118             = rwt20_118             / 1000000
replace rwt20_119             = rwt20_119             / 1000000
replace rwt20_120             = rwt20_120             / 1000000
replace rwt20_121             = rwt20_121             / 1000000
replace rwt20_122             = rwt20_122             / 1000000
replace rwt20_123             = rwt20_123             / 1000000
replace rwt20_124             = rwt20_124             / 1000000
replace rwt20_125             = rwt20_125             / 1000000
replace rwt20_126             = rwt20_126             / 1000000
replace rwt20_127             = rwt20_127             / 1000000
replace rwt20_128             = rwt20_128             / 1000000
replace rwt20_129             = rwt20_129             / 1000000
replace rwt20_130             = rwt20_130             / 1000000
replace rwt20_131             = rwt20_131             / 1000000
replace rwt20_132             = rwt20_132             / 1000000
replace rwt20_133             = rwt20_133             / 1000000
replace rwt20_134             = rwt20_134             / 1000000
replace rwt20_135             = rwt20_135             / 1000000
replace rwt20_136             = rwt20_136             / 1000000
replace rwt20_137             = rwt20_137             / 1000000
replace rwt20_138             = rwt20_138             / 1000000
replace rwt20_139             = rwt20_139             / 1000000
replace rwt20_140             = rwt20_140             / 1000000
replace rwt20_141             = rwt20_141             / 1000000
replace rwt20_142             = rwt20_142             / 1000000
replace rwt20_143             = rwt20_143             / 1000000
replace rwt20_144             = rwt20_144             / 1000000
replace rwt20_145             = rwt20_145             / 1000000
replace rwt20_146             = rwt20_146             / 1000000
replace rwt20_147             = rwt20_147             / 1000000
replace rwt20_148             = rwt20_148             / 1000000
replace rwt20_149             = rwt20_149             / 1000000
replace rwt20_150             = rwt20_150             / 1000000
replace rwt20_151             = rwt20_151             / 1000000
replace rwt20_152             = rwt20_152             / 1000000
replace rwt20_153             = rwt20_153             / 1000000
replace rwt20_154             = rwt20_154             / 1000000
replace rwt20_155             = rwt20_155             / 1000000
replace rwt20_156             = rwt20_156             / 1000000
replace rwt20_157             = rwt20_157             / 1000000
replace rwt20_158             = rwt20_158             / 1000000
replace rwt20_159             = rwt20_159             / 1000000
replace rwt20_160             = rwt20_160             / 1000000
replace metvalue              = metvalue              / 100
replace awbwt                 = awbwt                 / 1000000
replace rawbwt_1              = rawbwt_1              / 1000000
replace rawbwt_2              = rawbwt_2              / 1000000
replace rawbwt_3              = rawbwt_3              / 1000000
replace rawbwt_4              = rawbwt_4              / 1000000
replace rawbwt_5              = rawbwt_5              / 1000000
replace rawbwt_6              = rawbwt_6              / 1000000
replace rawbwt_7              = rawbwt_7              / 1000000
replace rawbwt_8              = rawbwt_8              / 1000000
replace rawbwt_9              = rawbwt_9              / 1000000
replace rawbwt_10             = rawbwt_10             / 1000000
replace rawbwt_11             = rawbwt_11             / 1000000
replace rawbwt_12             = rawbwt_12             / 1000000
replace rawbwt_13             = rawbwt_13             / 1000000
replace rawbwt_14             = rawbwt_14             / 1000000
replace rawbwt_15             = rawbwt_15             / 1000000
replace rawbwt_16             = rawbwt_16             / 1000000
replace rawbwt_17             = rawbwt_17             / 1000000
replace rawbwt_18             = rawbwt_18             / 1000000
replace rawbwt_19             = rawbwt_19             / 1000000
replace rawbwt_20             = rawbwt_20             / 1000000
replace rawbwt_21             = rawbwt_21             / 1000000
replace rawbwt_22             = rawbwt_22             / 1000000
replace rawbwt_23             = rawbwt_23             / 1000000
replace rawbwt_24             = rawbwt_24             / 1000000
replace rawbwt_25             = rawbwt_25             / 1000000
replace rawbwt_26             = rawbwt_26             / 1000000
replace rawbwt_27             = rawbwt_27             / 1000000
replace rawbwt_28             = rawbwt_28             / 1000000
replace rawbwt_29             = rawbwt_29             / 1000000
replace rawbwt_30             = rawbwt_30             / 1000000
replace rawbwt_31             = rawbwt_31             / 1000000
replace rawbwt_32             = rawbwt_32             / 1000000
replace rawbwt_33             = rawbwt_33             / 1000000
replace rawbwt_34             = rawbwt_34             / 1000000
replace rawbwt_35             = rawbwt_35             / 1000000
replace rawbwt_36             = rawbwt_36             / 1000000
replace rawbwt_37             = rawbwt_37             / 1000000
replace rawbwt_38             = rawbwt_38             / 1000000
replace rawbwt_39             = rawbwt_39             / 1000000
replace rawbwt_40             = rawbwt_40             / 1000000
replace rawbwt_41             = rawbwt_41             / 1000000
replace rawbwt_42             = rawbwt_42             / 1000000
replace rawbwt_43             = rawbwt_43             / 1000000
replace rawbwt_44             = rawbwt_44             / 1000000
replace rawbwt_45             = rawbwt_45             / 1000000
replace rawbwt_46             = rawbwt_46             / 1000000
replace rawbwt_47             = rawbwt_47             / 1000000
replace rawbwt_48             = rawbwt_48             / 1000000
replace rawbwt_49             = rawbwt_49             / 1000000
replace rawbwt_50             = rawbwt_50             / 1000000
replace rawbwt_51             = rawbwt_51             / 1000000
replace rawbwt_52             = rawbwt_52             / 1000000
replace rawbwt_53             = rawbwt_53             / 1000000
replace rawbwt_54             = rawbwt_54             / 1000000
replace rawbwt_55             = rawbwt_55             / 1000000
replace rawbwt_56             = rawbwt_56             / 1000000
replace rawbwt_57             = rawbwt_57             / 1000000
replace rawbwt_58             = rawbwt_58             / 1000000
replace rawbwt_59             = rawbwt_59             / 1000000
replace rawbwt_60             = rawbwt_60             / 1000000
replace rawbwt_61             = rawbwt_61             / 1000000
replace rawbwt_62             = rawbwt_62             / 1000000
replace rawbwt_63             = rawbwt_63             / 1000000
replace rawbwt_64             = rawbwt_64             / 1000000
replace rawbwt_65             = rawbwt_65             / 1000000
replace rawbwt_66             = rawbwt_66             / 1000000
replace rawbwt_67             = rawbwt_67             / 1000000
replace rawbwt_68             = rawbwt_68             / 1000000
replace rawbwt_69             = rawbwt_69             / 1000000
replace rawbwt_70             = rawbwt_70             / 1000000
replace rawbwt_71             = rawbwt_71             / 1000000
replace rawbwt_72             = rawbwt_72             / 1000000
replace rawbwt_73             = rawbwt_73             / 1000000
replace rawbwt_74             = rawbwt_74             / 1000000
replace rawbwt_75             = rawbwt_75             / 1000000
replace rawbwt_76             = rawbwt_76             / 1000000
replace rawbwt_77             = rawbwt_77             / 1000000
replace rawbwt_78             = rawbwt_78             / 1000000
replace rawbwt_79             = rawbwt_79             / 1000000
replace rawbwt_80             = rawbwt_80             / 1000000
replace rawbwt_81             = rawbwt_81             / 1000000
replace rawbwt_82             = rawbwt_82             / 1000000
replace rawbwt_83             = rawbwt_83             / 1000000
replace rawbwt_84             = rawbwt_84             / 1000000
replace rawbwt_85             = rawbwt_85             / 1000000
replace rawbwt_86             = rawbwt_86             / 1000000
replace rawbwt_87             = rawbwt_87             / 1000000
replace rawbwt_88             = rawbwt_88             / 1000000
replace rawbwt_89             = rawbwt_89             / 1000000
replace rawbwt_90             = rawbwt_90             / 1000000
replace rawbwt_91             = rawbwt_91             / 1000000
replace rawbwt_92             = rawbwt_92             / 1000000
replace rawbwt_93             = rawbwt_93             / 1000000
replace rawbwt_94             = rawbwt_94             / 1000000
replace rawbwt_95             = rawbwt_95             / 1000000
replace rawbwt_96             = rawbwt_96             / 1000000
replace rawbwt_97             = rawbwt_97             / 1000000
replace rawbwt_98             = rawbwt_98             / 1000000
replace rawbwt_99             = rawbwt_99             / 1000000
replace rawbwt_100            = rawbwt_100            / 1000000
replace rawbwt_101            = rawbwt_101            / 1000000
replace rawbwt_102            = rawbwt_102            / 1000000
replace rawbwt_103            = rawbwt_103            / 1000000
replace rawbwt_104            = rawbwt_104            / 1000000
replace rawbwt_105            = rawbwt_105            / 1000000
replace rawbwt_106            = rawbwt_106            / 1000000
replace rawbwt_107            = rawbwt_107            / 1000000
replace rawbwt_108            = rawbwt_108            / 1000000
replace rawbwt_109            = rawbwt_109            / 1000000
replace rawbwt_110            = rawbwt_110            / 1000000
replace rawbwt_111            = rawbwt_111            / 1000000
replace rawbwt_112            = rawbwt_112            / 1000000
replace rawbwt_113            = rawbwt_113            / 1000000
replace rawbwt_114            = rawbwt_114            / 1000000
replace rawbwt_115            = rawbwt_115            / 1000000
replace rawbwt_116            = rawbwt_116            / 1000000
replace rawbwt_117            = rawbwt_117            / 1000000
replace rawbwt_118            = rawbwt_118            / 1000000
replace rawbwt_119            = rawbwt_119            / 1000000
replace rawbwt_120            = rawbwt_120            / 1000000
replace rawbwt_121            = rawbwt_121            / 1000000
replace rawbwt_122            = rawbwt_122            / 1000000
replace rawbwt_123            = rawbwt_123            / 1000000
replace rawbwt_124            = rawbwt_124            / 1000000
replace rawbwt_125            = rawbwt_125            / 1000000
replace rawbwt_126            = rawbwt_126            / 1000000
replace rawbwt_127            = rawbwt_127            / 1000000
replace rawbwt_128            = rawbwt_128            / 1000000
replace rawbwt_129            = rawbwt_129            / 1000000
replace rawbwt_130            = rawbwt_130            / 1000000
replace rawbwt_131            = rawbwt_131            / 1000000
replace rawbwt_132            = rawbwt_132            / 1000000
replace rawbwt_133            = rawbwt_133            / 1000000
replace rawbwt_134            = rawbwt_134            / 1000000
replace rawbwt_135            = rawbwt_135            / 1000000
replace rawbwt_136            = rawbwt_136            / 1000000
replace rawbwt_137            = rawbwt_137            / 1000000
replace rawbwt_138            = rawbwt_138            / 1000000
replace rawbwt_139            = rawbwt_139            / 1000000
replace rawbwt_140            = rawbwt_140            / 1000000
replace rawbwt_141            = rawbwt_141            / 1000000
replace rawbwt_142            = rawbwt_142            / 1000000
replace rawbwt_143            = rawbwt_143            / 1000000
replace rawbwt_144            = rawbwt_144            / 1000000
replace rawbwt_145            = rawbwt_145            / 1000000
replace rawbwt_146            = rawbwt_146            / 1000000
replace rawbwt_147            = rawbwt_147            / 1000000
replace rawbwt_148            = rawbwt_148            / 1000000
replace rawbwt_149            = rawbwt_149            / 1000000
replace rawbwt_150            = rawbwt_150            / 1000000
replace rawbwt_151            = rawbwt_151            / 1000000
replace rawbwt_152            = rawbwt_152            / 1000000
replace rawbwt_153            = rawbwt_153            / 1000000
replace rawbwt_154            = rawbwt_154            / 1000000
replace rawbwt_155            = rawbwt_155            / 1000000
replace rawbwt_156            = rawbwt_156            / 1000000
replace rawbwt_157            = rawbwt_157            / 1000000
replace rawbwt_158            = rawbwt_158            / 1000000
replace rawbwt_159            = rawbwt_159            / 1000000
replace rawbwt_160            = rawbwt_160            / 1000000

format caseid                %14.0f
format hrhhid_cps8           %15.0f
format caseid                %14.0f
format date                  %9.0f
format wt06                  %17.0g
format wt20                  %15.6f
format wt04                  %17.0g
format wt03                  %15.6f
format bwt                   %13.0g
format rwt06_1               %15.6f
format rwt06_2               %15.6f
format rwt06_3               %15.6f
format rwt06_4               %15.6f
format rwt06_5               %15.6f
format rwt06_6               %15.6f
format rwt06_7               %15.6f
format rwt06_8               %15.6f
format rwt06_9               %15.6f
format rwt06_10              %15.6f
format rwt06_11              %15.6f
format rwt06_12              %15.6f
format rwt06_13              %15.6f
format rwt06_14              %15.6f
format rwt06_15              %15.6f
format rwt06_16              %15.6f
format rwt06_17              %15.6f
format rwt06_18              %15.6f
format rwt06_19              %15.6f
format rwt06_20              %15.6f
format rwt06_21              %15.6f
format rwt06_22              %15.6f
format rwt06_23              %15.6f
format rwt06_24              %15.6f
format rwt06_25              %15.6f
format rwt06_26              %15.6f
format rwt06_27              %15.6f
format rwt06_28              %15.6f
format rwt06_29              %15.6f
format rwt06_30              %15.6f
format rwt06_31              %15.6f
format rwt06_32              %15.6f
format rwt06_33              %15.6f
format rwt06_34              %15.6f
format rwt06_35              %15.6f
format rwt06_36              %15.6f
format rwt06_37              %15.6f
format rwt06_38              %15.6f
format rwt06_39              %15.6f
format rwt06_40              %15.6f
format rwt06_41              %15.6f
format rwt06_42              %15.6f
format rwt06_43              %15.6f
format rwt06_44              %15.6f
format rwt06_45              %15.6f
format rwt06_46              %15.6f
format rwt06_47              %15.6f
format rwt06_48              %15.6f
format rwt06_49              %15.6f
format rwt06_50              %15.6f
format rwt06_51              %15.6f
format rwt06_52              %15.6f
format rwt06_53              %15.6f
format rwt06_54              %15.6f
format rwt06_55              %15.6f
format rwt06_56              %15.6f
format rwt06_57              %15.6f
format rwt06_58              %15.6f
format rwt06_59              %15.6f
format rwt06_60              %15.6f
format rwt06_61              %15.6f
format rwt06_62              %15.6f
format rwt06_63              %15.6f
format rwt06_64              %15.6f
format rwt06_65              %15.6f
format rwt06_66              %15.6f
format rwt06_67              %15.6f
format rwt06_68              %15.6f
format rwt06_69              %15.6f
format rwt06_70              %15.6f
format rwt06_71              %15.6f
format rwt06_72              %15.6f
format rwt06_73              %15.6f
format rwt06_74              %15.6f
format rwt06_75              %15.6f
format rwt06_76              %15.6f
format rwt06_77              %15.6f
format rwt06_78              %15.6f
format rwt06_79              %15.6f
format rwt06_80              %15.6f
format rwt06_81              %15.6f
format rwt06_82              %15.6f
format rwt06_83              %15.6f
format rwt06_84              %15.6f
format rwt06_85              %15.6f
format rwt06_86              %15.6f
format rwt06_87              %15.6f
format rwt06_88              %15.6f
format rwt06_89              %15.6f
format rwt06_90              %15.6f
format rwt06_91              %15.6f
format rwt06_92              %15.6f
format rwt06_93              %15.6f
format rwt06_94              %15.6f
format rwt06_95              %15.6f
format rwt06_96              %15.6f
format rwt06_97              %15.6f
format rwt06_98              %15.6f
format rwt06_99              %15.6f
format rwt06_100             %15.6f
format rwt06_101             %15.6f
format rwt06_102             %15.6f
format rwt06_103             %15.6f
format rwt06_104             %15.6f
format rwt06_105             %15.6f
format rwt06_106             %15.6f
format rwt06_107             %15.6f
format rwt06_108             %15.6f
format rwt06_109             %15.6f
format rwt06_110             %15.6f
format rwt06_111             %15.6f
format rwt06_112             %15.6f
format rwt06_113             %15.6f
format rwt06_114             %15.6f
format rwt06_115             %15.6f
format rwt06_116             %15.6f
format rwt06_117             %15.6f
format rwt06_118             %15.6f
format rwt06_119             %15.6f
format rwt06_120             %15.6f
format rwt06_121             %15.6f
format rwt06_122             %15.6f
format rwt06_123             %15.6f
format rwt06_124             %15.6f
format rwt06_125             %15.6f
format rwt06_126             %15.6f
format rwt06_127             %15.6f
format rwt06_128             %15.6f
format rwt06_129             %15.6f
format rwt06_130             %15.6f
format rwt06_131             %15.6f
format rwt06_132             %15.6f
format rwt06_133             %15.6f
format rwt06_134             %15.6f
format rwt06_135             %15.6f
format rwt06_136             %15.6f
format rwt06_137             %15.6f
format rwt06_138             %15.6f
format rwt06_139             %15.6f
format rwt06_140             %15.6f
format rwt06_141             %15.6f
format rwt06_142             %15.6f
format rwt06_143             %15.6f
format rwt06_144             %15.6f
format rwt06_145             %15.6f
format rwt06_146             %15.6f
format rwt06_147             %15.6f
format rwt06_148             %15.6f
format rwt06_149             %15.6f
format rwt06_150             %15.6f
format rwt06_151             %15.6f
format rwt06_152             %15.6f
format rwt06_153             %15.6f
format rwt06_154             %15.6f
format rwt06_155             %15.6f
format rwt06_156             %15.6f
format rwt06_157             %15.6f
format rwt06_158             %15.6f
format rwt06_159             %15.6f
format rwt06_160             %15.6f
format rbwt_1                %12.6f
format rbwt_2                %12.6f
format rbwt_3                %12.6f
format rbwt_4                %12.6f
format rbwt_5                %12.6f
format rbwt_6                %12.6f
format rbwt_7                %12.6f
format rbwt_8                %12.6f
format rbwt_9                %12.6f
format rbwt_10               %12.6f
format rbwt_11               %12.6f
format rbwt_12               %12.6f
format rbwt_13               %12.6f
format rbwt_14               %12.6f
format rbwt_15               %12.6f
format rbwt_16               %12.6f
format rbwt_17               %12.6f
format rbwt_18               %12.6f
format rbwt_19               %12.6f
format rbwt_20               %12.6f
format rbwt_21               %12.6f
format rbwt_22               %12.6f
format rbwt_23               %12.6f
format rbwt_24               %12.6f
format rbwt_25               %12.6f
format rbwt_26               %12.6f
format rbwt_27               %12.6f
format rbwt_28               %12.6f
format rbwt_29               %12.6f
format rbwt_30               %12.6f
format rbwt_31               %12.6f
format rbwt_32               %12.6f
format rbwt_33               %12.6f
format rbwt_34               %12.6f
format rbwt_35               %12.6f
format rbwt_36               %12.6f
format rbwt_37               %12.6f
format rbwt_38               %12.6f
format rbwt_39               %12.6f
format rbwt_40               %12.6f
format rbwt_41               %12.6f
format rbwt_42               %12.6f
format rbwt_43               %12.6f
format rbwt_44               %12.6f
format rbwt_45               %12.6f
format rbwt_46               %12.6f
format rbwt_47               %12.6f
format rbwt_48               %12.6f
format rbwt_49               %12.6f
format rbwt_50               %12.6f
format rbwt_51               %12.6f
format rbwt_52               %12.6f
format rbwt_53               %12.6f
format rbwt_54               %12.6f
format rbwt_55               %12.6f
format rbwt_56               %12.6f
format rbwt_57               %12.6f
format rbwt_58               %12.6f
format rbwt_59               %12.6f
format rbwt_60               %12.6f
format rbwt_61               %12.6f
format rbwt_62               %12.6f
format rbwt_63               %12.6f
format rbwt_64               %12.6f
format rbwt_65               %12.6f
format rbwt_66               %12.6f
format rbwt_67               %12.6f
format rbwt_68               %12.6f
format rbwt_69               %12.6f
format rbwt_70               %12.6f
format rbwt_71               %12.6f
format rbwt_72               %12.6f
format rbwt_73               %12.6f
format rbwt_74               %12.6f
format rbwt_75               %12.6f
format rbwt_76               %12.6f
format rbwt_77               %12.6f
format rbwt_78               %12.6f
format rbwt_79               %12.6f
format rbwt_80               %12.6f
format rbwt_81               %12.6f
format rbwt_82               %12.6f
format rbwt_83               %12.6f
format rbwt_84               %12.6f
format rbwt_85               %12.6f
format rbwt_86               %12.6f
format rbwt_87               %12.6f
format rbwt_88               %12.6f
format rbwt_89               %12.6f
format rbwt_90               %12.6f
format rbwt_91               %12.6f
format rbwt_92               %12.6f
format rbwt_93               %12.6f
format rbwt_94               %12.6f
format rbwt_95               %12.6f
format rbwt_96               %12.6f
format rbwt_97               %12.6f
format rbwt_98               %12.6f
format rbwt_99               %12.6f
format rbwt_100              %12.6f
format rbwt_101              %12.6f
format rbwt_102              %12.6f
format rbwt_103              %12.6f
format rbwt_104              %12.6f
format rbwt_105              %12.6f
format rbwt_106              %12.6f
format rbwt_107              %12.6f
format rbwt_108              %12.6f
format rbwt_109              %12.6f
format rbwt_110              %12.6f
format rbwt_111              %12.6f
format rbwt_112              %12.6f
format rbwt_113              %12.6f
format rbwt_114              %12.6f
format rbwt_115              %12.6f
format rbwt_116              %12.6f
format rbwt_117              %12.6f
format rbwt_118              %12.6f
format rbwt_119              %12.6f
format rbwt_120              %12.6f
format rbwt_121              %12.6f
format rbwt_122              %12.6f
format rbwt_123              %12.6f
format rbwt_124              %12.6f
format rbwt_125              %12.6f
format rbwt_126              %12.6f
format rbwt_127              %12.6f
format rbwt_128              %12.6f
format rbwt_129              %12.6f
format rbwt_130              %12.6f
format rbwt_131              %12.6f
format rbwt_132              %12.6f
format rbwt_133              %12.6f
format rbwt_134              %12.6f
format rbwt_135              %12.6f
format rbwt_136              %12.6f
format rbwt_137              %12.6f
format rbwt_138              %12.6f
format rbwt_139              %12.6f
format rbwt_140              %12.6f
format rbwt_141              %12.6f
format rbwt_142              %12.6f
format rbwt_143              %12.6f
format rbwt_144              %12.6f
format rbwt_145              %12.6f
format rbwt_146              %12.6f
format rbwt_147              %12.6f
format rbwt_148              %12.6f
format rbwt_149              %12.6f
format rbwt_150              %12.6f
format rbwt_151              %12.6f
format rbwt_152              %12.6f
format rbwt_153              %12.6f
format rbwt_154              %12.6f
format rbwt_155              %12.6f
format rbwt_156              %12.6f
format rbwt_157              %12.6f
format rbwt_158              %12.6f
format rbwt_159              %12.6f
format rbwt_160              %12.6f
format ehwt                  %17.0g
format rehwt_1               %15.6f
format rehwt_2               %15.6f
format rehwt_3               %15.6f
format rehwt_4               %15.6f
format rehwt_5               %15.6f
format rehwt_6               %15.6f
format rehwt_7               %15.6f
format rehwt_8               %15.6f
format rehwt_9               %15.6f
format rehwt_10              %15.6f
format rehwt_11              %15.6f
format rehwt_12              %15.6f
format rehwt_13              %15.6f
format rehwt_14              %15.6f
format rehwt_15              %15.6f
format rehwt_16              %15.6f
format rehwt_17              %15.6f
format rehwt_18              %15.6f
format rehwt_19              %15.6f
format rehwt_20              %15.6f
format rehwt_21              %15.6f
format rehwt_22              %15.6f
format rehwt_23              %15.6f
format rehwt_24              %15.6f
format rehwt_25              %15.6f
format rehwt_26              %15.6f
format rehwt_27              %15.6f
format rehwt_28              %15.6f
format rehwt_29              %15.6f
format rehwt_30              %15.6f
format rehwt_31              %15.6f
format rehwt_32              %15.6f
format rehwt_33              %15.6f
format rehwt_34              %15.6f
format rehwt_35              %15.6f
format rehwt_36              %15.6f
format rehwt_37              %15.6f
format rehwt_38              %15.6f
format rehwt_39              %15.6f
format rehwt_40              %15.6f
format rehwt_41              %15.6f
format rehwt_42              %15.6f
format rehwt_43              %15.6f
format rehwt_44              %15.6f
format rehwt_45              %15.6f
format rehwt_46              %15.6f
format rehwt_47              %15.6f
format rehwt_48              %15.6f
format rehwt_49              %15.6f
format rehwt_50              %15.6f
format rehwt_51              %15.6f
format rehwt_52              %15.6f
format rehwt_53              %15.6f
format rehwt_54              %15.6f
format rehwt_55              %15.6f
format rehwt_56              %15.6f
format rehwt_57              %15.6f
format rehwt_58              %15.6f
format rehwt_59              %15.6f
format rehwt_60              %15.6f
format rehwt_61              %15.6f
format rehwt_62              %15.6f
format rehwt_63              %15.6f
format rehwt_64              %15.6f
format rehwt_65              %15.6f
format rehwt_66              %15.6f
format rehwt_67              %15.6f
format rehwt_68              %15.6f
format rehwt_69              %15.6f
format rehwt_70              %15.6f
format rehwt_71              %15.6f
format rehwt_72              %15.6f
format rehwt_73              %15.6f
format rehwt_74              %15.6f
format rehwt_75              %15.6f
format rehwt_76              %15.6f
format rehwt_77              %15.6f
format rehwt_78              %15.6f
format rehwt_79              %15.6f
format rehwt_80              %15.6f
format rehwt_81              %15.6f
format rehwt_82              %15.6f
format rehwt_83              %15.6f
format rehwt_84              %15.6f
format rehwt_85              %15.6f
format rehwt_86              %15.6f
format rehwt_87              %15.6f
format rehwt_88              %15.6f
format rehwt_89              %15.6f
format rehwt_90              %15.6f
format rehwt_91              %15.6f
format rehwt_92              %15.6f
format rehwt_93              %15.6f
format rehwt_94              %15.6f
format rehwt_95              %15.6f
format rehwt_96              %15.6f
format rehwt_97              %15.6f
format rehwt_98              %15.6f
format rehwt_99              %15.6f
format rehwt_100             %15.6f
format rehwt_101             %15.6f
format rehwt_102             %15.6f
format rehwt_103             %15.6f
format rehwt_104             %15.6f
format rehwt_105             %15.6f
format rehwt_106             %15.6f
format rehwt_107             %15.6f
format rehwt_108             %15.6f
format rehwt_109             %15.6f
format rehwt_110             %15.6f
format rehwt_111             %15.6f
format rehwt_112             %15.6f
format rehwt_113             %15.6f
format rehwt_114             %15.6f
format rehwt_115             %15.6f
format rehwt_116             %15.6f
format rehwt_117             %15.6f
format rehwt_118             %15.6f
format rehwt_119             %15.6f
format rehwt_120             %15.6f
format rehwt_121             %15.6f
format rehwt_122             %15.6f
format rehwt_123             %15.6f
format rehwt_124             %15.6f
format rehwt_125             %15.6f
format rehwt_126             %15.6f
format rehwt_127             %15.6f
format rehwt_128             %15.6f
format rehwt_129             %15.6f
format rehwt_130             %15.6f
format rehwt_131             %15.6f
format rehwt_132             %15.6f
format rehwt_133             %15.6f
format rehwt_134             %15.6f
format rehwt_135             %15.6f
format rehwt_136             %15.6f
format rehwt_137             %15.6f
format rehwt_138             %15.6f
format rehwt_139             %15.6f
format rehwt_140             %15.6f
format rehwt_141             %15.6f
format rehwt_142             %15.6f
format rehwt_143             %15.6f
format rehwt_144             %15.6f
format rehwt_145             %15.6f
format rehwt_146             %15.6f
format rehwt_147             %15.6f
format rehwt_148             %15.6f
format rehwt_149             %15.6f
format rehwt_150             %15.6f
format rehwt_151             %15.6f
format rehwt_152             %15.6f
format rehwt_153             %15.6f
format rehwt_154             %15.6f
format rehwt_155             %15.6f
format rehwt_156             %15.6f
format rehwt_157             %15.6f
format rehwt_158             %15.6f
format rehwt_159             %15.6f
format rehwt_160             %15.6f
format bmi                   %6.0g
format earnweek              %7.2f
format hourwage              %5.2f
format otpay                 %7.2f
format earnweek_cps8         %7.2f
format hourwage_cps8         %5.2f
format otpay_cps8            %7.2f
format spearnweek            %7.2f
format avgdur                %7.1f
format cpsidp                %14.0f
format wbwt                  %15.6f
format rwbwt_1               %15.6f
format rwbwt_2               %15.6f
format rwbwt_3               %15.6f
format rwbwt_4               %15.6f
format rwbwt_5               %15.6f
format rwbwt_6               %15.6f
format rwbwt_7               %15.6f
format rwbwt_8               %15.6f
format rwbwt_9               %15.6f
format rwbwt_10              %15.6f
format rwbwt_11              %15.6f
format rwbwt_12              %15.6f
format rwbwt_13              %15.6f
format rwbwt_14              %15.6f
format rwbwt_15              %15.6f
format rwbwt_16              %15.6f
format rwbwt_17              %15.6f
format rwbwt_18              %15.6f
format rwbwt_19              %15.6f
format rwbwt_20              %15.6f
format rwbwt_21              %15.6f
format rwbwt_22              %15.6f
format rwbwt_23              %15.6f
format rwbwt_24              %15.6f
format rwbwt_25              %15.6f
format rwbwt_26              %15.6f
format rwbwt_27              %15.6f
format rwbwt_28              %15.6f
format rwbwt_29              %15.6f
format rwbwt_30              %15.6f
format rwbwt_31              %15.6f
format rwbwt_32              %15.6f
format rwbwt_33              %15.6f
format rwbwt_34              %15.6f
format rwbwt_35              %15.6f
format rwbwt_36              %15.6f
format rwbwt_37              %15.6f
format rwbwt_38              %15.6f
format rwbwt_39              %15.6f
format rwbwt_40              %15.6f
format rwbwt_41              %15.6f
format rwbwt_42              %15.6f
format rwbwt_43              %15.6f
format rwbwt_44              %15.6f
format rwbwt_45              %15.6f
format rwbwt_46              %15.6f
format rwbwt_47              %15.6f
format rwbwt_48              %15.6f
format rwbwt_49              %15.6f
format rwbwt_50              %15.6f
format rwbwt_51              %15.6f
format rwbwt_52              %15.6f
format rwbwt_53              %15.6f
format rwbwt_54              %15.6f
format rwbwt_55              %15.6f
format rwbwt_56              %15.6f
format rwbwt_57              %15.6f
format rwbwt_58              %15.6f
format rwbwt_59              %15.6f
format rwbwt_60              %15.6f
format rwbwt_61              %15.6f
format rwbwt_62              %15.6f
format rwbwt_63              %15.6f
format rwbwt_64              %15.6f
format rwbwt_65              %15.6f
format rwbwt_66              %15.6f
format rwbwt_67              %15.6f
format rwbwt_68              %15.6f
format rwbwt_69              %15.6f
format rwbwt_70              %15.6f
format rwbwt_71              %15.6f
format rwbwt_72              %15.6f
format rwbwt_73              %15.6f
format rwbwt_74              %15.6f
format rwbwt_75              %15.6f
format rwbwt_76              %15.6f
format rwbwt_77              %15.6f
format rwbwt_78              %15.6f
format rwbwt_79              %15.6f
format rwbwt_80              %15.6f
format rwbwt_81              %15.6f
format rwbwt_82              %15.6f
format rwbwt_83              %15.6f
format rwbwt_84              %15.6f
format rwbwt_85              %15.6f
format rwbwt_86              %15.6f
format rwbwt_87              %15.6f
format rwbwt_88              %15.6f
format rwbwt_89              %15.6f
format rwbwt_90              %15.6f
format rwbwt_91              %15.6f
format rwbwt_92              %15.6f
format rwbwt_93              %15.6f
format rwbwt_94              %15.6f
format rwbwt_95              %15.6f
format rwbwt_96              %15.6f
format rwbwt_97              %15.6f
format rwbwt_98              %15.6f
format rwbwt_99              %15.6f
format rwbwt_100             %15.6f
format rwbwt_101             %15.6f
format rwbwt_102             %15.6f
format rwbwt_103             %15.6f
format rwbwt_104             %15.6f
format rwbwt_105             %15.6f
format rwbwt_106             %15.6f
format rwbwt_107             %15.6f
format rwbwt_108             %15.6f
format rwbwt_109             %15.6f
format rwbwt_110             %15.6f
format rwbwt_111             %15.6f
format rwbwt_112             %15.6f
format rwbwt_113             %15.6f
format rwbwt_114             %15.6f
format rwbwt_115             %15.6f
format rwbwt_116             %15.6f
format rwbwt_117             %15.6f
format rwbwt_118             %15.6f
format rwbwt_119             %15.6f
format rwbwt_120             %15.6f
format rwbwt_121             %15.6f
format rwbwt_122             %15.6f
format rwbwt_123             %15.6f
format rwbwt_124             %15.6f
format rwbwt_125             %15.6f
format rwbwt_126             %15.6f
format rwbwt_127             %15.6f
format rwbwt_128             %15.6f
format rwbwt_129             %15.6f
format rwbwt_130             %15.6f
format rwbwt_131             %15.6f
format rwbwt_132             %15.6f
format rwbwt_133             %15.6f
format rwbwt_134             %15.6f
format rwbwt_135             %15.6f
format rwbwt_136             %15.6f
format rwbwt_137             %15.6f
format rwbwt_138             %15.6f
format rwbwt_139             %15.6f
format rwbwt_140             %15.6f
format rwbwt_141             %15.6f
format rwbwt_142             %15.6f
format rwbwt_143             %15.6f
format rwbwt_144             %15.6f
format rwbwt_145             %15.6f
format rwbwt_146             %15.6f
format rwbwt_147             %15.6f
format rwbwt_148             %15.6f
format rwbwt_149             %15.6f
format rwbwt_150             %15.6f
format rwbwt_151             %15.6f
format rwbwt_152             %15.6f
format rwbwt_153             %15.6f
format rwbwt_154             %15.6f
format rwbwt_155             %15.6f
format rwbwt_156             %15.6f
format rwbwt_157             %15.6f
format rwbwt_158             %15.6f
format rwbwt_159             %15.6f
format rwbwt_160             %15.6f
format lvwt                  %16.0g
format rlvwt_1               %16.6f
format rlvwt_2               %16.6f
format rlvwt_3               %16.6f
format rlvwt_4               %16.6f
format rlvwt_5               %16.6f
format rlvwt_6               %16.6f
format rlvwt_7               %16.6f
format rlvwt_8               %16.6f
format rlvwt_9               %16.6f
format rlvwt_10              %16.6f
format rlvwt_11              %16.6f
format rlvwt_12              %16.6f
format rlvwt_13              %16.6f
format rlvwt_14              %16.6f
format rlvwt_15              %16.6f
format rlvwt_16              %16.6f
format rlvwt_17              %16.6f
format rlvwt_18              %16.6f
format rlvwt_19              %16.6f
format rlvwt_20              %16.6f
format rlvwt_21              %16.6f
format rlvwt_22              %16.6f
format rlvwt_23              %16.6f
format rlvwt_24              %16.6f
format rlvwt_25              %16.6f
format rlvwt_26              %16.6f
format rlvwt_27              %16.6f
format rlvwt_28              %16.6f
format rlvwt_29              %16.6f
format rlvwt_30              %16.6f
format rlvwt_31              %16.6f
format rlvwt_32              %16.6f
format rlvwt_33              %16.6f
format rlvwt_34              %16.6f
format rlvwt_35              %16.6f
format rlvwt_36              %16.6f
format rlvwt_37              %16.6f
format rlvwt_38              %16.6f
format rlvwt_39              %16.6f
format rlvwt_40              %16.6f
format rlvwt_41              %16.6f
format rlvwt_42              %16.6f
format rlvwt_43              %16.6f
format rlvwt_44              %16.6f
format rlvwt_45              %16.6f
format rlvwt_46              %16.6f
format rlvwt_47              %16.6f
format rlvwt_48              %16.6f
format rlvwt_49              %16.6f
format rlvwt_50              %16.6f
format rlvwt_51              %16.6f
format rlvwt_52              %16.6f
format rlvwt_53              %16.6f
format rlvwt_54              %16.6f
format rlvwt_55              %16.6f
format rlvwt_56              %16.6f
format rlvwt_57              %16.6f
format rlvwt_58              %16.6f
format rlvwt_59              %16.6f
format rlvwt_60              %16.6f
format rlvwt_61              %16.6f
format rlvwt_62              %16.6f
format rlvwt_63              %16.6f
format rlvwt_64              %16.6f
format rlvwt_65              %16.6f
format rlvwt_66              %16.6f
format rlvwt_67              %16.6f
format rlvwt_68              %16.6f
format rlvwt_69              %16.6f
format rlvwt_70              %16.6f
format rlvwt_71              %16.6f
format rlvwt_72              %16.6f
format rlvwt_73              %16.6f
format rlvwt_74              %16.6f
format rlvwt_75              %16.6f
format rlvwt_76              %16.6f
format rlvwt_77              %16.6f
format rlvwt_78              %16.6f
format rlvwt_79              %16.6f
format rlvwt_80              %16.6f
format rlvwt_81              %16.6f
format rlvwt_82              %16.6f
format rlvwt_83              %16.6f
format rlvwt_84              %16.6f
format rlvwt_85              %16.6f
format rlvwt_86              %16.6f
format rlvwt_87              %16.6f
format rlvwt_88              %16.6f
format rlvwt_89              %16.6f
format rlvwt_90              %16.6f
format rlvwt_91              %16.6f
format rlvwt_92              %16.6f
format rlvwt_93              %16.6f
format rlvwt_94              %16.6f
format rlvwt_95              %16.6f
format rlvwt_96              %16.6f
format rlvwt_97              %16.6f
format rlvwt_98              %16.6f
format rlvwt_99              %16.6f
format rlvwt_100             %16.6f
format rlvwt_101             %16.6f
format rlvwt_102             %16.6f
format rlvwt_103             %16.6f
format rlvwt_104             %16.6f
format rlvwt_105             %16.6f
format rlvwt_106             %16.6f
format rlvwt_107             %16.6f
format rlvwt_108             %16.6f
format rlvwt_109             %16.6f
format rlvwt_110             %16.6f
format rlvwt_111             %16.6f
format rlvwt_112             %16.6f
format rlvwt_113             %16.6f
format rlvwt_114             %16.6f
format rlvwt_115             %16.6f
format rlvwt_116             %16.6f
format rlvwt_117             %16.6f
format rlvwt_118             %16.6f
format rlvwt_119             %16.6f
format rlvwt_120             %16.6f
format rlvwt_121             %16.6f
format rlvwt_122             %16.6f
format rlvwt_123             %16.6f
format rlvwt_124             %16.6f
format rlvwt_125             %16.6f
format rlvwt_126             %16.6f
format rlvwt_127             %16.6f
format rlvwt_128             %16.6f
format rlvwt_129             %16.6f
format rlvwt_130             %16.6f
format rlvwt_131             %16.6f
format rlvwt_132             %16.6f
format rlvwt_133             %16.6f
format rlvwt_134             %16.6f
format rlvwt_135             %16.6f
format rlvwt_136             %16.6f
format rlvwt_137             %16.6f
format rlvwt_138             %16.6f
format rlvwt_139             %16.6f
format rlvwt_140             %16.6f
format rlvwt_141             %16.6f
format rlvwt_142             %16.6f
format rlvwt_143             %16.6f
format rlvwt_144             %16.6f
format rlvwt_145             %16.6f
format rlvwt_146             %16.6f
format rlvwt_147             %16.6f
format rlvwt_148             %16.6f
format rlvwt_149             %16.6f
format rlvwt_150             %16.6f
format rlvwt_151             %16.6f
format rlvwt_152             %16.6f
format rlvwt_153             %16.6f
format rlvwt_154             %16.6f
format rlvwt_155             %16.6f
format rlvwt_156             %16.6f
format rlvwt_157             %16.6f
format rlvwt_158             %16.6f
format rlvwt_159             %16.6f
format rlvwt_160             %16.6f
format wrkdaysavg            %4.0g
format rwt20_1               %15.6f
format rwt20_2               %15.6f
format rwt20_3               %15.6f
format rwt20_4               %15.6f
format rwt20_5               %15.6f
format rwt20_6               %15.6f
format rwt20_7               %15.6f
format rwt20_8               %15.6f
format rwt20_9               %15.6f
format rwt20_10              %15.6f
format rwt20_11              %15.6f
format rwt20_12              %15.6f
format rwt20_13              %15.6f
format rwt20_14              %15.6f
format rwt20_15              %15.6f
format rwt20_16              %15.6f
format rwt20_17              %15.6f
format rwt20_18              %15.6f
format rwt20_19              %15.6f
format rwt20_20              %15.6f
format rwt20_21              %15.6f
format rwt20_22              %15.6f
format rwt20_23              %15.6f
format rwt20_24              %15.6f
format rwt20_25              %15.6f
format rwt20_26              %15.6f
format rwt20_27              %15.6f
format rwt20_28              %15.6f
format rwt20_29              %15.6f
format rwt20_30              %15.6f
format rwt20_31              %15.6f
format rwt20_32              %15.6f
format rwt20_33              %15.6f
format rwt20_34              %15.6f
format rwt20_35              %15.6f
format rwt20_36              %15.6f
format rwt20_37              %15.6f
format rwt20_38              %15.6f
format rwt20_39              %15.6f
format rwt20_40              %15.6f
format rwt20_41              %15.6f
format rwt20_42              %15.6f
format rwt20_43              %15.6f
format rwt20_44              %15.6f
format rwt20_45              %15.6f
format rwt20_46              %15.6f
format rwt20_47              %15.6f
format rwt20_48              %15.6f
format rwt20_49              %15.6f
format rwt20_50              %15.6f
format rwt20_51              %15.6f
format rwt20_52              %15.6f
format rwt20_53              %15.6f
format rwt20_54              %15.6f
format rwt20_55              %15.6f
format rwt20_56              %15.6f
format rwt20_57              %15.6f
format rwt20_58              %15.6f
format rwt20_59              %15.6f
format rwt20_60              %15.6f
format rwt20_61              %15.6f
format rwt20_62              %15.6f
format rwt20_63              %15.6f
format rwt20_64              %15.6f
format rwt20_65              %15.6f
format rwt20_66              %15.6f
format rwt20_67              %15.6f
format rwt20_68              %15.6f
format rwt20_69              %15.6f
format rwt20_70              %15.6f
format rwt20_71              %15.6f
format rwt20_72              %15.6f
format rwt20_73              %15.6f
format rwt20_74              %15.6f
format rwt20_75              %15.6f
format rwt20_76              %15.6f
format rwt20_77              %15.6f
format rwt20_78              %15.6f
format rwt20_79              %15.6f
format rwt20_80              %15.6f
format rwt20_81              %15.6f
format rwt20_82              %15.6f
format rwt20_83              %15.6f
format rwt20_84              %15.6f
format rwt20_85              %15.6f
format rwt20_86              %15.6f
format rwt20_87              %15.6f
format rwt20_88              %15.6f
format rwt20_89              %15.6f
format rwt20_90              %15.6f
format rwt20_91              %15.6f
format rwt20_92              %15.6f
format rwt20_93              %15.6f
format rwt20_94              %15.6f
format rwt20_95              %15.6f
format rwt20_96              %15.6f
format rwt20_97              %15.6f
format rwt20_98              %15.6f
format rwt20_99              %15.6f
format rwt20_100             %15.6f
format rwt20_101             %15.6f
format rwt20_102             %15.6f
format rwt20_103             %15.6f
format rwt20_104             %15.6f
format rwt20_105             %15.6f
format rwt20_106             %15.6f
format rwt20_107             %15.6f
format rwt20_108             %15.6f
format rwt20_109             %15.6f
format rwt20_110             %15.6f
format rwt20_111             %15.6f
format rwt20_112             %15.6f
format rwt20_113             %15.6f
format rwt20_114             %15.6f
format rwt20_115             %15.6f
format rwt20_116             %15.6f
format rwt20_117             %15.6f
format rwt20_118             %15.6f
format rwt20_119             %15.6f
format rwt20_120             %15.6f
format rwt20_121             %15.6f
format rwt20_122             %15.6f
format rwt20_123             %15.6f
format rwt20_124             %15.6f
format rwt20_125             %15.6f
format rwt20_126             %15.6f
format rwt20_127             %15.6f
format rwt20_128             %15.6f
format rwt20_129             %15.6f
format rwt20_130             %15.6f
format rwt20_131             %15.6f
format rwt20_132             %15.6f
format rwt20_133             %15.6f
format rwt20_134             %15.6f
format rwt20_135             %15.6f
format rwt20_136             %15.6f
format rwt20_137             %15.6f
format rwt20_138             %15.6f
format rwt20_139             %15.6f
format rwt20_140             %15.6f
format rwt20_141             %15.6f
format rwt20_142             %15.6f
format rwt20_143             %15.6f
format rwt20_144             %15.6f
format rwt20_145             %15.6f
format rwt20_146             %15.6f
format rwt20_147             %15.6f
format rwt20_148             %15.6f
format rwt20_149             %15.6f
format rwt20_150             %15.6f
format rwt20_151             %15.6f
format rwt20_152             %15.6f
format rwt20_153             %15.6f
format rwt20_154             %15.6f
format rwt20_155             %15.6f
format rwt20_156             %15.6f
format rwt20_157             %15.6f
format rwt20_158             %15.6f
format rwt20_159             %15.6f
format rwt20_160             %15.6f
format caseid                %14.0f
format metvalue              %5.2f
format awbwt                 %15.6f
format rawbwt_1              %16.6f
format rawbwt_2              %16.6f
format rawbwt_3              %16.6f
format rawbwt_4              %16.6f
format rawbwt_5              %16.6f
format rawbwt_6              %16.6f
format rawbwt_7              %16.6f
format rawbwt_8              %16.6f
format rawbwt_9              %16.6f
format rawbwt_10             %16.6f
format rawbwt_11             %16.6f
format rawbwt_12             %16.6f
format rawbwt_13             %16.6f
format rawbwt_14             %16.6f
format rawbwt_15             %16.6f
format rawbwt_16             %16.6f
format rawbwt_17             %16.6f
format rawbwt_18             %16.6f
format rawbwt_19             %16.6f
format rawbwt_20             %16.6f
format rawbwt_21             %16.6f
format rawbwt_22             %16.6f
format rawbwt_23             %16.6f
format rawbwt_24             %16.6f
format rawbwt_25             %16.6f
format rawbwt_26             %16.6f
format rawbwt_27             %16.6f
format rawbwt_28             %16.6f
format rawbwt_29             %16.6f
format rawbwt_30             %16.6f
format rawbwt_31             %16.6f
format rawbwt_32             %16.6f
format rawbwt_33             %16.6f
format rawbwt_34             %16.6f
format rawbwt_35             %16.6f
format rawbwt_36             %16.6f
format rawbwt_37             %16.6f
format rawbwt_38             %16.6f
format rawbwt_39             %16.6f
format rawbwt_40             %16.6f
format rawbwt_41             %16.6f
format rawbwt_42             %16.6f
format rawbwt_43             %16.6f
format rawbwt_44             %16.6f
format rawbwt_45             %16.6f
format rawbwt_46             %16.6f
format rawbwt_47             %16.6f
format rawbwt_48             %16.6f
format rawbwt_49             %16.6f
format rawbwt_50             %16.6f
format rawbwt_51             %16.6f
format rawbwt_52             %16.6f
format rawbwt_53             %16.6f
format rawbwt_54             %16.6f
format rawbwt_55             %16.6f
format rawbwt_56             %16.6f
format rawbwt_57             %16.6f
format rawbwt_58             %16.6f
format rawbwt_59             %16.6f
format rawbwt_60             %16.6f
format rawbwt_61             %16.6f
format rawbwt_62             %16.6f
format rawbwt_63             %16.6f
format rawbwt_64             %16.6f
format rawbwt_65             %16.6f
format rawbwt_66             %16.6f
format rawbwt_67             %16.6f
format rawbwt_68             %16.6f
format rawbwt_69             %16.6f
format rawbwt_70             %16.6f
format rawbwt_71             %16.6f
format rawbwt_72             %16.6f
format rawbwt_73             %16.6f
format rawbwt_74             %16.6f
format rawbwt_75             %16.6f
format rawbwt_76             %16.6f
format rawbwt_77             %16.6f
format rawbwt_78             %16.6f
format rawbwt_79             %16.6f
format rawbwt_80             %16.6f
format rawbwt_81             %16.6f
format rawbwt_82             %16.6f
format rawbwt_83             %16.6f
format rawbwt_84             %16.6f
format rawbwt_85             %16.6f
format rawbwt_86             %16.6f
format rawbwt_87             %16.6f
format rawbwt_88             %16.6f
format rawbwt_89             %16.6f
format rawbwt_90             %16.6f
format rawbwt_91             %16.6f
format rawbwt_92             %16.6f
format rawbwt_93             %16.6f
format rawbwt_94             %16.6f
format rawbwt_95             %16.6f
format rawbwt_96             %16.6f
format rawbwt_97             %16.6f
format rawbwt_98             %16.6f
format rawbwt_99             %16.6f
format rawbwt_100            %16.6f
format rawbwt_101            %16.6f
format rawbwt_102            %16.6f
format rawbwt_103            %16.6f
format rawbwt_104            %16.6f
format rawbwt_105            %16.6f
format rawbwt_106            %16.6f
format rawbwt_107            %16.6f
format rawbwt_108            %16.6f
format rawbwt_109            %16.6f
format rawbwt_110            %16.6f
format rawbwt_111            %16.6f
format rawbwt_112            %16.6f
format rawbwt_113            %16.6f
format rawbwt_114            %16.6f
format rawbwt_115            %16.6f
format rawbwt_116            %16.6f
format rawbwt_117            %16.6f
format rawbwt_118            %16.6f
format rawbwt_119            %16.6f
format rawbwt_120            %16.6f
format rawbwt_121            %16.6f
format rawbwt_122            %16.6f
format rawbwt_123            %16.6f
format rawbwt_124            %16.6f
format rawbwt_125            %16.6f
format rawbwt_126            %16.6f
format rawbwt_127            %16.6f
format rawbwt_128            %16.6f
format rawbwt_129            %16.6f
format rawbwt_130            %16.6f
format rawbwt_131            %16.6f
format rawbwt_132            %16.6f
format rawbwt_133            %16.6f
format rawbwt_134            %16.6f
format rawbwt_135            %16.6f
format rawbwt_136            %16.6f
format rawbwt_137            %16.6f
format rawbwt_138            %16.6f
format rawbwt_139            %16.6f
format rawbwt_140            %16.6f
format rawbwt_141            %16.6f
format rawbwt_142            %16.6f
format rawbwt_143            %16.6f
format rawbwt_144            %16.6f
format rawbwt_145            %16.6f
format rawbwt_146            %16.6f
format rawbwt_147            %16.6f
format rawbwt_148            %16.6f
format rawbwt_149            %16.6f
format rawbwt_150            %16.6f
format rawbwt_151            %16.6f
format rawbwt_152            %16.6f
format rawbwt_153            %16.6f
format rawbwt_154            %16.6f
format rawbwt_155            %16.6f
format rawbwt_156            %16.6f
format rawbwt_157            %16.6f
format rawbwt_158            %16.6f
format rawbwt_159            %16.6f
format rawbwt_160            %16.6f
format caseid                %14.0f
format caseid                %14.0f

label var rectype               `"Record Type"'
label var year                  `"Survey year"'
label var caseid                `"ATUS Case ID"'
label var serial                `"Household serial number"'
label var inttype_cps8          `"Interview Type"'
label var numcontacts_cps8      `"Number of actual and attempted personal contacts"'
label var phone                 `"Telephone availability"'
label var hrhhid_cps8           `"Household ID (CPS)"'
label var hrhhid2_cps8          `"Household ID part 2 (CPS)"'
label var hrsersuf_cps8         `"Serial Suffix (CPS)"'
label var hrsample_cps8         `"Sample ID (CPS)"'
label var huhhnum_cps8          `"Household number (CPS)"'
label var cluster               `"Scrambled pseudo primary sampling unit (PSU) cluster variable "'
label var strata                `"Scrambled pseudo primary sampling unit (PSU) collapsed stratum "'
label var year_cps8             `"Year of final CPS interview"'
label var month_cps8            `"Month of final CPS interview"'
label var region                `"Region"'
label var statefip              `"FIPS State Code"'
label var metro                 `"Metropolitan/central city status"'
label var msasize               `"MSA/PMSA size"'
label var metarea               `"Consolidated MSA name"'
label var county                `"FIPS County code"'
label var famincome             `"Family income"'
label var hh_size               `"Number of people in household"'
label var poverty130            `"Household income greater or less than 130% of poverty level"'
label var poverty185            `"Household income greater or less than 185% of poverty level"'
label var povertylevel          `"Income values used in POVERTY185 and POVERTY130"'
label var foodstamp             `"Household received food stamps in past 30 days"'
label var hhtenure              `"Living quarters owned, rented, or occupied without rent"'
label var wic                   `"Received benefits from the WIC program in the last 30 days  "'
label var hh_child              `"Children under 18 in household"'
label var anybrk                `"HH children ate a breakfast at school, day care"'
label var anylnch               `"HH children ate a lunch at school, day care"'
label var housetype             `"Type of housing unit"'
label var hh_numkids            `"Number of children under 18 in household"'
label var fambus                `"Business or farm owned by household member"'
label var ageychild             `"Age of youngest household child"'
label var fambus_resp           `"Business or farm owned by respondent"'
label var hh_numadults          `"Number of adults in household"'
label var fambus_spouse         `"Business or farm owned by respondent's spouse or unmarried partner"'
label var fambus_other          `"Business or farm owned by other hh member"'
label var hh_size_cps8          `"Number of people in household (CPS)"'
label var fambus_cps8           `"Business or farm owned by household member (CPS)"'
label var hh_child_cps8         `"Children under 18 in household (CPS)"'
label var ageychild_cps8        `"Age of youngest household child (CPS)"'
label var kidwaketime           `"Time first household child woke up"'
label var kidbedtime            `"Time last household child went to bed"'
label var pernum                `"Person number (general)"'
label var lineno                `"Person line number"'
label var lineno_cps8           `"Person line number (CPS)"'
label var presence              `"Presence in household"'
label var lfproxy_cps8          `"Labor force information collected by self or proxy response"'
label var month                 `"Month of ATUS interview"'
label var day                   `"ATUS interview day of the week"'
label var holiday               `"Day of ATUS interview was a holiday"'
label var date                  `"Date of ATUS interview"'
label var wt06                  `"Person weight, 2006 methodology"'
label var rwt06                 `"Replicate weight, 2006 methodology"'
label var wt20                  `"Person weight, 2020 methodology"'
label var rwt20                 `"Replicate weight, 2020 methodology"'
label var wt04                  `"Person weight, 2004 methodology"'
label var wt03                  `"Person weight, 2003 methodology"'
label var bwt                   `"Base weight"'
label var rbwt                  `"Replicate weight, base weight"'
label var rwt06_1               `"Replicate weight 1, 2006 methodology"'
label var rwt06_2               `"Replicate weight 2, 2006 methodology"'
label var rwt06_3               `"Replicate weight 3, 2006 methodology"'
label var rwt06_4               `"Replicate weight 4, 2006 methodology"'
label var rwt06_5               `"Replicate weight 5, 2006 methodology"'
label var rwt06_6               `"Replicate weight 6, 2006 methodology"'
label var rwt06_7               `"Replicate weight 7, 2006 methodology"'
label var rwt06_8               `"Replicate weight 8, 2006 methodology"'
label var rwt06_9               `"Replicate weight 9, 2006 methodology"'
label var rwt06_10              `"Replicate weight 10, 2006 methodology"'
label var rwt06_11              `"Replicate weight 11, 2006 methodology"'
label var rwt06_12              `"Replicate weight 12, 2006 methodology"'
label var rwt06_13              `"Replicate weight 13, 2006 methodology"'
label var rwt06_14              `"Replicate weight 14, 2006 methodology"'
label var rwt06_15              `"Replicate weight 15, 2006 methodology"'
label var rwt06_16              `"Replicate weight 16, 2006 methodology"'
label var rwt06_17              `"Replicate weight 17, 2006 methodology"'
label var rwt06_18              `"Replicate weight 18, 2006 methodology"'
label var rwt06_19              `"Replicate weight 19, 2006 methodology"'
label var rwt06_20              `"Replicate weight 20, 2006 methodology"'
label var rwt06_21              `"Replicate weight 21, 2006 methodology"'
label var rwt06_22              `"Replicate weight 22, 2006 methodology"'
label var rwt06_23              `"Replicate weight 23, 2006 methodology"'
label var rwt06_24              `"Replicate weight 24, 2006 methodology"'
label var rwt06_25              `"Replicate weight 25, 2006 methodology"'
label var rwt06_26              `"Replicate weight 26, 2006 methodology"'
label var rwt06_27              `"Replicate weight 27, 2006 methodology"'
label var rwt06_28              `"Replicate weight 28, 2006 methodology"'
label var rwt06_29              `"Replicate weight 29, 2006 methodology"'
label var rwt06_30              `"Replicate weight 30, 2006 methodology"'
label var rwt06_31              `"Replicate weight 31, 2006 methodology"'
label var rwt06_32              `"Replicate weight 32, 2006 methodology"'
label var rwt06_33              `"Replicate weight 33, 2006 methodology"'
label var rwt06_34              `"Replicate weight 34, 2006 methodology"'
label var rwt06_35              `"Replicate weight 35, 2006 methodology"'
label var rwt06_36              `"Replicate weight 36, 2006 methodology"'
label var rwt06_37              `"Replicate weight 37, 2006 methodology"'
label var rwt06_38              `"Replicate weight 38, 2006 methodology"'
label var rwt06_39              `"Replicate weight 39, 2006 methodology"'
label var rwt06_40              `"Replicate weight 40, 2006 methodology"'
label var rwt06_41              `"Replicate weight 41, 2006 methodology"'
label var rwt06_42              `"Replicate weight 42, 2006 methodology"'
label var rwt06_43              `"Replicate weight 43, 2006 methodology"'
label var rwt06_44              `"Replicate weight 44, 2006 methodology"'
label var rwt06_45              `"Replicate weight 45, 2006 methodology"'
label var rwt06_46              `"Replicate weight 46, 2006 methodology"'
label var rwt06_47              `"Replicate weight 47, 2006 methodology"'
label var rwt06_48              `"Replicate weight 48, 2006 methodology"'
label var rwt06_49              `"Replicate weight 49, 2006 methodology"'
label var rwt06_50              `"Replicate weight 50, 2006 methodology"'
label var rwt06_51              `"Replicate weight 51, 2006 methodology"'
label var rwt06_52              `"Replicate weight 52, 2006 methodology"'
label var rwt06_53              `"Replicate weight 53, 2006 methodology"'
label var rwt06_54              `"Replicate weight 54, 2006 methodology"'
label var rwt06_55              `"Replicate weight 55, 2006 methodology"'
label var rwt06_56              `"Replicate weight 56, 2006 methodology"'
label var rwt06_57              `"Replicate weight 57, 2006 methodology"'
label var rwt06_58              `"Replicate weight 58, 2006 methodology"'
label var rwt06_59              `"Replicate weight 59, 2006 methodology"'
label var rwt06_60              `"Replicate weight 60, 2006 methodology"'
label var rwt06_61              `"Replicate weight 61, 2006 methodology"'
label var rwt06_62              `"Replicate weight 62, 2006 methodology"'
label var rwt06_63              `"Replicate weight 63, 2006 methodology"'
label var rwt06_64              `"Replicate weight 64, 2006 methodology"'
label var rwt06_65              `"Replicate weight 65, 2006 methodology"'
label var rwt06_66              `"Replicate weight 66, 2006 methodology"'
label var rwt06_67              `"Replicate weight 67, 2006 methodology"'
label var rwt06_68              `"Replicate weight 68, 2006 methodology"'
label var rwt06_69              `"Replicate weight 69, 2006 methodology"'
label var rwt06_70              `"Replicate weight 70, 2006 methodology"'
label var rwt06_71              `"Replicate weight 71, 2006 methodology"'
label var rwt06_72              `"Replicate weight 72, 2006 methodology"'
label var rwt06_73              `"Replicate weight 73, 2006 methodology"'
label var rwt06_74              `"Replicate weight 74, 2006 methodology"'
label var rwt06_75              `"Replicate weight 75, 2006 methodology"'
label var rwt06_76              `"Replicate weight 76, 2006 methodology"'
label var rwt06_77              `"Replicate weight 77, 2006 methodology"'
label var rwt06_78              `"Replicate weight 78, 2006 methodology"'
label var rwt06_79              `"Replicate weight 79, 2006 methodology"'
label var rwt06_80              `"Replicate weight 80, 2006 methodology"'
label var rwt06_81              `"Replicate weight 81, 2006 methodology"'
label var rwt06_82              `"Replicate weight 82, 2006 methodology"'
label var rwt06_83              `"Replicate weight 83, 2006 methodology"'
label var rwt06_84              `"Replicate weight 84, 2006 methodology"'
label var rwt06_85              `"Replicate weight 85, 2006 methodology"'
label var rwt06_86              `"Replicate weight 86, 2006 methodology"'
label var rwt06_87              `"Replicate weight 87, 2006 methodology"'
label var rwt06_88              `"Replicate weight 88, 2006 methodology"'
label var rwt06_89              `"Replicate weight 89, 2006 methodology"'
label var rwt06_90              `"Replicate weight 90, 2006 methodology"'
label var rwt06_91              `"Replicate weight 91, 2006 methodology"'
label var rwt06_92              `"Replicate weight 92, 2006 methodology"'
label var rwt06_93              `"Replicate weight 93, 2006 methodology"'
label var rwt06_94              `"Replicate weight 94, 2006 methodology"'
label var rwt06_95              `"Replicate weight 95, 2006 methodology"'
label var rwt06_96              `"Replicate weight 96, 2006 methodology"'
label var rwt06_97              `"Replicate weight 97, 2006 methodology"'
label var rwt06_98              `"Replicate weight 98, 2006 methodology"'
label var rwt06_99              `"Replicate weight 99, 2006 methodology"'
label var rwt06_100             `"Replicate weight 100, 2006 methodology"'
label var rwt06_101             `"Replicate weight 101, 2006 methodology"'
label var rwt06_102             `"Replicate weight 102, 2006 methodology"'
label var rwt06_103             `"Replicate weight 103, 2006 methodology"'
label var rwt06_104             `"Replicate weight 104, 2006 methodology"'
label var rwt06_105             `"Replicate weight 105, 2006 methodology"'
label var rwt06_106             `"Replicate weight 106, 2006 methodology"'
label var rwt06_107             `"Replicate weight 107, 2006 methodology"'
label var rwt06_108             `"Replicate weight 108, 2006 methodology"'
label var rwt06_109             `"Replicate weight 109, 2006 methodology"'
label var rwt06_110             `"Replicate weight 110, 2006 methodology"'
label var rwt06_111             `"Replicate weight 111, 2006 methodology"'
label var rwt06_112             `"Replicate weight 112, 2006 methodology"'
label var rwt06_113             `"Replicate weight 113, 2006 methodology"'
label var rwt06_114             `"Replicate weight 114, 2006 methodology"'
label var rwt06_115             `"Replicate weight 115, 2006 methodology"'
label var rwt06_116             `"Replicate weight 116, 2006 methodology"'
label var rwt06_117             `"Replicate weight 117, 2006 methodology"'
label var rwt06_118             `"Replicate weight 118, 2006 methodology"'
label var rwt06_119             `"Replicate weight 119, 2006 methodology"'
label var rwt06_120             `"Replicate weight 120, 2006 methodology"'
label var rwt06_121             `"Replicate weight 121, 2006 methodology"'
label var rwt06_122             `"Replicate weight 122, 2006 methodology"'
label var rwt06_123             `"Replicate weight 123, 2006 methodology"'
label var rwt06_124             `"Replicate weight 124, 2006 methodology"'
label var rwt06_125             `"Replicate weight 125, 2006 methodology"'
label var rwt06_126             `"Replicate weight 126, 2006 methodology"'
label var rwt06_127             `"Replicate weight 127, 2006 methodology"'
label var rwt06_128             `"Replicate weight 128, 2006 methodology"'
label var rwt06_129             `"Replicate weight 129, 2006 methodology"'
label var rwt06_130             `"Replicate weight 130, 2006 methodology"'
label var rwt06_131             `"Replicate weight 131, 2006 methodology"'
label var rwt06_132             `"Replicate weight 132, 2006 methodology"'
label var rwt06_133             `"Replicate weight 133, 2006 methodology"'
label var rwt06_134             `"Replicate weight 134, 2006 methodology"'
label var rwt06_135             `"Replicate weight 135, 2006 methodology"'
label var rwt06_136             `"Replicate weight 136, 2006 methodology"'
label var rwt06_137             `"Replicate weight 137, 2006 methodology"'
label var rwt06_138             `"Replicate weight 138, 2006 methodology"'
label var rwt06_139             `"Replicate weight 139, 2006 methodology"'
label var rwt06_140             `"Replicate weight 140, 2006 methodology"'
label var rwt06_141             `"Replicate weight 141, 2006 methodology"'
label var rwt06_142             `"Replicate weight 142, 2006 methodology"'
label var rwt06_143             `"Replicate weight 143, 2006 methodology"'
label var rwt06_144             `"Replicate weight 144, 2006 methodology"'
label var rwt06_145             `"Replicate weight 145, 2006 methodology"'
label var rwt06_146             `"Replicate weight 146, 2006 methodology"'
label var rwt06_147             `"Replicate weight 147, 2006 methodology"'
label var rwt06_148             `"Replicate weight 148, 2006 methodology"'
label var rwt06_149             `"Replicate weight 149, 2006 methodology"'
label var rwt06_150             `"Replicate weight 150, 2006 methodology"'
label var rwt06_151             `"Replicate weight 151, 2006 methodology"'
label var rwt06_152             `"Replicate weight 152, 2006 methodology"'
label var rwt06_153             `"Replicate weight 153, 2006 methodology"'
label var rwt06_154             `"Replicate weight 154, 2006 methodology"'
label var rwt06_155             `"Replicate weight 155, 2006 methodology"'
label var rwt06_156             `"Replicate weight 156, 2006 methodology"'
label var rwt06_157             `"Replicate weight 157, 2006 methodology"'
label var rwt06_158             `"Replicate weight 158, 2006 methodology"'
label var rwt06_159             `"Replicate weight 159, 2006 methodology"'
label var rwt06_160             `"Replicate weight 160, 2006 methodology"'
label var rbwt_1                `"Replicate weight 1, base weight"'
label var rbwt_2                `"Replicate weight 2, base weight"'
label var rbwt_3                `"Replicate weight 3, base weight"'
label var rbwt_4                `"Replicate weight 4, base weight"'
label var rbwt_5                `"Replicate weight 5, base weight"'
label var rbwt_6                `"Replicate weight 6, base weight"'
label var rbwt_7                `"Replicate weight 7, base weight"'
label var rbwt_8                `"Replicate weight 8, base weight"'
label var rbwt_9                `"Replicate weight 9, base weight"'
label var rbwt_10               `"Replicate weight 10, base weight"'
label var rbwt_11               `"Replicate weight 11, base weight"'
label var rbwt_12               `"Replicate weight 12, base weight"'
label var rbwt_13               `"Replicate weight 13, base weight"'
label var rbwt_14               `"Replicate weight 14, base weight"'
label var rbwt_15               `"Replicate weight 15, base weight"'
label var rbwt_16               `"Replicate weight 16, base weight"'
label var rbwt_17               `"Replicate weight 17, base weight"'
label var rbwt_18               `"Replicate weight 18, base weight"'
label var rbwt_19               `"Replicate weight 19, base weight"'
label var rbwt_20               `"Replicate weight 20, base weight"'
label var rbwt_21               `"Replicate weight 21, base weight"'
label var rbwt_22               `"Replicate weight 22, base weight"'
label var rbwt_23               `"Replicate weight 23, base weight"'
label var rbwt_24               `"Replicate weight 24, base weight"'
label var rbwt_25               `"Replicate weight 25, base weight"'
label var rbwt_26               `"Replicate weight 26, base weight"'
label var rbwt_27               `"Replicate weight 27, base weight"'
label var rbwt_28               `"Replicate weight 28, base weight"'
label var rbwt_29               `"Replicate weight 29, base weight"'
label var rbwt_30               `"Replicate weight 30, base weight"'
label var rbwt_31               `"Replicate weight 31, base weight"'
label var rbwt_32               `"Replicate weight 32, base weight"'
label var rbwt_33               `"Replicate weight 33, base weight"'
label var rbwt_34               `"Replicate weight 34, base weight"'
label var rbwt_35               `"Replicate weight 35, base weight"'
label var rbwt_36               `"Replicate weight 36, base weight"'
label var rbwt_37               `"Replicate weight 37, base weight"'
label var rbwt_38               `"Replicate weight 38, base weight"'
label var rbwt_39               `"Replicate weight 39, base weight"'
label var rbwt_40               `"Replicate weight 40, base weight"'
label var rbwt_41               `"Replicate weight 41, base weight"'
label var rbwt_42               `"Replicate weight 42, base weight"'
label var rbwt_43               `"Replicate weight 43, base weight"'
label var rbwt_44               `"Replicate weight 44, base weight"'
label var rbwt_45               `"Replicate weight 45, base weight"'
label var rbwt_46               `"Replicate weight 46, base weight"'
label var rbwt_47               `"Replicate weight 47, base weight"'
label var rbwt_48               `"Replicate weight 48, base weight"'
label var rbwt_49               `"Replicate weight 49, base weight"'
label var rbwt_50               `"Replicate weight 50, base weight"'
label var rbwt_51               `"Replicate weight 51, base weight"'
label var rbwt_52               `"Replicate weight 52, base weight"'
label var rbwt_53               `"Replicate weight 53, base weight"'
label var rbwt_54               `"Replicate weight 54, base weight"'
label var rbwt_55               `"Replicate weight 55, base weight"'
label var rbwt_56               `"Replicate weight 56, base weight"'
label var rbwt_57               `"Replicate weight 57, base weight"'
label var rbwt_58               `"Replicate weight 58, base weight"'
label var rbwt_59               `"Replicate weight 59, base weight"'
label var rbwt_60               `"Replicate weight 60, base weight"'
label var rbwt_61               `"Replicate weight 61, base weight"'
label var rbwt_62               `"Replicate weight 62, base weight"'
label var rbwt_63               `"Replicate weight 63, base weight"'
label var rbwt_64               `"Replicate weight 64, base weight"'
label var rbwt_65               `"Replicate weight 65, base weight"'
label var rbwt_66               `"Replicate weight 66, base weight"'
label var rbwt_67               `"Replicate weight 67, base weight"'
label var rbwt_68               `"Replicate weight 68, base weight"'
label var rbwt_69               `"Replicate weight 69, base weight"'
label var rbwt_70               `"Replicate weight 70, base weight"'
label var rbwt_71               `"Replicate weight 71, base weight"'
label var rbwt_72               `"Replicate weight 72, base weight"'
label var rbwt_73               `"Replicate weight 73, base weight"'
label var rbwt_74               `"Replicate weight 74, base weight"'
label var rbwt_75               `"Replicate weight 75, base weight"'
label var rbwt_76               `"Replicate weight 76, base weight"'
label var rbwt_77               `"Replicate weight 77, base weight"'
label var rbwt_78               `"Replicate weight 78, base weight"'
label var rbwt_79               `"Replicate weight 79, base weight"'
label var rbwt_80               `"Replicate weight 80, base weight"'
label var rbwt_81               `"Replicate weight 81, base weight"'
label var rbwt_82               `"Replicate weight 82, base weight"'
label var rbwt_83               `"Replicate weight 83, base weight"'
label var rbwt_84               `"Replicate weight 84, base weight"'
label var rbwt_85               `"Replicate weight 85, base weight"'
label var rbwt_86               `"Replicate weight 86, base weight"'
label var rbwt_87               `"Replicate weight 87, base weight"'
label var rbwt_88               `"Replicate weight 88, base weight"'
label var rbwt_89               `"Replicate weight 89, base weight"'
label var rbwt_90               `"Replicate weight 90, base weight"'
label var rbwt_91               `"Replicate weight 91, base weight"'
label var rbwt_92               `"Replicate weight 92, base weight"'
label var rbwt_93               `"Replicate weight 93, base weight"'
label var rbwt_94               `"Replicate weight 94, base weight"'
label var rbwt_95               `"Replicate weight 95, base weight"'
label var rbwt_96               `"Replicate weight 96, base weight"'
label var rbwt_97               `"Replicate weight 97, base weight"'
label var rbwt_98               `"Replicate weight 98, base weight"'
label var rbwt_99               `"Replicate weight 99, base weight"'
label var rbwt_100              `"Replicate weight 100, base weight"'
label var rbwt_101              `"Replicate weight 101, base weight"'
label var rbwt_102              `"Replicate weight 102, base weight"'
label var rbwt_103              `"Replicate weight 103, base weight"'
label var rbwt_104              `"Replicate weight 104, base weight"'
label var rbwt_105              `"Replicate weight 105, base weight"'
label var rbwt_106              `"Replicate weight 106, base weight"'
label var rbwt_107              `"Replicate weight 107, base weight"'
label var rbwt_108              `"Replicate weight 108, base weight"'
label var rbwt_109              `"Replicate weight 109, base weight"'
label var rbwt_110              `"Replicate weight 110, base weight"'
label var rbwt_111              `"Replicate weight 111, base weight"'
label var rbwt_112              `"Replicate weight 112, base weight"'
label var rbwt_113              `"Replicate weight 113, base weight"'
label var rbwt_114              `"Replicate weight 114, base weight"'
label var rbwt_115              `"Replicate weight 115, base weight"'
label var rbwt_116              `"Replicate weight 116, base weight"'
label var rbwt_117              `"Replicate weight 117, base weight"'
label var rbwt_118              `"Replicate weight 118, base weight"'
label var rbwt_119              `"Replicate weight 119, base weight"'
label var rbwt_120              `"Replicate weight 120, base weight"'
label var rbwt_121              `"Replicate weight 121, base weight"'
label var rbwt_122              `"Replicate weight 122, base weight"'
label var rbwt_123              `"Replicate weight 123, base weight"'
label var rbwt_124              `"Replicate weight 124, base weight"'
label var rbwt_125              `"Replicate weight 125, base weight"'
label var rbwt_126              `"Replicate weight 126, base weight"'
label var rbwt_127              `"Replicate weight 127, base weight"'
label var rbwt_128              `"Replicate weight 128, base weight"'
label var rbwt_129              `"Replicate weight 129, base weight"'
label var rbwt_130              `"Replicate weight 130, base weight"'
label var rbwt_131              `"Replicate weight 131, base weight"'
label var rbwt_132              `"Replicate weight 132, base weight"'
label var rbwt_133              `"Replicate weight 133, base weight"'
label var rbwt_134              `"Replicate weight 134, base weight"'
label var rbwt_135              `"Replicate weight 135, base weight"'
label var rbwt_136              `"Replicate weight 136, base weight"'
label var rbwt_137              `"Replicate weight 137, base weight"'
label var rbwt_138              `"Replicate weight 138, base weight"'
label var rbwt_139              `"Replicate weight 139, base weight"'
label var rbwt_140              `"Replicate weight 140, base weight"'
label var rbwt_141              `"Replicate weight 141, base weight"'
label var rbwt_142              `"Replicate weight 142, base weight"'
label var rbwt_143              `"Replicate weight 143, base weight"'
label var rbwt_144              `"Replicate weight 144, base weight"'
label var rbwt_145              `"Replicate weight 145, base weight"'
label var rbwt_146              `"Replicate weight 146, base weight"'
label var rbwt_147              `"Replicate weight 147, base weight"'
label var rbwt_148              `"Replicate weight 148, base weight"'
label var rbwt_149              `"Replicate weight 149, base weight"'
label var rbwt_150              `"Replicate weight 150, base weight"'
label var rbwt_151              `"Replicate weight 151, base weight"'
label var rbwt_152              `"Replicate weight 152, base weight"'
label var rbwt_153              `"Replicate weight 153, base weight"'
label var rbwt_154              `"Replicate weight 154, base weight"'
label var rbwt_155              `"Replicate weight 155, base weight"'
label var rbwt_156              `"Replicate weight 156, base weight"'
label var rbwt_157              `"Replicate weight 157, base weight"'
label var rbwt_158              `"Replicate weight 158, base weight"'
label var rbwt_159              `"Replicate weight 159, base weight"'
label var rbwt_160              `"Replicate weight 160, base weight"'
label var ehwt                  `"Eating and Health Module weight"'
label var rehwt                 `"Replicate weight, eating and health module weight"'
label var rehwt_1               `"Replicate weight 1, eating and health module weight"'
label var rehwt_2               `"Replicate weight 2, eating and health module weight"'
label var rehwt_3               `"Replicate weight 3, eating and health module weight"'
label var rehwt_4               `"Replicate weight 4, eating and health module weight"'
label var rehwt_5               `"Replicate weight 5, eating and health module weight"'
label var rehwt_6               `"Replicate weight 6, eating and health module weight"'
label var rehwt_7               `"Replicate weight 7, eating and health module weight"'
label var rehwt_8               `"Replicate weight 8, eating and health module weight"'
label var rehwt_9               `"Replicate weight 9, eating and health module weight"'
label var rehwt_10              `"Replicate weight 10, eating and health module weight"'
label var rehwt_11              `"Replicate weight 11, eating and health module weight"'
label var rehwt_12              `"Replicate weight 12, eating and health module weight"'
label var rehwt_13              `"Replicate weight 13, eating and health module weight"'
label var rehwt_14              `"Replicate weight 14, eating and health module weight"'
label var rehwt_15              `"Replicate weight 15, eating and health module weight"'
label var rehwt_16              `"Replicate weight 16, eating and health module weight"'
label var rehwt_17              `"Replicate weight 17, eating and health module weight"'
label var rehwt_18              `"Replicate weight 18, eating and health module weight"'
label var rehwt_19              `"Replicate weight 19, eating and health module weight"'
label var rehwt_20              `"Replicate weight 20, eating and health module weight"'
label var rehwt_21              `"Replicate weight 21, eating and health module weight"'
label var rehwt_22              `"Replicate weight 22, eating and health module weight"'
label var rehwt_23              `"Replicate weight 23, eating and health module weight"'
label var rehwt_24              `"Replicate weight 24, eating and health module weight"'
label var rehwt_25              `"Replicate weight 25, eating and health module weight"'
label var rehwt_26              `"Replicate weight 26, eating and health module weight"'
label var rehwt_27              `"Replicate weight 27, eating and health module weight"'
label var rehwt_28              `"Replicate weight 28, eating and health module weight"'
label var rehwt_29              `"Replicate weight 29, eating and health module weight"'
label var rehwt_30              `"Replicate weight 30, eating and health module weight"'
label var rehwt_31              `"Replicate weight 31, eating and health module weight"'
label var rehwt_32              `"Replicate weight 32, eating and health module weight"'
label var rehwt_33              `"Replicate weight 33, eating and health module weight"'
label var rehwt_34              `"Replicate weight 34, eating and health module weight"'
label var rehwt_35              `"Replicate weight 35, eating and health module weight"'
label var rehwt_36              `"Replicate weight 36, eating and health module weight"'
label var rehwt_37              `"Replicate weight 37, eating and health module weight"'
label var rehwt_38              `"Replicate weight 38, eating and health module weight"'
label var rehwt_39              `"Replicate weight 39, eating and health module weight"'
label var rehwt_40              `"Replicate weight 40, eating and health module weight"'
label var rehwt_41              `"Replicate weight 41, eating and health module weight"'
label var rehwt_42              `"Replicate weight 42, eating and health module weight"'
label var rehwt_43              `"Replicate weight 43, eating and health module weight"'
label var rehwt_44              `"Replicate weight 44, eating and health module weight"'
label var rehwt_45              `"Replicate weight 45, eating and health module weight"'
label var rehwt_46              `"Replicate weight 46, eating and health module weight"'
label var rehwt_47              `"Replicate weight 47, eating and health module weight"'
label var rehwt_48              `"Replicate weight 48, eating and health module weight"'
label var rehwt_49              `"Replicate weight 49, eating and health module weight"'
label var rehwt_50              `"Replicate weight 50, eating and health module weight"'
label var rehwt_51              `"Replicate weight 51, eating and health module weight"'
label var rehwt_52              `"Replicate weight 52, eating and health module weight"'
label var rehwt_53              `"Replicate weight 53, eating and health module weight"'
label var rehwt_54              `"Replicate weight 54, eating and health module weight"'
label var rehwt_55              `"Replicate weight 55, eating and health module weight"'
label var rehwt_56              `"Replicate weight 56, eating and health module weight"'
label var rehwt_57              `"Replicate weight 57, eating and health module weight"'
label var rehwt_58              `"Replicate weight 58, eating and health module weight"'
label var rehwt_59              `"Replicate weight 59, eating and health module weight"'
label var rehwt_60              `"Replicate weight 60, eating and health module weight"'
label var rehwt_61              `"Replicate weight 61, eating and health module weight"'
label var rehwt_62              `"Replicate weight 62, eating and health module weight"'
label var rehwt_63              `"Replicate weight 63, eating and health module weight"'
label var rehwt_64              `"Replicate weight 64, eating and health module weight"'
label var rehwt_65              `"Replicate weight 65, eating and health module weight"'
label var rehwt_66              `"Replicate weight 66, eating and health module weight"'
label var rehwt_67              `"Replicate weight 67, eating and health module weight"'
label var rehwt_68              `"Replicate weight 68, eating and health module weight"'
label var rehwt_69              `"Replicate weight 69, eating and health module weight"'
label var rehwt_70              `"Replicate weight 70, eating and health module weight"'
label var rehwt_71              `"Replicate weight 71, eating and health module weight"'
label var rehwt_72              `"Replicate weight 72, eating and health module weight"'
label var rehwt_73              `"Replicate weight 73, eating and health module weight"'
label var rehwt_74              `"Replicate weight 74, eating and health module weight"'
label var rehwt_75              `"Replicate weight 75, eating and health module weight"'
label var rehwt_76              `"Replicate weight 76, eating and health module weight"'
label var rehwt_77              `"Replicate weight 77, eating and health module weight"'
label var rehwt_78              `"Replicate weight 78, eating and health module weight"'
label var rehwt_79              `"Replicate weight 79, eating and health module weight"'
label var rehwt_80              `"Replicate weight 80, eating and health module weight"'
label var rehwt_81              `"Replicate weight 81, eating and health module weight"'
label var rehwt_82              `"Replicate weight 82, eating and health module weight"'
label var rehwt_83              `"Replicate weight 83, eating and health module weight"'
label var rehwt_84              `"Replicate weight 84, eating and health module weight"'
label var rehwt_85              `"Replicate weight 85, eating and health module weight"'
label var rehwt_86              `"Replicate weight 86, eating and health module weight"'
label var rehwt_87              `"Replicate weight 87, eating and health module weight"'
label var rehwt_88              `"Replicate weight 88, eating and health module weight"'
label var rehwt_89              `"Replicate weight 89, eating and health module weight"'
label var rehwt_90              `"Replicate weight 90, eating and health module weight"'
label var rehwt_91              `"Replicate weight 91, eating and health module weight"'
label var rehwt_92              `"Replicate weight 92, eating and health module weight"'
label var rehwt_93              `"Replicate weight 93, eating and health module weight"'
label var rehwt_94              `"Replicate weight 94, eating and health module weight"'
label var rehwt_95              `"Replicate weight 95, eating and health module weight"'
label var rehwt_96              `"Replicate weight 96, eating and health module weight"'
label var rehwt_97              `"Replicate weight 97, eating and health module weight"'
label var rehwt_98              `"Replicate weight 98, eating and health module weight"'
label var rehwt_99              `"Replicate weight 99, eating and health module weight"'
label var rehwt_100             `"Replicate weight 100, eating and health module weight"'
label var rehwt_101             `"Replicate weight 101, eating and health module weight"'
label var rehwt_102             `"Replicate weight 102, eating and health module weight"'
label var rehwt_103             `"Replicate weight 103, eating and health module weight"'
label var rehwt_104             `"Replicate weight 104, eating and health module weight"'
label var rehwt_105             `"Replicate weight 105, eating and health module weight"'
label var rehwt_106             `"Replicate weight 106, eating and health module weight"'
label var rehwt_107             `"Replicate weight 107, eating and health module weight"'
label var rehwt_108             `"Replicate weight 108, eating and health module weight"'
label var rehwt_109             `"Replicate weight 109, eating and health module weight"'
label var rehwt_110             `"Replicate weight 110, eating and health module weight"'
label var rehwt_111             `"Replicate weight 111, eating and health module weight"'
label var rehwt_112             `"Replicate weight 112, eating and health module weight"'
label var rehwt_113             `"Replicate weight 113, eating and health module weight"'
label var rehwt_114             `"Replicate weight 114, eating and health module weight"'
label var rehwt_115             `"Replicate weight 115, eating and health module weight"'
label var rehwt_116             `"Replicate weight 116, eating and health module weight"'
label var rehwt_117             `"Replicate weight 117, eating and health module weight"'
label var rehwt_118             `"Replicate weight 118, eating and health module weight"'
label var rehwt_119             `"Replicate weight 119, eating and health module weight"'
label var rehwt_120             `"Replicate weight 120, eating and health module weight"'
label var rehwt_121             `"Replicate weight 121, eating and health module weight"'
label var rehwt_122             `"Replicate weight 122, eating and health module weight"'
label var rehwt_123             `"Replicate weight 123, eating and health module weight"'
label var rehwt_124             `"Replicate weight 124, eating and health module weight"'
label var rehwt_125             `"Replicate weight 125, eating and health module weight"'
label var rehwt_126             `"Replicate weight 126, eating and health module weight"'
label var rehwt_127             `"Replicate weight 127, eating and health module weight"'
label var rehwt_128             `"Replicate weight 128, eating and health module weight"'
label var rehwt_129             `"Replicate weight 129, eating and health module weight"'
label var rehwt_130             `"Replicate weight 130, eating and health module weight"'
label var rehwt_131             `"Replicate weight 131, eating and health module weight"'
label var rehwt_132             `"Replicate weight 132, eating and health module weight"'
label var rehwt_133             `"Replicate weight 133, eating and health module weight"'
label var rehwt_134             `"Replicate weight 134, eating and health module weight"'
label var rehwt_135             `"Replicate weight 135, eating and health module weight"'
label var rehwt_136             `"Replicate weight 136, eating and health module weight"'
label var rehwt_137             `"Replicate weight 137, eating and health module weight"'
label var rehwt_138             `"Replicate weight 138, eating and health module weight"'
label var rehwt_139             `"Replicate weight 139, eating and health module weight"'
label var rehwt_140             `"Replicate weight 140, eating and health module weight"'
label var rehwt_141             `"Replicate weight 141, eating and health module weight"'
label var rehwt_142             `"Replicate weight 142, eating and health module weight"'
label var rehwt_143             `"Replicate weight 143, eating and health module weight"'
label var rehwt_144             `"Replicate weight 144, eating and health module weight"'
label var rehwt_145             `"Replicate weight 145, eating and health module weight"'
label var rehwt_146             `"Replicate weight 146, eating and health module weight"'
label var rehwt_147             `"Replicate weight 147, eating and health module weight"'
label var rehwt_148             `"Replicate weight 148, eating and health module weight"'
label var rehwt_149             `"Replicate weight 149, eating and health module weight"'
label var rehwt_150             `"Replicate weight 150, eating and health module weight"'
label var rehwt_151             `"Replicate weight 151, eating and health module weight"'
label var rehwt_152             `"Replicate weight 152, eating and health module weight"'
label var rehwt_153             `"Replicate weight 153, eating and health module weight"'
label var rehwt_154             `"Replicate weight 154, eating and health module weight"'
label var rehwt_155             `"Replicate weight 155, eating and health module weight"'
label var rehwt_156             `"Replicate weight 156, eating and health module weight"'
label var rehwt_157             `"Replicate weight 157, eating and health module weight"'
label var rehwt_158             `"Replicate weight 158, eating and health module weight"'
label var rehwt_159             `"Replicate weight 159, eating and health module weight"'
label var rehwt_160             `"Replicate weight 160, eating and health module weight"'
label var age                   `"Age"'
label var sex                   `"Sex"'
label var race                  `"Race"'
label var hispan                `"Hispanic origin"'
label var asian                 `"Asian origin"'
label var marst                 `"Marital status"'
label var yrimmig               `"Year of immigration"'
label var citizen               `"Citizenship status"'
label var bpl                   `"Birthplace"'
label var mbpl                  `"Mother's birthplace"'
label var fbpl                  `"Father's birthplace"'
label var relate                `"Relationship to ATUS respondent "'
label var age_cps8              `"Age (CPS)"'
label var sex_cps8              `"Sex (CPS)"'
label var relate_cps8           `"Relationship to CPS respondent"'
label var popstat               `"Adult civilian, armed forces, or child (CPS)"'
label var genhealth             `"General health"'
label var height                `"Height (in inches)"'
label var weight                `"Weight (in pounds)"'
label var bmi                   `"Body Mass Index"'
label var educ                  `"Highest level of school completed"'
label var educyrs               `"Years of education"'
label var schlcoll              `"Enrollment in school or college"'
label var schlcoll_cps8         `"Enrollment in school or college (CPS)"'
label var vetstat               `"Veteran status"'
label var vetlast               `"Last period of service in armed forces"'
label var vet1                  `"Veteran's most recent period of service"'
label var vet2                  `"Veteran's second most recent period of service"'
label var vet3                  `"Veteran's third most recent period of service"'
label var vet4                  `"Veteran's fourth most recent period of service"'
label var afnow                 `"Current serving in Armed Forces"'
label var empstat               `"Labor force status"'
label var multjobs              `"Has more than one job"'
label var clwkr                 `"Class of worker, main job"'
label var occ2                  `"General occupation category, main job"'
label var occ                   `"Detailed occupation category, main job"'
label var ind2                  `"General industry classification, main job"'
label var ind                   `"Detailed industry classification, main job"'
label var whyabsnt              `"Reason absent from job last week"'
label var fambus_pay            `"Received pay or profits from family business"'
label var fambus_wrk            `"Did unpaid work for family business during past 7 days"'
label var looking               `"Looking for work during last 4 weeks"'
label var retired               `"Retired"'
label var empstat_cps8          `"Labor force status (CPS)"'
label var multjobs_cps8         `"Has more than one job (CPS)"'
label var clwkr_cps8            `"Class of worker, main job (CPS)"'
label var clwkr_oj_cps8         `"Class of worker, other job (CPS)"'
label var occ2_cps8             `"General occupation category, main job (CPS)"'
label var occ_cps8              `"Detailed occupation category, main job (CPS)"'
label var occ2_oj_cps8          `"General occupation category, other job (CPS)"'
label var occ_oj_cps8           `"Detailed occupation category, other job (CPS)"'
label var ind2_cps8             `"General industry classification, main job (CPS)"'
label var ind_cps8              `"Detailed industry classification, main job (CPS)"'
label var ind2_oj_cps8          `"General industry classification, other job (CPS)"'
label var ind_oj_cps8           `"Detailed industry classification, other job (CPS)"'
label var union_cps8            `"Union membership (CPS)"'
label var payifabs_cps8         `"Paid for time off work last week (CPS)"'
label var whyabsnt_cps8         `"Reason absent from job last week (CPS)"'
label var whyptlwk_cps8         `"Why worked less than 35 hours last week (CPS)"'
label var fambus_wrk_cps8       `"Did unpaid work for family business during past 7 days (CPS)"'
label var fambus_pay_cps8       `"Received pay or profits from family business (CPS)"'
label var looking_cps8          `"Looking for work during last 4 weeks (CPS)"'
label var wantjob_cps8          `"Respondent currently wants a job (CPS)"'
label var whyunemp_cps8         `"Reason unemployed (CPS)"'
label var whyleft_cps8          `"Main reason left last job (CPS)"'
label var wnlwnilf_cps8         `"When last worked (CPS)"'
label var intenfwk_cps8         `"Intend to seek work in next 12 months (CPS)"'
label var retired_cps8          `"Retired (CPS)"'
label var fullpart              `"Full time/part time employment status"'
label var uhrsworkt             `"Hours usually worked per week"'
label var uhrswork1             `"Hours usually worked per week at main job"'
label var uhrswork2             `"Hours usually worked per week at other jobs"'
label var earnweek              `"Weekly earnings"'
label var paidhour              `"Hourly or non-hourly pay"'
label var earnrpt               `"Easiest way to report earnings"'
label var hourwage              `"Hourly earnings"'
label var hrsatrate             `"Hours worked at hourly rate"'
label var otusual               `"Usually receives overtime, tips, commission at main job"'
label var otpay                 `"Weekly overtime earnings"'
label var cpsupdate             `"Earnings updated in ATUS"'
label var fullpart_cps8         `"Full time/part time employment status (CPS)"'
label var uhrsworkt_cps8        `"Hours usually worked per week (CPS)"'
label var uhrswork1_cps8        `"Hours usually worked per week at main job (CPS)"'
label var uhrswork2_cps8        `"Hours usually worked per week at other jobs (CPS)"'
label var hrsworkt_cps8         `"Hours worked last week (CPS)"'
label var hrswork1_cps8         `"Hours worked at main job last week (CPS)"'
label var hrswork2_cps8         `"Hours worked at other job(s) last week (CPS)"'
label var earnweek_cps8         `"Weekly earnings (CPS)"'
label var earnrpt_cps8          `"Easiest way to report earnings (CPS)"'
label var hourwage_cps8         `"Hourly earnings (CPS)"'
label var paidhour_cps8         `"Hourly or non-hourly pay (CPS)"'
label var hrsatrate_cps8        `"Hours worked at hourly rate (CPS)"'
label var otusual_cps8          `"Usually receives overtime, tips, commission at main job (CPS)"'
label var otpay_cps8            `"Weekly overtime earnings (CPS)"'
label var fwk_emplr             `"Checked with employer for work"'
label var fwk_pubag             `"Checked public employment agency for work"'
label var fwk_pvtag             `"Checked private employment agency for work"'
label var fwk_relate            `"Contacted friends or relatives to find work"'
label var fwk_school            `"Contacted school/university employment center to find work"'
label var fwk_resume            `"Sent out resumes or filled out job applications"'
label var fwk_union             `"Checked union/professional registers to find work"'
label var fwk_ads               `"Placed or answered ads"'
label var fwk_othera            `"Used other active methods to find work"'
label var fwk_readads           `"Looked at job ads"'
label var fwk_jobprgm           `"Attended job training program/course"'
label var fwk_nothing           `"Did nothing to find work"'
label var fwk_otherp            `"Used other passive methods to find work"'
label var fwk_emplr_cps8        `"Checked with employer for work (CPS)"'
label var fwk_pubag_cps8        `"Checked public employment agency for work (CPS)"'
label var fwk_pvtag_cps8        `"Checked private employment agency for work (CPS)"'
label var fwk_relate_cps8       `"Contacted friends or relatives to find work (CPS)"'
label var fwk_school_cps8       `"Contacted school/university employment center to find work (CPS)"'
label var fwk_resume_cps8       `"Sent out resumes or filled out job applications (CPS)"'
label var fwk_union_cps8        `"Checked union/professional registers to find work (CPS)"'
label var fwk_ads_cps8          `"Placed or answered ads (CPS)"'
label var fwk_othera_cps8       `"Used other active methods to find work (CPS)"'
label var fwk_readads_cps8      `"Looked at job ads (CPS)"'
label var fwk_jobprgm_cps8      `"Attended job training program/course (CPS)"'
label var fwk_nothing_cps8      `"Did nothing to find work (CPS)"'
label var fwk_otherp_cps8       `"Used other passive methods to find work (CPS)"'
label var spousepres            `"Spouse or unmarried partner in household"'
label var spage                 `"Age (spouse or partner)"'
label var spsex                 `"Sex of respondent's spouse or unmarried partner"'
label var sprace                `"Race (spouse or partner)"'
label var sphispan              `"Hispanic origin (spouse or partner)"'
label var speduc                `"Highest level of school completed (spouse or partner)"'
label var spempnot              `"Employed (spouse or partner) "'
label var spempstat             `"Employment status (spouse or partner)"'
label var spusualhrs            `"Usual work hours (spouse or partner)"'
label var spearnweek            `"Weekly earnings (spouse or partner)"'
label var kidund18              `"Own child under 18 in household"'
label var hh_numownkids         `"Number of own children under 18 in household"'
label var kidund13              `"Own child under 13 in household"'
label var kidund1               `"Own child under 1 in household"'
label var kid1to2               `"Own child age 1 to 2 in household"'
label var kid3to5               `"Own child age 3 to 5 in household"'
label var kid6to12              `"Own child age 6 to 12 in household"'
label var kid13to17             `"Own child age 13 to 17 in household"'
label var dtrund18              `"Own daughter under 18 in household"'
label var dtrund1               `"Own daughter under 1 in household"'
label var dtr1to2               `"Own daughter age 1 to 2 in household"'
label var dtr3to5               `"Own daughter age 3 to 5 in household"'
label var dtr6to12              `"Own daughter age 6 to 12 in household"'
label var dtr13to17             `"Own daughter age 13 to 17 in household"'
label var sonund18              `"Own son under 18 in household"'
label var sonund1               `"Own son under 1 in household"'
label var son1to2               `"Own son age 1 to 2 in household"'
label var son3to5               `"Own son age 3 to 5 in  household"'
label var son6to12              `"Own son age 6 to 12 in household"'
label var son13to17             `"Own son age 13 to 17 in household"'
label var nonhhchild            `"Own child under 18 not in household"'
label var nosccrsn1             `"Reason no secondary childcare of own household children"'
label var nosccrsn2             `"Reason no secondary childcare of non-own household children"'
label var scc_all               `"Total time spent on secondary childcare for all children"'
label var scc_own               `"Total time spent on secondary childcare of own children"'
label var scc_hh                `"Total time spent on secondary childcare for hh children"'
label var scc_hhnhhown          `"Total time spent on secondary childcare for hh and own non-hh children "'
label var scc_ownhh             `"Total time spent on secondary childcare of own hh children"'
label var scc_ownnhh            `"Total time spent on secondary childcare of own non-hh children"'
label var scc_nownhh            `"Total time spent on secondary childcare of non-own hh children"'
label var scc_nownnhh           `"Total time spent on secondary childcare of non-own, non-hh children"'
label var eh_resp               `"Eating and Health Module Respondent"'
label var ped                   `"Total time in primary eating and drinking (in minutes)"'
label var sed_drink             `"Total time in secondary drinking (in minutes)"'
label var sed_eat               `"Total time in secondary eating (in minutes)"'
label var foodshop              `"ATUS respondent usually does the food shopping"'
label var mealprep              `"ATUS respondent usually does the meal preparation"'
label var soda                  `"Consumed soft drinks such as cola, root beer, or ginger ale "'
label var dietsoda              `"Type of soft drink consumed "'
label var milk                  `"Unpasteurized or raw milk in last 7 days"'
label var meat                  `"Prepared any meals with meat, poultry or seafood  in last 7 days"'
label var store                 `"Place where majority of groceries purchased"'
label var streason              `"Reason for purchasing groceries at preferred store"'
label var exercise              `"Participated in physical activities for fitness and health in last 7 days"'
label var exfreq                `"Times participated in physical activities in last 7 days"'
label var fastfd                `"Purchased prepared food in last seven days"'
label var fastfdfreq            `"Times purchased prepared food in last 7 days"'
label var alldaydrk             `"Secondary drinking all day"'
label var fdtherm               `"Used thermometer when preparing meals "'
label var alldayeat             `"Secondary eating all day"'
label var enoughfd              `"Amount of food eaten in household"'
label var anysecdrk             `"Any secondary drinking"'
label var anyseceat             `"Any secondary eating"'
label var schlbrk               `"Ate breakfast prepared at school or day care"'
label var schllnch              `"Ate a lunch prepared and served at school or day care "'
label var diffany               `"Any difficulty"'
label var diffcare              `"Personal care difficulty"'
label var diffeye               `"Vision difficulty"'
label var diffhear              `"Difficulty hearing"'
label var diffmob               `"Mobility limiting disability"'
label var diffphys              `"Physical difficulty"'
label var diffrem               `"Difficulty remembering"'
label var introdate             `"Day of the month case was introduced"'
label var intromonth            `"Month in which case was introduced"'
label var introyear             `"Year in which case was introduced"'
label var atusdp                `"ATUS designated person same as CPS designated person"'
label var otherlang             `"Assigned non-English language"'
label var incent                `"Incentive or non-incentive case"'
label var totact                `"Total number of activities reported"'
label var avgdur                `"Average duration of all reported diary activities (in minutes)"'
label var dataqual              `"Interview should not be used"'
label var outcome               `"Final interview outcome code"'
label var outcome_alt           `"Alternative final interview outcome code"'
label var intid                 `"Unique anonymous ATUS interviewer ID"'
label var cpsidp                `"Unique Longitudinal CPS Identifier"'
label var wb_resp               `"Well-Being Module Respondent"'
label var rested                `"Well-rested yesterday"'
label var highbp                `"High blood pressure in last five years"'
label var painmed               `"Pain medication yesterday"'
label var wbeligtime            `"Minutes spent in well-being module eligible activities"'
label var wbwt                  `"Well-being Module final statistical weight, person-level"'
label var wbtypical             `"Yesterday was typical"'
label var wbladder              `"Life satisfaction ladder"'
label var rwbwt_1               `"Replicate weight 1, well-being module person-level weight"'
label var rwbwt_2               `"Replicate weight 2, well-being module person-level weight"'
label var rwbwt_3               `"Replicate weight 3, well-being module person-level weight"'
label var rwbwt_4               `"Replicate weight 4, well-being module person-level weight"'
label var rwbwt_5               `"Replicate weight 5, well-being module person-level weight"'
label var rwbwt_6               `"Replicate weight 6, well-being module person-level weight"'
label var rwbwt_7               `"Replicate weight 7, well-being module person-level weight"'
label var rwbwt_8               `"Replicate weight 8, well-being module person-level weight"'
label var rwbwt_9               `"Replicate weight 9, well-being module person-level weight"'
label var rwbwt_10              `"Replicate weight 10, well-being module person-level weight"'
label var rwbwt_11              `"Replicate weight 11, well-being module person-level weight"'
label var rwbwt_12              `"Replicate weight 12, well-being module person-level weight"'
label var rwbwt_13              `"Replicate weight 13, well-being module person-level weight"'
label var rwbwt_14              `"Replicate weight 14, well-being module person-level weight"'
label var rwbwt_15              `"Replicate weight 15, well-being module person-level weight"'
label var rwbwt_16              `"Replicate weight 16, well-being module person-level weight"'
label var rwbwt_17              `"Replicate weight 17, well-being module person-level weight"'
label var rwbwt_18              `"Replicate weight 18, well-being module person-level weight"'
label var rwbwt_19              `"Replicate weight 19, well-being module person-level weight"'
label var rwbwt_20              `"Replicate weight 20, well-being module person-level weight"'
label var rwbwt_21              `"Replicate weight 21, well-being module person-level weight"'
label var rwbwt_22              `"Replicate weight 22, well-being module person-level weight"'
label var rwbwt_23              `"Replicate weight 23, well-being module person-level weight"'
label var rwbwt_24              `"Replicate weight 24, well-being module person-level weight"'
label var rwbwt_25              `"Replicate weight 25, well-being module person-level weight"'
label var rwbwt_26              `"Replicate weight 26, well-being module person-level weight"'
label var rwbwt_27              `"Replicate weight 27, well-being module person-level weight"'
label var rwbwt_28              `"Replicate weight 28, well-being module person-level weight"'
label var rwbwt_29              `"Replicate weight 29, well-being module person-level weight"'
label var rwbwt_30              `"Replicate weight 30, well-being module person-level weight"'
label var rwbwt_31              `"Replicate weight 31, well-being module person-level weight"'
label var rwbwt_32              `"Replicate weight 32, well-being module person-level weight"'
label var rwbwt_33              `"Replicate weight 33, well-being module person-level weight"'
label var rwbwt_34              `"Replicate weight 34, well-being module person-level weight"'
label var rwbwt_35              `"Replicate weight 35, well-being module person-level weight"'
label var rwbwt_36              `"Replicate weight 36, well-being module person-level weight"'
label var rwbwt_37              `"Replicate weight 37, well-being module person-level weight"'
label var rwbwt_38              `"Replicate weight 38, well-being module person-level weight"'
label var rwbwt_39              `"Replicate weight 39, well-being module person-level weight"'
label var rwbwt_40              `"Replicate weight 40, well-being module person-level weight"'
label var rwbwt_41              `"Replicate weight 41, well-being module person-level weight"'
label var rwbwt_42              `"Replicate weight 42, well-being module person-level weight"'
label var rwbwt_43              `"Replicate weight 43, well-being module person-level weight"'
label var rwbwt_44              `"Replicate weight 44, well-being module person-level weight"'
label var rwbwt_45              `"Replicate weight 45, well-being module person-level weight"'
label var rwbwt_46              `"Replicate weight 46, well-being module person-level weight"'
label var rwbwt_47              `"Replicate weight 47, well-being module person-level weight"'
label var rwbwt_48              `"Replicate weight 48, well-being module person-level weight"'
label var rwbwt_49              `"Replicate weight 49, well-being module person-level weight"'
label var rwbwt_50              `"Replicate weight 50, well-being module person-level weight"'
label var rwbwt_51              `"Replicate weight 51, well-being module person-level weight"'
label var rwbwt_52              `"Replicate weight 52, well-being module person-level weight"'
label var rwbwt_53              `"Replicate weight 53, well-being module person-level weight"'
label var rwbwt_54              `"Replicate weight 54, well-being module person-level weight"'
label var rwbwt_55              `"Replicate weight 55, well-being module person-level weight"'
label var rwbwt_56              `"Replicate weight 56, well-being module person-level weight"'
label var rwbwt_57              `"Replicate weight 57, well-being module person-level weight"'
label var rwbwt_58              `"Replicate weight 58, well-being module person-level weight"'
label var rwbwt_59              `"Replicate weight 59, well-being module person-level weight"'
label var rwbwt_60              `"Replicate weight 60, well-being module person-level weight"'
label var rwbwt_61              `"Replicate weight 61, well-being module person-level weight"'
label var rwbwt_62              `"Replicate weight 62, well-being module person-level weight"'
label var rwbwt_63              `"Replicate weight 63, well-being module person-level weight"'
label var rwbwt_64              `"Replicate weight 64, well-being module person-level weight"'
label var rwbwt_65              `"Replicate weight 65, well-being module person-level weight"'
label var rwbwt_66              `"Replicate weight 66, well-being module person-level weight"'
label var rwbwt_67              `"Replicate weight 67, well-being module person-level weight"'
label var rwbwt_68              `"Replicate weight 68, well-being module person-level weight"'
label var rwbwt_69              `"Replicate weight 69, well-being module person-level weight"'
label var rwbwt_70              `"Replicate weight 70, well-being module person-level weight"'
label var rwbwt_71              `"Replicate weight 71, well-being module person-level weight"'
label var rwbwt_72              `"Replicate weight 72, well-being module person-level weight"'
label var rwbwt_73              `"Replicate weight 73, well-being module person-level weight"'
label var rwbwt_74              `"Replicate weight 74, well-being module person-level weight"'
label var rwbwt_75              `"Replicate weight 75, well-being module person-level weight"'
label var rwbwt_76              `"Replicate weight 76, well-being module person-level weight"'
label var rwbwt_77              `"Replicate weight 77, well-being module person-level weight"'
label var rwbwt_78              `"Replicate weight 78, well-being module person-level weight"'
label var rwbwt_79              `"Replicate weight 79, well-being module person-level weight"'
label var rwbwt_80              `"Replicate weight 80, well-being module person-level weight"'
label var rwbwt_81              `"Replicate weight 81, well-being module person-level weight"'
label var rwbwt_82              `"Replicate weight 82, well-being module person-level weight"'
label var rwbwt_83              `"Replicate weight 83, well-being module person-level weight"'
label var rwbwt_84              `"Replicate weight 84, well-being module person-level weight"'
label var rwbwt_85              `"Replicate weight 85, well-being module person-level weight"'
label var rwbwt_86              `"Replicate weight 86, well-being module person-level weight"'
label var rwbwt_87              `"Replicate weight 87, well-being module person-level weight"'
label var rwbwt_88              `"Replicate weight 88, well-being module person-level weight"'
label var rwbwt_89              `"Replicate weight 89, well-being module person-level weight"'
label var rwbwt_90              `"Replicate weight 90, well-being module person-level weight"'
label var rwbwt_91              `"Replicate weight 91, well-being module person-level weight"'
label var rwbwt_92              `"Replicate weight 92, well-being module person-level weight"'
label var rwbwt_93              `"Replicate weight 93, well-being module person-level weight"'
label var rwbwt_94              `"Replicate weight 94, well-being module person-level weight"'
label var rwbwt_95              `"Replicate weight 95, well-being module person-level weight"'
label var rwbwt_96              `"Replicate weight 96, well-being module person-level weight"'
label var rwbwt_97              `"Replicate weight 97, well-being module person-level weight"'
label var rwbwt_98              `"Replicate weight 98, well-being module person-level weight"'
label var rwbwt_99              `"Replicate weight 99, well-being module person-level weight"'
label var rwbwt_100             `"Replicate weight 100, well-being module person-level weight"'
label var rwbwt_101             `"Replicate weight 101, well-being module person-level weight"'
label var rwbwt_102             `"Replicate weight 102, well-being module person-level weight"'
label var rwbwt_103             `"Replicate weight 103, well-being module person-level weight"'
label var rwbwt_104             `"Replicate weight 104, well-being module person-level weight"'
label var rwbwt_105             `"Replicate weight 105, well-being module person-level weight"'
label var rwbwt_106             `"Replicate weight 106, well-being module person-level weight"'
label var rwbwt_107             `"Replicate weight 107, well-being module person-level weight"'
label var rwbwt_108             `"Replicate weight 108, well-being module person-level weight"'
label var rwbwt_109             `"Replicate weight 109, well-being module person-level weight"'
label var rwbwt_110             `"Replicate weight 110, well-being module person-level weight"'
label var rwbwt_111             `"Replicate weight 111, well-being module person-level weight"'
label var rwbwt_112             `"Replicate weight 112, well-being module person-level weight"'
label var rwbwt_113             `"Replicate weight 113, well-being module person-level weight"'
label var rwbwt_114             `"Replicate weight 114, well-being module person-level weight"'
label var rwbwt_115             `"Replicate weight 115, well-being module person-level weight"'
label var rwbwt_116             `"Replicate weight 116, well-being module person-level weight"'
label var rwbwt_117             `"Replicate weight 117, well-being module person-level weight"'
label var rwbwt_118             `"Replicate weight 118, well-being module person-level weight"'
label var rwbwt_119             `"Replicate weight 119, well-being module person-level weight"'
label var rwbwt_120             `"Replicate weight 120, well-being module person-level weight"'
label var rwbwt_121             `"Replicate weight 121, well-being module person-level weight"'
label var rwbwt_122             `"Replicate weight 122, well-being module person-level weight"'
label var rwbwt_123             `"Replicate weight 123, well-being module person-level weight"'
label var rwbwt_124             `"Replicate weight 124, well-being module person-level weight"'
label var rwbwt_125             `"Replicate weight 125, well-being module person-level weight"'
label var rwbwt_126             `"Replicate weight 126, well-being module person-level weight"'
label var rwbwt_127             `"Replicate weight 127, well-being module person-level weight"'
label var rwbwt_128             `"Replicate weight 128, well-being module person-level weight"'
label var rwbwt_129             `"Replicate weight 129, well-being module person-level weight"'
label var rwbwt_130             `"Replicate weight 130, well-being module person-level weight"'
label var rwbwt_131             `"Replicate weight 131, well-being module person-level weight"'
label var rwbwt_132             `"Replicate weight 132, well-being module person-level weight"'
label var rwbwt_133             `"Replicate weight 133, well-being module person-level weight"'
label var rwbwt_134             `"Replicate weight 134, well-being module person-level weight"'
label var rwbwt_135             `"Replicate weight 135, well-being module person-level weight"'
label var rwbwt_136             `"Replicate weight 136, well-being module person-level weight"'
label var rwbwt_137             `"Replicate weight 137, well-being module person-level weight"'
label var rwbwt_138             `"Replicate weight 138, well-being module person-level weight"'
label var rwbwt_139             `"Replicate weight 139, well-being module person-level weight"'
label var rwbwt_140             `"Replicate weight 140, well-being module person-level weight"'
label var rwbwt_141             `"Replicate weight 141, well-being module person-level weight"'
label var rwbwt_142             `"Replicate weight 142, well-being module person-level weight"'
label var rwbwt_143             `"Replicate weight 143, well-being module person-level weight"'
label var rwbwt_144             `"Replicate weight 144, well-being module person-level weight"'
label var rwbwt_145             `"Replicate weight 145, well-being module person-level weight"'
label var rwbwt_146             `"Replicate weight 146, well-being module person-level weight"'
label var rwbwt_147             `"Replicate weight 147, well-being module person-level weight"'
label var rwbwt_148             `"Replicate weight 148, well-being module person-level weight"'
label var rwbwt_149             `"Replicate weight 149, well-being module person-level weight"'
label var rwbwt_150             `"Replicate weight 150, well-being module person-level weight"'
label var rwbwt_151             `"Replicate weight 151, well-being module person-level weight"'
label var rwbwt_152             `"Replicate weight 152, well-being module person-level weight"'
label var rwbwt_153             `"Replicate weight 153, well-being module person-level weight"'
label var rwbwt_154             `"Replicate weight 154, well-being module person-level weight"'
label var rwbwt_155             `"Replicate weight 155, well-being module person-level weight"'
label var rwbwt_156             `"Replicate weight 156, well-being module person-level weight"'
label var rwbwt_157             `"Replicate weight 157, well-being module person-level weight"'
label var rwbwt_158             `"Replicate weight 158, well-being module person-level weight"'
label var rwbwt_159             `"Replicate weight 159, well-being module person-level weight"'
label var rwbwt_160             `"Replicate weight 160, well-being module person-level weight"'
label var rwbwt                 `"Replicate weight, well-being module person-level weight"'
label var aspouse               `"Spouse's line number (self-reported)"'
label var pecohab               `"Cohabiting partner's line number (self-reported)"'
label var pelnmom               `"Mother's line number (self-reported)"'
label var pelndad               `"Father's line number (self-reported)"'
label var pemomtyp              `"Mother's relationship to child (self-reported)"'
label var pedadtyp              `"Father's relationship to child (self-reported)"'
label var pepar1typ             `"First parent's relationship to child (self-reported)"'
label var pepar2typ             `"Second parent's relationship to child (self-reported)"'
label var pelnpar1              `"Parent 1 line number (self-reported)"'
label var pelnpar2              `"Parent 2 line number (self-reported)"'
label var lv_resp               `"Leave Module Respondent"'
label var rcvpdlv               `"Receives paid leave on job"'
label var rcvpdself             `"Receives paid leave on job: Own illness or medical care"'
label var rcvpdfam              `"Receives paid leave on job: Illness or medical care of another family member"'
label var rcvpdchcare           `"Receives paid leave on job: Childcare, other than for illness "'
label var rcvpdelcare           `"Receives paid leave on job: Eldercare, other than for illness"'
label var rcvpdvac              `"Receives paid leave on job: Vacation"'
label var rcvpdpers             `"Receives paid leave on job: Errands or personal reasons"'
label var rcvpdchild            `"Receives paid leave on job: Birth or adoption of a child"'
label var rcvunpdlv             `"Receives unpaid leave on job"'
label var rcvunself             `"Receives unpaid leave on job: Own illness or medical care"'
label var rcvunfam              `"Receives unpaid leave on job: Illness or medical care of another family member"'
label var rcvunchcare           `"Receives unpaid leave on job: Childcare, other than for illness "'
label var rcvunelcare           `"Receives unpaid leave on job: Eldercare, other than for illness"'
label var rcvunvac              `"Receives unpaid leave on job: Vacation"'
label var rcvunpers             `"Receives unpaid leave on job: Errands or personal reasons"'
label var rcvunchild            `"Receives unpaid leave on job: Birth or adoption of a child"'
label var evtkunlv              `"Ever took unpaid leave"'
label var evtkunself            `"Took unpaid leave: Own illness or medical care"'
label var evtkunfam             `"Took unpaid leave: Illness or medical care of another family member"'
label var evtkunchcare          `"Took unpaid leave: Childcare, other than for illness "'
label var evtkunelcare          `"Took unpaid leave: Eldercare, other than for illness"'
label var evtkunvac             `"Took unpaid leave: Vacation"'
label var evtkunpers            `"Took unpaid leave: Errands or personal reasons"'
label var evtkunchild           `"Took unpaid leave: Birth or adoption of a child"'
label var leavelw               `"Needed to take off from work but did not"'
label var qleavelw              `"Allocation flag for LEAVELW"'
label var nolvlwwork            `"Did not take leave: Too much work "'
label var nolvlwsave            `"Did not take leave: Wanted to save leave"'
label var nolvlwdeny            `"Did not take leave: Leave was denied"'
label var nolvlwlack            `"Did not take leave: Did not have enough leave"'
label var nolvlwfear            `"Did not take leave: Fear of job loss or other negative employment-related conseq"'
label var nolvlwinc             `"Did not take leave: Could not afford the loss in income"'
label var nolvlwoth             `"Did not take leave: Other"'
label var canvary               `"Can adjust work schedule or location rather than using leave"'
label var varylw                `"Changed work schedule or location last week rather than using leave"'
label var tklvwk                `"Took any paid or unpaid leave in past 7 days "'
label var lvwt                  `"Leave Module Weight"'
label var hrslvwk               `"Total number of leave hours taken in the past 7 days"'
label var tklvwkmain            `"Main reason for taking leave in the past 7 days"'
label var tklvyest              `"Reason you took paid or unpaid leave yesterday"'
label var painlwk               `"Pain last week"'
label var rlvwt                 `"Replicate weight, leave module weight"'
label var rlvwt_1               `"Replicate weight 1, leave module weight"'
label var rlvwt_2               `"Replicate weight 2, leave module weight"'
label var rlvwt_3               `"Replicate weight 3, leave module weight"'
label var rlvwt_4               `"Replicate weight 4, leave module weight"'
label var rlvwt_5               `"Replicate weight 5, leave module weight"'
label var rlvwt_6               `"Replicate weight 6, leave module weight"'
label var rlvwt_7               `"Replicate weight 7, leave module weight"'
label var rlvwt_8               `"Replicate weight 8, leave module weight"'
label var rlvwt_9               `"Replicate weight 9, leave module weight"'
label var rlvwt_10              `"Replicate weight 10, leave module weight"'
label var rlvwt_11              `"Replicate weight 11, leave module weight"'
label var rlvwt_12              `"Replicate weight 12, leave module weight"'
label var rlvwt_13              `"Replicate weight 13, leave module weight"'
label var rlvwt_14              `"Replicate weight 14, leave module weight"'
label var rlvwt_15              `"Replicate weight 15, leave module weight"'
label var rlvwt_16              `"Replicate weight 16, leave module weight"'
label var rlvwt_17              `"Replicate weight 17, leave module weight"'
label var rlvwt_18              `"Replicate weight 18, leave module weight"'
label var rlvwt_19              `"Replicate weight 19, leave module weight"'
label var rlvwt_20              `"Replicate weight 20, leave module weight"'
label var rlvwt_21              `"Replicate weight 21, leave module weight"'
label var rlvwt_22              `"Replicate weight 22, leave module weight"'
label var rlvwt_23              `"Replicate weight 23, leave module weight"'
label var rlvwt_24              `"Replicate weight 24, leave module weight"'
label var rlvwt_25              `"Replicate weight 25, leave module weight"'
label var rlvwt_26              `"Replicate weight 26, leave module weight"'
label var rlvwt_27              `"Replicate weight 27, leave module weight"'
label var rlvwt_28              `"Replicate weight 28, leave module weight"'
label var rlvwt_29              `"Replicate weight 29, leave module weight"'
label var rlvwt_30              `"Replicate weight 30, leave module weight"'
label var rlvwt_31              `"Replicate weight 31, leave module weight"'
label var rlvwt_32              `"Replicate weight 32, leave module weight"'
label var rlvwt_33              `"Replicate weight 33, leave module weight"'
label var rlvwt_34              `"Replicate weight 34, leave module weight"'
label var rlvwt_35              `"Replicate weight 35, leave module weight"'
label var rlvwt_36              `"Replicate weight 36, leave module weight"'
label var rlvwt_37              `"Replicate weight 37, leave module weight"'
label var rlvwt_38              `"Replicate weight 38, leave module weight"'
label var rlvwt_39              `"Replicate weight 39, leave module weight"'
label var rlvwt_40              `"Replicate weight 40, leave module weight"'
label var rlvwt_41              `"Replicate weight 41, leave module weight"'
label var rlvwt_42              `"Replicate weight 42, leave module weight"'
label var rlvwt_43              `"Replicate weight 43, leave module weight"'
label var rlvwt_44              `"Replicate weight 44, leave module weight"'
label var rlvwt_45              `"Replicate weight 45, leave module weight"'
label var rlvwt_46              `"Replicate weight 46, leave module weight"'
label var rlvwt_47              `"Replicate weight 47, leave module weight"'
label var rlvwt_48              `"Replicate weight 48, leave module weight"'
label var rlvwt_49              `"Replicate weight 49, leave module weight"'
label var rlvwt_50              `"Replicate weight 50, leave module weight"'
label var rlvwt_51              `"Replicate weight 51, leave module weight"'
label var rlvwt_52              `"Replicate weight 52, leave module weight"'
label var rlvwt_53              `"Replicate weight 53, leave module weight"'
label var rlvwt_54              `"Replicate weight 54, leave module weight"'
label var rlvwt_55              `"Replicate weight 55, leave module weight"'
label var rlvwt_56              `"Replicate weight 56, leave module weight"'
label var rlvwt_57              `"Replicate weight 57, leave module weight"'
label var rlvwt_58              `"Replicate weight 58, leave module weight"'
label var rlvwt_59              `"Replicate weight 59, leave module weight"'
label var rlvwt_60              `"Replicate weight 60, leave module weight"'
label var rlvwt_61              `"Replicate weight 61, leave module weight"'
label var rlvwt_62              `"Replicate weight 62, leave module weight"'
label var rlvwt_63              `"Replicate weight 63, leave module weight"'
label var rlvwt_64              `"Replicate weight 64, leave module weight"'
label var rlvwt_65              `"Replicate weight 65, leave module weight"'
label var rlvwt_66              `"Replicate weight 66, leave module weight"'
label var rlvwt_67              `"Replicate weight 67, leave module weight"'
label var rlvwt_68              `"Replicate weight 68, leave module weight"'
label var rlvwt_69              `"Replicate weight 69, leave module weight"'
label var rlvwt_70              `"Replicate weight 70, leave module weight"'
label var rlvwt_71              `"Replicate weight 71, leave module weight"'
label var rlvwt_72              `"Replicate weight 72, leave module weight"'
label var rlvwt_73              `"Replicate weight 73, leave module weight"'
label var rlvwt_74              `"Replicate weight 74, leave module weight"'
label var rlvwt_75              `"Replicate weight 75, leave module weight"'
label var rlvwt_76              `"Replicate weight 76, leave module weight"'
label var rlvwt_77              `"Replicate weight 77, leave module weight"'
label var rlvwt_78              `"Replicate weight 78, leave module weight"'
label var rlvwt_79              `"Replicate weight 79, leave module weight"'
label var rlvwt_80              `"Replicate weight 80, leave module weight"'
label var rlvwt_81              `"Replicate weight 81, leave module weight"'
label var rlvwt_82              `"Replicate weight 82, leave module weight"'
label var rlvwt_83              `"Replicate weight 83, leave module weight"'
label var rlvwt_84              `"Replicate weight 84, leave module weight"'
label var rlvwt_85              `"Replicate weight 85, leave module weight"'
label var rlvwt_86              `"Replicate weight 86, leave module weight"'
label var rlvwt_87              `"Replicate weight 87, leave module weight"'
label var rlvwt_88              `"Replicate weight 88, leave module weight"'
label var rlvwt_89              `"Replicate weight 89, leave module weight"'
label var rlvwt_90              `"Replicate weight 90, leave module weight"'
label var rlvwt_91              `"Replicate weight 91, leave module weight"'
label var rlvwt_92              `"Replicate weight 92, leave module weight"'
label var rlvwt_93              `"Replicate weight 93, leave module weight"'
label var rlvwt_94              `"Replicate weight 94, leave module weight"'
label var rlvwt_95              `"Replicate weight 95, leave module weight"'
label var rlvwt_96              `"Replicate weight 96, leave module weight"'
label var rlvwt_97              `"Replicate weight 97, leave module weight"'
label var rlvwt_98              `"Replicate weight 98, leave module weight"'
label var rlvwt_99              `"Replicate weight 99, leave module weight"'
label var rlvwt_100             `"Replicate weight 100, leave module weight"'
label var rlvwt_101             `"Replicate weight 101, leave module weight"'
label var rlvwt_102             `"Replicate weight 102, leave module weight"'
label var rlvwt_103             `"Replicate weight 103, leave module weight"'
label var rlvwt_104             `"Replicate weight 104, leave module weight"'
label var rlvwt_105             `"Replicate weight 105, leave module weight"'
label var rlvwt_106             `"Replicate weight 106, leave module weight"'
label var rlvwt_107             `"Replicate weight 107, leave module weight"'
label var rlvwt_108             `"Replicate weight 108, leave module weight"'
label var rlvwt_109             `"Replicate weight 109, leave module weight"'
label var rlvwt_110             `"Replicate weight 110, leave module weight"'
label var rlvwt_111             `"Replicate weight 111, leave module weight"'
label var rlvwt_112             `"Replicate weight 112, leave module weight"'
label var rlvwt_113             `"Replicate weight 113, leave module weight"'
label var rlvwt_114             `"Replicate weight 114, leave module weight"'
label var rlvwt_115             `"Replicate weight 115, leave module weight"'
label var rlvwt_116             `"Replicate weight 116, leave module weight"'
label var rlvwt_117             `"Replicate weight 117, leave module weight"'
label var rlvwt_118             `"Replicate weight 118, leave module weight"'
label var rlvwt_119             `"Replicate weight 119, leave module weight"'
label var rlvwt_120             `"Replicate weight 120, leave module weight"'
label var rlvwt_121             `"Replicate weight 121, leave module weight"'
label var rlvwt_122             `"Replicate weight 122, leave module weight"'
label var rlvwt_123             `"Replicate weight 123, leave module weight"'
label var rlvwt_124             `"Replicate weight 124, leave module weight"'
label var rlvwt_125             `"Replicate weight 125, leave module weight"'
label var rlvwt_126             `"Replicate weight 126, leave module weight"'
label var rlvwt_127             `"Replicate weight 127, leave module weight"'
label var rlvwt_128             `"Replicate weight 128, leave module weight"'
label var rlvwt_129             `"Replicate weight 129, leave module weight"'
label var rlvwt_130             `"Replicate weight 130, leave module weight"'
label var rlvwt_131             `"Replicate weight 131, leave module weight"'
label var rlvwt_132             `"Replicate weight 132, leave module weight"'
label var rlvwt_133             `"Replicate weight 133, leave module weight"'
label var rlvwt_134             `"Replicate weight 134, leave module weight"'
label var rlvwt_135             `"Replicate weight 135, leave module weight"'
label var rlvwt_136             `"Replicate weight 136, leave module weight"'
label var rlvwt_137             `"Replicate weight 137, leave module weight"'
label var rlvwt_138             `"Replicate weight 138, leave module weight"'
label var rlvwt_139             `"Replicate weight 139, leave module weight"'
label var rlvwt_140             `"Replicate weight 140, leave module weight"'
label var rlvwt_141             `"Replicate weight 141, leave module weight"'
label var rlvwt_142             `"Replicate weight 142, leave module weight"'
label var rlvwt_143             `"Replicate weight 143, leave module weight"'
label var rlvwt_144             `"Replicate weight 144, leave module weight"'
label var rlvwt_145             `"Replicate weight 145, leave module weight"'
label var rlvwt_146             `"Replicate weight 146, leave module weight"'
label var rlvwt_147             `"Replicate weight 147, leave module weight"'
label var rlvwt_148             `"Replicate weight 148, leave module weight"'
label var rlvwt_149             `"Replicate weight 149, leave module weight"'
label var rlvwt_150             `"Replicate weight 150, leave module weight"'
label var rlvwt_151             `"Replicate weight 151, leave module weight"'
label var rlvwt_152             `"Replicate weight 152, leave module weight"'
label var rlvwt_153             `"Replicate weight 153, leave module weight"'
label var rlvwt_154             `"Replicate weight 154, leave module weight"'
label var rlvwt_155             `"Replicate weight 155, leave module weight"'
label var rlvwt_156             `"Replicate weight 156, leave module weight"'
label var rlvwt_157             `"Replicate weight 157, leave module weight"'
label var rlvwt_158             `"Replicate weight 158, leave module weight"'
label var rlvwt_159             `"Replicate weight 159, leave module weight"'
label var rlvwt_160             `"Replicate weight 160, leave module weight"'
label var ecyest                `"Eldercare provided yesterday"'
label var ecprior               `"Eldercare provided in last 3 months"'
label var ecnum                 `"Number persons for whom eldercare provided in last 3 months"'
label var ecfreq                `"Frequency of eldercare provision in last 3 months "'
label var sploc                 `"Person number of spouse or partner (from programming)"'
label var momloc                `"Person number of first mother (from programming)"'
label var momloc2               `"Person number of second mother (from programming)"'
label var poploc                `"Person number of first father (from programming)"'
label var poploc2               `"Person number of second father (from programming)"'
label var sprule                `"Rule for linking spouse or partner"'
label var momrule               `"Rule for linking first mother"'
label var mom2rule              `"Rule for linking second mother"'
label var poprule               `"Rule for linking first father"'
label var pop2rule              `"Rule for linking second father"'
label var eldch                 `"Age of eldest own child (from programming)"'
label var yngch                 `"Age of youngest own child (from programming)"'
label var nchild                `"Number of own children (from programming)"'
label var nsibs                 `"Number of own siblings in the household (from programming)"'
label var nchlt5                `"Number of own children less than 5 years old (from programming)"'
label var tkrcvunlvev           `"Ever took unpaid leave for any listed reason"'
label var tklvwkpd              `"Took paid leave at main job last week"'
label var tklvwkrsn             `"Main reason for longest leave taken last week"'
label var tklvwktype            `"Type of leave taken last week"'
label var wrkflexhrs            `"Flexible work policies allow for change in work start/end time"'
label var wrkflexfreq           `"Frequency of ability to change work start/end times "'
label var wrkflexpol            `"Workplace policy regarding flexible leave"'
label var wrkflexinput          `"Has input regarding work start/end times"'
label var wrkflexadv            `"Advance notice of work schedule at main job"'
label var wrkschedus            `"Type of schedule usually worked"'
label var wrkshiftrsn           `"Main reason for non-daytime work shift"'
label var wrknumus              `"Number of days usually worked at main job"'
label var wrkschedwk            `"Usually works Monday through Friday"'
label var wrkschedmon           `"Usually works Monday"'
label var wrkschedtue           `"Usually works Tuesday"'
label var wrkschedwed           `"Usually works Wednesday"'
label var wrkschedthu           `"Usually works Thursday"'
label var wrkschedfri           `"Usually works Friday"'
label var wrkschedsat           `"Usually works Saturday"'
label var wrkschedsun           `"Usually works Sunday"'
label var wrkschedvary          `"Usual days worked vary"'
label var wrkdaysavg            `"Average number of days usually worked per week"'
label var wrkhomeable           `"Ability to work at home"'
label var wrkhomeev             `"Ever work at home"'
label var wrkhomepd             `"Paid for work at home"'
label var wrkhomersn            `"Main reason for work at home"'
label var wrkhomedays           `"Days worked exclusively at home"'
label var wrkhomeoften          `"How often work exclusively at home"'
label var noleavemo             `"Needed to take leave but did not, past month"'
label var notklvmochild         `"Reason for needing leave, but did not take: Birth or adoption of child"'
label var notklvmochcare        `"Reason for needing leave, but did not take: Childcare, other than for illness"'
label var notklvmoelcare        `"Reason for needing leave, but did not take: Eldercare"'
label var notklvmopers          `"Reason for needing leave, but did not take: Errands or personal reasons"'
label var notklvmofam           `"Reason for needing leave, but did not take: Illness or medical care of another f"'
label var notklvmoself          `"Reason for needing leave, but did not take: Own illness or medical care"'
label var notklvmooth           `"Reason for needing leave, but did not take: Other"'
label var notklvmovac           `"Reason for needing leave, but did not take: Vacation"'
label var nolvmoinc             `"Reason for not taking leave: Could not afford the loss in income"'
label var nolvmoshft            `"Reason for not taking leave: No one to cover shift"'
label var nolvmodeny            `"Reason for not taking leave: Leave was denied"'
label var nolvmoalt             `"Reason for not taking leave: Made alternative arrangements"'
label var nolvmofear            `"Reason for not taking leave:  Fear of job loss or other negative consequence"'
label var nolvmolack            `"Reason for not taking leave: Not have enough leave"'
label var nolvmooth             `"Reason for not taking leave: Other"'
label var nolvmosave            `"Reason for not taking leave: Wanted to save leave"'
label var nolvmowork            `"Reason for not taking leave: Too much work"'
label var rwt20_1               `"Replicate weight 1, 2020 methodology"'
label var rwt20_2               `"Replicate weight 2, 2020 methodology"'
label var rwt20_3               `"Replicate weight 3, 2020 methodology"'
label var rwt20_4               `"Replicate weight 4, 2020 methodology"'
label var rwt20_5               `"Replicate weight 5, 2020 methodology"'
label var rwt20_6               `"Replicate weight 6, 2020 methodology"'
label var rwt20_7               `"Replicate weight 7, 2020 methodology"'
label var rwt20_8               `"Replicate weight 8, 2020 methodology"'
label var rwt20_9               `"Replicate weight 9, 2020 methodology"'
label var rwt20_10              `"Replicate weight 10, 2020 methodology"'
label var rwt20_11              `"Replicate weight 11, 2020 methodology"'
label var rwt20_12              `"Replicate weight 12, 2020 methodology"'
label var rwt20_13              `"Replicate weight 13, 2020 methodology"'
label var rwt20_14              `"Replicate weight 14, 2020 methodology"'
label var rwt20_15              `"Replicate weight 15, 2020 methodology"'
label var rwt20_16              `"Replicate weight 16, 2020 methodology"'
label var rwt20_17              `"Replicate weight 17, 2020 methodology"'
label var rwt20_18              `"Replicate weight 18, 2020 methodology"'
label var rwt20_19              `"Replicate weight 19, 2020 methodology"'
label var rwt20_20              `"Replicate weight 20, 2020 methodology"'
label var rwt20_21              `"Replicate weight 21, 2020 methodology"'
label var rwt20_22              `"Replicate weight 22, 2020 methodology"'
label var rwt20_23              `"Replicate weight 23, 2020 methodology"'
label var rwt20_24              `"Replicate weight 24, 2020 methodology"'
label var rwt20_25              `"Replicate weight 25, 2020 methodology"'
label var rwt20_26              `"Replicate weight 26, 2020 methodology"'
label var rwt20_27              `"Replicate weight 27, 2020 methodology"'
label var rwt20_28              `"Replicate weight 28, 2020 methodology"'
label var rwt20_29              `"Replicate weight 29, 2020 methodology"'
label var rwt20_30              `"Replicate weight 30, 2020 methodology"'
label var rwt20_31              `"Replicate weight 31, 2020 methodology"'
label var rwt20_32              `"Replicate weight 32, 2020 methodology"'
label var rwt20_33              `"Replicate weight 33, 2020 methodology"'
label var rwt20_34              `"Replicate weight 34, 2020 methodology"'
label var rwt20_35              `"Replicate weight 35, 2020 methodology"'
label var rwt20_36              `"Replicate weight 36, 2020 methodology"'
label var rwt20_37              `"Replicate weight 37, 2020 methodology"'
label var rwt20_38              `"Replicate weight 38, 2020 methodology"'
label var rwt20_39              `"Replicate weight 39, 2020 methodology"'
label var rwt20_40              `"Replicate weight 40, 2020 methodology"'
label var rwt20_41              `"Replicate weight 41, 2020 methodology"'
label var rwt20_42              `"Replicate weight 42, 2020 methodology"'
label var rwt20_43              `"Replicate weight 43, 2020 methodology"'
label var rwt20_44              `"Replicate weight 44, 2020 methodology"'
label var rwt20_45              `"Replicate weight 45, 2020 methodology"'
label var rwt20_46              `"Replicate weight 46, 2020 methodology"'
label var rwt20_47              `"Replicate weight 47, 2020 methodology"'
label var rwt20_48              `"Replicate weight 48, 2020 methodology"'
label var rwt20_49              `"Replicate weight 49, 2020 methodology"'
label var rwt20_50              `"Replicate weight 50, 2020 methodology"'
label var rwt20_51              `"Replicate weight 51, 2020 methodology"'
label var rwt20_52              `"Replicate weight 52, 2020 methodology"'
label var rwt20_53              `"Replicate weight 53, 2020 methodology"'
label var rwt20_54              `"Replicate weight 54, 2020 methodology"'
label var rwt20_55              `"Replicate weight 55, 2020 methodology"'
label var rwt20_56              `"Replicate weight 56, 2020 methodology"'
label var rwt20_57              `"Replicate weight 57, 2020 methodology"'
label var rwt20_58              `"Replicate weight 58, 2020 methodology"'
label var rwt20_59              `"Replicate weight 59, 2020 methodology"'
label var rwt20_60              `"Replicate weight 60, 2020 methodology"'
label var rwt20_61              `"Replicate weight 61, 2020 methodology"'
label var rwt20_62              `"Replicate weight 62, 2020 methodology"'
label var rwt20_63              `"Replicate weight 63, 2020 methodology"'
label var rwt20_64              `"Replicate weight 64, 2020 methodology"'
label var rwt20_65              `"Replicate weight 65, 2020 methodology"'
label var rwt20_66              `"Replicate weight 66, 2020 methodology"'
label var rwt20_67              `"Replicate weight 67, 2020 methodology"'
label var rwt20_68              `"Replicate weight 68, 2020 methodology"'
label var rwt20_69              `"Replicate weight 69, 2020 methodology"'
label var rwt20_70              `"Replicate weight 70, 2020 methodology"'
label var rwt20_71              `"Replicate weight 71, 2020 methodology"'
label var rwt20_72              `"Replicate weight 72, 2020 methodology"'
label var rwt20_73              `"Replicate weight 73, 2020 methodology"'
label var rwt20_74              `"Replicate weight 74, 2020 methodology"'
label var rwt20_75              `"Replicate weight 75, 2020 methodology"'
label var rwt20_76              `"Replicate weight 76, 2020 methodology"'
label var rwt20_77              `"Replicate weight 77, 2020 methodology"'
label var rwt20_78              `"Replicate weight 78, 2020 methodology"'
label var rwt20_79              `"Replicate weight 79, 2020 methodology"'
label var rwt20_80              `"Replicate weight 80, 2020 methodology"'
label var rwt20_81              `"Replicate weight 81, 2020 methodology"'
label var rwt20_82              `"Replicate weight 82, 2020 methodology"'
label var rwt20_83              `"Replicate weight 83, 2020 methodology"'
label var rwt20_84              `"Replicate weight 84, 2020 methodology"'
label var rwt20_85              `"Replicate weight 85, 2020 methodology"'
label var rwt20_86              `"Replicate weight 86, 2020 methodology"'
label var rwt20_87              `"Replicate weight 87, 2020 methodology"'
label var rwt20_88              `"Replicate weight 88, 2020 methodology"'
label var rwt20_89              `"Replicate weight 89, 2020 methodology"'
label var rwt20_90              `"Replicate weight 90, 2020 methodology"'
label var rwt20_91              `"Replicate weight 91, 2020 methodology"'
label var rwt20_92              `"Replicate weight 92, 2020 methodology"'
label var rwt20_93              `"Replicate weight 93, 2020 methodology"'
label var rwt20_94              `"Replicate weight 94, 2020 methodology"'
label var rwt20_95              `"Replicate weight 95, 2020 methodology"'
label var rwt20_96              `"Replicate weight 96, 2020 methodology"'
label var rwt20_97              `"Replicate weight 97, 2020 methodology"'
label var rwt20_98              `"Replicate weight 98, 2020 methodology"'
label var rwt20_99              `"Replicate weight 99, 2020 methodology"'
label var rwt20_100             `"Replicate weight 100, 2020 methodology"'
label var rwt20_101             `"Replicate weight 101, 2020 methodology"'
label var rwt20_102             `"Replicate weight 102, 2020 methodology"'
label var rwt20_103             `"Replicate weight 103, 2020 methodology"'
label var rwt20_104             `"Replicate weight 104, 2020 methodology"'
label var rwt20_105             `"Replicate weight 105, 2020 methodology"'
label var rwt20_106             `"Replicate weight 106, 2020 methodology"'
label var rwt20_107             `"Replicate weight 107, 2020 methodology"'
label var rwt20_108             `"Replicate weight 108, 2020 methodology"'
label var rwt20_109             `"Replicate weight 109, 2020 methodology"'
label var rwt20_110             `"Replicate weight 110, 2020 methodology"'
label var rwt20_111             `"Replicate weight 111, 2020 methodology"'
label var rwt20_112             `"Replicate weight 112, 2020 methodology"'
label var rwt20_113             `"Replicate weight 113, 2020 methodology"'
label var rwt20_114             `"Replicate weight 114, 2020 methodology"'
label var rwt20_115             `"Replicate weight 115, 2020 methodology"'
label var rwt20_116             `"Replicate weight 116, 2020 methodology"'
label var rwt20_117             `"Replicate weight 117, 2020 methodology"'
label var rwt20_118             `"Replicate weight 118, 2020 methodology"'
label var rwt20_119             `"Replicate weight 119, 2020 methodology"'
label var rwt20_120             `"Replicate weight 120, 2020 methodology"'
label var rwt20_121             `"Replicate weight 121, 2020 methodology"'
label var rwt20_122             `"Replicate weight 122, 2020 methodology"'
label var rwt20_123             `"Replicate weight 123, 2020 methodology"'
label var rwt20_124             `"Replicate weight 124, 2020 methodology"'
label var rwt20_125             `"Replicate weight 125, 2020 methodology"'
label var rwt20_126             `"Replicate weight 126, 2020 methodology"'
label var rwt20_127             `"Replicate weight 127, 2020 methodology"'
label var rwt20_128             `"Replicate weight 128, 2020 methodology"'
label var rwt20_129             `"Replicate weight 129, 2020 methodology"'
label var rwt20_130             `"Replicate weight 130, 2020 methodology"'
label var rwt20_131             `"Replicate weight 131, 2020 methodology"'
label var rwt20_132             `"Replicate weight 132, 2020 methodology"'
label var rwt20_133             `"Replicate weight 133, 2020 methodology"'
label var rwt20_134             `"Replicate weight 134, 2020 methodology"'
label var rwt20_135             `"Replicate weight 135, 2020 methodology"'
label var rwt20_136             `"Replicate weight 136, 2020 methodology"'
label var rwt20_137             `"Replicate weight 137, 2020 methodology"'
label var rwt20_138             `"Replicate weight 138, 2020 methodology"'
label var rwt20_139             `"Replicate weight 139, 2020 methodology"'
label var rwt20_140             `"Replicate weight 140, 2020 methodology"'
label var rwt20_141             `"Replicate weight 141, 2020 methodology"'
label var rwt20_142             `"Replicate weight 142, 2020 methodology"'
label var rwt20_143             `"Replicate weight 143, 2020 methodology"'
label var rwt20_144             `"Replicate weight 144, 2020 methodology"'
label var rwt20_145             `"Replicate weight 145, 2020 methodology"'
label var rwt20_146             `"Replicate weight 146, 2020 methodology"'
label var rwt20_147             `"Replicate weight 147, 2020 methodology"'
label var rwt20_148             `"Replicate weight 148, 2020 methodology"'
label var rwt20_149             `"Replicate weight 149, 2020 methodology"'
label var rwt20_150             `"Replicate weight 150, 2020 methodology"'
label var rwt20_151             `"Replicate weight 151, 2020 methodology"'
label var rwt20_152             `"Replicate weight 152, 2020 methodology"'
label var rwt20_153             `"Replicate weight 153, 2020 methodology"'
label var rwt20_154             `"Replicate weight 154, 2020 methodology"'
label var rwt20_155             `"Replicate weight 155, 2020 methodology"'
label var rwt20_156             `"Replicate weight 156, 2020 methodology"'
label var rwt20_157             `"Replicate weight 157, 2020 methodology"'
label var rwt20_158             `"Replicate weight 158, 2020 methodology"'
label var rwt20_159             `"Replicate weight 159, 2020 methodology"'
label var rwt20_160             `"Replicate weight 160, 2020 methodology"'
label var covidtelew            `"Worked remotely for pay due to COVID-19 pandemic (CPS)"'
label var covidpaid             `"Received pay for hours not worked due to the COVID-19 pandemic (CPS)"'
label var covidunaw             `"Unable to work due to COVID-19 pandemic (CPS)"'
label var covidlook             `"Prevented from looking for work due to COVID-19 pandemic (CPS)"'
label var covidmed              `"Did not get needed medical care for condition other than COVID-19 due to the COV"'
label var dietqual              `"Quality of diet"'
label var exint                 `"Amount of increase in breathing or heart rate due to vigorous exercise/activity"'
label var fastfdate             `"Ate prepared food yesterday"'
label var groshpamt             `"Amount of grocery shopping for household"'
label var groshpenjoy           `"Enjoyment level of grocery shopping for household"'
label var ongroshpfreq          `"Frequency of online grocery purchase"'
label var ongroshpget           `"Typical online grocery retrieval"'
label var ongroshpwhy           `"Main reason for doing online grocery purchase"'
label var ongroshpwhynot        `"Main reason for not doing online grocery purchase"'
label var prpmelamt             `"Amount of meal preparation in household"'
label var prpmelenjoy           `"Amount of enjoyment for meal preparation in household"'
label var actline               `"Activity line number"'
label var activity              `"Activity"'
label var where                 `"Location of activity"'
label var duration_ext          `"Duration of activity (extended version)"'
label var duration              `"Duration of activity"'
label var metvalue              `"Metabolic equivalent (MET) value for activity codes"'
label var scc_hhnhhown_ln       `"Time spent during activity on secondary child care of household and own, non-hou"'
label var scc_all_ln            `"Time spent during activity on secondary child care of all children"'
label var scc_nownnhh_ln        `"Time spent during activity on secondary child care of non-own, non-household chi"'
label var scc_hh_ln             `"Time spent during activity on secondary child care of household children"'
label var scc_nownhh_ln         `"Time spent during activity on secondary child care of non-own, household childre"'
label var scc_own_ln            `"Time spent during activity on secondary child care of own children"'
label var scc_ownhh_ln          `"Time spent during activity on secondary child care of own, household children"'
label var scc_ownnhh_ln         `"Time spent during activity on secondary child care of own, non-household childre"'
label var sed_drink_ln          `"Time spent during activity on secondary drinking"'
label var sed_eat_ln            `"Time spent during activity on secondary eating"'
label var sed_all_ln            `"Time spent during activity on secondary eating and drinking"'
label var sec_all_ln            `"Time spent during activity on secondary eldercare for household and non-househol"'
label var who_ask               `"Who asked for activity"'
label var start                 `"Activity start time"'
label var stop                  `"Activity stop time"'
label var scpain                `"Pain scale"'
label var schappy               `"Happiness scale"'
label var scsad                 `"Sadness scale"'
label var sctired               `"Fatigue scale"'
label var scstress              `"Stress scale"'
label var interact              `"Interacting during activity"'
label var meaning               `"Meaningfulness scale"'
label var osad                  `"Order of SCSAD"'
label var ohappy                `"Order of SCHAPPY"'
label var opain                 `"Order of SCPAIN"'
label var otired                `"Order of SCTIRED"'
label var ostress               `"Order of SCSTRESS"'
label var wbelig                `"Activity eligible for well-being module selection"'
label var awbwt                 `"Well-being Module final statistical weight, activity-level"'
label var rawbwt_1              `"Replicate weight 1, well-being module activity-level weight"'
label var rawbwt_2              `"Replicate weight 2, well-being module activity-level weight"'
label var rawbwt_3              `"Replicate weight 3, well-being module activity-level weight"'
label var rawbwt_4              `"Replicate weight 4, well-being module activity-level weight"'
label var rawbwt_5              `"Replicate weight 5, well-being module activity-level weight"'
label var rawbwt_6              `"Replicate weight 6, well-being module activity-level weight"'
label var rawbwt_7              `"Replicate weight 7, well-being module activity-level weight"'
label var rawbwt_8              `"Replicate weight 8, well-being module activity-level weight"'
label var rawbwt_9              `"Replicate weight 9, well-being module activity-level weight"'
label var rawbwt_10             `"Replicate weight 10, well-being module activity-level weight"'
label var rawbwt_11             `"Replicate weight 11, well-being module activity-level weight"'
label var rawbwt_12             `"Replicate weight 12, well-being module activity-level weight"'
label var rawbwt_13             `"Replicate weight 13, well-being module activity-level weight"'
label var rawbwt_14             `"Replicate weight 14, well-being module activity-level weight"'
label var rawbwt_15             `"Replicate weight 15, well-being module activity-level weight"'
label var rawbwt_16             `"Replicate weight 16, well-being module activity-level weight"'
label var rawbwt_17             `"Replicate weight 17, well-being module activity-level weight"'
label var rawbwt_18             `"Replicate weight 18, well-being module activity-level weight"'
label var rawbwt_19             `"Replicate weight 19, well-being module activity-level weight"'
label var rawbwt_20             `"Replicate weight 20, well-being module activity-level weight"'
label var rawbwt_21             `"Replicate weight 21, well-being module activity-level weight"'
label var rawbwt_22             `"Replicate weight 22, well-being module activity-level weight"'
label var rawbwt_23             `"Replicate weight 23, well-being module activity-level weight"'
label var rawbwt_24             `"Replicate weight 24, well-being module activity-level weight"'
label var rawbwt_25             `"Replicate weight 25, well-being module activity-level weight"'
label var rawbwt_26             `"Replicate weight 26, well-being module activity-level weight"'
label var rawbwt_27             `"Replicate weight 27, well-being module activity-level weight"'
label var rawbwt_28             `"Replicate weight 28, well-being module activity-level weight"'
label var rawbwt_29             `"Replicate weight 29, well-being module activity-level weight"'
label var rawbwt_30             `"Replicate weight 30, well-being module activity-level weight"'
label var rawbwt_31             `"Replicate weight 31, well-being module activity-level weight"'
label var rawbwt_32             `"Replicate weight 32, well-being module activity-level weight"'
label var rawbwt_33             `"Replicate weight 33, well-being module activity-level weight"'
label var rawbwt_34             `"Replicate weight 34, well-being module activity-level weight"'
label var rawbwt_35             `"Replicate weight 35, well-being module activity-level weight"'
label var rawbwt_36             `"Replicate weight 36, well-being module activity-level weight"'
label var rawbwt_37             `"Replicate weight 37, well-being module activity-level weight"'
label var rawbwt_38             `"Replicate weight 38, well-being module activity-level weight"'
label var rawbwt_39             `"Replicate weight 39, well-being module activity-level weight"'
label var rawbwt_40             `"Replicate weight 40, well-being module activity-level weight"'
label var rawbwt_41             `"Replicate weight 41, well-being module activity-level weight"'
label var rawbwt_42             `"Replicate weight 42, well-being module activity-level weight"'
label var rawbwt_43             `"Replicate weight 43, well-being module activity-level weight"'
label var rawbwt_44             `"Replicate weight 44, well-being module activity-level weight"'
label var rawbwt_45             `"Replicate weight 45, well-being module activity-level weight"'
label var rawbwt_46             `"Replicate weight 46, well-being module activity-level weight"'
label var rawbwt_47             `"Replicate weight 47, well-being module activity-level weight"'
label var rawbwt_48             `"Replicate weight 48, well-being module activity-level weight"'
label var rawbwt_49             `"Replicate weight 49, well-being module activity-level weight"'
label var rawbwt_50             `"Replicate weight 50, well-being module activity-level weight"'
label var rawbwt_51             `"Replicate weight 51, well-being module activity-level weight"'
label var rawbwt_52             `"Replicate weight 52, well-being module activity-level weight"'
label var rawbwt_53             `"Replicate weight 53, well-being module activity-level weight"'
label var rawbwt_54             `"Replicate weight 54, well-being module activity-level weight"'
label var rawbwt_55             `"Replicate weight 55, well-being module activity-level weight"'
label var rawbwt_56             `"Replicate weight 56, well-being module activity-level weight"'
label var rawbwt_57             `"Replicate weight 57, well-being module activity-level weight"'
label var rawbwt_58             `"Replicate weight 58, well-being module activity-level weight"'
label var rawbwt_59             `"Replicate weight 59, well-being module activity-level weight"'
label var rawbwt_60             `"Replicate weight 60, well-being module activity-level weight"'
label var rawbwt_61             `"Replicate weight 61, well-being module activity-level weight"'
label var rawbwt_62             `"Replicate weight 62, well-being module activity-level weight"'
label var rawbwt_63             `"Replicate weight 63, well-being module activity-level weight"'
label var rawbwt_64             `"Replicate weight 64, well-being module activity-level weight"'
label var rawbwt_65             `"Replicate weight 65, well-being module activity-level weight"'
label var rawbwt_66             `"Replicate weight 66, well-being module activity-level weight"'
label var rawbwt_67             `"Replicate weight 67, well-being module activity-level weight"'
label var rawbwt_68             `"Replicate weight 68, well-being module activity-level weight"'
label var rawbwt_69             `"Replicate weight 69, well-being module activity-level weight"'
label var rawbwt_70             `"Replicate weight 70, well-being module activity-level weight"'
label var rawbwt_71             `"Replicate weight 71, well-being module activity-level weight"'
label var rawbwt_72             `"Replicate weight 72, well-being module activity-level weight"'
label var rawbwt_73             `"Replicate weight 73, well-being module activity-level weight"'
label var rawbwt_74             `"Replicate weight 74, well-being module activity-level weight"'
label var rawbwt_75             `"Replicate weight 75, well-being module activity-level weight"'
label var rawbwt_76             `"Replicate weight 76, well-being module activity-level weight"'
label var rawbwt_77             `"Replicate weight 77, well-being module activity-level weight"'
label var rawbwt_78             `"Replicate weight 78, well-being module activity-level weight"'
label var rawbwt_79             `"Replicate weight 79, well-being module activity-level weight"'
label var rawbwt_80             `"Replicate weight 80, well-being module activity-level weight"'
label var rawbwt_81             `"Replicate weight 81, well-being module activity-level weight"'
label var rawbwt_82             `"Replicate weight 82, well-being module activity-level weight"'
label var rawbwt_83             `"Replicate weight 83, well-being module activity-level weight"'
label var rawbwt_84             `"Replicate weight 84, well-being module activity-level weight"'
label var rawbwt_85             `"Replicate weight 85, well-being module activity-level weight"'
label var rawbwt_86             `"Replicate weight 86, well-being module activity-level weight"'
label var rawbwt_87             `"Replicate weight 87, well-being module activity-level weight"'
label var rawbwt_88             `"Replicate weight 88, well-being module activity-level weight"'
label var rawbwt_89             `"Replicate weight 89, well-being module activity-level weight"'
label var rawbwt_90             `"Replicate weight 90, well-being module activity-level weight"'
label var rawbwt_91             `"Replicate weight 91, well-being module activity-level weight"'
label var rawbwt_92             `"Replicate weight 92, well-being module activity-level weight"'
label var rawbwt_93             `"Replicate weight 93, well-being module activity-level weight"'
label var rawbwt_94             `"Replicate weight 94, well-being module activity-level weight"'
label var rawbwt_95             `"Replicate weight 95, well-being module activity-level weight"'
label var rawbwt_96             `"Replicate weight 96, well-being module activity-level weight"'
label var rawbwt_97             `"Replicate weight 97, well-being module activity-level weight"'
label var rawbwt_98             `"Replicate weight 98, well-being module activity-level weight"'
label var rawbwt_99             `"Replicate weight 99, well-being module activity-level weight"'
label var rawbwt_100            `"Replicate weight 100, well-being module activity-level weight"'
label var rawbwt_101            `"Replicate weight 101, well-being module activity-level weight"'
label var rawbwt_102            `"Replicate weight 102, well-being module activity-level weight"'
label var rawbwt_103            `"Replicate weight 103, well-being module activity-level weight"'
label var rawbwt_104            `"Replicate weight 104, well-being module activity-level weight"'
label var rawbwt_105            `"Replicate weight 105, well-being module activity-level weight"'
label var rawbwt_106            `"Replicate weight 106, well-being module activity-level weight"'
label var rawbwt_107            `"Replicate weight 107, well-being module activity-level weight"'
label var rawbwt_108            `"Replicate weight 108, well-being module activity-level weight"'
label var rawbwt_109            `"Replicate weight 109, well-being module activity-level weight"'
label var rawbwt_110            `"Replicate weight 110, well-being module activity-level weight"'
label var rawbwt_111            `"Replicate weight 111, well-being module activity-level weight"'
label var rawbwt_112            `"Replicate weight 112, well-being module activity-level weight"'
label var rawbwt_113            `"Replicate weight 113, well-being module activity-level weight"'
label var rawbwt_114            `"Replicate weight 114, well-being module activity-level weight"'
label var rawbwt_115            `"Replicate weight 115, well-being module activity-level weight"'
label var rawbwt_116            `"Replicate weight 116, well-being module activity-level weight"'
label var rawbwt_117            `"Replicate weight 117, well-being module activity-level weight"'
label var rawbwt_118            `"Replicate weight 118, well-being module activity-level weight"'
label var rawbwt_119            `"Replicate weight 119, well-being module activity-level weight"'
label var rawbwt_120            `"Replicate weight 120, well-being module activity-level weight"'
label var rawbwt_121            `"Replicate weight 121, well-being module activity-level weight"'
label var rawbwt_122            `"Replicate weight 122, well-being module activity-level weight"'
label var rawbwt_123            `"Replicate weight 123, well-being module activity-level weight"'
label var rawbwt_124            `"Replicate weight 124, well-being module activity-level weight"'
label var rawbwt_125            `"Replicate weight 125, well-being module activity-level weight"'
label var rawbwt_126            `"Replicate weight 126, well-being module activity-level weight"'
label var rawbwt_127            `"Replicate weight 127, well-being module activity-level weight"'
label var rawbwt_128            `"Replicate weight 128, well-being module activity-level weight"'
label var rawbwt_129            `"Replicate weight 129, well-being module activity-level weight"'
label var rawbwt_130            `"Replicate weight 130, well-being module activity-level weight"'
label var rawbwt_131            `"Replicate weight 131, well-being module activity-level weight"'
label var rawbwt_132            `"Replicate weight 132, well-being module activity-level weight"'
label var rawbwt_133            `"Replicate weight 133, well-being module activity-level weight"'
label var rawbwt_134            `"Replicate weight 134, well-being module activity-level weight"'
label var rawbwt_135            `"Replicate weight 135, well-being module activity-level weight"'
label var rawbwt_136            `"Replicate weight 136, well-being module activity-level weight"'
label var rawbwt_137            `"Replicate weight 137, well-being module activity-level weight"'
label var rawbwt_138            `"Replicate weight 138, well-being module activity-level weight"'
label var rawbwt_139            `"Replicate weight 139, well-being module activity-level weight"'
label var rawbwt_140            `"Replicate weight 140, well-being module activity-level weight"'
label var rawbwt_141            `"Replicate weight 141, well-being module activity-level weight"'
label var rawbwt_142            `"Replicate weight 142, well-being module activity-level weight"'
label var rawbwt_143            `"Replicate weight 143, well-being module activity-level weight"'
label var rawbwt_144            `"Replicate weight 144, well-being module activity-level weight"'
label var rawbwt_145            `"Replicate weight 145, well-being module activity-level weight"'
label var rawbwt_146            `"Replicate weight 146, well-being module activity-level weight"'
label var rawbwt_147            `"Replicate weight 147, well-being module activity-level weight"'
label var rawbwt_148            `"Replicate weight 148, well-being module activity-level weight"'
label var rawbwt_149            `"Replicate weight 149, well-being module activity-level weight"'
label var rawbwt_150            `"Replicate weight 150, well-being module activity-level weight"'
label var rawbwt_151            `"Replicate weight 151, well-being module activity-level weight"'
label var rawbwt_152            `"Replicate weight 152, well-being module activity-level weight"'
label var rawbwt_153            `"Replicate weight 153, well-being module activity-level weight"'
label var rawbwt_154            `"Replicate weight 154, well-being module activity-level weight"'
label var rawbwt_155            `"Replicate weight 155, well-being module activity-level weight"'
label var rawbwt_156            `"Replicate weight 156, well-being module activity-level weight"'
label var rawbwt_157            `"Replicate weight 157, well-being module activity-level weight"'
label var rawbwt_158            `"Replicate weight 158, well-being module activity-level weight"'
label var rawbwt_159            `"Replicate weight 159, well-being module activity-level weight"'
label var rawbwt_160            `"Replicate weight 160, well-being module activity-level weight"'
label var rawbwt                `"Replicate weight, well-being module activity-level weight"'
label var actlinew              `"Activity line number"'
label var linenow               `"Person line number"'
label var wholine               `"Number of the who record for this episode"'
label var relatew               `"Relationship of person with whom activity was done"'
label var relatewu              `"Relationship of person with whom activity was done (uncollapsed version)"'
label var agew                  `"Age of person with whom activity was done"'
label var sexw                  `"Sex of person with whom activity was done"'
label var linenor               `"Line number of eldercare recipient"'
label var hh_ec                 `"Eldercare recipient is a household member"'
label var relater               `"Relationship to respodent of person who received care"'
label var ecage                 `"Age of eldercare recipient"'
label var ecyear                `"Years cared for eldercare recipient"'
label var ecmonth               `"Months cared for eldercare recipient"'
label var act_carehh            `"ACT: Caring for and helping household members"'
label var act_carenhh           `"ACT: Caring for and helping non-household members"'
label var act_educ              `"ACT: Educational activities"'
label var act_food              `"ACT: Eat and drinking"'
label var act_govserv           `"ACT: Government services and civic obligations"'
label var act_hhact             `"ACT: Household activities"'
label var act_hhserv            `"ACT: Household services"'
label var act_pcare             `"ACT: Personal care"'
label var act_phone             `"ACT: Telephone calls"'
label var act_profserv          `"ACT: Professional and personal care services"'
label var act_purch             `"ACT: Consumer purchases"'
label var act_relig             `"ACT: Religious and spiritual activities"'
label var act_social            `"ACT: Socializing, relaxing, and leisure"'
label var act_sports            `"ACT: Sports, exercise, and recreation"'
label var act_travel            `"ACT: Traveling"'
label var act_vol               `"ACT: Volunteer activities"'
label var act_work              `"ACT: Working and Work-related Activities"'
label var bls_carehh            `"BLS: Caring for and helping household members"'
label var bls_carehh_adult      `"BLS: Caring for and helping household members: Caring for and helping household "'
label var bls_carehh_kid        `"BLS: Caring for and helping household members: Caring for and helping household "'
label var bls_carehh_kideduc    `"BLS: Caring for and helping household members: Activities related to household c"'
label var bls_carehh_kidhealth  `"BLS: Caring for and helping household members: Activities related to household c"'
label var bls_carehh_kidother   `"BLS: Caring for and helping household members: Caring for and helping household "'
label var bls_carehh_travel     `"BLS: Caring for and helping household members: Travel related to caring for and "'
label var bls_carenhh           `"BLS: Caring for and helping non-household members"'
label var bls_carenhh_adult     `"BLS: Caring for and helping non-household members: Caring for and helping non-ho"'
label var bls_carenhh_adultcare `"BLS: Caring for and helping non-household members: Caring for non-household adul"'
label var bls_carenhh_adulthelp `"BLS: Caring for and helping non-household members: Helping non-household adults"'
label var bls_carenhh_kid       `"BLS: Caring for and helping non-household members: Caring for and helping non-ho"'
label var bls_carenhh_travel    `"BLS: Caring for and helping non-household members: Travel related to caring for "'
label var bls_comm              `"BLS: Telephone calls, mail, and e-mail"'
label var bls_comm_msg          `"BLS: Telephone calls, mail, and e-mail: Household and personal messages"'
label var bls_comm_msgemail     `"BLS: Telephone calls, mail, and e-mail: Household and personal e-mail and messag"'
label var bls_comm_msgmail      `"BLS: Telephone calls, mail, and e-mail: Household and personal mail and messages"'
label var bls_comm_tele         `"BLS: Telephone calls, mail, and e-mail: Telephone calls (to or from)"'
label var bls_comm_travel       `"BLS: Telephone calls, mail, and e-mail: Travel related to telephone calls"'
label var bls_educ              `"BLS: Educational activities"'
label var bls_educ_class        `"BLS: Educational activities: Attending class"'
label var bls_educ_hwork        `"BLS: Educational activities: Homework and research"'
label var bls_educ_travel       `"BLS: Educational activities: Travel related to education"'
label var bls_food              `"BLS: Eat and drinking"'
label var bls_food_food         `"BLS: Eat and drinking: Eating and drinking"'
label var bls_food_travel       `"BLS: Eating and drinking: Travel related to eating and drinking"'
label var bls_hhact             `"BLS: Household activities"'
label var bls_hhact_exter       `"BLS: Household activities: Exterior maintenance, repair, and decoration"'
label var bls_hhact_food        `"BLS: Household activities: Food preparation and cleanup"'
label var bls_hhact_hhmgmt      `"BLS: Household activities: Household management"'
label var bls_hhact_hwork       `"BLS: Household activities: Housework"'
label var bls_hhact_inter       `"BLS: Household activities: Interior maintenance, repair, and decoration"'
label var bls_hhact_lawn        `"BLS: Household activities: Lawn and garden care"'
label var bls_hhact_pet         `"BLS: Household activities: Animals and pets"'
label var bls_hhact_tool        `"BLS: Household activities: Appliances, tools, and toys"'
label var bls_hhact_travel      `"BLS: Household activities: Travel related to household activities"'
label var bls_hhact_vehic       `"BLS: Household activities: Vehicles"'
label var bls_leis              `"BLS: Leisure and sports"'
label var bls_leis_arts         `"BLS: Leisure and sports: Arts and entertainment (other than sports)"'
label var bls_leis_attend       `"BLS: Leisure and sports: Attending or hosting social events"'
label var bls_leis_attsport     `"BLS: Leisure and sports: Attending sporting or recreational events"'
label var bls_leis_partsport    `"BLS: Leisure and sports: Participating in sports, exercise, and recreation"'
label var bls_leis_relax        `"BLS: Leisure and sports: Relaxing and leisure"'
label var bls_leis_soc          `"BLS: Leisure and sports: Socializing, relaxing, and leisure"'
label var bls_leis_soccom       `"BLS: Leisure and sports: Socializing and communicating"'
label var bls_leis_soccomex     `"BLS: Leisure and sports: Socializing and communicating (except social events)"'
label var bls_leis_sport        `"BLS: Leisure and sports: Sports, exercise, and recreation"'
label var bls_leis_travel       `"BLS: Leisure and sports: Travel related to leisure and sports"'
label var bls_leis_tv           `"BLS: Leisure and sports: Watching TV"'
label var bls_other             `"BLS: Other activities not elsewhere classified"'
label var bls_pcare             `"BLS: Personal care"'
label var bls_pcare_act         `"BLS: Personal care: Personal activities"'
label var bls_pcare_groom       `"BLS: Personal care: Grooming"'
label var bls_pcare_health      `"BLS: Personal care: Health-related self care"'
label var bls_pcare_sleep       `"BLS: Personal care: Sleeping"'
label var bls_pcare_travel      `"BLS: Personal care: Travel related to personal care"'
label var bls_purch             `"BLS: Purchasing goods and services"'
label var bls_purch_bank        `"BLS: Purchasing goods and services: Financial services and banking"'
label var bls_purch_cons        `"BLS: Purchasing goods and services: Consumer goods purchases"'
label var bls_purch_gov         `"BLS: Purchasing goods and services: Government services"'
label var bls_purch_groc        `"BLS: Purchasing goods and services: Grocery shopping"'
label var bls_purch_health      `"BLS: Purchasing goods and services: Medical and care services"'
label var bls_purch_hhserv      `"BLS: Purchasing goods and services: Household services"'
label var bls_purch_home        `"BLS: Purchasing goods and services: Home maintenance, repair, decoration, and co"'
label var bls_purch_pcare       `"BLS: Purchasing goods and services: Personal care services"'
label var bls_purch_prof        `"BLS: Purchasing goods and services: Professional and personal care services"'
label var bls_purch_travel      `"BLS: Purchasing goods and services: Travel related to purchasing goods and servi"'
label var bls_purch_vehic       `"BLS: Purchasing goods and services: Vehicle maintenance and repair services (not"'
label var bls_social            `"BLS: Organizational, civic, and religious activities"'
label var bls_social_admin      `"BLS: Organizational, civic, and religious activities: Administrative and support"'
label var bls_social_attend     `"BLS: Organizational, civic, and religious activities: Attending meetings, confer"'
label var bls_social_civic      `"BLS: Organizational, civic, and religious activities: Civic obligations and part"'
label var bls_social_culture    `"BLS: Organizational, civic, and religious activities: Participating in performan"'
label var bls_social_mainten    `"BLS: Organizational, civic, and religious activities: Indoor and outdoor mainten"'
label var bls_social_relig      `"BLS: Organizational, civic, and religious activities: Religious and spiritual ac"'
label var bls_social_socserv    `"BLS: Organizational, civic, and religious activities: Social service and care ac"'
label var bls_social_travel     `"BLS: Organizational, civic, and religious activities: Travel related to organiza"'
label var bls_social_vol        `"BLS: Organizational, civic, and religious activities: Volunteering (organization"'
label var bls_social_volact     `"BLS: Organizational, civic, and religious activities: Volunteer activities"'
label var bls_work              `"BLS: Working and work-related activities"'
label var bls_work_other        `"BLS: Working and work-related activities: Other income-generating activities"'
label var bls_work_search       `"BLS: Working and work-related activities: Job search and interviewing"'
label var bls_work_travel       `"BLS: Working and work-related activities: Travel related to work"'
label var bls_work_working      `"BLS: Working and work-related activities: Working"'
label var bls_work_workrel      `"BLS: Working and work-related activities: Work-related activities"'
label var ers_assoc             `"ERS: Activities associated with primary eating and drinking (travel and waiting)"'
label var ers_prim              `"ERS: Primary eating and drinking"'

label define rectype_lbl 1 `"Household"'
label define rectype_lbl 2 `"Person"', add
label define rectype_lbl 3 `"Activity"', add
label define rectype_lbl 4 `"Who"', add
label define rectype_lbl 5 `"Eldercare"', add
label values rectype rectype_lbl

label define inttype_cps8_lbl 1 `"Phone interview - office"'
label define inttype_cps8_lbl 2 `"Phone interview - field"', add
label define inttype_cps8_lbl 3 `"Personal interview"', add
label values inttype_cps8 inttype_cps8_lbl

label define numcontacts_cps8_lbl 00 `"0"'
label define numcontacts_cps8_lbl 01 `"1"', add
label define numcontacts_cps8_lbl 02 `"2"', add
label define numcontacts_cps8_lbl 03 `"3"', add
label define numcontacts_cps8_lbl 04 `"4"', add
label define numcontacts_cps8_lbl 05 `"5"', add
label define numcontacts_cps8_lbl 06 `"6"', add
label define numcontacts_cps8_lbl 07 `"7"', add
label define numcontacts_cps8_lbl 08 `"8"', add
label define numcontacts_cps8_lbl 09 `"9"', add
label define numcontacts_cps8_lbl 99 `"NIU (Not in universe)"', add
label values numcontacts_cps8 numcontacts_cps8_lbl

label define phone_lbl 1 `"No phone available"'
label define phone_lbl 2 `"Phone available; not in household"', add
label define phone_lbl 3 `"Phone available in household"', add
label values phone phone_lbl

label define cluster_lbl 099999 `"Not generated"'
label values cluster cluster_lbl

label define strata_lbl 009999 `"Not generated"'
label values strata strata_lbl

label define year_cps8_lbl 2002 `"2002"'
label define year_cps8_lbl 2003 `"2003"', add
label define year_cps8_lbl 2004 `"2004"', add
label define year_cps8_lbl 2005 `"2005"', add
label define year_cps8_lbl 2006 `"2006"', add
label define year_cps8_lbl 2007 `"2007"', add
label define year_cps8_lbl 2008 `"2008"', add
label define year_cps8_lbl 2009 `"2009"', add
label define year_cps8_lbl 2010 `"2010"', add
label define year_cps8_lbl 2011 `"2011"', add
label define year_cps8_lbl 2012 `"2012"', add
label define year_cps8_lbl 2013 `"2013"', add
label define year_cps8_lbl 2014 `"2014"', add
label define year_cps8_lbl 2015 `"2015"', add
label define year_cps8_lbl 2016 `"2016"', add
label define year_cps8_lbl 2017 `"2017"', add
label define year_cps8_lbl 2018 `"2018"', add
label define year_cps8_lbl 2019 `"2019"', add
label define year_cps8_lbl 2020 `"2020"', add
label define year_cps8_lbl 2021 `"2021"', add
label define year_cps8_lbl 2022 `"2022"', add
label values year_cps8 year_cps8_lbl

label define month_cps8_lbl 01 `"January"'
label define month_cps8_lbl 02 `"February"', add
label define month_cps8_lbl 03 `"March"', add
label define month_cps8_lbl 04 `"April"', add
label define month_cps8_lbl 05 `"May"', add
label define month_cps8_lbl 06 `"June"', add
label define month_cps8_lbl 07 `"July"', add
label define month_cps8_lbl 08 `"August"', add
label define month_cps8_lbl 09 `"September"', add
label define month_cps8_lbl 10 `"October"', add
label define month_cps8_lbl 11 `"November"', add
label define month_cps8_lbl 12 `"December"', add
label values month_cps8 month_cps8_lbl

label define region_lbl 1 `"Northeast"'
label define region_lbl 2 `"Midwest"', add
label define region_lbl 3 `"South"', add
label define region_lbl 4 `"West"', add
label values region region_lbl

label define statefip_lbl 01 `"Alabama"'
label define statefip_lbl 02 `"Alaska"', add
label define statefip_lbl 04 `"Arizona"', add
label define statefip_lbl 05 `"Arkansas"', add
label define statefip_lbl 06 `"California"', add
label define statefip_lbl 08 `"Colorado"', add
label define statefip_lbl 09 `"Connecticut"', add
label define statefip_lbl 10 `"Delaware"', add
label define statefip_lbl 11 `"District of Columbia"', add
label define statefip_lbl 12 `"Florida"', add
label define statefip_lbl 13 `"Georgia"', add
label define statefip_lbl 15 `"Hawaii"', add
label define statefip_lbl 16 `"Idaho"', add
label define statefip_lbl 17 `"Illinois"', add
label define statefip_lbl 18 `"Indiana"', add
label define statefip_lbl 19 `"Iowa"', add
label define statefip_lbl 20 `"Kansas"', add
label define statefip_lbl 21 `"Kentucky"', add
label define statefip_lbl 22 `"Louisiana"', add
label define statefip_lbl 23 `"Maine"', add
label define statefip_lbl 24 `"Maryland"', add
label define statefip_lbl 25 `"Massachusetts"', add
label define statefip_lbl 26 `"Michigan"', add
label define statefip_lbl 27 `"Minnesota"', add
label define statefip_lbl 28 `"Mississippi"', add
label define statefip_lbl 29 `"Missouri"', add
label define statefip_lbl 30 `"Montana"', add
label define statefip_lbl 31 `"Nebraska"', add
label define statefip_lbl 32 `"Nevada"', add
label define statefip_lbl 33 `"New Hampshire"', add
label define statefip_lbl 34 `"New Jersey"', add
label define statefip_lbl 35 `"New Mexico"', add
label define statefip_lbl 36 `"New York"', add
label define statefip_lbl 37 `"North Carolina"', add
label define statefip_lbl 38 `"North Dakota"', add
label define statefip_lbl 39 `"Ohio"', add
label define statefip_lbl 40 `"Oklahoma"', add
label define statefip_lbl 41 `"Oregon"', add
label define statefip_lbl 42 `"Pennsylvania"', add
label define statefip_lbl 44 `"Rhode Island"', add
label define statefip_lbl 45 `"South Carolina"', add
label define statefip_lbl 46 `"South Dakota"', add
label define statefip_lbl 47 `"Tennessee"', add
label define statefip_lbl 48 `"Texas"', add
label define statefip_lbl 49 `"Utah"', add
label define statefip_lbl 50 `"Vermont"', add
label define statefip_lbl 51 `"Virginia"', add
label define statefip_lbl 53 `"Washington"', add
label define statefip_lbl 54 `"West Virginia"', add
label define statefip_lbl 55 `"Wisconsin"', add
label define statefip_lbl 56 `"Wyoming"', add
label values statefip statefip_lbl

label define metro_lbl 01 `"Metropolitan, central city"'
label define metro_lbl 02 `"Metropolitan, balance of MSA"', add
label define metro_lbl 03 `"Metropolitan, not identified"', add
label define metro_lbl 04 `"Nonmetropolitan"', add
label define metro_lbl 05 `"Not identified"', add
label values metro metro_lbl

label define msasize_lbl 0 `"Not identified or non-metropolitan"'
label define msasize_lbl 2 `"100,000 - 249,999"', add
label define msasize_lbl 3 `"250,000 - 499,999"', add
label define msasize_lbl 4 `"500,000 - 999,999"', add
label define msasize_lbl 5 `"1,000,000 - 2,499,999"', add
label define msasize_lbl 6 `"2,500,000 - 4,999,999"', add
label define msasize_lbl 7 `"5,000,000+"', add
label values msasize msasize_lbl

label define metarea_lbl 00000 `"Not Identified or NonMetropolitan"'
label define metarea_lbl 00160 `"Albany-Schenectady, NY"', add
label define metarea_lbl 00200 `"Albuquerque-Santa Fe-Las Vegas, NM"', add
label define metarea_lbl 00460 `"Appleton-Oshkosh-Neenah, WI"', add
label define metarea_lbl 00521 `"Atlanta--Athens-Clarke County--Sandy Springs, GA"', add
label define metarea_lbl 01120 `"Boston, MA"', add
label define metarea_lbl 01121 `"Boston-Worchester-Manchester, MS-NH-CT-ME"', add
label define metarea_lbl 01122 `"Boston-Worcester-Providence, MA-RI-NH-CT"', add
label define metarea_lbl 01160 `"Bridgeport-New Haven-Stamford, CT"', add
label define metarea_lbl 01360 `"Cedar Rapids-Iowa City, IA"', add
label define metarea_lbl 01480 `"Charleston-Huntington-Ashland, WV-OH-KY"', add
label define metarea_lbl 01560 `"Chattanooga-Cleveland-Dalton, TN-GA-AL"', add
label define metarea_lbl 01600 `"Chicago-Gary-Kenosha, IL-IN-WI"', add
label define metarea_lbl 01601 `"Chicago-Naperville-Michigan City, IL-IN-WI"', add
label define metarea_lbl 01640 `"Cincinnati-Hamilton, OH-KY-IN"', add
label define metarea_lbl 01641 `"Cincinnati-Middletown-Wilmington, OH-KY-IN"', add
label define metarea_lbl 01680 `"Cleveland-Akron, OH"', add
label define metarea_lbl 01681 `"Cleveland-Akron-Elyria, OH"', add
label define metarea_lbl 01800 `"Columbus-Auburn-Opelika, GA-AL"', add
label define metarea_lbl 01920 `"Dallas-Fort Worth, TX"', add
label define metarea_lbl 01921 `"Dallas-Fort Worth, TX"', add
label define metarea_lbl 02000 `"Dayton-Springfield-Greenville, OH"', add
label define metarea_lbl 02080 `"Denver-Boulder-Greeley, CO"', add
label define metarea_lbl 02081 `"Denver-Aurora-Boulder, CO"', add
label define metarea_lbl 02160 `"Detroit-Ann Arbor-Flint, MI"', add
label define metarea_lbl 02161 `"Detroit-Warren-Flint, MI"', add
label define metarea_lbl 02310 `"El Paso-Las Cruces, TX-NM"', add
label define metarea_lbl 02700 `"Cape Coral-Fort Myers-Naples, FL"', add
label define metarea_lbl 02840 `"Fresno-Madera, CA"', add
label define metarea_lbl 03000 `"Grand Rapids-Muskegon-Holland, MI (part)"', add
label define metarea_lbl 03120 `"Greensboro-Winston-Salem-High Point, NC (part)"', add
label define metarea_lbl 03160 `"Greenville, SC"', add
label define metarea_lbl 03240 `"Harrisburg-York-Lebanon, PA"', add
label define metarea_lbl 03284 `"Hartford-West Hartford, CT"', add
label define metarea_lbl 03360 `"Houston-Galveston-Brazoria, TX"', add
label define metarea_lbl 03361 `"Houston-Baytown-Huntsville, TX (part)"', add
label define metarea_lbl 03720 `"Kalamazoo-Battle Creek-Portage, MI"', add
label define metarea_lbl 03440 `"Huntsville-Decatur, AL"', add
label define metarea_lbl 03480 `"Indianapolis-Anderson-Columbus, IN (part)"', add
label define metarea_lbl 03660 `"Johnson City-Kingsport-Bristol, TN-VA (part)"', add
label define metarea_lbl 04400 `"Little Rock-North Little Rock, AR"', add
label define metarea_lbl 04480 `"Los Angeles-Riverside-Orange County, CA"', add
label define metarea_lbl 04481 `"Los Angeles-Long Beach-Riverside, CA"', add
label define metarea_lbl 04680 `"Macon-Warner-Robins-Fort Valley, GA (part)"', add
label define metarea_lbl 04720 `"Madison-Janesville-Beloit, WI"', add
label define metarea_lbl 05000 `"Miami-Fort Lauderdale, FL"', add
label define metarea_lbl 05080 `"Milwaukee-Racine, WI"', add
label define metarea_lbl 05081 `"Milwaukee-Racine-Waukesha, WI"', add
label define metarea_lbl 05120 `"Minneapolis-St. Paul-St. Cloud, MN-WI (part)"', add
label define metarea_lbl 05160 `"Mobile-Daphne-Fairhope, AL"', add
label define metarea_lbl 05600 `"New York-Northern New Jersey-Long Island, NY-NJ-CT-PA"', add
label define metarea_lbl 05601 `"New York-Newark-Bridgeport, NY-NH-CT-PA"', add
label define metarea_lbl 05960 `"Orlando-Deltona-Daytona Beach, FL"', add
label define metarea_lbl 06160 `"Philadelphia-Wilmington-Atlantic City, PA-NJ-DE-MD"', add
label define metarea_lbl 06161 `"Philadelphia-Camden-Vineland, PA-NJ-DE-MD"', add
label define metarea_lbl 06400 `"Portland-Salem, OR-WA"', add
label define metarea_lbl 06401 `"Portland-Lewiston-South Portland, ME"', add
label define metarea_lbl 06640 `"Raleigh-Durham-Cary, NC (part)"', add
label define metarea_lbl 06920 `"Sacramento-Yolo, CA"', add
label define metarea_lbl 06921 `"Sacramento-Arden-Arcade-Truckee, CA-NV"', add
label define metarea_lbl 07160 `"Salt Lake City-Ogden-Clearfield, UT (part)"', add
label define metarea_lbl 07360 `"San Francisco-Oakland-San Jose, CA"', add
label define metarea_lbl 07600 `"Seattle-Tacoma-Bremerton, WA"', add
label define metarea_lbl 07601 `"Seattle-Tacoma-Olympia, WA"', add
label define metarea_lbl 07800 `"South Bend-Elkhart-Mishawaka, IN-MI"', add
label define metarea_lbl 07840 `"Spokane-Spokane Valley-Coeur d'Alene, WA-ID"', add
label define metarea_lbl 08840 `"Washington-Baltimore, DC-MD-VA-WV"', add
label define metarea_lbl 08841 `"Washington-Baltimore-Northern Virginia, DC-MD-VA-WV"', add
label define metarea_lbl 08780 `"Visalia-Porterville-Hanford, CA"', add
label define metarea_lbl 99998 `"Blank"', add
label define metarea_lbl 99999 `"NIU (Not in universe)"', add
label values metarea metarea_lbl

label define famincome_lbl 001 `"Less than $5,000"'
label define famincome_lbl 002 `"$5,000 to $7,499"', add
label define famincome_lbl 003 `"$7,500 to $9,999"', add
label define famincome_lbl 004 `"$10,000 to $12,499"', add
label define famincome_lbl 005 `"$12,500 to $14,999"', add
label define famincome_lbl 006 `"$15,000 to $19,999"', add
label define famincome_lbl 007 `"$20,000 to $24,999"', add
label define famincome_lbl 008 `"$25,000 to $29,999"', add
label define famincome_lbl 009 `"$30,000 to $34,999"', add
label define famincome_lbl 010 `"$35,000 to $39,999"', add
label define famincome_lbl 011 `"$40,000 to $49,999"', add
label define famincome_lbl 012 `"$50,000 to $59,999"', add
label define famincome_lbl 013 `"$60,000 to $74,999"', add
label define famincome_lbl 014 `"$75,000 to $99,999"', add
label define famincome_lbl 015 `"$100,000 to $149,999"', add
label define famincome_lbl 016 `"$150,000 and over"', add
label define famincome_lbl 996 `"Refused"', add
label define famincome_lbl 997 `"Don't know"', add
label define famincome_lbl 998 `"Blank"', add
label values famincome famincome_lbl

label define hh_size_lbl 001 `"1"'
label define hh_size_lbl 002 `"2"', add
label define hh_size_lbl 003 `"3"', add
label define hh_size_lbl 004 `"4"', add
label define hh_size_lbl 005 `"5"', add
label define hh_size_lbl 006 `"6"', add
label define hh_size_lbl 007 `"7"', add
label define hh_size_lbl 008 `"8"', add
label define hh_size_lbl 009 `"9"', add
label define hh_size_lbl 010 `"10"', add
label define hh_size_lbl 011 `"11"', add
label define hh_size_lbl 012 `"12"', add
label define hh_size_lbl 013 `"13"', add
label define hh_size_lbl 014 `"14"', add
label define hh_size_lbl 015 `"15"', add
label define hh_size_lbl 016 `"16"', add
label define hh_size_lbl 999 `"NIU (Not in universe)"', add
label values hh_size hh_size_lbl

label define poverty130_lbl 10 `"HH income lt or equal to 130% of poverty threshold"'
label define poverty130_lbl 11 `"HH income lt 130% of poverty threshold"', add
label define poverty130_lbl 12 `"HH income equal to 130% of poverty threshold"', add
label define poverty130_lbl 20 `"HH income gt 130% of poverty threshold"', add
label define poverty130_lbl 96 `"Refused"', add
label define poverty130_lbl 97 `"Don't know"', add
label define poverty130_lbl 99 `"NIU (Not in universe)"', add
label values poverty130 poverty130_lbl

label define poverty185_lbl 10 `"HH income lt or equal to 185% of poverty threshold"'
label define poverty185_lbl 11 `"HH income lt 185% of poverty threshold"', add
label define poverty185_lbl 12 `"HH income equal to 185% of poverty threshold"', add
label define poverty185_lbl 20 `"HH income gt 185% of poverty threshold"', add
label define poverty185_lbl 96 `"Refused"', add
label define poverty185_lbl 97 `"Don't know"', add
label define poverty185_lbl 99 `"NIU (Not in universe)"', add
label values poverty185 poverty185_lbl

label define povertylevel_lbl 01 `"Fiscal year 2006 poverty thresholds"'
label define povertylevel_lbl 02 `"Fiscal year 2007 poverty thresholds"', add
label define povertylevel_lbl 03 `"Fiscal year 2008 poverty thresholds"', add
label define povertylevel_lbl 04 `"Fiscal year 2009 poverty thresholds"', add
label define povertylevel_lbl 05 `"Fiscal year 2014 poverty thresholds"', add
label define povertylevel_lbl 06 `"Fiscal year 2015 poverty thresholds"', add
label define povertylevel_lbl 07 `"Fiscal year 2016 poverty thresholds"', add
label define povertylevel_lbl 08 `"Fiscal year 2017 poverty thresholds"', add
label define povertylevel_lbl 09 `"Fiscal year 2022 poverty thresholds"', add
label define povertylevel_lbl 10 `"Fiscal year 2023 poverty thresholds"', add
label define povertylevel_lbl 99 `"NIU (Not in universe)"', add
label values povertylevel povertylevel_lbl

label define foodstamp_lbl 01 `"Yes"'
label define foodstamp_lbl 02 `"No"', add
label define foodstamp_lbl 96 `"Refused"', add
label define foodstamp_lbl 97 `"Don't know"', add
label define foodstamp_lbl 99 `"NIU (Not in universe)"', add
label values foodstamp foodstamp_lbl

label define hhtenure_lbl 01 `"Owned or being bought by a household member"'
label define hhtenure_lbl 02 `"Rented for cash"', add
label define hhtenure_lbl 03 `"Occupied without payment of cash rent"', add
label define hhtenure_lbl 99 `"NIU (Not in universe)"', add
label values hhtenure hhtenure_lbl

label define wic_lbl 01 `"Yes"'
label define wic_lbl 02 `"No"', add
label define wic_lbl 96 `"Refused"', add
label define wic_lbl 97 `"Don't Know"', add
label define wic_lbl 99 `"NIU"', add
label values wic wic_lbl

label define hh_child_lbl 00 `"No"'
label define hh_child_lbl 01 `"Yes"', add
label define hh_child_lbl 99 `"NIU (Not in universe)"', add
label values hh_child hh_child_lbl

label define anybrk_lbl 01 `"Yes"'
label define anybrk_lbl 02 `"No"', add
label define anybrk_lbl 03 `"Children did not attend school, day care, Head Start center, or summer day program"', add
label define anybrk_lbl 96 `"Don't know"', add
label define anybrk_lbl 97 `"Refused"', add
label define anybrk_lbl 99 `"NIU (not in universe)"', add
label values anybrk anybrk_lbl

label define anylnch_lbl 01 `"Yes"'
label define anylnch_lbl 02 `"No"', add
label define anylnch_lbl 03 `"Children did not attend school, day care, Head Start center, or summer day program"', add
label define anylnch_lbl 96 `"Refused"', add
label define anylnch_lbl 97 `"Don't know"', add
label define anylnch_lbl 98 `"Blank"', add
label define anylnch_lbl 99 `"NIU (not in universe)"', add
label values anylnch anylnch_lbl

label define housetype_lbl 01 `"House, apartment, flat"'
label define housetype_lbl 02 `"Housing unit in nontransient hotel, motel, etc."', add
label define housetype_lbl 03 `"Housing unit permanent in transient hotel, motel"', add
label define housetype_lbl 04 `"Housing unit in rooming house"', add
label define housetype_lbl 05 `"Mobile home or trailer with no permanent room added"', add
label define housetype_lbl 06 `"Mobile home or trailer with 1 or more rooms added"', add
label define housetype_lbl 07 `"Housing unit not specified above"', add
label define housetype_lbl 08 `"Quarters not housing unit in rooming boarding house"', add
label define housetype_lbl 09 `"Unit not permanent, in transient hotel or motel"', add
label define housetype_lbl 10 `"Unoccupied tent site or trailer site"', add
label define housetype_lbl 11 `"Student quarters in college dorm"', add
label define housetype_lbl 12 `"Other unit not specified above"', add
label values housetype housetype_lbl

label define hh_numkids_lbl 00 `"0"'
label define hh_numkids_lbl 01 `"1"', add
label define hh_numkids_lbl 02 `"2"', add
label define hh_numkids_lbl 03 `"3"', add
label define hh_numkids_lbl 04 `"4"', add
label define hh_numkids_lbl 05 `"5"', add
label define hh_numkids_lbl 06 `"6"', add
label define hh_numkids_lbl 07 `"7"', add
label define hh_numkids_lbl 08 `"8"', add
label define hh_numkids_lbl 09 `"9"', add
label define hh_numkids_lbl 10 `"10"', add
label define hh_numkids_lbl 11 `"11"', add
label define hh_numkids_lbl 12 `"12"', add
label define hh_numkids_lbl 99 `"NIU (Not in universe)"', add
label values hh_numkids hh_numkids_lbl

label define fambus_lbl 00 `"No family business"'
label define fambus_lbl 01 `"Family business"', add
label define fambus_lbl 96 `"Refused"', add
label define fambus_lbl 97 `"Don't know"', add
label define fambus_lbl 99 `"NIU (Not in universe)"', add
label values fambus fambus_lbl

label define ageychild_lbl 000 `"0"'
label define ageychild_lbl 001 `"1"', add
label define ageychild_lbl 002 `"2"', add
label define ageychild_lbl 003 `"3"', add
label define ageychild_lbl 004 `"4"', add
label define ageychild_lbl 005 `"5"', add
label define ageychild_lbl 006 `"6"', add
label define ageychild_lbl 007 `"7"', add
label define ageychild_lbl 008 `"8"', add
label define ageychild_lbl 009 `"9"', add
label define ageychild_lbl 010 `"10"', add
label define ageychild_lbl 011 `"11"', add
label define ageychild_lbl 012 `"12"', add
label define ageychild_lbl 013 `"13"', add
label define ageychild_lbl 014 `"14"', add
label define ageychild_lbl 015 `"15"', add
label define ageychild_lbl 016 `"16"', add
label define ageychild_lbl 017 `"17"', add
label define ageychild_lbl 999 `"NIU (Not in universe)"', add
label values ageychild ageychild_lbl

label define fambus_resp_lbl 00 `"No"'
label define fambus_resp_lbl 01 `"Yes"', add
label define fambus_resp_lbl 99 `"NIU (Not in universe)"', add
label values fambus_resp fambus_resp_lbl

label define hh_numadults_lbl 00 `"0"'
label define hh_numadults_lbl 01 `"1"', add
label define hh_numadults_lbl 02 `"2"', add
label define hh_numadults_lbl 03 `"3"', add
label define hh_numadults_lbl 04 `"4"', add
label define hh_numadults_lbl 05 `"5"', add
label define hh_numadults_lbl 06 `"6"', add
label define hh_numadults_lbl 07 `"7"', add
label define hh_numadults_lbl 08 `"8"', add
label define hh_numadults_lbl 09 `"9"', add
label define hh_numadults_lbl 99 `"NIU (Not in universe)"', add
label values hh_numadults hh_numadults_lbl

label define fambus_spouse_lbl 00 `"No"'
label define fambus_spouse_lbl 01 `"Yes"', add
label define fambus_spouse_lbl 99 `"NIU (Not in universe)"', add
label values fambus_spouse fambus_spouse_lbl

label define fambus_other_lbl 00 `"No"'
label define fambus_other_lbl 01 `"Yes"', add
label define fambus_other_lbl 99 `"NIU (Not in universe)"', add
label values fambus_other fambus_other_lbl

label define hh_size_cps8_lbl 01 `"1"'
label define hh_size_cps8_lbl 02 `"2"', add
label define hh_size_cps8_lbl 03 `"3"', add
label define hh_size_cps8_lbl 04 `"4"', add
label define hh_size_cps8_lbl 05 `"5"', add
label define hh_size_cps8_lbl 06 `"6"', add
label define hh_size_cps8_lbl 07 `"7"', add
label define hh_size_cps8_lbl 08 `"8"', add
label define hh_size_cps8_lbl 09 `"9"', add
label define hh_size_cps8_lbl 10 `"10"', add
label define hh_size_cps8_lbl 11 `"11"', add
label define hh_size_cps8_lbl 12 `"12"', add
label define hh_size_cps8_lbl 13 `"13"', add
label define hh_size_cps8_lbl 14 `"14"', add
label define hh_size_cps8_lbl 15 `"15"', add
label define hh_size_cps8_lbl 16 `"16"', add
label values hh_size_cps8 hh_size_cps8_lbl

label define fambus_cps8_lbl 00 `"No family business"'
label define fambus_cps8_lbl 01 `"Family business"', add
label define fambus_cps8_lbl 96 `"Refused"', add
label define fambus_cps8_lbl 97 `"Don't know"', add
label define fambus_cps8_lbl 98 `"Blank"', add
label values fambus_cps8 fambus_cps8_lbl

label define hh_child_cps8_lbl 00 `"No"'
label define hh_child_cps8_lbl 01 `"Yes"', add
label values hh_child_cps8 hh_child_cps8_lbl

label define ageychild_cps8_lbl 000 `"0"'
label define ageychild_cps8_lbl 001 `"1"', add
label define ageychild_cps8_lbl 002 `"2"', add
label define ageychild_cps8_lbl 003 `"3"', add
label define ageychild_cps8_lbl 004 `"4"', add
label define ageychild_cps8_lbl 005 `"5"', add
label define ageychild_cps8_lbl 006 `"6"', add
label define ageychild_cps8_lbl 007 `"7"', add
label define ageychild_cps8_lbl 008 `"8"', add
label define ageychild_cps8_lbl 009 `"9"', add
label define ageychild_cps8_lbl 010 `"10"', add
label define ageychild_cps8_lbl 011 `"11"', add
label define ageychild_cps8_lbl 012 `"12"', add
label define ageychild_cps8_lbl 013 `"13"', add
label define ageychild_cps8_lbl 014 `"14"', add
label define ageychild_cps8_lbl 015 `"15"', add
label define ageychild_cps8_lbl 016 `"16"', add
label define ageychild_cps8_lbl 017 `"17"', add
label define ageychild_cps8_lbl 999 `"NIU (Not in universe)"', add
label values ageychild_cps8 ageychild_cps8_lbl

label define pernum_lbl 01 `"1"'
label define pernum_lbl 02 `"2"', add
label define pernum_lbl 03 `"3"', add
label define pernum_lbl 04 `"4"', add
label define pernum_lbl 05 `"5"', add
label define pernum_lbl 06 `"6"', add
label define pernum_lbl 07 `"7"', add
label define pernum_lbl 08 `"8"', add
label define pernum_lbl 09 `"9"', add
label define pernum_lbl 10 `"10"', add
label define pernum_lbl 11 `"11"', add
label define pernum_lbl 12 `"12"', add
label define pernum_lbl 13 `"13"', add
label define pernum_lbl 14 `"14"', add
label define pernum_lbl 15 `"15"', add
label define pernum_lbl 16 `"16"', add
label values pernum pernum_lbl

label define lineno_lbl 001 `"1"'
label define lineno_lbl 002 `"2"', add
label define lineno_lbl 003 `"3"', add
label define lineno_lbl 004 `"4"', add
label define lineno_lbl 005 `"5"', add
label define lineno_lbl 006 `"6"', add
label define lineno_lbl 007 `"7"', add
label define lineno_lbl 008 `"8"', add
label define lineno_lbl 009 `"9"', add
label define lineno_lbl 010 `"10"', add
label define lineno_lbl 011 `"11"', add
label define lineno_lbl 012 `"12"', add
label define lineno_lbl 013 `"13"', add
label define lineno_lbl 014 `"14"', add
label define lineno_lbl 015 `"15"', add
label define lineno_lbl 016 `"16"', add
label define lineno_lbl 017 `"17"', add
label define lineno_lbl 018 `"18"', add
label define lineno_lbl 019 `"19"', add
label define lineno_lbl 999 `"NIU (Not in universe)"', add
label values lineno lineno_lbl

label define lineno_cps8_lbl 001 `"1"'
label define lineno_cps8_lbl 002 `"2"', add
label define lineno_cps8_lbl 003 `"3"', add
label define lineno_cps8_lbl 004 `"4"', add
label define lineno_cps8_lbl 005 `"5"', add
label define lineno_cps8_lbl 006 `"6"', add
label define lineno_cps8_lbl 007 `"7"', add
label define lineno_cps8_lbl 008 `"8"', add
label define lineno_cps8_lbl 009 `"9"', add
label define lineno_cps8_lbl 010 `"10"', add
label define lineno_cps8_lbl 011 `"11"', add
label define lineno_cps8_lbl 012 `"12"', add
label define lineno_cps8_lbl 013 `"13"', add
label define lineno_cps8_lbl 014 `"14"', add
label define lineno_cps8_lbl 015 `"15"', add
label define lineno_cps8_lbl 016 `"16"', add
label define lineno_cps8_lbl 999 `"NIU (Not in universe)"', add
label values lineno_cps8 lineno_cps8_lbl

label define presence_lbl 1 `"ATUS and CPS"'
label define presence_lbl 2 `"ATUS only"', add
label define presence_lbl 3 `"CPS only"', add
label values presence presence_lbl

label define lfproxy_cps8_lbl 01 `"Self"'
label define lfproxy_cps8_lbl 02 `"Proxy"', add
label define lfproxy_cps8_lbl 03 `"Both self and proxy"', add
label define lfproxy_cps8_lbl 98 `"Blank"', add
label define lfproxy_cps8_lbl 99 `"NIU (Not in universe)"', add
label values lfproxy_cps8 lfproxy_cps8_lbl

label define month_lbl 001 `"January"'
label define month_lbl 002 `"February"', add
label define month_lbl 003 `"March"', add
label define month_lbl 004 `"April"', add
label define month_lbl 005 `"May"', add
label define month_lbl 006 `"June"', add
label define month_lbl 007 `"July"', add
label define month_lbl 008 `"August"', add
label define month_lbl 009 `"September"', add
label define month_lbl 010 `"October"', add
label define month_lbl 011 `"November"', add
label define month_lbl 012 `"December"', add
label define month_lbl 999 `"NIU (Not in universe)"', add
label values month month_lbl

label define day_lbl 01 `"Sunday"'
label define day_lbl 02 `"Monday"', add
label define day_lbl 03 `"Tuesday"', add
label define day_lbl 04 `"Wednesday"', add
label define day_lbl 05 `"Thursday"', add
label define day_lbl 06 `"Friday"', add
label define day_lbl 07 `"Saturday"', add
label define day_lbl 99 `"NIU (Not in universe)"', add
label values day day_lbl

label define holiday_lbl 00 `"No"'
label define holiday_lbl 01 `"Yes"', add
label define holiday_lbl 99 `"NIU (Not in universe)"', add
label values holiday holiday_lbl

label define sex_lbl 01 `"Male"'
label define sex_lbl 02 `"Female"', add
label define sex_lbl 99 `"NIU (Not in universe)"', add
label values sex sex_lbl

label define race_lbl 0100 `"White only"'
label define race_lbl 0110 `"Black only"', add
label define race_lbl 0120 `"American Indian, Alaskan Native"', add
label define race_lbl 0130 `"Asian or Pacific Islander"', add
label define race_lbl 0131 `"Asian only"', add
label define race_lbl 0132 `"Hawaiian Pacific Islander only"', add
label define race_lbl 0200 `"White-Black"', add
label define race_lbl 0201 `"White-American Indian"', add
label define race_lbl 0202 `"White-Asian"', add
label define race_lbl 0203 `"White-Hawaiian"', add
label define race_lbl 0210 `"Black-American Indian"', add
label define race_lbl 0211 `"Black-Asian"', add
label define race_lbl 0212 `"Black-Hawaiian"', add
label define race_lbl 0220 `"American Indian-Asian"', add
label define race_lbl 0221 `"American Indian-Hawaiian"', add
label define race_lbl 0230 `"Asian-Hawaiian"', add
label define race_lbl 0300 `"White-Black-American Indian"', add
label define race_lbl 0301 `"White-Black-Asian"', add
label define race_lbl 0302 `"White-Black-Hawaiian"', add
label define race_lbl 0310 `"White-American Indian-Asian"', add
label define race_lbl 0311 `"White-American Indian-Hawaiian"', add
label define race_lbl 0320 `"White-Asian-Hawaiian"', add
label define race_lbl 0330 `"Black-American Indian-Asian"', add
label define race_lbl 0331 `"Black-American Indian-Hawaiian"', add
label define race_lbl 0340 `"Black-Asian-Hawaiian"', add
label define race_lbl 0350 `"American Indian-Asian-Hawaiian"', add
label define race_lbl 0398 `"Other 3 race combinations"', add
label define race_lbl 0399 `"2 or 3 races, unspecified"', add
label define race_lbl 0400 `"White-Black-American Indian-Asian"', add
label define race_lbl 0401 `"White-Black-American Indian-Hawaiian"', add
label define race_lbl 0402 `"White-Black-Asian-Hawaiian"', add
label define race_lbl 0403 `"Black-American Indian-Asian-Hawaiian"', add
label define race_lbl 0404 `"White-American Indian-Asian-Hawaiian"', add
label define race_lbl 0500 `"White-Black-American Indian-Asian-Hawaiian"', add
label define race_lbl 0599 `"4 or 5 races, unspecified"', add
label define race_lbl 9999 `"NIU (Not in universe)"', add
label values race race_lbl

label define hispan_lbl 0100 `"Not Hispanic"'
label define hispan_lbl 0210 `"Mexican"', add
label define hispan_lbl 0211 `"Mexican American"', add
label define hispan_lbl 0212 `"Chicano"', add
label define hispan_lbl 0213 `"Mexican (Mexicano)"', add
label define hispan_lbl 0220 `"Puerto Rican"', add
label define hispan_lbl 0230 `"Cuban"', add
label define hispan_lbl 0240 `"Central-South American"', add
label define hispan_lbl 0241 `"Dominican"', add
label define hispan_lbl 0242 `"Salvadoran"', add
label define hispan_lbl 0243 `"Other Central American"', add
label define hispan_lbl 0244 `"South American"', add
label define hispan_lbl 0250 `"Other Spanish"', add
label define hispan_lbl 9999 `"NIU (Not in universe)"', add
label values hispan hispan_lbl

label define asian_lbl 010 `"Asian Indian"'
label define asian_lbl 020 `"Chinese"', add
label define asian_lbl 030 `"Filipino"', add
label define asian_lbl 040 `"Japanese"', add
label define asian_lbl 050 `"Korean"', add
label define asian_lbl 060 `"Vietnamese"', add
label define asian_lbl 070 `"Other Asian"', add
label define asian_lbl 999 `"NIU"', add
label values asian asian_lbl

label define marst_lbl 01 `"Married - spouse present"'
label define marst_lbl 02 `"Married - spouse absent"', add
label define marst_lbl 03 `"Widowed"', add
label define marst_lbl 04 `"Divorced"', add
label define marst_lbl 05 `"Separated"', add
label define marst_lbl 06 `"Never married"', add
label define marst_lbl 99 `"NIU (Not in universe)"', add
label values marst marst_lbl

label define yrimmig_lbl 000 `"Not foreign born"'
label define yrimmig_lbl 001 `"Before 1950"', add
label define yrimmig_lbl 002 `"1950-1959"', add
label define yrimmig_lbl 003 `"1960-1964"', add
label define yrimmig_lbl 004 `"1965-1969"', add
label define yrimmig_lbl 005 `"1970-1974"', add
label define yrimmig_lbl 006 `"1975-1979"', add
label define yrimmig_lbl 007 `"1980-1981"', add
label define yrimmig_lbl 008 `"1982-1983"', add
label define yrimmig_lbl 009 `"1984-1985"', add
label define yrimmig_lbl 010 `"1986-1987"', add
label define yrimmig_lbl 011 `"1988-1989"', add
label define yrimmig_lbl 012 `"1990-1991"', add
label define yrimmig_lbl 013 `"1992-1993"', add
label define yrimmig_lbl 014 `"1994-1995"', add
label define yrimmig_lbl 015 `"1996-1997"', add
label define yrimmig_lbl 016 `"1998-1999"', add
label define yrimmig_lbl 017 `"2000-2001"', add
label define yrimmig_lbl 018 `"2002-2003"', add
label define yrimmig_lbl 019 `"2002-2004"', add
label define yrimmig_lbl 020 `"2002-2005"', add
label define yrimmig_lbl 021 `"2004-2005"', add
label define yrimmig_lbl 022 `"2004-2006"', add
label define yrimmig_lbl 023 `"2004-2007"', add
label define yrimmig_lbl 024 `"2006-2007"', add
label define yrimmig_lbl 025 `"2006-2008"', add
label define yrimmig_lbl 026 `"2006-2009"', add
label define yrimmig_lbl 027 `"2008-2009"', add
label define yrimmig_lbl 028 `"2008-2010"', add
label define yrimmig_lbl 029 `"2008-2011"', add
label define yrimmig_lbl 030 `"2010-2011"', add
label define yrimmig_lbl 031 `"2010-2012"', add
label define yrimmig_lbl 032 `"2010-2013"', add
label define yrimmig_lbl 033 `"2012-2013"', add
label define yrimmig_lbl 034 `"2012-2014"', add
label define yrimmig_lbl 035 `"2012-2015"', add
label define yrimmig_lbl 036 `"2014-2015"', add
label define yrimmig_lbl 037 `"2014-2016"', add
label define yrimmig_lbl 038 `"2014-2017"', add
label define yrimmig_lbl 039 `"2016-2017"', add
label define yrimmig_lbl 040 `"2016-2018"', add
label define yrimmig_lbl 041 `"2016-2019"', add
label define yrimmig_lbl 042 `"2018-2019"', add
label define yrimmig_lbl 043 `"2018-2020"', add
label define yrimmig_lbl 044 `"2018-2021"', add
label define yrimmig_lbl 045 `"2020-2021"', add
label define yrimmig_lbl 998 `"Blank"', add
label define yrimmig_lbl 999 `"NIU (Not in universe)"', add
label values yrimmig yrimmig_lbl

label define citizen_lbl 001 `"Native, born in United States"'
label define citizen_lbl 002 `"Native, born in Puerto Rico or U.S. Outlying Area"', add
label define citizen_lbl 003 `"Native, born abroad of American parent or parents"', add
label define citizen_lbl 004 `"Foreign born, U.S. citizen by naturalization"', add
label define citizen_lbl 005 `"Foreign born, not a U.S. citizen"', add
label define citizen_lbl 999 `"NIU (Not in universe)"', add
label values citizen citizen_lbl

label define bpl_lbl 009900 `"U.S., n.s."'
label define bpl_lbl 010000 `"American Samoa"', add
label define bpl_lbl 010500 `"Guam"', add
label define bpl_lbl 010750 `"Nothern Marianas"', add
label define bpl_lbl 011000 `"Puerto Rico"', add
label define bpl_lbl 011500 `"U.S. Virgin Islands"', add
label define bpl_lbl 012090 `"U.S. outlying areas, n.s."', add
label define bpl_lbl 015000 `"Canada"', add
label define bpl_lbl 016010 `"Bermuda"', add
label define bpl_lbl 019900 `"North America, n.s."', add
label define bpl_lbl 020000 `"Mexico"', add
label define bpl_lbl 021010 `"Belize/British Honduras"', add
label define bpl_lbl 021020 `"Costa Rica"', add
label define bpl_lbl 021030 `"El Salvador"', add
label define bpl_lbl 021040 `"Guatemala"', add
label define bpl_lbl 021050 `"Honduras"', add
label define bpl_lbl 021060 `"Nicaragua"', add
label define bpl_lbl 021070 `"Panama"', add
label define bpl_lbl 021090 `"Central America, n.s."', add
label define bpl_lbl 025000 `"Cuba"', add
label define bpl_lbl 026000 `"West Indies"', add
label define bpl_lbl 026010 `"Dominican Republic"', add
label define bpl_lbl 026020 `"Haiti"', add
label define bpl_lbl 026030 `"Jamaica"', add
label define bpl_lbl 026043 `"Bahamas"', add
label define bpl_lbl 026044 `"Barbados"', add
label define bpl_lbl 026054 `"Dominica"', add
label define bpl_lbl 026055 `"Grenada"', add
label define bpl_lbl 026060 `"Trinidad and Tobago"', add
label define bpl_lbl 026065 `"Antigua and Barbuda"', add
label define bpl_lbl 026070 `"St. Kitts--Nevis"', add
label define bpl_lbl 026075 `"St. Lucia"', add
label define bpl_lbl 026080 `"St. Vincent and the Grenadi"', add
label define bpl_lbl 026091 `"Caribbean, n.s."', add
label define bpl_lbl 030005 `"Argentina"', add
label define bpl_lbl 030010 `"Bolivia"', add
label define bpl_lbl 030015 `"Brazil"', add
label define bpl_lbl 030020 `"Chile"', add
label define bpl_lbl 030025 `"Colombia"', add
label define bpl_lbl 030030 `"Ecuador"', add
label define bpl_lbl 030040 `"Guyana/British Guiana"', add
label define bpl_lbl 030050 `"Peru"', add
label define bpl_lbl 030060 `"Uruguay"', add
label define bpl_lbl 030065 `"Venezuala"', add
label define bpl_lbl 030070 `"Paraguay"', add
label define bpl_lbl 030090 `"South America, n.s."', add
label define bpl_lbl 031000 `"Americas, n.s."', add
label define bpl_lbl 040000 `"Denmark"', add
label define bpl_lbl 040100 `"Finland"', add
label define bpl_lbl 040200 `"Iceland"', add
label define bpl_lbl 040400 `"Norway"', add
label define bpl_lbl 040500 `"Sweden"', add
label define bpl_lbl 041000 `"England"', add
label define bpl_lbl 041100 `"Scotland"', add
label define bpl_lbl 041200 `"Wales"', add
label define bpl_lbl 041300 `"United Kingdom, n.s."', add
label define bpl_lbl 041400 `"Ireland"', add
label define bpl_lbl 041410 `"Northern Ireland"', add
label define bpl_lbl 042000 `"Belgium"', add
label define bpl_lbl 042100 `"France"', add
label define bpl_lbl 042500 `"Netherlands"', add
label define bpl_lbl 042600 `"Switzerland"', add
label define bpl_lbl 043300 `"Greece"', add
label define bpl_lbl 043400 `"Italy"', add
label define bpl_lbl 043600 `"Portugal"', add
label define bpl_lbl 043610 `"Azores"', add
label define bpl_lbl 043800 `"Spain"', add
label define bpl_lbl 045000 `"Austria"', add
label define bpl_lbl 045200 `"Czechoslavakia"', add
label define bpl_lbl 045212 `"Slovakia"', add
label define bpl_lbl 045213 `"Czech Republic"', add
label define bpl_lbl 045300 `"Germany"', add
label define bpl_lbl 045400 `"Hungary"', add
label define bpl_lbl 045500 `"Poland"', add
label define bpl_lbl 045600 `"Romania"', add
label define bpl_lbl 045650 `"Bulgaria"', add
label define bpl_lbl 045675 `"Albania"', add
label define bpl_lbl 045700 `"Yugoslavia"', add
label define bpl_lbl 045720 `"Bosnia and Herzegovina"', add
label define bpl_lbl 045730 `"Croatia"', add
label define bpl_lbl 045740 `"Macedonia"', add
label define bpl_lbl 045750 `"Serbia"', add
label define bpl_lbl 045760 `"Kosovo"', add
label define bpl_lbl 045770 `"Montenegro"', add
label define bpl_lbl 046100 `"Estonia"', add
label define bpl_lbl 046200 `"Latvia"', add
label define bpl_lbl 046300 `"Lithuania"', add
label define bpl_lbl 046500 `"Other USSR/Russia"', add
label define bpl_lbl 046530 `"Ukraine"', add
label define bpl_lbl 046535 `"Belarus"', add
label define bpl_lbl 046540 `"Moldova"', add
label define bpl_lbl 046590 `"USSR, n.s."', add
label define bpl_lbl 049900 `"Europe, n.s."', add
label define bpl_lbl 050000 `"China"', add
label define bpl_lbl 050010 `"Hong Kong"', add
label define bpl_lbl 050040 `"Taiwan"', add
label define bpl_lbl 050100 `"Japan"', add
label define bpl_lbl 050200 `"Korea"', add
label define bpl_lbl 050220 `"South Korea"', add
label define bpl_lbl 050300 `"Mongolia"', add
label define bpl_lbl 051100 `"Cambodia"', add
label define bpl_lbl 051200 `"Indonesia"', add
label define bpl_lbl 051300 `"Laos"', add
label define bpl_lbl 051400 `"Malaysia"', add
label define bpl_lbl 051500 `"Philippines"', add
label define bpl_lbl 051600 `"Singapore"', add
label define bpl_lbl 051700 `"Thailand"', add
label define bpl_lbl 051800 `"Vietnam"', add
label define bpl_lbl 052000 `"Afghanistan"', add
label define bpl_lbl 052100 `"India"', add
label define bpl_lbl 052110 `"Bangladesh"', add
label define bpl_lbl 052120 `"Bhutan"', add
label define bpl_lbl 052130 `"Burma (Myanmar)"', add
label define bpl_lbl 052140 `"Pakistan"', add
label define bpl_lbl 052150 `"Sri Lanka"', add
label define bpl_lbl 052200 `"Nepal"', add
label define bpl_lbl 055100 `"Armenia"', add
label define bpl_lbl 055200 `"Azerbaijan"', add
label define bpl_lbl 055300 `"Georgia"', add
label define bpl_lbl 055400 `"Uzbekistan"', add
label define bpl_lbl 055500 `"Kazakhstan"', add
label define bpl_lbl 053000 `"Iran"', add
label define bpl_lbl 053200 `"Iraq"', add
label define bpl_lbl 053400 `"Isreal/Palestine"', add
label define bpl_lbl 053420 `"Palestine"', add
label define bpl_lbl 053500 `"Jordan"', add
label define bpl_lbl 053700 `"Lebanon"', add
label define bpl_lbl 054000 `"Saudi Arabia"', add
label define bpl_lbl 054100 `"Syria"', add
label define bpl_lbl 054200 `"Turkey"', add
label define bpl_lbl 054300 `"Cyprus"', add
label define bpl_lbl 054350 `"Kuwait"', add
label define bpl_lbl 054400 `"Yemen"', add
label define bpl_lbl 054500 `"United Arab Emirates"', add
label define bpl_lbl 054700 `"Middle East, n.s."', add
label define bpl_lbl 059900 `"Asia, n.e.c. or n.s."', add
label define bpl_lbl 060010 `"Northern Africa"', add
label define bpl_lbl 060012 `"Egypt/United Arab Rep."', add
label define bpl_lbl 060014 `"Morocco"', add
label define bpl_lbl 060016 `"Algeria"', add
label define bpl_lbl 060018 `"Sudan"', add
label define bpl_lbl 060019 `"Libya"', add
label define bpl_lbl 060023 `"Ghana"', add
label define bpl_lbl 060031 `"Nigeria"', add
label define bpl_lbl 060032 `"Cameroon"', add
label define bpl_lbl 060033 `"Cape Verde"', add
label define bpl_lbl 060034 `"Liberia"', add
label define bpl_lbl 060035 `"Senegal"', add
label define bpl_lbl 060036 `"Sierra Leone"', add
label define bpl_lbl 060037 `"Guinea"', add
label define bpl_lbl 060038 `"Ivory Coast"', add
label define bpl_lbl 060039 `"Togo"', add
label define bpl_lbl 060040 `"Eritrea"', add
label define bpl_lbl 060044 `"Ethiopia"', add
label define bpl_lbl 060045 `"Kenya"', add
label define bpl_lbl 060050 `"Somalia"', add
label define bpl_lbl 060060 `"Tanzania"', add
label define bpl_lbl 060065 `"Uganda"', add
label define bpl_lbl 060070 `"Zimbabwe"', add
label define bpl_lbl 060094 `"South Africa (Union of)"', add
label define bpl_lbl 060095 `"Zaire"', add
label define bpl_lbl 060096 `"Congo"', add
label define bpl_lbl 060097 `"Zambia"', add
label define bpl_lbl 060099 `"Africa, n.s."', add
label define bpl_lbl 070010 `"Australia"', add
label define bpl_lbl 070020 `"New Zealand"', add
label define bpl_lbl 071000 `"Pacific Islands"', add
label define bpl_lbl 071021 `"Fiji"', add
label define bpl_lbl 071022 `"Tonga"', add
label define bpl_lbl 071023 `"Samoa"', add
label define bpl_lbl 071024 `"Marshall Islands"', add
label define bpl_lbl 072000 `"Micronesia"', add
label define bpl_lbl 071090 `"Oceania, n.s."', add
label define bpl_lbl 096000 `"Other, n.e.c. and unknown"', add
label define bpl_lbl 999999 `"NIU (Not in universe)"', add
label values bpl bpl_lbl

label define mbpl_lbl 009900 `"U.S., n.s."'
label define mbpl_lbl 010000 `"American Samoa"', add
label define mbpl_lbl 010500 `"Guam"', add
label define mbpl_lbl 010750 `"Northern Marianas Islands"', add
label define mbpl_lbl 011000 `"Puerto Rico"', add
label define mbpl_lbl 011500 `"U.S. Virgin Islands"', add
label define mbpl_lbl 012090 `"U.S. outlying areas, n.s."', add
label define mbpl_lbl 015000 `"Canada"', add
label define mbpl_lbl 016010 `"Bermuda"', add
label define mbpl_lbl 019900 `"North America, n.s."', add
label define mbpl_lbl 020000 `"Mexico"', add
label define mbpl_lbl 021010 `"Belize/British Honduras"', add
label define mbpl_lbl 021020 `"Costa Rica"', add
label define mbpl_lbl 021030 `"El Salvador"', add
label define mbpl_lbl 021040 `"Guatemala"', add
label define mbpl_lbl 021050 `"Honduras"', add
label define mbpl_lbl 021060 `"Nicaragua"', add
label define mbpl_lbl 021070 `"Panama"', add
label define mbpl_lbl 021090 `"Central America, n.s."', add
label define mbpl_lbl 025000 `"Cuba"', add
label define mbpl_lbl 026000 `"West Indies"', add
label define mbpl_lbl 026010 `"Dominican Republic"', add
label define mbpl_lbl 026020 `"Haiti"', add
label define mbpl_lbl 026030 `"Jamaica"', add
label define mbpl_lbl 026043 `"Bahamas"', add
label define mbpl_lbl 026044 `"Barbados"', add
label define mbpl_lbl 026054 `"Dominica"', add
label define mbpl_lbl 026055 `"Grenada"', add
label define mbpl_lbl 026060 `"Trinidad and Tobago"', add
label define mbpl_lbl 026065 `"Antigua and Barbuda"', add
label define mbpl_lbl 026070 `"St. Kitts--Nevis"', add
label define mbpl_lbl 026075 `"St. Lucia"', add
label define mbpl_lbl 026080 `"St. Vincent and the Grenadi"', add
label define mbpl_lbl 026091 `"Caribbean, n.s."', add
label define mbpl_lbl 030005 `"Argentina"', add
label define mbpl_lbl 030010 `"Bolivia"', add
label define mbpl_lbl 030015 `"Brazil"', add
label define mbpl_lbl 030020 `"Chile"', add
label define mbpl_lbl 030025 `"Colombia"', add
label define mbpl_lbl 030030 `"Ecuador"', add
label define mbpl_lbl 030040 `"Guyana/British Guiana"', add
label define mbpl_lbl 030050 `"Peru"', add
label define mbpl_lbl 030060 `"Uruguay"', add
label define mbpl_lbl 030065 `"Venezuala"', add
label define mbpl_lbl 030070 `"Paraguay"', add
label define mbpl_lbl 030090 `"South America, n.s."', add
label define mbpl_lbl 031000 `"Americas, n.s."', add
label define mbpl_lbl 040000 `"Denmark"', add
label define mbpl_lbl 040100 `"Finland"', add
label define mbpl_lbl 040200 `"Iceland"', add
label define mbpl_lbl 040400 `"Norway"', add
label define mbpl_lbl 040500 `"Sweden"', add
label define mbpl_lbl 041000 `"England"', add
label define mbpl_lbl 041100 `"Scotland"', add
label define mbpl_lbl 041200 `"Wales"', add
label define mbpl_lbl 041300 `"United Kingdom, n.s."', add
label define mbpl_lbl 041400 `"Ireland"', add
label define mbpl_lbl 041410 `"Northern Ireland"', add
label define mbpl_lbl 042000 `"Belgium"', add
label define mbpl_lbl 042100 `"France"', add
label define mbpl_lbl 042500 `"Netherlands"', add
label define mbpl_lbl 042600 `"Switzerland"', add
label define mbpl_lbl 043300 `"Greece"', add
label define mbpl_lbl 043400 `"Italy"', add
label define mbpl_lbl 043600 `"Portugal"', add
label define mbpl_lbl 043610 `"Azores"', add
label define mbpl_lbl 043800 `"Spain"', add
label define mbpl_lbl 045000 `"Austria"', add
label define mbpl_lbl 045200 `"Czechoslavakia"', add
label define mbpl_lbl 045212 `"Slovakia"', add
label define mbpl_lbl 045213 `"Czech Republic"', add
label define mbpl_lbl 045300 `"Germany"', add
label define mbpl_lbl 045400 `"Hungary"', add
label define mbpl_lbl 045500 `"Poland"', add
label define mbpl_lbl 045600 `"Romania"', add
label define mbpl_lbl 045650 `"Bulgaria"', add
label define mbpl_lbl 045675 `"Albania"', add
label define mbpl_lbl 045700 `"Yugoslavia"', add
label define mbpl_lbl 045720 `"Bosnia and Herzegovina"', add
label define mbpl_lbl 045730 `"Croatia"', add
label define mbpl_lbl 045740 `"Macedonia"', add
label define mbpl_lbl 045750 `"Serbia"', add
label define mbpl_lbl 045760 `"Kosovo"', add
label define mbpl_lbl 045770 `"Montenegro"', add
label define mbpl_lbl 046100 `"Estonia"', add
label define mbpl_lbl 046200 `"Latvia"', add
label define mbpl_lbl 046300 `"Lithuania"', add
label define mbpl_lbl 046500 `"Other USSR/"Russia""', add
label define mbpl_lbl 046530 `"Ukraine"', add
label define mbpl_lbl 046535 `"Belarus"', add
label define mbpl_lbl 046540 `"Moldova"', add
label define mbpl_lbl 046590 `"USSR, n.s."', add
label define mbpl_lbl 049900 `"Europe, n.s."', add
label define mbpl_lbl 050000 `"China"', add
label define mbpl_lbl 050010 `"Hong Kong"', add
label define mbpl_lbl 050040 `"Taiwan"', add
label define mbpl_lbl 050100 `"Japan"', add
label define mbpl_lbl 050200 `"Korea"', add
label define mbpl_lbl 050220 `"South Korea"', add
label define mbpl_lbl 050300 `"Mongolia"', add
label define mbpl_lbl 051100 `"Cambodia"', add
label define mbpl_lbl 051200 `"Indonesia"', add
label define mbpl_lbl 051300 `"Laos"', add
label define mbpl_lbl 051400 `"Malaysia"', add
label define mbpl_lbl 051500 `"Philippines"', add
label define mbpl_lbl 051600 `"Singapore"', add
label define mbpl_lbl 051700 `"Thailand"', add
label define mbpl_lbl 051800 `"Vietnam"', add
label define mbpl_lbl 052000 `"Afghanistan"', add
label define mbpl_lbl 052100 `"India"', add
label define mbpl_lbl 052110 `"Bangladesh"', add
label define mbpl_lbl 052120 `"Bhutan"', add
label define mbpl_lbl 052130 `"Burma (Myanmar)"', add
label define mbpl_lbl 052140 `"Pakistan"', add
label define mbpl_lbl 052150 `"Sri Lanka"', add
label define mbpl_lbl 052200 `"Nepal"', add
label define mbpl_lbl 055100 `"Armenia"', add
label define mbpl_lbl 055200 `"Azerbaijan"', add
label define mbpl_lbl 055300 `"Georgia"', add
label define mbpl_lbl 055400 `"Uzbekistan"', add
label define mbpl_lbl 055500 `"Kazakhstan"', add
label define mbpl_lbl 053000 `"Iran"', add
label define mbpl_lbl 053200 `"Iraq"', add
label define mbpl_lbl 053400 `"Isreal/Palestine"', add
label define mbpl_lbl 053420 `"Palestine"', add
label define mbpl_lbl 053500 `"Jordan"', add
label define mbpl_lbl 053700 `"Lebanon"', add
label define mbpl_lbl 054000 `"Saudi Arabia"', add
label define mbpl_lbl 054100 `"Syria"', add
label define mbpl_lbl 054200 `"Turkey"', add
label define mbpl_lbl 054300 `"Cyprus"', add
label define mbpl_lbl 054350 `"Kuwait"', add
label define mbpl_lbl 054400 `"Yemen"', add
label define mbpl_lbl 054500 `"United Arab Emirates"', add
label define mbpl_lbl 054700 `"Middle East, n.s."', add
label define mbpl_lbl 059900 `"Asia, n.e.c, /n.s."', add
label define mbpl_lbl 060010 `"Northern Africa"', add
label define mbpl_lbl 060012 `"Egypt/United Arab Rep."', add
label define mbpl_lbl 060014 `"Morocco"', add
label define mbpl_lbl 060016 `"Algeria"', add
label define mbpl_lbl 060018 `"Sudan"', add
label define mbpl_lbl 060019 `"Libya"', add
label define mbpl_lbl 060023 `"Ghana"', add
label define mbpl_lbl 060031 `"Nigeria"', add
label define mbpl_lbl 060032 `"Cameroon"', add
label define mbpl_lbl 060033 `"Cape Verde"', add
label define mbpl_lbl 060034 `"Liberia"', add
label define mbpl_lbl 060035 `"Senegal"', add
label define mbpl_lbl 060036 `"Sierra Leone"', add
label define mbpl_lbl 060037 `"Guinea"', add
label define mbpl_lbl 060038 `"Ivory Coast"', add
label define mbpl_lbl 060039 `"Togo"', add
label define mbpl_lbl 060040 `"Eritrea"', add
label define mbpl_lbl 060044 `"Ethiopia"', add
label define mbpl_lbl 060045 `"Kenya"', add
label define mbpl_lbl 060050 `"Somalia"', add
label define mbpl_lbl 060060 `"Tanzania"', add
label define mbpl_lbl 060065 `"Uganda"', add
label define mbpl_lbl 060070 `"Zimbabwe"', add
label define mbpl_lbl 060094 `"South Africa (Union of)"', add
label define mbpl_lbl 060095 `"Zaire"', add
label define mbpl_lbl 060096 `"Congo"', add
label define mbpl_lbl 060097 `"Zambia"', add
label define mbpl_lbl 060099 `"Africa, n.s."', add
label define mbpl_lbl 070010 `"Australia"', add
label define mbpl_lbl 070020 `"New Zealand"', add
label define mbpl_lbl 071000 `"Pacific Islands"', add
label define mbpl_lbl 071021 `"Fiji"', add
label define mbpl_lbl 071022 `"Tonga"', add
label define mbpl_lbl 071023 `"Samoa"', add
label define mbpl_lbl 071024 `"Marshall Islands"', add
label define mbpl_lbl 072000 `"Micronesia"', add
label define mbpl_lbl 071090 `"Oceania, n.s."', add
label define mbpl_lbl 096000 `"Other, n.e.c. and unknown"', add
label define mbpl_lbl 999999 `"NIU (Not in universe)"', add
label values mbpl mbpl_lbl

label define fbpl_lbl 009900 `"U.S., n.s."'
label define fbpl_lbl 010000 `"American Samoa"', add
label define fbpl_lbl 010500 `"Guam"', add
label define fbpl_lbl 010750 `"Northern Marianas"', add
label define fbpl_lbl 011000 `"Puerto Rico"', add
label define fbpl_lbl 011500 `"U.S. Virgin Islands"', add
label define fbpl_lbl 012090 `"U.S. outlying areas, n.s."', add
label define fbpl_lbl 015000 `"Canada"', add
label define fbpl_lbl 016010 `"Bermuda"', add
label define fbpl_lbl 019900 `"North America, n.s."', add
label define fbpl_lbl 020000 `"Mexico"', add
label define fbpl_lbl 021010 `"Belize/British Honduras"', add
label define fbpl_lbl 021020 `"Costa Rica"', add
label define fbpl_lbl 021030 `"El Salvador"', add
label define fbpl_lbl 021040 `"Guatemala"', add
label define fbpl_lbl 021050 `"Honduras"', add
label define fbpl_lbl 021060 `"Nicaragua"', add
label define fbpl_lbl 021070 `"Panama"', add
label define fbpl_lbl 021090 `"Central America, n.s."', add
label define fbpl_lbl 025000 `"Cuba"', add
label define fbpl_lbl 026000 `"West Indies"', add
label define fbpl_lbl 026010 `"Dominican Republic"', add
label define fbpl_lbl 026020 `"Haiti"', add
label define fbpl_lbl 026030 `"Jamaica"', add
label define fbpl_lbl 026043 `"Bahamas"', add
label define fbpl_lbl 026044 `"Barbados"', add
label define fbpl_lbl 026054 `"Dominica"', add
label define fbpl_lbl 026055 `"Grenada"', add
label define fbpl_lbl 026060 `"Trinidad and Tobago"', add
label define fbpl_lbl 026065 `"Antigua and Barbuda"', add
label define fbpl_lbl 026070 `"St. Kitts--Nevis"', add
label define fbpl_lbl 026075 `"St. Lucia"', add
label define fbpl_lbl 026080 `"St. Vincent and the Grenadi"', add
label define fbpl_lbl 026091 `"Caribbean, n.s."', add
label define fbpl_lbl 030005 `"Argentina"', add
label define fbpl_lbl 030010 `"Bolivia"', add
label define fbpl_lbl 030015 `"Brazil"', add
label define fbpl_lbl 030020 `"Chile"', add
label define fbpl_lbl 030025 `"Colombia"', add
label define fbpl_lbl 030030 `"Ecuador"', add
label define fbpl_lbl 030040 `"Guyana/British Guiana"', add
label define fbpl_lbl 030050 `"Peru"', add
label define fbpl_lbl 030060 `"Uruguay"', add
label define fbpl_lbl 030065 `"Venezuala"', add
label define fbpl_lbl 030070 `"Paraguay"', add
label define fbpl_lbl 030090 `"South America, n.s."', add
label define fbpl_lbl 031000 `"Americas, n.s."', add
label define fbpl_lbl 040000 `"Denmark"', add
label define fbpl_lbl 040100 `"Finland"', add
label define fbpl_lbl 040200 `"Iceland"', add
label define fbpl_lbl 040400 `"Norway"', add
label define fbpl_lbl 040500 `"Sweden"', add
label define fbpl_lbl 041000 `"England"', add
label define fbpl_lbl 041100 `"Scotland"', add
label define fbpl_lbl 041200 `"Wales"', add
label define fbpl_lbl 041300 `"United Kingdom, n.s."', add
label define fbpl_lbl 041400 `"Ireland"', add
label define fbpl_lbl 041410 `"Northern Ireland"', add
label define fbpl_lbl 042000 `"Belgium"', add
label define fbpl_lbl 042100 `"France"', add
label define fbpl_lbl 042500 `"Netherlands"', add
label define fbpl_lbl 042600 `"Switzerland"', add
label define fbpl_lbl 043300 `"Greece"', add
label define fbpl_lbl 043400 `"Italy"', add
label define fbpl_lbl 043600 `"Portugal"', add
label define fbpl_lbl 043610 `"Azores"', add
label define fbpl_lbl 043800 `"Spain"', add
label define fbpl_lbl 045000 `"Austria"', add
label define fbpl_lbl 045200 `"Czechoslavakia"', add
label define fbpl_lbl 045212 `"Slovakia"', add
label define fbpl_lbl 045213 `"Czech Republic"', add
label define fbpl_lbl 045300 `"Germany"', add
label define fbpl_lbl 045400 `"Hungary"', add
label define fbpl_lbl 045500 `"Poland"', add
label define fbpl_lbl 045600 `"Romania"', add
label define fbpl_lbl 045650 `"Bulgaria"', add
label define fbpl_lbl 045675 `"Albania"', add
label define fbpl_lbl 045700 `"Yugoslavia"', add
label define fbpl_lbl 045720 `"Bosnia and Herzegovina"', add
label define fbpl_lbl 045730 `"Croatia"', add
label define fbpl_lbl 045740 `"Macedonia"', add
label define fbpl_lbl 045750 `"Serbia"', add
label define fbpl_lbl 045760 `"Kosovo"', add
label define fbpl_lbl 045770 `"Montenegro"', add
label define fbpl_lbl 046100 `"Estonia"', add
label define fbpl_lbl 046200 `"Latvia"', add
label define fbpl_lbl 046300 `"Lithuania"', add
label define fbpl_lbl 046500 `"Other USSR/Russia"', add
label define fbpl_lbl 046530 `"Ukraine"', add
label define fbpl_lbl 046535 `"Belarus"', add
label define fbpl_lbl 046540 `"Moldova"', add
label define fbpl_lbl 046590 `"USSR, n.s."', add
label define fbpl_lbl 049900 `"Europe, n.s."', add
label define fbpl_lbl 050000 `"China"', add
label define fbpl_lbl 050010 `"Hong Kong"', add
label define fbpl_lbl 050040 `"Taiwan"', add
label define fbpl_lbl 050100 `"Japan"', add
label define fbpl_lbl 050200 `"Korea"', add
label define fbpl_lbl 050220 `"South Korea"', add
label define fbpl_lbl 050300 `"Mongolia"', add
label define fbpl_lbl 051100 `"Cambodia"', add
label define fbpl_lbl 051200 `"Indonesia"', add
label define fbpl_lbl 051300 `"Laos"', add
label define fbpl_lbl 051400 `"Malaysia"', add
label define fbpl_lbl 051500 `"Philippines"', add
label define fbpl_lbl 051600 `"Singapore"', add
label define fbpl_lbl 051700 `"Thailand"', add
label define fbpl_lbl 051800 `"Vietnam"', add
label define fbpl_lbl 052000 `"Afghanistan"', add
label define fbpl_lbl 052100 `"India"', add
label define fbpl_lbl 052110 `"Bangladesh"', add
label define fbpl_lbl 052120 `"Bhutan"', add
label define fbpl_lbl 052130 `"Burma (Myanmar)"', add
label define fbpl_lbl 052140 `"Pakistan"', add
label define fbpl_lbl 052150 `"Sri Lanka"', add
label define fbpl_lbl 052200 `"Nepal"', add
label define fbpl_lbl 055100 `"Armenia"', add
label define fbpl_lbl 055200 `"Azerbaijan"', add
label define fbpl_lbl 055300 `"Georgia"', add
label define fbpl_lbl 055400 `"Uzbekistan"', add
label define fbpl_lbl 055500 `"Kazakhstan"', add
label define fbpl_lbl 053000 `"Iran"', add
label define fbpl_lbl 053200 `"Iraq"', add
label define fbpl_lbl 053400 `"Isreal/Palestine"', add
label define fbpl_lbl 053420 `"Palestine"', add
label define fbpl_lbl 053500 `"Jordan"', add
label define fbpl_lbl 053700 `"Lebanon"', add
label define fbpl_lbl 054000 `"Saudi Arabia"', add
label define fbpl_lbl 054100 `"Syria"', add
label define fbpl_lbl 054200 `"Turkey"', add
label define fbpl_lbl 054300 `"Cyprus"', add
label define fbpl_lbl 054350 `"Kuwait"', add
label define fbpl_lbl 054400 `"Yemen"', add
label define fbpl_lbl 054500 `"United Arab Emirates"', add
label define fbpl_lbl 054700 `"Middle East, n.s."', add
label define fbpl_lbl 059900 `"Asia, n.e.c, /n.s."', add
label define fbpl_lbl 060010 `"Northern Africa"', add
label define fbpl_lbl 060012 `"Egypt/United Arab Rep."', add
label define fbpl_lbl 060014 `"Morocco"', add
label define fbpl_lbl 060016 `"Algeria"', add
label define fbpl_lbl 060018 `"Sudan"', add
label define fbpl_lbl 060019 `"Libya"', add
label define fbpl_lbl 060023 `"Ghana"', add
label define fbpl_lbl 060031 `"Nigeria"', add
label define fbpl_lbl 060032 `"Cameroon"', add
label define fbpl_lbl 060033 `"Cape Verde"', add
label define fbpl_lbl 060034 `"Liberia"', add
label define fbpl_lbl 060035 `"Senegal"', add
label define fbpl_lbl 060036 `"Sierra Leone"', add
label define fbpl_lbl 060037 `"Guinea"', add
label define fbpl_lbl 060038 `"Ivory Coast"', add
label define fbpl_lbl 060039 `"Togo"', add
label define fbpl_lbl 060040 `"Eritrea"', add
label define fbpl_lbl 060044 `"Ethiopia"', add
label define fbpl_lbl 060045 `"Kenya"', add
label define fbpl_lbl 060050 `"Somalia"', add
label define fbpl_lbl 060060 `"Tanzania"', add
label define fbpl_lbl 060065 `"Uganda"', add
label define fbpl_lbl 060070 `"Zimbabwe"', add
label define fbpl_lbl 060094 `"South Africa (Union of)"', add
label define fbpl_lbl 060095 `"Zaire"', add
label define fbpl_lbl 060096 `"Congo"', add
label define fbpl_lbl 060097 `"Zambia"', add
label define fbpl_lbl 060099 `"Africa, n.s."', add
label define fbpl_lbl 070010 `"Australia"', add
label define fbpl_lbl 070020 `"New Zealand"', add
label define fbpl_lbl 071000 `"Pacific Islands"', add
label define fbpl_lbl 071021 `"Fiji"', add
label define fbpl_lbl 071022 `"Tonga"', add
label define fbpl_lbl 071023 `"Samoa"', add
label define fbpl_lbl 071024 `"Marshall Islands"', add
label define fbpl_lbl 072000 `"Micronesia"', add
label define fbpl_lbl 071090 `"Oceania, n.s."', add
label define fbpl_lbl 096000 `"Other, n.e.c. and unknown"', add
label define fbpl_lbl 999999 `"NIU (Not in universe)"', add
label values fbpl fbpl_lbl

label define relate_lbl 010 `"Self"'
label define relate_lbl 020 `"Spouse"', add
label define relate_lbl 021 `"Unmarried Partner"', add
label define relate_lbl 022 `"Own household child"', add
label define relate_lbl 023 `"Grandchild"', add
label define relate_lbl 024 `"Parent"', add
label define relate_lbl 025 `"Brother/Sister"', add
label define relate_lbl 026 `"Other relative"', add
label define relate_lbl 027 `"Foster child"', add
label define relate_lbl 028 `"Housemate/roommate"', add
label define relate_lbl 029 `"Roomer/boarder"', add
label define relate_lbl 030 `"Other nonrelative"', add
label define relate_lbl 040 `"Own non-household child lt 18"', add
label define relate_lbl 996 `"Refused"', add
label define relate_lbl 997 `"Don't know"', add
label define relate_lbl 999 `"NIU (Not in universe)"', add
label values relate relate_lbl

label define age_cps8_lbl 000 `"0"'
label define age_cps8_lbl 001 `"1"', add
label define age_cps8_lbl 002 `"2"', add
label define age_cps8_lbl 003 `"3"', add
label define age_cps8_lbl 004 `"4"', add
label define age_cps8_lbl 005 `"5"', add
label define age_cps8_lbl 006 `"6"', add
label define age_cps8_lbl 007 `"7"', add
label define age_cps8_lbl 008 `"8"', add
label define age_cps8_lbl 009 `"9"', add
label define age_cps8_lbl 010 `"10"', add
label define age_cps8_lbl 011 `"11"', add
label define age_cps8_lbl 012 `"12"', add
label define age_cps8_lbl 013 `"13"', add
label define age_cps8_lbl 014 `"14"', add
label define age_cps8_lbl 015 `"15"', add
label define age_cps8_lbl 016 `"16"', add
label define age_cps8_lbl 017 `"17"', add
label define age_cps8_lbl 018 `"18"', add
label define age_cps8_lbl 019 `"19"', add
label define age_cps8_lbl 020 `"20"', add
label define age_cps8_lbl 021 `"21"', add
label define age_cps8_lbl 022 `"22"', add
label define age_cps8_lbl 023 `"23"', add
label define age_cps8_lbl 024 `"24"', add
label define age_cps8_lbl 025 `"25"', add
label define age_cps8_lbl 026 `"26"', add
label define age_cps8_lbl 027 `"27"', add
label define age_cps8_lbl 028 `"28"', add
label define age_cps8_lbl 029 `"29"', add
label define age_cps8_lbl 030 `"30"', add
label define age_cps8_lbl 031 `"31"', add
label define age_cps8_lbl 032 `"32"', add
label define age_cps8_lbl 033 `"33"', add
label define age_cps8_lbl 034 `"34"', add
label define age_cps8_lbl 035 `"35"', add
label define age_cps8_lbl 036 `"36"', add
label define age_cps8_lbl 037 `"37"', add
label define age_cps8_lbl 038 `"38"', add
label define age_cps8_lbl 039 `"39"', add
label define age_cps8_lbl 040 `"40"', add
label define age_cps8_lbl 041 `"41"', add
label define age_cps8_lbl 042 `"42"', add
label define age_cps8_lbl 043 `"43"', add
label define age_cps8_lbl 044 `"44"', add
label define age_cps8_lbl 045 `"45"', add
label define age_cps8_lbl 046 `"46"', add
label define age_cps8_lbl 047 `"47"', add
label define age_cps8_lbl 048 `"48"', add
label define age_cps8_lbl 049 `"49"', add
label define age_cps8_lbl 050 `"50"', add
label define age_cps8_lbl 051 `"51"', add
label define age_cps8_lbl 052 `"52"', add
label define age_cps8_lbl 053 `"53"', add
label define age_cps8_lbl 054 `"54"', add
label define age_cps8_lbl 055 `"55"', add
label define age_cps8_lbl 056 `"56"', add
label define age_cps8_lbl 057 `"57"', add
label define age_cps8_lbl 058 `"58"', add
label define age_cps8_lbl 059 `"59"', add
label define age_cps8_lbl 060 `"60"', add
label define age_cps8_lbl 061 `"61"', add
label define age_cps8_lbl 062 `"62"', add
label define age_cps8_lbl 063 `"63"', add
label define age_cps8_lbl 064 `"64"', add
label define age_cps8_lbl 065 `"65"', add
label define age_cps8_lbl 066 `"66"', add
label define age_cps8_lbl 067 `"67"', add
label define age_cps8_lbl 068 `"68"', add
label define age_cps8_lbl 069 `"69"', add
label define age_cps8_lbl 070 `"70"', add
label define age_cps8_lbl 071 `"71"', add
label define age_cps8_lbl 072 `"72"', add
label define age_cps8_lbl 073 `"73"', add
label define age_cps8_lbl 074 `"74"', add
label define age_cps8_lbl 075 `"75"', add
label define age_cps8_lbl 076 `"76"', add
label define age_cps8_lbl 077 `"77"', add
label define age_cps8_lbl 078 `"78"', add
label define age_cps8_lbl 079 `"79"', add
label define age_cps8_lbl 080 `"80"', add
label define age_cps8_lbl 085 `"85"', add
label define age_cps8_lbl 999 `"NIU (Not in universe)"', add
label values age_cps8 age_cps8_lbl

label define sex_cps8_lbl 01 `"Male"'
label define sex_cps8_lbl 02 `"Female"', add
label define sex_cps8_lbl 99 `"NIU (Not in universe)"', add
label values sex_cps8 sex_cps8_lbl

label define relate_cps8_lbl 001 `"Reference person living with relatives"'
label define relate_cps8_lbl 002 `"Reference person living without relatives"', add
label define relate_cps8_lbl 003 `"Spouse"', add
label define relate_cps8_lbl 004 `"Own child"', add
label define relate_cps8_lbl 005 `"Grandchild"', add
label define relate_cps8_lbl 006 `"Parent"', add
label define relate_cps8_lbl 007 `"Brother/Sister"', add
label define relate_cps8_lbl 008 `"Other relative of reference person"', add
label define relate_cps8_lbl 009 `"Foster child"', add
label define relate_cps8_lbl 010 `"Nonrelative of reference person living with relatives"', add
label define relate_cps8_lbl 012 `"Nonrelative of reference person living without relatives"', add
label define relate_cps8_lbl 013 `"Unmarried partner living with relatives"', add
label define relate_cps8_lbl 014 `"Unmarried partner living without relatives"', add
label define relate_cps8_lbl 015 `"Housemate/roommate living with relatives"', add
label define relate_cps8_lbl 016 `"Housemate/roommate living without relatives"', add
label define relate_cps8_lbl 017 `"Roomer/boarder living with relatives"', add
label define relate_cps8_lbl 018 `"Roomer/boarder living without relatives"', add
label define relate_cps8_lbl 999 `"NIU (Not in universe)"', add
label values relate_cps8 relate_cps8_lbl

label define popstat_lbl 01 `"Adult civilian"'
label define popstat_lbl 02 `"Armed Forces"', add
label define popstat_lbl 03 `"Child"', add
label define popstat_lbl 99 `"NIU (Not in universe)"', add
label values popstat popstat_lbl

label define genhealth_lbl 01 `"Excellent"'
label define genhealth_lbl 02 `"Very good"', add
label define genhealth_lbl 03 `"Good"', add
label define genhealth_lbl 04 `"Fair"', add
label define genhealth_lbl 05 `"Poor"', add
label define genhealth_lbl 96 `"Refused"', add
label define genhealth_lbl 97 `"Don't know"', add
label define genhealth_lbl 99 `"NIU (Not in universe)"', add
label values genhealth genhealth_lbl

label define height_lbl 056 `"56"'
label define height_lbl 057 `"57"', add
label define height_lbl 058 `"58"', add
label define height_lbl 059 `"59"', add
label define height_lbl 060 `"60"', add
label define height_lbl 061 `"61"', add
label define height_lbl 062 `"62"', add
label define height_lbl 063 `"63"', add
label define height_lbl 064 `"64"', add
label define height_lbl 065 `"65"', add
label define height_lbl 066 `"66"', add
label define height_lbl 067 `"67"', add
label define height_lbl 068 `"68"', add
label define height_lbl 069 `"69"', add
label define height_lbl 070 `"70"', add
label define height_lbl 071 `"71"', add
label define height_lbl 072 `"72"', add
label define height_lbl 073 `"73"', add
label define height_lbl 074 `"74"', add
label define height_lbl 075 `"75"', add
label define height_lbl 076 `"76"', add
label define height_lbl 077 `"77"', add
label define height_lbl 996 `"Refused"', add
label define height_lbl 997 `"Don't know"', add
label define height_lbl 999 `"NIU (Not in universe)"', add
label values height height_lbl

label define educ_lbl 010 `"Less than 1st grade"'
label define educ_lbl 011 `"1st, 2nd, 3rd, or 4th grade"', add
label define educ_lbl 012 `"5th or 6th grade"', add
label define educ_lbl 013 `"7th or 8th grade"', add
label define educ_lbl 014 `"9th grade"', add
label define educ_lbl 015 `"10th grade"', add
label define educ_lbl 016 `"11th grade"', add
label define educ_lbl 017 `"12th grade - no diploma"', add
label define educ_lbl 020 `"High school graduate - GED"', add
label define educ_lbl 021 `"High school graduate - diploma"', add
label define educ_lbl 030 `"Some college but no degree"', add
label define educ_lbl 031 `"Associate degree - occupational vocational"', add
label define educ_lbl 032 `"Associate degree - academic program"', add
label define educ_lbl 040 `"Bachelor's degree (BA, AB, BS, etc.)"', add
label define educ_lbl 041 `"Master's degree (MA, MS, MEng, MEd, MSW, etc.)"', add
label define educ_lbl 042 `"Professional school degree (MD, DDS, DVM, etc.)"', add
label define educ_lbl 043 `"Doctoral degree (PhD, EdD, etc.)"', add
label define educ_lbl 999 `"NIU (Not in universe)"', add
label values educ educ_lbl

label define educyrs_lbl 100 `"Grades 1-12"'
label define educyrs_lbl 101 `"Less than first grade"', add
label define educyrs_lbl 102 `"First through fourth grade"', add
label define educyrs_lbl 105 `"Fifth through sixth grade"', add
label define educyrs_lbl 107 `"Seventh through eighth grade"', add
label define educyrs_lbl 109 `"Ninth grade"', add
label define educyrs_lbl 110 `"Tenth grade"', add
label define educyrs_lbl 111 `"Eleventh grade"', add
label define educyrs_lbl 112 `"Twelfth grade"', add
label define educyrs_lbl 200 `"College"', add
label define educyrs_lbl 213 `"College--one year"', add
label define educyrs_lbl 214 `"College--two years"', add
label define educyrs_lbl 215 `"College--three years"', add
label define educyrs_lbl 216 `"College--four years"', add
label define educyrs_lbl 217 `"Bachelor's degree"', add
label define educyrs_lbl 300 `"Advanced degree"', add
label define educyrs_lbl 316 `"Master's degree"', add
label define educyrs_lbl 317 `"Master's degree--one year program"', add
label define educyrs_lbl 318 `"Master's degree--two year program"', add
label define educyrs_lbl 319 `"Master's degree--three+ year program"', add
label define educyrs_lbl 320 `"Professional degree"', add
label define educyrs_lbl 321 `"Doctoral degree"', add
label define educyrs_lbl 999 `"NIU (Not in universe)"', add
label values educyrs educyrs_lbl

label define schlcoll_lbl 01 `"Not enrolled"'
label define schlcoll_lbl 02 `"High school part time"', add
label define schlcoll_lbl 03 `"High school full time"', add
label define schlcoll_lbl 04 `"College/university part time"', add
label define schlcoll_lbl 05 `"College/university full time"', add
label define schlcoll_lbl 96 `"Refused"', add
label define schlcoll_lbl 99 `"NIU (Not in universe)"', add
label values schlcoll schlcoll_lbl

label define schlcoll_cps8_lbl 01 `"Not enrolled"'
label define schlcoll_cps8_lbl 02 `"High school part time"', add
label define schlcoll_cps8_lbl 03 `"High school full time"', add
label define schlcoll_cps8_lbl 04 `"College/university part time"', add
label define schlcoll_cps8_lbl 05 `"College/university full time"', add
label define schlcoll_cps8_lbl 98 `"Blank"', add
label define schlcoll_cps8_lbl 99 `"NIU (Not in universe)"', add
label values schlcoll_cps8 schlcoll_cps8_lbl

label define vetstat_lbl 01 `"Veteran"'
label define vetstat_lbl 02 `"Non-veteran"', add
label define vetstat_lbl 96 `"Refused"', add
label define vetstat_lbl 97 `"Don't know"', add
label define vetstat_lbl 99 `"NIU (Not in universe)"', add
label values vetstat vetstat_lbl

label define vetlast_lbl 001 `"No service"'
label define vetlast_lbl 002 `"November 1941 or earlier"', add
label define vetlast_lbl 003 `"World War II"', add
label define vetlast_lbl 004 `"Peacetime Period B (1/47-6/50)"', add
label define vetlast_lbl 005 `"Korean War"', add
label define vetlast_lbl 006 `"Peacetime Period A (2/55-7/64)"', add
label define vetlast_lbl 007 `"Vietnam Era"', add
label define vetlast_lbl 008 `"Other service"', add
label define vetlast_lbl 009 `"May 1975-July 1990"', add
label define vetlast_lbl 010 `"August 1990-August 2001"', add
label define vetlast_lbl 011 `"September 2001 and later"', add
label define vetlast_lbl 999 `"NIU (Not in universe)"', add
label values vetlast vetlast_lbl

label define vet1_lbl 01 `"September 2001 and later"'
label define vet1_lbl 02 `"August 1990-August 2001"', add
label define vet1_lbl 03 `"May 1975-July 1990"', add
label define vet1_lbl 04 `"Vietnam Era"', add
label define vet1_lbl 05 `"Peacetime Period A (2/55-7/64)"', add
label define vet1_lbl 06 `"Korean War"', add
label define vet1_lbl 07 `"Peacetime Period B (1/47-6/50)"', add
label define vet1_lbl 08 `"World War II"', add
label define vet1_lbl 09 `"November 1941 or earlier"', add
label define vet1_lbl 99 `"NIU (Not in universe)"', add
label values vet1 vet1_lbl

label define vet2_lbl 01 `"September 2001 and later"'
label define vet2_lbl 02 `"August 1990-August 2001"', add
label define vet2_lbl 03 `"May 1975-July 1990"', add
label define vet2_lbl 04 `"Vietnam Era"', add
label define vet2_lbl 05 `"Peacetime Period A (2/55-7/64)"', add
label define vet2_lbl 06 `"Korean War"', add
label define vet2_lbl 07 `"Peacetime Period B (1/47-6/50)"', add
label define vet2_lbl 08 `"World War II"', add
label define vet2_lbl 09 `"November 1941 or earlier"', add
label define vet2_lbl 99 `"NIU (Not in universe)"', add
label values vet2 vet2_lbl

label define vet3_lbl 01 `"September 2001 and later"'
label define vet3_lbl 02 `"August 1990-August 2001"', add
label define vet3_lbl 03 `"May 1975-July 1990"', add
label define vet3_lbl 04 `"Vietnam Era"', add
label define vet3_lbl 05 `"Peacetime Period A (2/55-7/64)"', add
label define vet3_lbl 06 `"Korean War"', add
label define vet3_lbl 07 `"Peacetime Period B (1/47-6/50)"', add
label define vet3_lbl 08 `"World War II"', add
label define vet3_lbl 09 `"November 1941 or earlier"', add
label define vet3_lbl 99 `"NIU (Not in universe)"', add
label values vet3 vet3_lbl

label define vet4_lbl 01 `"September 2001 and later"'
label define vet4_lbl 02 `"August 1990-August 2001"', add
label define vet4_lbl 03 `"May 1975-July 1990"', add
label define vet4_lbl 04 `"Vietnam Era"', add
label define vet4_lbl 05 `"Peacetime Period A (2/55-7/64)"', add
label define vet4_lbl 06 `"Korean War"', add
label define vet4_lbl 07 `"Peacetime Period B (1/47-6/50)"', add
label define vet4_lbl 08 `"World War II"', add
label define vet4_lbl 09 `"November 1941 or earlier"', add
label define vet4_lbl 99 `"NIU (Not in universe)"', add
label values vet4 vet4_lbl

label define afnow_lbl 01 `"Yes"'
label define afnow_lbl 02 `"No"', add
label define afnow_lbl 99 `"NIU (Not in universe)"', add
label values afnow afnow_lbl

label define empstat_lbl 01 `"Employed - at work"'
label define empstat_lbl 02 `"Employed - absent"', add
label define empstat_lbl 03 `"Unemployed - on layoff"', add
label define empstat_lbl 04 `"Unemployed - looking"', add
label define empstat_lbl 05 `"Not in labor force"', add
label define empstat_lbl 99 `"NIU (Not in universe)"', add
label values empstat empstat_lbl

label define multjobs_lbl 00 `"No"'
label define multjobs_lbl 01 `"Yes"', add
label define multjobs_lbl 99 `"NIU (Not in universe)"', add
label values multjobs multjobs_lbl

label define clwkr_lbl 01 `"Government, federal"'
label define clwkr_lbl 02 `"Government, state"', add
label define clwkr_lbl 03 `"Government, local"', add
label define clwkr_lbl 04 `"Private, for profit"', add
label define clwkr_lbl 05 `"Private, nonprofit"', add
label define clwkr_lbl 06 `"Self-employed, incorporated"', add
label define clwkr_lbl 07 `"Self-employed, unincorporated"', add
label define clwkr_lbl 08 `"Without pay"', add
label define clwkr_lbl 99 `"NIU (Not in universe)"', add
label values clwkr clwkr_lbl

label define occ2_lbl 0110 `"Management occupations"'
label define occ2_lbl 0111 `"Business and financial operations occupations"', add
label define occ2_lbl 0120 `"Computer and mathematical science occupations"', add
label define occ2_lbl 0121 `"Architecture and engineering occupations"', add
label define occ2_lbl 0122 `"Life, physical, and social science occupations"', add
label define occ2_lbl 0123 `"Community and social service occupations"', add
label define occ2_lbl 0124 `"Legal occupations"', add
label define occ2_lbl 0125 `"Education, training, and library occupations"', add
label define occ2_lbl 0126 `"Arts, design, entertainment, sports, and media occupations"', add
label define occ2_lbl 0127 `"Healthcare practitioner and technical occupations"', add
label define occ2_lbl 0130 `"Healthcare support occupations"', add
label define occ2_lbl 0131 `"Protective service occupations"', add
label define occ2_lbl 0132 `"Food preparation and serving related occupations"', add
label define occ2_lbl 0133 `"Building and grounds cleaning and maintenance occupations"', add
label define occ2_lbl 0134 `"Personal care and service occupations"', add
label define occ2_lbl 0140 `"Sales and related occupations"', add
label define occ2_lbl 0150 `"Office and administrative support occupations"', add
label define occ2_lbl 0160 `"Farming, fishing, and forestry occupations"', add
label define occ2_lbl 0170 `"Construction and extraction occupations"', add
label define occ2_lbl 0180 `"Installation, maintenance, and repair occupations"', add
label define occ2_lbl 0190 `"Production occupations"', add
label define occ2_lbl 0200 `"Transportation and material moving occupations"', add
label define occ2_lbl 9999 `"NIU (Not in universe)"', add
label values occ2 occ2_lbl

label define ind2_lbl 0100 `"Agriculture"'
label define ind2_lbl 0101 `"Forestry, logging, fishing, hunting, and trapping"', add
label define ind2_lbl 0110 `"Mining"', add
label define ind2_lbl 0120 `"Construction"', add
label define ind2_lbl 0130 `"Nonmetallic mineral product manufacturing"', add
label define ind2_lbl 0131 `"Primary metals and fabricated metal products"', add
label define ind2_lbl 0132 `"Machinery manufacturing"', add
label define ind2_lbl 0133 `"Computer and electronic product mfg"', add
label define ind2_lbl 0134 `"Electrical equipment, appliance mfg"', add
label define ind2_lbl 0135 `"Transportation equipment manufacturing"', add
label define ind2_lbl 0136 `"Wood product manufacturing"', add
label define ind2_lbl 0137 `"Furniture and fixtures manufacturing"', add
label define ind2_lbl 0138 `"Miscellaneous and not specified mfg"', add
label define ind2_lbl 0140 `"Food manufacturing"', add
label define ind2_lbl 0141 `"Beverage and tobacco product mfg"', add
label define ind2_lbl 0142 `"Textile, apparel, and leather manufacturing"', add
label define ind2_lbl 0143 `"Paper manufacturing and printing"', add
label define ind2_lbl 0144 `"Petroleum and coal products manufacturing"', add
label define ind2_lbl 0145 `"Chemical manufacturing"', add
label define ind2_lbl 0146 `"Plastics and rubber products manufacturing"', add
label define ind2_lbl 0150 `"Wholesale trade"', add
label define ind2_lbl 0160 `"Retail trade"', add
label define ind2_lbl 0170 `"Transportation and warehousing"', add
label define ind2_lbl 0180 `"Utilities"', add
label define ind2_lbl 0190 `"Publishing industries (except internet)"', add
label define ind2_lbl 0191 `"Motion picture and sound recording industries"', add
label define ind2_lbl 0192 `"Broadcasting (except internet)"', add
label define ind2_lbl 0193 `"Internet publishing and broadcasting"', add
label define ind2_lbl 0194 `"Telecommunications"', add
label define ind2_lbl 0195 `"Internet svc providers and data processing svcs"', add
label define ind2_lbl 0196 `"Other information services"', add
label define ind2_lbl 0200 `"Finance"', add
label define ind2_lbl 0201 `"Insurance"', add
label define ind2_lbl 0210 `"Real estate"', add
label define ind2_lbl 0211 `"Rental and leasing services"', add
label define ind2_lbl 0220 `"Professional, scientific, and technical services"', add
label define ind2_lbl 0230 `"Management of companies and enterprises"', add
label define ind2_lbl 0231 `"Administrative and support services"', add
label define ind2_lbl 0232 `"Waste management and remediation services"', add
label define ind2_lbl 0240 `"Educational services"', add
label define ind2_lbl 0250 `"Hospitals"', add
label define ind2_lbl 0251 `"Health care services, except hospitals"', add
label define ind2_lbl 0252 `"Social assistance"', add
label define ind2_lbl 0260 `"Arts, entertainment, and recreation"', add
label define ind2_lbl 0270 `"Traveler accommodation"', add
label define ind2_lbl 0271 `"Food services and drinking places"', add
label define ind2_lbl 0280 `"Private households"', add
label define ind2_lbl 0290 `"Repair and maintenance"', add
label define ind2_lbl 0291 `"Personal and laundry services"', add
label define ind2_lbl 0292 `"Membership associations and organizations"', add
label define ind2_lbl 0300 `"Public administration"', add
label define ind2_lbl 9999 `"NIU (Not in universe)"', add
label values ind2 ind2_lbl

label define whyabsnt_lbl 001 `"On layoff (temporary or indefinite)"'
label define whyabsnt_lbl 002 `"Slack work/business conditions"', add
label define whyabsnt_lbl 003 `"Waiting for a new job to begin"', add
label define whyabsnt_lbl 004 `"Vacation/personal days"', add
label define whyabsnt_lbl 005 `"Own illness/injury/medical problems"', add
label define whyabsnt_lbl 006 `"Childcare problems"', add
label define whyabsnt_lbl 007 `"Other family/personal obligation"', add
label define whyabsnt_lbl 008 `"Maternity/paternity leave"', add
label define whyabsnt_lbl 009 `"Labor dispute"', add
label define whyabsnt_lbl 010 `"Weather affected job"', add
label define whyabsnt_lbl 011 `"School/training"', add
label define whyabsnt_lbl 012 `"Civic/military duty"', add
label define whyabsnt_lbl 013 `"Does not work in the business"', add
label define whyabsnt_lbl 014 `"Other family/personal obligation"', add
label define whyabsnt_lbl 999 `"NIU (Not in universe)"', add
label values whyabsnt whyabsnt_lbl

label define fambus_pay_lbl 00 `"No"'
label define fambus_pay_lbl 01 `"Yes"', add
label define fambus_pay_lbl 99 `"NIU (Not in universe)"', add
label values fambus_pay fambus_pay_lbl

label define fambus_wrk_lbl 00 `"No"'
label define fambus_wrk_lbl 01 `"Yes"', add
label define fambus_wrk_lbl 97 `"Don't know"', add
label define fambus_wrk_lbl 99 `"NIU (Not in universe)"', add
label values fambus_wrk fambus_wrk_lbl

label define looking_lbl 01 `"Yes"'
label define looking_lbl 02 `"No"', add
label define looking_lbl 03 `"Retired"', add
label define looking_lbl 04 `"Disabled"', add
label define looking_lbl 05 `"Unable to work"', add
label define looking_lbl 96 `"Refused"', add
label define looking_lbl 97 `"Don't know"', add
label define looking_lbl 99 `"NIU (Not in universe)"', add
label values looking looking_lbl

label define retired_lbl 01 `"Yes"'
label define retired_lbl 02 `"No"', add
label define retired_lbl 03 `"Was not retired last time"', add
label define retired_lbl 98 `"Blank"', add
label define retired_lbl 99 `"NIU (Not in universe)"', add
label values retired retired_lbl

label define empstat_cps8_lbl 01 `"Employed - at work"'
label define empstat_cps8_lbl 02 `"Employed - absent"', add
label define empstat_cps8_lbl 03 `"Unemployed - on layoff"', add
label define empstat_cps8_lbl 04 `"Unemployed - looking"', add
label define empstat_cps8_lbl 05 `"Not in labor force - retired"', add
label define empstat_cps8_lbl 06 `"Not in labor force - disabled"', add
label define empstat_cps8_lbl 07 `"Not in labor force - other"', add
label define empstat_cps8_lbl 99 `"NIU (Not in universe)"', add
label values empstat_cps8 empstat_cps8_lbl

label define multjobs_cps8_lbl 00 `"No"'
label define multjobs_cps8_lbl 01 `"Yes"', add
label define multjobs_cps8_lbl 99 `"NIU (Not in universe)"', add
label values multjobs_cps8 multjobs_cps8_lbl

label define clwkr_cps8_lbl 01 `"Government, federal"'
label define clwkr_cps8_lbl 02 `"Government, state"', add
label define clwkr_cps8_lbl 03 `"Government, local"', add
label define clwkr_cps8_lbl 04 `"Private, for profit"', add
label define clwkr_cps8_lbl 05 `"Private, nonprofit"', add
label define clwkr_cps8_lbl 06 `"Self-employed, incorporated"', add
label define clwkr_cps8_lbl 07 `"Self-employed, unincorporated"', add
label define clwkr_cps8_lbl 08 `"Without pay"', add
label define clwkr_cps8_lbl 99 `"NIU (Not in universe)"', add
label values clwkr_cps8 clwkr_cps8_lbl

label define clwkr_oj_cps8_lbl 01 `"Government, federal"'
label define clwkr_oj_cps8_lbl 02 `"Government, state"', add
label define clwkr_oj_cps8_lbl 03 `"Government, local"', add
label define clwkr_oj_cps8_lbl 04 `"Private, for profit"', add
label define clwkr_oj_cps8_lbl 05 `"Private, nonprofit"', add
label define clwkr_oj_cps8_lbl 06 `"Self-employed, incorporated"', add
label define clwkr_oj_cps8_lbl 07 `"Self-employed, unincorporated"', add
label define clwkr_oj_cps8_lbl 08 `"Without pay"', add
label define clwkr_oj_cps8_lbl 99 `"NIU (Not in universe)"', add
label values clwkr_oj_cps8 clwkr_oj_cps8_lbl

label define occ2_cps8_lbl 0110 `"Management occupations"'
label define occ2_cps8_lbl 0111 `"Business and financial operations occupations"', add
label define occ2_cps8_lbl 0120 `"Computer and mathematical science occupations"', add
label define occ2_cps8_lbl 0121 `"Architecture and engineering occupations"', add
label define occ2_cps8_lbl 0122 `"Life, physical, and social science occupations"', add
label define occ2_cps8_lbl 0123 `"Community and social service occupations"', add
label define occ2_cps8_lbl 0124 `"Legal occupations"', add
label define occ2_cps8_lbl 0125 `"Education, training, and library occupations"', add
label define occ2_cps8_lbl 0126 `"Arts, design, entertainment, sports, and media occupations"', add
label define occ2_cps8_lbl 0127 `"Healthcare practitioner and technical occupations"', add
label define occ2_cps8_lbl 0130 `"Healthcare support occupations"', add
label define occ2_cps8_lbl 0131 `"Protective service occupations"', add
label define occ2_cps8_lbl 0132 `"Food preparation and serving related occupations"', add
label define occ2_cps8_lbl 0133 `"Building and grounds cleaning and maintenance occupations"', add
label define occ2_cps8_lbl 0134 `"Personal care and service occupations"', add
label define occ2_cps8_lbl 0140 `"Sales and related occupations"', add
label define occ2_cps8_lbl 0150 `"Office and administrative support occupations"', add
label define occ2_cps8_lbl 0160 `"Farming, fishing, and forestry occupations"', add
label define occ2_cps8_lbl 0170 `"Construction and extraction occupations"', add
label define occ2_cps8_lbl 0180 `"Installation, maintenance, and repair occupations"', add
label define occ2_cps8_lbl 0190 `"Production occupations"', add
label define occ2_cps8_lbl 0200 `"Transportation and material moving occupations"', add
label define occ2_cps8_lbl 0210 `"Armed Forces"', add
label define occ2_cps8_lbl 9999 `"NIU (Not in universe)"', add
label values occ2_cps8 occ2_cps8_lbl

label define occ2_oj_cps8_lbl 0110 `"Management occupations"'
label define occ2_oj_cps8_lbl 0111 `"Business and financial operations occupations"', add
label define occ2_oj_cps8_lbl 0120 `"Computer and mathematical science occupations"', add
label define occ2_oj_cps8_lbl 0121 `"Architecture and engineering occupations"', add
label define occ2_oj_cps8_lbl 0122 `"Life, physical, and social science occupations"', add
label define occ2_oj_cps8_lbl 0123 `"Community and social service occupations"', add
label define occ2_oj_cps8_lbl 0124 `"Legal occupations"', add
label define occ2_oj_cps8_lbl 0125 `"Education, training, and library occupations"', add
label define occ2_oj_cps8_lbl 0126 `"Arts, design, entertainment, sports, and media occupations"', add
label define occ2_oj_cps8_lbl 0127 `"Healthcare practitioner and technical occupations"', add
label define occ2_oj_cps8_lbl 0130 `"Healthcare support occupations"', add
label define occ2_oj_cps8_lbl 0131 `"Protective service occupations"', add
label define occ2_oj_cps8_lbl 0132 `"Food preparation and serving related occupations"', add
label define occ2_oj_cps8_lbl 0133 `"Building and grounds cleaning and maintenance occupations"', add
label define occ2_oj_cps8_lbl 0134 `"Personal care and service occupations"', add
label define occ2_oj_cps8_lbl 0140 `"Sales and related occupations"', add
label define occ2_oj_cps8_lbl 0150 `"Office and administrative support occupations"', add
label define occ2_oj_cps8_lbl 0160 `"Farming, fishing, and forestry occupations"', add
label define occ2_oj_cps8_lbl 0170 `"Construction and extraction occupations"', add
label define occ2_oj_cps8_lbl 0180 `"Installation, maintenance, and repair occupations"', add
label define occ2_oj_cps8_lbl 0190 `"Production occupations"', add
label define occ2_oj_cps8_lbl 0200 `"Transportation and material moving occupations"', add
label define occ2_oj_cps8_lbl 9999 `"NIU (Not in universe)"', add
label values occ2_oj_cps8 occ2_oj_cps8_lbl

label define ind2_cps8_lbl 0100 `"Agriculture"'
label define ind2_cps8_lbl 0101 `"Forestry, logging, fishing, hunting, and trapping"', add
label define ind2_cps8_lbl 0110 `"Mining"', add
label define ind2_cps8_lbl 0120 `"Construction"', add
label define ind2_cps8_lbl 0130 `"Nonmetallic mineral product manufacturing"', add
label define ind2_cps8_lbl 0131 `"Primary metals and fabricated metal products"', add
label define ind2_cps8_lbl 0132 `"Machinery manufacturing"', add
label define ind2_cps8_lbl 0133 `"Computer and electronic product manufacturing"', add
label define ind2_cps8_lbl 0134 `"Electrical equipment, appliance manufacturing"', add
label define ind2_cps8_lbl 0135 `"Transportation equipment manufacturing"', add
label define ind2_cps8_lbl 0136 `"Wood product manufacturing"', add
label define ind2_cps8_lbl 0137 `"Furniture and fixtures manufacturing"', add
label define ind2_cps8_lbl 0138 `"Miscellaneous and not specified manufacturing"', add
label define ind2_cps8_lbl 0140 `"Food manufacturing"', add
label define ind2_cps8_lbl 0141 `"Beverage and tobacco product manufacturing"', add
label define ind2_cps8_lbl 0142 `"Textile, apparel, and leather manufacturing"', add
label define ind2_cps8_lbl 0143 `"Paper manufacturing and printing"', add
label define ind2_cps8_lbl 0144 `"Petroleum and coal products manufacturing"', add
label define ind2_cps8_lbl 0145 `"Chemical manufacturing"', add
label define ind2_cps8_lbl 0146 `"Plastics and rubber products manufacturing"', add
label define ind2_cps8_lbl 0150 `"Wholesale trade"', add
label define ind2_cps8_lbl 0160 `"Retail trade"', add
label define ind2_cps8_lbl 0170 `"Transportation and warehousing"', add
label define ind2_cps8_lbl 0180 `"Utilities"', add
label define ind2_cps8_lbl 0190 `"Publishing industries (except internet)"', add
label define ind2_cps8_lbl 0191 `"Motion picture and sound recording industries"', add
label define ind2_cps8_lbl 0192 `"Broadcasting (except internet)"', add
label define ind2_cps8_lbl 0193 `"Internet publishing and broadcasting"', add
label define ind2_cps8_lbl 0194 `"Telecommunications"', add
label define ind2_cps8_lbl 0195 `"Internet service providers and data processing services"', add
label define ind2_cps8_lbl 0196 `"Other information services"', add
label define ind2_cps8_lbl 0200 `"Finance"', add
label define ind2_cps8_lbl 0201 `"Insurance"', add
label define ind2_cps8_lbl 0210 `"Real estate"', add
label define ind2_cps8_lbl 0211 `"Rental and leasing services"', add
label define ind2_cps8_lbl 0220 `"Professional, scientific, and technical services"', add
label define ind2_cps8_lbl 0230 `"Management of companies and enterprises"', add
label define ind2_cps8_lbl 0231 `"Administrative and support services"', add
label define ind2_cps8_lbl 0232 `"Waste management and remediation services"', add
label define ind2_cps8_lbl 0240 `"Educational services"', add
label define ind2_cps8_lbl 0250 `"Hospitals"', add
label define ind2_cps8_lbl 0251 `"Health care services, except hospitals"', add
label define ind2_cps8_lbl 0252 `"Social assistance"', add
label define ind2_cps8_lbl 0260 `"Arts, entertainment, and recreation"', add
label define ind2_cps8_lbl 0270 `"Traveler accommodation"', add
label define ind2_cps8_lbl 0271 `"Food services and drinking places"', add
label define ind2_cps8_lbl 0280 `"Private households"', add
label define ind2_cps8_lbl 0290 `"Repair and maintenance"', add
label define ind2_cps8_lbl 0291 `"Personal and laundry services"', add
label define ind2_cps8_lbl 0292 `"Membership associations and organizations"', add
label define ind2_cps8_lbl 0300 `"Public administration"', add
label define ind2_cps8_lbl 0310 `"Armed Forces"', add
label define ind2_cps8_lbl 9999 `"NIU (Not in universe)"', add
label values ind2_cps8 ind2_cps8_lbl

label define ind2_oj_cps8_lbl 0100 `"Agriculture"'
label define ind2_oj_cps8_lbl 0101 `"Forestry, logging, fishing, hunting, and trapping"', add
label define ind2_oj_cps8_lbl 0110 `"Mining"', add
label define ind2_oj_cps8_lbl 0120 `"Construction"', add
label define ind2_oj_cps8_lbl 0130 `"Nonmetallic mineral product manufacturing"', add
label define ind2_oj_cps8_lbl 0131 `"Primary metals and fabricated metal products"', add
label define ind2_oj_cps8_lbl 0132 `"Machinery manufacturing"', add
label define ind2_oj_cps8_lbl 0133 `"Computer and electronic product mfg"', add
label define ind2_oj_cps8_lbl 0134 `"Electrical equipment, appliance mfg"', add
label define ind2_oj_cps8_lbl 0135 `"Transportation equipment manufacturing"', add
label define ind2_oj_cps8_lbl 0136 `"Wood product manufacturing"', add
label define ind2_oj_cps8_lbl 0137 `"Furniture and fixtures manufacturing"', add
label define ind2_oj_cps8_lbl 0138 `"Miscellaneous and not specified mfg"', add
label define ind2_oj_cps8_lbl 0140 `"Food manufacturing"', add
label define ind2_oj_cps8_lbl 0141 `"Beverage and tobacco product mfg"', add
label define ind2_oj_cps8_lbl 0142 `"Textile, apparel, and leather manufacturing"', add
label define ind2_oj_cps8_lbl 0143 `"Paper manufacturing and printing"', add
label define ind2_oj_cps8_lbl 0144 `"Petroleum and coal products manufacturing"', add
label define ind2_oj_cps8_lbl 0145 `"Chemical manufacturing"', add
label define ind2_oj_cps8_lbl 0146 `"Plastics and rubber products manufacturing"', add
label define ind2_oj_cps8_lbl 0150 `"Wholesale trade"', add
label define ind2_oj_cps8_lbl 0160 `"Retail trade"', add
label define ind2_oj_cps8_lbl 0170 `"Transportation and warehousing"', add
label define ind2_oj_cps8_lbl 0180 `"Utilities"', add
label define ind2_oj_cps8_lbl 0190 `"Publishing industries (except internet)"', add
label define ind2_oj_cps8_lbl 0191 `"Motion picture and sound recording industries"', add
label define ind2_oj_cps8_lbl 0192 `"Broadcasting (except internet)"', add
label define ind2_oj_cps8_lbl 0193 `"Internet publishing and broadcasting"', add
label define ind2_oj_cps8_lbl 0194 `"Telecommunications"', add
label define ind2_oj_cps8_lbl 0195 `"Internet svc providers and data processing svcs"', add
label define ind2_oj_cps8_lbl 0196 `"Other information services"', add
label define ind2_oj_cps8_lbl 0200 `"Finance"', add
label define ind2_oj_cps8_lbl 0201 `"Insurance"', add
label define ind2_oj_cps8_lbl 0210 `"Real estate"', add
label define ind2_oj_cps8_lbl 0211 `"Rental and leasing services"', add
label define ind2_oj_cps8_lbl 0220 `"Professional, scientific, and technical services"', add
label define ind2_oj_cps8_lbl 0230 `"Management of companies and enterprises"', add
label define ind2_oj_cps8_lbl 0231 `"Administrative and support services"', add
label define ind2_oj_cps8_lbl 0232 `"Waste management and remediation services"', add
label define ind2_oj_cps8_lbl 0240 `"Educational services"', add
label define ind2_oj_cps8_lbl 0250 `"Hospitals"', add
label define ind2_oj_cps8_lbl 0251 `"Health care services, except hospitals"', add
label define ind2_oj_cps8_lbl 0252 `"Social assistance"', add
label define ind2_oj_cps8_lbl 0260 `"Arts, entertainment, and recreation"', add
label define ind2_oj_cps8_lbl 0270 `"Traveler accommodation"', add
label define ind2_oj_cps8_lbl 0271 `"Food services and drinking places"', add
label define ind2_oj_cps8_lbl 0280 `"Private households"', add
label define ind2_oj_cps8_lbl 0290 `"Repair and maintenance"', add
label define ind2_oj_cps8_lbl 0291 `"Personal and laundry services"', add
label define ind2_oj_cps8_lbl 0292 `"Membership associations and organizations"', add
label define ind2_oj_cps8_lbl 0300 `"Public administration"', add
label define ind2_oj_cps8_lbl 0400 `"Armed forces"', add
label define ind2_oj_cps8_lbl 9999 `"NIU (Not in universe)"', add
label values ind2_oj_cps8 ind2_oj_cps8_lbl

label define union_cps8_lbl 01 `"No union coverage"'
label define union_cps8_lbl 02 `"Member of labor union"', add
label define union_cps8_lbl 03 `"Covered by a union but not a member"', add
label define union_cps8_lbl 98 `"Blank"', add
label define union_cps8_lbl 99 `"NIU (Not in universe)"', add
label values union_cps8 union_cps8_lbl

label define payifabs_cps8_lbl 01 `"Yes"'
label define payifabs_cps8_lbl 02 `"No"', add
label define payifabs_cps8_lbl 99 `"NIU (Not in universe)"', add
label values payifabs_cps8 payifabs_cps8_lbl

label define whyabsnt_cps8_lbl 001 `"On layoff (temporary or indefinite)"'
label define whyabsnt_cps8_lbl 002 `"Slack work/business conditions"', add
label define whyabsnt_cps8_lbl 003 `"Waiting for a new job to begin"', add
label define whyabsnt_cps8_lbl 004 `"Vacation/personal days"', add
label define whyabsnt_cps8_lbl 005 `"Own illness/injury/medical problems"', add
label define whyabsnt_cps8_lbl 006 `"Childcare problems"', add
label define whyabsnt_cps8_lbl 007 `"Other family/personal obligation"', add
label define whyabsnt_cps8_lbl 008 `"Maternity/paternity leave"', add
label define whyabsnt_cps8_lbl 009 `"Labor dispute"', add
label define whyabsnt_cps8_lbl 010 `"Weather affected job"', add
label define whyabsnt_cps8_lbl 011 `"School/training"', add
label define whyabsnt_cps8_lbl 012 `"Civic/military duty"', add
label define whyabsnt_cps8_lbl 013 `"Does not work in the business"', add
label define whyabsnt_cps8_lbl 014 `"Other family/personal obligation"', add
label define whyabsnt_cps8_lbl 999 `"NIU (Not in universe)"', add
label values whyabsnt_cps8 whyabsnt_cps8_lbl

label define whyptlwk_cps8_lbl 001 `"Slack work/business conditions"'
label define whyptlwk_cps8_lbl 002 `"Seasonal work"', add
label define whyptlwk_cps8_lbl 003 `"Job started or ended during week"', add
label define whyptlwk_cps8_lbl 004 `"Vacation or personal day"', add
label define whyptlwk_cps8_lbl 005 `"Own illness/injury/medical appointment"', add
label define whyptlwk_cps8_lbl 006 `"Holiday (legal or religious)"', add
label define whyptlwk_cps8_lbl 007 `"Childcare problems"', add
label define whyptlwk_cps8_lbl 008 `"Other family/personal obligations"', add
label define whyptlwk_cps8_lbl 009 `"Labor dispute"', add
label define whyptlwk_cps8_lbl 010 `"Weather affected job"', add
label define whyptlwk_cps8_lbl 011 `"School training"', add
label define whyptlwk_cps8_lbl 012 `"Civic/military duty"', add
label define whyptlwk_cps8_lbl 013 `"Other reason"', add
label define whyptlwk_cps8_lbl 999 `"NIU (Not in universe)"', add
label values whyptlwk_cps8 whyptlwk_cps8_lbl

label define fambus_wrk_cps8_lbl 00 `"No"'
label define fambus_wrk_cps8_lbl 01 `"Yes"', add
label define fambus_wrk_cps8_lbl 96 `"Refused"', add
label define fambus_wrk_cps8_lbl 97 `"Don't know"', add
label define fambus_wrk_cps8_lbl 99 `"NIU (Not in universe)"', add
label values fambus_wrk_cps8 fambus_wrk_cps8_lbl

label define fambus_pay_cps8_lbl 00 `"No"'
label define fambus_pay_cps8_lbl 01 `"Yes"', add
label define fambus_pay_cps8_lbl 96 `"Refused"', add
label define fambus_pay_cps8_lbl 97 `"Don't Know"', add
label define fambus_pay_cps8_lbl 99 `"NIU (Not in universe)"', add
label values fambus_pay_cps8 fambus_pay_cps8_lbl

label define looking_cps8_lbl 01 `"Yes"'
label define looking_cps8_lbl 02 `"No"', add
label define looking_cps8_lbl 03 `"Retired"', add
label define looking_cps8_lbl 04 `"Disabled"', add
label define looking_cps8_lbl 05 `"Unable to work"', add
label define looking_cps8_lbl 96 `"Refused"', add
label define looking_cps8_lbl 97 `"Don't know"', add
label define looking_cps8_lbl 99 `"NIU (Not in universe)"', add
label values looking_cps8 looking_cps8_lbl

label define wantjob_cps8_lbl 01 `"Yes, maybe, it depends"'
label define wantjob_cps8_lbl 02 `"No"', add
label define wantjob_cps8_lbl 03 `"Retired"', add
label define wantjob_cps8_lbl 04 `"Disabled"', add
label define wantjob_cps8_lbl 05 `"Unable to work"', add
label define wantjob_cps8_lbl 99 `"NIU (Not in universe)"', add
label values wantjob_cps8 wantjob_cps8_lbl

label define whyunemp_cps8_lbl 01 `"Job loser on layoff"'
label define whyunemp_cps8_lbl 02 `"Other job loser"', add
label define whyunemp_cps8_lbl 03 `"Temporary job ended"', add
label define whyunemp_cps8_lbl 04 `"Job leaver"', add
label define whyunemp_cps8_lbl 05 `"Re-entrant"', add
label define whyunemp_cps8_lbl 06 `"New entrant"', add
label define whyunemp_cps8_lbl 99 `"NIU (Not in universe)"', add
label values whyunemp_cps8 whyunemp_cps8_lbl

label define whyleft_cps8_lbl 01 `"Personal/family (including pregnancy)"'
label define whyleft_cps8_lbl 02 `"Return to school"', add
label define whyleft_cps8_lbl 03 `"Health"', add
label define whyleft_cps8_lbl 04 `"Retirement or old age"', add
label define whyleft_cps8_lbl 05 `"Temporary, seasonal, or intermittent job completed"', add
label define whyleft_cps8_lbl 06 `"Slack work/business conditions"', add
label define whyleft_cps8_lbl 07 `"Unsatisfactory work arrangements (hours, pay, etc.)"', add
label define whyleft_cps8_lbl 08 `"Other"', add
label define whyleft_cps8_lbl 99 `"NIU (Not in universe)"', add
label values whyleft_cps8 whyleft_cps8_lbl

label define wnlwnilf_cps8_lbl 01 `"Within the last 12 months"'
label define wnlwnilf_cps8_lbl 02 `"More than 12 months ago"', add
label define wnlwnilf_cps8_lbl 03 `"Never worked"', add
label define wnlwnilf_cps8_lbl 99 `"NIU (Not in universe)"', add
label values wnlwnilf_cps8 wnlwnilf_cps8_lbl

label define intenfwk_cps8_lbl 01 `"Yes, or it depends"'
label define intenfwk_cps8_lbl 02 `"No"', add
label define intenfwk_cps8_lbl 99 `"NIU (Not in universe)"', add
label values intenfwk_cps8 intenfwk_cps8_lbl

label define retired_cps8_lbl 01 `"Yes"'
label define retired_cps8_lbl 02 `"No"', add
label define retired_cps8_lbl 03 `"Was not retired last time"', add
label define retired_cps8_lbl 97 `"Don't know"', add
label define retired_cps8_lbl 99 `"NIU (Not in universe)"', add
label values retired_cps8 retired_cps8_lbl

label define fullpart_lbl 01 `"Full time"'
label define fullpart_lbl 02 `"Part time"', add
label define fullpart_lbl 99 `"NIU (Not in universe)"', add
label values fullpart fullpart_lbl

label define paidhour_lbl 01 `"Paid hourly"'
label define paidhour_lbl 02 `"Not paid hourly"', add
label define paidhour_lbl 99 `"NIU (Not in universe)"', add
label values paidhour paidhour_lbl

label define earnrpt_lbl 01 `"Hourly"'
label define earnrpt_lbl 02 `"Weekly"', add
label define earnrpt_lbl 03 `"Bi-weekly"', add
label define earnrpt_lbl 04 `"Twice monthly"', add
label define earnrpt_lbl 05 `"Monthly"', add
label define earnrpt_lbl 06 `"Annually"', add
label define earnrpt_lbl 07 `"Other"', add
label define earnrpt_lbl 99 `"NIU (Not in universe)"', add
label values earnrpt earnrpt_lbl

label define hrsatrate_lbl 001 `"1"'
label define hrsatrate_lbl 002 `"2"', add
label define hrsatrate_lbl 003 `"3"', add
label define hrsatrate_lbl 004 `"4"', add
label define hrsatrate_lbl 005 `"5"', add
label define hrsatrate_lbl 006 `"6"', add
label define hrsatrate_lbl 007 `"7"', add
label define hrsatrate_lbl 008 `"8"', add
label define hrsatrate_lbl 009 `"9"', add
label define hrsatrate_lbl 010 `"10"', add
label define hrsatrate_lbl 011 `"11"', add
label define hrsatrate_lbl 012 `"12"', add
label define hrsatrate_lbl 013 `"13"', add
label define hrsatrate_lbl 014 `"14"', add
label define hrsatrate_lbl 015 `"15"', add
label define hrsatrate_lbl 016 `"16"', add
label define hrsatrate_lbl 017 `"17"', add
label define hrsatrate_lbl 018 `"18"', add
label define hrsatrate_lbl 019 `"19"', add
label define hrsatrate_lbl 020 `"20"', add
label define hrsatrate_lbl 021 `"21"', add
label define hrsatrate_lbl 022 `"22"', add
label define hrsatrate_lbl 023 `"23"', add
label define hrsatrate_lbl 024 `"24"', add
label define hrsatrate_lbl 025 `"25"', add
label define hrsatrate_lbl 026 `"26"', add
label define hrsatrate_lbl 027 `"27"', add
label define hrsatrate_lbl 028 `"28"', add
label define hrsatrate_lbl 029 `"29"', add
label define hrsatrate_lbl 030 `"30"', add
label define hrsatrate_lbl 031 `"31"', add
label define hrsatrate_lbl 032 `"32"', add
label define hrsatrate_lbl 033 `"33"', add
label define hrsatrate_lbl 034 `"34"', add
label define hrsatrate_lbl 035 `"35"', add
label define hrsatrate_lbl 036 `"36"', add
label define hrsatrate_lbl 037 `"37"', add
label define hrsatrate_lbl 038 `"38"', add
label define hrsatrate_lbl 039 `"39"', add
label define hrsatrate_lbl 040 `"40"', add
label define hrsatrate_lbl 041 `"41"', add
label define hrsatrate_lbl 042 `"42"', add
label define hrsatrate_lbl 043 `"43"', add
label define hrsatrate_lbl 044 `"44"', add
label define hrsatrate_lbl 045 `"45"', add
label define hrsatrate_lbl 046 `"46"', add
label define hrsatrate_lbl 047 `"47"', add
label define hrsatrate_lbl 048 `"48"', add
label define hrsatrate_lbl 049 `"49"', add
label define hrsatrate_lbl 050 `"50"', add
label define hrsatrate_lbl 051 `"51"', add
label define hrsatrate_lbl 052 `"52"', add
label define hrsatrate_lbl 053 `"53"', add
label define hrsatrate_lbl 054 `"54"', add
label define hrsatrate_lbl 055 `"55"', add
label define hrsatrate_lbl 056 `"56"', add
label define hrsatrate_lbl 057 `"57"', add
label define hrsatrate_lbl 058 `"58"', add
label define hrsatrate_lbl 059 `"59"', add
label define hrsatrate_lbl 060 `"60"', add
label define hrsatrate_lbl 061 `"61"', add
label define hrsatrate_lbl 062 `"62"', add
label define hrsatrate_lbl 063 `"63"', add
label define hrsatrate_lbl 064 `"64"', add
label define hrsatrate_lbl 065 `"65"', add
label define hrsatrate_lbl 066 `"66"', add
label define hrsatrate_lbl 067 `"67"', add
label define hrsatrate_lbl 068 `"68"', add
label define hrsatrate_lbl 069 `"69"', add
label define hrsatrate_lbl 070 `"70"', add
label define hrsatrate_lbl 071 `"71"', add
label define hrsatrate_lbl 072 `"72"', add
label define hrsatrate_lbl 073 `"73"', add
label define hrsatrate_lbl 074 `"74"', add
label define hrsatrate_lbl 075 `"75"', add
label define hrsatrate_lbl 076 `"76"', add
label define hrsatrate_lbl 077 `"77"', add
label define hrsatrate_lbl 078 `"78"', add
label define hrsatrate_lbl 079 `"79"', add
label define hrsatrate_lbl 080 `"80"', add
label define hrsatrate_lbl 081 `"81"', add
label define hrsatrate_lbl 082 `"82"', add
label define hrsatrate_lbl 083 `"83"', add
label define hrsatrate_lbl 084 `"84"', add
label define hrsatrate_lbl 085 `"85"', add
label define hrsatrate_lbl 086 `"86"', add
label define hrsatrate_lbl 087 `"87"', add
label define hrsatrate_lbl 088 `"88"', add
label define hrsatrate_lbl 089 `"89"', add
label define hrsatrate_lbl 090 `"90"', add
label define hrsatrate_lbl 091 `"91"', add
label define hrsatrate_lbl 092 `"92"', add
label define hrsatrate_lbl 093 `"93"', add
label define hrsatrate_lbl 094 `"94"', add
label define hrsatrate_lbl 095 `"95"', add
label define hrsatrate_lbl 096 `"96"', add
label define hrsatrate_lbl 097 `"97"', add
label define hrsatrate_lbl 098 `"98"', add
label define hrsatrate_lbl 099 `"99"', add
label define hrsatrate_lbl 100 `"100"', add
label define hrsatrate_lbl 996 `"Refused"', add
label define hrsatrate_lbl 997 `"Don't know"', add
label define hrsatrate_lbl 998 `"Blank"', add
label define hrsatrate_lbl 999 `"NIU (Not in universe)"', add
label values hrsatrate hrsatrate_lbl

label define otusual_lbl 00 `"No"'
label define otusual_lbl 01 `"Yes"', add
label define otusual_lbl 99 `"NIU (Not in universe)"', add
label values otusual otusual_lbl

label define cpsupdate_lbl 00 `"Earnings carried forward from final CPS interview"'
label define cpsupdate_lbl 01 `"Earnings updated in ATUS"', add
label define cpsupdate_lbl 99 `"NIU (Not in universe)"', add
label values cpsupdate cpsupdate_lbl

label define fullpart_cps8_lbl 01 `"Full time"'
label define fullpart_cps8_lbl 02 `"Part time"', add
label define fullpart_cps8_lbl 99 `"NIU (Not in universe)"', add
label values fullpart_cps8 fullpart_cps8_lbl

label define earnrpt_cps8_lbl 01 `"Hourly"'
label define earnrpt_cps8_lbl 02 `"Weekly"', add
label define earnrpt_cps8_lbl 03 `"Bi-weekly"', add
label define earnrpt_cps8_lbl 04 `"Twice monthly"', add
label define earnrpt_cps8_lbl 05 `"Monthly"', add
label define earnrpt_cps8_lbl 06 `"Annually"', add
label define earnrpt_cps8_lbl 07 `"Other"', add
label define earnrpt_cps8_lbl 98 `"Blank"', add
label define earnrpt_cps8_lbl 99 `"NIU (Not in universe)"', add
label values earnrpt_cps8 earnrpt_cps8_lbl

label define paidhour_cps8_lbl 00 `"Non-hourly worker"'
label define paidhour_cps8_lbl 01 `"Hourly worker"', add
label define paidhour_cps8_lbl 98 `"Blank"', add
label define paidhour_cps8_lbl 99 `"NIU (Not in universe)"', add
label values paidhour_cps8 paidhour_cps8_lbl

label define hrsatrate_cps8_lbl 000 `"0"'
label define hrsatrate_cps8_lbl 001 `"1"', add
label define hrsatrate_cps8_lbl 002 `"2"', add
label define hrsatrate_cps8_lbl 003 `"3"', add
label define hrsatrate_cps8_lbl 004 `"4"', add
label define hrsatrate_cps8_lbl 005 `"5"', add
label define hrsatrate_cps8_lbl 006 `"6"', add
label define hrsatrate_cps8_lbl 007 `"7"', add
label define hrsatrate_cps8_lbl 008 `"8"', add
label define hrsatrate_cps8_lbl 009 `"9"', add
label define hrsatrate_cps8_lbl 010 `"10"', add
label define hrsatrate_cps8_lbl 011 `"11"', add
label define hrsatrate_cps8_lbl 012 `"12"', add
label define hrsatrate_cps8_lbl 013 `"13"', add
label define hrsatrate_cps8_lbl 014 `"14"', add
label define hrsatrate_cps8_lbl 015 `"15"', add
label define hrsatrate_cps8_lbl 016 `"16"', add
label define hrsatrate_cps8_lbl 017 `"17"', add
label define hrsatrate_cps8_lbl 018 `"18"', add
label define hrsatrate_cps8_lbl 019 `"19"', add
label define hrsatrate_cps8_lbl 020 `"20"', add
label define hrsatrate_cps8_lbl 021 `"21"', add
label define hrsatrate_cps8_lbl 022 `"22"', add
label define hrsatrate_cps8_lbl 023 `"23"', add
label define hrsatrate_cps8_lbl 024 `"24"', add
label define hrsatrate_cps8_lbl 025 `"25"', add
label define hrsatrate_cps8_lbl 026 `"26"', add
label define hrsatrate_cps8_lbl 027 `"27"', add
label define hrsatrate_cps8_lbl 028 `"28"', add
label define hrsatrate_cps8_lbl 029 `"29"', add
label define hrsatrate_cps8_lbl 030 `"30"', add
label define hrsatrate_cps8_lbl 031 `"31"', add
label define hrsatrate_cps8_lbl 032 `"32"', add
label define hrsatrate_cps8_lbl 033 `"33"', add
label define hrsatrate_cps8_lbl 034 `"34"', add
label define hrsatrate_cps8_lbl 035 `"35"', add
label define hrsatrate_cps8_lbl 036 `"36"', add
label define hrsatrate_cps8_lbl 037 `"37"', add
label define hrsatrate_cps8_lbl 038 `"38"', add
label define hrsatrate_cps8_lbl 039 `"39"', add
label define hrsatrate_cps8_lbl 040 `"40"', add
label define hrsatrate_cps8_lbl 041 `"41"', add
label define hrsatrate_cps8_lbl 042 `"42"', add
label define hrsatrate_cps8_lbl 043 `"43"', add
label define hrsatrate_cps8_lbl 044 `"44"', add
label define hrsatrate_cps8_lbl 045 `"45"', add
label define hrsatrate_cps8_lbl 046 `"46"', add
label define hrsatrate_cps8_lbl 047 `"47"', add
label define hrsatrate_cps8_lbl 048 `"48"', add
label define hrsatrate_cps8_lbl 049 `"49"', add
label define hrsatrate_cps8_lbl 050 `"50"', add
label define hrsatrate_cps8_lbl 051 `"51"', add
label define hrsatrate_cps8_lbl 052 `"52"', add
label define hrsatrate_cps8_lbl 053 `"53"', add
label define hrsatrate_cps8_lbl 054 `"54"', add
label define hrsatrate_cps8_lbl 055 `"55"', add
label define hrsatrate_cps8_lbl 056 `"56"', add
label define hrsatrate_cps8_lbl 057 `"57"', add
label define hrsatrate_cps8_lbl 058 `"58"', add
label define hrsatrate_cps8_lbl 059 `"59"', add
label define hrsatrate_cps8_lbl 060 `"60"', add
label define hrsatrate_cps8_lbl 061 `"61"', add
label define hrsatrate_cps8_lbl 062 `"62"', add
label define hrsatrate_cps8_lbl 063 `"63"', add
label define hrsatrate_cps8_lbl 064 `"64"', add
label define hrsatrate_cps8_lbl 065 `"65"', add
label define hrsatrate_cps8_lbl 066 `"66"', add
label define hrsatrate_cps8_lbl 067 `"67"', add
label define hrsatrate_cps8_lbl 068 `"68"', add
label define hrsatrate_cps8_lbl 069 `"69"', add
label define hrsatrate_cps8_lbl 070 `"70"', add
label define hrsatrate_cps8_lbl 071 `"71"', add
label define hrsatrate_cps8_lbl 072 `"72"', add
label define hrsatrate_cps8_lbl 073 `"73"', add
label define hrsatrate_cps8_lbl 074 `"74"', add
label define hrsatrate_cps8_lbl 075 `"75"', add
label define hrsatrate_cps8_lbl 076 `"76"', add
label define hrsatrate_cps8_lbl 077 `"77"', add
label define hrsatrate_cps8_lbl 078 `"78"', add
label define hrsatrate_cps8_lbl 079 `"79"', add
label define hrsatrate_cps8_lbl 080 `"80"', add
label define hrsatrate_cps8_lbl 081 `"81"', add
label define hrsatrate_cps8_lbl 082 `"82"', add
label define hrsatrate_cps8_lbl 083 `"83"', add
label define hrsatrate_cps8_lbl 084 `"84"', add
label define hrsatrate_cps8_lbl 085 `"85"', add
label define hrsatrate_cps8_lbl 086 `"86"', add
label define hrsatrate_cps8_lbl 087 `"87"', add
label define hrsatrate_cps8_lbl 088 `"88"', add
label define hrsatrate_cps8_lbl 089 `"89"', add
label define hrsatrate_cps8_lbl 090 `"90"', add
label define hrsatrate_cps8_lbl 091 `"91"', add
label define hrsatrate_cps8_lbl 092 `"92"', add
label define hrsatrate_cps8_lbl 093 `"93"', add
label define hrsatrate_cps8_lbl 094 `"94"', add
label define hrsatrate_cps8_lbl 095 `"95"', add
label define hrsatrate_cps8_lbl 096 `"96"', add
label define hrsatrate_cps8_lbl 097 `"97"', add
label define hrsatrate_cps8_lbl 098 `"98"', add
label define hrsatrate_cps8_lbl 099 `"99"', add
label define hrsatrate_cps8_lbl 100 `"100"', add
label define hrsatrate_cps8_lbl 997 `"Don't know"', add
label define hrsatrate_cps8_lbl 998 `"Blank"', add
label define hrsatrate_cps8_lbl 999 `"NIU (Not in universe)"', add
label values hrsatrate_cps8 hrsatrate_cps8_lbl

label define otusual_cps8_lbl 00 `"No"'
label define otusual_cps8_lbl 01 `"Yes"', add
label define otusual_cps8_lbl 98 `"Blank"', add
label define otusual_cps8_lbl 99 `"NIU (Not in universe)"', add
label values otusual_cps8 otusual_cps8_lbl

label define fwk_emplr_lbl 00 `"No"'
label define fwk_emplr_lbl 01 `"Yes"', add
label define fwk_emplr_lbl 99 `"NIU (Not in universe)"', add
label values fwk_emplr fwk_emplr_lbl

label define fwk_pubag_lbl 00 `"No"'
label define fwk_pubag_lbl 01 `"Yes"', add
label define fwk_pubag_lbl 99 `"NIU (Not in universe)"', add
label values fwk_pubag fwk_pubag_lbl

label define fwk_pvtag_lbl 00 `"No"'
label define fwk_pvtag_lbl 01 `"Yes"', add
label define fwk_pvtag_lbl 99 `"NIU (Not in universe)"', add
label values fwk_pvtag fwk_pvtag_lbl

label define fwk_relate_lbl 00 `"No"'
label define fwk_relate_lbl 01 `"Yes"', add
label define fwk_relate_lbl 99 `"NIU (Not in universe)"', add
label values fwk_relate fwk_relate_lbl

label define fwk_school_lbl 00 `"No"'
label define fwk_school_lbl 01 `"Yes"', add
label define fwk_school_lbl 99 `"NIU (Not in universe)"', add
label values fwk_school fwk_school_lbl

label define fwk_resume_lbl 00 `"No"'
label define fwk_resume_lbl 01 `"Yes"', add
label define fwk_resume_lbl 99 `"NIU (Not in universe)"', add
label values fwk_resume fwk_resume_lbl

label define fwk_union_lbl 00 `"No"'
label define fwk_union_lbl 01 `"Yes"', add
label define fwk_union_lbl 99 `"NIU (Not in universe)"', add
label values fwk_union fwk_union_lbl

label define fwk_ads_lbl 00 `"No"'
label define fwk_ads_lbl 01 `"Yes"', add
label define fwk_ads_lbl 99 `"NIU (Not in universe)"', add
label values fwk_ads fwk_ads_lbl

label define fwk_othera_lbl 00 `"No"'
label define fwk_othera_lbl 01 `"Yes"', add
label define fwk_othera_lbl 99 `"NIU (Not in universe)"', add
label values fwk_othera fwk_othera_lbl

label define fwk_readads_lbl 00 `"No"'
label define fwk_readads_lbl 01 `"Yes"', add
label define fwk_readads_lbl 99 `"NIU (Not in universe)"', add
label values fwk_readads fwk_readads_lbl

label define fwk_jobprgm_lbl 00 `"No"'
label define fwk_jobprgm_lbl 01 `"Yes"', add
label define fwk_jobprgm_lbl 99 `"NIU (Not in universe)"', add
label values fwk_jobprgm fwk_jobprgm_lbl

label define fwk_nothing_lbl 00 `"No"'
label define fwk_nothing_lbl 01 `"Yes"', add
label define fwk_nothing_lbl 99 `"NIU (Not in universe)"', add
label values fwk_nothing fwk_nothing_lbl

label define fwk_otherp_lbl 00 `"No"'
label define fwk_otherp_lbl 01 `"Yes"', add
label define fwk_otherp_lbl 99 `"NIU (Not in universe)"', add
label values fwk_otherp fwk_otherp_lbl

label define fwk_emplr_cps8_lbl 00 `"No"'
label define fwk_emplr_cps8_lbl 01 `"Yes"', add
label define fwk_emplr_cps8_lbl 99 `"NIU (Not in universe)"', add
label values fwk_emplr_cps8 fwk_emplr_cps8_lbl

label define fwk_pubag_cps8_lbl 00 `"No"'
label define fwk_pubag_cps8_lbl 01 `"Yes"', add
label define fwk_pubag_cps8_lbl 99 `"NIU (Not in universe)"', add
label values fwk_pubag_cps8 fwk_pubag_cps8_lbl

label define fwk_pvtag_cps8_lbl 00 `"No"'
label define fwk_pvtag_cps8_lbl 01 `"Yes"', add
label define fwk_pvtag_cps8_lbl 99 `"NIU (Not in universe)"', add
label values fwk_pvtag_cps8 fwk_pvtag_cps8_lbl

label define fwk_relate_cps8_lbl 00 `"No"'
label define fwk_relate_cps8_lbl 01 `"Yes"', add
label define fwk_relate_cps8_lbl 99 `"NIU (Not in universe)"', add
label values fwk_relate_cps8 fwk_relate_cps8_lbl

label define fwk_school_cps8_lbl 00 `"No"'
label define fwk_school_cps8_lbl 01 `"Yes"', add
label define fwk_school_cps8_lbl 99 `"NIU (Not in universe)"', add
label values fwk_school_cps8 fwk_school_cps8_lbl

label define fwk_resume_cps8_lbl 00 `"No"'
label define fwk_resume_cps8_lbl 01 `"Yes"', add
label define fwk_resume_cps8_lbl 99 `"NIU (Not in universe)"', add
label values fwk_resume_cps8 fwk_resume_cps8_lbl

label define fwk_union_cps8_lbl 00 `"No"'
label define fwk_union_cps8_lbl 01 `"Yes"', add
label define fwk_union_cps8_lbl 99 `"NIU (Not in universe)"', add
label values fwk_union_cps8 fwk_union_cps8_lbl

label define fwk_ads_cps8_lbl 00 `"No"'
label define fwk_ads_cps8_lbl 01 `"Yes"', add
label define fwk_ads_cps8_lbl 99 `"NIU (Not in universe)"', add
label values fwk_ads_cps8 fwk_ads_cps8_lbl

label define fwk_othera_cps8_lbl 00 `"No"'
label define fwk_othera_cps8_lbl 01 `"Yes"', add
label define fwk_othera_cps8_lbl 99 `"NIU (Not in universe)"', add
label values fwk_othera_cps8 fwk_othera_cps8_lbl

label define fwk_readads_cps8_lbl 00 `"No"'
label define fwk_readads_cps8_lbl 01 `"Yes"', add
label define fwk_readads_cps8_lbl 99 `"NIU (Not in universe)"', add
label values fwk_readads_cps8 fwk_readads_cps8_lbl

label define fwk_jobprgm_cps8_lbl 00 `"No"'
label define fwk_jobprgm_cps8_lbl 01 `"Yes"', add
label define fwk_jobprgm_cps8_lbl 99 `"NIU (Not in universe)"', add
label values fwk_jobprgm_cps8 fwk_jobprgm_cps8_lbl

label define fwk_nothing_cps8_lbl 00 `"No"'
label define fwk_nothing_cps8_lbl 01 `"Yes"', add
label define fwk_nothing_cps8_lbl 99 `"NIU (Not in universe)"', add
label values fwk_nothing_cps8 fwk_nothing_cps8_lbl

label define fwk_otherp_cps8_lbl 00 `"No"'
label define fwk_otherp_cps8_lbl 01 `"Yes"', add
label define fwk_otherp_cps8_lbl 99 `"NIU (Not in universe)"', add
label values fwk_otherp_cps8 fwk_otherp_cps8_lbl

label define spousepres_lbl 01 `"Spouse present"'
label define spousepres_lbl 02 `"Unmarried partner present"', add
label define spousepres_lbl 03 `"No spouse or unmarried partner present"', add
label define spousepres_lbl 99 `"NIU (Not in universe)"', add
label values spousepres spousepres_lbl

label define spsex_lbl 001 `"Male"'
label define spsex_lbl 002 `"Female"', add
label define spsex_lbl 099 `"NIU (Not in universe)"', add
label values spsex spsex_lbl

label define sprace_lbl 0100 `"White only"'
label define sprace_lbl 0110 `"Black only"', add
label define sprace_lbl 0120 `"American Indian, Alaskan Native"', add
label define sprace_lbl 0130 `"Asian or Pacific Islander"', add
label define sprace_lbl 0131 `"Asian only"', add
label define sprace_lbl 0132 `"Hawaiian Pacific Islander only"', add
label define sprace_lbl 0200 `"White-Black"', add
label define sprace_lbl 0201 `"White-American Indian"', add
label define sprace_lbl 0202 `"White-Asian"', add
label define sprace_lbl 0203 `"White-Hawaiian"', add
label define sprace_lbl 0210 `"Black-American Indian"', add
label define sprace_lbl 0211 `"Black-Asian"', add
label define sprace_lbl 0212 `"Black-Hawaiian"', add
label define sprace_lbl 0220 `"American Indian-Asian"', add
label define sprace_lbl 0221 `"American Indian-Hawaiian"', add
label define sprace_lbl 0230 `"Asian-Hawaiian"', add
label define sprace_lbl 0300 `"White-Black-American Indian"', add
label define sprace_lbl 0301 `"White-Black-Asian"', add
label define sprace_lbl 0302 `"White-Black-Hawaiian"', add
label define sprace_lbl 0310 `"White-American Indian-Asian"', add
label define sprace_lbl 0311 `"White-American Indian-Hawaiian"', add
label define sprace_lbl 0320 `"White-Asian-Hawaiian"', add
label define sprace_lbl 0330 `"Black-American Indian-Asian"', add
label define sprace_lbl 0331 `"Black-American Indian-Hawaiian"', add
label define sprace_lbl 0340 `"Black-Asian-Hawaiian"', add
label define sprace_lbl 0350 `"American Indian-Asian-Hawaiian"', add
label define sprace_lbl 0398 `"Other 3 race combinations"', add
label define sprace_lbl 0399 `"2 or 3 races, unspecified"', add
label define sprace_lbl 0400 `"White-Black-American Indian-Asian"', add
label define sprace_lbl 0401 `"White-Black-American Indian-Hawaiian"', add
label define sprace_lbl 0402 `"White-Black-Asian-Hawaiian"', add
label define sprace_lbl 0403 `"Black-American Indian-Asian-Hawaiian"', add
label define sprace_lbl 0500 `"White-Black-American Indian-Asian-Hawaiian"', add
label define sprace_lbl 0599 `"4 or 5 races, unspecified"', add
label define sprace_lbl 9998 `"Not Available (see description)"', add
label define sprace_lbl 9999 `"NIU (Not in universe)"', add
label values sprace sprace_lbl

label define sphispan_lbl 0100 `"Not Hispanic"'
label define sphispan_lbl 0210 `"Mexican"', add
label define sphispan_lbl 0211 `"Mexican American"', add
label define sphispan_lbl 0212 `"Chicano"', add
label define sphispan_lbl 0213 `"Mexcian (Mexicano)"', add
label define sphispan_lbl 0220 `"Puerto Rican"', add
label define sphispan_lbl 0230 `"Cuban"', add
label define sphispan_lbl 0240 `"Central-South American"', add
label define sphispan_lbl 0250 `"Other Spanish"', add
label define sphispan_lbl 9998 `"Not available (see description)"', add
label define sphispan_lbl 9999 `"NIU (Not in universe)"', add
label values sphispan sphispan_lbl

label define speduc_lbl 010 `"Less than 1st grade"'
label define speduc_lbl 011 `"1st, 2nd, 3rd, or 4th grade"', add
label define speduc_lbl 012 `"5th or 6th grade"', add
label define speduc_lbl 013 `"7th or 8th grade"', add
label define speduc_lbl 014 `"9th grade"', add
label define speduc_lbl 015 `"10th grade"', add
label define speduc_lbl 016 `"11th grade"', add
label define speduc_lbl 017 `"12th grade - no diploma"', add
label define speduc_lbl 020 `"High school graduate - GED"', add
label define speduc_lbl 021 `"High school graduate - diploma"', add
label define speduc_lbl 030 `"Some college but no degree"', add
label define speduc_lbl 031 `"Associate degree - occupational vocational"', add
label define speduc_lbl 032 `"Associate degree - academic program"', add
label define speduc_lbl 040 `"Bachelor's degree (BA, AB, BS, etc.)"', add
label define speduc_lbl 041 `"Master's degree (MA, MS, MEng, MEd, MSW, etc.)"', add
label define speduc_lbl 042 `"Professional school degree (MD, DDS, DVM, etc.)"', add
label define speduc_lbl 043 `"Doctoral degree (PhD, EdD, etc.)"', add
label define speduc_lbl 998 `"Not available (see description)"', add
label define speduc_lbl 999 `"NIU (Not in universe)"', add
label values speduc speduc_lbl

label define spempnot_lbl 00 `"Not employed"'
label define spempnot_lbl 01 `"Employed"', add
label define spempnot_lbl 99 `"NIU (Not in universe)"', add
label values spempnot spempnot_lbl

label define spempstat_lbl 01 `"Employed - at work"'
label define spempstat_lbl 02 `"Employed - not at work"', add
label define spempstat_lbl 03 `"Not employed"', add
label define spempstat_lbl 04 `"Retired"', add
label define spempstat_lbl 05 `"Disabled"', add
label define spempstat_lbl 06 `"Unable to work"', add
label define spempstat_lbl 96 `"Refused"', add
label define spempstat_lbl 97 `"Don't know"', add
label define spempstat_lbl 98 `"Blank"', add
label define spempstat_lbl 99 `"NIU (Not in universe)"', add
label values spempstat spempstat_lbl

label define spusualhrs_lbl 000 `"0"'
label define spusualhrs_lbl 001 `"1"', add
label define spusualhrs_lbl 002 `"2"', add
label define spusualhrs_lbl 003 `"3"', add
label define spusualhrs_lbl 004 `"4"', add
label define spusualhrs_lbl 005 `"5"', add
label define spusualhrs_lbl 006 `"6"', add
label define spusualhrs_lbl 007 `"7"', add
label define spusualhrs_lbl 008 `"8"', add
label define spusualhrs_lbl 009 `"9"', add
label define spusualhrs_lbl 010 `"10"', add
label define spusualhrs_lbl 011 `"11"', add
label define spusualhrs_lbl 012 `"12"', add
label define spusualhrs_lbl 013 `"13"', add
label define spusualhrs_lbl 014 `"14"', add
label define spusualhrs_lbl 015 `"15"', add
label define spusualhrs_lbl 016 `"16"', add
label define spusualhrs_lbl 017 `"17"', add
label define spusualhrs_lbl 018 `"18"', add
label define spusualhrs_lbl 019 `"19"', add
label define spusualhrs_lbl 020 `"20"', add
label define spusualhrs_lbl 021 `"21"', add
label define spusualhrs_lbl 022 `"22"', add
label define spusualhrs_lbl 023 `"23"', add
label define spusualhrs_lbl 024 `"24"', add
label define spusualhrs_lbl 025 `"25"', add
label define spusualhrs_lbl 026 `"26"', add
label define spusualhrs_lbl 027 `"27"', add
label define spusualhrs_lbl 028 `"28"', add
label define spusualhrs_lbl 029 `"29"', add
label define spusualhrs_lbl 030 `"30"', add
label define spusualhrs_lbl 031 `"31"', add
label define spusualhrs_lbl 032 `"32"', add
label define spusualhrs_lbl 033 `"33"', add
label define spusualhrs_lbl 034 `"34"', add
label define spusualhrs_lbl 035 `"35"', add
label define spusualhrs_lbl 036 `"36"', add
label define spusualhrs_lbl 037 `"37"', add
label define spusualhrs_lbl 038 `"38"', add
label define spusualhrs_lbl 039 `"39"', add
label define spusualhrs_lbl 040 `"40"', add
label define spusualhrs_lbl 041 `"41"', add
label define spusualhrs_lbl 042 `"42"', add
label define spusualhrs_lbl 043 `"43"', add
label define spusualhrs_lbl 044 `"44"', add
label define spusualhrs_lbl 045 `"45"', add
label define spusualhrs_lbl 046 `"46"', add
label define spusualhrs_lbl 047 `"47"', add
label define spusualhrs_lbl 048 `"48"', add
label define spusualhrs_lbl 049 `"49"', add
label define spusualhrs_lbl 050 `"50"', add
label define spusualhrs_lbl 051 `"51"', add
label define spusualhrs_lbl 052 `"52"', add
label define spusualhrs_lbl 053 `"53"', add
label define spusualhrs_lbl 054 `"54"', add
label define spusualhrs_lbl 055 `"55"', add
label define spusualhrs_lbl 056 `"56"', add
label define spusualhrs_lbl 057 `"57"', add
label define spusualhrs_lbl 058 `"58"', add
label define spusualhrs_lbl 059 `"59"', add
label define spusualhrs_lbl 060 `"60"', add
label define spusualhrs_lbl 061 `"61"', add
label define spusualhrs_lbl 062 `"62"', add
label define spusualhrs_lbl 063 `"63"', add
label define spusualhrs_lbl 064 `"64"', add
label define spusualhrs_lbl 065 `"65"', add
label define spusualhrs_lbl 066 `"66"', add
label define spusualhrs_lbl 067 `"67"', add
label define spusualhrs_lbl 068 `"68"', add
label define spusualhrs_lbl 069 `"69"', add
label define spusualhrs_lbl 070 `"70"', add
label define spusualhrs_lbl 071 `"71"', add
label define spusualhrs_lbl 072 `"72"', add
label define spusualhrs_lbl 073 `"73"', add
label define spusualhrs_lbl 074 `"74"', add
label define spusualhrs_lbl 075 `"75"', add
label define spusualhrs_lbl 076 `"76"', add
label define spusualhrs_lbl 077 `"77"', add
label define spusualhrs_lbl 078 `"78"', add
label define spusualhrs_lbl 079 `"79"', add
label define spusualhrs_lbl 080 `"80"', add
label define spusualhrs_lbl 081 `"81"', add
label define spusualhrs_lbl 082 `"82"', add
label define spusualhrs_lbl 083 `"83"', add
label define spusualhrs_lbl 084 `"84"', add
label define spusualhrs_lbl 085 `"85"', add
label define spusualhrs_lbl 086 `"86"', add
label define spusualhrs_lbl 087 `"87"', add
label define spusualhrs_lbl 088 `"88"', add
label define spusualhrs_lbl 089 `"89"', add
label define spusualhrs_lbl 090 `"90"', add
label define spusualhrs_lbl 091 `"91"', add
label define spusualhrs_lbl 092 `"92"', add
label define spusualhrs_lbl 093 `"93"', add
label define spusualhrs_lbl 094 `"94"', add
label define spusualhrs_lbl 095 `"95"', add
label define spusualhrs_lbl 096 `"96"', add
label define spusualhrs_lbl 097 `"97"', add
label define spusualhrs_lbl 098 `"98"', add
label define spusualhrs_lbl 099 `"99"', add
label define spusualhrs_lbl 995 `"Hours vary"', add
label define spusualhrs_lbl 999 `"NIU (Not in universe)"', add
label values spusualhrs spusualhrs_lbl

label define kidund18_lbl 00 `"No"'
label define kidund18_lbl 01 `"Yes"', add
label define kidund18_lbl 99 `"NIU (Not in universe)"', add
label values kidund18 kidund18_lbl

label define hh_numownkids_lbl 00 `"0"'
label define hh_numownkids_lbl 01 `"1"', add
label define hh_numownkids_lbl 02 `"2"', add
label define hh_numownkids_lbl 03 `"3"', add
label define hh_numownkids_lbl 04 `"4"', add
label define hh_numownkids_lbl 05 `"5"', add
label define hh_numownkids_lbl 06 `"6"', add
label define hh_numownkids_lbl 07 `"7"', add
label define hh_numownkids_lbl 08 `"8"', add
label define hh_numownkids_lbl 09 `"9"', add
label define hh_numownkids_lbl 10 `"10"', add
label define hh_numownkids_lbl 99 `"NIU (Not in universe)"', add
label values hh_numownkids hh_numownkids_lbl

label define kidund13_lbl 00 `"No"'
label define kidund13_lbl 01 `"Yes"', add
label define kidund13_lbl 99 `"NIU (Not in universe)"', add
label values kidund13 kidund13_lbl

label define kidund1_lbl 00 `"No"'
label define kidund1_lbl 01 `"Yes"', add
label define kidund1_lbl 99 `"NIU (Not in universe)"', add
label values kidund1 kidund1_lbl

label define kid1to2_lbl 00 `"No"'
label define kid1to2_lbl 01 `"Yes"', add
label define kid1to2_lbl 99 `"NIU (Not in universe)"', add
label values kid1to2 kid1to2_lbl

label define kid3to5_lbl 00 `"No"'
label define kid3to5_lbl 01 `"Yes"', add
label define kid3to5_lbl 99 `"NIU (Not in universe)"', add
label values kid3to5 kid3to5_lbl

label define kid6to12_lbl 00 `"No"'
label define kid6to12_lbl 01 `"Yes"', add
label define kid6to12_lbl 99 `"NIU (Not in universe)"', add
label values kid6to12 kid6to12_lbl

label define kid13to17_lbl 00 `"No"'
label define kid13to17_lbl 01 `"Yes"', add
label define kid13to17_lbl 99 `"NIU (Not in universe)"', add
label values kid13to17 kid13to17_lbl

label define dtrund18_lbl 00 `"No"'
label define dtrund18_lbl 01 `"Yes"', add
label define dtrund18_lbl 99 `"NIU (Not in universe)"', add
label values dtrund18 dtrund18_lbl

label define dtrund1_lbl 00 `"No"'
label define dtrund1_lbl 01 `"Yes"', add
label define dtrund1_lbl 99 `"NIU (Not in universe)"', add
label values dtrund1 dtrund1_lbl

label define dtr1to2_lbl 00 `"No"'
label define dtr1to2_lbl 01 `"Yes"', add
label define dtr1to2_lbl 99 `"NIU (Not in universe)"', add
label values dtr1to2 dtr1to2_lbl

label define dtr3to5_lbl 00 `"No"'
label define dtr3to5_lbl 01 `"Yes"', add
label define dtr3to5_lbl 99 `"NIU (Not in universe)"', add
label values dtr3to5 dtr3to5_lbl

label define dtr6to12_lbl 00 `"No"'
label define dtr6to12_lbl 01 `"Yes"', add
label define dtr6to12_lbl 99 `"NIU (Not in universe)"', add
label values dtr6to12 dtr6to12_lbl

label define dtr13to17_lbl 00 `"No"'
label define dtr13to17_lbl 01 `"Yes"', add
label define dtr13to17_lbl 99 `"NIU (Not in universe)"', add
label values dtr13to17 dtr13to17_lbl

label define sonund18_lbl 00 `"No"'
label define sonund18_lbl 01 `"Yes"', add
label define sonund18_lbl 99 `"NIU (Not in universe)"', add
label values sonund18 sonund18_lbl

label define sonund1_lbl 00 `"No"'
label define sonund1_lbl 01 `"Yes"', add
label define sonund1_lbl 99 `"NIU (Not in universe)"', add
label values sonund1 sonund1_lbl

label define son1to2_lbl 00 `"No"'
label define son1to2_lbl 01 `"Yes"', add
label define son1to2_lbl 99 `"NIU (Not in universe)"', add
label values son1to2 son1to2_lbl

label define son3to5_lbl 00 `"No"'
label define son3to5_lbl 01 `"Yes"', add
label define son3to5_lbl 99 `"NIU (Not in universe)"', add
label values son3to5 son3to5_lbl

label define son6to12_lbl 00 `"No"'
label define son6to12_lbl 01 `"Yes"', add
label define son6to12_lbl 99 `"NIU (Not in universe)"', add
label values son6to12 son6to12_lbl

label define son13to17_lbl 00 `"No"'
label define son13to17_lbl 01 `"Yes"', add
label define son13to17_lbl 99 `"NIU (Not in universe)"', add
label values son13to17 son13to17_lbl

label define nonhhchild_lbl 00 `"No"'
label define nonhhchild_lbl 01 `"Yes"', add
label define nonhhchild_lbl 99 `"NIU (Not in universe)"', add
label values nonhhchild nonhhchild_lbl

label define nosccrsn1_lbl 01 `"No secondary childcare activities"'
label define nosccrsn1_lbl 02 `"Respondent didn't know"', add
label define nosccrsn1_lbl 03 `"Respondent refused to answer"', add
label define nosccrsn1_lbl 04 `"Child was away from home"', add
label define nosccrsn1_lbl 05 `"Respondent was away from home"', add
label define nosccrsn1_lbl 96 `"Refused"', add
label define nosccrsn1_lbl 97 `"Don't know"', add
label define nosccrsn1_lbl 98 `"Blank"', add
label define nosccrsn1_lbl 99 `"NIU (Not in universe)"', add
label values nosccrsn1 nosccrsn1_lbl

label define nosccrsn2_lbl 01 `"No secondary childcare activities"'
label define nosccrsn2_lbl 02 `"Respondent didn't know"', add
label define nosccrsn2_lbl 03 `"Respondent refused to answer"', add
label define nosccrsn2_lbl 04 `"Child was away from home"', add
label define nosccrsn2_lbl 05 `"Respondent was away from home"', add
label define nosccrsn2_lbl 97 `"Don't know"', add
label define nosccrsn2_lbl 98 `"Blank"', add
label define nosccrsn2_lbl 99 `"NIU (Not in universe)"', add
label values nosccrsn2 nosccrsn2_lbl

label define eh_resp_lbl 00 `"No"'
label define eh_resp_lbl 01 `"Yes"', add
label define eh_resp_lbl 99 `"Not an ATUS respondent"', add
label values eh_resp eh_resp_lbl

label define foodshop_lbl 01 `"Yes"'
label define foodshop_lbl 02 `"No"', add
label define foodshop_lbl 03 `"Split equally with other HH member(s)"', add
label define foodshop_lbl 96 `"Refused"', add
label define foodshop_lbl 97 `"Don't know"', add
label define foodshop_lbl 99 `"NIU (Not in universe)"', add
label values foodshop foodshop_lbl

label define mealprep_lbl 01 `"Yes"'
label define mealprep_lbl 02 `"No"', add
label define mealprep_lbl 03 `"Split equally with other household member(s)"', add
label define mealprep_lbl 96 `"Refused"', add
label define mealprep_lbl 97 `"Don't know"', add
label define mealprep_lbl 99 `"NIU (Not in universe)"', add
label values mealprep mealprep_lbl

label define soda_lbl 01 `"Yes"'
label define soda_lbl 02 `"No"', add
label define soda_lbl 96 `"Refused"', add
label define soda_lbl 97 `"Don't Know"', add
label define soda_lbl 99 `"NIU"', add
label values soda soda_lbl

label define dietsoda_lbl 01 `"Diet"'
label define dietsoda_lbl 02 `"Regular"', add
label define dietsoda_lbl 03 `"Both"', add
label define dietsoda_lbl 96 `"Refused"', add
label define dietsoda_lbl 97 `"Don't know"', add
label define dietsoda_lbl 99 `"NIU"', add
label values dietsoda dietsoda_lbl

label define milk_lbl 01 `"Yes"'
label define milk_lbl 02 `"No"', add
label define milk_lbl 96 `"Refused"', add
label define milk_lbl 97 `"Don't Know"', add
label define milk_lbl 99 `"NIU"', add
label values milk milk_lbl

label define meat_lbl 01 `"Yes"'
label define meat_lbl 02 `"No"', add
label define meat_lbl 96 `"Refused"', add
label define meat_lbl 97 `"Don't Know"', add
label define meat_lbl 99 `"NIU"', add
label values meat meat_lbl

label define store_lbl 01 `"Grocery store"'
label define store_lbl 02 `"Supercenter"', add
label define store_lbl 03 `"Warehouse club"', add
label define store_lbl 04 `"Drugstore or convenience store"', add
label define store_lbl 05 `"Some other place"', add
label define store_lbl 96 `"Refused"', add
label define store_lbl 97 `"Don't know"', add
label define store_lbl 99 `"NIU"', add
label values store store_lbl

label define streason_lbl 01 `"Price"'
label define streason_lbl 02 `"Location"', add
label define streason_lbl 03 `"Quality of Products"', add
label define streason_lbl 04 `"Variety of Products"', add
label define streason_lbl 05 `"Customer Service"', add
label define streason_lbl 06 `"Physical Safety"', add
label define streason_lbl 07 `"Other"', add
label define streason_lbl 96 `"Refused"', add
label define streason_lbl 97 `"Don't Know"', add
label define streason_lbl 99 `"NIU"', add
label values streason streason_lbl

label define exercise_lbl 01 `"Yes"'
label define exercise_lbl 02 `"No"', add
label define exercise_lbl 96 `"Refused"', add
label define exercise_lbl 97 `"Don't Know"', add
label define exercise_lbl 99 `"NIU"', add
label values exercise exercise_lbl

label define fastfd_lbl 01 `"Yes"'
label define fastfd_lbl 02 `"No"', add
label define fastfd_lbl 96 `"Refused"', add
label define fastfd_lbl 97 `"Don't Know"', add
label define fastfd_lbl 99 `"NIU"', add
label values fastfd fastfd_lbl

label define fastfdfreq_lbl 96 `"Refused"'
label define fastfdfreq_lbl 97 `"Don't know"', add
label define fastfdfreq_lbl 99 `"NIU"', add
label values fastfdfreq fastfdfreq_lbl

label define alldaydrk_lbl 01 `"Yes"'
label define alldaydrk_lbl 02 `"No"', add
label define alldaydrk_lbl 99 `"NIU (not in universe)"', add
label values alldaydrk alldaydrk_lbl

label define fdtherm_lbl 01 `"Yes"'
label define fdtherm_lbl 02 `"No"', add
label define fdtherm_lbl 96 `"Refused"', add
label define fdtherm_lbl 97 `"Don't Know"', add
label define fdtherm_lbl 99 `"NIU"', add
label values fdtherm fdtherm_lbl

label define alldayeat_lbl 01 `"Yes"'
label define alldayeat_lbl 02 `"No"', add
label define alldayeat_lbl 99 `"NIU (not in universe)"', add
label values alldayeat alldayeat_lbl

label define enoughfd_lbl 10 `"Enough to eat"'
label define enoughfd_lbl 11 `"Enough of the kinds of food I/we want to eat"', add
label define enoughfd_lbl 12 `"Enough, but not always the kinds of food I/we want to eat"', add
label define enoughfd_lbl 20 `"Sometimes not enough to eat"', add
label define enoughfd_lbl 30 `"Often not enough to eat"', add
label define enoughfd_lbl 96 `"Refused"', add
label define enoughfd_lbl 97 `"Don't Know"', add
label define enoughfd_lbl 99 `"NIU"', add
label values enoughfd enoughfd_lbl

label define anysecdrk_lbl 01 `"Yes"'
label define anysecdrk_lbl 02 `"No"', add
label define anysecdrk_lbl 96 `"Refused"', add
label define anysecdrk_lbl 97 `"Don't know"', add
label define anysecdrk_lbl 99 `"NIU (not in universe)"', add
label values anysecdrk anysecdrk_lbl

label define anyseceat_lbl 01 `"Yes"'
label define anyseceat_lbl 02 `"No"', add
label define anyseceat_lbl 96 `"Refused"', add
label define anyseceat_lbl 97 `"Don't know"', add
label define anyseceat_lbl 99 `"NIU (not in universe)"', add
label values anyseceat anyseceat_lbl

label define schlbrk_lbl 01 `"Yes"'
label define schlbrk_lbl 02 `"No"', add
label define schlbrk_lbl 99 `"NIU (not in universe)"', add
label values schlbrk schlbrk_lbl

label define schllnch_lbl 01 `"Yes"'
label define schllnch_lbl 02 `"No"', add
label define schllnch_lbl 99 `"NIU (not in universe)"', add
label values schllnch schllnch_lbl

label define diffany_lbl 01 `"No difficulty"'
label define diffany_lbl 02 `"Has difficulty"', add
label define diffany_lbl 99 `"NIU (Not in universe)"', add
label values diffany diffany_lbl

label define diffcare_lbl 01 `"No personal care difficulty"'
label define diffcare_lbl 02 `"Has personal care difficulty"', add
label define diffcare_lbl 99 `"NIU (Not in universe)"', add
label values diffcare diffcare_lbl

label define diffeye_lbl 01 `"No vision difficulty"'
label define diffeye_lbl 02 `"Has vision difficulty"', add
label define diffeye_lbl 99 `"NIU (Not in universe)"', add
label values diffeye diffeye_lbl

label define diffhear_lbl 01 `"No hearing difficulty"'
label define diffhear_lbl 02 `"Has hearing difficulty"', add
label define diffhear_lbl 99 `"NIU (Not in universe)"', add
label values diffhear diffhear_lbl

label define diffmob_lbl 01 `"No mobility limitation"'
label define diffmob_lbl 02 `"Has mobility limitation"', add
label define diffmob_lbl 99 `"NIU (Not in universe)"', add
label values diffmob diffmob_lbl

label define diffphys_lbl 01 `"No physical difficulty"'
label define diffphys_lbl 02 `"Has physical difficulty"', add
label define diffphys_lbl 99 `"NIU (Not in universe)"', add
label values diffphys diffphys_lbl

label define diffrem_lbl 01 `"No difficulty remembering"'
label define diffrem_lbl 02 `"Has difficulty remembering"', add
label define diffrem_lbl 99 `"NIU (Not in universe)"', add
label values diffrem diffrem_lbl

label define introdate_lbl 001 `"1"'
label define introdate_lbl 002 `"2"', add
label define introdate_lbl 003 `"3"', add
label define introdate_lbl 004 `"4"', add
label define introdate_lbl 005 `"5"', add
label define introdate_lbl 006 `"6"', add
label define introdate_lbl 007 `"7"', add
label define introdate_lbl 008 `"8"', add
label define introdate_lbl 009 `"9"', add
label define introdate_lbl 010 `"10"', add
label define introdate_lbl 011 `"11"', add
label define introdate_lbl 012 `"12"', add
label define introdate_lbl 013 `"13"', add
label define introdate_lbl 014 `"14"', add
label define introdate_lbl 015 `"15"', add
label define introdate_lbl 016 `"16"', add
label define introdate_lbl 017 `"17"', add
label define introdate_lbl 018 `"18"', add
label define introdate_lbl 019 `"19"', add
label define introdate_lbl 020 `"20"', add
label define introdate_lbl 021 `"21"', add
label define introdate_lbl 022 `"22"', add
label define introdate_lbl 023 `"23"', add
label define introdate_lbl 024 `"24"', add
label define introdate_lbl 025 `"25"', add
label define introdate_lbl 026 `"26"', add
label define introdate_lbl 027 `"27"', add
label define introdate_lbl 028 `"28"', add
label define introdate_lbl 029 `"29"', add
label define introdate_lbl 030 `"30"', add
label define introdate_lbl 031 `"31"', add
label define introdate_lbl 999 `"NIU (Not in universe)"', add
label values introdate introdate_lbl

label define intromonth_lbl 001 `"January"'
label define intromonth_lbl 002 `"February"', add
label define intromonth_lbl 003 `"March"', add
label define intromonth_lbl 004 `"April"', add
label define intromonth_lbl 005 `"May"', add
label define intromonth_lbl 006 `"June"', add
label define intromonth_lbl 007 `"July"', add
label define intromonth_lbl 008 `"August"', add
label define intromonth_lbl 009 `"September"', add
label define intromonth_lbl 010 `"October"', add
label define intromonth_lbl 011 `"November"', add
label define intromonth_lbl 012 `"December"', add
label define intromonth_lbl 999 `"NIU (Not in universe)"', add
label values intromonth intromonth_lbl

label define introyear_lbl 02004 `"2004"'
label define introyear_lbl 02005 `"2005"', add
label define introyear_lbl 02006 `"2006"', add
label define introyear_lbl 02007 `"2007"', add
label define introyear_lbl 02008 `"2008"', add
label define introyear_lbl 02009 `"2009"', add
label define introyear_lbl 02010 `"2010"', add
label define introyear_lbl 02011 `"2011"', add
label define introyear_lbl 02012 `"2012"', add
label define introyear_lbl 02013 `"2013"', add
label define introyear_lbl 02014 `"2014"', add
label define introyear_lbl 02015 `"2015"', add
label define introyear_lbl 02016 `"2016"', add
label define introyear_lbl 02017 `"2017"', add
label define introyear_lbl 02018 `"2018"', add
label define introyear_lbl 02019 `"2019"', add
label define introyear_lbl 02020 `"2020"', add
label define introyear_lbl 02021 `"2021"', add
label define introyear_lbl 02022 `"2022"', add
label define introyear_lbl 99999 `"NIU (Not in universe)"', add
label values introyear introyear_lbl

label define atusdp_lbl 01 `"Yes, same person"'
label define atusdp_lbl 02 `"No, different person"', add
label define atusdp_lbl 99 `"NIU (Not in universe)"', add
label values atusdp atusdp_lbl

label define otherlang_lbl 00 `"No non-English language assigned"'
label define otherlang_lbl 01 `"Spanish language assigned"', add
label define otherlang_lbl 02 `"Other non-English language assigned"', add
label define otherlang_lbl 99 `"NIU (Not in universe)"', add
label values otherlang otherlang_lbl

label define incent_lbl 00 `"Non-incentive case"'
label define incent_lbl 01 `"Incentive case"', add
label define incent_lbl 02 `"Incentive expansion case"', add
label define incent_lbl 99 `"NIU (Not in universe)"', add
label values incent incent_lbl

label define totact_lbl 000 `"under 5"'
label define totact_lbl 001 `"1"', add
label define totact_lbl 002 `"2"', add
label define totact_lbl 003 `"3"', add
label define totact_lbl 004 `"4"', add
label define totact_lbl 005 `"5"', add
label define totact_lbl 006 `"6"', add
label define totact_lbl 007 `"7"', add
label define totact_lbl 008 `"8"', add
label define totact_lbl 009 `"9"', add
label define totact_lbl 010 `"10"', add
label define totact_lbl 011 `"11"', add
label define totact_lbl 012 `"12"', add
label define totact_lbl 013 `"13"', add
label define totact_lbl 014 `"14"', add
label define totact_lbl 015 `"15"', add
label define totact_lbl 016 `"16"', add
label define totact_lbl 017 `"17"', add
label define totact_lbl 018 `"18"', add
label define totact_lbl 019 `"19"', add
label define totact_lbl 020 `"20"', add
label define totact_lbl 021 `"21"', add
label define totact_lbl 022 `"22"', add
label define totact_lbl 023 `"23"', add
label define totact_lbl 024 `"24"', add
label define totact_lbl 025 `"25"', add
label define totact_lbl 026 `"26"', add
label define totact_lbl 027 `"27"', add
label define totact_lbl 028 `"28"', add
label define totact_lbl 029 `"29"', add
label define totact_lbl 030 `"30"', add
label define totact_lbl 031 `"31"', add
label define totact_lbl 032 `"32"', add
label define totact_lbl 033 `"33"', add
label define totact_lbl 034 `"34"', add
label define totact_lbl 035 `"35"', add
label define totact_lbl 036 `"36"', add
label define totact_lbl 037 `"37"', add
label define totact_lbl 038 `"38"', add
label define totact_lbl 039 `"39"', add
label define totact_lbl 040 `"40"', add
label define totact_lbl 041 `"41"', add
label define totact_lbl 042 `"42"', add
label define totact_lbl 043 `"43"', add
label define totact_lbl 044 `"44"', add
label define totact_lbl 045 `"45"', add
label define totact_lbl 046 `"46"', add
label define totact_lbl 047 `"47"', add
label define totact_lbl 048 `"48"', add
label define totact_lbl 049 `"49"', add
label define totact_lbl 050 `"50"', add
label define totact_lbl 051 `"51"', add
label define totact_lbl 052 `"52"', add
label define totact_lbl 053 `"53"', add
label define totact_lbl 054 `"54"', add
label define totact_lbl 055 `"55"', add
label define totact_lbl 056 `"56"', add
label define totact_lbl 057 `"57"', add
label define totact_lbl 058 `"58"', add
label define totact_lbl 059 `"59"', add
label define totact_lbl 060 `"60"', add
label define totact_lbl 061 `"61"', add
label define totact_lbl 062 `"62"', add
label define totact_lbl 063 `"63"', add
label define totact_lbl 064 `"64"', add
label define totact_lbl 065 `"65"', add
label define totact_lbl 066 `"66"', add
label define totact_lbl 067 `"67"', add
label define totact_lbl 068 `"68"', add
label define totact_lbl 069 `"69"', add
label define totact_lbl 070 `"70"', add
label define totact_lbl 071 `"71"', add
label define totact_lbl 072 `"72"', add
label define totact_lbl 073 `"73"', add
label define totact_lbl 074 `"74"', add
label define totact_lbl 075 `"75"', add
label define totact_lbl 076 `"76"', add
label define totact_lbl 077 `"77"', add
label define totact_lbl 078 `"78"', add
label define totact_lbl 079 `"79"', add
label define totact_lbl 080 `"80"', add
label define totact_lbl 081 `"81"', add
label define totact_lbl 082 `"82"', add
label define totact_lbl 083 `"83"', add
label define totact_lbl 084 `"84"', add
label define totact_lbl 085 `"85"', add
label define totact_lbl 086 `"86"', add
label define totact_lbl 087 `"87"', add
label define totact_lbl 088 `"88"', add
label define totact_lbl 089 `"89"', add
label define totact_lbl 090 `"90"', add
label define totact_lbl 091 `"91"', add
label define totact_lbl 999 `"NIU (Not in universe)"', add
label values totact totact_lbl

label define dataqual_lbl 0110 `"R providing wrong answer"'
label define dataqual_lbl 0120 `"R not able to remember activities"', add
label define dataqual_lbl 0130 `"R reporting long duration activities"', add
label define dataqual_lbl 0140 `"Other"', add
label define dataqual_lbl 0200 `"No data quality problems identified"', add
label define dataqual_lbl 9998 `"Blank"', add
label define dataqual_lbl 9999 `"NIU (Not in universe)"', add
label values dataqual dataqual_lbl

label define outcome_lbl 0100 `"Complete interview"'
label define outcome_lbl 0200 `"Sufficient partial"', add
label define outcome_lbl 0301 `"Direct refusal"', add
label define outcome_lbl 0303 `"Data quality problem"', add
label define outcome_lbl 0401 `"Incomplete callbacks"', add
label define outcome_lbl 0402 `"Never contacted, confirmed number"', add
label define outcome_lbl 0403 `"Temporarily unavailable"', add
label define outcome_lbl 0501 `"Language barrier"', add
label define outcome_lbl 0502 `"Designated person unavailable"', add
label define outcome_lbl 0503 `"Other non-interview"', add
label define outcome_lbl 0504 `"Invalid input"', add
label define outcome_lbl 0601 `"Desginated person underage"', add
label define outcome_lbl 0602 `"Designated person moved out/Not Regular Residence"', add
label define outcome_lbl 0603 `"Designated person not a household member/Vacant"', add
label define outcome_lbl 0604 `"Designated person in Armed forces"', add
label define outcome_lbl 0605 `"Removed from sample/Miscellaneous"', add
label define outcome_lbl 0607 `"Temporarily unavailable/institutionalized"', add
label define outcome_lbl 0701 `"Privacy detectors (early 2003)"', add
label define outcome_lbl 0702 `"Privacy Detectors"', add
label define outcome_lbl 0703 `"Never contacted, unconfirmed number"', add
label define outcome_lbl 0704 `"Never tried, no telephone number household"', add
label define outcome_lbl 0705 `"Unpublished/Incorrect phone number"', add
label define outcome_lbl 0707 `"Unproductive call counter"', add
label define outcome_lbl 9999 `"NIU (Not in universe)"', add
label values outcome outcome_lbl

label define outcome_alt_lbl 0110 `"Complete interview"'
label define outcome_alt_lbl 0120 `"Sufficient partial"', add
label define outcome_alt_lbl 0210 `"Designated person underage"', add
label define outcome_alt_lbl 0220 `"Designated person in Armed Forces"', add
label define outcome_alt_lbl 0230 `"Removed from sample/Miscellaneous"', add
label define outcome_alt_lbl 0240 `"Temporarily unavailable, institutionalized"', add
label define outcome_alt_lbl 0260 `"Designated person not a household member/vacant"', add
label define outcome_alt_lbl 0310 `"Designated person moved out/Not regular residence"', add
label define outcome_alt_lbl 0320 `"Designated person unavailable:  absent, ill or hospitalized"', add
label define outcome_alt_lbl 0410 `"Privacy detectors"', add
label define outcome_alt_lbl 0420 `"Privacy detectors (early 2003)"', add
label define outcome_alt_lbl 0430 `"Unproductive call counter"', add
label define outcome_alt_lbl 0440 `"Never contacted, unconfirmed number"', add
label define outcome_alt_lbl 0450 `"Never tried, no telephone number household"', add
label define outcome_alt_lbl 0510 `"Incomplete callbacks"', add
label define outcome_alt_lbl 0520 `"Never contacted, confirmed number"', add
label define outcome_alt_lbl 0530 `"Designated person temporarily unavailable: absent, ill or hospitalized"', add
label define outcome_alt_lbl 0610 `"Language barrier"', add
label define outcome_alt_lbl 0620 `"Invalid input"', add
label define outcome_alt_lbl 0630 `"Other non-interview"', add
label define outcome_alt_lbl 0710 `"Direct refusal"', add
label define outcome_alt_lbl 0720 `"Data quality problem"', add
label define outcome_alt_lbl 0810 `"Unpublished/incorrect phone number"', add
label define outcome_alt_lbl 9999 `"NIU (Not in universe)"', add
label values outcome_alt outcome_alt_lbl

label define wb_resp_lbl 00 `"No"'
label define wb_resp_lbl 01 `"Yes"', add
label define wb_resp_lbl 99 `"Not an ATUS respondent"', add
label values wb_resp wb_resp_lbl

label define rested_lbl 01 `"Very"'
label define rested_lbl 02 `"Somewhat"', add
label define rested_lbl 03 `"A Little"', add
label define rested_lbl 04 `"Not at all"', add
label define rested_lbl 99 `"NIU (Not in universe)"', add
label values rested rested_lbl

label define highbp_lbl 01 `"Yes"'
label define highbp_lbl 02 `"No"', add
label define highbp_lbl 99 `"NIU (Not in universe)"', add
label values highbp highbp_lbl

label define painmed_lbl 01 `"Yes"'
label define painmed_lbl 02 `"No"', add
label define painmed_lbl 99 `"NIU (Not in universe)"', add
label values painmed painmed_lbl

label define wbtypical_lbl 01 `"Better"'
label define wbtypical_lbl 02 `"The same"', add
label define wbtypical_lbl 03 `"Worse"', add
label define wbtypical_lbl 99 `"NIU (Not in universe)"', add
label values wbtypical wbtypical_lbl

label define wbladder_lbl 000 `"Worst Possible Life"'
label define wbladder_lbl 001 `"001"', add
label define wbladder_lbl 002 `"002"', add
label define wbladder_lbl 003 `"003"', add
label define wbladder_lbl 004 `"004"', add
label define wbladder_lbl 005 `"005"', add
label define wbladder_lbl 006 `"006"', add
label define wbladder_lbl 007 `"007"', add
label define wbladder_lbl 008 `"008"', add
label define wbladder_lbl 009 `"009"', add
label define wbladder_lbl 010 `"Best Possible Life"', add
label define wbladder_lbl 999 `"NIU (Not in universe)"', add
label values wbladder wbladder_lbl

label define pemomtyp_lbl 00 `"No mother present"'
label define pemomtyp_lbl 01 `"Biological"', add
label define pemomtyp_lbl 02 `"Step"', add
label define pemomtyp_lbl 03 `"Adopted"', add
label define pemomtyp_lbl 99 `"NIU (Not in Universe)"', add
label values pemomtyp pemomtyp_lbl

label define pedadtyp_lbl 00 `"No father present"'
label define pedadtyp_lbl 01 `"Biological"', add
label define pedadtyp_lbl 02 `"Step"', add
label define pedadtyp_lbl 03 `"Adopted"', add
label define pedadtyp_lbl 99 `"NIU (Not in Universe)"', add
label values pedadtyp pedadtyp_lbl

label define pepar1typ_lbl 00 `"No first parent present"'
label define pepar1typ_lbl 01 `"Biological"', add
label define pepar1typ_lbl 02 `"Step"', add
label define pepar1typ_lbl 03 `"Adopted"', add
label define pepar1typ_lbl 99 `"NIU (Not in Universe)"', add
label values pepar1typ pepar1typ_lbl

label define pepar2typ_lbl 00 `"No second parent present"'
label define pepar2typ_lbl 01 `"Biological"', add
label define pepar2typ_lbl 02 `"Step"', add
label define pepar2typ_lbl 03 `"Adopted"', add
label define pepar2typ_lbl 99 `"NIU (Not in Universe)"', add
label values pepar2typ pepar2typ_lbl

label define pelnpar1_lbl 00 `"Parent 1 not present"'
label define pelnpar1_lbl 99 `"NIU (Not in Universe)"', add
label values pelnpar1 pelnpar1_lbl

label define pelnpar2_lbl 00 `"Parent 2 not present"'
label define pelnpar2_lbl 99 `"NIU (Not in Universe)"', add
label values pelnpar2 pelnpar2_lbl

label define lv_resp_lbl 00 `"No"'
label define lv_resp_lbl 01 `"Yes"', add
label define lv_resp_lbl 98 `"Not Eligible"', add
label define lv_resp_lbl 99 `"Not an ATUS respondent"', add
label values lv_resp lv_resp_lbl

label define rcvpdlv_lbl 00 `"No"'
label define rcvpdlv_lbl 01 `"Yes"', add
label define rcvpdlv_lbl 96 `"Refused"', add
label define rcvpdlv_lbl 97 `"Don't know"', add
label define rcvpdlv_lbl 99 `"NIU (Not in universe)"', add
label values rcvpdlv rcvpdlv_lbl

label define rcvpdself_lbl 00 `"No"'
label define rcvpdself_lbl 01 `"Yes"', add
label define rcvpdself_lbl 96 `"Refused"', add
label define rcvpdself_lbl 97 `"Don't know"', add
label define rcvpdself_lbl 98 `"Blank"', add
label define rcvpdself_lbl 99 `"NIU (Not in universe)"', add
label values rcvpdself rcvpdself_lbl

label define rcvpdfam_lbl 00 `"No"'
label define rcvpdfam_lbl 01 `"Yes"', add
label define rcvpdfam_lbl 96 `"Refused"', add
label define rcvpdfam_lbl 97 `"Don't know"', add
label define rcvpdfam_lbl 98 `"Blank"', add
label define rcvpdfam_lbl 99 `"NIU (Not in universe)"', add
label values rcvpdfam rcvpdfam_lbl

label define rcvpdchcare_lbl 00 `"No"'
label define rcvpdchcare_lbl 01 `"Yes"', add
label define rcvpdchcare_lbl 96 `"Refused"', add
label define rcvpdchcare_lbl 97 `"Don't know"', add
label define rcvpdchcare_lbl 98 `"Blank"', add
label define rcvpdchcare_lbl 99 `"NIU (Not in universe)"', add
label values rcvpdchcare rcvpdchcare_lbl


label define rcvpdelcare_lbl 00 `"No"'
label define rcvpdelcare_lbl 01 `"Yes"', add
label define rcvpdelcare_lbl 96 `"Refused"', add
label define rcvpdelcare_lbl 97 `"Don't know"', add
label define rcvpdelcare_lbl 98 `"Blank"', add
label define rcvpdelcare_lbl 99 `"NIU (Not in universe)"', add
label values rcvpdelcare rcvpdelcare_lbl

label define rcvpdvac_lbl 00 `"No"'
label define rcvpdvac_lbl 01 `"Yes"', add
label define rcvpdvac_lbl 96 `"Refused"', add
label define rcvpdvac_lbl 97 `"Don't know"', add
label define rcvpdvac_lbl 98 `"Blank"', add
label define rcvpdvac_lbl 99 `"NIU (Not in universe)"', add
label values rcvpdvac rcvpdvac_lbl

label define rcvpdpers_lbl 00 `"No"'
label define rcvpdpers_lbl 01 `"Yes"', add
label define rcvpdpers_lbl 96 `"Refused"', add
label define rcvpdpers_lbl 97 `"Don't know"', add
label define rcvpdpers_lbl 98 `"Blank"', add
label define rcvpdpers_lbl 99 `"NIU (Not in universe)"', add
label values rcvpdpers rcvpdpers_lbl

label define rcvpdchild_lbl 00 `"No"'
label define rcvpdchild_lbl 01 `"Yes"', add
label define rcvpdchild_lbl 96 `"Refused"', add
label define rcvpdchild_lbl 97 `"Don't know"', add
label define rcvpdchild_lbl 98 `"Blank"', add
label define rcvpdchild_lbl 99 `"NIU (Not in universe)"', add
label values rcvpdchild rcvpdchild_lbl

label define rcvunpdlv_lbl 00 `"No"'
label define rcvunpdlv_lbl 01 `"Yes"', add
label define rcvunpdlv_lbl 96 `"Refused"', add
label define rcvunpdlv_lbl 97 `"Don't know"', add
label define rcvunpdlv_lbl 99 `"NIU (Not in universe)"', add
label values rcvunpdlv rcvunpdlv_lbl

label define rcvunself_lbl 00 `"No"'
label define rcvunself_lbl 01 `"Yes"', add
label define rcvunself_lbl 02 `"It depends"', add
label define rcvunself_lbl 96 `"Refused"', add
label define rcvunself_lbl 97 `"Don't know"', add
label define rcvunself_lbl 98 `"Blank"', add
label define rcvunself_lbl 99 `"NIU (Not in universe)"', add
label values rcvunself rcvunself_lbl

label define rcvunfam_lbl 00 `"No"'
label define rcvunfam_lbl 01 `"Yes"', add
label define rcvunfam_lbl 02 `"It depends"', add
label define rcvunfam_lbl 96 `"Refused"', add
label define rcvunfam_lbl 97 `"Don't know"', add
label define rcvunfam_lbl 98 `"Blank"', add
label define rcvunfam_lbl 99 `"NIU (Not in universe)"', add
label values rcvunfam rcvunfam_lbl

label define rcvunchcare_lbl 00 `"No"'
label define rcvunchcare_lbl 01 `"Yes"', add
label define rcvunchcare_lbl 02 `"It depends"', add
label define rcvunchcare_lbl 96 `"Refused"', add
label define rcvunchcare_lbl 97 `"Don't know"', add
label define rcvunchcare_lbl 98 `"Blank"', add
label define rcvunchcare_lbl 99 `"NIU (Not in universe)"', add
label values rcvunchcare rcvunchcare_lbl

label define rcvunelcare_lbl 00 `"No"'
label define rcvunelcare_lbl 01 `"Yes"', add
label define rcvunelcare_lbl 02 `"It depends"', add
label define rcvunelcare_lbl 96 `"Refused"', add
label define rcvunelcare_lbl 97 `"Don't know"', add
label define rcvunelcare_lbl 98 `"Blank"', add
label define rcvunelcare_lbl 99 `"NIU (Not in universe)"', add
label values rcvunelcare rcvunelcare_lbl

label define rcvunvac_lbl 00 `"No"'
label define rcvunvac_lbl 01 `"Yes"', add
label define rcvunvac_lbl 02 `"It depends"', add
label define rcvunvac_lbl 96 `"Refused"', add
label define rcvunvac_lbl 97 `"Don't know"', add
label define rcvunvac_lbl 98 `"Blank"', add
label define rcvunvac_lbl 99 `"NIU (Not in universe)"', add
label values rcvunvac rcvunvac_lbl

label define rcvunpers_lbl 00 `"No"'
label define rcvunpers_lbl 01 `"Yes"', add
label define rcvunpers_lbl 02 `"It depends"', add
label define rcvunpers_lbl 96 `"Refused"', add
label define rcvunpers_lbl 97 `"Don't know"', add
label define rcvunpers_lbl 98 `"Blank"', add
label define rcvunpers_lbl 99 `"NIU (Not in universe)"', add
label values rcvunpers rcvunpers_lbl

label define rcvunchild_lbl 00 `"No"'
label define rcvunchild_lbl 01 `"Yes"', add
label define rcvunchild_lbl 02 `"It depends"', add
label define rcvunchild_lbl 96 `"Refused"', add
label define rcvunchild_lbl 97 `"Don't know"', add
label define rcvunchild_lbl 98 `"Blank"', add
label define rcvunchild_lbl 99 `"NIU (Not in universe)"', add
label values rcvunchild rcvunchild_lbl

label define evtkunlv_lbl 00 `"No"'
label define evtkunlv_lbl 01 `"Yes"', add
label define evtkunlv_lbl 96 `"Refused"', add
label define evtkunlv_lbl 97 `"Don't know"', add
label define evtkunlv_lbl 98 `"Blank"', add
label define evtkunlv_lbl 99 `"NIU (Not in universe)"', add
label values evtkunlv evtkunlv_lbl

label define evtkunself_lbl 00 `"No"'
label define evtkunself_lbl 01 `"Yes"', add
label define evtkunself_lbl 96 `"Refused"', add
label define evtkunself_lbl 97 `"Don't know"', add
label define evtkunself_lbl 98 `"Blank"', add
label define evtkunself_lbl 99 `"NIU (Not in universe)"', add
label values evtkunself evtkunself_lbl

label define evtkunfam_lbl 00 `"No"'
label define evtkunfam_lbl 01 `"Yes"', add
label define evtkunfam_lbl 96 `"Refused"', add
label define evtkunfam_lbl 97 `"Don't know"', add
label define evtkunfam_lbl 98 `"Blank"', add
label define evtkunfam_lbl 99 `"NIU (Not in universe)"', add
label values evtkunfam evtkunfam_lbl

label define evtkunchcare_lbl 00 `"No"'
label define evtkunchcare_lbl 01 `"Yes"', add
label define evtkunchcare_lbl 96 `"Refused"', add
label define evtkunchcare_lbl 97 `"Don't know"', add
label define evtkunchcare_lbl 98 `"Blank"', add
label define evtkunchcare_lbl 99 `"NIU (Not in universe)"', add
label values evtkunchcare evtkunchcare_lbl

label define evtkunelcare_lbl 00 `"No"'
label define evtkunelcare_lbl 01 `"Yes"', add
label define evtkunelcare_lbl 96 `"Refused"', add
label define evtkunelcare_lbl 97 `"Don't know"', add
label define evtkunelcare_lbl 98 `"Blank"', add
label define evtkunelcare_lbl 99 `"NIU (Not in universe)"', add
label values evtkunelcare evtkunelcare_lbl

label define evtkunvac_lbl 00 `"No"'
label define evtkunvac_lbl 01 `"Yes"', add
label define evtkunvac_lbl 96 `"Refused"', add
label define evtkunvac_lbl 97 `"Don't know"', add
label define evtkunvac_lbl 98 `"Blank"', add
label define evtkunvac_lbl 99 `"NIU (Not in universe)"', add
label values evtkunvac evtkunvac_lbl

label define evtkunpers_lbl 00 `"No"'
label define evtkunpers_lbl 01 `"Yes"', add
label define evtkunpers_lbl 96 `"Refused"', add
label define evtkunpers_lbl 97 `"Don't know"', add
label define evtkunpers_lbl 98 `"Blank"', add
label define evtkunpers_lbl 99 `"NIU (Not in universe)"', add
label values evtkunpers evtkunpers_lbl

label define evtkunchild_lbl 00 `"No"'
label define evtkunchild_lbl 01 `"Yes"', add
label define evtkunchild_lbl 96 `"Refused"', add
label define evtkunchild_lbl 97 `"Don't know"', add
label define evtkunchild_lbl 98 `"Blank"', add
label define evtkunchild_lbl 99 `"NIU (Not in universe)"', add
label values evtkunchild evtkunchild_lbl

label define leavelw_lbl 00 `"No"'
label define leavelw_lbl 01 `"Yes"', add
label define leavelw_lbl 99 `"NIU (Not in universe)"', add
label values leavelw leavelw_lbl

label define qleavelw_lbl 000 `"Value- no change"'
label define qleavelw_lbl 041 `"Blank to allocated value"', add
label define qleavelw_lbl 042 `"Don't know to allocated value"', add
label define qleavelw_lbl 043 `"Refused to allocated value"', add
label define qleavelw_lbl 998 `"Blank"', add
label define qleavelw_lbl 999 `"NIU (Not in universe)"', add
label values qleavelw qleavelw_lbl

label define nolvlwwork_lbl 00 `"No"'
label define nolvlwwork_lbl 01 `"Yes"', add
label define nolvlwwork_lbl 98 `"Blank"', add
label define nolvlwwork_lbl 99 `"NIU (Not in universe)"', add
label values nolvlwwork nolvlwwork_lbl

label define nolvlwsave_lbl 00 `"No"'
label define nolvlwsave_lbl 01 `"Yes"', add
label define nolvlwsave_lbl 98 `"Blank"', add
label define nolvlwsave_lbl 99 `"NIU (Not in universe)"', add
label values nolvlwsave nolvlwsave_lbl

label define nolvlwdeny_lbl 00 `"No"'
label define nolvlwdeny_lbl 01 `"Yes"', add
label define nolvlwdeny_lbl 98 `"Blank"', add
label define nolvlwdeny_lbl 99 `"NIU (Not in universe)"', add
label values nolvlwdeny nolvlwdeny_lbl

label define nolvlwlack_lbl 00 `"No"'
label define nolvlwlack_lbl 01 `"Yes"', add
label define nolvlwlack_lbl 98 `"Blank"', add
label define nolvlwlack_lbl 99 `"NIU (Not in universe)"', add
label values nolvlwlack nolvlwlack_lbl

label define nolvlwfear_lbl 00 `"No"'
label define nolvlwfear_lbl 01 `"Yes"', add
label define nolvlwfear_lbl 98 `"Blank"', add
label define nolvlwfear_lbl 99 `"NIU (Not in universe)"', add
label values nolvlwfear nolvlwfear_lbl

label define nolvlwinc_lbl 00 `"No"'
label define nolvlwinc_lbl 01 `"Yes"', add
label define nolvlwinc_lbl 98 `"Blank"', add
label define nolvlwinc_lbl 99 `"NIU (Not in universe)"', add
label values nolvlwinc nolvlwinc_lbl

label define nolvlwoth_lbl 00 `"No"'
label define nolvlwoth_lbl 01 `"Yes"', add
label define nolvlwoth_lbl 98 `"Blank"', add
label define nolvlwoth_lbl 99 `"NIU (Not in universe)"', add
label values nolvlwoth nolvlwoth_lbl

label define canvary_lbl 00 `"No"'
label define canvary_lbl 01 `"Yes"', add
label define canvary_lbl 96 `"Refused"', add
label define canvary_lbl 97 `"Don't know"', add
label define canvary_lbl 99 `"NIU (Not in universe)"', add
label values canvary canvary_lbl

label define varylw_lbl 00 `"No"'
label define varylw_lbl 01 `"Yes"', add
label define varylw_lbl 97 `"Don't know"', add
label define varylw_lbl 98 `"Blank"', add
label define varylw_lbl 99 `"NIU (Not in universe)"', add
label values varylw varylw_lbl

label define tklvwk_lbl 00 `"No"'
label define tklvwk_lbl 01 `"Yes"', add
label define tklvwk_lbl 96 `"Refused"', add
label define tklvwk_lbl 97 `"Don't know"', add
label define tklvwk_lbl 98 `"Blank"', add
label define tklvwk_lbl 99 `"NIU (Not in universe)"', add
label values tklvwk tklvwk_lbl

label define hrslvwk_lbl 9997 `"Don't know"'
label define hrslvwk_lbl 9998 `"Blank"', add
label define hrslvwk_lbl 9999 `"NIU (Not in universe)"', add
label values hrslvwk hrslvwk_lbl

label define tklvwkmain_lbl 0101 `"Own illness or medical care"'
label define tklvwkmain_lbl 0102 `"Illness or medical care of another family member"', add
label define tklvwkmain_lbl 0103 `"Childcare, other than for illness"', add
label define tklvwkmain_lbl 0104 `"Eldercare, other than for illness"', add
label define tklvwkmain_lbl 0105 `"Vacation"', add
label define tklvwkmain_lbl 0106 `"Errands or personal reasons"', add
label define tklvwkmain_lbl 0107 `"Birth or adoption of a child"', add
label define tklvwkmain_lbl 0108 `"Other"', add
label define tklvwkmain_lbl 9998 `"Blank"', add
label define tklvwkmain_lbl 9999 `"NIU (Not in universe)"', add
label values tklvwkmain tklvwkmain_lbl

label define tklvyest_lbl 0000 `"Did not take leave yesterday"'
label define tklvyest_lbl 0101 `"Own illness or medical care"', add
label define tklvyest_lbl 0102 `"Illness or medical care of another family member"', add
label define tklvyest_lbl 0103 `"Childcare, other than for illness"', add
label define tklvyest_lbl 0104 `"Eldercare, other than for illness"', add
label define tklvyest_lbl 0105 `"Vacation"', add
label define tklvyest_lbl 0106 `"Errands or personal reasons"', add
label define tklvyest_lbl 0107 `"Birth or adoption of a child"', add
label define tklvyest_lbl 0108 `"Other"', add
label define tklvyest_lbl 9997 `"Don't know"', add
label define tklvyest_lbl 9998 `"Blank"', add
label define tklvyest_lbl 9999 `"NIU (Not in universe)"', add
label values tklvyest tklvyest_lbl

label define painlwk_lbl 000 `"no pain at all"'
label define painlwk_lbl 001 `"001"', add
label define painlwk_lbl 002 `"002"', add
label define painlwk_lbl 003 `"003"', add
label define painlwk_lbl 004 `"004"', add
label define painlwk_lbl 005 `"005"', add
label define painlwk_lbl 006 `"006"', add
label define painlwk_lbl 007 `"007"', add
label define painlwk_lbl 008 `"008"', add
label define painlwk_lbl 009 `"009"', add
label define painlwk_lbl 010 `"pain as bad as it can be"', add
label define painlwk_lbl 999 `"NIU (Not in universe)"', add
label values painlwk painlwk_lbl

label define ecyest_lbl 00 `"No"'
label define ecyest_lbl 01 `"Yes"', add
label define ecyest_lbl 96 `"Refused"', add
label define ecyest_lbl 97 `"Don't know"', add
label define ecyest_lbl 99 `"NIU (Not in universe)"', add
label values ecyest ecyest_lbl

label define ecprior_lbl 00 `"No"'
label define ecprior_lbl 01 `"Yes"', add
label define ecprior_lbl 96 `"Refused"', add
label define ecprior_lbl 97 `"Don't know"', add
label define ecprior_lbl 99 `"NIU(Not in universe)"', add
label values ecprior ecprior_lbl

label define ecnum_lbl 01 `"1"'
label define ecnum_lbl 02 `"2"', add
label define ecnum_lbl 03 `"3"', add
label define ecnum_lbl 04 `"4"', add
label define ecnum_lbl 05 `"5"', add
label define ecnum_lbl 97 `"Don't know"', add
label define ecnum_lbl 99 `"NIU (Not in universe)"', add
label values ecnum ecnum_lbl

label define ecfreq_lbl 01 `"Daily"'
label define ecfreq_lbl 02 `"Several times a week"', add
label define ecfreq_lbl 03 `"About once a week"', add
label define ecfreq_lbl 04 `"Several times a month"', add
label define ecfreq_lbl 05 `"Once a month"', add
label define ecfreq_lbl 06 `"One time"', add
label define ecfreq_lbl 07 `"Other"', add
label define ecfreq_lbl 96 `"Refused"', add
label define ecfreq_lbl 97 `"Don't know"', add
label define ecfreq_lbl 99 `"NIU(Not in universe)"', add
label values ecfreq ecfreq_lbl

label define eldch_lbl 00 `"Less than 1 year old"'
label define eldch_lbl 01 `"1"', add
label define eldch_lbl 02 `"2"', add
label define eldch_lbl 03 `"3"', add
label define eldch_lbl 04 `"4"', add
label define eldch_lbl 05 `"5"', add
label define eldch_lbl 06 `"6"', add
label define eldch_lbl 07 `"7"', add
label define eldch_lbl 08 `"8"', add
label define eldch_lbl 09 `"9"', add
label define eldch_lbl 10 `"10"', add
label define eldch_lbl 11 `"11"', add
label define eldch_lbl 12 `"12"', add
label define eldch_lbl 13 `"13"', add
label define eldch_lbl 14 `"14"', add
label define eldch_lbl 15 `"15"', add
label define eldch_lbl 16 `"16"', add
label define eldch_lbl 17 `"17"', add
label define eldch_lbl 18 `"18"', add
label define eldch_lbl 19 `"19"', add
label define eldch_lbl 20 `"20"', add
label define eldch_lbl 21 `"21"', add
label define eldch_lbl 22 `"22"', add
label define eldch_lbl 23 `"23"', add
label define eldch_lbl 24 `"24"', add
label define eldch_lbl 25 `"25"', add
label define eldch_lbl 26 `"26"', add
label define eldch_lbl 27 `"27"', add
label define eldch_lbl 28 `"28"', add
label define eldch_lbl 29 `"29"', add
label define eldch_lbl 30 `"30"', add
label define eldch_lbl 31 `"31"', add
label define eldch_lbl 32 `"32"', add
label define eldch_lbl 33 `"33"', add
label define eldch_lbl 34 `"34"', add
label define eldch_lbl 35 `"35"', add
label define eldch_lbl 36 `"36"', add
label define eldch_lbl 37 `"37"', add
label define eldch_lbl 38 `"38"', add
label define eldch_lbl 39 `"39"', add
label define eldch_lbl 40 `"40"', add
label define eldch_lbl 41 `"41"', add
label define eldch_lbl 42 `"42"', add
label define eldch_lbl 43 `"43"', add
label define eldch_lbl 44 `"44"', add
label define eldch_lbl 45 `"45"', add
label define eldch_lbl 46 `"46"', add
label define eldch_lbl 47 `"47"', add
label define eldch_lbl 48 `"48"', add
label define eldch_lbl 49 `"49"', add
label define eldch_lbl 50 `"50"', add
label define eldch_lbl 51 `"51"', add
label define eldch_lbl 52 `"52"', add
label define eldch_lbl 53 `"53"', add
label define eldch_lbl 54 `"54"', add
label define eldch_lbl 55 `"55"', add
label define eldch_lbl 56 `"56"', add
label define eldch_lbl 57 `"57"', add
label define eldch_lbl 58 `"58"', add
label define eldch_lbl 59 `"59"', add
label define eldch_lbl 60 `"60"', add
label define eldch_lbl 61 `"61"', add
label define eldch_lbl 62 `"62"', add
label define eldch_lbl 63 `"63"', add
label define eldch_lbl 64 `"64"', add
label define eldch_lbl 65 `"65"', add
label define eldch_lbl 66 `"66"', add
label define eldch_lbl 67 `"67"', add
label define eldch_lbl 68 `"68"', add
label define eldch_lbl 69 `"69"', add
label define eldch_lbl 70 `"70"', add
label define eldch_lbl 71 `"71"', add
label define eldch_lbl 72 `"72"', add
label define eldch_lbl 73 `"73"', add
label define eldch_lbl 74 `"74"', add
label define eldch_lbl 75 `"75"', add
label define eldch_lbl 76 `"76"', add
label define eldch_lbl 77 `"77"', add
label define eldch_lbl 78 `"78"', add
label define eldch_lbl 79 `"79"', add
label define eldch_lbl 80 `"80"', add
label define eldch_lbl 81 `"81"', add
label define eldch_lbl 82 `"82"', add
label define eldch_lbl 83 `"83"', add
label define eldch_lbl 84 `"84"', add
label define eldch_lbl 85 `"85"', add
label define eldch_lbl 86 `"86"', add
label define eldch_lbl 87 `"87"', add
label define eldch_lbl 88 `"88"', add
label define eldch_lbl 89 `"89"', add
label define eldch_lbl 90 `"90"', add
label define eldch_lbl 91 `"91"', add
label define eldch_lbl 92 `"92"', add
label define eldch_lbl 93 `"93"', add
label define eldch_lbl 94 `"94"', add
label define eldch_lbl 95 `"95"', add
label define eldch_lbl 96 `"96"', add
label define eldch_lbl 97 `"97"', add
label define eldch_lbl 98 `"98"', add
label define eldch_lbl 99 `"NIU"', add
label values eldch eldch_lbl

label define yngch_lbl 00 `"Less than 1 year old"'
label define yngch_lbl 01 `"1"', add
label define yngch_lbl 02 `"2"', add
label define yngch_lbl 03 `"3"', add
label define yngch_lbl 04 `"4"', add
label define yngch_lbl 05 `"5"', add
label define yngch_lbl 06 `"6"', add
label define yngch_lbl 07 `"7"', add
label define yngch_lbl 08 `"8"', add
label define yngch_lbl 09 `"9"', add
label define yngch_lbl 10 `"10"', add
label define yngch_lbl 11 `"11"', add
label define yngch_lbl 12 `"12"', add
label define yngch_lbl 13 `"13"', add
label define yngch_lbl 14 `"14"', add
label define yngch_lbl 15 `"15"', add
label define yngch_lbl 16 `"16"', add
label define yngch_lbl 17 `"17"', add
label define yngch_lbl 18 `"18"', add
label define yngch_lbl 19 `"19"', add
label define yngch_lbl 20 `"20"', add
label define yngch_lbl 21 `"21"', add
label define yngch_lbl 22 `"22"', add
label define yngch_lbl 23 `"23"', add
label define yngch_lbl 24 `"24"', add
label define yngch_lbl 25 `"25"', add
label define yngch_lbl 26 `"26"', add
label define yngch_lbl 27 `"27"', add
label define yngch_lbl 28 `"28"', add
label define yngch_lbl 29 `"29"', add
label define yngch_lbl 30 `"30"', add
label define yngch_lbl 31 `"31"', add
label define yngch_lbl 32 `"32"', add
label define yngch_lbl 33 `"33"', add
label define yngch_lbl 34 `"34"', add
label define yngch_lbl 35 `"35"', add
label define yngch_lbl 36 `"36"', add
label define yngch_lbl 37 `"37"', add
label define yngch_lbl 38 `"38"', add
label define yngch_lbl 39 `"39"', add
label define yngch_lbl 40 `"40"', add
label define yngch_lbl 41 `"41"', add
label define yngch_lbl 42 `"42"', add
label define yngch_lbl 43 `"43"', add
label define yngch_lbl 44 `"44"', add
label define yngch_lbl 45 `"45"', add
label define yngch_lbl 46 `"46"', add
label define yngch_lbl 47 `"47"', add
label define yngch_lbl 48 `"48"', add
label define yngch_lbl 49 `"49"', add
label define yngch_lbl 50 `"50"', add
label define yngch_lbl 51 `"51"', add
label define yngch_lbl 52 `"52"', add
label define yngch_lbl 53 `"53"', add
label define yngch_lbl 54 `"54"', add
label define yngch_lbl 55 `"55"', add
label define yngch_lbl 56 `"56"', add
label define yngch_lbl 57 `"57"', add
label define yngch_lbl 58 `"58"', add
label define yngch_lbl 59 `"59"', add
label define yngch_lbl 60 `"60"', add
label define yngch_lbl 61 `"61"', add
label define yngch_lbl 62 `"62"', add
label define yngch_lbl 63 `"63"', add
label define yngch_lbl 64 `"64"', add
label define yngch_lbl 65 `"65"', add
label define yngch_lbl 66 `"66"', add
label define yngch_lbl 67 `"67"', add
label define yngch_lbl 68 `"68"', add
label define yngch_lbl 69 `"69"', add
label define yngch_lbl 70 `"70"', add
label define yngch_lbl 71 `"71"', add
label define yngch_lbl 72 `"72"', add
label define yngch_lbl 73 `"73"', add
label define yngch_lbl 74 `"74"', add
label define yngch_lbl 75 `"75"', add
label define yngch_lbl 76 `"76"', add
label define yngch_lbl 77 `"77"', add
label define yngch_lbl 78 `"78"', add
label define yngch_lbl 79 `"79"', add
label define yngch_lbl 80 `"80"', add
label define yngch_lbl 81 `"81"', add
label define yngch_lbl 82 `"82"', add
label define yngch_lbl 83 `"83"', add
label define yngch_lbl 84 `"84"', add
label define yngch_lbl 85 `"85"', add
label define yngch_lbl 86 `"86"', add
label define yngch_lbl 87 `"87"', add
label define yngch_lbl 88 `"88"', add
label define yngch_lbl 89 `"89"', add
label define yngch_lbl 90 `"90"', add
label define yngch_lbl 91 `"91"', add
label define yngch_lbl 92 `"92"', add
label define yngch_lbl 93 `"93"', add
label define yngch_lbl 94 `"94"', add
label define yngch_lbl 95 `"95"', add
label define yngch_lbl 96 `"96"', add
label define yngch_lbl 97 `"97"', add
label define yngch_lbl 98 `"98"', add
label define yngch_lbl 99 `"NIU"', add
label values yngch yngch_lbl

label define nchild_lbl 0 `"0 children present"'
label define nchild_lbl 1 `"1 child present"', add
label define nchild_lbl 2 `"2"', add
label define nchild_lbl 3 `"3"', add
label define nchild_lbl 4 `"4"', add
label define nchild_lbl 5 `"5"', add
label define nchild_lbl 6 `"6"', add
label define nchild_lbl 7 `"7"', add
label define nchild_lbl 8 `"8"', add
label define nchild_lbl 9 `"9+"', add
label values nchild nchild_lbl

label define nsibs_lbl 0 `"0 siblings present"'
label define nsibs_lbl 1 `"1 sibling present"', add
label define nsibs_lbl 2 `"2"', add
label define nsibs_lbl 3 `"3"', add
label define nsibs_lbl 4 `"4"', add
label define nsibs_lbl 5 `"5"', add
label define nsibs_lbl 6 `"6"', add
label define nsibs_lbl 7 `"7"', add
label define nsibs_lbl 8 `"8"', add
label define nsibs_lbl 9 `"9+"', add
label values nsibs nsibs_lbl

label define nchlt5_lbl 0 `"0 children under 5 present"'
label define nchlt5_lbl 1 `"1 child under 5 present"', add
label define nchlt5_lbl 2 `"2"', add
label define nchlt5_lbl 3 `"3"', add
label define nchlt5_lbl 4 `"4"', add
label define nchlt5_lbl 5 `"5"', add
label define nchlt5_lbl 6 `"6"', add
label define nchlt5_lbl 7 `"7"', add
label define nchlt5_lbl 8 `"8"', add
label define nchlt5_lbl 9 `"9+"', add
label values nchlt5 nchlt5_lbl

label define tkrcvunlvev_lbl 00 `"No"'
label define tkrcvunlvev_lbl 01 `"Yes"', add
label define tkrcvunlvev_lbl 97 `"Don't know"', add
label define tkrcvunlvev_lbl 98 `"Blank"', add
label define tkrcvunlvev_lbl 99 `"NIU (Not in universe)"', add
label values tkrcvunlvev tkrcvunlvev_lbl

label define tklvwkpd_lbl 01 `"Yes, paid for all"'
label define tklvwkpd_lbl 02 `"Yes, paid for some"', add
label define tklvwkpd_lbl 03 `"No, not paid"', add
label define tklvwkpd_lbl 98 `"Blank"', add
label define tklvwkpd_lbl 99 `"NIU (Not in universe)"', add
label values tklvwkpd tklvwkpd_lbl

label define tklvwkrsn_lbl 01 `"Own illness or medical care"'
label define tklvwkrsn_lbl 02 `"Illness or medical care of another family member"', add
label define tklvwkrsn_lbl 03 `"Childcare, other than for illness"', add
label define tklvwkrsn_lbl 04 `"Eldercare"', add
label define tklvwkrsn_lbl 05 `"Vacation"', add
label define tklvwkrsn_lbl 06 `"Errands or personal reasons"', add
label define tklvwkrsn_lbl 07 `"Birth or adoption of a child"', add
label define tklvwkrsn_lbl 08 `"Holiday"', add
label define tklvwkrsn_lbl 09 `"Weather"', add
label define tklvwkrsn_lbl 10 `"Other"', add
label define tklvwkrsn_lbl 98 `"Blank"', add
label define tklvwkrsn_lbl 99 `"NIU (Not in universe)"', add
label values tklvwkrsn tklvwkrsn_lbl

label define tklvwktype_lbl 01 `"Paid for all"'
label define tklvwktype_lbl 02 `"Paid for some"', add
label define tklvwktype_lbl 03 `"Unpaid for all"', add
label define tklvwktype_lbl 98 `"Blank"', add
label define tklvwktype_lbl 99 `"NIU (Not in universe)"', add
label values tklvwktype tklvwktype_lbl

label define wrkflexhrs_lbl 00 `"No"'
label define wrkflexhrs_lbl 01 `"Yes"', add
label define wrkflexhrs_lbl 99 `"NIU (Not in universe)"', add
label values wrkflexhrs wrkflexhrs_lbl

label define wrkflexfreq_lbl 01 `"Frequent basis"'
label define wrkflexfreq_lbl 02 `"Occasionally"', add
label define wrkflexfreq_lbl 03 `"Rarely"', add
label define wrkflexfreq_lbl 98 `"Blank"', add
label define wrkflexfreq_lbl 99 `"NIU (Not in universe)"', add
label values wrkflexfreq wrkflexfreq_lbl

label define wrkflexpol_lbl 01 `"Formal program or policy"'
label define wrkflexpol_lbl 02 `"Informal arrangement"', add
label define wrkflexpol_lbl 98 `"Blank"', add
label define wrkflexpol_lbl 99 `"NIU (Not in universe)"', add
label values wrkflexpol wrkflexpol_lbl

label define wrkflexinput_lbl 00 `"Worker has some input"'
label define wrkflexinput_lbl 01 `"Employer decides"', add
label define wrkflexinput_lbl 02 `"Other"', add
label define wrkflexinput_lbl 98 `"Blank"', add
label define wrkflexinput_lbl 99 `"NIU (Not in universe)"', add
label values wrkflexinput wrkflexinput_lbl

label define wrkflexadv_lbl 01 `"Less than 1 week"'
label define wrkflexadv_lbl 02 `"From 1 to 2 weeks (not incl 2 weeks)"', add
label define wrkflexadv_lbl 03 `"From 2 to 3 weeks (not incl 3 weeks)"', add
label define wrkflexadv_lbl 04 `"From 3 to 4 weeks (not incl 4 weeks)"', add
label define wrkflexadv_lbl 05 `"4 weeks or more"', add
label define wrkflexadv_lbl 99 `"NIU (Not in universe)"', add
label values wrkflexadv wrkflexadv_lbl

label define wrkschedus_lbl 01 `"Daytime- most work done b/w 6a & 6p"'
label define wrkschedus_lbl 02 `"Evening shift- most work done b/w 2p & 12a"', add
label define wrkschedus_lbl 03 `"Night shift- most work done b/w 9p & 8a"', add
label define wrkschedus_lbl 04 `"Rotating shift- hours change periodically"', add
label define wrkschedus_lbl 05 `"Split shift- two distinct periods each day"', add
label define wrkschedus_lbl 06 `"Irregular schedule"', add
label define wrkschedus_lbl 07 `"Some other shift"', add
label define wrkschedus_lbl 99 `"NIU (Not in universe)"', add
label values wrkschedus wrkschedus_lbl

label define wrkshiftrsn_lbl 01 `"Better arrangements for family or childcare"'
label define wrkshiftrsn_lbl 02 `"Better pay"', add
label define wrkshiftrsn_lbl 03 `"Allows time for school"', add
label define wrkshiftrsn_lbl 04 `"Could not get any other shift"', add
label define wrkshiftrsn_lbl 05 `"Nature of the job"', add
label define wrkshiftrsn_lbl 06 `"Personal preference"', add
label define wrkshiftrsn_lbl 07 `"Other"', add
label define wrkshiftrsn_lbl 98 `"Blank"', add
label define wrkshiftrsn_lbl 99 `"NIU (Not in universe)"', add
label values wrkshiftrsn wrkshiftrsn_lbl

label define wrknumus_lbl 01 `"1 day"'
label define wrknumus_lbl 02 `"2 days"', add
label define wrknumus_lbl 03 `"3 days"', add
label define wrknumus_lbl 04 `"4 days"', add
label define wrknumus_lbl 05 `"5 days"', add
label define wrknumus_lbl 06 `"6 days"', add
label define wrknumus_lbl 07 `"7 days"', add
label define wrknumus_lbl 99 `"NIU (Not in universe)"', add
label values wrknumus wrknumus_lbl

label define wrkschedwk_lbl 00 `"No"'
label define wrkschedwk_lbl 01 `"Yes"', add
label define wrkschedwk_lbl 99 `"NIU (Not in universe)"', add
label values wrkschedwk wrkschedwk_lbl

label define wrkschedmon_lbl 00 `"No"'
label define wrkschedmon_lbl 01 `"Yes"', add
label define wrkschedmon_lbl 99 `"NIU (Not in universe)"', add
label values wrkschedmon wrkschedmon_lbl

label define wrkschedtue_lbl 00 `"No"'
label define wrkschedtue_lbl 01 `"Yes"', add
label define wrkschedtue_lbl 99 `"NIU (Not in universe)"', add
label values wrkschedtue wrkschedtue_lbl

label define wrkschedwed_lbl 00 `"No"'
label define wrkschedwed_lbl 01 `"Yes"', add
label define wrkschedwed_lbl 99 `"NIU (Not in universe)"', add
label values wrkschedwed wrkschedwed_lbl

label define wrkschedthu_lbl 00 `"No"'
label define wrkschedthu_lbl 01 `"Yes"', add
label define wrkschedthu_lbl 99 `"NIU (Not in universe)"', add
label values wrkschedthu wrkschedthu_lbl

label define wrkschedfri_lbl 00 `"No"'
label define wrkschedfri_lbl 01 `"Yes"', add
label define wrkschedfri_lbl 99 `"NIU (Not in universe)"', add
label values wrkschedfri wrkschedfri_lbl

label define wrkschedsat_lbl 00 `"No"'
label define wrkschedsat_lbl 01 `"Yes"', add
label define wrkschedsat_lbl 99 `"NIU (Not in universe)"', add
label values wrkschedsat wrkschedsat_lbl

label define wrkschedsun_lbl 00 `"No"'
label define wrkschedsun_lbl 01 `"Yes"', add
label define wrkschedsun_lbl 99 `"NIU (Not in universe)"', add
label values wrkschedsun wrkschedsun_lbl

label define wrkschedvary_lbl 00 `"No"'
label define wrkschedvary_lbl 01 `"Yes"', add
label define wrkschedvary_lbl 99 `"NIU (Not in universe)"', add
label values wrkschedvary wrkschedvary_lbl

label define wrkhomeable_lbl 00 `"No"'
label define wrkhomeable_lbl 01 `"Yes"', add
label define wrkhomeable_lbl 98 `"Blank"', add
label define wrkhomeable_lbl 99 `"NIU (Not in universe)"', add
label values wrkhomeable wrkhomeable_lbl

label define wrkhomeev_lbl 00 `"No"'
label define wrkhomeev_lbl 01 `"Yes"', add
label define wrkhomeev_lbl 98 `"Blank"', add
label define wrkhomeev_lbl 99 `"NIU (Not in universe)"', add
label values wrkhomeev wrkhomeev_lbl

label define wrkhomepd_lbl 01 `"Paid"'
label define wrkhomepd_lbl 02 `"Take home work"', add
label define wrkhomepd_lbl 03 `"Both"', add
label define wrkhomepd_lbl 98 `"Blank"', add
label define wrkhomepd_lbl 99 `"NIU (Not in universe)"', add
label values wrkhomepd wrkhomepd_lbl

label define wrkhomersn_lbl 01 `"Finish or catch up on work"'
label define wrkhomersn_lbl 02 `"Job requires working at home"', add
label define wrkhomersn_lbl 03 `"Coordinate work schedule with personal or family needs"', add
label define wrkhomersn_lbl 04 `"Reduce commuting time or expense"', add
label define wrkhomersn_lbl 05 `"Personal preference"', add
label define wrkhomersn_lbl 06 `"Weather"', add
label define wrkhomersn_lbl 07 `"Other"', add
label define wrkhomersn_lbl 98 `"Blank"', add
label define wrkhomersn_lbl 99 `"NIU (Not in universe)"', add
label values wrkhomersn wrkhomersn_lbl

label define wrkhomedays_lbl 00 `"No"'
label define wrkhomedays_lbl 01 `"Yes"', add
label define wrkhomedays_lbl 98 `"Blank"', add
label define wrkhomedays_lbl 99 `"NIU (Not in universe)"', add
label values wrkhomedays wrkhomedays_lbl

label define wrkhomeoften_lbl 01 `"5 or more days a week"'
label define wrkhomeoften_lbl 02 `"3 to 4 days a week"', add
label define wrkhomeoften_lbl 03 `"1 to 2 days a week"', add
label define wrkhomeoften_lbl 04 `"At least once a week"', add
label define wrkhomeoften_lbl 05 `"Once every 2 weeks"', add
label define wrkhomeoften_lbl 06 `"Once a month"', add
label define wrkhomeoften_lbl 07 `"Less than once a month"', add
label define wrkhomeoften_lbl 98 `"Blank"', add
label define wrkhomeoften_lbl 99 `"NIU (Not in Universe)"', add
label values wrkhomeoften wrkhomeoften_lbl

label define noleavemo_lbl 00 `"No"'
label define noleavemo_lbl 01 `"Yes"', add
label define noleavemo_lbl 09 `"NIU (Not in universe)"', add
label values noleavemo noleavemo_lbl

label define notklvmochild_lbl 00 `"No"'
label define notklvmochild_lbl 01 `"Yes"', add
label define notklvmochild_lbl 98 `"Blank"', add
label define notklvmochild_lbl 99 `"NIU (Not in universe)"', add
label values notklvmochild notklvmochild_lbl

label define notklvmochcare_lbl 00 `"No"'
label define notklvmochcare_lbl 01 `"Yes"', add
label define notklvmochcare_lbl 98 `"Blank"', add
label define notklvmochcare_lbl 99 `"NIU (Not in universe)"', add
label values notklvmochcare notklvmochcare_lbl

label define notklvmoelcare_lbl 00 `"No"'
label define notklvmoelcare_lbl 01 `"Yes"', add
label define notklvmoelcare_lbl 98 `"Blank"', add
label define notklvmoelcare_lbl 99 `"NIU (Not in universe)"', add
label values notklvmoelcare notklvmoelcare_lbl

label define notklvmopers_lbl 00 `"No"'
label define notklvmopers_lbl 01 `"Yes"', add
label define notklvmopers_lbl 98 `"Blank"', add
label define notklvmopers_lbl 99 `"NIU (Not in universe)"', add
label values notklvmopers notklvmopers_lbl

label define notklvmofam_lbl 00 `"No"'
label define notklvmofam_lbl 01 `"Yes"', add
label define notklvmofam_lbl 98 `"Blank"', add
label define notklvmofam_lbl 99 `"NIU (Not in universe)"', add
label values notklvmofam notklvmofam_lbl

label define notklvmoself_lbl 00 `"No"'
label define notklvmoself_lbl 01 `"Yes"', add
label define notklvmoself_lbl 98 `"Blank"', add
label define notklvmoself_lbl 99 `"NIU (Not in universe)"', add
label values notklvmoself notklvmoself_lbl

label define notklvmooth_lbl 00 `"No"'
label define notklvmooth_lbl 01 `"Yes"', add
label define notklvmooth_lbl 98 `"Blank"', add
label define notklvmooth_lbl 99 `"NIU (Not in universe)"', add
label values notklvmooth notklvmooth_lbl

label define notklvmovac_lbl 00 `"No"'
label define notklvmovac_lbl 01 `"Yes"', add
label define notklvmovac_lbl 98 `"Blank"', add
label define notklvmovac_lbl 99 `"NIU (Not in universe)"', add
label values notklvmovac notklvmovac_lbl

label define nolvmoinc_lbl 00 `"No"'
label define nolvmoinc_lbl 01 `"Yes"', add
label define nolvmoinc_lbl 98 `"Blank"', add
label define nolvmoinc_lbl 99 `"NIU (Not in universe)"', add
label values nolvmoinc nolvmoinc_lbl

label define nolvmoshft_lbl 00 `"No"'
label define nolvmoshft_lbl 01 `"Yes"', add
label define nolvmoshft_lbl 98 `"Blank"', add
label define nolvmoshft_lbl 99 `"NIU (Not in universe)"', add
label values nolvmoshft nolvmoshft_lbl

label define nolvmodeny_lbl 00 `"No"'
label define nolvmodeny_lbl 01 `"Yes"', add
label define nolvmodeny_lbl 98 `"Blank"', add
label define nolvmodeny_lbl 99 `"NIU (Not in universe)"', add
label values nolvmodeny nolvmodeny_lbl

label define nolvmoalt_lbl 00 `"No"'
label define nolvmoalt_lbl 01 `"Yes"', add
label define nolvmoalt_lbl 98 `"Blank"', add
label define nolvmoalt_lbl 99 `"NIU (Not in universe)"', add
label values nolvmoalt nolvmoalt_lbl

label define nolvmofear_lbl 00 `"No"'
label define nolvmofear_lbl 01 `"Yes"', add
label define nolvmofear_lbl 98 `"Blank"', add
label define nolvmofear_lbl 99 `"NIU (Not in universe)"', add
label values nolvmofear nolvmofear_lbl

label define nolvmolack_lbl 00 `"No"'
label define nolvmolack_lbl 01 `"Yes"', add
label define nolvmolack_lbl 98 `"Blank"', add
label define nolvmolack_lbl 99 `"NIU (Not in universe)"', add
label values nolvmolack nolvmolack_lbl

label define nolvmooth_lbl 00 `"No"'
label define nolvmooth_lbl 01 `"Yes"', add
label define nolvmooth_lbl 98 `"Blank"', add
label define nolvmooth_lbl 99 `"NIU (Not in universe)"', add
label values nolvmooth nolvmooth_lbl

label define nolvmosave_lbl 00 `"No"'
label define nolvmosave_lbl 01 `"Yes"', add
label define nolvmosave_lbl 98 `"Blank"', add
label define nolvmosave_lbl 99 `"NIU (Not in universe)"', add
label values nolvmosave nolvmosave_lbl

label define nolvmowork_lbl 00 `"No"'
label define nolvmowork_lbl 01 `"Yes"', add
label define nolvmowork_lbl 98 `"Blank"', add
label define nolvmowork_lbl 99 `"NIU (Not in universe)"', add
label values nolvmowork nolvmowork_lbl

label define covidtelew_lbl 01 `"No"'
label define covidtelew_lbl 02 `"Yes"', add
label define covidtelew_lbl 99 `"NIU"', add
label values covidtelew covidtelew_lbl

label define covidpaid_lbl 01 `"No"'
label define covidpaid_lbl 02 `"Yes"', add
label define covidpaid_lbl 99 `"NIU"', add
label values covidpaid covidpaid_lbl

label define covidunaw_lbl 01 `"No"'
label define covidunaw_lbl 02 `"Yes"', add
label define covidunaw_lbl 99 `"NIU"', add
label values covidunaw covidunaw_lbl

label define covidlook_lbl 01 `"No"'
label define covidlook_lbl 02 `"Yes"', add
label define covidlook_lbl 99 `"NIU"', add
label values covidlook covidlook_lbl

label define covidmed_lbl 01 `"No"'
label define covidmed_lbl 02 `"Yes"', add
label define covidmed_lbl 99 `"NIU"', add
label values covidmed covidmed_lbl

label define dietqual_lbl 1 `"Excellent"'
label define dietqual_lbl 2 `"Very good"', add
label define dietqual_lbl 3 `"Good"', add
label define dietqual_lbl 4 `"Fair"', add
label define dietqual_lbl 5 `"Poor"', add
label define dietqual_lbl 7 `"Don't know"', add
label define dietqual_lbl 8 `"Refused"', add
label define dietqual_lbl 9 `"NIU"', add
label values dietqual dietqual_lbl

label define exint_lbl 1 `"None"'
label define exint_lbl 2 `"A little"', add
label define exint_lbl 3 `"Some"', add
label define exint_lbl 4 `"A lot"', add
label define exint_lbl 5 `"All"', add
label define exint_lbl 7 `"Don't know"', add
label define exint_lbl 8 `"Refused"', add
label define exint_lbl 9 `"NIU"', add
label values exint exint_lbl

label define fastfdate_lbl 1 `"Yes"'
label define fastfdate_lbl 2 `"No"', add
label define fastfdate_lbl 7 `"Don't know"', add
label define fastfdate_lbl 8 `"Refused"', add
label define fastfdate_lbl 9 `"NIU"', add
label values fastfdate fastfdate_lbl

label define groshpamt_lbl 1 `"None"'
label define groshpamt_lbl 2 `"A little"', add
label define groshpamt_lbl 3 `"Some"', add
label define groshpamt_lbl 4 `"A lot"', add
label define groshpamt_lbl 5 `"All"', add
label define groshpamt_lbl 8 `"Don't know"', add
label define groshpamt_lbl 9 `"NIU"', add
label values groshpamt groshpamt_lbl

label define groshpenjoy_lbl 1 `"Not at all"'
label define groshpenjoy_lbl 2 `"A little"', add
label define groshpenjoy_lbl 3 `"Somewhat"', add
label define groshpenjoy_lbl 4 `"A lot"', add
label define groshpenjoy_lbl 7 `"Don't know"', add
label define groshpenjoy_lbl 8 `"Refused"', add
label define groshpenjoy_lbl 9 `"NIU"', add
label values groshpenjoy groshpenjoy_lbl

label define ongroshpfreq_lbl 00 `"0"'
label define ongroshpfreq_lbl 01 `"1"', add
label define ongroshpfreq_lbl 02 `"2"', add
label define ongroshpfreq_lbl 03 `"3"', add
label define ongroshpfreq_lbl 04 `"4"', add
label define ongroshpfreq_lbl 05 `"5"', add
label define ongroshpfreq_lbl 06 `"6"', add
label define ongroshpfreq_lbl 07 `"7"', add
label define ongroshpfreq_lbl 08 `"8"', add
label define ongroshpfreq_lbl 09 `"9"', add
label define ongroshpfreq_lbl 97 `"Don't know"', add
label define ongroshpfreq_lbl 98 `"Refused"', add
label define ongroshpfreq_lbl 99 `"NIU"', add
label values ongroshpfreq ongroshpfreq_lbl

label define ongroshpget_lbl 1 `"Usually pickup"'
label define ongroshpget_lbl 2 `"Usually delivered"', add
label define ongroshpget_lbl 3 `"About equal between pickup and delivery"', add
label define ongroshpget_lbl 9 `"NIU"', add
label values ongroshpget ongroshpget_lbl

label define ongroshpwhy_lbl 01 `"Price"'
label define ongroshpwhy_lbl 02 `"Quality of products"', add
label define ongroshpwhy_lbl 03 `"Variety of Products"', add
label define ongroshpwhy_lbl 04 `"Customer Service"', add
label define ongroshpwhy_lbl 05 `"Needing specialty foods (such as gluten free or vegan, etc.)"', add
label define ongroshpwhy_lbl 06 `"Easier to compare prices across stores"', add
label define ongroshpwhy_lbl 07 `"Transportation limitations"', add
label define ongroshpwhy_lbl 08 `"Time constraints"', add
label define ongroshpwhy_lbl 09 `"Physical safety concerns"', add
label define ongroshpwhy_lbl 10 `"Convenience"', add
label define ongroshpwhy_lbl 11 `"Sick with COVID or other illness"', add
label define ongroshpwhy_lbl 12 `"Concerns about COVID and pandemic"', add
label define ongroshpwhy_lbl 13 `"Don't enjoy shopping"', add
label define ongroshpwhy_lbl 14 `"Disability or physical limitation"', add
label define ongroshpwhy_lbl 15 `"Children issues"', add
label define ongroshpwhy_lbl 16 `"Other reason"', add
label define ongroshpwhy_lbl 98 `"Don't know"', add
label define ongroshpwhy_lbl 99 `"NIU"', add
label values ongroshpwhy ongroshpwhy_lbl

label define ongroshpwhynot_lbl 01 `"Delivery fee"'
label define ongroshpwhynot_lbl 02 `"Higher prices online"', add
label define ongroshpwhynot_lbl 03 `"I can't find the product I like online"', add
label define ongroshpwhynot_lbl 04 `"I like being able to see and touch products in person"', add
label define ongroshpwhynot_lbl 05 `"I can't wait for delivery"', add
label define ongroshpwhynot_lbl 06 `"I don't like missing, or wrong items in the delivery"', add
label define ongroshpwhynot_lbl 07 `"It is difficult to get substitutions I like if an item isn't available"', add
label define ongroshpwhynot_lbl 08 `"It takes too long to put an order together"', add
label define ongroshpwhynot_lbl 09 `"The grocery website or apps are too hard to use"', add
label define ongroshpwhynot_lbl 10 `"I don't have access to the technology to place an order"', add
label define ongroshpwhynot_lbl 11 `"Delivery is not available in my neighborhood"', add
label define ongroshpwhynot_lbl 12 `"Other reason"', add
label define ongroshpwhynot_lbl 97 `"Don't know"', add
label define ongroshpwhynot_lbl 98 `"Refused"', add
label define ongroshpwhynot_lbl 99 `"NIU"', add
label values ongroshpwhynot ongroshpwhynot_lbl

label define prpmelamt_lbl 1 `"None"'
label define prpmelamt_lbl 2 `"A little"', add
label define prpmelamt_lbl 3 `"Some"', add
label define prpmelamt_lbl 4 `"A lot"', add
label define prpmelamt_lbl 5 `"All"', add
label define prpmelamt_lbl 7 `"Don't know"', add
label define prpmelamt_lbl 8 `"Refused"', add
label define prpmelamt_lbl 9 `"NIU"', add
label values prpmelamt prpmelamt_lbl

label define prpmelenjoy_lbl 1 `"Not at all"'
label define prpmelenjoy_lbl 2 `"A little"', add
label define prpmelenjoy_lbl 3 `"Somewhat"', add
label define prpmelenjoy_lbl 4 `"A lot"', add
label define prpmelenjoy_lbl 7 `"Don't know"', add
label define prpmelenjoy_lbl 8 `"Refused"', add
label define prpmelenjoy_lbl 9 `"NIU"', add
label values prpmelenjoy prpmelenjoy_lbl

label define activity_lbl 010000 `"Personal Care"'
label define activity_lbl 010100 `"Sleeping"', add
label define activity_lbl 010101 `"Sleeping"', add
label define activity_lbl 010102 `"Sleeplessness"', add
label define activity_lbl 010199 `"Sleeping, n.e.c."', add
label define activity_lbl 010200 `"Grooming"', add
label define activity_lbl 010201 `"Washing, dressing and grooming oneself"', add
label define activity_lbl 010299 `"Grooming, n.e.c."', add
label define activity_lbl 010300 `"Health-Related Self Care"', add
label define activity_lbl 010301 `"Health-related self care"', add
label define activity_lbl 010399 `"Self care, n.e.c."', add
label define activity_lbl 010400 `"Personal Activities"', add
label define activity_lbl 010401 `"Personal/Private activities"', add
label define activity_lbl 010499 `"Personal activities, n.e.c."', add
label define activity_lbl 010500 `"Personal Care Emergencies"', add
label define activity_lbl 010501 `"Personal emergencies"', add
label define activity_lbl 010599 `"Personal care emergencies, n.e.c."', add
label define activity_lbl 019900 `"Personal Care, n.e.c."', add
label define activity_lbl 019999 `"Personal care, n.e.c."', add
label define activity_lbl 020000 `"Household Activities"', add
label define activity_lbl 020100 `"Housework"', add
label define activity_lbl 020101 `"Interior cleaning"', add
label define activity_lbl 020102 `"Laundry"', add
label define activity_lbl 020103 `"Sewing, repairing, and maintaining textiles"', add
label define activity_lbl 020104 `"Storing interior hh items, inc. food"', add
label define activity_lbl 020199 `"Housework, n.e.c."', add
label define activity_lbl 020200 `"Food and Drink Preparation, Presentation, and Clean-up"', add
label define activity_lbl 020201 `"Food and drink preparation"', add
label define activity_lbl 020202 `"Food presentation"', add
label define activity_lbl 020203 `"Kitchen and food clean-up"', add
label define activity_lbl 020299 `"Food and drink prep, serving and clean-up, n.e.c."', add
label define activity_lbl 020300 `"Interior Maintenance, Repair, and Decoration"', add
label define activity_lbl 020301 `"Interior arrangement, decoration, and repairs"', add
label define activity_lbl 020302 `"Building and repairing furniture"', add
label define activity_lbl 020303 `"Heating and cooling"', add
label define activity_lbl 020399 `"Interior maintenance, repair, and decoration, n.e.c."', add
label define activity_lbl 020400 `"Exterior Maintenance, Repair, and Decoration"', add
label define activity_lbl 020401 `"Exterior cleaning"', add
label define activity_lbl 020402 `"Exterior repair, improvements, and decoration"', add
label define activity_lbl 020499 `"Exterior maintenance, repair and decoration, n.e.c."', add
label define activity_lbl 020500 `"Lawn, Garden, and Houseplants"', add
label define activity_lbl 020501 `"Lawn, garden, and houseplant care"', add
label define activity_lbl 020502 `"Ponds, pools, and hot tubs"', add
label define activity_lbl 020599 `"Lawn and garden, n.e.c."', add
label define activity_lbl 020600 `"Animals and Pets"', add
label define activity_lbl 020601 `"Care for animals and pets (not veterinary care)"', add
label define activity_lbl 020602 `"Care for animals and pets (not veterinary care) (2008+)"', add
label define activity_lbl 020603 `"Walking, exercising, playing with animals (2008+)"', add
label define activity_lbl 020699 `"Pet and animal care, n.e.c."', add
label define activity_lbl 020700 `"Vehicles"', add
label define activity_lbl 020701 `"Vehicle repair and maintenance (by self)"', add
label define activity_lbl 020799 `"Vehicles, n.e.c."', add
label define activity_lbl 020800 `"Appliances, Tools, and Toys"', add
label define activity_lbl 020801 `"App, tool, toy set-up, repair, and maint (by self)"', add
label define activity_lbl 020899 `"Appliances and tools, n.e.c."', add
label define activity_lbl 020900 `"Household Management"', add
label define activity_lbl 020901 `"Financial management"', add
label define activity_lbl 020902 `"Household and personal organization and planning"', add
label define activity_lbl 020903 `"HH and personal mail and messages (except e-mail)"', add
label define activity_lbl 020904 `"HH and personal e-mail and messages"', add
label define activity_lbl 020905 `"Home security"', add
label define activity_lbl 020999 `"Household management, n.e.c."', add
label define activity_lbl 029900 `"Household Activities, n.e.c."', add
label define activity_lbl 029999 `"Household activities, n.e.c."', add
label define activity_lbl 030000 `"Caring for and Helping Household Members"', add
label define activity_lbl 030100 `"Caring for and Helping Household Children"', add
label define activity_lbl 030101 `"Physical care for hh children"', add
label define activity_lbl 030102 `"Reading to/with hh children"', add
label define activity_lbl 030103 `"Playing with hh children, not sports"', add
label define activity_lbl 030104 `"Arts and crafts with hh children"', add
label define activity_lbl 030105 `"Playing sports with hh children"', add
label define activity_lbl 030106 `"Talking with/listening to hh children"', add
label define activity_lbl 030107 `"Helping or teaching hh children"', add
label define activity_lbl 030108 `"Organization and planning for hh children"', add
label define activity_lbl 030109 `"Looking after hh children (as a primary activity)"', add
label define activity_lbl 030110 `"Attending hh children's events"', add
label define activity_lbl 030111 `"Waiting for/with hh children"', add
label define activity_lbl 030112 `"Picking up/dropping off hh children"', add
label define activity_lbl 030199 `"Caring for and helping hh children, n.e.c."', add
label define activity_lbl 030200 `"Activities Related to Household Children's Education"', add
label define activity_lbl 030201 `"Homework (hh children)"', add
label define activity_lbl 030202 `"Meetings and school conferences (hh children)"', add
label define activity_lbl 030203 `"Home schooling of hh children"', add
label define activity_lbl 030204 `"Waiting associated with hh children's education"', add
label define activity_lbl 030299 `"Activities related to hh child's education, n.e.c."', add
label define activity_lbl 030300 `"Activities Related to Household Children's Health"', add
label define activity_lbl 030301 `"Providing medical care to hh children"', add
label define activity_lbl 030302 `"Obtaining medical care for hh children"', add
label define activity_lbl 030303 `"Waiting associated with hh children's health"', add
label define activity_lbl 030399 `"Activities related to hh child's health, n.e.c."', add
label define activity_lbl 030400 `"Caring for Household Adults"', add
label define activity_lbl 030401 `"Physical care for hh adults"', add
label define activity_lbl 030402 `"Looking after hh adult (as a primary activity)"', add
label define activity_lbl 030403 `"Providing medical care to hh adult"', add
label define activity_lbl 030404 `"Obtaining medical and care services for hh adult"', add
label define activity_lbl 030405 `"Waiting associated with caring for hh adults"', add
label define activity_lbl 030499 `"Caring for household adults, n.e.c."', add
label define activity_lbl 030500 `"Helping Household Adults"', add
label define activity_lbl 030501 `"Helping hh adults"', add
label define activity_lbl 030502 `"Organization and planning for hh adults"', add
label define activity_lbl 030503 `"Picking up/dropping off hh adult"', add
label define activity_lbl 030504 `"Waiting associated with helping hh adults"', add
label define activity_lbl 030599 `"Helping household adults, n.e.c."', add
label define activity_lbl 039900 `"Caring for and Helping Household Members, n.e.c."', add
label define activity_lbl 039999 `"Caring for and helping hh members, n.e.c."', add
label define activity_lbl 040000 `"Caring for and Helping Non-Household Members"', add
label define activity_lbl 040100 `"Caring for and Helping Non-Household Children"', add
label define activity_lbl 040101 `"Physical care for nonhh children"', add
label define activity_lbl 040102 `"Reading to/with nonhh children"', add
label define activity_lbl 040103 `"Playing with nonhh children, not sports"', add
label define activity_lbl 040104 `"Arts and crafts with nonhh children"', add
label define activity_lbl 040105 `"Playing sports with nonhh children"', add
label define activity_lbl 040106 `"Talking with/listening to nonhh children"', add
label define activity_lbl 040107 `"Helping or teaching nonhh children"', add
label define activity_lbl 040108 `"Organization and planning for nonhh children"', add
label define activity_lbl 040109 `"Looking after nonhh children (as primary activity)"', add
label define activity_lbl 040110 `"Attending nonhh children's events"', add
label define activity_lbl 040111 `"Waiting for/with nonhh children"', add
label define activity_lbl 040112 `"Dropping off/picking up nonhh children"', add
label define activity_lbl 040199 `"Caring for and helping nonhh children, n.e.c."', add
label define activity_lbl 040200 `"Activities Related to Non-Household Children's Education"', add
label define activity_lbl 040201 `"Homework (nonhh children)"', add
label define activity_lbl 040202 `"Mtgs and school conferences (nonhh children)"', add
label define activity_lbl 040203 `"Home schooling of nonhh children"', add
label define activity_lbl 040204 `"Waiting assoc w/ nonhh children's education"', add
label define activity_lbl 040299 `"Activities related to nonhh child's educ., n.e.c."', add
label define activity_lbl 040300 `"Activities Related to Non-Household Children's Health"', add
label define activity_lbl 040301 `"Providing medical care to nonhh children"', add
label define activity_lbl 040302 `"Obtaining medical care for nonhh children"', add
label define activity_lbl 040303 `"Waiting associated with nonhh children's health"', add
label define activity_lbl 040399 `"Activities related to nonhh child's health, n.e.c."', add
label define activity_lbl 040400 `"Caring for Non-Household Adults"', add
label define activity_lbl 040401 `"Physical care for nonhh adults"', add
label define activity_lbl 040402 `"Looking after nonhh adult (as a primary activity)"', add
label define activity_lbl 040403 `"Providing medical care to nonhh adult"', add
label define activity_lbl 040404 `"Obtaining medical and care svcs for nonhh adult"', add
label define activity_lbl 040405 `"Waiting associated with caring for nonhh adults"', add
label define activity_lbl 040499 `"Caring for nonhh adults, n.e.c."', add
label define activity_lbl 040500 `"Helping Non-Household Adults"', add
label define activity_lbl 040501 `"Hswrk, cooking, and shopping asst, nonhh adults"', add
label define activity_lbl 040502 `"House and lawn maint and repair asst, nonhh adults"', add
label define activity_lbl 040503 `"Animal and pet care assistance for nonhh adults"', add
label define activity_lbl 040504 `"Vehicle/appliance maint/repair asst, nonhh adults"', add
label define activity_lbl 040505 `"Financial mgmt asst for nonhh adults"', add
label define activity_lbl 040506 `"HH mgmt and paperwork asst, nonhh adults"', add
label define activity_lbl 040507 `"Picking up/dropping off nonhh adult"', add
label define activity_lbl 040508 `"Waiting associated with helping nonhh adults"', add
label define activity_lbl 040599 `"Helping nonhh adults, n.e.c."', add
label define activity_lbl 049900 `"Caring for and Helping Non-Household Members, n.e.c."', add
label define activity_lbl 049999 `"Caring for and helping nonhh members, n.e.c."', add
label define activity_lbl 050000 `"Work and Work-Related Activities"', add
label define activity_lbl 050100 `"Working"', add
label define activity_lbl 050101 `"Work, main job"', add
label define activity_lbl 050102 `"Work, other job(s)"', add
label define activity_lbl 050103 `"Security procedures related to work"', add
label define activity_lbl 050104 `"Waiting associated with working"', add
label define activity_lbl 050199 `"Working, n.e.c."', add
label define activity_lbl 050200 `"Work-Related Activities"', add
label define activity_lbl 050201 `"Socializing, relaxing, and leisure as part of job"', add
label define activity_lbl 050202 `"Eating and drinking as part of job"', add
label define activity_lbl 050203 `"Sports and exercise as part of job"', add
label define activity_lbl 050204 `"Security procedures as part of job"', add
label define activity_lbl 050205 `"Waiting associated with work-related activities"', add
label define activity_lbl 050299 `"Work-related activities, n.e.c."', add
label define activity_lbl 050300 `"Other Income-Generating Activities"', add
label define activity_lbl 050301 `"Income-generating hobbies, crafts, and food"', add
label define activity_lbl 050302 `"Income-generating performances"', add
label define activity_lbl 050303 `"Income-generating services"', add
label define activity_lbl 050304 `"Income-generating rental property activities"', add
label define activity_lbl 050305 `"Waiting assoc w/other income-generating acts"', add
label define activity_lbl 050399 `"Other income-generating activities, n.e.c."', add
label define activity_lbl 050400 `"Job Search and Interviewing"', add
label define activity_lbl 050401 `"Job search activities"', add
label define activity_lbl 050403 `"Job interviewing"', add
label define activity_lbl 050404 `"Waiting associated with job search or interview"', add
label define activity_lbl 050405 `"Sec. procedures rel. to job search/interviewing"', add
label define activity_lbl 050499 `"Job search and Interviewing, n.e.c."', add
label define activity_lbl 059900 `"Work and Work-Related Activities, n.e.c."', add
label define activity_lbl 059999 `"Work and work-related activities, n.e.c."', add
label define activity_lbl 060000 `"Education"', add
label define activity_lbl 060100 `"Taking Class"', add
label define activity_lbl 060101 `"Taking class for degree, certification, or lic"', add
label define activity_lbl 060102 `"Taking class for personal interest"', add
label define activity_lbl 060103 `"Waiting associated with taking classes"', add
label define activity_lbl 060104 `"Security procedures rel. to taking classes"', add
label define activity_lbl 060199 `"Taking class, n.e.c."', add
label define activity_lbl 060200 `"Extracurricular School Activities (except sports)"', add
label define activity_lbl 060201 `"Extracurricular club activities"', add
label define activity_lbl 060202 `"Extracurricular music and performance activities"', add
label define activity_lbl 060203 `"Extracurricular student government activities"', add
label define activity_lbl 060204 `"Waiting associated with extracurricular activities"', add
label define activity_lbl 060299 `"Education-related extracurricular activities, n.e.c."', add
label define activity_lbl 060300 `"Research or Homework"', add
label define activity_lbl 060301 `"Rsrch/HW for class for degree, cert, or lic"', add
label define activity_lbl 060302 `"Research/homework for class for pers. interest"', add
label define activity_lbl 060303 `"Waiting associated with research/homework"', add
label define activity_lbl 060399 `"Research/homework n.e.c."', add
label define activity_lbl 060400 `"Registration or Administrative Activities"', add
label define activity_lbl 060401 `"Admin activities: class for degree, cert, or lic"', add
label define activity_lbl 060402 `"Admin activities: class for personal interest"', add
label define activity_lbl 060403 `"Waiting assoc w/admin. activities (education)"', add
label define activity_lbl 060499 `"Administrative for education, n.e.c."', add
label define activity_lbl 069900 `"Education, n.e.c."', add
label define activity_lbl 069999 `"Education, n.e.c."', add
label define activity_lbl 070000 `"Consumer Purchases"', add
label define activity_lbl 070100 `"Shopping (store, telephone, internet)"', add
label define activity_lbl 070101 `"Grocery shopping"', add
label define activity_lbl 070102 `"Purchasing gas"', add
label define activity_lbl 070103 `"Purchasing food (not groceries)"', add
label define activity_lbl 070104 `"Shopping, except groceries, food and gas"', add
label define activity_lbl 070105 `"Waiting associated with shopping"', add
label define activity_lbl 070199 `"Shopping, n.e.c."', add
label define activity_lbl 070200 `"Researching Purchases"', add
label define activity_lbl 070201 `"Comparison shopping"', add
label define activity_lbl 070299 `"Researching purchases, n.e.c."', add
label define activity_lbl 070300 `"Security Procedures Related to Consumer Purchases"', add
label define activity_lbl 070301 `"Security procedures rel. to consumer purchases"', add
label define activity_lbl 070399 `"Sec procedures rel. to cons purchases, n.e.c."', add
label define activity_lbl 079900 `"Consumer Purchases, n.e.c."', add
label define activity_lbl 079999 `"Consumer purchases, n.e.c."', add
label define activity_lbl 080000 `"Professional and Personal Care Services"', add
label define activity_lbl 080100 `"Childcare Services"', add
label define activity_lbl 080101 `"Using paid childcare services"', add
label define activity_lbl 080102 `"Waiting associated w/purchasing childcare svcs"', add
label define activity_lbl 080199 `"Using paid childcare services, n.e.c."', add
label define activity_lbl 080200 `"Financial Services and Banking"', add
label define activity_lbl 080201 `"Banking"', add
label define activity_lbl 080202 `"Using other financial services"', add
label define activity_lbl 080203 `"Waiting associated w/banking/financial services"', add
label define activity_lbl 080299 `"Using financial services and banking, n.e.c."', add
label define activity_lbl 080300 `"Legal Services"', add
label define activity_lbl 080301 `"Using legal services"', add
label define activity_lbl 080302 `"Waiting associated with legal services"', add
label define activity_lbl 080399 `"Using legal services, n.e.c."', add
label define activity_lbl 080400 `"Medical and Care Services"', add
label define activity_lbl 080401 `"Using health and care services outside the home"', add
label define activity_lbl 080402 `"Using in-home health and care services"', add
label define activity_lbl 080403 `"Waiting associated with medical services"', add
label define activity_lbl 080499 `"Using medical services, n.e.c."', add
label define activity_lbl 080500 `"Personal Care Services"', add
label define activity_lbl 080501 `"Using personal care services"', add
label define activity_lbl 080502 `"Waiting associated w/personal care services"', add
label define activity_lbl 080599 `"Using personal care services, n.e.c."', add
label define activity_lbl 080600 `"Real Estate"', add
label define activity_lbl 080601 `"Activities rel. to purchasing/selling real estate"', add
label define activity_lbl 080602 `"Waiting assoc w/purchasing/selling real estate"', add
label define activity_lbl 080699 `"Using real estate services, n.e.c."', add
label define activity_lbl 080700 `"Veterinary Services (excluding grooming)"', add
label define activity_lbl 080701 `"Using veterinary services"', add
label define activity_lbl 080702 `"Waiting associated with veterinary services"', add
label define activity_lbl 080799 `"Using veterinary services, n.e.c."', add
label define activity_lbl 080800 `"Security Procedures Related to Professional or Personal Services"', add
label define activity_lbl 080801 `"Security procedures rel. to prof/personal svcs."', add
label define activity_lbl 080899 `"Sec procedures rel. to prof/personal svcs n.e.c."', add
label define activity_lbl 089900 `"Professional and Personal Services, n.e.c."', add
label define activity_lbl 089999 `"Professional and personal services, n.e.c."', add
label define activity_lbl 090000 `"Household Services"', add
label define activity_lbl 090100 `"Household Services (not done by self)"', add
label define activity_lbl 090101 `"Using interior cleaning services"', add
label define activity_lbl 090102 `"Using meal preparation services"', add
label define activity_lbl 090103 `"Using clothing repair and cleaning services"', add
label define activity_lbl 090104 `"Waiting associated with using household services"', add
label define activity_lbl 090199 `"Using household services, n.e.c."', add
label define activity_lbl 090200 `"Home Maintenance, Repair, Decoration, and Construction (not done by self)"', add
label define activity_lbl 090201 `"Using home maint/repair/décor/construction svcs"', add
label define activity_lbl 090202 `"Wtg assoc w/ home main/repair/décor/constr"', add
label define activity_lbl 090299 `"Using home maint/repair/décor/constr svcs n.e.c."', add
label define activity_lbl 090300 `"Pet Services (not done by self and not veterinary care)"', add
label define activity_lbl 090301 `"Using pet services"', add
label define activity_lbl 090302 `"Waiting associated with pet services"', add
label define activity_lbl 090399 `"Using pet services, n.e.c."', add
label define activity_lbl 090400 `"Lawn and Garden Services (not done by self)"', add
label define activity_lbl 090401 `"Using lawn and garden services"', add
label define activity_lbl 090402 `"Waiting assoc with using lawn and garden svcs"', add
label define activity_lbl 090499 `"Using lawn and garden services, n.e.c."', add
label define activity_lbl 090500 `"Vehicle Maintenance and Repair Services (not done by self)"', add
label define activity_lbl 090501 `"Using vehicle maintenance or repair services"', add
label define activity_lbl 090502 `"Waiting assoc with vehicle main. or repair svcs"', add
label define activity_lbl 090599 `"Using vehicle maint. and repair svcs, n.e.c."', add
label define activity_lbl 099900 `"Household Services, n.e.c."', add
label define activity_lbl 099999 `"Using household services, n.e.c."', add
label define activity_lbl 100000 `"Government Services and Civic Obligations"', add
label define activity_lbl 100100 `"Using Government Services"', add
label define activity_lbl 100101 `"Using police and fire services"', add
label define activity_lbl 100102 `"Using social services"', add
label define activity_lbl 100103 `"Obtaining licenses and paying fines, fees, taxes"', add
label define activity_lbl 100199 `"Using government services, n.e.c."', add
label define activity_lbl 100200 `"Civic Obligations and Participation"', add
label define activity_lbl 100201 `"Civic obligations and participation"', add
label define activity_lbl 100299 `"Civic obligations and participation, n.e.c."', add
label define activity_lbl 100300 `"Waiting Associated with Government Services or Civic Obligations"', add
label define activity_lbl 100303 `"Waiting assoc w/civic obligations and participation"', add
label define activity_lbl 100304 `"Waiting associated with using government services"', add
label define activity_lbl 100399 `"Wtg assoc w/govt svcs or civic obligations, n.e.c."', add
label define activity_lbl 100400 `"Security Procedures Related to Government Services or Civic Obligations"', add
label define activity_lbl 100401 `"Sec procedures rel. to govt svcs/civic obligations"', add
label define activity_lbl 100499 `"Sec procs rel. to govt svcs/civic obligations, n.e.c."', add
label define activity_lbl 109900 `"Government Services, n.e.c."', add
label define activity_lbl 109999 `"Government services, n.e.c."', add
label define activity_lbl 110000 `"Eating and Drinking"', add
label define activity_lbl 110100 `"Eating and Drinking"', add
label define activity_lbl 110101 `"Eating and drinking"', add
label define activity_lbl 110199 `"Eating and drinking, n.e.c."', add
label define activity_lbl 110200 `"Waiting Associated with Eating and Drinking"', add
label define activity_lbl 110201 `"Waiting associated w/eating and drinking"', add
label define activity_lbl 110299 `"Waiting associated with eating and drinking, n.e.c."', add
label define activity_lbl 119900 `"Eating and Drinking, n.e.c."', add
label define activity_lbl 119999 `"Eating and drinking, n.e.c."', add
label define activity_lbl 120000 `"Socializing, Relaxing, and Leisure"', add
label define activity_lbl 120100 `"Socializing and Communicating"', add
label define activity_lbl 120101 `"Socializing and communicating with others"', add
label define activity_lbl 120199 `"Socializing and communicating, n.e.c."', add
label define activity_lbl 120200 `"Attending or Hosting Social Events"', add
label define activity_lbl 120201 `"Attending or hosting parties/receptions/ceremonies"', add
label define activity_lbl 120202 `"Attending meetings for personal interest (not volunteering)"', add
label define activity_lbl 120299 `"Attending/hosting social events, n.e.c."', add
label define activity_lbl 120300 `"Relaxing and Leisure"', add
label define activity_lbl 120301 `"Relaxing, thinking"', add
label define activity_lbl 120302 `"Tobacco and drug use"', add
label define activity_lbl 120303 `"Television and movies (not religious)"', add
label define activity_lbl 120304 `"Television (religious)"', add
label define activity_lbl 120305 `"Listening to the radio"', add
label define activity_lbl 120306 `"Listening to/playing music (not radio)"', add
label define activity_lbl 120307 `"Playing games"', add
label define activity_lbl 120308 `"Computer use for leisure (exc. Games)"', add
label define activity_lbl 120309 `"Arts and crafts as a hobby"', add
label define activity_lbl 120310 `"Collecting as a hobby"', add
label define activity_lbl 120311 `"Hobbies, except arts and crafts and collecting"', add
label define activity_lbl 120312 `"Reading for personal interest"', add
label define activity_lbl 120313 `"Writing for personal interest"', add
label define activity_lbl 120399 `"Relaxing and leisure, n.e.c."', add
label define activity_lbl 120400 `"Arts and Entertainment (other than sports)"', add
label define activity_lbl 120401 `"Attending performing arts"', add
label define activity_lbl 120402 `"Attending museums"', add
label define activity_lbl 120403 `"Attending movies/film"', add
label define activity_lbl 120404 `"Attending gambling establishments"', add
label define activity_lbl 120405 `"Security procedures rel. to arts and entertainment"', add
label define activity_lbl 120499 `"Arts and entertainment, n.e.c."', add
label define activity_lbl 120500 `"Waiting Associated with Socializing, Relaxing, and Leisure"', add
label define activity_lbl 120501 `"Waiting assoc. w/socializing and communicating"', add
label define activity_lbl 120502 `"Waiting assoc. w/attending/hosting social events"', add
label define activity_lbl 120503 `"Waiting associated with relaxing/leisure"', add
label define activity_lbl 120504 `"Waiting associated with arts and entertainment"', add
label define activity_lbl 120599 `"Waiting associated with socializing, n.e.c."', add
label define activity_lbl 129900 `"Socializing, Relaxing, and Leisure, n.e.c."', add
label define activity_lbl 129999 `"Socializing, relaxing, and leisure, n.e.c."', add
label define activity_lbl 130000 `"Sports, Exercise, and Recreation"', add
label define activity_lbl 130100 `"Participating in Sports, Exercise, or Recreation"', add
label define activity_lbl 130101 `"Doing aerobics"', add
label define activity_lbl 130102 `"Playing baseball"', add
label define activity_lbl 130103 `"Playing basketball"', add
label define activity_lbl 130104 `"Biking"', add
label define activity_lbl 130105 `"Playing billiards"', add
label define activity_lbl 130106 `"Boating"', add
label define activity_lbl 130107 `"Bowling"', add
label define activity_lbl 130108 `"Climbing, spelunking, caving"', add
label define activity_lbl 130109 `"Dancing"', add
label define activity_lbl 130110 `"Participating in equestrian sports"', add
label define activity_lbl 130111 `"Fencing"', add
label define activity_lbl 130112 `"Fishing"', add
label define activity_lbl 130113 `"Playing football"', add
label define activity_lbl 130114 `"Golfing"', add
label define activity_lbl 130115 `"Doing gymnastics"', add
label define activity_lbl 130116 `"Hiking"', add
label define activity_lbl 130117 `"Playing hockey"', add
label define activity_lbl 130118 `"Hunting"', add
label define activity_lbl 130119 `"Participating in martial arts"', add
label define activity_lbl 130120 `"Playing racquet sports"', add
label define activity_lbl 130121 `"Participating in rodeo competitions"', add
label define activity_lbl 130122 `"Rollerblading"', add
label define activity_lbl 130123 `"Playing rugby"', add
label define activity_lbl 130124 `"Running"', add
label define activity_lbl 130125 `"Skiing, ice skating, snowboarding"', add
label define activity_lbl 130126 `"Playing soccer"', add
label define activity_lbl 130127 `"Playing softball"', add
label define activity_lbl 130128 `"Using cardiovascular equipment"', add
label define activity_lbl 130129 `"Vehicle touring/racing"', add
label define activity_lbl 130130 `"Playing volleyball"', add
label define activity_lbl 130131 `"Walking"', add
label define activity_lbl 130132 `"Participating in water sports"', add
label define activity_lbl 130133 `"Weightlifting/strength training"', add
label define activity_lbl 130134 `"Working out, unspecified"', add
label define activity_lbl 130135 `"Wrestling"', add
label define activity_lbl 130136 `"Doing yoga"', add
label define activity_lbl 130199 `"Playing sports n.e.c."', add
label define activity_lbl 130200 `"Attending Sports or Recreational Events"', add
label define activity_lbl 130201 `"Watching aerobics"', add
label define activity_lbl 130202 `"Watching baseball"', add
label define activity_lbl 130203 `"Watching basketball"', add
label define activity_lbl 130204 `"Watching biking"', add
label define activity_lbl 130205 `"Watching billiards"', add
label define activity_lbl 130206 `"Watching boating"', add
label define activity_lbl 130207 `"Watching bowling"', add
label define activity_lbl 130208 `"Watching climbing, spelunking, caving"', add
label define activity_lbl 130209 `"Watching dancing"', add
label define activity_lbl 130210 `"Watching equestrian sports"', add
label define activity_lbl 130211 `"Watching fencing"', add
label define activity_lbl 130212 `"Watching fishing"', add
label define activity_lbl 130213 `"Watching football"', add
label define activity_lbl 130214 `"Watching golfing"', add
label define activity_lbl 130215 `"Watching gymnastics"', add
label define activity_lbl 130216 `"Watching hockey"', add
label define activity_lbl 130217 `"Watching martial arts"', add
label define activity_lbl 130218 `"Watching racquet sports"', add
label define activity_lbl 130219 `"Watching rodeo competitions"', add
label define activity_lbl 130220 `"Watching rollerblading"', add
label define activity_lbl 130221 `"Watching rugby"', add
label define activity_lbl 130222 `"Watching running"', add
label define activity_lbl 130223 `"Watching skiing, ice skating, snowboarding"', add
label define activity_lbl 130224 `"Watching soccer"', add
label define activity_lbl 130225 `"Watching softball"', add
label define activity_lbl 130226 `"Watching vehicle touring/racing"', add
label define activity_lbl 130227 `"Watching volleyball"', add
label define activity_lbl 130228 `"Watching walking"', add
label define activity_lbl 130229 `"Watching water sports"', add
label define activity_lbl 130230 `"Watching weightlifting/strength training"', add
label define activity_lbl 130231 `"Watching people working out, unspecified"', add
label define activity_lbl 130232 `"Watching wrestling"', add
label define activity_lbl 130299 `"Attending sporting events, n.e.c."', add
label define activity_lbl 130300 `"Waiting Associated with Sports, Exercise, and Recreation"', add
label define activity_lbl 130301 `"Waiting related to playing sports or exercising"', add
label define activity_lbl 130302 `"Waiting related to attending sporting events"', add
label define activity_lbl 130399 `"Wtg assoc with sports, exercise, and rec, n.e.c."', add
label define activity_lbl 130400 `"Security Procedures Related to Sports, Exercise, and Recreation"', add
label define activity_lbl 130401 `"Security related to playing sports or exercising"', add
label define activity_lbl 130402 `"Security related to attending sporting events"', add
label define activity_lbl 130499 `"Sec related to sports, exercise, and rec, n.e.c."', add
label define activity_lbl 139900 `"Sports, Exercise, and Recreation, n.e.c."', add
label define activity_lbl 139999 `"Sports, exercise, and recreation, n.e.c."', add
label define activity_lbl 140000 `"Religious and Spiritual Activities"', add
label define activity_lbl 140100 `"Religious or Spiritual Practices"', add
label define activity_lbl 140101 `"Attending religious services"', add
label define activity_lbl 140102 `"Participation in religious practices"', add
label define activity_lbl 140103 `"Waiting assoc w/religious and spiritual activities"', add
label define activity_lbl 140104 `"Sec procedures rel. to relig and spiritual activities"', add
label define activity_lbl 140105 `"Religious education activities (2007+)"', add
label define activity_lbl 149900 `"Religious and Spiritual Activities, n.e.c."', add
label define activity_lbl 149999 `"Religious and spiritual activities, n.e.c."', add
label define activity_lbl 150000 `"Volunteer Activities"', add
label define activity_lbl 150100 `"Administrative and Support Activities"', add
label define activity_lbl 150101 `"Computer use"', add
label define activity_lbl 150102 `"Organizing and preparing"', add
label define activity_lbl 150103 `"Reading"', add
label define activity_lbl 150104 `"Telephone calls (except hotline counseling)"', add
label define activity_lbl 150105 `"Writing"', add
label define activity_lbl 150106 `"Fundraising"', add
label define activity_lbl 150199 `"Administrative and support activities, n.e.c."', add
label define activity_lbl 150200 `"Social Service and Care Activities (except medical)"', add
label define activity_lbl 150201 `"Food preparation, presentation, clean-up"', add
label define activity_lbl 150202 `"Collecting and delivering clothing and other goods"', add
label define activity_lbl 150203 `"Providing care"', add
label define activity_lbl 150204 `"Teaching, leading, counseling, mentoring"', add
label define activity_lbl 150299 `"Social service and care activities, n.e.c."', add
label define activity_lbl 150300 `"Indoor and Outdoor Maintenance, Building, and Clean-Up Activities"', add
label define activity_lbl 150301 `"Building houses, wildlife sites, and other structures"', add
label define activity_lbl 150302 `"Indoor and outdoor maintenance, repair, and clean-up"', add
label define activity_lbl 150399 `"Indoor and outdoor maint, bldg and clean-up, n.e.c."', add
label define activity_lbl 150400 `"Participating in Performance and Cultural Activities"', add
label define activity_lbl 150401 `"Performing"', add
label define activity_lbl 150402 `"Serving at volunteer events and cultural activities"', add
label define activity_lbl 150499 `"Participating performance, cultural act., n.e.c."', add
label define activity_lbl 150500 `"Attending Meetings, Conferences, and Training"', add
label define activity_lbl 150501 `"Attending meetings, conferences, and training"', add
label define activity_lbl 150599 `"Attending mtgs conferences, and training, n.e.c."', add
label define activity_lbl 150600 `"Public Health and Safety Activities"', add
label define activity_lbl 150601 `"Public health activities"', add
label define activity_lbl 150602 `"Public safety activities"', add
label define activity_lbl 150699 `"Public health and safety activities, n.e.c."', add
label define activity_lbl 150700 `"Waiting Associated with Volunteer Activities"', add
label define activity_lbl 150701 `"Waiting associated with volunteer activities"', add
label define activity_lbl 150799 `"Waiting assoc with volunteer activities, n.e.c."', add
label define activity_lbl 150800 `"Security Procedures Related to Volunteer Activities"', add
label define activity_lbl 150801 `"Security procedures related to volunteer activities (2007+)"', add
label define activity_lbl 150899 `"Security proecdures related to voluteer activities, n.e.c. (2007+)"', add
label define activity_lbl 159900 `"Volunteer Activities, n.e.c."', add
label define activity_lbl 159999 `"Volunteer activities, n.e.c."', add
label define activity_lbl 160000 `"Telephone Calls"', add
label define activity_lbl 160100 `"Telephone Calls (to or from)"', add
label define activity_lbl 160101 `"Telephone calls to/from family members"', add
label define activity_lbl 160102 `"Phone calls to/from friends, neighbors"', add
label define activity_lbl 160103 `"Telephone calls to/from education svcs providers"', add
label define activity_lbl 160104 `"Telephone calls to/from salespeople"', add
label define activity_lbl 160105 `"Phone calls to/from prof, personal svcs providers"', add
label define activity_lbl 160106 `"Phone calls to/from household services providers"', add
label define activity_lbl 160107 `"Phone calls to/from child or adult care providers"', add
label define activity_lbl 160108 `"Telephone calls to/from government officials"', add
label define activity_lbl 160199 `"Telephone calls (to or from), n.e.c."', add
label define activity_lbl 160200 `"Waiting Associated with Telephone Calls"', add
label define activity_lbl 160201 `"Waiting associated with telephone calls"', add
label define activity_lbl 160299 `"Waiting associated with telephone calls, n.e.c."', add
label define activity_lbl 169900 `"Telephone Calls, n.e.c."', add
label define activity_lbl 169999 `"Telephone calls, n.e.c."', add
label define activity_lbl 180000 `"Traveling"', add
label define activity_lbl 180100 `"Travel Related to Personal Care"', add
label define activity_lbl 180101 `"Travel related to personal care"', add
label define activity_lbl 180199 `"Travel related to personal care, n.e.c."', add
label define activity_lbl 180200 `"Travel Related to Household Activities"', add
label define activity_lbl 180201 `"Travel related to housework"', add
label define activity_lbl 180202 `"Travel related to food and drink prep"', add
label define activity_lbl 180203 `"Travel related to int. maint, repair, and decoration"', add
label define activity_lbl 180204 `"Travel related to ext. maint, repair, and decoration"', add
label define activity_lbl 180205 `"Travel related to lawn, garden, and houseplants"', add
label define activity_lbl 180206 `"Travel related to care for animals (not vet care)"', add
label define activity_lbl 180207 `"Travel related to vehicle care and maint (by self)"', add
label define activity_lbl 180208 `"Trvl rel to app, tool, toy set-up, repair, and maint"', add
label define activity_lbl 180209 `"Travel related to household management"', add
label define activity_lbl 180299 `"Travel related to household activities, n.e.c."', add
label define activity_lbl 180300 `"Travel Related to Caring for and Helping Household Members"', add
label define activity_lbl 180301 `"Travel related to caring for and helping HH children"', add
label define activity_lbl 180302 `"Travel related to caring for and helping household children (2005+)"', add
label define activity_lbl 180303 `"Travel related to hh children's education"', add
label define activity_lbl 180304 `"Travel related to hh children's health"', add
label define activity_lbl 180305 `"Travel related to caring for hh adults"', add
label define activity_lbl 180306 `"Travel related to helping hh adults"', add
label define activity_lbl 180307 `"Travel related to caring for and helping HH adults"', add
label define activity_lbl 180399 `"Trvl rel. to caring for, helping HH members, n.e.c."', add
label define activity_lbl 180400 `"Travel Related to Caring for and Helping Non-Household Members"', add
label define activity_lbl 180401 `"Trvl rel to caring for and helping nonHH kids, inclusive"', add
label define activity_lbl 180402 `"Trvl rel to caring for and helping nonHH kids"', add
label define activity_lbl 180403 `"Travel related to nonhh children's education"', add
label define activity_lbl 180404 `"Travel related to nonhh children's health"', add
label define activity_lbl 180405 `"Travel related to caring for nonhh adults"', add
label define activity_lbl 180406 `"Travel related to helping nonhh adults"', add
label define activity_lbl 180407 `"Travel related to caring for, helping NonHH adults"', add
label define activity_lbl 180499 `"Trvl rel. to caring for, helping NonHH,  n.e.c."', add
label define activity_lbl 180500 `"Travel Related to Work"', add
label define activity_lbl 180501 `"Travel related to working"', add
label define activity_lbl 180502 `"Travel related to work-related activities"', add
label define activity_lbl 180503 `"Travel related to income-generating activities"', add
label define activity_lbl 180504 `"Travel related to job search and interviewing"', add
label define activity_lbl 180599 `"Travel related to work, n.e.c."', add
label define activity_lbl 180600 `"Travel Related to Education"', add
label define activity_lbl 180601 `"Travel related to taking class"', add
label define activity_lbl 180602 `"Trvl rel to extracurricular activities (ex. Sports)"', add
label define activity_lbl 180603 `"Travel related to research/homework"', add
label define activity_lbl 180604 `"Travel related to registration/admin activities"', add
label define activity_lbl 180605 `"Education-related travel, not commuting"', add
label define activity_lbl 180699 `"Education travel, n.e.c."', add
label define activity_lbl 180700 `"Travel Related to Consumer Purchases"', add
label define activity_lbl 180701 `"Traveling to/from the grocery store"', add
label define activity_lbl 180702 `"Travel related to other shopping"', add
label define activity_lbl 180703 `"Travel related to purchasing food (not groceries)"', add
label define activity_lbl 180704 `"Travel related to shopping, ex groc, food, gas"', add
label define activity_lbl 180705 `"Traveling to/from gas station"', add
label define activity_lbl 180799 `"Travel related to consumer purchases, n.e.c."', add
label define activity_lbl 180800 `"Travel Related to Using Professional and Personal Care Services"', add
label define activity_lbl 180801 `"Travel related to using childcare services"', add
label define activity_lbl 180802 `"Travel related to using financial svcs and banking"', add
label define activity_lbl 180803 `"Travel related to using legal services"', add
label define activity_lbl 180804 `"Travel related to using medical services"', add
label define activity_lbl 180805 `"Travel related to using personal care services"', add
label define activity_lbl 180806 `"Travel related to using real estate services"', add
label define activity_lbl 180807 `"Travel related to using veterinary services"', add
label define activity_lbl 180899 `"Travel rel. to using prof, personal care svcs n.e.c."', add
label define activity_lbl 180900 `"Travel Related to Using Household Services"', add
label define activity_lbl 180901 `"Travel related to using household services"', add
label define activity_lbl 180902 `"Trvl rel to using home maint etc svcs"', add
label define activity_lbl 180903 `"Travel related to using pet services (not vet)"', add
label define activity_lbl 180904 `"Travel related to using lawn and garden services"', add
label define activity_lbl 180905 `"Trvl rel to using vehicle maint and repair services"', add
label define activity_lbl 180999 `"Travel related to using household services, n.e.c."', add
label define activity_lbl 181000 `"Travel Related to Using Government Services and Civic Obligations"', add
label define activity_lbl 181001 `"Travel related to using government services"', add
label define activity_lbl 181002 `"Travel related to civic obligations and participation"', add
label define activity_lbl 181099 `"Travel rel. to govt svcs and civic obligations, n.e.c."', add
label define activity_lbl 181100 `"Travel Related to Eating and Drinking"', add
label define activity_lbl 181101 `"Travel related to eating and drinking"', add
label define activity_lbl 181199 `"Travel related to eating and drinking, n.e.c."', add
label define activity_lbl 181200 `"Travel Related to Socializing, Relaxing, and Leisure"', add
label define activity_lbl 181201 `"Travel related to socializing and communicating"', add
label define activity_lbl 181202 `"Trvl related to attending or hosting social events"', add
label define activity_lbl 181203 `"Travel related to relaxing and leisure (2003, 2004)"', add
label define activity_lbl 181204 `"Travel related to arts and entertainment"', add
label define activity_lbl 181205 `"Travel as a form of entertainment"', add
label define activity_lbl 181206 `"Travel related to relaxing and leisure (2005+)"', add
label define activity_lbl 181299 `"Travel rel. to socializing, relaxing, leisure, n.e.c."', add
label define activity_lbl 181300 `"Travel Related to Sports, Exercise, and Recreation"', add
label define activity_lbl 181301 `"Trvl rel to doing sports/exercise/recreation"', add
label define activity_lbl 181302 `"Trvl rel to attending sporting/recreational events"', add
label define activity_lbl 181399 `"Travel rel to sports, exercise, recreation, n.e.c."', add
label define activity_lbl 181400 `"Travel Related to Religious or Spiritual Activities"', add
label define activity_lbl 181401 `"Travel related to religious/spiritual practices"', add
label define activity_lbl 181499 `"Travel rel. to religious/spiritual activities, n.e.c."', add
label define activity_lbl 181500 `"Travel Related to Volunteering"', add
label define activity_lbl 181501 `"Travel related to volunteering"', add
label define activity_lbl 181599 `"Travel related to volunteer activities, n.e.c."', add
label define activity_lbl 181600 `"Travel Related to Phone Calls"', add
label define activity_lbl 181601 `"Travel related to phone calls"', add
label define activity_lbl 181699 `"Travel rel. to phone calls, n.e.c."', add
label define activity_lbl 181800 `"Security Procedures Related to Traveling"', add
label define activity_lbl 181801 `"Security procedures related to traveling"', add
label define activity_lbl 181899 `"Security procedures related to traveling, n.e.c."', add
label define activity_lbl 189900 `"Traveling, n.e.c."', add
label define activity_lbl 189999 `"Traveling, n.e.c."', add
label define activity_lbl 500000 `"Data Codes"', add
label define activity_lbl 500100 `"Unable to Code"', add
label define activity_lbl 500101 `"Insufficient detail in verbatim"', add
label define activity_lbl 500102 `"Recorded activity using incorrect words"', add
label define activity_lbl 500103 `"Missing travel or destination"', add
label define activity_lbl 500104 `"Recorded simultaneous activities incorrectly"', add
label define activity_lbl 500105 `"Respondent refused to provide information"', add
label define activity_lbl 500106 `"Gap/can't remember"', add
label define activity_lbl 500107 `"Unable to code activity at 1st tier"', add
label define activity_lbl 509900 `"Data codes, n.e.c."', add
label define activity_lbl 509999 `"Data codes, n.e.c."', add
label values activity activity_lbl

label define where_lbl 0100 `"Place"'
label define where_lbl 0101 `"R's home or yard"', add
label define where_lbl 0102 `"R's workplace"', add
label define where_lbl 0103 `"Someone else's home"', add
label define where_lbl 0104 `"Restaurant or bar"', add
label define where_lbl 0105 `"Place of worship"', add
label define where_lbl 0106 `"Grocery store"', add
label define where_lbl 0107 `"Other store/mall"', add
label define where_lbl 0108 `"School"', add
label define where_lbl 0109 `"Outdoors--not at home"', add
label define where_lbl 0110 `"Library"', add
label define where_lbl 0111 `"Bank"', add
label define where_lbl 0112 `"Gym/health club"', add
label define where_lbl 0113 `"Post Office"', add
label define where_lbl 0114 `"Other place"', add
label define where_lbl 0115 `"Unspecified place"', add
label define where_lbl 0200 `"Mode of Transportation"', add
label define where_lbl 0230 `"Driver of car, truck, or motorcycle"', add
label define where_lbl 0231 `"Passenger of car, truck, or motorcycle"', add
label define where_lbl 0232 `"Walking"', add
label define where_lbl 0233 `"Bus"', add
label define where_lbl 0234 `"Subway/train"', add
label define where_lbl 0235 `"Bicycle"', add
label define where_lbl 0236 `"Boat/ferry"', add
label define where_lbl 0237 `"Taxi/limousine service"', add
label define where_lbl 0238 `"Airplane"', add
label define where_lbl 0239 `"Other mode of transportation"', add
label define where_lbl 0240 `"Unspecified mode of transportation"', add
label define where_lbl 9997 `"Don't know"', add
label define where_lbl 9998 `"Refused"', add
label define where_lbl 9999 `"NIU (Not in universe)"', add
label values where where_lbl

label define who_ask_lbl 00 `"No"'
label define who_ask_lbl 01 `"Yes"', add
label values who_ask who_ask_lbl

label define scpain_lbl 00 `"Not at all"'
label define scpain_lbl 01 `"1"', add
label define scpain_lbl 02 `"2"', add
label define scpain_lbl 03 `"3"', add
label define scpain_lbl 04 `"4"', add
label define scpain_lbl 05 `"5"', add
label define scpain_lbl 06 `"Very"', add
label define scpain_lbl 96 `"Refused"', add
label define scpain_lbl 97 `"Don't know"', add
label define scpain_lbl 99 `"NIU (Not in universe)"', add
label values scpain scpain_lbl

label define schappy_lbl 00 `"Not at all"'
label define schappy_lbl 01 `"1"', add
label define schappy_lbl 02 `"2"', add
label define schappy_lbl 03 `"3"', add
label define schappy_lbl 04 `"4"', add
label define schappy_lbl 05 `"5"', add
label define schappy_lbl 06 `"Very"', add
label define schappy_lbl 96 `"Refused"', add
label define schappy_lbl 97 `"Don't Know"', add
label define schappy_lbl 99 `"NIU (Not in universe)"', add
label values schappy schappy_lbl

label define scsad_lbl 00 `"Not at all"'
label define scsad_lbl 01 `"1"', add
label define scsad_lbl 02 `"2"', add
label define scsad_lbl 03 `"3"', add
label define scsad_lbl 04 `"4"', add
label define scsad_lbl 05 `"5"', add
label define scsad_lbl 06 `"Very"', add
label define scsad_lbl 96 `"Refused"', add
label define scsad_lbl 97 `"Don't Know"', add
label define scsad_lbl 99 `"NIU (Not in universe)"', add
label values scsad scsad_lbl

label define sctired_lbl 00 `"Not at all"'
label define sctired_lbl 01 `"1"', add
label define sctired_lbl 02 `"2"', add
label define sctired_lbl 03 `"3"', add
label define sctired_lbl 04 `"4"', add
label define sctired_lbl 05 `"5"', add
label define sctired_lbl 06 `"Very"', add
label define sctired_lbl 96 `"Refused"', add
label define sctired_lbl 97 `"Don't Know"', add
label define sctired_lbl 99 `"NIU (Not in universe)"', add
label values sctired sctired_lbl

label define scstress_lbl 00 `"Not at all"'
label define scstress_lbl 01 `"1"', add
label define scstress_lbl 02 `"2"', add
label define scstress_lbl 03 `"3"', add
label define scstress_lbl 04 `"4"', add
label define scstress_lbl 05 `"5"', add
label define scstress_lbl 06 `"Very"', add
label define scstress_lbl 96 `"Refused"', add
label define scstress_lbl 97 `"Don't know"', add
label define scstress_lbl 99 `"NIU (Not in universe)"', add
label values scstress scstress_lbl

label define interact_lbl 01 `"Yes"'
label define interact_lbl 02 `"No"', add
label define interact_lbl 96 `"Refused"', add
label define interact_lbl 97 `"Don't Know"', add
label define interact_lbl 99 `"NIU (Not in universe)"', add
label values interact interact_lbl

label define meaning_lbl 00 `"Not at all"'
label define meaning_lbl 01 `"1"', add
label define meaning_lbl 02 `"2"', add
label define meaning_lbl 03 `"3"', add
label define meaning_lbl 04 `"4"', add
label define meaning_lbl 05 `"5"', add
label define meaning_lbl 06 `"Very"', add
label define meaning_lbl 96 `"Refused"', add
label define meaning_lbl 97 `"Don't Know"', add
label define meaning_lbl 99 `"NIU (Not in universe)"', add
label values meaning meaning_lbl

label define osad_lbl 01 `"1"'
label define osad_lbl 02 `"2"', add
label define osad_lbl 03 `"3"', add
label define osad_lbl 04 `"4"', add
label define osad_lbl 05 `"5"', add
label define osad_lbl 99 `"NIU (Not in universe)"', add
label values osad osad_lbl

label define ohappy_lbl 01 `"1"'
label define ohappy_lbl 02 `"2"', add
label define ohappy_lbl 03 `"3"', add
label define ohappy_lbl 04 `"4"', add
label define ohappy_lbl 05 `"5"', add
label define ohappy_lbl 99 `"NIU (Not in universe)"', add
label values ohappy ohappy_lbl

label define opain_lbl 01 `"1"'
label define opain_lbl 02 `"2"', add
label define opain_lbl 03 `"3"', add
label define opain_lbl 04 `"4"', add
label define opain_lbl 05 `"5"', add
label define opain_lbl 99 `"NIU (Not in universe)"', add
label values opain opain_lbl

label define otired_lbl 01 `"1"'
label define otired_lbl 02 `"2"', add
label define otired_lbl 03 `"3"', add
label define otired_lbl 04 `"4"', add
label define otired_lbl 05 `"5"', add
label define otired_lbl 99 `"NIU (Not in universe)"', add
label values otired otired_lbl

label define ostress_lbl 01 `"1"'
label define ostress_lbl 02 `"2"', add
label define ostress_lbl 03 `"3"', add
label define ostress_lbl 04 `"4"', add
label define ostress_lbl 05 `"5"', add
label define ostress_lbl 99 `"NIU (Not in universe)"', add
label values ostress ostress_lbl

label define wbelig_lbl 0 `"No"'
label define wbelig_lbl 1 `"Yes"', add
label values wbelig wbelig_lbl

label define relatew_lbl 0100 `"Alone"'
label define relatew_lbl 0200 `"Spouse"', add
label define relatew_lbl 0201 `"Unmarried partner"', add
label define relatew_lbl 0202 `"Own household child"', add
label define relatew_lbl 0203 `"Grandchild"', add
label define relatew_lbl 0204 `"Parent"', add
label define relatew_lbl 0205 `"Brother sister"', add
label define relatew_lbl 0206 `"Other related person"', add
label define relatew_lbl 0207 `"Foster child"', add
label define relatew_lbl 0208 `"Housemate, roommate"', add
label define relatew_lbl 0209 `"Roomer, boarder"', add
label define relatew_lbl 0210 `"Other nonrelative"', add
label define relatew_lbl 0300 `"Own non-household child under 18"', add
label define relatew_lbl 0400 `"Parents (not living in household)"', add
label define relatew_lbl 0401 `"Other non-household family members under 18"', add
label define relatew_lbl 0402 `"Other non-household family members 18 and older (including parents-in-law)"', add
label define relatew_lbl 0403 `"Friends"', add
label define relatew_lbl 0404 `"Co-workers, colleagues, clients (non-work activities only)"', add
label define relatew_lbl 0405 `"Neighbors, acquaintances"', add
label define relatew_lbl 0406 `"Other non-household children under 18"', add
label define relatew_lbl 0407 `"Other non-household adults 18 and older"', add
label define relatew_lbl 0408 `"Boss or manager (work activities only, 2010+)"', add
label define relatew_lbl 0409 `"People whom I supervise (work activities only, 2010+)"', add
label define relatew_lbl 0410 `"Co-workers (work activities only, 2010+)"', add
label define relatew_lbl 0411 `"Customers (work activities only, 2010+)"', add
label define relatew_lbl 9996 `"Refused"', add
label define relatew_lbl 9997 `"Don't know"', add
label define relatew_lbl 9998 `"Blank"', add
label values relatew relatew_lbl

label define relatewu_lbl 0100 `"Alone"'
label define relatewu_lbl 0200 `"Spouse"', add
label define relatewu_lbl 0201 `"Unmarried partner"', add
label define relatewu_lbl 0202 `"Own household child"', add
label define relatewu_lbl 0203 `"Grandchild"', add
label define relatewu_lbl 0204 `"Parent"', add
label define relatewu_lbl 0205 `"Brother sister"', add
label define relatewu_lbl 0206 `"Other related person"', add
label define relatewu_lbl 0207 `"Foster child"', add
label define relatewu_lbl 0208 `"Housemate, roommate"', add
label define relatewu_lbl 0209 `"Roomer, boarder"', add
label define relatewu_lbl 0210 `"Other nonrelative"', add
label define relatewu_lbl 0300 `"Own non-household child under 18"', add
label define relatewu_lbl 0400 `"Parents (not living in household)"', add
label define relatewu_lbl 0401 `"Other non-household family members under 18"', add
label define relatewu_lbl 0402 `"Other non-household family members 18 and older (including parents-in-law)"', add
label define relatewu_lbl 0403 `"Friends"', add
label define relatewu_lbl 0404 `"Co-workers, colleagues, clients (non-work activities only)"', add
label define relatewu_lbl 0405 `"Neighbors, acquaintances"', add
label define relatewu_lbl 0406 `"Other non-household children under 18"', add
label define relatewu_lbl 0407 `"Other non-household adults 18 and older"', add
label define relatewu_lbl 0408 `"Boss or manager"', add
label define relatewu_lbl 0409 `"People whom I supervise"', add
label define relatewu_lbl 0410 `"Co-workers"', add
label define relatewu_lbl 0411 `"Customers"', add
label define relatewu_lbl 9996 `"Refused"', add
label define relatewu_lbl 9997 `"Don't know"', add
label define relatewu_lbl 9998 `"Blank"', add
label values relatewu relatewu_lbl

label define agew_lbl 000 `"0"'
label define agew_lbl 001 `"1"', add
label define agew_lbl 002 `"2"', add
label define agew_lbl 003 `"3"', add
label define agew_lbl 004 `"4"', add
label define agew_lbl 005 `"5"', add
label define agew_lbl 006 `"6"', add
label define agew_lbl 007 `"7"', add
label define agew_lbl 008 `"8"', add
label define agew_lbl 009 `"9"', add
label define agew_lbl 010 `"10"', add
label define agew_lbl 011 `"11"', add
label define agew_lbl 012 `"12"', add
label define agew_lbl 013 `"13"', add
label define agew_lbl 014 `"14"', add
label define agew_lbl 015 `"15"', add
label define agew_lbl 016 `"16"', add
label define agew_lbl 017 `"17"', add
label define agew_lbl 018 `"18"', add
label define agew_lbl 019 `"19"', add
label define agew_lbl 020 `"20"', add
label define agew_lbl 021 `"21"', add
label define agew_lbl 022 `"22"', add
label define agew_lbl 023 `"23"', add
label define agew_lbl 024 `"24"', add
label define agew_lbl 025 `"25"', add
label define agew_lbl 026 `"26"', add
label define agew_lbl 027 `"27"', add
label define agew_lbl 028 `"28"', add
label define agew_lbl 029 `"29"', add
label define agew_lbl 030 `"30"', add
label define agew_lbl 031 `"31"', add
label define agew_lbl 032 `"32"', add
label define agew_lbl 033 `"33"', add
label define agew_lbl 034 `"34"', add
label define agew_lbl 035 `"35"', add
label define agew_lbl 036 `"36"', add
label define agew_lbl 037 `"37"', add
label define agew_lbl 038 `"38"', add
label define agew_lbl 039 `"39"', add
label define agew_lbl 040 `"40"', add
label define agew_lbl 041 `"41"', add
label define agew_lbl 042 `"42"', add
label define agew_lbl 043 `"43"', add
label define agew_lbl 044 `"44"', add
label define agew_lbl 045 `"45"', add
label define agew_lbl 046 `"46"', add
label define agew_lbl 047 `"47"', add
label define agew_lbl 048 `"48"', add
label define agew_lbl 049 `"49"', add
label define agew_lbl 050 `"50"', add
label define agew_lbl 051 `"51"', add
label define agew_lbl 052 `"52"', add
label define agew_lbl 053 `"53"', add
label define agew_lbl 054 `"54"', add
label define agew_lbl 055 `"55"', add
label define agew_lbl 056 `"56"', add
label define agew_lbl 057 `"57"', add
label define agew_lbl 058 `"58"', add
label define agew_lbl 059 `"59"', add
label define agew_lbl 060 `"60"', add
label define agew_lbl 061 `"61"', add
label define agew_lbl 062 `"62"', add
label define agew_lbl 063 `"63"', add
label define agew_lbl 064 `"64"', add
label define agew_lbl 065 `"65"', add
label define agew_lbl 066 `"66"', add
label define agew_lbl 067 `"67"', add
label define agew_lbl 068 `"68"', add
label define agew_lbl 069 `"69"', add
label define agew_lbl 070 `"70"', add
label define agew_lbl 071 `"71"', add
label define agew_lbl 072 `"72"', add
label define agew_lbl 073 `"73"', add
label define agew_lbl 074 `"74"', add
label define agew_lbl 075 `"75"', add
label define agew_lbl 076 `"76"', add
label define agew_lbl 077 `"77"', add
label define agew_lbl 078 `"78"', add
label define agew_lbl 079 `"79"', add
label define agew_lbl 080 `"80"', add
label define agew_lbl 085 `"85"', add
label define agew_lbl 996 `"Refused"', add
label define agew_lbl 997 `"Don't know"', add
label define agew_lbl 999 `"NIU (Not in universe)"', add
label values agew agew_lbl

label define sexw_lbl 01 `"Male"'
label define sexw_lbl 02 `"Female"', add
label define sexw_lbl 99 `"NIU (Not in universe)"', add
label values sexw sexw_lbl

label define hh_ec_lbl 0 `"Recipient is not a household member"'
label define hh_ec_lbl 1 `"Recipient is a household member"', add
label values hh_ec hh_ec_lbl

label define relater_lbl 200 `"Spouse"'
label define relater_lbl 210 `"Unmarried partner"', add
label define relater_lbl 220 `"Own household child"', add
label define relater_lbl 230 `"Grandchild"', add
label define relater_lbl 240 `"Parent"', add
label define relater_lbl 241 `"Mother"', add
label define relater_lbl 242 `"Father"', add
label define relater_lbl 243 `"Mother-in-law"', add
label define relater_lbl 244 `"Father-in-law"', add
label define relater_lbl 250 `"Sibling"', add
label define relater_lbl 251 `"Brother"', add
label define relater_lbl 252 `"Sister"', add
label define relater_lbl 260 `"Other related person"', add
label define relater_lbl 261 `"Aunt"', add
label define relater_lbl 262 `"Uncle"', add
label define relater_lbl 263 `"Grandparent"', add
label define relater_lbl 264 `"Grandmother/Great-grandmother"', add
label define relater_lbl 265 `"Grandfather/Great-grandfather"', add
label define relater_lbl 280 `"Housemate/roommate"', add
label define relater_lbl 290 `"Roomer/boarder"', add
label define relater_lbl 300 `"Other nonrelative"', add
label define relater_lbl 310 `"Friend"', add
label define relater_lbl 320 `"Neighbor"', add
label define relater_lbl 400 `"Other"', add
label values relater relater_lbl

label define ecmonth_lbl 01 `"0 to 5 months"'
label define ecmonth_lbl 02 `"6 to 11 months"', add
label define ecmonth_lbl 03 `"1 year"', add
label define ecmonth_lbl 04 `"More than one year"', add
label values ecmonth ecmonth_lbl

