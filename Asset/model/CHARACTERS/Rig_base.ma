//Maya ASCII 2016 scene
//Name: chibi_template_rig_base.ma
//Last modified: Tue, Mar 28, 2017 02:07:00 PM
//Codeset: 1252
requires maya "2016";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOptions" -nodeType "mentalrayGlobals"
		 -nodeType "mentalrayItemsList" -dataType "byteArray" "Mayatomr" "2016.0 - 3.13.1.10 ";
requires -nodeType "Unfold3DUnfold" -nodeType "Unfold3DOptimize" "Unfold3D" "Trunk.r2232.release.Mar 18 2015|11:44:26";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201603180400-990260";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
createNode transform -s -n "persp";
	rename -uid "D8BEB9CE-44D8-A514-D4FA-48B085EC31B0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -17.465225258114558 134.90788967078294 166.50915479777669 ;
	setAttr ".r" -type "double3" 343.46164834160311 -6844.6000000138729 9.9713523175374948e-017 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "277217EE-4568-ECEA-04CE-198387AB8431";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 190.53763092846481;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -35.221900000000005 52.58649999999998 -0.48294099999999984 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "5FA03FB1-4873-53E9-8201-1B822004FE3C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.1581503512083877 103.00121697360061 -11.533918411117979 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "4363F487-4563-2B29-62E9-809D0F4DAE3F";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 97.379747396911227;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "E99668E5-4646-5DA6-99DA-688F92814527";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 21.910828624800867 62.639270414669468 124.18204330089614 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "E6E2E237-455F-CF5D-4DB7-95B9D3167422";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 284.28828985269018;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "27CBC9B7-4187-0E91-B105-B2B272FC7A64";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.13558140432461 27.740367996374118 -12.318894789659929 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "F72B6393-4995-4D0E-FA0B-B2924EF00653";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 109.05622809979839;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "group_JOINT";
	rename -uid "2B772B4D-4F09-72B1-1E00-0CBCB2B78F5A";
createNode joint -n "JOINT_Root" -p "group_JOINT";
	rename -uid "A30D1D49-4623-4128-61F3-6996DD056A12";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -89.999999999999972 -3.5817469969855256 89.999999999999972 ;
	setAttr ".radi" 3;
createNode joint -n "JOINT_dos" -p "JOINT_Root";
	rename -uid "ABDD0BE3-427C-7C15-ED7C-DCBE88BFAA8D";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 -8.8278125961003172e-032 12.327909259540727 ;
	setAttr ".radi" 3;
createNode joint -n "JOINT_cou" -p "JOINT_dos";
	rename -uid "AD4B2783-467F-3FEE-CCBE-4F8D7EC3EA06";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 1.2281773792703294e-014 17.276927872503357 ;
	setAttr ".radi" 3;
createNode joint -n "JOINT_tete" -p "JOINT_cou";
	rename -uid "B289922E-4820-3014-5402-08B98D3342A2";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 81.469234390051838 89.999999999999986 0 ;
	setAttr ".radi" 3;
createNode parentConstraint -n "JOINT_tete_parentConstraint1" -p "JOINT_tete";
	rename -uid "2B490FEA-4EE5-7A2F-8062-D5972E008B9B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle1W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.0816681711721685e-017 4.2632564145606011e-014 
		3.5527136788005009e-015 ;
	setAttr ".tg[0].tor" -type "double3" 2.095234750222193e-031 -4.4035126054985979e-015 
		-1.3525074431174299e-014 ;
	setAttr ".lr" -type "double3" 6.3611093629270335e-015 6.3611093629270335e-015 6.3611093629270335e-015 ;
	setAttr ".rst" -type "double3" 15.424085624415454 1.0658141036401503e-014 3.3514857555871913e-015 ;
	setAttr ".rsrr" -type "double3" 6.3611093629270335e-015 6.3611093629270335e-015 
		6.3611093629270335e-015 ;
	setAttr -k on ".w0";
createNode joint -n "JOINT_G_clavicule" -p "JOINT_cou";
	rename -uid "CCDF6849-4549-79C2-1023-DC9519C1B942";
	setAttr ".t" -type "double3" -4.6027373084989591 -1.7493049394355786 -4.3482573891501595 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 133.61124340986743 80.166710083667979 51.718681380274433 ;
	setAttr ".radi" 3;
createNode joint -n "JOINT_G_bras" -p "JOINT_G_clavicule";
	rename -uid "CFB3A457-43AC-353D-E1E3-12A00CBE3D39";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 5.1335819068659587 -4.4119008253214105 -56.580488639000073 ;
	setAttr ".radi" 3;
createNode joint -n "JOINT_G_coude" -p "JOINT_G_bras";
	rename -uid "3AEDB6F4-417A-181E-221A-FB872B06A5A3";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.8118721159532425e-016 6.0150894714434725e-015 5.3529113258497087 ;
	setAttr ".radi" 3;
createNode joint -n "JOINT_G_poignet" -p "JOINT_G_coude";
	rename -uid "2C06712A-431E-B855-B1E7-39888433139B";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -8.8278993669730763e-017 4.0187821980688139e-015 -2.5167825438483242 ;
	setAttr ".radi" 3;
createNode joint -n "JOINT_G_main" -p "JOINT_G_poignet";
	rename -uid "62881384-4A4D-8C81-2149-DA895518E157";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 46.393479829772829 ;
	setAttr ".radi" 3;
createNode parentConstraint -n "JOINT_G_main_parentConstraint1" -p "JOINT_G_main";
	rename -uid "811DE32A-4621-199E-AB1A-EFB192A90D41";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle7W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -7.1054273576010019e-015 7.1054273576010019e-015 
		1.6653345369377348e-016 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -3.4986101496098681e-014 ;
	setAttr ".lr" -type "double3" 0 0 3.1805546814635168e-014 ;
	setAttr ".rst" -type "double3" 8.7056475747579114 -2.1316282072803006e-014 -6.106226635438361e-016 ;
	setAttr ".rsrr" -type "double3" 0 0 3.1805546814635168e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "JOINT_G_poignet_parentConstraint1" -p "JOINT_G_poignet";
	rename -uid "439A74CB-48AF-EE5A-D50A-869AC9AF2EDA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle8W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.0658141036401503e-014 2.1316282072803006e-014 
		5.5511151231257827e-017 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -46.393479829772851 ;
	setAttr ".lr" -type "double3" 0 0 1.033680271475643e-014 ;
	setAttr ".rst" -type "double3" 16.999670981306753 -7.1054273576010019e-015 -1.6653345369377348e-015 ;
	setAttr ".rsrr" -type "double3" 0 0 1.033680271475643e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "JOINT_G_coude_parentConstraint1" -p "JOINT_G_coude";
	rename -uid "78CACE87-4F9E-1C58-0CBF-70AFB4ADE9FB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle9W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.0658141036401503e-014 2.8421709430404007e-014 
		5.5511151231257827e-017 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -43.87669728592455 ;
	setAttr ".lr" -type "double3" 0 0 2.3854160110976372e-015 ;
	setAttr ".rst" -type "double3" 12.99097322997838 1.4210854715202004e-014 0 ;
	setAttr ".rsrr" -type "double3" 0 0 2.3854160110976372e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "JOINT_G_bras_parentConstraint1" -p "JOINT_G_bras";
	rename -uid "E3C93A92-4C67-60AA-1B5E-5787C8B6BDB3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle10W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.5527136788005009e-015 2.8421709430404007e-014 
		6.106226635438361e-016 ;
	setAttr ".tg[0].tor" -type "double3" -1.725450914693958e-013 -2.4967354249488606e-013 
		-49.229608611774246 ;
	setAttr ".lr" -type "double3" 1.7373779947494457e-013 2.4768569581897134e-013 -5.0193128566842364e-015 ;
	setAttr ".rst" -type "double3" 4.1318652502253936 1.4210854715202004e-014 -1.2212453270876722e-015 ;
	setAttr ".rsrr" -type "double3" 1.7334023013976161e-013 2.4649298781342249e-013 
		-1.1380422219611271e-014 ;
	setAttr -k on ".w0";
createNode joint -n "JOINT_D_clavicule" -p "JOINT_cou";
	rename -uid "54BB98EF-400C-8504-59E0-7F8564F5E04B";
	setAttr ".t" -type "double3" -4.6027695624169951 -1.7493097775232833 4.3482575090555535 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 133.61124340986768 80.166710083667979 -128.28131861972528 ;
	setAttr ".radi" 3;
createNode joint -n "JOINT_D_bras" -p "JOINT_D_clavicule";
	rename -uid "65C66520-494C-0BB7-F82C-278E0B297CDA";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 5.133581906866219 -4.4119008253213989 -56.580488639000073 ;
	setAttr ".radi" 3;
createNode joint -n "JOINT_D_coude" -p "JOINT_D_bras";
	rename -uid "BF5B74A5-4B57-1A6A-4303-E6B310B02FEB";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.2074182706804039e-006 2.0422093644773383e-014 5.3529113258497087 ;
	setAttr ".radi" 3;
createNode joint -n "JOINT_D_poignet" -p "JOINT_D_coude";
	rename -uid "A521D4C2-4CDE-21A5-24A1-B3A9B43B2998";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.9102605832895015e-006 -5.3020162717499381e-008 -2.5167825438483233 ;
	setAttr ".radi" 3;
createNode joint -n "JOINT_D_main" -p "JOINT_D_poignet";
	rename -uid "FE857056-46BB-DEB1-D23F-6184FA7902D0";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 4.1459061761904951e-006 2.2200793577446573e-006 46.39347982977278 ;
	setAttr ".radi" 3;
createNode parentConstraint -n "JOINT_D_main_parentConstraint1" -p "JOINT_D_main";
	rename -uid "92431A24-461C-D663-C430-258EBD771214";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle14W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 -1.4210854715202004e-014 1.1102230246251565e-016 ;
	setAttr ".tg[0].tor" -type "double3" -179.99999366623618 2.350682988787408e-014 
		7.461646230610262e-015 ;
	setAttr ".lr" -type "double3" 4.5270354169382663e-015 2.4109013916209295e-014 -7.8455458056188098e-022 ;
	setAttr ".rst" -type "double3" -8.7056448457308626 2.9900286335760029e-007 -8.0560134119167515e-009 ;
	setAttr ".rsrr" -type "double3" 4.5270352273624337e-015 2.3506830267025752e-014 
		-7.6276765209449645e-022 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "JOINT_D_poignet_parentConstraint1" -p "JOINT_D_poignet";
	rename -uid "C832EEE1-4FF4-29F6-EC67-73942B0FABAE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle13W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 3.5527136788005009e-015 -1.4210854715202004e-014 
		-1.1102230246251565e-016 ;
	setAttr ".tg[0].tor" -type "double3" -179.99999748945928 -6.3021263994176259e-007 
		46.393479829772815 ;
	setAttr ".lr" -type "double3" -1.9858341306967925e-014 -6.3021263994176164e-007 
		3.1974495028807679e-014 ;
	setAttr ".rst" -type "double3" -16.99963905410911 2.7724348825586276e-006 -4.9682480351975755e-014 ;
	setAttr ".rsrr" -type "double3" 5.5860963520887826e-015 -6.3021263994176174e-007 
		3.1974494888872369e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "JOINT_D_coude_parentConstraint1" -p "JOINT_D_coude";
	rename -uid "5226E67C-45B3-A168-4822-7DBABE32E649";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle12W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.5527136788005009e-015 0 5.5511151231257827e-017 ;
	setAttr ".tg[0].tor" -type "double3" -179.99999879258164 -1.2831367203138364e-013 
		43.876697285924521 ;
	setAttr ".lr" -type "double3" -2.0826076260371968e-014 -1.2831367208984796e-013 
		-3.1805533294592676e-015 ;
	setAttr ".rst" -type "double3" -12.990978221836663 1.2879189469572339e-005 9.4368957093138306e-016 ;
	setAttr ".rsrr" -type "double3" 4.6183611291315976e-015 -1.2831367206615095e-013 
		-3.1805533294592972e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "JOINT_D_bras_parentConstraint1" -p "JOINT_D_bras";
	rename -uid "0EF3BA4C-4583-B531-9D20-0B8DD7878E3D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle11W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 -1.4210854715202004e-014 0 ;
	setAttr ".tg[0].tor" -type "double3" -179.99999999999974 1.2722218725854067e-014 
		49.229608611774232 ;
	setAttr ".lr" -type "double3" -1.033680271475643e-014 1.2921003393445537e-014 -6.5350459470695714e-015 ;
	setAttr ".rst" -type "double3" -4.1318622926074493 -3.0835834081699431e-006 4.2434040625760616e-007 ;
	setAttr ".rsrr" -type "double3" -9.1440947092076103e-015 1.2324649390671127e-014 
		-1.9878466759147076e-016 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "JOINT_cou_parentConstraint1" -p "JOINT_cou";
	rename -uid "B91DD2D0-431F-AD27-D19F-CEB319D2746D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle5W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.1918911957973251e-016 -1.4210854715202004e-014 
		6.6613381477509392e-016 ;
	setAttr ".tg[0].tor" -type "double3" -90.000000000000014 -8.5307656099481637 89.999999999999972 ;
	setAttr ".lr" -type "double3" 1.2054782111624741e-015 -4.0999065425999655e-015 -1.9083328088781097e-014 ;
	setAttr ".rst" -type "double3" 13.375177729858919 0 -1.9498291869979312e-015 ;
	setAttr ".rsrr" -type "double3" 1.2054782111624741e-015 -4.0999065425999655e-015 
		-1.9083328088781097e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "JOINT_dos_parentConstraint1" -p "JOINT_dos";
	rename -uid "C5972CCE-4D3B-F9AA-FC70-36BBB32939D2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle4W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -6.9388939039072284e-018 0 -1.1102230246251565e-015 ;
	setAttr ".tg[0].tor" -type "double3" 90 8.7461622625552042 89.999999999999957 ;
	setAttr ".lr" -type "double3" -1.229780112275208e-014 1.1131155428969823e-015 -1.5902773407317584e-015 ;
	setAttr ".rst" -type "double3" 15.792735195271852 8.8817841970012523e-016 3.4972025275692431e-015 ;
	setAttr ".rsrr" -type "double3" -1.229780112275208e-014 1.1131155428969823e-015 
		-1.5902773407317584e-015 ;
	setAttr -k on ".w0";
createNode joint -n "JOINT_G_hanche" -p "JOINT_Root";
	rename -uid "9019AEAA-4ED6-FF87-622E-1081C0EB6FD3";
	setAttr ".t" -type "double3" -4.9659621458837364 1.2431362282797802 -8.4156435610903166 ;
	setAttr ".r" -type "double3" -2.5378667585807965e-014 1.828285755276713e-015 5.9543205109556571e-031 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 7.6489774920102814e-015 2.3245174158595269e-014 -173.66169613147795 ;
	setAttr ".radi" 3;
createNode joint -n "JOINT_G_genou" -p "JOINT_G_hanche";
	rename -uid "EB1513B0-4E50-A0EA-12B9-2A9CFB625DAB";
	setAttr ".t" -type "double3" 26.581868700967771 -1.1102230246251565e-015 -1.4791141972893971e-031 ;
	setAttr ".r" -type "double3" 4.625675573408919e-029 3.6888095680478032e-028 -5.4921903452957817e-013 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 4.3979827491960411e-015 -8.8547688193600713 ;
	setAttr ".radi" 3;
createNode joint -n "JOINT_G_pied" -p "JOINT_G_genou";
	rename -uid "BC2D3AEB-4EAB-E641-1C09-4E9BE961FAB9";
	setAttr ".t" -type "double3" 23.141916558321682 -2.2648549702353193e-014 1.9490766236349388e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 83.901788052176414 -89.999999999999986 0 ;
	setAttr ".radi" 3;
createNode ikEffector -n "effector2" -p "JOINT_G_genou";
	rename -uid "18EF59D9-4FE1-4BCF-2483-E5AEC184D435";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "JOINT_D_hanche" -p "JOINT_Root";
	rename -uid "B1214604-4D69-2F39-8EDE-3F97980026C7";
	setAttr ".t" -type "double3" -4.9659672160038397 1.2431314976024517 8.415647509055546 ;
	setAttr ".r" -type "double3" 2.5378667559473737e-014 -1.8282861208253768e-015 1.0535453567480527e-029 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -2.567124647150164e-015 -4.6364257986081137e-014 6.3383038685220292 ;
	setAttr ".radi" 3;
createNode joint -n "JOINT_D_genou" -p "JOINT_D_hanche";
	rename -uid "2DC15AEA-4F4E-917D-40B5-9F8370DF7A94";
	setAttr ".t" -type "double3" -26.581857943866638 4.2913249982401425e-006 -1.2434497875801753e-014 ;
	setAttr ".r" -type "double3" -1.0539435612551636e-028 9.3659750041612386e-029 -2.7461020747351463e-013 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 -5.2515563502451887e-014 -8.854768819360098 ;
	setAttr ".radi" 3;
createNode joint -n "JOINT_D_pied" -p "JOINT_D_genou";
	rename -uid "ACB4B424-4CBD-F55E-0843-99BD40892374";
	setAttr ".t" -type "double3" -23.141923607157189 4.9377117714577423e-006 8.8817841970012523e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 83.901788052176386 -89.999999999999929 0 ;
	setAttr ".radi" 3;
createNode ikEffector -n "effector1" -p "JOINT_D_genou";
	rename -uid "2616FE0B-4BD3-20BC-A885-7FB6516F7E4C";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode parentConstraint -n "JOINT_Root_parentConstraint1" -p "JOINT_Root";
	rename -uid "6658C00B-4030-A4C7-3E7B-2D9E0632503C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle3W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tor" -type "double3" -89.999999999999972 -3.5817469969855238 89.999999999999972 ;
	setAttr ".rst" -type "double3" -0.060802490944451559 55.826605479761227 0 ;
	setAttr -k on ".w0";
createNode transform -n "group_CTRL";
	rename -uid "4C065774-4B90-D51E-4FC5-33909DC9C059";
createNode transform -n "CTRL_G_pied" -p "group_CTRL";
	rename -uid "40AFB07B-481C-C153-8161-93A4C88FFFB7";
	setAttr ".rp" -type "double3" 8.3548410701458433 1.3859323509765069 -2.7309937619499882 ;
	setAttr ".sp" -type "double3" 8.3548410701458433 1.3859323509765069 -2.7309937619499882 ;
createNode nurbsCurve -n "CTRL_G_piedShape" -p "CTRL_G_pied";
	rename -uid "D7484031-443F-2B5A-5328-63A3F6DDFADD";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		12.38677416334586 1.3859323509765074 -10.264434525219713
		8.3548410701458433 1.3859323509765076 -13.38488786070036
		4.3229079769458307 1.3859323509765074 -10.264434525219716
		2.6528266071614803 1.3859323509765069 -2.7309937619499913
		4.3229079769458298 1.3859323509765065 4.802447001319738
		8.3548410701458415 1.3859323509765062 7.9229003368003861
		12.386774163345855 1.3859323509765065 4.8024470013197416
		14.056855533130207 1.3859323509765069 -2.7309937619499824
		12.38677416334586 1.3859323509765074 -10.264434525219713
		8.3548410701458433 1.3859323509765076 -13.38488786070036
		4.3229079769458307 1.3859323509765074 -10.264434525219716
		;
createNode ikHandle -n "IK_G_pied" -p "CTRL_G_pied";
	rename -uid "4A078DF8-43D9-2E54-6A65-5DA39AE4B38D";
	setAttr ".t" -type "double3" 8.3548410701458433 1.3859323509765069 -2.7309937619499882 ;
	setAttr ".r" -type "double3" -90.000000000000057 6.0982119478235433 -90.000000000000028 ;
	setAttr ".roc" yes;
createNode transform -n "CTRL_D_pied" -p "group_CTRL";
	rename -uid "DAFF1536-4EF3-7679-3F74-C3933E246C92";
	setAttr ".rp" -type "double3" -8.47645 1.3859323509765069 -2.7309937619499882 ;
	setAttr ".sp" -type "double3" -8.47645 1.3859323509765069 -2.7309937619499882 ;
createNode nurbsCurve -n "CTRL_D_piedShape" -p "CTRL_D_pied";
	rename -uid "BF22E970-4752-6A14-D3D7-2F850E95BB2A";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-4.4445169067999828 1.3859323509765074 -10.264434525219713
		-8.4764499999999998 1.3859323509765076 -13.38488786070036
		-12.508383093200013 1.3859323509765074 -10.264434525219716
		-14.178464462984362 1.3859323509765069 -2.7309937619499913
		-12.508383093200013 1.3859323509765065 4.802447001319738
		-8.4764500000000016 1.3859323509765062 7.9229003368003861
		-4.444516906799989 1.3859323509765065 4.8024470013197416
		-2.7744355370156368 1.3859323509765069 -2.7309937619499824
		-4.4445169067999828 1.3859323509765074 -10.264434525219713
		-8.4764499999999998 1.3859323509765076 -13.38488786070036
		-12.508383093200013 1.3859323509765074 -10.264434525219716
		;
createNode ikHandle -n "IK_D_pied" -p "CTRL_D_pied";
	rename -uid "E3DCB040-466E-B092-F896-5DB13CA29305";
	setAttr ".t" -type "double3" -8.47645 1.3859300000000054 -2.7309899999999994 ;
	setAttr ".r" -type "double3" 90.000000000000057 -6.0982119478235983 89.999999999999972 ;
	setAttr ".roc" yes;
createNode transform -n "CTRL_root" -p "group_CTRL";
	rename -uid "4B344AD7-4C9A-5884-C913-D0B93D4468E2";
	setAttr ".rp" -type "double3" -0.060802490944451559 55.826605479761227 0 ;
	setAttr ".sp" -type "double3" -0.060802490944451559 55.826605479761227 0 ;
createNode nurbsCurve -n "CTRL_rootShape" -p "CTRL_root";
	rename -uid "43652B37-48F8-B11E-AC0B-FE87C79859A0";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		11.769462030896774 55.826605479761227 -11.830264521841208
		-0.060802490944453468 55.826605479761227 -16.730520533249106
		-11.891067012785667 55.826605479761227 -11.830264521841215
		-16.791323024193556 55.826605479761227 -4.8480862859599184e-015
		-11.891067012785671 55.826605479761227 11.830264521841212
		-0.060802490944456604 55.826605479761227 16.730520533249109
		11.769462030896756 55.826605479761227 11.830264521841217
		16.669718042304655 55.826605479761227 8.9859952152111344e-015
		11.769462030896774 55.826605479761227 -11.830264521841208
		-0.060802490944453468 55.826605479761227 -16.730520533249106
		-11.891067012785667 55.826605479761227 -11.830264521841215
		;
createNode transform -n "CTRL_dos" -p "CTRL_root";
	rename -uid "5E72576D-4410-A6DC-27C3-BF8649AA16BA";
	setAttr ".rp" -type "double3" -0.060802490944448048 71.588492429623585 0.98661275470012266 ;
	setAttr ".sp" -type "double3" -0.060802490944448048 71.588492429623585 0.98661275470012266 ;
createNode nurbsCurve -n "CTRL_dosShape" -p "CTRL_dos";
	rename -uid "646DFE9A-4DC6-1CA4-0A9D-079189E6381C";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		8.512583456394303 71.588492429623585 -7.5867731926386162
		-0.060802490944449429 71.588492429623585 -11.137985927485236
		-8.634188438283191 71.588492429623585 -7.5867731926386197
		-12.185401173129806 71.588492429623585 0.98661275470011911
		-8.6341884382831946 71.588492429623585 9.5599987020388628
		-0.060802490944451705 71.588492429623585 13.111211436885483
		8.5125834563942906 71.588492429623585 9.5599987020388664
		12.063796191240909 71.588492429623585 0.98661275470012921
		8.512583456394303 71.588492429623585 -7.5867731926386162
		-0.060802490944449429 71.588492429623585 -11.137985927485236
		-8.634188438283191 71.588492429623585 -7.5867731926386197
		;
createNode transform -n "CTRL_cou" -p "CTRL_dos";
	rename -uid "1FD1C76A-49FA-F440-4834-83ACC69DF12A";
	setAttr ".rp" -type "double3" -0.060802490944445148 84.808139548862982 -1.0471791097982444 ;
	setAttr ".sp" -type "double3" -0.060802490944445148 84.808139548862982 -1.0471791097982444 ;
createNode nurbsCurve -n "CTRL_couShape" -p "CTRL_cou";
	rename -uid "8E1EDD88-475D-970B-A66D-2B9BC635CAE5";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		8.5125834563943066 86.238563140253973 -9.5003935842580916
		-0.060802490944446529 86.831063991746547 -13.001829665227923
		-8.6341884382831875 86.238563140253973 -9.5003935842580951
		-12.185401173129803 84.808139548862982 -1.0471791097982479
		-8.634188438283191 83.377715957471992 7.4060353646616042
		-0.060802490944448805 82.785215105979404 10.907471445631435
		8.5125834563942941 83.377715957471992 7.4060353646616077
		12.063796191240913 84.808139548862982 -1.0471791097982379
		8.5125834563943066 86.238563140253973 -9.5003935842580916
		-0.060802490944446529 86.831063991746547 -13.001829665227923
		-8.6341884382831875 86.238563140253973 -9.5003935842580951
		;
createNode transform -n "CTRL_tete" -p "CTRL_cou";
	rename -uid "8B184524-4FAE-DCF4-0404-0A949D01B7B0";
	setAttr ".rp" -type "double3" -0.060802490944441928 100.06157853260071 1.2408367377624168 ;
	setAttr ".sp" -type "double3" -0.060802490944441928 100.06157853260071 1.2408367377624168 ;
createNode nurbsCurve -n "CTRL_teteShape" -p "CTRL_tete";
	rename -uid "C2C9D62C-402A-11E9-924C-239479AEF401";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		15.768129244424502 103.84015386258559 -14.130482280415526
		-0.060802490944444482 105.40529101071373 -20.497491089308333
		-15.889734226313369 103.84015386258559 -14.130482280415535
		-22.446292428981074 100.06157853260071 1.2408367377624105
		-15.889734226313374 96.283003202615816 16.612155755940364
		-0.060802490944448673 94.717866054487672 22.979164564833173
		15.768129244424477 96.283003202615816 16.612155755940371
		22.324687447092188 100.06157853260071 1.2408367377624285
		15.768129244424502 103.84015386258559 -14.130482280415526
		-0.060802490944444482 105.40529101071373 -20.497491089308333
		-15.889734226313369 103.84015386258559 -14.130482280415535
		;
createNode transform -n "CTRL_G_bras" -p "CTRL_root";
	rename -uid "49968311-45E8-C4BE-9B8B-72BC3B3F97E4";
	setAttr ".t" -type "double3" 0 -1.4210854715202004e-014 -5.5511151231257827e-017 ;
	setAttr ".rp" -type "double3" 8.3586182436521597 80.511329923452507 -0.48294096953734084 ;
	setAttr ".sp" -type "double3" 8.3586182436521597 80.511329923452507 -0.48294096953734084 ;
createNode nurbsCurve -n "CTRL_G_brasShape" -p "CTRL_G_bras";
	rename -uid "4EC6852A-4976-30BE-8503-10B25A3D697C";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		12.517897373995101 84.670609053795445 -6.3650499253636923
		8.3586182436521579 80.511329923452507 -8.8014992302232162
		4.1993391133092226 76.352050793109569 -6.3650499253636958
		2.476509287825805 74.629220967626154 -0.48294096953734322
		4.1993391133092217 76.352050793109569 5.3991679862890116
		8.3586182436521579 80.511329923452507 7.8356172911485364
		12.517897373995094 84.670609053795445 5.3991679862890143
		14.240727199478513 86.393438879278861 -0.4829409695373364
		12.517897373995101 84.670609053795445 -6.3650499253636923
		8.3586182436521579 80.511329923452507 -8.8014992302232162
		4.1993391133092226 76.352050793109569 -6.3650499253636958
		;
createNode transform -n "CTRL_G_coude" -p "CTRL_G_bras";
	rename -uid "25D45EC3-4B88-16F3-888D-8B94674907F5";
	setAttr ".rp" -type "double3" 16.84210473765264 70.672842114438026 -0.48294096953734139 ;
	setAttr ".sp" -type "double3" 16.84210473765264 70.672842114438026 -0.48294096953734139 ;
createNode nurbsCurve -n "CTRL_G_coudeShape" -p "CTRL_G_coude";
	rename -uid "EBEC9CA2-42EB-C39E-0E32-D7BE7459A660";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		20.359843829604586 74.190581206389979 -5.4577753022657935
		16.84210473765264 70.672842114438026 -7.5184191534412292
		13.324365645700697 67.155103022486088 -5.4577753022657962
		11.867270404924184 65.698007781709578 -0.48294096953734345
		13.324365645700695 67.155103022486088 4.491893363191112
		16.84210473765264 70.672842114438026 6.5525372143665486
		20.359843829604582 74.190581206389965 4.4918933631911147
		21.816939070381096 75.647676447166475 -0.48294096953733762
		20.359843829604586 74.190581206389979 -5.4577753022657935
		16.84210473765264 70.672842114438026 -7.5184191534412292
		13.324365645700697 67.155103022486088 -5.4577753022657962
		;
createNode transform -n "CTRL_G_poignet" -p "CTRL_G_coude";
	rename -uid "A7558DCA-496D-B51B-091A-B3B7514B1785";
	setAttr ".rp" -type "double3" 29.096029673431133 58.890221983881801 -0.48294096953734272 ;
	setAttr ".sp" -type "double3" 29.096029673431133 58.890221983881801 -0.48294096953734272 ;
createNode nurbsCurve -n "CTRL_G_poignetShape" -p "CTRL_G_poignet";
	rename -uid "1DE16E73-4CF4-C412-387C-DCA863981D98";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		31.798090691882383 61.592283002333048 -4.3042323081907519
		29.096029673431133 58.890221983881801 -5.8870630064398375
		26.393968654979886 56.188160965430555 -4.3042323081907545
		25.274738334777723 55.068930645228392 -0.48294096953734428
		26.393968654979886 56.188160965430555 3.3383503691160676
		29.096029673431133 58.890221983881801 4.9211810673651533
		31.798090691882379 61.592283002333048 3.3383503691160694
		32.917321012084543 62.711513322535211 -0.48294096953733984
		31.798090691882383 61.592283002333048 -4.3042323081907519
		29.096029673431133 58.890221983881801 -5.8870630064398375
		26.393968654979886 56.188160965430555 -4.3042323081907545
		;
createNode transform -n "CTRL_G_main" -p "CTRL_G_poignet";
	rename -uid "47159683-416A-BFD8-945B-038DDB8DE18B";
	setAttr ".rp" -type "double3" 35.100331772152401 52.586520214034209 -0.48294096953734339 ;
	setAttr ".sp" -type "double3" 35.100331772152401 52.586520214034209 -0.48294096953734339 ;
createNode nurbsCurve -n "CTRL_G_mainShape" -p "CTRL_G_main";
	rename -uid "6EEBB400-43C6-7B89-F7FC-0CBD93496504";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		37.557838301510273 55.044026743392081 -3.9583800329756715
		35.100331772152401 52.586520214034209 -5.3979540282530776
		32.642825242794537 50.129013684676345 -3.9583800329756738
		31.624892708714071 49.111081150595879 -0.48294096953734483
		32.642825242794537 50.129013684676345 2.9924980939009855
		35.100331772152401 52.586520214034209 4.4320720891783925
		37.557838301510266 55.044026743392074 2.9924980939009873
		38.575770835590731 56.061959277472539 -0.48294096953734073
		37.557838301510273 55.044026743392081 -3.9583800329756715
		35.100331772152401 52.586520214034209 -5.3979540282530776
		32.642825242794537 50.129013684676345 -3.9583800329756738
		;
createNode transform -n "CTRL_D_bras" -p "CTRL_root";
	rename -uid "D541AAAF-4EC1-F08A-1FBD-14832FFE0DAE";
	setAttr ".rp" -type "double3" -8.48022 80.511299999999991 -0.48294099999999929 ;
	setAttr ".sp" -type "double3" -8.48022 80.511299999999991 -0.48294099999999929 ;
createNode nurbsCurve -n "CTRL_D_brasShape" -p "CTRL_D_bras";
	rename -uid "E5D6C605-4334-3C9B-4C39-94BFD85610C6";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-4.3209408696570577 76.352020869657053 -6.3650499558263505
		-8.4802199999999992 80.511299999999991 -8.8014992606858744
		-12.639499130342937 84.670579130342929 -6.365049955826354
		-14.362328955826353 86.393408955826345 -0.48294100000000167
		-12.639499130342937 84.670579130342929 5.3991679558263534
		-8.480220000000001 80.511299999999991 7.8356172606858783
		-4.3209408696570648 76.352020869657053 5.3991679558263561
		-2.5981110441736446 74.629191044173638 -0.48294099999999485
		-4.3209408696570577 76.352020869657053 -6.3650499558263505
		-8.4802199999999992 80.511299999999991 -8.8014992606858744
		-12.639499130342937 84.670579130342929 -6.365049955826354
		;
createNode transform -n "CTRL_D_coude" -p "CTRL_D_bras";
	rename -uid "D3655466-4764-11CA-8095-E296EB982EBB";
	setAttr ".rp" -type "double3" -16.9637 70.672799999999981 -0.48294099999999973 ;
	setAttr ".sp" -type "double3" -16.9637 70.672799999999981 -0.48294099999999973 ;
createNode nurbsCurve -n "CTRL_D_coudeShape" -p "CTRL_D_coude";
	rename -uid "3433C1D7-474E-1D2E-AA13-6293CF587F36";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-13.445960908048052 67.155060908048029 -5.4577753327284517
		-16.963699999999999 70.672799999999981 -7.5184191839038874
		-20.481439091951941 74.190539091951919 -5.4577753327284544
		-21.938534332728455 75.647634332728444 -0.48294100000000179
		-20.481439091951945 74.190539091951933 4.4918933327284538
		-16.963700000000003 70.672799999999981 6.5525371839038904
		-13.445960908048058 67.155060908048043 4.4918933327284565
		-11.988865667271543 65.697965667271518 -0.48294099999999596
		-13.445960908048052 67.155060908048029 -5.4577753327284517
		-16.963699999999999 70.672799999999981 -7.5184191839038874
		-20.481439091951941 74.190539091951919 -5.4577753327284544
		;
createNode transform -n "CTRL_D_poignet" -p "CTRL_D_coude";
	rename -uid "7CD07D86-48FC-FCD1-C52C-B7BFE791F951";
	setAttr ".rp" -type "double3" -29.21759999999999 58.890199999999986 -0.482941 ;
	setAttr ".sp" -type "double3" -29.21759999999999 58.890199999999986 -0.482941 ;
createNode nurbsCurve -n "CTRL_D_poignetShape" -p "CTRL_D_poignet";
	rename -uid "234B0204-44C8-2DC2-B846-B1A9DC529F89";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-26.51553898154874 56.188138981548732 -4.3042323386534092
		-29.21759999999999 58.890199999999986 -5.8870630369024948
		-31.919661018451237 61.592261018451232 -4.3042323386534118
		-33.0388913386534 62.711491338653396 -0.48294100000000156
		-31.919661018451237 61.592261018451232 3.3383503386534104
		-29.21759999999999 58.890199999999986 4.921181036902496
		-26.515538981548744 56.18813898154874 3.3383503386534121
		-25.39630866134658 55.068908661346576 -0.48294099999999712
		-26.51553898154874 56.188138981548732 -4.3042323386534092
		-29.21759999999999 58.890199999999986 -5.8870630369024948
		-31.919661018451237 61.592261018451232 -4.3042323386534118
		;
createNode transform -n "CTRL_D_main" -p "CTRL_D_poignet";
	rename -uid "97238E70-4A9C-220F-EDA9-59B9245DBCAE";
	setAttr ".rp" -type "double3" -35.221900000000005 52.58649999999998 -0.48294100000000029 ;
	setAttr ".sp" -type "double3" -35.221900000000005 52.58649999999998 -0.48294100000000029 ;
createNode nurbsCurve -n "CTRL_D_mainShape" -p "CTRL_D_main";
	rename -uid "E0F1D39B-49FC-13CB-2B07-E5A1818B6F01";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-32.764393470642133 50.128993470642108 -3.9583800634383284
		-35.221900000000005 52.58649999999998 -5.3979540587157349
		-37.67940652935787 55.044006529357844 -3.9583800634383306
		-38.697339063438335 56.061939063438309 -0.48294100000000173
		-37.67940652935787 55.044006529357844 2.9924980634383287
		-35.221900000000005 52.58649999999998 4.4320720587157352
		-32.76439347064214 50.128993470642115 2.9924980634383305
		-31.746460936561675 49.11106093656165 -0.48294099999999762
		-32.764393470642133 50.128993470642108 -3.9583800634383284
		-35.221900000000005 52.58649999999998 -5.3979540587157349
		-37.67940652935787 55.044006529357844 -3.9583800634383306
		;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
	rename -uid "1ADC4CE2-4E20-3D14-DDBC-F693FBFF4732";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
	rename -uid "3A6CC940-4AAE-30A6-5B2C-A8B9A214B25D";
createNode mentalrayOptions -s -n "miDefaultOptions";
	rename -uid "962A81F2-458F-E931-299A-549B3300795B";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	setAttr -s 81 ".stringOptions";
	setAttr ".stringOptions[0].name" -type "string" "rast motion factor";
	setAttr ".stringOptions[0].value" -type "string" "1.0";
	setAttr ".stringOptions[0].type" -type "string" "scalar";
	setAttr ".stringOptions[1].name" -type "string" "rast transparency depth";
	setAttr ".stringOptions[1].value" -type "string" "8";
	setAttr ".stringOptions[1].type" -type "string" "integer";
	setAttr ".stringOptions[2].name" -type "string" "rast useopacity";
	setAttr ".stringOptions[2].value" -type "string" "true";
	setAttr ".stringOptions[2].type" -type "string" "boolean";
	setAttr ".stringOptions[3].name" -type "string" "importon";
	setAttr ".stringOptions[3].value" -type "string" "false";
	setAttr ".stringOptions[3].type" -type "string" "boolean";
	setAttr ".stringOptions[4].name" -type "string" "importon density";
	setAttr ".stringOptions[4].value" -type "string" "1.0";
	setAttr ".stringOptions[4].type" -type "string" "scalar";
	setAttr ".stringOptions[5].name" -type "string" "importon merge";
	setAttr ".stringOptions[5].value" -type "string" "0.0";
	setAttr ".stringOptions[5].type" -type "string" "scalar";
	setAttr ".stringOptions[6].name" -type "string" "importon trace depth";
	setAttr ".stringOptions[6].value" -type "string" "0";
	setAttr ".stringOptions[6].type" -type "string" "integer";
	setAttr ".stringOptions[7].name" -type "string" "importon traverse";
	setAttr ".stringOptions[7].value" -type "string" "true";
	setAttr ".stringOptions[7].type" -type "string" "boolean";
	setAttr ".stringOptions[8].name" -type "string" "shadowmap pixel samples";
	setAttr ".stringOptions[8].value" -type "string" "3";
	setAttr ".stringOptions[8].type" -type "string" "integer";
	setAttr ".stringOptions[9].name" -type "string" "ambient occlusion";
	setAttr ".stringOptions[9].value" -type "string" "false";
	setAttr ".stringOptions[9].type" -type "string" "boolean";
	setAttr ".stringOptions[10].name" -type "string" "ambient occlusion rays";
	setAttr ".stringOptions[10].value" -type "string" "64";
	setAttr ".stringOptions[10].type" -type "string" "integer";
	setAttr ".stringOptions[11].name" -type "string" "ambient occlusion cache";
	setAttr ".stringOptions[11].value" -type "string" "false";
	setAttr ".stringOptions[11].type" -type "string" "boolean";
	setAttr ".stringOptions[12].name" -type "string" "ambient occlusion cache density";
	setAttr ".stringOptions[12].value" -type "string" "1.0";
	setAttr ".stringOptions[12].type" -type "string" "scalar";
	setAttr ".stringOptions[13].name" -type "string" "ambient occlusion cache points";
	setAttr ".stringOptions[13].value" -type "string" "64";
	setAttr ".stringOptions[13].type" -type "string" "integer";
	setAttr ".stringOptions[14].name" -type "string" "irradiance particles";
	setAttr ".stringOptions[14].value" -type "string" "false";
	setAttr ".stringOptions[14].type" -type "string" "boolean";
	setAttr ".stringOptions[15].name" -type "string" "irradiance particles rays";
	setAttr ".stringOptions[15].value" -type "string" "256";
	setAttr ".stringOptions[15].type" -type "string" "integer";
	setAttr ".stringOptions[16].name" -type "string" "irradiance particles interpolate";
	setAttr ".stringOptions[16].value" -type "string" "1";
	setAttr ".stringOptions[16].type" -type "string" "integer";
	setAttr ".stringOptions[17].name" -type "string" "irradiance particles interppoints";
	setAttr ".stringOptions[17].value" -type "string" "64";
	setAttr ".stringOptions[17].type" -type "string" "integer";
	setAttr ".stringOptions[18].name" -type "string" "irradiance particles indirect passes";
	setAttr ".stringOptions[18].value" -type "string" "0";
	setAttr ".stringOptions[18].type" -type "string" "integer";
	setAttr ".stringOptions[19].name" -type "string" "irradiance particles scale";
	setAttr ".stringOptions[19].value" -type "string" "1.0";
	setAttr ".stringOptions[19].type" -type "string" "scalar";
	setAttr ".stringOptions[20].name" -type "string" "irradiance particles env";
	setAttr ".stringOptions[20].value" -type "string" "true";
	setAttr ".stringOptions[20].type" -type "string" "boolean";
	setAttr ".stringOptions[21].name" -type "string" "irradiance particles env rays";
	setAttr ".stringOptions[21].value" -type "string" "256";
	setAttr ".stringOptions[21].type" -type "string" "integer";
	setAttr ".stringOptions[22].name" -type "string" "irradiance particles env scale";
	setAttr ".stringOptions[22].value" -type "string" "1";
	setAttr ".stringOptions[22].type" -type "string" "integer";
	setAttr ".stringOptions[23].name" -type "string" "irradiance particles rebuild";
	setAttr ".stringOptions[23].value" -type "string" "true";
	setAttr ".stringOptions[23].type" -type "string" "boolean";
	setAttr ".stringOptions[24].name" -type "string" "irradiance particles file";
	setAttr ".stringOptions[24].value" -type "string" "";
	setAttr ".stringOptions[24].type" -type "string" "string";
	setAttr ".stringOptions[25].name" -type "string" "geom displace motion factor";
	setAttr ".stringOptions[25].value" -type "string" "1.0";
	setAttr ".stringOptions[25].type" -type "string" "scalar";
	setAttr ".stringOptions[26].name" -type "string" "contrast all buffers";
	setAttr ".stringOptions[26].value" -type "string" "false";
	setAttr ".stringOptions[26].type" -type "string" "boolean";
	setAttr ".stringOptions[27].name" -type "string" "finalgather normal tolerance";
	setAttr ".stringOptions[27].value" -type "string" "25.842";
	setAttr ".stringOptions[27].type" -type "string" "scalar";
	setAttr ".stringOptions[28].name" -type "string" "trace camera clip";
	setAttr ".stringOptions[28].value" -type "string" "false";
	setAttr ".stringOptions[28].type" -type "string" "boolean";
	setAttr ".stringOptions[29].name" -type "string" "unified sampling";
	setAttr ".stringOptions[29].value" -type "string" "true";
	setAttr ".stringOptions[29].type" -type "string" "boolean";
	setAttr ".stringOptions[30].name" -type "string" "samples quality";
	setAttr ".stringOptions[30].value" -type "string" "0.25 0.25 0.25 0.25";
	setAttr ".stringOptions[30].type" -type "string" "color";
	setAttr ".stringOptions[31].name" -type "string" "samples min";
	setAttr ".stringOptions[31].value" -type "string" "1.0";
	setAttr ".stringOptions[31].type" -type "string" "scalar";
	setAttr ".stringOptions[32].name" -type "string" "samples max";
	setAttr ".stringOptions[32].value" -type "string" "100.0";
	setAttr ".stringOptions[32].type" -type "string" "scalar";
	setAttr ".stringOptions[33].name" -type "string" "samples error cutoff";
	setAttr ".stringOptions[33].value" -type "string" "0.0 0.0 0.0 0.0";
	setAttr ".stringOptions[33].type" -type "string" "color";
	setAttr ".stringOptions[34].name" -type "string" "samples per object";
	setAttr ".stringOptions[34].value" -type "string" "false";
	setAttr ".stringOptions[34].type" -type "string" "boolean";
	setAttr ".stringOptions[35].name" -type "string" "progressive";
	setAttr ".stringOptions[35].value" -type "string" "false";
	setAttr ".stringOptions[35].type" -type "string" "boolean";
	setAttr ".stringOptions[36].name" -type "string" "progressive max time";
	setAttr ".stringOptions[36].value" -type "string" "0";
	setAttr ".stringOptions[36].type" -type "string" "integer";
	setAttr ".stringOptions[37].name" -type "string" "progressive subsampling size";
	setAttr ".stringOptions[37].value" -type "string" "4";
	setAttr ".stringOptions[37].type" -type "string" "integer";
	setAttr ".stringOptions[38].name" -type "string" "iray";
	setAttr ".stringOptions[38].value" -type "string" "false";
	setAttr ".stringOptions[38].type" -type "string" "boolean";
	setAttr ".stringOptions[39].name" -type "string" "light relative scale";
	setAttr ".stringOptions[39].value" -type "string" "0.31831";
	setAttr ".stringOptions[39].type" -type "string" "scalar";
	setAttr ".stringOptions[40].name" -type "string" "trace camera motion vectors";
	setAttr ".stringOptions[40].value" -type "string" "false";
	setAttr ".stringOptions[40].type" -type "string" "boolean";
	setAttr ".stringOptions[41].name" -type "string" "ray differentials";
	setAttr ".stringOptions[41].value" -type "string" "true";
	setAttr ".stringOptions[41].type" -type "string" "boolean";
	setAttr ".stringOptions[42].name" -type "string" "environment lighting mode";
	setAttr ".stringOptions[42].value" -type "string" "off";
	setAttr ".stringOptions[42].type" -type "string" "string";
	setAttr ".stringOptions[43].name" -type "string" "environment lighting quality";
	setAttr ".stringOptions[43].value" -type "string" "0.2";
	setAttr ".stringOptions[43].type" -type "string" "scalar";
	setAttr ".stringOptions[44].name" -type "string" "environment lighting shadow";
	setAttr ".stringOptions[44].value" -type "string" "transparent";
	setAttr ".stringOptions[44].type" -type "string" "string";
	setAttr ".stringOptions[45].name" -type "string" "environment lighting resolution";
	setAttr ".stringOptions[45].value" -type "string" "512";
	setAttr ".stringOptions[45].type" -type "string" "integer";
	setAttr ".stringOptions[46].name" -type "string" "environment lighting shader samples";
	setAttr ".stringOptions[46].value" -type "string" "2";
	setAttr ".stringOptions[46].type" -type "string" "integer";
	setAttr ".stringOptions[47].name" -type "string" "environment lighting scale";
	setAttr ".stringOptions[47].value" -type "string" "1 1 1";
	setAttr ".stringOptions[47].type" -type "string" "color";
	setAttr ".stringOptions[48].name" -type "string" "environment lighting caustic photons";
	setAttr ".stringOptions[48].value" -type "string" "0";
	setAttr ".stringOptions[48].type" -type "string" "integer";
	setAttr ".stringOptions[49].name" -type "string" "environment lighting globillum photons";
	setAttr ".stringOptions[49].value" -type "string" "0";
	setAttr ".stringOptions[49].type" -type "string" "integer";
	setAttr ".stringOptions[50].name" -type "string" "light importance sampling";
	setAttr ".stringOptions[50].value" -type "string" "all";
	setAttr ".stringOptions[50].type" -type "string" "string";
	setAttr ".stringOptions[51].name" -type "string" "light importance sampling quality";
	setAttr ".stringOptions[51].value" -type "string" "1.0";
	setAttr ".stringOptions[51].type" -type "string" "scalar";
	setAttr ".stringOptions[52].name" -type "string" "light importance sampling samples";
	setAttr ".stringOptions[52].value" -type "string" "4";
	setAttr ".stringOptions[52].type" -type "string" "integer";
	setAttr ".stringOptions[53].name" -type "string" "light importance sampling resolution";
	setAttr ".stringOptions[53].value" -type "string" "1.0";
	setAttr ".stringOptions[53].type" -type "string" "scalar";
	setAttr ".stringOptions[54].name" -type "string" "light importance sampling precomputed";
	setAttr ".stringOptions[54].value" -type "string" "false";
	setAttr ".stringOptions[54].type" -type "string" "boolean";
	setAttr ".stringOptions[55].name" -type "string" "mila quality";
	setAttr ".stringOptions[55].value" -type "string" "1.0";
	setAttr ".stringOptions[55].type" -type "string" "scalar";
	setAttr ".stringOptions[56].name" -type "string" "mila glossy quality";
	setAttr ".stringOptions[56].value" -type "string" "1.0";
	setAttr ".stringOptions[56].type" -type "string" "scalar";
	setAttr ".stringOptions[57].name" -type "string" "mila scatter quality";
	setAttr ".stringOptions[57].value" -type "string" "1.0";
	setAttr ".stringOptions[57].type" -type "string" "scalar";
	setAttr ".stringOptions[58].name" -type "string" "mila scatter scale";
	setAttr ".stringOptions[58].value" -type "string" "1.0";
	setAttr ".stringOptions[58].type" -type "string" "scalar";
	setAttr ".stringOptions[59].name" -type "string" "mila diffuse quality";
	setAttr ".stringOptions[59].value" -type "string" "1.0";
	setAttr ".stringOptions[59].type" -type "string" "scalar";
	setAttr ".stringOptions[60].name" -type "string" "mila diffuse detail";
	setAttr ".stringOptions[60].value" -type "string" "false";
	setAttr ".stringOptions[60].type" -type "string" "boolean";
	setAttr ".stringOptions[61].name" -type "string" "mila diffuse detail distance";
	setAttr ".stringOptions[61].value" -type "string" "10.0";
	setAttr ".stringOptions[61].type" -type "string" "scalar";
	setAttr ".stringOptions[62].name" -type "string" "mila use max distance inside";
	setAttr ".stringOptions[62].value" -type "string" "true";
	setAttr ".stringOptions[62].type" -type "string" "boolean";
	setAttr ".stringOptions[63].name" -type "string" "mila clamp output";
	setAttr ".stringOptions[63].value" -type "string" "false";
	setAttr ".stringOptions[63].type" -type "string" "boolean";
	setAttr ".stringOptions[64].name" -type "string" "mila clamp level";
	setAttr ".stringOptions[64].value" -type "string" "1.0";
	setAttr ".stringOptions[64].type" -type "string" "scalar";
	setAttr ".stringOptions[65].name" -type "string" "gi gpu";
	setAttr ".stringOptions[65].value" -type "string" "off";
	setAttr ".stringOptions[65].type" -type "string" "string";
	setAttr ".stringOptions[66].name" -type "string" "gi gpu rays";
	setAttr ".stringOptions[66].value" -type "string" "34";
	setAttr ".stringOptions[66].type" -type "string" "integer";
	setAttr ".stringOptions[67].name" -type "string" "gi gpu passes";
	setAttr ".stringOptions[67].value" -type "string" "4";
	setAttr ".stringOptions[67].type" -type "string" "integer";
	setAttr ".stringOptions[68].name" -type "string" "gi gpu presample density";
	setAttr ".stringOptions[68].value" -type "string" "1.0";
	setAttr ".stringOptions[68].type" -type "string" "scalar";
	setAttr ".stringOptions[69].name" -type "string" "gi gpu presample depth";
	setAttr ".stringOptions[69].value" -type "string" "2";
	setAttr ".stringOptions[69].type" -type "string" "integer";
	setAttr ".stringOptions[70].name" -type "string" "gi gpu filter";
	setAttr ".stringOptions[70].value" -type "string" "1.0";
	setAttr ".stringOptions[70].type" -type "string" "integer";
	setAttr ".stringOptions[71].name" -type "string" "gi gpu depth";
	setAttr ".stringOptions[71].value" -type "string" "3";
	setAttr ".stringOptions[71].type" -type "string" "integer";
	setAttr ".stringOptions[72].name" -type "string" "gi gpu devices";
	setAttr ".stringOptions[72].value" -type "string" "0";
	setAttr ".stringOptions[72].type" -type "string" "integer";
	setAttr ".stringOptions[73].name" -type "string" "shutter shape function";
	setAttr ".stringOptions[73].value" -type "string" "none";
	setAttr ".stringOptions[73].type" -type "string" "string";
	setAttr ".stringOptions[74].name" -type "string" "shutter full open";
	setAttr ".stringOptions[74].value" -type "string" "0.2";
	setAttr ".stringOptions[74].type" -type "string" "scalar";
	setAttr ".stringOptions[75].name" -type "string" "shutter full close";
	setAttr ".stringOptions[75].value" -type "string" "0.8";
	setAttr ".stringOptions[75].type" -type "string" "scalar";
	setAttr ".stringOptions[76].name" -type "string" "gi";
	setAttr ".stringOptions[76].value" -type "string" "off";
	setAttr ".stringOptions[76].type" -type "string" "boolean";
	setAttr ".stringOptions[77].name" -type "string" "gi rays";
	setAttr ".stringOptions[77].value" -type "string" "100";
	setAttr ".stringOptions[77].type" -type "string" "integer";
	setAttr ".stringOptions[78].name" -type "string" "gi depth";
	setAttr ".stringOptions[78].value" -type "string" "0";
	setAttr ".stringOptions[78].type" -type "string" "integer";
	setAttr ".stringOptions[79].name" -type "string" "gi freeze";
	setAttr ".stringOptions[79].value" -type "string" "off";
	setAttr ".stringOptions[79].type" -type "string" "boolean";
	setAttr ".stringOptions[80].name" -type "string" "gi filter";
	setAttr ".stringOptions[80].value" -type "string" "1.0";
	setAttr ".stringOptions[80].type" -type "string" "scalar";
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
	rename -uid "414409E1-417F-A01B-8F6D-A58188DE0A3F";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "B39141F8-4BFE-D202-C951-AF87E29456B9";
	setAttr -s 7 ".lnk";
	setAttr -s 7 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "5EDC5938-4220-1676-B717-7E9BE56E997C";
	setAttr ".cdl" 4;
	setAttr -s 5 ".dli[1:4]"  4 1 2 3;
	setAttr -s 3 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "4A1DDEA8-484C-06E0-3A8B-1ABCC89C6D0D";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "0F934E34-4D1B-9089-7EB0-03840738F344";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "A7D71220-4D78-706F-28C4-098E34D77CE4";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "CC043C51-4377-8802-CC8F-16AA37C17E62";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 0\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 910\n                -height 730\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 910\n            -height 730\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
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
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n"
		+ "                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n"
		+ "                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 31 100 -ps 2 69 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 910\\n    -height 730\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 910\\n    -height 730\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "09E1D2B7-46CE-1FCC-D91A-E992C9211D5B";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode groupId -n "groupId6";
	rename -uid "23CB08E4-40C9-0A2D-D8FD-17AC8861A66F";
	setAttr ".ihi" 0;
createNode shadingEngine -n "lambert2SG";
	rename -uid "071DF13E-4B0B-E70E-DC6E-DDA8BFBC2448";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "19C92EE8-4B7E-86F7-42D7-C5AA5FCC5CE7";
createNode psdFileTex -n "psdFileTex1";
	rename -uid "7F2C9CA4-4784-6EB5-F3CA-88BFD1FC8961";
	setAttr ".ftn" -type "string" "C:/Repos/ProjetFinal_Creajeux_2016-2017/Asset/texture/CHARACTERS/TEX_pestilence_1024.psd";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "0D237EBF-45D4-9D13-0129-4CB1216903C3";
createNode lambert -n "lambert3";
	rename -uid "56BD5923-4E3B-EC2E-1542-2DAD0B901E1D";
createNode shadingEngine -n "lambert3SG";
	rename -uid "0540942D-4F0A-62B1-F6DD-2A88E56D7A78";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "4FA71AA4-46EA-761E-193D-3FAE3C54F912";
createNode psdFileTex -n "psdFileTex2";
	rename -uid "9013F33A-4C37-82E9-819E-2B9F292BD54D";
	setAttr ".ftn" -type "string" "C:/Users/Etudiant 7/Desktop/ProjetFinal_Creajeux_2016-2017/Asset/texture/CHARACTERS/TEX_pestilence_2048.psd";
	setAttr ".cs" -type "string" "sRGB";
	setAttr ".alp" -type "string" "Alpha 1";
createNode place2dTexture -n "place2dTexture2";
	rename -uid "84B2C684-4C46-96C2-B799-8D81BDB587AB";
createNode groupId -n "chibi_Death_UV_groupId6";
	rename -uid "B424F888-4642-45C7-AD28-F1AEBE16BF8B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId8";
	rename -uid "E024CAAD-47AE-80A2-A04B-F7A891271687";
	setAttr ".ihi" 0;
createNode groupId -n "chibi_template_lilith_final_groupId6";
	rename -uid "734D7A6D-4E15-CD55-9968-8B86E7D834A1";
	setAttr ".ihi" 0;
createNode groupId -n "chibi_template_lilith_final_groupId8";
	rename -uid "FD741A31-4060-E551-538D-5687A914B5AF";
	setAttr ".ihi" 0;
createNode groupId -n "chibi_template_01_groupId6";
	rename -uid "D387D692-406E-E9CB-C69A-D9B96663E1AC";
	setAttr ".ihi" 0;
createNode lambert -n "chibi_template_lilith_final_lambert3";
	rename -uid "FB852B5B-4D2C-9DB3-FAF9-438EB9E46440";
createNode shadingEngine -n "chibi_template_lilith_final_lambert3SG";
	rename -uid "486FAE57-4299-D2CC-E5F4-0B98709AC542";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "chibi_template_lilith_final_materialInfo2";
	rename -uid "1DD20661-44B9-7506-22C9-CA8A57239F81";
createNode lambert -n "lambert2";
	rename -uid "BBEC8D73-4237-2278-6A8D-D2A64CB2C5F3";
	setAttr ".c" -type "float3" 0.104 0.104 0.104 ;
createNode shadingEngine -n "chibi_template_lilith_final_lambert2SG";
	rename -uid "F8EF501A-4725-8079-C07F-E28F9F8BDA12";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "chibi_template_lilith_final_materialInfo1";
	rename -uid "393BC994-42BC-A41D-891E-5E8955DFEF39";
createNode psdFileTex -n "chibi_template_lilith_final_psdFileTex1";
	rename -uid "FF0F836B-46C8-BD4D-A5D5-9C9AD59BC832";
	setAttr ".ftn" -type "string" "C:/Users/Etudiant 7/Desktop/ProjetFinal_Creajeux_2016-2017/Asset/texture/CHARACTERS/TEX_lilith_2048x2048.psd";
	setAttr ".cs" -type "string" "sRGB";
	setAttr ".alp" -type "string" "Alpha 1";
createNode place2dTexture -n "chibi_template_lilith_final_place2dTexture1";
	rename -uid "896C0BE3-4BE2-8068-7E91-BAA086CFB86E";
createNode shadingEngine -n "lambert2SG1";
	rename -uid "F23D9D78-4439-352B-3212-10A6D31F6876";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "D785A097-4A6B-B262-7251-139E46C82F29";
createNode nodeGraphEditorInfo -n "chibi_template_lilith_final_hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "F2C79625-4A7A-083D-06A7-1687418558DD";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -458.61543873103449 -1029.7618638428448 ;
	setAttr ".tgi[0].vh" -type "double2" 414.56782143371066 -66.666664017571492 ;
	setAttr -s 7 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 1.4285714626312256;
	setAttr ".tgi[0].ni[0].y" -1.4285714626312256;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" 262.85714721679687;
	setAttr ".tgi[0].ni[1].y" -451.42855834960937;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" 1.4285714626312256;
	setAttr ".tgi[0].ni[2].y" -382.85714721679687;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" 562.85711669921875;
	setAttr ".tgi[0].ni[3].y" -451.42855834960937;
	setAttr ".tgi[0].ni[3].nvs" 1923;
	setAttr ".tgi[0].ni[4].x" -524.64166259765625;
	setAttr ".tgi[0].ni[4].y" -470.63632202148437;
	setAttr ".tgi[0].ni[4].nvs" 1923;
	setAttr ".tgi[0].ni[5].x" -263.213134765625;
	setAttr ".tgi[0].ni[5].y" -447.77920532226562;
	setAttr ".tgi[0].ni[5].nvs" 1923;
	setAttr ".tgi[0].ni[6].x" 262.85714721679687;
	setAttr ".tgi[0].ni[6].y" -70;
	setAttr ".tgi[0].ni[6].nvs" 1923;
createNode groupId -n "chibi_template_famine_groupId6";
	rename -uid "A913C9FE-48B6-B08B-F86C-29A1C3A4DA38";
	setAttr ".ihi" 0;
createNode polyPlane -n "polyPlane1";
	rename -uid "4C73CF73-47D8-F36E-A339-D7A94D390616";
	setAttr ".sw" 2;
	setAttr ".sh" 2;
	setAttr ".cuv" 2;
createNode polyTweak -n "polyTweak8";
	rename -uid "B79B485F-4C16-56DB-83C7-C78052C29F78";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk[6:8]" -type "float3"  -0.23632935 -0.29288596 -0.13984804
		 -0.26861843 -0.23407707 -0.13984804 -0.30090743 -0.17526814 -0.13984804;
createNode deleteComponent -n "deleteComponent2";
	rename -uid "FD76F00C-40B3-912C-B569-1BA1BCC4F615";
	setAttr ".dc" -type "componentList" 2 "e[3]" "e[8]";
createNode deleteComponent -n "deleteComponent3";
	rename -uid "1914D551-4DB9-8E99-F2D7-DF9C32003BDA";
	setAttr ".dc" -type "componentList" 1 "vtx[4]";
createNode deleteComponent -n "deleteComponent4";
	rename -uid "1BDEFCBC-4EF2-DE95-1C82-40ACA52122F0";
	setAttr ".dc" -type "componentList" 1 "vtx[1]";
createNode deleteComponent -n "deleteComponent5";
	rename -uid "04E52015-4992-3866-9FFE-E497352502F1";
	setAttr ".dc" -type "componentList" 1 "vtx[5]";
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	rename -uid "6961D8E9-4E6B-7A7D-EBDC-0A8033822826";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[1]";
	setAttr ".ix" -type "matrix" 0.33269262332132188 0 0 0 0 2.2204460492503131e-016 1 0
		 0 -1 2.2204460492503131e-016 0 -0.3733180824870464 6.4507908533992788 0.95625480110587446 1;
	setAttr ".ws" yes;
	setAttr ".mp" -type "matrix" 0.33269262332132188 0 0 0 0 2.2204460492503131e-016 1 0
		 0 -1 2.2204460492503131e-016 0 -0.3733180824870464 6.4507908533992788 0.95625480110587446 1;
	setAttr ".pvt" -type "float3" -0.54011589 5.8470182 0.78079599 ;
	setAttr ".rs" 54020;
	setAttr ".lt" -type "double3" 1.8843433757798067e-016 -0.63989360551058816 0.04984890429623693 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.70454019042756755 5.8470180939617178 0.75558150405825952 ;
	setAttr ".cbx" -type "double3" -0.37569161757509811 5.8470180939617178 0.80601047570647577 ;
createNode polyTweak -n "polyTweak9";
	rename -uid "41D5C9F0-4182-56C2-EF09-6B94D5AA15E3";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[0:5]" -type "float3"  -0.49557996 -0.2006733 0.10377273
		 -0.50713432 -0.15024433 0.10377273 -0.46470112 -0.14992359 -0.0063123945 -0.4842394
		 -0.084479667 -0.0063123945 0 0 0 0 0 0;
createNode polySoftEdge -n "polySoftEdge10";
	rename -uid "4191574F-465E-1FA3-706E-65BBBE0DF1D1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.33269262332132188 0 0 0 0 2.2204460492503131e-016 1 0
		 0 -1 2.2204460492503131e-016 0 -0.3733180824870464 6.4507908533992788 0.95625480110587446 1;
	setAttr ".mp" -type "matrix" 0.33269262332132188 0 0 0 0 2.2204460492503131e-016 1 0
		 0 -1 2.2204460492503131e-016 0 -0.3733180824870464 6.4507908533992788 0.95625480110587446 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak15";
	rename -uid "437D939B-4080-28E9-F050-EF9876334F14";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk[4:6]" -type "float3"  -0.19501568 -1.110223e-016
		 0 -0.19501568 -1.110223e-016 0 0 0 0;
createNode polyMapSew -n "polyMapSew2";
	rename -uid "0EF59777-454D-D7C2-E86A-88AAE02D89E8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:9]";
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "08C7BC43-4FF4-E63D-B6D9-BFA62F4767E5";
	setAttr ".uopa" yes;
	setAttr -s 22 ".uvtk";
	setAttr ".uvtk[17]" -type "float2" 0.72080421 0.98867071 ;
	setAttr ".uvtk[18]" -type "float2" 0.72080421 0.98867071 ;
	setAttr ".uvtk[19]" -type "float2" 0.72080421 0.98867071 ;
	setAttr ".uvtk[20]" -type "float2" 0.72080421 0.98867071 ;
	setAttr ".uvtk[21]" -type "float2" 0.72080421 0.98867071 ;
	setAttr ".uvtk[22]" -type "float2" 0.72080421 0.98867071 ;
	setAttr ".uvtk[23]" -type "float2" 0.72080421 0.98867077 ;
	setAttr ".uvtk[24]" -type "float2" 0.72080421 0.98867071 ;
	setAttr ".uvtk[25]" -type "float2" 0.72080421 0.98867071 ;
	setAttr ".uvtk[26]" -type "float2" 0.72080421 0.98867071 ;
	setAttr ".uvtk[27]" -type "float2" 0.72080421 0.98867077 ;
	setAttr ".uvtk[28]" -type "float2" 0.72080421 0.98867077 ;
	setAttr ".uvtk[29]" -type "float2" 0.72080421 0.98867071 ;
	setAttr ".uvtk[30]" -type "float2" 0.72080421 0.98867077 ;
	setAttr ".uvtk[31]" -type "float2" 0.72080421 0.98867071 ;
	setAttr ".uvtk[32]" -type "float2" 0.72080421 0.98867071 ;
	setAttr ".uvtk[33]" -type "float2" 0.72080421 0.98867077 ;
	setAttr ".uvtk[42]" -type "float2" 0.72080421 0.98867077 ;
	setAttr ".uvtk[43]" -type "float2" 0.72080421 0.98867071 ;
	setAttr ".uvtk[44]" -type "float2" 0.72080421 0.98867071 ;
	setAttr ".uvtk[45]" -type "float2" 0.72080415 0.98867077 ;
	setAttr ".uvtk[46]" -type "float2" 0.72080421 0.98867071 ;
createNode polyMapCut -n "polyMapCut4";
	rename -uid "AD0C24D9-42B1-0668-ACD6-968B38EBBC77";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[48]";
createNode Unfold3DUnfold -n "Unfold3DUnfold2";
	rename -uid "28542A43-4191-C838-7F37-ADA07722167E";
	setAttr ".uvl" -type "Int32Array" 7 17 18 19 20 26 45
		 47 ;
	setAttr ".mdp" -type "string" "|pCylinder24|pCylinderShape3";
	setAttr ".usn" -type "string" "map1";
	setAttr ".miee" yes;
	setAttr ".mue" -type "floatArray" 49 0.14149363 0.23980804 0.28631517 0.29481015
		 0.24956962 0.16634779 0.083147742 0.037959859 0.14122988 0.23948018 0.28600913 0.29455677
		 0.24936889 0.16616885 0.082947001 0.037706468 0.18477167 0.55065721 0.53262705 0.51072735
		 0.48606545 0.46277273 0.46588439 0.58696985 0.64384782 0.15060616 0.5725677 0.13404489
		 0.27286807 0.35177419 0.530801 0.41306084 0.7929256 0.28839853 0.054764722 0.0009765625
		 0.18451552 0.31422269 0.36790556 0.3141174 0.1843666 0.054659419 0.27755785 0.70630097
		 0.69063818 0.4225066 0.085689284 0.63014185 0.70630097 ;
	setAttr ".mve" -type "floatArray" 49 0.91263574 0.9916625 0.96477592 0.89990795
		 0.83506179 0.80822784 0.83512932 0.9000122 0.26278958 0.18386695 0.21071583 0.27557686
		 0.3404597 0.36736125 0.34052727 0.27568111 0.99902344 0.41738823 0.40156654 0.38692698
		 0.37784293 0.3793945 0.3848218 0.49764442 0.35628608 0.74944246 0.19439632 0.47468662
		 0.33578736 0.51611507 0.58804399 0.72632033 0.25885516 0.58260494 0.31422269 0.18451552
		 0.36790556 0.3141174 0.1843666 0.054659419 0.0009765625 0.054764722 0.79126143 0.13349491
		 0.43924507 0.26427165 0.62864047 0.34515315 0.13349491 ;
createNode Unfold3DUnfold -n "Unfold3DUnfold3";
	rename -uid "05EF750E-4D11-A15B-83DC-27A9BB8F7C64";
	setAttr ".uvl" -type "Int32Array" 24 17 18 19 20 21 22
		 23 24 25 26 27 28 29 30 31 32 33 42
		 43 44 45 46 47 48 ;
	setAttr ".mdp" -type "string" "|pCylinder24|pCylinderShape3";
	setAttr ".usn" -type "string" "map1";
	setAttr ".miee" yes;
	setAttr ".mue" -type "floatArray" 49 0.11579017 0.19612086 0.23412088 0.24106196
		 0.20409685 0.136098 0.068116948 0.031194855 0.11557467 0.19585298 0.23387082 0.24085492
		 0.20393284 0.13595179 0.067952923 0.030987814 0.15115178 0.019828692 0.017101716
		 0.014288541 0.011618351 0.0093097007 0.0071298191 0.0049076458 0.0027961785 0.99902344
		 0.96506321 0.97840005 0.96090931 0.95738399 0.95766538 0.97400987 0.95438731 0.97692025
		 0.044925764 0.0009765625 0.15094247 0.25692356 0.3007867 0.25683752 0.15082079 0.044839721
		 0.99144983 0.96706325 0.95598608 0.96293414 0.99454194 0.0009765625 0.95305324 ;
	setAttr ".mve" -type "floatArray" 49 0.74587458 0.81044573 0.78847724 0.73547494
		 0.68249047 0.66056502 0.68254566 0.73556012 0.2148986 0.15041254 0.17235021 0.22534683
		 0.27836126 0.30034196 0.27841648 0.22543201 0.81646019 0.49167517 0.47053516 0.44749644
		 0.42444032 0.40324953 0.38200477 0.3589009 0.33578715 0.29794759 0.35241622 0.32113278
		 0.3175202 0.30233079 0.28677619 0.27958706 0.25178728 0.3002845 0.25692356 0.15094247
		 0.3007867 0.25683752 0.15082079 0.044839721 0.0009765625 0.044925764 0.28395784 0.36791864
		 0.26928568 0.33497429 0.3132118 0.31454974 0.23621346 ;
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "767F4165-4599-6DB7-F032-3BBC4080CFD0";
	setAttr ".uopa" yes;
	setAttr -s 24 ".uvtk";
	setAttr ".uvtk[17]" -type "float2" 1.2968066 1.3773806 ;
	setAttr ".uvtk[18]" -type "float2" 1.298744 1.3665117 ;
	setAttr ".uvtk[19]" -type "float2" 1.3007427 1.3582394 ;
	setAttr ".uvtk[20]" -type "float2" 1.30264 1.3468604 ;
	setAttr ".uvtk[21]" -type "float2" 1.3042803 1.3295708 ;
	setAttr ".uvtk[22]" -type "float2" 1.305829 1.3217248 ;
	setAttr ".uvtk[23]" -type "float2" 1.3074079 1.309132 ;
	setAttr ".uvtk[24]" -type "float2" 1.3089081 1.3040322 ;
	setAttr ".uvtk[25]" -type "float2" 0.45454818 1.4265524 ;
	setAttr ".uvtk[26]" -type "float2" 0.41487187 1.4709113 ;
	setAttr ".uvtk[27]" -type "float2" 0.43402916 1.4496201 ;
	setAttr ".uvtk[28]" -type "float2" 0.41782326 1.4433031 ;
	setAttr ".uvtk[29]" -type "float2" 0.42032784 1.4217496 ;
	setAttr ".uvtk[30]" -type "float2" 0.42012805 1.4098607 ;
	setAttr ".uvtk[31]" -type "float2" 0.42966142 1.4082849 ;
	setAttr ".uvtk[32]" -type "float2" 0.42245716 1.3841902 ;
	setAttr ".uvtk[33]" -type "float2" 0.43255702 1.4288776 ;
	setAttr ".uvtk[42]" -type "float2" 0.44701272 1.4126337 ;
	setAttr ".uvtk[43]" -type "float2" 0.4134509 1.4857856 ;
	setAttr ".uvtk[44]" -type "float2" 0.42132127 1.3932797 ;
	setAttr ".uvtk[45]" -type "float2" 0.41638452 1.4586624 ;
	setAttr ".uvtk[46]" -type "float2" 0.45008951 1.4417393 ;
	setAttr ".uvtk[47]" -type "float2" 1.3102009 1.2944802 ;
	setAttr ".uvtk[48]" -type "float2" 0.42340487 1.3706143 ;
createNode polyMapSew -n "polyMapSew10";
	rename -uid "1F25CF13-41D4-FFF7-6F72-39847A47493E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:67]";
createNode polyMapCut -n "polyMapCut5";
	rename -uid "76C3775D-45F9-A93E-94F3-46A2715AC6F0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[8:11]" "e[14:15]" "e[34:36]" "e[38]" "e[40]" "e[42]" "e[47]" "e[50:52]" "e[54]" "e[56]" "e[58]" "e[63]";
createNode polyMapCut -n "polyMapCut10";
	rename -uid "3081EC45-4F76-53F5-3094-7B81DD21B390";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[39]" "e[47]" "e[149]" "e[199]" "e[207]" "e[309]";
createNode Unfold3DUnfold -n "Unfold3DUnfold11";
	rename -uid "B73349BF-4561-316A-FEB4-799BA3D7A3D4";
	setAttr ".uvl" -type "Int32Array" 228 0 1 2 3 4 5
		 6 7 8 9 10 11 12 13 14 15 16 17
		 18 19 20 21 22 23 24 25 26 27 28 29
		 30 31 32 33 34 35 36 37 38 39 40 41
		 42 43 44 45 46 47 48 49 50 51 52 53
		 54 55 56 57 58 59 60 61 62 63 64 65
		 66 67 68 69 70 71 72 73 74 75 76 77
		 78 79 80 81 82 83 84 85 86 87 88 89
		 90 91 92 93 94 95 96 97 98 99 100 101
		 102 103 104 105 106 107 108 109 110 111 112 113
		 114 115 116 117 118 119 120 121 122 123 124 125
		 126 127 128 129 130 131 132 133 134 135 136 137
		 138 139 140 141 142 143 144 145 146 147 148 149
		 150 151 152 153 154 155 156 157 158 159 160 161
		 162 163 164 165 166 167 168 169 170 171 172 173
		 174 175 176 177 178 179 180 181 182 183 184 185
		 186 187 188 189 190 191 192 193 194 195 196 197
		 198 199 200 201 202 203 204 205 206 207 208 209
		 210 211 212 213 214 215 216 217 218 219 220 221
		 222 223 224 225 226 227 ;
	setAttr ".mdp" -type "string" "|pCube4|pCube4Shape";
	setAttr ".usn" -type "string" "map1";
	setAttr ".miee" yes;
	setAttr ".mue" -type "floatArray" 228 0.76009548 0.5725894 0.73926538 0.71694696
		 0.97970909 0.95912224 0.99902344 0.32430887 0.57282877 0.34576872 0.19692712 0.0009765625
		 0.97812521 0.64405155 0.70746362 0.25436372 0.27504218 0.98936832 0.75384438 0.74595243
		 0.74127483 0.72968304 0.5475204 0.55327153 0.56813914 0.99879622 0.97692615 0.36512259
		 0.91694623 0.92634773 0.93695569 0.20025256 0.96634257 0.96726894 0.19868149 0.19963053
		 0.20025049 0.20022999 0.20010026 0.2002335 0.17577647 0.18883893 0.20025267 0.20025145
		 0.58170718 0.56025642 0.36953557 0.34768608 0.28077045 0.21029598 0.20025231 0.20025732
		 0.20035446 0.20069689 0.20875731 0.23885231 0.65193886 0.75221545 0.21000388 0.20111667
		 0.20045464 0.20029953 0.20025499 0.20025264 0.98451078 0.24557714 0.23685044 0.95375311
		 0.93162924 0.73519123 0.67923379 0.69275874 0.69918257 0.75503063 0.73118669 0.9667806
		 0.87318003 0.9265523 0.93497235 0.89737016 0.32303149 0.3090483 0.35773584 0.29560727
		 0.065852769 0.45400384 0.59247255 0.26118872 0.054973792 0.72627324 0.76435667 0.049403753
		 0.28340295 0.44840643 0.63634872 0.087100849 0.071494743 0.26758152 0.27342564 0.077087313
		 0.88308603 0.034255676 0.033406135 0.88321507 0.44123465 0.63172424 0.72035486 0.75545025
		 0.03570091 0.3308436 0.30231422 0.34958577 0.41981265 0.42886439 0.30558422 0.6556713
		 0.064989902 0.65356302 0.023036741 0.43314976 0.26671585 0.28535685 0.40919629 0.88304085
		 0.80417073 0.043721057 0.71477932 0.016556716 0.65181446 0.45369601 0.44810653 0.47140181
		 0.45511448 0.46193138 0.45443523 0.44703689 0.45339563 0.45397097 0.45400211 0.45400375
		 0.45400518 0.45400465 0.45401964 0.45400402 0.45400065 0.45393297 0.45411101 0.45401669
		 0.45386234 0.26120058 0.79064035 0.88291347 0.24728167 0.035060611 0.021718655 0.26192072
		 0.8824001 0.92614329 0.88380778 0.88197833 0.81391454 0.83230418 0.96912014 0.94928962
		 0.30310485 0.28997621 0.78023511 0.74734879 0.74633151 0.011343786 0.02146166 0.45400387
		 0.65370542 0.45459515 0.6274485 0.21744245 0.23957585 0.42955846 0.0009765625 0.67747128
		 0.35911956 0.34031269 0.81166244 0.77715546 0.69809204 0.71274275 0.22139896 0.94849354
		 0.25452074 0.28613776 0.20025249 0.98065293 0.34812641 0.72033095 0.37362823 0.78226614
		 0.59212548 0.69811457 0.34925237 0.9390893 0.64317006 0.66094601 0.18989152 0.22362341
		 0.3070586 0.74036163 0.96605504 0.98031247 0.063666284 0.73496777 0.96546793 0.2002525
		 0.24929018 0.41393283 0.45400378 0.45400387 0.25573516 0.66909075 0.036722638 0.021554498
		 0.2563023 0.23838639 0.22792503 0.25004768 0.74446678 0.76242101 0.77251023 0.75034893 ;
	setAttr ".mve" -type "floatArray" 228 0.81903154 0.55922067 0.68588042 0.55550784
		 0.65089947 0.51606971 0.78272599 0.61571354 0.63094008 0.67297351 0.72844219 0.83264184
		 0.92412066 0.61864239 0.48510501 0.62527972 0.6922605 0.71758676 0.68631911 0.61967075
		 0.54795021 0.48138291 0.56266713 0.63358265 0.69517612 0.78468364 0.78603667 0.6685307
		 0.3877497 0.45277566 0.51928496 0.83563435 0.65292603 0.72090083 0.83511442 0.83497834
		 0.83562803 0.83561844 0.83555698 0.83559531 0.83285886 0.82411361 0.83563417 0.8356334
		 0.65943241 0.66457915 0.69977194 0.7021147 0.72525221 0.75682878 0.83563459 0.83564574
		 0.83573151 0.83611816 0.84458715 0.95886207 0.65422821 0.65010744 0.83502764 0.83606619
		 0.83577418 0.83566791 0.83563632 0.83563441 0.68434006 0.74108428 0.71018308 0.48275289
		 0.48602864 0.51480681 0.54933852 0.61973321 0.65488499 0.99357027 0.89269781 0.68702871
		 0.86902326 0.85608739 0.86481661 0.87910646 0.168244 0.23855302 0.23780583 0.10390076
		 0.13578545 0.83674276 0.69044197 0.16641361 0.065925486 0.31369033 0.33183545 0.099104807
		 0.035094883 0.25331736 0.2894192 0.0044702212 0.10259222 0.13331999 0.099947624 0.06939774
		 0.87170815 0.30312979 0.33698878 0.87199485 0.28427497 0.32062685 0.34665793 0.36268881
		 0.23775327 0.83716196 0.27363759 0.27332982 0.27899879 0.25055408 0.038837571 0.29398772
		 0.0009765625 0.32310498 0.40201038 0.31482586 0.24057369 0.17425355 0.30796301 0.87213755
		 0.35032848 0.13235582 0.3792285 0.30024597 0.35370526 0.83709908 0.84335196 0.83350813
		 0.83630067 0.82821661 0.83625859 0.83685142 0.83708602 0.83676833 0.83674425 0.83674264
		 0.83673829 0.83674198 0.8367306 0.83674294 0.83675081 0.836815 0.83668137 0.83671492
		 0.83684975 0.26629934 0.37863544 0.87183964 0.30471957 0.26903555 0.26686275 0.30436584
		 0.8708874 0.86144376 0.87292278 0.8724308 0.90933281 0.8537336 0.84753072 0.92356396
		 0.30923051 0.13827758 0.26000091 0.24682327 0.39269 0.33343118 0.23590446 0.8367427
		 0.22806396 0.18243271 0.35157961 0.43380743 0.437365 0.17883775 0.3984558 0.23684759
		 0.16201788 0.30826092 0.27359396 0.40618703 0.69044298 0.51950949 0.63825786 0.44951278
		 0.7711367 0.75785726 0.83563435 0.58837026 0.60706776 0.41644269 0.730748 0.81571883
		 0.68847299 0.4199689 0.73273516 0.38446555 0.54287064 0.68921798 0.65166241 0.78445768
		 0.82770687 0.64785373 0.62163156 0.61993921 0.70790207 0.62210143 0.59014124 0.83563429
		 0.26856068 0.97792757 0.83674282 0.83674276 0.23814921 0.82445216 0.20630981 0.20439722
		 0.33822587 0.33680096 0.36891377 0.37245905 0.71969545 0.71849704 0.75071663 0.75401652 ;
createNode polyMapCut -n "polyMapCut11";
	rename -uid "58FEA20C-44CB-72ED-1938-67B652912692";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[114:119]" "e[153]" "e[274:279]" "e[313]" "e[317]" "e[325]";
createNode Unfold3DUnfold -n "Unfold3DUnfold12";
	rename -uid "3ACEFF7E-46B0-3305-3FB1-8C9DFC9C9A09";
	setAttr ".uvl" -type "Int32Array" 247 0 1 2 3 4 5
		 6 7 8 9 10 11 12 13 14 15 16 17
		 18 19 20 21 22 23 24 25 26 27 28 29
		 30 31 32 33 34 35 36 37 38 39 40 41
		 42 43 44 45 46 47 48 49 50 51 52 53
		 54 55 56 57 58 59 60 61 62 63 64 65
		 66 67 68 69 70 71 72 73 74 75 76 77
		 78 79 80 81 82 83 84 85 86 87 88 89
		 90 91 92 93 94 95 96 97 98 99 100 101
		 102 103 104 105 106 107 108 109 110 111 112 113
		 114 115 116 117 118 119 120 121 122 123 124 125
		 126 127 128 129 130 131 132 133 134 135 136 137
		 138 139 140 141 142 143 144 145 146 147 148 149
		 150 151 152 153 154 155 156 157 158 159 160 161
		 162 163 164 165 166 167 168 169 170 171 172 173
		 174 175 176 177 178 179 180 181 182 183 184 185
		 186 187 188 189 190 191 192 193 194 195 196 197
		 198 199 200 201 202 203 204 205 206 207 208 209
		 210 211 212 213 214 215 216 217 218 219 220 221
		 222 223 224 225 226 227 228 229 230 231 232 233
		 234 235 236 237 238 239 240 241 242 243 244 245
		 246 ;
	setAttr ".mdp" -type "string" "|pCube4|pCube4Shape";
	setAttr ".usn" -type "string" "map1";
	setAttr ".miee" yes;
	setAttr ".mue" -type "floatArray" 247 0.75635386 0.56591147 0.73519754 0.71252966
		 0.97940665 0.95849741 0.99902344 0.31374285 0.56615454 0.33553877 0.1843663 0.36815149
		 0.08515466 0.6384927 0.70289779 0.24270236 0.26370466 0.9892171 0.75000489 0.74198937
		 0.73723853 0.72546518 0.54044986 0.54629105 0.56139147 0.082032174 0.97658008 0.3551957
		 0.91566092 0.92520958 0.93598366 0.91215509 0.9658308 0.96677166 0.57071984 0.57814819
		 0.64650208 0.65446144 0.61412585 0.61457479 0.45169374 0.4546718 0.79828072 0.80566913
		 0.57517201 0.55338532 0.35967779 0.33748615 0.26952261 0.19794452 0.80282599 0.64850533
		 0.6157608 0.58037728 0.45792028 0.38096845 0.64650351 0.74835044 0.45993572 0.58316231
		 0.61610746 0.64774787 0.7954092 0.90822631 0.98428351 0.23377818 0.22491483 0.95304412
		 0.93057388 0.73105961 0.67422587 0.68796265 0.69448709 0.081303731 0.082915097 0.96627569
		 0.21975052 0.21829972 0.22811447 0.22703315 0.32807484 0.31387269 0.36332268 0.30022117
		 0.06686873 0.0093039591 0.64571273 0.26526365 0.055819385 0.73763138 0.77631116 0.050162122
		 0.28782576 0.45541316 0.64629865 0.088449553 0.072599053 0.27175656 0.27769217 0.078279205
		 0.3563686 0.034776825 0.033913981 0.37227622 0.44812906 0.64160168 0.73162031 0.76726532
		 0.036244694 0.6455428 0.30703315 0.35504496 0.4263716 0.43556511 0.31035438 0.66592383
		 0.065992348 0.66378254 0.023382202 0.43991759 0.27087733 0.28981024 0.415589 0.36768162
		 0.81674868 0.044390436 0.72595745 0.0168007 0.66200656 0.38251892 0.5049578 0.50919813
		 0.39235246 0.50650942 0.38480517 0.50322807 0.37974331 0.31536722 0.16719115 0.166223
		 0.31685239 0.16049673 0.30874249 0.16215141 0.31459096 0.34722835 0.34890994 0.34848502
		 0.34675232 0.26527566 0.80300647 0.35456172 0.25113881 0.035594366 0.022043476 0.2660071
		 0.28559577 0.29151839 0.30038452 0.29638633 0.1497532 0.15109639 0.15522406 0.1577011
		 0.30783617 0.29450193 0.79243827 0.75903696 0.75800377 0.011506137 0.021782456 0.0009765625
		 0.66392714 0.4616988 0.63725907 0.2208323 0.2433123 0.43627003 0.0009765625 0.68806517
		 0.36472806 0.34562668 0.82435775 0.78931046 0.69337946 0.70825958 0.20922138 0.94770223
		 0.24286185 0.27497399 0.91693765 0.98036522 0.33793336 0.71596664 0.36383456 0.77887172
		 0.58575344 0.69340235 0.339077 0.9381507 0.63759738 0.65565175 0.17722052 0.21148066
		 0.38005933 0.73631096 0.96553874 0.98001945 0.36999133 0.73083264 0.9649424 0.92330354
		 0.25317878 0.64029276 0.016921362 0.002196318 0.25972468 0.64679128 0.037282418 0.021876747
		 0.2603007 0.24210422 0.23147903 0.25394812 0.74048042 0.75871581 0.76896304 0.74645472
		 0.14640935 0.22258657 0.28714567 0.36082539 0.17288068 0.0076568811 0.318874 0.34314403
		 0.37513441 0.50063664 0.64195013 0.07832808 0.79008329 0.90025365 0.64441389 0.62033826
		 0.58802968 0.46252647 0.3766481 ;
	setAttr ".mve" -type "floatArray" 247 0.83421135 0.57033187 0.69897509 0.56656092
		 0.66344631 0.52650511 0.79733723 0.62770945 0.64317441 0.68586606 0.74220341 0.91577178
		 0.93873268 0.63068414 0.49505553 0.63742536 0.70545512 0.73117793 0.69942069 0.63172853
		 0.55888486 0.49127516 0.57383227 0.64585835 0.70841634 0.96125072 0.80069977 0.68135369
		 0.39617565 0.46221989 0.52977073 0.89485663 0.66550457 0.73454392 0.91912246 0.91114795
		 0.91449529 0.92437315 0.91953081 0.91211331 0.91850418 0.90591699 0.90592384 0.91745651
		 0.67211288 0.67734027 0.71308416 0.71546358 0.73896343 0.77103454 0.93899763 0.94524008
		 0.94557714 0.94345725 0.94143814 0.94544697 0.6668272 0.66264188 0.95890099 0.95430899
		 0.95906496 0.96262348 0.95526695 0.94742209 0.69741058 0.75504345 0.72365832 0.49266657
		 0.49599364 0.52522248 0.56029493 0.63179201 0.66749424 0.90469724 0.99558336 0.70014131
		 0.90048641 0.88355815 0.95432383 0.93217564 0.1708634 0.24227346 0.24151456 0.10551255
		 0.13789655 0.80215436 0.81334168 0.16900435 0.066942587 0.31858742 0.3370167 0.1006415
		 0.035629176 0.257269 0.29393619 0.0045249318 0.10418352 0.13539249 0.10149751 0.070469216
		 0.875893 0.30786151 0.3422507 0.94769508 0.2887114 0.32563257 0.35207129 0.36835319
		 0.24146119 0.87452221 0.27790746 0.27759486 0.28335261 0.25446245 0.039430469 0.29857627
		 0.0009765625 0.3281495 0.40829057 0.31974074 0.24432579 0.17696707 0.3127704 0.92534029
		 0.35579932 0.13441321 0.38515192 0.30493253 0.359229 0.85751802 0.85595268 0.8328501
		 0.83332235 0.82045454 0.8253836 0.87333363 0.86832178 0.87627208 0.86978942 0.81937861
		 0.82812732 0.83161372 0.83804095 0.85283405 0.85897571 0.85950971 0.83351129 0.82608426
		 0.87298334 0.27045429 0.38454959 0.89344871 0.3094762 0.27323335 0.27102652 0.3091169
		 0.89713037 0.98388594 0.95107347 0.92874753 0.8990894 0.9917354 0.95691031 0.93448418
		 0.31405774 0.14042771 0.26405722 0.2506732 0.39882421 0.33863741 0.23958342 0.81549627
		 0.23162013 0.1852743 0.35707003 0.44058552 0.44419882 0.18162304 0.40468031 0.24054132
		 0.16453978 0.31307298 0.27786312 0.41253263 0.70360911 0.52999884 0.65060681 0.45890594
		 0.78556651 0.77207905 0.93574601 0.59993792 0.61892819 0.42531797 0.74454528 0.83084673
		 0.70160824 0.42889941 0.74656361 0.39284006 0.55372578 0.70236492 0.66422129 0.79909611
		 0.87032622 0.66035295 0.6337201 0.63200122 0.90161747 0.63419729 0.60173666 0.90582138
		 0.27275103 0.8599661 0.77192569 0.8465358 0.24186333 0.82777148 0.20952532 0.20758279
		 0.34350717 0.34205997 0.37467563 0.37827644 0.73331964 0.73210251 0.7648266 0.76817822
		 0.88177979 0.98764545 0.87992668 0.98025459 0.79874885 0.86025482 0.80769348 0.80400687
		 0.80167681 0.7981686 0.78027534 0.887447 0.88568527 0.86620915 0.89397883 0.89007962
		 0.88727719 0.88406169 0.96030927 ;
createNode polyTweakUV -n "polyTweakUV10";
	rename -uid "D8DE66F1-49EF-2293-5E17-E69E419C4418";
	setAttr ".uopa" yes;
	setAttr -s 70 ".uvtk";
	setAttr ".uvtk[11]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[31]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[34]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[35]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[36]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[37]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[38]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[39]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[40]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[41]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[42]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[43]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[50]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[51]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[52]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[53]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[54]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[55]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[58]" -type "float2" 0.061186962 0.013597082 ;
	setAttr ".uvtk[59]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[60]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[61]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[62]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[63]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[85]" -type "float2" -0.0067985542 -0.02039567 ;
	setAttr ".uvtk[86]" -type "float2" -0.0067985309 -0.02039567 ;
	setAttr ".uvtk[109]" -type "float2" -0.0067985309 -0.02039567 ;
	setAttr ".uvtk[129]" -type "float2" -0.0067985607 -0.02039567 ;
	setAttr ".uvtk[130]" -type "float2" -0.0067985309 -0.02039567 ;
	setAttr ".uvtk[131]" -type "float2" -0.0067985309 -0.02039567 ;
	setAttr ".uvtk[132]" -type "float2" -0.0067985607 -0.02039567 ;
	setAttr ".uvtk[133]" -type "float2" -0.0067985309 -0.02039567 ;
	setAttr ".uvtk[134]" -type "float2" -0.0067985607 -0.02039567 ;
	setAttr ".uvtk[135]" -type "float2" -0.0067985607 -0.02039567 ;
	setAttr ".uvtk[136]" -type "float2" -0.0067985607 -0.02039567 ;
	setAttr ".uvtk[137]" -type "float2" -0.0067985607 -0.02039567 ;
	setAttr ".uvtk[138]" -type "float2" -0.0067985607 -0.02039567 ;
	setAttr ".uvtk[139]" -type "float2" -0.0067985607 -0.02039567 ;
	setAttr ".uvtk[140]" -type "float2" -0.0067985607 -0.02039567 ;
	setAttr ".uvtk[141]" -type "float2" -0.0067985607 -0.02039567 ;
	setAttr ".uvtk[142]" -type "float2" -0.0067985607 -0.02039567 ;
	setAttr ".uvtk[143]" -type "float2" -0.0067985607 -0.02039567 ;
	setAttr ".uvtk[144]" -type "float2" -0.0067985607 -0.02039567 ;
	setAttr ".uvtk[145]" -type "float2" -0.0067985607 -0.02039567 ;
	setAttr ".uvtk[146]" -type "float2" -0.0067985607 -0.02039567 ;
	setAttr ".uvtk[147]" -type "float2" -0.0067985607 -0.02039567 ;
	setAttr ".uvtk[148]" -type "float2" -0.0067985607 -0.02039567 ;
	setAttr ".uvtk[171]" -type "float2" -0.0067985542 -0.02039567 ;
	setAttr ".uvtk[190]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[204]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[208]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[211]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[213]" -type "float2" -0.0067985309 -0.02039567 ;
	setAttr ".uvtk[214]" -type "float2" -0.0067985542 -0.02039567 ;
	setAttr ".uvtk[215]" -type "float2" -0.0067985542 -0.02039567 ;
	setAttr ".uvtk[217]" -type "float2" -0.0067985309 -0.02039567 ;
	setAttr ".uvtk[232]" -type "float2" -0.0067985607 -0.02039567 ;
	setAttr ".uvtk[233]" -type "float2" -0.0067985542 -0.02039567 ;
	setAttr ".uvtk[234]" -type "float2" -0.0067985607 -0.02039567 ;
	setAttr ".uvtk[235]" -type "float2" -0.0067985607 -0.02039567 ;
	setAttr ".uvtk[236]" -type "float2" -0.0067985607 -0.02039567 ;
	setAttr ".uvtk[237]" -type "float2" -0.0067985607 -0.02039567 ;
	setAttr ".uvtk[238]" -type "float2" -0.0067985309 -0.02039567 ;
	setAttr ".uvtk[240]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[241]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[242]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[243]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[244]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[245]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[246]" -type "float2" 0.061186992 0.013597082 ;
createNode Unfold3DUnfold -n "Unfold3DUnfold13";
	rename -uid "192742F9-4830-1073-5BB4-52A13291BD72";
	setAttr ".uvl" -type "Int32Array" 247 0 1 2 3 4 5
		 6 7 8 9 10 11 12 13 14 15 16 17
		 18 19 20 21 22 23 24 25 26 27 28 29
		 30 31 32 33 34 35 36 37 38 39 40 41
		 42 43 44 45 46 47 48 49 50 51 52 53
		 54 55 56 57 58 59 60 61 62 63 64 65
		 66 67 68 69 70 71 72 73 74 75 76 77
		 78 79 80 81 82 83 84 85 86 87 88 89
		 90 91 92 93 94 95 96 97 98 99 100 101
		 102 103 104 105 106 107 108 109 110 111 112 113
		 114 115 116 117 118 119 120 121 122 123 124 125
		 126 127 128 129 130 131 132 133 134 135 136 137
		 138 139 140 141 142 143 144 145 146 147 148 149
		 150 151 152 153 154 155 156 157 158 159 160 161
		 162 163 164 165 166 167 168 169 170 171 172 173
		 174 175 176 177 178 179 180 181 182 183 184 185
		 186 187 188 189 190 191 192 193 194 195 196 197
		 198 199 200 201 202 203 204 205 206 207 208 209
		 210 211 212 213 214 215 216 217 218 219 220 221
		 222 223 224 225 226 227 228 229 230 231 232 233
		 234 235 236 237 238 239 240 241 242 243 244 245
		 246 ;
	setAttr ".mdp" -type "string" "|pCube4|pCube4Shape";
	setAttr ".usn" -type "string" "map1";
	setAttr ".miee" yes;
	setAttr ".mue" -type "floatArray" 247 0.75635386 0.56591147 0.73519754 0.71252966
		 0.97940665 0.95849741 0.99902344 0.31374285 0.56615454 0.33553877 0.1843663 0.36815149
		 0.08515466 0.6384927 0.70289779 0.24270236 0.26370466 0.9892171 0.75000489 0.74198937
		 0.73723853 0.72546518 0.54044986 0.54629105 0.56139147 0.082032174 0.97658008 0.3551957
		 0.91566086 0.92520958 0.93598366 0.91215509 0.9658308 0.96677166 0.57071984 0.57814819
		 0.64650208 0.65446144 0.61412585 0.61457479 0.45169374 0.4546718 0.79828072 0.80566913
		 0.57517201 0.55338532 0.35967779 0.33748615 0.26952261 0.19794452 0.80282599 0.64850533
		 0.6157608 0.58037728 0.45792028 0.38096845 0.64650351 0.74835044 0.45993572 0.58316231
		 0.61610746 0.64774787 0.7954092 0.90822631 0.98428351 0.23377818 0.22491483 0.95304412
		 0.93057388 0.73105961 0.67422587 0.68796265 0.69448709 0.081303731 0.082915097 0.96627569
		 0.21975052 0.21829972 0.22811447 0.22703315 0.32807484 0.31387269 0.36332268 0.30022117
		 0.06686873 0.0093039591 0.64571273 0.26526365 0.055819385 0.73763138 0.77631116 0.050162125
		 0.28782576 0.45541316 0.64629865 0.088449553 0.072599053 0.27175656 0.27769217 0.078279212
		 0.3563686 0.034776825 0.033913981 0.37227622 0.44812906 0.64160168 0.73162031 0.76726532
		 0.036244694 0.6455428 0.30703315 0.35504496 0.4263716 0.43556511 0.31035438 0.66592383
		 0.065992348 0.66378254 0.023382202 0.43991759 0.27087733 0.28981024 0.415589 0.36768162
		 0.81674868 0.044390436 0.72595745 0.0168007 0.66200656 0.38251892 0.5049578 0.50919813
		 0.39235246 0.50650942 0.38480517 0.50322807 0.37974331 0.31536722 0.16719115 0.166223
		 0.31685239 0.16049673 0.30874249 0.16215141 0.31459096 0.34722835 0.34890994 0.34848502
		 0.34675232 0.26527566 0.80300647 0.35456172 0.25113881 0.035594366 0.022043476 0.2660071
		 0.28559577 0.29151839 0.30038452 0.29638633 0.1497532 0.15109639 0.15522406 0.1577011
		 0.30783617 0.29450193 0.79243827 0.75903696 0.75800377 0.011506137 0.021782456 0.0009765625
		 0.66392714 0.4616988 0.63725907 0.2208323 0.2433123 0.43627003 0.0009765625 0.68806517
		 0.36472806 0.34562668 0.82435775 0.78931046 0.69337946 0.70825958 0.20922138 0.94770223
		 0.24286185 0.27497399 0.91693765 0.98036522 0.33793336 0.71596664 0.36383456 0.77887172
		 0.58575344 0.69340235 0.339077 0.9381507 0.63759738 0.65565175 0.17722052 0.21148066
		 0.38005933 0.73631096 0.96553874 0.98001945 0.36999133 0.73083264 0.9649424 0.92330354
		 0.25317878 0.64029276 0.016921362 0.002196318 0.25972468 0.64679128 0.037282418 0.021876747
		 0.2603007 0.24210422 0.23147903 0.25394812 0.74048042 0.75871581 0.76896304 0.74645472
		 0.14640935 0.22258657 0.28714567 0.36082539 0.17288068 0.0076568811 0.318874 0.34314403
		 0.37513441 0.50063664 0.64195013 0.07832808 0.79008329 0.90025365 0.64441389 0.62033826
		 0.58802968 0.46252647 0.3766481 ;
	setAttr ".mve" -type "floatArray" 247 0.83421135 0.57033187 0.69897509 0.56656092
		 0.66344631 0.52650511 0.79733723 0.62770945 0.64317441 0.68586606 0.74220341 0.91577178
		 0.93873268 0.63068414 0.49505556 0.63742536 0.70545512 0.73117793 0.69942069 0.63172853
		 0.55888492 0.49127516 0.57383227 0.64585835 0.70841634 0.96125072 0.80069977 0.68135369
		 0.39617565 0.46221989 0.52977073 0.89485663 0.66550457 0.73454392 0.91912246 0.91114795
		 0.91449529 0.92437315 0.91953081 0.91211331 0.91850418 0.90591699 0.90592384 0.91745651
		 0.67211288 0.67734027 0.71308416 0.71546358 0.73896343 0.77103454 0.93899763 0.94524008
		 0.94557714 0.94345725 0.9414382 0.94544697 0.6668272 0.66264188 0.95890105 0.95430899
		 0.95906496 0.96262348 0.95526695 0.94742215 0.69741058 0.75504345 0.72365832 0.49266657
		 0.49599364 0.52522248 0.56029493 0.63179201 0.66749424 0.90469724 0.99558336 0.70014131
		 0.90048641 0.88355815 0.95432383 0.93217564 0.1708634 0.24227346 0.24151456 0.10551255
		 0.13789655 0.80215436 0.81334168 0.16900435 0.066942587 0.31858742 0.3370167 0.1006415
		 0.035629176 0.257269 0.29393619 0.0045249318 0.10418352 0.13539249 0.10149751 0.070469216
		 0.87589306 0.30786151 0.3422507 0.94769508 0.2887114 0.32563257 0.35207129 0.36835319
		 0.24146119 0.87452221 0.27790746 0.27759486 0.28335261 0.25446248 0.039430473 0.29857627
		 0.0009765625 0.3281495 0.40829057 0.31974074 0.24432579 0.17696707 0.3127704 0.92534029
		 0.35579932 0.13441321 0.38515192 0.30493253 0.359229 0.85751802 0.85595268 0.8328501
		 0.83332235 0.82045454 0.8253836 0.87333363 0.86832178 0.87627208 0.86978942 0.81937861
		 0.82812732 0.83161372 0.83804095 0.85283405 0.85897571 0.85950971 0.83351129 0.82608426
		 0.87298334 0.27045429 0.38454959 0.89344871 0.3094762 0.27323335 0.27102652 0.3091169
		 0.89713043 0.98388594 0.95107347 0.92874753 0.8990894 0.9917354 0.95691031 0.93448418
		 0.31405774 0.14042771 0.26405722 0.2506732 0.39882421 0.33863741 0.23958342 0.81549627
		 0.23162013 0.18527432 0.35707003 0.44058552 0.44419882 0.18162304 0.40468031 0.24054132
		 0.16453978 0.31307298 0.27786312 0.41253263 0.70360911 0.52999884 0.65060681 0.45890594
		 0.78556651 0.77207905 0.93574607 0.59993792 0.61892819 0.42531797 0.74454528 0.83084673
		 0.70160824 0.42889941 0.74656361 0.39284006 0.55372578 0.70236492 0.66422129 0.79909611
		 0.87032622 0.66035295 0.6337201 0.63200122 0.90161747 0.63419729 0.60173666 0.90582138
		 0.27275103 0.8599661 0.77192569 0.8465358 0.24186333 0.82777148 0.20952532 0.20758279
		 0.34350717 0.34205997 0.37467563 0.37827644 0.73331964 0.73210251 0.7648266 0.76817822
		 0.88177979 0.98764545 0.87992668 0.98025459 0.79874885 0.86025482 0.80769354 0.80400687
		 0.80167681 0.7981686 0.78027534 0.88744706 0.88568527 0.86620921 0.89397883 0.89007962
		 0.88727719 0.88406169 0.96030927 ;
createNode Unfold3DOptimize -n "Unfold3DOptimize2";
	rename -uid "AB362285-4564-37B8-F59D-C796B0BFE87B";
	setAttr ".uvl" -type "Int32Array" 247 0 1 2 3 4 5
		 6 7 8 9 10 11 12 13 14 15 16 17
		 18 19 20 21 22 23 24 25 26 27 28 29
		 30 31 32 33 34 35 36 37 38 39 40 41
		 42 43 44 45 46 47 48 49 50 51 52 53
		 54 55 56 57 58 59 60 61 62 63 64 65
		 66 67 68 69 70 71 72 73 74 75 76 77
		 78 79 80 81 82 83 84 85 86 87 88 89
		 90 91 92 93 94 95 96 97 98 99 100 101
		 102 103 104 105 106 107 108 109 110 111 112 113
		 114 115 116 117 118 119 120 121 122 123 124 125
		 126 127 128 129 130 131 132 133 134 135 136 137
		 138 139 140 141 142 143 144 145 146 147 148 149
		 150 151 152 153 154 155 156 157 158 159 160 161
		 162 163 164 165 166 167 168 169 170 171 172 173
		 174 175 176 177 178 179 180 181 182 183 184 185
		 186 187 188 189 190 191 192 193 194 195 196 197
		 198 199 200 201 202 203 204 205 206 207 208 209
		 210 211 212 213 214 215 216 217 218 219 220 221
		 222 223 224 225 226 227 228 229 230 231 232 233
		 234 235 236 237 238 239 240 241 242 243 244 245
		 246 ;
	setAttr ".mdp" -type "string" "|pCube4|pCube4Shape";
	setAttr ".bi" no;
	setAttr ".usn" -type "string" "map1";
	setAttr ".miee" yes;
	setAttr ".mue" -type "floatArray" 247 0.75749415 0.56544769 0.73511165 0.712394
		 0.98000973 0.9584192 0.99989444 0.31348917 0.56595999 0.33538777 0.18383902 0.36834481
		 0.085160531 0.63839674 0.70355576 0.24245013 0.26338953 0.98997766 0.75030291 0.7410813
		 0.73734736 0.72610235 0.53984374 0.54629159 0.56082654 0.082040422 0.97746867 0.35464785
		 0.91556591 0.92510951 0.93595558 0.91205555 0.9664439 0.96753973 0.57117373 0.57786614
		 0.64680612 0.65384221 0.61377329 0.61448634 0.45179948 0.45473066 0.79841441 0.80578262
		 0.57518232 0.55324733 0.35924822 0.33703676 0.26910672 0.19732755 0.80296814 0.64699912
		 0.61564237 0.58160448 0.4579441 0.38119337 0.64617473 0.74785376 0.46000338 0.58369553
		 0.61590964 0.64754391 0.79593837 0.90782207 0.98498553 0.23328999 0.22442925 0.95292699
		 0.93048197 0.73151845 0.67351496 0.68793374 0.69436491 0.081344545 0.082894132 0.96699083
		 0.21955888 0.21802019 0.22818935 0.22709905 0.32878172 0.31387228 0.36340588 0.29952228
		 0.066837206 0.0093193967 0.64539486 0.26510793 0.05587066 0.73796022 0.77681768 0.050212443
		 0.28697157 0.45540756 0.64684683 0.088466741 0.07262475 0.27126172 0.27701169 0.078309923
		 0.35653418 0.034115952 0.033213094 0.37221384 0.448266 0.64205211 0.73205733 0.76778293
		 0.035819054 0.64532381 0.3071481 0.35537052 0.42635635 0.43575352 0.30950132 0.66607845
		 0.066032834 0.66424972 0.022588866 0.440496 0.27160352 0.28993487 0.41583261 0.36763981
		 0.81730384 0.044406496 0.72678149 0.016150443 0.66266745 0.38134387 0.50499368 0.50918418
		 0.39178109 0.50647056 0.38502538 0.50324857 0.37930098 0.3157514 0.16715175 0.16614304
		 0.31643683 0.16039754 0.30940774 0.16214116 0.31620079 0.34746552 0.34927154 0.34855038
		 0.3471722 0.26561296 0.80365777 0.35464638 0.25085807 0.03501546 0.02147205 0.26609018
		 0.28569895 0.29147121 0.30029184 0.29635799 0.14970396 0.15114081 0.15528107 0.15769733
		 0.30853418 0.29397139 0.79268539 0.75928462 0.75883961 0.010811693 0.021327442 0.0010644819
		 0.66388988 0.462286 0.63751906 0.2197479 0.2422267 0.43671605 0.00019920539 0.68830752
		 0.36534709 0.34627491 0.82460153 0.79016417 0.69270289 0.70876157 0.20897353 0.94758093
		 0.24206461 0.27418724 0.91663778 0.98050624 0.33795828 0.71676838 0.36360204 0.78001118
		 0.58551556 0.69420367 0.33844227 0.93803078 0.63696659 0.65501857 0.17697975 0.21066877
		 0.38031247 0.73594403 0.9659698 0.98048151 0.37018794 0.7301293 0.96509939 0.9231416
		 0.25366804 0.64011353 0.01676812 0.0024824447 0.26065931 0.64653033 0.037057664 0.021668721
		 0.25935754 0.24123049 0.23050071 0.25295714 0.74144435 0.7595979 0.76996845 0.74747425
		 0.14631771 0.22264881 0.28734791 0.36081186 0.17280123 0.0080080619 0.31958359 0.34315288
		 0.37448099 0.5003475 0.64150947 0.078335762 0.79026771 0.90017438 0.64359725 0.62009412
		 0.58844835 0.46257067 0.37691426 ;
	setAttr ".mve" -type "floatArray" 247 0.83464563 0.5705992 0.69971681 0.56616038
		 0.66293961 0.52620524 0.79687411 0.6277867 0.64380121 0.68612742 0.74174654 0.91600382
		 0.93886793 0.6307053 0.49455255 0.63738328 0.70536149 0.73070973 0.70016742 0.63219619
		 0.55868495 0.4909271 0.57440019 0.64616096 0.70868522 0.96135139 0.80023795 0.68152624
		 0.39608938 0.46215078 0.52962524 0.89430672 0.66497207 0.73407751 0.91973341 0.91143167
		 0.91438287 0.92444223 0.91942579 0.91221905 0.91871244 0.90617436 0.90541953 0.9169609
		 0.6726054 0.67761612 0.71326929 0.71595132 0.7387647 0.77050102 0.9384377 0.9453274
		 0.94564801 0.94422096 0.94157779 0.94563258 0.66670591 0.66325605 0.95902103 0.95524085
		 0.95913243 0.96285647 0.95464396 0.94676924 0.69690746 0.75458044 0.7233755 0.49244338
		 0.49586836 0.52497602 0.56054014 0.63163543 0.66759264 0.90490413 0.99566102 0.69960672
		 0.9002049 0.883255 0.95424062 0.93202627 0.17113313 0.24213716 0.2415458 0.10499435
		 0.13781147 0.80289531 0.81239879 0.16880111 0.066868976 0.31840879 0.33663988 0.10048246
		 0.035287254 0.25756446 0.29405046 0.0044878107 0.10411419 0.13514312 0.10114652 0.07045234
		 0.87602431 0.30742162 0.34187904 0.94771653 0.28897983 0.32576352 0.35178411 0.36779681
		 0.24115001 0.87353319 0.27803653 0.27749017 0.28384084 0.2550886 0.039006885 0.29876715
		 0.00090735353 0.32857484 0.40792516 0.3200033 0.2449518 0.17652798 0.31325349 0.92540884
		 0.35523617 0.13418464 0.38496098 0.30453178 0.35960186 0.85812199 0.85534483 0.83230007
		 0.833727 0.81995326 0.82543355 0.8727144 0.86909586 0.87669718 0.86984628 0.81951994
		 0.82818913 0.83179694 0.83831853 0.85298389 0.85923892 0.85950655 0.83336562 0.82616735
		 0.87296104 0.27125078 0.38391405 0.89355409 0.310211 0.27280113 0.27062416 0.30986828
		 0.89698046 0.98375815 0.95094883 0.92861593 0.89924175 0.99180388 0.95697147 0.93455464
		 0.31416681 0.13970442 0.26372343 0.25054681 0.39831242 0.3382732 0.23935677 0.81624514
		 0.23181856 0.18584087 0.35726368 0.44099373 0.44462579 0.18189031 0.40432221 0.240549
		 0.16503081 0.31289387 0.27743068 0.41191116 0.7037074 0.52929658 0.65037084 0.45877308
		 0.78514498 0.77197146 0.93512297 0.5995695 0.61919546 0.42498004 0.74479491 0.83125603
		 0.70208734 0.42848685 0.74699032 0.39271498 0.55419445 0.70217168 0.66389799 0.79857248
		 0.87063605 0.66113192 0.63330603 0.63167048 0.90186465 0.63479275 0.60151321 0.90524936
		 0.27333558 0.85900831 0.7726739 0.84722227 0.24231754 0.82681566 0.20939268 0.20731351
		 0.34454298 0.34265858 0.37515107 0.37875947 0.73439509 0.73270941 0.76530713 0.76867163
		 0.8819629 0.98759681 0.87977237 0.98021543 0.798832 0.86089611 0.80783731 0.80428493
		 0.80181009 0.79768741 0.77937287 0.88765782 0.88513887 0.86569792 0.8939594 0.89027476
		 0.88764018 0.88428718 0.96047723 ;
createNode polyTweakUV -n "polyTweakUV11";
	rename -uid "4B78703B-43F0-B42A-2E6D-23B9420AB683";
	setAttr ".uopa" yes;
	setAttr -s 247 ".uvtk[0:246]" -type "float2" 0.0011718869 -0.0030878782
		 0.0019838214 -0.0022636056 0.0034638047 -0.0022296906 0.0037398934 0.00039863586
		 -0.0005338788 0.00012671947 0.00084632635 0.0015870333 -0.0010399222 -0.001411736
		 -0.0034196377 -0.0014505982 0.0022544265 -0.0013822913 -0.0034393072 -0.0001154542
		 -0.0082293153 0.0027844906 0.0011203587 -0.0002630353 -3.632158e-005 -0.0001065135
		 0.0032619834 -0.00044584274 0.0019479394 0.0013967752 -0.0061146468 -0.0017880797
		 -0.0045694113 0.00085490942 -0.00077426434 -0.0007609129 0.0024344325 -0.0023680925
		 0.0043404698 -0.0010194182 0.0025746822 0.00087326765 0.0019181967 0.0013507605 0.0022419095
		 -0.002820313 0.0014038086 -0.00091707706 0.0024602413 0.00014352798 -6.1392784e-005
		 -5.7220459e-006 -0.00083857775 -0.0014893413 -0.0022787452 -9.0241432e-005 0.0014506578
		 0.0016339421 0.0012540817 0.001540482 0.00082343817 0.0014474988 0.0061549544 -0.00050985813
		 -0.0003721714 7.0869923e-005 -0.00056052208 -0.00084030628 -0.0042443871 -7.4923038e-005
		 -0.0031828284 0.00021404028 -0.0020833611 0.00044006109 -0.00044095516 0.00037127733
		 -0.0027034283 0.00056618452 -0.0029749274 7.0035458e-005 -0.00096225739 -0.00012326241
		 -0.00096210837 0.00010979176 0.0016261339 -0.00032639503 0.0018345118 -0.00011837482
		 0.0019823313 -0.0011120439 0.0016890764 -0.00052958727 -0.0024925172 0.00035053492
		 -0.002977699 0.00014543533 -0.0045543015 0.0018084049 -0.0076029301 0.0040971637
		 0.0016151071 0.00072699785 0.00071185827 0.00076627731 -0.0028682351 0.00073754787
		 -0.0055240393 -0.0010048747 -0.00098207593 -0.00044643879 0.00067561865 -0.0010690689
		 0.0034342408 -0.00071305037 0.0036452413 -0.0025550127 -0.0011286139 -0.0012466311
		 -0.0044093728 -0.0013615489 -0.0025764704 0.0011363626 -0.001285851 0.0012711287
		 0.00077617168 0.0016043186 0.0065044165 0.0010147691 -0.00065982342 -0.00035965443
		 -0.0058774799 0.0030232072 -0.0060874671 0.0016988516 0.0010728836 0.0016097724 0.0010832548
		 0.0015021265 0.0021369457 0.0011655092 0.0042777658 -0.0015373826 0.0041887164 -0.00027161837
		 0.0041747689 -0.0017061234 -0.00011830032 -0.00028318167 -3.6843121e-005 0.00012636185
		 -0.00048100948 -0.00041085482 0.0003272891 0.00054299831 0.00041547418 0.00063461065
		 -2.8640032e-005 -0.00016289949 8.9406967e-006 -8.5294247e-005 -0.0044299066 -0.0015862882
		 -0.0043416619 -0.00021596253 -0.0033894479 -0.00036148727 -0.0020087957 0.0014236346
		 -0.00075329095 0.0011182278 -0.0081619881 -0.0032175183 -0.00099658966 0.0029036403
		 -0.0026681423 0.00077828765 -0.0010570735 0.0013398752 0.0050133467 0.0011671185
		 0.0066125393 0.002029717 -0.00093588233 0.0012882128 -0.0017550886 0.0015050806 -0.0014111698
		 -0.00077772141 0.0025601983 0.00016114116 -0.0012194514 0.0014435495 -0.0009676218
		 0.0012093559 -0.0022185743 0.0011404306 -0.001956135 0.0013434812 -0.0010996163 0.0012851581
		 -0.00026208162 -0.00026726723 0.00020534918 -0.00085473061 0.00022301823 -0.0012946725
		 9.7930431e-005 4.196167e-005 -0.0017161071 -0.00033590198 0.0027373433 0.00065299869
		 0.0049901605 0.0021926463 0.0063938498 0.0034227967 7.8033656e-005 0.00030292571
		 -0.0013138056 0.00098615885 -0.0044248402 -0.0016030371 -0.0036144555 -0.00059267879
		 -0.0020513833 -0.00092813373 -0.0022954643 -0.0012525022 -0.0018084347 0.0015332587
		 0.0037454367 0.00014990568 -0.0011801049 0.0014857792 0.0032628179 0.00046184659
		 0.00038978271 -0.0019810796 -0.002518177 0.00041183829 -0.0045382977 -0.0012387484
		 -0.00392887 0.00039067864 -0.0023737252 -3.0308962e-005 1.9580126e-005 -7.7426434e-005
		 0.0088456273 0.0031285286 -0.00075389817 0.0012268424 0.0045070648 0.003670603 0.0003958419
		 -0.00083371997 0.0029317737 0.0015498102 0.0071424544 -0.00059729815 0.0029994249
		 0.00086057186 0.0030565858 0.0012665987 0.006352365 9.6142292e-005 0.0032134056 0.0015387535
		 0.0050785542 0.0001668334 0.0029402375 0.00063818693 0.0058011413 -0.00070685148
		 0.00074860454 0.0013420582 -0.0036188364 0.0004016161 -0.0035804063 -0.0014894605
		 0.0022534132 -0.00019019842 -0.0037408918 -0.0012816787 8.1688166e-005 7.2956085e-005
		 -0.0038101077 -0.0006095767 -0.0011642277 0.00065261126 0.0031890869 0.0010186434
		 0.0033679307 0.00040429831 0.0037396848 -0.00030219555 0.0027039051 0.0017820001
		 -0.0037074983 -0.0026211441 0.0082061291 0.0045051277 -0.00022730231 -0.00020456314
		 -0.0028321445 -0.0023711324 0.00016538054 -0.00036582351 0.00033488683 -0.00033372641
		 -0.0037819743 -0.0022069514 -0.0004054606 0.0002784133 -0.00012806058 0.00013571978
		 -0.00015756488 1.937151e-005 -0.0003053844 1.0430813e-005 0.00038062036 -0.00021868944
		 0.00016883016 3.4689903e-005 0.00019842386 -9.5188618e-005 0.00031992793 -0.00012272596
		 -0.0045809746 -0.00035694242 -0.0023869872 0.0013263077 0.0078777075 -0.0012304783
		 0.0065857768 -0.0016361624 0.0057898164 0.0049728155 0.00045055058 -0.0012522042
		 0.00029626302 0.00023259223 -0.008528172 -0.0028837323 0.0039358735 -0.0014448166
		 -0.0022256076 -0.0027789176 0.0029945374 0.0016403496 -0.0015259832 -0.0031344891
		 -0.0017455816 -0.003192991 -0.0019971728 -0.0022362173 0.00060538895 -0.0019394755
		 0.0037711263 -0.0012859404 -0.0039986074 -0.002559334 -0.0040179193 0.00039917231
		 0.0095825195 -0.00066322088 0.0074234605 0.0059683621 0.0042983294 -0.00050014257
		 0.0022750497 0.0013138652 -0.0073444098 -0.0014029741 0.0012341142 0.0016230345 -0.0052740872
		 0.0045061111 -0.0040751994 0.0032216907 0.0066940784 0.00059378147 0.00014364719
		 0.0016391873 -0.0036193132 -0.0015943646 0.00179106 0.0014497042 -0.0027559102 0.0012771487
		 0.0009649992 -0.0029951334 0.0022776723 -0.00024217367 0.0018245578 0.0014507771
		 -0.0026486814 0.0011888742 0.0014336109 0.0017036498 0.003891468 -0.0025419593 0.0038053393
		 0.00022298098 -0.0089816302 -0.0008456111 -0.0068293661 0.0054948926 0.00081801414
		 0.00099897385 0.0034381747 -0.0026982427 -0.0002143383 0.00074112415 -0.00042909384
		 0.00069403648 0.0010963976 5.4359436e-005 0.0042596459 -0.001200676 9.727478e-005
		 0.0015134215 0.0066722035 -8.481741e-005 -0.0039830506 -0.002427727 -0.0011249781
		 0.001414001 -0.0076520778 -0.0040166974 -0.0088575054 -0.0019187331 -0.0046403706
		 -0.0010286868 -0.0011460185 0.0024675727 -0.00010363758 0.0010852367 -0.00013762154
		 0.0011891723 -0.0021804869 -0.0026344657 -0.0019596815 -0.0023771822 -0.001740858
		 -0.0025607944 -0.0019498467 -0.0026071668 0.0017653704 -0.0026318431 0.0015533566
		 -0.0023129582 0.0012848377 -0.002464354 0.0014801621 -0.0025436878 0.00036744773
		 -0.0003259778 -5.8114529e-006 -7.9870224e-006 -0.00047677755 0.00031036139 6.1482191e-005
		 0.00021380186 -0.0033892095 -0.0018085241 -0.0088249212 -0.0014490485 0.00064200163
		 -0.0015474558 0.0032590032 -0.0016225576 0.006234318 -0.00050783157 0.0037426949
		 0.0022023916 -0.00063687563 0.0039343238 -0.00011602044 -0.00038522482 0.0014551282
		 -0.00056904554 0.0056704879 -0.0014071465 -0.00033724308 -0.00052499771 -0.0022879243
		 -0.00063711405 -0.0041527152 -0.00013428926 -0.0010687411 0.00077319145 0.00075003505
		 -0.0015473366;
createNode polyTweakUV -n "polyTweakUV15";
	rename -uid "F3E63046-4884-C435-65F6-8CB344ACFC2C";
	setAttr ".uopa" yes;
	setAttr -s 190 ".uvtk";
	setAttr ".uvtk[68]" -type "float2" 0.048604976 0.60756207 ;
	setAttr ".uvtk[71]" -type "float2" 0.048604976 0.60756207 ;
	setAttr ".uvtk[72]" -type "float2" 0.048604976 0.60756195 ;
	setAttr ".uvtk[73]" -type "float2" 0.048604976 0.60756207 ;
	setAttr ".uvtk[74]" -type "float2" 0.048604976 0.60756195 ;
	setAttr ".uvtk[76]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[78]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[80]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[81]" -type "float2" 0.048604976 0.60756195 ;
	setAttr ".uvtk[82]" -type "float2" 0.048604976 0.60756207 ;
	setAttr ".uvtk[83]" -type "float2" 0.048604976 0.60756195 ;
	setAttr ".uvtk[84]" -type "float2" 0.048604976 0.60756207 ;
	setAttr ".uvtk[85]" -type "float2" 0.048604976 0.60756195 ;
	setAttr ".uvtk[86]" -type "float2" 0.048604976 0.60756195 ;
	setAttr ".uvtk[87]" -type "float2" 0.048604976 0.60756207 ;
	setAttr ".uvtk[88]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[89]" -type "float2" 0.048604917 0.60756195 ;
	setAttr ".uvtk[90]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[91]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[92]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[93]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[94]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[95]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[96]" -type "float2" 0.048604976 0.60756195 ;
	setAttr ".uvtk[97]" -type "float2" 0.048604917 0.60756195 ;
	setAttr ".uvtk[98]" -type "float2" 0.048604976 0.60756195 ;
	setAttr ".uvtk[99]" -type "float2" 0.048604976 0.60756207 ;
	setAttr ".uvtk[100]" -type "float2" 0.048604917 0.60756195 ;
	setAttr ".uvtk[101]" -type "float2" 0.048604917 0.60756195 ;
	setAttr ".uvtk[102]" -type "float2" 0.048604917 0.60756201 ;
	setAttr ".uvtk[103]" -type "float2" 0.048604917 0.60756207 ;
	setAttr ".uvtk[104]" -type "float2" 0.048604917 0.60756201 ;
	setAttr ".uvtk[105]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[106]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[107]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[108]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[109]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[110]" -type "float2" 0.048604976 0.60756195 ;
	setAttr ".uvtk[111]" -type "float2" 0.048604976 0.60756195 ;
	setAttr ".uvtk[112]" -type "float2" 0.048604976 0.60756207 ;
	setAttr ".uvtk[113]" -type "float2" 0.048604976 0.60756195 ;
	setAttr ".uvtk[114]" -type "float2" 0.048604976 0.60756195 ;
	setAttr ".uvtk[115]" -type "float2" 0.048604976 0.60756195 ;
	setAttr ".uvtk[116]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[117]" -type "float2" 0.048604976 0.60756195 ;
	setAttr ".uvtk[118]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[119]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[120]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[121]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[122]" -type "float2" 0.048604976 0.60756207 ;
	setAttr ".uvtk[123]" -type "float2" 0.048604976 0.60756207 ;
	setAttr ".uvtk[124]" -type "float2" 0.048604976 0.60756207 ;
	setAttr ".uvtk[125]" -type "float2" 0.048604976 0.60756195 ;
	setAttr ".uvtk[126]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[127]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[128]" -type "float2" 0.048604976 0.60756195 ;
	setAttr ".uvtk[129]" -type "float2" 0.048604976 0.60756195 ;
	setAttr ".uvtk[130]" -type "float2" 0.048604976 0.60756195 ;
	setAttr ".uvtk[131]" -type "float2" 0.048604917 0.60756201 ;
	setAttr ".uvtk[132]" -type "float2" 0.048604917 0.60756201 ;
	setAttr ".uvtk[133]" -type "float2" 0.048604917 0.60756201 ;
	setAttr ".uvtk[134]" -type "float2" 0.048604917 0.60756201 ;
	setAttr ".uvtk[135]" -type "float2" 0.048604917 0.60756201 ;
	setAttr ".uvtk[136]" -type "float2" 0.048604917 0.60756201 ;
	setAttr ".uvtk[137]" -type "float2" 0.048604917 0.60756201 ;
	setAttr ".uvtk[138]" -type "float2" 0.048604917 0.60756201 ;
	setAttr ".uvtk[139]" -type "float2" 0.048604917 0.60756201 ;
	setAttr ".uvtk[140]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[141]" -type "float2" 0.048604917 0.60756201 ;
	setAttr ".uvtk[142]" -type "float2" 0.048604917 0.60756201 ;
	setAttr ".uvtk[143]" -type "float2" 0.048604917 0.60756201 ;
	setAttr ".uvtk[144]" -type "float2" 0.048604917 0.60756201 ;
	setAttr ".uvtk[145]" -type "float2" 0.048604917 0.60756201 ;
	setAttr ".uvtk[146]" -type "float2" 0.048604917 0.60756201 ;
	setAttr ".uvtk[147]" -type "float2" 0.048604917 0.60756201 ;
	setAttr ".uvtk[148]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[149]" -type "float2" 0.048604917 0.60756201 ;
	setAttr ".uvtk[150]" -type "float2" 0.048604917 0.60756201 ;
	setAttr ".uvtk[151]" -type "float2" 0.048604917 0.60756201 ;
	setAttr ".uvtk[452]" -type "float2" 0.048604947 0.60756195 ;
	setAttr ".uvtk[455]" -type "float2" 0.048604947 0.60756195 ;
	setAttr ".uvtk[456]" -type "float2" 0.048604947 0.60756195 ;
	setAttr ".uvtk[457]" -type "float2" 0.048604947 0.60756195 ;
	setAttr ".uvtk[458]" -type "float2" 0.048604947 0.60756195 ;
	setAttr ".uvtk[459]" -type "float2" 0.048604947 0.60756207 ;
	setAttr ".uvtk[461]" -type "float2" 0.048604947 0.60756201 ;
	setAttr ".uvtk[463]" -type "float2" 0.048604947 0.60756201 ;
	setAttr ".uvtk[464]" -type "float2" 0.048604947 0.60756207 ;
	setAttr ".uvtk[465]" -type "float2" 0.048604947 0.60756195 ;
	setAttr ".uvtk[466]" -type "float2" 0.048604961 0.60756195 ;
	setAttr ".uvtk[467]" -type "float2" 0.048604961 0.60756195 ;
	setAttr ".uvtk[468]" -type "float2" 0.048604961 0.60756207 ;
	setAttr ".uvtk[469]" -type "float2" 0.048604961 0.60756195 ;
	setAttr ".uvtk[470]" -type "float2" 0.048604954 0.60756207 ;
	setAttr ".uvtk[471]" -type "float2" 0.048604954 0.60756207 ;
	setAttr ".uvtk[472]" -type "float2" 0.048604954 0.60756201 ;
	setAttr ".uvtk[473]" -type "float2" 0.048604954 0.60756207 ;
	setAttr ".uvtk[474]" -type "float2" 0.048604961 0.60756201 ;
	setAttr ".uvtk[475]" -type "float2" 0.048604961 0.60756201 ;
	setAttr ".uvtk[476]" -type "float2" 0.048604954 0.60756195 ;
	setAttr ".uvtk[477]" -type "float2" 0.048604961 0.60756207 ;
	setAttr ".uvtk[478]" -type "float2" 0.048604961 0.60756195 ;
	setAttr ".uvtk[479]" -type "float2" 0.048604961 0.60756207 ;
	setAttr ".uvtk[480]" -type "float2" 0.048604958 0.60756207 ;
	setAttr ".uvtk[481]" -type "float2" 0.048604954 0.60756195 ;
	setAttr ".uvtk[482]" -type "float2" 0.048604954 0.60756207 ;
	setAttr ".uvtk[483]" -type "float2" 0.048604961 0.60756195 ;
	setAttr ".uvtk[484]" -type "float2" 0.048604958 0.60756207 ;
	setAttr ".uvtk[485]" -type "float2" 0.048604954 0.60756207 ;
	setAttr ".uvtk[486]" -type "float2" 0.048604958 0.60756201 ;
	setAttr ".uvtk[487]" -type "float2" 0.048604958 0.60756195 ;
	setAttr ".uvtk[488]" -type "float2" 0.048604954 0.60756207 ;
	setAttr ".uvtk[489]" -type "float2" 0.048604961 0.60756201 ;
	setAttr ".uvtk[490]" -type "float2" 0.048604961 0.60756207 ;
	setAttr ".uvtk[491]" -type "float2" 0.048604961 0.60756195 ;
	setAttr ".uvtk[492]" -type "float2" 0.048604954 0.60756195 ;
	setAttr ".uvtk[493]" -type "float2" 0.048604954 0.60756195 ;
	setAttr ".uvtk[494]" -type "float2" 0.048604947 0.60756207 ;
	setAttr ".uvtk[495]" -type "float2" 0.048604961 0.60756195 ;
	setAttr ".uvtk[496]" -type "float2" 0.048604947 0.60756195 ;
	setAttr ".uvtk[497]" -type "float2" 0.048604961 0.60756195 ;
	setAttr ".uvtk[498]" -type "float2" 0.048604961 0.60756207 ;
	setAttr ".uvtk[499]" -type "float2" 0.048604961 0.60756207 ;
	setAttr ".uvtk[500]" -type "float2" 0.048604947 0.60756201 ;
	setAttr ".uvtk[501]" -type "float2" 0.048604961 0.60756201 ;
	setAttr ".uvtk[502]" -type "float2" 0.048604961 0.60756201 ;
	setAttr ".uvtk[503]" -type "float2" 0.048604947 0.60756201 ;
	setAttr ".uvtk[504]" -type "float2" 0.048604961 0.60756195 ;
	setAttr ".uvtk[505]" -type "float2" 0.048604947 0.60756195 ;
	setAttr ".uvtk[506]" -type "float2" 0.048604961 0.60756195 ;
	setAttr ".uvtk[507]" -type "float2" 0.048604947 0.60756207 ;
	setAttr ".uvtk[508]" -type "float2" 0.048604961 0.60756207 ;
	setAttr ".uvtk[509]" -type "float2" 0.048604947 0.60756207 ;
	setAttr ".uvtk[510]" -type "float2" 0.048604947 0.60756195 ;
	setAttr ".uvtk[511]" -type "float2" 0.048604961 0.60756201 ;
	setAttr ".uvtk[512]" -type "float2" 0.048604954 0.60756195 ;
	setAttr ".uvtk[513]" -type "float2" 0.048604954 0.60756207 ;
	setAttr ".uvtk[514]" -type "float2" 0.048604961 0.60756207 ;
	setAttr ".uvtk[515]" -type "float2" 0.048604958 0.60756207 ;
	setAttr ".uvtk[516]" -type "float2" 0.048604958 0.60756207 ;
	setAttr ".uvtk[517]" -type "float2" 0.048604958 0.60756207 ;
	setAttr ".uvtk[518]" -type "float2" 0.048604958 0.60756195 ;
	setAttr ".uvtk[519]" -type "float2" 0.048604958 0.60756195 ;
	setAttr ".uvtk[520]" -type "float2" 0.048604958 0.60756207 ;
	setAttr ".uvtk[521]" -type "float2" 0.048604958 0.60756195 ;
	setAttr ".uvtk[522]" -type "float2" 0.048604958 0.60756195 ;
	setAttr ".uvtk[523]" -type "float2" 0.048604958 0.60756195 ;
	setAttr ".uvtk[524]" -type "float2" 0.048604958 0.60756195 ;
	setAttr ".uvtk[525]" -type "float2" 0.048604958 0.60756195 ;
	setAttr ".uvtk[526]" -type "float2" 0.048604958 0.60756195 ;
	setAttr ".uvtk[527]" -type "float2" 0.048604958 0.60756195 ;
	setAttr ".uvtk[528]" -type "float2" 0.048604958 0.60756207 ;
	setAttr ".uvtk[529]" -type "float2" 0.048604958 0.60756207 ;
	setAttr ".uvtk[530]" -type "float2" 0.048604958 0.60756195 ;
	setAttr ".uvtk[531]" -type "float2" 0.048604958 0.60756207 ;
	setAttr ".uvtk[532]" -type "float2" 0.048604958 0.60756207 ;
	setAttr ".uvtk[533]" -type "float2" 0.048604958 0.60756195 ;
	setAttr ".uvtk[534]" -type "float2" 0.048604958 0.60756195 ;
	setAttr ".uvtk[535]" -type "float2" 0.048604958 0.60756207 ;
	setAttr ".uvtk[687]" -type "float2" 0.048604961 0.60756201 ;
	setAttr ".uvtk[688]" -type "float2" 0.048604947 0.60756207 ;
	setAttr ".uvtk[689]" -type "float2" 0.048604947 0.60756201 ;
	setAttr ".uvtk[690]" -type "float2" 0.048604947 0.60756207 ;
	setAttr ".uvtk[694]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[695]" -type "float2" 0.048604976 0.60756195 ;
	setAttr ".uvtk[696]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[697]" -type "float2" 0.048604976 0.60756207 ;
	setAttr ".uvtk[698]" -type "float2" 0.048604976 0.60756195 ;
	setAttr ".uvtk[703]" -type "float2" 0.048604958 0.60756201 ;
	setAttr ".uvtk[704]" -type "float2" 0.048604958 0.60756195 ;
	setAttr ".uvtk[705]" -type "float2" 0.048604958 0.60756207 ;
	setAttr ".uvtk[706]" -type "float2" 0.048604958 0.60756207 ;
	setAttr ".uvtk[707]" -type "float2" 0.048604947 0.60756201 ;
	setAttr ".uvtk[709]" -type "float2" 0.048604958 0.60756195 ;
	setAttr ".uvtk[710]" -type "float2" 0.048604947 0.60756201 ;
	setAttr ".uvtk[711]" -type "float2" 0.048604961 0.60756201 ;
	setAttr ".uvtk[712]" -type "float2" 0.048604961 0.60756201 ;
	setAttr ".uvtk[713]" -type "float2" 0.048604961 0.60756195 ;
	setAttr ".uvtk[714]" -type "float2" 0.048604961 0.60756201 ;
	setAttr ".uvtk[716]" -type "float2" 0.048604976 0.60756207 ;
	setAttr ".uvtk[717]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[718]" -type "float2" 0.048604917 0.60756207 ;
	setAttr ".uvtk[719]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[720]" -type "float2" 0.048604976 0.60756195 ;
	setAttr ".uvtk[722]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[723]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[724]" -type "float2" 0.048604976 0.60756195 ;
	setAttr ".uvtk[725]" -type "float2" 0.048604976 0.60756207 ;
	setAttr ".uvtk[726]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[727]" -type "float2" 0.048604976 0.60756201 ;
createNode polyMapCut -n "polyMapCut14";
	rename -uid "A3E1EDCF-4FE3-CB6B-D8DA-AAB73D063589";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[227]" "e[229]" "e[231]" "e[236:237]" "e[318]" "e[977]" "e[979]" "e[981]" "e[985]" "e[987]" "e[989]";
createNode Unfold3DUnfold -n "Unfold3DUnfold15";
	rename -uid "52540D70-4749-C8E2-5E8F-308D0132D525";
	setAttr ".uvl" -type "Int32Array" 202 68 71 72 73 74 76
		 78 80 81 82 83 84 85 86 87 88 89 90
		 91 92 93 94 95 96 97 98 99 100 101 102
		 103 104 105 106 107 108 109 110 111 112 113 114
		 115 116 117 118 119 120 121 122 123 124 125 126
		 127 128 129 130 131 132 133 134 135 136 137 138
		 139 140 141 142 143 144 145 146 147 148 149 150
		 151 452 455 456 457 458 459 461 463 464 465 466
		 467 468 469 470 471 472 473 474 475 476 477 478
		 479 480 481 482 483 484 485 486 487 488 489 490
		 491 492 493 494 495 496 497 498 499 500 501 502
		 503 504 505 506 507 508 509 510 511 512 513 514
		 515 516 517 518 519 520 521 522 523 524 525 526
		 527 528 529 530 531 532 533 534 535 687 688 689
		 690 694 695 696 697 698 703 704 705 706 707 709
		 710 711 712 713 714 716 717 718 719 720 722 723
		 724 725 726 727 728 729 730 731 732 733 734 735
		 736 737 738 739 ;
	setAttr ".mdp" -type "string" "|pCylinder27|pCylinder27Shape";
	setAttr ".usn" -type "string" "map1";
	setAttr ".miee" yes;
	setAttr ".mue" -type "floatArray" 740 0.35975552 0.35978723 0.35984313 0.35990718
		 0.35994321 0.35992649 0.35985145 0.35976234 0.35361582 0.35812142 0.36224964 0.36820915
		 0.36987817 0.36455768 0.3556186 0.35254666 0.35847634 0.36005771 0.36190242 0.36299998
		 0.36237714 0.36043963 0.35859388 0.35781977 0.35957351 0.35973006 0.35996267 0.36019522
		 0.36028683 0.36015111 0.35980657 0.35954991 0.35918087 0.35901308 0.35951599 0.36046335
		 0.36105415 0.36102489 0.36047727 0.35967568 0.35861936 0.35084015 0.34655011 0.35148159
		 0.34291285 0.34230787 0.53364378 0.46014947 0.37341952 0.39711389 0.32940838 0.34086573
		 0.55611539 0.56926459 0.41581184 0.42301315 0.3446095 0.3463054 0.34178942 0.35198924
		 0.35108998 0.34760779 0.34666893 0.35867712 0.37001333 0.34302777 0.38127354 0.38086134
		 0.68311489 0.63793308 0.6297971 0.6473524 0.72470939 0.76131278 0.80138117 0.56375897
		 0.61533344 0.31850383 0.63383204 0.52800536 0.66089529 0.68869483 0.87438083 0.90017909
		 0.87882501 0.84631622 0.93106413 0.91720212 0.83170468 0.97032887 0.82228297 0.77737486
		 0.83804363 0.79193449 0.85153311 0.81582141 0.92750907 0.94218165 0.92604494 0.90726721
		 0.96062768 0.94992644 0.88749284 0.9744463 0.89186823 0.85537958 0.90022504 0.86814493
		 0.91371876 0.88767767 0.79918766 0.83028334 0.79750323 0.76454508 0.86861873 0.83845526
		 0.69939804 0.8766948 0.71396881 0.67704326 0.72881168 0.69664758 0.7590434 0.72658831
		 0.82009453 0.78224748 0.75449342 0.74351323 0.94041342 0.89092684 0.85340941 0.96143454
		 0.95022333 0.95419073 0.96515906 0.97557509 0.97938496 0.99291593 0.99902344 0.9264487
		 0.9358443 0.93130457 0.93879741 0.93987215 0.94484061 0.9614951 0.95001048 0.93742639
		 0.93200821 0.9375475 0.94050974 0.9673928 0.29182553 0.40244585 0.31218934 0.36117125
		 0.36811846 0.35546923 0.34092355 0.34014526 0.3398115 0.34003648 0.34080833 0.34790006
		 0.4093594 0.4543567 0.4846496 0.48655531 0.33447525 0.34518433 0.34691218 0.35192627
		 0.36073145 0.37808838 0.40664408 0.45827848 0.34163538 0.34178403 0.34186038 0.34169388
		 0.34153968 0.34156641 0.34166408 0.34161377 0.34171379 0.34155646 0.34187576 0.34217215
		 0.34224698 0.34230375 0.34201503 0.34176219 0.3420772 0.34189489 0.34216335 0.34241509
		 0.34253573 0.34293222 0.34246594 0.34285033 0.34242976 0.34281155 0.34224361 0.34289262
		 0.34371501 0.34366721 0.34329879 0.34372768 0.34451464 0.34507281 0.3444629 0.3440254
		 0.34108219 0.34115705 0.34096649 0.34107301 0.34115791 0.34128138 0.341344 0.54808348
		 0.34146357 0.34150922 0.34158462 0.34164384 0.34172818 0.34170118 0.34164104 0.34131432
		 0.34153119 0.34163722 0.34175599 0.34177467 0.34173989 0.34148133 0.34154162 0.34189406
		 0.34199008 0.34204444 0.34183276 0.34160939 0.3412371 0.34419456 0.3466318 0.35057166
		 0.35722244 0.3664434 0.38040107 0.39302221 0.46119136 0.49228239 0.47160614 0.42934528
		 0.38517967 0.36181951 0.35329917 0.34603664 0.34409493 0.34327289 0.34246993 0.34167263
		 0.3415511 0.34149048 0.3415325 0.34143957 0.34145683 0.34142557 0.34145358 0.34148127
		 0.34154212 0.34165487 0.34171191 0.34173754 0.34186435 0.34202686 0.34228298 0.34261855
		 0.34277475 0.34348759 0.35973892 0.35947886 0.3588815 0.35784015 0.35292974 0.35098967
		 0.34714806 0.3455967 0.34347305 0.34288707 0.34249541 0.34225792 0.34203941 0.34187561
		 0.3417376 0.34166285 0.34158558 0.3414982 0.3413842 0.35979396 0.35960376 0.35904822
		 0.35796779 0.35389185 0.35153586 0.34738263 0.34554309 0.34389794 0.34317213 0.34259728
		 0.34223294 0.34197667 0.34183976 0.34174302 0.34168297 0.34162733 0.3415449 0.55514556
		 0.341149 0.34211513 0.34301218 0.34356838 0.34417513 0.34420997 0.34428915 0.34375939
		 0.34325802 0.3423391 0.34169003 0.35979101 0.35980234 0.35982433 0.35985482 0.35987943
		 0.35987926 0.35985494 0.35983032 0.35980642 0.35979313 0.35981292 0.3598139 0.35982114
		 0.35983422 0.3598474 0.35985133 0.35984638 0.35983604 0.35982424 0.35981709 0.35982195
		 0.35982141 0.35982338 0.35982826 0.35983449 0.35983747 0.35983655 0.35983291 0.35982671
		 0.35982373 0.35982856 0.34177363 0.34185135 0.3417379 0.34168956 0.34183937 0.34167445
		 0.32144725 0.32370698 0.32865694 0.32338375 0.31973431 0.31886229 0.31921273 0.31180766
		 0.3204343 0.31162661 0.32258707 0.31831518 0.32428387 0.32772911 0.32473993 0.32919678
		 0.32427993 0.32963577 0.3302868 0.32459918 0.32263333 0.32243225 0.3222729 0.3229121
		 0.32215354 0.32151708 0.32195628 0.3211247 0.32194239 0.32131255 0.32215714 0.3220621
		 0.3225368 0.3230134 0.32272798 0.32341248 0.32273015 0.32275763 0.32328802 0.32330665
		 0.3224746 0.32242835 0.32236055 0.32229754 0.3222757 0.32231241 0.3224045 0.32246506
		 0.32248613 0.32250053 0.32270887 0.33086482 0.33546343 0.33025554 0.32280803 0.33182225
		 0.33714855 0.33291593 0.16704144 0.25437841 0.29125825 0.23639528 0.10271285 0.18375665
		 0.25940716 0.19602746 0.1123799 0.19418967 0.33756724 0.33614564 0.33660713 0.33851811
		 0.33139256 0.33558285 0.33161801 0.33157635 0.33552799 0.33517292 0.28594965 0.31368124
		 0.3239786 0.31119779 0.25675932 0.30153039 0.32344741 0.30092955 0.2633982 0.29753435
		 0.31390688 0.12765479 0.11365333 0.3732408 0.34999001 0.27292001 0.23609397 0.19601043
		 0.25736994 0.38570106 0.42139611 0.36616433 0.33801514 0.30925706 0.12495952 0.098854944
		 0.11981311 0.15261756 0.067795031 0.081310458 0.17104274 0.028111933 0.17929929 0.22398111
		 0.16240971 0.20833027 0.14799097 0.18348995 0.07242243 0.057525668 0.073180623 0.092297889
		 0.038910851 0.049069855 0.11467728 0.024369223 0.1096174 0.14616071 0.10060362 0.13248198
		 0.086489655 0.1123129 0.19921446 0.16784951 0.20033659 0.23353726 0.12940823 0.15932085
		 0.30259967 0.12105332 0.28689209 0.32348263 0.27097324 0.30275962 0.23983373 0.27190918
		 0.1785491 0.216833 0.24550888 0.25752631 0.057834588 0.10730455 0.14493172 0.038679577
		 0.050068874 0.046168521 0.035000265 0.024424342 0.020667305 0.0070325835 0.071864888
		 0.074950732 0.065443955 0.062370509 0.06978301 0.060708787 0.055869404 0.040460411
		 0.033812027 0.064604633 0.069759406 0.063775271 0.060655668 0.034231514 0.4314366
		 0.32450712 0.23322314 0.28538367 0.28076926 0.31113949 0.32286194 0.32755908 0.33395454
		 0.33693632 0.3384082 0.33994967 0.33958364 0.33780646 0.3332735 0.32090864 0.29706642
		 0.26958618 0.34116438 0.34123537 0.34124455 0.34122449 0.34111726 0.34119332 0.34126168
		 0.3411682 0.34094787 0.34107387 0.34115216 0.34105918 0.34084988 0.3410162 0.3410674
		 0.34094119 0.34118712 0.34124663 0.34128487 0.34120765 0.34108803 0.34104016 0.34112483
		 0.34114072 0.34116611 0.34119263 0.34099743 0.34092465 0.34065008 0.34076801 0.34078336
		 0.34095794 0.34003696 0.34041363 0.34031537 0.33991808 0.33959758 0.34007603 0.34022966
		 0.3398374 0.33990559 0.34039783 0.34068516 0.34038106 0.34086791 0.34064141 0.33992437
		 0.33939877 0.33895749 0.33891019 0.33901614 0.33942333 0.33998829 0.33870938 0.33939645
		 0.33897406 0.33819211 0.3370795 0.33847168 0.33861005 0.33773404 0.33744135 0.33875123
		 0.33941609 0.33858654 0.34009904 0.33936512 0.34081456 0.34101036 0.34070602 0.34037521
		 0.34050098 0.34070206 0.34055179 0.33954698 0.34010941 0.34049439 0.34034795 0.34067106
		 0.34081617 0.34104726 0.34112042 0.34121323 0.34127656 0.52168906 0.52808565 0.34138396
		 0.34130287 0.34131381 0.34127772 0.34132966 0.34129724 0.3412239 0.34076118 0.34105775
		 0.34060183 0.34119549 0.34125814 0.34112945 0.34133011 0.34132752 0.3413451 0.32244051
		 0.32242286 0.322395 0.32236081 0.32234097 0.32234946 0.32238218 0.32241043 0.32243347
		 0.32244286 0.32241836 0.3224147 0.32240459 0.32238948 0.32237706 0.32237613 0.32238483
		 0.3223969 0.32241011 0.32241571 0.32240862 0.32240817 0.32240504 0.32239911 0.32239273
		 0.32239065 0.32239342 0.32239762 0.32240468 0.32240719 0.3224009 0.18553117 0.40893799
		 0.22462209 0.27454948 0.0009765625 0.048467916 0.0081472257 0.59045762 0.62508678
		 0.58139479 0.77241576 0.72233593 0.67907757 0.68513483 0.27604434 0.44659907 0.1450351
		 0.017243797 0.080947816 0.01914675 0.41936001 0.26495761 0.0009765625 0.34129962
		 0.16129044 0.27051306 0.085076198 0.22381964 0.30779916 0.98150235 0.77895099 0.98031616
		 0.85735023 0.81144297 0.47159475 0.9299643 0.92094803 0.83596969 0.91302699 0.6602456
		 0.73181617 0.054239217 0.044820201 0.047142662 0.019686334 0.0010386981 0.052119348
		 0.95443815 0.94648343 0.95555925 0.98037803 0.99897861 0.96635753 ;
	setAttr ".mve" -type "floatArray" 740 0.3552382 0.35528913 0.35533026 0.35532787
		 0.35528463 0.35522011 0.3551597 0.35517418 0.35678202 0.36183763 0.36320537 0.36037669
		 0.35308695 0.34705031 0.34753776 0.35203522 0.35611212 0.35746795 0.3573764 0.35580221
		 0.3538681 0.35288334 0.35302708 0.35429505 0.35528135 0.35548666 0.35559401 0.35553345
		 0.35532299 0.35505882 0.35488427 0.35503358 0.35550699 0.35478199 0.35422933 0.35444376
		 0.35508466 0.35580957 0.35623524 0.35616201 0.36595815 0.36962381 0.36117348 0.3595387
		 0.32440677 0.33692059 0.4131293 0.4464843 0.39165336 0.38068774 0.16064204 0.27153111
		 0.27404785 0.35269585 0.35962316 0.31668961 0.35724825 0.35567522 0.34373412 0.34398127
		 0.35168085 0.35118124 0.3461515 0.3789731 0.37158629 0.30623907 0.36047491 0.33640695
		 0.82709253 0.54403687 0.17827697 0.79745454 0.79071575 0.82046592 0.83978909 0.60707039
		 0.58059686 0.0012844749 0.63136077 0.068645552 0.69243538 0.75894642 0.65346128 0.67593831
		 0.70785213 0.68102002 0.68995625 0.7274881 0.50086695 0.76130074 0.5380134 0.55017018
		 0.58299857 0.59773642 0.62763011 0.64811629 0.60936862 0.62347811 0.64902592 0.62994963
		 0.63465881 0.66559136 0.51154035 0.67652619 0.53340024 0.53678608 0.56094503 0.57256091
		 0.5923509 0.60999137 0.72628421 0.75549334 0.78366029 0.75485337 0.77803141 0.80563617
		 0.53346258 0.84297949 0.58090866 0.60126835 0.63286459 0.65966624 0.68774956 0.71912944
		 0.70543665 0.66941875 0.61565453 0.56882566 0.79654777 0.75637513 0.7364288 0.59577996
		 0.58502674 0.57906163 0.58998591 0.60296559 0.59674597 0.60707664 0.60095817 0.52848256
		 0.53039652 0.54724371 0.54357636 0.57080221 0.56457907 0.49540287 0.48756248 0.49488509
		 0.5127995 0.52996486 0.54346865 0.51067877 0.0012892841 0.60448182 0.084647804 0.33849895
		 0.56081504 0.485282 0.41747454 0.39165467 0.37798411 0.36900818 0.35976085 0.44916654
		 0.41632587 0.39485037 0.35745353 0.29101405 0.21889706 0.34394702 0.34005702 0.32984385
		 0.31599143 0.28814691 0.24308884 0.19475265 0.35073456 0.35048878 0.35068589 0.35080171
		 0.3512859 0.35100541 0.3510091 0.35127363 0.35154054 0.35161003 0.3510915 0.35002065
		 0.35040393 0.3512007 0.35188159 0.35215369 0.3532792 0.35265318 0.35217658 0.3526648
		 0.35135987 0.35141307 0.35016611 0.34998438 0.34971079 0.34929904 0.35399735 0.3532851
		 0.35129163 0.34930173 0.34837237 0.35553393 0.35392478 0.3508563 0.34780997 0.34619206
		 0.35654974 0.3541601 0.35365093 0.35301435 0.35250744 0.35177121 0.35139754 0.72260898
		 0.35068473 0.35041225 0.34996286 0.34960961 0.34910619 0.34750381 0.34604022 0.35157472
		 0.3514432 0.35142112 0.35105169 0.35077268 0.35058334 0.35057873 0.35021919 0.35034904
		 0.35058776 0.35113353 0.35169998 0.35181201 0.35203519 0.33992699 0.32934293 0.31390911
		 0.28470677 0.23949955 0.19153757 0.090827204 0.61984104 0.59347612 0.53687906 0.48274335
		 0.44423065 0.40679622 0.38892442 0.37688097 0.36559585 0.35943669 0.35704592 0.35432971
		 0.35385144 0.35303584 0.35246941 0.35203022 0.35175607 0.35156214 0.3513433 0.35099694
		 0.35070089 0.35053933 0.35042414 0.35030785 0.34993368 0.34956211 0.3490445 0.34778205
		 0.34589219 0.34428796 0.35520661 0.35517335 0.35522297 0.35521424 0.3545242 0.35446131
		 0.35382622 0.35302886 0.35256967 0.35227919 0.35194775 0.35171896 0.35150966 0.35137188
		 0.35126194 0.35116872 0.3511596 0.35115755 0.35115787 0.35514739 0.35488623 0.35435486
		 0.35344237 0.34975675 0.34867346 0.34829977 0.34894094 0.35021877 0.35050952 0.35066617
		 0.35077733 0.35084978 0.35089242 0.3509132 0.35089627 0.35087502 0.3508583 0.68312055
		 0.35470289 0.35487694 0.35408732 0.35314012 0.35221198 0.35076863 0.34953839 0.34854805
		 0.34755799 0.34712505 0.34706119 0.35523218 0.35525545 0.35527694 0.35528639 0.35527331
		 0.35524783 0.35521919 0.35520595 0.35520634 0.35521838 0.35523373 0.35524267 0.35525236
		 0.35525948 0.35525754 0.35524872 0.35523695 0.35523069 0.35522524 0.35522938 0.35523623
		 0.35523936 0.35524321 0.35524684 0.35524774 0.35524514 0.35523957 0.35523728 0.35523421
		 0.35523549 0.35524017 0.35035574 0.35039148 0.35056105 0.35052228 0.35051265 0.35043666
		 0.35582432 0.36066166 0.35611504 0.35506001 0.3551338 0.3617591 0.35328782 0.35766435
		 0.35166559 0.34835383 0.35136858 0.34364206 0.35210809 0.34619823 0.35270488 0.34880725
		 0.35442013 0.35395417 0.35156244 0.35355932 0.35378677 0.35392246 0.35444072 0.35410318
		 0.35394761 0.35436758 0.35382396 0.35385171 0.35360819 0.35318682 0.35341293 0.35277951
		 0.35336268 0.3528769 0.35342282 0.35312489 0.35357946 0.35371614 0.35393262 0.35354036
		 0.35369429 0.3537302 0.35374573 0.35372782 0.35367945 0.35362652 0.35359463 0.35360014
		 0.35363579 0.35366985 0.36469102 0.3695026 0.36111295 0.3586264 0.33647987 0.34309793
		 0.33974132 0.32906663 0.42405444 0.45087814 0.42205369 0.40520179 0.27383673 0.28774518
		 0.24072045 0.18629476 0.36558938 0.36540824 0.35730308 0.3555311 0.34596971 0.34396368
		 0.3480469 0.34804243 0.35125211 0.35399446 0.35359815 0.3508738 0.38305825 0.39377427
		 0.37925419 0.3710812 0.31026134 0.33226672 0.31446692 0.28588915 0.359092 0.35747176
		 0.91953522 0.54304057 0.027143059 0.82091212 0.89065045 0.88253951 0.91169375 0.93050081
		 0.60385793 0.67511636 0.62624413 0.72538757 0.78570491 0.85146755 0.74308556 0.76529545
		 0.79751629 0.77106225 0.77911186 0.81688225 0.59121233 0.85079038 0.62851381 0.64163607
		 0.67311734 0.68874288 0.71752721 0.73857552 0.69831371 0.71234357 0.73817706 0.7192322
		 0.72342348 0.75464821 0.60075605 0.76554281 0.6225037 0.62661719 0.64999336 0.66218185
		 0.68138057 0.6994518 0.8170284 0.84580863 0.87440711 0.84610409 0.86794841 0.89590126
		 0.62654454 0.93305582 0.67355776 0.69455147 0.72502029 0.75235128 0.77917784 0.81107217
		 0.79586363 0.76045275 0.70736772 0.6609422 0.8862415 0.84605336 0.82643509 0.68435907
		 0.6736182 0.66760558 0.6785351 0.69148356 0.68523461 0.69545448 0.60139799 0.61689842
		 0.61870533 0.63202786 0.63571095 0.65938377 0.6530835 0.58335888 0.67674309 0.58315098
		 0.60104907 0.61828083 0.63191289 0.59862095 0.62518066 0.59202397 0.077600263 0.5422101
		 0.47770643 0.44501838 0.40658122 0.38783887 0.37655488 0.36535788 0.35929424 0.34428546
		 0.33984372 0.32912838 0.31347397 0.28414983 0.23934868 0.19054638 0.35039964 0.35049886
		 0.35047841 0.35039511 0.35107732 0.35109386 0.35095438 0.35092601 0.35141218 0.35152921
		 0.35137969 0.35132426 0.35120001 0.3511411 0.35093635 0.35093498 0.35081318 0.35081127
		 0.35067585 0.35072026 0.35055658 0.35075852 0.35080969 0.35066652 0.35022712 0.35028118
		 0.35042155 0.35067365 0.35127684 0.35091969 0.35152414 0.35170287 0.35293749 0.35240495
		 0.35186693 0.35224652 0.3517282 0.35154244 0.35097355 0.35089466 0.34996232 0.35029781
		 0.34986782 0.34957075 0.34944916 0.34893563 0.35385662 0.35306498 0.35221395 0.35095304
		 0.34979671 0.34892631 0.34806079 0.35536075 0.35388058 0.3529546 0.35384405 0.35274193
		 0.35194084 0.35052922 0.35070795 0.3485935 0.34925529 0.34835026 0.34765816 0.34739468
		 0.34597325 0.35016403 0.34982604 0.35052162 0.3514035 0.35089868 0.35197604 0.35163641
		 0.3569012 0.35473478 0.35422692 0.35365009 0.35289857 0.35234934 0.3519645 0.35169968
		 0.35152656 0.35112038 0.71789044 0.6797086 0.35067442 0.35045752 0.35035747 0.35027272
		 0.34984416 0.34943992 0.34886715 0.34760898 0.34709969 0.34582081 0.35122827 0.35131055
		 0.35119244 0.35048491 0.35023919 0.35038143 0.35367653 0.35369432 0.35370672 0.3537057
		 0.35368642 0.3536633 0.35364461 0.35363996 0.35364783 0.35366341 0.35367116 0.35367909
		 0.35368565 0.35368782 0.35368201 0.35367283 0.35366347 0.35366094 0.35365963 0.35366589
		 0.35367066 0.35367367 0.35367653 0.35367826 0.35367715 0.35367385 0.35366908 0.35366812
		 0.35366726 0.35366935 0.35367206 0.99302906 0.7574861 0.96134835 0.95087403 0.35833344
		 0.46221206 0.18985465 0.66265196 0.72703087 0.59404093 0.87029701 0.85913187 0.4313513
		 0.33328003 0.002259159 0.62274635 0.60002065 0.79855883 0.59978342 0.72927034 0.68922269
		 0.003531334 0.6892876 0.64879245 0.9650169 0.61132908 0.90706879 0.59303671 0.0009765625
		 0.70933348 0.50146687 0.64066631 0.51023781 0.90235293 0.61720693 0.51315713 0.51116508
		 0.87456536 0.81725115 0.55505413 0.51881737 0.65225381 0.66611594 0.61863583 0.68345064
		 0.6873374 0.57566738 0.53037727 0.56376863 0.57759035 0.59496909 0.59900761 0.58820081 ;
createNode polyTweakUV -n "polyTweakUV16";
	rename -uid "74890C29-43BA-1428-8F11-A29627033412";
	setAttr ".uopa" yes;
	setAttr -s 202 ".uvtk";
	setAttr ".uvtk[68]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[71]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[72]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[73]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[74]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[76]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[78]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[80]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[81]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[82]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[83]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[84]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[85]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[86]" -type "float2" -0.64701176 0.68865544 ;
	setAttr ".uvtk[87]" -type "float2" -0.64701182 0.68865532 ;
	setAttr ".uvtk[88]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[89]" -type "float2" -0.64701182 0.68865532 ;
	setAttr ".uvtk[90]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[91]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[92]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[93]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[94]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[95]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[96]" -type "float2" -0.64701182 0.68865544 ;
	setAttr ".uvtk[97]" -type "float2" -0.64701182 0.68865544 ;
	setAttr ".uvtk[98]" -type "float2" -0.64701182 0.68865544 ;
	setAttr ".uvtk[99]" -type "float2" -0.64701182 0.68865544 ;
	setAttr ".uvtk[100]" -type "float2" -0.64701176 0.68865544 ;
	setAttr ".uvtk[101]" -type "float2" -0.64701182 0.68865544 ;
	setAttr ".uvtk[102]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[103]" -type "float2" -0.64701176 0.68865544 ;
	setAttr ".uvtk[104]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[105]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[106]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[107]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[108]" -type "float2" -0.64701182 0.68865544 ;
	setAttr ".uvtk[109]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[110]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[111]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[112]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[113]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[114]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[115]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[116]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[117]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[118]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[119]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[120]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[121]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[122]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[123]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[124]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[125]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[126]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[127]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[128]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[129]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[130]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[131]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[132]" -type "float2" -0.64701182 0.68865544 ;
	setAttr ".uvtk[133]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[134]" -type "float2" -0.64701176 0.68865544 ;
	setAttr ".uvtk[135]" -type "float2" -0.64701194 0.68865544 ;
	setAttr ".uvtk[136]" -type "float2" -0.64701182 0.68865544 ;
	setAttr ".uvtk[137]" -type "float2" -0.64701182 0.68865544 ;
	setAttr ".uvtk[138]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[139]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[140]" -type "float2" -0.64701194 0.68865544 ;
	setAttr ".uvtk[141]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[142]" -type "float2" -0.64701182 0.68865532 ;
	setAttr ".uvtk[143]" -type "float2" -0.64701182 0.68865544 ;
	setAttr ".uvtk[144]" -type "float2" -0.64701182 0.68865532 ;
	setAttr ".uvtk[145]" -type "float2" -0.64701176 0.68865544 ;
	setAttr ".uvtk[146]" -type "float2" -0.64701194 0.68865532 ;
	setAttr ".uvtk[147]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[148]" -type "float2" -0.64701176 0.68865532 ;
	setAttr ".uvtk[149]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[150]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[151]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[452]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[455]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[456]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[457]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[458]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[459]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[461]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[463]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[464]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[465]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[466]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[467]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[468]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[469]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[470]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[471]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[472]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[473]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[474]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[475]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[476]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[477]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[478]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[479]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[480]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[481]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[482]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[483]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[484]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[485]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[486]" -type "float2" -0.64701182 0.68865544 ;
	setAttr ".uvtk[487]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[488]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[489]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[490]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[491]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[492]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[493]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[494]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[495]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[496]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[497]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[498]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[499]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[500]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[501]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[502]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[503]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[504]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[505]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[506]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[507]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[508]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[509]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[510]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[511]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[512]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[513]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[514]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[515]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[516]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[517]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[518]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[519]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[520]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[521]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[522]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[523]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[524]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[525]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[526]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[527]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[528]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[529]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[530]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[531]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[532]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[533]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[534]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[535]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[687]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[688]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[689]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[690]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[694]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[695]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[696]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[697]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[698]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[703]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[704]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[705]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[706]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[707]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[709]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[710]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[711]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[712]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[713]" -type "float2" -0.64701182 0.68865544 ;
	setAttr ".uvtk[714]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[716]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[717]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[718]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[719]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[720]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[722]" -type "float2" -0.64701194 0.68865544 ;
	setAttr ".uvtk[723]" -type "float2" -0.64701194 0.68865532 ;
	setAttr ".uvtk[724]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[725]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[726]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[727]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[728]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[729]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[730]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[731]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[732]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[733]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[734]" -type "float2" -0.64701194 0.68865544 ;
	setAttr ".uvtk[735]" -type "float2" -0.64701182 0.68865544 ;
	setAttr ".uvtk[736]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[737]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[738]" -type "float2" -0.64701182 0.68865544 ;
	setAttr ".uvtk[739]" -type "float2" -0.64701182 0.68865532 ;
createNode polyMapCut -n "polyMapCut15";
	rename -uid "04B06602-4669-ACB4-3E6D-54A296115A5B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "e[8:15]" "e[534]" "e[571]" "e[712]" "e[716]" "e[719]" "e[722]" "e[725]" "e[728]" "e[731]" "e[734]" "e[1265]" "e[1284]";
createNode polyMapCut -n "polyMapCut16";
	rename -uid "1973695F-4688-C8A6-1C84-0692A6BDC150";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 16 "e[19]" "e[35]" "e[53]" "e[67]" "e[632]" "e[652]" "e[672]" "e[690]" "e[718]" "e[745]" "e[769]" "e[787]" "e[1315]" "e[1335]" "e[1355]" "e[1372]";
createNode Unfold3DUnfold -n "Unfold3DUnfold16";
	rename -uid "4BD54765-4BF9-0B8B-C156-CE933CE27D18";
	setAttr ".uvl" -type "Int32Array" 396 8 9 10 11 12 13
		 14 15 40 41 42 43 44 45 46 47 48 49
		 50 51 52 53 54 55 56 57 58 59 60 61
		 62 63 64 65 66 67 69 70 75 77 79 152
		 153 154 155 156 157 158 159 160 161 162 163 164
		 165 166 167 168 169 170 171 172 173 174 175 176
		 177 178 179 180 181 182 183 184 185 186 187 188
		 189 190 191 192 193 194 195 196 197 198 199 200
		 201 202 203 204 205 206 207 208 209 210 211 212
		 213 214 215 216 217 218 219 220 221 222 223 224
		 225 226 227 228 229 230 231 232 233 234 235 236
		 237 238 239 240 241 242 243 244 245 246 247 248
		 249 250 251 252 253 254 255 256 257 258 259 260
		 261 262 263 264 265 266 267 268 269 270 271 272
		 273 274 275 276 277 282 283 284 285 286 287 288
		 289 290 291 292 293 294 295 296 301 302 303 304
		 305 306 307 308 309 310 311 312 313 314 315 316
		 317 318 319 320 321 322 323 324 325 326 358 359
		 360 361 362 363 365 369 371 373 375 377 379 381
		 414 415 416 417 418 419 420 421 422 423 424 425
		 426 427 428 429 430 431 432 433 434 435 436 437
		 438 439 440 441 442 443 444 445 446 447 448 449
		 450 451 453 454 460 462 536 537 538 539 540 541
		 542 543 544 545 546 547 548 549 550 551 552 553
		 554 555 556 557 558 559 560 561 562 563 564 565
		 566 567 568 569 570 571 572 573 574 575 576 577
		 578 579 580 581 582 583 584 585 586 587 588 589
		 590 591 592 593 594 595 596 597 598 599 600 601
		 602 603 604 605 606 607 608 609 610 611 612 613
		 614 615 616 617 618 619 620 621 622 623 624 625
		 626 627 628 629 630 631 632 633 634 635 636 637
		 638 639 640 641 642 643 644 645 646 647 648 649
		 650 651 652 653 654 655 691 692 693 699 700 701
		 702 708 715 721 741 743 ;
	setAttr ".mdp" -type "string" "|pCylinder27|pCylinder27Shape";
	setAttr ".usn" -type "string" "map1";
	setAttr ".miee" yes;
	setAttr ".mue" -type "floatArray" 776 0.52060121 0.52086127 0.52086717 0.52041352
		 0.5197686 0.51928109 0.51922482 0.51995987 0.31394616 0.33106872 0.33914652 0.35833988
		 0.36370289 0.35516638 0.33860135 0.32087886 0.53734702 0.5393036 0.52602446 0.50398922
		 0.49019662 0.49409053 0.50786203 0.52487022 0.52222872 0.52308357 0.52251488 0.52038503
		 0.51781034 0.51626778 0.51696545 0.52008325 0.52697247 0.52135986 0.51283169 0.50844371
		 0.51042438 0.51736373 0.52501196 0.52973121 0.32620877 0.29298541 0.27892169 0.30291557
		 0.27363765 0.26951304 0.45026177 0.37531927 0.3288762 0.37437788 0.25411004 0.26540008
		 0.44646913 0.48294804 0.39587697 0.38399273 0.26923829 0.27795085 0.26338473 0.31963661
		 0.3125495 0.28757611 0.28716072 0.31024441 0.34902498 0.27130786 0.37764725 0.37102935
		 0.63579798 0.42943317 0.48346445 0.60154396 0.67563796 0.71069735 0.74907559 0.36145404
		 0.5708757 0.2725293 0.58859396 0.31408149 0.61451566 0.64114255 0.81899607 0.84370613
		 0.8232528 0.79211527 0.87328851 0.86001116 0.7781201 0.91089696 0.76909584 0.72608203
		 0.78419167 0.74002749 0.79711211 0.76290679 0.86988336 0.88393706 0.86848098 0.85049534
		 0.90160507 0.89135516 0.83155507 0.91484076 0.83574587 0.80079639 0.84375018 0.81302327
		 0.85667479 0.83173209 0.74697465 0.77675867 0.74536127 0.71379334 0.81347698 0.78458589
		 0.65139437 0.82121241 0.6653505 0.62998253 0.67956728 0.6487599 0.70852375 0.67743766
		 0.76699966 0.73074907 0.7041657 0.6936487 0.88224328 0.83484411 0.79890925 0.90237778
		 0.89163953 0.89543951 0.9059453 0.91592181 0.9195711 0.9325313 0.93838114 0.8688677
		 0.87786692 0.87351876 0.88069558 0.88172495 0.88648385 0.9024359 0.89143556 0.87938237
		 0.87419283 0.87949836 0.8823356 0.90808475 0.25518912 0.30216816 0.2514815 0.3516272
		 0.2903133 0.28155795 0.26438251 0.25664547 0.25099432 0.25035223 0.25613213 0.27581152
		 0.35576582 0.41490963 0.43959898 0.41213104 0.25777245 0.28023058 0.29105219 0.3107256
		 0.32078928 0.32457978 0.33233821 0.34522754 0.26003683 0.26011249 0.26011768 0.26004955
		 0.2599473 0.25998545 0.26001796 0.25997356 0.25997955 0.25991935 0.2600807 0.26029196
		 0.26027709 0.2602134 0.26004574 0.25993243 0.25992227 0.25992545 0.26006511 0.26009959
		 0.26027489 0.26040265 0.2603755 0.26052353 0.26041093 0.26058212 0.26004422 0.26032746
		 0.26073611 0.26084253 0.26076829 0.26068541 0.26111409 0.26138541 0.26123336 0.26114213
		 0.25956997 0.25966579 0.25951114 0.25961122 0.25969195 0.25980979 0.25986969 0.056602195
		 0.25998411 0.26002789 0.26010022 0.26015717 0.26023844 0.26023996 0.26021138 0.25984129
		 0.25992814 0.25996614 0.26004452 0.2600798 0.26008779 0.26000112 0.26005894 0.26016408
		 0.26017153 0.26013315 0.26000312 0.25991625 0.2597675 0.27751437 0.29055381 0.29571164
		 0.29536888 0.29582575 0.30011982 0.28241023 0.33454549 0.3379797 0.35535234 0.3334761
		 0.31981397 0.30004051 0.28763297 0.27570152 0.26617217 0.26344901 0.2600624 0.25981507
		 0.25968641 0.25974962 0.25982231 0.25983635 0.25987056 0.25988013 0.25991231 0.25995761
		 0.2600089 0.26006374 0.26009494 0.26011568 0.26019749 0.26029107 0.26043147 0.26055846
		 0.26067677 0.27034399 0.52041924 0.52186185 0.52634776 0.53328204 0.31569332 0.30456179
		 0.28021246 0.26150566 0.26057053 0.26029772 0.26020041 0.26014429 0.26009244 0.26005158
		 0.26001647 0.26000097 0.25997588 0.25994664 0.25990814 0.51949763 0.51835006 0.51715052
		 0.51594251 0.32833046 0.321486 0.2888369 0.26158869 0.26087001 0.26057673 0.26036751
		 0.26023346 0.26013976 0.26008925 0.26005453 0.26003608 0.26001951 0.25999349 0.063366413
		 0.2596516 0.25999242 0.26039585 0.2606723 0.26093379 0.2610155 0.2611036 0.26095644
		 0.26081845 0.26049733 0.26023743 0.52030611 0.5204463 0.52049798 0.52038044 0.5200929
		 0.51985711 0.51975459 0.51979738 0.51996195 0.52016354 0.52017295 0.52024949 0.52029079
		 0.52026886 0.52016211 0.52005357 0.51997739 0.51998889 0.52001762 0.52010435 0.5201354
		 0.52016813 0.5201906 0.52019149 0.52015787 0.52011365 0.52006805 0.52007121 0.52008444
		 0.52011639 0.52012742 0.26012284 0.26014528 0.26008943 0.26007718 0.26012865 0.26008099
		 0.8718673 0.17957765 0.83363467 0.86932254 0.88664931 0.16841181 0.90614909 0.15708055
		 0.91499782 0.15891761 0.90710121 0.17215376 0.89194959 0.18735105 0.88422745 0.19510029
		 0.87076885 0.19559124 0.86733925 0.87708718 0.88469946 0.88444722 0.88048112 0.88042295
		 0.88559151 0.88488036 0.88769847 0.89154637 0.88974547 0.89671636 0.89047652 0.89675349
		 0.88906431 0.89116752 0.88756973 0.88692486 0.8861227 0.88473392 0.88013232 0.88363725
		 0.88633049 0.88622934 0.88642144 0.88689649 0.88744777 0.887752 0.88759011 0.88724077
		 0.88681 0.88642663 0.18029697 0.21325444 0.22728443 0.20319639 0.18628196 0.21320871
		 0.2445253 0.23348989 0.099391297 0.18479691 0.19369482 0.12640555 0.070824772 0.10840023
		 0.18413366 0.16388722 0.051316425 0.091330647 0.24385527 0.23556678 0.23860179 0.24702513
		 0.20379999 0.23423371 0.20492017 0.20723282 0.23617429 0.23202734 0.15119629 0.19999057
		 0.20414723 0.16506939 0.14310497 0.1604939 0.21931858 0.20571889 0.12784791 0.14160937
		 0.82537407 0.157133 0.18927777 0.88220519 0.85993516 0.78611606 0.75084341 0.71245062
		 0.24878164 0.89413983 0.30663925 0.87542719 0.84846538 0.82092035 0.64439672 0.61939329
		 0.63946736 0.67088813 0.58964348 0.60258883 0.68853605 0.55163431 0.69644433 0.73924142
		 0.68026721 0.72425079 0.66645664 0.70045823 0.59407568 0.57980734 0.5948019 0.61311281
		 0.56197768 0.5717082 0.63454819 0.54804945 0.62970173 0.66470361 0.62106818 0.65160185
		 0.60754955 0.63228357 0.71551949 0.68547755 0.71659428 0.74839455 0.6486578 0.67730862
		 0.81454378 0.64065534 0.79949874 0.83454585 0.78425139 0.81469697 0.75442535 0.78514785
		 0.69572586 0.73239487 0.75986117 0.77137166 0.58010322 0.62748647 0.66352648 0.56175619
		 0.57266504 0.5689292 0.55823201 0.5481022 0.54450369 0.53144407 0.59354168 0.59649736
		 0.58739156 0.5844478 0.59154761 0.58285612 0.5782209 0.56346184 0.55709392 0.58658767
		 0.59152502 0.58579332 0.58280522 0.55749571 0.31341052 0.26883337 0.22053123 0.2283804
		 0.22974525 0.23119158 0.22962099 0.22641894 0.22675179 0.23746026 0.24877967 0.25570318
		 0.25781673 0.25393289 0.24535599 0.2352687 0.22038849 0.20858197 0.25991297 0.25992656
		 0.25993177 0.25993371 0.25982645 0.25985041 0.25988799 0.25985938 0.25973442 0.25976488
		 0.25980684 0.25978115 0.25972337 0.25978568 0.25982428 0.25978181 0.25987753 0.2598978
		 0.2599248 0.25989413 0.2598708 0.2598336 0.25985685 0.25987715 0.2599315 0.25993481
		 0.25985432 0.25980344 0.25964785 0.25972489 0.25966722 0.25970769 0.25926831 0.25945085
		 0.25947317 0.25929889 0.2592442 0.25942588 0.25953707 0.25941226 0.25953326 0.25966468
		 0.25980681 0.2597352 0.25991255 0.25989023 0.25916734 0.25901124 0.2589097 0.25895032
		 0.25910085 0.25931102 0.25958571 0.25871402 0.25902134 0.25888589 0.25855821 0.25816005
		 0.25874078 0.25885275 0.25846112 0.2584739 0.25899497 0.25929236 0.258926 0.25962099
		 0.25937083 0.25981948 0.25992101 0.25974545 0.25954166 0.25963676 0.25959289 0.25957724
		 0.25893804 0.25924444 0.25938663 0.25930193 0.25948718 0.2595928 0.2597107 0.25976288
		 0.25981218 0.25987574 0.031321105 0.0374479 0.25995836 0.25995362 0.25996774 0.25996441
		 0.26002675 0.26005825 0.26009387 0.25989431 0.25999027 0.25983435 0.25983718 0.25984979
		 0.25981858 0.25995994 0.25998467 0.25997576 0.88666153 0.88658541 0.8866092 0.88678712
		 0.88706183 0.88723201 0.8872419 0.88714516 0.88695937 0.88677019 0.88681996 0.88676536
		 0.88675505 0.88680965 0.88692427 0.88701296 0.88705587 0.88701957 0.88696647 0.88688141
		 0.88687271 0.88684726 0.88683647 0.88684988 0.88689148 0.88693208 0.88696218 0.88695014
		 0.88692325 0.88689178 0.88689792 0.70241344 0.91639662 0.73985541 0.78767681 0.0009765625
		 0.048365116 0.022141458 0.54704916 0.5802176 0.53836864 0.72133195 0.67336458 0.51404399
		 0.53518587 0.24427037 0.32431966 0.66362542 0.5412246 0.60224146 0.54304725 0.92637902
		 0.23687968 0.52564347 0.85161132 0.67919517 0.78381062 0.60619581 0.73908675 0.26571846
		 0.92159909 0.72759163 0.92046291 0.80268389 0.75871295 0.34182277 0.87223494 0.863599
		 0.7822051 0.85601205 0.61389339 0.68244505 0.57665944 0.56763774 0.56986225 0.54356408
		 0.52570295 0.57462901 0.89567643 0.88805741 0.89675033 0.92052221 0.93833822 0.90709317
		 0.89798021 0.19643655 0.84862006 0.18919174 0.92914385 0.99902344 0.98881495 0.90254933
		 0.83020067 0.81636381 0.50912291 0.5393768 0.55994523 0.5763225 0.47685173 0.41209617
		 0.43239745 0.51144129 0.57789886 0.59298933 0.88684988 0.88680965 0.88678712 0.88689649
		 0.89154637 0.90614909 0.88769847 0.90254933 0.52019149 0.52026886 0.52038044 0.52041352
		 0.50398922 0.51144129 0.51736373 0.52038503 ;
	setAttr ".mve" -type "floatArray" 776 0.75033557 0.74969751 0.74890047 0.74832088
		 0.74827707 0.74886721 0.74997216 0.75070333 0.44902641 0.4710491 0.46759075 0.44024435
		 0.40786737 0.39499742 0.40061608 0.41996628 0.75634527 0.73250329 0.71596301 0.71636009
		 0.73518288 0.75983733 0.77603579 0.77469337 0.75173759 0.74889839 0.74601179 0.74425691
		 0.74482274 0.74786472 0.75224519 0.75362641 0.75386941 0.76031423 0.75935996 0.74910426
		 0.73929173 0.73468024 0.73690581 0.74485451 0.48794228 0.5080381 0.47196609 0.46388584
		 0.31475213 0.35127485 0.52157581 0.58819151 0.53520358 0.49202812 0.19755362 0.2773062
		 0.30074671 0.42530388 0.43258756 0.34988803 0.43983999 0.43913513 0.3894451 0.38267085
		 0.41736189 0.41358364 0.39287359 0.52511632 0.49458522 0.29725885 0.43338773 0.36588088
		 0.32618487 0.67121559 0.223464 0.29779696 0.29134247 0.31983781 0.33834586 0.76658452
		 0.090086654 0.0009765625 0.13870922 0.1257164 0.19720773 0.26091313 0.15987761 0.18140654
		 0.21197413 0.18627383 0.19483319 0.23078178 0.013719914 0.26316819 0.049299359 0.060943399
		 0.092387117 0.10650329 0.1351361 0.15475807 0.11764487 0.1311592 0.15562931 0.13735773
		 0.14186823 0.17149611 0.023943001 0.1819697 0.044880807 0.048123877 0.071263783 0.082389787
		 0.10134497 0.11824133 0.22962864 0.25760582 0.2845847 0.25699288 0.27919322 0.30563349
		 0.044940583 0.3414017 0.090385377 0.10988621 0.14014974 0.16582079 0.19271955 0.22277559
		 0.20966057 0.17516196 0.12366557 0.078812011 0.29692861 0.25845042 0.23934545 0.10462929
		 0.094329707 0.088616095 0.09907975 0.11151188 0.10555461 0.11544953 0.1095892 0.040170513
		 0.042003918 0.0581403 0.054627642 0.080705188 0.074744485 0.0084863566 0.0009765625
		 0.0079904618 0.025149107 0.041590355 0.054524653 0.023117838 0.0041445903 0.75914389
		 0.11770663 0.36675626 0.67815083 0.62119448 0.56058979 0.54779023 0.52300596 0.49465266
		 0.4461824 0.58770633 0.55894852 0.5013079 0.42462614 0.32236922 0.23741589 0.38900131
		 0.36659747 0.33286726 0.31655502 0.2966674 0.25534949 0.21688607 0.4155353 0.41547245
		 0.41554528 0.41556385 0.41570365 0.4156155 0.41562787 0.41570815 0.41580638 0.41581103
		 0.41567889 0.41536489 0.41549805 0.41576332 0.41595158 0.4160113 0.4164125 0.41618875
		 0.41606423 0.41625109 0.41584152 0.41590399 0.41544592 0.41543111 0.4152939 0.41520429
		 0.41666764 0.41645101 0.41579789 0.41514024 0.41479886 0.41737893 0.4168081 0.41566238
		 0.41451272 0.41396353 0.4176228 0.41671136 0.41640842 0.41621295 0.41605765 0.41583207
		 0.41571763 0.65297645 0.41549939 0.415416 0.41527849 0.41517043 0.41501647 0.414372
		 0.41376281 0.41577187 0.41575387 0.41575879 0.41565225 0.41556367 0.41549814 0.41546693
		 0.41535693 0.41543967 0.41552827 0.41571185 0.4158718 0.41588277 0.4159129 0.36408865
		 0.32868364 0.30882564 0.28760937 0.24575295 0.20542593 0.11995116 0.84777164 0.75962222
		 0.67894024 0.61195242 0.58103639 0.55357027 0.54222685 0.52390277 0.48789176 0.44548288
		 0.41784278 0.41677696 0.41653967 0.41626751 0.4160879 0.41593441 0.41584715 0.41578051
		 0.41571251 0.41560298 0.41551366 0.41547406 0.41544315 0.41540828 0.41530123 0.41519916
		 0.41506049 0.41453969 0.41377348 0.39458674 0.7507028 0.75334555 0.75856709 0.76831126
		 0.43625417 0.43967575 0.42981663 0.41652125 0.41624931 0.41617987 0.41602781 0.41592646
		 0.4158335 0.41577002 0.4157185 0.41567966 0.41566783 0.41565716 0.41564423 0.75058979
		 0.75411814 0.76286495 0.77906102 0.41006726 0.39831248 0.39980423 0.41501734 0.41547289
		 0.41563854 0.41562343 0.4156177 0.41561186 0.41561005 0.41560572 0.41559336 0.41558006
		 0.41556516 0.61515367 0.41692242 0.41702738 0.41679594 0.41646406 0.41615963 0.41563058
		 0.41521555 0.41482618 0.41446024 0.41424334 0.4141916 0.75004601 0.74978387 0.74943453
		 0.74908733 0.74894655 0.74911988 0.74953896 0.74985707 0.75007677 0.75011927 0.74983186
		 0.74976248 0.74962986 0.74946016 0.74935073 0.74937356 0.74949884 0.74963719 0.74978369
		 0.74982232 0.749731 0.74971491 0.74967068 0.74960071 0.74953681 0.74952656 0.74957269
		 0.74962193 0.74970031 0.74971938 0.74964297 0.41542801 0.41544855 0.41549066 0.41547251
		 0.41548654 0.41544291 0.75648636 0.4531225 0.82116121 0.77801347 0.74418598 0.44711035
		 0.74851006 0.41737932 0.76771396 0.3817192 0.78891897 0.36872905 0.80082953 0.37790099
		 0.80206728 0.38995916 0.7893877 0.42077824 0.85856503 0.79656154 0.77741367 0.7749005
		 0.77088267 0.77840894 0.77222079 0.76431298 0.77102202 0.76326001 0.77195907 0.76826251
		 0.77489156 0.77714491 0.77862066 0.78538728 0.78007698 0.78782326 0.77932423 0.77890193
		 0.78269738 0.78480327 0.77641445 0.77581316 0.77511483 0.77462554 0.77466381 0.77526164
		 0.77626336 0.77679145 0.7768088 0.77677274 0.47055882 0.49551404 0.46291319 0.44837394
		 0.34717512 0.3698355 0.36158559 0.32400414 0.54590178 0.59984064 0.56427848 0.51639754
		 0.32040101 0.33231035 0.25810713 0.22061594 0.45425448 0.44082823 0.43620127 0.43333405
		 0.38879767 0.38735271 0.38413429 0.39488101 0.40473282 0.42729545 0.42452654 0.40832591
		 0.48973554 0.53061604 0.51390618 0.48095721 0.34361118 0.34647059 0.30823347 0.29356915
		 0.4287025 0.41562355 0.70530576 0.69815379 0.12475537 0.61084276 0.67763937 0.66987062
		 0.69779515 0.71580893 0.78405255 0.47119686 0.85830545 0.51934755 0.57712066 0.64010936
		 0.53629911 0.55757207 0.58843386 0.56309575 0.57080573 0.60698301 0.39083207 0.63946086
		 0.42656007 0.43912885 0.46928221 0.48424858 0.51181883 0.53197926 0.49341574 0.50685394
		 0.53159761 0.51345199 0.51746637 0.54737401 0.39997327 0.557809 0.42080355 0.42474344
		 0.44713366 0.45880795 0.4771969 0.49450594 0.60712302 0.63468921 0.66208124 0.63497216
		 0.65589494 0.68266886 0.42467389 0.71825618 0.46970397 0.48981214 0.51899588 0.54517388
		 0.57086897 0.6014179 0.58685088 0.55293363 0.50208783 0.45762068 0.67341655 0.63492352
		 0.6161328 0.48004973 0.46976203 0.46400297 0.47447154 0.48687375 0.4808884 0.49067724
		 0.40058804 0.41543475 0.4171654 0.42992592 0.43345365 0.45612791 0.45009345 0.38330996
		 0.47275504 0.38311082 0.40025395 0.41675881 0.42981583 0.39792809 0.85535014 0.77060592
		 0.12067679 0.69278884 0.61797452 0.58441174 0.54987192 0.53547513 0.5175969 0.48215452
		 0.44298881 0.39310032 0.36114553 0.32342362 0.30394003 0.28547403 0.24686478 0.20781241
		 0.41537225 0.41541269 0.41540709 0.41537768 0.41558743 0.41560152 0.41556397 0.415544
		 0.41567704 0.41572955 0.41568986 0.41566116 0.41559669 0.41559657 0.41553581 0.41552088
		 0.41550946 0.41551566 0.41547599 0.41548157 0.41541454 0.4154748 0.41550118 0.41545638
		 0.41531628 0.41533694 0.41536015 0.41543385 0.41559878 0.41549599 0.41569462 0.41577283
		 0.41607028 0.41593945 0.41575277 0.415831 0.41562492 0.4156194 0.41545165 0.41538063
		 0.41508463 0.41525078 0.41514391 0.415012 0.41502872 0.41483539 0.4164916 0.41617736
		 0.41583207 0.41538545 0.41498426 0.41470715 0.41444442 0.41712093 0.41653368 0.4161936
		 0.41659033 0.41606352 0.41578442 0.4152815 0.415344 0.4145045 0.414828 0.41454345
		 0.41423115 0.41423783 0.41365653 0.41525525 0.41516781 0.4153592 0.4156085 0.41545847
		 0.41583255 0.41570467 0.41765928 0.41685975 0.41666093 0.41633797 0.41612974 0.41596723
		 0.41586825 0.41579038 0.41574466 0.4156197 0.64845693 0.61188567 0.4154869 0.415407
		 0.41537568 0.41534397 0.41521055 0.41507527 0.41488048 0.41434267 0.41418853 0.41365761
		 0.41564551 0.41567948 0.41562629 0.41541904 0.41533881 0.41538712 0.77618945 0.77593988
		 0.7756232 0.77531475 0.7752279 0.77541989 0.77581209 0.77609408 0.77626652 0.77627569
		 0.77601284 0.77594012 0.77581513 0.77566588 0.77558059 0.77561742 0.77574337 0.77586651
		 0.77599406 0.77601457 0.77592599 0.77590704 0.77586424 0.77580136 0.77574831 0.77574551
		 0.77579445 0.77583766 0.77590668 0.77591932 0.77584833 0.77569956 0.5500921 0.74535519
		 0.73532265 0.46189672 0.59722 0.25249389 0.16868053 0.23034394 0.10296362 0.36756679
		 0.35687271 0.55188954 0.41756189 0.0042002252 0.85222352 0.39926878 0.58943254 0.39904156
		 0.52306646 0.48470825 0.0030169059 0.48477045 0.44598335 0.748869 0.41010019 0.69336534
		 0.39257938 0.0029915376 0.21339308 0.014294571 0.14762239 0.022695566 0.39827049
		 0.84589273 0.025491647 0.023583569 0.37165517 0.3167586 0.065621242 0.030913014 0.44929877
		 0.46257618 0.41709882 0.47917968 0.48290244 0.3759428 0.041985542 0.073968284 0.087206878
		 0.10385274 0.10772085 0.097369894 0.86216211 0.40373704 0.84079659 0.43296447 0.86157507
		 0.78786445 0.70328969 0.65901911 0.70350611 0.75334334 0.84179997 0.83896124 0.81863034
		 0.7970385 0.84068918 0.7608332 0.67068046 0.63709313 0.67346418 0.72107393 0.77580136
		 0.77566588 0.77531475 0.77462554 0.76326001 0.74851006 0.77102202 0.65901911 0.74960071
		 0.74946016 0.74908733 0.74832088 0.71636009 0.63709313 0.73468024 0.74425691 ;
createNode polyTweakUV -n "polyTweakUV17";
	rename -uid "5B21EF33-459D-D03A-F3EB-55A9C83A8019";
	setAttr ".uopa" yes;
	setAttr -s 291 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[1]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[2]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[3]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[4]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[5]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[6]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[7]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[16]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[17]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[18]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[19]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[20]" -type "float2" 0.10299919 0.053919051 ;
	setAttr ".uvtk[21]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[22]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[23]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[24]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[25]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[26]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[27]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[28]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[29]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[30]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[31]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[32]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[33]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[34]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[35]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[36]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[37]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[38]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[39]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[68]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[71]" -type "float2" -0.27370051 2.0882339 ;
	setAttr ".uvtk[72]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[73]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[74]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[76]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[78]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[80]" -type "float2" -0.27370051 2.0882339 ;
	setAttr ".uvtk[81]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[82]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[83]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[84]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[85]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[86]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[87]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[88]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[89]" -type "float2" -0.27370054 2.0882339 ;
	setAttr ".uvtk[90]" -type "float2" -0.27370051 2.0882339 ;
	setAttr ".uvtk[91]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[92]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[93]" -type "float2" -0.27370051 2.0882335 ;
	setAttr ".uvtk[94]" -type "float2" -0.27370048 2.0882339 ;
	setAttr ".uvtk[95]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[96]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[97]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[98]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[99]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[100]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[101]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[102]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[103]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[104]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[105]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[106]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[107]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[108]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[109]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[110]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[111]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[112]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[113]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[114]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[115]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[116]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[117]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[118]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[119]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[120]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[121]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[122]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[123]" -type "float2" -0.27370051 2.0882335 ;
	setAttr ".uvtk[124]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[125]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[126]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[127]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[128]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[129]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[130]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[131]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[132]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[133]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[134]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[135]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[136]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[137]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[138]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[139]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[140]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[141]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[142]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[143]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[144]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[145]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[146]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[147]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[148]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[149]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[150]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[151]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[278]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[279]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[280]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[281]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[297]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[298]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[299]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[300]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[327]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[328]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[329]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[330]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[331]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[332]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[333]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[334]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[335]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[336]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[337]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[338]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[339]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[340]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[341]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[342]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[343]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[344]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[345]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[346]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[347]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[348]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[349]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[350]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[351]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[352]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[353]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[354]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[355]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[356]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[357]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[452]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[455]" -type "float2" -0.27370054 2.0882335 ;
	setAttr ".uvtk[456]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[457]" -type "float2" -0.27370048 2.0882339 ;
	setAttr ".uvtk[458]" -type "float2" -0.27370051 2.0882335 ;
	setAttr ".uvtk[459]" -type "float2" -0.27370051 2.0882335 ;
	setAttr ".uvtk[461]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[463]" -type "float2" -0.27370048 2.0882339 ;
	setAttr ".uvtk[464]" -type "float2" -0.27370054 2.0882335 ;
	setAttr ".uvtk[465]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[466]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[467]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[468]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[469]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[470]" -type "float2" -0.27370051 2.0882339 ;
	setAttr ".uvtk[471]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[472]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[473]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[474]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[475]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[476]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[477]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[478]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[479]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[480]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[481]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[482]" -type "float2" -0.27370051 2.0882339 ;
	setAttr ".uvtk[483]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[484]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[485]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[486]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[487]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[488]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[489]" -type "float2" -0.27370051 2.0882335 ;
	setAttr ".uvtk[490]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[491]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[492]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[493]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[494]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[495]" -type "float2" -0.27370051 2.0882335 ;
	setAttr ".uvtk[496]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[497]" -type "float2" -0.27370051 2.0882339 ;
	setAttr ".uvtk[498]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[499]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[500]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[501]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[502]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[503]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[504]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[505]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[506]" -type "float2" -0.27370051 2.0882335 ;
	setAttr ".uvtk[507]" -type "float2" -0.27370048 2.0882339 ;
	setAttr ".uvtk[508]" -type "float2" -0.27370051 2.0882335 ;
	setAttr ".uvtk[509]" -type "float2" -0.27370051 2.0882339 ;
	setAttr ".uvtk[510]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[511]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[512]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[513]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[514]" -type "float2" -0.27370051 2.0882335 ;
	setAttr ".uvtk[515]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[516]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[517]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[518]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[519]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[520]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[521]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[522]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[523]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[524]" -type "float2" -0.27370051 2.0882339 ;
	setAttr ".uvtk[525]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[526]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[527]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[528]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[529]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[530]" -type "float2" -0.27370051 2.0882339 ;
	setAttr ".uvtk[531]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[532]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[533]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[534]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[535]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[687]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[688]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[689]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[690]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[694]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[695]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[696]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[697]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[698]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[703]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[704]" -type "float2" -0.27370051 2.0882335 ;
	setAttr ".uvtk[705]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[706]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[707]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[709]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[710]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[711]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[712]" -type "float2" -0.27370054 2.0882339 ;
	setAttr ".uvtk[713]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[714]" -type "float2" -0.27370051 2.0882339 ;
	setAttr ".uvtk[716]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[717]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[718]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[719]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[720]" -type "float2" -0.27370051 2.0882339 ;
	setAttr ".uvtk[722]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[723]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[724]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[725]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[726]" -type "float2" -0.27370051 2.0882339 ;
	setAttr ".uvtk[727]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[728]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[729]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[730]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[731]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[732]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[733]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[734]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[735]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[736]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[737]" -type "float2" -0.27370054 2.0882335 ;
	setAttr ".uvtk[738]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[739]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[750]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[751]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[752]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[753]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[754]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[755]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[756]" -type "float2" 0.10299919 0.053919051 ;
	setAttr ".uvtk[757]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[758]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[759]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[768]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[769]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[770]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[771]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[772]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[773]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[774]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[775]" -type "float2" 0.10299916 0.053919051 ;
createNode Unfold3DUnfold -n "Unfold3DUnfold17";
	rename -uid "81816276-4F49-1D8C-423F-1EA6D16640FB";
	setAttr ".uvl" -type "Int32Array" 776 0 1 2 3 4 5
		 6 7 8 9 10 11 12 13 14 15 16 17
		 18 19 20 21 22 23 24 25 26 27 28 29
		 30 31 32 33 34 35 36 37 38 39 40 41
		 42 43 44 45 46 47 48 49 50 51 52 53
		 54 55 56 57 58 59 60 61 62 63 64 65
		 66 67 68 69 70 71 72 73 74 75 76 77
		 78 79 80 81 82 83 84 85 86 87 88 89
		 90 91 92 93 94 95 96 97 98 99 100 101
		 102 103 104 105 106 107 108 109 110 111 112 113
		 114 115 116 117 118 119 120 121 122 123 124 125
		 126 127 128 129 130 131 132 133 134 135 136 137
		 138 139 140 141 142 143 144 145 146 147 148 149
		 150 151 152 153 154 155 156 157 158 159 160 161
		 162 163 164 165 166 167 168 169 170 171 172 173
		 174 175 176 177 178 179 180 181 182 183 184 185
		 186 187 188 189 190 191 192 193 194 195 196 197
		 198 199 200 201 202 203 204 205 206 207 208 209
		 210 211 212 213 214 215 216 217 218 219 220 221
		 222 223 224 225 226 227 228 229 230 231 232 233
		 234 235 236 237 238 239 240 241 242 243 244 245
		 246 247 248 249 250 251 252 253 254 255 256 257
		 258 259 260 261 262 263 264 265 266 267 268 269
		 270 271 272 273 274 275 276 277 278 279 280 281
		 282 283 284 285 286 287 288 289 290 291 292 293
		 294 295 296 297 298 299 300 301 302 303 304 305
		 306 307 308 309 310 311 312 313 314 315 316 317
		 318 319 320 321 322 323 324 325 326 327 328 329
		 330 331 332 333 334 335 336 337 338 339 340 341
		 342 343 344 345 346 347 348 349 350 351 352 353
		 354 355 356 357 358 359 360 361 362 363 364 365
		 366 367 368 369 370 371 372 373 374 375 376 377
		 378 379 380 381 382 383 384 385 386 387 388 389
		 390 391 392 393 394 395 396 397 398 399 400 401
		 402 403 404 405 406 407 408 409 410 411 412 413
		 414 415 416 417 418 419 420 421 422 423 424 425
		 426 427 428 429 430 431 432 433 434 435 436 437
		 438 439 440 441 442 443 444 445 446 447 448 449
		 450 451 452 453 454 455 456 457 458 459 460 461
		 462 463 464 465 466 467 468 469 470 471 472 473
		 474 475 476 477 478 479 480 481 482 483 484 485
		 486 487 488 489 490 491 492 493 494 495 496 497
		 498 499 500 501 502 503 504 505 506 507 508 509
		 510 511 512 513 514 515 516 517 518 519 520 521
		 522 523 524 525 526 527 528 529 530 531 532 533
		 534 535 536 537 538 539 540 541 542 543 544 545
		 546 547 548 549 550 551 552 553 554 555 556 557
		 558 559 560 561 562 563 564 565 566 567 568 569
		 570 571 572 573 574 575 576 577 578 579 580 581
		 582 583 584 585 586 587 588 589 590 591 592 593
		 594 595 596 597 598 599 600 601 602 603 604 605
		 606 607 608 609 610 611 612 613 614 615 616 617
		 618 619 620 621 622 623 624 625 626 627 628 629
		 630 631 632 633 634 635 636 637 638 639 640 641
		 642 643 644 645 646 647 648 649 650 651 652 653
		 654 655 656 657 658 659 660 661 662 663 664 665
		 666 667 668 669 670 671 672 673 674 675 676 677
		 678 679 680 681 682 683 684 685 686 687 688 689
		 690 691 692 693 694 695 696 697 698 699 700 701
		 702 703 704 705 706 707 708 709 710 711 712 713
		 714 715 716 717 718 719 720 721 722 723 724 725
		 726 727 728 729 730 731 732 733 734 735 736 737
		 738 739 740 741 742 743 744 745 746 747 748 749
		 750 751 752 753 754 755 756 757 758 759 760 761
		 762 763 764 765 766 767 768 769 770 771 772 773
		 774 775 ;
	setAttr ".mdp" -type "string" "|pCylinder27|pCylinder27Shape";
	setAttr ".usn" -type "string" "map1";
	setAttr ".miee" yes;
	setAttr ".mue" -type "floatArray" 776 0.47650009 0.48352879 0.48988482 0.49514642
		 0.44504026 0.45227191 0.45988616 0.46831489 0.29339266 0.29645228 0.30025047 0.30316156
		 0.30180344 0.29746723 0.29317299 0.29256251 0.54352391 0.55687147 0.56928343 0.47330067
		 0.48722073 0.50129265 0.51507908 0.52917194 0.49946657 0.51025379 0.52014393 0.44395798
		 0.45503435 0.46632677 0.4778983 0.48868307 0.52174044 0.50877845 0.49587315 0.48178336
		 0.46771157 0.55762351 0.54721546 0.53486919 0.2975148 0.29336661 0.29008454 0.29237428
		 0.28395319 0.28473219 0.41174865 0.33946592 0.30604997 0.32639956 0.30343309 0.28706443
		 0.45680165 0.45841894 0.33939731 0.33623362 0.28876984 0.28934336 0.28542405 0.29096892
		 0.2918748 0.28970665 0.28880104 0.2981925 0.30616325 0.2839129 0.31328818 0.30827311
		 0.65056646 0.39966273 0.54560649 0.61575764 0.69074887 0.7263397 0.76523656 0.2912623
		 0.58401823 0.37942165 0.60208589 0.40164775 0.62851518 0.65571785 0.83581299 0.86089021
		 0.84018672 0.80858475 0.8908934 0.8774718 0.79426968 0.92908227 0.78511506 0.74148214
		 0.80044937 0.75566381 0.81359571 0.77892685 0.88738269 0.90163928 0.88598394 0.8677327
		 0.91955739 0.90918708 0.84849197 0.9330042 0.85273838 0.81727904 0.86086082 0.8296926
		 0.87398046 0.84869081 0.76288801 0.79312927 0.76136839 0.72931701 0.83037627 0.80114776
		 0.66570318 0.83830106 0.6798901 0.64402366 0.69437474 0.66316777 0.72383392 0.69238323
		 0.78315318 0.7463423 0.7193054 0.70859206 0.9000774 0.85199898 0.81554794 0.92033416
		 0.90944177 0.91329616 0.92395413 0.93406934 0.93777269 0.95090765 0.95684242 0.88633525
		 0.89545912 0.89105266 0.89832854 0.899382 0.90420645 0.92037946 0.90923077 0.89700812
		 0.89173913 0.89711303 0.89999163 0.92610013 0.3578777 0.20380822 0.32831943 0.29565465
		 0.25013542 0.26706627 0.286883 0.28785494 0.28825563 0.28788331 0.28676304 0.27732772
		 0.32128006 0.36787429 0.39769402 0.39341179 0.29612315 0.28761894 0.28800952 0.29004928
		 0.295809 0.31213108 0.34503886 0.38459289 0.28589723 0.28586182 0.28592777 0.28592575
		 0.2860226 0.28595126 0.28597304 0.28603339 0.28612229 0.28611019 0.28603622 0.28581467
		 0.28592893 0.28614736 0.28626922 0.28629148 0.28664625 0.28644738 0.28637472 0.28655064
		 0.28623354 0.28632373 0.28590921 0.28593603 0.28578368 0.28575021 0.28695992 0.28716666
		 0.28722885 0.28668013 0.28631738 0.28762841 0.28799555 0.28819755 0.28756016 0.28683484
		 0.28637335 0.28626639 0.28652737 0.28638324 0.2862674 0.28609934 0.28601432 0.41617608
		 0.28585181 0.2857891 0.28568625 0.28560558 0.28549069 0.28553161 0.28562033 0.28605455
		 0.28606188 0.2860764 0.28600255 0.28593379 0.285878 0.28582734 0.28574488 0.28584662
		 0.28592727 0.28607982 0.28618678 0.28617302 0.28615966 0.28676099 0.28761029 0.29070258
		 0.30116254 0.32334647 0.34610006 0.36375245 0.16150728 0.24998434 0.30535728 0.31093296
		 0.30294666 0.29770538 0.29466969 0.2916401 0.2892676 0.28814593 0.28726119 0.28662783
		 0.28669393 0.28646949 0.28632963 0.28619725 0.28612915 0.28607264 0.28602117 0.28594038
		 0.28587085 0.28585029 0.28583121 0.28580576 0.28573266 0.28566718 0.28558183 0.28594732
		 0.28619727 0.28671595 0.47263342 0.49432123 0.51554698 0.53664702 0.29308885 0.29186991
		 0.28957483 0.28848314 0.28723839 0.28654051 0.28637889 0.28627357 0.28617692 0.28610939
		 0.28605404 0.28601524 0.28599828 0.28598189 0.28596035 0.46390429 0.48301849 0.50202191
		 0.52172172 0.29314989 0.29192197 0.28948924 0.28809237 0.28695145 0.28613469 0.28606471
		 0.28602344 0.28599286 0.28597748 0.28596407 0.28594789 0.28593194 0.28591362 0.42303357
		 0.28627744 0.28681371 0.28714123 0.28740534 0.28759527 0.28749067 0.28726771 0.28688908
		 0.28641477 0.28593558 0.28554845 0.46959525 0.47575167 0.48144111 0.48728639 0.43735313
		 0.4434205 0.44984591 0.45471501 0.46057788 0.46579197 0.46093416 0.46574512 0.46958366
		 0.47275069 0.43307525 0.43894187 0.44448158 0.44843054 0.453464 0.45788619 0.45312923
		 0.45537642 0.45603973 0.45491037 0.43523216 0.43855 0.44216415 0.44424334 0.44884807
		 0.45153788 0.44338924 0.28582519 0.28584945 0.2858718 0.28585252 0.28587869 0.28582728
		 0.86593956 0.27684653 0.81833458 0.8792811 0.85353214 0.27419665 0.94947362 0.27263504
		 0.93556023 0.27401626 0.92149627 0.27505028 0.90771717 0.27804482 0.90107763 0.27864632
		 0.88615859 0.27899274 0.83744812 0.89363134 0.9233638 0.91257107 0.88795382 0.90108669
		 0.90267408 0.8756029 0.97884804 0.86518866 0.96777558 0.95508498 0.95648909 0.94101918
		 0.94492406 0.9269349 0.9398067 0.92078972 0.93414509 0.92850775 0.90726858 0.91403782
		 0.9463309 0.93929237 0.93292576 0.98554796 0.97776818 0.97054625 0.96294236 0.95892864
		 0.95451844 0.95020139 0.27667138 0.28018364 0.28286639 0.28071892 0.27513394 0.27963489
		 0.28222054 0.27927333 0.13508165 0.18917668 0.22641306 0.19297196 0.1483572 0.19617067
		 0.25113869 0.22830896 0.1141296 0.17944324 0.28393698 0.28293902 0.282455 0.28305954
		 0.27985135 0.28216764 0.27987242 0.28008696 0.28238234 0.28213599 0.24517436 0.26022011
		 0.27409878 0.26792035 0.24055555 0.26575327 0.27478787 0.26583579 0.23742795 0.26404607
		 0.82695997 0.06000831 0.23059699 0.88353831 0.86175865 0.78669196 0.75111765 0.71225911
		 0.094315633 0.89338756 0.11553515 0.87528074 0.84883082 0.82169545 0.641514 0.61633956
		 0.63698053 0.66864586 0.58624834 0.59968245 0.68400288 0.54816979 0.69276297 0.73624867
		 0.67708552 0.72180003 0.66363215 0.69831371 0.59006476 0.57572079 0.59115171 0.60955435
		 0.55772972 0.56785697 0.62984598 0.543944 0.62533516 0.66066802 0.61693454 0.64793724
		 0.60356188 0.62879473 0.7143541 0.68411416 0.71598029 0.7480036 0.646887 0.6762383
		 0.81201357 0.63927466 0.79765093 0.83341944 0.78299731 0.81417251 0.75343603 0.78493357
		 0.69407278 0.73090905 0.75809312 0.76902306 0.57733011 0.62520128 0.66165167 0.55724871
		 0.5681935 0.56438023 0.55366635 0.54347873 0.53982604 0.52661067 0.58860815 0.59185904
		 0.58274049 0.57971233 0.58694524 0.57835805 0.57360125 0.55809134 0.55251122 0.58146846
		 0.58661819 0.58109647 0.57805198 0.55226398 0.12750608 0.14131106 0.290218 0.16630737
		 0.22422221 0.25093898 0.27204934 0.28022453 0.28435311 0.28512555 0.28527865 0.28432548
		 0.28385249 0.28222179 0.28022659 0.27801168 0.27648482 0.27306843 0.28571916 0.28575897
		 0.2857554 0.28572962 0.28588733 0.28590664 0.28588369 0.2858578 0.28594145 0.28599623
		 0.28597251 0.28594023 0.28586724 0.2858842 0.28584069 0.28581572 0.28583196 0.28584328
		 0.28581506 0.28581166 0.28574541 0.28578883 0.28581879 0.28578454 0.28567433 0.28569365
		 0.28569245 0.28574416 0.28584853 0.28577811 0.28593874 0.28601906 0.28616309 0.28609702
		 0.28593758 0.2859599 0.28576207 0.28580657 0.28568771 0.28559092 0.28536057 0.28554383
		 0.28548735 0.28535089 0.28541359 0.28523573 0.28577134 0.28539401 0.28513107 0.2848784
		 0.28476548 0.2848002 0.28489968 0.28472394 0.2852546 0.28480482 0.28397402 0.28351766
		 0.28447112 0.2843473 0.28364801 0.28353104 0.28427663 0.28447756 0.28398588 0.28471088
		 0.28425741 0.28558975 0.28553951 0.28566203 0.28582829 0.28572077 0.28604081 0.28592315
		 0.28568542 0.28583989 0.2861056 0.28640839 0.28627551 0.28616032 0.28610456 0.28604966
		 0.28602254 0.28592983 0.39054647 0.39675772 0.28583387 0.28576124 0.28573707 0.28570792
		 0.28560603 0.28549433 0.28533083 0.28514621 0.28513786 0.28491446 0.28594163 0.28597513
		 0.28591964 0.28577366 0.28570873 0.28574938 0.95323688 0.94706285 0.94135618 0.99550718
		 0.98546779 0.97941196 0.97299826 0.96813363 0.96227169 0.95705271 0.96187848 0.95704263
		 0.95316738 0.99902344 0.98977166 0.98391134 0.97837186 0.9744246 0.96937925 0.96494496
		 0.96968722 0.96740615 0.96669453 0.99151027 0.98761433 0.98429424 0.98068678 0.97860301
		 0.97399122 0.97127253 0.97941816 0.70257872 0.91731846 0.74038738 0.78894669 0.016831515
		 0.0009765625 0.088595375 0.56003976 0.59389156 0.55107278 0.73717183 0.6886093 0.50756532
		 0.54769838 0.3451066 0.14412235 0.65906185 0.53725266 0.59739912 0.53856134 0.92629975
		 0.33659175 0.52072936 0.8498956 0.67875987 0.78066456 0.60400426 0.73511165 0.37036949
		 0.93988544 0.74300569 0.93867588 0.81919527 0.77505314 0.17297329 0.88975382 0.88099718
		 0.79883409 0.87352175 0.62765604 0.69720507 0.5720166 0.56306565 0.56470257 0.53887421
		 0.52078944 0.56929457 0.91351348 0.90580195 0.91462564 0.93873835 0.95680022 0.92511922
		 0.84857231 0.27877823 0.82609749 0.27848253 0.86056215 0.88597023 0.9030205 0.79381984
		 0.80972093 0.81212533 0.57418305 0.58531499 0.59667373 0.60444337 0.56218725 0.53677642
		 0.51972938 0.49567208 0.61307579 0.61066353 0.9677617 0.94994831 0.93548679 0.92765284
		 0.9688316 0.84187055 0.89537656 0.92707413 0.43137944 0.42382631 0.42730471 0.43725312
		 0.58094674 0.62898517 0.45395872 0.52743262 ;
	setAttr ".mve" -type "floatArray" 776 0.62246513 0.61732107 0.6118623 0.60560226
		 0.63805223 0.63483018 0.63136685 0.627361 0.37816486 0.37954131 0.37985933 0.37592131
		 0.37045339 0.37047032 0.3729859 0.37605539 0.71855354 0.70938903 0.69890797 0.75533348
		 0.74923503 0.74185002 0.73438287 0.72674632 0.65399528 0.64699936 0.63867486 0.68067926
		 0.6769135 0.6714347 0.66543049 0.65990865 0.68529099 0.69264019 0.69965482 0.70717776
		 0.71395433 0.65642834 0.66685534 0.67677653 0.382018 0.38652092 0.38135067 0.37894768
		 0.36187461 0.36876813 0.45288393 0.48678905 0.41101801 0.39865524 0.21363345 0.32016531
		 0.29186517 0.38926777 0.37653282 0.34161732 0.37913218 0.37823477 0.37199137 0.37164733
		 0.375705 0.3755762 0.37303665 0.39457926 0.38697714 0.34972131 0.3743794 0.36042997
		 0.33092541 0.61325759 0.21211296 0.30232492 0.29546124 0.32427776 0.34298697 0.72693837
		 0.09170793 0.0044733938 0.14097831 0.084544413 0.20021604 0.26471594 0.16201931 0.18383212
		 0.21482325 0.18879075 0.19743738 0.23387633 0.013915847 0.26669779 0.049988601 0.061830029
		 0.093646213 0.10799398 0.13695517 0.15687296 0.11921012 0.13290787 0.15770374 0.13918792
		 0.14376588 0.17378537 0.024250142 0.18440303 0.04547425 0.048775483 0.072210968 0.083497092
		 0.10269214 0.1198203 0.23277754 0.26110601 0.28848517 0.26056159 0.282965 0.30978668
		 0.045716725 0.34603027 0.091768779 0.11162061 0.14218698 0.1682823 0.19542073 0.22594723
		 0.21251673 0.17759156 0.12543491 0.079987228 0.30092412 0.26192966 0.24258089 0.10602924
		 0.095588177 0.089800537 0.10040659 0.11301044 0.10697421 0.11701196 0.11107522 0.040700532
		 0.042562257 0.058913235 0.055356793 0.081780002 0.075742409 0.0085945092 0.0009765625
		 0.0080818208 0.025475064 0.042143974 0.055252958 0.023430116 0.0022151363 0.70821428
		 0.11479841 0.36702967 0.58842999 0.50399846 0.41939265 0.39980257 0.38962606 0.3841823
		 0.38006377 0.45949608 0.44945082 0.42677885 0.38334841 0.31509033 0.26708978 0.37231788
		 0.36983937 0.36348057 0.3521986 0.32550326 0.27738792 0.22248229 0.37573454 0.37565055
		 0.37566569 0.37573108 0.37586004 0.37580198 0.37577671 0.37583798 0.37585938 0.37591422
		 0.37573487 0.37546211 0.37551132 0.37563983 0.37584004 0.3759571 0.37607455 0.37601134
		 0.37585333 0.37587351 0.37560633 0.37550974 0.37540981 0.37527433 0.37533721 0.37516084
		 0.37682107 0.37642559 0.3754192 0.3746736 0.37438065 0.37813094 0.37751058 0.37555841
		 0.37386125 0.37316135 0.37865525 0.37727273 0.37644306 0.37629834 0.37618357 0.37601718
		 0.37593254 0.66027379 0.37577146 0.37571037 0.37560904 0.37552929 0.37541553 0.3742834
		 0.37314811 0.37597272 0.37589082 0.37585837 0.37575978 0.37570426 0.3756794 0.37574777
		 0.37566689 0.37559587 0.37561327 0.37569723 0.37585619 0.37593648 0.37607688 0.36960265
		 0.36316058 0.35152134 0.32374138 0.27373052 0.22195767 0.10799807 0.83927828 0.71441108
		 0.60455269 0.49573332 0.45752183 0.41564739 0.39753532 0.38899568 0.38287261 0.37975064
		 0.3786253 0.37708402 0.37632105 0.37618929 0.37607577 0.37602141 0.37596726 0.37594059
		 0.37589344 0.37582067 0.37575337 0.37569422 0.37565818 0.37563038 0.37552881 0.3754181
		 0.37525591 0.37425578 0.37309596 0.37217209 0.62488383 0.65694803 0.68892187 0.72256374
		 0.37706819 0.3772141 0.37723526 0.37666795 0.37599254 0.37567732 0.37572291 0.37574545
		 0.37576637 0.37578547 0.37580267 0.37580591 0.37582505 0.37584794 0.37587848 0.62957472
		 0.66280955 0.69633257 0.73077154 0.37452206 0.37385634 0.37398261 0.37432465 0.37500042
		 0.37528297 0.37546489 0.37558249 0.3756642 0.37570855 0.3757382 0.37575117 0.37576222
		 0.37578067 0.62192965 0.37761053 0.37747517 0.37711951 0.37668642 0.37611982 0.3754268
		 0.37485707 0.37446728 0.37408406 0.37399358 0.3739593 0.60567647 0.60267377 0.59941047
		 0.59305567 0.62426758 0.62032473 0.61603457 0.6139245 0.61111033 0.60787421 0.59386414
		 0.59124386 0.58727103 0.58000189 0.60814047 0.60628074 0.60296643 0.60093147 0.59834552
		 0.59558845 0.58727485 0.58506572 0.58200771 0.57698303 0.59368956 0.59447026 0.59360117
		 0.59245783 0.58974153 0.58838886 0.58420849 0.37562934 0.37561497 0.37567592 0.37568185
		 0.37564003 0.37567049 0.7294935 0.38202938 0.80882549 0.73865825 0.71901375 0.38190252
		 0.77546757 0.37980139 0.76935929 0.37501937 0.76196629 0.37406042 0.7544921 0.375043
		 0.7508781 0.3757804 0.74266589 0.37816954 0.83052009 0.74684954 0.67410618 0.667117
		 0.69688725 0.70538938 0.65880102 0.68697387 0.70081711 0.67655504 0.6970405 0.73408622
		 0.69155145 0.72729826 0.68554252 0.7197696 0.68292063 0.716443 0.68001837 0.67705941
		 0.7090323 0.71274644 0.64257461 0.63744539 0.63199872 0.66104132 0.65815699 0.65492398
		 0.65145588 0.64966458 0.64745837 0.64498496 0.38413879 0.38683629 0.38160214 0.38055375
		 0.36949071 0.37289095 0.37027594 0.36448234 0.43902668 0.48170784 0.44202602 0.41305718
		 0.29131517 0.31931746 0.28041255 0.23357517 0.37183532 0.37254351 0.3791613 0.37857765
		 0.37332731 0.37231576 0.37486532 0.37441823 0.37647989 0.37813139 0.37769282 0.37611803
		 0.39579079 0.40839216 0.39440921 0.38797098 0.35036299 0.36577293 0.35425195 0.32852134
		 0.37730861 0.3781378 0.70711523 0.61825716 0.14176778 0.61026394 0.67850423 0.67171919
		 0.70049965 0.71919483 0.73359585 0.46824425 0.82979339 0.51745749 0.57661337 0.64100832
		 0.53812331 0.5598433 0.59092814 0.56499428 0.57339877 0.60993958 0.39015698 0.64300984
		 0.42627466 0.43833697 0.46983358 0.48437625 0.51311439 0.53312182 0.49506226 0.50870639
		 0.53369075 0.51522607 0.51948375 0.54974186 0.40015745 0.56034517 0.42135838 0.42489773
		 0.44809982 0.45957887 0.47859228 0.49590436 0.60905302 0.63731444 0.66471416 0.6368469
		 0.65912271 0.68597364 0.42236692 0.72230375 0.46835804 0.48818082 0.51867563 0.54474741
		 0.57177538 0.60229856 0.58876556 0.5539161 0.50191373 0.45656982 0.67727065 0.63805425
		 0.61874777 0.4815827 0.4711619 0.46532658 0.47592777 0.48849764 0.48242885 0.49235177
		 0.40131342 0.41625509 0.4180066 0.43081391 0.43447194 0.45736003 0.45123693 0.38386804
		 0.47418687 0.3835206 0.40095064 0.41757175 0.43068537 0.3986617 0.83226854 0.71761763
		 0.12608767 0.59857702 0.50335807 0.45674819 0.41613093 0.39916649 0.38951641 0.38329023
		 0.38001394 0.37218744 0.36971945 0.3634333 0.35210273 0.32444158 0.27377304 0.22296806
		 0.37580061 0.37579942 0.37579334 0.37578371 0.37593573 0.37591818 0.37587428 0.37589455
		 0.37604204 0.37602931 0.37598118 0.37599611 0.37603006 0.37597454 0.37592369 0.37595749
		 0.3758691 0.37585264 0.37581795 0.37584677 0.37584955 0.37589893 0.37588534 0.37585515
		 0.37576908 0.37577173 0.37584955 0.37591469 0.37609783 0.37600139 0.37610665 0.37609199
		 0.37656295 0.37636551 0.3762947 0.37647024 0.37646326 0.37630054 0.37615615 0.37624767
		 0.3760604 0.37598854 0.37583339 0.37586135 0.3757084 0.37567604 0.37704027 0.37676439
		 0.37652627 0.37592852 0.37562153 0.37522253 0.37483278 0.3784343 0.3774443 0.37699074
		 0.37769982 0.37715879 0.37655076 0.37580693 0.37583157 0.37486213 0.37529138 0.3747716
		 0.37410757 0.37432945 0.37348467 0.3758522 0.37573841 0.37594607 0.3761948 0.37606955
		 0.37621036 0.37618938 0.37886232 0.37769377 0.3772386 0.37660992 0.37638548 0.37624705
		 0.37611511 0.37604758 0.37599126 0.37590054 0.65569198 0.61861658 0.37579104 0.37577385
		 0.3757529 0.37574732 0.37565595 0.37559146 0.37550727 0.374506 0.37403706 0.37320459
		 0.37594211 0.37594002 0.37595335 0.37577149 0.37572795 0.3757489 0.62578535 0.62280965
		 0.61956406 0.64661419 0.6443671 0.64039266 0.63608611 0.63397658 0.63117486 0.62795907
		 0.61393327 0.61134684 0.60740227 0.62617618 0.62822121 0.62632793 0.62298822 0.62095416
		 0.61837059 0.61563301 0.60731995 0.60512948 0.60208142 0.60961372 0.61370385 0.61446387
		 0.61360055 0.61245024 0.6097613 0.6084345 0.60416907 0.77996981 0.5479154 0.74884593
		 0.73809677 0.36155629 0.48201242 0.19293302 0.17155653 0.23401348 0.10487905 0.37265837
		 0.36191198 0.52118188 0.39550477 0.0017019089 0.83668154 0.39909357 0.5923807 0.3994728
		 0.52516782 0.48136032 0.0009765625 0.48636189 0.44338071 0.75298959 0.40809855 0.69733524
		 0.39108133 0.0037036538 0.2162471 0.014538997 0.14960678 0.022998169 0.40374216 0.84165746
		 0.025821829 0.023885326 0.37673357 0.32103309 0.066769503 0.031441737 0.45042667
		 0.46387941 0.41786683 0.48069617 0.48446804 0.37632942 0.04255183 0.074956685 0.088373333
		 0.10524956 0.1091812 0.098674506 0.8398385 0.37696403 0.82018685 0.37946337 0.84516948
		 0.84102231 0.83108878 0.7450949 0.76336473 0.78169155 0.81975824 0.810444 0.80011374
		 0.78875268 0.82508302 0.82092154 0.81097931 0.81233704 0.74328518 0.76161456 0.59704185
		 0.60015339 0.61322653 0.62574935 0.73979378 0.70850265 0.64944714 0.83246028 0.58955675
		 0.60604286 0.62646991 0.64092177 0.68839639 0.72501945 0.7196461 0.6293124 ;
createNode polyTweakUV -n "polyTweakUV18";
	rename -uid "DA8FDFA7-4EE3-264B-64D0-0299E96A7EAC";
	setAttr ".uopa" yes;
	setAttr -s 380 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" 0.2408914 0.55405015 ;
	setAttr ".uvtk[1]" -type "float2" 0.2408914 0.55405009 ;
	setAttr ".uvtk[2]" -type "float2" 0.2408914 0.55405021 ;
	setAttr ".uvtk[3]" -type "float2" 0.24089134 0.55405009 ;
	setAttr ".uvtk[4]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[5]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[6]" -type "float2" 0.24089134 0.55405015 ;
	setAttr ".uvtk[7]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[16]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[17]" -type "float2" 0.24089137 0.55405021 ;
	setAttr ".uvtk[18]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[19]" -type "float2" 0.24089134 0.55405015 ;
	setAttr ".uvtk[20]" -type "float2" 0.2408914 0.55405015 ;
	setAttr ".uvtk[21]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[22]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[23]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[24]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[25]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[26]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[27]" -type "float2" 0.24089134 0.55405009 ;
	setAttr ".uvtk[28]" -type "float2" 0.24089134 0.55405015 ;
	setAttr ".uvtk[29]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[30]" -type "float2" 0.2408914 0.55405009 ;
	setAttr ".uvtk[31]" -type "float2" 0.2408914 0.55405015 ;
	setAttr ".uvtk[32]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[33]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[34]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[35]" -type "float2" 0.2408914 0.55405015 ;
	setAttr ".uvtk[36]" -type "float2" 0.24089134 0.55405015 ;
	setAttr ".uvtk[37]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[38]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[39]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[68]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[71]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[72]" -type "float2" 0.63069749 0.26060069 ;
	setAttr ".uvtk[73]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[74]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[76]" -type "float2" 0.63069749 0.26060069 ;
	setAttr ".uvtk[78]" -type "float2" 0.63069749 0.26060069 ;
	setAttr ".uvtk[80]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[81]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[82]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[83]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[84]" -type "float2" 0.63069737 0.26060069 ;
	setAttr ".uvtk[85]" -type "float2" 0.63069737 0.26060069 ;
	setAttr ".uvtk[86]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[87]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[88]" -type "float2" 0.63069749 0.26060069 ;
	setAttr ".uvtk[89]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[90]" -type "float2" 0.63069749 0.26060069 ;
	setAttr ".uvtk[91]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[92]" -type "float2" 0.63069737 0.26060069 ;
	setAttr ".uvtk[93]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[94]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[95]" -type "float2" 0.63069737 0.26060069 ;
	setAttr ".uvtk[96]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[97]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[98]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[99]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[100]" -type "float2" 0.63069737 0.26060069 ;
	setAttr ".uvtk[101]" -type "float2" 0.63069737 0.26060069 ;
	setAttr ".uvtk[102]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[103]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[104]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[105]" -type "float2" 0.63069749 0.26060069 ;
	setAttr ".uvtk[106]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[107]" -type "float2" 0.63069749 0.26060069 ;
	setAttr ".uvtk[108]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[109]" -type "float2" 0.63069749 0.26060069 ;
	setAttr ".uvtk[110]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[111]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[112]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[113]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[114]" -type "float2" 0.63069737 0.26060066 ;
	setAttr ".uvtk[115]" -type "float2" 0.63069737 0.26060069 ;
	setAttr ".uvtk[116]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[117]" -type "float2" 0.63069737 0.26060066 ;
	setAttr ".uvtk[118]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[119]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[120]" -type "float2" 0.63069749 0.26060069 ;
	setAttr ".uvtk[121]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[122]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[123]" -type "float2" 0.63069749 0.26060069 ;
	setAttr ".uvtk[124]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[125]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[126]" -type "float2" 0.63069737 0.26060069 ;
	setAttr ".uvtk[127]" -type "float2" 0.63069737 0.26060069 ;
	setAttr ".uvtk[128]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[129]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[130]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[131]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[132]" -type "float2" 0.63069737 0.26060069 ;
	setAttr ".uvtk[133]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[134]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[135]" -type "float2" 0.63069749 0.26060069 ;
	setAttr ".uvtk[136]" -type "float2" 0.63069749 0.26060069 ;
	setAttr ".uvtk[137]" -type "float2" 0.63069749 0.26060069 ;
	setAttr ".uvtk[138]" -type "float2" 0.63069749 0.26060069 ;
	setAttr ".uvtk[139]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[140]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[141]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[142]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[143]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[144]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[145]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[146]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[147]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[148]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[149]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[150]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[151]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[278]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[279]" -type "float2" 0.24089137 0.55405021 ;
	setAttr ".uvtk[280]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[281]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[297]" -type "float2" 0.2408914 0.55405015 ;
	setAttr ".uvtk[298]" -type "float2" 0.2408914 0.55405021 ;
	setAttr ".uvtk[299]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[300]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[327]" -type "float2" 0.24089137 0.55405021 ;
	setAttr ".uvtk[328]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[329]" -type "float2" 0.2408914 0.55405009 ;
	setAttr ".uvtk[330]" -type "float2" 0.2408914 0.55405009 ;
	setAttr ".uvtk[331]" -type "float2" 0.2408914 0.55405015 ;
	setAttr ".uvtk[332]" -type "float2" 0.24089137 0.55405021 ;
	setAttr ".uvtk[333]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[334]" -type "float2" 0.2408914 0.55405009 ;
	setAttr ".uvtk[335]" -type "float2" 0.2408914 0.55405021 ;
	setAttr ".uvtk[336]" -type "float2" 0.2408914 0.55405009 ;
	setAttr ".uvtk[337]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[338]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[339]" -type "float2" 0.2408914 0.55405021 ;
	setAttr ".uvtk[340]" -type "float2" 0.24089137 0.55405021 ;
	setAttr ".uvtk[341]" -type "float2" 0.24089134 0.55405009 ;
	setAttr ".uvtk[342]" -type "float2" 0.2408914 0.55405009 ;
	setAttr ".uvtk[343]" -type "float2" 0.24089137 0.55405021 ;
	setAttr ".uvtk[344]" -type "float2" 0.2408914 0.55405021 ;
	setAttr ".uvtk[345]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[346]" -type "float2" 0.24089134 0.55405009 ;
	setAttr ".uvtk[347]" -type "float2" 0.24089134 0.55405021 ;
	setAttr ".uvtk[348]" -type "float2" 0.2408914 0.55405009 ;
	setAttr ".uvtk[349]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[350]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[351]" -type "float2" 0.2408914 0.55405009 ;
	setAttr ".uvtk[352]" -type "float2" 0.2408914 0.55405009 ;
	setAttr ".uvtk[353]" -type "float2" 0.24089134 0.55405009 ;
	setAttr ".uvtk[354]" -type "float2" 0.24089137 0.55405021 ;
	setAttr ".uvtk[355]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[356]" -type "float2" 0.2408914 0.55405009 ;
	setAttr ".uvtk[357]" -type "float2" 0.24089134 0.55405009 ;
	setAttr ".uvtk[364]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[366]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[367]" -type "float2" 0.24089143 0.55405015 ;
	setAttr ".uvtk[368]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[370]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[372]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[374]" -type "float2" 0.24089143 0.55405015 ;
	setAttr ".uvtk[376]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[378]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[380]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[382]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[383]" -type "float2" 0.24089131 0.55405015 ;
	setAttr ".uvtk[384]" -type "float2" 0.24089143 0.55405009 ;
	setAttr ".uvtk[385]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[386]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[387]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[388]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[389]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[390]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[391]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[392]" -type "float2" 0.24089137 0.55405021 ;
	setAttr ".uvtk[393]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[394]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[395]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[396]" -type "float2" 0.24089143 0.55405015 ;
	setAttr ".uvtk[397]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[398]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[399]" -type "float2" 0.24089131 0.55405015 ;
	setAttr ".uvtk[400]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[401]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[402]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[403]" -type "float2" 0.24089143 0.55405009 ;
	setAttr ".uvtk[404]" -type "float2" 0.24089143 0.55405015 ;
	setAttr ".uvtk[405]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[406]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[407]" -type "float2" 0.24089137 0.55405021 ;
	setAttr ".uvtk[408]" -type "float2" 0.24089143 0.55405015 ;
	setAttr ".uvtk[409]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[410]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[411]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[412]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[413]" -type "float2" 0.24089143 0.55405015 ;
	setAttr ".uvtk[452]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[455]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[456]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[457]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[458]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[459]" -type "float2" 0.63069749 0.26060066 ;
	setAttr ".uvtk[461]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[463]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[464]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[465]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[466]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[467]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[468]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[469]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[470]" -type "float2" 0.63069737 0.26060066 ;
	setAttr ".uvtk[471]" -type "float2" 0.63069749 0.26060066 ;
	setAttr ".uvtk[472]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[473]" -type "float2" 0.63069737 0.26060066 ;
	setAttr ".uvtk[474]" -type "float2" 0.63069737 0.26060069 ;
	setAttr ".uvtk[475]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[476]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[477]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[478]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[479]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[480]" -type "float2" 0.63069737 0.26060069 ;
	setAttr ".uvtk[481]" -type "float2" 0.63069749 0.26060066 ;
	setAttr ".uvtk[482]" -type "float2" 0.63069737 0.26060066 ;
	setAttr ".uvtk[483]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[484]" -type "float2" 0.63069749 0.26060066 ;
	setAttr ".uvtk[485]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[486]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[487]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[488]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[489]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[490]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[491]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[492]" -type "float2" 0.63069737 0.26060066 ;
	setAttr ".uvtk[493]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[494]" -type "float2" 0.63069749 0.26060066 ;
	setAttr ".uvtk[495]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[496]" -type "float2" 0.63069749 0.26060066 ;
	setAttr ".uvtk[497]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[498]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[499]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[500]" -type "float2" 0.63069749 0.26060069 ;
	setAttr ".uvtk[501]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[502]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[503]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[504]" -type "float2" 0.63069749 0.26060066 ;
	setAttr ".uvtk[505]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[506]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[507]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[508]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[509]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[510]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[511]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[512]" -type "float2" 0.63069737 0.26060066 ;
	setAttr ".uvtk[513]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[514]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[515]" -type "float2" 0.63069737 0.26060066 ;
	setAttr ".uvtk[516]" -type "float2" 0.63069749 0.26060066 ;
	setAttr ".uvtk[517]" -type "float2" 0.63069749 0.26060066 ;
	setAttr ".uvtk[518]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[519]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[520]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[521]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[522]" -type "float2" 0.63069749 0.26060066 ;
	setAttr ".uvtk[523]" -type "float2" 0.63069737 0.26060069 ;
	setAttr ".uvtk[524]" -type "float2" 0.63069737 0.26060066 ;
	setAttr ".uvtk[525]" -type "float2" 0.63069737 0.26060069 ;
	setAttr ".uvtk[526]" -type "float2" 0.63069737 0.26060069 ;
	setAttr ".uvtk[527]" -type "float2" 0.63069749 0.26060069 ;
	setAttr ".uvtk[528]" -type "float2" 0.63069737 0.26060069 ;
	setAttr ".uvtk[529]" -type "float2" 0.63069737 0.26060066 ;
	setAttr ".uvtk[530]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[531]" -type "float2" 0.63069749 0.26060066 ;
	setAttr ".uvtk[532]" -type "float2" 0.63069737 0.26060066 ;
	setAttr ".uvtk[533]" -type "float2" 0.63069749 0.26060069 ;
	setAttr ".uvtk[534]" -type "float2" 0.63069737 0.26060066 ;
	setAttr ".uvtk[535]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[656]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[657]" -type "float2" 0.24089143 0.55405015 ;
	setAttr ".uvtk[658]" -type "float2" 0.24089137 0.55405021 ;
	setAttr ".uvtk[659]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[660]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[661]" -type "float2" 0.24089131 0.55405015 ;
	setAttr ".uvtk[662]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[663]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[664]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[665]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[666]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[667]" -type "float2" 0.24089143 0.55405009 ;
	setAttr ".uvtk[668]" -type "float2" 0.24089143 0.55405009 ;
	setAttr ".uvtk[669]" -type "float2" 0.24089143 0.55405015 ;
	setAttr ".uvtk[670]" -type "float2" 0.24089131 0.55405015 ;
	setAttr ".uvtk[671]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[672]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[673]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[674]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[675]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[676]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[677]" -type "float2" 0.24089137 0.55405021 ;
	setAttr ".uvtk[678]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[679]" -type "float2" 0.24089143 0.55405009 ;
	setAttr ".uvtk[680]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[681]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[682]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[683]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[684]" -type "float2" 0.24089131 0.55405009 ;
	setAttr ".uvtk[685]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[686]" -type "float2" 0.24089131 0.55405009 ;
	setAttr ".uvtk[687]" -type "float2" 0.63069737 0.26060072 ;
	setAttr ".uvtk[688]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[689]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[690]" -type "float2" 0.63069737 0.26060066 ;
	setAttr ".uvtk[694]" -type "float2" 0.63069749 0.26060069 ;
	setAttr ".uvtk[695]" -type "float2" 0.63069737 0.26060069 ;
	setAttr ".uvtk[696]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[697]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[698]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[703]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[704]" -type "float2" 0.63069749 0.26060066 ;
	setAttr ".uvtk[705]" -type "float2" 0.63069749 0.26060066 ;
	setAttr ".uvtk[706]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[707]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[709]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[710]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[711]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[712]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[713]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[714]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[716]" -type "float2" 0.63069737 0.26060069 ;
	setAttr ".uvtk[717]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[718]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[719]" -type "float2" 0.63069737 0.26060069 ;
	setAttr ".uvtk[720]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[722]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[723]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[724]" -type "float2" 0.63069737 0.26060066 ;
	setAttr ".uvtk[725]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[726]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[727]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[728]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[729]" -type "float2" 0.63069737 0.26060066 ;
	setAttr ".uvtk[730]" -type "float2" 0.63069749 0.26060066 ;
	setAttr ".uvtk[731]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[732]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[733]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[734]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[735]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[736]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[737]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[738]" -type "float2" 0.63069749 0.26060069 ;
	setAttr ".uvtk[739]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[740]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[742]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[744]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[745]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[746]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[747]" -type "float2" 0.24089143 0.55405015 ;
	setAttr ".uvtk[748]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[749]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[750]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[751]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[752]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[753]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[754]" -type "float2" 0.24089137 0.55405021 ;
	setAttr ".uvtk[755]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[756]" -type "float2" 0.24089137 0.55405021 ;
	setAttr ".uvtk[757]" -type "float2" 0.2408914 0.55405009 ;
	setAttr ".uvtk[758]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[759]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[760]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[761]" -type "float2" 0.24089131 0.55405009 ;
	setAttr ".uvtk[762]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[763]" -type "float2" 0.24089131 0.55405015 ;
	setAttr ".uvtk[764]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[765]" -type "float2" 0.24089131 0.55405015 ;
	setAttr ".uvtk[766]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[767]" -type "float2" 0.24089137 0.55405021 ;
	setAttr ".uvtk[768]" -type "float2" 0.2408914 0.55405009 ;
	setAttr ".uvtk[769]" -type "float2" 0.2408914 0.55405009 ;
	setAttr ".uvtk[770]" -type "float2" 0.2408914 0.55405015 ;
	setAttr ".uvtk[771]" -type "float2" 0.2408914 0.55405015 ;
	setAttr ".uvtk[772]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[773]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[774]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[775]" -type "float2" 0.24089137 0.55405015 ;
createNode polyMapCut -n "polyMapCut17";
	rename -uid "E00496B6-4081-53B0-8D8C-E8B387FF9936";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[93]" "e[96]" "e[98:99]" "e[248]" "e[320]" "e[473]" "e[493]" "e[536]" "e[573]" "e[813]" "e[816]" "e[820]" "e[823]" "e[1008]" "e[1046]" "e[1232]" "e[1260]" "e[1267]" "e[1286]";
createNode polyMapCut -n "polyMapCut18";
	rename -uid "187CA7B6-412A-B267-EB5D-0B9B90BA2027";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[347:349]" "e[355]" "e[360]" "e[369]" "e[378]" "e[387]" "e[396]" "e[432]" "e[450]" "e[548]" "e[604]";
createNode polyMapCut -n "polyMapCut19";
	rename -uid "B405FF79-4760-5B8C-BDB4-89B76FB0F5E3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[79]" "e[83]" "e[92]" "e[101]" "e[109]" "e[240]" "e[285]" "e[296]" "e[334]";
createNode Unfold3DUnfold -n "Unfold3DUnfold18";
	rename -uid "3FD7CBF5-4195-85E0-45B4-32B56F8BD010";
	setAttr ".uvl" -type "Int32Array" 819 0 1 2 3 4 5
		 6 7 8 9 10 11 12 13 14 15 16 17
		 18 19 20 21 22 23 24 25 26 27 28 29
		 30 31 32 33 34 35 36 37 38 39 40 41
		 42 43 44 45 46 47 48 49 50 51 52 53
		 54 55 56 57 58 59 60 61 62 63 64 65
		 66 67 68 69 70 71 72 73 74 75 76 77
		 78 79 80 81 82 83 84 85 86 87 88 89
		 90 91 92 93 94 95 96 97 98 99 100 101
		 102 103 104 105 106 107 108 109 110 111 112 113
		 114 115 116 117 118 119 120 121 122 123 124 125
		 126 127 128 129 130 131 132 133 134 135 136 137
		 138 139 140 141 142 143 144 145 146 147 148 149
		 150 151 152 153 154 155 156 157 158 159 160 161
		 162 163 164 165 166 167 168 169 170 171 172 173
		 174 175 176 177 178 179 180 181 182 183 184 185
		 186 187 188 189 190 191 192 193 194 195 196 197
		 198 199 200 201 202 203 204 205 206 207 208 209
		 210 211 212 213 214 215 216 217 218 219 220 221
		 222 223 224 225 226 227 228 229 230 231 232 233
		 234 235 236 237 238 239 240 241 242 243 244 245
		 246 247 248 249 250 251 252 253 254 255 256 257
		 258 259 260 261 262 263 264 265 266 267 268 269
		 270 271 272 273 274 275 276 277 278 279 280 281
		 282 283 284 285 286 287 288 289 290 291 292 293
		 294 295 296 297 298 299 300 301 302 303 304 305
		 306 307 308 309 310 311 312 313 314 315 316 317
		 318 319 320 321 322 323 324 325 326 327 328 329
		 330 331 332 333 334 335 336 337 338 339 340 341
		 342 343 344 345 346 347 348 349 350 351 352 353
		 354 355 356 357 358 359 360 361 362 363 364 365
		 366 367 368 369 370 371 372 373 374 375 376 377
		 378 379 380 381 382 383 384 385 386 387 388 389
		 390 391 392 393 394 395 396 397 398 399 400 401
		 402 403 404 405 406 407 408 409 410 411 412 413
		 414 415 416 417 418 419 420 421 422 423 424 425
		 426 427 428 429 430 431 432 433 434 435 436 437
		 438 439 440 441 442 443 444 445 446 447 448 449
		 450 451 452 453 454 455 456 457 458 459 460 461
		 462 463 464 465 466 467 468 469 470 471 472 473
		 474 475 476 477 478 479 480 481 482 483 484 485
		 486 487 488 489 490 491 492 493 494 495 496 497
		 498 499 500 501 502 503 504 505 506 507 508 509
		 510 511 512 513 514 515 516 517 518 519 520 521
		 522 523 524 525 526 527 528 529 530 531 532 533
		 534 535 536 537 538 539 540 541 542 543 544 545
		 546 547 548 549 550 551 552 553 554 555 556 557
		 558 559 560 561 562 563 564 565 566 567 568 569
		 570 571 572 573 574 575 576 577 578 579 580 581
		 582 583 584 585 586 587 588 589 590 591 592 593
		 594 595 596 597 598 599 600 601 602 603 604 605
		 606 607 608 609 610 611 612 613 614 615 616 617
		 618 619 620 621 622 623 624 625 626 627 628 629
		 630 631 632 633 634 635 636 637 638 639 640 641
		 642 643 644 645 646 647 648 649 650 651 652 653
		 654 655 656 657 658 659 660 661 662 663 664 665
		 666 667 668 669 670 671 672 673 674 675 676 677
		 678 679 680 681 682 683 684 685 686 687 688 689
		 690 691 692 693 694 695 696 697 698 699 700 701
		 702 703 704 705 706 707 708 709 710 711 712 713
		 714 715 716 717 718 719 720 721 722 723 724 725
		 726 727 728 729 730 731 732 733 734 735 736 737
		 738 739 740 741 742 743 744 745 746 747 748 749
		 750 751 752 753 754 755 756 757 758 759 760 761
		 762 763 764 765 766 767 768 769 770 771 772 773
		 774 775 776 777 778 779 780 781 782 783 784 785
		 786 787 788 789 790 791 792 793 794 795 796 797
		 798 799 800 801 802 803 804 805 806 807 808 809
		 810 811 812 813 814 815 816 817 818 ;
	setAttr ".mdp" -type "string" "|pCylinder27|pCylinder27Shape";
	setAttr ".usn" -type "string" "map1";
	setAttr ".miee" yes;
	setAttr ".mue" -type "floatArray" 819 0.799088 0.80592328 0.81210434 0.81722116
		 0.76849401 0.77552664 0.78293133 0.7911281 0.18733296 0.17750677 0.18217723 0.20145194
		 0.22226878 0.23046967 0.22676626 0.20762482 0.86426723 0.87724745 0.88931781 0.79597664
		 0.80951363 0.8231982 0.83660525 0.85031021 0.8214224 0.83191276 0.84153068 0.76744151
		 0.77821302 0.7891947 0.80044776 0.81093568 0.84308326 0.83047801 0.8179279 0.80422586
		 0.79054135 0.8779788 0.86785716 0.8558507 0.1674747 0.14214057 0.15541071 0.17768966
		 0.30230749 0.30237159 0.1325509 0.096969172 0.12912324 0.15914035 0.30281141 0.3025324
		 0.21496494 0.1675705 0.19001439 0.23171382 0.85033244 0.84121484 0.75189006 0.24742042
		 0.2143293 0.8186062 0.79076719 0.13631888 0.16429402 0.30238557 0.20207773 0.23907992
		 0.10458421 0.076519817 0.21625243 0.070733413 0.14366075 0.17827205 0.2160984 0.04190081
		 0.039867498 0.29358461 0.0574379 0.27901515 0.083139837 0.10959383 0.28473243 0.30911949
		 0.28898579 0.25825357 0.33829698 0.32524472 0.24433249 0.37543479 0.23542984 0.19299772
		 0.2503421 0.20678914 0.26312664 0.2294119 0.33488286 0.3487471 0.33352265 0.31577367
		 0.36617205 0.35608718 0.29706252 0.37924883 0.30119202 0.26670858 0.30909094 0.27878049
		 0.3218495 0.29725584 0.21381448 0.24322343 0.21233672 0.18116741 0.27944535 0.25102124
		 0.11930437 0.28715205 0.13310079 0.098221481 0.14718685 0.11683875 0.17583524 0.1452501
		 0.23352194 0.19772415 0.17143133 0.16101284 0.3472282 0.30047297 0.26502511 0.36692747
		 0.35633484 0.36008313 0.37044778 0.38028461 0.38388604 0.39665949 0.40243092 0.33386424
		 0.34273699 0.33845186 0.34552747 0.34655195 0.35124364 0.36697152 0.35612965 0.34424338
		 0.33911943 0.34434545 0.34714478 0.37253475 0.30311933 0.58440053 0.30296206 0.24646443
		 0.56673628 0.54588652 0.50750154 0.50069141 0.49433115 0.4818795 0.46409446 0.52785367
		 0.11207543 0.14486511 0.17819348 0.2230114 0.30270183 0.77900749 0.27726188 0.27739847
		 0.27522889 0.27146342 0.26823443 0.26538935 0.79355675 0.79496366 0.81643522 0.81088591
		 0.91514963 0.83671641 0.85007977 0.89839149 0.91962707 0.94900078 0.86184871 0.7915445
		 0.81010783 0.85530972 0.91155678 0.94017214 0.88723677 0.91620785 0.89578074 0.87648398
		 0.84777367 0.83825666 0.80660856 0.80278087 0.78964221 0.78821772 0.87284958 0.86047584
		 0.82442462 0.79716569 0.78202915 0.86109495 0.85007215 0.82221031 0.78863174 0.77607453
		 0.62319815 0.61961138 0.60027915 0.55898219 0.52575272 0.50607991 0.56134927 0.81377703
		 0.75261873 0.75277799 0.75279021 0.75280899 0.75293446 0.75236738 0.75212961 0.52320272
		 0.94053459 0.91238761 0.8589319 0.81722993 0.79245687 0.75272352 0.75279397 0.79190958
		 0.81359941 0.86098152 0.92015922 0.95078564 0.50609887 0.28979293 0.28977343 0.28869894
		 0.28679606 0.28526452 0.28388283 0.29130498 0.0062388526 0.033520229 0.057064764
		 0.078673862 0.094819225 0.11329544 0.12038063 0.12635469 0.13899785 0.86567974 0.87058324
		 0.88063961 0.89466816 0.9304803 0.95814151 0.97383815 0.97151077 0.96104568 0.92982781
		 0.82524878 0.77366871 0.77511454 0.77194506 0.77513039 0.77294165 0.77162647 0.77068907
		 0.76760864 0.76441103 0.28640664 0.79532778 0.81641865 0.83706027 0.85757959 0.19651306
		 0.19644855 0.83257169 0.83898014 0.84687001 0.86159956 0.8746081 0.88442153 0.89068419
		 0.88955039 0.88344467 0.87918508 0.87713122 0.87837279 0.62222868 0.78683889 0.80542701
		 0.82390743 0.84306508 0.21854348 0.2311867 0.800596 0.80205911 0.81169647 0.81582242
		 0.82454598 0.83118689 0.83612537 0.84020847 0.84146988 0.82872558 0.80707693 0.78478104
		 0.75219953 0.62395853 0.87289602 0.86461431 0.85361558 0.8419798 0.82436711 0.80982476
		 0.79566741 0.78052336 0.76647389 0.75230324 0.79237318 0.79836017 0.80389303 0.80957747
		 0.76101846 0.76691884 0.77316737 0.77790248 0.78360403 0.78867459 0.78395045 0.78862906
		 0.79236192 0.79544181 0.75685829 0.76256347 0.76795071 0.77179098 0.77668589 0.78098637
		 0.77636033 0.77854568 0.77919078 0.7780925 0.75895584 0.76218235 0.76569706 0.76771903
		 0.77219701 0.77481276 0.76688844 0.77726018 0.78997219 0.79033184 0.77714401 0.80158401
		 0.76704979 0.22969042 0.42734736 0.18339561 0.24266475 0.21762449 0.42264724 0.31092545
		 0.40325096 0.29739499 0.38231933 0.28371808 0.37400529 0.27031824 0.37785003 0.26386145
		 0.38616812 0.24935296 0.40753019 0.20198312 0.25662008 0.2855342 0.27503857 0.25109878
		 0.26387024 0.26541397 0.23908782 0.33949146 0.22896017 0.32872373 0.31638241 0.31774786
		 0.30270374 0.30650112 0.28900704 0.30152461 0.28303102 0.29601878 0.29053664 0.26988199
		 0.27646491 0.30786926 0.30102444 0.29483303 0.34600702 0.33844131 0.33141816 0.32402354
		 0.3201203 0.31583142 0.31163323 0.43735167 0.46251345 0.44870207 0.42647535 0.35807934
		 0.35726559 0.32748327 0.3272033 0.47302964 0.50850368 0.49319738 0.46049279 0.39067784
		 0.38239771 0.33716789 0.34023848 0.43806133 0.42720672 0.65292442 0.42208374 0.7128045
		 0.7245577 0.37359461 0.7029686 0.39027625 0.40789604 0.67087823 0.38305971 0.44590899
		 0.47589228 0.46851829 0.44056758 0.37334818 0.36569223 0.32954502 0.33359858 0.41504708
		 0.40275016 0.64824021 0.52944773 0.32689324 0.70326144 0.68208116 0.60908049 0.57448518
		 0.53669614 0.56431961 0.71283966 0.59677976 0.69523114 0.66950917 0.64312059 0.46789801
		 0.44341645 0.46348938 0.4942832 0.41415337 0.42721778 0.50921756 0.37712285 0.51773655
		 0.56002545 0.50249058 0.54597443 0.48940748 0.52313453 0.4178648 0.40391558 0.4189218
		 0.43681797 0.38641968 0.39626819 0.45655113 0.37301332 0.45216447 0.48652491 0.44399503
		 0.47414452 0.43099043 0.4555288 0.53873348 0.50932574 0.54031491 0.57145691 0.47312316
		 0.50166667 0.6337052 0.46572033 0.61973786 0.65452194 0.60548753 0.63580471 0.57673979
		 0.60737044 0.51901037 0.55483282 0.58126873 0.59189785 0.40548059 0.45203426 0.48748153
		 0.38595188 0.39659545 0.39288712 0.3824681 0.37256089 0.36900869 0.35615706 0.41644827
		 0.41960967 0.41074207 0.40779725 0.4148311 0.40648028 0.40185437 0.38677129 0.38134474
		 0.40950507 0.41451302 0.40914333 0.40618262 0.38110435 0.60024309 0.5726198 0.31461176
		 0.54874367 0.52673143 0.510391 0.49167565 0.48441032 0.47818062 0.46501186 0.6376105
		 0.3186264 0.31495744 0.314836 0.31607237 0.31826699 0.3201372 0.32174039 0.70405465
		 0.71309727 0.71522993 0.7106759 0.62592232 0.62771833 0.66814071 0.65504736 0.58562279
		 0.5561676 0.56458861 0.59280038 0.61582279 0.62183702 0.64639843 0.64361483 0.67649734
		 0.69792902 0.71175748 0.69441056 0.68916214 0.66532683 0.66391748 0.68823051 0.71380013
		 0.71569753 0.69205326 0.66948408 0.61474115 0.64452708 0.58511692 0.55437833 0.6177814
		 0.58886236 0.6093632 0.62856734 0.64360559 0.63068306 0.65757203 0.66699356 0.68957973
		 0.68102288 0.69892502 0.7027728 0.71606511 0.71730059 0.63172001 0.64412135 0.65779465
		 0.68026024 0.69307363 0.70761687 0.7227605 0.6427049 0.63969767 0.65075499 0.65379941
		 0.66500294 0.66243261 0.68012822 0.6819768 0.70212573 0.69471586 0.70888996 0.71554959
		 0.72405857 0.72813642 0.69549811 0.7141788 0.67441988 0.62097251 0.65015745 0.56496096
		 0.59368128 0.63323414 0.6313923 0.6238429 0.610156 0.57450569 0.54693586 0.53128362
		 0.53361189 0.54401523 0.62621081 0.67924255 0.72001332 0.73162562 0.72839367 0.7336567
		 0.7283957 0.73272359 0.73403847 0.7350111 0.73715639 0.73812586 0.7398417 0.58984262
		 0.57506204 0.60668212 0.73040819 0.73051572 0.73853868 0.31458518 0.30858105 0.30303144
		 0.35569215 0.34592903 0.34003985 0.3338027 0.32907191 0.32337129 0.31829599 0.32298893
		 0.31828618 0.31451756 0.35911161 0.35011443 0.3444154 0.33902839 0.33518976 0.33028322
		 0.32597104 0.33058277 0.32836449 0.32767245 0.35180524 0.3480165 0.34478775 0.34127957
		 0.33925319 0.33476833 0.33212444 0.34004587 0.52728218 0.73611194 0.56405026 0.61127317
		 0.44567716 0.48552629 0.38966659 0.016548969 0.049469125 0.0078287395 0.18880604
		 0.14158005 0.12042797 0.16019349 0.30878472 0.0009765625 0.48496294 0.36650616 0.42499727
		 0.36777884 0.74484605 0.31265295 0.35043761 0.67054462 0.50411886 0.60321891 0.43142062
		 0.55891973 0.29745236 0.38594067 0.19447936 0.3847644 0.26857209 0.2256448 0.0097169308
		 0.33718872 0.32867309 0.24877128 0.32140341 0.082304336 0.14993927 0.40031335 0.39160872
		 0.39320058 0.36808309 0.35049602 0.39766625 0.36029452 0.35279521 0.36137602 0.38482514
		 0.40238988 0.37158084 0.21280116 0.3967821 0.19094487 0.41696918 0.22446102 0.24916983
		 0.2657508 0.15955552 0.17501898 0.17735724 0.89408261 0.90490812 0.91595429 0.92351007
		 0.8824169 0.85770541 0.84112757 0.81773233 0.93190491 0.92955905 0.32871026 0.31138712
		 0.29732355 0.28970525 0.32975069 0.20628384 0.25831723 0.28914246 0.75520915 0.74786389
		 0.75124657 0.76092118 0.9006601 0.94737649 0.77716702 0.84861881 0.35971981 0.68505949
		 0.40862882 0.66213304 0.30252129 0.73688334 0.44876051 0.88257939 0.3339445 0.43352935
		 0.34678987 0.24528277 0.22185975 0.19571552 0.18198299 0.76681095 0.27104706 0.15483926
		 0.25818476 0.17031272 0.8803218 0.88065916 0.88215363 0.69021273 0.99899065 0.99902344
		 0.98182607 0.94345993 0.97928929 0.6208145 0.88477856 0.9043296 0.94589007 0.021653991
		 0.038907964 0.077274121 0.097408026 0.11006688 0.12200852 0.60548764 0.059434321
		 0.10404419 0.1393158 ;
	setAttr ".mve" -type "floatArray" 819 0.67252022 0.66751766 0.66220915 0.65612137
		 0.68767828 0.68454492 0.68117696 0.67728132 0.061647698 0.085365951 0.10074458 0.1111531
		 0.10518575 0.08918079 0.065699078 0.055862561 0.76596409 0.75705177 0.74685919 0.80173182
		 0.79580116 0.7886194 0.78135777 0.77393138 0.70318258 0.69637924 0.6882838 0.72913218
		 0.72547001 0.72014207 0.71430302 0.70893323 0.73361695 0.7407639 0.74758548 0.75490141
		 0.76149148 0.7055487 0.71568865 0.72533685 0.090067424 0.084294297 0.042505503 0.04564124
		 0.10931668 0.065747462 0.25612971 0.23584631 0.15959868 0.17293753 0.29444343 0.20617916
		 0.28643185 0.2724244 0.1859476 0.19730367 0.30450144 0.30797145 0.32698664 0.058025796
		 0.04808519 0.31957787 0.31856099 0.12198536 0.12970816 0.1523124 0.14351654 0.14686064
		 0.70685941 0.29769671 0.33373824 0.67904603 0.67237127 0.70039475 0.71858901 0.32462665
		 0.47422561 0.40644643 0.52213997 0.34353432 0.57974738 0.64247215 0.54260188 0.5638144
		 0.5939526 0.56863654 0.5770452 0.6124813 0.3985745 0.64439946 0.43365446 0.44516999
		 0.47611055 0.49006343 0.51822758 0.53759718 0.5009709 0.51429164 0.53840512 0.52039886
		 0.52485085 0.55404413 0.40862438 0.56436956 0.42926434 0.43247473 0.45526522 0.46624073
		 0.48490751 0.50156426 0.6114127 0.63896155 0.66558719 0.63843209 0.66021895 0.68630248
		 0.42950016 0.72154856 0.47428477 0.49359027 0.52331537 0.54869252 0.57508403 0.60477042
		 0.59170955 0.55774558 0.50702435 0.46282747 0.67768383 0.63976252 0.62094629 0.48815277
		 0.47799906 0.47237071 0.48268488 0.49494183 0.48907173 0.49883321 0.49305987 0.424622
		 0.42643249 0.44233349 0.4388749 0.46457091 0.45869949 0.3933996 0.38599131 0.39290103
		 0.40981558 0.42602572 0.43877393 0.4078269 0.4065949 0.30414784 0.34679997 0.1019978
		 0.25621656 0.21469595 0.14503774 0.10948665 0.070706323 0.032897253 0.0009765625
		 0.18648143 0.20603113 0.22443931 0.2392493 0.25105411 0.25957596 0.31968862 0.062369902
		 0.10667908 0.15131748 0.20438243 0.25777107 0.29329899 0.55337006 0.49687603 0.50313991
		 0.55060887 0.5731405 0.59227878 0.56368083 0.56571645 0.50845432 0.51284349 0.50581527
		 0.45002872 0.45213467 0.44975004 0.45087084 0.44454741 0.39003128 0.41605002 0.42570904
		 0.39777896 0.42660734 0.39957759 0.43261895 0.41008496 0.43101561 0.40957889 0.35472351
		 0.35818261 0.35967654 0.36191726 0.36093926 0.32164085 0.32461873 0.33767048 0.33785963
		 0.33853361 0.32365113 0.34534886 0.35674709 0.38520351 0.42211565 0.52467018 0.61131966
		 0.63683325 0.56387591 0.51029378 0.44721979 0.42740303 0.40751615 0.35845929 0.33956492
		 0.56672484 0.54194069 0.53552449 0.53354108 0.52678847 0.51868606 0.53774762 0.47589692
		 0.47637984 0.47981128 0.48021218 0.48259875 0.48381335 0.48002723 0.064014211 0.10804815
		 0.15201466 0.20561148 0.25896424 0.29405689 0.34541047 0.35417193 0.31559083 0.27741081
		 0.22626966 0.19676979 0.15264083 0.1163582 0.078479439 0.038643591 0.30491617 0.32173344
		 0.35017693 0.37455988 0.40198877 0.43528396 0.4825286 0.51759404 0.55250114 0.5902977
		 0.61438495 0.56036055 0.52265549 0.50005561 0.47724372 0.44853568 0.42861465 0.40768927
		 0.3592838 0.33939987 0.038908716 0.67487228 0.70605409 0.73714793 0.76986396 0.057163399
		 0.044122141 0.31205887 0.32956102 0.36068752 0.40227202 0.43021071 0.45184511 0.48102486
		 0.5065617 0.53374219 0.56257111 0.59131491 0.61515474 0.64054751 0.67943406 0.71175426
		 0.74435467 0.7778458 0.059214685 0.052677345 0.31736168 0.33813655 0.36272606 0.40850472
		 0.43012509 0.45187998 0.48021767 0.50338989 0.5289104 0.55474001 0.57801026 0.59498918
		 0.6108771 0.33943114 0.3406674 0.34232277 0.3445816 0.34771073 0.34984049 0.35167849
		 0.35183838 0.35265622 0.35249972 0.35193229 0.65619361 0.65327352 0.65010005 0.64392012
		 0.67427301 0.67043871 0.66626662 0.66421461 0.66147786 0.6583308 0.64470637 0.64215821
		 0.6382947 0.63122559 0.65858978 0.65678126 0.65355814 0.6515792 0.64906436 0.64638317
		 0.63829839 0.63615006 0.63317621 0.62828982 0.64453655 0.64529574 0.6444506 0.64333874
		 0.64069718 0.63938177 0.63531643 0.48121592 0.48046187 0.51637781 0.51927984 0.49639273
		 0.50115258 0.83237296 0.085279994 0.90952164 0.84128553 0.8221817 0.10067093 0.87708181
		 0.11119413 0.87114161 0.10539327 0.8639521 0.089518435 0.85668361 0.065688409 0.85316908
		 0.059037615 0.8451829 0.058453355 0.93061918 0.84925139 0.77851003 0.7717132 0.80066413
		 0.80893224 0.7636261 0.79102361 0.80448586 0.78089148 0.80081314 0.83683932 0.79547518
		 0.83023822 0.78963161 0.82291675 0.7870819 0.81968164 0.7842595 0.78138202 0.81247491
		 0.81608689 0.74784625 0.74285823 0.7375614 0.76580477 0.76299983 0.75985581 0.75648308
		 0.75474113 0.7525956 0.75019026 0.089863479 0.083815426 0.042459611 0.046060082 0.10223512
		 0.058009926 0.062390834 0.10679045 0.2553739 0.23481581 0.20515081 0.22380364 0.28611821
		 0.25080839 0.25767365 0.29317304 0.27188802 0.23880747 0.30536726 0.018174769 0.31881684
		 0.31980297 0.05255124 0.31767902 0.04843574 0.044964455 0.31257477 0.021868747 0.17249975
		 0.15892394 0.12144104 0.12943166 0.1971685 0.14687365 0.15133069 0.20433168 0.1856692
		 0.14342372 0.92493188 0.29647291 0.34343255 0.83074611 0.89710832 0.89051008 0.9184984
		 0.93667907 0.3230972 0.69263506 0.35399514 0.74049389 0.79802167 0.8606444 0.76059091
		 0.78171313 0.81194252 0.78672236 0.79489553 0.83043069 0.61669689 0.86259079 0.65182054
		 0.66355085 0.69418067 0.70832312 0.73627031 0.75572711 0.71871501 0.7319836 0.75628036
		 0.73832387 0.74246436 0.77188975 0.62642217 0.78220123 0.64703959 0.65048152 0.67304504
		 0.68420815 0.70269829 0.71953392 0.82956851 0.85705215 0.88369781 0.85659748 0.87826025
		 0.90437216 0.64802033 0.93970239 0.69274575 0.71202296 0.74167854 0.76703274 0.79331684
		 0.82299995 0.80983943 0.77594906 0.72537786 0.68128192 0.89590865 0.85777158 0.83899647
		 0.7056064 0.69547242 0.6897977 0.7001071 0.71233106 0.70642924 0.71607912 0.62754625
		 0.64207673 0.64378005 0.65623486 0.65979218 0.68205041 0.67609584 0.61058104 0.69841415
		 0.61024314 0.62719351 0.64335716 0.65610987 0.62496752 0.35232416 0.3139872 0.34535918
		 0.27601868 0.22507973 0.19573902 0.15180653 0.11561193 0.077812046 0.038266316 0.30614272
		 0.038915444 0.064021237 0.10810341 0.15202181 0.20558544 0.25891697 0.29399478 0.4962168
		 0.51850367 0.51619393 0.49669611 0.56209147 0.59074873 0.59180409 0.56326014 0.5083006
		 0.51272631 0.541659 0.53520542 0.50632429 0.53335923 0.5331977 0.50558752 0.55437756
		 0.57763582 0.55312407 0.55030286 0.5029372 0.50317556 0.52860469 0.52652901 0.47621259
		 0.48030254 0.479669 0.48008582 0.4809334 0.48011416 0.48262087 0.48385352 0.39059752
		 0.41645426 0.42608258 0.3984521 0.40239769 0.43038002 0.4267574 0.39996493 0.40843618
		 0.43010727 0.43267751 0.41032389 0.43095559 0.409522 0.35557419 0.35878035 0.36139598
		 0.36006492 0.3631196 0.36215866 0.36114371 0.32272184 0.34328839 0.34539348 0.32548317
		 0.33028442 0.34842673 0.35034359 0.33820429 0.33851129 0.35209492 0.35215798 0.33812302
		 0.35285822 0.33872429 0.45207581 0.44990867 0.45183128 0.45190752 0.44979611 0.44480753
		 0.45110717 0.32303584 0.34179622 0.35125265 0.37522021 0.40253022 0.43561009 0.48261756
		 0.5174951 0.55220783 0.61454391 0.61388808 0.59469849 0.56020731 0.51915348 0.49995366
		 0.48107615 0.44835871 0.42843106 0.40761149 0.3594034 0.35258994 0.3394976 0.57265198
		 0.58978999 0.56523085 0.52253854 0.47709587 0.50106454 0.73151904 0.7286253 0.72546899
		 0.75177467 0.74958944 0.74572438 0.74153632 0.73948491 0.73676026 0.73363292 0.71999317
		 0.71747798 0.71364188 0.73189914 0.73388791 0.73204672 0.72879893 0.72682083 0.72430837
		 0.72164613 0.71356189 0.71143168 0.70846748 0.71579254 0.71977007 0.72050917 0.71966964
		 0.71855098 0.71593606 0.71464574 0.71049774 0.99578142 0.77011353 0.96551412 0.95506078
		 0.30490294 0.30267173 0.33340061 0.5518766 0.61261463 0.48703423 0.7474438 0.73699319
		 0.30354026 0.30550474 0.40631104 0.35220018 0.62538755 0.81335503 0.62575632 0.74799204
		 0.70539016 0.40639728 0.71025407 0.66845584 0.96954376 0.63414466 0.91542113 0.61759579
		 0.40634042 0.59533721 0.3991805 0.53053099 0.40740684 0.77767211 0.35581207 0.41015279
		 0.40826958 0.75140685 0.69723934 0.44997352 0.41561803 0.67530787 0.68839037 0.64364409
		 0.70474428 0.70841235 0.60324991 0.42642236 0.45793539 0.47098279 0.48739454 0.491218
		 0.48100045 0.93968111 0.056336276 0.92057031 0.062490582 0.94486541 0.94083238 0.93117225
		 0.84754503 0.86531204 0.88313448 0.86438346 0.85532558 0.84527957 0.8342312 0.86956173
		 0.86551476 0.85584617 0.85716653 0.79001504 0.80783999 0.70356667 0.7065925 0.71930587
		 0.73148406 0.84238976 0.81195986 0.75452965 0.93250597 0.64051747 0.65654987 0.67641473
		 0.69046891 0.73663694 0.77225202 0.76702654 0.67917901 0.032964267 0.32001868 0.019955337
		 0.30865771 0.038050864 0.32456118 0.0090447217 0.30700055 0.03862188 0.015541308
		 0.036049116 0.033012219 0.021551134 0.019403402 0.017729672 0.3245188 0.038631715
		 0.0091089681 0.036093149 0.015320903 0.33819655 0.32211533 0.64120525 0.63650537
		 0.47991058 0.52475137 0.56701016 0.611857 0.42169213 0.30866498 0.34434876 0.35574332
		 0.3845976 0.30585632 0.2577678 0.18768045 0.14604104 0.071666189 0.033604492 0.35030571
		 0.21605872 0.11045267 0.0013370878 ;
createNode groupId -n "chibi_template_famine_groupId17";
	rename -uid "0D12AB07-4410-72E2-8E5D-7A9106E371C3";
	setAttr ".ihi" 0;
createNode polyPlane -n "chibi_template_famine_polyPlane1";
	rename -uid "63BE9DAC-4216-B93E-D6CE-86A47A966BC7";
	setAttr ".sw" 2;
	setAttr ".sh" 2;
	setAttr ".cuv" 2;
createNode polyTweak -n "chibi_template_famine_polyTweak8";
	rename -uid "1CC186F6-4012-5771-6968-EAAEF7E1C438";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk[6:8]" -type "float3"  -0.23632935 -0.29288596 -0.13984804
		 -0.26861843 -0.23407707 -0.13984804 -0.30090743 -0.17526814 -0.13984804;
createNode deleteComponent -n "chibi_template_famine_deleteComponent2";
	rename -uid "FA3716F1-4EE3-E8AE-D8F6-12BC15CA6C42";
	setAttr ".dc" -type "componentList" 2 "e[3]" "e[8]";
createNode deleteComponent -n "chibi_template_famine_deleteComponent3";
	rename -uid "C1B9F59F-488B-72BC-9256-D6919D32946B";
	setAttr ".dc" -type "componentList" 1 "vtx[4]";
createNode deleteComponent -n "chibi_template_famine_deleteComponent4";
	rename -uid "EF43383F-41D8-FB66-639B-7C935FCFEE51";
	setAttr ".dc" -type "componentList" 1 "vtx[1]";
createNode deleteComponent -n "chibi_template_famine_deleteComponent5";
	rename -uid "728F0915-4BC2-9332-798C-848724BBC832";
	setAttr ".dc" -type "componentList" 1 "vtx[5]";
createNode polyExtrudeEdge -n "chibi_template_famine_polyExtrudeEdge1";
	rename -uid "97D5850E-4C6E-0939-2FE6-9CAE1387CA4A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[1]";
	setAttr ".ix" -type "matrix" 0.33269262332132188 0 0 0 0 2.2204460492503131e-016 1 0
		 0 -1 2.2204460492503131e-016 0 -0.3733180824870464 6.4507908533992788 0.95625480110587446 1;
	setAttr ".ws" yes;
	setAttr ".mp" -type "matrix" 0.33269262332132188 0 0 0 0 2.2204460492503131e-016 1 0
		 0 -1 2.2204460492503131e-016 0 -0.3733180824870464 6.4507908533992788 0.95625480110587446 1;
	setAttr ".pvt" -type "float3" -0.54011589 5.8470182 0.78079599 ;
	setAttr ".rs" 54020;
	setAttr ".lt" -type "double3" 1.8843433757798067e-016 -0.63989360551058816 0.04984890429623693 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.70454019042756755 5.8470180939617178 0.75558150405825952 ;
	setAttr ".cbx" -type "double3" -0.37569161757509811 5.8470180939617178 0.80601047570647577 ;
createNode polyTweak -n "chibi_template_famine_polyTweak9";
	rename -uid "0E37D180-4681-84ED-65CE-7F9335982688";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[0:5]" -type "float3"  -0.49557996 -0.2006733 0.10377273
		 -0.50713432 -0.15024433 0.10377273 -0.46470112 -0.14992359 -0.0063123945 -0.4842394
		 -0.084479667 -0.0063123945 0 0 0 0 0 0;
createNode polySoftEdge -n "chibi_template_famine_polySoftEdge10";
	rename -uid "BDF6AFA8-4590-014F-7AB5-44BF145D9ED1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.33269262332132188 0 0 0 0 2.2204460492503131e-016 1 0
		 0 -1 2.2204460492503131e-016 0 -0.3733180824870464 6.4507908533992788 0.95625480110587446 1;
	setAttr ".mp" -type "matrix" 0.33269262332132188 0 0 0 0 2.2204460492503131e-016 1 0
		 0 -1 2.2204460492503131e-016 0 -0.3733180824870464 6.4507908533992788 0.95625480110587446 1;
	setAttr ".a" 0;
createNode polyTweak -n "chibi_template_famine_polyTweak15";
	rename -uid "24A13290-4AAB-6699-A470-B4ABE8BD670C";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk[4:6]" -type "float3"  -0.19501568 -1.110223e-016
		 0 -0.19501568 -1.110223e-016 0 0 0 0;
createNode polyMapSew -n "chibi_template_famine_polyMapSew2";
	rename -uid "65AC4BA5-415E-6C49-CEBB-D98A8A17F72F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:9]";
createNode polyTweakUV -n "chibi_template_famine_polyTweakUV2";
	rename -uid "4A0DA2D3-4099-AAE8-C3D2-7B8335C49A4B";
	setAttr ".uopa" yes;
	setAttr -s 22 ".uvtk";
	setAttr ".uvtk[17]" -type "float2" 0.72080421 0.98867071 ;
	setAttr ".uvtk[18]" -type "float2" 0.72080421 0.98867071 ;
	setAttr ".uvtk[19]" -type "float2" 0.72080421 0.98867071 ;
	setAttr ".uvtk[20]" -type "float2" 0.72080421 0.98867071 ;
	setAttr ".uvtk[21]" -type "float2" 0.72080421 0.98867071 ;
	setAttr ".uvtk[22]" -type "float2" 0.72080421 0.98867071 ;
	setAttr ".uvtk[23]" -type "float2" 0.72080421 0.98867077 ;
	setAttr ".uvtk[24]" -type "float2" 0.72080421 0.98867071 ;
	setAttr ".uvtk[25]" -type "float2" 0.72080421 0.98867071 ;
	setAttr ".uvtk[26]" -type "float2" 0.72080421 0.98867071 ;
	setAttr ".uvtk[27]" -type "float2" 0.72080421 0.98867077 ;
	setAttr ".uvtk[28]" -type "float2" 0.72080421 0.98867077 ;
	setAttr ".uvtk[29]" -type "float2" 0.72080421 0.98867071 ;
	setAttr ".uvtk[30]" -type "float2" 0.72080421 0.98867077 ;
	setAttr ".uvtk[31]" -type "float2" 0.72080421 0.98867071 ;
	setAttr ".uvtk[32]" -type "float2" 0.72080421 0.98867071 ;
	setAttr ".uvtk[33]" -type "float2" 0.72080421 0.98867077 ;
	setAttr ".uvtk[42]" -type "float2" 0.72080421 0.98867077 ;
	setAttr ".uvtk[43]" -type "float2" 0.72080421 0.98867071 ;
	setAttr ".uvtk[44]" -type "float2" 0.72080421 0.98867071 ;
	setAttr ".uvtk[45]" -type "float2" 0.72080415 0.98867077 ;
	setAttr ".uvtk[46]" -type "float2" 0.72080421 0.98867071 ;
createNode polyMapCut -n "chibi_template_famine_polyMapCut4";
	rename -uid "A5BC9338-47DC-151F-596C-ACB6DD02A25B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[48]";
createNode Unfold3DUnfold -n "chibi_template_famine_Unfold3DUnfold2";
	rename -uid "249DC314-441D-4E0B-98BF-4CA9957767F8";
	setAttr ".uvl" -type "Int32Array" 7 17 18 19 20 26 45
		 47 ;
	setAttr ".mdp" -type "string" "|pCylinder24|pCylinderShape3";
	setAttr ".usn" -type "string" "map1";
	setAttr ".miee" yes;
	setAttr ".mue" -type "floatArray" 49 0.14149363 0.23980804 0.28631517 0.29481015
		 0.24956962 0.16634779 0.083147742 0.037959859 0.14122988 0.23948018 0.28600913 0.29455677
		 0.24936889 0.16616885 0.082947001 0.037706468 0.18477167 0.55065721 0.53262705 0.51072735
		 0.48606545 0.46277273 0.46588439 0.58696985 0.64384782 0.15060616 0.5725677 0.13404489
		 0.27286807 0.35177419 0.530801 0.41306084 0.7929256 0.28839853 0.054764722 0.0009765625
		 0.18451552 0.31422269 0.36790556 0.3141174 0.1843666 0.054659419 0.27755785 0.70630097
		 0.69063818 0.4225066 0.085689284 0.63014185 0.70630097 ;
	setAttr ".mve" -type "floatArray" 49 0.91263574 0.9916625 0.96477592 0.89990795
		 0.83506179 0.80822784 0.83512932 0.9000122 0.26278958 0.18386695 0.21071583 0.27557686
		 0.3404597 0.36736125 0.34052727 0.27568111 0.99902344 0.41738823 0.40156654 0.38692698
		 0.37784293 0.3793945 0.3848218 0.49764442 0.35628608 0.74944246 0.19439632 0.47468662
		 0.33578736 0.51611507 0.58804399 0.72632033 0.25885516 0.58260494 0.31422269 0.18451552
		 0.36790556 0.3141174 0.1843666 0.054659419 0.0009765625 0.054764722 0.79126143 0.13349491
		 0.43924507 0.26427165 0.62864047 0.34515315 0.13349491 ;
createNode Unfold3DUnfold -n "chibi_template_famine_Unfold3DUnfold3";
	rename -uid "6586618F-4B08-56A6-4FFA-60AE0589D560";
	setAttr ".uvl" -type "Int32Array" 24 17 18 19 20 21 22
		 23 24 25 26 27 28 29 30 31 32 33 42
		 43 44 45 46 47 48 ;
	setAttr ".mdp" -type "string" "|pCylinder24|pCylinderShape3";
	setAttr ".usn" -type "string" "map1";
	setAttr ".miee" yes;
	setAttr ".mue" -type "floatArray" 49 0.11579017 0.19612086 0.23412088 0.24106196
		 0.20409685 0.136098 0.068116948 0.031194855 0.11557467 0.19585298 0.23387082 0.24085492
		 0.20393284 0.13595179 0.067952923 0.030987814 0.15115178 0.019828692 0.017101716
		 0.014288541 0.011618351 0.0093097007 0.0071298191 0.0049076458 0.0027961785 0.99902344
		 0.96506321 0.97840005 0.96090931 0.95738399 0.95766538 0.97400987 0.95438731 0.97692025
		 0.044925764 0.0009765625 0.15094247 0.25692356 0.3007867 0.25683752 0.15082079 0.044839721
		 0.99144983 0.96706325 0.95598608 0.96293414 0.99454194 0.0009765625 0.95305324 ;
	setAttr ".mve" -type "floatArray" 49 0.74587458 0.81044573 0.78847724 0.73547494
		 0.68249047 0.66056502 0.68254566 0.73556012 0.2148986 0.15041254 0.17235021 0.22534683
		 0.27836126 0.30034196 0.27841648 0.22543201 0.81646019 0.49167517 0.47053516 0.44749644
		 0.42444032 0.40324953 0.38200477 0.3589009 0.33578715 0.29794759 0.35241622 0.32113278
		 0.3175202 0.30233079 0.28677619 0.27958706 0.25178728 0.3002845 0.25692356 0.15094247
		 0.3007867 0.25683752 0.15082079 0.044839721 0.0009765625 0.044925764 0.28395784 0.36791864
		 0.26928568 0.33497429 0.3132118 0.31454974 0.23621346 ;
createNode polyTweakUV -n "chibi_template_famine_polyTweakUV3";
	rename -uid "91D3B4AB-4723-200C-9B31-9BA94B479A27";
	setAttr ".uopa" yes;
	setAttr -s 24 ".uvtk";
	setAttr ".uvtk[17]" -type "float2" 1.2968066 1.3773806 ;
	setAttr ".uvtk[18]" -type "float2" 1.298744 1.3665117 ;
	setAttr ".uvtk[19]" -type "float2" 1.3007427 1.3582394 ;
	setAttr ".uvtk[20]" -type "float2" 1.30264 1.3468604 ;
	setAttr ".uvtk[21]" -type "float2" 1.3042803 1.3295708 ;
	setAttr ".uvtk[22]" -type "float2" 1.305829 1.3217248 ;
	setAttr ".uvtk[23]" -type "float2" 1.3074079 1.309132 ;
	setAttr ".uvtk[24]" -type "float2" 1.3089081 1.3040322 ;
	setAttr ".uvtk[25]" -type "float2" 0.45454818 1.4265524 ;
	setAttr ".uvtk[26]" -type "float2" 0.41487187 1.4709113 ;
	setAttr ".uvtk[27]" -type "float2" 0.43402916 1.4496201 ;
	setAttr ".uvtk[28]" -type "float2" 0.41782326 1.4433031 ;
	setAttr ".uvtk[29]" -type "float2" 0.42032784 1.4217496 ;
	setAttr ".uvtk[30]" -type "float2" 0.42012805 1.4098607 ;
	setAttr ".uvtk[31]" -type "float2" 0.42966142 1.4082849 ;
	setAttr ".uvtk[32]" -type "float2" 0.42245716 1.3841902 ;
	setAttr ".uvtk[33]" -type "float2" 0.43255702 1.4288776 ;
	setAttr ".uvtk[42]" -type "float2" 0.44701272 1.4126337 ;
	setAttr ".uvtk[43]" -type "float2" 0.4134509 1.4857856 ;
	setAttr ".uvtk[44]" -type "float2" 0.42132127 1.3932797 ;
	setAttr ".uvtk[45]" -type "float2" 0.41638452 1.4586624 ;
	setAttr ".uvtk[46]" -type "float2" 0.45008951 1.4417393 ;
	setAttr ".uvtk[47]" -type "float2" 1.3102009 1.2944802 ;
	setAttr ".uvtk[48]" -type "float2" 0.42340487 1.3706143 ;
createNode polyMapSew -n "chibi_template_famine_polyMapSew10";
	rename -uid "7BE7A24A-4023-6447-B792-5AAF5F6887F0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:67]";
createNode polyMapCut -n "chibi_template_famine_polyMapCut5";
	rename -uid "FFEDF1C9-43D9-DDAB-426E-1CA0AFF0A194";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[8:11]" "e[14:15]" "e[34:36]" "e[38]" "e[40]" "e[42]" "e[47]" "e[50:52]" "e[54]" "e[56]" "e[58]" "e[63]";
createNode polyMapCut -n "chibi_template_famine_polyMapCut10";
	rename -uid "CBCDA13C-45BD-0C67-4F73-EFAF86E122F6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[39]" "e[47]" "e[149]" "e[199]" "e[207]" "e[309]";
createNode Unfold3DUnfold -n "chibi_template_famine_Unfold3DUnfold11";
	rename -uid "DE4C49B0-4074-D042-57C5-9DA7E65035B4";
	setAttr ".uvl" -type "Int32Array" 228 0 1 2 3 4 5
		 6 7 8 9 10 11 12 13 14 15 16 17
		 18 19 20 21 22 23 24 25 26 27 28 29
		 30 31 32 33 34 35 36 37 38 39 40 41
		 42 43 44 45 46 47 48 49 50 51 52 53
		 54 55 56 57 58 59 60 61 62 63 64 65
		 66 67 68 69 70 71 72 73 74 75 76 77
		 78 79 80 81 82 83 84 85 86 87 88 89
		 90 91 92 93 94 95 96 97 98 99 100 101
		 102 103 104 105 106 107 108 109 110 111 112 113
		 114 115 116 117 118 119 120 121 122 123 124 125
		 126 127 128 129 130 131 132 133 134 135 136 137
		 138 139 140 141 142 143 144 145 146 147 148 149
		 150 151 152 153 154 155 156 157 158 159 160 161
		 162 163 164 165 166 167 168 169 170 171 172 173
		 174 175 176 177 178 179 180 181 182 183 184 185
		 186 187 188 189 190 191 192 193 194 195 196 197
		 198 199 200 201 202 203 204 205 206 207 208 209
		 210 211 212 213 214 215 216 217 218 219 220 221
		 222 223 224 225 226 227 ;
	setAttr ".mdp" -type "string" "|pCube4|pCube4Shape";
	setAttr ".usn" -type "string" "map1";
	setAttr ".miee" yes;
	setAttr ".mue" -type "floatArray" 228 0.76009548 0.5725894 0.73926538 0.71694696
		 0.97970909 0.95912224 0.99902344 0.32430887 0.57282877 0.34576872 0.19692712 0.0009765625
		 0.97812521 0.64405155 0.70746362 0.25436372 0.27504218 0.98936832 0.75384438 0.74595243
		 0.74127483 0.72968304 0.5475204 0.55327153 0.56813914 0.99879622 0.97692615 0.36512259
		 0.91694623 0.92634773 0.93695569 0.20025256 0.96634257 0.96726894 0.19868149 0.19963053
		 0.20025049 0.20022999 0.20010026 0.2002335 0.17577647 0.18883893 0.20025267 0.20025145
		 0.58170718 0.56025642 0.36953557 0.34768608 0.28077045 0.21029598 0.20025231 0.20025732
		 0.20035446 0.20069689 0.20875731 0.23885231 0.65193886 0.75221545 0.21000388 0.20111667
		 0.20045464 0.20029953 0.20025499 0.20025264 0.98451078 0.24557714 0.23685044 0.95375311
		 0.93162924 0.73519123 0.67923379 0.69275874 0.69918257 0.75503063 0.73118669 0.9667806
		 0.87318003 0.9265523 0.93497235 0.89737016 0.32303149 0.3090483 0.35773584 0.29560727
		 0.065852769 0.45400384 0.59247255 0.26118872 0.054973792 0.72627324 0.76435667 0.049403753
		 0.28340295 0.44840643 0.63634872 0.087100849 0.071494743 0.26758152 0.27342564 0.077087313
		 0.88308603 0.034255676 0.033406135 0.88321507 0.44123465 0.63172424 0.72035486 0.75545025
		 0.03570091 0.3308436 0.30231422 0.34958577 0.41981265 0.42886439 0.30558422 0.6556713
		 0.064989902 0.65356302 0.023036741 0.43314976 0.26671585 0.28535685 0.40919629 0.88304085
		 0.80417073 0.043721057 0.71477932 0.016556716 0.65181446 0.45369601 0.44810653 0.47140181
		 0.45511448 0.46193138 0.45443523 0.44703689 0.45339563 0.45397097 0.45400211 0.45400375
		 0.45400518 0.45400465 0.45401964 0.45400402 0.45400065 0.45393297 0.45411101 0.45401669
		 0.45386234 0.26120058 0.79064035 0.88291347 0.24728167 0.035060611 0.021718655 0.26192072
		 0.8824001 0.92614329 0.88380778 0.88197833 0.81391454 0.83230418 0.96912014 0.94928962
		 0.30310485 0.28997621 0.78023511 0.74734879 0.74633151 0.011343786 0.02146166 0.45400387
		 0.65370542 0.45459515 0.6274485 0.21744245 0.23957585 0.42955846 0.0009765625 0.67747128
		 0.35911956 0.34031269 0.81166244 0.77715546 0.69809204 0.71274275 0.22139896 0.94849354
		 0.25452074 0.28613776 0.20025249 0.98065293 0.34812641 0.72033095 0.37362823 0.78226614
		 0.59212548 0.69811457 0.34925237 0.9390893 0.64317006 0.66094601 0.18989152 0.22362341
		 0.3070586 0.74036163 0.96605504 0.98031247 0.063666284 0.73496777 0.96546793 0.2002525
		 0.24929018 0.41393283 0.45400378 0.45400387 0.25573516 0.66909075 0.036722638 0.021554498
		 0.2563023 0.23838639 0.22792503 0.25004768 0.74446678 0.76242101 0.77251023 0.75034893 ;
	setAttr ".mve" -type "floatArray" 228 0.81903154 0.55922067 0.68588042 0.55550784
		 0.65089947 0.51606971 0.78272599 0.61571354 0.63094008 0.67297351 0.72844219 0.83264184
		 0.92412066 0.61864239 0.48510501 0.62527972 0.6922605 0.71758676 0.68631911 0.61967075
		 0.54795021 0.48138291 0.56266713 0.63358265 0.69517612 0.78468364 0.78603667 0.6685307
		 0.3877497 0.45277566 0.51928496 0.83563435 0.65292603 0.72090083 0.83511442 0.83497834
		 0.83562803 0.83561844 0.83555698 0.83559531 0.83285886 0.82411361 0.83563417 0.8356334
		 0.65943241 0.66457915 0.69977194 0.7021147 0.72525221 0.75682878 0.83563459 0.83564574
		 0.83573151 0.83611816 0.84458715 0.95886207 0.65422821 0.65010744 0.83502764 0.83606619
		 0.83577418 0.83566791 0.83563632 0.83563441 0.68434006 0.74108428 0.71018308 0.48275289
		 0.48602864 0.51480681 0.54933852 0.61973321 0.65488499 0.99357027 0.89269781 0.68702871
		 0.86902326 0.85608739 0.86481661 0.87910646 0.168244 0.23855302 0.23780583 0.10390076
		 0.13578545 0.83674276 0.69044197 0.16641361 0.065925486 0.31369033 0.33183545 0.099104807
		 0.035094883 0.25331736 0.2894192 0.0044702212 0.10259222 0.13331999 0.099947624 0.06939774
		 0.87170815 0.30312979 0.33698878 0.87199485 0.28427497 0.32062685 0.34665793 0.36268881
		 0.23775327 0.83716196 0.27363759 0.27332982 0.27899879 0.25055408 0.038837571 0.29398772
		 0.0009765625 0.32310498 0.40201038 0.31482586 0.24057369 0.17425355 0.30796301 0.87213755
		 0.35032848 0.13235582 0.3792285 0.30024597 0.35370526 0.83709908 0.84335196 0.83350813
		 0.83630067 0.82821661 0.83625859 0.83685142 0.83708602 0.83676833 0.83674425 0.83674264
		 0.83673829 0.83674198 0.8367306 0.83674294 0.83675081 0.836815 0.83668137 0.83671492
		 0.83684975 0.26629934 0.37863544 0.87183964 0.30471957 0.26903555 0.26686275 0.30436584
		 0.8708874 0.86144376 0.87292278 0.8724308 0.90933281 0.8537336 0.84753072 0.92356396
		 0.30923051 0.13827758 0.26000091 0.24682327 0.39269 0.33343118 0.23590446 0.8367427
		 0.22806396 0.18243271 0.35157961 0.43380743 0.437365 0.17883775 0.3984558 0.23684759
		 0.16201788 0.30826092 0.27359396 0.40618703 0.69044298 0.51950949 0.63825786 0.44951278
		 0.7711367 0.75785726 0.83563435 0.58837026 0.60706776 0.41644269 0.730748 0.81571883
		 0.68847299 0.4199689 0.73273516 0.38446555 0.54287064 0.68921798 0.65166241 0.78445768
		 0.82770687 0.64785373 0.62163156 0.61993921 0.70790207 0.62210143 0.59014124 0.83563429
		 0.26856068 0.97792757 0.83674282 0.83674276 0.23814921 0.82445216 0.20630981 0.20439722
		 0.33822587 0.33680096 0.36891377 0.37245905 0.71969545 0.71849704 0.75071663 0.75401652 ;
createNode polyMapCut -n "chibi_template_famine_polyMapCut11";
	rename -uid "089459FE-4A02-824B-F21E-4FA469AA8AB7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[114:119]" "e[153]" "e[274:279]" "e[313]" "e[317]" "e[325]";
createNode Unfold3DUnfold -n "chibi_template_famine_Unfold3DUnfold12";
	rename -uid "F992492B-4141-1167-8472-D99BB74E3006";
	setAttr ".uvl" -type "Int32Array" 247 0 1 2 3 4 5
		 6 7 8 9 10 11 12 13 14 15 16 17
		 18 19 20 21 22 23 24 25 26 27 28 29
		 30 31 32 33 34 35 36 37 38 39 40 41
		 42 43 44 45 46 47 48 49 50 51 52 53
		 54 55 56 57 58 59 60 61 62 63 64 65
		 66 67 68 69 70 71 72 73 74 75 76 77
		 78 79 80 81 82 83 84 85 86 87 88 89
		 90 91 92 93 94 95 96 97 98 99 100 101
		 102 103 104 105 106 107 108 109 110 111 112 113
		 114 115 116 117 118 119 120 121 122 123 124 125
		 126 127 128 129 130 131 132 133 134 135 136 137
		 138 139 140 141 142 143 144 145 146 147 148 149
		 150 151 152 153 154 155 156 157 158 159 160 161
		 162 163 164 165 166 167 168 169 170 171 172 173
		 174 175 176 177 178 179 180 181 182 183 184 185
		 186 187 188 189 190 191 192 193 194 195 196 197
		 198 199 200 201 202 203 204 205 206 207 208 209
		 210 211 212 213 214 215 216 217 218 219 220 221
		 222 223 224 225 226 227 228 229 230 231 232 233
		 234 235 236 237 238 239 240 241 242 243 244 245
		 246 ;
	setAttr ".mdp" -type "string" "|pCube4|pCube4Shape";
	setAttr ".usn" -type "string" "map1";
	setAttr ".miee" yes;
	setAttr ".mue" -type "floatArray" 247 0.75635386 0.56591147 0.73519754 0.71252966
		 0.97940665 0.95849741 0.99902344 0.31374285 0.56615454 0.33553877 0.1843663 0.36815149
		 0.08515466 0.6384927 0.70289779 0.24270236 0.26370466 0.9892171 0.75000489 0.74198937
		 0.73723853 0.72546518 0.54044986 0.54629105 0.56139147 0.082032174 0.97658008 0.3551957
		 0.91566092 0.92520958 0.93598366 0.91215509 0.9658308 0.96677166 0.57071984 0.57814819
		 0.64650208 0.65446144 0.61412585 0.61457479 0.45169374 0.4546718 0.79828072 0.80566913
		 0.57517201 0.55338532 0.35967779 0.33748615 0.26952261 0.19794452 0.80282599 0.64850533
		 0.6157608 0.58037728 0.45792028 0.38096845 0.64650351 0.74835044 0.45993572 0.58316231
		 0.61610746 0.64774787 0.7954092 0.90822631 0.98428351 0.23377818 0.22491483 0.95304412
		 0.93057388 0.73105961 0.67422587 0.68796265 0.69448709 0.081303731 0.082915097 0.96627569
		 0.21975052 0.21829972 0.22811447 0.22703315 0.32807484 0.31387269 0.36332268 0.30022117
		 0.06686873 0.0093039591 0.64571273 0.26526365 0.055819385 0.73763138 0.77631116 0.050162122
		 0.28782576 0.45541316 0.64629865 0.088449553 0.072599053 0.27175656 0.27769217 0.078279205
		 0.3563686 0.034776825 0.033913981 0.37227622 0.44812906 0.64160168 0.73162031 0.76726532
		 0.036244694 0.6455428 0.30703315 0.35504496 0.4263716 0.43556511 0.31035438 0.66592383
		 0.065992348 0.66378254 0.023382202 0.43991759 0.27087733 0.28981024 0.415589 0.36768162
		 0.81674868 0.044390436 0.72595745 0.0168007 0.66200656 0.38251892 0.5049578 0.50919813
		 0.39235246 0.50650942 0.38480517 0.50322807 0.37974331 0.31536722 0.16719115 0.166223
		 0.31685239 0.16049673 0.30874249 0.16215141 0.31459096 0.34722835 0.34890994 0.34848502
		 0.34675232 0.26527566 0.80300647 0.35456172 0.25113881 0.035594366 0.022043476 0.2660071
		 0.28559577 0.29151839 0.30038452 0.29638633 0.1497532 0.15109639 0.15522406 0.1577011
		 0.30783617 0.29450193 0.79243827 0.75903696 0.75800377 0.011506137 0.021782456 0.0009765625
		 0.66392714 0.4616988 0.63725907 0.2208323 0.2433123 0.43627003 0.0009765625 0.68806517
		 0.36472806 0.34562668 0.82435775 0.78931046 0.69337946 0.70825958 0.20922138 0.94770223
		 0.24286185 0.27497399 0.91693765 0.98036522 0.33793336 0.71596664 0.36383456 0.77887172
		 0.58575344 0.69340235 0.339077 0.9381507 0.63759738 0.65565175 0.17722052 0.21148066
		 0.38005933 0.73631096 0.96553874 0.98001945 0.36999133 0.73083264 0.9649424 0.92330354
		 0.25317878 0.64029276 0.016921362 0.002196318 0.25972468 0.64679128 0.037282418 0.021876747
		 0.2603007 0.24210422 0.23147903 0.25394812 0.74048042 0.75871581 0.76896304 0.74645472
		 0.14640935 0.22258657 0.28714567 0.36082539 0.17288068 0.0076568811 0.318874 0.34314403
		 0.37513441 0.50063664 0.64195013 0.07832808 0.79008329 0.90025365 0.64441389 0.62033826
		 0.58802968 0.46252647 0.3766481 ;
	setAttr ".mve" -type "floatArray" 247 0.83421135 0.57033187 0.69897509 0.56656092
		 0.66344631 0.52650511 0.79733723 0.62770945 0.64317441 0.68586606 0.74220341 0.91577178
		 0.93873268 0.63068414 0.49505553 0.63742536 0.70545512 0.73117793 0.69942069 0.63172853
		 0.55888486 0.49127516 0.57383227 0.64585835 0.70841634 0.96125072 0.80069977 0.68135369
		 0.39617565 0.46221989 0.52977073 0.89485663 0.66550457 0.73454392 0.91912246 0.91114795
		 0.91449529 0.92437315 0.91953081 0.91211331 0.91850418 0.90591699 0.90592384 0.91745651
		 0.67211288 0.67734027 0.71308416 0.71546358 0.73896343 0.77103454 0.93899763 0.94524008
		 0.94557714 0.94345725 0.94143814 0.94544697 0.6668272 0.66264188 0.95890099 0.95430899
		 0.95906496 0.96262348 0.95526695 0.94742209 0.69741058 0.75504345 0.72365832 0.49266657
		 0.49599364 0.52522248 0.56029493 0.63179201 0.66749424 0.90469724 0.99558336 0.70014131
		 0.90048641 0.88355815 0.95432383 0.93217564 0.1708634 0.24227346 0.24151456 0.10551255
		 0.13789655 0.80215436 0.81334168 0.16900435 0.066942587 0.31858742 0.3370167 0.1006415
		 0.035629176 0.257269 0.29393619 0.0045249318 0.10418352 0.13539249 0.10149751 0.070469216
		 0.875893 0.30786151 0.3422507 0.94769508 0.2887114 0.32563257 0.35207129 0.36835319
		 0.24146119 0.87452221 0.27790746 0.27759486 0.28335261 0.25446245 0.039430469 0.29857627
		 0.0009765625 0.3281495 0.40829057 0.31974074 0.24432579 0.17696707 0.3127704 0.92534029
		 0.35579932 0.13441321 0.38515192 0.30493253 0.359229 0.85751802 0.85595268 0.8328501
		 0.83332235 0.82045454 0.8253836 0.87333363 0.86832178 0.87627208 0.86978942 0.81937861
		 0.82812732 0.83161372 0.83804095 0.85283405 0.85897571 0.85950971 0.83351129 0.82608426
		 0.87298334 0.27045429 0.38454959 0.89344871 0.3094762 0.27323335 0.27102652 0.3091169
		 0.89713037 0.98388594 0.95107347 0.92874753 0.8990894 0.9917354 0.95691031 0.93448418
		 0.31405774 0.14042771 0.26405722 0.2506732 0.39882421 0.33863741 0.23958342 0.81549627
		 0.23162013 0.1852743 0.35707003 0.44058552 0.44419882 0.18162304 0.40468031 0.24054132
		 0.16453978 0.31307298 0.27786312 0.41253263 0.70360911 0.52999884 0.65060681 0.45890594
		 0.78556651 0.77207905 0.93574601 0.59993792 0.61892819 0.42531797 0.74454528 0.83084673
		 0.70160824 0.42889941 0.74656361 0.39284006 0.55372578 0.70236492 0.66422129 0.79909611
		 0.87032622 0.66035295 0.6337201 0.63200122 0.90161747 0.63419729 0.60173666 0.90582138
		 0.27275103 0.8599661 0.77192569 0.8465358 0.24186333 0.82777148 0.20952532 0.20758279
		 0.34350717 0.34205997 0.37467563 0.37827644 0.73331964 0.73210251 0.7648266 0.76817822
		 0.88177979 0.98764545 0.87992668 0.98025459 0.79874885 0.86025482 0.80769348 0.80400687
		 0.80167681 0.7981686 0.78027534 0.887447 0.88568527 0.86620915 0.89397883 0.89007962
		 0.88727719 0.88406169 0.96030927 ;
createNode polyTweakUV -n "chibi_template_famine_polyTweakUV10";
	rename -uid "929B8770-474A-872F-C8F1-C19DE1CB628D";
	setAttr ".uopa" yes;
	setAttr -s 70 ".uvtk";
	setAttr ".uvtk[11]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[31]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[34]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[35]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[36]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[37]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[38]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[39]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[40]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[41]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[42]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[43]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[50]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[51]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[52]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[53]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[54]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[55]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[58]" -type "float2" 0.061186962 0.013597082 ;
	setAttr ".uvtk[59]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[60]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[61]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[62]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[63]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[85]" -type "float2" -0.0067985542 -0.02039567 ;
	setAttr ".uvtk[86]" -type "float2" -0.0067985309 -0.02039567 ;
	setAttr ".uvtk[109]" -type "float2" -0.0067985309 -0.02039567 ;
	setAttr ".uvtk[129]" -type "float2" -0.0067985607 -0.02039567 ;
	setAttr ".uvtk[130]" -type "float2" -0.0067985309 -0.02039567 ;
	setAttr ".uvtk[131]" -type "float2" -0.0067985309 -0.02039567 ;
	setAttr ".uvtk[132]" -type "float2" -0.0067985607 -0.02039567 ;
	setAttr ".uvtk[133]" -type "float2" -0.0067985309 -0.02039567 ;
	setAttr ".uvtk[134]" -type "float2" -0.0067985607 -0.02039567 ;
	setAttr ".uvtk[135]" -type "float2" -0.0067985607 -0.02039567 ;
	setAttr ".uvtk[136]" -type "float2" -0.0067985607 -0.02039567 ;
	setAttr ".uvtk[137]" -type "float2" -0.0067985607 -0.02039567 ;
	setAttr ".uvtk[138]" -type "float2" -0.0067985607 -0.02039567 ;
	setAttr ".uvtk[139]" -type "float2" -0.0067985607 -0.02039567 ;
	setAttr ".uvtk[140]" -type "float2" -0.0067985607 -0.02039567 ;
	setAttr ".uvtk[141]" -type "float2" -0.0067985607 -0.02039567 ;
	setAttr ".uvtk[142]" -type "float2" -0.0067985607 -0.02039567 ;
	setAttr ".uvtk[143]" -type "float2" -0.0067985607 -0.02039567 ;
	setAttr ".uvtk[144]" -type "float2" -0.0067985607 -0.02039567 ;
	setAttr ".uvtk[145]" -type "float2" -0.0067985607 -0.02039567 ;
	setAttr ".uvtk[146]" -type "float2" -0.0067985607 -0.02039567 ;
	setAttr ".uvtk[147]" -type "float2" -0.0067985607 -0.02039567 ;
	setAttr ".uvtk[148]" -type "float2" -0.0067985607 -0.02039567 ;
	setAttr ".uvtk[171]" -type "float2" -0.0067985542 -0.02039567 ;
	setAttr ".uvtk[190]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[204]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[208]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[211]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[213]" -type "float2" -0.0067985309 -0.02039567 ;
	setAttr ".uvtk[214]" -type "float2" -0.0067985542 -0.02039567 ;
	setAttr ".uvtk[215]" -type "float2" -0.0067985542 -0.02039567 ;
	setAttr ".uvtk[217]" -type "float2" -0.0067985309 -0.02039567 ;
	setAttr ".uvtk[232]" -type "float2" -0.0067985607 -0.02039567 ;
	setAttr ".uvtk[233]" -type "float2" -0.0067985542 -0.02039567 ;
	setAttr ".uvtk[234]" -type "float2" -0.0067985607 -0.02039567 ;
	setAttr ".uvtk[235]" -type "float2" -0.0067985607 -0.02039567 ;
	setAttr ".uvtk[236]" -type "float2" -0.0067985607 -0.02039567 ;
	setAttr ".uvtk[237]" -type "float2" -0.0067985607 -0.02039567 ;
	setAttr ".uvtk[238]" -type "float2" -0.0067985309 -0.02039567 ;
	setAttr ".uvtk[240]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[241]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[242]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[243]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[244]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[245]" -type "float2" 0.061186992 0.013597082 ;
	setAttr ".uvtk[246]" -type "float2" 0.061186992 0.013597082 ;
createNode Unfold3DUnfold -n "chibi_template_famine_Unfold3DUnfold13";
	rename -uid "8488E828-452C-67C8-5D60-BBA3578424FE";
	setAttr ".uvl" -type "Int32Array" 247 0 1 2 3 4 5
		 6 7 8 9 10 11 12 13 14 15 16 17
		 18 19 20 21 22 23 24 25 26 27 28 29
		 30 31 32 33 34 35 36 37 38 39 40 41
		 42 43 44 45 46 47 48 49 50 51 52 53
		 54 55 56 57 58 59 60 61 62 63 64 65
		 66 67 68 69 70 71 72 73 74 75 76 77
		 78 79 80 81 82 83 84 85 86 87 88 89
		 90 91 92 93 94 95 96 97 98 99 100 101
		 102 103 104 105 106 107 108 109 110 111 112 113
		 114 115 116 117 118 119 120 121 122 123 124 125
		 126 127 128 129 130 131 132 133 134 135 136 137
		 138 139 140 141 142 143 144 145 146 147 148 149
		 150 151 152 153 154 155 156 157 158 159 160 161
		 162 163 164 165 166 167 168 169 170 171 172 173
		 174 175 176 177 178 179 180 181 182 183 184 185
		 186 187 188 189 190 191 192 193 194 195 196 197
		 198 199 200 201 202 203 204 205 206 207 208 209
		 210 211 212 213 214 215 216 217 218 219 220 221
		 222 223 224 225 226 227 228 229 230 231 232 233
		 234 235 236 237 238 239 240 241 242 243 244 245
		 246 ;
	setAttr ".mdp" -type "string" "|pCube4|pCube4Shape";
	setAttr ".usn" -type "string" "map1";
	setAttr ".miee" yes;
	setAttr ".mue" -type "floatArray" 247 0.75635386 0.56591147 0.73519754 0.71252966
		 0.97940665 0.95849741 0.99902344 0.31374285 0.56615454 0.33553877 0.1843663 0.36815149
		 0.08515466 0.6384927 0.70289779 0.24270236 0.26370466 0.9892171 0.75000489 0.74198937
		 0.73723853 0.72546518 0.54044986 0.54629105 0.56139147 0.082032174 0.97658008 0.3551957
		 0.91566086 0.92520958 0.93598366 0.91215509 0.9658308 0.96677166 0.57071984 0.57814819
		 0.64650208 0.65446144 0.61412585 0.61457479 0.45169374 0.4546718 0.79828072 0.80566913
		 0.57517201 0.55338532 0.35967779 0.33748615 0.26952261 0.19794452 0.80282599 0.64850533
		 0.6157608 0.58037728 0.45792028 0.38096845 0.64650351 0.74835044 0.45993572 0.58316231
		 0.61610746 0.64774787 0.7954092 0.90822631 0.98428351 0.23377818 0.22491483 0.95304412
		 0.93057388 0.73105961 0.67422587 0.68796265 0.69448709 0.081303731 0.082915097 0.96627569
		 0.21975052 0.21829972 0.22811447 0.22703315 0.32807484 0.31387269 0.36332268 0.30022117
		 0.06686873 0.0093039591 0.64571273 0.26526365 0.055819385 0.73763138 0.77631116 0.050162125
		 0.28782576 0.45541316 0.64629865 0.088449553 0.072599053 0.27175656 0.27769217 0.078279212
		 0.3563686 0.034776825 0.033913981 0.37227622 0.44812906 0.64160168 0.73162031 0.76726532
		 0.036244694 0.6455428 0.30703315 0.35504496 0.4263716 0.43556511 0.31035438 0.66592383
		 0.065992348 0.66378254 0.023382202 0.43991759 0.27087733 0.28981024 0.415589 0.36768162
		 0.81674868 0.044390436 0.72595745 0.0168007 0.66200656 0.38251892 0.5049578 0.50919813
		 0.39235246 0.50650942 0.38480517 0.50322807 0.37974331 0.31536722 0.16719115 0.166223
		 0.31685239 0.16049673 0.30874249 0.16215141 0.31459096 0.34722835 0.34890994 0.34848502
		 0.34675232 0.26527566 0.80300647 0.35456172 0.25113881 0.035594366 0.022043476 0.2660071
		 0.28559577 0.29151839 0.30038452 0.29638633 0.1497532 0.15109639 0.15522406 0.1577011
		 0.30783617 0.29450193 0.79243827 0.75903696 0.75800377 0.011506137 0.021782456 0.0009765625
		 0.66392714 0.4616988 0.63725907 0.2208323 0.2433123 0.43627003 0.0009765625 0.68806517
		 0.36472806 0.34562668 0.82435775 0.78931046 0.69337946 0.70825958 0.20922138 0.94770223
		 0.24286185 0.27497399 0.91693765 0.98036522 0.33793336 0.71596664 0.36383456 0.77887172
		 0.58575344 0.69340235 0.339077 0.9381507 0.63759738 0.65565175 0.17722052 0.21148066
		 0.38005933 0.73631096 0.96553874 0.98001945 0.36999133 0.73083264 0.9649424 0.92330354
		 0.25317878 0.64029276 0.016921362 0.002196318 0.25972468 0.64679128 0.037282418 0.021876747
		 0.2603007 0.24210422 0.23147903 0.25394812 0.74048042 0.75871581 0.76896304 0.74645472
		 0.14640935 0.22258657 0.28714567 0.36082539 0.17288068 0.0076568811 0.318874 0.34314403
		 0.37513441 0.50063664 0.64195013 0.07832808 0.79008329 0.90025365 0.64441389 0.62033826
		 0.58802968 0.46252647 0.3766481 ;
	setAttr ".mve" -type "floatArray" 247 0.83421135 0.57033187 0.69897509 0.56656092
		 0.66344631 0.52650511 0.79733723 0.62770945 0.64317441 0.68586606 0.74220341 0.91577178
		 0.93873268 0.63068414 0.49505556 0.63742536 0.70545512 0.73117793 0.69942069 0.63172853
		 0.55888492 0.49127516 0.57383227 0.64585835 0.70841634 0.96125072 0.80069977 0.68135369
		 0.39617565 0.46221989 0.52977073 0.89485663 0.66550457 0.73454392 0.91912246 0.91114795
		 0.91449529 0.92437315 0.91953081 0.91211331 0.91850418 0.90591699 0.90592384 0.91745651
		 0.67211288 0.67734027 0.71308416 0.71546358 0.73896343 0.77103454 0.93899763 0.94524008
		 0.94557714 0.94345725 0.9414382 0.94544697 0.6668272 0.66264188 0.95890105 0.95430899
		 0.95906496 0.96262348 0.95526695 0.94742215 0.69741058 0.75504345 0.72365832 0.49266657
		 0.49599364 0.52522248 0.56029493 0.63179201 0.66749424 0.90469724 0.99558336 0.70014131
		 0.90048641 0.88355815 0.95432383 0.93217564 0.1708634 0.24227346 0.24151456 0.10551255
		 0.13789655 0.80215436 0.81334168 0.16900435 0.066942587 0.31858742 0.3370167 0.1006415
		 0.035629176 0.257269 0.29393619 0.0045249318 0.10418352 0.13539249 0.10149751 0.070469216
		 0.87589306 0.30786151 0.3422507 0.94769508 0.2887114 0.32563257 0.35207129 0.36835319
		 0.24146119 0.87452221 0.27790746 0.27759486 0.28335261 0.25446248 0.039430473 0.29857627
		 0.0009765625 0.3281495 0.40829057 0.31974074 0.24432579 0.17696707 0.3127704 0.92534029
		 0.35579932 0.13441321 0.38515192 0.30493253 0.359229 0.85751802 0.85595268 0.8328501
		 0.83332235 0.82045454 0.8253836 0.87333363 0.86832178 0.87627208 0.86978942 0.81937861
		 0.82812732 0.83161372 0.83804095 0.85283405 0.85897571 0.85950971 0.83351129 0.82608426
		 0.87298334 0.27045429 0.38454959 0.89344871 0.3094762 0.27323335 0.27102652 0.3091169
		 0.89713043 0.98388594 0.95107347 0.92874753 0.8990894 0.9917354 0.95691031 0.93448418
		 0.31405774 0.14042771 0.26405722 0.2506732 0.39882421 0.33863741 0.23958342 0.81549627
		 0.23162013 0.18527432 0.35707003 0.44058552 0.44419882 0.18162304 0.40468031 0.24054132
		 0.16453978 0.31307298 0.27786312 0.41253263 0.70360911 0.52999884 0.65060681 0.45890594
		 0.78556651 0.77207905 0.93574607 0.59993792 0.61892819 0.42531797 0.74454528 0.83084673
		 0.70160824 0.42889941 0.74656361 0.39284006 0.55372578 0.70236492 0.66422129 0.79909611
		 0.87032622 0.66035295 0.6337201 0.63200122 0.90161747 0.63419729 0.60173666 0.90582138
		 0.27275103 0.8599661 0.77192569 0.8465358 0.24186333 0.82777148 0.20952532 0.20758279
		 0.34350717 0.34205997 0.37467563 0.37827644 0.73331964 0.73210251 0.7648266 0.76817822
		 0.88177979 0.98764545 0.87992668 0.98025459 0.79874885 0.86025482 0.80769354 0.80400687
		 0.80167681 0.7981686 0.78027534 0.88744706 0.88568527 0.86620921 0.89397883 0.89007962
		 0.88727719 0.88406169 0.96030927 ;
createNode Unfold3DOptimize -n "chibi_template_famine_Unfold3DOptimize2";
	rename -uid "4755E0A8-4B09-EE27-3010-5D94A991DBC8";
	setAttr ".uvl" -type "Int32Array" 247 0 1 2 3 4 5
		 6 7 8 9 10 11 12 13 14 15 16 17
		 18 19 20 21 22 23 24 25 26 27 28 29
		 30 31 32 33 34 35 36 37 38 39 40 41
		 42 43 44 45 46 47 48 49 50 51 52 53
		 54 55 56 57 58 59 60 61 62 63 64 65
		 66 67 68 69 70 71 72 73 74 75 76 77
		 78 79 80 81 82 83 84 85 86 87 88 89
		 90 91 92 93 94 95 96 97 98 99 100 101
		 102 103 104 105 106 107 108 109 110 111 112 113
		 114 115 116 117 118 119 120 121 122 123 124 125
		 126 127 128 129 130 131 132 133 134 135 136 137
		 138 139 140 141 142 143 144 145 146 147 148 149
		 150 151 152 153 154 155 156 157 158 159 160 161
		 162 163 164 165 166 167 168 169 170 171 172 173
		 174 175 176 177 178 179 180 181 182 183 184 185
		 186 187 188 189 190 191 192 193 194 195 196 197
		 198 199 200 201 202 203 204 205 206 207 208 209
		 210 211 212 213 214 215 216 217 218 219 220 221
		 222 223 224 225 226 227 228 229 230 231 232 233
		 234 235 236 237 238 239 240 241 242 243 244 245
		 246 ;
	setAttr ".mdp" -type "string" "|pCube4|pCube4Shape";
	setAttr ".bi" no;
	setAttr ".usn" -type "string" "map1";
	setAttr ".miee" yes;
	setAttr ".mue" -type "floatArray" 247 0.75749415 0.56544769 0.73511165 0.712394
		 0.98000973 0.9584192 0.99989444 0.31348917 0.56595999 0.33538777 0.18383902 0.36834481
		 0.085160531 0.63839674 0.70355576 0.24245013 0.26338953 0.98997766 0.75030291 0.7410813
		 0.73734736 0.72610235 0.53984374 0.54629159 0.56082654 0.082040422 0.97746867 0.35464785
		 0.91556591 0.92510951 0.93595558 0.91205555 0.9664439 0.96753973 0.57117373 0.57786614
		 0.64680612 0.65384221 0.61377329 0.61448634 0.45179948 0.45473066 0.79841441 0.80578262
		 0.57518232 0.55324733 0.35924822 0.33703676 0.26910672 0.19732755 0.80296814 0.64699912
		 0.61564237 0.58160448 0.4579441 0.38119337 0.64617473 0.74785376 0.46000338 0.58369553
		 0.61590964 0.64754391 0.79593837 0.90782207 0.98498553 0.23328999 0.22442925 0.95292699
		 0.93048197 0.73151845 0.67351496 0.68793374 0.69436491 0.081344545 0.082894132 0.96699083
		 0.21955888 0.21802019 0.22818935 0.22709905 0.32878172 0.31387228 0.36340588 0.29952228
		 0.066837206 0.0093193967 0.64539486 0.26510793 0.05587066 0.73796022 0.77681768 0.050212443
		 0.28697157 0.45540756 0.64684683 0.088466741 0.07262475 0.27126172 0.27701169 0.078309923
		 0.35653418 0.034115952 0.033213094 0.37221384 0.448266 0.64205211 0.73205733 0.76778293
		 0.035819054 0.64532381 0.3071481 0.35537052 0.42635635 0.43575352 0.30950132 0.66607845
		 0.066032834 0.66424972 0.022588866 0.440496 0.27160352 0.28993487 0.41583261 0.36763981
		 0.81730384 0.044406496 0.72678149 0.016150443 0.66266745 0.38134387 0.50499368 0.50918418
		 0.39178109 0.50647056 0.38502538 0.50324857 0.37930098 0.3157514 0.16715175 0.16614304
		 0.31643683 0.16039754 0.30940774 0.16214116 0.31620079 0.34746552 0.34927154 0.34855038
		 0.3471722 0.26561296 0.80365777 0.35464638 0.25085807 0.03501546 0.02147205 0.26609018
		 0.28569895 0.29147121 0.30029184 0.29635799 0.14970396 0.15114081 0.15528107 0.15769733
		 0.30853418 0.29397139 0.79268539 0.75928462 0.75883961 0.010811693 0.021327442 0.0010644819
		 0.66388988 0.462286 0.63751906 0.2197479 0.2422267 0.43671605 0.00019920539 0.68830752
		 0.36534709 0.34627491 0.82460153 0.79016417 0.69270289 0.70876157 0.20897353 0.94758093
		 0.24206461 0.27418724 0.91663778 0.98050624 0.33795828 0.71676838 0.36360204 0.78001118
		 0.58551556 0.69420367 0.33844227 0.93803078 0.63696659 0.65501857 0.17697975 0.21066877
		 0.38031247 0.73594403 0.9659698 0.98048151 0.37018794 0.7301293 0.96509939 0.9231416
		 0.25366804 0.64011353 0.01676812 0.0024824447 0.26065931 0.64653033 0.037057664 0.021668721
		 0.25935754 0.24123049 0.23050071 0.25295714 0.74144435 0.7595979 0.76996845 0.74747425
		 0.14631771 0.22264881 0.28734791 0.36081186 0.17280123 0.0080080619 0.31958359 0.34315288
		 0.37448099 0.5003475 0.64150947 0.078335762 0.79026771 0.90017438 0.64359725 0.62009412
		 0.58844835 0.46257067 0.37691426 ;
	setAttr ".mve" -type "floatArray" 247 0.83464563 0.5705992 0.69971681 0.56616038
		 0.66293961 0.52620524 0.79687411 0.6277867 0.64380121 0.68612742 0.74174654 0.91600382
		 0.93886793 0.6307053 0.49455255 0.63738328 0.70536149 0.73070973 0.70016742 0.63219619
		 0.55868495 0.4909271 0.57440019 0.64616096 0.70868522 0.96135139 0.80023795 0.68152624
		 0.39608938 0.46215078 0.52962524 0.89430672 0.66497207 0.73407751 0.91973341 0.91143167
		 0.91438287 0.92444223 0.91942579 0.91221905 0.91871244 0.90617436 0.90541953 0.9169609
		 0.6726054 0.67761612 0.71326929 0.71595132 0.7387647 0.77050102 0.9384377 0.9453274
		 0.94564801 0.94422096 0.94157779 0.94563258 0.66670591 0.66325605 0.95902103 0.95524085
		 0.95913243 0.96285647 0.95464396 0.94676924 0.69690746 0.75458044 0.7233755 0.49244338
		 0.49586836 0.52497602 0.56054014 0.63163543 0.66759264 0.90490413 0.99566102 0.69960672
		 0.9002049 0.883255 0.95424062 0.93202627 0.17113313 0.24213716 0.2415458 0.10499435
		 0.13781147 0.80289531 0.81239879 0.16880111 0.066868976 0.31840879 0.33663988 0.10048246
		 0.035287254 0.25756446 0.29405046 0.0044878107 0.10411419 0.13514312 0.10114652 0.07045234
		 0.87602431 0.30742162 0.34187904 0.94771653 0.28897983 0.32576352 0.35178411 0.36779681
		 0.24115001 0.87353319 0.27803653 0.27749017 0.28384084 0.2550886 0.039006885 0.29876715
		 0.00090735353 0.32857484 0.40792516 0.3200033 0.2449518 0.17652798 0.31325349 0.92540884
		 0.35523617 0.13418464 0.38496098 0.30453178 0.35960186 0.85812199 0.85534483 0.83230007
		 0.833727 0.81995326 0.82543355 0.8727144 0.86909586 0.87669718 0.86984628 0.81951994
		 0.82818913 0.83179694 0.83831853 0.85298389 0.85923892 0.85950655 0.83336562 0.82616735
		 0.87296104 0.27125078 0.38391405 0.89355409 0.310211 0.27280113 0.27062416 0.30986828
		 0.89698046 0.98375815 0.95094883 0.92861593 0.89924175 0.99180388 0.95697147 0.93455464
		 0.31416681 0.13970442 0.26372343 0.25054681 0.39831242 0.3382732 0.23935677 0.81624514
		 0.23181856 0.18584087 0.35726368 0.44099373 0.44462579 0.18189031 0.40432221 0.240549
		 0.16503081 0.31289387 0.27743068 0.41191116 0.7037074 0.52929658 0.65037084 0.45877308
		 0.78514498 0.77197146 0.93512297 0.5995695 0.61919546 0.42498004 0.74479491 0.83125603
		 0.70208734 0.42848685 0.74699032 0.39271498 0.55419445 0.70217168 0.66389799 0.79857248
		 0.87063605 0.66113192 0.63330603 0.63167048 0.90186465 0.63479275 0.60151321 0.90524936
		 0.27333558 0.85900831 0.7726739 0.84722227 0.24231754 0.82681566 0.20939268 0.20731351
		 0.34454298 0.34265858 0.37515107 0.37875947 0.73439509 0.73270941 0.76530713 0.76867163
		 0.8819629 0.98759681 0.87977237 0.98021543 0.798832 0.86089611 0.80783731 0.80428493
		 0.80181009 0.79768741 0.77937287 0.88765782 0.88513887 0.86569792 0.8939594 0.89027476
		 0.88764018 0.88428718 0.96047723 ;
createNode polyTweakUV -n "chibi_template_famine_polyTweakUV11";
	rename -uid "996C5C4F-4E5D-CEBF-CAA6-218D7303022D";
	setAttr ".uopa" yes;
	setAttr -s 247 ".uvtk[0:246]" -type "float2" 0.0011718869 -0.0030878782
		 0.0019838214 -0.0022636056 0.0034638047 -0.0022296906 0.0037398934 0.00039863586
		 -0.0005338788 0.00012671947 0.00084632635 0.0015870333 -0.0010399222 -0.001411736
		 -0.0034196377 -0.0014505982 0.0022544265 -0.0013822913 -0.0034393072 -0.0001154542
		 -0.0082293153 0.0027844906 0.0011203587 -0.0002630353 -3.632158e-005 -0.0001065135
		 0.0032619834 -0.00044584274 0.0019479394 0.0013967752 -0.0061146468 -0.0017880797
		 -0.0045694113 0.00085490942 -0.00077426434 -0.0007609129 0.0024344325 -0.0023680925
		 0.0043404698 -0.0010194182 0.0025746822 0.00087326765 0.0019181967 0.0013507605 0.0022419095
		 -0.002820313 0.0014038086 -0.00091707706 0.0024602413 0.00014352798 -6.1392784e-005
		 -5.7220459e-006 -0.00083857775 -0.0014893413 -0.0022787452 -9.0241432e-005 0.0014506578
		 0.0016339421 0.0012540817 0.001540482 0.00082343817 0.0014474988 0.0061549544 -0.00050985813
		 -0.0003721714 7.0869923e-005 -0.00056052208 -0.00084030628 -0.0042443871 -7.4923038e-005
		 -0.0031828284 0.00021404028 -0.0020833611 0.00044006109 -0.00044095516 0.00037127733
		 -0.0027034283 0.00056618452 -0.0029749274 7.0035458e-005 -0.00096225739 -0.00012326241
		 -0.00096210837 0.00010979176 0.0016261339 -0.00032639503 0.0018345118 -0.00011837482
		 0.0019823313 -0.0011120439 0.0016890764 -0.00052958727 -0.0024925172 0.00035053492
		 -0.002977699 0.00014543533 -0.0045543015 0.0018084049 -0.0076029301 0.0040971637
		 0.0016151071 0.00072699785 0.00071185827 0.00076627731 -0.0028682351 0.00073754787
		 -0.0055240393 -0.0010048747 -0.00098207593 -0.00044643879 0.00067561865 -0.0010690689
		 0.0034342408 -0.00071305037 0.0036452413 -0.0025550127 -0.0011286139 -0.0012466311
		 -0.0044093728 -0.0013615489 -0.0025764704 0.0011363626 -0.001285851 0.0012711287
		 0.00077617168 0.0016043186 0.0065044165 0.0010147691 -0.00065982342 -0.00035965443
		 -0.0058774799 0.0030232072 -0.0060874671 0.0016988516 0.0010728836 0.0016097724 0.0010832548
		 0.0015021265 0.0021369457 0.0011655092 0.0042777658 -0.0015373826 0.0041887164 -0.00027161837
		 0.0041747689 -0.0017061234 -0.00011830032 -0.00028318167 -3.6843121e-005 0.00012636185
		 -0.00048100948 -0.00041085482 0.0003272891 0.00054299831 0.00041547418 0.00063461065
		 -2.8640032e-005 -0.00016289949 8.9406967e-006 -8.5294247e-005 -0.0044299066 -0.0015862882
		 -0.0043416619 -0.00021596253 -0.0033894479 -0.00036148727 -0.0020087957 0.0014236346
		 -0.00075329095 0.0011182278 -0.0081619881 -0.0032175183 -0.00099658966 0.0029036403
		 -0.0026681423 0.00077828765 -0.0010570735 0.0013398752 0.0050133467 0.0011671185
		 0.0066125393 0.002029717 -0.00093588233 0.0012882128 -0.0017550886 0.0015050806 -0.0014111698
		 -0.00077772141 0.0025601983 0.00016114116 -0.0012194514 0.0014435495 -0.0009676218
		 0.0012093559 -0.0022185743 0.0011404306 -0.001956135 0.0013434812 -0.0010996163 0.0012851581
		 -0.00026208162 -0.00026726723 0.00020534918 -0.00085473061 0.00022301823 -0.0012946725
		 9.7930431e-005 4.196167e-005 -0.0017161071 -0.00033590198 0.0027373433 0.00065299869
		 0.0049901605 0.0021926463 0.0063938498 0.0034227967 7.8033656e-005 0.00030292571
		 -0.0013138056 0.00098615885 -0.0044248402 -0.0016030371 -0.0036144555 -0.00059267879
		 -0.0020513833 -0.00092813373 -0.0022954643 -0.0012525022 -0.0018084347 0.0015332587
		 0.0037454367 0.00014990568 -0.0011801049 0.0014857792 0.0032628179 0.00046184659
		 0.00038978271 -0.0019810796 -0.002518177 0.00041183829 -0.0045382977 -0.0012387484
		 -0.00392887 0.00039067864 -0.0023737252 -3.0308962e-005 1.9580126e-005 -7.7426434e-005
		 0.0088456273 0.0031285286 -0.00075389817 0.0012268424 0.0045070648 0.003670603 0.0003958419
		 -0.00083371997 0.0029317737 0.0015498102 0.0071424544 -0.00059729815 0.0029994249
		 0.00086057186 0.0030565858 0.0012665987 0.006352365 9.6142292e-005 0.0032134056 0.0015387535
		 0.0050785542 0.0001668334 0.0029402375 0.00063818693 0.0058011413 -0.00070685148
		 0.00074860454 0.0013420582 -0.0036188364 0.0004016161 -0.0035804063 -0.0014894605
		 0.0022534132 -0.00019019842 -0.0037408918 -0.0012816787 8.1688166e-005 7.2956085e-005
		 -0.0038101077 -0.0006095767 -0.0011642277 0.00065261126 0.0031890869 0.0010186434
		 0.0033679307 0.00040429831 0.0037396848 -0.00030219555 0.0027039051 0.0017820001
		 -0.0037074983 -0.0026211441 0.0082061291 0.0045051277 -0.00022730231 -0.00020456314
		 -0.0028321445 -0.0023711324 0.00016538054 -0.00036582351 0.00033488683 -0.00033372641
		 -0.0037819743 -0.0022069514 -0.0004054606 0.0002784133 -0.00012806058 0.00013571978
		 -0.00015756488 1.937151e-005 -0.0003053844 1.0430813e-005 0.00038062036 -0.00021868944
		 0.00016883016 3.4689903e-005 0.00019842386 -9.5188618e-005 0.00031992793 -0.00012272596
		 -0.0045809746 -0.00035694242 -0.0023869872 0.0013263077 0.0078777075 -0.0012304783
		 0.0065857768 -0.0016361624 0.0057898164 0.0049728155 0.00045055058 -0.0012522042
		 0.00029626302 0.00023259223 -0.008528172 -0.0028837323 0.0039358735 -0.0014448166
		 -0.0022256076 -0.0027789176 0.0029945374 0.0016403496 -0.0015259832 -0.0031344891
		 -0.0017455816 -0.003192991 -0.0019971728 -0.0022362173 0.00060538895 -0.0019394755
		 0.0037711263 -0.0012859404 -0.0039986074 -0.002559334 -0.0040179193 0.00039917231
		 0.0095825195 -0.00066322088 0.0074234605 0.0059683621 0.0042983294 -0.00050014257
		 0.0022750497 0.0013138652 -0.0073444098 -0.0014029741 0.0012341142 0.0016230345 -0.0052740872
		 0.0045061111 -0.0040751994 0.0032216907 0.0066940784 0.00059378147 0.00014364719
		 0.0016391873 -0.0036193132 -0.0015943646 0.00179106 0.0014497042 -0.0027559102 0.0012771487
		 0.0009649992 -0.0029951334 0.0022776723 -0.00024217367 0.0018245578 0.0014507771
		 -0.0026486814 0.0011888742 0.0014336109 0.0017036498 0.003891468 -0.0025419593 0.0038053393
		 0.00022298098 -0.0089816302 -0.0008456111 -0.0068293661 0.0054948926 0.00081801414
		 0.00099897385 0.0034381747 -0.0026982427 -0.0002143383 0.00074112415 -0.00042909384
		 0.00069403648 0.0010963976 5.4359436e-005 0.0042596459 -0.001200676 9.727478e-005
		 0.0015134215 0.0066722035 -8.481741e-005 -0.0039830506 -0.002427727 -0.0011249781
		 0.001414001 -0.0076520778 -0.0040166974 -0.0088575054 -0.0019187331 -0.0046403706
		 -0.0010286868 -0.0011460185 0.0024675727 -0.00010363758 0.0010852367 -0.00013762154
		 0.0011891723 -0.0021804869 -0.0026344657 -0.0019596815 -0.0023771822 -0.001740858
		 -0.0025607944 -0.0019498467 -0.0026071668 0.0017653704 -0.0026318431 0.0015533566
		 -0.0023129582 0.0012848377 -0.002464354 0.0014801621 -0.0025436878 0.00036744773
		 -0.0003259778 -5.8114529e-006 -7.9870224e-006 -0.00047677755 0.00031036139 6.1482191e-005
		 0.00021380186 -0.0033892095 -0.0018085241 -0.0088249212 -0.0014490485 0.00064200163
		 -0.0015474558 0.0032590032 -0.0016225576 0.006234318 -0.00050783157 0.0037426949
		 0.0022023916 -0.00063687563 0.0039343238 -0.00011602044 -0.00038522482 0.0014551282
		 -0.00056904554 0.0056704879 -0.0014071465 -0.00033724308 -0.00052499771 -0.0022879243
		 -0.00063711405 -0.0041527152 -0.00013428926 -0.0010687411 0.00077319145 0.00075003505
		 -0.0015473366;
createNode polyTweakUV -n "chibi_template_famine_polyTweakUV15";
	rename -uid "A54FCF35-41F4-73E8-5370-4B897E684276";
	setAttr ".uopa" yes;
	setAttr -s 190 ".uvtk";
	setAttr ".uvtk[68]" -type "float2" 0.048604976 0.60756207 ;
	setAttr ".uvtk[71]" -type "float2" 0.048604976 0.60756207 ;
	setAttr ".uvtk[72]" -type "float2" 0.048604976 0.60756195 ;
	setAttr ".uvtk[73]" -type "float2" 0.048604976 0.60756207 ;
	setAttr ".uvtk[74]" -type "float2" 0.048604976 0.60756195 ;
	setAttr ".uvtk[76]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[78]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[80]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[81]" -type "float2" 0.048604976 0.60756195 ;
	setAttr ".uvtk[82]" -type "float2" 0.048604976 0.60756207 ;
	setAttr ".uvtk[83]" -type "float2" 0.048604976 0.60756195 ;
	setAttr ".uvtk[84]" -type "float2" 0.048604976 0.60756207 ;
	setAttr ".uvtk[85]" -type "float2" 0.048604976 0.60756195 ;
	setAttr ".uvtk[86]" -type "float2" 0.048604976 0.60756195 ;
	setAttr ".uvtk[87]" -type "float2" 0.048604976 0.60756207 ;
	setAttr ".uvtk[88]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[89]" -type "float2" 0.048604917 0.60756195 ;
	setAttr ".uvtk[90]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[91]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[92]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[93]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[94]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[95]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[96]" -type "float2" 0.048604976 0.60756195 ;
	setAttr ".uvtk[97]" -type "float2" 0.048604917 0.60756195 ;
	setAttr ".uvtk[98]" -type "float2" 0.048604976 0.60756195 ;
	setAttr ".uvtk[99]" -type "float2" 0.048604976 0.60756207 ;
	setAttr ".uvtk[100]" -type "float2" 0.048604917 0.60756195 ;
	setAttr ".uvtk[101]" -type "float2" 0.048604917 0.60756195 ;
	setAttr ".uvtk[102]" -type "float2" 0.048604917 0.60756201 ;
	setAttr ".uvtk[103]" -type "float2" 0.048604917 0.60756207 ;
	setAttr ".uvtk[104]" -type "float2" 0.048604917 0.60756201 ;
	setAttr ".uvtk[105]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[106]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[107]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[108]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[109]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[110]" -type "float2" 0.048604976 0.60756195 ;
	setAttr ".uvtk[111]" -type "float2" 0.048604976 0.60756195 ;
	setAttr ".uvtk[112]" -type "float2" 0.048604976 0.60756207 ;
	setAttr ".uvtk[113]" -type "float2" 0.048604976 0.60756195 ;
	setAttr ".uvtk[114]" -type "float2" 0.048604976 0.60756195 ;
	setAttr ".uvtk[115]" -type "float2" 0.048604976 0.60756195 ;
	setAttr ".uvtk[116]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[117]" -type "float2" 0.048604976 0.60756195 ;
	setAttr ".uvtk[118]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[119]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[120]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[121]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[122]" -type "float2" 0.048604976 0.60756207 ;
	setAttr ".uvtk[123]" -type "float2" 0.048604976 0.60756207 ;
	setAttr ".uvtk[124]" -type "float2" 0.048604976 0.60756207 ;
	setAttr ".uvtk[125]" -type "float2" 0.048604976 0.60756195 ;
	setAttr ".uvtk[126]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[127]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[128]" -type "float2" 0.048604976 0.60756195 ;
	setAttr ".uvtk[129]" -type "float2" 0.048604976 0.60756195 ;
	setAttr ".uvtk[130]" -type "float2" 0.048604976 0.60756195 ;
	setAttr ".uvtk[131]" -type "float2" 0.048604917 0.60756201 ;
	setAttr ".uvtk[132]" -type "float2" 0.048604917 0.60756201 ;
	setAttr ".uvtk[133]" -type "float2" 0.048604917 0.60756201 ;
	setAttr ".uvtk[134]" -type "float2" 0.048604917 0.60756201 ;
	setAttr ".uvtk[135]" -type "float2" 0.048604917 0.60756201 ;
	setAttr ".uvtk[136]" -type "float2" 0.048604917 0.60756201 ;
	setAttr ".uvtk[137]" -type "float2" 0.048604917 0.60756201 ;
	setAttr ".uvtk[138]" -type "float2" 0.048604917 0.60756201 ;
	setAttr ".uvtk[139]" -type "float2" 0.048604917 0.60756201 ;
	setAttr ".uvtk[140]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[141]" -type "float2" 0.048604917 0.60756201 ;
	setAttr ".uvtk[142]" -type "float2" 0.048604917 0.60756201 ;
	setAttr ".uvtk[143]" -type "float2" 0.048604917 0.60756201 ;
	setAttr ".uvtk[144]" -type "float2" 0.048604917 0.60756201 ;
	setAttr ".uvtk[145]" -type "float2" 0.048604917 0.60756201 ;
	setAttr ".uvtk[146]" -type "float2" 0.048604917 0.60756201 ;
	setAttr ".uvtk[147]" -type "float2" 0.048604917 0.60756201 ;
	setAttr ".uvtk[148]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[149]" -type "float2" 0.048604917 0.60756201 ;
	setAttr ".uvtk[150]" -type "float2" 0.048604917 0.60756201 ;
	setAttr ".uvtk[151]" -type "float2" 0.048604917 0.60756201 ;
	setAttr ".uvtk[452]" -type "float2" 0.048604947 0.60756195 ;
	setAttr ".uvtk[455]" -type "float2" 0.048604947 0.60756195 ;
	setAttr ".uvtk[456]" -type "float2" 0.048604947 0.60756195 ;
	setAttr ".uvtk[457]" -type "float2" 0.048604947 0.60756195 ;
	setAttr ".uvtk[458]" -type "float2" 0.048604947 0.60756195 ;
	setAttr ".uvtk[459]" -type "float2" 0.048604947 0.60756207 ;
	setAttr ".uvtk[461]" -type "float2" 0.048604947 0.60756201 ;
	setAttr ".uvtk[463]" -type "float2" 0.048604947 0.60756201 ;
	setAttr ".uvtk[464]" -type "float2" 0.048604947 0.60756207 ;
	setAttr ".uvtk[465]" -type "float2" 0.048604947 0.60756195 ;
	setAttr ".uvtk[466]" -type "float2" 0.048604961 0.60756195 ;
	setAttr ".uvtk[467]" -type "float2" 0.048604961 0.60756195 ;
	setAttr ".uvtk[468]" -type "float2" 0.048604961 0.60756207 ;
	setAttr ".uvtk[469]" -type "float2" 0.048604961 0.60756195 ;
	setAttr ".uvtk[470]" -type "float2" 0.048604954 0.60756207 ;
	setAttr ".uvtk[471]" -type "float2" 0.048604954 0.60756207 ;
	setAttr ".uvtk[472]" -type "float2" 0.048604954 0.60756201 ;
	setAttr ".uvtk[473]" -type "float2" 0.048604954 0.60756207 ;
	setAttr ".uvtk[474]" -type "float2" 0.048604961 0.60756201 ;
	setAttr ".uvtk[475]" -type "float2" 0.048604961 0.60756201 ;
	setAttr ".uvtk[476]" -type "float2" 0.048604954 0.60756195 ;
	setAttr ".uvtk[477]" -type "float2" 0.048604961 0.60756207 ;
	setAttr ".uvtk[478]" -type "float2" 0.048604961 0.60756195 ;
	setAttr ".uvtk[479]" -type "float2" 0.048604961 0.60756207 ;
	setAttr ".uvtk[480]" -type "float2" 0.048604958 0.60756207 ;
	setAttr ".uvtk[481]" -type "float2" 0.048604954 0.60756195 ;
	setAttr ".uvtk[482]" -type "float2" 0.048604954 0.60756207 ;
	setAttr ".uvtk[483]" -type "float2" 0.048604961 0.60756195 ;
	setAttr ".uvtk[484]" -type "float2" 0.048604958 0.60756207 ;
	setAttr ".uvtk[485]" -type "float2" 0.048604954 0.60756207 ;
	setAttr ".uvtk[486]" -type "float2" 0.048604958 0.60756201 ;
	setAttr ".uvtk[487]" -type "float2" 0.048604958 0.60756195 ;
	setAttr ".uvtk[488]" -type "float2" 0.048604954 0.60756207 ;
	setAttr ".uvtk[489]" -type "float2" 0.048604961 0.60756201 ;
	setAttr ".uvtk[490]" -type "float2" 0.048604961 0.60756207 ;
	setAttr ".uvtk[491]" -type "float2" 0.048604961 0.60756195 ;
	setAttr ".uvtk[492]" -type "float2" 0.048604954 0.60756195 ;
	setAttr ".uvtk[493]" -type "float2" 0.048604954 0.60756195 ;
	setAttr ".uvtk[494]" -type "float2" 0.048604947 0.60756207 ;
	setAttr ".uvtk[495]" -type "float2" 0.048604961 0.60756195 ;
	setAttr ".uvtk[496]" -type "float2" 0.048604947 0.60756195 ;
	setAttr ".uvtk[497]" -type "float2" 0.048604961 0.60756195 ;
	setAttr ".uvtk[498]" -type "float2" 0.048604961 0.60756207 ;
	setAttr ".uvtk[499]" -type "float2" 0.048604961 0.60756207 ;
	setAttr ".uvtk[500]" -type "float2" 0.048604947 0.60756201 ;
	setAttr ".uvtk[501]" -type "float2" 0.048604961 0.60756201 ;
	setAttr ".uvtk[502]" -type "float2" 0.048604961 0.60756201 ;
	setAttr ".uvtk[503]" -type "float2" 0.048604947 0.60756201 ;
	setAttr ".uvtk[504]" -type "float2" 0.048604961 0.60756195 ;
	setAttr ".uvtk[505]" -type "float2" 0.048604947 0.60756195 ;
	setAttr ".uvtk[506]" -type "float2" 0.048604961 0.60756195 ;
	setAttr ".uvtk[507]" -type "float2" 0.048604947 0.60756207 ;
	setAttr ".uvtk[508]" -type "float2" 0.048604961 0.60756207 ;
	setAttr ".uvtk[509]" -type "float2" 0.048604947 0.60756207 ;
	setAttr ".uvtk[510]" -type "float2" 0.048604947 0.60756195 ;
	setAttr ".uvtk[511]" -type "float2" 0.048604961 0.60756201 ;
	setAttr ".uvtk[512]" -type "float2" 0.048604954 0.60756195 ;
	setAttr ".uvtk[513]" -type "float2" 0.048604954 0.60756207 ;
	setAttr ".uvtk[514]" -type "float2" 0.048604961 0.60756207 ;
	setAttr ".uvtk[515]" -type "float2" 0.048604958 0.60756207 ;
	setAttr ".uvtk[516]" -type "float2" 0.048604958 0.60756207 ;
	setAttr ".uvtk[517]" -type "float2" 0.048604958 0.60756207 ;
	setAttr ".uvtk[518]" -type "float2" 0.048604958 0.60756195 ;
	setAttr ".uvtk[519]" -type "float2" 0.048604958 0.60756195 ;
	setAttr ".uvtk[520]" -type "float2" 0.048604958 0.60756207 ;
	setAttr ".uvtk[521]" -type "float2" 0.048604958 0.60756195 ;
	setAttr ".uvtk[522]" -type "float2" 0.048604958 0.60756195 ;
	setAttr ".uvtk[523]" -type "float2" 0.048604958 0.60756195 ;
	setAttr ".uvtk[524]" -type "float2" 0.048604958 0.60756195 ;
	setAttr ".uvtk[525]" -type "float2" 0.048604958 0.60756195 ;
	setAttr ".uvtk[526]" -type "float2" 0.048604958 0.60756195 ;
	setAttr ".uvtk[527]" -type "float2" 0.048604958 0.60756195 ;
	setAttr ".uvtk[528]" -type "float2" 0.048604958 0.60756207 ;
	setAttr ".uvtk[529]" -type "float2" 0.048604958 0.60756207 ;
	setAttr ".uvtk[530]" -type "float2" 0.048604958 0.60756195 ;
	setAttr ".uvtk[531]" -type "float2" 0.048604958 0.60756207 ;
	setAttr ".uvtk[532]" -type "float2" 0.048604958 0.60756207 ;
	setAttr ".uvtk[533]" -type "float2" 0.048604958 0.60756195 ;
	setAttr ".uvtk[534]" -type "float2" 0.048604958 0.60756195 ;
	setAttr ".uvtk[535]" -type "float2" 0.048604958 0.60756207 ;
	setAttr ".uvtk[687]" -type "float2" 0.048604961 0.60756201 ;
	setAttr ".uvtk[688]" -type "float2" 0.048604947 0.60756207 ;
	setAttr ".uvtk[689]" -type "float2" 0.048604947 0.60756201 ;
	setAttr ".uvtk[690]" -type "float2" 0.048604947 0.60756207 ;
	setAttr ".uvtk[694]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[695]" -type "float2" 0.048604976 0.60756195 ;
	setAttr ".uvtk[696]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[697]" -type "float2" 0.048604976 0.60756207 ;
	setAttr ".uvtk[698]" -type "float2" 0.048604976 0.60756195 ;
	setAttr ".uvtk[703]" -type "float2" 0.048604958 0.60756201 ;
	setAttr ".uvtk[704]" -type "float2" 0.048604958 0.60756195 ;
	setAttr ".uvtk[705]" -type "float2" 0.048604958 0.60756207 ;
	setAttr ".uvtk[706]" -type "float2" 0.048604958 0.60756207 ;
	setAttr ".uvtk[707]" -type "float2" 0.048604947 0.60756201 ;
	setAttr ".uvtk[709]" -type "float2" 0.048604958 0.60756195 ;
	setAttr ".uvtk[710]" -type "float2" 0.048604947 0.60756201 ;
	setAttr ".uvtk[711]" -type "float2" 0.048604961 0.60756201 ;
	setAttr ".uvtk[712]" -type "float2" 0.048604961 0.60756201 ;
	setAttr ".uvtk[713]" -type "float2" 0.048604961 0.60756195 ;
	setAttr ".uvtk[714]" -type "float2" 0.048604961 0.60756201 ;
	setAttr ".uvtk[716]" -type "float2" 0.048604976 0.60756207 ;
	setAttr ".uvtk[717]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[718]" -type "float2" 0.048604917 0.60756207 ;
	setAttr ".uvtk[719]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[720]" -type "float2" 0.048604976 0.60756195 ;
	setAttr ".uvtk[722]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[723]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[724]" -type "float2" 0.048604976 0.60756195 ;
	setAttr ".uvtk[725]" -type "float2" 0.048604976 0.60756207 ;
	setAttr ".uvtk[726]" -type "float2" 0.048604976 0.60756201 ;
	setAttr ".uvtk[727]" -type "float2" 0.048604976 0.60756201 ;
createNode polyMapCut -n "chibi_template_famine_polyMapCut14";
	rename -uid "CC7064F4-46E6-A8D9-EB57-50B44B32F452";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[227]" "e[229]" "e[231]" "e[236:237]" "e[318]" "e[977]" "e[979]" "e[981]" "e[985]" "e[987]" "e[989]";
createNode Unfold3DUnfold -n "chibi_template_famine_Unfold3DUnfold15";
	rename -uid "9FC43D1D-43B9-2406-D7CD-5DA900C6DC8C";
	setAttr ".uvl" -type "Int32Array" 202 68 71 72 73 74 76
		 78 80 81 82 83 84 85 86 87 88 89 90
		 91 92 93 94 95 96 97 98 99 100 101 102
		 103 104 105 106 107 108 109 110 111 112 113 114
		 115 116 117 118 119 120 121 122 123 124 125 126
		 127 128 129 130 131 132 133 134 135 136 137 138
		 139 140 141 142 143 144 145 146 147 148 149 150
		 151 452 455 456 457 458 459 461 463 464 465 466
		 467 468 469 470 471 472 473 474 475 476 477 478
		 479 480 481 482 483 484 485 486 487 488 489 490
		 491 492 493 494 495 496 497 498 499 500 501 502
		 503 504 505 506 507 508 509 510 511 512 513 514
		 515 516 517 518 519 520 521 522 523 524 525 526
		 527 528 529 530 531 532 533 534 535 687 688 689
		 690 694 695 696 697 698 703 704 705 706 707 709
		 710 711 712 713 714 716 717 718 719 720 722 723
		 724 725 726 727 728 729 730 731 732 733 734 735
		 736 737 738 739 ;
	setAttr ".mdp" -type "string" "|pCylinder27|pCylinder27Shape";
	setAttr ".usn" -type "string" "map1";
	setAttr ".miee" yes;
	setAttr ".mue" -type "floatArray" 740 0.35931861 0.35934889 0.35940281 0.359467
		 0.35950381 0.3594884 0.35941511 0.35932732 0.35316998 0.3576664 0.36178768 0.36773083
		 0.36937994 0.36407295 0.35516107 0.35210177 0.35802037 0.35959634 0.36143386 0.36252639
		 0.36190498 0.35997441 0.35813585 0.35736537 0.35913894 0.35928974 0.35951966 0.3597495
		 0.35984114 0.35970935 0.35937241 0.35912168 0.35876101 0.3586022 0.35907787 0.36000869
		 0.36059308 0.36056218 0.36001495 0.35921627 0.3581647 0.35040575 0.34612134 0.35103941
		 0.3424764 0.3418771 0.53293258 0.45950094 0.37295294 0.3966147 0.32902265 0.34043211
		 0.55535918 0.56853342 0.4152669 0.42241064 0.34418377 0.34587467 0.34136289 0.35153928
		 0.35064805 0.34717232 0.34623396 0.35823143 0.36954507 0.3425875 0.38077351 0.38034329
		 0.68323141 0.63685733 0.62901425 0.64748216 0.7248106 0.76140052 0.80145413 0.56269252
		 0.615475 0.31827939 0.63396674 0.52704138 0.66102004 0.68880934 0.87442684 0.90021557
		 0.87886935 0.84637254 0.93108922 0.91723233 0.83176643 0.97033942 0.82234818 0.77745664
		 0.838103 0.7920109 0.85158753 0.815889 0.92753541 0.94220263 0.92607188 0.90730107
		 0.96064186 0.9499445 0.88753396 0.97445536 0.89190781 0.85543257 0.90026152 0.86819327
		 0.91375023 0.88771874 0.79926139 0.83034557 0.79757756 0.76463163 0.86866683 0.83851451
		 0.69950861 0.87673992 0.71407396 0.67716205 0.7289114 0.69675916 0.75913191 0.7266888
		 0.82016051 0.78232741 0.75458366 0.74360752 0.94043505 0.89096671 0.85346311 0.96144837
		 0.95024133 0.9542073 0.96517152 0.97558373 0.97939223 0.99291819 0.99902344 0.92647552
		 0.93586761 0.93132955 0.93881965 0.93989396 0.94486058 0.96150893 0.95002854 0.93744916
		 0.93203288 0.93757021 0.94053137 0.96740448 0.29163256 0.40170914 0.31189144 0.36069715
		 0.36757538 0.35498714 0.34051493 0.33973673 0.33940253 0.33962461 0.34039032 0.34745607
		 0.40882981 0.45379534 0.48403957 0.48587853 0.33406997 0.34475186 0.34647325 0.3514725
		 0.36025694 0.37758538 0.40611047 0.4576346 0.34121132 0.34135929 0.34143543 0.34126961
		 0.34111625 0.3411428 0.34124005 0.34119007 0.34128985 0.34113315 0.34145096 0.34174567
		 0.34182045 0.34187737 0.34159014 0.3413384 0.34165275 0.34147084 0.34173799 0.34198901
		 0.34210855 0.34250355 0.34203839 0.3424212 0.34200212 0.34238225 0.34182009 0.34246716
		 0.3432864 0.3432371 0.34286913 0.34330118 0.3440865 0.34464258 0.34403265 0.34359449
		 0.34066203 0.34073603 0.34054649 0.34065229 0.3407366 0.3408592 0.34092143 0.54821193
		 0.34104013 0.34108552 0.34116036 0.34121916 0.34130299 0.34127584 0.34121582 0.34089193
		 0.34110793 0.34121349 0.34133163 0.34135011 0.34131536 0.34105781 0.34111768 0.34146884
		 0.3415646 0.34161901 0.34140846 0.34118599 0.34081525 0.34376231 0.34619135 0.35012165
		 0.35676703 0.3659972 0.37994543 0.39250085 0.46020779 0.49135602 0.47087142 0.42870656
		 0.3846747 0.361366 0.35285968 0.34561405 0.3436721 0.34284961 0.34204689 0.34125042
		 0.34112898 0.34106815 0.34110975 0.34101698 0.34103402 0.34100276 0.34103054 0.34105799
		 0.34111843 0.34123063 0.3412874 0.34131289 0.34143901 0.34160075 0.34185562 0.34219068
		 0.34234688 0.34305853 0.35930207 0.35904485 0.35846266 0.35738614 0.35248461 0.35054851
		 0.34671456 0.34516537 0.34304535 0.34245899 0.34206867 0.34183198 0.34161422 0.34145099
		 0.34131342 0.34123895 0.34116191 0.34107491 0.34096137 0.35935873 0.35917431 0.35863698
		 0.35751241 0.35344073 0.35109091 0.34694695 0.34511009 0.34346768 0.34274203 0.34216952
		 0.34180659 0.34155136 0.34141499 0.34131864 0.34125885 0.34120339 0.34112126 0.55527145
		 0.34072813 0.34169191 0.34258652 0.34314147 0.34374624 0.34378061 0.34385869 0.34332994
		 0.34282911 0.34191245 0.34126467 0.35935259 0.35936368 0.35938525 0.35941568 0.35944051
		 0.35944059 0.3594166 0.35939214 0.35936818 0.35935485 0.35937449 0.35937536 0.35938248
		 0.35939544 0.35940862 0.35941267 0.35940784 0.35939759 0.35938582 0.3593787 0.35938352
		 0.35938293 0.35938483 0.35938966 0.35939583 0.35939887 0.35939801 0.3593944 0.35938823
		 0.35938528 0.35938999 0.34134886 0.34142628 0.34131339 0.3412652 0.34141442 0.34125009
		 0.32107133 0.32332528 0.32826182 0.32299992 0.31936467 0.31849223 0.31884417 0.31145903
		 0.32006019 0.31128621 0.32220447 0.31795162 0.32389513 0.32733598 0.32434982 0.32879964
		 0.32389233 0.32923737 0.32988578 0.32421014 0.32225183 0.32205155 0.3218931 0.32252967
		 0.32177395 0.32114014 0.32157734 0.32074904 0.32156345 0.32093582 0.32177722 0.32168227
		 0.32215542 0.32262996 0.32234585 0.32302764 0.322348 0.32237548 0.32290372 0.32292205
		 0.32209361 0.32204756 0.32198 0.32191724 0.32189545 0.32193202 0.32202372 0.32208407
		 0.32210508 0.32211944 0.32233119 0.33046615 0.33505434 0.32986078 0.32242456 0.33141774
		 0.3367303 0.33250433 0.16682538 0.25402895 0.29086119 0.23608118 0.1027369 0.18363927
		 0.25915512 0.19593678 0.11227471 0.1939806 0.33715284 0.33573404 0.33619165 0.33809692
		 0.3309899 0.3351706 0.33121467 0.33117402 0.33511713 0.33476254 0.28561211 0.31329122
		 0.32358897 0.31083652 0.2565206 0.30119908 0.32305551 0.30058658 0.26312113 0.29721457
		 0.31379142 0.12746634 0.11390737 0.37310344 0.34986123 0.27281967 0.23600721 0.19593847
		 0.25686818 0.38555911 0.42039201 0.36602959 0.33789077 0.3091433 0.12491377 0.098818831
		 0.11976927 0.15256162 0.067770377 0.08128082 0.17097999 0.028101919 0.17923351 0.22389884
		 0.16235015 0.20825376 0.14793673 0.18342261 0.07239607 0.057504803 0.07315398 0.092264198
		 0.038896855 0.049052108 0.11463533 0.024360592 0.10957732 0.14610714 0.10056686 0.13243346
		 0.086458109 0.11227182 0.19914131 0.16778794 0.20026302 0.23345144 0.12936084 0.15926242
		 0.30248839 0.12100901 0.28678659 0.32336366 0.27087361 0.30264825 0.2397456 0.27180922
		 0.17848358 0.21675335 0.24541865 0.25743166 0.057813607 0.10726532 0.1448786 0.038665663
		 0.050050762 0.046151847 0.03498771 0.024415692 0.020660039 0.0070303492 0.071838729
		 0.074923441 0.065420166 0.062347855 0.069757618 0.060686748 0.05584915 0.040445842
		 0.033799913 0.064581156 0.069734022 0.0637521 0.060633648 0.034219243 0.43043882
		 0.32388628 0.23313755 0.28490317 0.28044686 0.31075189 0.32247785 0.32717699 0.33355662
		 0.3365286 0.33799496 0.33952671 0.33916035 0.33738384 0.33285853 0.32052237 0.29674107
		 0.26933277 0.34074199 0.34081274 0.34082189 0.34080186 0.34069538 0.34077114 0.34083918
		 0.34074605 0.34052682 0.34065241 0.34073031 0.34063765 0.3404291 0.34059477 0.34064564
		 0.34051993 0.34076485 0.34082416 0.34086215 0.34078524 0.340666 0.34061843 0.3407028
		 0.34071857 0.34074363 0.34077007 0.34057567 0.34050331 0.34023011 0.34034738 0.34036297
		 0.34053701 0.3396202 0.33999515 0.33989701 0.33950141 0.3391819 0.33965841 0.33981115
		 0.33942038 0.33948782 0.33997831 0.34026432 0.33996126 0.34044617 0.34022027 0.3395066
		 0.33898202 0.33854187 0.33849394 0.33859944 0.33900508 0.33956814 0.33829361 0.33897948
		 0.33855724 0.33777577 0.33666626 0.33805591 0.33819321 0.33731821 0.33702651 0.33833376
		 0.3389965 0.33816823 0.33967754 0.33894491 0.34039336 0.34058824 0.34028542 0.33995634
		 0.34008136 0.34028223 0.34013239 0.33913073 0.33969137 0.34007549 0.33993036 0.34025186
		 0.34039611 0.34062615 0.34069884 0.3407912 0.34085411 0.52182728 0.52822149 0.34096086
		 0.34087995 0.34089082 0.34085482 0.34090635 0.34087381 0.34080049 0.34033856 0.3406336
		 0.34017858 0.3407734 0.34083584 0.34070757 0.3409071 0.34090438 0.340922 0.32205966
		 0.32204205 0.3220143 0.32198024 0.32196051 0.32196894 0.32200152 0.32202968 0.3220526
		 0.32206199 0.32203758 0.32203391 0.32202384 0.32200882 0.32199648 0.3219955 0.32200417
		 0.32201621 0.32202932 0.32203493 0.32202786 0.32202744 0.32202429 0.32201838 0.32201204
		 0.32200998 0.32201275 0.32201692 0.32202393 0.32202643 0.32202017 0.18546307 0.40878746
		 0.22453956 0.27444854 0.0009765625 0.048282634 0.0082891239 0.59060836 0.62522477
		 0.58154887 0.77249938 0.72243804 0.67818797 0.68426764 0.27587026 0.44560674 0.14498195
		 0.017237794 0.080918305 0.019140046 0.41920564 0.26479757 0.0009765625 0.34117407
		 0.16123129 0.27041358 0.085045166 0.22373742 0.30758628 0.98150879 0.77903217 0.98032308
		 0.8574025 0.81151223 0.47061506 0.92998976 0.92097682 0.83602983 0.9130587 0.66037059
		 0.73191476 0.054219563 0.044804025 0.04712563 0.019679429 0.0010386752 0.05210048
		 0.9544546 0.9465028 0.95557529 0.98038495 0.99897867 0.96636957 ;
	setAttr ".mve" -type "floatArray" 740 0.35525063 0.35530069 0.35534024 0.35533726
		 0.35529405 0.35522994 0.35517052 0.35518676 0.35676971 0.36181211 0.36317179 0.36033738
		 0.35306495 0.34705096 0.34754631 0.35203514 0.35609609 0.35744584 0.35735369 0.35578501
		 0.35385868 0.35287869 0.35302281 0.35428631 0.35529292 0.35549605 0.35559648 0.35553643
		 0.35532978 0.3550708 0.35490105 0.3550536 0.35550335 0.35483533 0.35426286 0.35446021
		 0.35508835 0.35580468 0.35622314 0.35613969 0.36592218 0.36958763 0.36115459 0.35951823
		 0.32447532 0.33696029 0.41312733 0.44651011 0.3916136 0.38063815 0.16082647 0.27166533
		 0.27399796 0.35267738 0.35957655 0.3167066 0.35723767 0.35566831 0.34375578 0.3440004
		 0.35168096 0.35118356 0.34616596 0.37892628 0.37153956 0.30634022 0.36042514 0.33641845
		 0.82628322 0.5441699 0.1782736 0.79665619 0.78991991 0.81965905 0.83897507 0.60744792
		 0.57987851 0.0012817194 0.6306237 0.068760864 0.69167572 0.75816226 0.65271604 0.67518479
		 0.7070868 0.68026459 0.68919754 0.72671556 0.50017798 0.76051569 0.53731072 0.54946303
		 0.58227932 0.59701174 0.62689435 0.64737296 0.6086396 0.62274396 0.64828229 0.62921304
		 0.63392055 0.66484165 0.51084751 0.67577243 0.53269929 0.53608388 0.56023389 0.57184553
		 0.59162819 0.60926217 0.72551209 0.75471044 0.78286701 0.7540707 0.77724022 0.80483478
		 0.53276163 0.84216434 0.58019018 0.60054237 0.63212699 0.65891868 0.68699169 0.71835995
		 0.70467222 0.66866761 0.61492324 0.56811166 0.79574972 0.75559187 0.73565298 0.595056
		 0.58430678 0.57834387 0.58926404 0.60223901 0.59602165 0.60634851 0.6002323 0.52778339
		 0.5296967 0.54653764 0.54287171 0.57008743 0.56386662 0.49471596 0.48687845 0.49419835
		 0.51210612 0.52926522 0.54276401 0.50998622 0.0012876675 0.60479784 0.08475212 0.33852464
		 0.56078631 0.48522818 0.4173592 0.39157408 0.37792289 0.36896512 0.35974303 0.44908211
		 0.41632882 0.39483079 0.35741395 0.29101202 0.21904346 0.34396857 0.34008646 0.32989386
		 0.31605798 0.28822467 0.24315839 0.19481069 0.35074005 0.35049516 0.3506915 0.35080689
		 0.3512893 0.35100991 0.35101348 0.35127702 0.35154286 0.35161221 0.3510955 0.35002857
		 0.3504104 0.35120404 0.35188246 0.35215366 0.35327464 0.35265115 0.35217625 0.35266247
		 0.3513625 0.35141528 0.35017335 0.34999216 0.34971979 0.34930947 0.35399228 0.35328177
		 0.35129339 0.34930971 0.34838337 0.35552758 0.3539229 0.35086012 0.34782058 0.34620753
		 0.3565408 0.35415614 0.35364556 0.35301137 0.35250637 0.3517729 0.35140064 0.72306722
		 0.35069051 0.35041904 0.34997135 0.34961945 0.34911793 0.34751797 0.3460561 0.35157716
		 0.35144603 0.35142395 0.35105589 0.35077795 0.35058933 0.35058486 0.35022673 0.35035586
		 0.35059363 0.35113725 0.35170165 0.35181335 0.35203588 0.33995587 0.32939339 0.31398118
		 0.28479213 0.23957106 0.19160339 0.090891019 0.6206755 0.59386617 0.53701311 0.48266545
		 0.44415307 0.40671268 0.38884753 0.37682217 0.36556336 0.35941911 0.35703465 0.35432425
		 0.35384497 0.35303253 0.35246828 0.35203081 0.35175771 0.35156456 0.35134652 0.35100147
		 0.35070658 0.35054556 0.35043079 0.35031492 0.34994215 0.34957188 0.34905615 0.34779501
		 0.34590858 0.34430751 0.35521919 0.35518575 0.35522059 0.35520193 0.35451788 0.35445571
		 0.35382357 0.35302773 0.35256803 0.35227811 0.35194814 0.35172033 0.35151196 0.3513748
		 0.35126534 0.35117254 0.35116351 0.35116148 0.35116187 0.35516009 0.35490701 0.35440978
		 0.35343683 0.34976101 0.34867969 0.3483083 0.34894863 0.35022396 0.35051513 0.35067144
		 0.35078233 0.35085467 0.35089722 0.35091797 0.3509011 0.35088 0.35086334 0.68359345
		 0.35469791 0.35487074 0.35408333 0.35313854 0.35221237 0.35077262 0.34954575 0.34855822
		 0.34757113 0.34713963 0.34707597 0.35524347 0.35526687 0.35528803 0.35529673 0.35528329
		 0.35525781 0.35522935 0.35521644 0.35521725 0.35522965 0.35524452 0.35525352 0.35526311
		 0.35527003 0.35526785 0.355259 0.35524726 0.35524115 0.35523584 0.35524011 0.35524681
		 0.35524997 0.35525382 0.35525736 0.35525817 0.35525554 0.35525 0.35524774 0.35524479
		 0.3552461 0.35525066 0.35036266 0.35039818 0.35056716 0.35052857 0.35051891 0.35044324
		 0.35581931 0.36064908 0.35611111 0.35505694 0.35513237 0.36174172 0.35329378 0.35765085
		 0.35167715 0.34836963 0.35138017 0.34367061 0.35211584 0.34621939 0.35271013 0.34882128
		 0.35441899 0.35395533 0.351569 0.35356119 0.353789 0.35392427 0.35444072 0.35410416
		 0.35394946 0.35436827 0.35382634 0.35385457 0.35361144 0.35319212 0.35341683 0.352786
		 0.35336655 0.35288253 0.35342637 0.35312939 0.35358229 0.3537184 0.35393313 0.35354236
		 0.35369694 0.35373271 0.35374823 0.35373041 0.35368222 0.3536295 0.3535977 0.35360315
		 0.35363865 0.35367256 0.36466882 0.36947066 0.36109635 0.35861504 0.33652389 0.34312567
		 0.33977428 0.32912442 0.42405215 0.45091403 0.42204362 0.40515938 0.27386689 0.28781483
		 0.24082939 0.18644793 0.36557469 0.36537254 0.35729343 0.3555268 0.34598693 0.34398624
		 0.34806019 0.34805453 0.35125813 0.35399505 0.35359889 0.35088006 0.38301414 0.39373252
		 0.37921181 0.37104777 0.3103449 0.33231625 0.31454885 0.28599355 0.35907501 0.35745418
		 0.91980612 0.54326814 0.027573673 0.82121938 0.89093202 0.88282406 0.91196752 0.93076766
		 0.60430753 0.67547745 0.62704694 0.72573012 0.78602523 0.85176361 0.74342155 0.76562327
		 0.79783225 0.77138793 0.77943456 0.817191 0.59160441 0.85108668 0.62889206 0.6420095
		 0.67347914 0.68909895 0.71787262 0.73891324 0.69866627 0.71269095 0.7385149 0.71957701
		 0.72376674 0.75497997 0.60114455 0.76587057 0.62288421 0.62699616 0.65036374 0.66254777
		 0.68173933 0.69980395 0.8173371 0.84610671 0.87469465 0.84640205 0.86823833 0.89618093
		 0.62692356 0.93332171 0.67391944 0.6949054 0.72536302 0.75268388 0.77950054 0.81138313
		 0.79618019 0.76078236 0.70771694 0.66130853 0.88652468 0.84635139 0.82674032 0.68471676
		 0.67397988 0.66796947 0.67889494 0.69183862 0.68559194 0.69580805 0.60178626 0.61728102
		 0.61908722 0.63240486 0.63608664 0.6597507 0.65345269 0.58375388 0.67710358 0.58354604
		 0.60143751 0.61866289 0.63228995 0.59901023 0.62598902 0.59245169 0.077769384 0.54234523
		 0.47768393 0.44494903 0.4065057 0.3877728 0.3765001 0.36532804 0.35927835 0.34430563
		 0.33987385 0.32918155 0.3135516 0.28424472 0.23943309 0.19063723 0.35040668 0.35050547
		 0.35048512 0.35040212 0.35108176 0.35109818 0.35095921 0.35093102 0.35141543 0.35153192
		 0.35138294 0.35132781 0.35120413 0.35114533 0.35094136 0.35094005 0.3508186 0.35081667
		 0.35068178 0.35072601 0.35056305 0.35076424 0.35081518 0.35067254 0.35023481 0.35028863
		 0.35042855 0.3506797 0.35128075 0.35092491 0.35152701 0.35170496 0.35293528 0.35240465
		 0.35186872 0.35224706 0.35173094 0.3515456 0.35097882 0.35090044 0.34997171 0.35030562
		 0.34987715 0.34958139 0.34946001 0.34894857 0.35385281 0.35306352 0.3522152 0.35095763
		 0.34980524 0.34893724 0.3480742 0.35535631 0.35387847 0.35295489 0.35384378 0.35274398
		 0.35194382 0.35053563 0.35071391 0.34860465 0.34926528 0.34836236 0.3476707 0.34740934
		 0.34599081 0.35017213 0.34983534 0.35052842 0.35140708 0.35090414 0.3519772 0.35163897
		 0.35689133 0.3547298 0.3542223 0.35364503 0.35289621 0.35234904 0.35196555 0.35170171
		 0.35152924 0.35112458 0.71835047 0.6801827 0.35068029 0.35046422 0.35036457 0.3502802
		 0.34985325 0.34945059 0.34888008 0.34762332 0.34711462 0.34583804 0.35123205 0.35131404
		 0.35119644 0.35049152 0.35024673 0.35038844 0.35367927 0.35369697 0.35370937 0.35370839
		 0.35368916 0.3536661 0.35364747 0.35364285 0.35365066 0.35366619 0.35367393 0.3536818
		 0.35368833 0.35369051 0.35368478 0.3536756 0.35366628 0.35366374 0.35366243 0.35366866
		 0.35367343 0.35367644 0.35367927 0.35368103 0.35367987 0.35367662 0.35367185 0.3536709
		 0.35367003 0.35367212 0.35367483 0.99327284 0.75781685 0.96160382 0.95113337 0.35835317
		 0.46229014 0.18989138 0.66190332 0.72625846 0.59331757 0.86947179 0.85831076 0.43150067
		 0.33332768 0.0022571511 0.6235708 0.60040945 0.79887438 0.60017234 0.72961146 0.68957853
		 0.0035246997 0.68964344 0.64916325 0.96527106 0.61171371 0.90734428 0.59342813 0.0009765625
		 0.70856762 0.50077772 0.63992578 0.50954539 0.90151584 0.61805403 0.51246363 0.5104723
		 0.87373853 0.81644547 0.55434519 0.51812184 0.6526233 0.66648036 0.61901778 0.68380868
		 0.68769395 0.57606518 0.52967739 0.56305647 0.57687312 0.59424543 0.59828246 0.58747965 ;
createNode polyTweakUV -n "chibi_template_famine_polyTweakUV16";
	rename -uid "4427ABAD-476D-86A7-A62E-098E911C0B95";
	setAttr ".uopa" yes;
	setAttr -s 202 ".uvtk";
	setAttr ".uvtk[68]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[71]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[72]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[73]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[74]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[76]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[78]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[80]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[81]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[82]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[83]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[84]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[85]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[86]" -type "float2" -0.64701176 0.68865544 ;
	setAttr ".uvtk[87]" -type "float2" -0.64701182 0.68865532 ;
	setAttr ".uvtk[88]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[89]" -type "float2" -0.64701182 0.68865532 ;
	setAttr ".uvtk[90]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[91]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[92]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[93]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[94]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[95]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[96]" -type "float2" -0.64701182 0.68865544 ;
	setAttr ".uvtk[97]" -type "float2" -0.64701182 0.68865544 ;
	setAttr ".uvtk[98]" -type "float2" -0.64701182 0.68865544 ;
	setAttr ".uvtk[99]" -type "float2" -0.64701182 0.68865544 ;
	setAttr ".uvtk[100]" -type "float2" -0.64701176 0.68865544 ;
	setAttr ".uvtk[101]" -type "float2" -0.64701182 0.68865544 ;
	setAttr ".uvtk[102]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[103]" -type "float2" -0.64701176 0.68865544 ;
	setAttr ".uvtk[104]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[105]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[106]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[107]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[108]" -type "float2" -0.64701182 0.68865544 ;
	setAttr ".uvtk[109]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[110]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[111]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[112]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[113]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[114]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[115]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[116]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[117]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[118]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[119]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[120]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[121]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[122]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[123]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[124]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[125]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[126]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[127]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[128]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[129]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[130]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[131]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[132]" -type "float2" -0.64701182 0.68865544 ;
	setAttr ".uvtk[133]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[134]" -type "float2" -0.64701176 0.68865544 ;
	setAttr ".uvtk[135]" -type "float2" -0.64701194 0.68865544 ;
	setAttr ".uvtk[136]" -type "float2" -0.64701182 0.68865544 ;
	setAttr ".uvtk[137]" -type "float2" -0.64701182 0.68865544 ;
	setAttr ".uvtk[138]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[139]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[140]" -type "float2" -0.64701194 0.68865544 ;
	setAttr ".uvtk[141]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[142]" -type "float2" -0.64701182 0.68865532 ;
	setAttr ".uvtk[143]" -type "float2" -0.64701182 0.68865544 ;
	setAttr ".uvtk[144]" -type "float2" -0.64701182 0.68865532 ;
	setAttr ".uvtk[145]" -type "float2" -0.64701176 0.68865544 ;
	setAttr ".uvtk[146]" -type "float2" -0.64701194 0.68865532 ;
	setAttr ".uvtk[147]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[148]" -type "float2" -0.64701176 0.68865532 ;
	setAttr ".uvtk[149]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[150]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[151]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[452]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[455]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[456]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[457]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[458]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[459]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[461]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[463]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[464]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[465]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[466]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[467]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[468]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[469]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[470]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[471]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[472]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[473]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[474]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[475]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[476]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[477]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[478]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[479]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[480]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[481]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[482]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[483]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[484]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[485]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[486]" -type "float2" -0.64701182 0.68865544 ;
	setAttr ".uvtk[487]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[488]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[489]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[490]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[491]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[492]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[493]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[494]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[495]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[496]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[497]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[498]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[499]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[500]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[501]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[502]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[503]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[504]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[505]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[506]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[507]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[508]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[509]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[510]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[511]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[512]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[513]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[514]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[515]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[516]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[517]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[518]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[519]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[520]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[521]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[522]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[523]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[524]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[525]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[526]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[527]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[528]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[529]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[530]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[531]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[532]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[533]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[534]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[535]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[687]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[688]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[689]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[690]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[694]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[695]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[696]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[697]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[698]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[703]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[704]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[705]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[706]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[707]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[709]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[710]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[711]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[712]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[713]" -type "float2" -0.64701182 0.68865544 ;
	setAttr ".uvtk[714]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[716]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[717]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[718]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[719]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[720]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[722]" -type "float2" -0.64701194 0.68865544 ;
	setAttr ".uvtk[723]" -type "float2" -0.64701194 0.68865532 ;
	setAttr ".uvtk[724]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[725]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[726]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[727]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[728]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[729]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[730]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[731]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[732]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[733]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[734]" -type "float2" -0.64701194 0.68865544 ;
	setAttr ".uvtk[735]" -type "float2" -0.64701182 0.68865544 ;
	setAttr ".uvtk[736]" -type "float2" -0.64701188 0.68865532 ;
	setAttr ".uvtk[737]" -type "float2" -0.64701188 0.68865544 ;
	setAttr ".uvtk[738]" -type "float2" -0.64701182 0.68865544 ;
	setAttr ".uvtk[739]" -type "float2" -0.64701182 0.68865532 ;
createNode polyMapCut -n "chibi_template_famine_polyMapCut15";
	rename -uid "F9F8A5AF-4E15-DD58-9432-B9B4DA4E4228";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "e[8:15]" "e[534]" "e[571]" "e[712]" "e[716]" "e[719]" "e[722]" "e[725]" "e[728]" "e[731]" "e[734]" "e[1265]" "e[1284]";
createNode polyMapCut -n "chibi_template_famine_polyMapCut16";
	rename -uid "FC59BDE4-47C3-449D-2624-A69611E70D56";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 16 "e[19]" "e[35]" "e[53]" "e[67]" "e[632]" "e[652]" "e[672]" "e[690]" "e[718]" "e[745]" "e[769]" "e[787]" "e[1315]" "e[1335]" "e[1355]" "e[1372]";
createNode Unfold3DUnfold -n "chibi_template_famine_Unfold3DUnfold16";
	rename -uid "A237A9C2-4C70-2E96-4F53-EE9374EAB901";
	setAttr ".uvl" -type "Int32Array" 396 8 9 10 11 12 13
		 14 15 40 41 42 43 44 45 46 47 48 49
		 50 51 52 53 54 55 56 57 58 59 60 61
		 62 63 64 65 66 67 69 70 75 77 79 152
		 153 154 155 156 157 158 159 160 161 162 163 164
		 165 166 167 168 169 170 171 172 173 174 175 176
		 177 178 179 180 181 182 183 184 185 186 187 188
		 189 190 191 192 193 194 195 196 197 198 199 200
		 201 202 203 204 205 206 207 208 209 210 211 212
		 213 214 215 216 217 218 219 220 221 222 223 224
		 225 226 227 228 229 230 231 232 233 234 235 236
		 237 238 239 240 241 242 243 244 245 246 247 248
		 249 250 251 252 253 254 255 256 257 258 259 260
		 261 262 263 264 265 266 267 268 269 270 271 272
		 273 274 275 276 277 282 283 284 285 286 287 288
		 289 290 291 292 293 294 295 296 301 302 303 304
		 305 306 307 308 309 310 311 312 313 314 315 316
		 317 318 319 320 321 322 323 324 325 326 358 359
		 360 361 362 363 365 369 371 373 375 377 379 381
		 414 415 416 417 418 419 420 421 422 423 424 425
		 426 427 428 429 430 431 432 433 434 435 436 437
		 438 439 440 441 442 443 444 445 446 447 448 449
		 450 451 453 454 460 462 536 537 538 539 540 541
		 542 543 544 545 546 547 548 549 550 551 552 553
		 554 555 556 557 558 559 560 561 562 563 564 565
		 566 567 568 569 570 571 572 573 574 575 576 577
		 578 579 580 581 582 583 584 585 586 587 588 589
		 590 591 592 593 594 595 596 597 598 599 600 601
		 602 603 604 605 606 607 608 609 610 611 612 613
		 614 615 616 617 618 619 620 621 622 623 624 625
		 626 627 628 629 630 631 632 633 634 635 636 637
		 638 639 640 641 642 643 644 645 646 647 648 649
		 650 651 652 653 654 655 691 692 693 699 700 701
		 702 708 715 721 741 743 ;
	setAttr ".mdp" -type "string" "|pCylinder27|pCylinder27Shape";
	setAttr ".usn" -type "string" "map1";
	setAttr ".miee" yes;
	setAttr ".mue" -type "floatArray" 776 0.52058077 0.52083927 0.5208391 0.52037412
		 0.51972228 0.51923215 0.51917976 0.51992863 0.31395125 0.33107498 0.33915305 0.35834512
		 0.36370587 0.35516855 0.33860356 0.32088235 0.53727275 0.53906637 0.5256936 0.50368959
		 0.49004108 0.49409533 0.5079577 0.52493501 0.52219731 0.52305567 0.52242172 0.5202986
		 0.51775604 0.51624972 0.51696926 0.52009338 0.52672517 0.52160603 0.51305157 0.50854266
		 0.51039261 0.51725262 0.52486479 0.52953082 0.32621533 0.29299194 0.27892706 0.30292073
		 0.27363726 0.2695137 0.450261 0.37531638 0.32887882 0.3743813 0.25411552 0.26540205
		 0.44647324 0.48294985 0.39588058 0.38399509 0.26924273 0.27795511 0.26338691 0.3196384
		 0.31255299 0.28757948 0.28716353 0.31024969 0.34903058 0.27130809 0.37765157 0.37103125
		 0.63577473 0.42942584 0.48347035 0.60152084 0.67561471 0.71067417 0.74905235 0.36144292
		 0.57085258 0.27253541 0.58857083 0.31408751 0.61449248 0.64111936 0.81897289 0.84368289
		 0.82322955 0.79209203 0.87326527 0.85998791 0.77809691 0.91087359 0.76907259 0.72605884
		 0.78416842 0.7400043 0.79708892 0.76288354 0.86986005 0.88391376 0.86845773 0.85047209
		 0.90158176 0.89133179 0.83153182 0.91481745 0.83572268 0.80077314 0.84372699 0.81300008
		 0.85665148 0.83170879 0.7469514 0.77673537 0.74533796 0.71377015 0.81345373 0.78456259
		 0.65137124 0.82118911 0.66532731 0.62995934 0.67954409 0.64873672 0.7085005 0.67741442
		 0.76697636 0.73072577 0.70414251 0.69362551 0.88221997 0.83482087 0.79888594 0.90235448
		 0.89161623 0.89541626 0.905922 0.9158985 0.9195478 0.93250799 0.93835783 0.86884451
		 0.87784368 0.87349546 0.88067234 0.88170171 0.8864606 0.90241265 0.89141232 0.87935913
		 0.87416953 0.87947512 0.88231242 0.9080615 0.25519499 0.30215767 0.25148785 0.35162824
		 0.29030669 0.28155425 0.26438427 0.25664958 0.25099996 0.25035772 0.25613582 0.27580965
		 0.35576487 0.41491041 0.43960139 0.41213459 0.2577768 0.28023311 0.29105371 0.31072596
		 0.32078993 0.32458174 0.33234236 0.34523287 0.26003969 0.26011539 0.26012057 0.26005244
		 0.25995013 0.25998828 0.26002085 0.25997639 0.25998241 0.25992218 0.26008362 0.26029494
		 0.26028007 0.26021636 0.26004863 0.25993529 0.25992516 0.25992832 0.26006803 0.26010254
		 0.2602779 0.26040572 0.26037854 0.26052663 0.26041394 0.26058522 0.2600472 0.26033056
		 0.26073942 0.26084584 0.26077154 0.26068875 0.26111767 0.26138911 0.26123694 0.26114559
		 0.25957268 0.25966853 0.25951383 0.25961396 0.25969473 0.25981256 0.2598725 0.056600876
		 0.25998697 0.26003075 0.26010308 0.26016006 0.26024136 0.26024291 0.2602143 0.25984409
		 0.25993097 0.259969 0.26004741 0.26008269 0.26009068 0.26000398 0.2600618 0.26016703
		 0.26017445 0.26013607 0.26000601 0.25991911 0.25977027 0.27751607 0.29055434 0.29571235
		 0.29537094 0.29583001 0.30012527 0.2824164 0.33452818 0.33796903 0.35534546 0.33347228
		 0.31981227 0.30004245 0.28763726 0.27570745 0.26617762 0.26345313 0.26006541 0.25981793
		 0.25968921 0.25975242 0.25982511 0.25983915 0.25987339 0.25988296 0.25991511 0.25996044
		 0.26001176 0.2600666 0.2600978 0.26011857 0.26020041 0.26029402 0.26043448 0.26056156
		 0.26067996 0.27034658 0.5204016 0.52184343 0.52613276 0.53329295 0.31569776 0.30456609
		 0.28021643 0.26150945 0.26057377 0.26030076 0.26020339 0.26014724 0.26009536 0.26005447
		 0.26001933 0.26000386 0.25997874 0.25994948 0.25991097 0.51946706 0.51837403 0.51741886
		 0.51604778 0.32833356 0.32148865 0.28884 0.26159248 0.26087335 0.26057985 0.26037052
		 0.26023644 0.26014268 0.26009214 0.26005742 0.26003894 0.26002237 0.25999632 0.063365094
		 0.25965431 0.25999534 0.26039898 0.26067561 0.26093721 0.26101896 0.26110709 0.2609598
		 0.26082173 0.2605004 0.26024038 0.52028292 0.52042454 0.52047402 0.52034748 0.52005363
		 0.51981646 0.51971573 0.51976258 0.51993328 0.52013916 0.52014339 0.52022105 0.52026159
		 0.52023751 0.52012753 0.52001774 0.51994169 0.5199548 0.51998574 0.52007383 0.52010316
		 0.52013654 0.52015924 0.5201593 0.52012473 0.52007967 0.52003413 0.52003765 0.52005231
		 0.52008456 0.52009481 0.26012573 0.2601482 0.26009232 0.26008007 0.26013154 0.26008388
		 0.87188852 0.17958078 0.83361989 0.86935312 0.88665056 0.16841468 0.90613055 0.15708332
		 0.91497576 0.15892 0.90709418 0.17215563 0.8919633 0.1873531 0.88424915 0.19510223
		 0.87080193 0.19559358 0.86734319 0.87711573 0.88471293 0.88446039 0.88049638 0.88044029
		 0.88560271 0.88488889 0.88770765 0.89154738 0.88975221 0.89671361 0.8904835 0.89675325
		 0.88907409 0.89117563 0.88758165 0.88693792 0.88613749 0.88475013 0.88016164 0.88366365
		 0.88634235 0.88624144 0.88643306 0.88690752 0.88745838 0.88776213 0.88760066 0.88725185
		 0.88682151 0.88643861 0.18030035 0.2132578 0.22728798 0.20320015 0.18628277 0.21320976
		 0.24452609 0.23348975 0.099389151 0.18479331 0.19369265 0.12640452 0.070828557 0.10840355
		 0.18413782 0.16389258 0.051316828 0.091331579 0.2438578 0.23556943 0.23860343 0.24702671
		 0.20380197 0.2342356 0.20492241 0.20723537 0.23617651 0.23202947 0.15119763 0.19999146
		 0.20414972 0.16507186 0.14310746 0.16049549 0.21931919 0.20572099 0.12785003 0.14161222
		 0.82535136 0.15712526 0.18928434 0.88218248 0.85991246 0.78609335 0.7508207 0.71242797
		 0.24876982 0.89411712 0.30662069 0.87540448 0.84844267 0.82089764 0.64437407 0.61937064
		 0.63944477 0.67086548 0.58962089 0.60256624 0.6885134 0.55161172 0.69642168 0.73921877
		 0.68024457 0.72422808 0.66643405 0.70043564 0.59405309 0.57978469 0.59477931 0.61309016
		 0.56195509 0.57168561 0.63452566 0.54802686 0.62967908 0.66468096 0.62104553 0.65157926
		 0.6075269 0.63226086 0.71549684 0.68545491 0.71657163 0.74837184 0.64863515 0.67728603
		 0.81452107 0.64063269 0.79947609 0.8345232 0.78422868 0.81467426 0.75440276 0.7851252
		 0.69570315 0.73237222 0.75983846 0.77134901 0.58008057 0.62746382 0.66350389 0.56173354
		 0.57264245 0.56890666 0.55820942 0.54807961 0.5444811 0.53142154 0.59351909 0.59647477
		 0.58736897 0.58442515 0.59152502 0.58283359 0.57819825 0.56343931 0.55707133 0.58656508
		 0.59150243 0.58577067 0.58278269 0.55747312 0.31339231 0.26882225 0.22053778 0.22837313
		 0.22974163 0.2311897 0.22962229 0.22642264 0.22675696 0.23746485 0.24878296 0.25570515
		 0.25781754 0.25393263 0.24535632 0.23527063 0.22039263 0.20858732 0.25991577 0.25992936
		 0.25993457 0.25993651 0.25982922 0.25985318 0.25989079 0.25986218 0.25973716 0.25976762
		 0.25980961 0.25978392 0.25972608 0.25978845 0.25982705 0.25978455 0.2598803 0.2599006
		 0.25992763 0.25989693 0.2598736 0.25983638 0.25985965 0.25987995 0.25993431 0.25993764
		 0.25985706 0.25980619 0.25965053 0.2597276 0.2596699 0.25971043 0.25927088 0.25945348
		 0.2594758 0.25930142 0.25924671 0.25942844 0.25953969 0.25941482 0.25953585 0.25966737
		 0.25980955 0.25973788 0.25991532 0.25989297 0.25916979 0.25901359 0.258912 0.25895262
		 0.25910318 0.25931346 0.25958827 0.2587162 0.2590237 0.25888813 0.25856021 0.25816184
		 0.25874293 0.25885493 0.25846305 0.25847584 0.2589972 0.25929475 0.25892818 0.25962356
		 0.25937325 0.25982222 0.25992379 0.25974816 0.25954428 0.25963944 0.25959557 0.2595799
		 0.2589404 0.25924695 0.25938922 0.25930452 0.25948986 0.25959551 0.25971344 0.25976563
		 0.25981495 0.25987855 0.031319801 0.037446592 0.25996119 0.25995645 0.25997055 0.25996724
		 0.26002961 0.26006112 0.2600967 0.25989705 0.25999305 0.25983703 0.25983998 0.25985256
		 0.25982139 0.25996277 0.2599875 0.25997859 0.88667285 0.88659728 0.88662058 0.8867982
		 0.88707256 0.88724291 0.88725299 0.88715607 0.88697082 0.88678163 0.88683116 0.88677698
		 0.88676685 0.88682115 0.88693482 0.8870241 0.88706696 0.88703066 0.88697779 0.8868928
		 0.88688391 0.88685828 0.88684791 0.88686097 0.88690305 0.8869431 0.8869732 0.88696134
		 0.88693464 0.88690305 0.88690907 0.70239073 0.91637385 0.73983276 0.7876541 0.0009765625
		 0.048360705 0.022147303 0.54702604 0.58019447 0.53834552 0.72130877 0.67334139 0.5140413
		 0.53518742 0.24427629 0.32430178 0.66360289 0.54120201 0.60221887 0.54302472 0.92635626
		 0.23688565 0.52562094 0.85158861 0.67917252 0.78378791 0.60617316 0.7390641 0.26572442
		 0.92157573 0.72756845 0.92043966 0.8026607 0.75868976 0.3418057 0.87221169 0.86357576
		 0.7821818 0.85598874 0.61387026 0.68242186 0.57663685 0.56761521 0.56983966 0.54354149
		 0.52568042 0.57460642 0.89565319 0.88803411 0.89672703 0.92049897 0.93831497 0.90706986
		 0.89798111 0.19643857 0.84861219 0.18919432 0.92914659 0.99902344 0.98880768 0.90262067
		 0.83020169 0.8163287 0.50966293 0.53989416 0.56033278 0.57656717 0.47738531 0.4120785
		 0.43175292 0.51049477 0.57729119 0.59274429 0.88686097 0.88682115 0.8867982 0.88690752
		 0.89154738 0.90613055 0.88770765 0.90262067 0.5201593 0.52023751 0.52034748 0.52037412
		 0.50368959 0.51049477 0.51725262 0.5202986 ;
	setAttr ".mve" -type "floatArray" 776 0.74917662 0.74855447 0.74778461 0.74720907
		 0.74716175 0.74774146 0.74882656 0.74953091 0.44902661 0.47104824 0.46758899 0.44024137
		 0.40786377 0.39499465 0.40061486 0.41996661 0.75546855 0.73164457 0.71521509 0.71575946
		 0.73465019 0.75924695 0.77533203 0.77387708 0.75055647 0.74777287 0.74495435 0.74322993
		 0.74378699 0.74677449 0.7510587 0.75234687 0.75263113 0.75865597 0.75814015 0.7481553
		 0.73845154 0.7338587 0.73608792 0.74407023 0.48794109 0.5080381 0.47196734 0.4638859
		 0.31475291 0.35127571 0.52157921 0.58819306 0.5352028 0.49202725 0.19755353 0.27730617
		 0.30074877 0.42530763 0.43258625 0.34988648 0.43984169 0.4391363 0.3894456 0.38267028
		 0.41736203 0.41358447 0.39287409 0.52511537 0.49458337 0.29725927 0.43338442 0.36587751
		 0.32618451 0.67122 0.22346732 0.29779679 0.29134229 0.31983751 0.33834565 0.76658756
		 0.09008652 0.0009765625 0.13870919 0.12571597 0.19720747 0.26091295 0.15987757 0.18140644
		 0.21197398 0.1862738 0.19483303 0.23078173 0.0137199 0.26316807 0.049299207 0.060943302
		 0.092387088 0.1065032 0.13513595 0.15475784 0.1176448 0.13115922 0.15562919 0.13735762
		 0.14186831 0.17149591 0.023943 0.18196949 0.044880755 0.04812387 0.071263753 0.082389623
		 0.10134495 0.11824125 0.22962847 0.25760558 0.28458446 0.25699261 0.27919304 0.30563337
		 0.044940509 0.34140152 0.090385146 0.10988607 0.14014959 0.16582061 0.19271936 0.22277552
		 0.20966049 0.17516181 0.1236654 0.078811869 0.29692838 0.25845018 0.23934533 0.10462923
		 0.094329737 0.088616192 0.099079706 0.11151197 0.10555456 0.11544947 0.10958915 0.040170562
		 0.042003844 0.058140349 0.054627769 0.080705099 0.074744493 0.0084863855 0.0009765625
		 0.0079904171 0.025148988 0.041590359 0.054524627 0.023117894 0.0041440311 0.75914383
		 0.11770602 0.36675376 0.67815024 0.62119365 0.5605889 0.54779005 0.52300656 0.49465382
		 0.44618431 0.58770549 0.55894899 0.50130969 0.42462781 0.32236996 0.23741572 0.38900191
		 0.36659741 0.33286643 0.31655365 0.29666632 0.25534937 0.21688612 0.41553649 0.41547358
		 0.41554648 0.41556504 0.41570494 0.41561672 0.41562909 0.41570941 0.41580766 0.41581234
		 0.41568014 0.41536599 0.41549918 0.4157646 0.41595295 0.4160127 0.41641411 0.41619024
		 0.41606566 0.41625261 0.41584283 0.41590533 0.41544706 0.41543218 0.41529495 0.41520527
		 0.41666943 0.41645265 0.41579914 0.41514114 0.41479957 0.41738114 0.41681001 0.4156636
		 0.41451326 0.41396374 0.41762519 0.41671321 0.41641006 0.4162145 0.41605911 0.41583338
		 0.41571891 0.65297103 0.41550055 0.41541713 0.41527954 0.41517144 0.4150174 0.4143725
		 0.41376293 0.41577318 0.41575515 0.41576007 0.41565347 0.41556486 0.41549927 0.4154681
		 0.41535804 0.41544077 0.41552943 0.4157131 0.41587314 0.41588411 0.4159143 0.36408851
		 0.3286829 0.3088246 0.2876083 0.24575238 0.20542563 0.11995074 0.84777462 0.75962418
		 0.67894232 0.61195266 0.58103615 0.55356926 0.5422259 0.52390277 0.48789269 0.44548449
		 0.41784525 0.41677883 0.41654134 0.41626906 0.41608936 0.41593578 0.41584849 0.4157818
		 0.41571376 0.4156042 0.41551483 0.41547519 0.41544428 0.41540939 0.41530228 0.41520014
		 0.41506141 0.41454026 0.4137736 0.39458677 0.74954438 0.75215989 0.75732684 0.76744699
		 0.4362545 0.43967602 0.42981777 0.41652298 0.41625082 0.41618133 0.41602921 0.4159278
		 0.41583481 0.41577131 0.41571978 0.41568092 0.41566908 0.41565841 0.41564548 0.74942106
		 0.75285697 0.76123202 0.77829891 0.41006699 0.39831227 0.3998048 0.41501814 0.41547397
		 0.41563973 0.41562462 0.4156189 0.41561309 0.41561127 0.41560695 0.41559455 0.41558129
		 0.41556635 0.61514831 0.41692442 0.41702938 0.41679782 0.41646576 0.41616112 0.41563177
		 0.41521651 0.4148269 0.41446075 0.41424379 0.41419199 0.74891001 0.74864769 0.74830329
		 0.74796152 0.74782264 0.74799538 0.74841195 0.74872702 0.74894392 0.74898314 0.74869955
		 0.74863023 0.74849874 0.74833125 0.74822384 0.74824649 0.7483713 0.7485081 0.74865347
		 0.74869061 0.74860007 0.74858409 0.74854022 0.7484712 0.7484085 0.74839813 0.7484439
		 0.74849284 0.7485702 0.74858862 0.74851388 0.41542915 0.41544968 0.41549179 0.41547364
		 0.41548771 0.41544405 0.75654197 0.45312628 0.8212074 0.77804649 0.7442506 0.44711381
		 0.7485643 0.41738233 0.7677452 0.38172236 0.78892946 0.36873263 0.80083257 0.37790498
		 0.80207187 0.38996318 0.78940845 0.42078236 0.85861707 0.79657573 0.77744353 0.77493274
		 0.77091998 0.77843833 0.77225578 0.76435584 0.77105749 0.76330245 0.77199334 0.76829803
		 0.77492189 0.7771709 0.77864784 0.78540617 0.78010267 0.78784078 0.77935076 0.77892977
		 0.78272378 0.78482622 0.77644444 0.7758441 0.77514613 0.77465725 0.77469546 0.77529258
		 0.77629304 0.7768209 0.77683842 0.77680266 0.47056231 0.49551731 0.46291649 0.44837764
		 0.34717771 0.36983806 0.36158678 0.32400566 0.54589719 0.5998385 0.56427735 0.51639438
		 0.32039651 0.33230767 0.25810599 0.22061458 0.45424864 0.44082445 0.43620363 0.43333647
		 0.3887991 0.38735369 0.38413748 0.3948828 0.40473613 0.42729875 0.42452887 0.40832815
		 0.48973513 0.53061682 0.51390874 0.48095921 0.34361118 0.34647238 0.30823439 0.29356894
		 0.428702 0.41562486 0.70530903 0.69814938 0.12475482 0.61084616 0.6776427 0.66987383
		 0.69779837 0.71581227 0.78404975 0.47120029 0.85830522 0.51935089 0.57712406 0.64011282
		 0.53630239 0.5575754 0.5884372 0.56309915 0.57080919 0.60698634 0.39083555 0.6394642
		 0.42656359 0.43913221 0.46928561 0.48425213 0.51182216 0.53198272 0.49341923 0.50685734
		 0.53160101 0.51345533 0.51746976 0.54737723 0.39997658 0.55781245 0.42080697 0.42474699
		 0.44713709 0.45881149 0.47720024 0.49450937 0.60712624 0.63469249 0.66208452 0.63497555
		 0.65589821 0.6826722 0.42467728 0.71825939 0.46970743 0.48981568 0.51899922 0.54517728
		 0.57087231 0.60142136 0.58685428 0.55293691 0.50209123 0.45762399 0.67341983 0.63492686
		 0.61613619 0.48005319 0.46976548 0.46400636 0.47447488 0.48687723 0.4808917 0.49068063
		 0.40059158 0.41543818 0.41716877 0.42992941 0.43345717 0.45613137 0.45009685 0.38331342
		 0.47275847 0.38311431 0.40025735 0.41676223 0.42981929 0.39793155 0.85535061 0.77060419
		 0.12067605 0.69278634 0.61797267 0.58441025 0.54987204 0.53547615 0.51759857 0.48215669
		 0.4429909 0.39310059 0.36114606 0.32342428 0.30394045 0.28547367 0.24686389 0.20781133
		 0.41537336 0.41541383 0.41540822 0.41537881 0.41558862 0.41560274 0.41556516 0.4155452
		 0.41567829 0.41573086 0.41569111 0.41566241 0.41559792 0.4155978 0.415537 0.41552204
		 0.41551062 0.41551682 0.41547716 0.41548273 0.41541567 0.41547596 0.41550234 0.41545755
		 0.41531736 0.41533804 0.41536126 0.41543502 0.41560003 0.41549718 0.41569591 0.41577414
		 0.41607174 0.41594085 0.41575408 0.41583237 0.4156262 0.41562065 0.41545281 0.41538176
		 0.41508564 0.41525185 0.41514492 0.41501296 0.41502964 0.41483623 0.4164933 0.41617891
		 0.41583344 0.41538659 0.41498515 0.4147079 0.41444501 0.41712311 0.41653547 0.41619518
		 0.41659218 0.41606507 0.41578579 0.41528258 0.4153451 0.41450512 0.41482884 0.41454408
		 0.41423157 0.4142383 0.41365665 0.41525632 0.41516882 0.41536033 0.41560975 0.41545963
		 0.41583389 0.41570598 0.4176617 0.41686168 0.41666275 0.41633958 0.41613123 0.41596863
		 0.41586962 0.41579169 0.41574594 0.41562092 0.64845151 0.6118803 0.41548806 0.41540813
		 0.41537678 0.41534507 0.41521156 0.41507623 0.41488135 0.41434318 0.41418895 0.4136577
		 0.41564673 0.41568074 0.41562751 0.41542017 0.41533989 0.41538823 0.77621979 0.77597028
		 0.77565384 0.7753455 0.77525926 0.77545094 0.77584261 0.77612442 0.77629644 0.77630591
		 0.77604318 0.77597052 0.77584565 0.77569675 0.77561164 0.775648 0.77577394 0.77589715
		 0.77602422 0.77604491 0.77595633 0.77593762 0.77589458 0.77583164 0.77577901 0.77577615
		 0.77582526 0.77586836 0.77593702 0.77594972 0.77587873 0.77570283 0.5500955 0.74535847
		 0.73532587 0.46188834 0.59721214 0.25248757 0.16868035 0.23034364 0.10296343 0.36756662
		 0.35687247 0.55189669 0.41756824 0.0041994778 0.85222524 0.39927229 0.58943576 0.39904499
		 0.52306992 0.4847115 0.0030160872 0.48477381 0.44598672 0.74887228 0.41010371 0.69336861
		 0.39258292 0.0029912961 0.21339291 0.014294414 0.1476223 0.022695439 0.39827022 0.8458966
		 0.025491655 0.023583556 0.37165493 0.31675848 0.06562113 0.030912917 0.4493022 0.46257958
		 0.41710228 0.47918317 0.48290592 0.37594637 0.041985352 0.073968232 0.087206908 0.10385264
		 0.10772092 0.09736979 0.86222947 0.40374127 0.84084564 0.43296891 0.86164945 0.78798336
		 0.70344591 0.65910208 0.70351964 0.75336224 0.84113526 0.8380729 0.81760639 0.79590458
		 0.84025264 0.76090044 0.67066914 0.63643688 0.67229718 0.71981609 0.77583164 0.77569675
		 0.7753455 0.77465725 0.76330245 0.7485643 0.77105749 0.65910208 0.7484712 0.74833125
		 0.74796152 0.74720907 0.71575946 0.63643688 0.7338587 0.74322993 ;
createNode polyTweakUV -n "chibi_template_famine_polyTweakUV17";
	rename -uid "8719A90A-4C2F-0A98-65F0-7EB56A63CCC4";
	setAttr ".uopa" yes;
	setAttr -s 291 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[1]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[2]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[3]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[4]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[5]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[6]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[7]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[16]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[17]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[18]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[19]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[20]" -type "float2" 0.10299919 0.053919051 ;
	setAttr ".uvtk[21]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[22]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[23]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[24]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[25]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[26]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[27]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[28]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[29]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[30]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[31]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[32]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[33]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[34]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[35]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[36]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[37]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[38]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[39]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[68]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[71]" -type "float2" -0.27370051 2.0882339 ;
	setAttr ".uvtk[72]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[73]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[74]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[76]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[78]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[80]" -type "float2" -0.27370051 2.0882339 ;
	setAttr ".uvtk[81]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[82]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[83]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[84]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[85]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[86]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[87]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[88]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[89]" -type "float2" -0.27370054 2.0882339 ;
	setAttr ".uvtk[90]" -type "float2" -0.27370051 2.0882339 ;
	setAttr ".uvtk[91]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[92]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[93]" -type "float2" -0.27370051 2.0882335 ;
	setAttr ".uvtk[94]" -type "float2" -0.27370048 2.0882339 ;
	setAttr ".uvtk[95]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[96]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[97]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[98]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[99]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[100]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[101]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[102]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[103]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[104]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[105]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[106]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[107]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[108]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[109]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[110]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[111]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[112]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[113]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[114]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[115]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[116]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[117]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[118]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[119]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[120]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[121]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[122]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[123]" -type "float2" -0.27370051 2.0882335 ;
	setAttr ".uvtk[124]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[125]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[126]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[127]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[128]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[129]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[130]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[131]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[132]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[133]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[134]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[135]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[136]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[137]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[138]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[139]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[140]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[141]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[142]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[143]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[144]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[145]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[146]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[147]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[148]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[149]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[150]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[151]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[278]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[279]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[280]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[281]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[297]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[298]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[299]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[300]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[327]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[328]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[329]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[330]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[331]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[332]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[333]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[334]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[335]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[336]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[337]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[338]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[339]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[340]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[341]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[342]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[343]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[344]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[345]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[346]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[347]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[348]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[349]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[350]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[351]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[352]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[353]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[354]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[355]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[356]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[357]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[452]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[455]" -type "float2" -0.27370054 2.0882335 ;
	setAttr ".uvtk[456]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[457]" -type "float2" -0.27370048 2.0882339 ;
	setAttr ".uvtk[458]" -type "float2" -0.27370051 2.0882335 ;
	setAttr ".uvtk[459]" -type "float2" -0.27370051 2.0882335 ;
	setAttr ".uvtk[461]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[463]" -type "float2" -0.27370048 2.0882339 ;
	setAttr ".uvtk[464]" -type "float2" -0.27370054 2.0882335 ;
	setAttr ".uvtk[465]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[466]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[467]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[468]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[469]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[470]" -type "float2" -0.27370051 2.0882339 ;
	setAttr ".uvtk[471]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[472]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[473]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[474]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[475]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[476]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[477]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[478]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[479]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[480]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[481]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[482]" -type "float2" -0.27370051 2.0882339 ;
	setAttr ".uvtk[483]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[484]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[485]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[486]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[487]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[488]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[489]" -type "float2" -0.27370051 2.0882335 ;
	setAttr ".uvtk[490]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[491]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[492]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[493]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[494]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[495]" -type "float2" -0.27370051 2.0882335 ;
	setAttr ".uvtk[496]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[497]" -type "float2" -0.27370051 2.0882339 ;
	setAttr ".uvtk[498]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[499]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[500]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[501]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[502]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[503]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[504]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[505]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[506]" -type "float2" -0.27370051 2.0882335 ;
	setAttr ".uvtk[507]" -type "float2" -0.27370048 2.0882339 ;
	setAttr ".uvtk[508]" -type "float2" -0.27370051 2.0882335 ;
	setAttr ".uvtk[509]" -type "float2" -0.27370051 2.0882339 ;
	setAttr ".uvtk[510]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[511]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[512]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[513]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[514]" -type "float2" -0.27370051 2.0882335 ;
	setAttr ".uvtk[515]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[516]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[517]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[518]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[519]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[520]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[521]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[522]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[523]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[524]" -type "float2" -0.27370051 2.0882339 ;
	setAttr ".uvtk[525]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[526]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[527]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[528]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[529]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[530]" -type "float2" -0.27370051 2.0882339 ;
	setAttr ".uvtk[531]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[532]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[533]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[534]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[535]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[687]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[688]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[689]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[690]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[694]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[695]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[696]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[697]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[698]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[703]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[704]" -type "float2" -0.27370051 2.0882335 ;
	setAttr ".uvtk[705]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[706]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[707]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[709]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[710]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[711]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[712]" -type "float2" -0.27370054 2.0882339 ;
	setAttr ".uvtk[713]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[714]" -type "float2" -0.27370051 2.0882339 ;
	setAttr ".uvtk[716]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[717]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[718]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[719]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[720]" -type "float2" -0.27370051 2.0882339 ;
	setAttr ".uvtk[722]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[723]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[724]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[725]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[726]" -type "float2" -0.27370051 2.0882339 ;
	setAttr ".uvtk[727]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[728]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[729]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[730]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[731]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[732]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[733]" -type "float2" -0.27370051 2.0882337 ;
	setAttr ".uvtk[734]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[735]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[736]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[737]" -type "float2" -0.27370054 2.0882335 ;
	setAttr ".uvtk[738]" -type "float2" -0.27370048 2.0882337 ;
	setAttr ".uvtk[739]" -type "float2" -0.27370054 2.0882337 ;
	setAttr ".uvtk[750]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[751]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[752]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[753]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[754]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[755]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[756]" -type "float2" 0.10299919 0.053919051 ;
	setAttr ".uvtk[757]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[758]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[759]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[768]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[769]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[770]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[771]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[772]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[773]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[774]" -type "float2" 0.10299916 0.053919051 ;
	setAttr ".uvtk[775]" -type "float2" 0.10299916 0.053919051 ;
createNode Unfold3DUnfold -n "chibi_template_famine_Unfold3DUnfold17";
	rename -uid "4A8440D1-4D22-DF84-14C2-0997545891E3";
	setAttr ".uvl" -type "Int32Array" 776 0 1 2 3 4 5
		 6 7 8 9 10 11 12 13 14 15 16 17
		 18 19 20 21 22 23 24 25 26 27 28 29
		 30 31 32 33 34 35 36 37 38 39 40 41
		 42 43 44 45 46 47 48 49 50 51 52 53
		 54 55 56 57 58 59 60 61 62 63 64 65
		 66 67 68 69 70 71 72 73 74 75 76 77
		 78 79 80 81 82 83 84 85 86 87 88 89
		 90 91 92 93 94 95 96 97 98 99 100 101
		 102 103 104 105 106 107 108 109 110 111 112 113
		 114 115 116 117 118 119 120 121 122 123 124 125
		 126 127 128 129 130 131 132 133 134 135 136 137
		 138 139 140 141 142 143 144 145 146 147 148 149
		 150 151 152 153 154 155 156 157 158 159 160 161
		 162 163 164 165 166 167 168 169 170 171 172 173
		 174 175 176 177 178 179 180 181 182 183 184 185
		 186 187 188 189 190 191 192 193 194 195 196 197
		 198 199 200 201 202 203 204 205 206 207 208 209
		 210 211 212 213 214 215 216 217 218 219 220 221
		 222 223 224 225 226 227 228 229 230 231 232 233
		 234 235 236 237 238 239 240 241 242 243 244 245
		 246 247 248 249 250 251 252 253 254 255 256 257
		 258 259 260 261 262 263 264 265 266 267 268 269
		 270 271 272 273 274 275 276 277 278 279 280 281
		 282 283 284 285 286 287 288 289 290 291 292 293
		 294 295 296 297 298 299 300 301 302 303 304 305
		 306 307 308 309 310 311 312 313 314 315 316 317
		 318 319 320 321 322 323 324 325 326 327 328 329
		 330 331 332 333 334 335 336 337 338 339 340 341
		 342 343 344 345 346 347 348 349 350 351 352 353
		 354 355 356 357 358 359 360 361 362 363 364 365
		 366 367 368 369 370 371 372 373 374 375 376 377
		 378 379 380 381 382 383 384 385 386 387 388 389
		 390 391 392 393 394 395 396 397 398 399 400 401
		 402 403 404 405 406 407 408 409 410 411 412 413
		 414 415 416 417 418 419 420 421 422 423 424 425
		 426 427 428 429 430 431 432 433 434 435 436 437
		 438 439 440 441 442 443 444 445 446 447 448 449
		 450 451 452 453 454 455 456 457 458 459 460 461
		 462 463 464 465 466 467 468 469 470 471 472 473
		 474 475 476 477 478 479 480 481 482 483 484 485
		 486 487 488 489 490 491 492 493 494 495 496 497
		 498 499 500 501 502 503 504 505 506 507 508 509
		 510 511 512 513 514 515 516 517 518 519 520 521
		 522 523 524 525 526 527 528 529 530 531 532 533
		 534 535 536 537 538 539 540 541 542 543 544 545
		 546 547 548 549 550 551 552 553 554 555 556 557
		 558 559 560 561 562 563 564 565 566 567 568 569
		 570 571 572 573 574 575 576 577 578 579 580 581
		 582 583 584 585 586 587 588 589 590 591 592 593
		 594 595 596 597 598 599 600 601 602 603 604 605
		 606 607 608 609 610 611 612 613 614 615 616 617
		 618 619 620 621 622 623 624 625 626 627 628 629
		 630 631 632 633 634 635 636 637 638 639 640 641
		 642 643 644 645 646 647 648 649 650 651 652 653
		 654 655 656 657 658 659 660 661 662 663 664 665
		 666 667 668 669 670 671 672 673 674 675 676 677
		 678 679 680 681 682 683 684 685 686 687 688 689
		 690 691 692 693 694 695 696 697 698 699 700 701
		 702 703 704 705 706 707 708 709 710 711 712 713
		 714 715 716 717 718 719 720 721 722 723 724 725
		 726 727 728 729 730 731 732 733 734 735 736 737
		 738 739 740 741 742 743 744 745 746 747 748 749
		 750 751 752 753 754 755 756 757 758 759 760 761
		 762 763 764 765 766 767 768 769 770 771 772 773
		 774 775 ;
	setAttr ".mdp" -type "string" "|pCylinder27|pCylinder27Shape";
	setAttr ".usn" -type "string" "map1";
	setAttr ".miee" yes;
	setAttr ".mue" -type "floatArray" 776 0.47650009 0.48352879 0.48988482 0.49514642
		 0.44504026 0.45227191 0.45988616 0.46831489 0.29339269 0.29645231 0.30025047 0.30316156
		 0.30180344 0.29746726 0.29317299 0.29256251 0.54352391 0.55687147 0.56928343 0.47330067
		 0.48722073 0.50129265 0.51507908 0.52917194 0.49946657 0.51025379 0.52014393 0.44395798
		 0.45503432 0.46632677 0.4778983 0.48868307 0.52174044 0.50877845 0.49587315 0.48178336
		 0.46771157 0.55762351 0.54721546 0.53486919 0.2975148 0.29336664 0.29008454 0.29237431
		 0.28395319 0.28473219 0.41174865 0.33946592 0.30604997 0.32639956 0.30343309 0.28706446
		 0.45680168 0.45841894 0.33939731 0.33623362 0.28876984 0.28934336 0.28542405 0.29096895
		 0.29187483 0.28970665 0.28880104 0.29819253 0.30616325 0.28391293 0.31328818 0.30827314
		 0.65056646 0.39966273 0.54560649 0.61575764 0.69074887 0.7263397 0.76523656 0.29126227
		 0.58401823 0.37942168 0.60208589 0.40164778 0.62851518 0.65571785 0.83581299 0.86089021
		 0.84018672 0.80858475 0.8908934 0.8774718 0.79426968 0.92908227 0.78511506 0.74148214
		 0.80044937 0.75566381 0.81359571 0.77892685 0.88738269 0.90163928 0.88598394 0.8677327
		 0.91955739 0.90918708 0.84849197 0.9330042 0.85273838 0.81727904 0.86086082 0.8296926
		 0.87398046 0.84869081 0.76288801 0.79312927 0.76136839 0.72931701 0.83037627 0.80114776
		 0.66570318 0.83830106 0.6798901 0.64402366 0.69437474 0.66316777 0.72383392 0.69238323
		 0.78315318 0.7463423 0.7193054 0.70859206 0.9000774 0.85199898 0.81554794 0.92033416
		 0.90944177 0.91329616 0.92395413 0.93406934 0.93777269 0.95090765 0.95684242 0.88633525
		 0.89545912 0.89105266 0.89832854 0.899382 0.90420645 0.92037946 0.90923077 0.89700812
		 0.89173913 0.89711303 0.89999163 0.92610013 0.35787773 0.2038082 0.32831946 0.29565465
		 0.25013542 0.26706627 0.28688303 0.28785494 0.28825563 0.28788334 0.28676307 0.27732775
		 0.32128006 0.36787429 0.39769402 0.39341182 0.29612315 0.28761896 0.28800952 0.29004928
		 0.29580903 0.31213108 0.34503886 0.38459289 0.28589725 0.28586185 0.28592777 0.28592578
		 0.2860226 0.28595126 0.28597304 0.28603342 0.28612229 0.28611019 0.28603625 0.2858147
		 0.28592893 0.28614736 0.28626922 0.28629148 0.28664625 0.28644738 0.28637472 0.28655064
		 0.28623354 0.28632373 0.28590924 0.28593606 0.28578368 0.28575021 0.28695995 0.28716668
		 0.28722885 0.28668013 0.28631738 0.28762844 0.28799555 0.28819758 0.28756019 0.28683487
		 0.28637335 0.28626639 0.2865274 0.28638324 0.28626743 0.28609934 0.28601435 0.41617608
		 0.28585181 0.2857891 0.28568625 0.28560558 0.28549069 0.28553161 0.28562033 0.28605455
		 0.28606188 0.28607643 0.28600255 0.28593379 0.285878 0.28582734 0.28574488 0.28584665
		 0.28592727 0.28607982 0.28618678 0.28617305 0.28615966 0.28676099 0.28761029 0.29070261
		 0.30116254 0.3233465 0.34610009 0.36375245 0.16150725 0.24998432 0.30535728 0.31093299
		 0.30294669 0.29770541 0.29466969 0.2916401 0.28926763 0.28814593 0.28726119 0.28662783
		 0.28669393 0.28646949 0.28632966 0.28619727 0.28612918 0.28607267 0.28602117 0.28594041
		 0.28587088 0.28585029 0.28583121 0.28580576 0.28573269 0.28566721 0.28558186 0.28594732
		 0.28619727 0.28671595 0.47263342 0.49432123 0.51554698 0.53664702 0.29308885 0.29186994
		 0.28957483 0.28848314 0.28723842 0.28654054 0.28637889 0.28627357 0.28617692 0.28610942
		 0.28605404 0.28601527 0.28599828 0.28598189 0.28596035 0.46390429 0.48301849 0.50202191
		 0.52172172 0.29314992 0.29192197 0.28948924 0.28809237 0.28695148 0.28613469 0.28606471
		 0.28602344 0.28599289 0.28597751 0.28596407 0.28594792 0.28593194 0.28591362 0.42303357
		 0.28627747 0.28681374 0.28714123 0.28740534 0.28759527 0.28749067 0.28726774 0.28688908
		 0.2864148 0.28593558 0.28554848 0.46959525 0.47575167 0.48144111 0.48728639 0.43735313
		 0.4434205 0.44984591 0.45471501 0.46057788 0.46579197 0.46093416 0.46574512 0.46958366
		 0.47275069 0.43307525 0.43894187 0.44448158 0.44843054 0.453464 0.45788619 0.45312923
		 0.45537642 0.45603973 0.45491037 0.43523216 0.43854997 0.44216415 0.44424334 0.44884807
		 0.45153785 0.44338924 0.28582522 0.28584948 0.28587183 0.28585252 0.28587872 0.28582728
		 0.86593956 0.27684653 0.81833458 0.8792811 0.85353214 0.27419665 0.94947362 0.27263504
		 0.93556023 0.27401626 0.92149627 0.27505028 0.90771717 0.27804482 0.90107763 0.27864632
		 0.88615859 0.27899274 0.83744812 0.89363134 0.9233638 0.91257107 0.88795382 0.90108669
		 0.90267408 0.8756029 0.97884804 0.86518866 0.96777558 0.95508498 0.95648909 0.94101918
		 0.94492406 0.9269349 0.9398067 0.92078972 0.93414509 0.92850775 0.90726858 0.91403782
		 0.9463309 0.93929237 0.93292576 0.98554796 0.97776818 0.97054625 0.96294236 0.95892864
		 0.95451844 0.95020139 0.27667138 0.28018367 0.28286642 0.28071892 0.27513394 0.27963492
		 0.28222054 0.27927333 0.13508165 0.18917668 0.22641306 0.19297197 0.14835721 0.19617069
		 0.25113869 0.22830899 0.11412961 0.17944324 0.28393701 0.28293902 0.282455 0.28305954
		 0.27985138 0.28216767 0.27987242 0.28008699 0.28238237 0.28213599 0.24517436 0.26022014
		 0.27409878 0.26792035 0.24055557 0.2657533 0.27478787 0.26583579 0.23742796 0.2640461
		 0.82695997 0.060008302 0.230597 0.88353831 0.86175865 0.78669196 0.75111765 0.71225911
		 0.094315618 0.89338756 0.11553511 0.87528074 0.84883082 0.82169545 0.641514 0.61633956
		 0.63698053 0.66864586 0.58624834 0.59968245 0.68400288 0.54816979 0.69276297 0.73624867
		 0.67708552 0.72180003 0.66363215 0.69831371 0.59006476 0.57572079 0.59115171 0.60955435
		 0.55772972 0.56785697 0.62984598 0.543944 0.62533516 0.66066802 0.61693454 0.64793724
		 0.60356188 0.62879473 0.7143541 0.68411416 0.71598029 0.7480036 0.646887 0.6762383
		 0.81201357 0.63927466 0.79765093 0.83341944 0.78299731 0.81417251 0.75343603 0.78493357
		 0.69407278 0.73090905 0.75809312 0.76902306 0.57733011 0.62520128 0.66165167 0.55724871
		 0.5681935 0.56438023 0.55366635 0.54347873 0.53982604 0.52661067 0.58860815 0.59185904
		 0.58274049 0.57971233 0.58694524 0.57835805 0.57360125 0.55809134 0.55251122 0.58146846
		 0.58661819 0.58109647 0.57805198 0.55226398 0.12750605 0.14131105 0.290218 0.16630736
		 0.22422221 0.25093898 0.27204937 0.28022453 0.28435311 0.28512555 0.28527868 0.28432548
		 0.28385249 0.28222179 0.28022659 0.27801171 0.27648485 0.27306846 0.28571919 0.28575897
		 0.2857554 0.28572965 0.28588736 0.28590667 0.28588369 0.28585783 0.28594148 0.28599623
		 0.28597251 0.28594023 0.28586727 0.28588423 0.28584072 0.28581575 0.28583199 0.28584328
		 0.28581509 0.28581169 0.28574544 0.28578883 0.28581879 0.28578454 0.28567433 0.28569368
		 0.28569248 0.28574416 0.28584856 0.28577811 0.28593877 0.28601909 0.28616309 0.28609702
		 0.28593761 0.2859599 0.2857621 0.28580657 0.28568771 0.28559092 0.28536057 0.28554383
		 0.28548738 0.28535089 0.28541362 0.28523576 0.28577134 0.28539401 0.2851311 0.2848784
		 0.28476548 0.2848002 0.28489971 0.28472394 0.28525463 0.28480482 0.28397405 0.28351766
		 0.28447112 0.28434733 0.28364804 0.28353107 0.28427663 0.28447759 0.28398588 0.28471088
		 0.28425744 0.28558978 0.28553951 0.28566203 0.28582829 0.2857208 0.28604081 0.28592318
		 0.28568545 0.28583989 0.2861056 0.28640839 0.28627554 0.28616032 0.28610456 0.28604969
		 0.28602254 0.28592983 0.39054647 0.39675772 0.28583387 0.28576127 0.28573707 0.28570792
		 0.28560603 0.28549433 0.28533083 0.28514621 0.28513789 0.28491449 0.28594163 0.28597516
		 0.28591964 0.28577366 0.28570873 0.28574938 0.95323688 0.94706285 0.94135618 0.99550718
		 0.98546779 0.97941196 0.97299826 0.96813363 0.96227169 0.95705271 0.96187848 0.95704263
		 0.95316738 0.99902344 0.98977166 0.98391134 0.97837186 0.9744246 0.96937925 0.96494496
		 0.96968722 0.96740615 0.96669453 0.99151027 0.98761433 0.98429424 0.98068678 0.97860301
		 0.97399122 0.97127253 0.97941816 0.70257878 0.91731846 0.74038738 0.78894669 0.016831525
		 0.0009765625 0.088595398 0.56003976 0.59389156 0.55107272 0.73717183 0.6886093 0.50756532
		 0.54769838 0.34510663 0.1441223 0.65906185 0.53725266 0.59739912 0.53856134 0.92629975
		 0.33659178 0.52072936 0.8498956 0.67875987 0.78066456 0.60400426 0.73511165 0.37036952
		 0.93988544 0.74300569 0.93867588 0.81919527 0.77505314 0.17297326 0.88975382 0.88099718
		 0.79883409 0.87352175 0.62765604 0.69720507 0.5720166 0.56306565 0.56470257 0.53887421
		 0.52078944 0.56929457 0.91351348 0.90580195 0.91462564 0.93873835 0.95680022 0.92511922
		 0.84857231 0.27877825 0.82609749 0.27848256 0.86056215 0.88597023 0.9030205 0.79381984
		 0.80972087 0.81212533 0.57418305 0.58531499 0.59667373 0.60444337 0.56218725 0.53677642
		 0.51972938 0.49567208 0.61307579 0.61066353 0.9677617 0.94994831 0.93548679 0.92765284
		 0.9688316 0.84187055 0.89537656 0.92707413 0.43137944 0.42382631 0.42730471 0.43725312
		 0.58094674 0.62898517 0.45395872 0.52743262 ;
	setAttr ".mve" -type "floatArray" 776 0.62246519 0.61732107 0.6118623 0.60560226
		 0.63805223 0.63483018 0.63136685 0.627361 0.37816486 0.37954131 0.37985933 0.37592131
		 0.37045339 0.37047032 0.3729859 0.37605539 0.71855354 0.70938903 0.69890797 0.75533354
		 0.74923503 0.74185002 0.73438287 0.72674632 0.65399528 0.64699942 0.63867486 0.68067926
		 0.6769135 0.6714347 0.66543049 0.65990871 0.68529099 0.69264019 0.69965482 0.70717776
		 0.71395433 0.6564284 0.66685534 0.67677653 0.382018 0.38652092 0.38135067 0.37894768
		 0.36187461 0.36876813 0.45288393 0.48678905 0.41101801 0.39865524 0.21363345 0.32016531
		 0.29186517 0.38926777 0.37653282 0.34161732 0.37913218 0.3782348 0.37199137 0.37164733
		 0.375705 0.3755762 0.37303665 0.39457926 0.38697714 0.34972131 0.3743794 0.36042997
		 0.33092541 0.61325759 0.21211296 0.30232492 0.29546124 0.32427776 0.34298697 0.72693837
		 0.09170793 0.0044733947 0.14097832 0.084544405 0.20021604 0.26471594 0.16201931 0.18383212
		 0.21482325 0.18879075 0.19743738 0.23387633 0.013915848 0.26669779 0.049988601 0.061830029
		 0.093646213 0.10799398 0.13695517 0.15687296 0.11921012 0.13290787 0.15770374 0.13918792
		 0.14376588 0.17378537 0.024250142 0.18440303 0.04547425 0.048775483 0.072210968 0.083497092
		 0.10269214 0.1198203 0.23277754 0.26110601 0.28848517 0.26056159 0.282965 0.30978671
		 0.045716725 0.34603027 0.091768779 0.11162061 0.14218698 0.1682823 0.19542073 0.22594723
		 0.21251673 0.17759156 0.12543491 0.079987228 0.30092412 0.26192966 0.24258089 0.10602924
		 0.095588177 0.089800537 0.10040659 0.11301044 0.10697421 0.11701196 0.11107522 0.040700532
		 0.042562257 0.058913238 0.055356793 0.081780002 0.075742409 0.0085945092 0.0009765625
		 0.0080818208 0.025475064 0.042143974 0.055252958 0.023430116 0.0022151368 0.70821428
		 0.11479841 0.36702967 0.58842999 0.50399846 0.41939265 0.39980257 0.38962609 0.3841823
		 0.38006377 0.45949608 0.44945082 0.42677888 0.38334841 0.31509033 0.26708978 0.37231788
		 0.36983937 0.36348057 0.3521986 0.32550326 0.27738792 0.22248229 0.37573457 0.37565055
		 0.37566569 0.37573108 0.37586004 0.37580198 0.37577671 0.37583798 0.37585938 0.37591422
		 0.37573487 0.37546211 0.37551132 0.37563983 0.37584007 0.3759571 0.37607455 0.37601134
		 0.37585333 0.37587351 0.37560633 0.37550974 0.37540981 0.37527433 0.37533721 0.37516084
		 0.37682107 0.37642559 0.3754192 0.3746736 0.37438065 0.37813094 0.37751058 0.37555844
		 0.37386125 0.37316135 0.37865525 0.37727273 0.37644306 0.37629834 0.37618357 0.37601718
		 0.37593254 0.66027379 0.37577146 0.37571037 0.37560904 0.37552929 0.37541553 0.3742834
		 0.37314811 0.37597275 0.37589082 0.37585837 0.37575978 0.37570426 0.3756794 0.37574777
		 0.37566689 0.37559587 0.37561327 0.37569723 0.37585622 0.37593648 0.37607688 0.36960265
		 0.36316058 0.35152134 0.32374138 0.27373052 0.22195767 0.10799807 0.83927828 0.71441108
		 0.60455269 0.49573332 0.45752183 0.41564739 0.39753532 0.38899568 0.38287261 0.37975064
		 0.3786253 0.37708402 0.37632105 0.37618929 0.3760758 0.37602141 0.37596726 0.37594059
		 0.37589344 0.37582067 0.37575337 0.37569422 0.37565818 0.37563038 0.37552881 0.3754181
		 0.37525591 0.37425578 0.37309596 0.37217209 0.62488383 0.65694803 0.68892187 0.72256374
		 0.37706819 0.3772141 0.37723526 0.37666795 0.37599257 0.37567735 0.37572291 0.37574548
		 0.3757664 0.37578547 0.37580267 0.37580591 0.37582505 0.37584794 0.37587848 0.62957472
		 0.66280955 0.69633257 0.73077154 0.37452206 0.37385634 0.37398261 0.37432465 0.37500042
		 0.37528297 0.37546489 0.37558249 0.3756642 0.37570855 0.3757382 0.37575117 0.37576222
		 0.37578067 0.62192965 0.37761053 0.37747517 0.37711951 0.37668642 0.37611982 0.3754268
		 0.37485707 0.37446728 0.37408406 0.37399358 0.3739593 0.60567647 0.60267383 0.59941047
		 0.59305567 0.62426758 0.62032479 0.61603457 0.6139245 0.61111033 0.60787421 0.59386414
		 0.59124386 0.58727103 0.58000189 0.60814047 0.60628074 0.60296643 0.60093153 0.59834552
		 0.59558845 0.58727485 0.58506572 0.58200771 0.57698303 0.59368956 0.59447026 0.59360117
		 0.59245783 0.58974153 0.58838886 0.58420849 0.37562934 0.37561497 0.37567592 0.37568185
		 0.37564003 0.37567049 0.7294935 0.38202941 0.80882549 0.73865831 0.71901375 0.38190252
		 0.77546757 0.37980139 0.76935929 0.37501937 0.76196629 0.37406042 0.7544921 0.375043
		 0.7508781 0.3757804 0.74266589 0.37816957 0.83052009 0.7468496 0.67410618 0.667117
		 0.69688725 0.70538938 0.65880102 0.68697387 0.70081717 0.67655504 0.6970405 0.73408622
		 0.69155145 0.72729826 0.68554252 0.71976966 0.68292063 0.716443 0.68001837 0.67705941
		 0.7090323 0.71274644 0.64257461 0.63744545 0.63199872 0.66104138 0.65815699 0.65492404
		 0.65145588 0.64966458 0.64745837 0.64498496 0.38413879 0.38683629 0.38160214 0.38055375
		 0.36949071 0.37289095 0.37027594 0.36448234 0.43902668 0.48170784 0.44202602 0.41305718
		 0.29131517 0.31931749 0.28041255 0.23357518 0.37183532 0.37254351 0.3791613 0.37857765
		 0.37332731 0.37231576 0.37486532 0.37441823 0.37647989 0.37813139 0.37769282 0.37611803
		 0.39579082 0.40839216 0.39440921 0.38797098 0.35036299 0.36577293 0.35425195 0.32852134
		 0.37730861 0.3781378 0.70711523 0.61825716 0.1417678 0.61026394 0.67850423 0.67171919
		 0.70049965 0.71919483 0.73359585 0.46824425 0.82979339 0.51745749 0.57661337 0.64100832
		 0.53812331 0.5598433 0.59092814 0.56499428 0.57339877 0.60993958 0.39015698 0.64300984
		 0.42627466 0.43833697 0.46983358 0.48437628 0.51311439 0.53312182 0.49506226 0.50870639
		 0.53369075 0.51522613 0.51948375 0.54974186 0.40015748 0.56034517 0.42135838 0.42489773
		 0.44809985 0.45957887 0.47859228 0.49590436 0.60905302 0.63731444 0.66471416 0.6368469
		 0.65912271 0.68597364 0.42236692 0.72230375 0.46835804 0.48818085 0.51867568 0.54474741
		 0.57177538 0.60229856 0.58876556 0.5539161 0.50191373 0.45656982 0.67727065 0.63805425
		 0.61874777 0.4815827 0.4711619 0.46532658 0.47592777 0.48849764 0.48242885 0.49235177
		 0.40131342 0.41625509 0.41800663 0.43081394 0.43447194 0.45736003 0.45123696 0.38386804
		 0.47418687 0.3835206 0.40095064 0.41757178 0.43068537 0.3986617 0.83226854 0.71761763
		 0.12608767 0.59857702 0.50335807 0.45674819 0.41613093 0.39916649 0.38951641 0.38329023
		 0.38001394 0.37218744 0.36971945 0.3634333 0.35210273 0.32444158 0.27377304 0.22296806
		 0.37580061 0.37579942 0.37579334 0.37578371 0.37593573 0.37591818 0.37587428 0.37589455
		 0.37604207 0.37602931 0.37598118 0.37599611 0.37603009 0.37597454 0.37592369 0.37595749
		 0.3758691 0.37585264 0.37581798 0.37584677 0.37584955 0.37589893 0.37588534 0.37585515
		 0.37576911 0.37577173 0.37584955 0.37591469 0.37609783 0.37600139 0.37610665 0.37609199
		 0.37656295 0.37636551 0.3762947 0.37647024 0.37646326 0.37630054 0.37615618 0.37624767
		 0.37606043 0.37598854 0.37583339 0.37586135 0.3757084 0.37567604 0.37704027 0.37676442
		 0.37652627 0.37592852 0.37562153 0.37522253 0.37483278 0.3784343 0.3774443 0.37699074
		 0.37769982 0.37715879 0.37655076 0.37580693 0.37583157 0.37486213 0.37529138 0.3747716
		 0.3741076 0.37432945 0.37348467 0.3758522 0.37573841 0.37594607 0.3761948 0.37606955
		 0.37621036 0.37618938 0.37886232 0.37769377 0.3772386 0.37660992 0.37638548 0.37624705
		 0.37611511 0.37604758 0.37599126 0.37590054 0.65569198 0.61861658 0.37579104 0.37577385
		 0.3757529 0.37574732 0.37565595 0.37559149 0.37550727 0.374506 0.37403706 0.37320462
		 0.37594211 0.37594002 0.37595335 0.37577149 0.37572798 0.3757489 0.62578535 0.62280965
		 0.61956406 0.64661419 0.6443671 0.64039266 0.63608611 0.63397664 0.63117486 0.62795907
		 0.61393327 0.61134684 0.60740227 0.62617618 0.62822121 0.62632793 0.62298822 0.62095416
		 0.61837059 0.61563301 0.60731995 0.60512948 0.60208142 0.60961372 0.61370385 0.61446387
		 0.61360055 0.61245024 0.60976136 0.6084345 0.60416907 0.77996981 0.5479154 0.74884593
		 0.73809677 0.36155629 0.48201242 0.19293302 0.17155653 0.23401348 0.10487905 0.37265837
		 0.36191198 0.52118188 0.39550477 0.001701909 0.83668154 0.39909357 0.5923807 0.39947283
		 0.52516782 0.48136032 0.0009765625 0.48636189 0.44338071 0.75298959 0.40809855 0.69733524
		 0.39108133 0.0037036545 0.2162471 0.014538997 0.14960678 0.022998171 0.40374216 0.84165746
		 0.025821831 0.023885326 0.37673357 0.32103309 0.066769503 0.031441737 0.45042667
		 0.46387944 0.41786683 0.48069617 0.48446804 0.37632942 0.042551834 0.074956685 0.088373333
		 0.10524956 0.10918121 0.098674506 0.8398385 0.37696403 0.82018685 0.37946337 0.84516948
		 0.84102231 0.83108878 0.74509495 0.76336473 0.78169155 0.81975824 0.81044406 0.80011374
		 0.78875268 0.82508308 0.82092154 0.81097937 0.8123371 0.74328518 0.76161456 0.5970419
		 0.60015339 0.61322653 0.62574935 0.73979378 0.70850265 0.64944714 0.83246028 0.58955675
		 0.60604286 0.62646991 0.64092177 0.68839639 0.72501945 0.7196461 0.6293124 ;
createNode polyTweakUV -n "chibi_template_famine_polyTweakUV18";
	rename -uid "7ACF8EA4-46F5-0157-CD39-1CA2D3C4C88D";
	setAttr ".uopa" yes;
	setAttr -s 380 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" 0.2408914 0.55405015 ;
	setAttr ".uvtk[1]" -type "float2" 0.2408914 0.55405009 ;
	setAttr ".uvtk[2]" -type "float2" 0.2408914 0.55405021 ;
	setAttr ".uvtk[3]" -type "float2" 0.24089134 0.55405009 ;
	setAttr ".uvtk[4]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[5]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[6]" -type "float2" 0.24089134 0.55405015 ;
	setAttr ".uvtk[7]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[16]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[17]" -type "float2" 0.24089137 0.55405021 ;
	setAttr ".uvtk[18]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[19]" -type "float2" 0.24089134 0.55405015 ;
	setAttr ".uvtk[20]" -type "float2" 0.2408914 0.55405015 ;
	setAttr ".uvtk[21]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[22]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[23]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[24]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[25]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[26]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[27]" -type "float2" 0.24089134 0.55405009 ;
	setAttr ".uvtk[28]" -type "float2" 0.24089134 0.55405015 ;
	setAttr ".uvtk[29]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[30]" -type "float2" 0.2408914 0.55405009 ;
	setAttr ".uvtk[31]" -type "float2" 0.2408914 0.55405015 ;
	setAttr ".uvtk[32]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[33]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[34]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[35]" -type "float2" 0.2408914 0.55405015 ;
	setAttr ".uvtk[36]" -type "float2" 0.24089134 0.55405015 ;
	setAttr ".uvtk[37]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[38]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[39]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[68]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[71]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[72]" -type "float2" 0.63069749 0.26060069 ;
	setAttr ".uvtk[73]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[74]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[76]" -type "float2" 0.63069749 0.26060069 ;
	setAttr ".uvtk[78]" -type "float2" 0.63069749 0.26060069 ;
	setAttr ".uvtk[80]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[81]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[82]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[83]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[84]" -type "float2" 0.63069737 0.26060069 ;
	setAttr ".uvtk[85]" -type "float2" 0.63069737 0.26060069 ;
	setAttr ".uvtk[86]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[87]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[88]" -type "float2" 0.63069749 0.26060069 ;
	setAttr ".uvtk[89]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[90]" -type "float2" 0.63069749 0.26060069 ;
	setAttr ".uvtk[91]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[92]" -type "float2" 0.63069737 0.26060069 ;
	setAttr ".uvtk[93]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[94]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[95]" -type "float2" 0.63069737 0.26060069 ;
	setAttr ".uvtk[96]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[97]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[98]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[99]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[100]" -type "float2" 0.63069737 0.26060069 ;
	setAttr ".uvtk[101]" -type "float2" 0.63069737 0.26060069 ;
	setAttr ".uvtk[102]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[103]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[104]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[105]" -type "float2" 0.63069749 0.26060069 ;
	setAttr ".uvtk[106]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[107]" -type "float2" 0.63069749 0.26060069 ;
	setAttr ".uvtk[108]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[109]" -type "float2" 0.63069749 0.26060069 ;
	setAttr ".uvtk[110]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[111]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[112]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[113]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[114]" -type "float2" 0.63069737 0.26060066 ;
	setAttr ".uvtk[115]" -type "float2" 0.63069737 0.26060069 ;
	setAttr ".uvtk[116]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[117]" -type "float2" 0.63069737 0.26060066 ;
	setAttr ".uvtk[118]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[119]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[120]" -type "float2" 0.63069749 0.26060069 ;
	setAttr ".uvtk[121]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[122]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[123]" -type "float2" 0.63069749 0.26060069 ;
	setAttr ".uvtk[124]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[125]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[126]" -type "float2" 0.63069737 0.26060069 ;
	setAttr ".uvtk[127]" -type "float2" 0.63069737 0.26060069 ;
	setAttr ".uvtk[128]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[129]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[130]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[131]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[132]" -type "float2" 0.63069737 0.26060069 ;
	setAttr ".uvtk[133]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[134]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[135]" -type "float2" 0.63069749 0.26060069 ;
	setAttr ".uvtk[136]" -type "float2" 0.63069749 0.26060069 ;
	setAttr ".uvtk[137]" -type "float2" 0.63069749 0.26060069 ;
	setAttr ".uvtk[138]" -type "float2" 0.63069749 0.26060069 ;
	setAttr ".uvtk[139]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[140]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[141]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[142]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[143]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[144]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[145]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[146]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[147]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[148]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[149]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[150]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[151]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[278]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[279]" -type "float2" 0.24089137 0.55405021 ;
	setAttr ".uvtk[280]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[281]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[297]" -type "float2" 0.2408914 0.55405015 ;
	setAttr ".uvtk[298]" -type "float2" 0.2408914 0.55405021 ;
	setAttr ".uvtk[299]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[300]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[327]" -type "float2" 0.24089137 0.55405021 ;
	setAttr ".uvtk[328]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[329]" -type "float2" 0.2408914 0.55405009 ;
	setAttr ".uvtk[330]" -type "float2" 0.2408914 0.55405009 ;
	setAttr ".uvtk[331]" -type "float2" 0.2408914 0.55405015 ;
	setAttr ".uvtk[332]" -type "float2" 0.24089137 0.55405021 ;
	setAttr ".uvtk[333]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[334]" -type "float2" 0.2408914 0.55405009 ;
	setAttr ".uvtk[335]" -type "float2" 0.2408914 0.55405021 ;
	setAttr ".uvtk[336]" -type "float2" 0.2408914 0.55405009 ;
	setAttr ".uvtk[337]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[338]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[339]" -type "float2" 0.2408914 0.55405021 ;
	setAttr ".uvtk[340]" -type "float2" 0.24089137 0.55405021 ;
	setAttr ".uvtk[341]" -type "float2" 0.24089134 0.55405009 ;
	setAttr ".uvtk[342]" -type "float2" 0.2408914 0.55405009 ;
	setAttr ".uvtk[343]" -type "float2" 0.24089137 0.55405021 ;
	setAttr ".uvtk[344]" -type "float2" 0.2408914 0.55405021 ;
	setAttr ".uvtk[345]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[346]" -type "float2" 0.24089134 0.55405009 ;
	setAttr ".uvtk[347]" -type "float2" 0.24089134 0.55405021 ;
	setAttr ".uvtk[348]" -type "float2" 0.2408914 0.55405009 ;
	setAttr ".uvtk[349]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[350]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[351]" -type "float2" 0.2408914 0.55405009 ;
	setAttr ".uvtk[352]" -type "float2" 0.2408914 0.55405009 ;
	setAttr ".uvtk[353]" -type "float2" 0.24089134 0.55405009 ;
	setAttr ".uvtk[354]" -type "float2" 0.24089137 0.55405021 ;
	setAttr ".uvtk[355]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[356]" -type "float2" 0.2408914 0.55405009 ;
	setAttr ".uvtk[357]" -type "float2" 0.24089134 0.55405009 ;
	setAttr ".uvtk[364]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[366]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[367]" -type "float2" 0.24089143 0.55405015 ;
	setAttr ".uvtk[368]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[370]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[372]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[374]" -type "float2" 0.24089143 0.55405015 ;
	setAttr ".uvtk[376]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[378]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[380]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[382]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[383]" -type "float2" 0.24089131 0.55405015 ;
	setAttr ".uvtk[384]" -type "float2" 0.24089143 0.55405009 ;
	setAttr ".uvtk[385]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[386]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[387]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[388]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[389]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[390]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[391]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[392]" -type "float2" 0.24089137 0.55405021 ;
	setAttr ".uvtk[393]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[394]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[395]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[396]" -type "float2" 0.24089143 0.55405015 ;
	setAttr ".uvtk[397]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[398]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[399]" -type "float2" 0.24089131 0.55405015 ;
	setAttr ".uvtk[400]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[401]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[402]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[403]" -type "float2" 0.24089143 0.55405009 ;
	setAttr ".uvtk[404]" -type "float2" 0.24089143 0.55405015 ;
	setAttr ".uvtk[405]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[406]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[407]" -type "float2" 0.24089137 0.55405021 ;
	setAttr ".uvtk[408]" -type "float2" 0.24089143 0.55405015 ;
	setAttr ".uvtk[409]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[410]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[411]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[412]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[413]" -type "float2" 0.24089143 0.55405015 ;
	setAttr ".uvtk[452]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[455]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[456]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[457]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[458]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[459]" -type "float2" 0.63069749 0.26060066 ;
	setAttr ".uvtk[461]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[463]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[464]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[465]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[466]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[467]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[468]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[469]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[470]" -type "float2" 0.63069737 0.26060066 ;
	setAttr ".uvtk[471]" -type "float2" 0.63069749 0.26060066 ;
	setAttr ".uvtk[472]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[473]" -type "float2" 0.63069737 0.26060066 ;
	setAttr ".uvtk[474]" -type "float2" 0.63069737 0.26060069 ;
	setAttr ".uvtk[475]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[476]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[477]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[478]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[479]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[480]" -type "float2" 0.63069737 0.26060069 ;
	setAttr ".uvtk[481]" -type "float2" 0.63069749 0.26060066 ;
	setAttr ".uvtk[482]" -type "float2" 0.63069737 0.26060066 ;
	setAttr ".uvtk[483]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[484]" -type "float2" 0.63069749 0.26060066 ;
	setAttr ".uvtk[485]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[486]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[487]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[488]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[489]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[490]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[491]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[492]" -type "float2" 0.63069737 0.26060066 ;
	setAttr ".uvtk[493]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[494]" -type "float2" 0.63069749 0.26060066 ;
	setAttr ".uvtk[495]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[496]" -type "float2" 0.63069749 0.26060066 ;
	setAttr ".uvtk[497]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[498]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[499]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[500]" -type "float2" 0.63069749 0.26060069 ;
	setAttr ".uvtk[501]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[502]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[503]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[504]" -type "float2" 0.63069749 0.26060066 ;
	setAttr ".uvtk[505]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[506]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[507]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[508]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[509]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[510]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[511]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[512]" -type "float2" 0.63069737 0.26060066 ;
	setAttr ".uvtk[513]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[514]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[515]" -type "float2" 0.63069737 0.26060066 ;
	setAttr ".uvtk[516]" -type "float2" 0.63069749 0.26060066 ;
	setAttr ".uvtk[517]" -type "float2" 0.63069749 0.26060066 ;
	setAttr ".uvtk[518]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[519]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[520]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[521]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[522]" -type "float2" 0.63069749 0.26060066 ;
	setAttr ".uvtk[523]" -type "float2" 0.63069737 0.26060069 ;
	setAttr ".uvtk[524]" -type "float2" 0.63069737 0.26060066 ;
	setAttr ".uvtk[525]" -type "float2" 0.63069737 0.26060069 ;
	setAttr ".uvtk[526]" -type "float2" 0.63069737 0.26060069 ;
	setAttr ".uvtk[527]" -type "float2" 0.63069749 0.26060069 ;
	setAttr ".uvtk[528]" -type "float2" 0.63069737 0.26060069 ;
	setAttr ".uvtk[529]" -type "float2" 0.63069737 0.26060066 ;
	setAttr ".uvtk[530]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[531]" -type "float2" 0.63069749 0.26060066 ;
	setAttr ".uvtk[532]" -type "float2" 0.63069737 0.26060066 ;
	setAttr ".uvtk[533]" -type "float2" 0.63069749 0.26060069 ;
	setAttr ".uvtk[534]" -type "float2" 0.63069737 0.26060066 ;
	setAttr ".uvtk[535]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[656]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[657]" -type "float2" 0.24089143 0.55405015 ;
	setAttr ".uvtk[658]" -type "float2" 0.24089137 0.55405021 ;
	setAttr ".uvtk[659]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[660]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[661]" -type "float2" 0.24089131 0.55405015 ;
	setAttr ".uvtk[662]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[663]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[664]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[665]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[666]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[667]" -type "float2" 0.24089143 0.55405009 ;
	setAttr ".uvtk[668]" -type "float2" 0.24089143 0.55405009 ;
	setAttr ".uvtk[669]" -type "float2" 0.24089143 0.55405015 ;
	setAttr ".uvtk[670]" -type "float2" 0.24089131 0.55405015 ;
	setAttr ".uvtk[671]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[672]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[673]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[674]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[675]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[676]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[677]" -type "float2" 0.24089137 0.55405021 ;
	setAttr ".uvtk[678]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[679]" -type "float2" 0.24089143 0.55405009 ;
	setAttr ".uvtk[680]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[681]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[682]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[683]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[684]" -type "float2" 0.24089131 0.55405009 ;
	setAttr ".uvtk[685]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[686]" -type "float2" 0.24089131 0.55405009 ;
	setAttr ".uvtk[687]" -type "float2" 0.63069737 0.26060072 ;
	setAttr ".uvtk[688]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[689]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[690]" -type "float2" 0.63069737 0.26060066 ;
	setAttr ".uvtk[694]" -type "float2" 0.63069749 0.26060069 ;
	setAttr ".uvtk[695]" -type "float2" 0.63069737 0.26060069 ;
	setAttr ".uvtk[696]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[697]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[698]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[703]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[704]" -type "float2" 0.63069749 0.26060066 ;
	setAttr ".uvtk[705]" -type "float2" 0.63069749 0.26060066 ;
	setAttr ".uvtk[706]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[707]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[709]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[710]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[711]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[712]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[713]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[714]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[716]" -type "float2" 0.63069737 0.26060069 ;
	setAttr ".uvtk[717]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[718]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[719]" -type "float2" 0.63069737 0.26060069 ;
	setAttr ".uvtk[720]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[722]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[723]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[724]" -type "float2" 0.63069737 0.26060066 ;
	setAttr ".uvtk[725]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[726]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[727]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[728]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[729]" -type "float2" 0.63069737 0.26060066 ;
	setAttr ".uvtk[730]" -type "float2" 0.63069749 0.26060066 ;
	setAttr ".uvtk[731]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[732]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[733]" -type "float2" 0.63069743 0.26060066 ;
	setAttr ".uvtk[734]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[735]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[736]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[737]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[738]" -type "float2" 0.63069749 0.26060069 ;
	setAttr ".uvtk[739]" -type "float2" 0.63069743 0.26060069 ;
	setAttr ".uvtk[740]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[742]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[744]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[745]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[746]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[747]" -type "float2" 0.24089143 0.55405015 ;
	setAttr ".uvtk[748]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[749]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[750]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[751]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[752]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[753]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[754]" -type "float2" 0.24089137 0.55405021 ;
	setAttr ".uvtk[755]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[756]" -type "float2" 0.24089137 0.55405021 ;
	setAttr ".uvtk[757]" -type "float2" 0.2408914 0.55405009 ;
	setAttr ".uvtk[758]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[759]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[760]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[761]" -type "float2" 0.24089131 0.55405009 ;
	setAttr ".uvtk[762]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[763]" -type "float2" 0.24089131 0.55405015 ;
	setAttr ".uvtk[764]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[765]" -type "float2" 0.24089131 0.55405015 ;
	setAttr ".uvtk[766]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[767]" -type "float2" 0.24089137 0.55405021 ;
	setAttr ".uvtk[768]" -type "float2" 0.2408914 0.55405009 ;
	setAttr ".uvtk[769]" -type "float2" 0.2408914 0.55405009 ;
	setAttr ".uvtk[770]" -type "float2" 0.2408914 0.55405015 ;
	setAttr ".uvtk[771]" -type "float2" 0.2408914 0.55405015 ;
	setAttr ".uvtk[772]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[773]" -type "float2" 0.24089137 0.55405009 ;
	setAttr ".uvtk[774]" -type "float2" 0.24089137 0.55405015 ;
	setAttr ".uvtk[775]" -type "float2" 0.24089137 0.55405015 ;
createNode polyMapCut -n "chibi_template_famine_polyMapCut17";
	rename -uid "48A20FFB-4B91-2025-85D5-A8B0854BC1E0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[93]" "e[96]" "e[98:99]" "e[248]" "e[320]" "e[473]" "e[493]" "e[536]" "e[573]" "e[813]" "e[816]" "e[820]" "e[823]" "e[1008]" "e[1046]" "e[1232]" "e[1260]" "e[1267]" "e[1286]";
createNode polyMapCut -n "chibi_template_famine_polyMapCut18";
	rename -uid "60337C94-4BBD-63FD-2998-3C9F8BA4E238";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[347:349]" "e[355]" "e[360]" "e[369]" "e[378]" "e[387]" "e[396]" "e[432]" "e[450]" "e[548]" "e[604]";
createNode polyMapCut -n "chibi_template_famine_polyMapCut19";
	rename -uid "856A5E0A-4D27-7ACC-E8BD-E4B5543C4B26";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[79]" "e[83]" "e[92]" "e[101]" "e[109]" "e[240]" "e[285]" "e[296]" "e[334]";
createNode Unfold3DUnfold -n "chibi_template_famine_Unfold3DUnfold18";
	rename -uid "3345B19C-47F5-FCBC-99EB-41A3BB6C8394";
	setAttr ".uvl" -type "Int32Array" 819 0 1 2 3 4 5
		 6 7 8 9 10 11 12 13 14 15 16 17
		 18 19 20 21 22 23 24 25 26 27 28 29
		 30 31 32 33 34 35 36 37 38 39 40 41
		 42 43 44 45 46 47 48 49 50 51 52 53
		 54 55 56 57 58 59 60 61 62 63 64 65
		 66 67 68 69 70 71 72 73 74 75 76 77
		 78 79 80 81 82 83 84 85 86 87 88 89
		 90 91 92 93 94 95 96 97 98 99 100 101
		 102 103 104 105 106 107 108 109 110 111 112 113
		 114 115 116 117 118 119 120 121 122 123 124 125
		 126 127 128 129 130 131 132 133 134 135 136 137
		 138 139 140 141 142 143 144 145 146 147 148 149
		 150 151 152 153 154 155 156 157 158 159 160 161
		 162 163 164 165 166 167 168 169 170 171 172 173
		 174 175 176 177 178 179 180 181 182 183 184 185
		 186 187 188 189 190 191 192 193 194 195 196 197
		 198 199 200 201 202 203 204 205 206 207 208 209
		 210 211 212 213 214 215 216 217 218 219 220 221
		 222 223 224 225 226 227 228 229 230 231 232 233
		 234 235 236 237 238 239 240 241 242 243 244 245
		 246 247 248 249 250 251 252 253 254 255 256 257
		 258 259 260 261 262 263 264 265 266 267 268 269
		 270 271 272 273 274 275 276 277 278 279 280 281
		 282 283 284 285 286 287 288 289 290 291 292 293
		 294 295 296 297 298 299 300 301 302 303 304 305
		 306 307 308 309 310 311 312 313 314 315 316 317
		 318 319 320 321 322 323 324 325 326 327 328 329
		 330 331 332 333 334 335 336 337 338 339 340 341
		 342 343 344 345 346 347 348 349 350 351 352 353
		 354 355 356 357 358 359 360 361 362 363 364 365
		 366 367 368 369 370 371 372 373 374 375 376 377
		 378 379 380 381 382 383 384 385 386 387 388 389
		 390 391 392 393 394 395 396 397 398 399 400 401
		 402 403 404 405 406 407 408 409 410 411 412 413
		 414 415 416 417 418 419 420 421 422 423 424 425
		 426 427 428 429 430 431 432 433 434 435 436 437
		 438 439 440 441 442 443 444 445 446 447 448 449
		 450 451 452 453 454 455 456 457 458 459 460 461
		 462 463 464 465 466 467 468 469 470 471 472 473
		 474 475 476 477 478 479 480 481 482 483 484 485
		 486 487 488 489 490 491 492 493 494 495 496 497
		 498 499 500 501 502 503 504 505 506 507 508 509
		 510 511 512 513 514 515 516 517 518 519 520 521
		 522 523 524 525 526 527 528 529 530 531 532 533
		 534 535 536 537 538 539 540 541 542 543 544 545
		 546 547 548 549 550 551 552 553 554 555 556 557
		 558 559 560 561 562 563 564 565 566 567 568 569
		 570 571 572 573 574 575 576 577 578 579 580 581
		 582 583 584 585 586 587 588 589 590 591 592 593
		 594 595 596 597 598 599 600 601 602 603 604 605
		 606 607 608 609 610 611 612 613 614 615 616 617
		 618 619 620 621 622 623 624 625 626 627 628 629
		 630 631 632 633 634 635 636 637 638 639 640 641
		 642 643 644 645 646 647 648 649 650 651 652 653
		 654 655 656 657 658 659 660 661 662 663 664 665
		 666 667 668 669 670 671 672 673 674 675 676 677
		 678 679 680 681 682 683 684 685 686 687 688 689
		 690 691 692 693 694 695 696 697 698 699 700 701
		 702 703 704 705 706 707 708 709 710 711 712 713
		 714 715 716 717 718 719 720 721 722 723 724 725
		 726 727 728 729 730 731 732 733 734 735 736 737
		 738 739 740 741 742 743 744 745 746 747 748 749
		 750 751 752 753 754 755 756 757 758 759 760 761
		 762 763 764 765 766 767 768 769 770 771 772 773
		 774 775 776 777 778 779 780 781 782 783 784 785
		 786 787 788 789 790 791 792 793 794 795 796 797
		 798 799 800 801 802 803 804 805 806 807 808 809
		 810 811 812 813 814 815 816 817 818 ;
	setAttr ".mdp" -type "string" "|pCylinder27|pCylinder27Shape";
	setAttr ".usn" -type "string" "map1";
	setAttr ".miee" yes;
	setAttr ".mue" -type "floatArray" 819 0.799088 0.80592328 0.81210434 0.81722116
		 0.76849401 0.77552664 0.78293133 0.7911281 0.18733296 0.17750677 0.18217723 0.20145194
		 0.22226878 0.23046967 0.22676626 0.20762482 0.86426723 0.87724745 0.88931781 0.79597664
		 0.80951363 0.8231982 0.83660525 0.85031021 0.8214224 0.83191276 0.84153068 0.76744151
		 0.77821302 0.7891947 0.80044776 0.81093568 0.84308326 0.83047801 0.8179279 0.80422586
		 0.79054135 0.8779788 0.86785716 0.8558507 0.1674747 0.14214057 0.15541071 0.17768966
		 0.30230749 0.30237159 0.1325509 0.096969172 0.12912324 0.15914035 0.30281141 0.3025324
		 0.21496494 0.1675705 0.19001439 0.23171382 0.85033244 0.84121484 0.75189006 0.24742042
		 0.2143293 0.8186062 0.79076719 0.13631888 0.16429402 0.30238557 0.20207773 0.23907992
		 0.10458421 0.076519817 0.21625243 0.070733413 0.14366075 0.17827204 0.2160984 0.04190081
		 0.039867498 0.29358461 0.0574379 0.27901515 0.083139837 0.10959383 0.28473243 0.30911949
		 0.28898579 0.25825357 0.33829698 0.32524472 0.24433249 0.37543479 0.23542984 0.19299772
		 0.2503421 0.20678914 0.26312664 0.2294119 0.33488286 0.3487471 0.33352265 0.31577367
		 0.36617205 0.35608718 0.29706252 0.37924883 0.30119202 0.26670858 0.30909094 0.27878049
		 0.3218495 0.29725584 0.21381448 0.24322343 0.21233672 0.18116741 0.27944535 0.25102124
		 0.11930437 0.28715205 0.13310079 0.098221481 0.14718685 0.11683875 0.17583524 0.1452501
		 0.23352194 0.19772415 0.17143133 0.16101284 0.3472282 0.30047297 0.26502511 0.36692747
		 0.35633484 0.36008313 0.37044778 0.38028461 0.38388604 0.39665949 0.40243092 0.33386424
		 0.34273699 0.33845186 0.34552747 0.34655195 0.35124364 0.36697152 0.35612965 0.34424338
		 0.33911943 0.34434545 0.34714478 0.37253475 0.30311933 0.58440053 0.30296206 0.24646443
		 0.56673628 0.54588652 0.50750154 0.50069141 0.49433115 0.4818795 0.46409446 0.52785367
		 0.11207543 0.14486511 0.17819348 0.2230114 0.30270183 0.77900749 0.27726188 0.27739847
		 0.27522889 0.27146342 0.26823443 0.26538935 0.79355675 0.79496366 0.81643522 0.81088591
		 0.91514963 0.83671641 0.85007977 0.89839149 0.91962707 0.94900078 0.86184871 0.7915445
		 0.81010783 0.85530972 0.91155678 0.94017214 0.88723677 0.91620785 0.89578074 0.87648398
		 0.84777367 0.83825666 0.80660856 0.80278087 0.78964221 0.78821772 0.87284958 0.86047584
		 0.82442462 0.79716569 0.78202915 0.86109495 0.85007215 0.82221031 0.78863174 0.77607453
		 0.62319815 0.61961138 0.60027915 0.55898219 0.52575272 0.50607991 0.56134927 0.81377703
		 0.75261873 0.75277799 0.75279021 0.75280899 0.75293446 0.75236738 0.75212961 0.52320272
		 0.94053459 0.91238761 0.8589319 0.81722993 0.79245687 0.75272352 0.75279397 0.79190958
		 0.81359941 0.86098152 0.92015922 0.95078564 0.50609887 0.28979293 0.28977343 0.28869894
		 0.28679606 0.28526452 0.28388283 0.29130498 0.0062388526 0.033520229 0.057064764
		 0.078673862 0.094819225 0.11329544 0.12038063 0.12635469 0.13899785 0.86567974 0.87058324
		 0.88063961 0.89466816 0.9304803 0.95814151 0.97383815 0.97151077 0.96104568 0.92982781
		 0.82524878 0.77366871 0.77511454 0.77194506 0.77513039 0.77294165 0.77162647 0.77068907
		 0.76760864 0.76441103 0.28640664 0.79532778 0.81641865 0.83706027 0.85757959 0.19651306
		 0.19644855 0.83257169 0.83898014 0.84687001 0.86159956 0.8746081 0.88442153 0.89068419
		 0.88955039 0.88344467 0.87918508 0.87713122 0.87837279 0.62222868 0.78683889 0.80542701
		 0.82390743 0.84306508 0.21854348 0.2311867 0.800596 0.80205911 0.81169647 0.81582242
		 0.82454598 0.83118689 0.83612537 0.84020847 0.84146988 0.82872558 0.80707693 0.78478104
		 0.75219953 0.62395853 0.87289602 0.86461431 0.85361558 0.8419798 0.82436711 0.80982476
		 0.79566741 0.78052336 0.76647389 0.75230324 0.79237318 0.79836017 0.80389303 0.80957747
		 0.76101846 0.76691884 0.77316737 0.77790248 0.78360403 0.78867459 0.78395045 0.78862906
		 0.79236192 0.79544181 0.75685829 0.76256347 0.76795071 0.77179098 0.77668589 0.78098637
		 0.77636033 0.77854568 0.77919078 0.7780925 0.75895584 0.76218235 0.76569706 0.76771903
		 0.77219701 0.77481276 0.76688844 0.77726018 0.78997219 0.79033184 0.77714401 0.80158401
		 0.76704979 0.22969042 0.42734736 0.18339561 0.24266475 0.21762449 0.42264724 0.31092545
		 0.40325096 0.29739499 0.38231933 0.28371808 0.37400529 0.27031824 0.37785003 0.26386145
		 0.38616812 0.24935296 0.40753019 0.20198312 0.25662008 0.2855342 0.27503857 0.25109878
		 0.26387024 0.26541397 0.23908782 0.33949146 0.22896017 0.32872373 0.31638241 0.31774786
		 0.30270374 0.30650112 0.28900704 0.30152461 0.28303102 0.29601878 0.29053664 0.26988199
		 0.27646491 0.30786926 0.30102444 0.29483303 0.34600702 0.33844131 0.33141816 0.32402354
		 0.3201203 0.31583142 0.31163323 0.43735167 0.46251345 0.44870207 0.42647535 0.35807934
		 0.35726559 0.32748327 0.3272033 0.47302964 0.50850368 0.49319738 0.46049279 0.39067784
		 0.38239771 0.33716789 0.34023848 0.43806133 0.42720672 0.65292442 0.42208374 0.7128045
		 0.7245577 0.37359461 0.7029686 0.39027625 0.40789604 0.67087823 0.38305971 0.44590899
		 0.47589228 0.46851829 0.44056758 0.37334818 0.36569223 0.32954502 0.33359858 0.41504708
		 0.40275016 0.64824021 0.52944773 0.32689324 0.70326144 0.68208116 0.60908049 0.57448518
		 0.53669614 0.56431961 0.71283966 0.59677976 0.69523114 0.66950917 0.64312059 0.46789801
		 0.44341645 0.46348938 0.4942832 0.41415337 0.42721778 0.50921756 0.37712285 0.51773655
		 0.56002545 0.50249058 0.54597443 0.48940748 0.52313453 0.4178648 0.40391558 0.4189218
		 0.43681797 0.38641968 0.39626819 0.45655113 0.37301332 0.45216447 0.48652491 0.44399503
		 0.47414452 0.43099043 0.4555288 0.53873348 0.50932574 0.54031491 0.57145691 0.47312316
		 0.50166667 0.6337052 0.46572033 0.61973786 0.65452194 0.60548753 0.63580471 0.57673979
		 0.60737044 0.51901037 0.55483282 0.58126873 0.59189785 0.40548059 0.45203426 0.48748153
		 0.38595188 0.39659545 0.39288712 0.3824681 0.37256089 0.36900869 0.35615706 0.41644827
		 0.41960967 0.41074207 0.40779725 0.4148311 0.40648028 0.40185437 0.38677129 0.38134474
		 0.40950507 0.41451302 0.40914333 0.40618262 0.38110435 0.60024309 0.5726198 0.31461176
		 0.54874367 0.52673143 0.510391 0.49167565 0.48441032 0.47818062 0.46501186 0.6376105
		 0.3186264 0.31495744 0.314836 0.31607237 0.31826699 0.3201372 0.32174039 0.70405465
		 0.71309727 0.71522993 0.7106759 0.62592232 0.62771833 0.66814071 0.65504736 0.58562279
		 0.5561676 0.56458861 0.59280038 0.61582279 0.62183702 0.64639843 0.64361483 0.67649734
		 0.69792902 0.71175748 0.69441056 0.68916214 0.66532683 0.66391748 0.68823051 0.71380013
		 0.71569753 0.69205326 0.66948408 0.61474115 0.64452708 0.58511692 0.55437833 0.6177814
		 0.58886236 0.6093632 0.62856734 0.64360559 0.63068306 0.65757203 0.66699356 0.68957973
		 0.68102288 0.69892502 0.7027728 0.71606511 0.71730059 0.63172001 0.64412135 0.65779465
		 0.68026024 0.69307363 0.70761687 0.7227605 0.6427049 0.63969767 0.65075499 0.65379941
		 0.66500294 0.66243261 0.68012822 0.6819768 0.70212573 0.69471586 0.70888996 0.71554959
		 0.72405857 0.72813642 0.69549811 0.7141788 0.67441988 0.62097251 0.65015745 0.56496096
		 0.59368128 0.63323414 0.6313923 0.6238429 0.610156 0.57450569 0.54693586 0.53128362
		 0.53361189 0.54401523 0.62621081 0.67924255 0.72001332 0.73162562 0.72839367 0.7336567
		 0.7283957 0.73272359 0.73403847 0.7350111 0.73715639 0.73812586 0.7398417 0.58984262
		 0.57506204 0.60668212 0.73040819 0.73051572 0.73853868 0.31458518 0.30858108 0.30303144
		 0.35569215 0.34592903 0.34003985 0.3338027 0.32907191 0.32337129 0.31829599 0.32298893
		 0.31828618 0.31451756 0.35911161 0.35011443 0.3444154 0.33902839 0.33518976 0.33028322
		 0.32597104 0.33058277 0.32836449 0.32767245 0.35180524 0.3480165 0.34478775 0.34127957
		 0.33925319 0.33476833 0.33212444 0.34004587 0.52728218 0.73611194 0.56405026 0.61127317
		 0.44567716 0.48552629 0.38966659 0.016548969 0.049469121 0.0078287395 0.18880604
		 0.14158005 0.12042797 0.16019349 0.30878472 0.0009765625 0.48496294 0.36650616 0.42499727
		 0.36777884 0.74484605 0.31265295 0.35043761 0.67054462 0.50411886 0.60321891 0.43142062
		 0.55891973 0.29745236 0.38594067 0.19447936 0.3847644 0.26857209 0.2256448 0.0097169308
		 0.33718872 0.32867309 0.24877128 0.32140341 0.082304336 0.14993927 0.40031335 0.39160872
		 0.39320058 0.36808309 0.35049602 0.39766625 0.36029452 0.35279521 0.36137602 0.38482514
		 0.40238988 0.37158084 0.21280116 0.3967821 0.19094487 0.41696918 0.22446102 0.24916983
		 0.2657508 0.15955552 0.17501898 0.17735724 0.89408261 0.90490812 0.91595429 0.92351007
		 0.8824169 0.85770541 0.84112757 0.81773233 0.93190491 0.92955905 0.32871026 0.31138712
		 0.29732355 0.28970525 0.32975069 0.20628384 0.25831723 0.28914246 0.75520915 0.74786389
		 0.75124657 0.76092118 0.9006601 0.94737649 0.77716702 0.84861881 0.35971981 0.68505949
		 0.40862882 0.66213304 0.30252129 0.73688334 0.44876051 0.88257939 0.3339445 0.43352935
		 0.34678987 0.24528277 0.22185975 0.19571552 0.18198299 0.76681095 0.27104706 0.15483926
		 0.25818476 0.17031272 0.8803218 0.88065916 0.88215363 0.69021273 0.99899065 0.99902344
		 0.98182607 0.94345993 0.97928929 0.6208145 0.88477856 0.9043296 0.94589007 0.021653991
		 0.038907964 0.077274121 0.097408026 0.11006688 0.12200852 0.60548764 0.059434321
		 0.10404419 0.1393158 ;
	setAttr ".mve" -type "floatArray" 819 0.67252022 0.66751766 0.66220915 0.65612137
		 0.68767828 0.68454492 0.68117696 0.67728132 0.061647698 0.085365951 0.10074458 0.1111531
		 0.10518575 0.08918079 0.065699078 0.055862561 0.76596409 0.75705177 0.74685919 0.80173182
		 0.79580116 0.7886194 0.78135777 0.77393138 0.70318258 0.69637924 0.6882838 0.72913218
		 0.72547001 0.72014207 0.71430302 0.70893323 0.73361695 0.7407639 0.74758548 0.75490141
		 0.76149148 0.7055487 0.71568865 0.72533685 0.090067424 0.084294297 0.042505503 0.04564124
		 0.10931668 0.065747462 0.25612971 0.23584631 0.15959868 0.17293753 0.29444343 0.20617916
		 0.28643185 0.2724244 0.1859476 0.19730367 0.30450144 0.30797145 0.32698664 0.058025796
		 0.04808519 0.31957787 0.31856099 0.12198536 0.12970816 0.1523124 0.14351654 0.14686064
		 0.70685941 0.29769671 0.33373824 0.67904603 0.67237127 0.70039475 0.71858901 0.32462665
		 0.47422561 0.40644643 0.52213997 0.34353432 0.57974738 0.64247215 0.54260188 0.5638144
		 0.5939526 0.56863654 0.5770452 0.6124813 0.3985745 0.64439946 0.43365446 0.44516999
		 0.47611055 0.49006343 0.51822758 0.53759718 0.5009709 0.51429164 0.53840512 0.52039886
		 0.52485085 0.55404413 0.40862438 0.56436956 0.42926434 0.43247473 0.45526522 0.46624073
		 0.48490751 0.50156426 0.6114127 0.63896155 0.66558719 0.63843209 0.66021895 0.68630248
		 0.42950016 0.72154856 0.47428477 0.49359027 0.52331537 0.54869252 0.57508403 0.60477042
		 0.59170955 0.55774558 0.50702435 0.46282747 0.67768383 0.63976252 0.62094629 0.48815277
		 0.47799906 0.47237071 0.48268488 0.49494183 0.48907173 0.49883321 0.49305987 0.42462203
		 0.42643249 0.44233349 0.4388749 0.46457091 0.45869949 0.3933996 0.38599131 0.39290103
		 0.40981558 0.42602572 0.43877393 0.4078269 0.4065949 0.30414784 0.34679997 0.1019978
		 0.25621656 0.21469595 0.14503774 0.10948665 0.070706323 0.032897253 0.0009765625
		 0.18648143 0.20603113 0.22443931 0.2392493 0.25105411 0.25957596 0.31968862 0.062369902
		 0.10667908 0.15131748 0.20438243 0.25777107 0.29329899 0.55337006 0.49687603 0.50313991
		 0.55060887 0.5731405 0.59227878 0.56368083 0.56571645 0.50845432 0.51284349 0.50581527
		 0.45002872 0.45213467 0.44975004 0.45087084 0.44454741 0.39003128 0.41605002 0.42570904
		 0.39777896 0.42660734 0.39957759 0.43261895 0.41008496 0.43101561 0.40957889 0.35472351
		 0.35818261 0.35967654 0.36191726 0.36093926 0.32164085 0.32461873 0.33767048 0.33785963
		 0.33853361 0.32365113 0.34534886 0.35674709 0.38520351 0.42211565 0.52467018 0.61131966
		 0.63683325 0.56387591 0.51029378 0.44721979 0.42740303 0.40751615 0.35845929 0.33956492
		 0.56672484 0.54194069 0.53552449 0.53354108 0.52678847 0.51868606 0.53774762 0.47589692
		 0.47637984 0.47981128 0.48021218 0.48259875 0.48381335 0.48002723 0.064014211 0.10804815
		 0.15201466 0.20561148 0.25896424 0.29405689 0.34541047 0.35417193 0.31559083 0.27741081
		 0.22626966 0.19676979 0.15264083 0.1163582 0.078479439 0.038643591 0.30491617 0.32173344
		 0.35017693 0.37455988 0.40198877 0.43528396 0.4825286 0.51759404 0.55250114 0.5902977
		 0.61438495 0.56036055 0.52265549 0.50005561 0.47724372 0.44853568 0.42861465 0.40768927
		 0.3592838 0.33939987 0.038908716 0.67487228 0.70605409 0.73714793 0.76986396 0.057163399
		 0.044122141 0.31205887 0.32956102 0.36068752 0.40227202 0.43021071 0.45184511 0.48102486
		 0.5065617 0.53374219 0.56257111 0.59131491 0.61515474 0.64054751 0.67943406 0.71175426
		 0.74435467 0.7778458 0.059214685 0.052677345 0.31736168 0.33813655 0.36272606 0.40850472
		 0.43012509 0.45187998 0.48021767 0.50338989 0.5289104 0.55474001 0.57801026 0.59498918
		 0.6108771 0.33943114 0.3406674 0.34232277 0.3445816 0.34771073 0.34984049 0.35167849
		 0.35183838 0.35265622 0.35249972 0.35193229 0.65619361 0.65327352 0.65010005 0.64392012
		 0.67427301 0.67043871 0.66626662 0.66421461 0.66147786 0.6583308 0.64470637 0.64215821
		 0.6382947 0.63122559 0.65858978 0.65678126 0.65355814 0.6515792 0.64906436 0.64638317
		 0.63829839 0.63615006 0.63317621 0.62828982 0.64453655 0.64529574 0.6444506 0.64333874
		 0.64069718 0.63938177 0.63531643 0.48121592 0.48046187 0.51637781 0.51927984 0.49639273
		 0.50115258 0.83237296 0.085279994 0.90952164 0.84128553 0.8221817 0.10067093 0.87708181
		 0.11119413 0.87114161 0.10539327 0.8639521 0.089518435 0.85668361 0.065688409 0.85316908
		 0.059037615 0.8451829 0.058453355 0.93061918 0.84925139 0.77851003 0.7717132 0.80066413
		 0.80893224 0.7636261 0.79102361 0.80448586 0.78089148 0.80081314 0.83683932 0.79547518
		 0.83023822 0.78963161 0.82291675 0.7870819 0.81968164 0.7842595 0.78138202 0.81247491
		 0.81608689 0.74784625 0.74285823 0.7375614 0.76580477 0.76299983 0.75985581 0.75648308
		 0.75474113 0.7525956 0.75019026 0.089863479 0.083815426 0.042459611 0.046060082 0.10223512
		 0.058009926 0.062390834 0.10679045 0.2553739 0.23481581 0.20515081 0.22380364 0.28611821
		 0.25080839 0.25767365 0.29317304 0.27188802 0.23880747 0.30536726 0.018174769 0.31881684
		 0.31980297 0.05255124 0.31767902 0.04843574 0.044964455 0.31257477 0.021868747 0.17249975
		 0.15892394 0.12144104 0.12943166 0.1971685 0.14687365 0.15133069 0.20433168 0.1856692
		 0.14342372 0.92493188 0.29647291 0.34343255 0.83074611 0.89710832 0.89051008 0.9184984
		 0.93667907 0.3230972 0.69263506 0.35399514 0.74049389 0.79802167 0.8606444 0.76059097
		 0.78171313 0.81194252 0.78672236 0.79489553 0.83043069 0.61669689 0.86259079 0.65182054
		 0.66355085 0.69418067 0.70832312 0.73627031 0.75572711 0.71871501 0.7319836 0.75628036
		 0.73832387 0.74246436 0.77188975 0.62642217 0.78220123 0.64703959 0.65048152 0.67304504
		 0.68420815 0.70269829 0.71953392 0.82956851 0.85705215 0.88369781 0.85659748 0.87826025
		 0.90437216 0.64802033 0.93970239 0.69274575 0.71202296 0.74167854 0.76703274 0.79331684
		 0.82299995 0.80983943 0.77594906 0.72537786 0.68128192 0.89590865 0.85777158 0.83899647
		 0.7056064 0.69547242 0.6897977 0.7001071 0.71233106 0.70642924 0.71607912 0.62754625
		 0.64207673 0.64378005 0.65623486 0.65979218 0.68205041 0.67609584 0.61058104 0.69841415
		 0.61024314 0.62719351 0.64335716 0.65610987 0.62496752 0.35232416 0.3139872 0.34535918
		 0.27601868 0.22507973 0.19573902 0.15180653 0.11561193 0.077812046 0.038266316 0.30614272
		 0.038915444 0.064021237 0.10810341 0.15202181 0.20558544 0.25891697 0.29399478 0.4962168
		 0.51850367 0.51619393 0.49669611 0.56209147 0.59074873 0.59180409 0.56326014 0.5083006
		 0.51272631 0.541659 0.53520542 0.50632429 0.53335923 0.5331977 0.50558752 0.55437756
		 0.57763582 0.55312407 0.55030286 0.5029372 0.50317556 0.52860469 0.52652901 0.47621259
		 0.48030254 0.479669 0.48008582 0.4809334 0.48011416 0.48262087 0.48385352 0.39059752
		 0.41645426 0.42608258 0.3984521 0.40239769 0.43038002 0.4267574 0.39996493 0.40843618
		 0.43010727 0.43267751 0.41032389 0.43095559 0.409522 0.35557419 0.35878035 0.36139598
		 0.36006492 0.3631196 0.36215866 0.36114371 0.32272184 0.34328839 0.34539348 0.32548317
		 0.33028442 0.34842673 0.35034359 0.33820429 0.33851129 0.35209492 0.35215798 0.33812302
		 0.35285822 0.33872429 0.45207581 0.44990867 0.45183128 0.45190752 0.44979611 0.44480753
		 0.45110717 0.32303584 0.34179622 0.35125265 0.37522021 0.40253022 0.43561009 0.48261756
		 0.5174951 0.55220783 0.61454391 0.61388808 0.59469849 0.56020731 0.51915348 0.49995366
		 0.48107615 0.44835871 0.42843106 0.40761149 0.3594034 0.35258994 0.3394976 0.57265198
		 0.58978999 0.56523085 0.52253854 0.47709587 0.50106454 0.73151904 0.7286253 0.72546899
		 0.75177467 0.74958944 0.74572438 0.74153632 0.73948491 0.73676026 0.73363292 0.71999317
		 0.71747798 0.71364188 0.73189914 0.73388791 0.73204672 0.72879893 0.72682083 0.72430837
		 0.72164613 0.71356189 0.71143168 0.70846748 0.71579254 0.71977007 0.72050917 0.71966964
		 0.71855098 0.71593606 0.71464574 0.71049774 0.99578142 0.77011353 0.96551412 0.95506078
		 0.30490294 0.30267173 0.33340061 0.5518766 0.61261463 0.48703423 0.7474438 0.73699319
		 0.30354026 0.30550474 0.40631104 0.35220018 0.62538755 0.81335503 0.62575632 0.74799204
		 0.70539016 0.40639728 0.71025407 0.66845584 0.96954376 0.63414466 0.91542113 0.61759579
		 0.40634042 0.59533721 0.3991805 0.53053099 0.40740684 0.77767211 0.35581207 0.41015279
		 0.40826958 0.75140685 0.69723934 0.44997352 0.41561803 0.67530787 0.68839037 0.64364409
		 0.70474428 0.70841235 0.60324991 0.42642236 0.45793539 0.47098279 0.48739454 0.491218
		 0.48100045 0.93968111 0.056336276 0.92057031 0.062490582 0.94486541 0.94083238 0.93117225
		 0.84754503 0.86531204 0.88313448 0.86438346 0.85532558 0.84527957 0.8342312 0.86956173
		 0.86551476 0.85584617 0.85716653 0.79001504 0.80783999 0.70356667 0.7065925 0.71930587
		 0.73148406 0.84238976 0.81195986 0.75452965 0.93250597 0.64051747 0.65654987 0.67641473
		 0.69046891 0.73663694 0.77225202 0.76702654 0.67917901 0.032964267 0.32001868 0.019955337
		 0.30865771 0.038050864 0.32456118 0.0090447217 0.30700055 0.03862188 0.015541308
		 0.036049116 0.033012219 0.021551134 0.019403402 0.017729672 0.3245188 0.038631715
		 0.0091089681 0.036093149 0.015320903 0.33819655 0.32211533 0.64120525 0.63650537
		 0.47991058 0.52475137 0.56701016 0.611857 0.42169213 0.30866498 0.34434876 0.35574332
		 0.3845976 0.30585632 0.2577678 0.18768045 0.14604104 0.071666189 0.033604492 0.35030571
		 0.21605872 0.11045267 0.0013370878 ;
createNode groupId -n "chibi_Death_UV_groupId7";
	rename -uid "98C91611-47D3-0725-F17B-0BBFBE420D32";
	setAttr ".ihi" 0;
createNode groupId -n "chibi_Death_UV_groupId8";
	rename -uid "42D7D77E-4D73-1E4E-6BC3-79858BC665BC";
	setAttr ".ihi" 0;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "F89D0D93-4CF8-B27B-6D98-CBA58935D32F";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -907.58533360998456 -502.38093241812766 ;
	setAttr ".tgi[0].vh" -type "double2" 868.29962088534421 32.142855865614841 ;
	setAttr -s 4 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -253.73674011230469;
	setAttr ".tgi[0].ni[0].y" -71.510711669921875;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" 1.4285714626312256;
	setAttr ".tgi[0].ni[1].y" -1.4285714626312256;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" 262.85714721679687;
	setAttr ".tgi[0].ni[2].y" -65.714286804199219;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" -496.03219604492187;
	setAttr ".tgi[0].ni[3].y" -109.21524810791016;
	setAttr ".tgi[0].ni[3].nvs" 1923;
createNode ikSCsolver -n "ikSCsolver";
	rename -uid "D4A81164-4656-55F9-CA77-04AC8A34AC06";
createNode displayLayer -n "JOINT";
	rename -uid "84D8E735-40FD-AA69-0290-0DBD6EBB2BC4";
	setAttr ".c" 8;
	setAttr ".do" 1;
createNode displayLayer -n "CTRL";
	rename -uid "A62419EA-4F8E-75B3-5B37-709DF4A6D00A";
	setAttr ".c" 18;
	setAttr ".do" 2;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".ta" 3;
	setAttr ".tq" 1;
	setAttr ".msaa" yes;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 7 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 7 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 3 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 3 ".tx";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
	setAttr -s 10 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
connectAttr "JOINT.di" "group_JOINT.do";
connectAttr "JOINT_Root_parentConstraint1.ctx" "JOINT_Root.tx";
connectAttr "JOINT_Root_parentConstraint1.cty" "JOINT_Root.ty";
connectAttr "JOINT_Root_parentConstraint1.ctz" "JOINT_Root.tz";
connectAttr "JOINT_Root_parentConstraint1.crx" "JOINT_Root.rx";
connectAttr "JOINT_Root_parentConstraint1.cry" "JOINT_Root.ry";
connectAttr "JOINT_Root_parentConstraint1.crz" "JOINT_Root.rz";
connectAttr "JOINT_Root.s" "JOINT_dos.is";
connectAttr "JOINT_dos_parentConstraint1.ctx" "JOINT_dos.tx";
connectAttr "JOINT_dos_parentConstraint1.cty" "JOINT_dos.ty";
connectAttr "JOINT_dos_parentConstraint1.ctz" "JOINT_dos.tz";
connectAttr "JOINT_dos_parentConstraint1.crx" "JOINT_dos.rx";
connectAttr "JOINT_dos_parentConstraint1.cry" "JOINT_dos.ry";
connectAttr "JOINT_dos_parentConstraint1.crz" "JOINT_dos.rz";
connectAttr "JOINT_dos.s" "JOINT_cou.is";
connectAttr "JOINT_cou_parentConstraint1.ctx" "JOINT_cou.tx";
connectAttr "JOINT_cou_parentConstraint1.cty" "JOINT_cou.ty";
connectAttr "JOINT_cou_parentConstraint1.ctz" "JOINT_cou.tz";
connectAttr "JOINT_cou_parentConstraint1.crx" "JOINT_cou.rx";
connectAttr "JOINT_cou_parentConstraint1.cry" "JOINT_cou.ry";
connectAttr "JOINT_cou_parentConstraint1.crz" "JOINT_cou.rz";
connectAttr "JOINT_cou.s" "JOINT_tete.is";
connectAttr "JOINT_tete_parentConstraint1.ctx" "JOINT_tete.tx";
connectAttr "JOINT_tete_parentConstraint1.cty" "JOINT_tete.ty";
connectAttr "JOINT_tete_parentConstraint1.ctz" "JOINT_tete.tz";
connectAttr "JOINT_tete_parentConstraint1.crx" "JOINT_tete.rx";
connectAttr "JOINT_tete_parentConstraint1.cry" "JOINT_tete.ry";
connectAttr "JOINT_tete_parentConstraint1.crz" "JOINT_tete.rz";
connectAttr "JOINT_tete.ro" "JOINT_tete_parentConstraint1.cro";
connectAttr "JOINT_tete.pim" "JOINT_tete_parentConstraint1.cpim";
connectAttr "JOINT_tete.rp" "JOINT_tete_parentConstraint1.crp";
connectAttr "JOINT_tete.rpt" "JOINT_tete_parentConstraint1.crt";
connectAttr "JOINT_tete.jo" "JOINT_tete_parentConstraint1.cjo";
connectAttr "CTRL_tete.t" "JOINT_tete_parentConstraint1.tg[0].tt";
connectAttr "CTRL_tete.rp" "JOINT_tete_parentConstraint1.tg[0].trp";
connectAttr "CTRL_tete.rpt" "JOINT_tete_parentConstraint1.tg[0].trt";
connectAttr "CTRL_tete.r" "JOINT_tete_parentConstraint1.tg[0].tr";
connectAttr "CTRL_tete.ro" "JOINT_tete_parentConstraint1.tg[0].tro";
connectAttr "CTRL_tete.s" "JOINT_tete_parentConstraint1.tg[0].ts";
connectAttr "CTRL_tete.pm" "JOINT_tete_parentConstraint1.tg[0].tpm";
connectAttr "JOINT_tete_parentConstraint1.w0" "JOINT_tete_parentConstraint1.tg[0].tw"
		;
connectAttr "JOINT_cou.s" "JOINT_G_clavicule.is";
connectAttr "JOINT_G_clavicule.s" "JOINT_G_bras.is";
connectAttr "JOINT_G_bras_parentConstraint1.ctx" "JOINT_G_bras.tx";
connectAttr "JOINT_G_bras_parentConstraint1.cty" "JOINT_G_bras.ty";
connectAttr "JOINT_G_bras_parentConstraint1.ctz" "JOINT_G_bras.tz";
connectAttr "JOINT_G_bras_parentConstraint1.crx" "JOINT_G_bras.rx";
connectAttr "JOINT_G_bras_parentConstraint1.cry" "JOINT_G_bras.ry";
connectAttr "JOINT_G_bras_parentConstraint1.crz" "JOINT_G_bras.rz";
connectAttr "JOINT_G_bras.s" "JOINT_G_coude.is";
connectAttr "JOINT_G_coude_parentConstraint1.ctx" "JOINT_G_coude.tx";
connectAttr "JOINT_G_coude_parentConstraint1.cty" "JOINT_G_coude.ty";
connectAttr "JOINT_G_coude_parentConstraint1.ctz" "JOINT_G_coude.tz";
connectAttr "JOINT_G_coude_parentConstraint1.crx" "JOINT_G_coude.rx";
connectAttr "JOINT_G_coude_parentConstraint1.cry" "JOINT_G_coude.ry";
connectAttr "JOINT_G_coude_parentConstraint1.crz" "JOINT_G_coude.rz";
connectAttr "JOINT_G_coude.s" "JOINT_G_poignet.is";
connectAttr "JOINT_G_poignet_parentConstraint1.ctx" "JOINT_G_poignet.tx";
connectAttr "JOINT_G_poignet_parentConstraint1.cty" "JOINT_G_poignet.ty";
connectAttr "JOINT_G_poignet_parentConstraint1.ctz" "JOINT_G_poignet.tz";
connectAttr "JOINT_G_poignet_parentConstraint1.crx" "JOINT_G_poignet.rx";
connectAttr "JOINT_G_poignet_parentConstraint1.cry" "JOINT_G_poignet.ry";
connectAttr "JOINT_G_poignet_parentConstraint1.crz" "JOINT_G_poignet.rz";
connectAttr "JOINT_G_poignet.s" "JOINT_G_main.is";
connectAttr "JOINT_G_main_parentConstraint1.ctx" "JOINT_G_main.tx";
connectAttr "JOINT_G_main_parentConstraint1.cty" "JOINT_G_main.ty";
connectAttr "JOINT_G_main_parentConstraint1.ctz" "JOINT_G_main.tz";
connectAttr "JOINT_G_main_parentConstraint1.crx" "JOINT_G_main.rx";
connectAttr "JOINT_G_main_parentConstraint1.cry" "JOINT_G_main.ry";
connectAttr "JOINT_G_main_parentConstraint1.crz" "JOINT_G_main.rz";
connectAttr "JOINT_G_main.ro" "JOINT_G_main_parentConstraint1.cro";
connectAttr "JOINT_G_main.pim" "JOINT_G_main_parentConstraint1.cpim";
connectAttr "JOINT_G_main.rp" "JOINT_G_main_parentConstraint1.crp";
connectAttr "JOINT_G_main.rpt" "JOINT_G_main_parentConstraint1.crt";
connectAttr "JOINT_G_main.jo" "JOINT_G_main_parentConstraint1.cjo";
connectAttr "CTRL_G_main.t" "JOINT_G_main_parentConstraint1.tg[0].tt";
connectAttr "CTRL_G_main.rp" "JOINT_G_main_parentConstraint1.tg[0].trp";
connectAttr "CTRL_G_main.rpt" "JOINT_G_main_parentConstraint1.tg[0].trt";
connectAttr "CTRL_G_main.r" "JOINT_G_main_parentConstraint1.tg[0].tr";
connectAttr "CTRL_G_main.ro" "JOINT_G_main_parentConstraint1.tg[0].tro";
connectAttr "CTRL_G_main.s" "JOINT_G_main_parentConstraint1.tg[0].ts";
connectAttr "CTRL_G_main.pm" "JOINT_G_main_parentConstraint1.tg[0].tpm";
connectAttr "JOINT_G_main_parentConstraint1.w0" "JOINT_G_main_parentConstraint1.tg[0].tw"
		;
connectAttr "JOINT_G_poignet.ro" "JOINT_G_poignet_parentConstraint1.cro";
connectAttr "JOINT_G_poignet.pim" "JOINT_G_poignet_parentConstraint1.cpim";
connectAttr "JOINT_G_poignet.rp" "JOINT_G_poignet_parentConstraint1.crp";
connectAttr "JOINT_G_poignet.rpt" "JOINT_G_poignet_parentConstraint1.crt";
connectAttr "JOINT_G_poignet.jo" "JOINT_G_poignet_parentConstraint1.cjo";
connectAttr "CTRL_G_poignet.t" "JOINT_G_poignet_parentConstraint1.tg[0].tt";
connectAttr "CTRL_G_poignet.rp" "JOINT_G_poignet_parentConstraint1.tg[0].trp";
connectAttr "CTRL_G_poignet.rpt" "JOINT_G_poignet_parentConstraint1.tg[0].trt";
connectAttr "CTRL_G_poignet.r" "JOINT_G_poignet_parentConstraint1.tg[0].tr";
connectAttr "CTRL_G_poignet.ro" "JOINT_G_poignet_parentConstraint1.tg[0].tro";
connectAttr "CTRL_G_poignet.s" "JOINT_G_poignet_parentConstraint1.tg[0].ts";
connectAttr "CTRL_G_poignet.pm" "JOINT_G_poignet_parentConstraint1.tg[0].tpm";
connectAttr "JOINT_G_poignet_parentConstraint1.w0" "JOINT_G_poignet_parentConstraint1.tg[0].tw"
		;
connectAttr "JOINT_G_coude.ro" "JOINT_G_coude_parentConstraint1.cro";
connectAttr "JOINT_G_coude.pim" "JOINT_G_coude_parentConstraint1.cpim";
connectAttr "JOINT_G_coude.rp" "JOINT_G_coude_parentConstraint1.crp";
connectAttr "JOINT_G_coude.rpt" "JOINT_G_coude_parentConstraint1.crt";
connectAttr "JOINT_G_coude.jo" "JOINT_G_coude_parentConstraint1.cjo";
connectAttr "CTRL_G_coude.t" "JOINT_G_coude_parentConstraint1.tg[0].tt";
connectAttr "CTRL_G_coude.rp" "JOINT_G_coude_parentConstraint1.tg[0].trp";
connectAttr "CTRL_G_coude.rpt" "JOINT_G_coude_parentConstraint1.tg[0].trt";
connectAttr "CTRL_G_coude.r" "JOINT_G_coude_parentConstraint1.tg[0].tr";
connectAttr "CTRL_G_coude.ro" "JOINT_G_coude_parentConstraint1.tg[0].tro";
connectAttr "CTRL_G_coude.s" "JOINT_G_coude_parentConstraint1.tg[0].ts";
connectAttr "CTRL_G_coude.pm" "JOINT_G_coude_parentConstraint1.tg[0].tpm";
connectAttr "JOINT_G_coude_parentConstraint1.w0" "JOINT_G_coude_parentConstraint1.tg[0].tw"
		;
connectAttr "JOINT_G_bras.ro" "JOINT_G_bras_parentConstraint1.cro";
connectAttr "JOINT_G_bras.pim" "JOINT_G_bras_parentConstraint1.cpim";
connectAttr "JOINT_G_bras.rp" "JOINT_G_bras_parentConstraint1.crp";
connectAttr "JOINT_G_bras.rpt" "JOINT_G_bras_parentConstraint1.crt";
connectAttr "JOINT_G_bras.jo" "JOINT_G_bras_parentConstraint1.cjo";
connectAttr "CTRL_G_bras.t" "JOINT_G_bras_parentConstraint1.tg[0].tt";
connectAttr "CTRL_G_bras.rp" "JOINT_G_bras_parentConstraint1.tg[0].trp";
connectAttr "CTRL_G_bras.rpt" "JOINT_G_bras_parentConstraint1.tg[0].trt";
connectAttr "CTRL_G_bras.r" "JOINT_G_bras_parentConstraint1.tg[0].tr";
connectAttr "CTRL_G_bras.ro" "JOINT_G_bras_parentConstraint1.tg[0].tro";
connectAttr "CTRL_G_bras.s" "JOINT_G_bras_parentConstraint1.tg[0].ts";
connectAttr "CTRL_G_bras.pm" "JOINT_G_bras_parentConstraint1.tg[0].tpm";
connectAttr "JOINT_G_bras_parentConstraint1.w0" "JOINT_G_bras_parentConstraint1.tg[0].tw"
		;
connectAttr "JOINT_cou.s" "JOINT_D_clavicule.is";
connectAttr "JOINT_D_clavicule.s" "JOINT_D_bras.is";
connectAttr "JOINT_D_bras_parentConstraint1.ctx" "JOINT_D_bras.tx";
connectAttr "JOINT_D_bras_parentConstraint1.cty" "JOINT_D_bras.ty";
connectAttr "JOINT_D_bras_parentConstraint1.ctz" "JOINT_D_bras.tz";
connectAttr "JOINT_D_bras_parentConstraint1.crx" "JOINT_D_bras.rx";
connectAttr "JOINT_D_bras_parentConstraint1.cry" "JOINT_D_bras.ry";
connectAttr "JOINT_D_bras_parentConstraint1.crz" "JOINT_D_bras.rz";
connectAttr "JOINT_D_bras.s" "JOINT_D_coude.is";
connectAttr "JOINT_D_coude_parentConstraint1.ctx" "JOINT_D_coude.tx";
connectAttr "JOINT_D_coude_parentConstraint1.cty" "JOINT_D_coude.ty";
connectAttr "JOINT_D_coude_parentConstraint1.ctz" "JOINT_D_coude.tz";
connectAttr "JOINT_D_coude_parentConstraint1.crx" "JOINT_D_coude.rx";
connectAttr "JOINT_D_coude_parentConstraint1.cry" "JOINT_D_coude.ry";
connectAttr "JOINT_D_coude_parentConstraint1.crz" "JOINT_D_coude.rz";
connectAttr "JOINT_D_coude.s" "JOINT_D_poignet.is";
connectAttr "JOINT_D_poignet_parentConstraint1.ctx" "JOINT_D_poignet.tx";
connectAttr "JOINT_D_poignet_parentConstraint1.cty" "JOINT_D_poignet.ty";
connectAttr "JOINT_D_poignet_parentConstraint1.ctz" "JOINT_D_poignet.tz";
connectAttr "JOINT_D_poignet_parentConstraint1.crx" "JOINT_D_poignet.rx";
connectAttr "JOINT_D_poignet_parentConstraint1.cry" "JOINT_D_poignet.ry";
connectAttr "JOINT_D_poignet_parentConstraint1.crz" "JOINT_D_poignet.rz";
connectAttr "JOINT_D_poignet.s" "JOINT_D_main.is";
connectAttr "JOINT_D_main_parentConstraint1.ctx" "JOINT_D_main.tx";
connectAttr "JOINT_D_main_parentConstraint1.cty" "JOINT_D_main.ty";
connectAttr "JOINT_D_main_parentConstraint1.ctz" "JOINT_D_main.tz";
connectAttr "JOINT_D_main_parentConstraint1.crx" "JOINT_D_main.rx";
connectAttr "JOINT_D_main_parentConstraint1.cry" "JOINT_D_main.ry";
connectAttr "JOINT_D_main_parentConstraint1.crz" "JOINT_D_main.rz";
connectAttr "JOINT_D_main.ro" "JOINT_D_main_parentConstraint1.cro";
connectAttr "JOINT_D_main.pim" "JOINT_D_main_parentConstraint1.cpim";
connectAttr "JOINT_D_main.rp" "JOINT_D_main_parentConstraint1.crp";
connectAttr "JOINT_D_main.rpt" "JOINT_D_main_parentConstraint1.crt";
connectAttr "JOINT_D_main.jo" "JOINT_D_main_parentConstraint1.cjo";
connectAttr "CTRL_D_main.t" "JOINT_D_main_parentConstraint1.tg[0].tt";
connectAttr "CTRL_D_main.rp" "JOINT_D_main_parentConstraint1.tg[0].trp";
connectAttr "CTRL_D_main.rpt" "JOINT_D_main_parentConstraint1.tg[0].trt";
connectAttr "CTRL_D_main.r" "JOINT_D_main_parentConstraint1.tg[0].tr";
connectAttr "CTRL_D_main.ro" "JOINT_D_main_parentConstraint1.tg[0].tro";
connectAttr "CTRL_D_main.s" "JOINT_D_main_parentConstraint1.tg[0].ts";
connectAttr "CTRL_D_main.pm" "JOINT_D_main_parentConstraint1.tg[0].tpm";
connectAttr "JOINT_D_main_parentConstraint1.w0" "JOINT_D_main_parentConstraint1.tg[0].tw"
		;
connectAttr "JOINT_D_poignet.ro" "JOINT_D_poignet_parentConstraint1.cro";
connectAttr "JOINT_D_poignet.pim" "JOINT_D_poignet_parentConstraint1.cpim";
connectAttr "JOINT_D_poignet.rp" "JOINT_D_poignet_parentConstraint1.crp";
connectAttr "JOINT_D_poignet.rpt" "JOINT_D_poignet_parentConstraint1.crt";
connectAttr "JOINT_D_poignet.jo" "JOINT_D_poignet_parentConstraint1.cjo";
connectAttr "CTRL_D_poignet.t" "JOINT_D_poignet_parentConstraint1.tg[0].tt";
connectAttr "CTRL_D_poignet.rp" "JOINT_D_poignet_parentConstraint1.tg[0].trp";
connectAttr "CTRL_D_poignet.rpt" "JOINT_D_poignet_parentConstraint1.tg[0].trt";
connectAttr "CTRL_D_poignet.r" "JOINT_D_poignet_parentConstraint1.tg[0].tr";
connectAttr "CTRL_D_poignet.ro" "JOINT_D_poignet_parentConstraint1.tg[0].tro";
connectAttr "CTRL_D_poignet.s" "JOINT_D_poignet_parentConstraint1.tg[0].ts";
connectAttr "CTRL_D_poignet.pm" "JOINT_D_poignet_parentConstraint1.tg[0].tpm";
connectAttr "JOINT_D_poignet_parentConstraint1.w0" "JOINT_D_poignet_parentConstraint1.tg[0].tw"
		;
connectAttr "JOINT_D_coude.ro" "JOINT_D_coude_parentConstraint1.cro";
connectAttr "JOINT_D_coude.pim" "JOINT_D_coude_parentConstraint1.cpim";
connectAttr "JOINT_D_coude.rp" "JOINT_D_coude_parentConstraint1.crp";
connectAttr "JOINT_D_coude.rpt" "JOINT_D_coude_parentConstraint1.crt";
connectAttr "JOINT_D_coude.jo" "JOINT_D_coude_parentConstraint1.cjo";
connectAttr "CTRL_D_coude.t" "JOINT_D_coude_parentConstraint1.tg[0].tt";
connectAttr "CTRL_D_coude.rp" "JOINT_D_coude_parentConstraint1.tg[0].trp";
connectAttr "CTRL_D_coude.rpt" "JOINT_D_coude_parentConstraint1.tg[0].trt";
connectAttr "CTRL_D_coude.r" "JOINT_D_coude_parentConstraint1.tg[0].tr";
connectAttr "CTRL_D_coude.ro" "JOINT_D_coude_parentConstraint1.tg[0].tro";
connectAttr "CTRL_D_coude.s" "JOINT_D_coude_parentConstraint1.tg[0].ts";
connectAttr "CTRL_D_coude.pm" "JOINT_D_coude_parentConstraint1.tg[0].tpm";
connectAttr "JOINT_D_coude_parentConstraint1.w0" "JOINT_D_coude_parentConstraint1.tg[0].tw"
		;
connectAttr "JOINT_D_bras.ro" "JOINT_D_bras_parentConstraint1.cro";
connectAttr "JOINT_D_bras.pim" "JOINT_D_bras_parentConstraint1.cpim";
connectAttr "JOINT_D_bras.rp" "JOINT_D_bras_parentConstraint1.crp";
connectAttr "JOINT_D_bras.rpt" "JOINT_D_bras_parentConstraint1.crt";
connectAttr "JOINT_D_bras.jo" "JOINT_D_bras_parentConstraint1.cjo";
connectAttr "CTRL_D_bras.t" "JOINT_D_bras_parentConstraint1.tg[0].tt";
connectAttr "CTRL_D_bras.rp" "JOINT_D_bras_parentConstraint1.tg[0].trp";
connectAttr "CTRL_D_bras.rpt" "JOINT_D_bras_parentConstraint1.tg[0].trt";
connectAttr "CTRL_D_bras.r" "JOINT_D_bras_parentConstraint1.tg[0].tr";
connectAttr "CTRL_D_bras.ro" "JOINT_D_bras_parentConstraint1.tg[0].tro";
connectAttr "CTRL_D_bras.s" "JOINT_D_bras_parentConstraint1.tg[0].ts";
connectAttr "CTRL_D_bras.pm" "JOINT_D_bras_parentConstraint1.tg[0].tpm";
connectAttr "JOINT_D_bras_parentConstraint1.w0" "JOINT_D_bras_parentConstraint1.tg[0].tw"
		;
connectAttr "JOINT_cou.ro" "JOINT_cou_parentConstraint1.cro";
connectAttr "JOINT_cou.pim" "JOINT_cou_parentConstraint1.cpim";
connectAttr "JOINT_cou.rp" "JOINT_cou_parentConstraint1.crp";
connectAttr "JOINT_cou.rpt" "JOINT_cou_parentConstraint1.crt";
connectAttr "JOINT_cou.jo" "JOINT_cou_parentConstraint1.cjo";
connectAttr "CTRL_cou.t" "JOINT_cou_parentConstraint1.tg[0].tt";
connectAttr "CTRL_cou.rp" "JOINT_cou_parentConstraint1.tg[0].trp";
connectAttr "CTRL_cou.rpt" "JOINT_cou_parentConstraint1.tg[0].trt";
connectAttr "CTRL_cou.r" "JOINT_cou_parentConstraint1.tg[0].tr";
connectAttr "CTRL_cou.ro" "JOINT_cou_parentConstraint1.tg[0].tro";
connectAttr "CTRL_cou.s" "JOINT_cou_parentConstraint1.tg[0].ts";
connectAttr "CTRL_cou.pm" "JOINT_cou_parentConstraint1.tg[0].tpm";
connectAttr "JOINT_cou_parentConstraint1.w0" "JOINT_cou_parentConstraint1.tg[0].tw"
		;
connectAttr "JOINT_dos.ro" "JOINT_dos_parentConstraint1.cro";
connectAttr "JOINT_dos.pim" "JOINT_dos_parentConstraint1.cpim";
connectAttr "JOINT_dos.rp" "JOINT_dos_parentConstraint1.crp";
connectAttr "JOINT_dos.rpt" "JOINT_dos_parentConstraint1.crt";
connectAttr "JOINT_dos.jo" "JOINT_dos_parentConstraint1.cjo";
connectAttr "CTRL_dos.t" "JOINT_dos_parentConstraint1.tg[0].tt";
connectAttr "CTRL_dos.rp" "JOINT_dos_parentConstraint1.tg[0].trp";
connectAttr "CTRL_dos.rpt" "JOINT_dos_parentConstraint1.tg[0].trt";
connectAttr "CTRL_dos.r" "JOINT_dos_parentConstraint1.tg[0].tr";
connectAttr "CTRL_dos.ro" "JOINT_dos_parentConstraint1.tg[0].tro";
connectAttr "CTRL_dos.s" "JOINT_dos_parentConstraint1.tg[0].ts";
connectAttr "CTRL_dos.pm" "JOINT_dos_parentConstraint1.tg[0].tpm";
connectAttr "JOINT_dos_parentConstraint1.w0" "JOINT_dos_parentConstraint1.tg[0].tw"
		;
connectAttr "JOINT_Root.s" "JOINT_G_hanche.is";
connectAttr "JOINT_G_hanche.s" "JOINT_G_genou.is";
connectAttr "JOINT_G_genou.s" "JOINT_G_pied.is";
connectAttr "JOINT_G_pied.tx" "effector2.tx";
connectAttr "JOINT_G_pied.ty" "effector2.ty";
connectAttr "JOINT_G_pied.tz" "effector2.tz";
connectAttr "JOINT_Root.s" "JOINT_D_hanche.is";
connectAttr "JOINT_D_hanche.s" "JOINT_D_genou.is";
connectAttr "JOINT_D_genou.s" "JOINT_D_pied.is";
connectAttr "JOINT_D_pied.tx" "effector1.tx";
connectAttr "JOINT_D_pied.ty" "effector1.ty";
connectAttr "JOINT_D_pied.tz" "effector1.tz";
connectAttr "JOINT_Root.ro" "JOINT_Root_parentConstraint1.cro";
connectAttr "JOINT_Root.pim" "JOINT_Root_parentConstraint1.cpim";
connectAttr "JOINT_Root.rp" "JOINT_Root_parentConstraint1.crp";
connectAttr "JOINT_Root.rpt" "JOINT_Root_parentConstraint1.crt";
connectAttr "JOINT_Root.jo" "JOINT_Root_parentConstraint1.cjo";
connectAttr "CTRL_root.t" "JOINT_Root_parentConstraint1.tg[0].tt";
connectAttr "CTRL_root.rp" "JOINT_Root_parentConstraint1.tg[0].trp";
connectAttr "CTRL_root.rpt" "JOINT_Root_parentConstraint1.tg[0].trt";
connectAttr "CTRL_root.r" "JOINT_Root_parentConstraint1.tg[0].tr";
connectAttr "CTRL_root.ro" "JOINT_Root_parentConstraint1.tg[0].tro";
connectAttr "CTRL_root.s" "JOINT_Root_parentConstraint1.tg[0].ts";
connectAttr "CTRL_root.pm" "JOINT_Root_parentConstraint1.tg[0].tpm";
connectAttr "JOINT_Root_parentConstraint1.w0" "JOINT_Root_parentConstraint1.tg[0].tw"
		;
connectAttr "CTRL.di" "group_CTRL.do";
connectAttr "JOINT_G_hanche.msg" "IK_G_pied.hsj";
connectAttr "effector2.hp" "IK_G_pied.hee";
connectAttr "ikSCsolver.msg" "IK_G_pied.hsv";
connectAttr "JOINT_D_hanche.msg" "IK_D_pied.hsj";
connectAttr "effector1.hp" "IK_D_pied.hee";
connectAttr "ikSCsolver.msg" "IK_D_pied.hsv";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "chibi_template_lilith_final_lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "chibi_template_lilith_final_lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "chibi_template_lilith_final_lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "chibi_template_lilith_final_lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG1.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr ":defaultColorMgtGlobals.cme" "psdFileTex1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "psdFileTex1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "psdFileTex1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "psdFileTex1.ws";
connectAttr "place2dTexture1.c" "psdFileTex1.c";
connectAttr "place2dTexture1.tf" "psdFileTex1.tf";
connectAttr "place2dTexture1.rf" "psdFileTex1.rf";
connectAttr "place2dTexture1.mu" "psdFileTex1.mu";
connectAttr "place2dTexture1.mv" "psdFileTex1.mv";
connectAttr "place2dTexture1.s" "psdFileTex1.s";
connectAttr "place2dTexture1.wu" "psdFileTex1.wu";
connectAttr "place2dTexture1.wv" "psdFileTex1.wv";
connectAttr "place2dTexture1.re" "psdFileTex1.re";
connectAttr "place2dTexture1.of" "psdFileTex1.of";
connectAttr "place2dTexture1.r" "psdFileTex1.ro";
connectAttr "place2dTexture1.n" "psdFileTex1.n";
connectAttr "place2dTexture1.vt1" "psdFileTex1.vt1";
connectAttr "place2dTexture1.vt2" "psdFileTex1.vt2";
connectAttr "place2dTexture1.vt3" "psdFileTex1.vt3";
connectAttr "place2dTexture1.vc1" "psdFileTex1.vc1";
connectAttr "place2dTexture1.o" "psdFileTex1.uv";
connectAttr "place2dTexture1.ofs" "psdFileTex1.fs";
connectAttr "psdFileTex2.oc" "lambert3.c";
connectAttr "psdFileTex2.ot" "lambert3.it";
connectAttr "lambert3.oc" "lambert3SG.ss";
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "lambert3.msg" "materialInfo2.m";
connectAttr "psdFileTex2.msg" "materialInfo2.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "psdFileTex2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "psdFileTex2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "psdFileTex2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "psdFileTex2.ws";
connectAttr "place2dTexture2.c" "psdFileTex2.c";
connectAttr "place2dTexture2.tf" "psdFileTex2.tf";
connectAttr "place2dTexture2.rf" "psdFileTex2.rf";
connectAttr "place2dTexture2.mu" "psdFileTex2.mu";
connectAttr "place2dTexture2.mv" "psdFileTex2.mv";
connectAttr "place2dTexture2.s" "psdFileTex2.s";
connectAttr "place2dTexture2.wu" "psdFileTex2.wu";
connectAttr "place2dTexture2.wv" "psdFileTex2.wv";
connectAttr "place2dTexture2.re" "psdFileTex2.re";
connectAttr "place2dTexture2.of" "psdFileTex2.of";
connectAttr "place2dTexture2.r" "psdFileTex2.ro";
connectAttr "place2dTexture2.n" "psdFileTex2.n";
connectAttr "place2dTexture2.vt1" "psdFileTex2.vt1";
connectAttr "place2dTexture2.vt2" "psdFileTex2.vt2";
connectAttr "place2dTexture2.vt3" "psdFileTex2.vt3";
connectAttr "place2dTexture2.vc1" "psdFileTex2.vc1";
connectAttr "place2dTexture2.o" "psdFileTex2.uv";
connectAttr "place2dTexture2.ofs" "psdFileTex2.fs";
connectAttr "chibi_template_lilith_final_psdFileTex1.oc" "chibi_template_lilith_final_lambert3.c"
		;
connectAttr "chibi_template_lilith_final_psdFileTex1.ot" "chibi_template_lilith_final_lambert3.it"
		;
connectAttr "chibi_template_lilith_final_lambert3.oc" "chibi_template_lilith_final_lambert3SG.ss"
		;
connectAttr "chibi_template_lilith_final_lambert3SG.msg" "chibi_template_lilith_final_materialInfo2.sg"
		;
connectAttr "chibi_template_lilith_final_lambert3.msg" "chibi_template_lilith_final_materialInfo2.m"
		;
connectAttr "chibi_template_lilith_final_psdFileTex1.msg" "chibi_template_lilith_final_materialInfo2.t"
		 -na;
connectAttr ":defaultColorMgtGlobals.cme" "chibi_template_lilith_final_psdFileTex1.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "chibi_template_lilith_final_psdFileTex1.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "chibi_template_lilith_final_psdFileTex1.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "chibi_template_lilith_final_psdFileTex1.ws"
		;
connectAttr "chibi_template_lilith_final_place2dTexture1.c" "chibi_template_lilith_final_psdFileTex1.c"
		;
connectAttr "chibi_template_lilith_final_place2dTexture1.tf" "chibi_template_lilith_final_psdFileTex1.tf"
		;
connectAttr "chibi_template_lilith_final_place2dTexture1.rf" "chibi_template_lilith_final_psdFileTex1.rf"
		;
connectAttr "chibi_template_lilith_final_place2dTexture1.mu" "chibi_template_lilith_final_psdFileTex1.mu"
		;
connectAttr "chibi_template_lilith_final_place2dTexture1.mv" "chibi_template_lilith_final_psdFileTex1.mv"
		;
connectAttr "chibi_template_lilith_final_place2dTexture1.s" "chibi_template_lilith_final_psdFileTex1.s"
		;
connectAttr "chibi_template_lilith_final_place2dTexture1.wu" "chibi_template_lilith_final_psdFileTex1.wu"
		;
connectAttr "chibi_template_lilith_final_place2dTexture1.wv" "chibi_template_lilith_final_psdFileTex1.wv"
		;
connectAttr "chibi_template_lilith_final_place2dTexture1.re" "chibi_template_lilith_final_psdFileTex1.re"
		;
connectAttr "chibi_template_lilith_final_place2dTexture1.of" "chibi_template_lilith_final_psdFileTex1.of"
		;
connectAttr "chibi_template_lilith_final_place2dTexture1.r" "chibi_template_lilith_final_psdFileTex1.ro"
		;
connectAttr "chibi_template_lilith_final_place2dTexture1.n" "chibi_template_lilith_final_psdFileTex1.n"
		;
connectAttr "chibi_template_lilith_final_place2dTexture1.vt1" "chibi_template_lilith_final_psdFileTex1.vt1"
		;
connectAttr "chibi_template_lilith_final_place2dTexture1.vt2" "chibi_template_lilith_final_psdFileTex1.vt2"
		;
connectAttr "chibi_template_lilith_final_place2dTexture1.vt3" "chibi_template_lilith_final_psdFileTex1.vt3"
		;
connectAttr "chibi_template_lilith_final_place2dTexture1.vc1" "chibi_template_lilith_final_psdFileTex1.vc1"
		;
connectAttr "chibi_template_lilith_final_place2dTexture1.o" "chibi_template_lilith_final_psdFileTex1.uv"
		;
connectAttr "chibi_template_lilith_final_place2dTexture1.ofs" "chibi_template_lilith_final_psdFileTex1.fs"
		;
connectAttr "lambert2.oc" "lambert2SG1.ss";
connectAttr "lambert2SG1.msg" "materialInfo3.sg";
connectAttr "lambert2.msg" "materialInfo3.m";
connectAttr "lambert2.msg" "chibi_template_lilith_final_hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "chibi_template_lilith_final_lambert3SG.msg" "chibi_template_lilith_final_hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "chibi_template_lilith_final_lambert3.msg" "chibi_template_lilith_final_hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "lambert2SG1.msg" "chibi_template_lilith_final_hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "chibi_template_lilith_final_place2dTexture1.msg" "chibi_template_lilith_final_hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "chibi_template_lilith_final_psdFileTex1.msg" "chibi_template_lilith_final_hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "chibi_template_lilith_final_lambert2SG.msg" "chibi_template_lilith_final_hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "polyPlane1.out" "polyTweak8.ip";
connectAttr "polyTweak8.out" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "deleteComponent5.ig";
connectAttr "polyTweak9.out" "polyExtrudeEdge1.ip";
connectAttr "deleteComponent5.og" "polyTweak9.ip";
connectAttr "polyTweak15.out" "polySoftEdge10.ip";
connectAttr "polyExtrudeEdge1.out" "polyTweak15.ip";
connectAttr "polySoftEdge10.out" "polyMapSew2.ip";
connectAttr "polyTweakUV2.out" "polyMapCut4.ip";
connectAttr "polyMapCut4.out" "Unfold3DUnfold2.im";
connectAttr "Unfold3DUnfold2.om" "Unfold3DUnfold3.im";
connectAttr "Unfold3DUnfold3.om" "polyTweakUV3.ip";
connectAttr "polyTweakUV3.out" "polyMapSew10.ip";
connectAttr "polyMapSew10.out" "polyMapCut5.ip";
connectAttr "polyMapCut10.out" "Unfold3DUnfold11.im";
connectAttr "Unfold3DUnfold11.om" "polyMapCut11.ip";
connectAttr "polyMapCut11.out" "Unfold3DUnfold12.im";
connectAttr "Unfold3DUnfold12.om" "polyTweakUV10.ip";
connectAttr "polyTweakUV10.out" "Unfold3DUnfold13.im";
connectAttr "Unfold3DUnfold13.om" "Unfold3DOptimize2.im";
connectAttr "Unfold3DOptimize2.om" "polyTweakUV11.ip";
connectAttr "polyTweakUV15.out" "polyMapCut14.ip";
connectAttr "polyMapCut14.out" "Unfold3DUnfold15.im";
connectAttr "Unfold3DUnfold15.om" "polyTweakUV16.ip";
connectAttr "polyTweakUV16.out" "polyMapCut15.ip";
connectAttr "polyMapCut15.out" "polyMapCut16.ip";
connectAttr "polyMapCut16.out" "Unfold3DUnfold16.im";
connectAttr "Unfold3DUnfold16.om" "polyTweakUV17.ip";
connectAttr "polyTweakUV17.out" "Unfold3DUnfold17.im";
connectAttr "Unfold3DUnfold17.om" "polyTweakUV18.ip";
connectAttr "polyTweakUV18.out" "polyMapCut17.ip";
connectAttr "polyMapCut17.out" "polyMapCut18.ip";
connectAttr "polyMapCut18.out" "polyMapCut19.ip";
connectAttr "polyMapCut19.out" "Unfold3DUnfold18.im";
connectAttr "chibi_template_famine_polyPlane1.out" "chibi_template_famine_polyTweak8.ip"
		;
connectAttr "chibi_template_famine_polyTweak8.out" "chibi_template_famine_deleteComponent2.ig"
		;
connectAttr "chibi_template_famine_deleteComponent2.og" "chibi_template_famine_deleteComponent3.ig"
		;
connectAttr "chibi_template_famine_deleteComponent3.og" "chibi_template_famine_deleteComponent4.ig"
		;
connectAttr "chibi_template_famine_deleteComponent4.og" "chibi_template_famine_deleteComponent5.ig"
		;
connectAttr "chibi_template_famine_polyTweak9.out" "chibi_template_famine_polyExtrudeEdge1.ip"
		;
connectAttr "chibi_template_famine_deleteComponent5.og" "chibi_template_famine_polyTweak9.ip"
		;
connectAttr "chibi_template_famine_polyTweak15.out" "chibi_template_famine_polySoftEdge10.ip"
		;
connectAttr "chibi_template_famine_polyExtrudeEdge1.out" "chibi_template_famine_polyTweak15.ip"
		;
connectAttr "chibi_template_famine_polySoftEdge10.out" "chibi_template_famine_polyMapSew2.ip"
		;
connectAttr "chibi_template_famine_polyTweakUV2.out" "chibi_template_famine_polyMapCut4.ip"
		;
connectAttr "chibi_template_famine_polyMapCut4.out" "chibi_template_famine_Unfold3DUnfold2.im"
		;
connectAttr "chibi_template_famine_Unfold3DUnfold2.om" "chibi_template_famine_Unfold3DUnfold3.im"
		;
connectAttr "chibi_template_famine_Unfold3DUnfold3.om" "chibi_template_famine_polyTweakUV3.ip"
		;
connectAttr "chibi_template_famine_polyTweakUV3.out" "chibi_template_famine_polyMapSew10.ip"
		;
connectAttr "chibi_template_famine_polyMapSew10.out" "chibi_template_famine_polyMapCut5.ip"
		;
connectAttr "chibi_template_famine_polyMapCut10.out" "chibi_template_famine_Unfold3DUnfold11.im"
		;
connectAttr "chibi_template_famine_Unfold3DUnfold11.om" "chibi_template_famine_polyMapCut11.ip"
		;
connectAttr "chibi_template_famine_polyMapCut11.out" "chibi_template_famine_Unfold3DUnfold12.im"
		;
connectAttr "chibi_template_famine_Unfold3DUnfold12.om" "chibi_template_famine_polyTweakUV10.ip"
		;
connectAttr "chibi_template_famine_polyTweakUV10.out" "chibi_template_famine_Unfold3DUnfold13.im"
		;
connectAttr "chibi_template_famine_Unfold3DUnfold13.om" "chibi_template_famine_Unfold3DOptimize2.im"
		;
connectAttr "chibi_template_famine_Unfold3DOptimize2.om" "chibi_template_famine_polyTweakUV11.ip"
		;
connectAttr "chibi_template_famine_polyTweakUV15.out" "chibi_template_famine_polyMapCut14.ip"
		;
connectAttr "chibi_template_famine_polyMapCut14.out" "chibi_template_famine_Unfold3DUnfold15.im"
		;
connectAttr "chibi_template_famine_Unfold3DUnfold15.om" "chibi_template_famine_polyTweakUV16.ip"
		;
connectAttr "chibi_template_famine_polyTweakUV16.out" "chibi_template_famine_polyMapCut15.ip"
		;
connectAttr "chibi_template_famine_polyMapCut15.out" "chibi_template_famine_polyMapCut16.ip"
		;
connectAttr "chibi_template_famine_polyMapCut16.out" "chibi_template_famine_Unfold3DUnfold16.im"
		;
connectAttr "chibi_template_famine_Unfold3DUnfold16.om" "chibi_template_famine_polyTweakUV17.ip"
		;
connectAttr "chibi_template_famine_polyTweakUV17.out" "chibi_template_famine_Unfold3DUnfold17.im"
		;
connectAttr "chibi_template_famine_Unfold3DUnfold17.om" "chibi_template_famine_polyTweakUV18.ip"
		;
connectAttr "chibi_template_famine_polyTweakUV18.out" "chibi_template_famine_polyMapCut17.ip"
		;
connectAttr "chibi_template_famine_polyMapCut17.out" "chibi_template_famine_polyMapCut18.ip"
		;
connectAttr "chibi_template_famine_polyMapCut18.out" "chibi_template_famine_polyMapCut19.ip"
		;
connectAttr "chibi_template_famine_polyMapCut19.out" "chibi_template_famine_Unfold3DUnfold18.im"
		;
connectAttr "psdFileTex2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "lambert3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "lambert3SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "place2dTexture2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "layerManager.dli[1]" "JOINT.id";
connectAttr "layerManager.dli[2]" "CTRL.id";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "chibi_template_lilith_final_lambert2SG.pa" ":renderPartition.st" -na
		;
connectAttr "chibi_template_lilith_final_lambert3SG.pa" ":renderPartition.st" -na
		;
connectAttr "lambert2SG1.pa" ":renderPartition.st" -na;
connectAttr "lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "chibi_template_lilith_final_lambert3.msg" ":defaultShaderList1.s" -na
		;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "chibi_template_lilith_final_place2dTexture1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "psdFileTex1.msg" ":defaultTextureList1.tx" -na;
connectAttr "psdFileTex2.msg" ":defaultTextureList1.tx" -na;
connectAttr "chibi_template_lilith_final_psdFileTex1.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "chibi_Death_UV_groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "chibi_template_lilith_final_groupId6.msg" ":initialShadingGroup.gn"
		 -na;
connectAttr "chibi_template_lilith_final_groupId8.msg" ":initialShadingGroup.gn"
		 -na;
connectAttr "chibi_template_01_groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "chibi_template_famine_groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "chibi_template_famine_groupId17.msg" ":initialShadingGroup.gn" -na;
connectAttr "chibi_Death_UV_groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "chibi_Death_UV_groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "ikSCsolver.msg" ":ikSystem.sol" -na;
// End of chibi_template_rig_base.ma
