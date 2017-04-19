//Maya ASCII 2016 scene
//Name: Powerup.ma
//Last modified: Wed, Apr 19, 2017 11:56:52 AM
//Codeset: 1252
requires maya "2016";
requires -nodeType "Unfold3DUnfold" "Unfold3D" "Trunk.r2232.release.Mar 18 2015|11:44:26";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201603180400-990260";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
createNode transform -s -n "persp";
	rename -uid "F8272A93-4BB7-BDA6-CEE3-33B020A1C8C7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.67403221147757764 1.183912097866366 19.381200328658224 ;
	setAttr ".r" -type "double3" -3.938352729560386 -0.20000000000150245 5.4355513696932967e-018 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "3F46AF06-4B4A-3F49-9841-32BFC56EBDE5";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 18.607497260514712;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "A3858A90-4978-F29C-0399-81A648D69B7E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "DDEBD143-4EC0-7193-23DE-D2B4DC4624E6";
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
	rename -uid "4C5E4D1C-4B24-F9D5-E284-4D8F00278002";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.3334906436838203 -0.10245963716895123 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "9D0ACF64-4C52-F46D-B07D-09AAB431837C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 14.004908454464543;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "CDCEEEDE-4EED-7B8B-EE70-C1A52303EEA2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "12CECD85-455F-35E5-7FEE-7C87B69D3098";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 12.977653555604062;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "croix";
	rename -uid "121BCA74-4CE6-3BDA-4F8F-4BB1FFA13F84";
	setAttr ".t" -type "double3" 0 0.88159423533042425 0 ;
	setAttr ".s" -type "double3" 0.90547517841583658 1.1140938963937161 0.76833761948820567 ;
createNode mesh -n "croixShape" -p "croix";
	rename -uid "8BEF7EB1-4BAD-9127-D829-B68C823EA58E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.35605281544849277 0.7353777140378952 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bw" 3;
createNode transform -n "pCube1";
	rename -uid "23FB064B-40B5-0CE1-C3BA-218581AC8259";
	setAttr ".t" -type "double3" 0 2.2762938542056643 0 ;
	setAttr ".s" -type "double3" 1 1 0.49322342617610387 ;
createNode transform -n "transform5" -p "pCube1";
	rename -uid "94B3B615-4611-68BC-A81E-DFB53A5F5934";
	setAttr ".v" no;
createNode mesh -n "pCubeShape1" -p "transform5";
	rename -uid "35E42130-4F4D-6737-6DA4-319415B0CBDE";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.095212623962545151 0.92836051244993467 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bw" 3;
createNode transform -n "pCube4";
	rename -uid "6BF199E2-45CD-FCC1-E4A0-69A45BB693BA";
	setAttr ".t" -type "double3" -0.73494746799730615 -1.5562594217099688 0 ;
	setAttr ".s" -type "double3" 1.2924309883711054 1.3926205677183705 0.55180851148885124 ;
createNode transform -n "transform4" -p "pCube4";
	rename -uid "45D19ED3-4AF8-4789-7ED6-329F39AF48B4";
	setAttr ".v" no;
createNode mesh -n "pCubeShape4" -p "transform4";
	rename -uid "91A7D8F7-4830-F012-61B3-D49309082469";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.89638266310393022 0.91379571766466716 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bw" 3;
createNode transform -n "pPlane1";
	rename -uid "4BFF2259-4935-6CD6-AD4A-26930B8F4EFC";
	setAttr ".t" -type "double3" 0.77200970517622913 -1.5222726580939725 0.27273055072892138 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 1.3035559450655838 1 1.3035559450655838 ;
createNode transform -n "transform3" -p "pPlane1";
	rename -uid "C8C76A0E-4D30-F77E-A416-0998C6246050";
	setAttr ".v" no;
createNode mesh -n "pPlaneShape1" -p "transform3";
	rename -uid "A2BB1030-4163-C201-11CA-85B3DC3ADB32";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.90115060734144303 0.91224897592454346 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bw" 3;
createNode transform -n "left";
	rename -uid "330B66A0-4D8F-3C2E-7935-5A8B2C0D1F5F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -100.1 0 0 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
createNode camera -n "leftShape" -p "left";
	rename -uid "2D3A5DC8-465B-C9B3-8340-5CABC8B0545B";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 12.025747426831147;
	setAttr ".imn" -type "string" "left1";
	setAttr ".den" -type "string" "left1_depth";
	setAttr ".man" -type "string" "left1_mask";
	setAttr ".hc" -type "string" "viewSet -ls %camera";
	setAttr ".o" yes;
createNode transform -n "pCube5";
	rename -uid "B09616A8-4CC4-3008-4432-3BA8430F174D";
	setAttr ".t" -type "double3" 0 1.06782353676549 0 ;
	setAttr ".s" -type "double3" 1 1 0.49322342617610387 ;
createNode transform -n "transform2" -p "pCube5";
	rename -uid "16431039-4500-F52A-6CF5-A195DC339E39";
	setAttr ".v" no;
createNode mesh -n "pCubeShape5" -p "transform2";
	rename -uid "0CA94371-4172-BAD7-0E2B-3ABF4DAF7420";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:9]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.095212638378143311 0.9283604621887207 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 15 ".uvst[0].uvsp[0:14]" -type "float2" 0.82099128 0.73374563
		 0.97886932 0.78201693 0.87606084 0.75326711 0.95419741 0.7744593 0.87387806 0.7644642
		 0.94936967 0.78310221 0.83151197 0.7724176 0.96878159 0.80077821 0.94599128 0.73374563
		 0.91060299 0.79623336 0.92272055 0.77079707 0.92850119 0.76045293 0.90639001 0.81633073
		 0.96803451 0.81875283 0.82561231 0.79603928;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[0]" -type "float3" 0 0.30956545 0 ;
	setAttr ".pt[1]" -type "float3" 0 0.30956545 0 ;
	setAttr ".pt[6]" -type "float3" 0 0.30956545 0 ;
	setAttr ".pt[7]" -type "float3" 0 0.30956545 0 ;
	setAttr ".pt[8]" -type "float3" 0 0.30956545 0 ;
	setAttr ".pt[9]" -type "float3" 0 0.30956545 0 ;
	setAttr -s 12 ".vt[0:11]"  -1.38566208 -1.463552 0.5 1.38566208 -1.463552 0.5
		 -1.38566208 -0.46355212 0.5 1.38566208 -0.46355212 0.5 -1.38566208 -0.46355212 -0.5
		 1.38566208 -0.46355212 -0.5 -1.38566208 -1.463552 -0.5 1.38566208 -1.463552 -0.5
		 0 -0.5 0.5 0 -0.5 -0.5 0 0.5 -0.5 0 0.5 0.5;
	setAttr -s 20 ".ed[0:19]"  0 8 0 2 11 0 4 10 0 6 9 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 1 0 9 7 0 10 5 0 11 3 0 8 9 1 9 10 1 10 11 1 11 8 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 19 12 5 -16
		mu 0 4 11 8 1 3
		f 4 18 15 7 -15
		mu 0 4 10 11 3 5
		f 4 17 14 9 -14
		mu 0 4 9 10 5 7
		f 4 16 13 11 -13
		mu 0 4 12 9 7 13
		f 4 -12 -10 -8 -6
		mu 0 4 1 7 5 3
		f 4 10 4 6 8
		mu 0 4 6 0 2 4
		f 4 3 -17 -1 -11
		mu 0 4 6 9 12 14
		f 4 2 -18 -4 -9
		mu 0 4 4 10 9 6
		f 4 1 -19 -3 -7
		mu 0 4 2 11 10 4
		f 4 0 -20 -2 -5
		mu 0 4 0 8 11 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".bw" 3;
createNode transform -n "pCube6";
	rename -uid "AD156F1A-46A7-B608-87F3-BDB36AA35888";
	setAttr ".t" -type "double3" 0 0.23227800909890428 0 ;
	setAttr ".s" -type "double3" 1 1 0.49322342617610387 ;
createNode transform -n "transform1" -p "pCube6";
	rename -uid "1EB1CED7-4722-8788-114C-558DAC6FC44E";
	setAttr ".v" no;
createNode mesh -n "pCubeShape6" -p "transform1";
	rename -uid "3EBB28A3-40BF-AB9E-B7E5-0A9ED1628A03";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:9]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.89993027231129574 0.77624920816034892 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 15 ".uvst[0].uvsp[0:14]" -type "float2" 0.82099128 0.73374563
		 0.97886932 0.78201693 0.87606084 0.75326711 0.95419741 0.7744593 0.87387806 0.7644642
		 0.94936967 0.78310221 0.83151197 0.7724176 0.96878159 0.80077821 0.94599128 0.73374563
		 0.91060299 0.79623336 0.92272055 0.77079707 0.92850119 0.76045293 0.90639001 0.81633073
		 0.96803451 0.81875283 0.82561231 0.79603928;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[0]" -type "float3" 0 0.47564781 0 ;
	setAttr ".pt[1]" -type "float3" 0 0.47564781 0 ;
	setAttr ".pt[6]" -type "float3" 0 0.47564781 0 ;
	setAttr ".pt[7]" -type "float3" 0 0.47564781 0 ;
	setAttr ".pt[8]" -type "float3" 0 0.47564781 0 ;
	setAttr ".pt[9]" -type "float3" 0 0.47564781 0 ;
	setAttr -s 12 ".vt[0:11]"  -1.38566208 -1.463552 0.5 1.38566208 -1.463552 0.5
		 -1.38566208 -0.46355212 0.5 1.38566208 -0.46355212 0.5 -1.38566208 -0.46355212 -0.5
		 1.38566208 -0.46355212 -0.5 -1.38566208 -1.463552 -0.5 1.38566208 -1.463552 -0.5
		 0 -0.5 0.5 0 -0.5 -0.5 0 0.5 -0.5 0 0.5 0.5;
	setAttr -s 20 ".ed[0:19]"  0 8 0 2 11 0 4 10 0 6 9 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 1 0 9 7 0 10 5 0 11 3 0 8 9 1 9 10 1 10 11 1 11 8 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 19 12 5 -16
		mu 0 4 11 8 1 3
		f 4 18 15 7 -15
		mu 0 4 10 11 3 5
		f 4 17 14 9 -14
		mu 0 4 9 10 5 7
		f 4 16 13 11 -13
		mu 0 4 12 9 7 13
		f 4 -12 -10 -8 -6
		mu 0 4 1 7 5 3
		f 4 10 4 6 8
		mu 0 4 6 0 2 4
		f 4 3 -17 -1 -11
		mu 0 4 6 9 12 14
		f 4 2 -18 -4 -9
		mu 0 4 4 10 9 6
		f 4 1 -19 -3 -7
		mu 0 4 2 11 10 4
		f 4 0 -20 -2 -5
		mu 0 4 0 8 11 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".bw" 3;
createNode transform -n "up";
	rename -uid "06C1BBCB-4416-11D8-558C-C29C7424FADF";
createNode mesh -n "upShape" -p "up";
	rename -uid "5061ABEC-47ED-A7B5-F42E-16A92BC2F241";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.33028405904769897 0.92434567213058472 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bw" 3;
createNode transform -n "up1";
	rename -uid "4B39CBC9-4770-8A94-216D-5D8D2DA2F36E";
createNode mesh -n "up1Shape" -p "up1";
	rename -uid "810220A9-43FE-C263-A37B-8294C504D4D8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.72084701061248779 0.66385373473167419 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 45 ".uvst[0].uvsp[0:44]" -type "float2" 0.32729435 0.62471235
		 0.59288967 0.70591831 0.41993701 0.65755296 0.55138457 0.69320416 0.41626495 0.67638975
		 0.54326296 0.707744 0.34499311 0.68976951 0.57591927 0.73748004 0.53757966 0.62471235
		 0.47804654 0.72983432 0.49843168 0.68704331 0.50815636 0.66964161 0.47095913 0.76364386
		 0.57466251 0.76771843 0.33506823 0.7295078 0.50815636 0.66964161 0.53757966 0.62471235
		 0.59288979 0.70591831 0.55138469 0.69320416 0.49843168 0.68704331 0.54326308 0.707744
		 0.47804654 0.72983432 0.57591939 0.73748004 0.47095913 0.76364386 0.57466257 0.76771843
		 0.34499311 0.68976951 0.32729435 0.62471235 0.4199369 0.65755296 0.41626483 0.67638975
		 0.33506823 0.7295078 0.50815636 0.66964161 0.53757966 0.62471235 0.59288979 0.70591831
		 0.55138469 0.69320416 0.49843168 0.68704331 0.54326308 0.707744 0.47804654 0.72983432
		 0.57591939 0.73748004 0.47095913 0.76364386 0.57466257 0.76771843 0.34499311 0.68976951
		 0.32729435 0.62471235 0.4199369 0.65755296 0.41626483 0.67638975 0.33506823 0.7295078;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 36 ".vt[0:35]"  -1.38566208 0.81274176 0.24661171 1.38566208 0.81274176 0.24661171
		 -1.38566208 1.81274164 0.24661171 1.38566208 1.81274164 0.24661171 -1.38566208 1.81274164 -0.24661171
		 1.38566208 1.81274164 -0.24661171 -1.38566208 0.81274176 -0.24661171 1.38566208 0.81274176 -0.24661171
		 0 1.77629375 0.24661171 0 1.77629375 -0.24661171 0 2.77629375 -0.24661171 0 2.77629375 0.24661171
		 -1.38566208 -0.086163044 0.24661171 1.38566208 -0.086163044 0.24661171 -1.38566208 0.60427141 0.24661171
		 1.38566208 0.60427141 0.24661171 -1.38566208 0.60427141 -0.24661171 1.38566208 0.60427141 -0.24661171
		 -1.38566208 -0.086163044 -0.24661171 1.38566208 -0.086163044 -0.24661171 0 0.87738895 0.24661171
		 0 0.87738895 -0.24661171 0 1.56782353 -0.24661171 0 1.56782353 0.24661171 -1.38566208 -0.7556262 0.24661171
		 1.38566208 -0.7556262 0.24661171 -1.38566208 -0.23127411 0.24661171 1.38566208 -0.23127411 0.24661171
		 -1.38566208 -0.23127411 -0.24661171 1.38566208 -0.23127411 -0.24661171 -1.38566208 -0.7556262 -0.24661171
		 1.38566208 -0.7556262 -0.24661171 0 0.20792581 0.24661171 0 0.20792581 -0.24661171
		 0 0.73227799 -0.24661171 0 0.73227799 0.24661171;
	setAttr -s 60 ".ed[0:59]"  0 8 0 2 11 0 4 10 0 6 9 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 8 1 0 9 7 0 10 5 0 11 3 0 8 9 1 9 10 1 10 11 1 11 8 1
		 12 20 0 14 23 0 16 22 0 18 21 0 12 14 0 13 15 0 14 16 0 15 17 0 16 18 0 17 19 0 18 12 0
		 19 13 0 20 13 0 21 19 0 22 17 0 23 15 0 20 21 1 21 22 1 22 23 1 23 20 1 24 32 0 26 35 0
		 28 34 0 30 33 0 24 26 0 25 27 0 26 28 0 27 29 0 28 30 0 29 31 0 30 24 0 31 25 0 32 25 0
		 33 31 0 34 29 0 35 27 0 32 33 1 33 34 1 34 35 1 35 32 1;
	setAttr -s 30 -ch 120 ".fc[0:29]" -type "polyFaces" 
		f 4 19 12 5 -16
		mu 0 4 11 8 1 3
		f 4 18 15 7 -15
		mu 0 4 10 11 3 5
		f 4 17 14 9 -14
		mu 0 4 9 10 5 7
		f 4 16 13 11 -13
		mu 0 4 12 9 7 13
		f 4 -12 -10 -8 -6
		mu 0 4 1 7 5 3
		f 4 10 4 6 8
		mu 0 4 6 0 2 4
		f 4 3 -17 -1 -11
		mu 0 4 6 9 12 14
		f 4 2 -18 -4 -9
		mu 0 4 4 10 9 6
		f 4 1 -19 -3 -7
		mu 0 4 2 11 10 4
		f 4 0 -20 -2 -5
		mu 0 4 0 8 11 2
		f 4 39 32 25 -36
		mu 0 4 15 16 17 18
		f 4 38 35 27 -35
		mu 0 4 19 15 18 20
		f 4 37 34 29 -34
		mu 0 4 21 19 20 22
		f 4 36 33 31 -33
		mu 0 4 23 21 22 24
		f 4 -32 -30 -28 -26
		mu 0 4 17 22 20 18
		f 4 30 24 26 28
		mu 0 4 25 26 27 28
		f 4 23 -37 -21 -31
		mu 0 4 25 21 23 29
		f 4 22 -38 -24 -29
		mu 0 4 28 19 21 25
		f 4 21 -39 -23 -27
		mu 0 4 27 15 19 28
		f 4 20 -40 -22 -25
		mu 0 4 26 16 15 27
		f 4 59 52 45 -56
		mu 0 4 30 31 32 33
		f 4 58 55 47 -55
		mu 0 4 34 30 33 35
		f 4 57 54 49 -54
		mu 0 4 36 34 35 37
		f 4 56 53 51 -53
		mu 0 4 38 36 37 39
		f 4 -52 -50 -48 -46
		mu 0 4 32 37 35 33
		f 4 50 44 46 48
		mu 0 4 40 41 42 43
		f 4 43 -57 -41 -51
		mu 0 4 40 36 38 44
		f 4 42 -58 -44 -49
		mu 0 4 43 34 36 40
		f 4 41 -59 -43 -47
		mu 0 4 42 30 34 43
		f 4 40 -60 -42 -45
		mu 0 4 41 31 30 42;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".bw" 3;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "34E252EB-449D-40FF-2EAD-58B983A1ACB2";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "F364DDF7-4E52-B59C-807A-1DA99AB8EFC8";
createNode displayLayer -n "defaultLayer";
	rename -uid "25674050-4741-4147-5F54-E5ADCBE92B76";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "3CBAAB93-41AB-B82D-CCBF-7281822B407C";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "E629BC1E-409C-34B2-73BC-FF8818D426CE";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	rename -uid "53CB4DF5-4443-981C-4313-A09148CF9FD5";
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "013652C5-4CE7-5549-4ED6-B789E055B0BB";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 0.76441051316649811 0 0 0 0 0.94052836274091411 0 0
		 0 0 0.64863771862377584 0 0 0.88159423533042425 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1.3518584 0 ;
	setAttr ".rs" 63234;
	setAttr ".lt" -type "double3" 0 7.3955709864469857e-032 0.83145201799629742 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.38220525658324905 1.3518584167008814 -0.32431885931188792 ;
	setAttr ".cbx" -type "double3" 0.38220525658324905 1.3518584167008814 0.32431885931188792 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "0114C688-4246-05FB-87C9-95A084BE48DE";
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 0.76441051316649811 0 0 0 0 0.94052836274091411 0 0
		 0 0 0.64863771862377584 0 0 0.88159423533042425 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.38220525 0.9889378 0 ;
	setAttr ".rs" 59461;
	setAttr ".lt" -type "double3" -1.7232737229605181e-016 9.5044040794905798e-017 0.77609348965823588 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.38220525658324905 0.62601722620134392 -0.32431883998097749 ;
	setAttr ".cbx" -type "double3" 0.38220525658324905 1.3518583606410224 0.32431883998097749 ;
createNode polyTweak -n "polyTweak1";
	rename -uid "A92939C7-4A6A-1BE1-E84F-63A9D776DB1A";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0.22826229 0 ;
	setAttr ".tk[1]" -type "float3" 0 0.22826229 0 ;
	setAttr ".tk[6]" -type "float3" 0 0.22826229 0 ;
	setAttr ".tk[7]" -type "float3" 0 0.22826229 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "7A14B6AF-4793-846C-3200-10AF22770018";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 0.76441051316649811 0 0 0 0 0.94052836274091411 0 0
		 0 0 0.64863771862377584 0 0 0.88159423533042425 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.62601721 0 ;
	setAttr ".rs" 60581;
	setAttr ".lt" -type "double3" 0 -2.4651903288156619e-032 0.85067643271083115 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.38220525658324905 0.62601722620134392 -0.32431882065006712 ;
	setAttr ".cbx" -type "double3" 0.38220525658324905 0.62601722620134392 0.32431882065006712 ;
createNode polyTweak -n "polyTweak2";
	rename -uid "11877146-467D-AD47-7631-7DBD68CD7673";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[12]" -type "float3" 0.066007085 0 0 ;
	setAttr ".tk[13]" -type "float3" 0.066007085 0 0 ;
	setAttr ".tk[14]" -type "float3" 0.066007085 0 0 ;
	setAttr ".tk[15]" -type "float3" 0.066007085 0 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "DA6EF025-421B-BA10-24AD-3691422FF187";
	setAttr ".ics" -type "componentList" 1 "f[5]";
	setAttr ".ix" -type "matrix" 0.76441051316649811 0 0 0 0 0.94052836274091411 0 0
		 0 0 0.64863771862377584 0 0 0.88159423533042425 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.38220525 0.9889378 0 ;
	setAttr ".rs" 55847;
	setAttr ".lt" -type "double3" 0 0 0.6278452755887689 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.38220525658324905 0.62601722620134392 -0.32431882065006712 ;
	setAttr ".cbx" -type "double3" -0.38220525658324905 1.3518583606410224 0.32431882065006712 ;
createNode polyCube -n "polyCube2";
	rename -uid "3B28D93A-4E24-17E9-B341-8CA135278B16";
	setAttr ".cuv" 4;
createNode polySplit -n "polySplit1";
	rename -uid "B90908AF-4CDE-C2EC-0238-68AD91176B75";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483648 -2147483645 -2147483646 -2147483647 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyCube -n "polyCube3";
	rename -uid "8B2EE065-4D68-C81E-0530-1BBC5AAE8819";
	setAttr ".cuv" 4;
createNode polySplit -n "polySplit2";
	rename -uid "8923564B-4F1F-A53A-9581-439F0ACBACE4";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483648 -2147483645 -2147483646 -2147483647 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit3";
	rename -uid "01E60BDE-4230-3693-B8AD-0E8C24B2C870";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483636 -2147483633 -2147483634 -2147483635 -2147483636;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit4";
	rename -uid "B91B5F40-435C-F1CC-F7D8-AC8E707E9C6D";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483648 -2147483645 -2147483646 -2147483647 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit5";
	rename -uid "4E0E1382-4011-3D3F-830C-4B86AADC89E3";
	setAttr -s 11 ".e[0:10]"  0.2 0.80000001 0.80000001 0.2 0.2 0.80000001
		 0.80000001 0.2 0.2 0.80000001 0.2;
	setAttr -s 11 ".d[0:10]"  -2147483644 -2147483613 -2147483629 -2147483624 -2147483643 -2147483639 
		-2147483622 -2147483631 -2147483615 -2147483640 -2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak3";
	rename -uid "9BAD1983-4D42-A52D-531A-56BC55A5101F";
	setAttr ".uopa" yes;
	setAttr -s 11 ".tk";
	setAttr ".tk[20]" -type "float3" 0 0.068906903 0 ;
	setAttr ".tk[21]" -type "float3" 0 0.068906903 0 ;
	setAttr ".tk[22]" -type "float3" 0 0.068906903 0 ;
	setAttr ".tk[23]" -type "float3" 0 0.068906903 0 ;
	setAttr ".tk[24]" -type "float3" 0 0.068906903 0 ;
	setAttr ".tk[25]" -type "float3" 0 0.068906903 0 ;
	setAttr ".tk[26]" -type "float3" 0 0.068906903 0 ;
	setAttr ".tk[27]" -type "float3" 0 0.068906903 0 ;
	setAttr ".tk[28]" -type "float3" 0 0.068906903 0 ;
	setAttr ".tk[29]" -type "float3" 0 0.068906903 0 ;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "5CD7BD59-432D-3E6D-62D4-BE88E8B63736";
	setAttr ".dc" -type "componentList" 2 "f[0:2]" "f[7:9]";
createNode polyCloseBorder -n "polyCloseBorder1";
	rename -uid "64755C93-474D-3CB6-E6E1-B683197DB1B1";
	setAttr ".ics" -type "componentList" 6 "e[21:22]" "e[28:29]" "e[33]" "e[37]" "e[40:41]" "e[45:46]";
createNode polySplit -n "polySplit6";
	rename -uid "7D5796BD-42FE-4901-10EC-E4B52E1492F6";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483619 -2147483602;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit7";
	rename -uid "F3112D1B-4240-F03B-3889-E7A197A6886E";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483607 -2147483626;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit8";
	rename -uid "755DB4EE-4898-2A41-7579-458476F25944";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483603 -2147483608;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySoftEdge -n "polySoftEdge1";
	rename -uid "2EC0AB28-4CCE-A90D-5A35-50A283F32549";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -1.3388130219749756 0 1;
	setAttr ".a" 0;
createNode polyPlane -n "polyPlane1";
	rename -uid "86B58DE9-4AB4-3925-7888-629BC35DA7CA";
	setAttr ".sw" 1;
	setAttr ".sh" 1;
	setAttr ".cuv" 2;
createNode polyTweak -n "polyTweak4";
	rename -uid "0E5B8250-45B4-3576-231F-D685D52254B9";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[0]" -type "float3" 0 -4.8187728e-017 0.050047915 ;
	setAttr ".tk[1]" -type "float3" -0.025023956 -4.8684224e-017 0.050047915 ;
	setAttr ".tk[3]" -type "float3" -0.025023956 -4.9649567e-019 0 ;
createNode polySplit -n "polySplit9";
	rename -uid "6738D60C-4E98-91C5-A25A-04845CE885F5";
	setAttr -s 2 ".e[0:1]"  0.30000001 0.30000001;
	setAttr -s 2 ".d[0:1]"  -2147483648 -2147483645;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit10";
	rename -uid "4FB7202B-49C3-8023-0D14-00AA59C45D9B";
	setAttr -s 3 ".e[0:2]"  0.40000001 0.40000001 0.40000001;
	setAttr -s 3 ".d[0:2]"  -2147483647 -2147483642 -2147483646;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent2";
	rename -uid "0EF0CB62-4298-CBB4-3A51-E396364E5D32";
	setAttr ".dc" -type "componentList" 1 "f[3]";
createNode polySplit -n "polySplit11";
	rename -uid "F7D1FD52-42E1-6A98-BB07-3290DFADCC3A";
	setAttr -s 3 ".e[0:2]"  0.69999999 0.69999999 0.69999999;
	setAttr -s 3 ".d[0:2]"  -2147483643 -2147483642 -2147483641;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit12";
	rename -uid "CFF2879E-4A5D-9A8F-6E49-B9A346C19584";
	setAttr -s 3 ".e[0:2]"  0.40000001 0.40000001 0.40000001;
	setAttr -s 3 ".d[0:2]"  -2147483643 -2147483642 -2147483641;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit13";
	rename -uid "7ED18841-4911-BD37-DEBF-9B9A2A01E2DE";
	setAttr -s 4 ".e[0:3]"  0.60000002 0.60000002 0.60000002 0.60000002;
	setAttr -s 4 ".d[0:3]"  -2147483645 -2147483634 -2147483629 -2147483639;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent3";
	rename -uid "640199B1-49F0-CB08-3D1D-28B525C5E8D1";
	setAttr ".dc" -type "componentList" 1 "f[8]";
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "E6858FB5-4500-8FC9-6B96-9F98BC01367D";
	setAttr ".ics" -type "componentList" 1 "f[0:8]";
	setAttr ".ix" -type "matrix" 1.3035559450655838 0 0 0 0 2.2204460492503131e-016 1 0
		 0 -1.3035559450655838 2.8944756481976337e-016 0 0.77200970517622913 -1.5222726580939725 0.27273055072892138 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.75569969 -1.5548928 0.27273056 ;
	setAttr ".rs" 42591;
	setAttr ".lt" -type "double3" 0 2.2204460492503131e-016 -0.54847455354641461 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.12023173264343723 -2.2392909126028382 0.27273055072892133 ;
	setAttr ".cbx" -type "double3" 1.3911676144189733 -0.87049468556118059 0.27273055072892138 ;
createNode polyNormal -n "polyNormal1";
	rename -uid "D920FF48-4E59-D987-F7FE-FD9505FF3448";
	setAttr ".ics" -type "componentList" 1 "f[0:35]";
	setAttr ".unm" no;
createNode polyMapSew -n "polyMapSew1";
	rename -uid "55198076-486E-020E-FD16-BE8281BE6425";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:19]";
createNode polyTweak -n "polyTweak5";
	rename -uid "D3FDCEB1-41A2-A2F8-F6B6-78A94D2F765F";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[0:7]" -type "float3"  -0.88566214 -0.96355206 0
		 0.88566214 -0.96355206 0 -0.88566214 -0.96355212 0 0.88566214 -0.96355212 0 -0.88566214
		 -0.96355212 0 0.88566214 -0.96355212 0 -0.88566214 -0.96355206 0 0.88566214 -0.96355206
		 0;
createNode polyMapCut -n "polyMapCut1";
	rename -uid "94BE98D0-4CA3-3BD5-9D96-AEA8F1D3CDB7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[0]" "e[12]";
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "7C35D62A-447D-970B-5F5B-40AECBBF5713";
	setAttr ".uopa" yes;
	setAttr -s 12 ".uvtk";
	setAttr ".uvtk[1]" -type "float2" -0.13366452 0.05665189 ;
	setAttr ".uvtk[2]" -type "float2" 0.052304029 0.25924885 ;
	setAttr ".uvtk[3]" -type "float2" -0.14109588 0.28681093 ;
	setAttr ".uvtk[4]" -type "float2" 0.1738314 0.13920712 ;
	setAttr ".uvtk[5]" -type "float2" -0.2721343 0.16552019 ;
	setAttr ".uvtk[6]" -type "float2" 0.13984784 0.13024932 ;
	setAttr ".uvtk[7]" -type "float2" -0.26382995 0.17715478 ;
	setAttr ".uvtk[9]" -type "float2" -0.053896636 -0.20707482 ;
	setAttr ".uvtk[10]" -type "float2" -0.035095483 0.025687993 ;
	setAttr ".uvtk[11]" -type "float2" -0.026320815 0.26866299 ;
	setAttr ".uvtk[12]" -type "float2" -0.062535316 0.057451069 ;
createNode polyMapCut -n "polyMapCut2";
	rename -uid "3D4249B8-43E6-DF18-278B-38B5BA1D4DAF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[10:11]";
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "3E0AC978-41AC-26DD-10D5-25B4D17C6E1B";
	setAttr ".uopa" yes;
	setAttr -s 15 ".uvtk[0:14]" -type "float2" 0.44599131 0.23374565 0.48753378
		 0.22536506 0.44875687 0.24401827 0.47029322 0.23764838 0.45004669 0.25025707 0.47150391
		 0.24258204 0.4416641 0.26716828 0.48261148 0.24862345 0.44599131 0.23374565 0.46449962
		 0.25330818 0.457816 0.2451091 0.454822 0.24178995 0.46892533 0.25887966 0.47669896
		 0.26210093 0.45061228 0.29603928;
createNode polyMapSew -n "polyMapSew2";
	rename -uid "9FBE0760-4A96-AC1C-738B-948C61AFAD7F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:51]";
createNode polyMapCut -n "polyMapCut3";
	rename -uid "C37D0986-455D-EAD8-58D4-50B91F0DDE7B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[0]" "e[4:5]" "e[12]" "e[16]" "e[24]" "e[30]" "e[34]";
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "9990D209-4D0B-EFE8-4644-37AB00CB3AC0";
	setAttr ".uopa" yes;
	setAttr -s 35 ".uvtk[0:34]" -type "float2" 0.46609095 0.48215654 0.32209989
		 0.39902487 0.52725899 0.5954349 0.32661772 0.66187477 0.64963675 0.48490867 0.19743013
		 0.53881669 0.63112795 0.54984927 0.18784654 0.55524647 0.44096899 0.38943657 0.41605127
		 0.18167382 0.37724069 0.45684412 0.3863492 0.66134524 0.3840065 0.4133102 0.36773103
		 0.18148535 0.4998562 0.38170925 0.46046877 0.17907193 0.4639318 0.36205044 0.46689868
		 0.60425538 0.46609095 0.80215657 0.48737821 0.83216935 0.43243396 0.8441813 0.37735006
		 0.85278678 0.32667446 0.87793714 0.19078445 0.54714751 0.37216482 0.21602643 0.42019105
		 0.20956886 0.46570134 0.19612098 0.63212836 0.51364934 0.31900585 0.85189313 0.55617082
		 0.82206857 0.44972038 0.4815816 0.41953158 0.47108629 0.38212812 0.39639577 0.32465503
		 0.44237724 0.56447446 0.37450114;
createNode polyMapSew -n "polyMapSew3";
	rename -uid "DF5A3474-4DEF-4E54-A149-AD93DFB68CCE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:71]";
createNode polyTweak -n "polyTweak6";
	rename -uid "5F053B9D-4974-669F-D319-E9BA7AD53B4D";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk[0:35]" -type "float3"  0 0.0079325512 0 0 0.0079325512
		 0 0 0.0079325512 0 0 0.0079325512 0 0 0.0079325512 0 0 0.0079325512 0 0 0.0079325512
		 0 0 0.0079325512 0 0 0.0079325512 0 0 0.0079325512 0 0 0.0079325512 0 0 0.0079325512
		 0 0 0.0079325512 0 0 0.0079325512 0 0 0.0079325512 0 0 0.0079325512 0 0 0.0079325512
		 0 0 0.0079325512 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode polyMapSew -n "polyMapSew4";
	rename -uid "1EC2E454-44D7-6EB0-B22E-1D9B0710846D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:71]";
createNode polyMapCut -n "polyMapCut4";
	rename -uid "AEAB65E1-40D9-C29E-2838-81B63CCC2BF1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[0]" "e[4]" "e[7]" "e[9]" "e[12]" "e[17]" "e[19]" "e[23]" "e[52]" "e[56]" "e[65]";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "06D3BD66-4B1B-1F9B-99EB-289EF62683E8";
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
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1304\n                -height 730\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1304\n            -height 730\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
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
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 21 100 -ps 2 79 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1304\\n    -height 730\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1304\\n    -height 730\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "58EFDF23-4D06-9D12-085E-478AAA4ECC96";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyTweakUV -n "polyTweakUV4";
	rename -uid "862080FB-417E-24D7-9892-DB8B94E26701";
	setAttr ".uopa" yes;
	setAttr -s 43 ".uvtk[0:42]" -type "float2" 0.50832313 0.032805711 0.50832313
		 -0.50533247 -0.029815063 -0.50533247 0.34688169 0.032805711 0.34688169 -0.50533247
		 0.50832313 -0.18244956 0.34688169 -0.18244956 -0.029815063 -0.18244956 0.50832313
		 -0.40846759 0.34688169 -0.40846759 -0.029815063 -0.40846759 0.50832313 -0.27285677
		 0.34688169 -0.27285677 -0.029815063 -0.27285677 0.12086362 -0.50533247 0.12086362
		 -0.40846759 0.12086362 -0.27285677 0.12086362 -0.18244956 0.34688169 -0.50533247
		 0.50832313 -0.50533247 0.50832313 -0.40846759 -0.029815063 -0.40846759 -0.029815063
		 -0.50533247 0.12086362 -0.50533247 0.50832313 0.032805711 0.34688169 0.032805711
		 0.34688169 -0.18244956 0.50832313 -0.18244956 0.34688169 -0.27285677 0.50832313 -0.27285677
		 0.12086362 -0.27285677 -0.029815063 -0.27285677 0.12086362 -0.18244956 -0.029815063
		 -0.18244956 -0.029815063 -0.18244956 -0.029815063 -0.18244956 0.12086362 -0.27285677
		 0.34688169 -0.27285677 0.12086362 -0.18244956 -0.029815063 -0.27285677 -0.029815063
		 -0.40846759 0.34688169 -0.18244956 0.34688169 0.032805711;
createNode polyMapCut -n "polyMapCut5";
	rename -uid "BD063907-447C-4A27-1516-3CB77FBC7666";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[40]";
createNode Unfold3DUnfold -n "Unfold3DUnfold1";
	rename -uid "D597FC23-4FAF-3E98-C9B2-2EBF0DE1CD82";
	setAttr ".uvl" -type "Int32Array" 44 0 1 2 3 4 5
		 6 7 8 9 10 11 12 13 14 15 16 17
		 18 19 20 21 22 23 24 25 26 27 28 29
		 30 31 32 33 34 35 36 37 38 39 40 41
		 42 43 ;
	setAttr ".mdp" -type "string" "|pPlane1|pPlaneShape1";
	setAttr ".usn" -type "string" "map1";
	setAttr ".miee" yes;
	setAttr ".mue" -type "floatArray" 44 0.40281203 0.26917881 0.29051167 0.43525329
		 0.25132278 0.30945385 0.46750689 0.38632438 0.27881563 0.29374722 0.29098797 0.29111049
		 0.33842373 0.31642255 0.21519414 0.22921216 0.0009765625 0.43908691 0.26347575 0.27740601
		 0.0009765625 0.23036313 0.18876368 0.23066333 0.40546173 0.32676497 0.34955347 0.34159106
		 0.35316327 0.32062206 0.32262614 0.30120265 0.36971328 0.3938365 0.16160667 0.25883624
		 0.33099636 0.0009765625 0.18728153 0.1824332 0.2213899 0.26987615 0.28168836 0.1685338 ;
	setAttr ".mve" -type "floatArray" 44 0.84258586 0.8423937 0.99902344 0.86507666
		 0.85928118 0.77909654 0.9114303 0.90920216 0.82614899 0.18988068 0.98106992 0.79679722
		 0.94184512 0.94649744 0.87815279 0.27658913 0.055194546 0.87912911 0.85410702 0.84182483
		 0.0009765625 0.95613772 0.94862586 0.88542855 0.8808068 0.77488691 0.84531885 0.8115626
		 0.93348515 0.82324463 0.88812166 0.95409042 0.9048804 0.9784435 0.7604413 0.78980434
		 0.92231292 0.054609325 0.73399359 0.81773162 0.93611968 0.7465058 0.70900363 0.87703812 ;
createNode polyMapCut -n "polyMapCut6";
	rename -uid "C4384690-4240-E4FA-1C3B-CCB9A70B34F0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[14]" "e[25]";
createNode polyMapCut -n "polyMapCut7";
	rename -uid "FF1D3EC3-4C3A-BFFD-D243-D5B634605E25";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[41]" "e[47]" "e[60]" "e[66:67]" "e[71]";
createNode Unfold3DUnfold -n "Unfold3DUnfold2";
	rename -uid "64FD1450-4201-CFD3-0BEE-0DA2B6C10892";
	setAttr ".uvl" -type "Int32Array" 53 0 1 2 3 4 5
		 6 7 8 9 10 11 12 13 14 15 16 17
		 18 19 20 21 22 23 24 25 26 27 28 29
		 30 31 32 33 34 35 36 37 38 39 40 41
		 42 43 44 45 46 47 48 49 50 51 52 ;
	setAttr ".mdp" -type "string" "|pPlane1|pPlaneShape1";
	setAttr ".usn" -type "string" "map1";
	setAttr ".miee" yes;
	setAttr ".mue" -type "floatArray" 53 0.55931419 0.26143211 0.84465837 0.66340464
		 0.18694539 0.41817999 0.79138458 0.99902344 0.30816129 0.66539174 0.79173565 0.37118417
		 0.30926341 0.71764386 0.084750846 0.54986221 0.56498247 0.9160589 0.21829851 0.28024453
		 0.31636885 0.79173565 0.019671991 0.10197873 0.52943981 0.57567823 0.40739954 0.41933122
		 0.34524089 0.3758322 0.24073464 0.71764386 0.82773262 0.17874105 0.11465137 0.66824931
		 0.25309986 0.6657657 0.20651707 0.081858419 0.026972426 0.37022913 0.53065318 0.0009765625
		 0.1078296 0.17214219 0.7035498 0.2804665 0.91058719 0.66824931 0.13817422 0.046064079
		 0.84465837 ;
	setAttr ".mve" -type "floatArray" 53 0.48823881 0.4248144 0.58552784 0.43086717
		 0.42290142 0.48370284 0.35716456 0.24638626 0.44833764 0.54319286 0.58552784 0.47299409
		 0.16770758 0.58552784 0.4670471 0.69841683 0.6594438 0.29020062 0.29189894 0.31833476
		 0.30702275 0.42973295 0.22666526 0.27216622 0.31306201 0.24210107 0.18678099 0.29425776
		 0.20231301 0.2958881 0.094003811 0.42973295 0.11972447 0.0009765625 0.71254331 0.58552784
		 0.18250954 0.43116325 0.66956669 0.65726358 0.55875808 0.5884496 0.59979975 0.47587174
		 0.53640532 0.61957484 0.1831889 0.052565318 0.076422282 0.42973292 0.055532701 0.14047261
		 0.42973295 ;
createNode polyMapCut -n "polyMapCut8";
	rename -uid "3A983833-4CB1-044F-37E1-B8BA347699C0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[43]";
createNode Unfold3DUnfold -n "Unfold3DUnfold3";
	rename -uid "C6213EBD-4BF6-4548-51BE-AE96D8D0D979";
	setAttr ".uvl" -type "Int32Array" 54 0 1 2 3 4 5
		 6 7 8 9 10 11 12 13 14 15 16 17
		 18 19 20 21 22 23 24 25 26 27 28 29
		 30 31 32 33 34 35 36 37 38 39 40 41
		 42 43 44 45 46 47 48 49 50 51 52 53 ;
	setAttr ".mdp" -type "string" "|pPlane1|pPlaneShape1";
	setAttr ".usn" -type "string" "map1";
	setAttr ".miee" yes;
	setAttr ".mue" -type "floatArray" 54 0.63020593 0.32011569 0.8959446 0.92698455
		 0.22816262 0.48324376 0.95444185 0.99902344 0.37010255 0.96090001 0.83370161 0.43506217
		 0.41794902 0.74656141 0.096407689 0.82502455 0.84251964 0.98119193 0.30834791 0.37753311
		 0.42446536 0.83370161 0.089722365 0.17104621 0.6958155 0.71201593 0.53137672 0.54604805
		 0.45064586 0.49217418 0.38179165 0.74656141 0.7666142 0.3267017 0.071336783 0.68846798
		 0.38116241 0.96158105 0.18539837 0.048817955 0.0094551099 0.3979795 0.56684327 0.0009765625
		 0.10479648 0.15963966 0.73978865 0.43148893 0.78445816 0.68846798 0.27024099 0.14204788
		 0.8959446 0.9092707 ;
	setAttr ".mve" -type "floatArray" 54 0.79677778 0.62781739 0.76018655 0.46278551
		 0.60408247 0.74288684 0.30063173 0.037391048 0.66962433 0.73617285 0.76018655 0.71652091
		 0.34238201 0.76018655 0.63325965 0.91873336 0.87362236 0.14266506 0.44862238 0.49500608
		 0.49119714 0.57695454 0.34261525 0.40946367 0.54551703 0.42571276 0.3718068 0.50546622
		 0.37485859 0.49575153 0.26782167 0.57695454 0.10622237 0.14444838 0.9217819 0.76018655
		 0.34770671 0.26035634 0.89857852 0.85155708 0.72517413 0.85224932 0.91173846 0.62155002
		 0.7213791 0.83388132 0.26402494 0.22541718 0.0009765625 0.57695454 0.19489957 0.25680506
		 0.57695454 0.57664418 ;
createNode polyTweakUV -n "polyTweakUV5";
	rename -uid "03F07998-4A7D-78B6-D7FC-31BD348D2DE2";
	setAttr ".uopa" yes;
	setAttr -s 46 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" -0.58014506 0.10605729 ;
	setAttr ".uvtk[1]" -type "float2" -0.59522808 0.055503726 ;
	setAttr ".uvtk[3]" -type "float2" -0.49596304 0.068952233 ;
	setAttr ".uvtk[4]" -type "float2" -0.59546602 0.048253 ;
	setAttr ".uvtk[5]" -type "float2" -0.59552252 0.078667581 ;
	setAttr ".uvtk[6]" -type "float2" -0.52887154 0.047213972 ;
	setAttr ".uvtk[7]" -type "float2" -0.58811677 0.014726933 ;
	setAttr ".uvtk[8]" -type "float2" -0.60472304 0.058599174 ;
	setAttr ".uvtk[9]" -type "float2" -0.64000458 0 ;
	setAttr ".uvtk[11]" -type "float2" -0.60093659 0.068855762 ;
	setAttr ".uvtk[12]" -type "float2" -0.53099579 0.031452745 ;
	setAttr ".uvtk[14]" -type "float2" -0.60120791 0.033397973 ;
	setAttr ".uvtk[15]" -type "float2" -0.64000458 0 ;
	setAttr ".uvtk[16]" -type "float2" -0.64577949 0.014889657 ;
	setAttr ".uvtk[17]" -type "float2" -0.56400871 0.026330113 ;
	setAttr ".uvtk[18]" -type "float2" -0.58412981 0.051502556 ;
	setAttr ".uvtk[19]" -type "float2" -0.58567113 0.060911536 ;
	setAttr ".uvtk[20]" -type "float2" -0.58402723 0.067443758 ;
	setAttr ".uvtk[22]" -type "float2" -0.59491444 -0.0057180226 ;
	setAttr ".uvtk[23]" -type "float2" -0.5825001 0.016082674 ;
	setAttr ".uvtk[24]" -type "float2" -0.53601885 0.10159272 ;
	setAttr ".uvtk[25]" -type "float2" -0.52969897 0.095151901 ;
	setAttr ".uvtk[26]" -type "float2" -0.52953196 0.067717344 ;
	setAttr ".uvtk[27]" -type "float2" -0.5586912 0.082042098 ;
	setAttr ".uvtk[28]" -type "float2" -0.53182805 0.069476634 ;
	setAttr ".uvtk[29]" -type "float2" -0.5674777 0.075596303 ;
	setAttr ".uvtk[30]" -type "float2" -0.5654732 -0.025079414 ;
	setAttr ".uvtk[32]" -type "float2" -0.5952282 0.072150744 ;
	setAttr ".uvtk[33]" -type "float2" -0.55010343 -0.054459527 ;
	setAttr ".uvtk[34]" -type "float2" -0.64000458 0 ;
	setAttr ".uvtk[36]" -type "float2" -0.56178439 0.020142227 ;
	setAttr ".uvtk[37]" -type "float2" -1.096279 -0.25050852 ;
	setAttr ".uvtk[38]" -type "float2" -0.65004534 0.039940536 ;
	setAttr ".uvtk[39]" -type "float2" -0.64000458 0 ;
	setAttr ".uvtk[40]" -type "float2" -0.64000458 0 ;
	setAttr ".uvtk[41]" -type "float2" -0.61266065 0.073533058 ;
	setAttr ".uvtk[42]" -type "float2" -0.5884679 0.12110788 ;
	setAttr ".uvtk[43]" -type "float2" -0.64000458 0 ;
	setAttr ".uvtk[44]" -type "float2" -0.60701877 0.025772512 ;
	setAttr ".uvtk[45]" -type "float2" -0.62525499 0.036309361 ;
	setAttr ".uvtk[46]" -type "float2" -0.55908048 0.089726448 ;
	setAttr ".uvtk[47]" -type "float2" -0.54216814 -0.022003621 ;
	setAttr ".uvtk[48]" -type "float2" -0.61755514 0.058040705 ;
	setAttr ".uvtk[50]" -type "float2" -0.56935513 -0.045557275 ;
	setAttr ".uvtk[51]" -type "float2" -0.58893758 -0.025500298 ;
	setAttr ".uvtk[53]" -type "float2" -0.49120221 0.079690635 ;
createNode polyMapCut -n "polyMapCut9";
	rename -uid "EDAD18C7-4381-A51A-5028-EF8DBB0F9BD7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[57]" "e[70]";
createNode Unfold3DUnfold -n "Unfold3DUnfold4";
	rename -uid "0226FCCF-4EE3-0CB7-41CE-469A8F45A7A3";
	setAttr ".uvl" -type "Int32Array" 57 0 1 2 3 4 5
		 6 7 8 9 10 11 12 13 14 15 16 17
		 18 19 20 21 22 23 24 25 26 27 28 29
		 30 31 32 33 34 35 36 37 38 39 40 41
		 42 43 44 45 46 47 48 49 50 51 52 53
		 54 55 56 ;
	setAttr ".mdp" -type "string" "|pPlane1|pPlaneShape1";
	setAttr ".usn" -type "string" "map1";
	setAttr ".miee" yes;
	setAttr ".mue" -type "floatArray" 57 0.62275398 0.31672162 0.90586692 0.92405486
		 0.22438063 0.47828287 0.95253849 0.99902344 0.36616951 0.98286301 0.8397392 0.43078238
		 0.77190989 0.74716043 0.093949318 0.83850724 0.85617536 0.98041844 0.30443469 0.37353715
		 0.42091978 0.8397392 0.089542948 0.16876262 0.69480497 0.7126258 0.53877544 0.54857796
		 0.77190989 0.49418482 0.37471601 0.74716043 0.76935762 0.33142355 0.068731286 0.68544126
		 0.62864321 0.98290908 0.18190886 0.045796432 0.009289436 0.39063925 0.5570426 0.0009765625
		 0.1038253 0.1556409 0.74140763 0.42964995 0.78797257 0.68544126 0.26974297 0.14310482
		 0.90586692 0.90448791 0.98290908 0.98207098 0.62864321 ;
	setAttr ".mve" -type "floatArray" 57 0.78494191 0.60847384 0.76653123 0.45775789
		 0.58543766 0.72697991 0.29795709 0.038975853 0.65203536 0.73701584 0.76653123 0.69990867
		 0.96312457 0.76653123 0.60914016 0.93097037 0.88344902 0.14253142 0.43592298 0.48580876
		 0.48352194 0.57186329 0.30998969 0.38241801 0.53651422 0.41849357 0.3669872 0.49771643
		 0.76845658 0.48822889 0.21458048 0.57186329 0.10449894 0.099016875 0.89565575 0.76653123
		 0.96312457 0.13059394 0.87441826 0.82598084 0.69940507 0.8315441 0.89662409 0.59688908
		 0.69734824 0.81049281 0.25969034 0.18278351 0.0009765625 0.57186323 0.14683712 0.21866402
		 0.57186329 0.56993794 0.13059394 0.73497546 0.76845658 ;
createNode polyTweakUV -n "polyTweakUV6";
	rename -uid "7A502F57-4619-8B69-A0CC-5B96D0E6AD9F";
	setAttr ".uopa" yes;
	setAttr -s 57 ".uvtk[0:56]" -type "float2" 0.27776924 0.20198359 0.56245017
		 0.3396067 0.079018921 0.21954325 0.013049971 0.51948321 0.64472288 0.35169882 0.4144204
		 0.23210965 -0.012989912 0.65320057 -0.03963235 0.88994265 0.51832175 0.29567373 -0.07571952
		 0.21545376 0.094905466 0.21954325 0.45829961 0.2541008 0.15437251 0.022348747 0.11714664
		 0.21954325 0.74668515 0.31891644 0.060980264 0.031785846 0.045170374 0.078821428
		 -0.028964862 0.79528135 0.58435631 0.50000036 0.52068007 0.44897538 0.47766533 0.45137876
		 0.094905466 0.26631033 0.74962085 0.56734222 0.69705957 0.52496272 0.22750095 0.41230828
		 0.22399035 0.52335691 0.39100483 0.52086383 0.36483249 0.42937338 0.15437251 0.0691159
		 0.41300991 0.44054937 0.50987864 0.65657735 0.11714664 0.26631033 0.15484279 0.8125301
		 0.54852247 0.74328297 0.7600171 0.062177114 0.1319741 0.21954325 0.18879095 0.022348747
		 -0.079819903 0.82132709 0.65926403 0.087257512 0.78503972 0.12391674 0.82632655 0.23816551
		 0.48159352 0.12971827 0.31501463 0.084322758 0.83030194 0.32645321 0.74674237 0.24182659
		 0.6870212 0.14384277 0.17843279 0.67543101 0.46870163 0.68313211 0.15329134 0.91176111
		 0.1319741 0.26631033 0.59608454 0.70685619 0.70329404 0.64566809 0.079018921 0.26631033
		 0.014355134 0.40450191 -0.076366171 0.82013518 -0.081746504 0.22338741 0.18879095
		 0.0691159;
createNode polyUnite -n "polyUnite1";
	rename -uid "956C3DC3-47FA-B1AC-972C-619E91A89864";
	setAttr -s 5 ".ip";
	setAttr -s 5 ".im";
createNode groupId -n "groupId1";
	rename -uid "24810122-4ED2-BBFA-C75E-5885A509BE96";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "12090997-4706-3B12-3BD3-329722CCD451";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:9]";
createNode groupId -n "groupId3";
	rename -uid "B46F7DAE-40F6-A2A7-9D23-869B6F5851F5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "F66D1679-4DDD-9CC4-123F-A49FCF741FB8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:25]";
createNode groupId -n "groupId5";
	rename -uid "E8036D0E-4795-3E4D-A07C-23929479F8EF";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "65737136-4F69-99EF-DD30-80B9AC2C2316";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:35]";
createNode groupId -n "groupId6";
	rename -uid "75847D33-462A-322C-55B3-81B5DFBCC50C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4";
	rename -uid "8872CFE2-487B-7DE2-BFB1-EBA1CAFE2FAE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2";
	rename -uid "1B955BCD-4B1E-512D-13D1-C399D12AB01F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId9";
	rename -uid "C1027AAA-446C-8838-7D80-87B19B0092E3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId10";
	rename -uid "3999DE8C-4F5D-7D6A-D78E-D387A2BD78BF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId8";
	rename -uid "5A33AD8C-481C-ABE3-F102-76B7F95F428D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7";
	rename -uid "944137EE-4C1F-E7A4-4D84-59BBCC9E4C13";
	setAttr ".ihi" 0;
createNode polyMapSew -n "polyMapSew5";
	rename -uid "1C9E2F36-47B4-EAB2-0E19-FEB1C3460D6C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:43]";
createNode polyTweak -n "polyTweak7";
	rename -uid "2952040E-400A-5FA3-AD39-64A16C841483";
	setAttr ".uopa" yes;
	setAttr -s 14 ".tk";
	setAttr ".tk[8]" -type "float3" 0 -0.19113681 0 ;
	setAttr ".tk[9]" -type "float3" 0 -0.19113681 0 ;
	setAttr ".tk[10]" -type "float3" 0 -0.19113681 0 ;
	setAttr ".tk[11]" -type "float3" 0 -0.19113681 0 ;
	setAttr ".tk[12]" -type "float3" -0.26877052 0 0 ;
	setAttr ".tk[13]" -type "float3" -0.26877052 0 0 ;
	setAttr ".tk[14]" -type "float3" -0.26877052 0 0 ;
	setAttr ".tk[15]" -type "float3" -0.26877052 0 0 ;
	setAttr ".tk[16]" -type "float3" 0 0.2275438 0 ;
	setAttr ".tk[17]" -type "float3" 0 0.2275438 0 ;
	setAttr ".tk[18]" -type "float3" 0 0.2275438 0 ;
	setAttr ".tk[19]" -type "float3" 0 0.2275438 0 ;
createNode polyMapCut -n "polyMapCut10";
	rename -uid "ED077DD2-4077-8F90-7F56-EDB4F2679861";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[11]" "e[13:15]" "e[18]" "e[20:21]" "e[23:25]" "e[27]" "e[29:31]" "e[34]";
createNode Unfold3DUnfold -n "Unfold3DUnfold5";
	rename -uid "14982DDE-40F4-77EF-A490-FC99D3BB3B79";
	setAttr ".uvl" -type "Int32Array" 38 0 1 2 3 4 5
		 6 7 8 9 10 11 12 13 14 15 16 17
		 18 19 20 21 22 23 24 25 26 27 28 29
		 30 31 32 33 34 35 36 37 ;
	setAttr ".mdp" -type "string" "|croix|croixShape";
	setAttr ".usn" -type "string" "map1";
	setAttr ".miee" yes;
	setAttr ".mue" -type "floatArray" 38 0.36528832 0.48346639 0.35984233 0.4873901
		 0.22499578 0.24377447 0.23048991 0.21831681 0.36229545 0.36493373 0.11137091 0.23289615
		 0.37555349 0.0009765625 0.24784513 0.58889723 0.22735468 0.22275142 0.47933298 0.35703522
		 0.30625227 0.33153281 0.28375649 0.25750381 0.34771565 0.37951577 0.3427256 0.098165594
		 0.25560698 0.10256017 0.58294111 0.37180907 0.36794633 0.0078639034 0.25163588 0.10708543
		 0.24002177 0.49098015 ;
	setAttr ".mve" -type "floatArray" 38 0.29914632 0.2957356 0.40868136 0.39407268
		 0.40034688 0.70193118 0.29095539 0.0072740437 0.49006698 0.61181343 0.49167153 0.4896673
		 0.89347917 0.31590593 0.80270404 0.38584077 0.21199425 0.090774663 0.21027856 0.21147145
		 0.31047863 0.36826473 0.39015663 0.33129418 0.085085638 0.9941479 0.0009765625 0.22274384
		 0.99902344 0.30659926 0.28949538 0.79788148 0.69730842 0.41211125 0.89834625 0.40467182
		 0.6157251 0.48031592 ;
createNode polyTweakUV -n "polyTweakUV7";
	rename -uid "CE954597-4AFB-9CBB-4135-2E87CBFACE50";
	setAttr ".uopa" yes;
	setAttr -s 38 ".uvtk[0:37]" -type "float2" -0.16909662 0.33221206 -0.22562371
		 0.33741894 -0.16979797 0.27955881 -0.23047666 0.29041466 -0.10492828 0.27947679 -0.12304321
		 0.13552648 -0.10425427 0.33206227 -0.089845665 0.46763268 -0.17343347 0.24063328
		 -0.17837796 0.18237308 -0.053240523 0.23227945 -0.111414 0.23691323 -0.19198126 0.047721386
		 0.0049729338 0.31316856 -0.1280403 0.087359503 -0.27886918 0.29742816 -0.10036498
		 0.36980531 -0.094494827 0.42775378 -0.22105972 0.37824413 -0.16249144 0.37397566
		 -0.14114945 0.32499692 -0.15501037 0.29807064 -0.132778 0.2861357 -0.11841863 0.31354895
		 -0.15420496 0.4342573 -0.19692302 -0.00039881282 -0.1492711 0.47441098 -0.038783334
		 0.3607488 -0.13769414 -0.0064805709 -0.043423876 0.32069853 -0.27310276 0.34341547
		 -0.18729733 0.093417928 -0.18240586 0.14149526 -0.0012355698 0.26727536 -0.1327479
		 0.041643087 -0.048557013 0.27383968 -0.11863905 0.17672247 -0.23480396 0.24919608;
createNode polyTweakUV -n "polyTweakUV8";
	rename -uid "B3FE240E-400E-18B9-33CE-F7881CD2C906";
	setAttr ".uopa" yes;
	setAttr -s 137 ".uvtk[0:136]" -type "float2" -0.62350488 0.11909699 -0.51578754
		 0.15203167 -0.58593184 0.13241613 -0.53262073 0.14687516 -0.58742112 0.14005582 -0.5359146
		 0.15277208 -0.61632681 0.1454822 -0.52267021 0.16483213 -0.53821957 0.11909699 -0.5623644
		 0.16173126 -0.55409682 0.14437653 -0.55015278 0.13731895 -0.56523883 0.17544343 -0.52317989
		 0.1770959 -0.62035203 0.16159882 -0.30322281 0.0017858343 -0.30452707 -0.012984972
		 -0.2992129 -0.013055604 -0.29564896 -0.0035517635 -0.29117647 -0.014385384 -0.29525772
		 -0.016555171 -0.29276708 -0.019677382 -0.29119769 -0.020405155 -0.31724063 -0.029109456
		 -0.33262041 -0.042786039 -0.30969611 -0.045305111 -0.31067887 -0.03988073 -0.3153322
		 0.005719264 -0.311304 -0.013960104 -0.29223529 -0.020603579 -0.29560795 -0.023811148
		 -0.29405048 -0.024146067 -0.29311326 -0.019867223 -0.29755118 -0.018849175 -0.29635885
		 -0.013519924 -0.29193333 -0.0089735789 -0.31761554 -0.015542608 -0.33262041 0.0059346752
		 -0.31000617 -0.039078034 -0.30934289 -0.026309304 -0.30889419 -0.041999437 -0.2988607
		 -0.035323478 -0.30121902 -0.031537984 -0.29574874 -0.034411825 -0.29654256 -0.03171042
		 -0.29838732 -0.027036302 -0.29518858 -0.028814413 -0.29381719 -0.026206367 -0.29289082
		 -0.025221037 -0.30297568 -0.021269368 -0.31107298 -0.011775594 -0.31270996 -0.011819284
		 -0.31474355 -0.011392336 -0.30786553 -0.005191247 -0.32335177 -0.022089468 -0.33334258
		 -0.033350918 -0.33063105 -0.038222946 -0.31073478 -0.00133608 -0.30218306 -0.0065580411
		 -0.30551687 -0.014702957 -0.29938188 -0.029408671 -0.29681996 -0.0091709895 -0.30784634
		 -0.014070135 -0.3080906 -0.0058435006 -0.32334968 -0.04221008 -0.31631628 -0.035664834
		 -0.31805852 -0.046480097 -0.31116048 -0.037629463 -0.31635496 -0.0069753332 -0.32212195
		 -0.010937672 -0.31834862 -0.0068361564 -0.33279148 -0.01434062 -0.32906869 -0.01017378
		 -0.33467224 -0.010775011 -0.33629787 -0.016107421 -0.31034663 0.0077219801 -0.32101503
		 0.0054813819 -0.32094923 -0.0018959465 -0.31327739 -0.0027102055 -0.31463459 -0.0046140971
		 -0.30938497 -0.0053968234 -0.33203152 -0.0044919075 -0.33646363 -0.0061551733 -0.33258972
		 -0.0017409744 -0.33724606 -0.0031812014 -0.29755881 0.007402976 -0.29755881 -0.048026547
		 -0.27872971 -0.048026547 -0.27872971 0.007402976 -0.30348089 0.0030426579 -0.29663673
		 0.0040924745 -0.30310705 -0.011692923 -0.29572091 -0.0056828661 -0.31042114 -0.0029825987
		 -0.31003836 -0.0015181126 -0.32391956 0.007402976 -0.32391956 -0.048026547 -0.2912592
		 -0.010684233 -0.30147305 -0.018473487 -0.29507807 -0.02008174 -0.28828442 -0.014017563
		 -0.34149337 0.007402976 -0.34149337 -0.048026487 -0.34148633 0.0071777301 -0.34148633
		 -0.048251852 -0.30069271 -0.048251852 -0.30069271 0.0071777301 -0.55015278 0.13731895
		 -0.53821957 0.11909699 -0.51578748 0.15203167 -0.53262067 0.14687516 -0.55409682
		 0.14437653 -0.53591454 0.15277208 -0.5623644 0.16173126 -0.52267015 0.16483213 -0.56523883
		 0.17544343 -0.52317989 0.1770959 -0.61632681 0.1454822 -0.62350488 0.11909699 -0.5859319
		 0.13241613 -0.58742118 0.14005582 -0.62035203 0.16159882 -0.55015278 0.13731895 -0.53821957
		 0.11909699 -0.51578748 0.15203167 -0.53262067 0.14687516 -0.55409682 0.14437653 -0.53591454
		 0.15277208 -0.5623644 0.16173126 -0.52267015 0.16483213 -0.56523883 0.17544343 -0.52317989
		 0.1770959 -0.61632681 0.1454822 -0.62350488 0.11909699 -0.5859319 0.13241613 -0.58742118
		 0.14005582 -0.62035203 0.16159882;
createNode lambert -n "lambert2";
	rename -uid "9C579589-4B1E-06E4-D9D5-B2A049FD9080";
createNode shadingEngine -n "lambert2SG";
	rename -uid "A7F79F83-4B23-EA89-8E72-2C9D465CF638";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "B714C71B-4B4A-07F4-C84B-409ADC4936E6";
createNode psdFileTex -n "psdFileTex1";
	rename -uid "D3107E53-4BF2-628B-5FFB-C7BE0BC10061";
	setAttr ".ftn" -type "string" "C:/Repos/ProjetFinal_Creajeux_2016-2017/Asset/texture/MAP/UV_powerup_256.psd";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "C6B8E887-4A99-CE48-DFD6-72849A2F59A3";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "C3E6EF9E-447C-2DE4-B9F6-7393B3F11CE5";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -100.08885215298552 -320.59350701949046 ;
	setAttr ".tgi[0].vh" -type "double2" 53.959404769898804 54.004713366758295 ;
	setAttr -s 4 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 1.4285714626312256;
	setAttr ".tgi[0].ni[0].y" -1.4285714626312256;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" 262.85714721679687;
	setAttr ".tgi[0].ni[1].y" -70;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" -228.75041198730469;
	setAttr ".tgi[0].ni[2].y" -22.670940399169922;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" -500.280517578125;
	setAttr ".tgi[0].ni[3].y" -42.160907745361328;
	setAttr ".tgi[0].ni[3].nvs" 1923;
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
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
select -ne :initialShadingGroup;
	setAttr -s 10 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 10 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "polyTweakUV7.out" "croixShape.i";
connectAttr "polyTweakUV7.uvtk[0]" "croixShape.uvst[0].uvtw";
connectAttr "groupId1.id" "pCubeShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape1.iog.og[0].gco";
connectAttr "groupParts1.og" "pCubeShape1.i";
connectAttr "polyTweakUV2.uvtk[0]" "pCubeShape1.uvst[0].uvtw";
connectAttr "groupId2.id" "pCubeShape1.ciog.cog[0].cgid";
connectAttr "groupId3.id" "pCubeShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape4.iog.og[0].gco";
connectAttr "groupParts2.og" "pCubeShape4.i";
connectAttr "polyTweakUV3.uvtk[0]" "pCubeShape4.uvst[0].uvtw";
connectAttr "groupId4.id" "pCubeShape4.ciog.cog[0].cgid";
connectAttr "groupId5.id" "pPlaneShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pPlaneShape1.iog.og[0].gco";
connectAttr "groupParts3.og" "pPlaneShape1.i";
connectAttr "polyTweakUV6.uvtk[0]" "pPlaneShape1.uvst[0].uvtw";
connectAttr "groupId6.id" "pPlaneShape1.ciog.cog[0].cgid";
connectAttr "groupId7.id" "pCubeShape5.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape5.iog.og[0].gco";
connectAttr "groupId8.id" "pCubeShape5.ciog.cog[0].cgid";
connectAttr "groupId9.id" "pCubeShape6.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape6.iog.og[0].gco";
connectAttr "groupId10.id" "pCubeShape6.ciog.cog[0].cgid";
connectAttr "polyTweakUV8.out" "upShape.i";
connectAttr "polyTweakUV8.uvtk[0]" "upShape.uvst[0].uvtw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCube1.out" "polyExtrudeFace1.ip";
connectAttr "croixShape.wm" "polyExtrudeFace1.mp";
connectAttr "polyTweak1.out" "polyExtrudeFace2.ip";
connectAttr "croixShape.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polyExtrudeFace3.ip";
connectAttr "croixShape.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak2.ip";
connectAttr "polyExtrudeFace3.out" "polyExtrudeFace4.ip";
connectAttr "croixShape.wm" "polyExtrudeFace4.mp";
connectAttr "polyCube2.out" "polySplit1.ip";
connectAttr "polyCube3.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polySplit3.ip";
connectAttr "polySplit3.out" "polySplit4.ip";
connectAttr "polySplit4.out" "polySplit5.ip";
connectAttr "polySplit5.out" "polyTweak3.ip";
connectAttr "polyTweak3.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "polyCloseBorder1.ip";
connectAttr "polyCloseBorder1.out" "polySplit6.ip";
connectAttr "polySplit6.out" "polySplit7.ip";
connectAttr "polySplit7.out" "polySplit8.ip";
connectAttr "polySplit8.out" "polySoftEdge1.ip";
connectAttr "pCubeShape4.wm" "polySoftEdge1.mp";
connectAttr "polyPlane1.out" "polyTweak4.ip";
connectAttr "polyTweak4.out" "polySplit9.ip";
connectAttr "polySplit9.out" "polySplit10.ip";
connectAttr "polySplit10.out" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "polySplit11.ip";
connectAttr "polySplit11.out" "polySplit12.ip";
connectAttr "polySplit12.out" "polySplit13.ip";
connectAttr "polySplit13.out" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "polyExtrudeFace5.ip";
connectAttr "pPlaneShape1.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace5.out" "polyNormal1.ip";
connectAttr "polyTweak5.out" "polyMapSew1.ip";
connectAttr "polySplit1.out" "polyTweak5.ip";
connectAttr "polyMapSew1.out" "polyMapCut1.ip";
connectAttr "polyMapCut1.out" "polyTweakUV1.ip";
connectAttr "polyTweakUV1.out" "polyMapCut2.ip";
connectAttr "polyMapCut2.out" "polyTweakUV2.ip";
connectAttr "polySoftEdge1.out" "polyMapSew2.ip";
connectAttr "polyMapSew2.out" "polyMapCut3.ip";
connectAttr "polyMapCut3.out" "polyTweakUV3.ip";
connectAttr "polyTweak6.out" "polyMapSew3.ip";
connectAttr "polyNormal1.out" "polyTweak6.ip";
connectAttr "polyMapSew3.out" "polyMapSew4.ip";
connectAttr "polyMapSew4.out" "polyMapCut4.ip";
connectAttr "polyMapCut4.out" "polyTweakUV4.ip";
connectAttr "polyTweakUV4.out" "polyMapCut5.ip";
connectAttr "polyMapCut5.out" "Unfold3DUnfold1.im";
connectAttr "Unfold3DUnfold1.om" "polyMapCut6.ip";
connectAttr "polyMapCut6.out" "polyMapCut7.ip";
connectAttr "polyMapCut7.out" "Unfold3DUnfold2.im";
connectAttr "Unfold3DUnfold2.om" "polyMapCut8.ip";
connectAttr "polyMapCut8.out" "Unfold3DUnfold3.im";
connectAttr "Unfold3DUnfold3.om" "polyTweakUV5.ip";
connectAttr "polyTweakUV5.out" "polyMapCut9.ip";
connectAttr "polyMapCut9.out" "Unfold3DUnfold4.im";
connectAttr "Unfold3DUnfold4.om" "polyTweakUV6.ip";
connectAttr "pCubeShape1.o" "polyUnite1.ip[0]";
connectAttr "pCubeShape4.o" "polyUnite1.ip[1]";
connectAttr "pPlaneShape1.o" "polyUnite1.ip[2]";
connectAttr "pCubeShape5.o" "polyUnite1.ip[3]";
connectAttr "pCubeShape6.o" "polyUnite1.ip[4]";
connectAttr "pCubeShape1.wm" "polyUnite1.im[0]";
connectAttr "pCubeShape4.wm" "polyUnite1.im[1]";
connectAttr "pPlaneShape1.wm" "polyUnite1.im[2]";
connectAttr "pCubeShape5.wm" "polyUnite1.im[3]";
connectAttr "pCubeShape6.wm" "polyUnite1.im[4]";
connectAttr "polyTweakUV2.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polyTweakUV3.out" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "polyTweakUV6.out" "groupParts3.ig";
connectAttr "groupId5.id" "groupParts3.gi";
connectAttr "polyTweak7.out" "polyMapSew5.ip";
connectAttr "polyExtrudeFace4.out" "polyTweak7.ip";
connectAttr "polyMapSew5.out" "polyMapCut10.ip";
connectAttr "polyMapCut10.out" "Unfold3DUnfold5.im";
connectAttr "Unfold3DUnfold5.om" "polyTweakUV7.ip";
connectAttr "polyUnite1.out" "polyTweakUV8.ip";
connectAttr "psdFileTex1.oc" "lambert2.c";
connectAttr "psdFileTex1.ot" "lambert2.it";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "up1Shape.iog" "lambert2SG.dsm" -na;
connectAttr "upShape.iog" "lambert2SG.dsm" -na;
connectAttr "croixShape.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "psdFileTex1.msg" "materialInfo1.t" -na;
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
connectAttr "lambert2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "lambert2SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "psdFileTex1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "place2dTexture1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "psdFileTex1.msg" ":defaultTextureList1.tx" -na;
connectAttr "pCubeShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape5.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape5.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape6.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape6.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId9.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId10.msg" ":initialShadingGroup.gn" -na;
// End of Powerup.ma
