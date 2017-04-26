//Maya ASCII 2016 scene
//Name: plane.ma
//Last modified: Wed, Apr 26, 2017 04:32:22 PM
//Codeset: 1252
requires maya "2016";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201603180400-990260";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
createNode transform -s -n "persp";
	rename -uid "C7E1CF34-42E0-AA82-F785-1A975D5C4E63";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -598.09852420153618 855.78145944932771 2504.5758768372325 ;
	setAttr ".r" -type "double3" -18.338352729633755 -13.40000000000027 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "FB0AB4E1-4A5D-3ABF-D1E8-1FABF826C84E";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 2710.4601349369473;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "D3C3F4EE-40BC-964A-4BD9-3BB3F7E23BBA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "74731B00-4E84-50FE-770E-B79FD308EA48";
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
	rename -uid "DDAA1EE2-4963-A6EF-6ACB-EA86560D2F0C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "181846B9-44C6-AEEC-5452-68A8843A062A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "5C74CB07-4687-8BC9-8765-6E9BC44736EF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "49365472-4E9E-FD2A-A1AE-B2BB0CCAD091";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pPlane1";
	rename -uid "90D8305F-4C01-3F47-0B78-C9BB8632FA4D";
	setAttr ".s" -type "double3" 1920 100 1080 ;
createNode transform -n "polySurface1" -p "pPlane1";
	rename -uid "49E31291-46FA-C6E7-5B31-F99BB0126845";
createNode mesh -n "polySurfaceShape1" -p "polySurface1";
	rename -uid "70120127-447C-167A-AAF9-A681994C4375";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.49999998509883881 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 9 ".uvst[0].uvsp[0:8]" -type "float2" 0.50516129 0.347767
		 0.51887107 0.41155916 0.48934364 0.37710461 0.50516129 0.347767 0.51887107 0.41155916
		 0.48934364 0.37710461 0.50516129 0.347767 0.51887107 0.41155916 0.48934364 0.37710461;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".pt[3:5]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0;
	setAttr -s 6 ".vt[0:5]"  0.0051613012 -5.558262e-017 0.25032187 0.018871123 -3.2291106e-017 0.14542623
		 -0.010656338 -4.4871001e-017 0.20208102 0.0051613012 -5.558262e-017 0.25032187 0.018871123 -3.2291106e-017 0.14542623
		 -0.010656338 -4.4871001e-017 0.20208102;
	setAttr -s 9 ".ed[0:8]"  0 1 0 1 2 0 2 0 0 0 3 0 1 4 0 3 4 0 2 5 0
		 4 5 0 5 3 0;
	setAttr -s 5 -ch 18 ".fc[0:4]" -type "polyFaces" 
		f 3 5 7 8
		mu 0 3 6 7 8
		f 3 -3 -2 -1
		mu 0 3 3 5 4
		f 4 0 4 -6 -4
		mu 0 4 0 1 7 6
		f 4 1 6 -8 -5
		mu 0 4 1 2 8 7
		f 4 2 3 -9 -7
		mu 0 4 2 0 6 8;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface2" -p "pPlane1";
	rename -uid "936669AD-494D-0079-10FC-AA80888ADC81";
createNode mesh -n "polySurfaceShape2" -p "polySurface2";
	rename -uid "C5DBE070-4DE5-9083-F0A4-3DB6082D8649";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:6]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 15 ".uvst[0].uvsp[0:14]" -type "float2" 0.48934364 0.37710461
		 0.39166546 0.26312697 0.43399179 0.22795162 0.4783476 0.22300106 0.50516129 0.347767
		 0.48934364 0.37710461 0.39166546 0.26312697 0.43399179 0.22795162 0.4783476 0.22300106
		 0.50516129 0.347767 0.48934364 0.37710461 0.39166546 0.26312697 0.43399179 0.22795162
		 0.4783476 0.22300106 0.50516129 0.347767;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt[5:9]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0 0 0.16065009 0 0 0.16065009 0;
	setAttr -s 10 ".vt[0:9]"  -0.010656338 -4.4871001e-017 0.20208102 -0.10833453 -8.6485988e-017 0.38949826
		 -0.06600821 -9.9329052e-017 0.44733825 -0.021652423 -1.0113657e-016 0.45547861 0.0051613012 -5.558262e-017 0.25032187
		 -0.010656338 -4.4871001e-017 0.20208102 -0.10833453 -8.6485988e-017 0.38949826 -0.06600821 -9.9329052e-017 0.44733825
		 -0.021652423 -1.0113657e-016 0.45547861 0.0051613012 -5.558262e-017 0.25032187;
	setAttr -s 15 ".ed[0:14]"  0 4 0 0 1 0 1 2 0 2 3 0 3 4 0 0 5 0 1 6 0
		 5 6 0 2 7 0 6 7 0 3 8 0 7 8 0 4 9 0 8 9 0 5 9 0;
	setAttr -s 7 -ch 30 ".fc[0:6]" -type "polyFaces" 
		f 5 7 9 11 13 -15
		mu 0 5 10 11 12 13 14
		f 5 0 -5 -4 -3 -2
		mu 0 5 5 9 8 7 6
		f 4 1 6 -8 -6
		mu 0 4 0 1 11 10
		f 4 2 8 -10 -7
		mu 0 4 1 2 12 11
		f 4 3 10 -12 -9
		mu 0 4 2 3 13 12
		f 4 4 12 -14 -11
		mu 0 4 3 4 14 13
		f 4 -1 5 14 -13
		mu 0 4 4 0 10 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface3" -p "pPlane1";
	rename -uid "21173399-4ABE-991E-FC97-36A2A3C40600";
createNode mesh -n "polySurfaceShape3" -p "polySurface3";
	rename -uid "58CF296D-40F0-F485-0D78-9592A939A08C";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 9 ".uvst[0].uvsp[0:8]" -type "float2" 0.90620971 0.19592544
		 0.83697867 0.27591985 0.79046464 0.19592544 0.90620971 0.19592544 0.83697867 0.27591985
		 0.79046464 0.19592544 0.90620971 0.19592544 0.83697867 0.27591985 0.79046464 0.19592544;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".pt[3:5]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0;
	setAttr -s 6 ".vt[0:5]"  0.40620968 -1.110223e-016 0.5 0.33697867 -8.1815118e-017 0.36846253
		 0.29046464 -1.110223e-016 0.5 0.40620968 -1.110223e-016 0.5 0.33697867 -8.1815118e-017 0.36846253
		 0.29046464 -1.110223e-016 0.5;
	setAttr -s 9 ".ed[0:8]"  2 0 0 0 1 0 1 2 0 0 3 0 1 4 0 3 4 0 2 5 0
		 4 5 0 5 3 0;
	setAttr -s 5 -ch 18 ".fc[0:4]" -type "polyFaces" 
		f 3 5 7 8
		mu 0 3 6 7 8
		f 3 -1 -3 -2
		mu 0 3 3 5 4
		f 4 1 4 -6 -4
		mu 0 4 0 1 7 6
		f 4 2 6 -8 -5
		mu 0 4 1 2 8 7
		f 4 0 3 -9 -7
		mu 0 4 2 0 6 8;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface4" -p "pPlane1";
	rename -uid "86B74449-4FF7-B296-2EAD-8BA7E645DAB1";
createNode mesh -n "polySurfaceShape4" -p "polySurface4";
	rename -uid "3A6F7A4E-4B9A-0850-2014-D795446AD79E";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:6]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 15 ".uvst[0].uvsp[0:14]" -type "float2" 0.8552556 0.80407453
		 0.77096784 0.70572221 0.78681296 0.68942189 1 0.5562827 1 0.80407453 0.8552556 0.80407453
		 0.77096784 0.70572221 0.78681296 0.68942189 1 0.5562827 1 0.80407453 0.8552556 0.80407453
		 0.77096784 0.70572221 0.78681296 0.68942189 1 0.5562827 1 0.80407453;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt[5:9]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0 0 0.16065009 0 0 0.16065009 0;
	setAttr -s 10 ".vt[0:9]"  0.5 1.110223e-016 -0.5 0.3552556 1.110223e-016 -0.5
		 0.2709679 7.5112341e-017 -0.33827591 0.28681302 6.9160849e-017 -0.3114728 0.5 2.0549691e-017 -0.092547581
		 0.3552556 1.110223e-016 -0.5 0.2709679 7.5112341e-017 -0.33827591 0.28681302 6.9160849e-017 -0.3114728
		 0.5 2.0549691e-017 -0.092547581 0.5 1.110223e-016 -0.5;
	setAttr -s 15 ".ed[0:14]"  1 0 0 4 0 0 1 2 0 3 2 0 3 4 0 1 5 0 2 6 0
		 5 6 0 3 7 0 7 6 0 4 8 0 7 8 0 0 9 0 8 9 0 5 9 0;
	setAttr -s 7 -ch 30 ".fc[0:6]" -type "polyFaces" 
		f 5 7 -10 11 13 -15
		mu 0 5 10 11 12 13 14
		f 5 0 -2 -5 3 -3
		mu 0 5 5 9 8 7 6
		f 4 2 6 -8 -6
		mu 0 4 0 1 11 10
		f 4 -4 8 9 -7
		mu 0 4 1 2 12 11
		f 4 4 10 -12 -9
		mu 0 4 2 3 13 12
		f 4 1 12 -14 -11
		mu 0 4 3 4 14 13
		f 4 -1 5 14 -13
		mu 0 4 4 0 10 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface5" -p "pPlane1";
	rename -uid "70EFA769-4138-6673-AD58-AB9D67EB32F2";
createNode mesh -n "polySurfaceShape5" -p "polySurface5";
	rename -uid "B2C54322-4812-DDD6-72C0-9BA4FB7B16F8";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 9 ".uvst[0].uvsp[0:8]" -type "float2" 0.67536199 0.80407453
		 0.77096784 0.70572221 0.8552556 0.80407453 0.67536199 0.80407453 0.77096784 0.70572221
		 0.8552556 0.80407453 0.67536199 0.80407453 0.77096784 0.70572221 0.8552556 0.80407453;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".pt[3:5]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0;
	setAttr -s 6 ".vt[0:5]"  0.3552556 1.110223e-016 -0.5 0.2709679 7.5112341e-017 -0.33827591
		 0.17536199 1.110223e-016 -0.5 0.2709679 7.5112341e-017 -0.33827591 0.17536199 1.110223e-016 -0.5
		 0.3552556 1.110223e-016 -0.5;
	setAttr -s 9 ".ed[0:8]"  2 0 0 0 1 0 1 2 0 1 3 0 2 4 0 3 4 0 0 5 0
		 5 3 0 4 5 0;
	setAttr -s 5 -ch 18 ".fc[0:4]" -type "polyFaces" 
		f 3 -6 -8 -9
		mu 0 3 6 7 8
		f 3 0 1 2
		mu 0 3 3 5 4
		f 4 -3 3 5 -5
		mu 0 4 0 1 7 6
		f 4 -2 6 7 -4
		mu 0 4 1 2 8 7
		f 4 -1 4 8 -7
		mu 0 4 2 0 6 8;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface6" -p "pPlane1";
	rename -uid "55E5FE8C-4B44-92A9-00BC-0D9B3F3D4272";
createNode mesh -n "polySurfaceShape6" -p "polySurface6";
	rename -uid "2EFA3F72-4AC1-4ABB-DFFE-BC8602769764";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.37988746 0.80407453
		 0.33097124 0.67084432 0.33231005 0.66836119 0.42946047 0.74679428 0.37988746 0.80407453
		 0.33097124 0.67084432 0.33231005 0.66836119 0.42946047 0.74679428 0.37988746 0.80407453
		 0.33097124 0.67084432 0.33231005 0.66836119 0.42946047 0.74679428;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0 0 0.16065009 0;
	setAttr -s 8 ".vt[0:7]"  -0.12011251 1.110223e-016 -0.5 -0.16902876 6.2377908e-017 -0.28092512
		 -0.16768995 6.1471272e-017 -0.27684203 -0.070539519 9.0108397e-017 -0.40581217 -0.12011251 1.110223e-016 -0.5
		 -0.16902876 6.2377908e-017 -0.28092512 -0.16768995 6.1471272e-017 -0.27684203 -0.070539519 9.0108397e-017 -0.40581217;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 2 3 0 3 0 0 0 4 0 1 5 0 4 5 0
		 2 6 0 5 6 0 3 7 0 6 7 0 7 4 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 6 8 10 11
		mu 0 4 8 9 10 11
		f 4 -4 -3 -2 -1
		mu 0 4 4 7 6 5
		f 4 0 5 -7 -5
		mu 0 4 0 1 9 8
		f 4 1 7 -9 -6
		mu 0 4 1 2 10 9
		f 4 2 9 -11 -8
		mu 0 4 2 3 11 10
		f 4 3 4 -12 -10
		mu 0 4 3 0 8 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface7" -p "pPlane1";
	rename -uid "3E655A79-4A35-D761-48F3-668B17968628";
createNode mesh -n "polySurfaceShape7" -p "polySurface7";
	rename -uid "ACD9B09E-42CE-E5B0-2246-BBB4B04D903D";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 9 ".uvst[0].uvsp[0:8]" -type "float2" 0.18912369 0.28450274
		 0.17881739 0.25643182 0.24762744 0.24875188 0.18912369 0.28450274 0.17881739 0.25643182
		 0.24762744 0.24875188 0.18912369 0.28450274 0.17881739 0.25643182 0.24762744 0.24875188;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".pt[3:5]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0;
	setAttr -s 6 ".vt[0:5]"  -0.31087631 -7.868136e-017 0.35434934 -0.32118264 -8.8930499e-017 0.40050736
		 -0.25237256 -9.1734555e-017 0.41313571 -0.31087631 -7.868136e-017 0.35434934 -0.32118264 -8.8930499e-017 0.40050736
		 -0.25237256 -9.1734555e-017 0.41313571;
	setAttr -s 9 ".ed[0:8]"  0 1 0 1 2 0 2 0 0 0 3 0 1 4 0 3 4 0 2 5 0
		 4 5 0 5 3 0;
	setAttr -s 5 -ch 18 ".fc[0:4]" -type "polyFaces" 
		f 3 5 7 8
		mu 0 3 6 7 8
		f 3 -3 -2 -1
		mu 0 3 3 5 4
		f 4 0 4 -6 -4
		mu 0 4 0 1 7 6
		f 4 1 6 -8 -5
		mu 0 4 1 2 8 7
		f 4 2 3 -9 -7
		mu 0 4 2 0 6 8;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface8" -p "pPlane1";
	rename -uid "73D52C0C-4275-9CA6-0949-45A3C5F4E5D0";
createNode mesh -n "polySurfaceShape8" -p "polySurface8";
	rename -uid "9C11D9E5-4837-C4A3-284C-6D9A7E442913";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 9 ".uvst[0].uvsp[0:8]" -type "float2" 0.33150506 0.66771126
		 0.33033937 0.66912347 0.32911134 0.66577876 0.33150506 0.66771126 0.33033937 0.66912347
		 0.32911134 0.66577876 0.33150506 0.66771126 0.33033937 0.66912347 0.32911134 0.66577876;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".pt[3:5]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0;
	setAttr -s 6 ".vt[0:5]"  -0.16849494 6.1233984e-017 -0.27577335 -0.1696606 6.1749582e-017 -0.27809539
		 -0.17088865 6.0528379e-017 -0.27259558 -0.16849494 6.1233984e-017 -0.27577335 -0.1696606 6.1749582e-017 -0.27809539
		 -0.17088865 6.0528379e-017 -0.27259558;
	setAttr -s 9 ".ed[0:8]"  0 1 0 1 2 0 2 0 0 0 3 0 1 4 0 3 4 0 2 5 0
		 4 5 0 5 3 0;
	setAttr -s 5 -ch 18 ".fc[0:4]" -type "polyFaces" 
		f 3 5 7 8
		mu 0 3 6 7 8
		f 3 -3 -2 -1
		mu 0 3 3 5 4
		f 4 0 4 -6 -4
		mu 0 4 0 1 7 6
		f 4 1 6 -8 -5
		mu 0 4 1 2 8 7
		f 4 2 3 -9 -7
		mu 0 4 2 0 6 8;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface9" -p "pPlane1";
	rename -uid "F6936042-4C8F-BC5F-CD92-7D97FF2A067F";
createNode mesh -n "polySurfaceShape9" -p "polySurface9";
	rename -uid "E3BA9929-4F3E-C761-EC11-45A2D7617A50";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:6]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 15 ".uvst[0].uvsp[0:14]" -type "float2" 0.32911134 0.66577876
		 0.30607784 0.60304379 0.38732821 0.56631684 0.33483645 0.66367543 0.33150506 0.66771126
		 0.32911134 0.66577876 0.30607784 0.60304379 0.38732821 0.56631684 0.33483645 0.66367543
		 0.33150506 0.66771126 0.32911134 0.66577876 0.30607784 0.60304379 0.38732821 0.56631684
		 0.33483645 0.66367543 0.33150506 0.66771126;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt[5:9]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0 0 0.16065009 0 0 0.16065009 0;
	setAttr -s 10 ".vt[0:9]"  -0.17088865 6.0528379e-017 -0.27259558 -0.19392213 3.7622881e-017 -0.16943839
		 -0.11267181 2.4213302e-017 -0.10904702 -0.16516356 5.9760411e-017 -0.26913697 -0.16849494 6.1233984e-017 -0.27577335
		 -0.17088865 6.0528379e-017 -0.27259558 -0.19392213 3.7622881e-017 -0.16943839 -0.11267181 2.4213302e-017 -0.10904702
		 -0.16516356 5.9760411e-017 -0.26913697 -0.16849494 6.1233984e-017 -0.27577335;
	setAttr -s 15 ".ed[0:14]"  0 4 0 0 1 0 1 2 0 3 2 0 3 4 0 0 5 0 1 6 0
		 5 6 0 2 7 0 6 7 0 3 8 0 8 7 0 4 9 0 8 9 0 5 9 0;
	setAttr -s 7 -ch 30 ".fc[0:6]" -type "polyFaces" 
		f 5 7 9 -12 13 -15
		mu 0 5 10 11 12 13 14
		f 5 0 -5 3 -3 -2
		mu 0 5 5 9 8 7 6
		f 4 1 6 -8 -6
		mu 0 4 0 1 11 10
		f 4 2 8 -10 -7
		mu 0 4 1 2 12 11
		f 4 -4 10 11 -9
		mu 0 4 2 3 13 12
		f 4 4 12 -14 -11
		mu 0 4 3 4 14 13
		f 4 -1 5 14 -13
		mu 0 4 4 0 10 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface10" -p "pPlane1";
	rename -uid "DF43544F-46A0-8D60-0BB4-679CEF9801BF";
createNode mesh -n "polySurfaceShape10" -p "polySurface10";
	rename -uid "5E078456-4987-88A5-8F34-E8842EC48C90";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 9 ".uvst[0].uvsp[0:8]" -type "float2" 0.43178946 0.54621941
		 0.33483645 0.66367543 0.38732821 0.56631684 0.43178946 0.54621941 0.33483645 0.66367543
		 0.38732821 0.56631684 0.43178946 0.54621941 0.33483645 0.66367543 0.38732821 0.56631684;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".pt[3:5]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0;
	setAttr -s 6 ".vt[0:5]"  -0.068210535 1.6875409e-017 -0.076000087
		 -0.16516356 5.9760411e-017 -0.26913697 -0.11267181 2.4213302e-017 -0.10904702 -0.068210535 1.6875409e-017 -0.076000087
		 -0.16516356 5.9760411e-017 -0.26913697 -0.11267181 2.4213302e-017 -0.10904702;
	setAttr -s 9 ".ed[0:8]"  1 2 0 0 1 0 2 0 0 0 3 0 1 4 0 3 4 0 2 5 0
		 4 5 0 5 3 0;
	setAttr -s 5 -ch 18 ".fc[0:4]" -type "polyFaces" 
		f 3 5 7 8
		mu 0 3 6 7 8
		f 3 -3 -1 -2
		mu 0 3 3 5 4
		f 4 1 4 -6 -4
		mu 0 4 0 1 7 6
		f 4 0 6 -8 -5
		mu 0 4 1 2 8 7
		f 4 2 3 -9 -7
		mu 0 4 2 0 6 8;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface11" -p "pPlane1";
	rename -uid "FEF1DE06-4F5C-F911-9B42-069196F71D15";
createNode mesh -n "polySurfaceShape11" -p "polySurface11";
	rename -uid "A460EE12-4EFF-741A-066C-598ED6B67A9E";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0 0.4000738 0.11508095
		 0.49298334 0.03836143 0.55674136 0 0.4741573 0 0.4000738 0.11508095 0.49298334 0.03836143
		 0.55674136 0 0.4741573 0 0.4000738 0.11508095 0.49298334 0.03836143 0.55674136 0
		 0.4741573;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0 0 0.16065009 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -3.6484594e-017 0.16431201 -0.38491905 -2.5618909e-018 0.011537731
		 -0.46163857 2.0717144e-017 -0.093301721 -0.5 -9.4355665e-018 0.042494014 -0.5 -3.6484594e-017 0.16431201
		 -0.38491905 -2.5618909e-018 0.011537731 -0.46163857 2.0717144e-017 -0.093301721 -0.5 -9.4355665e-018 0.042494014;
	setAttr -s 12 ".ed[0:11]"  0 3 0 0 1 0 2 1 0 2 3 0 0 4 0 1 5 0 4 5 0
		 2 6 0 6 5 0 3 7 0 6 7 0 4 7 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 6 -9 10 -12
		mu 0 4 8 9 10 11
		f 4 0 -4 2 -2
		mu 0 4 4 7 6 5
		f 4 1 5 -7 -5
		mu 0 4 0 1 9 8
		f 4 -3 7 8 -6
		mu 0 4 1 2 10 9
		f 4 3 9 -11 -8
		mu 0 4 2 3 11 10
		f 4 -1 4 11 -10
		mu 0 4 3 0 8 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface12" -p "pPlane1";
	rename -uid "A272121A-4154-705D-7894-CA98EE68A2ED";
createNode mesh -n "polySurfaceShape12" -p "polySurface12";
	rename -uid "33AFD181-4553-EA8D-F0CB-60893F7186B7";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:6]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 15 ".uvst[0].uvsp[0:14]" -type "float2" 0.23046261 0.39709508
		 0.18912369 0.28450274 0.24762744 0.24875188 0.36784708 0.23533404 0.39166546 0.26312697
		 0.23046261 0.39709508 0.18912369 0.28450274 0.24762744 0.24875188 0.36784708 0.23533404
		 0.39166546 0.26312697 0.23046261 0.39709508 0.18912369 0.28450274 0.24762744 0.24875188
		 0.36784708 0.23533404 0.39166546 0.26312697;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt[5:9]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0 0 0.16065009 0 0 0.16065009 0;
	setAttr -s 10 ".vt[0:9]"  -0.26953739 -3.7572171e-017 0.16921002 -0.31087631 -7.868136e-017 0.35434934
		 -0.25237256 -9.1734555e-017 0.41313571 -0.13215293 -9.6633621e-017 0.43519917 -0.10833453 -8.6485988e-017 0.38949826
		 -0.26953739 -3.7572171e-017 0.16921002 -0.31087631 -7.868136e-017 0.35434934 -0.25237256 -9.1734555e-017 0.41313571
		 -0.13215293 -9.6633621e-017 0.43519917 -0.10833453 -8.6485988e-017 0.38949826;
	setAttr -s 15 ".ed[0:14]"  2 1 0 0 1 0 2 3 0 4 3 0 0 4 0 0 5 0 1 6 0
		 5 6 0 2 7 0 7 6 0 3 8 0 7 8 0 4 9 0 9 8 0 5 9 0;
	setAttr -s 7 -ch 30 ".fc[0:6]" -type "polyFaces" 
		f 5 7 -10 11 -14 -15
		mu 0 5 10 11 12 13 14
		f 5 4 3 -3 0 -2
		mu 0 5 5 9 8 7 6
		f 4 1 6 -8 -6
		mu 0 4 0 1 11 10
		f 4 -1 8 9 -7
		mu 0 4 1 2 12 11
		f 4 2 10 -12 -9
		mu 0 4 2 3 13 12
		f 4 -4 12 13 -11
		mu 0 4 3 4 14 13
		f 4 -5 5 14 -13
		mu 0 4 4 0 10 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface13" -p "pPlane1";
	rename -uid "0A8FEF8E-4E0C-4FF8-C186-619B091F5D56";
createNode mesh -n "polySurfaceShape13" -p "polySurface13";
	rename -uid "3F7E3D08-42B7-812D-B334-32B0C9331613";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 21 ".uvst[0].uvsp[0:20]" -type "float2" 0.36784708 0.23533404
		 0.43399179 0.22795162 0.39166546 0.26312697 0.38732821 0.56631684 0.30607784 0.60304379
		 0.23046261 0.39709508 0.48934364 0.37710461 0.36784708 0.23533404 0.43399179 0.22795162
		 0.39166546 0.26312697 0.38732821 0.56631684 0.30607784 0.60304379 0.23046261 0.39709508
		 0.48934364 0.37710461 0.36784708 0.23533404 0.43399179 0.22795162 0.39166546 0.26312697
		 0.38732821 0.56631684 0.30607784 0.60304379 0.23046261 0.39709508 0.48934364 0.37710461;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[7:14]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0 0 0.16065009 0 0 0.16065009 0 0 0.16065009 0 0 0.16065009 0 0 0.16065009 
		0;
	setAttr -s 15 ".vt[0:14]"  -0.10833453 -8.6485988e-017 0.38949826 -0.26953739 -3.7572171e-017 0.16921002
		 -0.19392213 3.7622881e-017 -0.16943839 -0.13215293 -9.6633621e-017 0.43519917 -0.06600821 -9.9329052e-017 0.44733825
		 -0.11267181 2.4213302e-017 -0.10904702 -0.010656338 -4.4871001e-017 0.20208102 -0.13215293 -9.6633621e-017 0.43519917
		 -0.06600821 -9.9329052e-017 0.44733825 -0.10833453 -8.6485988e-017 0.38949826 -0.19392213 3.7622881e-017 -0.16943839
		 -0.11267181 2.4213302e-017 -0.10904702 -0.26953739 -3.7572171e-017 0.16921002 -0.10833453 -8.6485988e-017 0.38949826
		 -0.010656338 -4.4871001e-017 0.20208102;
	setAttr -s 24 ".ed[0:23]"  6 0 0 0 3 0 0 4 0 1 0 0 2 1 0 2 5 0 3 4 0
		 5 6 0 3 7 0 4 8 0 7 8 0 0 9 0 9 8 0 9 7 0 2 10 0 5 11 0 10 11 0 1 12 0 10 12 0 0 13 0
		 12 13 0 6 14 0 14 13 0 11 14 0;
	setAttr -s 12 -ch 48 ".fc[0:11]" -type "polyFaces" 
		f 3 10 -13 13
		mu 0 3 14 15 16
		f 5 -17 18 20 -23 -24
		mu 0 5 17 18 19 16 20
		f 3 -2 2 -7
		mu 0 3 7 9 8
		f 5 7 0 -4 -5 5
		mu 0 5 10 13 9 12 11
		f 4 6 9 -11 -9
		mu 0 4 0 1 15 14
		f 4 -3 11 12 -10
		mu 0 4 1 2 16 15
		f 4 1 8 -14 -12
		mu 0 4 2 0 14 16
		f 4 -6 14 16 -16
		mu 0 4 3 4 18 17
		f 4 4 17 -19 -15
		mu 0 4 4 5 19 18
		f 4 3 19 -21 -18
		mu 0 4 5 2 16 19
		f 4 -1 21 22 -20
		mu 0 4 2 6 20 16
		f 4 -8 15 23 -22
		mu 0 4 6 3 17 20;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface14" -p "pPlane1";
	rename -uid "CD80CEA4-49AB-6291-E616-648213B2575F";
createNode mesh -n "polySurfaceShape14" -p "polySurface14";
	rename -uid "A9FBDEFE-43B3-87AA-AD3D-828B554E6E93";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 9 ".uvst[0].uvsp[0:8]" -type "float2" 0.50516129 0.347767
		 0.4783476 0.22300106 0.57845402 0.21182796 0.50516129 0.347767 0.4783476 0.22300106
		 0.57845402 0.21182796 0.50516129 0.347767 0.4783476 0.22300106 0.57845402 0.21182796;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".pt[3:5]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0;
	setAttr -s 6 ".vt[0:5]"  -0.021652423 -1.0113657e-016 0.45547861 0.07845404 -1.0521605e-016 0.473851
		 0.0051613012 -5.558262e-017 0.25032187 -0.021652423 -1.0113657e-016 0.45547861 0.0051613012 -5.558262e-017 0.25032187
		 0.07845404 -1.0521605e-016 0.473851;
	setAttr -s 9 ".ed[0:8]"  0 2 0 0 1 0 2 1 0 0 3 0 2 4 0 3 4 0 1 5 0
		 3 5 0 4 5 0;
	setAttr -s 5 -ch 18 ".fc[0:4]" -type "polyFaces" 
		f 3 -6 7 -9
		mu 0 3 6 7 8
		f 3 2 -2 0
		mu 0 3 3 5 4
		f 4 -1 3 5 -5
		mu 0 4 0 1 7 6
		f 4 1 6 -8 -4
		mu 0 4 1 2 8 7
		f 4 -3 4 8 -7
		mu 0 4 2 0 6 8;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface15" -p "pPlane1";
	rename -uid "023BBFD1-4518-69F0-273E-08A1F8E0741C";
createNode mesh -n "polySurfaceShape15" -p "polySurface15";
	rename -uid "09AAB10B-48D5-3996-AF10-658C95CF37B7";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 9 ".uvst[0].uvsp[0:8]" -type "float2" 0.77096784 0.70572221
		 0.76739252 0.70155025 0.78681296 0.68942189 0.77096784 0.70572221 0.76739252 0.70155025
		 0.78681296 0.68942189 0.77096784 0.70572221 0.76739252 0.70155025 0.78681296 0.68942189;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".pt[3:5]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0;
	setAttr -s 6 ".vt[0:5]"  0.2709679 7.5112341e-017 -0.33827591 0.26739261 7.3589117e-017 -0.33141592
		 0.28681302 6.9160849e-017 -0.3114728 0.2709679 7.5112341e-017 -0.33827591 0.26739261 7.3589117e-017 -0.33141592
		 0.28681302 6.9160849e-017 -0.3114728;
	setAttr -s 9 ".ed[0:8]"  2 0 0 0 1 0 1 2 0 0 3 0 1 4 0 3 4 0 2 5 0
		 4 5 0 5 3 0;
	setAttr -s 5 -ch 18 ".fc[0:4]" -type "polyFaces" 
		f 3 5 7 8
		mu 0 3 6 7 8
		f 3 -1 -3 -2
		mu 0 3 3 5 4
		f 4 1 4 -6 -4
		mu 0 4 0 1 7 6
		f 4 2 6 -8 -5
		mu 0 4 1 2 8 7
		f 4 0 3 -9 -7
		mu 0 4 2 0 6 8;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface16" -p "pPlane1";
	rename -uid "C703A5AE-479E-A50A-E13E-ACA3E92C7C7A";
createNode mesh -n "polySurfaceShape16" -p "polySurface16";
	rename -uid "0EAE9F3E-4C09-7414-3EE0-CDB5FF7EB732";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.60322726 0.80407453
		 0.76739252 0.70155025 0.77096784 0.70572221 0.67536199 0.80407453 0.60322726 0.80407453
		 0.76739252 0.70155025 0.77096784 0.70572221 0.67536199 0.80407453 0.60322726 0.80407453
		 0.76739252 0.70155025 0.77096784 0.70572221 0.67536199 0.80407453;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0 0 0.16065009 0;
	setAttr -s 8 ".vt[0:7]"  0.17536199 1.110223e-016 -0.5 0.2709679 7.5112341e-017 -0.33827591
		 0.10322725 1.110223e-016 -0.5 0.26739261 7.3589117e-017 -0.33141592 0.10322725 1.110223e-016 -0.5
		 0.26739261 7.3589117e-017 -0.33141592 0.2709679 7.5112341e-017 -0.33827591 0.17536199 1.110223e-016 -0.5;
	setAttr -s 12 ".ed[0:11]"  1 0 0 1 3 0 2 0 0 2 3 0 2 4 0 3 5 0 4 5 0
		 1 6 0 6 5 0 0 7 0 6 7 0 4 7 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 6 -9 10 -12
		mu 0 4 8 9 10 11
		f 4 2 -1 1 -4
		mu 0 4 4 7 6 5
		f 4 3 5 -7 -5
		mu 0 4 0 1 9 8
		f 4 -2 7 8 -6
		mu 0 4 1 2 10 9
		f 4 0 9 -11 -8
		mu 0 4 2 3 11 10
		f 4 -3 4 11 -10
		mu 0 4 3 0 8 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface17" -p "pPlane1";
	rename -uid "6F6E3277-46F0-8E0E-43B1-9B9435677A16";
createNode mesh -n "polySurfaceShape17" -p "polySurface17";
	rename -uid "5636336D-441E-C18D-9ED9-3D996D9D864F";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.61873794 0.52809036
		 0.55879921 0.59734768 0.53753817 0.49841866 0.57773709 0.48024788 0.61873794 0.52809036
		 0.55879921 0.59734768 0.53753817 0.49841866 0.57773709 0.48024788 0.61873794 0.52809036
		 0.55879921 0.59734768 0.53753817 0.49841866 0.57773709 0.48024788;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0 0 0.16065009 0;
	setAttr -s 8 ".vt[0:7]"  0.118738 1.0256229e-017 -0.046189953 0.058799241 3.5543144e-017 -0.16007209
		 0.037538238 -5.7737372e-019 0.0026002601 0.077737153 -7.2117924e-018 0.032479025
		 0.118738 1.0256229e-017 -0.046189953 0.058799241 3.5543144e-017 -0.16007209 0.037538238 -5.7737372e-019 0.0026002601
		 0.077737153 -7.2117924e-018 0.032479025;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 1 0 2 3 0 0 3 0 0 4 0 1 5 0 4 5 0
		 2 6 0 6 5 0 3 7 0 6 7 0 4 7 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 6 -9 10 -12
		mu 0 4 8 9 10 11
		f 4 3 -3 1 -1
		mu 0 4 4 7 6 5
		f 4 0 5 -7 -5
		mu 0 4 0 1 9 8
		f 4 -2 7 8 -6
		mu 0 4 1 2 10 9
		f 4 2 9 -11 -8
		mu 0 4 2 3 11 10
		f 4 -4 4 11 -10
		mu 0 4 3 0 8 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface18" -p "pPlane1";
	rename -uid "30261652-4F76-BEC7-CE2B-74A060119D36";
createNode mesh -n "polySurfaceShape18" -p "polySurface18";
	rename -uid "F37E5DF5-4601-D082-4C96-0EAD0027D7C5";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 9 ".uvst[0].uvsp[0:8]" -type "float2" 0.96864778 0.50236356
		 0.91838723 0.41592538 1 0.47011068 0.96864778 0.50236356 0.91838723 0.41592538 1
		 0.47011068 0.96864778 0.50236356 0.91838723 0.41592538 1 0.47011068;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".pt[3:5]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0;
	setAttr -s 6 ".vt[0:5]"  0.46864781 8.6297106e-019 -0.0038864762 0.41838723 -3.0696937e-017 0.13824673
		 0.5 -1.0913043e-017 0.049147978 0.46864781 8.6297106e-019 -0.0038864762 0.41838723 -3.0696937e-017 0.13824673
		 0.5 -1.0913043e-017 0.049147978;
	setAttr -s 9 ".ed[0:8]"  0 1 0 1 2 0 2 0 0 0 3 0 1 4 0 3 4 0 2 5 0
		 4 5 0 5 3 0;
	setAttr -s 5 -ch 18 ".fc[0:4]" -type "polyFaces" 
		f 3 5 7 8
		mu 0 3 6 7 8
		f 3 -3 -2 -1
		mu 0 3 3 5 4
		f 4 0 4 -6 -4
		mu 0 4 0 1 7 6
		f 4 1 6 -8 -5
		mu 0 4 1 2 8 7
		f 4 2 3 -9 -7
		mu 0 4 2 0 6 8;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface19" -p "pPlane1";
	rename -uid "D6ADF0C7-4DE6-6059-E7A7-968F8F9C4951";
createNode mesh -n "polySurfaceShape19" -p "polySurface19";
	rename -uid "99B06484-43F8-153D-A5F2-B28BE697446E";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:29]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 48 ".uvst[0].uvsp[0:47]" -type "float2" 1 0.5562827 0.96864778
		 0.50236356 1 0.47011068 1 0.28937599 0.87710428 0.34492746 0.83697867 0.27591985
		 0.90620971 0.19592544 1 0.19592544 0.91838723 0.41592538 0.89912015 0.38279 0.72093636
		 0.19592544 0.60629922 0.20872021 0.58702803 0.19592544 0.79046464 0.19592544 0.78973472
		 0.33050886 0.6735301 0.2533569 1 0.5562827 0.96864778 0.50236356 1 0.47011068 1 0.28937599
		 0.87710428 0.34492746 0.83697867 0.27591985 0.90620971 0.19592544 1 0.19592544 0.91838723
		 0.41592538 0.89912015 0.38279 0.72093636 0.19592544 0.60629922 0.20872021 0.58702803
		 0.19592544 0.79046464 0.19592544 0.78973472 0.33050886 0.6735301 0.2533569 1 0.5562827
		 0.96864778 0.50236356 1 0.47011068 1 0.28937599 0.87710428 0.34492746 0.83697867
		 0.27591985 0.90620971 0.19592544 1 0.19592544 0.91838723 0.41592538 0.89912015 0.38279
		 0.72093636 0.19592544 0.60629922 0.20872021 0.58702803 0.19592544 0.79046464 0.19592544
		 0.78973472 0.33050886 0.6735301 0.2533569;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt[16:35]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0 0 0.16065009 0 0 0.16065009 0 0 0.16065009 0 0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0 0 0.16065009 0 0 0.16065009 0 0 0.16065009 0 0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0 0 0.16065009 0 0 0.16065009 0 0 0.16065009 0 0 0.16065009 0 0 0.16065009 
		0;
	setAttr -s 36 ".vt[0:35]"  0.5 -1.110223e-016 0.5 0.087028027 -1.110223e-016 0.5
		 0.5 -1.0913043e-017 0.049147978 0.29046464 -1.110223e-016 0.5 0.40620968 -1.110223e-016 0.5
		 0.33697867 -8.1815118e-017 0.36846253 0.37710431 -5.6619375e-017 0.25499099 0.5 -7.6902068e-017 0.34633613
		 0.10629922 -1.0635074e-016 0.47896114 0.22093631 -1.110223e-016 0.5 0.5 2.0549691e-017 -0.092547581
		 0.46864781 8.6297106e-019 -0.0038864762 0.41838723 -3.0696937e-017 0.13824673 0.39912009 -4.2795178e-017 0.19273235
		 0.17353006 -9.0053188e-017 0.4055635 0.28973469 -6.1883823e-017 0.27869996 0.5 2.0549691e-017 -0.092547581
		 0.46864781 8.6297106e-019 -0.0038864762 0.5 -1.0913043e-017 0.049147978 0.37710431 -5.6619375e-017 0.25499099
		 0.5 -7.6902068e-017 0.34633613 0.33697867 -8.1815118e-017 0.36846253 0.40620968 -1.110223e-016 0.5
		 0.5 -1.110223e-016 0.5 0.41838723 -3.0696937e-017 0.13824673 0.5 -1.0913043e-017 0.049147978
		 0.39912009 -4.2795178e-017 0.19273235 0.5 -7.6902068e-017 0.34633613 0.10629922 -1.0635074e-016 0.47896114
		 0.22093631 -1.110223e-016 0.5 0.087028027 -1.110223e-016 0.5 0.33697867 -8.1815118e-017 0.36846253
		 0.29046464 -1.110223e-016 0.5 0.28973469 -6.1883823e-017 0.27869996 0.17353006 -9.0053188e-017 0.4055635
		 0.22093631 -1.110223e-016 0.5;
	setAttr -s 60 ".ed[0:59]"  0 7 0 1 9 0 2 10 0 1 8 0 2 11 0 12 2 0 4 0 0
		 5 3 0 4 5 0 5 15 0 6 5 0 7 2 0 6 7 0 7 13 0 9 3 0 8 9 0 9 14 0 10 11 0 12 13 0 14 15 0
		 10 16 0 11 17 0 16 17 0 2 18 0 18 17 0 18 16 0 6 19 0 7 20 0 19 20 0 5 21 0 19 21 0
		 4 22 0 22 21 0 0 23 0 22 23 0 23 20 0 12 24 0 2 25 0 24 25 0 13 26 0 24 26 0 7 27 0
		 27 26 0 27 25 0 8 28 0 9 29 0 28 29 0 1 30 0 30 28 0 30 29 0 5 31 0 3 32 0 31 32 0
		 15 33 0 31 33 0 14 34 0 34 33 0 9 35 0 35 34 0 35 32 0;
	setAttr -s 30 -ch 120 ".fc[0:29]" -type "polyFaces" 
		f 3 22 -25 25
		mu 0 3 32 33 34
		f 5 -29 30 -33 34 35
		mu 0 5 35 36 37 38 39
		f 4 -39 40 -43 43
		mu 0 4 34 40 41 35
		f 3 -47 -49 49
		mu 0 3 42 43 44
		f 5 -53 54 -57 -59 59
		mu 0 5 45 37 46 47 42
		f 3 -3 4 -18
		mu 0 3 16 18 17
		f 5 -1 -7 8 -11 12
		mu 0 5 19 23 22 21 20
		f 4 -12 13 -19 5
		mu 0 4 18 19 25 24
		f 3 -2 3 15
		mu 0 3 26 28 27
		f 5 -15 16 19 -10 7
		mu 0 5 29 26 31 30 21
		f 4 17 21 -23 -21
		mu 0 4 0 1 33 32
		f 4 -5 23 24 -22
		mu 0 4 1 2 34 33
		f 4 2 20 -26 -24
		mu 0 4 2 0 32 34
		f 4 -13 26 28 -28
		mu 0 4 3 4 36 35
		f 4 10 29 -31 -27
		mu 0 4 4 5 37 36
		f 4 -9 31 32 -30
		mu 0 4 5 6 38 37
		f 4 6 33 -35 -32
		mu 0 4 6 7 39 38
		f 4 0 27 -36 -34
		mu 0 4 7 3 35 39
		f 4 -6 36 38 -38
		mu 0 4 2 8 40 34
		f 4 18 39 -41 -37
		mu 0 4 8 9 41 40
		f 4 -14 41 42 -40
		mu 0 4 9 3 35 41
		f 4 11 37 -44 -42
		mu 0 4 3 2 34 35
		f 4 -16 44 46 -46
		mu 0 4 10 11 43 42
		f 4 -4 47 48 -45
		mu 0 4 11 12 44 43
		f 4 1 45 -50 -48
		mu 0 4 12 10 42 44
		f 4 -8 50 52 -52
		mu 0 4 13 5 37 45
		f 4 9 53 -55 -51
		mu 0 4 5 14 46 37
		f 4 -20 55 56 -54
		mu 0 4 14 15 47 46
		f 4 -17 57 58 -56
		mu 0 4 15 10 42 47
		f 4 14 51 -60 -58
		mu 0 4 10 13 45 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface20" -p "pPlane1";
	rename -uid "6D0ECC64-4105-4651-D4A5-FBA206679847";
createNode mesh -n "polySurfaceShape20" -p "polySurface20";
	rename -uid "4EE63466-4FD8-7130-EAB7-E7BD6D20ADCB";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 9 ".uvst[0].uvsp[0:8]" -type "float2" 1 0.5562827 0.78681296
		 0.68942189 0.96864778 0.50236356 1 0.5562827 0.78681296 0.68942189 0.96864778 0.50236356
		 1 0.5562827 0.78681296 0.68942189 0.96864778 0.50236356;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".pt[3:5]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0;
	setAttr -s 6 ".vt[0:5]"  0.5 2.0549691e-017 -0.092547581 0.46864781 8.6297106e-019 -0.0038864762
		 0.28681302 6.9160849e-017 -0.3114728 0.28681302 6.9160849e-017 -0.3114728 0.5 2.0549691e-017 -0.092547581
		 0.46864781 8.6297106e-019 -0.0038864762;
	setAttr -s 9 ".ed[0:8]"  2 0 0 0 1 0 1 2 0 2 3 0 0 4 0 3 4 0 1 5 0
		 5 3 0 4 5 0;
	setAttr -s 5 -ch 18 ".fc[0:4]" -type "polyFaces" 
		f 3 -6 -8 -9
		mu 0 3 6 7 8
		f 3 1 2 0
		mu 0 3 3 5 4
		f 4 -1 3 5 -5
		mu 0 4 0 1 7 6
		f 4 -3 6 7 -4
		mu 0 4 1 2 8 7
		f 4 -2 4 8 -7
		mu 0 4 2 0 6 8;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface21" -p "pPlane1";
	rename -uid "07E2863B-41C1-AE79-8F87-C792D0C7BCD5";
createNode mesh -n "polySurfaceShape21" -p "polySurface21";
	rename -uid "5A912538-439A-2BCF-153D-51B041BA1BA9";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 9 ".uvst[0].uvsp[0:8]" -type "float2" 0.57773709 0.48024788
		 0.71309566 0.41906291 0.61873794 0.52809036 0.57773709 0.48024788 0.71309566 0.41906291
		 0.61873794 0.52809036 0.57773709 0.48024788 0.71309566 0.41906291 0.61873794 0.52809036;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".pt[3:5]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0;
	setAttr -s 6 ".vt[0:5]"  0.077737153 -7.2117924e-018 0.032479025 0.21309569 -2.9551375e-017 0.13308756
		 0.118738 1.0256229e-017 -0.046189953 0.077737153 -7.2117924e-018 0.032479025 0.21309569 -2.9551375e-017 0.13308756
		 0.118738 1.0256229e-017 -0.046189953;
	setAttr -s 9 ".ed[0:8]"  2 0 0 0 1 0 1 2 0 0 3 0 1 4 0 3 4 0 2 5 0
		 4 5 0 5 3 0;
	setAttr -s 5 -ch 18 ".fc[0:4]" -type "polyFaces" 
		f 3 5 7 8
		mu 0 3 6 7 8
		f 3 -1 -3 -2
		mu 0 3 3 5 4
		f 4 1 4 -6 -4
		mu 0 4 0 1 7 6
		f 4 2 6 -8 -5
		mu 0 4 1 2 8 7
		f 4 0 3 -9 -7
		mu 0 4 2 0 6 8;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface22" -p "pPlane1";
	rename -uid "6C033666-46AC-322F-4FB6-A7A9F0072F82";
createNode mesh -n "polySurfaceShape22" -p "polySurface22";
	rename -uid "726100D3-44DF-4C02-61D8-DEAC9EDB4D50";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 9 ".uvst[0].uvsp[0:8]" -type "float2" 0.72093636 0.19592544
		 0.6735301 0.2533569 0.60629922 0.20872021 0.72093636 0.19592544 0.6735301 0.2533569
		 0.60629922 0.20872021 0.72093636 0.19592544 0.6735301 0.2533569 0.60629922 0.20872021;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".pt[3:5]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0;
	setAttr -s 6 ".vt[0:5]"  0.22093631 -1.110223e-016 0.5 0.17353006 -9.0053188e-017 0.4055635
		 0.10629922 -1.0635074e-016 0.47896114 0.22093631 -1.110223e-016 0.5 0.17353006 -9.0053188e-017 0.4055635
		 0.10629922 -1.0635074e-016 0.47896114;
	setAttr -s 9 ".ed[0:8]"  0 1 0 2 1 0 2 0 0 0 3 0 1 4 0 3 4 0 2 5 0
		 5 4 0 5 3 0;
	setAttr -s 5 -ch 18 ".fc[0:4]" -type "polyFaces" 
		f 3 5 -8 8
		mu 0 3 6 7 8
		f 3 -3 1 -1
		mu 0 3 3 5 4
		f 4 0 4 -6 -4
		mu 0 4 0 1 7 6
		f 4 -2 6 7 -5
		mu 0 4 1 2 8 7
		f 4 2 3 -9 -7
		mu 0 4 2 0 6 8;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface23" -p "pPlane1";
	rename -uid "53FA283B-44BD-DBA5-12D2-3E9651A6D78F";
createNode mesh -n "polySurfaceShape23" -p "polySurface23";
	rename -uid "C7F4362E-42BB-818A-D8EF-EA805D806411";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 9 ".uvst[0].uvsp[0:8]" -type "float2" 1 0.28937599 0.89912015
		 0.38279 0.87710428 0.34492746 1 0.28937599 0.89912015 0.38279 0.87710428 0.34492746
		 1 0.28937599 0.89912015 0.38279 0.87710428 0.34492746;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".pt[3:5]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0;
	setAttr -s 6 ".vt[0:5]"  0.5 -7.6902068e-017 0.34633613 0.39912009 -4.2795178e-017 0.19273235
		 0.37710431 -5.6619375e-017 0.25499099 0.5 -7.6902068e-017 0.34633613 0.39912009 -4.2795178e-017 0.19273235
		 0.37710431 -5.6619375e-017 0.25499099;
	setAttr -s 9 ".ed[0:8]"  0 1 0 1 2 0 2 0 0 0 3 0 1 4 0 3 4 0 2 5 0
		 4 5 0 5 3 0;
	setAttr -s 5 -ch 18 ".fc[0:4]" -type "polyFaces" 
		f 3 5 7 8
		mu 0 3 6 7 8
		f 3 -3 -2 -1
		mu 0 3 3 5 4
		f 4 0 4 -6 -4
		mu 0 4 0 1 7 6
		f 4 1 6 -8 -5
		mu 0 4 1 2 8 7
		f 4 2 3 -9 -7
		mu 0 4 2 0 6 8;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface24" -p "pPlane1";
	rename -uid "9B46838A-4AE2-ABD3-06DE-29A5A7E61C7A";
createNode mesh -n "polySurfaceShape24" -p "polySurface24";
	rename -uid "FED1EEBF-46E2-8FD4-01E9-B8ACEDF1555C";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.83804464 0.3625834
		 0.87710428 0.34492746 0.89912015 0.38279 0.88632494 0.39463824 0.83804464 0.3625834
		 0.87710428 0.34492746 0.89912015 0.38279 0.88632494 0.39463824 0.83804464 0.3625834
		 0.87710428 0.34492746 0.89912015 0.38279 0.88632494 0.39463824;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0 0 0.16065009 0;
	setAttr -s 8 ".vt[0:7]"  0.33804464 -5.0172928e-017 0.22595878 0.37710431 -5.6619375e-017 0.25499099
		 0.39912009 -4.2795178e-017 0.19273235 0.38632497 -3.8469209e-017 0.17324992 0.33804464 -5.0172928e-017 0.22595878
		 0.37710431 -5.6619375e-017 0.25499099 0.39912009 -4.2795178e-017 0.19273235 0.38632497 -3.8469209e-017 0.17324992;
	setAttr -s 12 ".ed[0:11]"  2 1 0 0 1 0 2 3 0 0 3 0 0 4 0 1 5 0 4 5 0
		 2 6 0 6 5 0 3 7 0 6 7 0 4 7 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 6 -9 10 -12
		mu 0 4 8 9 10 11
		f 4 3 -3 0 -2
		mu 0 4 4 7 6 5
		f 4 1 5 -7 -5
		mu 0 4 0 1 9 8
		f 4 -1 7 8 -6
		mu 0 4 1 2 10 9
		f 4 2 9 -11 -8
		mu 0 4 2 3 11 10
		f 4 -4 4 11 -10
		mu 0 4 3 0 8 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface25" -p "pPlane1";
	rename -uid "875432CA-4799-456E-B6B9-5BA5D8C2040D";
createNode mesh -n "polySurfaceShape25" -p "polySurface25";
	rename -uid "B6AC5E9E-4E5F-20A0-0C56-48B5DA408248";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:6]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 15 ".uvst[0].uvsp[0:14]" -type "float2" 0.88632494 0.39463824
		 0.67336726 0.5918355 0.61873794 0.52809036 0.71309566 0.41906291 0.83804464 0.3625834
		 0.88632494 0.39463824 0.67336726 0.5918355 0.61873794 0.52809036 0.71309566 0.41906291
		 0.83804464 0.3625834 0.88632494 0.39463824 0.67336726 0.5918355 0.61873794 0.52809036
		 0.71309566 0.41906291 0.83804464 0.3625834;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt[5:9]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0 0 0.16065009 0 0 0.16065009 0;
	setAttr -s 10 ".vt[0:9]"  0.38632497 -3.8469209e-017 0.17324992 0.17336738 3.353056e-017 -0.15100822
		 0.118738 1.0256229e-017 -0.046189953 0.21309569 -2.9551375e-017 0.13308756 0.33804464 -5.0172928e-017 0.22595878
		 0.38632497 -3.8469209e-017 0.17324992 0.17336738 3.353056e-017 -0.15100822 0.118738 1.0256229e-017 -0.046189953
		 0.21309569 -2.9551375e-017 0.13308756 0.33804464 -5.0172928e-017 0.22595878;
	setAttr -s 15 ".ed[0:14]"  3 2 0 4 0 0 0 1 0 1 2 0 3 4 0 0 5 0 1 6 0
		 5 6 0 2 7 0 6 7 0 3 8 0 8 7 0 4 9 0 8 9 0 9 5 0;
	setAttr -s 7 -ch 30 ".fc[0:6]" -type "polyFaces" 
		f 5 7 9 -12 13 14
		mu 0 5 10 11 12 13 14
		f 5 -2 -5 0 -4 -3
		mu 0 5 5 9 8 7 6
		f 4 2 6 -8 -6
		mu 0 4 0 1 11 10
		f 4 3 8 -10 -7
		mu 0 4 1 2 12 11
		f 4 -1 10 11 -9
		mu 0 4 2 3 13 12
		f 4 4 12 -14 -11
		mu 0 4 3 4 14 13
		f 4 1 5 -15 -13
		mu 0 4 4 0 10 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface26" -p "pPlane1";
	rename -uid "6B8C8CD5-47ED-32C7-CAEC-B2A5DFBAFD1E";
createNode mesh -n "polySurfaceShape26" -p "polySurface26";
	rename -uid "5D45D5E0-4CE7-885D-E84E-599E0DE053C7";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.67336726 0.5918355
		 0.57682681 0.6812315 0.55879921 0.59734768 0.61873794 0.52809036 0.67336726 0.5918355
		 0.57682681 0.6812315 0.55879921 0.59734768 0.61873794 0.52809036 0.67336726 0.5918355
		 0.57682681 0.6812315 0.55879921 0.59734768 0.61873794 0.52809036;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0 0 0.16065009 0;
	setAttr -s 8 ".vt[0:7]"  0.118738 1.0256229e-017 -0.046189953 0.17336738 3.353056e-017 -0.15100822
		 0.076826841 6.6170399e-017 -0.29800501 0.058799241 3.5543144e-017 -0.16007209 0.17336738 3.353056e-017 -0.15100822
		 0.076826841 6.6170399e-017 -0.29800501 0.058799241 3.5543144e-017 -0.16007209 0.118738 1.0256229e-017 -0.046189953;
	setAttr -s 12 ".ed[0:11]"  0 3 0 1 0 0 1 2 0 3 2 0 1 4 0 2 5 0 4 5 0
		 3 6 0 6 5 0 0 7 0 7 6 0 4 7 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 6 -9 -11 -12
		mu 0 4 8 9 10 11
		f 4 1 0 3 -3
		mu 0 4 4 7 6 5
		f 4 2 5 -7 -5
		mu 0 4 0 1 9 8
		f 4 -4 7 8 -6
		mu 0 4 1 2 10 9
		f 4 -1 9 10 -8
		mu 0 4 2 3 11 10
		f 4 -2 4 11 -10
		mu 0 4 3 0 8 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface27" -p "pPlane1";
	rename -uid "92F2C244-4471-BE79-C471-53B44CB17E3D";
createNode mesh -n "polySurfaceShape27" -p "polySurface27";
	rename -uid "079B75F2-4936-3900-9419-169C24BDF2FA";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.57682681 0.6812315
		 0.47036302 0.77981639 0.42946047 0.74679428 0.55879921 0.59734768 0.57682681 0.6812315
		 0.47036302 0.77981639 0.42946047 0.74679428 0.55879921 0.59734768 0.57682681 0.6812315
		 0.47036302 0.77981639 0.42946047 0.74679428 0.55879921 0.59734768;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0 0 0.16065009 0;
	setAttr -s 8 ".vt[0:7]"  0.076826841 6.6170399e-017 -0.29800501 -0.029636966 1.0216529e-016 -0.46011156
		 -0.070539519 9.0108397e-017 -0.40581217 0.058799241 3.5543144e-017 -0.16007209 0.076826841 6.6170399e-017 -0.29800501
		 -0.029636966 1.0216529e-016 -0.46011156 -0.070539519 9.0108397e-017 -0.40581217 0.058799241 3.5543144e-017 -0.16007209;
	setAttr -s 12 ".ed[0:11]"  3 0 0 0 1 0 2 1 0 3 2 0 0 4 0 1 5 0 4 5 0
		 2 6 0 6 5 0 3 7 0 7 6 0 7 4 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 6 -9 -11 11
		mu 0 4 8 9 10 11
		f 4 -1 3 2 -2
		mu 0 4 4 7 6 5
		f 4 1 5 -7 -5
		mu 0 4 0 1 9 8
		f 4 -3 7 8 -6
		mu 0 4 1 2 10 9
		f 4 -4 9 10 -8
		mu 0 4 2 3 11 10
		f 4 0 4 -12 -10
		mu 0 4 3 0 8 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface28" -p "pPlane1";
	rename -uid "AB2269E6-4904-1DEF-38D3-75BBE1A8ADB6";
createNode mesh -n "polySurfaceShape28" -p "polySurface28";
	rename -uid "3E234017-4DDF-48A6-38A3-199E9163E4F4";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:18]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 33 ".uvst[0].uvsp[0:32]" -type "float2" 0.37988746 0.80407453
		 0.42946047 0.74679428 0.47036302 0.77981639 0.44416606 0.80407453 0.259139 0.80407453
		 0.33097124 0.67084432 0.55879921 0.59734768 0.33231005 0.66836119 0.33483645 0.66367543
		 0.43178946 0.54621941 0.53753817 0.49841866 0.37988746 0.80407453 0.42946047 0.74679428
		 0.47036302 0.77981639 0.44416606 0.80407453 0.259139 0.80407453 0.33097124 0.67084432
		 0.55879921 0.59734768 0.33231005 0.66836119 0.33483645 0.66367543 0.43178946 0.54621941
		 0.53753817 0.49841866 0.37988746 0.80407453 0.42946047 0.74679428 0.47036302 0.77981639
		 0.44416606 0.80407453 0.259139 0.80407453 0.33097124 0.67084432 0.55879921 0.59734768
		 0.33231005 0.66836119 0.33483645 0.66367543 0.43178946 0.54621941 0.53753817 0.49841866;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 13 ".pt[11:23]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0 0 0.16065009 0 0 0.16065009 0 0 0.16065009 0 0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0 0 0.16065009 0 0 0.16065009 0 0 0.16065009 0 0 0.16065009 0;
	setAttr -s 24 ".vt[0:23]"  0.058799241 3.5543144e-017 -0.16007209 -0.070539519 9.0108397e-017 -0.40581217
		 -0.12011251 1.110223e-016 -0.5 0.037538238 -5.7737372e-019 0.0026002601 -0.068210535 1.6875409e-017 -0.076000087
		 -0.029636966 1.0216529e-016 -0.46011156 -0.055833921 1.110223e-016 -0.5 -0.240861 1.110223e-016 -0.5
		 -0.16902876 6.2377908e-017 -0.28092512 -0.16768995 6.1471272e-017 -0.27684203 -0.16516356 5.9760411e-017 -0.26913697
		 -0.070539519 9.0108397e-017 -0.40581217 -0.12011251 1.110223e-016 -0.5 -0.029636966 1.0216529e-016 -0.46011156
		 -0.055833921 1.110223e-016 -0.5 -0.240861 1.110223e-016 -0.5 -0.16902876 6.2377908e-017 -0.28092512
		 -0.12011251 1.110223e-016 -0.5 0.058799241 3.5543144e-017 -0.16007209 -0.070539519 9.0108397e-017 -0.40581217
		 -0.16768995 6.1471272e-017 -0.27684203 -0.16516356 5.9760411e-017 -0.26913697 -0.068210535 1.6875409e-017 -0.076000087
		 0.037538238 -5.7737372e-019 0.0026002601;
	setAttr -s 39 ".ed[0:38]"  7 2 0 9 1 0 1 5 0 2 6 0 0 1 0 1 2 0 2 8 0
		 3 0 0 4 3 0 4 10 0 5 6 0 7 8 0 9 10 0 1 11 0 2 12 0 11 12 0 5 13 0 11 13 0 6 14 0
		 13 14 0 12 14 0 7 15 0 8 16 0 15 16 0 2 17 0 17 16 0 15 17 0 0 18 0 1 19 0 18 19 0
		 9 20 0 20 19 0 10 21 0 20 21 0 4 22 0 22 21 0 3 23 0 22 23 0 23 18 0;
	setAttr -s 19 -ch 78 ".fc[0:18]" -type "polyFaces" 
		f 4 -16 17 19 -21
		mu 0 4 22 23 24 25
		f 3 23 -26 -27
		mu 0 3 26 27 22
		f 6 29 -32 33 -36 37 38
		mu 0 6 28 23 29 30 31 32
		f 4 3 -11 -3 5
		mu 0 4 11 14 13 12
		f 3 0 6 -12
		mu 0 3 15 11 16
		f 6 -8 -9 9 -13 1 -5
		mu 0 6 17 21 20 19 18 12
		f 4 -6 13 15 -15
		mu 0 4 0 1 23 22
		f 4 2 16 -18 -14
		mu 0 4 1 2 24 23
		f 4 10 18 -20 -17
		mu 0 4 2 3 25 24
		f 4 -4 14 20 -19
		mu 0 4 3 0 22 25
		f 4 11 22 -24 -22
		mu 0 4 4 5 27 26
		f 4 -7 24 25 -23
		mu 0 4 5 0 22 27
		f 4 -1 21 26 -25
		mu 0 4 0 4 26 22
		f 4 4 28 -30 -28
		mu 0 4 6 1 23 28
		f 4 -2 30 31 -29
		mu 0 4 1 7 29 23
		f 4 12 32 -34 -31
		mu 0 4 7 8 30 29
		f 4 -10 34 35 -33
		mu 0 4 8 9 31 30
		f 4 8 36 -38 -35
		mu 0 4 9 10 32 31
		f 4 7 27 -39 -37
		mu 0 4 10 6 28 32;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface29" -p "pPlane1";
	rename -uid "DD614A25-43E2-DF89-A15B-7394A8F945F8";
createNode mesh -n "polySurfaceShape29" -p "polySurface29";
	rename -uid "B9768748-41AF-397E-25F7-279CBD1DFBA5";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.21646720170974731 0.71148055791854858 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.15325117 0.80407453
		 0.10259503 0.69502264 0.27102906 0.61888659 0.32911134 0.66577876 0.33033937 0.66912347
		 0.21894526 0.80407453 0.15325117 0.80407453 0.10259503 0.69502264 0.27102906 0.61888659
		 0.32911134 0.66577876 0.33033937 0.66912347 0.21894526 0.80407453 0.15325117 0.80407453
		 0.10259503 0.69502264 0.27102906 0.61888659 0.32911134 0.66577876 0.33033937 0.66912347
		 0.21894526 0.80407453;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt[6:11]" -type "float3"  1.8626451e-009 0.16065009 
		0 1.8626451e-009 0.16065009 0 1.8626451e-009 0.16065009 0 1.8626451e-009 0.16065009 
		0 1.8626451e-009 0.16065009 0 1.8626451e-009 0.16065009 0;
	setAttr -s 12 ".vt[0:11]"  -0.34674883 1.110223e-016 -0.5 -0.39740497 7.1205765e-017 -0.32068226
		 -0.22897093 4.3407318e-017 -0.19548918 -0.17088865 6.0528379e-017 -0.27259558 -0.1696606 6.1749582e-017 -0.27809539
		 -0.28105474 1.110223e-016 -0.5 -0.34674883 1.110223e-016 -0.5 -0.39740497 7.1205765e-017 -0.32068226
		 -0.22897093 4.3407318e-017 -0.19548918 -0.17088865 6.0528379e-017 -0.27259558 -0.1696606 6.1749582e-017 -0.27809539
		 -0.28105474 1.110223e-016 -0.5;
	setAttr -s 18 ".ed[0:17]"  0 5 0 4 3 0 0 1 0 1 2 0 2 3 0 4 5 0 0 6 0
		 1 7 0 6 7 0 2 8 0 7 8 0 3 9 0 8 9 0 4 10 0 10 9 0 5 11 0 10 11 0 6 11 0;
	setAttr -s 8 -ch 36 ".fc[0:7]" -type "polyFaces" 
		f 6 8 10 12 -15 16 -18
		mu 0 6 12 13 14 15 16 17
		f 6 0 -6 1 -5 -4 -3
		mu 0 6 6 11 10 9 8 7
		f 4 2 7 -9 -7
		mu 0 4 0 1 13 12
		f 4 3 9 -11 -8
		mu 0 4 1 2 14 13
		f 4 4 11 -13 -10
		mu 0 4 2 3 15 14
		f 4 -2 13 14 -12
		mu 0 4 3 4 16 15
		f 4 5 15 -17 -14
		mu 0 4 4 5 17 16
		f 4 -1 6 17 -16
		mu 0 4 5 0 12 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface30" -p "pPlane1";
	rename -uid "4F36BBFA-4825-7108-3800-8482A8C18A09";
createNode mesh -n "polySurfaceShape30" -p "polySurface30";
	rename -uid "4F024EDF-4CE4-DC89-0E85-CCBA93E3E1AD";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 9 ".uvst[0].uvsp[0:8]" -type "float2" 0.27102906 0.61888659
		 0.30607784 0.60304379 0.32911134 0.66577876 0.27102906 0.61888659 0.30607784 0.60304379
		 0.32911134 0.66577876 0.27102906 0.61888659 0.30607784 0.60304379 0.32911134 0.66577876;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".pt[3:5]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0;
	setAttr -s 6 ".vt[0:5]"  -0.17088865 6.0528379e-017 -0.27259558 -0.22897093 4.3407318e-017 -0.19548918
		 -0.19392213 3.7622881e-017 -0.16943839 -0.22897093 4.3407318e-017 -0.19548918 -0.19392213 3.7622881e-017 -0.16943839
		 -0.17088865 6.0528379e-017 -0.27259558;
	setAttr -s 9 ".ed[0:8]"  0 2 0 1 0 0 1 2 0 1 3 0 2 4 0 3 4 0 0 5 0
		 5 4 0 3 5 0;
	setAttr -s 5 -ch 18 ".fc[0:4]" -type "polyFaces" 
		f 3 5 -8 -9
		mu 0 3 6 7 8
		f 3 1 0 -3
		mu 0 3 3 5 4
		f 4 2 4 -6 -4
		mu 0 4 0 1 7 6
		f 4 -1 6 7 -5
		mu 0 4 1 2 8 7
		f 4 -2 3 8 -7
		mu 0 4 2 0 6 8;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface31" -p "pPlane1";
	rename -uid "C41C25D3-4897-2940-5ED7-2897DA5383D8";
createNode mesh -n "polySurfaceShape31" -p "polySurface31";
	rename -uid "1845107C-4578-2B26-59EB-15B9A39CB37C";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0 0.4000738 0.18912369
		 0.28450274 0.23046261 0.39709508 0.11508095 0.49298334 0 0.4000738 0.18912369 0.28450274
		 0.23046261 0.39709508 0.11508095 0.49298334 0 0.4000738 0.18912369 0.28450274 0.23046261
		 0.39709508 0.11508095 0.49298334;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0 0 0.16065009 0;
	setAttr -s 8 ".vt[0:7]"  -0.31087631 -7.868136e-017 0.35434934 -0.5 -3.6484594e-017 0.16431201
		 -0.38491905 -2.5618909e-018 0.011537731 -0.26953739 -3.7572171e-017 0.16921002 -0.31087631 -7.868136e-017 0.35434934
		 -0.5 -3.6484594e-017 0.16431201 -0.26953739 -3.7572171e-017 0.16921002 -0.38491905 -2.5618909e-018 0.011537731;
	setAttr -s 12 ".ed[0:11]"  1 2 0 3 0 0 0 1 0 2 3 0 0 4 0 1 5 0 4 5 0
		 3 6 0 6 4 0 2 7 0 7 6 0 5 7 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 -7 -9 -11 -12
		mu 0 4 8 9 10 11
		f 4 0 3 1 2
		mu 0 4 4 7 6 5
		f 4 -3 4 6 -6
		mu 0 4 0 1 9 8
		f 4 -2 7 8 -5
		mu 0 4 1 2 10 9
		f 4 -4 9 10 -8
		mu 0 4 2 3 11 10
		f 4 -1 5 11 -10
		mu 0 4 3 0 8 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface32" -p "pPlane1";
	rename -uid "4817AD4A-4CC4-6194-DBC5-5B909D5B9E65";
createNode mesh -n "polySurfaceShape32" -p "polySurface32";
	rename -uid "C500AB4A-432C-C80F-EC7E-3BACB4786CD5";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0 0.27638972 0.17881739
		 0.25643182 0.18912369 0.28450274 0 0.4000738 0 0.27638972 0.17881739 0.25643182 0.18912369
		 0.28450274 0 0.4000738 0 0.27638972 0.17881739 0.25643182 0.18912369 0.28450274 0
		 0.4000738;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0 0 0.16065009 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -3.6484594e-017 0.16431201 -0.31087631 -7.868136e-017 0.35434934
		 -0.5 -8.1643567e-017 0.36768994 -0.32118264 -8.8930499e-017 0.40050736 -0.5 -8.1643567e-017 0.36768994
		 -0.32118264 -8.8930499e-017 0.40050736 -0.31087631 -7.868136e-017 0.35434934 -0.5 -3.6484594e-017 0.16431201;
	setAttr -s 12 ".ed[0:11]"  1 0 0 1 3 0 2 0 0 2 3 0 2 4 0 3 5 0 4 5 0
		 1 6 0 6 5 0 0 7 0 6 7 0 4 7 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 6 -9 10 -12
		mu 0 4 8 9 10 11
		f 4 2 -1 1 -4
		mu 0 4 4 7 6 5
		f 4 3 5 -7 -5
		mu 0 4 0 1 9 8
		f 4 -2 7 8 -6
		mu 0 4 1 2 10 9
		f 4 0 9 -11 -8
		mu 0 4 2 3 11 10
		f 4 -3 4 11 -10
		mu 0 4 3 0 8 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface33" -p "pPlane1";
	rename -uid "D9020B0E-4917-878A-197C-899586C65900";
createNode mesh -n "polySurfaceShape33" -p "polySurface33";
	rename -uid "B0D29030-4362-6D9E-E490-86A61CAE5F08";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0 0.74139762 0.10259503
		 0.69502264 0.15325117 0.80407453 0 0.80407453 0 0.74139762 0.10259503 0.69502264
		 0.15325117 0.80407453 0 0.80407453 0 0.74139762 0.10259503 0.69502264 0.15325117
		 0.80407453 0 0.80407453;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0 0 0.16065009 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 1.110223e-016 -0.5 -0.34674883 1.110223e-016 -0.5
		 -0.5 8.8137987e-017 -0.39693823 -0.39740497 7.1205765e-017 -0.32068226 -0.5 8.8137987e-017 -0.39693823
		 -0.39740497 7.1205765e-017 -0.32068226 -0.34674883 1.110223e-016 -0.5 -0.5 1.110223e-016 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 3 0 2 0 0 2 3 0 2 4 0 3 5 0 4 5 0
		 1 6 0 6 5 0 0 7 0 7 6 0 4 7 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 6 -9 -11 -12
		mu 0 4 8 9 10 11
		f 4 2 0 1 -4
		mu 0 4 4 7 6 5
		f 4 3 5 -7 -5
		mu 0 4 0 1 9 8
		f 4 -2 7 8 -6
		mu 0 4 1 2 10 9
		f 4 -1 9 10 -8
		mu 0 4 2 3 11 10
		f 4 -3 4 11 -10
		mu 0 4 3 0 8 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface34" -p "pPlane1";
	rename -uid "D40FAA1E-45E0-1DDB-7388-6E938283191D";
createNode mesh -n "polySurfaceShape34" -p "polySurface34";
	rename -uid "519B19A1-49D2-14BD-BD5D-049FCE2C6B42";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 9 ".uvst[0].uvsp[0:8]" -type "float2" 0 0.4741573 0.03836143
		 0.55674136 0 0.5886218 0 0.4741573 0.03836143 0.55674136 0 0.5886218 0 0.4741573
		 0.03836143 0.55674136 0 0.5886218;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".pt[3:5]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0;
	setAttr -s 6 ".vt[0:5]"  -0.5 -9.4355665e-018 0.042494014 -0.5 3.2357168e-017 -0.14572373
		 -0.46163857 2.0717144e-017 -0.093301721 -0.46163857 2.0717144e-017 -0.093301721 -0.5 -9.4355665e-018 0.042494014
		 -0.5 3.2357168e-017 -0.14572373;
	setAttr -s 9 ".ed[0:8]"  0 1 0 2 0 0 1 2 0 2 3 0 0 4 0 3 4 0 1 5 0
		 5 3 0 4 5 0;
	setAttr -s 5 -ch 18 ".fc[0:4]" -type "polyFaces" 
		f 3 -6 -8 -9
		mu 0 3 6 7 8
		f 3 0 2 1
		mu 0 3 3 5 4
		f 4 -2 3 5 -5
		mu 0 4 0 1 7 6
		f 4 -3 6 7 -4
		mu 0 4 1 2 8 7
		f 4 -1 4 8 -7
		mu 0 4 2 0 6 8;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface35" -p "pPlane1";
	rename -uid "1CAB44EA-4D86-A6D8-D5D1-EBA76402C926";
createNode mesh -n "polySurfaceShape35" -p "polySurface35";
	rename -uid "FD539543-4922-2591-9F42-489CC73A6DB3";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0 0.5886218 0.03836143
		 0.55674136 0.10259503 0.69502264 0 0.74139762 0 0.5886218 0.03836143 0.55674136 0.10259503
		 0.69502264 0 0.74139762 0 0.5886218 0.03836143 0.55674136 0.10259503 0.69502264 0
		 0.74139762;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0 0 0.16065009 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 3.2357168e-017 -0.14572373 -0.5 8.8137987e-017 -0.39693823
		 -0.39740497 7.1205765e-017 -0.32068226 -0.46163857 2.0717144e-017 -0.093301721 -0.5 3.2357168e-017 -0.14572373
		 -0.46163857 2.0717144e-017 -0.093301721 -0.39740497 7.1205765e-017 -0.32068226 -0.5 8.8137987e-017 -0.39693823;
	setAttr -s 12 ".ed[0:11]"  0 1 0 0 3 0 1 2 0 2 3 0 0 4 0 3 5 0 4 5 0
		 2 6 0 6 5 0 1 7 0 7 6 0 4 7 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 6 -9 -11 -12
		mu 0 4 8 9 10 11
		f 4 0 2 3 -2
		mu 0 4 4 7 6 5
		f 4 1 5 -7 -5
		mu 0 4 0 1 9 8
		f 4 -4 7 8 -6
		mu 0 4 1 2 10 9
		f 4 -3 9 10 -8
		mu 0 4 2 3 11 10
		f 4 -1 4 11 -10
		mu 0 4 3 0 8 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface36" -p "pPlane1";
	rename -uid "A1C764B4-4444-BD03-65A9-ECB55215A625";
createNode mesh -n "polySurfaceShape36" -p "polySurface36";
	rename -uid "C9FCFF3F-414B-3D03-1B5E-448A573966F0";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.27102906 0.61888659
		 0.10259503 0.69502264 0.03836143 0.55674136 0.11508095 0.49298334 0.27102906 0.61888659
		 0.10259503 0.69502264 0.03836143 0.55674136 0.11508095 0.49298334 0.27102906 0.61888659
		 0.10259503 0.69502264 0.03836143 0.55674136 0.11508095 0.49298334;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0 0 0.16065009 0;
	setAttr -s 8 ".vt[0:7]"  -0.46163857 2.0717144e-017 -0.093301721 -0.39740497 7.1205765e-017 -0.32068226
		 -0.38491905 -2.5618909e-018 0.011537731 -0.22897093 4.3407318e-017 -0.19548918 -0.39740497 7.1205765e-017 -0.32068226
		 -0.22897093 4.3407318e-017 -0.19548918 -0.46163857 2.0717144e-017 -0.093301721 -0.38491905 -2.5618909e-018 0.011537731;
	setAttr -s 12 ".ed[0:11]"  0 2 0 1 0 0 1 3 0 2 3 0 1 4 0 3 5 0 4 5 0
		 0 6 0 4 6 0 2 7 0 6 7 0 7 5 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 -7 8 10 11
		mu 0 4 8 9 10 11
		f 4 -4 -1 -2 2
		mu 0 4 4 7 6 5
		f 4 -3 4 6 -6
		mu 0 4 0 1 9 8
		f 4 1 7 -9 -5
		mu 0 4 1 2 10 9
		f 4 0 9 -11 -8
		mu 0 4 2 3 11 10
		f 4 3 5 -12 -10
		mu 0 4 3 0 8 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface37" -p "pPlane1";
	rename -uid "A720692A-410D-AC26-65F3-708C3E4E1413";
createNode mesh -n "polySurfaceShape37" -p "polySurface37";
	rename -uid "8AC89C51-43AD-87D9-BE27-6BA2D2645D7B";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.11508095 0.49298334
		 0.23046261 0.39709508 0.30607784 0.60304379 0.27102906 0.61888659 0.11508095 0.49298334
		 0.23046261 0.39709508 0.30607784 0.60304379 0.27102906 0.61888659 0.11508095 0.49298334
		 0.23046261 0.39709508 0.30607784 0.60304379 0.27102906 0.61888659;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0 0 0.16065009 0;
	setAttr -s 8 ".vt[0:7]"  -0.38491905 -2.5618909e-018 0.011537731 -0.22897093 4.3407318e-017 -0.19548918
		 -0.19392213 3.7622881e-017 -0.16943839 -0.26953739 -3.7572171e-017 0.16921002 -0.38491905 -2.5618909e-018 0.011537731
		 -0.26953739 -3.7572171e-017 0.16921002 -0.19392213 3.7622881e-017 -0.16943839 -0.22897093 4.3407318e-017 -0.19548918;
	setAttr -s 12 ".ed[0:11]"  0 1 0 0 3 0 1 2 0 2 3 0 0 4 0 3 5 0 4 5 0
		 2 6 0 6 5 0 1 7 0 7 6 0 4 7 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 6 -9 -11 -12
		mu 0 4 8 9 10 11
		f 4 0 2 3 -2
		mu 0 4 4 7 6 5
		f 4 1 5 -7 -5
		mu 0 4 0 1 9 8
		f 4 -4 7 8 -6
		mu 0 4 1 2 10 9
		f 4 -3 9 10 -8
		mu 0 4 2 3 11 10
		f 4 -1 4 11 -10
		mu 0 4 3 0 8 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface38" -p "pPlane1";
	rename -uid "DA8A294C-49B1-6A62-92F8-5B809760587B";
createNode mesh -n "polySurfaceShape38" -p "polySurface38";
	rename -uid "FECF36E6-4058-7E61-EE24-D39880E99B09";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:6]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 15 ".uvst[0].uvsp[0:14]" -type "float2" 0.52384382 0.43469784
		 0.43178946 0.54621941 0.38732821 0.56631684 0.48934364 0.37710461 0.51887107 0.41155916
		 0.52384382 0.43469784 0.43178946 0.54621941 0.38732821 0.56631684 0.48934364 0.37710461
		 0.51887107 0.41155916 0.52384382 0.43469784 0.43178946 0.54621941 0.38732821 0.56631684
		 0.48934364 0.37710461 0.51887107 0.41155916;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt[5:9]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0 0 0.16065009 0 0 0.16065009 0;
	setAttr -s 10 ".vt[0:9]"  -0.010656338 -4.4871001e-017 0.20208102 -0.11267181 2.4213302e-017 -0.10904702
		 0.023843892 -2.3842821e-017 0.10737852 -0.068210535 1.6875409e-017 -0.076000087 0.018871123 -3.2291106e-017 0.14542623
		 0.023843892 -2.3842821e-017 0.10737852 -0.068210535 1.6875409e-017 -0.076000087 -0.11267181 2.4213302e-017 -0.10904702
		 -0.010656338 -4.4871001e-017 0.20208102 0.018871123 -3.2291106e-017 0.14542623;
	setAttr -s 15 ".ed[0:14]"  4 0 0 1 0 0 1 3 0 2 3 0 4 2 0 2 5 0 3 6 0
		 5 6 0 1 7 0 7 6 0 0 8 0 7 8 0 4 9 0 9 8 0 9 5 0;
	setAttr -s 7 -ch 30 ".fc[0:6]" -type "polyFaces" 
		f 5 7 -10 11 -14 14
		mu 0 5 10 11 12 13 14
		f 5 -5 0 -2 2 -4
		mu 0 5 5 9 8 7 6
		f 4 3 6 -8 -6
		mu 0 4 0 1 11 10
		f 4 -3 8 9 -7
		mu 0 4 1 2 12 11
		f 4 1 10 -12 -9
		mu 0 4 2 3 13 12
		f 4 -1 12 13 -11
		mu 0 4 3 4 14 13
		f 4 4 5 -15 -13
		mu 0 4 4 0 10 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface39" -p "pPlane1";
	rename -uid "A431FAB5-499C-D5D3-3496-43923D944389";
createNode mesh -n "polySurfaceShape39" -p "polySurface39";
	rename -uid "D803CB10-42F6-283D-F1AF-D99AA761ACCE";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 9 ".uvst[0].uvsp[0:8]" -type "float2" 0.53113306 0.42586726
		 0.52384382 0.43469784 0.51887107 0.41155916 0.53113306 0.42586726 0.52384382 0.43469784
		 0.51887107 0.41155916 0.53113306 0.42586726 0.52384382 0.43469784 0.51887107 0.41155916;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".pt[3:5]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0;
	setAttr -s 6 ".vt[0:5]"  0.031133091 -2.7067011e-017 0.12189899 0.023843892 -2.3842821e-017 0.10737852
		 0.018871123 -3.2291106e-017 0.14542623 0.031133091 -2.7067011e-017 0.12189899 0.023843892 -2.3842821e-017 0.10737852
		 0.018871123 -3.2291106e-017 0.14542623;
	setAttr -s 9 ".ed[0:8]"  2 1 0 0 1 0 0 2 0 0 3 0 1 4 0 3 4 0 2 5 0
		 5 4 0 3 5 0;
	setAttr -s 5 -ch 18 ".fc[0:4]" -type "polyFaces" 
		f 3 5 -8 -9
		mu 0 3 6 7 8
		f 3 2 0 -2
		mu 0 3 3 5 4
		f 4 1 4 -6 -4
		mu 0 4 0 1 7 6
		f 4 -1 6 7 -5
		mu 0 4 1 2 8 7
		f 4 -3 3 8 -7
		mu 0 4 2 0 6 8;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface40" -p "pPlane1";
	rename -uid "78A27869-4BE7-1788-C990-C7BF68ED3DD9";
createNode mesh -n "polySurfaceShape40" -p "polySurface40";
	rename -uid "6CE586DF-45E7-3E46-2165-22AC31B600AB";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.6735301 0.2533569
		 0.53113306 0.42586726 0.51887107 0.41155916 0.50516129 0.347767 0.57845402 0.21182796
		 0.60629922 0.20872021 0.6735301 0.2533569 0.53113306 0.42586726 0.51887107 0.41155916
		 0.50516129 0.347767 0.57845402 0.21182796 0.60629922 0.20872021 0.6735301 0.2533569
		 0.53113306 0.42586726 0.51887107 0.41155916 0.50516129 0.347767 0.57845402 0.21182796
		 0.60629922 0.20872021;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt[6:11]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0 0 0.16065009 0 0 0.16065009 0 0 0.16065009 0;
	setAttr -s 12 ".vt[0:11]"  0.0051613012 -5.558262e-017 0.25032187 0.018871123 -3.2291106e-017 0.14542623
		 0.17353006 -9.0053188e-017 0.4055635 0.031133091 -2.7067011e-017 0.12189899 0.07845404 -1.0521605e-016 0.473851
		 0.10629922 -1.0635074e-016 0.47896114 0.17353006 -9.0053188e-017 0.4055635 0.031133091 -2.7067011e-017 0.12189899
		 0.018871123 -3.2291106e-017 0.14542623 0.0051613012 -5.558262e-017 0.25032187 0.07845404 -1.0521605e-016 0.473851
		 0.10629922 -1.0635074e-016 0.47896114;
	setAttr -s 18 ".ed[0:17]"  0 4 0 0 1 0 5 2 0 3 1 0 2 3 0 4 5 0 2 6 0
		 3 7 0 6 7 0 1 8 0 7 8 0 0 9 0 9 8 0 4 10 0 9 10 0 5 11 0 10 11 0 11 6 0;
	setAttr -s 8 -ch 36 ".fc[0:7]" -type "polyFaces" 
		f 6 8 10 -13 14 16 17
		mu 0 6 12 13 14 15 16 17
		f 6 -3 -6 -1 1 -4 -5
		mu 0 6 6 11 10 9 8 7
		f 4 4 7 -9 -7
		mu 0 4 0 1 13 12
		f 4 3 9 -11 -8
		mu 0 4 1 2 14 13
		f 4 -2 11 12 -10
		mu 0 4 2 3 15 14
		f 4 0 13 -15 -12
		mu 0 4 3 4 16 15
		f 4 5 15 -17 -14
		mu 0 4 4 5 17 16
		f 4 2 6 -18 -16
		mu 0 4 5 0 12 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface41" -p "pPlane1";
	rename -uid "4943BEF4-4703-3C8F-D083-0EA7A9E490B5";
createNode mesh -n "polySurfaceShape41" -p "polySurface41";
	rename -uid "7E3FFD1E-4659-5C7E-5C23-9FB3EA55AD79";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 9 ".uvst[0].uvsp[0:8]" -type "float2" 0.83804464 0.3625834
		 0.71309566 0.41906291 0.78973472 0.33050886 0.83804464 0.3625834 0.71309566 0.41906291
		 0.78973472 0.33050886 0.83804464 0.3625834 0.71309566 0.41906291 0.78973472 0.33050886;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".pt[3:5]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0;
	setAttr -s 6 ".vt[0:5]"  0.28973469 -6.1883823e-017 0.27869996 0.21309569 -2.9551375e-017 0.13308756
		 0.33804464 -5.0172928e-017 0.22595878 0.21309569 -2.9551375e-017 0.13308756 0.33804464 -5.0172928e-017 0.22595878
		 0.28973469 -6.1883823e-017 0.27869996;
	setAttr -s 9 ".ed[0:8]"  1 2 0 0 1 0 0 2 0 1 3 0 2 4 0 3 4 0 0 5 0
		 5 3 0 5 4 0;
	setAttr -s 5 -ch 18 ".fc[0:4]" -type "polyFaces" 
		f 3 -6 -8 8
		mu 0 3 6 7 8
		f 3 -3 1 0
		mu 0 3 3 5 4
		f 4 -1 3 5 -5
		mu 0 4 0 1 7 6
		f 4 -2 6 7 -4
		mu 0 4 1 2 8 7
		f 4 2 4 -9 -7
		mu 0 4 2 0 6 8;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface42" -p "pPlane1";
	rename -uid "BD07A6D9-4B9D-C309-A0CD-4FA93B3A73BB";
createNode mesh -n "polySurfaceShape42" -p "polySurface42";
	rename -uid "10C1DBC4-469E-298A-5792-138435A3CD50";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.78973472 0.33050886
		 0.83697867 0.27591985 0.87710428 0.34492746 0.83804464 0.3625834 0.78973472 0.33050886
		 0.83697867 0.27591985 0.87710428 0.34492746 0.83804464 0.3625834 0.78973472 0.33050886
		 0.83697867 0.27591985 0.87710428 0.34492746 0.83804464 0.3625834;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0 0 0.16065009 0;
	setAttr -s 8 ".vt[0:7]"  0.33804464 -5.0172928e-017 0.22595878 0.33697867 -8.1815118e-017 0.36846253
		 0.28973469 -6.1883823e-017 0.27869996 0.37710431 -5.6619375e-017 0.25499099 0.33697867 -8.1815118e-017 0.36846253
		 0.28973469 -6.1883823e-017 0.27869996 0.37710431 -5.6619375e-017 0.25499099 0.33804464 -5.0172928e-017 0.22595878;
	setAttr -s 12 ".ed[0:11]"  2 0 0 0 3 0 1 2 0 3 1 0 1 4 0 2 5 0 4 5 0
		 3 6 0 6 4 0 0 7 0 7 6 0 5 7 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 -7 -9 -11 -12
		mu 0 4 8 9 10 11
		f 4 0 1 3 2
		mu 0 4 4 7 6 5
		f 4 -3 4 6 -6
		mu 0 4 0 1 9 8
		f 4 -4 7 8 -5
		mu 0 4 1 2 10 9
		f 4 -2 9 10 -8
		mu 0 4 2 3 11 10
		f 4 -1 5 11 -10
		mu 0 4 3 0 8 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface43" -p "pPlane1";
	rename -uid "89FE2667-41FD-CFF8-3A44-A3B4393488E3";
createNode mesh -n "polySurfaceShape43" -p "polySurface43";
	rename -uid "0F210EE1-4084-13AA-AC3E-CA9779572E9B";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 9 ".uvst[0].uvsp[0:8]" -type "float2" 0.88632494 0.39463824
		 0.89912015 0.38279 0.91838723 0.41592538 0.88632494 0.39463824 0.89912015 0.38279
		 0.91838723 0.41592538 0.88632494 0.39463824 0.89912015 0.38279 0.91838723 0.41592538;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".pt[3:5]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0;
	setAttr -s 6 ".vt[0:5]"  0.39912009 -4.2795178e-017 0.19273235 0.38632497 -3.8469209e-017 0.17324992
		 0.41838723 -3.0696937e-017 0.13824673 0.39912009 -4.2795178e-017 0.19273235 0.38632497 -3.8469209e-017 0.17324992
		 0.41838723 -3.0696937e-017 0.13824673;
	setAttr -s 9 ".ed[0:8]"  2 0 0 0 1 0 1 2 0 0 3 0 1 4 0 3 4 0 2 5 0
		 5 3 0 4 5 0;
	setAttr -s 5 -ch 18 ".fc[0:4]" -type "polyFaces" 
		f 3 -6 -8 -9
		mu 0 3 6 7 8
		f 3 2 0 1
		mu 0 3 3 5 4
		f 4 -2 3 5 -5
		mu 0 4 0 1 7 6
		f 4 -1 6 7 -4
		mu 0 4 1 2 8 7
		f 4 -3 4 8 -7
		mu 0 4 2 0 6 8;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface44" -p "pPlane1";
	rename -uid "3BAC99D1-4239-1A74-5B21-278566C44750";
createNode mesh -n "polySurfaceShape44" -p "polySurface44";
	rename -uid "E28B9E17-45AE-0AA7-5F8C-ADBE1B54E831";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.78681296 0.68942189
		 0.76739252 0.70155025 0.67336726 0.5918355 0.88632494 0.39463824 0.91838723 0.41592538
		 0.96864778 0.50236356 0.78681296 0.68942189 0.76739252 0.70155025 0.67336726 0.5918355
		 0.88632494 0.39463824 0.91838723 0.41592538 0.96864778 0.50236356 0.78681296 0.68942189
		 0.76739252 0.70155025 0.67336726 0.5918355 0.88632494 0.39463824 0.91838723 0.41592538
		 0.96864778 0.50236356;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt[6:11]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0 0 0.16065009 0 0 0.16065009 0 0 0.16065009 0;
	setAttr -s 12 ".vt[0:11]"  0.46864781 8.6297106e-019 -0.0038864762 0.28681302 6.9160849e-017 -0.3114728
		 0.41838723 -3.0696937e-017 0.13824673 0.38632497 -3.8469209e-017 0.17324992 0.26739261 7.3589117e-017 -0.33141592
		 0.17336738 3.353056e-017 -0.15100822 0.26739261 7.3589117e-017 -0.33141592 0.28681302 6.9160849e-017 -0.3114728
		 0.17336738 3.353056e-017 -0.15100822 0.38632497 -3.8469209e-017 0.17324992 0.41838723 -3.0696937e-017 0.13824673
		 0.46864781 8.6297106e-019 -0.0038864762;
	setAttr -s 18 ".ed[0:17]"  0 1 0 4 1 0 0 2 0 3 2 0 3 5 0 4 5 0 4 6 0
		 1 7 0 6 7 0 5 8 0 6 8 0 3 9 0 9 8 0 2 10 0 9 10 0 0 11 0 11 10 0 11 7 0;
	setAttr -s 8 -ch 36 ".fc[0:7]" -type "polyFaces" 
		f 6 -9 10 -13 14 -17 17
		mu 0 6 12 13 14 15 16 17
		f 6 -1 2 -4 4 -6 1
		mu 0 6 6 11 10 9 8 7
		f 4 -2 6 8 -8
		mu 0 4 0 1 13 12
		f 4 5 9 -11 -7
		mu 0 4 1 2 14 13
		f 4 -5 11 12 -10
		mu 0 4 2 3 15 14
		f 4 3 13 -15 -12
		mu 0 4 3 4 16 15
		f 4 -3 15 16 -14
		mu 0 4 4 5 17 16
		f 4 0 7 -18 -16
		mu 0 4 5 0 12 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface45" -p "pPlane1";
	rename -uid "E5519EFA-41A8-D1F4-B9BF-C1B0C263E785";
createNode mesh -n "polySurfaceShape45" -p "polySurface45";
	rename -uid "E3E8A346-46C4-7C97-A462-11B21DB391CF";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.60322726 0.80407453
		 0.57682681 0.6812315 0.67336726 0.5918355 0.76739252 0.70155025 0.60322726 0.80407453
		 0.57682681 0.6812315 0.67336726 0.5918355 0.76739252 0.70155025 0.60322726 0.80407453
		 0.57682681 0.6812315 0.67336726 0.5918355 0.76739252 0.70155025;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0 0 0.16065009 0;
	setAttr -s 8 ".vt[0:7]"  0.26739261 7.3589117e-017 -0.33141592 0.17336738 3.353056e-017 -0.15100822
		 0.076826841 6.6170399e-017 -0.29800501 0.10322725 1.110223e-016 -0.5 0.076826841 6.6170399e-017 -0.29800501
		 0.10322725 1.110223e-016 -0.5 0.17336738 3.353056e-017 -0.15100822 0.26739261 7.3589117e-017 -0.33141592;
	setAttr -s 12 ".ed[0:11]"  0 1 0 3 0 0 1 2 0 2 3 0 2 4 0 3 5 0 4 5 0
		 1 6 0 6 4 0 0 7 0 7 6 0 5 7 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 -7 -9 -11 -12
		mu 0 4 8 9 10 11
		f 4 1 0 2 3
		mu 0 4 4 7 6 5
		f 4 -4 4 6 -6
		mu 0 4 0 1 9 8
		f 4 -3 7 8 -5
		mu 0 4 1 2 10 9
		f 4 -1 9 10 -8
		mu 0 4 2 3 11 10
		f 4 -2 5 11 -10
		mu 0 4 3 0 8 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface46" -p "pPlane1";
	rename -uid "014BA212-47E2-A893-7BD2-0395AFFB2DD9";
createNode mesh -n "polySurfaceShape46" -p "polySurface46";
	rename -uid "1081D0D9-4E18-309D-2BA0-76B5C4E6DC54";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.50041014 0.80407453
		 0.47036302 0.77981639 0.57682681 0.6812315 0.60322726 0.80407453 0.50041014 0.80407453
		 0.47036302 0.77981639 0.57682681 0.6812315 0.60322726 0.80407453 0.50041014 0.80407453
		 0.47036302 0.77981639 0.57682681 0.6812315 0.60322726 0.80407453;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0 0 0.16065009 0;
	setAttr -s 8 ".vt[0:7]"  0.10322725 1.110223e-016 -0.5 0.076826841 6.6170399e-017 -0.29800501
		 -0.029636966 1.0216529e-016 -0.46011156 0.00041014701 1.110223e-016 -0.5 -0.029636966 1.0216529e-016 -0.46011156
		 0.00041014701 1.110223e-016 -0.5 0.076826841 6.6170399e-017 -0.29800501 0.10322725 1.110223e-016 -0.5;
	setAttr -s 12 ".ed[0:11]"  3 0 0 1 0 0 1 2 0 2 3 0 2 4 0 3 5 0 4 5 0
		 1 6 0 6 4 0 0 7 0 6 7 0 5 7 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 -7 -9 10 -12
		mu 0 4 8 9 10 11
		f 4 0 -2 2 3
		mu 0 4 4 7 6 5
		f 4 -4 4 6 -6
		mu 0 4 0 1 9 8
		f 4 -3 7 8 -5
		mu 0 4 1 2 10 9
		f 4 1 9 -11 -8
		mu 0 4 2 3 11 10
		f 4 -1 5 11 -10
		mu 0 4 3 0 8 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface47" -p "pPlane1";
	rename -uid "43C4B05B-44A0-7DF5-8BF1-92B602CBE38B";
createNode mesh -n "polySurfaceShape47" -p "polySurface47";
	rename -uid "818F501A-4E26-D663-A9D6-D5A43C4BF13F";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 9 ".uvst[0].uvsp[0:8]" -type "float2" 0.44416606 0.80407453
		 0.47036302 0.77981639 0.50041014 0.80407453 0.44416606 0.80407453 0.47036302 0.77981639
		 0.50041014 0.80407453 0.44416606 0.80407453 0.47036302 0.77981639 0.50041014 0.80407453;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".pt[3:5]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0;
	setAttr -s 6 ".vt[0:5]"  0.00041014701 1.110223e-016 -0.5 -0.029636966 1.0216529e-016 -0.46011156
		 -0.055833921 1.110223e-016 -0.5 -0.029636966 1.0216529e-016 -0.46011156 -0.055833921 1.110223e-016 -0.5
		 0.00041014701 1.110223e-016 -0.5;
	setAttr -s 9 ".ed[0:8]"  1 0 0 2 0 0 1 2 0 1 3 0 2 4 0 3 4 0 0 5 0
		 3 5 0 4 5 0;
	setAttr -s 5 -ch 18 ".fc[0:4]" -type "polyFaces" 
		f 3 -6 7 -9
		mu 0 3 6 7 8
		f 3 1 -1 2
		mu 0 3 3 5 4
		f 4 -3 3 5 -5
		mu 0 4 0 1 7 6
		f 4 0 6 -8 -4
		mu 0 4 1 2 8 7
		f 4 -2 4 8 -7
		mu 0 4 2 0 6 8;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface48" -p "pPlane1";
	rename -uid "CE833410-4B3D-FDDF-148A-E6BBAFF45FB9";
createNode mesh -n "polySurfaceShape48" -p "polySurface48";
	rename -uid "ADBD5E30-4EDE-ABCA-7847-94A70C8DA521";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0 0.19592544 0.15660226
		 0.19592544 0.17881739 0.25643182 0 0.27638972 0 0.19592544 0.15660226 0.19592544
		 0.17881739 0.25643182 0 0.27638972 0 0.19592544 0.15660226 0.19592544 0.17881739
		 0.25643182 0 0.27638972;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0 0 0.16065009 0;
	setAttr -s 8 ".vt[0:7]"  -0.5 -1.110223e-016 0.5 -0.5 -8.1643567e-017 0.36768994
		 -0.32118264 -8.8930499e-017 0.40050736 -0.34339774 -1.110223e-016 0.5 -0.5 -1.110223e-016 0.5
		 -0.34339774 -1.110223e-016 0.5 -0.32118264 -8.8930499e-017 0.40050736 -0.5 -8.1643567e-017 0.36768994;
	setAttr -s 12 ".ed[0:11]"  0 3 0 0 1 0 1 2 0 2 3 0 0 4 0 3 5 0 4 5 0
		 2 6 0 6 5 0 1 7 0 7 6 0 4 7 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 6 -9 -11 -12
		mu 0 4 8 9 10 11
		f 4 1 2 3 -1
		mu 0 4 4 7 6 5
		f 4 0 5 -7 -5
		mu 0 4 0 1 9 8
		f 4 -4 7 8 -6
		mu 0 4 1 2 10 9
		f 4 -3 9 10 -8
		mu 0 4 2 3 11 10
		f 4 -2 4 11 -10
		mu 0 4 3 0 8 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface49" -p "pPlane1";
	rename -uid "4DCB4479-406D-1650-3073-BF9B93099D2D";
createNode mesh -n "polySurfaceShape49" -p "polySurface49";
	rename -uid "264467F5-4654-990D-608B-3E98F5631349";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.24762744 0.24875188
		 0.17881739 0.25643182 0.15660226 0.19592544 0.33407414 0.19592544 0.24762744 0.24875188
		 0.17881739 0.25643182 0.15660226 0.19592544 0.33407414 0.19592544 0.24762744 0.24875188
		 0.17881739 0.25643182 0.15660226 0.19592544 0.33407414 0.19592544;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0 0 0.16065009 0;
	setAttr -s 8 ".vt[0:7]"  -0.34339774 -1.110223e-016 0.5 -0.32118264 -8.8930499e-017 0.40050736
		 -0.16592588 -1.110223e-016 0.5 -0.25237256 -9.1734555e-017 0.41313571 -0.32118264 -8.8930499e-017 0.40050736
		 -0.25237256 -9.1734555e-017 0.41313571 -0.34339774 -1.110223e-016 0.5 -0.16592588 -1.110223e-016 0.5;
	setAttr -s 12 ".ed[0:11]"  0 2 0 1 0 0 1 3 0 2 3 0 1 4 0 3 5 0 4 5 0
		 0 6 0 4 6 0 2 7 0 6 7 0 7 5 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 -7 8 10 11
		mu 0 4 8 9 10 11
		f 4 -4 -1 -2 2
		mu 0 4 4 7 6 5
		f 4 -3 4 6 -6
		mu 0 4 0 1 9 8
		f 4 1 7 -9 -5
		mu 0 4 1 2 10 9
		f 4 0 9 -11 -8
		mu 0 4 2 3 11 10
		f 4 3 5 -12 -10
		mu 0 4 3 0 8 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface50" -p "pPlane1";
	rename -uid "C1A659DF-4FA2-6083-CC64-0C92F64CC32E";
createNode mesh -n "polySurfaceShape50" -p "polySurface50";
	rename -uid "B2B69D04-4097-B4E8-0B8A-7F82D8DA3CCC";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 9 ".uvst[0].uvsp[0:8]" -type "float2" 0.36784708 0.23533404
		 0.24762744 0.24875188 0.33407414 0.19592544 0.36784708 0.23533404 0.24762744 0.24875188
		 0.33407414 0.19592544 0.36784708 0.23533404 0.24762744 0.24875188 0.33407414 0.19592544;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".pt[3:5]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0;
	setAttr -s 6 ".vt[0:5]"  -0.25237256 -9.1734555e-017 0.41313571 -0.13215293 -9.6633621e-017 0.43519917
		 -0.16592588 -1.110223e-016 0.5 -0.25237256 -9.1734555e-017 0.41313571 -0.13215293 -9.6633621e-017 0.43519917
		 -0.16592588 -1.110223e-016 0.5;
	setAttr -s 9 ".ed[0:8]"  2 0 0 0 1 0 1 2 0 0 3 0 1 4 0 3 4 0 2 5 0
		 5 3 0 4 5 0;
	setAttr -s 5 -ch 18 ".fc[0:4]" -type "polyFaces" 
		f 3 -6 -8 -9
		mu 0 3 6 7 8
		f 3 2 0 1
		mu 0 3 3 5 4
		f 4 -2 3 5 -5
		mu 0 4 0 1 7 6
		f 4 -1 6 7 -4
		mu 0 4 1 2 8 7
		f 4 -3 4 8 -7
		mu 0 4 2 0 6 8;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface51" -p "pPlane1";
	rename -uid "5164590A-4290-EDC9-91CD-4592371B00D6";
createNode mesh -n "polySurfaceShape51" -p "polySurface51";
	rename -uid "BCA221B5-4AAE-792C-2B1F-4183EF3C0C1E";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.4725287 0.19592544
		 0.43399179 0.22795162 0.36784708 0.23533404 0.33407414 0.19592544 0.4725287 0.19592544
		 0.43399179 0.22795162 0.36784708 0.23533404 0.33407414 0.19592544 0.4725287 0.19592544
		 0.43399179 0.22795162 0.36784708 0.23533404 0.33407414 0.19592544;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0 0 0.16065009 0;
	setAttr -s 8 ".vt[0:7]"  -0.16592588 -1.110223e-016 0.5 -0.13215293 -9.6633621e-017 0.43519917
		 -0.06600821 -9.9329052e-017 0.44733825 -0.027471304 -1.110223e-016 0.5 -0.06600821 -9.9329052e-017 0.44733825
		 -0.027471304 -1.110223e-016 0.5 -0.13215293 -9.6633621e-017 0.43519917 -0.16592588 -1.110223e-016 0.5;
	setAttr -s 12 ".ed[0:11]"  0 3 0 1 0 0 1 2 0 2 3 0 2 4 0 3 5 0 4 5 0
		 1 6 0 6 4 0 0 7 0 6 7 0 7 5 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 -7 -9 10 11
		mu 0 4 8 9 10 11
		f 4 -1 -2 2 3
		mu 0 4 4 7 6 5
		f 4 -4 4 6 -6
		mu 0 4 0 1 9 8
		f 4 -3 7 8 -5
		mu 0 4 1 2 10 9
		f 4 1 9 -11 -8
		mu 0 4 2 3 11 10
		f 4 0 5 -12 -10
		mu 0 4 3 0 8 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface52" -p "pPlane1";
	rename -uid "B2C9FDF2-4564-8535-3D96-9885C9864C70";
createNode mesh -n "polySurfaceShape52" -p "polySurface52";
	rename -uid "9F19DF7F-4537-069C-2495-AE99DFC6F1F5";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 9 ".uvst[0].uvsp[0:8]" -type "float2" 0.4783476 0.22300106
		 0.43399179 0.22795162 0.4725287 0.19592544 0.4783476 0.22300106 0.43399179 0.22795162
		 0.4725287 0.19592544 0.4783476 0.22300106 0.43399179 0.22795162 0.4725287 0.19592544;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".pt[3:5]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0;
	setAttr -s 6 ".vt[0:5]"  -0.06600821 -9.9329052e-017 0.44733825 -0.027471304 -1.110223e-016 0.5
		 -0.021652423 -1.0113657e-016 0.45547861 -0.06600821 -9.9329052e-017 0.44733825 -0.021652423 -1.0113657e-016 0.45547861
		 -0.027471304 -1.110223e-016 0.5;
	setAttr -s 9 ".ed[0:8]"  0 1 0 0 2 0 1 2 0 0 3 0 2 4 0 3 4 0 1 5 0
		 3 5 0 5 4 0;
	setAttr -s 5 -ch 18 ".fc[0:4]" -type "polyFaces" 
		f 3 -6 7 8
		mu 0 3 6 7 8
		f 3 -3 -1 1
		mu 0 3 3 5 4
		f 4 -2 3 5 -5
		mu 0 4 0 1 7 6
		f 4 0 6 -8 -4
		mu 0 4 1 2 8 7
		f 4 2 4 -9 -7
		mu 0 4 2 0 6 8;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface53" -p "pPlane1";
	rename -uid "CE0EF6AA-4DAC-EEDE-A8F2-6FA2B9366E58";
createNode mesh -n "polySurfaceShape53" -p "polySurface53";
	rename -uid "7A6FBCA7-459E-F713-22B6-228DD703826A";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.57845402 0.21182796
		 0.4783476 0.22300106 0.4725287 0.19592544 0.58702803 0.19592544 0.57845402 0.21182796
		 0.4783476 0.22300106 0.4725287 0.19592544 0.58702803 0.19592544 0.57845402 0.21182796
		 0.4783476 0.22300106 0.4725287 0.19592544 0.58702803 0.19592544;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0 0 0.16065009 0;
	setAttr -s 8 ".vt[0:7]"  -0.027471304 -1.110223e-016 0.5 -0.021652423 -1.0113657e-016 0.45547861
		 0.07845404 -1.0521605e-016 0.473851 0.087028027 -1.110223e-016 0.5 -0.021652423 -1.0113657e-016 0.45547861
		 0.07845404 -1.0521605e-016 0.473851 -0.027471304 -1.110223e-016 0.5 0.087028027 -1.110223e-016 0.5;
	setAttr -s 12 ".ed[0:11]"  0 3 0 0 1 0 1 2 0 2 3 0 1 4 0 2 5 0 4 5 0
		 0 6 0 6 4 0 3 7 0 6 7 0 5 7 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 -7 -9 10 -12
		mu 0 4 8 9 10 11
		f 4 3 -1 1 2
		mu 0 4 4 7 6 5
		f 4 -3 4 6 -6
		mu 0 4 0 1 9 8
		f 4 -2 7 8 -5
		mu 0 4 1 2 10 9
		f 4 0 9 -11 -8
		mu 0 4 2 3 11 10
		f 4 -4 5 11 -10
		mu 0 4 3 0 8 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface54" -p "pPlane1";
	rename -uid "9E2FBE75-4051-B9DD-0EBA-7B928A8B773A";
createNode mesh -n "polySurfaceShape54" -p "polySurface54";
	rename -uid "83673E48-4E7D-908C-8AF8-3591369F57DA";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 9 ".uvst[0].uvsp[0:8]" -type "float2" 0.60629922 0.20872021
		 0.57845402 0.21182796 0.58702803 0.19592544 0.60629922 0.20872021 0.57845402 0.21182796
		 0.58702803 0.19592544 0.60629922 0.20872021 0.57845402 0.21182796 0.58702803 0.19592544;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".pt[3:5]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0;
	setAttr -s 6 ".vt[0:5]"  0.07845404 -1.0521605e-016 0.473851 0.087028027 -1.110223e-016 0.5
		 0.10629922 -1.0635074e-016 0.47896114 0.07845404 -1.0521605e-016 0.473851 0.10629922 -1.0635074e-016 0.47896114
		 0.087028027 -1.110223e-016 0.5;
	setAttr -s 9 ".ed[0:8]"  0 1 0 0 2 0 1 2 0 0 3 0 2 4 0 3 4 0 1 5 0
		 3 5 0 5 4 0;
	setAttr -s 5 -ch 18 ".fc[0:4]" -type "polyFaces" 
		f 3 -6 7 8
		mu 0 3 6 7 8
		f 3 -3 -1 1
		mu 0 3 3 5 4
		f 4 -2 3 5 -5
		mu 0 4 0 1 7 6
		f 4 0 6 -8 -4
		mu 0 4 1 2 8 7
		f 4 2 4 -9 -7
		mu 0 4 2 0 6 8;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface55" -p "pPlane1";
	rename -uid "43578384-4376-B983-3B0C-4C95ECB083AF";
createNode mesh -n "polySurfaceShape55" -p "polySurface55";
	rename -uid "D616172A-4FBC-D66F-7063-2191DC9B14C4";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:6]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 15 ".uvst[0].uvsp[0:14]" -type "float2" 0.78973472 0.33050886
		 0.71309566 0.41906291 0.57773709 0.48024788 0.53113306 0.42586726 0.6735301 0.2533569
		 0.78973472 0.33050886 0.71309566 0.41906291 0.57773709 0.48024788 0.53113306 0.42586726
		 0.6735301 0.2533569 0.78973472 0.33050886 0.71309566 0.41906291 0.57773709 0.48024788
		 0.53113306 0.42586726 0.6735301 0.2533569;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt[5:9]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0 0 0.16065009 0 0 0.16065009 0;
	setAttr -s 10 ".vt[0:9]"  0.28973469 -6.1883823e-017 0.27869996 0.21309569 -2.9551375e-017 0.13308756
		 0.17353006 -9.0053188e-017 0.4055635 0.077737153 -7.2117924e-018 0.032479025 0.031133091 -2.7067011e-017 0.12189899
		 0.28973469 -6.1883823e-017 0.27869996 0.21309569 -2.9551375e-017 0.13308756 0.077737153 -7.2117924e-018 0.032479025
		 0.031133091 -2.7067011e-017 0.12189899 0.17353006 -9.0053188e-017 0.4055635;
	setAttr -s 15 ".ed[0:14]"  0 1 0 3 1 0 2 0 0 2 4 0 3 4 0 0 5 0 1 6 0
		 5 6 0 3 7 0 7 6 0 4 8 0 7 8 0 2 9 0 9 8 0 9 5 0;
	setAttr -s 7 -ch 30 ".fc[0:6]" -type "polyFaces" 
		f 5 7 -10 11 -14 14
		mu 0 5 10 11 12 13 14
		f 5 -3 3 -5 1 -1
		mu 0 5 5 9 8 7 6
		f 4 0 6 -8 -6
		mu 0 4 0 1 11 10
		f 4 -2 8 9 -7
		mu 0 4 1 2 12 11
		f 4 4 10 -12 -9
		mu 0 4 2 3 13 12
		f 4 -4 12 13 -11
		mu 0 4 3 4 14 13
		f 4 2 5 -15 -13
		mu 0 4 4 0 10 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface56" -p "pPlane1";
	rename -uid "2D55BA84-4A4A-8412-6D6F-009C1EE2CE18";
createNode mesh -n "polySurfaceShape56" -p "polySurface56";
	rename -uid "078E79C6-4738-6CD7-CF4B-CBAAE60AA06D";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.57773709 0.48024788
		 0.53753817 0.49841866 0.52384382 0.43469784 0.53113306 0.42586726 0.57773709 0.48024788
		 0.53753817 0.49841866 0.52384382 0.43469784 0.53113306 0.42586726 0.57773709 0.48024788
		 0.53753817 0.49841866 0.52384382 0.43469784 0.53113306 0.42586726;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0 0 0.16065009 0;
	setAttr -s 8 ".vt[0:7]"  0.077737153 -7.2117924e-018 0.032479025 0.031133091 -2.7067011e-017 0.12189899
		 0.023843892 -2.3842821e-017 0.10737852 0.037538238 -5.7737372e-019 0.0026002601 0.037538238 -5.7737372e-019 0.0026002601
		 0.077737153 -7.2117924e-018 0.032479025 0.023843892 -2.3842821e-017 0.10737852 0.031133091 -2.7067011e-017 0.12189899;
	setAttr -s 12 ".ed[0:11]"  0 1 0 3 0 0 1 2 0 2 3 0 3 4 0 0 5 0 4 5 0
		 2 6 0 6 4 0 1 7 0 7 6 0 5 7 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 -7 -9 -11 -12
		mu 0 4 8 9 10 11
		f 4 0 2 3 1
		mu 0 4 4 7 6 5
		f 4 -2 4 6 -6
		mu 0 4 0 1 9 8
		f 4 -4 7 8 -5
		mu 0 4 1 2 10 9
		f 4 -3 9 10 -8
		mu 0 4 2 3 11 10
		f 4 -1 5 11 -10
		mu 0 4 3 0 8 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface57" -p "pPlane1";
	rename -uid "E039B0F7-4057-7526-BCD4-93B477A1E434";
createNode mesh -n "polySurfaceShape57" -p "polySurface57";
	rename -uid "B798527F-4C9A-A101-EF5A-C6A02457646B";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 9 ".uvst[0].uvsp[0:8]" -type "float2" 0.53753817 0.49841866
		 0.43178946 0.54621941 0.52384382 0.43469784 0.53753817 0.49841866 0.43178946 0.54621941
		 0.52384382 0.43469784 0.53753817 0.49841866 0.43178946 0.54621941 0.52384382 0.43469784;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".pt[3:5]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0;
	setAttr -s 6 ".vt[0:5]"  0.023843892 -2.3842821e-017 0.10737852 -0.068210535 1.6875409e-017 -0.076000087
		 0.037538238 -5.7737372e-019 0.0026002601 -0.068210535 1.6875409e-017 -0.076000087
		 0.037538238 -5.7737372e-019 0.0026002601 0.023843892 -2.3842821e-017 0.10737852;
	setAttr -s 9 ".ed[0:8]"  0 2 0 0 1 0 1 2 0 1 3 0 2 4 0 3 4 0 0 5 0
		 5 3 0 5 4 0;
	setAttr -s 5 -ch 18 ".fc[0:4]" -type "polyFaces" 
		f 3 -6 -8 8
		mu 0 3 6 7 8
		f 3 -1 1 2
		mu 0 3 3 5 4
		f 4 -3 3 5 -5
		mu 0 4 0 1 7 6
		f 4 -2 6 7 -4
		mu 0 4 1 2 8 7
		f 4 0 4 -9 -7
		mu 0 4 2 0 6 8;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface58" -p "pPlane1";
	rename -uid "416F0B0D-4D2D-FA92-9589-869166A9A7F8";
createNode mesh -n "polySurfaceShape58" -p "polySurface58";
	rename -uid "E99827DC-4D72-1B16-45F7-A59A2B28562C";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:4]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 9 ".uvst[0].uvsp[0:8]" -type "float2" 0.33150506 0.66771126
		 0.33483645 0.66367543 0.33231005 0.66836119 0.33150506 0.66771126 0.33483645 0.66367543
		 0.33231005 0.66836119 0.33150506 0.66771126 0.33483645 0.66367543 0.33231005 0.66836119;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".pt[3:5]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0;
	setAttr -s 6 ".vt[0:5]"  -0.16516356 5.9760411e-017 -0.26913697 -0.16849494 6.1233984e-017 -0.27577335
		 -0.16768995 6.1471272e-017 -0.27684203 -0.16516356 5.9760411e-017 -0.26913697 -0.16849494 6.1233984e-017 -0.27577335
		 -0.16768995 6.1471272e-017 -0.27684203;
	setAttr -s 9 ".ed[0:8]"  2 0 0 0 1 0 1 2 0 0 3 0 1 4 0 3 4 0 2 5 0
		 5 3 0 4 5 0;
	setAttr -s 5 -ch 18 ".fc[0:4]" -type "polyFaces" 
		f 3 -6 -8 -9
		mu 0 3 6 7 8
		f 3 2 0 1
		mu 0 3 3 5 4
		f 4 -2 3 5 -5
		mu 0 4 0 1 7 6
		f 4 -1 6 7 -4
		mu 0 4 1 2 8 7
		f 4 -3 4 8 -7
		mu 0 4 2 0 6 8;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface59" -p "pPlane1";
	rename -uid "85F8B3C8-4F95-71FA-AC72-868A070A97F7";
createNode mesh -n "polySurfaceShape59" -p "polySurface59";
	rename -uid "B1E82548-4D66-7E3C-67B4-BFA39F94F310";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.33097124 0.67084432
		 0.33033937 0.66912347 0.33150506 0.66771126 0.33231005 0.66836119 0.33097124 0.67084432
		 0.33033937 0.66912347 0.33150506 0.66771126 0.33231005 0.66836119 0.33097124 0.67084432
		 0.33033937 0.66912347 0.33150506 0.66771126 0.33231005 0.66836119;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0 0 0.16065009 0;
	setAttr -s 8 ".vt[0:7]"  -0.16768995 6.1471272e-017 -0.27684203 -0.16849494 6.1233984e-017 -0.27577335
		 -0.16902876 6.2377908e-017 -0.28092512 -0.1696606 6.1749582e-017 -0.27809539 -0.16902876 6.2377908e-017 -0.28092512
		 -0.1696606 6.1749582e-017 -0.27809539 -0.16849494 6.1233984e-017 -0.27577335 -0.16768995 6.1471272e-017 -0.27684203;
	setAttr -s 12 ".ed[0:11]"  2 0 0 1 0 0 1 3 0 2 3 0 2 4 0 3 5 0 4 5 0
		 1 6 0 6 5 0 0 7 0 6 7 0 4 7 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 6 -9 10 -12
		mu 0 4 8 9 10 11
		f 4 0 -2 2 -4
		mu 0 4 4 7 6 5
		f 4 3 5 -7 -5
		mu 0 4 0 1 9 8
		f 4 -3 7 8 -6
		mu 0 4 1 2 10 9
		f 4 1 9 -11 -8
		mu 0 4 2 3 11 10
		f 4 -1 4 11 -10
		mu 0 4 3 0 8 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface60" -p "pPlane1";
	rename -uid "95051C3E-4E45-0365-C798-CF950F940E3E";
createNode mesh -n "polySurfaceShape60" -p "polySurface60";
	rename -uid "C27EF7E6-4BA6-33CF-0179-2FA644FA4397";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.21894526 0.80407453
		 0.33033937 0.66912347 0.33097124 0.67084432 0.259139 0.80407453 0.21894526 0.80407453
		 0.33033937 0.66912347 0.33097124 0.67084432 0.259139 0.80407453 0.21894526 0.80407453
		 0.33033937 0.66912347 0.33097124 0.67084432 0.259139 0.80407453;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[4:7]" -type "float3"  0 0.16065009 0 0 0.16065009 
		0 0 0.16065009 0 0 0.16065009 0;
	setAttr -s 8 ".vt[0:7]"  -0.240861 1.110223e-016 -0.5 -0.16902876 6.2377908e-017 -0.28092512
		 -0.1696606 6.1749582e-017 -0.27809539 -0.28105474 1.110223e-016 -0.5 -0.1696606 6.1749582e-017 -0.27809539
		 -0.28105474 1.110223e-016 -0.5 -0.16902876 6.2377908e-017 -0.28092512 -0.240861 1.110223e-016 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 1 2 0 3 0 0 2 3 0 2 4 0 3 5 0 4 5 0
		 1 6 0 6 4 0 0 7 0 7 6 0 5 7 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 -7 -9 -11 -12
		mu 0 4 8 9 10 11
		f 4 2 0 1 3
		mu 0 4 4 7 6 5
		f 4 -4 4 6 -6
		mu 0 4 0 1 9 8
		f 4 -2 7 8 -5
		mu 0 4 1 2 10 9
		f 4 -1 9 10 -8
		mu 0 4 2 3 11 10
		f 4 -3 5 11 -10
		mu 0 4 3 0 8 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "245EE933-401F-BB31-9C68-6A80970E0CBF";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "63BCD8BB-4E58-5A92-7D3D-7384328898F4";
createNode displayLayer -n "defaultLayer";
	rename -uid "4F5B8681-41B3-9D20-D7C8-638C12ACDBC7";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "056D6864-4BEC-1388-176B-9FB113B79443";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "C319E970-40FB-40BB-9F0C-179BAF8CD91E";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "E8ADB604-418C-DE21-1881-128C058E2C6C";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 0\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1288\n                -height 730\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1288\n            -height 730\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
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
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 21 100 -ps 2 79 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1288\\n    -height 730\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1288\\n    -height 730\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "97720E21-4EF2-42C1-0763-7998042B09A9";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode groupId -n "groupId64";
	rename -uid "E93371AB-479B-EF3C-3423-A7ABB131E167";
	setAttr ".ihi" 0;
createNode groupId -n "groupId65";
	rename -uid "34776FDB-43EE-2894-9153-A8833E601CAB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId66";
	rename -uid "59BE650F-4901-C76C-064B-74B2399E9F2A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId67";
	rename -uid "B72B511E-41F3-9ABB-FDD3-8996DB47697C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId68";
	rename -uid "23649D76-49DD-7E92-F44E-83BE2F3129D5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId69";
	rename -uid "D4710B0C-49EC-C29B-F804-2EA824E9B603";
	setAttr ".ihi" 0;
createNode groupId -n "groupId70";
	rename -uid "C281A8C4-411C-CED1-74DC-419C051246AD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId71";
	rename -uid "7AC622CD-4C27-9856-5114-78BB6A9EFFE5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId72";
	rename -uid "65B853FC-4EAF-EB55-EBB5-689AB7B5BB99";
	setAttr ".ihi" 0;
createNode groupId -n "groupId73";
	rename -uid "BB1AC0D4-431E-0371-E56A-E6B2E9993670";
	setAttr ".ihi" 0;
createNode groupId -n "groupId74";
	rename -uid "2AA01B64-4E51-882F-5FB8-4B9DAB1A7455";
	setAttr ".ihi" 0;
createNode groupId -n "groupId75";
	rename -uid "7212495A-4B63-CCB2-6B1C-618C275B9B1A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId76";
	rename -uid "115C2938-45C4-75E6-CEF1-A18DF1314D58";
	setAttr ".ihi" 0;
createNode groupId -n "groupId77";
	rename -uid "8202C91A-4DAE-1AAD-022C-BF916D0BD331";
	setAttr ".ihi" 0;
createNode groupId -n "groupId78";
	rename -uid "48AC96D5-4641-8C87-A146-11AB404F3519";
	setAttr ".ihi" 0;
createNode groupId -n "groupId79";
	rename -uid "9F024A1E-4A7F-E52D-ACC3-D8BCC9446413";
	setAttr ".ihi" 0;
createNode groupId -n "groupId80";
	rename -uid "9F474539-4A5F-E9BC-01B0-74A8D58C6370";
	setAttr ".ihi" 0;
createNode groupId -n "groupId81";
	rename -uid "033CBECF-4182-3538-0518-93B6D2DA1D55";
	setAttr ".ihi" 0;
createNode groupId -n "groupId82";
	rename -uid "0A90C5DC-4B47-A62B-2C10-7EA65D161CC3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId83";
	rename -uid "548A2BFE-468E-8662-0C3A-3BBE1249EA38";
	setAttr ".ihi" 0;
createNode groupId -n "groupId84";
	rename -uid "AB26EFFD-49DD-612C-50C6-A2A2B6F69566";
	setAttr ".ihi" 0;
createNode groupId -n "groupId85";
	rename -uid "6B03F706-4873-09F1-FCB7-2B9251B57BCD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId86";
	rename -uid "8CF92C69-4CFC-2722-0CE6-FB801B8C1C1B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId87";
	rename -uid "F4F78BBA-4607-3728-0816-94BB3348F89F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId88";
	rename -uid "33849A8F-4D99-B12A-08CD-A99B7DC5A3FA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId89";
	rename -uid "AE6A03DE-4928-0AEF-6D56-4CBD96C86F6E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId90";
	rename -uid "3C2C8904-463D-3C42-81BB-62ADF43241BD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId91";
	rename -uid "2E17BBC7-4464-6BEB-3B8C-39AFF3C43871";
	setAttr ".ihi" 0;
createNode groupId -n "groupId92";
	rename -uid "E35ADFF7-4C94-14B7-6FC8-0294C0A7DC8A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId93";
	rename -uid "54317A00-4E7C-C413-1A33-77A6B1EE05CD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId94";
	rename -uid "2D863D98-4DF0-EE14-B54B-A087C2DB51BC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId95";
	rename -uid "C8BA7D85-4BAF-D951-E157-FE9EB8FAB53B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId96";
	rename -uid "CF38E9F9-4F4A-B117-C301-72B23CEA7E9A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId97";
	rename -uid "FC5653FD-4AE4-4829-A1AC-E98065A9C8AF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId98";
	rename -uid "90FD7DF2-42B2-61FB-50C5-A8A46EE99CBB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId99";
	rename -uid "89E20788-4BFF-8523-79CE-C0B9B3DFDC63";
	setAttr ".ihi" 0;
createNode groupId -n "groupId100";
	rename -uid "D7C45D29-497D-D741-7DF4-E4A3382DA927";
	setAttr ".ihi" 0;
createNode groupId -n "groupId101";
	rename -uid "2CE25322-4628-6EF7-9EF1-9E9EA77D45AD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId102";
	rename -uid "A3D232F5-4B73-495E-32A6-4481D7F53388";
	setAttr ".ihi" 0;
createNode groupId -n "groupId103";
	rename -uid "E22943C4-497C-B1E0-99A1-DC8BD95CBBB7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId104";
	rename -uid "69DBEF7E-4B28-A505-C7C0-15A2BCA14212";
	setAttr ".ihi" 0;
createNode groupId -n "groupId105";
	rename -uid "66EF5EF9-470E-690B-B39B-3CAF9ECAA6BA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId106";
	rename -uid "4AE88951-4E6E-5E5B-6EA5-088471AC30D1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId107";
	rename -uid "3C04E825-4E63-F442-0CCB-5A90E0D5A8FF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId108";
	rename -uid "E3C24AAE-4F46-83F9-4BD5-3780AC1E96CC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId109";
	rename -uid "C38E5DB0-4B80-A2BA-CC8E-F39D4767D273";
	setAttr ".ihi" 0;
createNode groupId -n "groupId110";
	rename -uid "0CEF0BF5-4407-F429-8D88-27846D5109C3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId111";
	rename -uid "EA6DB758-4320-D53C-CCFB-14AB1542125B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId112";
	rename -uid "352349D9-4611-A1AA-3FF0-B0A2F091788D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId113";
	rename -uid "ADD7896D-4785-0682-B406-22BE810BE6A9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId114";
	rename -uid "F87F2026-4DAF-4DE0-6216-B490EB68202E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId115";
	rename -uid "3AAAAD79-411F-3AD2-6BEB-F194A73A57B5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId116";
	rename -uid "F69152FC-432B-1DDD-0260-9AAB76A26FB9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId117";
	rename -uid "29BD6005-4A15-2E80-4870-42B21C0DFBE3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId118";
	rename -uid "12A10A3A-416A-956F-129B-C58B77FAB5CC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId119";
	rename -uid "66FA93C7-425D-004B-FDFA-5989A69CD2DD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId120";
	rename -uid "3B9BD7FA-47F8-C55D-3B08-57A279CF7A68";
	setAttr ".ihi" 0;
createNode groupId -n "groupId121";
	rename -uid "EF755E9D-4F5F-B111-ADAD-C2869C0E4C26";
	setAttr ".ihi" 0;
createNode groupId -n "groupId122";
	rename -uid "BE5C6F28-41C5-7F19-A9F2-7B85415CB6AC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId123";
	rename -uid "132FAFA9-49EB-FFD4-0855-D392C754F42F";
	setAttr ".ihi" 0;
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
	setAttr -s 60 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 60 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "groupId64.id" "polySurfaceShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape1.iog.og[0].gco";
connectAttr "groupId65.id" "polySurfaceShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape2.iog.og[0].gco";
connectAttr "groupId66.id" "polySurfaceShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape3.iog.og[0].gco";
connectAttr "groupId67.id" "polySurfaceShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape4.iog.og[0].gco";
connectAttr "groupId68.id" "polySurfaceShape5.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape5.iog.og[0].gco";
connectAttr "groupId69.id" "polySurfaceShape6.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape6.iog.og[0].gco";
connectAttr "groupId70.id" "polySurfaceShape7.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape7.iog.og[0].gco";
connectAttr "groupId71.id" "polySurfaceShape8.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape8.iog.og[0].gco";
connectAttr "groupId72.id" "polySurfaceShape9.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape9.iog.og[0].gco";
connectAttr "groupId73.id" "polySurfaceShape10.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape10.iog.og[0].gco";
connectAttr "groupId74.id" "polySurfaceShape11.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape11.iog.og[0].gco";
connectAttr "groupId75.id" "polySurfaceShape12.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape12.iog.og[0].gco";
connectAttr "groupId76.id" "polySurfaceShape13.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape13.iog.og[0].gco";
connectAttr "groupId77.id" "polySurfaceShape14.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape14.iog.og[0].gco";
connectAttr "groupId78.id" "polySurfaceShape15.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape15.iog.og[0].gco";
connectAttr "groupId79.id" "polySurfaceShape16.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape16.iog.og[0].gco";
connectAttr "groupId80.id" "polySurfaceShape17.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape17.iog.og[0].gco";
connectAttr "groupId81.id" "polySurfaceShape18.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape18.iog.og[0].gco";
connectAttr "groupId82.id" "polySurfaceShape19.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape19.iog.og[0].gco";
connectAttr "groupId83.id" "polySurfaceShape20.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape20.iog.og[0].gco";
connectAttr "groupId84.id" "polySurfaceShape21.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape21.iog.og[0].gco";
connectAttr "groupId85.id" "polySurfaceShape22.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape22.iog.og[0].gco";
connectAttr "groupId86.id" "polySurfaceShape23.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape23.iog.og[0].gco";
connectAttr "groupId87.id" "polySurfaceShape24.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape24.iog.og[0].gco";
connectAttr "groupId88.id" "polySurfaceShape25.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape25.iog.og[0].gco";
connectAttr "groupId89.id" "polySurfaceShape26.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape26.iog.og[0].gco";
connectAttr "groupId90.id" "polySurfaceShape27.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape27.iog.og[0].gco";
connectAttr "groupId91.id" "polySurfaceShape28.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape28.iog.og[0].gco";
connectAttr "groupId92.id" "polySurfaceShape29.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape29.iog.og[0].gco";
connectAttr "groupId93.id" "polySurfaceShape30.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape30.iog.og[0].gco";
connectAttr "groupId94.id" "polySurfaceShape31.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape31.iog.og[0].gco";
connectAttr "groupId95.id" "polySurfaceShape32.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape32.iog.og[0].gco";
connectAttr "groupId96.id" "polySurfaceShape33.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape33.iog.og[0].gco";
connectAttr "groupId97.id" "polySurfaceShape34.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape34.iog.og[0].gco";
connectAttr "groupId98.id" "polySurfaceShape35.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape35.iog.og[0].gco";
connectAttr "groupId99.id" "polySurfaceShape36.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape36.iog.og[0].gco";
connectAttr "groupId100.id" "polySurfaceShape37.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape37.iog.og[0].gco";
connectAttr "groupId101.id" "polySurfaceShape38.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape38.iog.og[0].gco";
connectAttr "groupId102.id" "polySurfaceShape39.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape39.iog.og[0].gco";
connectAttr "groupId103.id" "polySurfaceShape40.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape40.iog.og[0].gco";
connectAttr "groupId104.id" "polySurfaceShape41.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape41.iog.og[0].gco";
connectAttr "groupId105.id" "polySurfaceShape42.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape42.iog.og[0].gco";
connectAttr "groupId106.id" "polySurfaceShape43.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape43.iog.og[0].gco";
connectAttr "groupId107.id" "polySurfaceShape44.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape44.iog.og[0].gco";
connectAttr "groupId108.id" "polySurfaceShape45.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape45.iog.og[0].gco";
connectAttr "groupId109.id" "polySurfaceShape46.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape46.iog.og[0].gco";
connectAttr "groupId110.id" "polySurfaceShape47.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape47.iog.og[0].gco";
connectAttr "groupId111.id" "polySurfaceShape48.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape48.iog.og[0].gco";
connectAttr "groupId112.id" "polySurfaceShape49.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape49.iog.og[0].gco";
connectAttr "groupId113.id" "polySurfaceShape50.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape50.iog.og[0].gco";
connectAttr "groupId114.id" "polySurfaceShape51.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape51.iog.og[0].gco";
connectAttr "groupId115.id" "polySurfaceShape52.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape52.iog.og[0].gco";
connectAttr "groupId116.id" "polySurfaceShape53.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape53.iog.og[0].gco";
connectAttr "groupId117.id" "polySurfaceShape54.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape54.iog.og[0].gco";
connectAttr "groupId118.id" "polySurfaceShape55.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape55.iog.og[0].gco";
connectAttr "groupId119.id" "polySurfaceShape56.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape56.iog.og[0].gco";
connectAttr "groupId120.id" "polySurfaceShape57.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape57.iog.og[0].gco";
connectAttr "groupId121.id" "polySurfaceShape58.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape58.iog.og[0].gco";
connectAttr "groupId122.id" "polySurfaceShape59.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape59.iog.og[0].gco";
connectAttr "groupId123.id" "polySurfaceShape60.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape60.iog.og[0].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "polySurfaceShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape5.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape6.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape7.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape8.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape9.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape10.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape11.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape12.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape13.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape14.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape15.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape16.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape17.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape18.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape19.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape20.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape21.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape22.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape23.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape24.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape25.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape26.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape27.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape28.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape29.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape30.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape31.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape32.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape33.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape34.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape35.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape36.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape37.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape38.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape39.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape40.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape41.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape42.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape43.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape44.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape45.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape46.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape47.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape48.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape49.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape50.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape51.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape52.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape53.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape54.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape55.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape56.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape57.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape58.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape59.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape60.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId64.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId65.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId66.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId67.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId68.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId69.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId70.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId71.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId72.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId73.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId74.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId75.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId76.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId77.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId78.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId79.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId80.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId81.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId82.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId83.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId84.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId85.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId86.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId87.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId88.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId89.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId90.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId91.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId92.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId93.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId94.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId95.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId96.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId97.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId98.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId99.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId100.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId101.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId102.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId103.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId104.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId105.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId106.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId107.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId108.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId109.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId110.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId111.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId112.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId113.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId114.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId115.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId116.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId117.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId118.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId119.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId120.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId121.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId122.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId123.msg" ":initialShadingGroup.gn" -na;
// End of plane.ma
