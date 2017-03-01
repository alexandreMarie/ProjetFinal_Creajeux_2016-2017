//Maya ASCII 2016 scene
//Name: cerisier.ma
//Last modified: Mon, Feb 27, 2017 05:53:03 PM
//Codeset: 1252
requires maya "2016";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201603180400-990260";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
createNode transform -s -n "persp";
	rename -uid "57C687A6-4496-047D-0061-3190685E9420";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 191.40467150839234 29.364415410922295 124.9116144155351 ;
	setAttr ".r" -type "double3" -9.3383527212684836 785.39999999904273 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "19A1BE46-4C5D-2C2A-78C7-D59348140390";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 229.65613990750668;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -5.8380418543579511 43.555924330395669 18.771779327448527 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "0B93F324-46CF-086C-6C9E-518612449A10";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "4AA8841A-43B3-876E-2FBB-2B8A4323F08B";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "7C5A301C-4E0E-6CC3-0820-7CB7956DFD0C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -6.1298329109540095 29.080059740018402 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "1D9C09C7-4982-1339-A53C-A0AAA1395798";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 47.574346004949511;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "655DEE0C-4876-0E59-9268-4B8A18C4E8E9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 8.1497196422749631 16.445678732982312 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "B9FD3C64-4CBE-8AB1-BD3E-529DEDD66DB3";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 182.98234759267351;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCube1";
	rename -uid "85C471DC-4F94-E335-32F7-3886712F94A3";
	setAttr ".s" -type "double3" 2.8094041670563912 2.8094041670563912 2.8094041670563912 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "8DF8BD77-4AA9-58BD-9A46-75846606D561";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".pt";
	setAttr ".pt[0]" -type "float3" 0 -0.224039 0 ;
	setAttr ".pt[1]" -type "float3" 0 -0.224039 0 ;
	setAttr ".pt[6]" -type "float3" 0 -0.224039 0 ;
	setAttr ".pt[7]" -type "float3" 0 -0.224039 0 ;
	setAttr ".pt[104]" -type "float3" 0 -0.22404513 0 ;
	setAttr ".pt[105]" -type "float3" 0 -0.22404376 0 ;
	setAttr ".pt[187]" -type "float3" 0 -1.0246081 0 ;
	setAttr ".pt[188]" -type "float3" 0 1.2298212 0 ;
	setAttr ".pt[189]" -type "float3" 0 -1.2298211 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "E6C63BB2-4C20-59EC-4638-1A85BF87F0A2";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "172046A8-4B20-4AB1-6C56-BE9C87D6B275";
createNode displayLayer -n "defaultLayer";
	rename -uid "35CFE8AF-45EF-C812-268F-2A88FC33B403";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "37A2E7DC-426B-5D07-14D3-31BB3D60CE86";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "38BB8BE9-4553-C803-C472-4C933B785BB7";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	rename -uid "0B3D4857-487E-93BE-980A-17994FECB1D1";
	setAttr ".cuv" 4;
createNode polyTweak -n "polyTweak1";
	rename -uid "028B0D99-4A67-1725-017F-A69BD4F1B378";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[2:5]" -type "float3"  0 7.11259985 0 0 7.11259985
		 0 0 7.11259985 0 0 7.11259985 0;
createNode polySplit -n "polySplit1";
	rename -uid "F653AC98-4EF7-C0DB-78D7-F2BED95EB176";
	setAttr -s 5 ".e[0:4]"  0.311975 0.311975 0.688025 0.688025 0.311975;
	setAttr -s 5 ".d[0:4]"  -2147483644 -2147483643 -2147483639 -2147483640 -2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	rename -uid "5723F7EE-4513-CD01-8E36-E5A95C868667";
	setAttr -s 5 ".e[0:4]"  0.597817 0.597817 0.402183 0.402183 0.597817;
	setAttr -s 5 ".d[0:4]"  -2147483640 -2147483639 -2147483635 -2147483636 -2147483640;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySoftEdge -n "polySoftEdge1";
	rename -uid "9364BD01-42F3-6E4A-F752-FD94B7ED45CD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:27]";
	setAttr ".ix" -type "matrix" 2.8094041670563912 0 0 0 0 2.8094041670563912 0 0 0 0 2.8094041670563912 0
		 0 0 0 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak2";
	rename -uid "FA943963-46B2-8AFB-9356-83B2F413083B";
	setAttr ".uopa" yes;
	setAttr -s 13 ".tk";
	setAttr ".tk[2]" -type "float3" 0.28470734 0.40030509 1.1939038 ;
	setAttr ".tk[3]" -type "float3" 0.28470734 0.40030509 1.1939038 ;
	setAttr ".tk[4]" -type "float3" 0.28470734 0.40030509 1.1939038 ;
	setAttr ".tk[5]" -type "float3" 0.28470734 0.40030509 1.1939038 ;
	setAttr ".tk[8]" -type "float3" -0.82330126 0.2784785 -1.5720586 ;
	setAttr ".tk[9]" -type "float3" -0.82330126 0.2784785 -1.5720586 ;
	setAttr ".tk[10]" -type "float3" -0.82330126 0.2784785 -1.5720586 ;
	setAttr ".tk[11]" -type "float3" -0.82330126 0.2784785 -1.5720586 ;
	setAttr ".tk[12]" -type "float3" -0.59229326 1.0727131 -0.4433094 ;
	setAttr ".tk[13]" -type "float3" -0.59229326 1.0727131 -0.4433094 ;
	setAttr ".tk[14]" -type "float3" -0.59229326 1.0727131 -0.4433094 ;
	setAttr ".tk[15]" -type "float3" -0.59229326 1.0727131 -0.4433094 ;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "91027B24-4D85-CB4B-E848-92AFAB5BEE74";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 2.8094041670563912 0 0 0 0 2.8094041670563912 0 0 0 0 2.8094041670563912 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.79985791 22.511488 3.3541584 ;
	setAttr ".rs" 56109;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.2441589349752777 20.493044285676561 3.0318414083792478 ;
	setAttr ".cbx" -type "double3" 2.843874812638882 24.529931108551619 3.6764752346837408 ;
createNode polyTweak -n "polyTweak3";
	rename -uid "FCF500A7-428A-B51E-90D7-4FBE7FA7EC25";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[0:15]" -type "float3"  -0.64666772 0 0.64666772 0.64666772
		 0 0.64666772 -0.22756243 -0.71846032 -0.38527215 0.22756243 -0.71846032 -0.38527215
		 -0.22756243 0.71845937 0.38527209 0.22756243 0.71845937 0.38527209 -0.64666772 0
		 -1.7402178 0.64666772 0 -1.7402178 -0.077844806 -0.10610186 0.068020262 0.077844799
		 -0.10610186 0.068020262 0.077844799 0.10610185 -0.068020269 -0.077844806 0.10610185
		 -0.068020269 -0.14675011 0.43720749 0.023412721 0.14675008 0.43720749 0.023412721
		 0.14675008 -0.43720749 -0.023412736 -0.14675011 -0.43720749 -0.023412736;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "229EB597-42E8-9C0A-AAD3-7FAAD2F64083";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 2.8094041670563912 0 0 0 0 2.8094041670563912 0 0 0 0 2.8094041670563912 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.79985791 22.511488 10.984479 ;
	setAttr ".rs" 39448;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.1028900234850836 20.640160925873342 10.640119673073096 ;
	setAttr ".cbx" -type "double3" 2.7026058174219192 24.382813128726536 11.328837317635593 ;
createNode polyTweak -n "polyTweak4";
	rename -uid "28068995-4757-0185-8288-96ABB333BFA8";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[16:19]" -type "float3"  0.050284304 0.052365821 2.47869062
		 -0.050284304 0.052365821 2.47869062 -0.050284304 -0.052365817 2.9532938 0.050284304
		 -0.052365817 2.9532938;
createNode polyTweak -n "polyTweak5";
	rename -uid "FFB6BA3E-4700-AE39-61C3-65846EE3029E";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk[0:23]" -type "float3"  -0.97346002 -0.9380756 3.038455009
		 0.97346002 -0.9380756 3.038455009 0 3.08315587 0.95788121 0 3.08315587 0.95788121
		 0 3.08315587 0.95788121 0 3.08315587 0.95788121 -0.97346002 -0.9380756 0.16316986
		 0.97346002 -0.9380756 0.16316986 -0.80999035 -0.36787492 0.89821637 0.80564421 -0.36787492
		 0.89821637 0.80564421 -0.071218841 -0.68994951 -0.80999035 -0.071218841 -0.68994951
		 -0.41958398 3.20864487 -1.37276745 0.41958398 3.20864487 -1.37276745 0.41958398 2.64136267
		 -0.75438762 -0.41958398 2.64136267 -0.75438762 0.85581923 3.44412589 2.1575985 0.85581923
		 3.44412589 2.1575985 0.85581923 3.44412589 2.1575985 0.85581923 3.44412589 2.1575985
		 1.82912493 1.7138263 5.16787434 1.21375072 1.7138263 5.16787434 1.21375072 0.93467617
		 5.41317654 1.82912493 0.93467617 5.41317654;
createNode polySplit -n "polySplit3";
	rename -uid "6D443592-4CDB-C770-E870-D3A8F6BB11AF";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483620 -2147483619 -2147483617 -2147483615 -2147483620;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "484D5540-46E6-C80A-59A0-829A2183558B";
	setAttr ".ics" -type "componentList" 1 "f[25]";
	setAttr ".ix" -type "matrix" 2.8094041670563912 0 0 0 0 2.8094041670563912 0 0 0 0 2.8094041670563912 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.6077562 31.390068 8.6397886 ;
	setAttr ".rs" 55997;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.2441589349752777 29.154874565954241 5.7229168775758712 ;
	setAttr ".cbx" -type "double3" 0.028646569688059641 33.625259747957671 11.556659864721487 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "F82889B1-492D-E64C-8885-6983444028A8";
	setAttr ".ics" -type "componentList" 1 "f[25]";
	setAttr ".ix" -type "matrix" 2.8094041670563912 0 0 0 0 2.8094041670563912 0 0 0 0 2.8094041670563912 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -6.9163022 33.965557 12.090496 ;
	setAttr ".rs" 38891;
	setAttr ".lt" -type "double3" 2.1493756599859846 2.990270859219192 7.9483745341682681 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -8.0242060590490816 32.840481376939906 11.356918606044747 ;
	setAttr ".cbx" -type "double3" -5.808397889537706 35.090633597159496 12.824074160884592 ;
createNode polyTweak -n "polyTweak6";
	rename -uid "840CE75F-4DBC-43F3-30DB-ACA01478A5C9";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[24]" -type "float3" -0.13301775 0.25754553 -0.78324401 ;
	setAttr ".tk[25]" -type "float3" -0.13301775 0.25754553 -0.78324401 ;
	setAttr ".tk[26]" -type "float3" -0.13301775 0.25583726 -0.86029315 ;
	setAttr ".tk[27]" -type "float3" -0.13301775 0.25583726 -0.86029315 ;
	setAttr ".tk[28]" -type "float3" -2.2507064 1.3118813 1.9365443 ;
	setAttr ".tk[29]" -type "float3" -2.4133399 0.41496429 2.0054083 ;
	setAttr ".tk[30]" -type "float3" -2.0776806 1.3637142 0.45897871 ;
	setAttr ".tk[31]" -type "float3" -2.1706545 0.52159566 0.35932669 ;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "C5CE3392-4BE2-16CB-F8DE-9B8839885C51";
	setAttr ".ics" -type "componentList" 1 "f[25]";
	setAttr ".ix" -type "matrix" 2.8094041670563912 0 0 0 0 2.8094041670563912 0 0 0 0 2.8094041670563912 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -9.3343897 37.603329 19.683762 ;
	setAttr ".rs" 60129;
	setAttr ".lt" -type "double3" 1.2283023717073207 -3.3393277639754855 8.7961125261274695 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -10.442293413050153 36.478252740615488 18.950182316760454 ;
	setAttr ".cbx" -type "double3" -8.226485243538777 38.728407640091675 20.417340550856895 ;
createNode polyTweak -n "polyTweak7";
	rename -uid "B746FF5A-4E88-A0A8-E017-D2B8AFD3FA1A";
	setAttr ".uopa" yes;
	setAttr -s 18 ".tk";
	setAttr ".tk[2]" -type "float3" 0 2.9802322e-008 0 ;
	setAttr ".tk[16]" -type "float3" 0 0.26217112 -0.42344895 ;
	setAttr ".tk[17]" -type "float3" 0 0.26217112 -0.42344895 ;
	setAttr ".tk[18]" -type "float3" 0 0.26217112 -0.42344895 ;
	setAttr ".tk[19]" -type "float3" 0 0.26217112 -0.42344895 ;
	setAttr ".tk[24]" -type "float3" 0 2.9802322e-008 0 ;
	setAttr ".tk[28]" -type "float3" 0.90323567 0.080299124 -0.49512655 ;
	setAttr ".tk[29]" -type "float3" 0.52422029 0.52171862 -0.53466886 ;
	setAttr ".tk[30]" -type "float3" 1.0573943 0.29160768 -0.40608078 ;
	setAttr ".tk[31]" -type "float3" 1.0345013 0.73501676 -0.42868596 ;
	setAttr ".tk[32]" -type "float3" 0.56495708 -1.0921708 -0.72575819 ;
	setAttr ".tk[33]" -type "float3" 0.50189525 -0.64723462 -0.78802872 ;
	setAttr ".tk[34]" -type "float3" 0.80772239 -0.87917858 -0.58553076 ;
	setAttr ".tk[35]" -type "float3" 0.77167141 -0.43223602 -0.6211288 ;
	setAttr ".tk[36]" -type "float3" 0.92680573 -0.43901676 -1.0975418 ;
	setAttr ".tk[37]" -type "float3" 0.92680573 -0.43901676 -1.0975418 ;
	setAttr ".tk[38]" -type "float3" 0.92680573 -0.43901676 -1.0975418 ;
	setAttr ".tk[39]" -type "float3" 0.92680573 -0.43901676 -1.0975418 ;
createNode polySplit -n "polySplit4";
	rename -uid "C3E07628-4147-D6E3-2036-4992DB92AEDB";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483612 -2147483611 -2147483609 -2147483607 -2147483612;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak8";
	rename -uid "F1291C54-4FEB-D397-5DAE-8E9EB71A631D";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[40:43]" -type "float3"  0 0.36554092 0.26488897 0
		 0.36554092 0.26488897 0 0.36554092 0.26488897 0 0.36554092 0.26488897;
createNode polySplit -n "polySplit5";
	rename -uid "7DF1C26C-4EA2-B08D-510B-6B9D8BB7467E";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483640 -2147483639 -2147483626 -2147483625 -2147483640;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit6";
	rename -uid "B76D5D13-427F-4318-3B9D-ADA4896B1202";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483636 -2147483635 -2147483627 -2147483628 -2147483636;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit7";
	rename -uid "9D39CE82-46CF-A30A-B330-C39E63569A8F";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483644 -2147483643 -2147483634 -2147483633 -2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak9";
	rename -uid "1A8CDED2-4451-7E13-C66A-E98F3D8AA8B3";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[12]" -type "float3" 0 -0.28810012 0.20026943 ;
	setAttr ".tk[13]" -type "float3" 0 -0.28810012 0.20026943 ;
	setAttr ".tk[14]" -type "float3" 0 -0.28810012 0.20026943 ;
	setAttr ".tk[15]" -type "float3" 0 -0.28810012 0.20026943 ;
	setAttr ".tk[44]" -type "float3" 0 0.37458581 -0.058404468 ;
	setAttr ".tk[45]" -type "float3" 0 0.37458581 -0.058404468 ;
	setAttr ".tk[46]" -type "float3" 0 0.37458581 -0.058404468 ;
	setAttr ".tk[47]" -type "float3" 0 0.37458581 -0.058404468 ;
	setAttr ".tk[48]" -type "float3" 0 0.2218962 -0.73209482 ;
	setAttr ".tk[49]" -type "float3" 0 0.2218962 -0.73209482 ;
	setAttr ".tk[50]" -type "float3" 0 -0.38147199 -1.2024758 ;
	setAttr ".tk[51]" -type "float3" 0 -0.38147199 -1.2024758 ;
createNode polySplit -n "polySplit8";
	rename -uid "A413D28E-42D0-03A9-63EF-BC994459730E";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483628 -2147483627 -2147483555 -2147483556 -2147483628;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit9";
	rename -uid "9FE56EAA-4A9F-B75C-67ED-8C8A819C99F7";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483636 -2147483635 -2147483554 -2147483553 -2147483636;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit10";
	rename -uid "BFBFB2BC-4873-A165-7309-4183E229A2D5";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483634 -2147483547 -2147483548 -2147483633 -2147483634;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit11";
	rename -uid "97DD0D71-4EA8-7AC2-3EEE-E2A61156AB38";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483644 -2147483643 -2147483546 -2147483545 -2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit12";
	rename -uid "116BCB29-4542-01A8-E230-148A63C0493D";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483626 -2147483563 -2147483564 -2147483625 -2147483626;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit13";
	rename -uid "C545459B-49B4-B6A4-1C2D-65A2C2D32B91";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483640 -2147483639 -2147483562 -2147483561 -2147483640;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit14";
	rename -uid "6A728BD2-413C-87B3-6449-57BC6C1DB72B";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483604 -2147483601 -2147483602 -2147483603 -2147483604;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit15";
	rename -uid "8BF43C31-4D24-6876-1E39-7C8E71E72EF7";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483612 -2147483611 -2147483609 -2147483607 -2147483612;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit16";
	rename -uid "B19323F1-477B-70BA-68C8-CCB8055EC491";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483572 -2147483569 -2147483570 -2147483571 -2147483572;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit17";
	rename -uid "256C6A43-4053-E7DD-B7EB-9CBC5BE2DA4B";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483580 -2147483577 -2147483575 -2147483579 -2147483580;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit18";
	rename -uid "BA995F0B-46FA-37E0-3103-F4A3970A279B";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483588 -2147483585 -2147483583 -2147483587 -2147483588;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit19";
	rename -uid "91DD2E9D-4248-DF36-08B2-7CADA70781F5";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483596 -2147483593 -2147483591 -2147483595 -2147483596;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "83CAC9AA-4BD7-99D4-9A22-2F915DFC3205";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 2.8094041670563912 0 0 0 0 2.8094041670563912 0 0 0 0 2.8094041670563912 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.074192 26.052807 31.648523 ;
	setAttr ".rs" 33197;
	setAttr ".lt" -type "double3" 0 -0.41440068444643052 3.5262808738341898 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 4.491616950918452 25.616940340909551 31.261978597121907 ;
	setAttr ".cbx" -type "double3" 5.6567673717865548 26.488673984832484 32.035067371600299 ;
createNode polyTweak -n "polyTweak10";
	rename -uid "53891E74-41E5-1B2B-081C-5AAFF5D55F96";
	setAttr ".uopa" yes;
	setAttr -s 32 ".tk";
	setAttr ".tk[12]" -type "float3" 0 -0.9597553 0.23162995 ;
	setAttr ".tk[13]" -type "float3" 0 -0.9597553 0.23162995 ;
	setAttr ".tk[14]" -type "float3" 0 -0.12745595 0.16569272 ;
	setAttr ".tk[15]" -type "float3" 0 -0.12745595 0.16569272 ;
	setAttr ".tk[20]" -type "float3" 0.16222486 0.057644624 2.1724229 ;
	setAttr ".tk[21]" -type "float3" -0.16222486 0.057644624 2.1724229 ;
	setAttr ".tk[22]" -type "float3" -0.16222486 -0.18510017 1.9571509 ;
	setAttr ".tk[23]" -type "float3" 0.16222486 -0.18510017 1.9571509 ;
	setAttr ".tk[40]" -type "float3" 0.082481198 -0.29535526 -0.022004126 ;
	setAttr ".tk[41]" -type "float3" -0.082481198 -0.29535526 -0.022004126 ;
	setAttr ".tk[42]" -type "float3" -0.082481198 -0.44388905 -0.079960696 ;
	setAttr ".tk[43]" -type "float3" 0.082481198 -0.44388905 -0.079960696 ;
	setAttr ".tk[44]" -type "float3" 0 0.22996101 -0.28222486 ;
	setAttr ".tk[45]" -type "float3" 0 0.22996101 -0.28222486 ;
	setAttr ".tk[48]" -type "float3" 0 -0.10196476 -0.36962214 ;
	setAttr ".tk[49]" -type "float3" 0 -0.10196476 -0.36962214 ;
	setAttr ".tk[56]" -type "float3" -2.4424907e-015 -1.003607 -0.23736475 ;
	setAttr ".tk[57]" -type "float3" -2.4424907e-015 -1.003607 -0.23736475 ;
	setAttr ".tk[58]" -type "float3" 0 -0.24216625 -0.61178857 ;
	setAttr ".tk[59]" -type "float3" 0 -0.24216625 -0.61178857 ;
	setAttr ".tk[60]" -type "float3" 0 0.12745596 -0.39511332 ;
	setAttr ".tk[61]" -type "float3" 0 0.12745596 -0.39511332 ;
	setAttr ".tk[72]" -type "float3" 0 0.089219168 0.24216625 ;
	setAttr ".tk[73]" -type "float3" 0 -0.27177212 0.083622158 ;
	setAttr ".tk[74]" -type "float3" 0 -0.27177212 0.083622158 ;
	setAttr ".tk[75]" -type "float3" 0 0.089219168 0.24216625 ;
	setAttr ".tk[88]" -type "float3" 0.17421794 -0.22373125 0.89943528 ;
	setAttr ".tk[89]" -type "float3" 0.17421794 -0.51551312 0.73200166 ;
	setAttr ".tk[90]" -type "float3" -0.17421794 -0.51551312 0.73200166 ;
	setAttr ".tk[91]" -type "float3" -0.17421794 -0.22373125 0.89943528 ;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "79DF5F6B-41B0-1725-ABEA-8880ABBACC40";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 2.8094041670563912 0 0 0 0 2.8094041670563912 0 0 0 0 2.8094041670563912 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.074192 23.403055 34.011822 ;
	setAttr ".rs" 39449;
	setAttr ".lt" -type "double3" 0 -1.5350700324708622 3.1800552765852004 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 4.491616950918452 22.967187716046148 33.625275823497262 ;
	setAttr ".cbx" -type "double3" 5.6567673717865548 23.838921359969085 34.398367277232254 ;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "9E0D0473-4FAE-C5FF-4C6E-F9ADFF41E01C";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 2.8094041670563912 0 0 0 0 2.8094041670563912 0 0 0 0 2.8094041670563912 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.074192 20.144571 35.372509 ;
	setAttr ".rs" 47865;
	setAttr ".lt" -type "double3" 0 1.9502529204191501 3.008594525127791 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 4.491616950918452 19.708705312740957 34.985963079624867 ;
	setAttr ".cbx" -type "double3" 5.6567673717865548 20.580437617035592 35.759054533359858 ;
createNode polyTweak -n "polyTweak11";
	rename -uid "F8E57218-4FCD-1509-244D-F590BD4A7B0A";
	setAttr ".uopa" yes;
	setAttr -s 32 ".tk";
	setAttr ".tk[16]" -type "float3" 0.0090124831 0.0088636661 0.0016310856 ;
	setAttr ".tk[17]" -type "float3" -0.0090125063 0.0088636661 0.0016310856 ;
	setAttr ".tk[18]" -type "float3" -0.0090125063 -0.0088636661 -0.0016310856 ;
	setAttr ".tk[19]" -type "float3" 0.0090124831 -0.0088636661 -0.0016310856 ;
	setAttr ".tk[20]" -type "float3" -0.081112266 0.072938688 -0.24763486 ;
	setAttr ".tk[21]" -type "float3" 0.081112243 0.072938688 -0.24763486 ;
	setAttr ".tk[22]" -type "float3" 0.081112243 0.30942935 -0.33866253 ;
	setAttr ".tk[23]" -type "float3" -0.081112266 0.30942935 -0.33866253 ;
	setAttr ".tk[40]" -type "float3" -0.082481235 -0.38016102 0.13671437 ;
	setAttr ".tk[41]" -type "float3" 0.082481235 -0.38016102 0.13671437 ;
	setAttr ".tk[42]" -type "float3" 0.082481235 -0.23162739 0.19467109 ;
	setAttr ".tk[43]" -type "float3" -0.082481235 -0.23162739 0.19467109 ;
	setAttr ".tk[84]" -type "float3" 0.11827743 0.26498771 0.068426393 ;
	setAttr ".tk[85]" -type "float3" -0.11827743 0.26498771 0.068426393 ;
	setAttr ".tk[86]" -type "float3" -0.11827743 0.040906351 0.0080471952 ;
	setAttr ".tk[87]" -type "float3" 0.11827743 0.040906351 0.0080471952 ;
	setAttr ".tk[88]" -type "float3" -0.12837128 -0.37515578 -0.11266827 ;
	setAttr ".tk[89]" -type "float3" -0.12837128 -0.16015913 0.010703494 ;
	setAttr ".tk[90]" -type "float3" 0.12837128 -0.16015913 0.010703494 ;
	setAttr ".tk[91]" -type "float3" 0.12837128 -0.37515578 -0.11266827 ;
	setAttr ".tk[104]" -type "float3" -0.10814955 0.19593108 0.00084251538 ;
	setAttr ".tk[105]" -type "float3" 0.10814955 0.19593108 0.00084251538 ;
	setAttr ".tk[106]" -type "float3" 0.10814955 0.4413484 0.024648814 ;
	setAttr ".tk[107]" -type "float3" -0.10814955 0.4413484 0.024648814 ;
	setAttr ".tk[108]" -type "float3" -0.036049895 0.25911087 -0.13029219 ;
	setAttr ".tk[109]" -type "float3" 0.036049895 0.25911087 -0.13029219 ;
	setAttr ".tk[110]" -type "float3" 0.036049895 0.32718638 -0.09912844 ;
	setAttr ".tk[111]" -type "float3" -0.036049895 0.32718638 -0.09912844 ;
	setAttr ".tk[112]" -type "float3" 0.072099879 -0.035814919 -0.061281659 ;
	setAttr ".tk[113]" -type "float3" -0.072099879 -0.035814919 -0.061281659 ;
	setAttr ".tk[114]" -type "float3" -0.072099879 -0.091641016 -0.24461251 ;
	setAttr ".tk[115]" -type "float3" 0.072099879 -0.091641016 -0.24461251 ;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "718BE2AA-4F66-FA07-BD6B-22A879052510";
	setAttr ".dc" -type "componentList" 3 "e[30]" "e[32]" "e[34:35]";
createNode deleteComponent -n "deleteComponent2";
	rename -uid "E971241D-45CF-509C-ADA9-57AD69EB1CB3";
	setAttr ".dc" -type "componentList" 1 "vtx[16:19]";
createNode polyTweak -n "polyTweak12";
	rename -uid "5BCD8C38-4885-9FA5-F242-8FBE52A0B483";
	setAttr ".uopa" yes;
	setAttr -s 39 ".tk";
	setAttr ".tk[2]" -type "float3" 0 -1.5497208e-006 -1.4901161e-007 ;
	setAttr ".tk[3]" -type "float3" 0 -1.5497208e-006 -1.4901161e-007 ;
	setAttr ".tk[4]" -type "float3" 0 -1.5497208e-006 -1.4901161e-007 ;
	setAttr ".tk[5]" -type "float3" 0 -1.5497208e-006 -1.4901161e-007 ;
	setAttr ".tk[8]" -type "float3" 0 0.038236793 0.67551672 ;
	setAttr ".tk[9]" -type "float3" 0 0.038236793 0.67551672 ;
	setAttr ".tk[12]" -type "float3" 0 -0.038236786 -0.39511332 ;
	setAttr ".tk[13]" -type "float3" 0 -0.038236786 -0.39511332 ;
	setAttr ".tk[14]" -type "float3" 0 -0.14020154 -0.87944657 ;
	setAttr ".tk[15]" -type "float3" 0 -0.14020154 -0.87944657 ;
	setAttr ".tk[40]" -type "float3" 0 0.22942066 -0.3313854 ;
	setAttr ".tk[41]" -type "float3" 0 0.22942066 -0.3313854 ;
	setAttr ".tk[42]" -type "float3" 0 0.22942066 -0.3313854 ;
	setAttr ".tk[43]" -type "float3" 0 0.22942066 -0.3313854 ;
	setAttr ".tk[44]" -type "float3" -0.074397951 -0.15457973 0.017245363 ;
	setAttr ".tk[45]" -type "float3" 0.074397951 -0.15457973 0.017245363 ;
	setAttr ".tk[46]" -type "float3" 0.074397951 -0.12582335 -0.11921014 ;
	setAttr ".tk[47]" -type "float3" -0.074397951 -0.12582335 -0.11921014 ;
	setAttr ".tk[52]" -type "float3" 0 0.038236786 -0.10196476 ;
	setAttr ".tk[53]" -type "float3" 0 0.038236786 -0.10196476 ;
	setAttr ".tk[54]" -type "float3" 0 -0.076473579 -0.15294713 ;
	setAttr ".tk[55]" -type "float3" 0 -0.076473579 -0.15294713 ;
	setAttr ".tk[56]" -type "float3" 0 -0.012745596 0.19118389 ;
	setAttr ".tk[57]" -type "float3" 0 -0.012745596 0.19118389 ;
	setAttr ".tk[68]" -type "float3" 0 -0.01274559 -0.89219213 ;
	setAttr ".tk[69]" -type "float3" 0 -0.038236786 -0.39511332 ;
	setAttr ".tk[70]" -type "float3" 0 -0.038236786 -0.39511332 ;
	setAttr ".tk[71]" -type "float3" 0 -0.01274559 -0.89219213 ;
	setAttr ".tk[72]" -type "float3" 0 0.12745824 -0.29314741 ;
	setAttr ".tk[73]" -type "float3" 0 0.12745824 -0.29314741 ;
	setAttr ".tk[74]" -type "float3" 0 0.12745824 -0.29314741 ;
	setAttr ".tk[75]" -type "float3" 0 0.12745824 -0.29314741 ;
	setAttr ".tk[76]" -type "float3" 0.10891041 0.38756382 0.46578354 ;
	setAttr ".tk[77]" -type "float3" 0.10891041 0.17324531 0.4518947 ;
	setAttr ".tk[78]" -type "float3" -0.10891041 0.17324531 0.4518947 ;
	setAttr ".tk[79]" -type "float3" -0.10891041 0.38756382 0.46578354 ;
createNode deleteComponent -n "deleteComponent3";
	rename -uid "713AAACF-480C-8F07-517C-4AB6D59A3807";
	setAttr ".dc" -type "componentList" 1 "e[120:123]";
createNode deleteComponent -n "deleteComponent4";
	rename -uid "48CA02AA-4BD3-D4B9-FB89-B48E7A3FCB7E";
	setAttr ".dc" -type "componentList" 1 "e[124:127]";
createNode deleteComponent -n "deleteComponent5";
	rename -uid "6B31833B-4FC6-3D6A-2577-AD9E519EB539";
	setAttr ".dc" -type "componentList" 1 "vtx[60:67]";
createNode polyTweak -n "polyTweak13";
	rename -uid "0B056040-4DE8-FEC0-0887-97BABB13B91D";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0 1.1216128 ;
	setAttr ".tk[1]" -type "float3" 0 0 1.1216128 ;
	setAttr ".tk[6]" -type "float3" 0 4.4703484e-008 -2.3069551 ;
	setAttr ".tk[7]" -type "float3" 0 4.4703484e-008 -2.3069551 ;
	setAttr ".tk[8]" -type "float3" 0 -1.1088675 0.54806054 ;
	setAttr ".tk[9]" -type "float3" 0 -1.1088675 0.54806054 ;
	setAttr ".tk[48]" -type "float3" 0 0.063727982 -0.66277087 ;
	setAttr ".tk[49]" -type "float3" 0 0.063727982 -0.66277087 ;
	setAttr ".tk[50]" -type "float3" 0 -0.35687655 -0.43335009 ;
	setAttr ".tk[51]" -type "float3" 0 -0.35687655 -0.43335009 ;
createNode polySplit -n "polySplit20";
	rename -uid "DBB2D0F2-442F-C40E-9BB4-0C86018EBB10";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483536 -2147483533 -2147483534 -2147483535 -2147483536;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak14";
	rename -uid "ABA120F9-431E-933E-8FB4-E0AFA691170D";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[8]" -type "float3" 0 1.0256302 -0.64101887 ;
	setAttr ".tk[9]" -type "float3" 0 1.0256302 -0.64101887 ;
	setAttr ".tk[10]" -type "float3" 0 -0.59828413 0.21367304 ;
	setAttr ".tk[11]" -type "float3" 0 -0.59828413 0.21367304 ;
	setAttr ".tk[104]" -type "float3" 0 0.19118389 0.36962214 ;
	setAttr ".tk[105]" -type "float3" 0 -0.12745595 0.35687658 ;
	setAttr ".tk[106]" -type "float3" 0 -0.12745595 0.35687658 ;
	setAttr ".tk[107]" -type "float3" 0 0.19118389 0.36962214 ;
createNode deleteComponent -n "deleteComponent6";
	rename -uid "63B0B9C5-4066-1CC1-89B7-E69FD61D93DF";
	setAttr ".dc" -type "componentList" 1 "e[176:179]";
createNode deleteComponent -n "deleteComponent7";
	rename -uid "161C34F7-4936-8779-832F-4B8A667E3F6D";
	setAttr ".dc" -type "componentList" 1 "e[168:171]";
createNode deleteComponent -n "deleteComponent8";
	rename -uid "52962D20-4F36-36D0-857E-78A2569DF24B";
	setAttr ".dc" -type "componentList" 1 "e[160:163]";
createNode deleteComponent -n "deleteComponent9";
	rename -uid "E761BA16-4727-6250-E37C-9B811AD753C2";
	setAttr ".dc" -type "componentList" 1 "vtx[80:91]";
createNode polyExtrudeFace -n "polyExtrudeFace9";
	rename -uid "F25ED383-4067-9030-26CC-AB92C0303D10";
	setAttr ".ics" -type "componentList" 1 "f[25]";
	setAttr ".ix" -type "matrix" 2.8094041670563912 0 0 0 0 2.8094041670563912 0 0 0 0 2.8094041670563912 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -7.4997191 33.719208 28.209642 ;
	setAttr ".rs" 54343;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -8.6076228909621459 32.594129091218605 27.476063098344007 ;
	setAttr ".cbx" -type "double3" -6.3918153912649185 34.84428934920799 28.943221332440451 ;
createNode polyTweak -n "polyTweak15";
	rename -uid "C658C56D-4647-4938-0B73-E0B2F3D15005";
	setAttr ".uopa" yes;
	setAttr -s 17 ".tk";
	setAttr ".tk[24]" -type "float3" -0.41752404 0.014057446 0.62938207 ;
	setAttr ".tk[25]" -type "float3" -0.28670105 -0.004897939 0.67772019 ;
	setAttr ".tk[26]" -type "float3" -0.60597253 0.0049833683 0.52052957 ;
	setAttr ".tk[27]" -type "float3" -0.57798749 -0.014057446 0.548163 ;
	setAttr ".tk[28]" -type "float3" -0.46438789 0 0.93962836 ;
	setAttr ".tk[29]" -type "float3" -0.46438789 0 0.93962836 ;
	setAttr ".tk[30]" -type "float3" -0.46438789 0 0.93962836 ;
	setAttr ".tk[31]" -type "float3" -0.46438789 0 0.93962836 ;
	setAttr ".tk[32]" -type "float3" 1.0251954 0 1.1608886 ;
	setAttr ".tk[33]" -type "float3" 1.0251954 0 1.1608886 ;
	setAttr ".tk[34]" -type "float3" 1.0251954 0 1.1608886 ;
	setAttr ".tk[35]" -type "float3" 1.0251954 0 1.1608886 ;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	rename -uid "5C68C76E-45CF-A075-9C84-EC9ECDDA101B";
	setAttr ".ics" -type "componentList" 1 "f[25]";
	setAttr ".ix" -type "matrix" 2.8094041670563912 0 0 0 0 2.8094041670563912 0 0 0 0 2.8094041670563912 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -7.4997196 33.719208 32.574841 ;
	setAttr ".rs" 65215;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -8.607623560776295 32.594129091218605 31.841260666289294 ;
	setAttr ".cbx" -type "double3" -6.3918153912649185 34.84428934920799 33.308418900385739 ;
createNode polyTweak -n "polyTweak16";
	rename -uid "61BBB9EF-4F36-8D16-A1DC-7EA9E52C4518";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[96:99]" -type "float3"  0 0 1.55378091 0 0 1.55378091
		 0 0 1.55378091 0 0 1.55378091;
createNode polyTweak -n "polyTweak17";
	rename -uid "7A8A8B9F-4C3C-36F6-9BAF-A4A2CEF6C1A8";
	setAttr ".uopa" yes;
	setAttr -s 21 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0 -2.9802322e-008 ;
	setAttr ".tk[24]" -type "float3" -0.2414723 -0.052800819 0.0044405465 ;
	setAttr ".tk[25]" -type "float3" -0.24051848 0.018397234 -0.074532509 ;
	setAttr ".tk[26]" -type "float3" -0.26377296 -0.018718287 0.12564579 ;
	setAttr ".tk[27]" -type "float3" -0.25434241 0.052800849 0.10546918 ;
	setAttr ".tk[28]" -type "float3" 0.067666382 0.13385288 0.11824725 ;
	setAttr ".tk[29]" -type "float3" -0.084690653 0 0.19089404 ;
	setAttr ".tk[30]" -type "float3" 0.0050826636 0.047451653 -0.23687753 ;
	setAttr ".tk[31]" -type "float3" -0.00017893047 -0.13385288 -0.17192461 ;
	setAttr ".tk[32]" -type "float3" 0.081311993 0.26758081 -0.37012389 ;
	setAttr ".tk[33]" -type "float3" -0.0036767037 0.39335144 -0.34403369 ;
	setAttr ".tk[34]" -type "float3" 0.32060817 0.32778728 -0.51787215 ;
	setAttr ".tk[35]" -type "float3" 0.27202272 0.45412531 -0.50295657 ;
	setAttr ".tk[96]" -type "float3" -0.49948475 -1.0825599 0.07238394 ;
	setAttr ".tk[97]" -type "float3" -0.52605164 -1.0825599 0.10474725 ;
	setAttr ".tk[98]" -type "float3" -0.44401821 -1.0825599 -0.047897454 ;
	setAttr ".tk[99]" -type "float3" -0.45920581 -1.0825599 -0.029396098 ;
	setAttr ".tk[100]" -type "float3" -0.69459736 -1.518908 1.8967953 ;
	setAttr ".tk[101]" -type "float3" -0.64415967 -1.6603999 1.9314412 ;
	setAttr ".tk[102]" -type "float3" -0.87665528 -1.5866402 1.8310386 ;
	setAttr ".tk[103]" -type "float3" -0.84782124 -1.7287705 1.8508445 ;
createNode polySplit -n "polySplit21";
	rename -uid "67EA5736-4AB9-FA72-DB0F-62884C8771BC";
	setAttr -s 43 ".e[0:42]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 43 ".d[0:42]"  -2147483648 -2147483645 -2147483463 -2147483570 -2147483634 -2147483554 
		-2147483574 -2147483564 -2147483628 -2147483539 -2147483584 -2147483532 -2147483646 -2147483610 -2147483523 -2147483514 -2147483590 -2147483507 
		-2147483618 -2147483486 -2147483478 -2147483470 -2147483474 -2147483482 -2147483490 -2147483620 -2147483505 -2147483592 -2147483516 -2147483521 
		-2147483612 -2147483647 -2147483530 -2147483582 -2147483537 -2147483626 -2147483562 -2147483576 -2147483556 -2147483636 -2147483572 -2147483461 
		-2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak18";
	rename -uid "50FC485D-4399-6B44-A30B-0BBFD73000E1";
	setAttr ".uopa" yes;
	setAttr -s 47 ".tk";
	setAttr ".tk[6]" -type "float3" 0 -3.5762787e-007 0 ;
	setAttr ".tk[7]" -type "float3" 0 -3.5762787e-007 0 ;
	setAttr ".tk[90]" -type "float3" 0 -0.13876383 0.35461867 ;
	setAttr ".tk[91]" -type "float3" 0 -0.13876383 0.35461867 ;
	setAttr ".tk[104]" -type "float3" 0.052835178 0 0.65357053 ;
	setAttr ".tk[105]" -type "float3" -0.068697982 -3.5762787e-007 -1.2700126 ;
	setAttr ".tk[106]" -type "float3" -0.053297535 0.39236492 -0.9129436 ;
	setAttr ".tk[107]" -type "float3" -0.069084674 0.30078417 -0.46470702 ;
	setAttr ".tk[108]" -type "float3" -0.10065882 -0.24382585 -0.53653717 ;
	setAttr ".tk[109]" -type "float3" -0.096199274 -0.085467115 -0.58860052 ;
	setAttr ".tk[110]" -type "float3" -0.091739699 0.01749783 -0.63343757 ;
	setAttr ".tk[111]" -type "float3" -0.087280072 0.084025912 -0.58634531 ;
	setAttr ".tk[112]" -type "float3" -0.082820609 0.21228318 -0.5089615 ;
	setAttr ".tk[113]" -type "float3" -0.066048011 0.3441968 -0.44737205 ;
	setAttr ".tk[114]" -type "float3" -0.049275506 0.48233825 -0.39757305 ;
	setAttr ".tk[115]" -type "float3" -0.032503016 0.4965536 -0.28801858 ;
	setAttr ".tk[116]" -type "float3" -0.015730454 0.5264107 -0.18055397 ;
	setAttr ".tk[117]" -type "float3" 0.0068286289 0.55778658 -0.087514162 ;
	setAttr ".tk[118]" -type "float3" 0.028283961 0.57718343 0.043190576 ;
	setAttr ".tk[119]" -type "float3" 0.062469169 0.53417873 0.18586436 ;
	setAttr ".tk[120]" -type "float3" 0.075199008 0.44034779 0.27451709 ;
	setAttr ".tk[121]" -type "float3" 0.087928906 0.3733474 0.38278702 ;
	setAttr ".tk[122]" -type "float3" 0.10065873 0.36755753 0.51001316 ;
	setAttr ".tk[123]" -type "float3" 0.10065882 0.30549759 0.60215902 ;
	setAttr ".tk[124]" -type "float3" 0.10065882 0.20803647 0.62974095 ;
	setAttr ".tk[125]" -type "float3" 0.10065882 -0.14348747 0.91001034 ;
	setAttr ".tk[126]" -type "float3" -0.14178269 -0.52111381 -0.61532164 ;
	setAttr ".tk[127]" -type "float3" -0.14178269 -0.25062275 -0.67830491 ;
	setAttr ".tk[128]" -type "float3" -0.14178269 -0.36879244 -0.64024717 ;
	setAttr ".tk[129]" -type "float3" -0.14178269 -0.45716915 -0.52282965 ;
	setAttr ".tk[130]" -type "float3" -0.12385204 -0.45193431 -0.32197711 ;
	setAttr ".tk[131]" -type "float3" -0.10592139 -0.51704556 -0.17133351 ;
	setAttr ".tk[132]" -type "float3" -0.087990798 -0.65236694 -0.059576064 ;
	setAttr ".tk[133]" -type "float3" -0.039839279 -0.68817091 0.12285192 ;
	setAttr ".tk[134]" -type "float3" -0.009618436 -0.63502598 0.29151627 ;
	setAttr ".tk[135]" -type "float3" 0.02215709 -0.58500552 0.40529907 ;
	setAttr ".tk[136]" -type "float3" 0.045782011 -0.54282194 0.52051508 ;
	setAttr ".tk[137]" -type "float3" 0.069406934 -0.49789029 0.60826355 ;
	setAttr ".tk[138]" -type "float3" 0.093031831 -0.36960736 0.70914274 ;
	setAttr ".tk[139]" -type "float3" 0.11665675 -0.2207236 0.78255439 ;
	setAttr ".tk[140]" -type "float3" 0.12293823 -0.088694736 0.82170564 ;
	setAttr ".tk[141]" -type "float3" 0.12921968 0.031149682 0.81093031 ;
	setAttr ".tk[142]" -type "float3" 0.13550118 0.15711288 0.73891753 ;
	setAttr ".tk[143]" -type "float3" 0.14178269 0.34028977 0.59815377 ;
	setAttr ".tk[144]" -type "float3" 0.097308964 0.50493884 0.50116009 ;
	setAttr ".tk[145]" -type "float3" 0.075072072 0.57595479 0.24960482 ;
createNode polySplit -n "polySplit22";
	rename -uid "9E5C5A00-430B-2A9B-D5FA-6E858E539C61";
	setAttr -s 55 ".e[0:54]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5;
	setAttr -s 55 ".d[0:54]"  -2147483644 -2147483608 -2147483604 -2147483600 -2147483458 -2147483450 
		-2147483446 -2147483454 -2147483598 -2147483602 -2147483606 -2147483609 -2147483524 -2147483513 -2147483589 -2147483508 -2147483617 -2147483485 
		-2147483477 -2147483469 -2147483381 -2147483472 -2147483480 -2147483488 -2147483619 -2147483506 -2147483591 -2147483515 -2147483522 -2147483611 
		-2147483643 -2147483531 -2147483583 -2147483540 -2147483627 -2147483563 -2147483575 -2147483555 -2147483635 -2147483571 -2147483462 -2147483639 
		-2147483402 -2147483640 -2147483464 -2147483569 -2147483633 -2147483553 -2147483573 -2147483561 -2147483625 -2147483538 -2147483581 -2147483529 
		-2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyEditEdgeFlow -n "polyEditEdgeFlow1";
	rename -uid "EF334BB0-49F2-08E4-ED89-1B8FB748E108";
	setAttr ".ics" -type "componentList" 8 "e[35]" "e[55]" "e[121]" "e[131]" "e[137]" "e[161]" "e[169]" "e[177]";
createNode polyTweak -n "polyTweak19";
	rename -uid "74BB8136-4026-1A8A-2CCC-699CA5A83482";
	setAttr ".uopa" yes;
	setAttr -s 44 ".tk";
	setAttr ".tk[146]" -type "float3" -0.64762026 0 0 ;
	setAttr ".tk[157]" -type "float3" -0.64762032 0 0 ;
	setAttr ".tk[158]" -type "float3" -0.64762026 0 0 ;
	setAttr ".tk[159]" -type "float3" -0.64762032 0 0 ;
	setAttr ".tk[160]" -type "float3" -0.6476202 0 0 ;
	setAttr ".tk[161]" -type "float3" -0.64762044 0 0 ;
	setAttr ".tk[162]" -type "float3" -0.64762032 0 0 ;
	setAttr ".tk[163]" -type "float3" -0.64762044 0 0 ;
	setAttr ".tk[164]" -type "float3" -0.64762044 0 0 ;
	setAttr ".tk[165]" -type "float3" -0.64762038 0 0 ;
	setAttr ".tk[167]" -type "float3" 0.54031116 0 0 ;
	setAttr ".tk[168]" -type "float3" 0.54031116 0 0 ;
	setAttr ".tk[169]" -type "float3" 0.54031128 0 0 ;
	setAttr ".tk[170]" -type "float3" 0.54031116 0 0 ;
	setAttr ".tk[171]" -type "float3" 0.54031104 0 0 ;
	setAttr ".tk[172]" -type "float3" 0.54031128 0 0 ;
	setAttr ".tk[173]" -type "float3" 0.54031116 0 0 ;
	setAttr ".tk[174]" -type "float3" 0.5403111 0 0 ;
	setAttr ".tk[175]" -type "float3" 0.54031116 0 0 ;
	setAttr ".tk[176]" -type "float3" 0.5403111 0 0 ;
	setAttr ".tk[177]" -type "float3" 0.5403111 0 0 ;
	setAttr ".tk[178]" -type "float3" 0.5403111 0 0 ;
	setAttr ".tk[179]" -type "float3" 0.54031122 0 0 ;
	setAttr ".tk[180]" -type "float3" 0.54031116 0 0 ;
	setAttr ".tk[181]" -type "float3" 0.54031122 0 0 ;
	setAttr ".tk[182]" -type "float3" 0.54031122 0 0 ;
	setAttr ".tk[183]" -type "float3" 0.5403111 0 0 ;
	setAttr ".tk[184]" -type "float3" 0.54031122 0 0 ;
	setAttr ".tk[185]" -type "float3" 0.54031116 0 0 ;
	setAttr ".tk[186]" -type "float3" 0.54031116 0 0 ;
	setAttr ".tk[187]" -type "float3" 0.54031116 0 0 ;
	setAttr ".tk[189]" -type "float3" -0.64762032 0 0 ;
	setAttr ".tk[190]" -type "float3" -0.64762044 0 0 ;
	setAttr ".tk[191]" -type "float3" -0.64762044 0 0 ;
	setAttr ".tk[192]" -type "float3" -0.64762044 0 0 ;
	setAttr ".tk[193]" -type "float3" -0.6476202 0 0 ;
	setAttr ".tk[194]" -type "float3" -0.64762032 0 0 ;
	setAttr ".tk[195]" -type "float3" -0.64762038 0 0 ;
	setAttr ".tk[196]" -type "float3" -0.64762026 0 0 ;
	setAttr ".tk[197]" -type "float3" -0.64762026 0 0 ;
	setAttr ".tk[198]" -type "float3" -0.64762032 0 0 ;
	setAttr ".tk[199]" -type "float3" -0.64762032 0 0 ;
createNode polyEditEdgeFlow -n "polyEditEdgeFlow2";
	rename -uid "20233441-4461-9F1B-425A-0E82A8360D40";
	setAttr ".ics" -type "componentList" 20 "e[7]" "e[17]" "e[26]" "e[34]" "e[54]" "e[61]" "e[70]" "e[81]" "e[90]" "e[96]" "e[102]" "e[105]" "e[113]" "e[122]" "e[130]" "e[138]" "e[159]" "e[167]" "e[175]" "e[182]";
createNode polyEditEdgeFlow -n "polyEditEdgeFlow3";
	rename -uid "40770D3E-4C01-BD3C-E197-9EB06DBBCA00";
	setAttr ".ics" -type "componentList" 20 "e[11]" "e[18]" "e[25]" "e[33]" "e[53]" "e[62]" "e[69]" "e[82]" "e[89]" "e[97]" "e[101]" "e[104]" "e[114]" "e[123]" "e[129]" "e[139]" "e[157]" "e[165]" "e[173]" "e[183]";
createNode polyEditEdgeFlow -n "polyEditEdgeFlow4";
	rename -uid "5E50D836-4D35-ED04-8A58-A391B14772F2";
	setAttr ".ics" -type "componentList" 8 "e[32]" "e[52]" "e[120]" "e[128]" "e[136]" "e[156]" "e[164]" "e[172]";
createNode polyEditEdgeFlow -n "polyEditEdgeFlow5";
	rename -uid "AD226D56-4D4C-9ABC-ABB1-879C13FDC42D";
	setAttr ".ics" -type "componentList" 11 "e[10]" "e[19]" "e[63]" "e[68]" "e[83]" "e[88]" "e[98]" "e[100]" "e[107]" "e[115]" "e[180]";
createNode polyEditEdgeFlow -n "polyEditEdgeFlow6";
	rename -uid "9C7C955C-419E-52D1-0588-1CBC318F27DB";
	setAttr ".ics" -type "componentList" 11 "e[6]" "e[16]" "e[60]" "e[71]" "e[80]" "e[91]" "e[99]" "e[103]" "e[106]" "e[112]" "e[181]";
createNode polyEditEdgeFlow -n "polyEditEdgeFlow7";
	rename -uid "97E5F3A8-4B4D-17E6-01CD-FC83B748513E";
	setAttr ".ics" -type "componentList" 3 "e[246:287]" "e[308]" "e[330]";
createNode polySoftEdge -n "polySoftEdge2";
	rename -uid "64FA2948-483F-4B2F-4468-A2ACA937BCD0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 2.8094041670563912 0 0 0 0 2.8094041670563912 0 0 0 0 2.8094041670563912 0
		 0 0 0 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak20";
	rename -uid "BAA62C16-4EEE-F526-049E-3782F486E3CB";
	setAttr ".uopa" yes;
	setAttr -s 19 ".tk";
	setAttr ".tk[0]" -type "float3" 0 -0.14938098 0 ;
	setAttr ".tk[1]" -type "float3" 0 -0.14938098 0 ;
	setAttr ".tk[6]" -type "float3" 0 -0.14938071 0 ;
	setAttr ".tk[7]" -type "float3" 0 -0.14938083 0 ;
	setAttr ".tk[51]" -type "float3" 0 -7.1525574e-007 0 ;
	setAttr ".tk[88]" -type "float3" 0.12540899 -0.27902773 0.23865649 ;
	setAttr ".tk[89]" -type "float3" 0.053969804 -0.1824888 0.35518396 ;
	setAttr ".tk[90]" -type "float3" -0.013683684 -0.094975963 -0.0079317633 ;
	setAttr ".tk[91]" -type "float3" 0.023704097 -0.057568699 -0.023497658 ;
	setAttr ".tk[104]" -type "float3" 0 -0.67656994 0 ;
	setAttr ".tk[105]" -type "float3" 0 -0.52901757 0 ;
	setAttr ".tk[125]" -type "float3" 0 -0.18899101 0.096811898 ;
	setAttr ".tk[126]" -type "float3" 0.021535208 -0.22786054 0.28312558 ;
	setAttr ".tk[165]" -type "float3" 0 -0.18899101 0.096811898 ;
	setAttr ".tk[166]" -type "float3" -0.065922596 -0.73327029 0.20210113 ;
	setAttr ".tk[167]" -type "float3" -1.3322676e-015 -0.18899101 0.096811898 ;
	setAttr ".tk[187]" -type "float3" 0 -0.14938083 0 ;
	setAttr ".tk[188]" -type "float3" 0 0.72301209 0 ;
	setAttr ".tk[189]" -type "float3" 0 -0.14938083 0 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "3F9969A2-442D-CF34-0E15-F38054F31F96";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 556\n                -height 343\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 556\n            -height 343\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 0\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 556\n                -height 342\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 556\n            -height 342\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 0\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 556\n                -height 342\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 556\n            -height 342\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 0\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1118\n                -height 730\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1118\n            -height 730\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n"
		+ "                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n"
		+ "                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n"
		+ "                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n"
		+ "                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1118\\n    -height 730\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1118\\n    -height 730\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "31F0D698-4D17-A4DE-7B9E-73B621579189";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyTweak -n "polyTweak21";
	rename -uid "2C03BC6B-4081-8734-5E00-F3A62CA75212";
	setAttr ".uopa" yes;
	setAttr -s 200 ".tk";
	setAttr ".tk[0:165]" -type "float3"  0 -3.96923184 2.26149535 0 -3.96923184
		 2.023658276 0 2.42630482 0.80532783 0 2.33558512 0.93935907 0 3.19436264 0.67913723
		 0 3.25961781 0.63256669 0 -3.96923184 0 0 -3.96923184 0 0 -2.066588402 0 0 -2.036692619
		 0 0 -2.27205849 0 0 -2.27064323 0 0 1.0093181133 0 0 1.020695567 0 0 0.60204446 0
		 0 0.59388417 0 -0.31974831 2.16841936 3.76335478 -0.53213292 2.15455103 3.74519825
		 -0.57772726 2.37477374 3.94951487 -0.34580109 2.38410735 3.96613646 -0.082417317
		 2.60995531 1.93813801 -0.37165985 2.55682659 1.98613298 -0.37930515 2.97644329 1.90879464
		 -0.082417317 2.9407177 1.92072248 0.076048292 2.66959119 2.19464731 0.44421679 3.069890738
		 2.13657618 0.16104814 2.10141611 2.31118035 0.27083081 2.79211402 2.28426266 0.54561162
		 2.89320898 2.92350483 0.61837029 3.096772432 2.88570523 0.39044139 2.98531246 2.96043539
		 0.41628557 3.1785984 2.94472027 0.43665734 2.85574055 3.51050091 0.48431382 3.014984608
		 3.47666502 0.27011019 2.93196917 3.56433535 0.29735407 3.09193325 3.54499054 -0.23043551
		 2.30747962 3.0042247772 -0.50873864 2.29082799 2.99824476 -0.53900462 2.59831023
		 3.13585663 -0.24504986 2.61080742 3.1452198 0 2.90397835 0 0 2.91464996 0 0 1.9650315
		 -0.1134166 0 1.96060956 -0.1272494 0 -0.58779931 0 0 -0.56826019 0 0 -0.39884233
		 0 0 -0.40262333 0 0 -2.8384521 0 0 -2.83926654 0 0 -2.94497418 0 0 -2.98854351 0
		 0 0.10887088 0 0 0.11227249 0 0 -0.04449787 0 0 -0.046367157 0 0 -1.18675339 0 0
		 -1.16226816 0 0 -1.14025748 0 0 -1.14228272 0 0 1.31673121 0 0 1.95930982 0 0 1.94680846
		 0 0 1.31202865 0 0 3.032380581 -0.15554515 0 3.041369915 -0.15038793 0 2.144907 0.36254847
		 0 2.15237021 0.33785212 -0.10990942 2.66542196 2.35127926 -0.11475322 3.051356792
		 2.35510874 -0.42503658 3.039450169 2.35409403 -0.40500596 2.65328264 2.35504317 -0.20433015
		 2.58494091 2.75540209 -0.47153553 2.56768656 2.75400376 -0.50189519 2.90578246 2.83681202
		 -0.21752928 2.92011023 2.84248161 -0.27634418 2.1628778 3.33388233 -0.29575664 2.40051317
		 3.51982594 -0.5574165 2.38903666 3.50588465 -0.52024347 2.1463449 3.32068348 -0.31618321
		 1.98552847 4.023803711 -0.53544909 1.97536087 4.0031657219 -0.58200055 2.17293024
		 4.26157904 -0.34177139 2.17959976 4.27970362 -0.32539126 1.73401356 4.10713577 -0.52526724
		 1.72719204 4.085812569 -0.57285476 1.8612721 4.35569429 -0.35203239 1.86550164 4.37374878
		 -0.36118731 1.50711894 4.51548958 -0.52134198 1.5215199 4.52863836 -0.55553818 1.64049554
		 4.70731258 -0.37263617 1.64868009 4.72065735 0 -3.19094467 0.97645468 0 -3.42531061
		 0 0 -3.35856557 0 0 -3.18567371 0.75802052 0.54843587 2.53280115 4.012882233 0.5848484
		 2.66196108 3.98062515 0.41726795 2.59462857 4.073625565 0.43808416 2.72437668 4.055180073
		 0.58598667 2.42843103 4.47201729 0.60757959 2.52375126 4.44032717 0.50053191 2.47406054
		 4.54647446 0.51287597 2.56981087 4.52836609 0 -3.96923089 2.54059887 0 -3.96923089
		 0 0 -3.38203621 0 0 -2.94988871 0 0 -2.29995275 0 0 -1.13273144 0 0 -0.37071019 0
		 0 0.13773403 0 0 1.09604764 0 0 2.067442417 0 0 3.044140339 0 0 3.17656231 0 0 3.33316755
		 0.61040139 -0.24924693 2.99386668 1.91121984 -0.27160633 3.10597301 2.35902953 -0.36230272
		 2.96594763 2.85688901 -0.39467534 2.65530872 3.1670146 -0.42983392 2.43417549 3.54593945
		 -0.46585062 2.41295624 3.98972702 -0.46600482 2.20601916 4.30937767 -0.46673873 1.88365698
		 4.40510273 -0.46878472 1.64984798 4.76663733 -0.42474392 1.47976601 4.50537062 -0.42247614
		 1.71256387 4.059837818 -0.42302272 1.95350695 3.9780674 -0.42317563 2.13014746 3.72567892
		 -0.39635628 2.11603856 3.29979038 -0.36819616 2.24935484 2.98145914 -0.33658892 2.52498245
		 2.7449491 -0.25712511 2.60142851 2.35646844 -0.24565381 2.55282164 1.97019088 0 2.27115393
		 0.92928302 0 2.011543751 0.43746305 0 1.83215261 -0.0011434853 0 1.20463419 0 0 0.52166259
		 0 0 -0.071401551 0 0 -0.60263592 0 0 -1.17636371 0 0 -2.01510644 0 0 -2.78605318
		 0 0 -3.13041258 1.37863493 0 2.81033325 0.74223 -0.11480389 2.94626904 2.16560936
		 0.062411733 2.99499345 2.9046092 -0.059093431 2.93536353 3.4935832 0.047062993 2.59737754
		 3.99675226 0.07720378 2.47609162 4.45616293 0.77547425 2.52193594 4.53741837 0.69644648
		 2.65950251 4.064402103 0.55250257 3.011953592 3.55466413 0.67213386 3.081956625 2.95258093
		 0.53205186 1.9478296 2.29771638 0.067820042 2.77534056 2.7870152 -0.035135459 2.86464763
		 2.34137869 -0.14016472 2.75767851 2.78908539 -0.16423117 2.46079922 3.065408707 -0.21988468
		 2.28378606 3.41941166 -0.27350166 2.28054476 3.86322069 -0.26829818 2.085435629 4.15190458
		 -0.28217423 1.80191517 4.24170876 -0.30298844 1.60902476 4.61861706;
	setAttr ".tk[166:199]" -0.43064693 1.45427799 4.70374298 -0.58368003 1.60902476
		 4.61861706 -0.60449421 1.80191517 4.24170876 -0.61837029 2.085435629 4.15190458 -0.61316669
		 2.28054476 3.86322069 -0.6027323 2.28378606 3.41941166 -0.59433442 2.46079922 3.065408707
		 -0.55434942 2.75767851 2.78908539 -0.48737246 2.86464763 2.34137869 -0.45677549 2.77534056
		 1.92942834 0 2.81033325 0.74223 0 2.60139799 0.061921239 0 2.44029093 0 0 1.63950157
		 0 0 0.80937344 0 0 0.033823077 0 0 -0.49584824 0 0 -1.16799188 0 0 -2.17556572 0
		 0 -3.024860382 0 0 -3.44009113 0 0 -3.96923184 0 0 -3.96923184 0 0 -3.96923184 0
		 0 -3.44009113 0 0 -3.024860382 0 0 -2.17556572 0 0 -1.16799188 0 0 -0.49584824 0
		 0 0.033823077 0 0 0.80937344 0 0 1.63950157 0 0 2.44029093 0 0 2.60139799 0.061921239;
createNode polySplit -n "polySplit23";
	rename -uid "CAA7D3B6-4822-D86B-F112-5993047C02AC";
	setAttr -s 19 ".e[0:18]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 19 ".d[0:18]"  -2147483624 -2147483372 -2147483623 -2147483277 -2147483622 -2147483390 
		-2147483621 -2147483605 -2147483601 -2147483597 -2147483453 -2147483445 -2147483301 -2147483448 -2147483456 -2147483599 -2147483603 -2147483607 
		-2147483624;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyEditEdgeFlow -n "polyEditEdgeFlow8";
	rename -uid "ECD4F889-4B77-4912-A1AA-5196E1EBD052";
	setAttr ".ics" -type "componentList" 5 "e[147]" "e[151]" "e[155]" "e[189]" "e[197]";
createNode polyTweak -n "polyTweak22";
	rename -uid "368EDDA5-4E71-8B43-5914-698012037ADB";
	setAttr ".uopa" yes;
	setAttr -s 17 ".tk";
	setAttr ".tk[200]" -type "float3" 0 -0.047095828 0 ;
	setAttr ".tk[206]" -type "float3" 0 0.53731 0 ;
	setAttr ".tk[207]" -type "float3" 0 0.43273169 0 ;
	setAttr ".tk[208]" -type "float3" 0 0.43273169 0 ;
	setAttr ".tk[209]" -type "float3" 0 0.43273169 0 ;
	setAttr ".tk[210]" -type "float3" 0 0.43273169 0 ;
	setAttr ".tk[211]" -type "float3" 0 0.43273169 0 ;
	setAttr ".tk[213]" -type "float3" 0 -0.67333579 0 ;
	setAttr ".tk[214]" -type "float3" 0 -0.67333579 0 ;
	setAttr ".tk[215]" -type "float3" 0 -0.67333579 0 ;
	setAttr ".tk[216]" -type "float3" 0 -0.67333579 0 ;
	setAttr ".tk[217]" -type "float3" 0 -0.67333579 0 ;
createNode polyEditEdgeFlow -n "polyEditEdgeFlow9";
	rename -uid "4F414613-4EF0-CC55-755A-AA838B8EA54E";
	setAttr ".ics" -type "componentList" 5 "e[146]" "e[150]" "e[154]" "e[193]" "e[201]";
createNode polyEditEdgeFlow -n "polyEditEdgeFlow10";
	rename -uid "0F236B2A-4A83-131C-C6F5-A484A30B09D0";
	setAttr ".ics" -type "componentList" 5 "e[145]" "e[149]" "e[153]" "e[191]" "e[199]";
createNode polyEditEdgeFlow -n "polyEditEdgeFlow11";
	rename -uid "B04C7903-45B3-349A-B7D3-3D816D88DDA4";
	setAttr ".ics" -type "componentList" 5 "e[144]" "e[148]" "e[152]" "e[188]" "e[196]";
createNode polySoftEdge -n "polySoftEdge3";
	rename -uid "A5FA6CBB-46BB-AB2B-9DFB-C1AEE686A492";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 2.8094041670563912 0 0 0 0 2.8094041670563912 0 0 0 0 2.8094041670563912 0
		 0 0 0 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak23";
	rename -uid "20F24E4C-45C7-78FA-B234-B99FA978B4B6";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[212]" -type "float3" 0 -0.13211089 1.0545315 ;
createNode polyTweak -n "polyTweak24";
	rename -uid "0ACB4495-4EDD-2930-98FC-4EAEDA6917B9";
	setAttr ".uopa" yes;
	setAttr -s 216 ".tk";
	setAttr ".tk[0]" -type "float3" -1.1705617 0 0 ;
	setAttr ".tk[1]" -type "float3" 1.2305049 0 0 ;
	setAttr ".tk[2]" -type "float3" -0.24991621 0.14400366 -0.011452059 ;
	setAttr ".tk[3]" -type "float3" -0.51418573 0.17876114 -0.06186441 ;
	setAttr ".tk[4]" -type "float3" -0.12647381 -0.15026578 0.036011472 ;
	setAttr ".tk[5]" -type "float3" -0.37956735 -0.17526735 0.053527325 ;
	setAttr ".tk[6]" -type "float3" -0.12282132 5.3290705e-015 -0.69183832 ;
	setAttr ".tk[7]" -type "float3" 0.73947847 0 -0.1712525 ;
	setAttr ".tk[8]" -type "float3" -0.35876578 0 0 ;
	setAttr ".tk[9]" -type "float3" -0.38298899 0 0 ;
	setAttr ".tk[10]" -type "float3" -0.14606073 0 0 ;
	setAttr ".tk[11]" -type "float3" -0.15506795 0 0 ;
	setAttr ".tk[12]" -type "float3" -0.65026659 -0.43997094 1.3123271 ;
	setAttr ".tk[13]" -type "float3" -0.65073913 -0.43997094 1.3123271 ;
	setAttr ".tk[14]" -type "float3" -0.8722772 -0.43997094 1.3123271 ;
	setAttr ".tk[15]" -type "float3" -0.87745994 -0.43997094 1.3123271 ;
	setAttr ".tk[16]" -type "float3" 0.17468047 0.15720814 0.13806947 ;
	setAttr ".tk[17]" -type "float3" -0.12183119 0.17834736 0.16463542 ;
	setAttr ".tk[18]" -type "float3" -0.095549867 -0.15733832 -0.13434318 ;
	setAttr ".tk[19]" -type "float3" 0.19466189 -0.17157137 -0.15867618 ;
	setAttr ".tk[20]" -type "float3" -0.77451617 0 0 ;
	setAttr ".tk[21]" -type "float3" -0.81850702 0 0 ;
	setAttr ".tk[22]" -type "float3" -0.70226932 0 0 ;
	setAttr ".tk[23]" -type "float3" -0.71462095 0 0 ;
	setAttr ".tk[24]" -type "float3" -0.43603787 -0.014942894 -0.0029601345 ;
	setAttr ".tk[25]" -type "float3" -0.30770788 0.016743135 -0.0056263083 ;
	setAttr ".tk[26]" -type "float3" -0.64467728 -0.018791238 0.0049383105 ;
	setAttr ".tk[27]" -type "float3" -0.55805165 0.013069031 0.0025188262 ;
	setAttr ".tk[28]" -type "float3" -0.088606678 0 0 ;
	setAttr ".tk[29]" -type "float3" -0.028047686 0 0 ;
	setAttr ".tk[30]" -type "float3" -0.13504265 0 0 ;
	setAttr ".tk[31]" -type "float3" -0.099029042 0 0 ;
	setAttr ".tk[32]" -type "float3" 0.070041269 0.12676302 0.010349937 ;
	setAttr ".tk[33]" -type "float3" 0.096952617 -0.099641599 0.028609162 ;
	setAttr ".tk[34]" -type "float3" -0.10849763 0.092951417 -0.028609162 ;
	setAttr ".tk[35]" -type "float3" -0.091281541 -0.1356962 -0.0081596775 ;
	setAttr ".tk[36]" -type "float3" -1.0527959 0.097432941 0.045212783 ;
	setAttr ".tk[37]" -type "float3" -1.2031188 0.10863508 0.049072791 ;
	setAttr ".tk[38]" -type "float3" -1.2044377 -0.098195665 -0.039789025 ;
	setAttr ".tk[39]" -type "float3" -0.99835336 -0.10659996 -0.045840189 ;
	setAttr ".tk[40]" -type "float3" -0.0025051241 0 0 ;
	setAttr ".tk[41]" -type "float3" -0.0032535859 0 0 ;
	setAttr ".tk[42]" -type "float3" -0.35526603 -0.043961491 0.13112652 ;
	setAttr ".tk[43]" -type "float3" -0.32068646 -0.040467516 0.12070487 ;
	setAttr ".tk[44]" -type "float3" -1.7089134 -0.10288126 0.30687007 ;
	setAttr ".tk[45]" -type "float3" -1.7089134 -0.10905863 0.32529578 ;
	setAttr ".tk[46]" -type "float3" -1.7089134 -0.030439438 0.09079352 ;
	setAttr ".tk[47]" -type "float3" -1.7089134 -0.032026719 0.095527977 ;
	setAttr ".tk[48]" -type "float3" -0.29753762 0 0 ;
	setAttr ".tk[49]" -type "float3" -0.27129716 0 0 ;
	setAttr ".tk[50]" -type "float3" -0.19727427 0 0 ;
	setAttr ".tk[51]" -type "float3" -0.17145202 0 0 ;
	setAttr ".tk[52]" -type "float3" -1.2185975 -0.19976446 0.59584922 ;
	setAttr ".tk[53]" -type "float3" -1.220649 -0.19479577 0.5810287 ;
	setAttr ".tk[54]" -type "float3" -1.2436717 -0.29794988 0.88871258 ;
	setAttr ".tk[55]" -type "float3" -1.2390347 -0.30090067 0.8975144 ;
	setAttr ".tk[56]" -type "float3" -1.1138587 0 0 ;
	setAttr ".tk[57]" -type "float3" -1.1170278 0 0 ;
	setAttr ".tk[58]" -type "float3" -1.0531819 0 0 ;
	setAttr ".tk[59]" -type "float3" -1.0614908 0 0 ;
	setAttr ".tk[60]" -type "float3" -0.57526785 -0.26789913 0.79907876 ;
	setAttr ".tk[61]" -type "float3" -0.150273 -0.17279291 0.51539981 ;
	setAttr ".tk[62]" -type "float3" -0.14707506 -0.17592633 0.52474606 ;
	setAttr ".tk[63]" -type "float3" -0.5636248 -0.26238966 0.78264564 ;
	setAttr ".tk[64]" -type "float3" 0.10517555 -0.16931891 0.1124391 ;
	setAttr ".tk[65]" -type "float3" -0.18038853 -0.17279127 0.1104833 ;
	setAttr ".tk[66]" -type "float3" -0.41120204 0.17349811 -0.084030584 ;
	setAttr ".tk[67]" -type "float3" -0.12546307 0.17061499 -0.074665233 ;
	setAttr ".tk[68]" -type "float3" -1.0670468 0 0 ;
	setAttr ".tk[69]" -type "float3" -1.0131079 0 0 ;
	setAttr ".tk[70]" -type "float3" -1.0195007 0 0 ;
	setAttr ".tk[71]" -type "float3" -1.073316 0 0 ;
	setAttr ".tk[72]" -type "float3" -1.1242158 0.083505929 0.022734465 ;
	setAttr ".tk[73]" -type "float3" -1.2367984 0.09248355 0.023432311 ;
	setAttr ".tk[74]" -type "float3" -1.24959 -0.083402239 -0.017924141 ;
	setAttr ".tk[75]" -type "float3" -1.1297771 -0.090854727 -0.020755649 ;
	setAttr ".tk[76]" -type "float3" -0.67168522 0.1145743 0.087214708 ;
	setAttr ".tk[77]" -type "float3" -0.55002934 -0.12802683 -0.095025003 ;
	setAttr ".tk[78]" -type "float3" -0.79844201 -0.11631058 -0.081359386 ;
	setAttr ".tk[79]" -type "float3" -0.87638521 0.13145305 0.10014819 ;
	setAttr ".tk[80]" -type "float3" 0.88110119 0.16848943 0.20583224 ;
	setAttr ".tk[81]" -type "float3" 0.55466521 0.18666755 0.2412544 ;
	setAttr ".tk[82]" -type "float3" 0.58222979 -0.16657685 -0.2022948 ;
	setAttr ".tk[83]" -type "float3" 0.96215564 -0.17850068 -0.23341009 ;
	setAttr ".tk[84]" -type "float3" 1.2991871 0.09674862 0.18161036 ;
	setAttr ".tk[85]" -type "float3" 1.0593233 0.107044 0.2125143 ;
	setAttr ".tk[86]" -type "float3" 1.1215887 -0.095333271 -0.17855236 ;
	setAttr ".tk[87]" -type "float3" 1.4005754 -0.10171766 -0.20472342 ;
	setAttr ".tk[88]" -type "float3" 1.7821335 0.10172106 0.25465369 ;
	setAttr ".tk[89]" -type "float3" 1.5015552 0.070023365 0.22687949 ;
	setAttr ".tk[90]" -type "float3" 1.4516553 -0.19185846 -0.15069731 ;
	setAttr ".tk[91]" -type "float3" 1.7772822 -0.20987195 -0.17887922 ;
	setAttr ".tk[92]" -type "float3" -0.27885738 0 0 ;
	setAttr ".tk[93]" -type "float3" -0.15530756 0 0 ;
	setAttr ".tk[94]" -type "float3" -0.17628147 0 0 ;
	setAttr ".tk[95]" -type "float3" 1.2350299 0 0 ;
	setAttr ".tk[96]" -type "float3" 0.11044401 0.19905512 0.02258686 ;
	setAttr ".tk[97]" -type "float3" 0.14584243 -0.1659684 0.052624982 ;
	setAttr ".tk[98]" -type "float3" -0.16486926 0.15306751 -0.052624982 ;
	setAttr ".tk[99]" -type "float3" -0.14928031 -0.2134369 -0.017662697 ;
	setAttr ".tk[100]" -type "float3" 0.15686078 0.28720596 0.26803622 ;
	setAttr ".tk[101]" -type "float3" 0.18994713 -0.25702333 0.3140738 ;
	setAttr ".tk[102]" -type "float3" -0.22154117 0.23341347 0.11929488 ;
	setAttr ".tk[103]" -type "float3" -0.22482006 -0.30821878 0.17786151 ;
	setAttr ".tk[104]" -type "float3" -0.0082485387 0 2.6912112 ;
	setAttr ".tk[105]" -type "float3" 0.8152793 -4.4408921e-015 -1.8538275 ;
	setAttr ".tk[106]" -type "float3" -0.14397348 0 0 ;
	setAttr ".tk[107]" -type "float3" -0.14715977 0 0 ;
	setAttr ".tk[108]" -type "float3" -0.045632951 0 0 ;
	setAttr ".tk[109]" -type "float3" -1.0264064 0 0 ;
	setAttr ".tk[110]" -type "float3" -1.7089134 -0.014448018 0.043094978 ;
	setAttr ".tk[111]" -type "float3" -1.220649 -0.15818618 0.47183135 ;
	setAttr ".tk[112]" -type "float3" -0.55693525 -0.43997094 1.3123271 ;
	setAttr ".tk[113]" -type "float3" -0.068126343 -0.15818618 0.47183135 ;
	setAttr ".tk[115]" -type "float3" -0.035796702 -0.22501396 0.10774308 ;
	setAttr ".tk[116]" -type "float3" -0.24321924 -0.20344678 0.06186441 ;
	setAttr ".tk[117]" -type "float3" -0.66358751 0 0 ;
	setAttr ".tk[118]" -type "float3" -1.00779 0 0 ;
	setAttr ".tk[119]" -type "float3" -1.1907749 -0.11470068 -0.027952744 ;
	setAttr ".tk[120]" -type "float3" -1.1018133 -0.13653284 -0.059914485 ;
	setAttr ".tk[121]" -type "float3" -0.69907498 -0.16239074 -0.12062321 ;
	setAttr ".tk[122]" -type "float3" 0.030351017 -0.21554556 -0.19319862 ;
	setAttr ".tk[123]" -type "float3" 0.75805575 -0.22573973 -0.28433269 ;
	setAttr ".tk[124]" -type "float3" 1.2672743 -0.12912482 -0.25014707 ;
	setAttr ".tk[125]" -type "float3" 1.6123904 -0.21244493 -0.27603841 ;
	setAttr ".tk[126]" -type "float3" 1.6739833 0.16192871 0.27603841 ;
	setAttr ".tk[127]" -type "float3" 1.1673478 0.12912482 0.25014707 ;
	setAttr ".tk[128]" -type "float3" 0.69020575 0.22573972 0.28433269 ;
	setAttr ".tk[129]" -type "float3" 0.0021365276 0.21554556 0.19319862 ;
	setAttr ".tk[130]" -type "float3" -0.79117572 0.16239074 0.12062321 ;
	setAttr ".tk[131]" -type "float3" -1.1326844 0.13653284 0.059914485 ;
	setAttr ".tk[132]" -type "float3" -1.1799409 0.11470068 0.027952744 ;
	setAttr ".tk[133]" -type "float3" -1.0776715 0 0 ;
	setAttr ".tk[134]" -type "float3" -0.80788857 0 0 ;
	setAttr ".tk[135]" -type "float3" -0.41306478 0.20344678 -0.058074303 ;
	setAttr ".tk[136]" -type "float3" -0.31781891 0.22501396 -0.11243907 ;
	setAttr ".tk[137]" -type "float3" -0.41563171 -0.046860278 0.13977297 ;
	setAttr ".tk[138]" -type "float3" -0.62806493 -0.27821514 0.82984883 ;
	setAttr ".tk[139]" -type "float3" -0.89831799 -0.43997094 1.3123271 ;
	setAttr ".tk[140]" -type "float3" -1.2436717 -0.31893831 0.95131606 ;
	setAttr ".tk[141]" -type "float3" -1.7089134 -0.11691795 0.34873819 ;
	setAttr ".tk[142]" -type "float3" -1.1251693 0 0 ;
	setAttr ".tk[143]" -type "float3" -0.37994891 0 0 ;
	setAttr ".tk[144]" -type "float3" -0.30895114 0 0 ;
	setAttr ".tk[145]" -type "float3" -0.13240433 0 1.5616213 ;
	setAttr ".tk[146]" -type "float3" -0.24370919 0 0 ;
	setAttr ".tk[147]" -type "float3" -0.27213407 0.0028914323 -0.0059464383 ;
	setAttr ".tk[148]" -type "float3" -0.041888118 0 0 ;
	setAttr ".tk[149]" -type "float3" 0.135233 0.013805177 0.026729738 ;
	setAttr ".tk[150]" -type "float3" 0.21150973 0.012529529 0.051740475 ;
	setAttr ".tk[151]" -type "float3" 0.29694983 -0.00078767724 0.31993237 ;
	setAttr ".tk[152]" -type "float3" -0.29694983 -0.12173068 0.11415599 ;
	setAttr ".tk[153]" -type "float3" -0.21150973 -0.08674182 -0.052042719 ;
	setAttr ".tk[154]" -type "float3" -0.135233 -0.056338798 -0.026970511 ;
	setAttr ".tk[155]" -type "float3" -0.1172767 0 0 ;
	setAttr ".tk[156]" -type "float3" -0.66133791 -0.0061821663 0.0059464383 ;
	setAttr ".tk[157]" -type "float3" -0.8848592 0 0 ;
	setAttr ".tk[158]" -type "float3" -1.0386193 0 0 ;
	setAttr ".tk[159]" -type "float3" -1.0971807 -0.0063547287 0.0059118327 ;
	setAttr ".tk[160]" -type "float3" -0.99898261 -0.005694747 0.0057025412 ;
	setAttr ".tk[161]" -type "float3" -0.55314535 -0.0088590086 0.003389488 ;
	setAttr ".tk[162]" -type "float3" 0.29170167 -0.013707511 -0.0080703981 ;
	setAttr ".tk[163]" -type "float3" 1.0179738 -0.010139455 -0.014035692 ;
	setAttr ".tk[164]" -type "float3" 1.4050112 -0.0057418798 -0.01338865 ;
	setAttr ".tk[165]" -type "float3" 1.8882853 -0.12258548 0.036732949 ;
	setAttr ".tk[166]" -type "float3" 1.694873 -0.07039696 0.46535239 ;
	setAttr ".tk[167]" -type "float3" 1.3934753 -0.12258548 0.036732949 ;
	setAttr ".tk[168]" -type "float3" 1.0298649 -0.0057418798 -0.01338865 ;
	setAttr ".tk[169]" -type "float3" 0.51615202 -0.010139455 -0.014035692 ;
	setAttr ".tk[170]" -type "float3" -0.16649534 -0.013707511 -0.0080703981 ;
	setAttr ".tk[171]" -type "float3" -0.86892253 -0.0088590086 0.003389488 ;
	setAttr ".tk[172]" -type "float3" -1.2443525 -0.005694747 0.0057025412 ;
	setAttr ".tk[173]" -type "float3" -1.2716907 -0.0063547287 0.0059118327 ;
	setAttr ".tk[174]" -type "float3" -1.0446637 0 0 ;
	setAttr ".tk[175]" -type "float3" -0.76767451 0 0 ;
	setAttr ".tk[176]" -type "float3" -0.5010621 -0.0031310888 0.012280073 ;
	setAttr ".tk[177]" -type "float3" -0.33198771 -0.0028372935 0.029972196 ;
	setAttr ".tk[178]" -type "float3" -0.11639068 -0.0025743889 0.0076787793 ;
	setAttr ".tk[179]" -type "float3" -0.37199619 -0.23216498 0.69249237 ;
	setAttr ".tk[180]" -type "float3" -0.79591221 -0.43997094 1.3123271 ;
	setAttr ".tk[181]" -type "float3" -1.2319598 -0.24342185 0.72606885 ;
	setAttr ".tk[182]" -type "float3" -1.7089134 -0.067768112 0.20213601 ;
	setAttr ".tk[183]" -type "float3" -1.0786192 0 0 ;
	setAttr ".tk[184]" -type "float3" -0.29105121 0 0 ;
	setAttr ".tk[185]" -type "float3" -0.1680716 0 0 ;
	setAttr ".tk[186]" -type "float3" -0.14219826 0 0 ;
	setAttr ".tk[187]" -type "float3" 0.62445605 0 -0.061686404 ;
	setAttr ".tk[189]" -type "float3" -1.1487615 -5.3290705e-015 -1.3258531 ;
	setAttr ".tk[190]" -type "float3" -0.18451466 0 0 ;
	setAttr ".tk[191]" -type "float3" -0.20546225 0 0 ;
	setAttr ".tk[192]" -type "float3" -0.2934528 0 0 ;
	setAttr ".tk[193]" -type "float3" -1.0786192 0 0 ;
	setAttr ".tk[194]" -type "float3" -1.7089134 -0.064461708 0.1922738 ;
	setAttr ".tk[195]" -type "float3" -1.2298368 -0.24103102 0.71893746 ;
	setAttr ".tk[196]" -type "float3" -0.79295486 -0.43997094 1.3123271 ;
	setAttr ".tk[197]" -type "float3" -0.3685948 -0.24241081 0.72305298 ;
	setAttr ".tk[198]" -type "float3" -0.10117091 -0.0041153287 0.012275028 ;
	setAttr ".tk[199]" -type "float3" 0.079765081 -0.0028372935 0.029972196 ;
	setAttr ".tk[200]" -type "float3" -0.51669002 0.074509829 -0.0011210843 ;
	setAttr ".tk[201]" -type "float3" -0.61356103 0.096231602 -0.018196233 ;
	setAttr ".tk[202]" -type "float3" -0.66563505 0.089327864 -0.021809978 ;
	setAttr ".tk[203]" -type "float3" -0.62741333 0.0055913832 0.0063006463 ;
	setAttr ".tk[204]" -type "float3" -0.53348047 -0.072665095 0.020118399 ;
	setAttr ".tk[205]" -type "float3" -0.4460026 -0.08278086 0.021809978 ;
	setAttr ".tk[206]" -type "float3" -0.42795455 -0.096231632 0.013722076 ;
	setAttr ".tk[207]" -type "float3" -0.41165709 0.024322959 -0.0019127533 ;
	setAttr ".tk[208]" -type "float3" -0.056850497 0 0 ;
	setAttr ".tk[209]" -type "float3" -0.0082791299 -0.17084834 0.011572235 ;
	setAttr ".tk[210]" -type "float3" -0.020163672 -0.27401567 0.019298576 ;
	setAttr ".tk[211]" -type "float3" -0.045729566 -0.40762505 0.24858031 ;
	setAttr ".tk[212]" -type "float3" 0 0.006012477 -0.31993237 ;
	setAttr ".tk[213]" -type "float3" -0.081984714 0.40762505 0.18550412 ;
	setAttr ".tk[214]" -type "float3" -0.057197761 0.27401572 -0.01960207 ;
	setAttr ".tk[215]" -type "float3" -0.036057595 0.17084834 -0.011812462 ;
	setAttr ".tk[216]" -type "float3" -0.12815672 0 0 ;
	setAttr ".tk[217]" -type "float3" -0.56596029 -0.024322959 0.0019128914 ;
createNode deleteComponent -n "deleteComponent10";
	rename -uid "40EA67BF-473E-3565-7F52-C6AC7702920F";
	setAttr ".dc" -type "componentList" 1 "e[376]";
createNode polyExtrudeFace -n "polyExtrudeFace11";
	rename -uid "B96B5FEE-4BEF-5D17-2E59-74AA58CA77AF";
	setAttr ".ics" -type "componentList" 1 "f[55]";
	setAttr ".ix" -type "matrix" 2.8094041670563912 0 0 0 0 2.8094041670563912 0 0 0 0 2.8094041670563912 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.80242836 19.302454 -3.3507047 ;
	setAttr ".rs" 46897;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.2185426857772477 15.206365976915201 -7.9366050853036638 ;
	setAttr ".cbx" -type "double3" 0.61368590078845231 23.398542669895697 1.2351959006587512 ;
createNode polyTweak -n "polyTweak25";
	rename -uid "7C830BAE-42D1-8259-4F4F-C98025159801";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[218]" -type "float3" 7.5646563 0 0 ;
	setAttr ".tk[219]" -type "float3" 7.5646563 0 0 ;
	setAttr ".tk[220]" -type "float3" 7.5646563 0 0 ;
	setAttr ".tk[221]" -type "float3" 7.5646563 0 0 ;
	setAttr ".tk[222]" -type "float3" 7.5646563 0 0 ;
	setAttr ".tk[223]" -type "float3" 7.5646563 0 0 ;
createNode deleteComponent -n "deleteComponent11";
	rename -uid "2857E0D0-49C9-8A34-5941-A791FBB9604C";
	setAttr ".dc" -type "componentList" 2 "e[432]" "e[436]";
createNode deleteComponent -n "deleteComponent12";
	rename -uid "175F0589-4FE7-6B71-CB47-CAAF8C63663E";
	setAttr ".dc" -type "componentList" 2 "vtx[219]" "vtx[221]";
createNode polyExtrudeFace -n "polyExtrudeFace12";
	rename -uid "F546AE03-4EC9-E79E-9BA1-B897F1344F3D";
	setAttr ".ics" -type "componentList" 1 "f[55]";
	setAttr ".ix" -type "matrix" 2.8094041670563912 0 0 0 0 2.8094041670563912 0 0 0 0 2.8094041670563912 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 7.315064 21.338799 1.9307375 ;
	setAttr ".rs" 60810;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 6.549595472723837 17.510600331204341 -2.3552390272482131 ;
	setAttr ".cbx" -type "double3" 8.0805320705199026 25.166996704779425 6.2167139158965261 ;
createNode polyTweak -n "polyTweak26";
	rename -uid "0F943B12-43E2-721F-D18D-BFBE4E4943B0";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[218:221]" -type "float3"  -4.44366074 0.78400421 1.98667252
		 -4.48180628 0.62947643 1.87615204 -4.47237206 0.70808041 1.77315831 -4.44842243 0.8201859
		 1.83058619;
createNode polyExtrudeFace -n "polyExtrudeFace13";
	rename -uid "935CB1DF-4597-751A-F770-1EBC1097C8CE";
	setAttr ".ics" -type "componentList" 1 "f[55]";
	setAttr ".ix" -type "matrix" 2.8094041670563912 0 0 0 0 2.8094041670563912 0 0 0 0 2.8094041670563912 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 8.5249968 36.077614 1.9307375 ;
	setAttr ".rs" 40156;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 4.6423264742138599 35.828002522666331 -2.3552390272482131 ;
	setAttr ".cbx" -type "double3" 12.407666779598221 36.32722572541315 6.2167139158965261 ;
createNode polyTweak -n "polyTweak27";
	rename -uid "9E1F06C9-45A4-D901-7788-96B7BCC18562";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[218:225]" -type "float3"  0.019804869 1.65321529 -0.36948043
		 -1.62659085 0.43561944 -1.00061655045 -0.68993771 1.52996898 -1.60836017 0.49106953
		 2.50032353 -1.28951061 -1.22382021 3.85155821 0 1.5948875 6.002995491 0 0.036919981
		 5.085017204 0 2.017176151 6.6977272 0;
createNode polyExtrudeFace -n "polyExtrudeFace14";
	rename -uid "836A14E7-49E4-7A26-D8DE-9CB38BA24882";
	setAttr ".ics" -type "componentList" 1 "f[55]";
	setAttr ".ix" -type "matrix" 2.8094041670563912 0 0 0 0 2.8094041670563912 0 0 0 0 2.8094041670563912 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.8995371 50.154778 -2.6639159 ;
	setAttr ".rs" 40992;
	setAttr ".lt" -type "double3" -1.3569007029090585e-014 -7.2254004001129912 11.216725255974657 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.98313311440476403 49.905167673938308 -6.9498924840832688 ;
	setAttr ".cbx" -type "double3" 6.782207190979598 50.404388197428531 1.6220607939685454 ;
createNode polyTweak -n "polyTweak28";
	rename -uid "077D0E97-4BA9-D906-4AD8-4FAB6309BE7C";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[226:229]" -type "float3"  -2.0023674965 5.010728836
		 -1.63545465 -2.0023674965 5.010728836 -1.63545465 -2.0023674965 5.010728836 -1.63545465
		 -2.0023674965 5.010728836 -1.63545465;
createNode polyExtrudeFace -n "polyExtrudeFace15";
	rename -uid "07CC64F1-447B-C661-40DF-C98D9B09D87D";
	setAttr ".ics" -type "componentList" 1 "f[55]";
	setAttr ".ix" -type "matrix" 2.8094041670563912 0 0 0 0 2.8094041670563912 0 0 0 0 2.8094041670563912 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.5825253 61.814571 3.8145156 ;
	setAttr ".rs" 36291;
	setAttr ".lt" -type "double3" 2.528532938583794e-014 -14.340953945985568 4.1555798958817114 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.300145183218697 61.564960162906871 -0.4714613319602714 ;
	setAttr ".cbx" -type "double3" 6.4651955407995088 62.064180686397094 8.1004925321789241 ;
createNode polyTweak -n "polyTweak29";
	rename -uid "F79A2F08-4E93-9F3D-1B28-4C9B1AA7AFED";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk[218:237]" -type "float3"  0.32704177 -0.088916518 -0.16266407
		 0.12931509 0.088916518 0.0075532952 0.27326101 0.083723374 0.16266406 0.42384458
		 -0.029664112 0.072581723 1.53626823 0.012731127 -0.02136247 0.63296086 0.035296891
		 0.60607141 1.088957191 -0.031040281 -0.60607135 0.4381873 -0.035296891 -0.28004378
		 0.70869082 0.016431617 -0.027574245 -0.45728081 0.045560505 0.78230476 0.13130984
		 -0.040067665 -0.78230476 -0.70869082 -0.045560505 -0.36147493 0.76309174 0.0029679176
		 -0.047939435 -0.49238288 0.52306396 0.99635637 0.14138962 -0.52019328 -1.0036561489
		 -0.76309174 -0.27698165 -0.4487434 0.93533254 0.020116411 -0.072621368 -0.60352135
		 0.5659436 1.65429306 0.17330341 -0.55176836 -1.66443169 -0.93533254 -0.31257418 -0.75478536;
createNode polySplit -n "polySplit24";
	rename -uid "7C7795A0-40B1-AD84-80C1-DC88F0FDF91D";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483193 -2147483190 -2147483188 -2147483192 -2147483193;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
	setAttr ".ief" yes;
createNode polySplit -n "polySplit25";
	rename -uid "199A8B5F-4286-7D51-4333-CF97CE3755C8";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483201 -2147483198 -2147483196 -2147483200 -2147483201;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
	setAttr ".ief" yes;
createNode polySplit -n "polySplit26";
	rename -uid "179965CE-4FFB-0E14-998A-E1ACCC7919B5";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483209 -2147483206 -2147483204 -2147483208 -2147483209;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
	setAttr ".ief" yes;
createNode polySplit -n "polySplit27";
	rename -uid "DE2FAAC1-497F-1170-59DB-359B1FD4AC52";
	setAttr -s 2 ".e[0:1]"  0.5 0.5;
	setAttr -s 2 ".d[0:1]"  -2147483214 -2147483212;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
	setAttr ".ief" yes;
createNode polySplit -n "polySplit28";
	rename -uid "8BFDD5B2-4275-6801-0835-01853A5217BB";
	setAttr -s 4 ".e[0:3]"  0 0.5 0.5 1;
	setAttr -s 4 ".d[0:3]"  -2147483152 -2147483217 -2147483216 -2147483214;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
	setAttr ".ief" yes;
createNode polySplit -n "polySplit29";
	rename -uid "47478350-4B10-0C8E-D801-99853B6B26C6";
	setAttr -s 18 ".e[0:17]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 18 ".d[0:17]"  -2147483148 -2147483210 -2147483155 -2147483202 -2147483163 -2147483194 
		-2147483171 -2147483186 -2147483178 -2147483181 -2147483189 -2147483173 -2147483197 -2147483165 -2147483205 -2147483157 -2147483213 -2147483146;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
	setAttr ".ief" yes;
createNode polySplit -n "polySplit30";
	rename -uid "612529F2-4782-9DE7-EBBC-0C9306A06342";
	setAttr -s 2 ".e[0:1]"  0 0;
	setAttr -s 2 ".d[0:1]"  -2147483145 -2147483325;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
	setAttr ".ief" yes;
createNode polySplit -n "polySplit31";
	rename -uid "7599157E-45ED-46B9-8C87-3AB43F7F5377";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483627 -2147483128;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
	setAttr ".ief" yes;
createNode polySplit -n "polySplit32";
	rename -uid "78E9BE75-4E3B-DE80-7C61-5A9EDD077461";
	setAttr -s 27 ".e[0:26]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 27 ".d[0:26]"  -2147483632 -2147483395 -2147483631 -2147483147 -2147483215 -2147483154 
		-2147483207 -2147483162 -2147483199 -2147483170 -2147483191 -2147483183 -2147483119 -2147483179 -2147483187 -2147483172 -2147483195 -2147483164 
		-2147483203 -2147483156 -2147483211 -2147483151 -2147483566 -2147483367 -2147483565 -2147483258 -2147483632;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
	setAttr ".ief" yes;
createNode polySplit -n "polySplit33";
	rename -uid "7B222DFD-4DFA-19F2-E83B-278D3DF8CB21";
	setAttr -s 9 ".e[0:8]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 9 ".d[0:8]"  -2147483185 -2147483118 -2147483182 -2147483069 -2147483180 -2147483120 
		-2147483184 -2147483072 -2147483185;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyEditEdgeFlow -n "polyEditEdgeFlow12";
	rename -uid "7FAE0563-42CE-CE01-FAC5-778C1D13B69D";
	setAttr ".ics" -type "componentList" 8 "e[342:394]" "e[398]" "e[407]" "e[521:539]" "e[552]" "e[565]" "e[593]" "e[597]";
createNode polyTweak -n "polyTweak30";
	rename -uid "2C885BB1-4153-CD7E-1FF4-6ABAFF43D504";
	setAttr ".uopa" yes;
	setAttr -s 19 ".tk";
	setAttr ".tk[234]" -type "float3" 0 -0.61398607 0.14359146 ;
	setAttr ".tk[235]" -type "float3" 0 -0.61398607 0.14359146 ;
	setAttr ".tk[236]" -type "float3" 0 -0.61398607 0.14359146 ;
	setAttr ".tk[237]" -type "float3" 0 -0.61398607 0.14359146 ;
	setAttr ".tk[262]" -type "float3" 0 -0.61398607 0.14359146 ;
	setAttr ".tk[263]" -type "float3" 0 -0.61398607 0.14359146 ;
	setAttr ".tk[283]" -type "float3" 0 -0.61398607 0.14359146 ;
	setAttr ".tk[284]" -type "float3" 0 -0.61398607 0.76088351 ;
	setAttr ".tk[285]" -type "float3" 0 -0.61398607 0.14359146 ;
	setAttr ".tk[298]" -type "float3" 0 0.45993116 -0.12614031 ;
	setAttr ".tk[299]" -type "float3" 0 0.45993116 -0.12614031 ;
	setAttr ".tk[300]" -type "float3" 0 0.45993116 -0.12614031 ;
	setAttr ".tk[301]" -type "float3" 0 0.45993116 -0.12614031 ;
	setAttr ".tk[302]" -type "float3" 0 0.45993116 -0.12614031 ;
	setAttr ".tk[303]" -type "float3" 0 0.45993116 -0.12614031 ;
	setAttr ".tk[304]" -type "float3" 0 0.45993116 -0.12614031 ;
	setAttr ".tk[305]" -type "float3" 0 0.45993116 -0.12614031 ;
createNode polyEditEdgeFlow -n "polyEditEdgeFlow13";
	rename -uid "C072E86A-4976-9685-D7FD-68B503702C25";
	setAttr ".ics" -type "componentList" 3 "e[566:591]" "e[595]" "e[599]";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "polyEditEdgeFlow13.out" "pCubeShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCube1.out" "polyTweak1.ip";
connectAttr "polyTweak1.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polyTweak2.out" "polySoftEdge1.ip";
connectAttr "pCubeShape1.wm" "polySoftEdge1.mp";
connectAttr "polySplit2.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polyExtrudeFace1.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polySoftEdge1.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polyExtrudeFace2.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak4.ip";
connectAttr "polyExtrudeFace2.out" "polyTweak5.ip";
connectAttr "polyTweak5.out" "polySplit3.ip";
connectAttr "polySplit3.out" "polyExtrudeFace3.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace3.mp";
connectAttr "polyTweak6.out" "polyExtrudeFace4.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak6.ip";
connectAttr "polyExtrudeFace4.out" "polyExtrudeFace5.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak7.ip";
connectAttr "polyTweak7.out" "polySplit4.ip";
connectAttr "polySplit4.out" "polyTweak8.ip";
connectAttr "polyTweak8.out" "polySplit5.ip";
connectAttr "polySplit5.out" "polySplit6.ip";
connectAttr "polySplit6.out" "polySplit7.ip";
connectAttr "polySplit7.out" "polyTweak9.ip";
connectAttr "polyTweak9.out" "polySplit8.ip";
connectAttr "polySplit8.out" "polySplit9.ip";
connectAttr "polySplit9.out" "polySplit10.ip";
connectAttr "polySplit10.out" "polySplit11.ip";
connectAttr "polySplit11.out" "polySplit12.ip";
connectAttr "polySplit12.out" "polySplit13.ip";
connectAttr "polySplit13.out" "polySplit14.ip";
connectAttr "polySplit14.out" "polySplit15.ip";
connectAttr "polySplit15.out" "polySplit16.ip";
connectAttr "polySplit16.out" "polySplit17.ip";
connectAttr "polySplit17.out" "polySplit18.ip";
connectAttr "polySplit18.out" "polySplit19.ip";
connectAttr "polyTweak10.out" "polyExtrudeFace6.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace6.mp";
connectAttr "polySplit19.out" "polyTweak10.ip";
connectAttr "polyExtrudeFace6.out" "polyExtrudeFace7.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace7.out" "polyExtrudeFace8.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace8.out" "polyTweak11.ip";
connectAttr "polyTweak11.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "polyTweak12.ip";
connectAttr "polyTweak12.out" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "polyTweak13.ip";
connectAttr "polyTweak13.out" "polySplit20.ip";
connectAttr "polySplit20.out" "polyTweak14.ip";
connectAttr "polyTweak14.out" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "deleteComponent7.ig";
connectAttr "deleteComponent7.og" "deleteComponent8.ig";
connectAttr "deleteComponent8.og" "deleteComponent9.ig";
connectAttr "polyTweak15.out" "polyExtrudeFace9.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace9.mp";
connectAttr "deleteComponent9.og" "polyTweak15.ip";
connectAttr "polyTweak16.out" "polyExtrudeFace10.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace10.mp";
connectAttr "polyExtrudeFace9.out" "polyTweak16.ip";
connectAttr "polyExtrudeFace10.out" "polyTweak17.ip";
connectAttr "polyTweak17.out" "polySplit21.ip";
connectAttr "polySplit21.out" "polyTweak18.ip";
connectAttr "polyTweak18.out" "polySplit22.ip";
connectAttr "polyTweak19.out" "polyEditEdgeFlow1.ip";
connectAttr "polySplit22.out" "polyTweak19.ip";
connectAttr "polyEditEdgeFlow1.out" "polyEditEdgeFlow2.ip";
connectAttr "polyEditEdgeFlow2.out" "polyEditEdgeFlow3.ip";
connectAttr "polyEditEdgeFlow3.out" "polyEditEdgeFlow4.ip";
connectAttr "polyEditEdgeFlow4.out" "polyEditEdgeFlow5.ip";
connectAttr "polyEditEdgeFlow5.out" "polyEditEdgeFlow6.ip";
connectAttr "polyEditEdgeFlow6.out" "polyEditEdgeFlow7.ip";
connectAttr "polyTweak20.out" "polySoftEdge2.ip";
connectAttr "pCubeShape1.wm" "polySoftEdge2.mp";
connectAttr "polyEditEdgeFlow7.out" "polyTweak20.ip";
connectAttr "polySoftEdge2.out" "polyTweak21.ip";
connectAttr "polyTweak21.out" "polySplit23.ip";
connectAttr "polyTweak22.out" "polyEditEdgeFlow8.ip";
connectAttr "polySplit23.out" "polyTweak22.ip";
connectAttr "polyEditEdgeFlow8.out" "polyEditEdgeFlow9.ip";
connectAttr "polyEditEdgeFlow9.out" "polyEditEdgeFlow10.ip";
connectAttr "polyEditEdgeFlow10.out" "polyEditEdgeFlow11.ip";
connectAttr "polyTweak23.out" "polySoftEdge3.ip";
connectAttr "pCubeShape1.wm" "polySoftEdge3.mp";
connectAttr "polyEditEdgeFlow11.out" "polyTweak23.ip";
connectAttr "polySoftEdge3.out" "polyTweak24.ip";
connectAttr "polyTweak24.out" "deleteComponent10.ig";
connectAttr "deleteComponent10.og" "polyExtrudeFace11.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace11.mp";
connectAttr "polyExtrudeFace11.out" "polyTweak25.ip";
connectAttr "polyTweak25.out" "deleteComponent11.ig";
connectAttr "deleteComponent11.og" "deleteComponent12.ig";
connectAttr "polyTweak26.out" "polyExtrudeFace12.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace12.mp";
connectAttr "deleteComponent12.og" "polyTweak26.ip";
connectAttr "polyTweak27.out" "polyExtrudeFace13.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace13.mp";
connectAttr "polyExtrudeFace12.out" "polyTweak27.ip";
connectAttr "polyTweak28.out" "polyExtrudeFace14.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace14.mp";
connectAttr "polyExtrudeFace13.out" "polyTweak28.ip";
connectAttr "polyExtrudeFace14.out" "polyExtrudeFace15.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace15.mp";
connectAttr "polyExtrudeFace15.out" "polyTweak29.ip";
connectAttr "polyTweak29.out" "polySplit24.ip";
connectAttr "polySplit24.out" "polySplit25.ip";
connectAttr "polySplit25.out" "polySplit26.ip";
connectAttr "polySplit26.out" "polySplit27.ip";
connectAttr "polySplit27.out" "polySplit28.ip";
connectAttr "polySplit28.out" "polySplit29.ip";
connectAttr "polySplit29.out" "polySplit30.ip";
connectAttr "polySplit30.out" "polySplit31.ip";
connectAttr "polySplit31.out" "polySplit32.ip";
connectAttr "polySplit32.out" "polySplit33.ip";
connectAttr "polyTweak30.out" "polyEditEdgeFlow12.ip";
connectAttr "polySplit33.out" "polyTweak30.ip";
connectAttr "polyEditEdgeFlow12.out" "polyEditEdgeFlow13.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
// End of cerisier.ma
