//Maya ASCII 2016 scene
//Name: scene_arena_lilith_final.ma
//Last modified: Mon, Mar 27, 2017 11:08:36 AM
//Codeset: 1252
requires maya "2016";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOptions" -nodeType "mentalrayGlobals"
		 -nodeType "mentalrayItemsList" -dataType "byteArray" "Mayatomr" "2016.0 - 3.13.1.10 ";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l meter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201603180400-990260";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
createNode transform -s -n "persp";
	rename -uid "771EC131-4AB0-2F04-8A23-37A3EACA2849";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -14.785619565705129 131.54162153568601 678.58705598944096 ;
	setAttr ".r" -type "double3" 175.30933641185737 3059.8460817114528 -179.99999999992465 ;
	setAttr ".rp" -type "double3" 0 0 -9.0949470177292826e-015 ;
	setAttr ".rpt" -type "double3" -2.9419367657805582e-015 1.8138972288178946e-013 
		8.6134339296626713e-015 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "44F05FC3-4E17-0381-8B71-66A23D219D4E";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".fcp" 1000000;
	setAttr ".fd" 0.05;
	setAttr ".coi" 722.55401949594;
	setAttr ".ow" 0.1;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 12628.1533203125 817.38671875 3745.5396728515625 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "58C48790-411C-AB4B-196A-D49CC0FF6891";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.9836638564266607 73.83790418909544 87.051792635609516 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "3C904AAF-40B1-E12F-3EE2-688A8C619064";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.01;
	setAttr ".fcp" 100000;
	setAttr ".fd" 0.05;
	setAttr ".coi" 1.001;
	setAttr ".ow" 353.77471033107724;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "7A0C4CDD-4535-5350-168D-088391632369";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 38.97641946300984 59.923676525691143 121.37609567333624 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "AD45D0C0-479B-8F5D-23C8-B887F1E9B044";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100000;
	setAttr ".fd" 0.05;
	setAttr ".coi" 1.001;
	setAttr ".ow" 320.48759759923377;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "0013CC2A-4689-1BFD-18BD-CB8613880084";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 55.99969054647493 66.805327512401405 -26.128514424016185 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "D48C7B00-45A8-D788-D78B-E7868CEDEA31";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 1.001;
	setAttr ".ow" 170.94304116899181;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "bottom";
	rename -uid "4407FC8C-4AEA-C746-3701-DC94EBB0869C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -516.92347656250001 0 ;
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
createNode camera -n "bottomShape" -p "bottom";
	rename -uid "BF6D490A-4404-9562-8524-7298B8B3389D";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 516.92347656250001;
	setAttr ".ow" 247.85796479139034;
	setAttr ".imn" -type "string" "bottom1";
	setAttr ".den" -type "string" "bottom1_depth";
	setAttr ".man" -type "string" "bottom1_mask";
	setAttr ".hc" -type "string" "viewSet -bo %camera";
	setAttr ".o" yes;
createNode transform -n "camera1";
	rename -uid "035362EB-4730-9793-EECA-F99BEDDC4989";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.068818022078626417 0.27449402935261191 1.6326159930212356 ;
	setAttr ".r" -type "double3" -4.8000000000071106 1435.5999999999883 0 ;
createNode camera -n "cameraShape1" -p "camera1";
	rename -uid "E4A55247-4DB9-DDCA-586B-E2AA37BB27DF";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.41732 0.94488 ;
	setAttr ".ff" 0;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 1.6266169061859892;
	setAttr ".ow" 0.3;
	setAttr ".imn" -type "string" "camera1";
	setAttr ".den" -type "string" "camera1_depth";
	setAttr ".man" -type "string" "camera1_mask";
	setAttr ".tp" -type "double3" 34.91393412219108 14.576888231172006 3.484519269883549 ;
createNode transform -n "polySurface_crane";
	rename -uid "60AA2F4D-4675-68EE-6209-31B5E258B951";
createNode transform -n "polySurface1" -p "polySurface_crane";
	rename -uid "E8776B9B-4A56-590E-7CDA-3C8C388C4E79";
createNode mesh -n "polySurfaceShape1" -p "polySurface1";
	rename -uid "A0F91705-414B-DA99-22B6-3AA7B856B681";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface2" -p "polySurface_crane";
	rename -uid "D333ACB0-4BC8-EE0E-1772-25A0548A12D7";
createNode mesh -n "polySurfaceShape2" -p "polySurface2";
	rename -uid "ABD92F7E-4101-B885-7681-61B6A560F778";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.77824968099594116 0.41805297136306763 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface3" -p "polySurface_crane";
	rename -uid "3257F558-44DA-C1FE-0E6B-7C96173D10EC";
createNode mesh -n "polySurfaceShape3" -p "polySurface3";
	rename -uid "4D436685-4DAA-E176-8CEC-3A987FCB45BF";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.10365704074501991 0.85794913768768311 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bw" 3;
createNode transform -n "polySurface4" -p "polySurface_crane";
	rename -uid "6ECFF236-462D-04DF-3795-D4BCCC0CBE8D";
	setAttr ".r" -type "double3" 8.437094695752835 -33.10128437321687 -2.3454289013896292 ;
	setAttr ".s" -type "double3" 0.53777741915403121 0.53777741915403121 0.53777741915403121 ;
	setAttr ".rp" -type "double3" -7.7319071535111652 69.697734809411173 -19.467535358316482 ;
	setAttr ".rpt" -type "double3" -17.050402416801322 -4.0009330515986612 -28.351385540121019 ;
	setAttr ".sp" -type "double3" -38.712663241615346 60.37272721744187 17.313527153496462 ;
	setAttr ".spt" -type "double3" 30.980756088104183 9.3250075919693014 -36.781062511812941 ;
createNode mesh -n "polySurfaceShape4" -p "polySurface4";
	rename -uid "4DBBD27C-434F-8DD9-14D9-1A8BB1828A90";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.59486234188079834 0.18634742498397827 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".pt[0]" -type "float3"  -3.0517577e-007 -1.5258789e-007 -1.2207031e-006;
createNode transform -n "polySurface5" -p "polySurface_crane";
	rename -uid "4EA99C8C-488C-77A6-5CEE-10AD3EE49AA6";
	setAttr ".r" -type "double3" 8.437094695752835 -33.10128437321687 -2.3454289013896292 ;
	setAttr ".s" -type "double3" 0.53777741915403121 0.53777741915403121 0.53777741915403121 ;
	setAttr ".rp" -type "double3" -7.7319071535111652 69.697734809411173 -19.467535358316482 ;
	setAttr ".rpt" -type "double3" -17.050402416801322 -4.0009330515986612 -28.351385540121019 ;
	setAttr ".sp" -type "double3" -38.712663241615346 60.37272721744187 17.313527153496462 ;
	setAttr ".spt" -type "double3" 30.980756088104183 9.3250075919693014 -36.781062511812941 ;
createNode mesh -n "polySurfaceShape5" -p "polySurface5";
	rename -uid "C68B3F95-445A-6074-8218-608FBBA46741";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface6" -p "polySurface_crane";
	rename -uid "B01B4661-4DAA-00B3-528C-759F790EE8FB";
	setAttr ".r" -type "double3" 8.437094695752835 -33.10128437321687 -2.3454289013896292 ;
	setAttr ".s" -type "double3" 0.53777741915403121 0.53777741915403121 0.53777741915403121 ;
	setAttr ".rp" -type "double3" 28.312958984375001 80.547006835937495 -62.260825195312499 ;
	setAttr ".sp" -type "double3" 28.312958984375001 80.547006835937495 -62.260825195312499 ;
createNode mesh -n "polySurfaceShape6" -p "polySurface6";
	rename -uid "6573DD09-4F43-DD50-F882-D8A795F86B0D";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface7" -p "polySurface_crane";
	rename -uid "6B130A21-491B-1FF6-D1DF-1C8DC378AB25";
	setAttr ".r" -type "double3" 8.437094695752835 -33.10128437321687 -2.3454289013896292 ;
	setAttr ".s" -type "double3" 0.53777741915403121 0.53777741915403121 0.53777741915403121 ;
	setAttr ".rp" -type "double3" 28.312958984375001 80.547006835937495 -62.260825195312499 ;
	setAttr ".sp" -type "double3" 28.312958984375001 80.547006835937495 -62.260825195312499 ;
createNode mesh -n "polySurfaceShape7" -p "polySurface7";
	rename -uid "8C739116-4834-0545-545E-0A890C54B63C";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface8" -p "polySurface_crane";
	rename -uid "8AEF9C56-425B-ACEE-9346-5098B3387C49";
createNode mesh -n "polySurfaceShape8" -p "polySurface8";
	rename -uid "3DB22F95-465A-6141-748D-88BEDCA8F832";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface9" -p "polySurface_crane";
	rename -uid "4BE7AEF8-4FC9-09C6-DC3F-0791176E0F4A";
createNode mesh -n "polySurfaceShape9" -p "polySurface9";
	rename -uid "09A48497-4602-CD1E-89BA-4D85EDDEA257";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface10" -p "polySurface_crane";
	rename -uid "559ED030-44A1-9234-104E-94923E27F999";
createNode mesh -n "polySurfaceShape10" -p "polySurface10";
	rename -uid "F59E0735-49EF-302C-10A4-0E81C3A6B4A9";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface11" -p "polySurface_crane";
	rename -uid "858EECE1-4E43-1449-7FB4-02A49567351E";
createNode mesh -n "polySurfaceShape11" -p "polySurface11";
	rename -uid "42216787-4FEF-4B25-2159-F0BC1E180A42";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface12" -p "polySurface_crane";
	rename -uid "44391AD5-40D6-484D-1F38-23BE041DB0FB";
	setAttr ".r" -type "double3" 34.71565489096885 15.065094707289449 48.233778261238236 ;
	setAttr ".rp" -type "double3" 40.610295410156247 77.600205078125001 -52.337934570312498 ;
	setAttr ".sp" -type "double3" 40.610295410156247 77.600205078125001 -52.337934570312498 ;
createNode mesh -n "polySurfaceShape12" -p "polySurface12";
	rename -uid "9D620434-4D78-DC5A-2DD4-E6885F69C1C9";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface13" -p "polySurface_crane";
	rename -uid "889D19A4-4794-A571-752A-409665C461E5";
	setAttr ".r" -type "double3" 34.71565489096885 15.065094707289449 48.233778261238236 ;
	setAttr ".rp" -type "double3" 40.610295410156247 77.600205078125001 -52.337934570312498 ;
	setAttr ".sp" -type "double3" 40.610295410156247 77.600205078125001 -52.337934570312498 ;
createNode mesh -n "polySurfaceShape13" -p "polySurface13";
	rename -uid "29A32002-42C6-3F89-365B-53AADEE2BF8D";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface14" -p "polySurface_crane";
	rename -uid "0F50B035-40B1-94E9-B3FA-41B69DA196BA";
	setAttr ".r" -type "double3" 34.71565489096885 15.065094707289449 48.233778261238236 ;
	setAttr ".rp" -type "double3" 40.610295410156247 77.600205078125001 -52.337934570312498 ;
	setAttr ".sp" -type "double3" 40.610295410156247 77.600205078125001 -52.337934570312498 ;
createNode mesh -n "polySurfaceShape14" -p "polySurface14";
	rename -uid "E947FA46-4250-1E26-ABE0-9DBAE785D960";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface15" -p "polySurface_crane";
	rename -uid "F29258A1-4B1B-2E54-C13C-DD8A79B4FBE7";
	setAttr ".r" -type "double3" 34.71565489096885 15.065094707289449 48.233778261238236 ;
	setAttr ".rp" -type "double3" 40.610295410156247 77.600205078125001 -52.337934570312498 ;
	setAttr ".sp" -type "double3" 40.610295410156247 77.600205078125001 -52.337934570312498 ;
createNode mesh -n "polySurfaceShape15" -p "polySurface15";
	rename -uid "D9626426-481F-723F-5B36-5F89A97864A3";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface16" -p "polySurface_crane";
	rename -uid "AD736194-4C7B-2D41-DBC5-D9843021E60D";
createNode mesh -n "polySurfaceShape16" -p "polySurface16";
	rename -uid "147A35AA-4FC7-5C79-7971-72A4DDCFCFD1";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface17" -p "polySurface_crane";
	rename -uid "0903A5CE-42E9-513E-CE7D-AB8F31C8BC88";
createNode mesh -n "polySurfaceShape17" -p "polySurface17";
	rename -uid "ABBB1EA9-4E5F-33E4-D23A-1489D4653047";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface18" -p "polySurface_crane";
	rename -uid "D14248D6-4697-C607-8CB4-CCA2D863CEED";
createNode mesh -n "polySurfaceShape18" -p "polySurface18";
	rename -uid "D7D56E42-4D82-75F7-B091-AFA1709EB42A";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface19" -p "polySurface_crane";
	rename -uid "C809A358-4B50-1943-5E1A-54829EB87CB7";
createNode mesh -n "polySurfaceShape19" -p "polySurface19";
	rename -uid "57E12E50-48F2-DB6D-2815-50B4A214129C";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface20" -p "polySurface_crane";
	rename -uid "F8722266-42B3-9D42-C9A6-DE980FBB4704";
	setAttr ".r" -type "double3" -14.234322284284552 -38.961775672457875 -8.5329888218192469 ;
	setAttr ".rp" -type "double3" 89.715644531250007 109.432529296875 -80.661489257812505 ;
	setAttr ".sp" -type "double3" 89.715644531250007 109.432529296875 -80.661489257812505 ;
createNode mesh -n "polySurfaceShape20" -p "polySurface20";
	rename -uid "96C7D45E-4E00-6929-2D78-638E93C80369";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface21" -p "polySurface_crane";
	rename -uid "719BC203-4A67-4DC5-ABF8-D0AB2480FE7C";
	setAttr ".r" -type "double3" -14.234322284284552 -38.961775672457875 -8.5329888218192469 ;
	setAttr ".rp" -type "double3" 89.715644531250007 109.432529296875 -80.661489257812505 ;
	setAttr ".sp" -type "double3" 89.715644531250007 109.432529296875 -80.661489257812505 ;
createNode mesh -n "polySurfaceShape21" -p "polySurface21";
	rename -uid "EBF7F205-4FA2-5C9C-893C-A39CCD488F86";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface22" -p "polySurface_crane";
	rename -uid "4703DB71-4889-D055-B4F0-A1901FAFFC13";
	setAttr ".r" -type "double3" -14.234322284284552 -38.961775672457875 -8.5329888218192469 ;
	setAttr ".rp" -type "double3" 89.715644531250007 109.432529296875 -80.661489257812505 ;
	setAttr ".sp" -type "double3" 89.715644531250007 109.432529296875 -80.661489257812505 ;
createNode mesh -n "polySurfaceShape22" -p "polySurface22";
	rename -uid "D27311D1-4CDB-6978-072F-0EA5D0DECB80";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface23" -p "polySurface_crane";
	rename -uid "52764969-4C2C-4867-3276-B0A47289A75C";
	setAttr ".r" -type "double3" -14.234322284284552 -38.961775672457875 -8.5329888218192469 ;
	setAttr ".rp" -type "double3" 89.715644531250007 109.432529296875 -80.661489257812505 ;
	setAttr ".sp" -type "double3" 89.715644531250007 109.432529296875 -80.661489257812505 ;
createNode mesh -n "polySurfaceShape23" -p "polySurface23";
	rename -uid "3D609CCC-4829-1FED-1F65-8D932CF462B7";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface24" -p "polySurface_crane";
	rename -uid "012BE65C-4A80-16E8-A323-4E823075553A";
	setAttr ".t" -type "double3" -0.71037763255804753 -0.25125909650665562 -1.8068308571147464 ;
	setAttr ".r" -type "double3" 14.313039369805294 26.945682618318482 9.7168164973511839 ;
	setAttr ".s" -type "double3" 0.82342538703766677 0.82342538703766677 0.82342538703766677 ;
	setAttr ".rp" -type "double3" 104.014765625 94.210175781250001 -79.277084960937501 ;
	setAttr ".sp" -type "double3" 104.014765625 94.210175781250001 -79.277084960937501 ;
createNode mesh -n "polySurfaceShape24" -p "polySurface24";
	rename -uid "1D4F84EA-4BAB-2370-26CF-E8B7086FB228";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface25" -p "polySurface_crane";
	rename -uid "2E02D4EA-420D-8729-6FED-A39B90E22682";
	setAttr ".t" -type "double3" -0.71037763255804753 -0.25125909650665562 -1.8068308571147464 ;
	setAttr ".r" -type "double3" 14.313039369805294 26.945682618318482 9.7168164973511839 ;
	setAttr ".s" -type "double3" 0.82342538703766677 0.82342538703766677 0.82342538703766677 ;
	setAttr ".rp" -type "double3" 104.014765625 94.210175781250001 -79.277084960937501 ;
	setAttr ".sp" -type "double3" 104.014765625 94.210175781250001 -79.277084960937501 ;
createNode mesh -n "polySurfaceShape25" -p "polySurface25";
	rename -uid "80365980-4887-443B-31AB-AC8497D84518";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface26" -p "polySurface_crane";
	rename -uid "CDAFCEDF-4207-13D9-3D9E-18B11935CF7C";
	setAttr ".t" -type "double3" -0.71037763255804753 -0.25125909650665562 -1.8068308571147464 ;
	setAttr ".r" -type "double3" 14.313039369805294 26.945682618318482 9.7168164973511839 ;
	setAttr ".s" -type "double3" 0.82342538703766677 0.82342538703766677 0.82342538703766677 ;
	setAttr ".rp" -type "double3" 104.014765625 94.210175781250001 -79.277084960937501 ;
	setAttr ".sp" -type "double3" 104.014765625 94.210175781250001 -79.277084960937501 ;
createNode mesh -n "polySurfaceShape26" -p "polySurface26";
	rename -uid "67839031-480C-395E-9612-0B87299CF273";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface27" -p "polySurface_crane";
	rename -uid "B6C41E04-4555-1D23-DEC0-148810C4A48C";
	setAttr ".t" -type "double3" -0.71037763255804753 -0.25125909650665562 -1.8068308571147464 ;
	setAttr ".r" -type "double3" 14.313039369805294 26.945682618318482 9.7168164973511839 ;
	setAttr ".s" -type "double3" 0.82342538703766677 0.82342538703766677 0.82342538703766677 ;
	setAttr ".rp" -type "double3" 104.014765625 94.210175781250001 -79.277084960937501 ;
	setAttr ".sp" -type "double3" 104.014765625 94.210175781250001 -79.277084960937501 ;
createNode mesh -n "polySurfaceShape27" -p "polySurface27";
	rename -uid "6B3E718E-44C3-E79C-9CC3-B88B93E618BA";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface28" -p "polySurface_crane";
	rename -uid "CED3ED19-481B-A343-C944-099DC0AC535A";
createNode mesh -n "polySurfaceShape28" -p "polySurface28";
	rename -uid "0F70437E-445F-ABA7-1D29-FA8FACD5B3AF";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface29" -p "polySurface_crane";
	rename -uid "2C52B374-47E2-0DA8-2147-ADB186D54EE2";
createNode mesh -n "polySurfaceShape29" -p "polySurface29";
	rename -uid "EAB71124-4085-E7EA-2917-39B03E05F69C";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface30" -p "polySurface_crane";
	rename -uid "A1A1FCB7-4918-6BD3-563B-4EB27EDF8127";
createNode mesh -n "polySurfaceShape30" -p "polySurface30";
	rename -uid "158AE884-4CDE-47A7-532B-67898D5A9F9C";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface31" -p "polySurface_crane";
	rename -uid "33ADCA7F-4213-137A-4B57-EA904D8807E6";
createNode mesh -n "polySurfaceShape31" -p "polySurface31";
	rename -uid "C4670357-409F-D61B-C7AC-E4BCB9EC1C3B";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface32" -p "polySurface_crane";
	rename -uid "EC969A63-4E0E-D0E5-5DCC-66A4451D401A";
createNode mesh -n "polySurfaceShape32" -p "polySurface32";
	rename -uid "8AC015CA-4237-57F5-C8AA-C38ADE73C583";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface33" -p "polySurface_crane";
	rename -uid "B988B224-46B8-741E-6DFA-1AAEAC3F48B1";
createNode mesh -n "polySurfaceShape33" -p "polySurface33";
	rename -uid "25B6CABE-4526-BEE0-AB3C-1381E36C6549";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface34" -p "polySurface_crane";
	rename -uid "6F3565FE-4CDB-4018-B241-B1BA7C93E000";
createNode mesh -n "polySurfaceShape34" -p "polySurface34";
	rename -uid "0666C49B-444F-3E97-8CBC-0AB2AD701F9B";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface35" -p "polySurface_crane";
	rename -uid "F99D52F7-4A81-F689-3419-4C98043F87D0";
createNode mesh -n "polySurfaceShape35" -p "polySurface35";
	rename -uid "392C4E5B-4442-0664-BF52-E2813B1961A5";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface36" -p "polySurface_crane";
	rename -uid "2BB1925B-402B-E85B-9504-37AE92D12EF0";
createNode mesh -n "polySurfaceShape36" -p "polySurface36";
	rename -uid "ED6EAA7C-4585-791C-3A07-CCAB5BF11E5B";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface37" -p "polySurface_crane";
	rename -uid "E59B7560-40E5-7507-B582-37942794A249";
createNode mesh -n "polySurfaceShape37" -p "polySurface37";
	rename -uid "30220490-4FED-22C5-7429-FFB0D33C0D1B";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface38" -p "polySurface_crane";
	rename -uid "4FD15A7F-4C5A-53BE-A3E9-60897AECDF23";
createNode mesh -n "polySurfaceShape38" -p "polySurface38";
	rename -uid "694404E5-4BA1-6ED2-287E-2FBF1A8B6A8A";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface39" -p "polySurface_crane";
	rename -uid "936DF33F-41FE-86CE-1ECB-E891ACF84F9E";
createNode mesh -n "polySurfaceShape39" -p "polySurface39";
	rename -uid "D2F6EBE6-4651-14B2-FEB8-F9A6D2906F53";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface40" -p "polySurface_crane";
	rename -uid "4EAD1416-4E12-B317-F94C-E79DD796478B";
createNode mesh -n "polySurfaceShape40" -p "polySurface40";
	rename -uid "86F080B9-435E-1C02-20F7-53B0AE26863F";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface41" -p "polySurface_crane";
	rename -uid "3B51F76A-4CA5-75E8-1207-1A98EB5DEFE5";
createNode mesh -n "polySurfaceShape41" -p "polySurface41";
	rename -uid "9B6F141D-4D11-374E-088D-8E94F4F4840F";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface42" -p "polySurface_crane";
	rename -uid "8C41F35E-49D0-CEE8-38BA-9D9BDF09AFD3";
createNode mesh -n "polySurfaceShape42" -p "polySurface42";
	rename -uid "E00AE5D1-4A22-29DB-110E-D49B9B6E5153";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface43" -p "polySurface_crane";
	rename -uid "FFF6977D-4553-2C46-EED5-F5904802CFF1";
createNode mesh -n "polySurfaceShape43" -p "polySurface43";
	rename -uid "983CC4FE-4884-421D-C615-6C8CDD89859D";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface44" -p "polySurface_crane";
	rename -uid "F3A0EC3B-40B2-F00C-C66D-EFB22D5CD8C0";
createNode mesh -n "polySurfaceShape44" -p "polySurface44";
	rename -uid "14F45C58-45B0-696D-BFDD-21A0A95CB8E5";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface45" -p "polySurface_crane";
	rename -uid "21503221-4F40-8681-15AC-4D83DB17C6FA";
createNode mesh -n "polySurfaceShape45" -p "polySurface45";
	rename -uid "4DB4433F-4575-44AE-5D1C-63A548E54676";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface46" -p "polySurface_crane";
	rename -uid "E3FC29D4-4784-44B4-F3B8-F1A53BBFD80A";
createNode mesh -n "polySurfaceShape46" -p "polySurface46";
	rename -uid "6D5707CA-47D9-336D-68D2-2F859DE6D195";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface47" -p "polySurface_crane";
	rename -uid "E1D2AEB7-4A7D-25E6-F81C-ABB9B8C941BB";
createNode mesh -n "polySurfaceShape47" -p "polySurface47";
	rename -uid "6AC37A4A-4056-6F62-8E0E-AD8620F08670";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface48" -p "polySurface_crane";
	rename -uid "CE41AC02-431B-2C99-B5B7-37A6439CE2FD";
createNode mesh -n "polySurfaceShape48" -p "polySurface48";
	rename -uid "9FAAE408-4707-981F-2198-B78A68E5ACE9";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface49" -p "polySurface_crane";
	rename -uid "9B2BC0B2-4275-50FD-4B7A-1A81D0564583";
	setAttr ".r" -type "double3" -17.590548411907811 0.62581423088418908 -0.46014677050953462 ;
	setAttr ".rp" -type "double3" -134.50737304687499 42.969111328125003 -21.509438476562501 ;
	setAttr ".sp" -type "double3" -134.50737304687499 42.969111328125003 -21.509438476562501 ;
createNode mesh -n "polySurfaceShape49" -p "polySurface49";
	rename -uid "565AA24D-4C54-B025-B87B-55AAAA2A1313";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface50" -p "polySurface_crane";
	rename -uid "92BB5504-4FCE-77DC-BEBE-2E86D3AE0422";
	setAttr ".r" -type "double3" -17.590548411907811 0.62581423088418908 -0.46014677050953462 ;
	setAttr ".rp" -type "double3" -134.50737304687499 42.969111328125003 -21.509438476562501 ;
	setAttr ".sp" -type "double3" -134.50737304687499 42.969111328125003 -21.509438476562501 ;
createNode mesh -n "polySurfaceShape50" -p "polySurface50";
	rename -uid "65442B28-493A-3992-022A-5C8B40CC8CA2";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface51" -p "polySurface_crane";
	rename -uid "573CB5D0-44C8-DAC3-EDB9-E39F7DA95B82";
	setAttr ".r" -type "double3" -17.590548411907811 0.62581423088418908 -0.46014677050953462 ;
	setAttr ".rp" -type "double3" -134.50737304687499 42.969111328125003 -21.509438476562501 ;
	setAttr ".sp" -type "double3" -134.50737304687499 42.969111328125003 -21.509438476562501 ;
createNode mesh -n "polySurfaceShape51" -p "polySurface51";
	rename -uid "48C7FF2A-46C2-75C9-400C-66BB1334F89D";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface52" -p "polySurface_crane";
	rename -uid "246B6F2D-482C-1442-2463-5A86F7925DCF";
	setAttr ".r" -type "double3" -17.590548411907811 0.62581423088418908 -0.46014677050953462 ;
	setAttr ".rp" -type "double3" -134.50737304687499 42.969111328125003 -21.509438476562501 ;
	setAttr ".sp" -type "double3" -134.50737304687499 42.969111328125003 -21.509438476562501 ;
createNode mesh -n "polySurfaceShape52" -p "polySurface52";
	rename -uid "61A280DB-4372-EFF7-50C7-EF8FCF75D72A";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface53" -p "polySurface_crane";
	rename -uid "ACD82658-4C09-2CA5-97FB-EAA967E4E715";
createNode mesh -n "polySurfaceShape53" -p "polySurface53";
	rename -uid "CCB9D6AC-4AE8-7E55-D459-238007B4E7EF";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface54" -p "polySurface_crane";
	rename -uid "9D10DAF9-4D02-5AF8-0D57-28A0C0D6EE98";
createNode mesh -n "polySurfaceShape54" -p "polySurface54";
	rename -uid "D5D0DBF7-4FA6-CDF7-6CA0-F698BE91FF64";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface55" -p "polySurface_crane";
	rename -uid "E5A2490B-440D-342A-D9E3-349DF7A0F032";
createNode mesh -n "polySurfaceShape55" -p "polySurface55";
	rename -uid "CC178F93-4F07-257F-028F-D5BC13637A18";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface56" -p "polySurface_crane";
	rename -uid "13E88E14-478A-80FB-4EA8-4F9B7DBFFC75";
createNode mesh -n "polySurfaceShape56" -p "polySurface56";
	rename -uid "F42EACDF-437F-B363-73AC-03BB54D70A76";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface57" -p "polySurface_crane";
	rename -uid "F979EA21-433A-6BF9-E386-ED9C7BA4E7F0";
createNode mesh -n "polySurfaceShape57" -p "polySurface57";
	rename -uid "2D82BACE-4DF8-18B3-2AAE-4EA8A49EA86B";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.018285631667822599 0.43365617096424103 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".pt[252]" -type "float3"  3.8146972e-008 -3.8146972e-008 2.8610229e-008;
createNode transform -n "polySurface58" -p "polySurface_crane";
	rename -uid "4C1816FC-49D0-45C5-EC4F-F0BA399ABD21";
	setAttr ".t" -type "double3" -0.67572599831428304 0.70278541654068705 1.299335579392664 ;
	setAttr ".r" -type "double3" -44.007027195636276 -10.545290589499547 -10.728583121609057 ;
	setAttr ".s" -type "double3" 1.6879408932786528 1.6879408932786528 1.6879408932786528 ;
	setAttr ".rp" -type "double3" -107.288984375 -4.416909790039063 11.370078125000001 ;
	setAttr ".sp" -type "double3" -107.288984375 -4.416909790039063 11.370078125000001 ;
createNode mesh -n "polySurfaceShape58" -p "polySurface58";
	rename -uid "584BE416-4DCF-EED8-2F24-0A8BA6DA7C42";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface60" -p "polySurface_crane";
	rename -uid "63A15803-458B-CF40-D0F8-F9BB9B83AD06";
	setAttr ".t" -type "double3" -0.67572599831428304 0.70278541654068705 1.299335579392664 ;
	setAttr ".r" -type "double3" -44.007027195636276 -10.545290589499547 -10.728583121609057 ;
	setAttr ".s" -type "double3" 1.6879408932786528 1.6879408932786528 1.6879408932786528 ;
	setAttr ".rp" -type "double3" -107.288984375 -4.416909790039063 11.370078125000001 ;
	setAttr ".sp" -type "double3" -107.288984375 -4.416909790039063 11.370078125000001 ;
createNode mesh -n "polySurfaceShape60" -p "polySurface60";
	rename -uid "B40E88B6-4FF8-1DE3-A3E4-E882D2F7188D";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface62" -p "polySurface_crane";
	rename -uid "46A0356B-41A8-7726-C7DE-4B8111E7CAFF";
	setAttr ".t" -type "double3" 0.69768626098000819 0.6953626331802707 0.34794483855940145 ;
	setAttr ".r" -type "double3" 0 0 60.000000000000007 ;
	setAttr ".s" -type "double3" 1.1010457678279391 1.1010457678279391 1.1010457678279391 ;
	setAttr ".rp" -type "double3" -121.85869140625 4.1025155639648441 24.928112792968751 ;
	setAttr ".sp" -type "double3" -121.85869140625 4.1025155639648441 24.928112792968751 ;
createNode mesh -n "polySurfaceShape62" -p "polySurface62";
	rename -uid "A3021900-454D-8571-B531-9FA017DF544B";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface63" -p "polySurface_crane";
	rename -uid "336F743D-4FDA-5CE8-64FB-72B07D0224F7";
	setAttr ".t" -type "double3" 0.69768626098000819 0.6953626331802707 0.34794483855940145 ;
	setAttr ".r" -type "double3" 0 0 60.000000000000007 ;
	setAttr ".s" -type "double3" 1.1010457678279391 1.1010457678279391 1.1010457678279391 ;
	setAttr ".rp" -type "double3" -121.85869140625 4.1025155639648441 24.928112792968751 ;
	setAttr ".sp" -type "double3" -121.85869140625 4.1025155639648441 24.928112792968751 ;
createNode mesh -n "polySurfaceShape63" -p "polySurface63";
	rename -uid "DCA2498D-40D7-0CDA-7876-B8AEF7DB44CE";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface64" -p "polySurface_crane";
	rename -uid "263B4D50-430E-5E61-7B81-5AA85E5476C0";
	setAttr ".t" -type "double3" 0.69768626098000819 0.6953626331802707 0.34794483855940145 ;
	setAttr ".r" -type "double3" 0 0 60.000000000000007 ;
	setAttr ".s" -type "double3" 1.1010457678279391 1.1010457678279391 1.1010457678279391 ;
	setAttr ".rp" -type "double3" -121.85869140625 4.1025155639648441 24.928112792968751 ;
	setAttr ".sp" -type "double3" -121.85869140625 4.1025155639648441 24.928112792968751 ;
createNode mesh -n "polySurfaceShape64" -p "polySurface64";
	rename -uid "58E41095-4B5D-3E4E-87F5-F7B51DEA640D";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.67349657416343689 0.2649814784526825 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface65" -p "polySurface_crane";
	rename -uid "021B60B4-4F71-2764-B87F-0A955704D2A7";
	setAttr ".t" -type "double3" 0.69768626098000819 0.6953626331802707 0.34794483855940145 ;
	setAttr ".r" -type "double3" 0 0 60.000000000000007 ;
	setAttr ".s" -type "double3" 1.1010457678279391 1.1010457678279391 1.1010457678279391 ;
	setAttr ".rp" -type "double3" -121.85869140625 4.1025155639648441 24.928112792968751 ;
	setAttr ".sp" -type "double3" -121.85869140625 4.1025155639648441 24.928112792968751 ;
createNode mesh -n "polySurfaceShape65" -p "polySurface65";
	rename -uid "8521E6E3-4953-CFB3-253B-71A77CB17F17";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface66" -p "polySurface_crane";
	rename -uid "778E6152-41A4-A6EF-0D7F-C0A6C7359CF1";
	setAttr ".t" -type "double3" -0.35805418859701604 -0.49656355344317266 0.73240539957803796 ;
	setAttr ".s" -type "double3" 0.8192391973896318 0.8192391973896318 0.8192391973896318 ;
	setAttr ".rp" -type "double3" -118.000185546875 12.983719482421876 20.725122070312501 ;
	setAttr ".sp" -type "double3" -118.000185546875 12.983719482421876 20.725122070312501 ;
createNode mesh -n "polySurfaceShape66" -p "polySurface66";
	rename -uid "BB5612F6-4665-1C84-088B-A7B31EFABD9A";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface67" -p "polySurface_crane";
	rename -uid "2DF64080-48BA-173D-906D-FA942C7AE23B";
	setAttr ".t" -type "double3" -0.35805418859701604 -0.49656355344317266 0.73240539957803796 ;
	setAttr ".s" -type "double3" 0.8192391973896318 0.8192391973896318 0.8192391973896318 ;
	setAttr ".rp" -type "double3" -118.000185546875 12.983719482421876 20.725122070312501 ;
	setAttr ".sp" -type "double3" -118.000185546875 12.983719482421876 20.725122070312501 ;
createNode mesh -n "polySurfaceShape67" -p "polySurface67";
	rename -uid "3039516D-4CB4-3BA1-0CDA-018AA9A1EEDB";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface68" -p "polySurface_crane";
	rename -uid "CE02A812-4A67-76AC-4B6B-589D0A7A2852";
	setAttr ".t" -type "double3" -0.35805418859701604 -0.49656355344317266 0.73240539957803796 ;
	setAttr ".s" -type "double3" 0.8192391973896318 0.8192391973896318 0.8192391973896318 ;
	setAttr ".rp" -type "double3" -118.000185546875 12.983719482421876 20.725122070312501 ;
	setAttr ".sp" -type "double3" -118.000185546875 12.983719482421876 20.725122070312501 ;
createNode mesh -n "polySurfaceShape68" -p "polySurface68";
	rename -uid "01F3C543-416F-69D5-7A8A-EBB86E113875";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface69" -p "polySurface_crane";
	rename -uid "FEDF61C6-496F-0840-EA96-FC9F73575FA3";
	setAttr ".t" -type "double3" -0.35805418859701604 -0.49656355344317266 0.73240539957803796 ;
	setAttr ".s" -type "double3" 0.8192391973896318 0.8192391973896318 0.8192391973896318 ;
	setAttr ".rp" -type "double3" -118.000185546875 12.983719482421876 20.725122070312501 ;
	setAttr ".sp" -type "double3" -118.000185546875 12.983719482421876 20.725122070312501 ;
createNode mesh -n "polySurfaceShape69" -p "polySurface69";
	rename -uid "E6AFAE0D-4FED-4DA8-1D16-978DE06B1D0F";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface70" -p "polySurface_crane";
	rename -uid "366B874C-4DFB-0F0A-2E3E-79BFAEA1182B";
createNode mesh -n "polySurfaceShape70" -p "polySurface70";
	rename -uid "37CDD99F-4E8C-0D36-15F0-C498E58090CE";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface71" -p "polySurface_crane";
	rename -uid "8BF3D8C9-40A0-783A-6F00-D7994EA0698E";
createNode mesh -n "polySurfaceShape71" -p "polySurface71";
	rename -uid "063EFC2D-40F1-18B1-12D7-8D8A074799D3";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface72" -p "polySurface_crane";
	rename -uid "AA2ABC42-47CD-C565-3766-B185C870BA66";
createNode mesh -n "polySurfaceShape72" -p "polySurface72";
	rename -uid "1E718206-4520-1F81-22A3-30A4C6B0C699";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface73" -p "polySurface_crane";
	rename -uid "1407F269-4339-E2FC-C4F3-87814EDA3A74";
createNode mesh -n "polySurfaceShape73" -p "polySurface73";
	rename -uid "5C2F1AB8-4698-2035-175D-65B6CAED26F4";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface74" -p "polySurface_crane";
	rename -uid "2ACB3F4D-4611-D786-8D18-FC8DD3B15A43";
createNode mesh -n "polySurfaceShape74" -p "polySurface74";
	rename -uid "680A14FA-4BD5-F354-DF66-C48EB68372C1";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface75" -p "polySurface_crane";
	rename -uid "1EFEC348-4655-805D-01FD-A6AD734F9057";
createNode mesh -n "polySurfaceShape75" -p "polySurface75";
	rename -uid "2BEA3E9B-42C6-FC9C-9E77-AD8A624FBDCC";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface76" -p "polySurface_crane";
	rename -uid "B96F766C-48F7-B210-C683-98BE1F9C21BE";
createNode mesh -n "polySurfaceShape76" -p "polySurface76";
	rename -uid "497E7D32-47D3-E65A-04A2-D895F8B1428B";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface77" -p "polySurface_crane";
	rename -uid "247A15DF-4C6F-0C1C-7DCD-83941474C4BE";
createNode mesh -n "polySurfaceShape77" -p "polySurface77";
	rename -uid "2439EF04-4092-D2AE-32EB-88BE98D8E96E";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface78" -p "polySurface_crane";
	rename -uid "621A3504-45BA-87CF-E00F-A999C610D775";
	setAttr ".t" -type "double3" 0 0 0.72739028792153027 ;
	setAttr ".r" -type "double3" -60.000000000000007 0 0 ;
	setAttr ".rp" -type "double3" -103.548427734375 32.86353271484375 22.094758300781251 ;
	setAttr ".sp" -type "double3" -103.548427734375 32.86353271484375 22.094758300781251 ;
createNode mesh -n "polySurfaceShape78" -p "polySurface78";
	rename -uid "52A5DE84-462B-A624-3FBC-99B8A48A38A8";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface79" -p "polySurface_crane";
	rename -uid "368C252B-40E3-2A5E-9C29-029D76010F4E";
	setAttr ".t" -type "double3" 0 0 0.72739028792153027 ;
	setAttr ".r" -type "double3" -60.000000000000007 0 0 ;
	setAttr ".rp" -type "double3" -103.548427734375 32.86353271484375 22.094758300781251 ;
	setAttr ".sp" -type "double3" -103.548427734375 32.86353271484375 22.094758300781251 ;
createNode mesh -n "polySurfaceShape79" -p "polySurface79";
	rename -uid "2FE3E646-484A-57AD-7B49-958A4646ECD1";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface80" -p "polySurface_crane";
	rename -uid "ED212AAC-4360-4BCD-A5FF-5FA9B92C277A";
	setAttr ".t" -type "double3" 0 0 0.72739028792153027 ;
	setAttr ".r" -type "double3" -60.000000000000007 0 0 ;
	setAttr ".rp" -type "double3" -103.548427734375 32.86353271484375 22.094758300781251 ;
	setAttr ".sp" -type "double3" -103.548427734375 32.86353271484375 22.094758300781251 ;
createNode mesh -n "polySurfaceShape80" -p "polySurface80";
	rename -uid "3BF666BA-42A4-A623-BDF6-F4AE8D25D96F";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface81" -p "polySurface_crane";
	rename -uid "B7FF3144-4F35-5377-E6B2-A981022C8EB4";
	setAttr ".t" -type "double3" 0 0 0.72739028792153027 ;
	setAttr ".r" -type "double3" -60.000000000000007 0 0 ;
	setAttr ".rp" -type "double3" -103.548427734375 32.86353271484375 22.094758300781251 ;
	setAttr ".sp" -type "double3" -103.548427734375 32.86353271484375 22.094758300781251 ;
createNode mesh -n "polySurfaceShape81" -p "polySurface81";
	rename -uid "C68B0AB7-43A6-DDDB-1D1A-1992B555092D";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface82" -p "polySurface_crane";
	rename -uid "AAE6129B-43C0-2DB3-74DB-22A6C456603F";
	setAttr ".t" -type "double3" -0.22908962799687282 0.012136357438757831 0.61202205846545432 ;
	setAttr ".r" -type "double3" -6.4693518543816433 -2.8538972773304696 -29.815818452929491 ;
	setAttr ".s" -type "double3" 0.53329591739200499 0.53329591739200499 0.53329591739200499 ;
	setAttr ".rp" -type "double3" -107.64972656250001 42.837675781249999 19.778828125 ;
	setAttr ".sp" -type "double3" -107.64972656250001 42.837675781249999 19.778828125 ;
createNode mesh -n "polySurfaceShape82" -p "polySurface82";
	rename -uid "686ABBB3-4484-B0E8-ED2C-6CADB5EF0DDA";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface83" -p "polySurface_crane";
	rename -uid "B53294B0-4A20-BF63-1AF1-4BBA7D6A2F21";
	setAttr ".t" -type "double3" -0.22908962799687282 0.012136357438757831 0.61202205846545432 ;
	setAttr ".r" -type "double3" -6.4693518543816433 -2.8538972773304696 -29.815818452929491 ;
	setAttr ".s" -type "double3" 0.53329591739200499 0.53329591739200499 0.53329591739200499 ;
	setAttr ".rp" -type "double3" -107.64972656250001 42.837675781249999 19.778828125 ;
	setAttr ".sp" -type "double3" -107.64972656250001 42.837675781249999 19.778828125 ;
createNode mesh -n "polySurfaceShape83" -p "polySurface83";
	rename -uid "FFDDFEBF-40F0-2B58-C8FE-F2B46CBBD1E0";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface84" -p "polySurface_crane";
	rename -uid "064BE9A5-4280-54E2-4451-E0A14D13EC3B";
	setAttr ".t" -type "double3" -0.22908962799687282 0.012136357438757831 0.61202205846545432 ;
	setAttr ".r" -type "double3" -6.4693518543816433 -2.8538972773304696 -29.815818452929491 ;
	setAttr ".s" -type "double3" 0.53329591739200499 0.53329591739200499 0.53329591739200499 ;
	setAttr ".rp" -type "double3" -107.64972656250001 42.837675781249999 19.778828125 ;
	setAttr ".sp" -type "double3" -107.64972656250001 42.837675781249999 19.778828125 ;
createNode mesh -n "polySurfaceShape84" -p "polySurface84";
	rename -uid "BAEAD5BE-46C5-8C19-D338-0282ED88204A";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface85" -p "polySurface_crane";
	rename -uid "002B072D-4B36-FFDD-2825-E9B0A168CCE2";
	setAttr ".t" -type "double3" -0.22908962799687282 0.012136357438757831 0.61202205846545432 ;
	setAttr ".r" -type "double3" -6.4693518543816433 -2.8538972773304696 -29.815818452929491 ;
	setAttr ".s" -type "double3" 0.53329591739200499 0.53329591739200499 0.53329591739200499 ;
	setAttr ".rp" -type "double3" -107.64972656250001 42.837675781249999 19.778828125 ;
	setAttr ".sp" -type "double3" -107.64972656250001 42.837675781249999 19.778828125 ;
createNode mesh -n "polySurfaceShape85" -p "polySurface85";
	rename -uid "BA9E7F5B-479A-70F2-3374-44AE33CCF652";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface86" -p "polySurface_crane";
	rename -uid "30886198-4F70-EBB7-79E1-99AF3AB0BC0E";
	setAttr ".r" -type "double3" -7.3448560797615139 -21.157583141164839 15.911027737204824 ;
	setAttr ".rp" -type "double3" -109.2587109375 38.474899902343751 22.64400146484375 ;
	setAttr ".sp" -type "double3" -109.2587109375 38.474899902343751 22.64400146484375 ;
createNode mesh -n "polySurfaceShape86" -p "polySurface86";
	rename -uid "67A1146D-49D0-A8BA-57A0-F49A473C8042";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface87" -p "polySurface_crane";
	rename -uid "CDBBF53D-4E15-696D-9934-E887908E739B";
	setAttr ".r" -type "double3" -7.3448560797615139 -21.157583141164839 15.911027737204824 ;
	setAttr ".rp" -type "double3" -109.2587109375 38.474899902343751 22.64400146484375 ;
	setAttr ".sp" -type "double3" -109.2587109375 38.474899902343751 22.64400146484375 ;
createNode mesh -n "polySurfaceShape87" -p "polySurface87";
	rename -uid "74DFFFD1-417F-D6DC-4D74-3C8843BF0BCF";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface88" -p "polySurface_crane";
	rename -uid "CDBDAE13-4F5C-E597-BFEB-30A96ECD6E0F";
	setAttr ".r" -type "double3" -7.3448560797615139 -21.157583141164839 15.911027737204824 ;
	setAttr ".rp" -type "double3" -109.2587109375 38.474899902343751 22.64400146484375 ;
	setAttr ".sp" -type "double3" -109.2587109375 38.474899902343751 22.64400146484375 ;
createNode mesh -n "polySurfaceShape88" -p "polySurface88";
	rename -uid "DC628859-4F09-C4CD-1EF0-A4A9402F26F0";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface89" -p "polySurface_crane";
	rename -uid "32B2E44B-4C0D-D7D2-3955-969416521B01";
	setAttr ".r" -type "double3" -7.3448560797615139 -21.157583141164839 15.911027737204824 ;
	setAttr ".rp" -type "double3" -109.2587109375 38.474899902343751 22.64400146484375 ;
	setAttr ".sp" -type "double3" -109.2587109375 38.474899902343751 22.64400146484375 ;
createNode mesh -n "polySurfaceShape89" -p "polySurface89";
	rename -uid "4E8084C6-48B6-6A29-DC77-7E8AA9192820";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface90" -p "polySurface_crane";
	rename -uid "E93F839E-4EAD-6E30-B359-E2A5F57C92E7";
createNode mesh -n "polySurfaceShape90" -p "polySurface90";
	rename -uid "F5CF5384-49AD-40EE-52DB-679DD35DDDDD";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.083214268088340759 0.75011104345321655 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bw" 3;
createNode transform -n "polySurface91" -p "polySurface_crane";
	rename -uid "84E5398A-4C7D-E086-0B05-039B84308A8A";
	setAttr ".t" -type "double3" 0.4162464657203418 0.54536380100081261 0.85265375804353427 ;
	setAttr ".r" -type "double3" 89.999999999999943 -24.379047424177188 -31.979059467410774 ;
	setAttr ".s" -type "double3" 0.75281242632651357 0.75281242632651357 0.75281242632651357 ;
	setAttr ".rp" -type "double3" -33.554443359375 80.547006835937495 -36.9254833984375 ;
	setAttr ".sp" -type "double3" -33.554443359375 80.547006835937495 -36.9254833984375 ;
createNode mesh -n "polySurfaceShape91" -p "polySurface91";
	rename -uid "F616EC0E-40C8-0A2C-BEFF-E697FD8C7743";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface92" -p "polySurface_crane";
	rename -uid "30149928-460B-010A-4446-408A3BCD6DFD";
	setAttr ".t" -type "double3" 0.4162464657203418 0.54536380100081261 0.85265375804353427 ;
	setAttr ".r" -type "double3" 89.999999999999943 -24.379047424177188 -31.979059467410774 ;
	setAttr ".s" -type "double3" 0.75281242632651357 0.75281242632651357 0.75281242632651357 ;
	setAttr ".rp" -type "double3" -33.554443359375 80.547006835937495 -36.9254833984375 ;
	setAttr ".sp" -type "double3" -33.554443359375 80.547006835937495 -36.9254833984375 ;
createNode mesh -n "polySurfaceShape92" -p "polySurface92";
	rename -uid "765E8CA5-4E54-1420-CBA7-A1AF8525EBD6";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface93" -p "polySurface_crane";
	rename -uid "374149A2-4342-CC09-020E-1E9BC312272E";
	setAttr ".t" -type "double3" 0.4162464657203418 0.54536380100081261 0.85265375804353427 ;
	setAttr ".r" -type "double3" 89.999999999999943 -24.379047424177188 -31.979059467410774 ;
	setAttr ".s" -type "double3" 0.75281242632651357 0.75281242632651357 0.75281242632651357 ;
	setAttr ".rp" -type "double3" -33.554443359375 80.547006835937495 -36.9254833984375 ;
	setAttr ".sp" -type "double3" -33.554443359375 80.547006835937495 -36.9254833984375 ;
createNode mesh -n "polySurfaceShape93" -p "polySurface93";
	rename -uid "9CA55DA8-40D9-EDEC-E8D7-EBA7ECA2AB41";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface94" -p "polySurface_crane";
	rename -uid "D7B79884-47CD-5132-621D-C48F10203618";
	setAttr ".t" -type "double3" 0.4162464657203418 0.54536380100081261 0.85265375804353427 ;
	setAttr ".r" -type "double3" 89.999999999999943 -24.379047424177188 -31.979059467410774 ;
	setAttr ".s" -type "double3" 0.75281242632651357 0.75281242632651357 0.75281242632651357 ;
	setAttr ".rp" -type "double3" -33.554443359375 80.547006835937495 -36.9254833984375 ;
	setAttr ".sp" -type "double3" -33.554443359375 80.547006835937495 -36.9254833984375 ;
createNode mesh -n "polySurfaceShape94" -p "polySurface94";
	rename -uid "E984093C-4946-ABC4-59EE-14B804A1B0D3";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface95" -p "polySurface_crane";
	rename -uid "BFE65C79-4BCC-5473-5C0B-3B82304605FE";
	setAttr ".t" -type "double3" 0.19400426110747504 -0.97734560394676917 -0.12576611880015662 ;
	setAttr ".r" -type "double3" -44.486601097252993 7.9565998050108542 -0.57801075067766294 ;
	setAttr ".rp" -type "double3" -24.782309570312499 65.696801757812494 -47.818920898437504 ;
	setAttr ".sp" -type "double3" -24.782309570312499 65.696801757812494 -47.818920898437504 ;
createNode mesh -n "polySurfaceShape95" -p "polySurface95";
	rename -uid "62CEF369-4192-5927-9EE2-52A10BA9BEFE";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface96" -p "polySurface_crane";
	rename -uid "16BE477E-4937-84E8-784F-A39CC265A5A5";
	setAttr ".t" -type "double3" 0.19400426110747504 -0.97734560394676917 -0.12576611880015662 ;
	setAttr ".r" -type "double3" -44.486601097252993 7.9565998050108542 -0.57801075067766294 ;
	setAttr ".rp" -type "double3" -24.782309570312499 65.696801757812494 -47.818920898437504 ;
	setAttr ".sp" -type "double3" -24.782309570312499 65.696801757812494 -47.818920898437504 ;
createNode mesh -n "polySurfaceShape96" -p "polySurface96";
	rename -uid "E7626B96-49AB-8DBA-2018-FA85E045426D";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface97" -p "polySurface_crane";
	rename -uid "075A8AEA-409F-DF06-F0CB-AB89E8CF0655";
	setAttr ".t" -type "double3" 0.19400426110747504 -0.97734560394676917 -0.12576611880015662 ;
	setAttr ".r" -type "double3" -44.486601097252993 7.9565998050108542 -0.57801075067766294 ;
	setAttr ".rp" -type "double3" -24.782309570312499 65.696801757812494 -47.818920898437504 ;
	setAttr ".sp" -type "double3" -24.782309570312499 65.696801757812494 -47.818920898437504 ;
createNode mesh -n "polySurfaceShape97" -p "polySurface97";
	rename -uid "30369EA4-41E5-042C-23B7-0BA8760248B0";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface98" -p "polySurface_crane";
	rename -uid "FF194ACF-436A-6F66-B873-3EAC96773D96";
	setAttr ".t" -type "double3" 0.19400426110747504 -0.97734560394676917 -0.12576611880015662 ;
	setAttr ".r" -type "double3" -44.486601097252993 7.9565998050108542 -0.57801075067766294 ;
	setAttr ".rp" -type "double3" -24.782309570312499 65.696801757812494 -47.818920898437504 ;
	setAttr ".sp" -type "double3" -24.782309570312499 65.696801757812494 -47.818920898437504 ;
createNode mesh -n "polySurfaceShape98" -p "polySurface98";
	rename -uid "81AEB7C4-4166-15CF-00AD-5AA444A22D09";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface99" -p "polySurface_crane";
	rename -uid "6405AA71-4D2D-2197-2727-09AE6F0C94F2";
createNode mesh -n "polySurfaceShape99" -p "polySurface99";
	rename -uid "DDC0CBF4-445A-0850-A282-D3AF49F58A11";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface100" -p "polySurface_crane";
	rename -uid "B07B6E40-4848-D4AD-2641-EB8D2A3080C2";
createNode mesh -n "polySurfaceShape100" -p "polySurface100";
	rename -uid "1AED1CCE-4FA5-9966-4A09-349BC6F34DC4";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface101" -p "polySurface_crane";
	rename -uid "5799A2DB-42DB-0E12-8F9F-5B83BD3CFF20";
createNode mesh -n "polySurfaceShape101" -p "polySurface101";
	rename -uid "8A07F591-4F4C-D8B7-0AD4-4C80A5FA9D2D";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface102" -p "polySurface_crane";
	rename -uid "E1387F9C-435F-FDD0-69B5-F8B2976D753E";
createNode mesh -n "polySurfaceShape102" -p "polySurface102";
	rename -uid "156AED8E-4748-E701-CA3D-FBA37B90B462";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface103" -p "polySurface_crane";
	rename -uid "DD8F5D62-4F1A-AAD5-2228-1F9BCDC4B2BE";
createNode mesh -n "polySurfaceShape103" -p "polySurface103";
	rename -uid "84C24794-4BB0-F002-3192-3F9194CF823F";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface104" -p "polySurface_crane";
	rename -uid "9AE23074-45B5-6353-A757-358E8D11E402";
createNode mesh -n "polySurfaceShape104" -p "polySurface104";
	rename -uid "37FEDAB9-495F-2818-F145-EBA07C137B88";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface105" -p "polySurface_crane";
	rename -uid "0BD72504-4CBB-3DC2-FD97-9880E52B22FC";
createNode mesh -n "polySurfaceShape105" -p "polySurface105";
	rename -uid "FE781D07-49E9-E0A6-FCDE-DCA85B91156D";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface106" -p "polySurface_crane";
	rename -uid "84DD1F57-4EE8-BE73-A962-5BB2B89B2AD1";
createNode mesh -n "polySurfaceShape106" -p "polySurface106";
	rename -uid "DEAC4E46-4227-7498-152A-A8844BE981A1";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface107" -p "polySurface_crane";
	rename -uid "1B1287A5-449D-F7B8-DBD4-82BC04EBF5FB";
	setAttr ".t" -type "double3" 0.74864890714407917 0.1777047446782126 -0.84223547878216776 ;
	setAttr ".r" -type "double3" -129.55340668353693 -185.01386127922518 16.179967768883149 ;
	setAttr ".rp" -type "double3" -77.836035156250006 109.432529296875 -83.272177734375006 ;
	setAttr ".sp" -type "double3" -77.836035156250006 109.432529296875 -83.272177734375006 ;
createNode mesh -n "polySurfaceShape107" -p "polySurface107";
	rename -uid "4A7FCEF2-43E6-E2EB-37EB-A49F2DE61E2A";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface108" -p "polySurface_crane";
	rename -uid "1FD1832E-45DF-A923-A284-AC800AF36355";
	setAttr ".t" -type "double3" 0.74864890714407917 0.1777047446782126 -0.84223547878216776 ;
	setAttr ".r" -type "double3" -129.55340668353693 -185.01386127922518 16.179967768883149 ;
	setAttr ".rp" -type "double3" -77.836035156250006 109.432529296875 -83.272177734375006 ;
	setAttr ".sp" -type "double3" -77.836035156250006 109.432529296875 -83.272177734375006 ;
createNode mesh -n "polySurfaceShape108" -p "polySurface108";
	rename -uid "0FABEE6C-434D-D0DB-DD8C-5A8577608BEE";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface109" -p "polySurface_crane";
	rename -uid "AF4C1A4A-4419-C03E-3F69-779ED09D3753";
	setAttr ".t" -type "double3" 0.74864890714407917 0.1777047446782126 -0.84223547878216776 ;
	setAttr ".r" -type "double3" -129.55340668353693 -185.01386127922518 16.179967768883149 ;
	setAttr ".rp" -type "double3" -77.836035156250006 109.432529296875 -83.272177734375006 ;
	setAttr ".sp" -type "double3" -77.836035156250006 109.432529296875 -83.272177734375006 ;
createNode mesh -n "polySurfaceShape109" -p "polySurface109";
	rename -uid "D53141A1-4D32-94AB-07B2-E8B141B537BE";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface110" -p "polySurface_crane";
	rename -uid "0FDD5523-43C8-B661-EBF3-30B99AD204C3";
	setAttr ".t" -type "double3" 0.74864890714407917 0.1777047446782126 -0.84223547878216776 ;
	setAttr ".r" -type "double3" -129.55340668353693 -185.01386127922518 16.179967768883149 ;
	setAttr ".rp" -type "double3" -77.836035156250006 109.432529296875 -83.272177734375006 ;
	setAttr ".sp" -type "double3" -77.836035156250006 109.432529296875 -83.272177734375006 ;
createNode mesh -n "polySurfaceShape110" -p "polySurface110";
	rename -uid "DB546227-4545-F834-3C61-5BA9550CE1D9";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface111" -p "polySurface_crane";
	rename -uid "B2AE0796-41C6-41B0-E25B-A7BAF144C4D5";
	setAttr ".r" -type "double3" -7.7907670042161774 78.771092778158817 -7.6705140553144018 ;
	setAttr ".rp" -type "double3" -83.097128906250006 94.210175781250001 -96.640126953125005 ;
	setAttr ".sp" -type "double3" -83.097128906250006 94.210175781250001 -96.640126953125005 ;
createNode mesh -n "polySurfaceShape111" -p "polySurface111";
	rename -uid "FB514C9C-45F8-970F-7965-06A877159841";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface112" -p "polySurface_crane";
	rename -uid "2D7E9D27-4FCC-CC99-61AD-328FE42E0F2A";
	setAttr ".r" -type "double3" -7.7907670042161774 78.771092778158817 -7.6705140553144018 ;
	setAttr ".rp" -type "double3" -83.097128906250006 94.210175781250001 -96.640126953125005 ;
	setAttr ".sp" -type "double3" -83.097128906250006 94.210175781250001 -96.640126953125005 ;
createNode mesh -n "polySurfaceShape112" -p "polySurface112";
	rename -uid "A6797AEA-4864-2A1A-0E3C-5CBF3875300B";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface113" -p "polySurface_crane";
	rename -uid "E7D23308-4F4A-80F6-C8F4-6FA82D158D6E";
	setAttr ".r" -type "double3" -7.7907670042161774 78.771092778158817 -7.6705140553144018 ;
	setAttr ".rp" -type "double3" -83.097128906250006 94.210175781250001 -96.640126953125005 ;
	setAttr ".sp" -type "double3" -83.097128906250006 94.210175781250001 -96.640126953125005 ;
createNode mesh -n "polySurfaceShape113" -p "polySurface113";
	rename -uid "1429E4E6-4AB7-0043-E576-E88E74990AB7";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface114" -p "polySurface_crane";
	rename -uid "8EAED60C-492F-E428-322D-17AE09813170";
	setAttr ".r" -type "double3" -7.7907670042161774 78.771092778158817 -7.6705140553144018 ;
	setAttr ".rp" -type "double3" -83.097128906250006 94.210175781250001 -96.640126953125005 ;
	setAttr ".sp" -type "double3" -83.097128906250006 94.210175781250001 -96.640126953125005 ;
createNode mesh -n "polySurfaceShape114" -p "polySurface114";
	rename -uid "D6093212-4A12-D19E-7720-378E39EB66F5";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface115" -p "polySurface_crane";
	rename -uid "5338277B-4695-EC8C-FB5E-3FB24147F317";
createNode mesh -n "polySurfaceShape115" -p "polySurface115";
	rename -uid "5752952F-43F4-0715-D4D8-04B82916D896";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface116" -p "polySurface_crane";
	rename -uid "1E79401A-4952-466C-8219-AB9827DEFC26";
createNode mesh -n "polySurfaceShape116" -p "polySurface116";
	rename -uid "985D4E18-4B2B-1E8A-E0FB-50B87D5E9A52";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface117" -p "polySurface_crane";
	rename -uid "86BBA1E2-4684-0501-0439-CBA52C94808C";
createNode mesh -n "polySurfaceShape117" -p "polySurface117";
	rename -uid "BB62B265-4760-8B94-3E18-458CEEAE8C6C";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface118" -p "polySurface_crane";
	rename -uid "38C51555-4DB1-3D47-FCC0-E39986C8B257";
createNode mesh -n "polySurfaceShape118" -p "polySurface118";
	rename -uid "F94C82E2-48B9-B166-98F5-6182E493CFF1";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface119" -p "polySurface_crane";
	rename -uid "FBAE7235-4B89-4E81-3B9B-A799AEB3363D";
createNode mesh -n "polySurfaceShape119" -p "polySurface119";
	rename -uid "B700869D-4FA3-EF41-2ED3-92854D85B28D";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface120" -p "polySurface_crane";
	rename -uid "5B663C97-4373-CF05-50DC-C08BDEB55AA7";
createNode mesh -n "polySurfaceShape120" -p "polySurface120";
	rename -uid "9CD18547-4574-D87A-7CC5-DEBA4A52FDC6";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface121" -p "polySurface_crane";
	rename -uid "9F3973C9-438C-DC47-F874-CDAD42DE79D5";
createNode mesh -n "polySurfaceShape121" -p "polySurface121";
	rename -uid "40D1088E-4A84-315D-12F0-49A4DDDE1FF5";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface122" -p "polySurface_crane";
	rename -uid "985489E8-4394-AC05-01F4-AC85321BAAD0";
createNode mesh -n "polySurfaceShape122" -p "polySurface122";
	rename -uid "A27F8BEF-4C97-4771-5CFF-E58F934A8BF5";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface123" -p "polySurface_crane";
	rename -uid "36665AE2-4F4C-EFDF-03D7-A1AC8CF0EB6C";
createNode mesh -n "polySurfaceShape123" -p "polySurface123";
	rename -uid "C8FCDAD4-4DD0-AF14-948C-20B1CF7C71DF";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface124" -p "polySurface_crane";
	rename -uid "B2AE033D-42F9-E5B8-7A6C-BCAFEFBCE53D";
createNode mesh -n "polySurfaceShape124" -p "polySurface124";
	rename -uid "D8C4CE54-4ECD-3101-C7F2-01A37AEC9A00";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface125" -p "polySurface_crane";
	rename -uid "9927C043-470D-97AA-7606-3D91535AAF32";
createNode mesh -n "polySurfaceShape125" -p "polySurface125";
	rename -uid "56BD2142-4AE6-E8AB-5E93-09970E38C543";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface126" -p "polySurface_crane";
	rename -uid "987CB33A-4758-E77D-C042-45B467DE6774";
createNode mesh -n "polySurfaceShape126" -p "polySurface126";
	rename -uid "DF40EA28-422C-D21E-C6B0-5B93F40B9806";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface127" -p "polySurface_crane";
	rename -uid "1FD9C3FC-4B6A-D1EB-EE2C-8EAE3A99A26B";
createNode mesh -n "polySurfaceShape127" -p "polySurface127";
	rename -uid "0BE81188-4BE8-4D6C-DF73-42ABBA4CF81A";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface128" -p "polySurface_crane";
	rename -uid "94BFF2AB-45EB-D13C-A06E-BBAE9D7F07F2";
createNode mesh -n "polySurfaceShape128" -p "polySurface128";
	rename -uid "8BBD4F6B-4BD2-5F90-549B-C4A9A98255A1";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface129" -p "polySurface_crane";
	rename -uid "735985AF-423F-B7A6-D778-74B4FDBF5EA4";
createNode mesh -n "polySurfaceShape129" -p "polySurface129";
	rename -uid "A771B2C3-4527-D342-2DB2-BF9D4A0C25E8";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface130" -p "polySurface_crane";
	rename -uid "EFE3F6D6-4C68-733D-8D72-1AAF81C396DD";
createNode mesh -n "polySurfaceShape130" -p "polySurface130";
	rename -uid "515F7542-47C6-ACAD-D383-6692F8574254";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface131" -p "polySurface_crane";
	rename -uid "D7E6A0CB-4BE6-6082-6E55-30B50C6154C8";
createNode mesh -n "polySurfaceShape131" -p "polySurface131";
	rename -uid "8BB560AF-4ABE-FB48-C03B-899BE2DD8325";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface132" -p "polySurface_crane";
	rename -uid "F69B041E-41CC-6CD8-1A02-989D9219A2E5";
createNode mesh -n "polySurfaceShape132" -p "polySurface132";
	rename -uid "93DDB8E4-4D9A-A0AD-239A-E19FF6D2DE6B";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface133" -p "polySurface_crane";
	rename -uid "CE6654C8-45E0-B1C5-6D52-F698FEBA7CE7";
createNode mesh -n "polySurfaceShape133" -p "polySurface133";
	rename -uid "5E48ED89-43FA-5CE5-FB24-3DB2A22D8170";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface134" -p "polySurface_crane";
	rename -uid "C8E6D39B-4206-9149-E9BC-C39F57BAC3F2";
createNode mesh -n "polySurfaceShape134" -p "polySurface134";
	rename -uid "3E239CD3-46ED-585C-C055-BDA97B6ADEC6";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface135" -p "polySurface_crane";
	rename -uid "662A644C-4F45-A5A7-31F7-77A922636DF1";
createNode mesh -n "polySurfaceShape135" -p "polySurface135";
	rename -uid "423F0127-433A-BF7B-9211-A985A3D06A77";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface136" -p "polySurface_crane";
	rename -uid "F1173E0E-42B2-1755-9E7A-7FB8EC494287";
createNode mesh -n "polySurfaceShape136" -p "polySurface136";
	rename -uid "4DBB6451-4083-A5B9-C319-D5ACD8FB8029";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface137" -p "polySurface_crane";
	rename -uid "6221B9BC-432E-6518-4BC1-89B5DF19A647";
createNode mesh -n "polySurfaceShape137" -p "polySurface137";
	rename -uid "6540AA7D-4CE6-5FAA-BDAC-F1873E93D822";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface138" -p "polySurface_crane";
	rename -uid "585AEECF-407F-B0DB-216C-9C95CDBB3214";
createNode mesh -n "polySurfaceShape138" -p "polySurface138";
	rename -uid "F3B87251-4F96-7AAD-9FE1-8384E6F10723";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface139" -p "polySurface_crane";
	rename -uid "CCFC0836-44BD-0E3E-7385-87BF8AC3B084";
createNode mesh -n "polySurfaceShape139" -p "polySurface139";
	rename -uid "01F642B6-4FC9-4EA8-0A32-2D8DA259E31E";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface140" -p "polySurface_crane";
	rename -uid "FF308B20-4EEB-8E9F-E547-65AC655197FF";
	setAttr ".t" -type "double3" -0.68926365452172833 3.7199318560116943 -1.6664544262425989 ;
	setAttr ".r" -type "double3" 61.45484501622839 25.528318485117193 -1.6190857415174584 ;
	setAttr ".s" -type "double3" 1.9977353422672277 1.9977353422672277 1.9977353422672277 ;
	setAttr ".rp" -type "double3" 113.510380859375 6.9213415527343756 -15.78845458984375 ;
	setAttr ".sp" -type "double3" 113.510380859375 6.9213415527343756 -15.78845458984375 ;
createNode mesh -n "polySurfaceShape140" -p "polySurface140";
	rename -uid "BF6ECEF4-4779-7AD6-33B9-F1B4928EE560";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface141" -p "polySurface_crane";
	rename -uid "159542B0-44C8-2EBE-F43A-27998F117CB6";
	setAttr ".t" -type "double3" -0.68926365452172833 3.7199318560116943 -1.6664544262425989 ;
	setAttr ".r" -type "double3" 61.45484501622839 25.528318485117193 -1.6190857415174584 ;
	setAttr ".s" -type "double3" 1.9977353422672277 1.9977353422672277 1.9977353422672277 ;
	setAttr ".rp" -type "double3" 113.510380859375 6.9213415527343756 -15.78845458984375 ;
	setAttr ".sp" -type "double3" 113.510380859375 6.9213415527343756 -15.78845458984375 ;
createNode mesh -n "polySurfaceShape141" -p "polySurface141";
	rename -uid "BA47D199-48E2-0B4E-D600-BA8370844E48";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface142" -p "polySurface_crane";
	rename -uid "BB0F4831-40AF-5409-8117-30A23FF51A22";
	setAttr ".t" -type "double3" -0.68926365452172833 3.7199318560116943 -1.6664544262425989 ;
	setAttr ".r" -type "double3" 61.45484501622839 25.528318485117193 -1.6190857415174584 ;
	setAttr ".s" -type "double3" 1.9977353422672277 1.9977353422672277 1.9977353422672277 ;
	setAttr ".rp" -type "double3" 113.510380859375 6.9213415527343756 -15.78845458984375 ;
	setAttr ".sp" -type "double3" 113.510380859375 6.9213415527343756 -15.78845458984375 ;
createNode mesh -n "polySurfaceShape142" -p "polySurface142";
	rename -uid "4B44ABB9-4996-FEED-3244-43AD87C487F7";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface143" -p "polySurface_crane";
	rename -uid "EFCFCB5E-4167-471C-EF3E-57BD693F739C";
	setAttr ".t" -type "double3" -0.68926365452172833 3.7199318560116943 -1.6664544262425989 ;
	setAttr ".r" -type "double3" 61.45484501622839 25.528318485117193 -1.6190857415174584 ;
	setAttr ".s" -type "double3" 1.9977353422672277 1.9977353422672277 1.9977353422672277 ;
	setAttr ".rp" -type "double3" 113.510380859375 6.9213415527343756 -15.78845458984375 ;
	setAttr ".sp" -type "double3" 113.510380859375 6.9213415527343756 -15.78845458984375 ;
createNode mesh -n "polySurfaceShape143" -p "polySurface143";
	rename -uid "4BF7DE6D-47AB-3927-3A85-D39BBD363CBE";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface144" -p "polySurface_crane";
	rename -uid "A0EF3B41-4ACF-AB23-B825-0DA09D8DCF00";
createNode mesh -n "polySurfaceShape144" -p "polySurface144";
	rename -uid "FF49061C-4F81-94C2-5C83-D4A1E929B94F";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface145" -p "polySurface_crane";
	rename -uid "F3C179A6-4E19-976D-4815-F7AC4B60FC7C";
	setAttr ".t" -type "double3" 1.2257057007124788 0.71312994959309661 -0.27941912338996189 ;
	setAttr ".r" -type "double3" 10.734458244264182 -14.712241347990407 39.966082358376795 ;
	setAttr ".rp" -type "double3" 105.1324609375 -4.416909790039063 40.123967285156247 ;
	setAttr ".sp" -type "double3" 105.1324609375 -4.416909790039063 40.123967285156247 ;
createNode mesh -n "polySurfaceShape145" -p "polySurface145";
	rename -uid "C7F0D055-4C38-9B44-E09A-61AC20D5C962";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface146" -p "polySurface_crane";
	rename -uid "591672F0-4CEE-10E8-648C-D194066C3117";
	setAttr ".t" -type "double3" 1.2257057007124788 0.71312994959309661 -0.27941912338996189 ;
	setAttr ".r" -type "double3" 10.734458244264182 -14.712241347990407 39.966082358376795 ;
	setAttr ".rp" -type "double3" 105.1324609375 -4.416909790039063 40.123967285156247 ;
	setAttr ".sp" -type "double3" 105.1324609375 -4.416909790039063 40.123967285156247 ;
createNode mesh -n "polySurfaceShape146" -p "polySurface146";
	rename -uid "69763509-474A-1361-61ED-A3A95974767C";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface147" -p "polySurface_crane";
	rename -uid "10F98CD6-47FA-7F60-1A74-269FEAC8AB8A";
	setAttr ".t" -type "double3" 1.2257057007124788 0.71312994959309661 -0.27941912338996189 ;
	setAttr ".r" -type "double3" 10.734458244264182 -14.712241347990407 39.966082358376795 ;
	setAttr ".rp" -type "double3" 105.1324609375 -4.416909790039063 40.123967285156247 ;
	setAttr ".sp" -type "double3" 105.1324609375 -4.416909790039063 40.123967285156247 ;
createNode mesh -n "polySurfaceShape147" -p "polySurface147";
	rename -uid "B132EDAF-43D7-3DF4-5244-508EB720946C";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface148" -p "polySurface_crane";
	rename -uid "1101ACB6-4522-C399-CC69-C699578428BF";
	setAttr ".t" -type "double3" 1.2257057007124788 0.71312994959309661 -0.27941912338996189 ;
	setAttr ".r" -type "double3" 10.734458244264182 -14.712241347990407 39.966082358376795 ;
	setAttr ".rp" -type "double3" 105.1324609375 -4.416909790039063 40.123967285156247 ;
	setAttr ".sp" -type "double3" 105.1324609375 -4.416909790039063 40.123967285156247 ;
createNode mesh -n "polySurfaceShape148" -p "polySurface148";
	rename -uid "949F6F89-4B7E-B90B-831F-D599EE21F7A2";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface149" -p "polySurface_crane";
	rename -uid "FA22052E-4420-C5BC-B61A-EAAD16F67681";
	setAttr ".t" -type "double3" -0.34464091875604935 0.8023699953558473 -0.90579270299742776 ;
	setAttr ".r" -type "double3" 15.494844537774934 13.396971367325465 -37.578285045071887 ;
	setAttr ".rp" -type "double3" 124.53451171875 4.1025155639648441 35.6903076171875 ;
	setAttr ".sp" -type "double3" 124.53451171875 4.1025155639648441 35.6903076171875 ;
createNode mesh -n "polySurfaceShape149" -p "polySurface149";
	rename -uid "7B1D2134-44DF-AE73-3B88-07852595B0B1";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface150" -p "polySurface_crane";
	rename -uid "3889F5DA-4033-26D4-881F-96A093271AFB";
	setAttr ".t" -type "double3" -0.34464091875604935 0.8023699953558473 -0.90579270299742776 ;
	setAttr ".r" -type "double3" 15.494844537774934 13.396971367325465 -37.578285045071887 ;
	setAttr ".rp" -type "double3" 124.53451171875 4.1025155639648441 35.6903076171875 ;
	setAttr ".sp" -type "double3" 124.53451171875 4.1025155639648441 35.6903076171875 ;
createNode mesh -n "polySurfaceShape150" -p "polySurface150";
	rename -uid "EFB46F03-4703-5DAA-CE24-50ACFCFAF9D6";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface151" -p "polySurface_crane";
	rename -uid "0980C6BD-452E-53BF-F7F4-698833966B67";
	setAttr ".t" -type "double3" -0.34464091875604935 0.8023699953558473 -0.90579270299742776 ;
	setAttr ".r" -type "double3" 15.494844537774934 13.396971367325465 -37.578285045071887 ;
	setAttr ".rp" -type "double3" 124.53451171875 4.1025155639648441 35.6903076171875 ;
	setAttr ".sp" -type "double3" 124.53451171875 4.1025155639648441 35.6903076171875 ;
createNode mesh -n "polySurfaceShape151" -p "polySurface151";
	rename -uid "99593125-42C3-E3FA-57CC-30A894311F3F";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface152" -p "polySurface_crane";
	rename -uid "F8DD20B8-4B16-14FC-1A27-B19EC8F464FF";
	setAttr ".t" -type "double3" -0.34464091875604935 0.8023699953558473 -0.90579270299742776 ;
	setAttr ".r" -type "double3" 15.494844537774934 13.396971367325465 -37.578285045071887 ;
	setAttr ".rp" -type "double3" 124.53451171875 4.1025155639648441 35.6903076171875 ;
	setAttr ".sp" -type "double3" 124.53451171875 4.1025155639648441 35.6903076171875 ;
createNode mesh -n "polySurfaceShape152" -p "polySurface152";
	rename -uid "BAC75DE5-4AD0-9D9F-6A02-78A4CFFE7D4F";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface153" -p "polySurface_crane";
	rename -uid "09607A2B-41AA-971A-9306-9A86AC5EFA7B";
createNode mesh -n "polySurfaceShape153" -p "polySurface153";
	rename -uid "F7472789-400C-53AE-D142-DDB755B32B95";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface154" -p "polySurface_crane";
	rename -uid "3F8BA3A0-4D60-216B-24A9-D7B1F44D60EB";
createNode mesh -n "polySurfaceShape154" -p "polySurface154";
	rename -uid "499EC707-4755-83D7-3751-6281A30E8A3C";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface155" -p "polySurface_crane";
	rename -uid "63F563FF-4AB7-5CE7-5695-809441ABF968";
createNode mesh -n "polySurfaceShape155" -p "polySurface155";
	rename -uid "EC0D1526-4C54-5250-CE51-D39B6A5616AA";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface156" -p "polySurface_crane";
	rename -uid "6AF0EEE6-44D8-5E81-F29D-DBA9C98D04EE";
createNode mesh -n "polySurfaceShape156" -p "polySurface156";
	rename -uid "9660C016-4695-4EC3-BA8F-1CA64A83405F";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface157" -p "polySurface_crane";
	rename -uid "4BC55BF3-4DBA-130F-E8F0-08B7CF67C48A";
createNode mesh -n "polySurfaceShape157" -p "polySurface157";
	rename -uid "533869DC-468B-D544-61EF-2D88B5B4DFAE";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface158" -p "polySurface_crane";
	rename -uid "0FA5361B-4808-B7BE-3DB9-2FB12BECD9BB";
createNode mesh -n "polySurfaceShape158" -p "polySurface158";
	rename -uid "93B1E4AB-49C0-E08F-04E4-79820BB70302";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface159" -p "polySurface_crane";
	rename -uid "6A9F4DB9-4EC8-538E-1C38-88A9292DC3A3";
createNode mesh -n "polySurfaceShape159" -p "polySurface159";
	rename -uid "2B44BD7F-4B95-FF89-D049-0B98AECDFE32";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface160" -p "polySurface_crane";
	rename -uid "2433AFBA-46F3-6A3B-8884-168B2A6FABA6";
createNode mesh -n "polySurfaceShape160" -p "polySurface160";
	rename -uid "9C8A2981-44D0-E7EF-1A8D-3B8E9804BADC";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface161" -p "polySurface_crane";
	rename -uid "47B2ABEB-4F68-B98E-5233-7C87F76F2458";
createNode mesh -n "polySurfaceShape161" -p "polySurface161";
	rename -uid "6113F560-4ED0-1197-B0A5-E38A3C988353";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface162" -p "polySurface_crane";
	rename -uid "9FF7A162-4A89-A73B-743E-3FB42F5DF627";
createNode mesh -n "polySurfaceShape162" -p "polySurface162";
	rename -uid "6B26FA87-4331-E056-CE78-4AB4D9137655";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface163" -p "polySurface_crane";
	rename -uid "9884DFB2-44B6-2BD3-7167-848110D847BC";
createNode mesh -n "polySurfaceShape163" -p "polySurface163";
	rename -uid "D96B0FD8-44E7-9F55-2B34-CAB59F241E59";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface164" -p "polySurface_crane";
	rename -uid "8794F172-457E-17FB-DAE7-0598B9A5A067";
createNode mesh -n "polySurfaceShape164" -p "polySurface164";
	rename -uid "EB1D1F4B-4A15-D0C1-D371-3FA57FF4DBA3";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface165" -p "polySurface_crane";
	rename -uid "EA87BC4F-42AB-1734-15F6-77AB897173F9";
	setAttr ".t" -type "double3" 0.645911487714111 -0.27304135454549394 -0.1304066180507516 ;
	setAttr ".r" -type "double3" 33.669132596705758 -12.648593977914654 24.009555032089157 ;
	setAttr ".rp" -type "double3" 107.268662109375 32.86353271484375 28.96837646484375 ;
	setAttr ".sp" -type "double3" 107.268662109375 32.86353271484375 28.96837646484375 ;
createNode mesh -n "polySurfaceShape165" -p "polySurface165";
	rename -uid "849F3380-4F50-324F-01F9-03ABE725891A";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface166" -p "polySurface_crane";
	rename -uid "5FDE5295-4B91-C0B7-B188-928E901266CA";
	setAttr ".t" -type "double3" 0.645911487714111 -0.27304135454549394 -0.1304066180507516 ;
	setAttr ".r" -type "double3" 33.669132596705758 -12.648593977914654 24.009555032089157 ;
	setAttr ".rp" -type "double3" 107.268662109375 32.86353271484375 28.96837646484375 ;
	setAttr ".sp" -type "double3" 107.268662109375 32.86353271484375 28.96837646484375 ;
createNode mesh -n "polySurfaceShape166" -p "polySurface166";
	rename -uid "9EBFF540-4072-0856-15CE-0892B4DE516C";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface167" -p "polySurface_crane";
	rename -uid "EA95C7C9-465C-A4D7-1EB8-D48D6D1643B6";
	setAttr ".t" -type "double3" 0.645911487714111 -0.27304135454549394 -0.1304066180507516 ;
	setAttr ".r" -type "double3" 33.669132596705758 -12.648593977914654 24.009555032089157 ;
	setAttr ".rp" -type "double3" 107.268662109375 32.86353271484375 28.96837646484375 ;
	setAttr ".sp" -type "double3" 107.268662109375 32.86353271484375 28.96837646484375 ;
createNode mesh -n "polySurfaceShape167" -p "polySurface167";
	rename -uid "3443D28B-4B65-5327-7874-16AC33E52CA1";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface168" -p "polySurface_crane";
	rename -uid "4BA3F028-4609-F8A2-78F8-36819E6AE5D5";
	setAttr ".t" -type "double3" 0.645911487714111 -0.27304135454549394 -0.1304066180507516 ;
	setAttr ".r" -type "double3" 33.669132596705758 -12.648593977914654 24.009555032089157 ;
	setAttr ".rp" -type "double3" 107.268662109375 32.86353271484375 28.96837646484375 ;
	setAttr ".sp" -type "double3" 107.268662109375 32.86353271484375 28.96837646484375 ;
createNode mesh -n "polySurfaceShape168" -p "polySurface168";
	rename -uid "796336DC-4B8C-0A6F-5ECE-7BA9D2DC8174";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface169" -p "polySurface_crane";
	rename -uid "71F0B496-40B9-5CCC-8B29-49B0A3659052";
createNode mesh -n "polySurfaceShape169" -p "polySurface169";
	rename -uid "A46172AB-47C6-60EE-D76A-C39DB9A68D9A";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface170" -p "polySurface_crane";
	rename -uid "54018D56-4704-1AC4-9612-2B8A8DEB89DE";
createNode mesh -n "polySurfaceShape170" -p "polySurface170";
	rename -uid "89C448AE-469D-A1B0-AB82-A992F8596141";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface171" -p "polySurface_crane";
	rename -uid "EA80BC45-4F0A-B68B-52E2-26969E4EB14F";
createNode mesh -n "polySurfaceShape171" -p "polySurface171";
	rename -uid "BF901FB9-4920-4569-BA2F-7D832B9ED1D8";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface172" -p "polySurface_crane";
	rename -uid "D2082946-4EEC-A8AB-52D3-1EBE1A91E074";
createNode mesh -n "polySurfaceShape172" -p "polySurface172";
	rename -uid "0CC2320C-4F37-A073-38BC-61B225DBE4D5";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface173" -p "polySurface_crane";
	rename -uid "7D2F4D55-4759-78CA-E124-709D536FEC75";
createNode mesh -n "polySurfaceShape173" -p "polySurface173";
	rename -uid "C3D9434C-48BD-7EDA-B8F8-C9A5D0F698AF";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface174" -p "polySurface_crane";
	rename -uid "1B063946-4044-76F7-0A5E-8DB3F931E76C";
createNode mesh -n "polySurfaceShape174" -p "polySurface174";
	rename -uid "FEF96085-4C50-42B0-A5F7-4AB7C4A011A7";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface175" -p "polySurface_crane";
	rename -uid "8789492A-42BE-D102-57AC-A98F6CDC30CC";
createNode mesh -n "polySurfaceShape175" -p "polySurface175";
	rename -uid "F8191514-4852-24C7-A933-5E827B94E9DC";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface176" -p "polySurface_crane";
	rename -uid "777E8D4A-4F90-374A-B7F3-BAA035DFE931";
createNode mesh -n "polySurfaceShape176" -p "polySurface176";
	rename -uid "DD227F25-4264-FE61-478D-14ACB1B3C7E1";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform1" -p "polySurface_crane";
	rename -uid "30B0469C-4D8C-1A3C-3F42-68ACF35BBE79";
	setAttr ".v" no;
createNode mesh -n "polySurface_craneShape" -p "transform1";
	rename -uid "8D5FCBD4-470F-028D-BF6E-B2B90CDFB777";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 3 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 2 "f[0:1311]" "f[1336:3111]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[1312:1335]";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 1 "f[1336:3111]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.1005590739659965 0.71507908403873444 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4133 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.43653774 0.33111799 0.48659563
		 0.30307299 0.49759424 0.32078469 0.43410397 0.36014497 0.48536175 0.21773385 0.49081421
		 0.18533872 0.52051687 0.19336717 0.51306987 0.2254913 0.33793789 0.27160805 0.328421
		 0.23342825 0.35377854 0.23011853 0.36333048 0.2617498 0.45979011 0.21562774 0.46046042
		 0.24785893 0.4105413 0.26305008 0.4189136 0.22113235 0.48351789 0.25316453 0.50742716
		 0.26734251 0.46660072 0.2657463 0.42477149 0.28339505 0.50530946 0.29584438 0.48877853
		 0.27942926 0.3689779 0.42046553 0.37074047 0.44254959 0.32492703 0.44607157 0.326855
		 0.42427135 0.51319975 0.34459138 0.52367675 0.35751557 0.45526463 0.41101402 0.4458884
		 0.39300871 0.53899229 0.29373634 0.55973357 0.30696863 0.54351026 0.33372855 0.52832073
		 0.32053423 0.55525786 0.24352923 0.5811674 0.25321084 0.56683189 0.2075545 0.59078968
		 0.2087916 0.38712263 0.22562589 0.38627779 0.26159328 0.41506183 0.43050826 0.40902615
		 0.40919906 0.27966064 0.44168681 0.23603779 0.43157488 0.24451953 0.41289121 0.28468192
		 0.42134398 0.24132735 0.096379608 0.31066751 0.084912866 0.28693801 0.10839877 0.2548846
		 0.12120938 0.34208262 0.1139341 0.3133657 0.10814652 0.44535184 0.016806895 0.49843302
		 0.015420312 0.49982974 0.033945791 0.43741494 0.029793017 0.13425177 0.12642783 0.13648039
		 0.13844927 0.12059873 0.13553761 0.1216616 0.12365371 0.40175837 0.37592715 0.37019408
		 0.38829607 0.33482289 0.39060014 0.073143058 0.11904389 0.076199107 0.10224363 0.095912866
		 0.11209647 0.090535454 0.12503272 0.14007944 0.14595483 0.12216633 0.14282317 0.28189844
		 0.13737898 0.26329076 0.13409196 0.090724163 0.15253852 0.13178593 0.16676597 0.094235234
		 0.19081311 0.076879077 0.17650263 0.089882307 0.13165872 0.1351729 0.33940327 0.10855406
		 0.31061709 0.10620265 0.261976 0.14247996 0.31954253 0.12494772 0.25933546 0.14225775
		 0.29804891 0.16092902 0.13765644 0.15389043 0.12600642 0.22009593 0.11076963 0.2378841
		 0.12393299 0.16763091 0.14481457 0.24502712 0.13361607 0.36651301 0.13363965 0.3549301
		 0.18794002 0.33430839 0.18663804 0.33915138 0.13694428 0.31216288 0.13979714 0.17418438
		 0.36104786 0.16850179 0.33286291 0.2058714 0.39952976 0.19200057 0.41410369 0.15129238
		 0.37032294 0.17413169 0.19685589 0.10841172 0.22111581 0.10662549 0.20442463 0.1728794
		 0.17300971 0.25622278 0.18532597 0.24413532 0.20610614 0.22478396 0.33846873 0.25440985
		 0.36109692 0.23837644 0.37746269 0.20390981 0.35009938 0.24149752 0.32325017 0.25254893
		 0.30434388 0.2779153 0.31844026 0.26810986 0.34152442 0.33220261 0.19110216 0.31047809
		 0.19704978 0.3143934 0.18575464 0.29426885 0.20126437 0.27678227 0.20596774 0.27748775
		 0.18526934 0.29892117 0.18549354 0.25835586 0.21025236 0.27162331 0.23521341 0.25295436
		 0.24293934 0.25744158 0.28295141 0.28064644 0.29118347 0.30094182 0.2371601 0.2863695
		 0.23618524 0.30880469 0.28220773 0.29462004 0.28664845 0.29370683 0.31323606 0.31065875
		 0.30964673 0.31046641 0.3346343 0.28833652 0.33906442 0.27800059 0.36229789 0.30155301
		 0.35923296 0.29682207 0.38729155 0.26642209 0.38435644 0.1498099 0.16988729 0.10010844
		 0.1953757 0.20168632 0.33558291 0.22593039 0.21369682 0.18491966 0.20724402 0.24435788
		 0.29898536 0.2358076 0.31608099 0.22088116 0.32889521 0.24735093 0.28023022 0.24250603
		 0.24316874 0.14123601 0.2250946 0.22108191 0.097870149 0.22328025 0.091086924 0.24490082
		 0.12267098 0.25417668 0.13339509 0.2668671 0.18549766 0.16249222 0.28630275 0.18635082
		 0.27146924 0.19232941 0.27824557 0.17896652 0.30718297 0.19932753 0.27869564 0.19954205
		 0.30939686 0.20421368 0.27681488 0.21268725 0.30480361 0.22309011 0.29617572 0.20810908
		 0.27375484 0.21070045 0.26989704 0.22947878 0.28489757 0.23196238 0.27255386 0.21178913
		 0.26558018 0.21001345 0.25713772 0.22789055 0.24985413 0.20561975 0.25158775 0.21742851
		 0.23244883 0.19669878 0.2487372 0.19149983 0.2254938 0.18526495 0.2549358 0.16060394
		 0.23987071 0.18181235 0.26231992 0.15029162 0.26026565 0.056926072 0.1934476 0.067592196
		 0.15055354 0.090728097 0.20399584 0.061769061 0.2292317 0.061639957 0.22268875 0.086131029
		 0.19964145 0.071965747 0.12619573 0.097179107 0.22436266 0.095089369 0.21154962 0.074656062
		 0.18954669 0.063076429 0.20136829 0.09738189 0.29254514 0.095407888 0.25490487 0.085587792
		 0.27536756 0.068429761 0.25579369 0.063821964 0.24044345 0.52645379 0.014421919 0.53248757
		 0.032246597 0.49362236 0.1553065 0.52860254 0.16128732 0.57655048 0.16958104 0.59570259
		 0.16817869 0.079163484 0.090833634 0.081595831 0.082872689 0.10032266 0.098983109
		 0.098505303 0.10406238 0.15219373 0.11986795 0.15156263 0.11607942 0.22014356 0.1039775
		 0.12269001 0.11730736 0.12342065 0.11357489 0.13483828 0.11671197 0.13435835 0.12021533
		 0.12424021 0.075843751 0.1121295 0.068505615 0.11751574 0.062203072 0.12935811 0.0680691
		 0.14270347 0.054140709 0.12236469 0.046386681 0.22028548 0.026062794 0.22402185 0.046282865
		 0.24268883 0.026540779 0.24419987 0.04901164 0.33306724 0.03260655 0.33295935 0.053342871
		 0.36096162 0.035083137 0.35897017 0.054625623 0.37666881 0.055969514 0.3791967 0.037120648
		 0.40792012 0.034942828 0.40807515 0.058893792 0.43058813 0.061002068 0.41504914 0.013718391
		 0.38288075 0.0099671576 0.33274114 0.005812088 0.36358505 0.0081157787 0.24099821
		 0.0057744328 0.21602887 0.0065280888 0.093500428 0.036295451 0.09854655 0.068928808
		 0.099810056 0.061155908 0.14738172 0.085574061 0.15248281 0.081017345 0.20134187
		 0.076064497 0.20163512 0.082516611 0.22524303 0.06652686 0.24410105 0.072236359 0.3343271
		 0.061654143 0.24430245 0.058233432 0.35894305 0.067107737 0.39963543 0.072926104
		 0.37520921 0.068601131 0.42336124 0.083952159 0.35700452 0.083290398;
	setAttr ".uvst[0].uvsp[250:499]" 0.33278209 0.071320623 0.13852018 0.075128764
		 0.13241965 0.079784304 0.22452295 0.054306693 0.14902455 0.057300769 0.10221653 0.094106816
		 0.10861915 0.076811731 0.12325149 0.082382381 0.11978512 0.10188508 0.084525757 0.074233085
		 0.13801247 0.10507521 0.15747136 0.06253659 0.8646096 0.38846403 0.86310828 0.38726786
		 0.86469638 0.3858054 0.86547929 0.38696429 0.12692505 0.10580788 0.89819932 0.41355875
		 0.87409323 0.39688361 0.8754729 0.3931486 0.90006822 0.40728751 0.85016507 0.34696287
		 0.86115468 0.37096375 0.85324848 0.36678073 0.83087569 0.33514604 0.82061183 0.34345454
		 0.84806871 0.37133914 0.84639996 0.37648878 0.81706351 0.35339022 0.85075986 0.38351333
		 0.82544553 0.37036043 0.93357456 0.43355265 0.93674314 0.42546645 0.83730078 0.3122941
		 0.81230527 0.29916281 0.79644263 0.30911678 0.78963685 0.32217261 0.79155654 0.34741223
		 0.96177262 0.44874385 0.96620417 0.43695411 0.82923853 0.28204694 0.80319124 0.26660225
		 0.78288943 0.28140211 0.77090162 0.29302767 0.76495618 0.32632944 0.86267948 0.38885862
		 0.86862946 0.3822031 0.86662239 0.38279802 0.96104264 0.028930683 0.93619579 0.044317454
		 0.94025493 0.06137421 0.96750152 0.046467625 0.88335776 0.28242084 0.87917495 0.2439876
		 0.86857265 0.25985089 0.87163979 0.29912922 0.95821977 0.18636055 0.92023176 0.17109689
		 0.91214025 0.18580361 0.94057149 0.20645253 0.98454344 0.099953771 0.95129192 0.10763769
		 0.93517834 0.12866063 0.9752171 0.12660147 0.98210537 0.061731331 0.95025587 0.077098653
		 0.95424771 0.093879186 0.99919575 0.077391073 0.85132301 0.27926418 0.85504448 0.31656566
		 0.90903246 0.24507321 0.89308894 0.21464126 0.88645214 0.22934468 0.89734983 0.26487938
		 0.96680367 0.15513182 0.92820263 0.15406615 0.37172532 0.11317431 0.373335 0.085155606
		 0.95773327 0.0086779036 0.932639 0.0052292384 0.9057582 0.027060006 0.92503452 0.033866115
		 0.47528625 0.284886 0.43453777 0.30512893 0.92407918 0.22666733 0.90326941 0.19966339
		 0.46372449 0.18268315 0.46465796 0.14906882 0.45193416 0.12052912 0.47437978 0.12548447
		 0.41584313 0.092016518 0.39385563 0.086866468 0.86745566 0.38491476 0.88044184 0.38898525
		 0.90716499 0.40071473 0.9462266 0.41665038 0.98047888 0.42283633 0.19928318 0.26378411
		 0.41033924 0.11422777 0.41689616 0.13775738 0.11390313 0.48049611 0.12360107 0.49180752
		 0.11735143 0.49843344 0.10702742 0.48797888 0.081326902 0.51658928 0.099819943 0.49973381
		 0.10937385 0.50994009 0.088624775 0.52818125 0.16218334 0.48825252 0.16136552 0.47516119
		 0.17417347 0.47110513 0.18157175 0.48850918 0.15029544 0.49001312 0.1414035 0.48334163
		 0.13688864 0.46977228 0.14911895 0.475034 0.18452719 0.46338129 0.18738103 0.47611448
		 0.10482485 0.45761618 0.09656398 0.4632096 0.089621693 0.4473725 0.097681493 0.44179952
		 0.086528696 0.47251239 0.079909422 0.45685199 0.070082173 0.48660731 0.064431012
		 0.46989715 0.16751623 0.43632063 0.16074678 0.44386271 0.15059662 0.42946211 0.15688378
		 0.42255124 0.15177631 0.45090458 0.14206587 0.43600222 0.1406946 0.45462069 0.13137287
		 0.43926197 0.12838869 0.45155948 0.11962055 0.4361105 0.073673651 0.39237842 0.06664636
		 0.3984901 0.058024768 0.37909925 0.065070234 0.37239635 0.05836368 0.4088023 0.049894594
		 0.38992402 0.041872568 0.42080259 0.032029968 0.40098915 0.13008539 0.38077721 0.12185663
		 0.38499099 0.11373832 0.36525145 0.12261824 0.36199155 0.11224829 0.38804644 0.10372506
		 0.3671982 0.10244136 0.38812441 0.093945935 0.36659351 0.092903689 0.38588944 0.084474929
		 0.36493531 0.041299801 0.29423243 0.034813754 0.29882699 0.031194506 0.27388927 0.036471751
		 0.27062592 0.028166603 0.30733916 0.025757875 0.28043759 0.011402933 0.316468 0.011794923
		 0.28745925 0.089344256 0.2901085 0.081981421 0.29455584 0.069592953 0.2724191 0.075115614
		 0.26794815 0.07320185 0.2964763 0.062545374 0.27461326 0.06567993 0.2949236 0.056317437
		 0.27349907 0.058759738 0.29228324 0.050654814 0.27072757 0.028313916 0.22423351 0.027408082
		 0.22478485 0.026643101 0.21507503 0.02649023 0.22596535 0.024126342 0.22713444 0.034976982
		 0.22407007 0.034173399 0.22502096 0.032952446 0.22552499 0.031762119 0.22527081 0.030788114
		 0.22452901 0.1099492 0.47177365 0.10235666 0.47900429 0.093613334 0.48971492 0.075893737
		 0.50456953 0.17886776 0.45166481 0.16890916 0.45926404 0.15846278 0.46488458 0.14642344
		 0.46663862 0.13377006 0.46246126 0.081431568 0.40889272 0.074145623 0.41474178 0.065559499
		 0.42478266 0.050122913 0.43705696 0.13792153 0.39512756 0.130491 0.40017751 0.12128018
		 0.40432897 0.11104976 0.40543872 0.10088186 0.40286937 0.052480754 0.33633813 0.045297865
		 0.34281895 0.038943876 0.3178224 0.045671422 0.31231582 0.0376729 0.35370189 0.031849679
		 0.32746089 0.019060863 0.36463222 0.014002642 0.33742526 0.10898891 0.32901341 0.10006005
		 0.33269534 0.090092622 0.31098983 0.098438606 0.30697265 0.090001509 0.33422941 0.080466039
		 0.31266466 0.081059404 0.33259532 0.072084427 0.31102741 0.072423585 0.33048126 0.064160123
		 0.30885831 0.033143073 0.25176102 0.043449841 0.2526477 0.047338501 0.25504649 0.05192801
		 0.25568786 0.056849968 0.25362802 0.060283478 0.24987495 0.015429301 0.26312166 0.025374468
		 0.25824606 0.029286016 0.25383168 0.05832405 0.35378554 0.051228832 0.36064056 0.043200526
		 0.37158358 0.024365846 0.38209039 0.11553092 0.34452742 0.10639319 0.34768605 0.096266955
		 0.34920114 0.08690235 0.3480565 0.077843465 0.34647018 0.090334527 0.42642686 0.082623668
		 0.4317556 0.073432125 0.44130042 0.058482151 0.4543381 0.14734037 0.41011375 0.14073737
		 0.41638246 0.13204956 0.42209569 0.12177368 0.42447901 0.11100199 0.4213773 0.41055077
		 0.18333067 0.90838391 0.076512933 0.90547329 0.061686441 0.88534629 0.068169639 0.88873506
		 0.081610382;
	setAttr ".uvst[0].uvsp[500:749]" 0.85630399 0.22986297 0.86702889 0.21717258
		 0.84680009 0.20238833 0.83681786 0.21227552 0.88382661 0.17757431 0.88776028 0.1676794
		 0.86949426 0.15636796 0.86673945 0.16430642 0.90332174 0.13326512 0.91887456 0.11887088
		 0.89255708 0.11804828 0.88194221 0.1312217 0.92177093 0.10639691 0.91801548 0.090699151
		 0.89262819 0.092845276 0.89430237 0.10607681 0.89608836 0.051807761 0.88080788 0.041507043
		 0.86355102 0.043129139 0.87595493 0.057305858 0.87167042 0.2046967 0.87752038 0.19111817
		 0.86002553 0.17831066 0.85228884 0.19174077 0.89202982 0.15754025 0.89725143 0.14855632
		 0.87653977 0.14259391 0.8723734 0.14879157 0.84065485 0.2475632 0.82605779 0.22918433
		 0.87140375 0.079327986 0.86381567 0.067462437 0.83017588 0.060863391 0.83924067 0.069915779
		 0.81461602 0.19608052 0.82436711 0.18868811 0.79639286 0.17518046 0.78661376 0.18205665
		 0.84940445 0.15437286 0.85271126 0.14813103 0.83411825 0.14133196 0.8295278 0.14680801
		 0.86217737 0.12736192 0.86898953 0.11390647 0.84476668 0.1045742 0.84040511 0.11999458
		 0.87484556 0.10267077 0.87687355 0.090065703 0.84593356 0.079519026 0.84692568 0.091989838
		 0.85252297 0.054982394 0.84712297 0.039500676 0.82134217 0.033989988 0.82278246 0.048297897
		 0.83155918 0.18021344 0.84118783 0.16795355 0.81827289 0.15908262 0.8054474 0.16904619
		 0.85552835 0.14257382 0.85863078 0.13721283 0.83939302 0.12986445 0.83761781 0.13602816
		 0.80795974 0.21290676 0.78105652 0.19575377 0.78305662 0.057334848 0.77537835 0.04930871
		 0.72171181 0.03937643 0.72715366 0.047253437 0.74614805 0.16660635 0.75617665 0.15928923
		 0.70854926 0.14735416 0.70091403 0.15393549 0.7931754 0.13594528 0.79871827 0.13042846
		 0.74723226 0.1216075 0.74048686 0.12737699 0.80618805 0.10349171 0.80440944 0.08866965
		 0.75051725 0.080983602 0.75475508 0.094502158 0.79954308 0.078338616 0.7917164 0.067388289
		 0.73535836 0.05805663 0.74415952 0.072187595 0.77191216 0.03792417 0.77362442 0.025798965
		 0.72354847 0.017138366 0.7207256 0.02835444 0.76625568 0.15257278 0.7807532 0.14530347
		 0.72885317 0.13566028 0.71623558 0.14302869 0.80263275 0.12459801 0.80415303 0.11720303
		 0.75412351 0.10604279 0.75250852 0.11441049 0.74052608 0.17665026 0.69759905 0.16168208
		 0.5247125 0.048376679 0.54662448 0.042933024 0.54731816 0.041612908 0.54775631 0.065174356
		 0.54901201 0.064309694 0.55025703 0.059298389 0.54963386 0.057799585 0.54148203 0.051730886
		 0.54420674 0.048040412 0.54435855 0.046509936 0.54532915 0.044737525 0.54881942 0.040544488
		 0.55034649 0.03880091 0.55006385 0.06307257 0.55049431 0.061240874 0.54853374 0.056626983
		 0.54711735 0.055592351 0.54537106 0.065485507 0.62571883 0.030506466 0.62727886 0.024465296
		 0.59736198 0.031255294 0.59568679 0.035897285 0.63098466 0.018031348 0.60113424 0.026806939
		 0.63494283 0.0098498799 0.60491657 0.020638112 0.60849172 0.12105525 0.61551654 0.11761439
		 0.59159851 0.099344581 0.58535159 0.10125685 0.61813951 0.11516945 0.59405279 0.097172141
		 0.62032276 0.11173186 0.59624857 0.093965888 0.62325805 0.10561129 0.59761733 0.088949025
		 0.62560803 0.098674268 0.59776324 0.083409272 0.62671816 0.091767959 0.59692317 0.078540519
		 0.62701875 0.084783822 0.59494293 0.073850468 0.62617034 0.077966101 0.59276551 0.069262035
		 0.62182081 0.065053537 0.58604932 0.060609289 0.62153441 0.056113169 0.58700323 0.052462377
		 0.62117898 0.048777327 0.58844829 0.047746457 0.62305981 0.039609499 0.59194028 0.042140156
		 0.68665063 0.038278691 0.68378031 0.030490879 0.65112871 0.022107679 0.65050274 0.028991986
		 0.68478465 0.020486046 0.65412188 0.014084775 0.68818313 0.0099161156 0.65815938
		 0.0046077408 0.66187268 0.1503986 0.66507751 0.14259009 0.63582188 0.13002715 0.6298281
		 0.13586019 0.67023575 0.13779302 0.63856339 0.12681501 0.67522693 0.13437991 0.64088076
		 0.12340963 0.68446791 0.12764031 0.64530915 0.11719222 0.69364572 0.12029365 0.64980251
		 0.11038181 0.70030922 0.11399277 0.65335947 0.10316406 0.70545179 0.10598452 0.6562171
		 0.095475785 0.70730758 0.097401768 0.65708894 0.087275222 0.70900691 0.08468888 0.65660244
		 0.071953535 0.70532238 0.073131919 0.65532917 0.061777741 0.70021385 0.063752472
		 0.65250617 0.052071184 0.69254184 0.049615398 0.65046382 0.039904311 0.43653774 0.33111799
		 0.48659563 0.30307299 0.49759424 0.32078469 0.43410397 0.36014497 0.48536175 0.21773385
		 0.49081421 0.18533872 0.52051687 0.19336717 0.51306987 0.2254913 0.33793789 0.27160805
		 0.328421 0.23342825 0.35377854 0.23011853 0.36333048 0.2617498 0.45979011 0.21562774
		 0.46046042 0.24785893 0.4105413 0.26305008 0.4189136 0.22113235 0.48351789 0.25316453
		 0.50742716 0.26734251 0.46660072 0.2657463 0.42477149 0.28339505 0.50530946 0.29584438
		 0.48877853 0.27942926 0.3689779 0.42046553 0.37074047 0.44254959 0.32492703 0.44607157
		 0.326855 0.42427135 0.51319975 0.34459138 0.52367675 0.35751557 0.45526463 0.41101402
		 0.4458884 0.39300871 0.53899229 0.29373634 0.55973357 0.30696863 0.54351026 0.33372855
		 0.52832073 0.32053423 0.55525786 0.24352923 0.5811674 0.25321084 0.56683189 0.2075545
		 0.59078968 0.2087916 0.38712263 0.22562589 0.38627779 0.26159328 0.41506183 0.43050826
		 0.40902615 0.40919906 0.27966064 0.44168681 0.23603779 0.43157488 0.24451953 0.41289121
		 0.28468192 0.42134398 0.24132735 0.096379608 0.31066751 0.084912866 0.28693801 0.10839877
		 0.2548846 0.12120938 0.34208262 0.1139341 0.3133657 0.10814652 0.44535184 0.016806895
		 0.49843302 0.015420312 0.49982974 0.033945791 0.43741494 0.029793017 0.13425177 0.12642783
		 0.13648039 0.13844927 0.12059873 0.13553761 0.1216616 0.12365371 0.40175837 0.37592715
		 0.37019408 0.38829607 0.33482289 0.39060014 0.073143058 0.11904389 0.076199107 0.10224363
		 0.095912866 0.11209647;
	setAttr ".uvst[0].uvsp[750:999]" 0.090535454 0.12503272 0.14007944 0.14595483
		 0.12216633 0.14282317 0.28189844 0.13737898 0.26329076 0.13409196 0.090724163 0.15253852
		 0.13178593 0.16676597 0.094235234 0.19081311 0.076879077 0.17650263 0.089882307 0.13165872
		 0.1351729 0.33940327 0.10855406 0.31061709 0.10620265 0.261976 0.14247996 0.31954253
		 0.12494772 0.25933546 0.14225775 0.29804891 0.16092902 0.13765644 0.15389043 0.12600642
		 0.22009593 0.11076963 0.2378841 0.12393299 0.16763091 0.14481457 0.24502712 0.13361607
		 0.36651301 0.13363965 0.3549301 0.18794002 0.33430839 0.18663804 0.33915138 0.13694428
		 0.31216288 0.13979714 0.17418438 0.36104786 0.16850179 0.33286291 0.2058714 0.39952976
		 0.19200057 0.41410369 0.15129238 0.37032294 0.17413169 0.19685589 0.10841172 0.22111581
		 0.10662549 0.20442463 0.1728794 0.17300971 0.25622278 0.18532597 0.24413532 0.20610614
		 0.22478396 0.33846873 0.25440985 0.36109692 0.23837644 0.37746269 0.20390981 0.35009938
		 0.24149752 0.32325017 0.25254893 0.30434388 0.2779153 0.31844026 0.26810986 0.34152442
		 0.33220261 0.19110216 0.31047809 0.19704978 0.3143934 0.18575464 0.29426885 0.20126437
		 0.27678227 0.20596774 0.27748775 0.18526934 0.29892117 0.18549354 0.25835586 0.21025236
		 0.27162331 0.23521341 0.25295436 0.24293934 0.25744158 0.28295141 0.28064644 0.29118347
		 0.30094182 0.2371601 0.2863695 0.23618524 0.30880469 0.28220773 0.29462004 0.28664845
		 0.29370683 0.31323606 0.31065875 0.30964673 0.31046641 0.3346343 0.28833652 0.33906442
		 0.27800059 0.36229789 0.30155301 0.35923296 0.29682207 0.38729155 0.26642209 0.38435644
		 0.1498099 0.16988729 0.10010844 0.1953757 0.20168632 0.33558291 0.22593039 0.21369682
		 0.18491966 0.20724402 0.24435788 0.29898536 0.2358076 0.31608099 0.22088116 0.32889521
		 0.24735093 0.28023022 0.24250603 0.24316874 0.14123601 0.2250946 0.22108191 0.097870149
		 0.22328025 0.091086924 0.24490082 0.12267098 0.25417668 0.13339509 0.2668671 0.18549766
		 0.16249222 0.28630275 0.18635082 0.27146924 0.19232941 0.27824557 0.17896652 0.30718297
		 0.19932753 0.27869564 0.19954205 0.30939686 0.20421368 0.27681488 0.21268725 0.30480361
		 0.22309011 0.29617572 0.20810908 0.27375484 0.21070045 0.26989704 0.22947878 0.28489757
		 0.23196238 0.27255386 0.21178913 0.26558018 0.21001345 0.25713772 0.22789055 0.24985413
		 0.20561975 0.25158775 0.21742851 0.23244883 0.19669878 0.2487372 0.19149983 0.2254938
		 0.18526495 0.2549358 0.16060394 0.23987071 0.18181235 0.26231992 0.15029162 0.26026565
		 0.056926072 0.1934476 0.067592196 0.15055354 0.090728097 0.20399584 0.061769061 0.2292317
		 0.061639957 0.22268875 0.086131029 0.19964145 0.071965747 0.12619573 0.097179107
		 0.22436266 0.095089369 0.21154962 0.074656062 0.18954669 0.063076429 0.20136829 0.09738189
		 0.29254514 0.095407888 0.25490487 0.085587792 0.27536756 0.068429761 0.25579369 0.063821964
		 0.24044345 0.52645379 0.014421919 0.53248757 0.032246597 0.49362236 0.1553065 0.52860254
		 0.16128732 0.57655048 0.16958104 0.59570259 0.16817869 0.079163484 0.090833634 0.081595831
		 0.082872689 0.10032266 0.098983109 0.098505303 0.10406238 0.15219373 0.11986795 0.15156263
		 0.11607942 0.22014356 0.1039775 0.12269001 0.11730736 0.12342065 0.11357489 0.13483828
		 0.11671197 0.13435835 0.12021533 0.12424021 0.075843751 0.1121295 0.068505615 0.11751574
		 0.062203072 0.12935811 0.0680691 0.14270347 0.054140709 0.12236469 0.046386681 0.22028548
		 0.026062794 0.22402185 0.046282865 0.24268883 0.026540779 0.24419987 0.04901164 0.33306724
		 0.03260655 0.33295935 0.053342871 0.36096162 0.035083137 0.35897017 0.054625623 0.37666881
		 0.055969514 0.3791967 0.037120648 0.40792012 0.034942828 0.40807515 0.058893792 0.43058813
		 0.061002068 0.41504914 0.013718391 0.38288075 0.0099671576 0.33274114 0.005812088
		 0.36358505 0.0081157787 0.24099821 0.0057744328 0.21602887 0.0065280888 0.093500428
		 0.036295451 0.09854655 0.068928808 0.099810056 0.061155908 0.14738172 0.085574061
		 0.15248281 0.081017345 0.20134187 0.076064497 0.20163512 0.082516611 0.22524303 0.06652686
		 0.24410105 0.072236359 0.3343271 0.061654143 0.24430245 0.058233432 0.35894305 0.067107737
		 0.39963543 0.072926104 0.37520921 0.068601131 0.42336124 0.083952159 0.35700452 0.083290398
		 0.33278209 0.071320623 0.13852018 0.075128764 0.13241965 0.079784304 0.22452295 0.054306693
		 0.14902455 0.057300769 0.10221653 0.094106816 0.10861915 0.076811731 0.12325149 0.082382381
		 0.11978512 0.10188508 0.084525757 0.074233085 0.13801247 0.10507521 0.15747136 0.06253659
		 0.8646096 0.38846403 0.86310828 0.38726786 0.86469638 0.3858054 0.86547929 0.38696429
		 0.12692505 0.10580788 0.89819932 0.41355875 0.87409323 0.39688361 0.8754729 0.3931486
		 0.90006822 0.40728751 0.85016507 0.34696287 0.86115468 0.37096375 0.85324848 0.36678073
		 0.83087569 0.33514604 0.82061183 0.34345454 0.84806871 0.37133914 0.84639996 0.37648878
		 0.81706351 0.35339022 0.85075986 0.38351333 0.82544553 0.37036043 0.93357456 0.43355265
		 0.93674314 0.42546645 0.83730078 0.3122941 0.81230527 0.29916281 0.79644263 0.30911678
		 0.78963685 0.32217261 0.79155654 0.34741223 0.96177262 0.44874385 0.96620417 0.43695411
		 0.82923853 0.28204694 0.80319124 0.26660225 0.78288943 0.28140211 0.77090162 0.29302767
		 0.76495618 0.32632944 0.86267948 0.38885862 0.86862946 0.3822031 0.86662239 0.38279802
		 0.96104264 0.028930683 0.93619579 0.044317454 0.94025493 0.06137421 0.96750152 0.046467625
		 0.88335776 0.28242084 0.87917495 0.2439876 0.86857265 0.25985089 0.87163979 0.29912922
		 0.95821977 0.18636055 0.92023176 0.17109689 0.91214025 0.18580361 0.94057149 0.20645253
		 0.98454344 0.099953771 0.95129192 0.10763769 0.93517834 0.12866063 0.9752171 0.12660147
		 0.98210537 0.061731331 0.95025587 0.077098653;
	setAttr ".uvst[0].uvsp[1000:1249]" 0.95424771 0.093879186 0.99919575 0.077391073
		 0.85132301 0.27926418 0.85504448 0.31656566 0.90903246 0.24507321 0.89308894 0.21464126
		 0.88645214 0.22934468 0.89734983 0.26487938 0.96680367 0.15513182 0.92820263 0.15406615
		 0.37172532 0.11317431 0.373335 0.085155606 0.95773327 0.0086779036 0.932639 0.0052292384
		 0.9057582 0.027060006 0.92503452 0.033866115 0.47528625 0.284886 0.43453777 0.30512893
		 0.92407918 0.22666733 0.90326941 0.19966339 0.46372449 0.18268315 0.46465796 0.14906882
		 0.45193416 0.12052912 0.47437978 0.12548447 0.41584313 0.092016518 0.39385563 0.086866468
		 0.86745566 0.38491476 0.88044184 0.38898525 0.90716499 0.40071473 0.9462266 0.41665038
		 0.98047888 0.42283633 0.19928318 0.26378411 0.41033924 0.11422777 0.41689616 0.13775738
		 0.11390313 0.48049611 0.12360107 0.49180752 0.11735143 0.49843344 0.10702742 0.48797888
		 0.081326902 0.51658928 0.099819943 0.49973381 0.10937385 0.50994009 0.088624775 0.52818125
		 0.16218334 0.48825252 0.16136552 0.47516119 0.17417347 0.47110513 0.18157175 0.48850918
		 0.15029544 0.49001312 0.1414035 0.48334163 0.13688864 0.46977228 0.14911895 0.475034
		 0.18452719 0.46338129 0.18738103 0.47611448 0.10482485 0.45761618 0.09656398 0.4632096
		 0.089621693 0.4473725 0.097681493 0.44179952 0.086528696 0.47251239 0.079909422 0.45685199
		 0.070082173 0.48660731 0.064431012 0.46989715 0.16751623 0.43632063 0.16074678 0.44386271
		 0.15059662 0.42946211 0.15688378 0.42255124 0.15177631 0.45090458 0.14206587 0.43600222
		 0.1406946 0.45462069 0.13137287 0.43926197 0.12838869 0.45155948 0.11962055 0.4361105
		 0.073673651 0.39237842 0.06664636 0.3984901 0.058024768 0.37909925 0.065070234 0.37239635
		 0.05836368 0.4088023 0.049894594 0.38992402 0.041872568 0.42080259 0.032029968 0.40098915
		 0.13008539 0.38077721 0.12185663 0.38499099 0.11373832 0.36525145 0.12261824 0.36199155
		 0.11224829 0.38804644 0.10372506 0.3671982 0.10244136 0.38812441 0.093945935 0.36659351
		 0.092903689 0.38588944 0.084474929 0.36493531 0.041299801 0.29423243 0.034813754
		 0.29882699 0.031194506 0.27388927 0.036471751 0.27062592 0.028166603 0.30733916 0.025757875
		 0.28043759 0.011402933 0.316468 0.011794923 0.28745925 0.089344256 0.2901085 0.081981421
		 0.29455584 0.069592953 0.2724191 0.075115614 0.26794815 0.07320185 0.2964763 0.062545374
		 0.27461326 0.06567993 0.2949236 0.056317437 0.27349907 0.058759738 0.29228324 0.050654814
		 0.27072757 0.028313916 0.22423351 0.027408082 0.22478485 0.026643101 0.21507503 0.02649023
		 0.22596535 0.024126342 0.22713444 0.034976982 0.22407007 0.034173399 0.22502096 0.032952446
		 0.22552499 0.031762119 0.22527081 0.030788114 0.22452901 0.1099492 0.47177365 0.10235666
		 0.47900429 0.093613334 0.48971492 0.075893737 0.50456953 0.17886776 0.45166481 0.16890916
		 0.45926404 0.15846278 0.46488458 0.14642344 0.46663862 0.13377006 0.46246126 0.081431568
		 0.40889272 0.074145623 0.41474178 0.065559499 0.42478266 0.050122913 0.43705696 0.13792153
		 0.39512756 0.130491 0.40017751 0.12128018 0.40432897 0.11104976 0.40543872 0.10088186
		 0.40286937 0.052480754 0.33633813 0.045297865 0.34281895 0.038943876 0.3178224 0.045671422
		 0.31231582 0.0376729 0.35370189 0.031849679 0.32746089 0.019060863 0.36463222 0.014002642
		 0.33742526 0.10898891 0.32901341 0.10006005 0.33269534 0.090092622 0.31098983 0.098438606
		 0.30697265 0.090001509 0.33422941 0.080466039 0.31266466 0.081059404 0.33259532 0.072084427
		 0.31102741 0.072423585 0.33048126 0.064160123 0.30885831 0.033143073 0.25176102 0.043449841
		 0.2526477 0.047338501 0.25504649 0.05192801 0.25568786 0.056849968 0.25362802 0.060283478
		 0.24987495 0.015429301 0.26312166 0.025374468 0.25824606 0.029286016 0.25383168 0.05832405
		 0.35378554 0.051228832 0.36064056 0.043200526 0.37158358 0.024365846 0.38209039 0.11553092
		 0.34452742 0.10639319 0.34768605 0.096266955 0.34920114 0.08690235 0.3480565 0.077843465
		 0.34647018 0.090334527 0.42642686 0.082623668 0.4317556 0.073432125 0.44130042 0.058482151
		 0.4543381 0.14734037 0.41011375 0.14073737 0.41638246 0.13204956 0.42209569 0.12177368
		 0.42447901 0.11100199 0.4213773 0.41055077 0.18333067 0.90838391 0.076512933 0.90547329
		 0.061686441 0.88534629 0.068169639 0.88873506 0.081610382 0.85630399 0.22986297 0.86702889
		 0.21717258 0.84680009 0.20238833 0.83681786 0.21227552 0.88382661 0.17757431 0.88776028
		 0.1676794 0.86949426 0.15636796 0.86673945 0.16430642 0.90332174 0.13326512 0.91887456
		 0.11887088 0.89255708 0.11804828 0.88194221 0.1312217 0.92177093 0.10639691 0.91801548
		 0.090699151 0.89262819 0.092845276 0.89430237 0.10607681 0.89608836 0.051807761 0.88080788
		 0.041507043 0.86355102 0.043129139 0.87595493 0.057305858 0.87167042 0.2046967 0.87752038
		 0.19111817 0.86002553 0.17831066 0.85228884 0.19174077 0.89202982 0.15754025 0.89725143
		 0.14855632 0.87653977 0.14259391 0.8723734 0.14879157 0.84065485 0.2475632 0.82605779
		 0.22918433 0.87140375 0.079327986 0.86381567 0.067462437 0.83017588 0.060863391 0.83924067
		 0.069915779 0.81461602 0.19608052 0.82436711 0.18868811 0.79639286 0.17518046 0.78661376
		 0.18205665 0.84940445 0.15437286 0.85271126 0.14813103 0.83411825 0.14133196 0.8295278
		 0.14680801 0.86217737 0.12736192 0.86898953 0.11390647 0.84476668 0.1045742 0.84040511
		 0.11999458 0.87484556 0.10267077 0.87687355 0.090065703 0.84593356 0.079519026 0.84692568
		 0.091989838 0.85252297 0.054982394 0.84712297 0.039500676 0.82134217 0.033989988
		 0.82278246 0.048297897 0.83155918 0.18021344 0.84118783 0.16795355 0.81827289 0.15908262
		 0.8054474 0.16904619 0.85552835 0.14257382 0.85863078 0.13721283 0.83939302 0.12986445
		 0.83761781 0.13602816 0.80795974 0.21290676 0.78105652 0.19575377 0.78305662 0.057334848
		 0.77537835 0.04930871;
	setAttr ".uvst[0].uvsp[1250:1499]" 0.72171181 0.03937643 0.72715366 0.047253437
		 0.74614805 0.16660635 0.75617665 0.15928923 0.70854926 0.14735416 0.70091403 0.15393549
		 0.7931754 0.13594528 0.79871827 0.13042846 0.74723226 0.1216075 0.74048686 0.12737699
		 0.80618805 0.10349171 0.80440944 0.08866965 0.75051725 0.080983602 0.75475508 0.094502158
		 0.79954308 0.078338616 0.7917164 0.067388289 0.73535836 0.05805663 0.74415952 0.072187595
		 0.77191216 0.03792417 0.77362442 0.025798965 0.72354847 0.017138366 0.7207256 0.02835444
		 0.76625568 0.15257278 0.7807532 0.14530347 0.72885317 0.13566028 0.71623558 0.14302869
		 0.80263275 0.12459801 0.80415303 0.11720303 0.75412351 0.10604279 0.75250852 0.11441049
		 0.74052608 0.17665026 0.69759905 0.16168208 0.5247125 0.048376679 0.54662448 0.042933024
		 0.54731816 0.041612908 0.54775631 0.065174356 0.54901201 0.064309694 0.55025703 0.059298389
		 0.54963386 0.057799585 0.54148203 0.051730886 0.54420674 0.048040412 0.54435855 0.046509936
		 0.54532915 0.044737525 0.54881942 0.040544488 0.55034649 0.03880091 0.55006385 0.06307257
		 0.55049431 0.061240874 0.54853374 0.056626983 0.54711735 0.055592351 0.54537106 0.065485507
		 0.62571883 0.030506466 0.62727886 0.024465296 0.59736198 0.031255294 0.59568679 0.035897285
		 0.63098466 0.018031348 0.60113424 0.026806939 0.63494283 0.0098498799 0.60491657
		 0.020638112 0.60849172 0.12105525 0.61551654 0.11761439 0.59159851 0.099344581 0.58535159
		 0.10125685 0.61813951 0.11516945 0.59405279 0.097172141 0.62032276 0.11173186 0.59624857
		 0.093965888 0.62325805 0.10561129 0.59761733 0.088949025 0.62560803 0.098674268 0.59776324
		 0.083409272 0.62671816 0.091767959 0.59692317 0.078540519 0.62701875 0.084783822
		 0.59494293 0.073850468 0.62617034 0.077966101 0.59276551 0.069262035 0.62182081 0.065053537
		 0.58604932 0.060609289 0.62153441 0.056113169 0.58700323 0.052462377 0.62117898 0.048777327
		 0.58844829 0.047746457 0.62305981 0.039609499 0.59194028 0.042140156 0.68665063 0.038278691
		 0.68378031 0.030490879 0.65112871 0.022107679 0.65050274 0.028991986 0.68478465 0.020486046
		 0.65412188 0.014084775 0.68818313 0.0099161156 0.65815938 0.0046077408 0.66187268
		 0.1503986 0.66507751 0.14259009 0.63582188 0.13002715 0.6298281 0.13586019 0.67023575
		 0.13779302 0.63856339 0.12681501 0.67522693 0.13437991 0.64088076 0.12340963 0.68446791
		 0.12764031 0.64530915 0.11719222 0.69364572 0.12029365 0.64980251 0.11038181 0.70030922
		 0.11399277 0.65335947 0.10316406 0.70545179 0.10598452 0.6562171 0.095475785 0.70730758
		 0.097401768 0.65708894 0.087275222 0.70900691 0.08468888 0.65660244 0.071953535 0.70532238
		 0.073131919 0.65532917 0.061777741 0.70021385 0.063752472 0.65250617 0.052071184
		 0.69254184 0.049615398 0.65046382 0.039904311 0.33950537 0.70778942 0.34136176 0.62161404
		 0.39050883 0.6290198 0.38926739 0.70215511 0.36575633 0.53914958 0.41106272 0.55895549
		 0.41044432 0.4656257 0.44903672 0.49653935 0.47291249 0.40628877 0.50196981 0.4462595
		 0.5487951 0.36603025 0.56623709 0.41191196 0.63155931 0.34684232 0.63678509 0.39544913
		 0.7166186 0.34909794 0.70907253 0.39736986 0.79763263 0.3736085 0.77824968 0.41805297
		 0.86998034 0.4167558 0.84014452 0.45514482 0.92978227 0.47729713 0.89083624 0.50667757
		 0.97180986 0.55148345 0.92644835 0.56976974 0.99312997 0.6342867 0.94435275 0.64002872
		 0.99167538 0.71988714 0.94306171 0.71263117 0.96787405 0.80209291 0.92283583 0.78240597
		 0.92348838 0.8752746 0.88505471 0.84452319 0.86125624 0.93440908 0.83230621 0.8946681
		 0.78624946 0.97513026 0.768417 0.9293043 0.7036826 0.99531484 0.69806176 0.94631392
		 0.61865765 0.99366099 0.62577909 0.94482857 0.5368371 0.97099942 0.55594069 0.92535204
		 0.46294487 0.92790872 0.4935464 0.88861161 0.40293854 0.86640674 0.44290805 0.83650124
		 0.36094099 0.79146039 0.40740436 0.77290905 0.44456208 0.69574618 0.44514525 0.63713151
		 0.46880084 0.64052171 0.46843189 0.69283617 0.46138525 0.58084524 0.48319668 0.59024811
		 0.49191833 0.53082222 0.51053298 0.54557037 0.53433228 0.49045289 0.54844558 0.5095737
		 0.58585 0.4628067 0.59447265 0.48484224 0.64273244 0.44940877 0.64539391 0.47283262
		 0.70099133 0.4509266 0.69755846 0.47420025 0.75687027 0.46748334 0.74765086 0.48900014
		 0.80683857 0.49752012 0.79242975 0.51589847 0.84755528 0.53915888 0.82880849 0.5533002
		 0.87605739 0.58990866 0.85427499 0.59867102 0.89031422 0.64639455 0.86696029 0.64920229
		 0.88919902 0.70465642 0.86588585 0.70127469 0.8728826 0.76067919 0.85118592 0.75132912
		 0.84247744 0.81049931 0.82403988 0.79581678 0.80002135 0.85065353 0.7860418 0.83164418
		 0.74850428 0.87830406 0.73985541 0.85618913 0.69176298 0.89164668 0.68902653 0.86793476
		 0.63374132 0.89028293 0.63714296 0.86663264 0.578318 0.87406844 0.58742034 0.85265446
		 0.52817637 0.84489679 0.54309309 0.82606328 0.48778921 0.8032409 0.50723356 0.78885651
		 0.45965344 0.75239587 0.48229033 0.74355149 0.66702241 0.67073715 0.4178203 1.53295863
		 0.41741464 1.55522454 0.012389123 1.60004556 0.01499635 1.4714247 0.42397532 1.51155663
		 0.050803483 1.34786093 0.4354597 1.49247706 0.11737043 1.23777509 0.45149097 1.47701979
		 0.21016198 1.14866829 0.47097644 1.4662385 0.32285422 1.086615682 0.49258846 1.46086788
		 0.44776767 1.055842519 0.51485455 1.46127391 0.57638824 1.058449626 0.53625619 1.46742868
		 0.69995201 1.09425652 0.55533606 1.47891295 0.81003791 1.16082382 0.57079309 1.49494433
		 0.89914447 1.25361538 0.5815745 1.51442993 0.96119767 1.36630774 0.586945 1.53604186
		 0.99196988 1.49122059 0.58653921 1.55830777 0.98936278 1.61984158 0.58038419 1.57970953
		 0.95355636 1.7434051 0.56890005 1.59878933 0.88698941 1.85349131 0.55286866 1.61424649
		 0.79419744 1.94259787 0.53338325 1.62502778;
	setAttr ".uvst[0].uvsp[1500:1749]" 0.68150568 2.0046505928 0.51177108 1.63039839
		 0.55659187 2.035423756 0.48950523 1.6299926 0.4279713 2.032816172 0.46810326 1.62383771
		 0.30440694 1.99700975 0.44902334 1.61235332 0.19432145 1.93044233 0.4335663 1.59632194
		 0.10521489 1.83765078 0.42278501 1.57683647 0.04316169 1.72495842 0.3581028 0.79698628
		 0.37586939 0.84138811 0.36283237 0.84434879 0.34647167 0.80135113 0.19661714 0.43228233
		 0.19572335 0.42870188 0.19813582 0.43020597 0.19746681 0.43176585 0.31979793 0.86298949
		 0.3072198 0.81819695 0.31909615 0.81088108 0.33298957 0.85709125 0.33212233 0.80771226
		 0.34915292 0.85114175 0.30657893 0.86805266 0.29167467 0.87202358 0.28126079 0.82431072
		 0.29413271 0.821612 0.41113496 0.90252835 0.44237006 0.93165976 0.42551583 0.94538695
		 0.39854997 0.91149968 0.38175589 0.91714805 0.40112638 0.94636518 0.3748858 0.94446087
		 0.36325115 0.92169052 0.35275221 0.94612992 0.34610915 0.92643946 0.32817012 0.93315125
		 0.33410317 0.95550185 0.31813413 0.97362 0.31242669 0.9410454 0.28828418 0.75098634
		 0.27919891 0.72404546 0.28740016 0.71954656 0.29979795 0.75024855 0.29945043 0.71385133
		 0.31717336 0.74142587 0.32695091 0.68785918 0.34083495 0.73781532 0.3302522 0.74265593
		 0.31558442 0.70137084 0.27538332 0.74656796 0.25621039 0.74973482 0.25842658 0.7167362
		 0.2698563 0.72144455 0.27060014 0.56595927 0.28473312 0.60155421 0.28083843 0.60546565
		 0.2663579 0.569076 0.26173168 0.57572371 0.27274314 0.61323661 0.26091099 0.61647797
		 0.25118521 0.57940215 0.25473559 0.61393332 0.2452701 0.57710558 0.24185309 0.59660208
		 0.23570794 0.59480458 0.23213376 0.57563609 0.23657133 0.5681991 0.23625118 0.48708409
		 0.24274194 0.49890953 0.23927106 0.50313789 0.2327065 0.48897278 0.22908363 0.49264854
		 0.23667029 0.50985616 0.23231667 0.51690763 0.22425841 0.49613464 0.22776137 0.52001417
		 0.21957827 0.49785179 0.22378361 0.52121669 0.21678784 0.51895577 0.21039936 0.5007863
		 0.2164315 0.4990738 0.29051197 0.61738819 0.28627521 0.62120366 0.27858412 0.63020682
		 0.2658841 0.63314962 0.25982013 0.63166749 0.2466628 0.91989863 0.24762997 0.93037093
		 0.25363964 0.9221679 0.25048614 0.92070419 0.12082702 0.51288372 0.16079134 0.66382754
		 0.1735785 0.66133893 0.13868165 0.50702924 0.11704156 0.62504506 0.13220602 0.67451715
		 0.14468995 0.6697861 0.11808897 0.58848572 0.17829166 0.54224569 0.1959995 0.65800619
		 0.20685861 0.65448922 0.20672606 0.59940523 0.15511838 0.50467575 0.18651098 0.65855217
		 0.17665182 0.72582453 0.18679281 0.72356629 0.14723259 0.72674155 0.15497777 0.72504479
		 0.20410857 0.71529335 0.21232894 0.71132278 0.194933 0.71966034 0.19991687 0.80249685
		 0.20680562 0.79873192 0.17374331 0.80087888 0.18133792 0.80433565 0.21980795 0.78470349
		 0.22587195 0.7814225 0.21235019 0.79385215 0.25199187 0.52876031 0.24851376 0.53087908
		 0.24500713 0.53564316 0.24057011 0.54063284 0.2361152 0.54486805 0.23256128 0.54589218
		 0.22809519 0.54534864 0.27087966 0.69193548 0.28165492 0.69287705 0.29230645 0.68700039
		 0.31056792 0.6653077 0.30246824 0.67283952 0.24997032 0.69524622 0.26057547 0.69640803
		 0.38339531 0.8571465 0.36993366 0.86464113 0.35503024 0.86540753 0.3390246 0.86754054
		 0.32414359 0.87267751 0.31007558 0.87918621 0.29953599 0.88749635 0.30194032 0.79519498
		 0.31337404 0.7907294 0.023252755 0.43919593 0.017871059 0.4339343 0.028000869 0.43789199
		 0.025626913 0.43854371 0.34113199 0.78606761 0.35361156 0.78190374 0.27584225 0.80574661
		 0.28753698 0.79993796 0.32302693 0.77202958 0.31054905 0.77215201 0.29749212 0.77596551
		 0.27758685 0.78164589 0.26734421 0.78906065 0.350593 0.76699692 0.33634833 0.77222061
		 0.26227319 0.65210736 0.26990059 0.65087605 0.28243923 0.648651 0.29598486 0.63558489
		 0.29093105 0.63860464 0.24472472 0.65480447 0.25384849 0.65160525 0.20818815 0.48329768
		 0.21161669 0.48123881 0.21370806 0.47971493 0.2165381 0.47842026 0.22064042 0.4773255
		 0.22771227 0.47630119 0.22510844 0.47687 0.22183439 0.45727259 0.21888237 0.45693392
		 0.21369153 0.45764863 0.20899984 0.45913181 0.2066354 0.46086743 0.20060569 0.46530506
		 0.20470214 0.46259448 0.21653625 0.4408536 0.21361755 0.44115651 0.20857741 0.44210687
		 0.20363054 0.4437606 0.20090789 0.44520018 0.19370544 0.45052731 0.19844995 0.44744557
		 0.20272574 0.42743722 0.20073321 0.42869201 0.19369917 0.43247658 0.19563055 0.43304718
		 0.2201682 0.8743459 0.22842282 0.8720727 0.20782495 0.87933159 0.20069474 0.88219053
		 0.24738999 0.86416006 0.24182716 0.86637002 0.23508474 0.86898142 0.23972917 0.92146325
		 0.24318361 0.92124146 0.23587957 0.92702234 0.24763003 0.93037134 0.25231943 0.62782115
		 0.18903068 0.45203096 0.18636812 0.45153564 0.18805142 0.43077034 0.18966243 0.43224788
		 0.19587046 0.46692574 0.19316375 0.46739817 0.20298845 0.48541638 0.20062612 0.48590654
		 0.2047357 0.50059485 0.20124368 0.50007987 0.20810357 0.5150466 0.20294061 0.51415622
		 0.21898217 0.54045302 0.21461169 0.5412271 0.22285649 0.58043331 0.22955793 0.57690287
		 0.23174331 0.61350262 0.22376779 0.61710817 0.23025638 0.63258642 0.22255883 0.63292903
		 0.23818237 0.6881994 0.22898999 0.68551433 0.22575921 0.65103126 0.23461857 0.65278393
		 0.24025139 0.7202754 0.2254149 0.71801329 0.24760866 0.76600206 0.23672208 0.77163661
		 0.25680637 0.79578954 0.24288723 0.80079019 0.26806819 0.82640469 0.25398022 0.82644415
		 0.24871069 0.81333697 0.26302576 0.81037176 0.27627933 0.87457603 0.26222962 0.87330514
		 0.28569722 0.8964693 0.26858157 0.90078598 0.29413313 0.94998699 0.2772119 0.95399457
		 0.29801267 0.99250704 0.27501684 0.99758083 0.115685 0.55217582 0.15236092 0.66595876;
	setAttr ".uvst[0].uvsp[1750:1999]" 0.16469875 0.7241081 0.18971911 0.80655432
		 0.21347415 0.87582904 0.23675939 0.92277932 0.25406185 0.86319184 0.23164719 0.78356946
		 0.21895322 0.70704067 0.21732309 0.65360874 0.21808062 0.60186177 0.12361996 0.93395942
		 0.10361914 0.9377023 0.094233185 0.88205898 0.10574041 0.87651181 0.047869571 0.85759622
		 0.05195874 0.89405179 0.036422476 0.88672423 0.034650035 0.846614 0.1458604 0.83265561
		 0.16086076 0.87752748 0.14910491 0.89648628 0.13420103 0.84422523 0.13734926 0.91544604
		 0.12254122 0.85579419 0.094881162 0.81218791 0.085586339 0.8141647 0.069074385 0.73640358
		 0.080742806 0.73854697 0.036751881 0.72498286 0.037097048 0.79022825 0.026365682
		 0.78797776 0.026780404 0.72884685 0.11132492 0.71877801 0.12982567 0.77420962 0.11998823
		 0.78781188 0.10242929 0.72590524 0.11015107 0.80141354 0.093533881 0.73303217 0.071562447
		 0.67927188 0.061652176 0.67588764 0.055253059 0.62968755 0.063785136 0.63220882 0.032305073
		 0.622567 0.034667008 0.66482884 0.026932847 0.66651893 0.026150076 0.623712 0.080635965
		 0.61456901 0.091919586 0.66388959 0.086662292 0.67031795 0.077440225 0.62145823 0.081404507
		 0.67674583 0.074244171 0.6283474 0.051689625 0.58868551 0.044378638 0.58834004 0.036351077
		 0.55253959 0.041636143 0.54955202 0.018193133 0.55183947 0.025159709 0.58804804 0.019394547
		 0.59043175 0.011922761 0.54943359 0.061324395 0.53631115 0.071803778 0.57833135 0.064985231
		 0.58256006 0.054727033 0.53922343 0.058166042 0.58678848 0.048129927 0.5421356 0.029132787
		 0.48951367 0.024647851 0.49085775 0.01719328 0.44296256 0.018064484 0.43540588 0.0081356606
		 0.43818384 0.0099022007 0.49529913 0.005018658 0.49306548 0.017870791 0.4339343 0.043615464
		 0.48402506 0.03849322 0.48495391 0.033371296 0.48588273 0.18037599 0.92522156 0.17306857
		 0.95522082 0.1657614 0.98522061 0.13533235 0.98886919 0.10966775 0.99622387 0.057593666
		 0.93207061 0.077788949 0.91587692 0.083630733 0.96414733 0.01727502 0.49307844 0.012664563
		 0.44057301 0.034769267 0.58819437 0.027272215 0.55218923 0.04377909 0.62612748 0.048159428
		 0.67035902 0.052913051 0.7306931 0.061341576 0.80219644 0.071051359 0.86982775 0.032849491
		 0.93512517 0.050082874 0.48431596 0.079026759 0.5743956 0.069975644 0.53693432 0.087562375
		 0.60891825 0.097674042 0.65626937 0.1190319 0.71224433 0.14006285 0.76683742 0.15992238
		 0.82917404 0.17266405 0.86476505 0.19609949 0.90426809 0.59486234 0.18634742 0.75213081
		 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742 0.59486234
		 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742 0.75213081
		 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742 0.59486234
		 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742 0.75213081
		 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742 0.59486234
		 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742 0.75213081
		 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742 0.59486234
		 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742 0.75213081
		 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742 0.59486234
		 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742 0.75213081
		 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742 0.59486234
		 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742 0.75213081
		 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742 0.59486234
		 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742 0.75213081
		 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742 0.59486234
		 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742 0.75213081
		 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742 0.59486234
		 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742 0.75213081
		 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742 0.59486234
		 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742 0.75213081
		 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742 0.59486234
		 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742 0.75213081
		 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742 0.59486234
		 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742 0.75213081
		 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742 0.59486234
		 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742 0.75213081
		 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742 0.59486234
		 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.35810268 0.79698604 0.34647155
		 0.80135095 0.36283231 0.84434831 0.37586933 0.84138787 0.1966168 0.43228233 0.19746639
		 0.43176544 0.19813567 0.43020573 0.19572347 0.42870188 0.31979775 0.86298996 0.3329891
		 0.85709107 0.31909555 0.8108809 0.30721992 0.81819719 0.3321225 0.80771291 0.34915292
		 0.85114151 0.3065787 0.86805242 0.29413265 0.82161176 0.28126061 0.82431132 0.29167432
		 0.8720234 0.28828451 0.75098604 0.29979745 0.75024736 0.28740031 0.71954697 0.27919862
		 0.72404504 0.29945034 0.71385062 0.31717321 0.74142468 0.32695052 0.68785894 0.31558469
		 0.70137101 0.33025217 0.74265569 0.34083453 0.73781466 0.27538282 0.74656683 0.2698563
		 0.72144455 0.25842667 0.7167359 0.25621015 0.74973482 0.27059972 0.56595856 0.26635718
		 0.56907511;
	setAttr ".uvst[0].uvsp[2000:2249]" 0.28083873 0.60546511 0.28473285 0.60155302
		 0.26173154 0.57572353 0.25118509 0.57940215 0.26091149 0.61647815 0.27274328 0.61323678
		 0.24526983 0.57710636 0.25473547 0.61393237 0.24185315 0.5966028 0.23657154 0.56819975
		 0.23213385 0.57563585 0.23570785 0.59480494 0.236251 0.48708361 0.23270647 0.48897254
		 0.23927133 0.50313812 0.24274179 0.49890929 0.22908387 0.49264848 0.2242588 0.49613482
		 0.23231634 0.51690787 0.23666967 0.50985497 0.21957836 0.49785155 0.22776145 0.52001393
		 0.22378352 0.52121693 0.21643135 0.49907261 0.21039905 0.50078559 0.21678761 0.51895481
		 0.28627512 0.62120295 0.29051149 0.61738825 0.26588365 0.63314992 0.27858457 0.63020653
		 0.25982022 0.63166744 0.25048614 0.92070419 0.25363928 0.92216855 0.25881118 0.9249813
		 0.24762997 0.93037093 0.13868165 0.50702924 0.15511838 0.50467575 0.18651098 0.65855217
		 0.1735785 0.66133893 0.11808897 0.58848572 0.115685 0.55217582 0.15236092 0.66595876
		 0.14468995 0.6697861 0.20672606 0.59940523 0.21808062 0.60186177 0.21732309 0.65360874
		 0.20685861 0.65448922 0.17829166 0.54224569 0.1959995 0.65800619 0.194933 0.71966034
		 0.18679281 0.72356629 0.16469875 0.7241081 0.15497777 0.72504479 0.21895322 0.70704067
		 0.21232894 0.71132278 0.20410857 0.71529335 0.21235019 0.79385215 0.20680562 0.79873192
		 0.18971911 0.80655432 0.18133792 0.80433565 0.23164719 0.78356946 0.22587195 0.7814225
		 0.21980795 0.78470349 0.24851337 0.53087884 0.25199172 0.52876008 0.2405702 0.5406335
		 0.24500698 0.53564292 0.23611481 0.54486793 0.23256119 0.54589146 0.2280948 0.54534751
		 0.28165463 0.69287562 0.27087975 0.69193494 0.29230633 0.68700039 0.31056762 0.6653071
		 0.30246827 0.67283976 0.26057526 0.69640732 0.24997047 0.69524646 0.31337374 0.79072922
		 0.30194002 0.79519475 0.017871059 0.4339343 0.023252755 0.43919593 0.025626913 0.43854371
		 0.017871059 0.4339343 0.34113184 0.78606719 0.35361138 0.78190398 0.28753716 0.79993719
		 0.27584255 0.80574632 0.31054837 0.77215236 0.32302648 0.77202892 0.29749188 0.77596527
		 0.27758637 0.78164595 0.26734421 0.7890597 0.33634818 0.77222037 0.350593 0.76699692
		 0.26990029 0.65087557 0.26227245 0.65210623 0.28243896 0.64865083 0.29598436 0.63558471
		 0.29093114 0.63860416 0.2538484 0.65160549 0.24472445 0.65480423 0.21161705 0.48123774
		 0.20818806 0.48329702 0.21653759 0.47842008 0.2137076 0.47971499 0.22063997 0.47732484
		 0.2277118 0.47630221 0.22510865 0.47686976 0.22183472 0.45727235 0.2188824 0.45693409
		 0.21369138 0.45764941 0.20899951 0.45913211 0.20663528 0.46086749 0.20470175 0.46259519
		 0.20060548 0.4653044 0.21653652 0.44085383 0.213617 0.4411568 0.20857762 0.44210753
		 0.20363045 0.4437609 0.20090726 0.44520006 0.19844969 0.44744527 0.19370535 0.4505266
		 0.20272574 0.42743722 0.20073301 0.42869225 0.19563062 0.43304694 0.19369936 0.4324773
		 0.23508474 0.86898142 0.22842282 0.8720727 0.21347415 0.87582904 0.20782495 0.87933159
		 0.25406185 0.86319184 0.24738999 0.86416006 0.24182716 0.86637002 0.2466628 0.91989863
		 0.24318361 0.92124146 0.23675939 0.92277932 0.23587957 0.92702234 0.2523194 0.62782091
		 0.18903074 0.45203048 0.18966262 0.43224758 0.18805121 0.43077064 0.18636759 0.45153528
		 0.19587079 0.46692544 0.19316338 0.46739697 0.20298856 0.48541734 0.20062646 0.4859075
		 0.20473596 0.50059408 0.20124365 0.50007963 0.20810336 0.51504689 0.20294034 0.51415604
		 0.21898161 0.54045331 0.21461122 0.54122621 0.2228564 0.58043259 0.22955784 0.57690215
		 0.23174345 0.61350185 0.22376722 0.61710656 0.23025623 0.63258624 0.2225588 0.63292879
		 0.2381821 0.68819922 0.23461893 0.65278387 0.22575966 0.65103191 0.2289902 0.68551403
		 0.2402519 0.72027463 0.22541493 0.71801257 0.24760872 0.76600158 0.23672214 0.77163607
		 0.25680649 0.7957893 0.24288675 0.8007893 0.26806813 0.82640535 0.26302546 0.8103711
		 0.24871063 0.81333649 0.2539801 0.8264432 0.27627939 0.87457532 0.2622298 0.87330484
		 0.12082702 0.51288372 0.16079134 0.66382754 0.17665182 0.72582453 0.19991687 0.80249685
		 0.2201682 0.8743459 0.23972917 0.92146325 0.23561369 0.93346709 0.20069474 0.88219053
		 0.17374331 0.80087888 0.14723259 0.72674155 0.13220602 0.67451715 0.11704156 0.62504506
		 0.10361914 0.9377023 0.094233185 0.88205898 0.071051359 0.86982775 0.077788949 0.91587692
		 0.15992238 0.82917404 0.14586072 0.83265555 0.1608607 0.87752706 0.17266381 0.86476505
		 0.13420103 0.84422523 0.12254122 0.85579419 0.13734926 0.91544604 0.14910491 0.89648628
		 0.12361996 0.93395942 0.10574041 0.87651181 0.085586339 0.8141647 0.069074385 0.73640358
		 0.052913051 0.7306931 0.061341576 0.80219644 0.1190319 0.71224433 0.11132492 0.71877801
		 0.12982567 0.77420962 0.14006285 0.76683742 0.10242929 0.72590524 0.093533881 0.73303217
		 0.11015107 0.80141354 0.11998823 0.78781188 0.080742806 0.73854697 0.094881162 0.81218791
		 0.061652176 0.67588764 0.055253059 0.62968755 0.04377909 0.62612748 0.048159674 0.67035854
		 0.087562121 0.60891849 0.080635965 0.61456901 0.091919586 0.66388959 0.097674042
		 0.65626937 0.077440225 0.62145823 0.074244171 0.6283474 0.081404507 0.67674583 0.086662292
		 0.67031795 0.063785136 0.63220882 0.071562722 0.67927182 0.044378638 0.58834004 0.036351077
		 0.55253959 0.027272215 0.55218923 0.034769267 0.58819437 0.069975644 0.53693432 0.061324395
		 0.53631115 0.071803778 0.57833135 0.079026759 0.5743956 0.054727033 0.53922343 0.048129927
		 0.5421356 0.058166303 0.58678848 0.064985231 0.58256006 0.041636143 0.54955202 0.051689625
		 0.58868551 0.024647851 0.49085775 0.01719328 0.44296256 0.012664563 0.44057301 0.01727502
		 0.49307844 0.031031333 0.43774897 0.028000869 0.43789199 0.043615464 0.48402506 0.050082874
		 0.48431596;
	setAttr ".uvst[0].uvsp[2250:2499]" 0.033371296 0.48588273 0.03849322 0.48495391
		 0.029132787 0.48951367 0.1657614 0.98522061 0.17306857 0.95522082 0.10966775 0.99622387
		 0.13533235 0.98886919 0.083630733 0.96414733 0.032849491 0.93512517 0.057593763 0.93207109
		 0.05195874 0.89405179 0.036422476 0.88672423 0.0099022007 0.49529913 0.0081356606
		 0.43818384 0.004504621 0.4354122 0.005018658 0.49306548 0.025159709 0.58804804 0.018193133
		 0.55183947 0.011922761 0.54943359 0.019394547 0.59043175 0.032305073 0.622567 0.026150076
		 0.623712 0.034667008 0.66482884 0.026932847 0.66651893 0.036751881 0.72498286 0.026780404
		 0.72884685 0.037097048 0.79022825 0.026365682 0.78797776 0.047869571 0.85759622 0.034650035
		 0.846614 0.18037599 0.92522156 0.19609949 0.90426809 0.59486234 0.18634742 0.75213081
		 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742 0.59486234
		 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742 0.75213081
		 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742 0.59486234
		 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742 0.75213081
		 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742 0.59486234
		 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742 0.75213081
		 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742 0.59486234
		 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742 0.75213081
		 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742 0.59486234
		 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742 0.75213081
		 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742 0.59486234
		 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742 0.75213081
		 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742 0.59486234
		 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742 0.75213081
		 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742 0.59486234
		 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742 0.75213081
		 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742 0.59486234
		 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742 0.75213081
		 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742 0.59486234
		 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742 0.75213081
		 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742 0.59486234
		 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742 0.75213081
		 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742 0.59486234
		 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.3581028 0.79698604 0.37586921
		 0.84138888 0.36283231 0.84434831 0.34647167 0.80135089 0.19661708 0.43228185 0.19572335
		 0.42870188 0.19813594 0.43020597 0.19746681 0.43176585 0.31979787 0.86298996 0.3072198
		 0.81819719 0.31909603 0.81088108 0.3329891 0.85709107 0.33212233 0.8077125 0.34915292
		 0.85114151 0.30657893 0.86805242 0.29167467 0.87202334 0.28126109 0.8243112 0.29413265
		 0.82161176 0.28828499 0.75098598 0.27919886 0.72404498 0.28740045 0.71954721 0.2997973
		 0.75024718 0.29945058 0.71385062 0.31717333 0.74142468 0.32695064 0.68785894 0.34083489
		 0.73781461 0.33025208 0.74265575 0.31558466 0.70137078 0.27538317 0.74656677 0.25621051
		 0.74973482 0.25842682 0.71673614 0.2698563 0.72144455 0.27060008 0.56595856 0.28473321
		 0.60155302 0.28083888 0.60546535 0.26635778 0.56907505 0.26173171 0.57572395 0.27274323
		 0.61323637 0.26091132 0.61647773 0.25118521 0.57940215 0.25473547 0.61393237 0.24527019
		 0.5771063 0.24185339 0.59660274 0.23570797 0.59480482 0.23213373 0.57563585 0.23657154
		 0.56819975 0.23625129 0.48708409 0.24274194 0.49890953 0.23927118 0.50313789 0.2327065
		 0.48897278 0.22908375 0.49264848 0.2366703 0.50985515 0.2323167 0.51690787 0.22425829
		 0.49613464 0.22776175 0.52001435 0.21957797 0.49785233 0.22378367 0.52121717 0.21678761
		 0.51895481 0.21039924 0.50078535 0.21643162 0.49907285 0.29051197 0.61738819 0.28627512
		 0.62120295 0.27858433 0.63020653 0.26588401 0.63314992 0.25982031 0.6316672 0.25048614
		 0.92070419 0.24763003 0.93037134 0.25881118 0.9249813 0.25363928 0.92216855 0.13868165
		 0.50702924 0.1735785 0.66133893 0.18651098 0.65855217 0.15511838 0.50467575 0.11808897
		 0.58848572 0.14468995 0.6697861 0.15236092 0.66595876 0.115685 0.55217582 0.20672606
		 0.59940523 0.20685861 0.65448922 0.21732309 0.65360874 0.21808062 0.60186177 0.17829166
		 0.54224569 0.1959995 0.65800619 0.18679281 0.72356629 0.194933 0.71966034 0.15497777
		 0.72504479 0.16469875 0.7241081 0.21232894 0.71132278 0.21895322 0.70704067 0.20410857
		 0.71529335 0.20680562 0.79873192 0.21234971 0.79385215 0.18133792 0.80433565 0.18971911
		 0.80655432 0.22587195 0.7814225 0.23164719 0.78356946 0.21980795 0.78470349 0.25199184
		 0.52876008 0.24851361 0.53087884 0.24500746 0.53564286 0.2405699 0.54063314 0.23611517
		 0.54486781 0.23256119 0.54589146 0.22809504 0.54534745 0.27087983 0.69193494 0.28165478
		 0.69287586 0.29230645 0.68700039 0.31056774 0.6653071 0.30246827 0.67283976 0.24997035
		 0.69524646 0.26057544 0.69640779 0.3230266 0.77202892 0.31054893 0.77215213 0.29749218
		 0.7759648 0.27758655 0.78164548 0.26734465 0.78906035 0.350593 0.76699692 0.33634877
		 0.77222031 0.26227257 0.65210623 0.26990062 0.65087533 0.28243896 0.64865083 0.29598483
		 0.63558465;
	setAttr ".uvst[0].uvsp[2500:2749]" 0.29093102 0.63860416 0.24472493 0.65480417
		 0.25384852 0.65160549 0.20818815 0.48329768 0.21161652 0.48123732 0.21370818 0.47971493
		 0.2165381 0.47842026 0.22064042 0.4773255 0.22771233 0.47630262 0.22510844 0.47687
		 0.22183439 0.45727259 0.21888261 0.45693386 0.21369141 0.45764863 0.20899972 0.45913181
		 0.20663534 0.46086797 0.20060569 0.46530506 0.20470214 0.46259448 0.21653673 0.44085449
		 0.21361755 0.44115651 0.20857789 0.44210681 0.20363066 0.4437606 0.20090777 0.44519916
		 0.19370544 0.45052731 0.19844972 0.44744557 0.2027258 0.42743763 0.20073333 0.42869297
		 0.1936994 0.43247652 0.19563055 0.43304718 0.22842282 0.8720727 0.23508474 0.86898142
		 0.21347415 0.87582904 0.20782495 0.87933159 0.25406185 0.86319184 0.24738999 0.86416006
		 0.24182716 0.86637002 0.24318361 0.92124146 0.2466628 0.91989863 0.23675939 0.92277932
		 0.23587957 0.92702234 0.25231928 0.62782097 0.18903068 0.45203096 0.18636777 0.45153475
		 0.18805142 0.43077034 0.18966237 0.4322474 0.19587082 0.46692568 0.19316381 0.46739769
		 0.20298856 0.48541734 0.20062612 0.48590654 0.20473599 0.50059432 0.2012438 0.50007987
		 0.20810363 0.51504707 0.20294049 0.51415628 0.21898215 0.54045278 0.21461158 0.54122615
		 0.22285643 0.58043283 0.22955784 0.57690215 0.23174298 0.61350191 0.22376746 0.6171065
		 0.23025635 0.63258618 0.22255856 0.63292879 0.23818234 0.68819916 0.2289902 0.68551403
		 0.22575954 0.65103191 0.23461881 0.65278387 0.24025178 0.72027463 0.22541487 0.71801305
		 0.2476086 0.76600158 0.23672202 0.77163613 0.25680673 0.79578924 0.24288714 0.80078948
		 0.27627927 0.87457532 0.2622295 0.87330443 0.25397998 0.82644248 0.2680679 0.82640511
		 0.12082702 0.51288372 0.16079134 0.66382754 0.17665182 0.72582453 0.19991687 0.80249685
		 0.2201682 0.8743459 0.23972917 0.92146325 0.23561369 0.93346709 0.20069474 0.88219053
		 0.17374331 0.80087888 0.14723259 0.72674155 0.13220602 0.67451715 0.11704156 0.62504506
		 0.15992238 0.82917404 0.17266405 0.86476505 0.1608607 0.87752706 0.14586072 0.83265555
		 0.12361996 0.93395942 0.10574041 0.87651181 0.12254122 0.85579419 0.13734926 0.91544604
		 0.1190319 0.71224433 0.14006285 0.76683742 0.12982567 0.77420962 0.11132492 0.71877801
		 0.11015107 0.80141354 0.094881162 0.81218791 0.080742806 0.73854697 0.093533881 0.73303217
		 0.087562121 0.60891849 0.097674042 0.65626937 0.091919586 0.66388959 0.080635965
		 0.61456901 0.081404507 0.67674583 0.071562447 0.67927188 0.063785136 0.63220882 0.074244171
		 0.6283474 0.069975644 0.53693432 0.079026759 0.5743956 0.071803778 0.57833135 0.061324395
		 0.53631115 0.058166303 0.58678848 0.051689625 0.58868551 0.041636143 0.54955202 0.048129927
		 0.5421356 0.031031333 0.43774897 0.050082874 0.48431596 0.043615464 0.48402506 0.028000869
		 0.43789199 0.033371296 0.48588273 0.029132787 0.48951367 0.017871059 0.4339343 0.023252755
		 0.43919593 0.10361914 0.9377023 0.13533235 0.98886919 0.10966775 0.99622387 0.032849491
		 0.93512517 0.036422476 0.88672423 0.05195874 0.89405179 0.057593763 0.93207109 0.094233185
		 0.88205898 0.085586339 0.8141647 0.069074385 0.73640358 0.061652176 0.67588764 0.055253059
		 0.62968755 0.044378638 0.58834004 0.036351077 0.55253959 0.024647851 0.49085775 0.01719328
		 0.44296256 0.0099022007 0.49529913 0.005018658 0.49306548 0.004504621 0.4354122 0.0081356606
		 0.43818384 0.025159709 0.58804804 0.019394547 0.59043175 0.011922761 0.54943359 0.018193133
		 0.55183947 0.032305073 0.622567 0.026150076 0.623712 0.034667008 0.66482884 0.026932847
		 0.66651893 0.036751881 0.72498286 0.026780404 0.72884685 0.037097048 0.79022825 0.026365682
		 0.78797776 0.047869571 0.85759622 0.034650035 0.846614 0.1657614 0.98522061 0.19609949
		 0.90426809 0.18037599 0.92522156 0.30193996 0.79519379 0.28753728 0.79993719 0.31337392
		 0.79072869 0.077788949 0.91587692 0.083630733 0.96414733 0.071051359 0.86982775 0.061341576
		 0.80219644 0.052913051 0.7306931 0.048159674 0.67035854 0.04377909 0.62612748 0.034769267
		 0.58819437 0.027272215 0.55218923 0.012664563 0.44057301 0.01727502 0.49307844 0.0098727709
		 0.43428195 0.025626913 0.43854371 0.026698492 0.4330304 0.03849322 0.48495391 0.064985231
		 0.58256006 0.054727033 0.53922343 0.077440225 0.62145823 0.086662292 0.67031795 0.10242929
		 0.72590524 0.11998823 0.78781188 0.13420103 0.84422523 0.14910491 0.89648628 0.17306857
		 0.95522082 0.35361138 0.78190398 0.34113196 0.78606719 0.26302552 0.81037134 0.24871048
		 0.81333625 0.27584219 0.80574638 0.59486234 0.18634742 0.75213081 0.18634742 0.75213081
		 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742 0.59486234 0.34361553 0.75213081
		 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742 0.75213081 0.18634742 0.75213081
		 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742 0.59486234 0.34361553 0.75213081
		 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742 0.75213081 0.18634742 0.75213081
		 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742 0.59486234 0.34361553 0.75213081
		 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742 0.75213081 0.18634742 0.75213081
		 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742 0.59486234 0.34361553 0.75213081
		 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742 0.75213081 0.18634742 0.75213081
		 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742 0.59486234 0.34361553 0.75213081
		 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742 0.75213081 0.18634742 0.75213081
		 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742 0.59486234 0.34361553 0.75213081
		 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742 0.75213081 0.18634742 0.75213081
		 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742 0.59486234 0.34361553 0.75213081
		 0.34361553;
	setAttr ".uvst[0].uvsp[2750:2999]" 0.75213081 0.18634742 0.59486234 0.18634742
		 0.75213081 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742
		 0.59486234 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742
		 0.75213081 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742
		 0.59486234 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742
		 0.75213081 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742
		 0.59486234 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742
		 0.75213081 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742
		 0.59486234 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742
		 0.75213081 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742
		 0.59486234 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742
		 0.75213081 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742
		 0.59486234 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742
		 0.75213081 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742
		 0.59486234 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742
		 0.75213081 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742
		 0.59486234 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742
		 0.75213081 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742
		 0.59486234 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.3581028 0.79698628
		 0.37586939 0.84138811 0.36283237 0.84434879 0.34647167 0.80135113 0.19661714 0.43228233
		 0.19572335 0.42870188 0.19813582 0.43020597 0.19746681 0.43176585 0.31979793 0.86298949
		 0.3072198 0.81819695 0.31909615 0.81088108 0.33298957 0.85709125 0.33212233 0.80771226
		 0.34915292 0.85114175 0.30657893 0.86805266 0.29167467 0.87202358 0.28126079 0.82431072
		 0.29413271 0.821612 0.41113496 0.90252835 0.44237006 0.93165976 0.42551583 0.94538695
		 0.39854997 0.91149968 0.38175589 0.91714805 0.40112638 0.94636518 0.3748858 0.94446087
		 0.36325115 0.92169052 0.35275221 0.94612992 0.34610915 0.92643946 0.32817012 0.93315125
		 0.33410317 0.95550185 0.31813413 0.97362 0.31242669 0.9410454 0.28828418 0.75098634
		 0.27919891 0.72404546 0.28740016 0.71954656 0.29979795 0.75024855 0.29945043 0.71385133
		 0.31717336 0.74142587 0.32695091 0.68785918 0.34083495 0.73781532 0.3302522 0.74265593
		 0.31558442 0.70137084 0.27538332 0.74656796 0.25621039 0.74973482 0.25842658 0.7167362
		 0.2698563 0.72144455 0.27060014 0.56595927 0.28473312 0.60155421 0.28083843 0.60546565
		 0.2663579 0.569076 0.26173168 0.57572371 0.27274314 0.61323661 0.26091099 0.61647797
		 0.25118521 0.57940215 0.25473559 0.61393332 0.2452701 0.57710558 0.24185309 0.59660208
		 0.23570794 0.59480458 0.23213376 0.57563609 0.23657133 0.5681991 0.23625118 0.48708409
		 0.24274194 0.49890953 0.23927106 0.50313789 0.2327065 0.48897278 0.22908363 0.49264854
		 0.23667029 0.50985616 0.23231667 0.51690763 0.22425841 0.49613464 0.22776137 0.52001417
		 0.21957827 0.49785179 0.22378361 0.52121669 0.21678784 0.51895577 0.21039936 0.5007863
		 0.2164315 0.4990738 0.29051197 0.61738819 0.28627521 0.62120366 0.27858412 0.63020682
		 0.2658841 0.63314962 0.25982013 0.63166749 0.2466628 0.91989863 0.24762997 0.93037093
		 0.25363964 0.9221679 0.25048614 0.92070419 0.12082702 0.51288372 0.16079134 0.66382754
		 0.1735785 0.66133893 0.13868165 0.50702924 0.11704156 0.62504506 0.13220602 0.67451715
		 0.14468995 0.6697861 0.11808897 0.58848572 0.17829166 0.54224569 0.1959995 0.65800619
		 0.20685861 0.65448922 0.20672606 0.59940523 0.15511838 0.50467575 0.18651098 0.65855217
		 0.17665182 0.72582453 0.18679281 0.72356629 0.14723259 0.72674155 0.15497777 0.72504479
		 0.20410857 0.71529335 0.21232894 0.71132278 0.194933 0.71966034 0.19991687 0.80249685
		 0.20680562 0.79873192 0.17374331 0.80087888 0.18133792 0.80433565 0.21980795 0.78470349
		 0.22587195 0.7814225 0.21235019 0.79385215 0.25199187 0.52876031 0.24851376 0.53087908
		 0.24500713 0.53564316 0.24057011 0.54063284 0.2361152 0.54486805 0.23256128 0.54589218
		 0.22809519 0.54534864 0.27087966 0.69193548 0.28165492 0.69287705 0.29230645 0.68700039
		 0.31056792 0.6653077 0.30246824 0.67283952 0.24997032 0.69524622 0.26057547 0.69640803
		 0.38339531 0.8571465 0.36993366 0.86464113 0.35503024 0.86540753 0.3390246 0.86754054
		 0.32414359 0.87267751 0.31007558 0.87918621 0.29953599 0.88749635 0.30194032 0.79519498
		 0.31337404 0.7907294 0.023252755 0.43919593 0.017871059 0.4339343 0.028000869 0.43789199
		 0.025626913 0.43854371 0.34113199 0.78606761 0.35361156 0.78190374 0.27584225 0.80574661
		 0.28753698 0.79993796 0.32302693 0.77202958 0.31054905 0.77215201 0.29749212 0.77596551
		 0.27758685 0.78164589 0.26734421 0.78906065 0.350593 0.76699692 0.33634833 0.77222061
		 0.26227319 0.65210736 0.26990059 0.65087605 0.28243923 0.648651 0.29598486 0.63558489
		 0.29093105 0.63860464 0.24472472 0.65480447 0.25384849 0.65160525 0.20818815 0.48329768
		 0.21161669 0.48123881 0.21370806 0.47971493 0.2165381 0.47842026 0.22064042 0.4773255
		 0.22771227 0.47630119 0.22510844 0.47687 0.22183439 0.45727259 0.21888237 0.45693392
		 0.21369153 0.45764863 0.20899984 0.45913181 0.2066354 0.46086743 0.20060569 0.46530506
		 0.20470214 0.46259448 0.21653625 0.4408536 0.21361755 0.44115651 0.20857741 0.44210687
		 0.20363054 0.4437606 0.20090789 0.44520018 0.19370544 0.45052731 0.19844995 0.44744557;
	setAttr ".uvst[0].uvsp[3000:3249]" 0.20272574 0.42743722 0.20073321 0.42869201
		 0.19369917 0.43247658 0.19563055 0.43304718 0.2201682 0.8743459 0.22842282 0.8720727
		 0.20782495 0.87933159 0.20069474 0.88219053 0.24738999 0.86416006 0.24182716 0.86637002
		 0.23508474 0.86898142 0.23972917 0.92146325 0.24318361 0.92124146 0.23587957 0.92702234
		 0.24763003 0.93037134 0.25231943 0.62782115 0.18903068 0.45203096 0.18636812 0.45153564
		 0.18805142 0.43077034 0.18966243 0.43224788 0.19587046 0.46692574 0.19316375 0.46739817
		 0.20298845 0.48541638 0.20062612 0.48590654 0.2047357 0.50059485 0.20124368 0.50007987
		 0.20810357 0.5150466 0.20294061 0.51415622 0.21898217 0.54045302 0.21461169 0.5412271
		 0.22285649 0.58043331 0.22955793 0.57690287 0.23174331 0.61350262 0.22376779 0.61710817
		 0.23025638 0.63258642 0.22255883 0.63292903 0.23818237 0.6881994 0.22898999 0.68551433
		 0.22575921 0.65103126 0.23461857 0.65278393 0.24025139 0.7202754 0.2254149 0.71801329
		 0.24760866 0.76600206 0.23672208 0.77163661 0.25680637 0.79578954 0.24288723 0.80079019
		 0.26806819 0.82640469 0.25398022 0.82644415 0.24871069 0.81333697 0.26302576 0.81037176
		 0.27627933 0.87457603 0.26222962 0.87330514 0.28569722 0.8964693 0.26858157 0.90078598
		 0.29413313 0.94998699 0.2772119 0.95399457 0.29801267 0.99250704 0.27501684 0.99758083
		 0.115685 0.55217582 0.15236092 0.66595876 0.16469875 0.7241081 0.18971911 0.80655432
		 0.21347415 0.87582904 0.23675939 0.92277932 0.25406185 0.86319184 0.23164719 0.78356946
		 0.21895322 0.70704067 0.21732309 0.65360874 0.21808062 0.60186177 0.12361996 0.93395942
		 0.10361914 0.9377023 0.094233185 0.88205898 0.10574041 0.87651181 0.047869571 0.85759622
		 0.05195874 0.89405179 0.036422476 0.88672423 0.034650035 0.846614 0.1458604 0.83265561
		 0.16086076 0.87752748 0.14910491 0.89648628 0.13420103 0.84422523 0.13734926 0.91544604
		 0.12254122 0.85579419 0.094881162 0.81218791 0.085586339 0.8141647 0.069074385 0.73640358
		 0.080742806 0.73854697 0.036751881 0.72498286 0.037097048 0.79022825 0.026365682
		 0.78797776 0.026780404 0.72884685 0.11132492 0.71877801 0.12982567 0.77420962 0.11998823
		 0.78781188 0.10242929 0.72590524 0.11015107 0.80141354 0.093533881 0.73303217 0.071562447
		 0.67927188 0.061652176 0.67588764 0.055253059 0.62968755 0.063785136 0.63220882 0.032305073
		 0.622567 0.034667008 0.66482884 0.026932847 0.66651893 0.026150076 0.623712 0.080635965
		 0.61456901 0.091919586 0.66388959 0.086662292 0.67031795 0.077440225 0.62145823 0.081404507
		 0.67674583 0.074244171 0.6283474 0.051689625 0.58868551 0.044378638 0.58834004 0.036351077
		 0.55253959 0.041636143 0.54955202 0.018193133 0.55183947 0.025159709 0.58804804 0.019394547
		 0.59043175 0.011922761 0.54943359 0.061324395 0.53631115 0.071803778 0.57833135 0.064985231
		 0.58256006 0.054727033 0.53922343 0.058166042 0.58678848 0.048129927 0.5421356 0.029132787
		 0.48951367 0.024647851 0.49085775 0.01719328 0.44296256 0.018064484 0.43540588 0.0081356606
		 0.43818384 0.0099022007 0.49529913 0.005018658 0.49306548 0.017870791 0.4339343 0.043615464
		 0.48402506 0.03849322 0.48495391 0.033371296 0.48588273 0.18037599 0.92522156 0.17306857
		 0.95522082 0.1657614 0.98522061 0.13533235 0.98886919 0.10966775 0.99622387 0.057593666
		 0.93207061 0.077788949 0.91587692 0.083630733 0.96414733 0.01727502 0.49307844 0.012664563
		 0.44057301 0.034769267 0.58819437 0.027272215 0.55218923 0.04377909 0.62612748 0.048159428
		 0.67035902 0.052913051 0.7306931 0.061341576 0.80219644 0.071051359 0.86982775 0.032849491
		 0.93512517 0.050082874 0.48431596 0.079026759 0.5743956 0.069975644 0.53693432 0.087562375
		 0.60891825 0.097674042 0.65626937 0.1190319 0.71224433 0.14006285 0.76683742 0.15992238
		 0.82917404 0.17266405 0.86476505 0.19609949 0.90426809 0.59486234 0.18634742 0.75213081
		 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742 0.59486234
		 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742 0.75213081
		 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742 0.59486234
		 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742 0.75213081
		 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742 0.59486234
		 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742 0.75213081
		 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742 0.59486234
		 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742 0.75213081
		 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742 0.59486234
		 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742 0.75213081
		 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742 0.59486234
		 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742 0.75213081
		 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742 0.59486234
		 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742 0.75213081
		 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742 0.59486234
		 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742 0.75213081
		 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742 0.59486234
		 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742 0.75213081
		 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742 0.59486234
		 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742 0.75213081
		 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742 0.59486234
		 0.34361553;
	setAttr ".uvst[0].uvsp[3250:3499]" 0.75213081 0.34361553 0.75213081 0.18634742
		 0.59486234 0.18634742 0.75213081 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553
		 0.59486234 0.18634742 0.59486234 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742
		 0.59486234 0.18634742 0.75213081 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553
		 0.59486234 0.18634742 0.59486234 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742
		 0.59486234 0.18634742 0.75213081 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553
		 0.59486234 0.18634742 0.59486234 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742
		 0.35810268 0.79698604 0.34647155 0.80135095 0.36283231 0.84434831 0.37586933 0.84138787
		 0.1966168 0.43228233 0.19746639 0.43176544 0.19813567 0.43020573 0.19572347 0.42870188
		 0.31979775 0.86298996 0.3329891 0.85709107 0.31909555 0.8108809 0.30721992 0.81819719
		 0.3321225 0.80771291 0.34915292 0.85114151 0.3065787 0.86805242 0.29413265 0.82161176
		 0.28126061 0.82431132 0.29167432 0.8720234 0.28828451 0.75098604 0.29979745 0.75024736
		 0.28740031 0.71954697 0.27919862 0.72404504 0.29945034 0.71385062 0.31717321 0.74142468
		 0.32695052 0.68785894 0.31558469 0.70137101 0.33025217 0.74265569 0.34083453 0.73781466
		 0.27538282 0.74656683 0.2698563 0.72144455 0.25842667 0.7167359 0.25621015 0.74973482
		 0.27059972 0.56595856 0.26635718 0.56907511 0.28083873 0.60546511 0.28473285 0.60155302
		 0.26173154 0.57572353 0.25118509 0.57940215 0.26091149 0.61647815 0.27274328 0.61323678
		 0.24526983 0.57710636 0.25473547 0.61393237 0.24185315 0.5966028 0.23657154 0.56819975
		 0.23213385 0.57563585 0.23570785 0.59480494 0.236251 0.48708361 0.23270647 0.48897254
		 0.23927133 0.50313812 0.24274179 0.49890929 0.22908387 0.49264848 0.2242588 0.49613482
		 0.23231634 0.51690787 0.23666967 0.50985497 0.21957836 0.49785155 0.22776145 0.52001393
		 0.22378352 0.52121693 0.21643135 0.49907261 0.21039905 0.50078559 0.21678761 0.51895481
		 0.28627512 0.62120295 0.29051149 0.61738825 0.26588365 0.63314992 0.27858457 0.63020653
		 0.25982022 0.63166744 0.25048614 0.92070419 0.25363928 0.92216855 0.25881118 0.9249813
		 0.24762997 0.93037093 0.13868165 0.50702924 0.15511838 0.50467575 0.18651098 0.65855217
		 0.1735785 0.66133893 0.11808897 0.58848572 0.115685 0.55217582 0.15236092 0.66595876
		 0.14468995 0.6697861 0.20672606 0.59940523 0.21808062 0.60186177 0.21732309 0.65360874
		 0.20685861 0.65448922 0.17829166 0.54224569 0.1959995 0.65800619 0.194933 0.71966034
		 0.18679281 0.72356629 0.16469875 0.7241081 0.15497777 0.72504479 0.21895322 0.70704067
		 0.21232894 0.71132278 0.20410857 0.71529335 0.21235019 0.79385215 0.20680562 0.79873192
		 0.18971911 0.80655432 0.18133792 0.80433565 0.23164719 0.78356946 0.22587195 0.7814225
		 0.21980795 0.78470349 0.24851337 0.53087884 0.25199172 0.52876008 0.2405702 0.5406335
		 0.24500698 0.53564292 0.23611481 0.54486793 0.23256119 0.54589146 0.2280948 0.54534751
		 0.28165463 0.69287562 0.27087975 0.69193494 0.29230633 0.68700039 0.31056762 0.6653071
		 0.30246827 0.67283976 0.26057526 0.69640732 0.24997047 0.69524646 0.31337374 0.79072922
		 0.30194002 0.79519475 0.017871059 0.4339343 0.023252755 0.43919593 0.025626913 0.43854371
		 0.017871059 0.4339343 0.34113184 0.78606719 0.35361138 0.78190398 0.28753716 0.79993719
		 0.27584255 0.80574632 0.31054837 0.77215236 0.32302648 0.77202892 0.29749188 0.77596527
		 0.27758637 0.78164595 0.26734421 0.7890597 0.33634818 0.77222037 0.350593 0.76699692
		 0.26990029 0.65087557 0.26227245 0.65210623 0.28243896 0.64865083 0.29598436 0.63558471
		 0.29093114 0.63860416 0.2538484 0.65160549 0.24472445 0.65480423 0.21161705 0.48123774
		 0.20818806 0.48329702 0.21653759 0.47842008 0.2137076 0.47971499 0.22063997 0.47732484
		 0.2277118 0.47630221 0.22510865 0.47686976 0.22183472 0.45727235 0.2188824 0.45693409
		 0.21369138 0.45764941 0.20899951 0.45913211 0.20663528 0.46086749 0.20470175 0.46259519
		 0.20060548 0.4653044 0.21653652 0.44085383 0.213617 0.4411568 0.20857762 0.44210753
		 0.20363045 0.4437609 0.20090726 0.44520006 0.19844969 0.44744527 0.19370535 0.4505266
		 0.20272574 0.42743722 0.20073301 0.42869225 0.19563062 0.43304694 0.19369936 0.4324773
		 0.23508474 0.86898142 0.22842282 0.8720727 0.21347415 0.87582904 0.20782495 0.87933159
		 0.25406185 0.86319184 0.24738999 0.86416006 0.24182716 0.86637002 0.2466628 0.91989863
		 0.24318361 0.92124146 0.23675939 0.92277932 0.23587957 0.92702234 0.2523194 0.62782091
		 0.18903074 0.45203048 0.18966262 0.43224758 0.18805121 0.43077064 0.18636759 0.45153528
		 0.19587079 0.46692544 0.19316338 0.46739697 0.20298856 0.48541734 0.20062646 0.4859075
		 0.20473596 0.50059408 0.20124365 0.50007963 0.20810336 0.51504689 0.20294034 0.51415604
		 0.21898161 0.54045331 0.21461122 0.54122621 0.2228564 0.58043259 0.22955784 0.57690215
		 0.23174345 0.61350185 0.22376722 0.61710656 0.23025623 0.63258624 0.2225588 0.63292879
		 0.2381821 0.68819922 0.23461893 0.65278387 0.22575966 0.65103191 0.2289902 0.68551403
		 0.2402519 0.72027463 0.22541493 0.71801257 0.24760872 0.76600158 0.23672214 0.77163607
		 0.25680649 0.7957893 0.24288675 0.8007893 0.26806813 0.82640535 0.26302546 0.8103711
		 0.24871063 0.81333649 0.2539801 0.8264432 0.27627939 0.87457532 0.2622298 0.87330484
		 0.12082702 0.51288372 0.16079134 0.66382754 0.17665182 0.72582453 0.19991687 0.80249685
		 0.2201682 0.8743459 0.23972917 0.92146325 0.23561369 0.93346709 0.20069474 0.88219053
		 0.17374331 0.80087888 0.14723259 0.72674155 0.13220602 0.67451715 0.11704156 0.62504506
		 0.10361914 0.9377023 0.094233185 0.88205898 0.071051359 0.86982775 0.077788949 0.91587692;
	setAttr ".uvst[0].uvsp[3500:3749]" 0.15992238 0.82917404 0.14586072 0.83265555
		 0.1608607 0.87752706 0.17266381 0.86476505 0.13420103 0.84422523 0.12254122 0.85579419
		 0.13734926 0.91544604 0.14910491 0.89648628 0.12361996 0.93395942 0.10574041 0.87651181
		 0.085586339 0.8141647 0.069074385 0.73640358 0.052913051 0.7306931 0.061341576 0.80219644
		 0.1190319 0.71224433 0.11132492 0.71877801 0.12982567 0.77420962 0.14006285 0.76683742
		 0.10242929 0.72590524 0.093533881 0.73303217 0.11015107 0.80141354 0.11998823 0.78781188
		 0.080742806 0.73854697 0.094881162 0.81218791 0.061652176 0.67588764 0.055253059
		 0.62968755 0.04377909 0.62612748 0.048159674 0.67035854 0.087562121 0.60891849 0.080635965
		 0.61456901 0.091919586 0.66388959 0.097674042 0.65626937 0.077440225 0.62145823 0.074244171
		 0.6283474 0.081404507 0.67674583 0.086662292 0.67031795 0.063785136 0.63220882 0.071562722
		 0.67927182 0.044378638 0.58834004 0.036351077 0.55253959 0.027272215 0.55218923 0.034769267
		 0.58819437 0.069975644 0.53693432 0.061324395 0.53631115 0.071803778 0.57833135 0.079026759
		 0.5743956 0.054727033 0.53922343 0.048129927 0.5421356 0.058166303 0.58678848 0.064985231
		 0.58256006 0.041636143 0.54955202 0.051689625 0.58868551 0.024647851 0.49085775 0.01719328
		 0.44296256 0.012664563 0.44057301 0.01727502 0.49307844 0.031031333 0.43774897 0.028000869
		 0.43789199 0.043615464 0.48402506 0.050082874 0.48431596 0.033371296 0.48588273 0.03849322
		 0.48495391 0.029132787 0.48951367 0.1657614 0.98522061 0.17306857 0.95522082 0.10966775
		 0.99622387 0.13533235 0.98886919 0.083630733 0.96414733 0.032849491 0.93512517 0.057593763
		 0.93207109 0.05195874 0.89405179 0.036422476 0.88672423 0.0099022007 0.49529913 0.0081356606
		 0.43818384 0.004504621 0.4354122 0.005018658 0.49306548 0.025159709 0.58804804 0.018193133
		 0.55183947 0.011922761 0.54943359 0.019394547 0.59043175 0.032305073 0.622567 0.026150076
		 0.623712 0.034667008 0.66482884 0.026932847 0.66651893 0.036751881 0.72498286 0.026780404
		 0.72884685 0.037097048 0.79022825 0.026365682 0.78797776 0.047869571 0.85759622 0.034650035
		 0.846614 0.18037599 0.92522156 0.19609949 0.90426809 0.59486234 0.18634742 0.75213081
		 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742 0.59486234
		 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742 0.75213081
		 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742 0.59486234
		 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742 0.75213081
		 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742 0.59486234
		 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742 0.75213081
		 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742 0.59486234
		 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742 0.75213081
		 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742 0.59486234
		 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742 0.75213081
		 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742 0.59486234
		 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742 0.75213081
		 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742 0.59486234
		 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742 0.75213081
		 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742 0.59486234
		 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742 0.75213081
		 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742 0.59486234
		 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742 0.75213081
		 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742 0.59486234
		 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742 0.75213081
		 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742 0.59486234
		 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742 0.75213081
		 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742 0.59486234
		 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.3581028 0.79698604 0.37586921
		 0.84138888 0.36283231 0.84434831 0.34647167 0.80135089 0.19661708 0.43228185 0.19572335
		 0.42870188 0.19813594 0.43020597 0.19746681 0.43176585 0.31979787 0.86298996 0.3072198
		 0.81819719 0.31909603 0.81088108 0.3329891 0.85709107 0.33212233 0.8077125 0.34915292
		 0.85114151 0.30657893 0.86805242 0.29167467 0.87202334 0.28126109 0.8243112 0.29413265
		 0.82161176 0.28828499 0.75098598 0.27919886 0.72404498 0.28740045 0.71954721 0.2997973
		 0.75024718 0.29945058 0.71385062 0.31717333 0.74142468 0.32695064 0.68785894 0.34083489
		 0.73781461 0.33025208 0.74265575 0.31558466 0.70137078 0.27538317 0.74656677 0.25621051
		 0.74973482 0.25842682 0.71673614 0.2698563 0.72144455 0.27060008 0.56595856 0.28473321
		 0.60155302 0.28083888 0.60546535 0.26635778 0.56907505 0.26173171 0.57572395 0.27274323
		 0.61323637 0.26091132 0.61647773 0.25118521 0.57940215 0.25473547 0.61393237 0.24527019
		 0.5771063 0.24185339 0.59660274 0.23570797 0.59480482 0.23213373 0.57563585 0.23657154
		 0.56819975 0.23625129 0.48708409 0.24274194 0.49890953 0.23927118 0.50313789 0.2327065
		 0.48897278 0.22908375 0.49264848 0.2366703 0.50985515 0.2323167 0.51690787 0.22425829
		 0.49613464 0.22776175 0.52001435 0.21957797 0.49785233 0.22378367 0.52121717 0.21678761
		 0.51895481 0.21039924 0.50078535 0.21643162 0.49907285 0.29051197 0.61738819 0.28627512
		 0.62120295;
	setAttr ".uvst[0].uvsp[3750:3999]" 0.27858433 0.63020653 0.26588401 0.63314992
		 0.25982031 0.6316672 0.25048614 0.92070419 0.24763003 0.93037134 0.25881118 0.9249813
		 0.25363928 0.92216855 0.13868165 0.50702924 0.1735785 0.66133893 0.18651098 0.65855217
		 0.15511838 0.50467575 0.11808897 0.58848572 0.14468995 0.6697861 0.15236092 0.66595876
		 0.115685 0.55217582 0.20672606 0.59940523 0.20685861 0.65448922 0.21732309 0.65360874
		 0.21808062 0.60186177 0.17829166 0.54224569 0.1959995 0.65800619 0.18679281 0.72356629
		 0.194933 0.71966034 0.15497777 0.72504479 0.16469875 0.7241081 0.21232894 0.71132278
		 0.21895322 0.70704067 0.20410857 0.71529335 0.20680562 0.79873192 0.21234971 0.79385215
		 0.18133792 0.80433565 0.18971911 0.80655432 0.22587195 0.7814225 0.23164719 0.78356946
		 0.21980795 0.78470349 0.25199184 0.52876008 0.24851361 0.53087884 0.24500746 0.53564286
		 0.2405699 0.54063314 0.23611517 0.54486781 0.23256119 0.54589146 0.22809504 0.54534745
		 0.27087983 0.69193494 0.28165478 0.69287586 0.29230645 0.68700039 0.31056774 0.6653071
		 0.30246827 0.67283976 0.24997035 0.69524646 0.26057544 0.69640779 0.3230266 0.77202892
		 0.31054893 0.77215213 0.29749218 0.7759648 0.27758655 0.78164548 0.26734465 0.78906035
		 0.350593 0.76699692 0.33634877 0.77222031 0.26227257 0.65210623 0.26990062 0.65087533
		 0.28243896 0.64865083 0.29598483 0.63558465 0.29093102 0.63860416 0.24472493 0.65480417
		 0.25384852 0.65160549 0.20818815 0.48329768 0.21161652 0.48123732 0.21370818 0.47971493
		 0.2165381 0.47842026 0.22064042 0.4773255 0.22771233 0.47630262 0.22510844 0.47687
		 0.22183439 0.45727259 0.21888261 0.45693386 0.21369141 0.45764863 0.20899972 0.45913181
		 0.20663534 0.46086797 0.20060569 0.46530506 0.20470214 0.46259448 0.21653673 0.44085449
		 0.21361755 0.44115651 0.20857789 0.44210681 0.20363066 0.4437606 0.20090777 0.44519916
		 0.19370544 0.45052731 0.19844972 0.44744557 0.2027258 0.42743763 0.20073333 0.42869297
		 0.1936994 0.43247652 0.19563055 0.43304718 0.22842282 0.8720727 0.23508474 0.86898142
		 0.21347415 0.87582904 0.20782495 0.87933159 0.25406185 0.86319184 0.24738999 0.86416006
		 0.24182716 0.86637002 0.24318361 0.92124146 0.2466628 0.91989863 0.23675939 0.92277932
		 0.23587957 0.92702234 0.25231928 0.62782097 0.18903068 0.45203096 0.18636777 0.45153475
		 0.18805142 0.43077034 0.18966237 0.4322474 0.19587082 0.46692568 0.19316381 0.46739769
		 0.20298856 0.48541734 0.20062612 0.48590654 0.20473599 0.50059432 0.2012438 0.50007987
		 0.20810363 0.51504707 0.20294049 0.51415628 0.21898215 0.54045278 0.21461158 0.54122615
		 0.22285643 0.58043283 0.22955784 0.57690215 0.23174298 0.61350191 0.22376746 0.6171065
		 0.23025635 0.63258618 0.22255856 0.63292879 0.23818234 0.68819916 0.2289902 0.68551403
		 0.22575954 0.65103191 0.23461881 0.65278387 0.24025178 0.72027463 0.22541487 0.71801305
		 0.2476086 0.76600158 0.23672202 0.77163613 0.25680673 0.79578924 0.24288714 0.80078948
		 0.27627927 0.87457532 0.2622295 0.87330443 0.25397998 0.82644248 0.2680679 0.82640511
		 0.12082702 0.51288372 0.16079134 0.66382754 0.17665182 0.72582453 0.19991687 0.80249685
		 0.2201682 0.8743459 0.23972917 0.92146325 0.23561369 0.93346709 0.20069474 0.88219053
		 0.17374331 0.80087888 0.14723259 0.72674155 0.13220602 0.67451715 0.11704156 0.62504506
		 0.15992238 0.82917404 0.17266405 0.86476505 0.1608607 0.87752706 0.14586072 0.83265555
		 0.12361996 0.93395942 0.10574041 0.87651181 0.12254122 0.85579419 0.13734926 0.91544604
		 0.1190319 0.71224433 0.14006285 0.76683742 0.12982567 0.77420962 0.11132492 0.71877801
		 0.11015107 0.80141354 0.094881162 0.81218791 0.080742806 0.73854697 0.093533881 0.73303217
		 0.087562121 0.60891849 0.097674042 0.65626937 0.091919586 0.66388959 0.080635965
		 0.61456901 0.081404507 0.67674583 0.071562447 0.67927188 0.063785136 0.63220882 0.074244171
		 0.6283474 0.069975644 0.53693432 0.079026759 0.5743956 0.071803778 0.57833135 0.061324395
		 0.53631115 0.058166303 0.58678848 0.051689625 0.58868551 0.041636143 0.54955202 0.048129927
		 0.5421356 0.031031333 0.43774897 0.050082874 0.48431596 0.043615464 0.48402506 0.028000869
		 0.43789199 0.033371296 0.48588273 0.029132787 0.48951367 0.017871059 0.4339343 0.023252755
		 0.43919593 0.10361914 0.9377023 0.13533235 0.98886919 0.10966775 0.99622387 0.032849491
		 0.93512517 0.036422476 0.88672423 0.05195874 0.89405179 0.057593763 0.93207109 0.094233185
		 0.88205898 0.085586339 0.8141647 0.069074385 0.73640358 0.061652176 0.67588764 0.055253059
		 0.62968755 0.044378638 0.58834004 0.036351077 0.55253959 0.024647851 0.49085775 0.01719328
		 0.44296256 0.0099022007 0.49529913 0.005018658 0.49306548 0.004504621 0.4354122 0.0081356606
		 0.43818384 0.025159709 0.58804804 0.019394547 0.59043175 0.011922761 0.54943359 0.018193133
		 0.55183947 0.032305073 0.622567 0.026150076 0.623712 0.034667008 0.66482884 0.026932847
		 0.66651893 0.036751881 0.72498286 0.026780404 0.72884685 0.037097048 0.79022825 0.026365682
		 0.78797776 0.047869571 0.85759622 0.034650035 0.846614 0.1657614 0.98522061 0.19609949
		 0.90426809 0.18037599 0.92522156 0.30193996 0.79519379 0.28753728 0.79993719 0.31337392
		 0.79072869 0.077788949 0.91587692 0.083630733 0.96414733 0.071051359 0.86982775 0.061341576
		 0.80219644 0.052913051 0.7306931 0.048159674 0.67035854 0.04377909 0.62612748 0.034769267
		 0.58819437 0.027272215 0.55218923 0.012664563 0.44057301 0.01727502 0.49307844 0.0098727709
		 0.43428195 0.025626913 0.43854371 0.026698492 0.4330304 0.03849322 0.48495391 0.064985231
		 0.58256006 0.054727033 0.53922343 0.077440225 0.62145823 0.086662292 0.67031795 0.10242929
		 0.72590524 0.11998823 0.78781188 0.13420103 0.84422523 0.14910491 0.89648628 0.17306857
		 0.95522082;
	setAttr ".uvst[0].uvsp[4000:4132]" 0.35361138 0.78190398 0.34113196 0.78606719
		 0.26302552 0.81037134 0.24871048 0.81333625 0.27584219 0.80574638 0.59486234 0.18634742
		 0.75213081 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742
		 0.59486234 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742
		 0.75213081 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742
		 0.59486234 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742
		 0.75213081 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742
		 0.59486234 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742
		 0.75213081 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742
		 0.59486234 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742
		 0.75213081 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742
		 0.59486234 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742
		 0.75213081 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742
		 0.59486234 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742
		 0.75213081 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742
		 0.59486234 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742
		 0.75213081 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742
		 0.59486234 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742
		 0.75213081 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742
		 0.59486234 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742
		 0.75213081 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742
		 0.59486234 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742
		 0.75213081 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742
		 0.59486234 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742
		 0.75213081 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742
		 0.59486234 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742
		 0.75213081 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742
		 0.59486234 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742
		 0.75213081 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742
		 0.59486234 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742
		 0.75213081 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742
		 0.59486234 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742 0.59486234 0.18634742
		 0.75213081 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553 0.59486234 0.18634742
		 0.59486234 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3613 ".vt";
	setAttr ".vt[0:165]"  -9.7277425e-006 41.59635925 -18.32369423 -9.7277425e-006 39.78528976 -42.91960907
		 13.31450558 20.19167709 -59.44419861 -9.7277425e-006 25.21997643 -61.76444244 19.45817184 4.17986107 -56.60591888
		 -9.7277425e-006 3.43856692 -63.38399506 25.21505928 16.91533279 -39.14401627 20.40117264 10.063398361 -57.72061539
		 -9.7277425e-006 9.6370554 -64.70835876 24.36027527 22.46462631 -41.70513535 18.28069496 15.49551296 -57.75857544
		 -9.7277425e-006 17.52308273 -64.38185883 8.74538612 38.011810303 -43.59570313 6.96074343 23.43826485 -60.93215942
		 10.22921944 15.70622826 -62.085430145 11.42151737 9.1853981 -61.90042114 10.62026024 4.30897951 -60.44700241
		 24.69421387 12.83979988 -51.41149521 21.94976616 20.55422401 -50.22954178 15.92699432 25.97740746 -54.43465805
		 8.67305374 31.7686348 -53.043201447 -9.7277425e-006 34.13611221 -53.59238434 23.63536453 19.31883812 -29.46713066
		 21.94920349 26.89010239 -31.52505112 17.69393349 34.90373611 -32.86552048 9.027377129 39.1498642 -31.70369339
		 -9.7277425e-006 41.88077164 -30.79745865 -9.7277425e-006 28.25361824 -8.66042709
		 -9.7277425e-006 5.49333048 1.48275876 10.91869354 4.67214727 -4.012116909 11.34012604 2.16567755 -29.27659416
		 11.79167843 0.021668701 -35.92423248 11.71760273 -1.016682148 -41.3611145 11.54317856 -1.5893482 -44.54171753
		 6.87397051 -3.57981324 -45.93711853 -9.7277425e-006 -3.42243528 -47.88894653 7.77578545 5.2138133 0.17362793
		 4.39944077 15.82541466 -1.93549562 10.086826324 11.7525053 -2.31069589 1.96490717 -3.66667724 -46.60270691
		 3.65401387 4.042216778 -63.28704071 4.30883169 9.56141567 -64.23807526 3.84678078 17.22410583 -64.0039138794
		 2.61027861 24.92743683 -61.62775421 3.25239491 33.76522064 -53.48395538 3.4744556 39.20868683 -42.96578217
		 3.38526511 41.44050598 -30.93908501 3.011462688 22.65036583 -6.95737553 7.62074041 7.23789549 -0.67635745
		 11.63399124 7.17154074 -5.41488028 14.44131184 4.35041237 -25.5628109 3.40786195 5.42333412 1.23775876
		 -9.7277425e-006 16.82642174 -2.50191164 2.16767287 13.86711502 -1.94873285 3.33495855 10.40044689 -1.47977781
		 2.8423419 7.075225353 0.2110962 -9.7277425e-006 7.16301537 0.55652344 2.12908244 28.6919651 -13.50476837
		 -9.7277425e-006 31.043323517 -12.98057842 20.24222183 19.92889977 -21.49836731 2.52558994 25.53936005 -13.54441643
		 18.50813103 26.074281693 -22.26741409 14.41154766 31.44538307 -21.18546677 7.98492718 32.81616592 -19.40383148
		 3.66048002 31.037351608 -16.68246269 4.51116943 21.80238342 -9.42823029 9.37419796 18.94779587 -8.42750263
		 16.097318649 16.71716499 -10.99788284 20.31059837 17.025928497 -16.64610672 2.84650636 7.83642578 -0.24502441
		 7.91483498 8.36946774 -1.10557127 12.49745274 8.64300823 -6.39374256 17.70514107 7.97991562 -25.055540085
		 13.82948399 3.89747071 -15.66640377 14.81247044 6.62578106 -18.19049072 15.836133 8.30043602 -19.082574844
		 18.63013077 6.10852671 -34.45402145 18.12678146 1.42375004 -46.47302628 15.58474159 3.76331306 -34.45574951
		 16.36683273 16.17735672 -7.91796637 17.67232132 12.22636986 -5.015510082 6.21889019 16.76359749 -3.67862058
		 5.84564447 18.76601219 -4.90591049 16.052402496 37.34552383 -25.55181885 15.018642426 33.17953491 -20.80247879
		 8.73415184 41.0079536438 -22.26171112 8.024764061 35.028915405 -17.97315216 26.32256508 10.020595551 -34.19962311
		 25.7788887 10.6730051 -34.00068664551 26.75766373 9.42759037 -38.070655823 24.080478668 13.27177048 -27.40115547
		 25.57052231 10.8478384 -27.70178032 22.0013618469 15.25562763 -19.03440094 22.84695625 15.66331577 -21.39465141
		 24.51470184 11.76151371 -19.72942162 20.70823669 28.84921455 -26.24245453 20.15172005 27.39291573 -21.46587181
		 23.52619934 19.60447311 -24.10255623 21.84572029 20.96830559 -21.21295166 3.70576715 35.24766541 -15.43287849
		 3.083477974 41.51370621 -18.87668228 14.25966454 2.3150928 -19.13525581 15.53660488 6.53789663 -20.75141335
		 16.7706356 8.14018345 -22.069068909 25.042612076 11.30466557 -23.71559906 23.46371841 14.46756268 -24.39791298
		 23.58078384 19.4695282 -26.77768707 21.32872391 27.87649918 -28.87752151 16.50169373 35.80426788 -28.98048592
		 8.88076496 40.11439133 -26.95043182 3.30101109 41.49946213 -24.95001221 -9.7277425e-006 41.68800735 -24.66256142
		 7.60668945 20.70874596 -22.54026031 7.085134506 18.98159027 -21.48099899 8.95114422 21.20175743 -23.30744934
		 11.073167801 20.74744415 -24.15038872 12.56223297 19.26341248 -24.37275124 13.17600632 17.24270248 -23.9944458
		 13.031772614 16.35863686 -22.4545784 11.99653721 16.16551208 -20.50445557 9.41874504 16.77589607 -19.43802071
		 7.80990219 17.59466743 -19.68187332 -9.7277425e-006 35.27057266 -14.031389236 4.64624929 26.82920074 -19.71200371
		 7.92947626 28.11365318 -21.69132042 12.94634724 27.044837952 -23.36240387 16.29255676 23.16856384 -24.058069229
		 17.69127846 18.38165283 -23.32096863 17.56106186 16.19792938 -19.60253716 14.66450691 15.85662842 -15.1006279
		 9.023517609 17.45871353 -12.85495853 5.25504589 19.40396309 -13.26952362 3.59892464 22.63529778 -17.23745346
		 -9.7277425e-006 8.0023078918 0.29090089 -9.7277425e-006 11.18408585 -0.70852298 4.89774179 16.34787941 -5.02134037
		 4.60378885 17.92487144 -5.98789787 3.46481848 15.60899448 -3.64852786 1.70717001 14.066716194 -3.65894771
		 -9.7277425e-006 16.39735603 -4.09459734 -9.7277425e-006 25.39693451 -8.94479752 2.37170339 20.98402405 -7.60353756
		 -9.7277425e-006 18.64609718 -10.41196537 -9.7277425e-006 22.52224541 -9.40922165
		 -9.7277425e-006 16.58594513 -9.23059368 -9.7277425e-006 14.9636364 -7.16351795 13.78423309 -1.14592159 -50.39050674
		 2.8785553 -3.44377565 -56.26625824 -9.7277425e-006 -3.41816163 -56.12799835 16.55425262 -0.21829836 -53.91565323
		 9.62173367 -0.59262204 -59.00068283081 2.79434991 -1.29896367 -60.86317444 -9.7277425e-006 -1.55134034 -60.056671143
		 -9.7277425e-006 2.83681893 2.42742181 3.57678437 2.77160454 2.21259284 12.738204 3.47905159 0.87215579
		 8.53348923 4.22434282 4.71421623 13.71681595 0.52466065 -16.48155975 13.68322277 2.7220068 -15.79127693
		 -9.7277425e-006 4.3574419 1.92243648 3.52948546 4.29108286 1.6990943 7.80913067 3.99893188 0.5977661
		 10.76485634 3.29719186 -3.45117927 10.075721741 0.5447461 -32.45284271 -9.7277425e-006 2.21811152 -0.22277588
		 -9.7277425e-006 0.52466065 -16.48155975;
	setAttr ".vt[166:331]" -9.7277425e-006 2.3150928 -19.13525581 -9.7277425e-006 1.71447873 -32.15343857
		 -9.7277425e-006 0.98170412 -36.50333405 -9.7277425e-006 -1.74549925 -43.53084946
		 3.37601686 -1.55048585 -42.76088715 4.21913004 0.74011719 -36.32768631 4.15052652 1.36582029 -32.31801605
		 3.92987132 2.3150928 -19.13525581 3.8943994 0.52466065 -16.48155975 3.62126279 2.18550348 -0.33019042
		 10.6284399 0.52466065 -16.48155975 10.89979935 2.3150928 -19.13525581 7.32239676 0.84515136 -32.36508179
		 7.25573683 0.26394287 -36.10766983 7.033955574 -1.43191528 -43.1800499 8.69074726 1.46506894 -4.57403564
		 6.15600586 1.82528865 -2.45211172 7.26142073 0.52466065 -16.48155975 7.41483593 2.3150928 -19.13525581
		 7.19999981 -1.30407953 3.49736094 6.77954483 -1.33521724 1.23562253 4.13457632 -0.13956055 1.63491452
		 3.57678437 0.094735719 3.041298866 1.0338771e-005 -0.10447754 1.75033939 6.4507608e-006 0.15994263 3.25613046
		 13.71681595 -1.97035158 -13.53931904 12.27412796 -2.20346427 -1.13911128 12.13501453 -1.97035158 -13.53931904
		 11.43237782 -2.090651751 -2.5388062 15.11815548 6.58868408 -19.27154541 16.30338669 8.2203064 -20.57581711
		 24.77865219 11.53309727 -21.72251129 13.67425537 1.70003605 -16.075735092 10.71879196 2.43768239 -3.14458251
		 7.81911564 3.21828365 0.85383058 3.56590509 3.53656483 1.96587157 -9.7277425e-006 3.6019361 2.18268299
		 18.1830101 17.76626968 16.099262238 18.79685211 17.6574707 15.53838158 19.094497681 17.45990562 15.61012173
		 18.35373116 17.5912056 16.28699303 15.20836258 11.24850845 13.49923801 17.20723915 11.21146393 11.55412388
		 17.7126503 6.69775248 10.31462383 14.19431305 7.65329933 13.61614037 11.89103317 6.26479006 9.075470924
		 14.45549583 6.22504044 6.36536884 15.07926178 0.55756652 4.52167463 10.16612339 1.61041021 8.89072037
		 17.32432175 15.64749622 15.65693855 17.26840019 14.087488174 15.92795181 18.97830963 13.74642563 14.31804466
		 18.65743828 15.40141392 14.48980236 14.24118328 42.96679306 -49.98371887 18.83488083 31.13114548 -61.32264709
		 24.3227787 25.98726082 -49.75603485 19.5292244 36.676548 -39.47681427 14.30149555 41.77892685 -41.025009155
		 22.46901321 30.43674278 -40.40746307 22.9354744 25.23114204 -57.69035339 15.68436146 37.65152359 -58.68808746
		 25.80239296 15.0012454987 -45.47059631 23.78224373 21.41074181 -45.98454285 23.52680397 25.28691673 -53.89199066
		 18.33905602 4.40983534 -38.76000214 15.23512363 2.58800411 -38.9773407 11.88326454 -0.52681518 -38.33098984
		 7.20818233 -0.31067139 -38.63879013 4.26467276 0.13269654 -38.93161392 -9.7277425e-006 0.32222655 -39.21943283
		 23.53867149 28.12685585 -44.49722672 23.37975883 24.57934761 -36.87812424 24.13961983 18.051368713 -34.51816559
		 24.61562347 12.18511868 -30.25350761 25.85867691 10.54655361 -30.52664375 18.59947395 7.40646744 -30.073932648
		 14.685112 3.86561775 -29.83095551 -9.7277425e-006 21.55786324 -63.52437592 3.14752126 21.26372719 -63.27697754
		 8.35223866 19.76885414 -62.033695221 16.13817406 17.99652672 -58.52833176 19.20313644 23.33980179 -52.93823624
		 21.10575104 27.5575676 -60.31143951 17.012052536 34.53015518 -60.71894836 12.4894228 29.079668045 -54.42380524
		 10.16933155 22.00070953369 -60.35112381 12.064671516 18.66589165 -60.79801941 14.70197868 15.0096101761 -60.31304169
		 16.27690315 9.28328228 -60.21517944 15.3519249 4.11751699 -58.89227676 14.042289734 0.033953857 -57.32376099
		 13.70509243 -2.22936153 -53.4147377 10.38187885 -2.70830083 -45.25634766 9.36113644 -1.54563475 -41.95279312
		 9.18016148 -0.72108889 -38.42199326 9.18432522 -0.15050416 -36.10849762 8.5756073 0.58755249 -32.59900665
		 8.80882168 2.3150928 -19.13525581 8.58038902 0.60800964 -16.43330765 7.24459267 1.80147588 -3.23131108
		 9.066253662 -1.84991944 0.16291259 9.39172935 -2.56002188 2.12301993 11.99537086 0.1361853 6.95020008
		 15.53389931 6.47752953 12.19967747 17.98307419 13.56008816 15.29787636 18.68570709 17.64954185 16.083076477
		 18.45810509 17.81462479 15.93030071 17.83441734 15.84376907 15.1796093 16.046337128 11.68372345 12.77556419
		 12.99303627 6.83902264 8.099509239 10.38934422 4.73868608 3.44755626 9.29086018 2.89903188 -0.44266602
		 9.30454922 3.70945501 -0.71418703 9.3550663 5.005012989 -1.17721927 9.61279392 7.25040293 -2.16119385
		 10.17509747 8.55490875 -2.75009036 13.2896719 12.074066162 -2.86865973 5.33242941 16.1594677 -2.5151782
		 4.19960213 15.87207985 -4.10505629 -9.7277425e-006 15.32766151 -8.080530167 11.92989349 20.11992645 -24.35239983
		 14.89968491 25.38032722 -23.90137863 16.83706474 29.11434746 -21.94264984 18.015081406 30.70532799 -21.36393356
		 18.79154205 33.42218781 -26.35617828 19.35458183 32.13190842 -29.27245903 20.26276779 31.37557602 -32.39476013
		 21.044904709 33.15712738 -38.79957199 10.054431915 21.1159153 -23.79120445 10.52835941 27.97309113 -22.61733627
		 11.3033886 32.70025253 -20.35087204 11.54715919 34.54571915 -19.62845039 12.50184917 39.89445496 -24.055192947
		 12.85177326 38.4757309 -28.11316109 13.75160027 37.36338806 -32.25455475 16.74116135 39.49082947 -39.48771667
		 -9.7277425e-006 41.29185486 -36.94547653 3.45608735 40.72769547 -37.035491943 8.88909531 39.033252716 -37.91765213
		 13.098689079 42.606884 -43.75548935 -9.7277425e-006 37.36833572 -48.54350662 3.41159606 36.88136292 -48.51985168
		 8.80785751 35.48485184 -48.62718582 14.81203747 40.170578 -55.20936584 9.8744297 17.44705391 -23.70580292
		 14.45676136 0.81236452 -44.70934677 6.83034563 -8.68737793 -44.33819199 2.49052024 -8.24779892 -55.7538681
		 9.94627571 -5.15411234 -58.89102554 13.8269577 -6.94846916 -52.9067688 5.58889818 -6.66265631 -58.44548798
		 13.69529057 -4.9909668 -56.79956055 10.44213104 -7.92747545 -44.86539078 2.10157204 -9.068356514 -46.52701187
		 24.16810799 -16.95025063 -43.24543762 22.98266602 -19.33403397 -42.23825073 21.051567078 -22.82181168 -43.62636566
		 20.32542229 -23.99465561 -50.18360519 20.82301712 -21.93495369 -52.55290222 21.91266441 -18.77297211 -53.40839767
		 23.31143761 -16.080835342 -52.13895416 24.89789391 -15.95061493 -49.32510757 42.18757248 -11.51280403 -34.048698425
		 41.75416183 -14.27215099 -33.15717697 42.3230629 -18.23501015 -33.90463638 46.57618713 -19.16152573 -39.25872803;
	setAttr ".vt[332:497]" 47.61522293 -17.00051307678 -41.63380051 47.71679306 -13.56502724 -42.79626083
		 47.11153793 -10.38908195 -41.94205093 46.27508926 -9.87646198 -38.96063614 40.19922638 13.89876747 -5.35736561
		 40.17512131 13.57154751 -5.2684741 40.39212799 13.14775181 -5.25326395 41.20576477 13.20242786 -5.47597885
		 41.41252518 13.48495483 -5.67181396 41.41509247 13.87696266 -5.82909918 41.21330643 14.21262169 -5.82297611
		 40.89475632 14.22275066 -5.58549547 39.031215668 15.65730381 -3.22785401 15.38444233 -13.433074 -44.78425598
		 13.18306065 -15.37910366 -43.73329163 9.91992378 -17.90131569 -45.68971634 8.79931545 -17.84261894 -53.22572327
		 10.23891926 -15.76156044 -55.69594574 12.74564743 -13.036225319 -56.42362213 15.29558372 -11.15720463 -54.89382935
		 16.61704063 -11.95759964 -51.75662994 33.78781891 -16.24762917 -39.79313278 33.12907791 -18.88760185 -38.89159012
		 32.54057312 -22.82588959 -40.061515808 34.088012695 -24.20098305 -46.46332932 34.56758118 -22.13986015 -48.90330887
		 34.91058731 -18.80701256 -49.86522293 35.27165222 -15.72982693 -48.6617775 35.89688873 -15.1587162 -45.61359406
		 45.94556808 -3.73021483 -25.51341057 45.67902756 -6.24587774 -24.58663368 46.85794067 -9.6593771 -24.75903511
		 52.072742462 -9.98286819 -28.53403091 53.32176208 -7.92732191 -30.56110191 53.29600525 -4.80339622 -31.81388474
		 52.22082138 -2.0073206425 -31.44534492 50.65253448 -1.76811337 -29.078073502 45.087909698 4.8536253 -16.078802109
		 49.10119629 6.62290764 -18.033508301 50.73089218 6.61865234 -19.51917267 51.79528427 4.66278315 -19.53798103
		 51.81893539 2.38903689 -18.50339508 50.70043945 0.80670714 -17.1418438 46.11170959 0.64543396 -15.18749237
		 44.92156219 3.0093419552 -15.35472393 43.52133942 8.60465431 -11.72383022 46.42638779 9.92537975 -12.90017796
		 47.65402985 9.97348022 -13.84293175 48.44520187 8.63403416 -13.80047131 48.45422363 7.044732571 -13.077766418
		 47.62919617 5.91248655 -12.18202877 44.28665543 5.70421982 -11.040334702 43.40614319 7.31877327 -11.22075462
		 46.20420837 -0.022781983 -21.48296547 45.98552704 -2.31907463 -20.5884552 47.27254486 -5.34609365 -20.54752731
		 52.50780106 -5.40923595 -23.53759003 53.76372528 -3.48681402 -25.32678032 53.72161102 -0.63932496 -26.54887009
		 52.56754303 1.86116827 -26.37435341 50.85338974 1.96937013 -24.37002754 44.49670792 -8.49932384 -30.68610191
		 44.15265274 -11.20153236 -29.7665596 45.049297333 -15.016030312 -30.28326988 49.86469269 -15.74095249 -35.084434509
		 51.019779205 -13.60096169 -37.36671448 51.047447205 -10.23900032 -38.59460831 50.18915558 -7.15445328 -37.93208694
		 48.97195816 -6.72449589 -35.12978363 38.69050598 -14.26566887 -37.0834198 41.91639328 -12.94693851 -42.52614212
		 42.084980011 -13.56542683 -45.61500931 42.25540543 -16.76098633 -46.68405151 42.049613953 -20.17825508 -45.63092804
		 41.26564026 -22.28417397 -43.19680786 38.20296478 -21.033761978 -37.20028687 38.15623093 -17.00072479248 -36.20769882
		 29.30606461 -17.20717812 -41.69501877 28.39128494 -19.73851967 -40.76565552 27.13553047 -23.52779388 -42.032733917
		 27.52809525 -24.96764183 -48.4467659 27.98037338 -22.93828583 -50.80976486 28.65954018 -19.68283272 -51.68294907
		 29.53392792 -16.74539566 -50.43194199 30.70476151 -16.27627754 -47.55498886 19.68568802 -15.83544159 -44.22099686
		 20.50244331 -14.69007778 -50.5776062 18.82561302 -14.41030502 -53.44896317 16.85907555 -16.76287079 -54.82761765
		 15.13435173 -19.75576401 -54.042392731 14.25945568 -21.82840347 -51.67280197 15.35316181 -21.13158989 -44.81787109
		 17.99442101 -18.032426834 -43.14346695 11.93083572 -10.50405025 -44.85650253 8.74504375 -11.79991817 -43.94009781
		 4.47752094 -13.18080044 -46.30674744 4.21192408 -12.59308624 -54.83574295 7.20679665 -10.58002949 -57.21341705
		 10.61972904 -8.64298344 -58.066482544 13.91599083 -7.71034908 -56.12281418 14.58971405 -9.2162056 -52.50191498
		 25.075092316 6.062927246 -48.39125061 25.42242622 40.22323227 -48.87944412 25.90024376 37.43609238 -48.16855621
		 31.56604767 31.7670269 -56.15146637 31.93494606 32.077884674 -60.027046204 31.39099312 43.23812485 -67.49612427
		 30.77249718 46.11063004 -67.059669495 26.75564957 49.11732483 -59.12593079 24.44327545 47.074291229 -54.44937897
		 24.30269623 44.92972565 -51.91675186 24.79825592 42.53168106 -49.82393646 27.25469398 35.30473709 -49.056747437
		 29.6820488 33.71595764 -51.93936157 32.67179108 33.72545242 -63.33530807 32.40096283 37.99682236 -66.35379028
		 29.80823708 48.29655838 -65.50649261 28.36606026 48.9562149 -63.27036667 32.093215942 37.34037018 -45.57081985
		 32.70248413 34.87965012 -44.9613266 40.51777649 30.033836365 -48.69282532 42.42027664 31.044494629 -51.26576233
		 45.25549316 43.07301712 -57.64947891 44.87218094 45.50845718 -57.81814575 40.32789612 46.50873184 -53.1577301
		 36.71920776 44.30921555 -50.1892395 34.20660019 42.21395111 -48.16147995 32.39083481 39.80559158 -46.5343399
		 34.85622406 32.64161301 -45.28904343 37.63343811 31.049987793 -46.5368309 44.090858459 32.63880539 -53.70225143
		 45.31381989 37.3547821 -56.32121277 43.87659836 47.22554779 -57.22942352 42.34604645 47.2653656 -55.77291489
		 33.99389267 22.8411274 -29.28842926 34.2247467 20.72035408 -29.022361755 39.70095825 16.32327271 -30.27325439
		 42.019512177 16.94233322 -31.13640785 47.79014587 24.37307167 -33.60259628 48.20731354 26.74386978 -33.71437073
		 42.98414993 30.79303169 -31.82229805 39.64039993 29.95298386 -30.7297039 37.72860718 28.36426735 -30.039382935
		 35.054637909 25.65888977 -29.56357384 35.83558655 18.70982361 -29.08769989 38.0035171509 17.19436455 -29.55837631
		 43.80973053 18.10275078 -32.0075721741 46.20124054 20.91869926 -33.025527954 47.4101944 28.91864967 -33.48775864
		 45.60058594 29.93432808 -32.88812256 20.82342339 35.34877396 -9.33882523 22.50084686 39.13924789 -46.18516541
		 23.27006912 36.054477692 -45.53063965 24.46855927 33.8217392 -46.77254486 25.68675804 31.98380089 -50.38256454
		 26.73930359 29.70557785 -55.23698425 26.38272667 29.45719147 -59.26953125 26.51732445 30.50514221 -62.8653183
		 25.50409126 33.89739227 -65.80519867 24.00062942505 38.35084152 -66.88002014 23.07862854 41.56824112 -66.18494415
		 22.115345 44.23730087 -64.16005707 20.83639717 45.6699791 -61.38621521 19.64696693 47.10866165 -56.4830513
		 17.85062218 45.77906418 -50.96639252 18.38929749 43.98487473 -48.43675232;
	setAttr ".vt[498:663]" 20.19949913 41.62131882 -46.61667633 28.45927048 39.90526581 -48.90478516
		 29.13957596 37.37887192 -48.23925781 31.27929497 35.25673676 -48.85342789 34.0063323975 33.82366943 -50.96576691
		 36.78106308 32.29525375 -54.24497986 37.87158585 32.98388672 -57.56583023 39.14739609 34.82214737 -60.45612335
		 39.71881104 39.61719513 -63.22684097 39.23392487 45.35482788 -64.39307404 38.74166489 47.92929077 -64.32849884
		 37.72565079 49.76109314 -63.39826202 36.18238449 49.9157753 -61.63803101 34.24583054 49.16324234 -58.36706924
		 31.34777641 46.7370224 -54.5786705 29.17874527 44.55318451 -52.17168808 28.044624329 42.1452446 -50.071578979
		 34.49179459 30.64266396 -37.45590591 34.94597626 28.25479889 -37.016368866 36.83763885 26.17980194 -37.20149994
		 39.30820465 24.85330009 -37.98907471 41.81534576 24.39900589 -39.36830902 44.33136368 25.61329079 -41.09015274
		 46.70802307 27.22187042 -42.76277924 48.64053726 31.084699631 -44.56027222 49.40939331 35.79690552 -45.5848732
		 49.43357849 38.25503922 -45.67058945 48.58731079 40.12892151 -45.20643616 46.61890793 40.53602219 -44.16514206
		 42.8053093 40.26171494 -42.41493607 39.11719894 38.39617157 -40.47924805 37.040653229 36.33280945 -39.15537262
		 35.40481949 33.52078247 -38.11428833 29.027105331 15.30597687 -16.69064903 28.73345375 13.84200668 -16.52519608
		 29.34690475 12.043924332 -16.24670219 30.7655468 10.17385006 -15.81338501 32.21279907 8.61520481 -15.33644867
		 33.29103851 8.37653351 -15.12381458 34.31169128 8.73279667 -14.95022583 35.80012512 10.1631155 -14.95548058
		 36.74275589 12.065656662 -15.15023041 37.092502594 13.99915123 -15.35495567 36.94910812 15.85973835 -15.62160301
		 36.10440445 17.34729576 -15.93385124 34.29046249 19.5609417 -16.33869553 32.633564 19.93386269 -16.85471344
		 31.05708313 19.23773956 -17.029874802 29.65977859 17.42329407 -16.97303391 31.95291519 17.68121719 -23.1838398
		 31.93318558 15.84325218 -22.90816116 33.11706161 13.86603546 -22.73239326 34.98806381 12.078132629 -22.70947075
		 36.55261612 10.76588535 -22.80619621 38.32266617 10.83862209 -23.12519455 39.72742844 11.54246235 -23.49014664
		 41.91166687 13.57802582 -24.023561478 43.42286301 16.17358971 -24.40237808 43.94309998 18.37456512 -24.58133125
		 43.42337799 20.54970932 -24.59191704 42.025794983 21.95650864 -24.45734596 39.8072319 23.68351555 -24.12163353
		 37.22762299 23.65487099 -23.80073738 35.30865097 22.54945374 -23.63270569 32.91532898 20.23244476 -23.44927025
		 21.77616882 31.22147369 -8.99451447 21.94504166 31.57619476 -9.081604004 22.16257477 31.87486649 -9.069406509
		 22.39796448 32.0053253174 -8.96848869 22.7856617 32.70336914 -8.6874342 23.067615509 31.49964905 -8.44158459
		 23.20556641 31.25391579 -8.30300045 23.23365211 30.95378494 -8.2178669 23.15062523 30.65117645 -8.18569088
		 22.96060944 30.32715034 -8.17614746 22.69049835 30.10258102 -8.22960186 22.4127655 30.051092148 -8.35281467
		 22.14830017 30.085166931 -8.47883987 21.8229351 30.35277367 -8.70410442 21.61795425 30.68880844 -8.88138962
		 21.62067413 30.9976368 -8.97046661 26.75428391 17.82300949 -12.96752548 26.2417984 16.68571091 -12.79042339
		 26.45928955 15.20067501 -12.39994431 27.34946251 13.5796566 -11.70099354 28.43444824 12.22484875 -10.86157513
		 29.20536041 11.98722935 -10.46781826 30.0773983 12.22230244 -10.10799313 31.25305367 13.29689121 -10.015200615
		 32.054813385 14.7779007 -10.21654892 32.42904663 16.29957581 -10.45390129 32.45436478 17.78255463 -10.82953167
		 31.98250771 19.037425995 -11.36227131 30.68693924 21.18521881 -12.2152853 29.40627861 21.44774246 -13.16475105
		 28.25981903 20.93773842 -13.4750309 27.297369 19.52532387 -13.39318085 24.62656212 22.65068436 -10.5312233
		 25.033464432 23.84254074 -10.89614487 25.58837891 24.84124565 -10.87775135 26.21537399 25.27535629 -10.51293182
		 27.13284683 25.33572006 -9.42638874 27.87129593 23.53870392 -8.45846462 28.066717148 22.70360374 -7.91037369
		 28.025367737 21.70091629 -7.56013632 27.71437454 20.6911087 -7.42193127 27.14564133 19.63653374 -7.34163332
		 26.37547874 18.87463379 -7.53449965 25.72295952 18.7057209 -7.99147701 25.21318436 18.8232193 -8.46759987
		 24.53328133 19.73034859 -9.35669231 24.087844849 20.87355995 -10.071018219 24.086450577 21.91216469 -10.43302536
		 -12.48944187 29.079668045 -54.42380524 -10.16935158 22.00070953369 -60.35112381 -6.96076298 23.43826485 -60.93215942
		 -8.67307281 31.7686348 -53.043201447 -16.27692223 9.28328228 -60.21517944 -15.35194492 4.11751699 -58.89227676
		 -10.62027931 4.30897951 -60.44700241 -11.42153645 9.1853981 -61.90042114 -23.37977791 24.57934761 -36.87812424
		 -24.1396389 18.051368713 -34.51816559 -25.21507835 16.91533279 -39.14401627 -24.36029625 22.46462631 -41.70513535
		 -20.40119171 10.063398361 -57.72061539 -18.28071404 15.49551296 -57.75857544 -21.94978523 20.55422401 -50.22954178
		 -24.69423294 12.83979988 -51.41149521 -14.70199871 15.0096101761 -60.31304169 -10.22923851 15.70622826 -62.085430145
		 -16.13819313 17.99652672 -58.52833176 -19.20315552 23.33980179 -52.93823624 -8.35225868 19.76885414 -62.033695221
		 -12.064691544 18.66589165 -60.79801941 -3.47447515 39.20868683 -42.96578217 -3.4561069 40.72769547 -37.035491943
		 -2.61029816 24.92743683 -61.62775421 -3.25241446 33.76522064 -53.48395538 -3.84680033 17.22410583 -64.0039138794
		 -3.14754081 21.26372719 -63.27697754 -4.30885124 9.56141567 -64.23807526 -3.65403342 4.042216778 -63.28704071
		 -25.80241203 15.0012454987 -45.47059631 -23.7822628 21.41074181 -45.98454285 -3.41161561 36.88136292 -48.51985168
		 -3.30103064 41.49946213 -24.95001221 -3.38528466 41.44050598 -30.93908501 -14.25968361 2.3150928 -19.13525581
		 -11.34014511 2.16567755 -29.27659416 -14.44133186 4.35041237 -25.5628109 -15.53662491 6.53789663 -20.75141335
		 -15.58476067 3.76331306 -34.45574951 -14.68513203 3.86561775 -29.83095551 -2.87857485 -3.44377565 -56.26625824
		 -1.96492672 -3.66667724 -46.60270691 -9.35508633 5.005012989 -1.17721927 -9.61281395 7.25040293 -2.16119385
		 -7.62075996 7.23789549 -0.67635745 -7.775805 5.2138133 0.17362793 -8.80787754 35.48485184 -48.62718582
		 -8.74540615 38.011810303 -43.59570313 -8.88911533 39.033252716 -37.91765213 -3.4078815 5.42333412 1.23775876
		 -2.84236145 7.075225353 0.2110962 -10.17511749 8.55490875 -2.75009036;
	setAttr ".vt[664:829]" -7.91485453 8.36946774 -1.10557127 -17.70516205 7.97991562 -25.055540085
		 -16.77065468 8.14018345 -22.069068909 -3.3349781 10.40044689 -1.47977781 -10.086845398 11.7525053 -2.31069589
		 -4.39946032 15.82541466 -1.93549562 -2.16769242 13.86711502 -1.94873285 -2.84652591 7.83642578 -0.24502441
		 -3.011482239 22.65036583 -6.95737553 -2.12910199 28.6919651 -13.50476837 -4.51118898 21.80238342 -9.42823029
		 -2.52560949 25.53936005 -13.54441643 -11.63401127 7.17154074 -5.41488028 -10.91871357 4.67214727 -4.012116909
		 -13.82950306 3.89747071 -15.66640377 -14.81249046 6.62578106 -18.19049072 -12.49747181 8.64300823 -6.39374256
		 -15.83615208 8.30043602 -19.082574844 -18.33907509 4.40983534 -38.76000214 -26.7576828 9.42759037 -38.070655823
		 -26.32258606 10.020595551 -34.19962311 -18.63014984 6.10852671 -34.45402145 -18.59949303 7.40646744 -30.073932648
		 -3.70578671 35.24766541 -15.43287849 -3.66049957 31.037351608 -16.68246269 -3.083497524 41.51370621 -18.87668228
		 -16.36685181 16.17735672 -7.91796637 -5.84566402 18.76601219 -4.90591049 -6.21890974 16.76359749 -3.67862058
		 -17.67234039 12.22636986 -5.015510082 -24.51472092 11.76151371 -19.72942162 -22.0013809204 15.25562763 -19.03440094
		 -11.54717922 34.54571915 -19.62845039 -12.5018692 39.89445496 -24.055192947 -8.73417091 41.0079536438 -22.26171112
		 -8.024783134 35.028915405 -17.97315216 -15.018662453 33.17953491 -20.80247879 -18.015100479 30.70532799 -21.36393356
		 -18.79156113 33.42218781 -26.35617828 -16.05242157 37.34552383 -25.55181885 -25.77890778 10.6730051 -34.00068664551
		 -24.61564255 12.18511868 -30.25350761 -25.85869598 10.54655361 -30.52664375 -24.080497742 13.27177048 -27.40115547
		 -23.46373749 14.46756268 -24.39791298 -25.042631149 11.30466557 -23.71559906 -25.57054138 10.8478384 -27.70178032
		 -22.84697533 15.66331577 -21.39465141 -23.52621841 19.60447311 -24.10255623 -21.84573936 20.96830559 -21.21295166
		 -20.15173912 27.39291573 -21.46587181 -20.70825768 28.84921455 -26.24245453 -23.63538361 19.31883812 -29.46713066
		 -23.58080292 19.4695282 -26.77768707 -21.94922447 26.89010239 -31.52505112 -21.32874298 27.87649918 -28.87752151
		 -19.35460091 32.13190842 -29.27245903 -20.26278687 31.37557602 -32.39476013 -17.69395256 34.90373611 -32.86552048
		 -16.50171471 35.80426788 -28.98048592 -12.85179329 38.4757309 -28.11316109 -13.75162029 37.36338806 -32.25455475
		 -9.027397156 39.1498642 -31.70369339 -8.88078403 40.11439133 -26.95043182 -13.28969097 12.074066162 -2.86865973
		 -5.33244896 16.1594677 -2.5151782 -7.98494673 32.81616592 -19.40383148 -20.31061745 17.025928497 -16.64610672
		 -16.097337723 16.71716499 -10.99788284 -16.83708382 29.11434746 -21.94264984 -14.41156769 31.44538307 -21.18546677
		 -11.30340862 32.70025253 -20.35087204 -18.5081501 26.074281693 -22.26741409 -20.24224091 19.92889977 -21.49836731
		 -9.37421799 18.94779587 -8.42750263 -13.67427444 1.70003605 -16.075735092 -13.71683598 0.52466065 -16.48155975
		 -15.11817551 6.58868408 -19.27154541 -16.30340576 8.2203064 -20.57581711 -24.77867126 11.53309727 -21.72251129
		 -3.59894419 22.63529778 -17.23745346 -7.08515358 18.98159027 -21.48099899 -7.606709 20.70874596 -22.54026031
		 -4.64626884 26.82920074 -19.71200371 -8.95116425 21.20175743 -23.30744934 -7.92949581 28.11365318 -21.69132042
		 -10.054450989 21.1159153 -23.79120445 -10.52837849 27.97309113 -22.61733627 -12.94636726 27.044837952 -23.36240387
		 -11.073186874 20.74744415 -24.15038872 -11.92991352 20.11992645 -24.35239983 -14.89970493 25.38032722 -23.90137863
		 -16.29257584 23.16856384 -24.058069229 -12.56225204 19.26341248 -24.37275124 -13.17602539 17.24270248 -23.9944458
		 -17.69129753 18.38165283 -23.32096863 -13.031791687 16.35863686 -22.4545784 -17.56108093 16.19792938 -19.60253716
		 -11.99655628 16.16551208 -20.50445557 -14.66452599 15.85662842 -15.1006279 -9.41876507 16.77589607 -19.43802071
		 -9.023536682 17.45871353 -12.85495853 -7.80992174 17.59466743 -19.68187332 -5.25506544 19.40396309 -13.26952362
		 -4.19962168 15.87207985 -4.10505629 -3.46483803 15.60899448 -3.64852786 -4.6038084 17.92487144 -5.98789787
		 -4.89776134 16.34787941 -5.02134037 -1.70718944 14.066716194 -3.65894771 -2.37172294 20.98402405 -7.60353756
		 -2.79436946 -1.29896367 -60.86317444 -14.042309761 0.033953857 -57.32376099 -9.62175274 -0.59262204 -59.00068283081
		 -3.56592464 3.53656483 1.96587157 -3.52950501 4.29108286 1.6990943 -10.76487541 3.29719186 -3.45117927
		 -10.71881104 2.43768239 -3.14458251 -13.68324184 2.7220068 -15.79127693 -7.80915022 3.99893188 0.5977661
		 -7.81913519 3.21828365 0.85383058 -9.29087925 2.89903188 -0.44266602 -9.30456829 3.70945501 -0.71418703
		 -7.20001936 -1.30407953 3.49736094 -3.57680392 0.094735719 3.041298866 -4.13459587 -0.13956055 1.63491452
		 -6.77956438 -1.33521724 1.23562253 -6.15602541 1.82528865 -2.45211172 -3.62128234 2.18550348 -0.33019042
		 -3.89441895 0.52466065 -16.48155975 -7.26144028 0.52466065 -16.48155975 -3.92989063 2.3150928 -19.13525581
		 -7.41485548 2.3150928 -19.13525581 -4.15054607 1.36582029 -32.31801605 -7.32241631 0.84515136 -32.36508179
		 -4.21914959 0.74011719 -36.32768631 -7.25575638 0.26394287 -36.10766983 -7.20820189 -0.31067139 -38.63879013
		 -4.26469231 0.13269654 -38.93161392 -3.37603641 -1.55048585 -42.76088715 -7.033975124 -1.43191528 -43.1800499
		 -6.87399006 -3.57981324 -45.93711853 -2.5906245e-005 0.15994263 3.25613046 -2.9794257e-005 -0.10447754 1.75033939
		 -12.27414799 -2.20346427 -1.13911128 -11.43239784 -2.090651751 -2.5388062 -12.13503456 -1.97035158 -13.53931904
		 -13.71683598 -1.97035158 -13.53931904 -10.62845993 0.52466065 -16.48155975 -10.89981937 2.3150928 -19.13525581
		 -8.57562637 0.58755249 -32.59900665 -8.80884075 2.3150928 -19.13525581 -9.18434429 -0.15050416 -36.10849762
		 -9.36115646 -1.54563475 -41.95279312 -9.1801815 -0.72108889 -38.42199326 -10.38189793 -2.70830083 -45.25634766
		 -11.79169846 0.021668701 -35.92423248 -10.075741768 0.5447461 -32.45284271 -9.066272736 -1.84991944 0.16291259
		 -9.39174843 -2.56002188 2.12301993 -8.5804081 0.60800964 -16.43330765 -7.24461222 1.80147588 -3.23131108
		 -3.57680392 2.77160454 2.21259284 -8.53350925 4.22434282 4.71421623 -12.73822403 3.47905159 0.87215579
		 -8.69076633 1.46506894 -4.57403564 -18.18302917 17.76626968 16.099262238;
	setAttr ".vt[830:995]" -18.35375214 17.5912056 16.28699303 -18.68572617 17.64954185 16.083076477
		 -18.45812416 17.81462479 15.93030071 -10.38936424 4.73868608 3.44755626 -15.20838261 11.24850845 13.49923801
		 -17.32434082 15.64749622 15.65693855 -17.83443642 15.84376907 15.1796093 -16.046356201 11.68372345 12.77556419
		 -17.20725822 11.21146393 11.55412388 -18.65745735 15.40141392 14.48980236 -18.9783287 13.74642563 14.31804466
		 -17.71266937 6.69775248 10.31462383 -15.53391838 6.47752953 12.19967747 -17.98309326 13.56008816 15.29787636
		 -17.26841927 14.087488174 15.92795181 -14.19433212 7.65329933 13.61614037 -11.89105225 6.26479006 9.075470924
		 -12.99305534 6.83902264 8.099509239 -14.45551491 6.22504044 6.36536884 -15.079280853 0.55756652 4.52167463
		 -11.99539089 0.1361853 6.95020008 -10.16614342 1.61041021 8.89072037 -18.79687119 17.6574707 15.53838158
		 -19.094518661 17.45990562 15.61012173 -21.044923782 33.15712738 -38.79957199 -19.52924347 36.676548 -39.47681427
		 -23.52682304 25.28691673 -53.89199066 -24.32279778 25.98726082 -49.75603485 -15.68438148 37.65152359 -58.68808746
		 -17.012071609 34.53015518 -60.71894836 -13.098708153 42.606884 -43.75548935 -14.24120235 42.96679306 -49.98371887
		 -16.74118042 39.49082947 -39.48771667 -14.30151463 41.77892685 -41.025009155 -23.53869057 28.12685585 -44.49722672
		 -21.10577202 27.5575676 -60.31143951 -22.93549347 25.23114204 -57.69035339 -14.81205654 40.170578 -55.20936584
		 -15.23514271 2.58800411 -38.9773407 -11.88328362 -0.52681518 -38.33098984 -22.46903229 30.43674278 -40.40746307
		 -13.3145256 20.19167709 -59.44419861 -15.92701435 25.97740746 -54.43465805 -18.8348999 31.13114548 -61.32264709
		 -19.45819092 4.17986107 -56.60591888 -16.5542717 -0.21829836 -53.91565323 -13.78425312 -1.14592159 -50.39050674
		 -13.70511246 -2.22936153 -53.4147377 -11.54319859 -1.5893482 -44.54171753 -11.7176218 -1.016682148 -41.3611145
		 -9.87444973 17.44705391 -23.70580292 -14.45678139 0.81236452 -44.70934677 -18.12680054 1.42375004 -46.47302628
		 -10.44215107 -7.92747545 -44.86539078 -6.83036518 -8.68737793 -44.33819199 -2.49053979 -8.24779892 -55.7538681
		 -2.10159159 -9.068356514 -46.52701187 -9.94629478 -5.15411234 -58.89102554 -5.58891773 -6.66265631 -58.44548798
		 -13.82697773 -6.94846916 -52.9067688 -13.69530964 -4.9909668 -56.79956055 -15.3844614 -13.433074 -44.78425598
		 -13.18307972 -15.37910366 -43.73329163 -17.99444008 -18.032426834 -43.14346695 -19.68570709 -15.83544159 -44.22099686
		 -9.91994286 -17.90131569 -45.68971634 -15.35318089 -21.13158989 -44.81787109 -8.79933453 -17.84261894 -53.22572327
		 -14.25947475 -21.82840347 -51.67280197 -10.23893833 -15.76156044 -55.69594574 -15.13437176 -19.75576401 -54.042392731
		 -12.7456665 -13.036225319 -56.42362213 -16.85909462 -16.76287079 -54.82761765 -15.2956028 -11.15720463 -54.89382935
		 -18.8256321 -14.41030502 -53.44896317 -16.61705971 -11.95759964 -51.75662994 -20.50246429 -14.69007778 -50.5776062
		 -33.78783798 -16.24762917 -39.79313278 -33.12909698 -18.88760185 -38.89159012 -38.15625 -17.00072479248 -36.20769882
		 -38.69052505 -14.26566887 -37.0834198 -32.54059219 -22.82588959 -40.061515808 -38.20298386 -21.033761978 -37.20028687
		 -34.088031769 -24.20098305 -46.46332932 -41.26565933 -22.28417397 -43.19680786 -34.56760025 -22.13986015 -48.90330887
		 -42.049633026 -20.17825508 -45.63092804 -34.91060638 -18.80701256 -49.86522293 -42.2554245 -16.76098633 -46.68405151
		 -35.2716713 -15.72982693 -48.6617775 -42.084999084 -13.56542683 -45.61500931 -35.89690781 -15.1587162 -45.61359406
		 -41.91641235 -12.94693851 -42.52614212 -46.20422745 -0.022781983 -21.48296547 -45.98554611 -2.31907463 -20.5884552
		 -44.92158127 3.0093419552 -15.35472393 -45.087928772 4.8536253 -16.078802109 -47.27256393 -5.34609365 -20.54752731
		 -46.11172867 0.64543396 -15.18749237 -52.50782394 -5.40923595 -23.53759003 -50.70045853 0.80670714 -17.1418438
		 -53.76374435 -3.48681402 -25.32678032 -51.81895447 2.38903689 -18.50339508 -53.7216301 -0.63932496 -26.54887009
		 -51.79530334 4.66278315 -19.53798103 -52.5675621 1.86116827 -26.37435341 -50.73091125 6.61865234 -19.51917267
		 -50.85340881 1.96937013 -24.37002754 -49.10121536 6.62290764 -18.033508301 -40.19924545 13.89876747 -5.35736561
		 -40.17514038 13.57154751 -5.2684741 -39.031234741 15.65730381 -3.22785401 -40.39214706 13.14775181 -5.25326395
		 -41.20578766 13.20242786 -5.47597885 -41.41254425 13.48495483 -5.67181396 -41.41511154 13.87696266 -5.82909918
		 -41.2133255 14.21262169 -5.82297611 -40.89477539 14.22275066 -5.58549547 -11.93085575 -10.50405025 -44.85650253
		 -8.74506378 -11.79991817 -43.94009781 -4.47754049 -13.18080044 -46.30674744 -4.21194363 -12.59308624 -54.83574295
		 -7.2068162 -10.58002949 -57.21341705 -10.61974812 -8.64298344 -58.066482544 -13.91601086 -7.71034908 -56.12281418
		 -14.58973408 -9.2162056 -52.50191498 -29.30608368 -17.20717812 -41.69501877 -28.39130402 -19.73851967 -40.76565552
		 -27.13554955 -23.52779388 -42.032733917 -27.52811432 -24.96764183 -48.4467659 -27.98039246 -22.93828583 -50.80976486
		 -28.65956116 -19.68283272 -51.68294907 -29.53394699 -16.74539566 -50.43194199 -30.70478058 -16.27627754 -47.55498886
		 -44.49672699 -8.49932384 -30.68610191 -44.15267181 -11.20153236 -29.7665596 -45.67904663 -6.24587774 -24.58663368
		 -45.94558716 -3.73021483 -25.51341057 -45.049316406 -15.016030312 -30.28326988 -46.85795975 -9.6593771 -24.75903511
		 -49.86471176 -15.74095249 -35.084434509 -52.07276535 -9.98286819 -28.53403091 -51.019798279 -13.60096169 -37.36671448
		 -53.32178116 -7.92732191 -30.56110191 -51.047466278 -10.23900032 -38.59460831 -53.29602432 -4.80339622 -31.81388474
		 -50.18917465 -7.15445328 -37.93208694 -52.22084045 -2.0073206425 -31.44534492 -48.97197723 -6.72449589 -35.12978363
		 -50.65255356 -1.76811337 -29.078073502 -43.52135849 8.60465431 -11.72383022 -46.42640686 9.92537975 -12.90017796
		 -47.65404892 9.97348022 -13.84293175 -48.44522095 8.63403416 -13.80047131 -48.45424271 7.044732571 -13.077766418
		 -47.62921524 5.91248655 -12.18202877 -44.2866745 5.70421982 -11.040334702 -43.40616226 7.31877327 -11.22075462
		 -42.18759155 -11.51280403 -34.048698425 -41.75418091 -14.27215099 -33.15717697 -42.32308197 -18.23501015 -33.90463638
		 -46.57620621 -19.16152573 -39.25872803 -47.61524582 -17.00051307678 -41.63380051
		 -47.71681213 -13.56502724 -42.79626083 -47.11155701 -10.38908195 -41.94205093 -46.27510834 -9.87646198 -38.96063614;
	setAttr ".vt[996:1161]" -24.16812706 -16.95025063 -43.24543762 -22.98268509 -19.33403397 -42.23825073
		 -21.051586151 -22.82181168 -43.62636566 -20.32544136 -23.99465561 -50.18360519 -20.82303619 -21.93495369 -52.55290222
		 -21.91268349 -18.77297211 -53.40839767 -23.31145668 -16.080835342 -52.13895416 -24.89791298 -15.95061493 -49.32510757
		 -25.075111389 6.062927246 -48.39125061 -22.50086594 39.13924789 -46.18516541 -23.2700882 36.054477692 -45.53063965
		 -25.90026283 37.43609238 -48.16855621 -25.4224472 40.22323227 -48.87944412 -26.73932457 29.70557785 -55.23698425
		 -26.38274574 29.45719147 -59.26953125 -31.93496513 32.077884674 -60.027046204 -31.56606674 31.7670269 -56.15146637
		 -24.00064849854 38.35084152 -66.88002014 -23.078647614 41.56824112 -66.18494415 -30.77251625 46.11063004 -67.059669495
		 -31.3910141 43.23812485 -67.49612427 -19.64698601 47.10866165 -56.4830513 -17.85064125 45.77906418 -50.96639252
		 -24.44329643 47.074291229 -54.44937897 -26.75566864 49.11732483 -59.12593079 -18.38931847 43.98487473 -48.43675232
		 -20.1995182 41.62131882 -46.61667633 -24.7982769 42.53168106 -49.82393646 -24.3027153 44.92972565 -51.91675186
		 -24.46857834 33.8217392 -46.77254486 -25.68677711 31.98380089 -50.38256454 -29.68206787 33.71595764 -51.93936157
		 -27.25471497 35.30473709 -49.056747437 -26.51734352 30.50514221 -62.8653183 -25.50411224 33.89739227 -65.80519867
		 -32.4009819 37.99682236 -66.35379028 -32.67181015 33.72545242 -63.33530807 -22.11536407 44.23730087 -64.16005707
		 -20.83641624 45.6699791 -61.38621521 -28.36607933 48.9562149 -63.27036667 -29.80825615 48.29655838 -65.50649261
		 -28.45928955 39.90526581 -48.90478516 -29.13959503 37.37887192 -48.23925781 -32.7025032 34.87965012 -44.9613266
		 -32.093235016 37.34037018 -45.57081985 -36.78108215 32.29525375 -54.24497986 -37.87160492 32.98388672 -57.56583023
		 -42.42029953 31.044494629 -51.26576233 -40.51779556 30.033836365 -48.69282532 -39.23394394 45.35482788 -64.39307404
		 -38.74168396 47.92929077 -64.32849884 -44.87220383 45.50845718 -57.81814575 -45.25551224 43.07301712 -57.64947891
		 -34.24584961 49.16324234 -58.36706924 -31.34779549 46.7370224 -54.5786705 -36.71922684 44.30921555 -50.1892395
		 -40.32791519 46.50873184 -53.1577301 -29.17876434 44.55318451 -52.17168808 -28.044643402 42.1452446 -50.071578979
		 -32.39085388 39.80559158 -46.5343399 -34.20661926 42.21395111 -48.16147995 -31.27931404 35.25673676 -48.85342789
		 -34.0063514709 33.82366943 -50.96576691 -37.63345718 31.049987793 -46.5368309 -34.85624313 32.64161301 -45.28904343
		 -39.14741516 34.82214737 -60.45612335 -39.71883011 39.61719513 -63.22684097 -45.31383896 37.3547821 -56.32121277
		 -44.090877533 32.63880539 -53.70225143 -37.72566986 49.76109314 -63.39826202 -36.18240356 49.9157753 -61.63803101
		 -42.34606552 47.2653656 -55.77291489 -43.87661743 47.22554779 -57.22942352 -34.49181366 30.64266396 -37.45590591
		 -34.94599533 28.25479889 -37.016368866 -34.22476578 20.72035408 -29.022361755 -33.99391174 22.8411274 -29.28842926
		 -41.81536484 24.39900589 -39.36830902 -44.33138275 25.61329079 -41.09015274 -42.01953125 16.94233322 -31.13640785
		 -39.70097733 16.32327271 -30.27325439 -49.40941238 35.79690552 -45.5848732 -49.43359756 38.25503922 -45.67058945
		 -48.20733261 26.74386978 -33.71437073 -47.79016495 24.37307167 -33.60259628 -42.80532837 40.26171494 -42.41493607
		 -39.11721802 38.39617157 -40.47924805 -39.64041901 29.95298386 -30.7297039 -42.98416901 30.79303169 -31.82229805
		 -37.040672302 36.33280945 -39.15537262 -35.40483856 33.52078247 -38.11428833 -35.054656982 25.65888977 -29.56357384
		 -37.72862625 28.36426735 -30.039382935 -36.83765793 26.17980194 -37.20149994 -39.30822372 24.85330009 -37.98907471
		 -38.0035362244 17.19436455 -29.55837631 -35.83560562 18.70982361 -29.08769989 -46.70804214 27.22187042 -42.76277924
		 -48.64055634 31.084699631 -44.56027222 -46.20125961 20.91869926 -33.025527954 -43.8097496 18.10275078 -32.0075721741
		 -48.58732986 40.12892151 -45.20643616 -46.618927 40.53602219 -44.16514206 -45.60060501 29.93432808 -32.88812256
		 -47.41021347 28.91864967 -33.48775864 -20.82344246 35.34877396 -9.33882523 -21.7761898 31.22147369 -8.99451447
		 -21.62069321 30.9976368 -8.97046661 -22.14832115 30.085166931 -8.47883987 -22.41278648 30.051092148 -8.35281467
		 -23.1506443 30.65117645 -8.18569088 -23.23367119 30.95378494 -8.2178669 -22.78568077 32.70336914 -8.6874342
		 -22.39798355 32.0053253174 -8.96848869 -22.16259575 31.87486649 -9.069406509 -21.94506073 31.57619476 -9.081604004
		 -21.61797333 30.68880844 -8.88138962 -21.82295418 30.35277367 -8.70410442 -22.69051743 30.10258102 -8.22960186
		 -22.96063042 30.32715034 -8.17614746 -23.20558548 31.25391579 -8.30300045 -23.067634583 31.49964905 -8.44158459
		 -26.75430489 17.82300949 -12.96752548 -26.24181938 16.68571091 -12.79042339 -24.08646965 21.91216469 -10.43302536
		 -24.62658119 22.65068436 -10.5312233 -26.45930862 15.20067501 -12.39994431 -24.087863922 20.87355995 -10.071018219
		 -27.34948158 13.5796566 -11.70099354 -24.5333004 19.73034859 -9.35669231 -28.43446732 12.22484875 -10.86157513
		 -25.21320343 18.8232193 -8.46759987 -29.20538139 11.98722935 -10.46781826 -25.72297859 18.7057209 -7.99147701
		 -30.077417374 12.22230244 -10.10799313 -26.37549782 18.87463379 -7.53449965 -31.25307465 13.29689121 -10.015200615
		 -27.14566231 19.63653374 -7.34163332 -32.054832458 14.7779007 -10.21654892 -27.71439362 20.6911087 -7.42193127
		 -32.4290657 16.29957581 -10.45390129 -28.025388718 21.70091629 -7.56013632 -32.45438385 17.78255463 -10.82953167
		 -28.066736221 22.70360374 -7.91037369 -31.98252678 19.037425995 -11.36227131 -27.871315 23.53870392 -8.45846462
		 -30.68695831 21.18521881 -12.2152853 -27.13286591 25.33572006 -9.42638874 -29.40629959 21.44774246 -13.16475105
		 -26.21539307 25.27535629 -10.51293182 -28.2598381 20.93773842 -13.4750309 -25.58839798 24.84124565 -10.87775135
		 -27.29738808 19.52532387 -13.39318085 -25.033483505 23.84254074 -10.89614487 -31.95293427 17.68121719 -23.1838398
		 -31.93320465 15.84325218 -22.90816116 -28.73347473 13.84200668 -16.52519608 -29.027124405 15.30597687 -16.69064903
		 -33.11708069 13.86603546 -22.73239326 -29.34692383 12.043924332 -16.24670219 -34.98808289 12.078132629 -22.70947075
		 -30.76556587 10.17385006 -15.81338501 -36.55263519 10.76588535 -22.80619621 -32.21281815 8.61520481 -15.33644867
		 -38.32268524 10.83862209 -23.12519455 -33.29105759 8.37653351 -15.12381458;
	setAttr ".vt[1162:1327]" -39.72744751 11.54246235 -23.49014664 -34.31171036 8.73279667 -14.95022583
		 -41.91168594 13.57802582 -24.023561478 -35.8001442 10.1631155 -14.95548058 -43.42288208 16.17358971 -24.40237808
		 -36.74277496 12.065656662 -15.15023041 -43.94311905 18.37456512 -24.58133125 -37.092521667 13.99915123 -15.35495567
		 -43.42339706 20.54970932 -24.59191704 -36.9491272 15.85973835 -15.62160301 -42.025814056 21.95650864 -24.45734596
		 -36.10442352 17.34729576 -15.93385124 -39.80725098 23.68351555 -24.12163353 -34.29048157 19.5609417 -16.33869553
		 -37.22764206 23.65487099 -23.80073738 -32.63358307 19.93386269 -16.85471344 -35.30867004 22.54945374 -23.63270569
		 -31.057102203 19.23773956 -17.029874802 -32.91534805 20.23244476 -23.44927025 -29.65979767 17.42329407 -16.97303391
		 77.11812592 -14.50633049 49.46296692 71.6852417 -14.50633049 29.87262726 61.36713409 -14.50633049 12.35594749
		 46.8669548 -14.50633049 -1.89333987 29.17286301 -14.50633049 -11.90417004 9.49069691 -14.50633049 -16.99433517
		 -10.83824921 -14.50633049 -16.8169384 -30.42859077 -14.50633049 -11.384058 -47.94527435 -14.50633049 -1.065952182
		 -62.19456863 -14.50633049 13.43423367 -72.20541382 -14.50633049 31.1283226 -77.29557037 -14.50633049 50.81049728
		 -77.11817169 -14.50633049 71.13945007 -71.68528748 -14.50633049 90.72979736 -61.36716843 -14.50633049 108.24648285
		 -46.86698914 -14.50633049 122.49578094 -29.17289352 -14.50633049 132.50660706 -9.49071598 -14.50633049 137.59677124
		 10.83823776 -14.50633049 137.41937256 30.42858696 -14.50633049 131.98648071 47.94526672 -14.50633049 121.66838074
		 62.19456863 -14.50633049 107.16818237 72.20541382 -14.50633049 89.47409058 77.29557037 -14.50633049 69.79190826
		 77.11812592 -1.22627497 49.46296692 71.6852417 -1.22627497 29.87262726 61.36713409 -1.22627497 12.35594749
		 46.8669548 -1.22627497 -1.89333987 29.17286301 -1.22627497 -11.90417004 9.49069691 -1.22627497 -16.99433517
		 -10.83824921 -1.22627497 -16.8169384 -30.42859077 -1.22627497 -11.384058 -47.94527435 -1.22627497 -1.065952182
		 -62.19456863 -1.22627497 13.43423367 -72.20541382 -1.22627497 31.1283226 -77.29557037 -1.22627497 50.81049728
		 -77.11817169 -1.22627497 71.13945007 -71.68528748 -1.22627497 90.72979736 -61.36716843 -1.22627497 108.24648285
		 -46.86698914 -1.22627497 122.49578094 -29.17289352 -1.22627497 132.50660706 -9.49071598 -1.22627497 137.59677124
		 10.8382349 -1.22627497 137.41937256 30.42858696 -1.22627497 131.98648071 47.94527435 -1.22627497 121.66838074
		 62.19456863 -1.22627497 107.16818237 72.20541382 -1.22627497 89.47409821 77.29557037 -1.22627497 69.79190063
		 -1.5201093e-005 0.85325193 60.30120468 -22.20998955 0.85325193 7.97776365 -7.91090155 0.85325193 4.01231432
		 6.92730761 0.85325193 3.88279295 21.29340553 0.85325193 7.59815407 34.20841599 0.85325193 14.90507793
		 44.79213715 0.85325193 25.30573654 52.32336807 0.85325193 38.091209412 56.28890228 0.85325193 52.39032745
		 56.41841888 0.85325193 67.228508 52.70306015 0.85325193 81.59462738 45.39612961 0.85325193 94.50965118
		 34.99547958 0.85325193 105.09337616 22.20997238 0.85325193 112.62466431 7.9108758 0.85325193 116.59011841
		 -6.92732859 0.85325193 116.71962738 -21.29343796 0.85325193 113.0042800903 -34.20845795 0.85325193 105.69732666
		 -44.79218674 0.85325193 95.29667664 -52.32346725 0.85325193 82.51118469 -56.28890228 0.85325193 68.21208954
		 -56.41842651 0.85325193 53.37388611 -52.70306015 0.85325193 39.0077819824 -45.39613724 0.85325193 26.092763901
		 -34.99548721 0.85325193 15.5090332 62.031749725 -2.34827018 51.58321381 57.66167831 -2.34827018 35.82526779
		 49.36207199 -2.34827018 21.73532486 37.69852448 -2.34827018 10.27356911 23.4658699 -2.34827018 2.22113276
		 7.63406229 -2.34827018 -1.87326169 -8.71800327 -2.34827018 -1.73055172 -24.47594452 -2.34827018 2.63950205
		 -38.5658989 -2.34827018 10.93910599 -50.02765274 -2.34827018 22.60267258 -58.080097198 -2.34827018 36.83532333
		 -62.17447662 -2.34827018 52.66713715 -62.031791687 -2.34827018 69.019195557 -57.66172409 -2.34827018 84.77714539
		 -49.36211014 -2.34827018 98.86709595 -37.69855118 -2.34827018 110.32884979 -23.46589279 -2.34827018 118.38130188
		 -7.63407946 -2.34827018 122.47568512 8.71798611 -2.34827018 122.33297729 24.47593689 -2.34827018 117.96292877
		 38.5658989 -2.34827018 109.66332245 50.027645111 -2.34827018 97.99974823 58.080097198 -2.34827018 83.76709747
		 62.17447281 -2.34827018 67.93527222 455.47515869 -14.50633049 -3.7116065 423.38684082 -14.50633049 -119.4157486
		 362.44592285 -14.50633049 -222.8727417 276.80554199 -14.50633049 -307.031707764 172.30085754 -14.50633049 -366.15823364
		 56.053936005 -14.50633049 -396.22109985 -64.012825012 -14.50633049 -395.17407227
		 -179.71697998 -14.50633049 -363.085693359 -283.17401123 -14.50633049 -302.14520264
		 -367.33297729 -14.50633049 -216.5045166 -426.45956421 -14.50633049 -111.99975586
		 -456.52233887 -14.50633049 4.2471385 -455.47531128 -14.50633049 124.31389618 -423.38696289 -14.50633049 240.018127441
		 -362.44616699 -14.50633049 343.47515869 -276.80575562 -14.50633049 427.63415527 -172.30097961 -14.50633049 486.76065063
		 -56.054058075 -14.50633049 516.82348633 64.012718201 -14.50633049 515.77648926 179.71694946 -14.50633049 483.68811035
		 283.17398071 -14.50633049 422.74743652 367.33297729 -14.50633049 337.10681152 426.45956421 -14.50633049 232.60212708
		 456.52233887 -14.50633049 116.35513306 69.83376312 80.73653412 -72.39889526 72.43973541 79.48863983 -67.42729187
		 69.23705292 86.72006226 -72.1397171 73.61048889 87.38550568 -68.35372162 90.063102722 -8.089338303 -91.35178375
		 95.30236053 -7.61342335 -81.9644928 104.24758148 -11.18278313 -87.9627533 98.87576294 -11.70711899 -97.54152679
		 105.90151978 49.69140625 -98.78908539 111.49441528 52.0018081665 -89.78060913 106.90377808 44.98068237 -87.40206909
		 102.295784 42.62324142 -97.038726807 30.4540329 61.24754715 -48.33848572 31.87215805 61.53116226 -47.043468475
		 30.11875916 63.74471664 -45.15493011 28.30999947 63.7419548 -46.57234192 57.742939 84.091453552 -67.15556335
		 61.55224609 81.96229553 -63.46030807 61.62828064 89.87852478 -63.55001831 52.067550659 88.6167984 -64.38842773
		 40.6505661 83.24200439 -66.32292938 41.26319504 88.5517807 -66.34848785 41.18709946 83.49655914 -63.67297363
		 41.48203278 88.7496109 -63.094917297 35.13380051 84.72509003 -63.30617523;
	setAttr ".vt[1328:1493]" 34.70410156 89.1383667 -63.67473984 36.12573242 86.055984497 -60.059398651
		 35.54847717 89.24489594 -60.062465668 28.40061569 78.95877838 -61.64099121 28.25291061 82.20025635 -61.62761307
		 28.99253845 79.46927643 -58.66024017 28.57325172 82.89199066 -58.34109879 36.47166061 65.86558533 -54.95489883
		 38.36955261 66.32905579 -52.37166595 36.65644455 71.33306885 -51.24038696 34.36230469 71.75778961 -53.69313049
		 90.97945404 77.67630005 -88.14318085 95.91196442 77.89349365 -81.31218719 91.74421692 69.057258606 -78.86126709
		 86.85437775 68.71692657 -86.23879242 103.41796875 17.34304237 -103.65328217 109.1191864 19.60917282 -93.97662354
		 117.77043152 19.68664551 -100.89624786 111.74554443 18.68224335 -110.20330048 80.74584961 -18.71164322 -87.35285187
		 88.75234222 -18.71164322 -73.87989044 103.24138641 -18.71164322 -83.9749527 95.61666107 -18.71164322 -97.60509491
		 111.79647827 31.12658119 -106.48478699 117.57126617 32.33158875 -97.80779266 109.52357483 30.78624725 -91.61685181
		 105.30204773 29.50238609 -101.32832336 99.53546906 5.92247438 -99.024215698 104.75312805 6.92410898 -89.47981262
		 113.30067444 5.6817503 -95.79296112 107.42205048 4.69948483 -105.11103821 102.052642822 56.23661041 -83.76359558
		 107.54473877 64.96909332 -86.75328064 101.22167969 66.907341 -93.96529388 98.33465576 54.68712997 -92.71575928
		 81.71981812 80.44877625 -80.92937469 86.77159882 81.39506531 -75.85360718 83.0059661865 75.41985321 -73.57985687
		 78.70484161 75.66333771 -79.17417145 46.86940384 84.46499634 -61.39395142 43.0099220276 87.18075562 -59.3431282
		 49.3162117 89.2255249 -57.61157227 50.73855591 82.14215088 -58.54616547 38.78416061 75.98430634 -56.32588196
		 40.89489365 75.52084351 -53.69019699 38.96966934 80.21912384 -52.32378387 36.52207184 82.20025635 -55.15114594
		 33.74726486 61.91438293 -52.66487885 31.92568398 65.38690186 -51.23987198 34.033798218 65.69680023 -49.49801254
		 35.2762413 62.49682617 -50.63687134 27.4543705 57.88847733 -44.096763611 28.91436577 57.75151443 -42.76150513
		 26.41948318 60.023181915 -40.13628006 24.93123627 60.095115662 -41.7062149 26.36581612 53.44200134 -41.65673447
		 27.60695839 53.34930801 -40.022354126 25.045404434 55.052364349 -37.13459015 23.6432724 55.13537216 -38.86106491
		 23.91122055 49.51431656 -35.81752014 24.46048737 49.64160156 -34.57921982 22.66518974 50.82585144 -33.069980621
		 21.60817337 50.93791199 -34.23147964 21.44739342 67.6654892 -64.5149231 21.52303696 70.70082092 -64.69409943
		 21.84770966 68.16492462 -62.31013489 22.032289505 70.77276611 -62.49235916 12.14797688 65.33848572 -61.99427414
		 12.30739594 67.15636444 -62.20163727 12.26895905 65.50035095 -60.64997482 12.44525051 67.27534485 -60.72858429
		 101.56755829 -18.71164322 -92.03717041 102.65851593 -11.87313747 -93.19091797 111.52479553 5.081323147 -101.2247467
		 116.18965149 19.28405571 -106.59629059 115.9991684 31.38667488 -103.18292999 110.41873169 51.27686691 -95.0286026
		 107.044708252 67.074737549 -91.29349518 94.59527588 78.01524353 -85.38240051 82.86239624 82.11309814 -77.75905609
		 71.56245422 88.042655945 -70.1804657 58.96380997 90.52876282 -64.61379242 46.79994202 89.63780212 -58.58620453
		 37.1864357 82.45343018 -53.46763229 34.96530151 72.1410141 -52.25645447 32.41331863 65.93338013 -50.16584396
		 28.90135765 64.062919617 -45.60676193 25.26579094 60.39533234 -40.62858963 23.77399826 55.36087799 -37.49295807
		 21.98534584 50.92131042 -33.3532486 24.64384842 49.22793961 -35.51977158 27.32361794 53.151474 -41.17568207
		 28.53041077 57.52186584 -43.83530807 31.40650368 61.078769684 -47.97587967 34.78960037 61.50349426 -51.7946434
		 37.74657059 64.8252182 -53.82868576 40.021045685 75.28842163 -55.14022446 49.35178757 82.98329926 -60.0036735535
		 60.13082886 82.32476807 -65.17912292 70.80780029 79.1026535 -69.45670319 79.76804352 74.23974609 -75.83184052
		 86.42411041 66.43696594 -81.048278809 99.53566742 53.64952087 -87.76251984 102.45476532 42.042186737 -90.93747711
		 106.228302 30.50125313 -95.53429413 105.24064636 18.69192886 -97.91381073 100.99057007 7.022335052 -93.30705261
		 91.44799042 -7.40313578 -85.63382721 82.9471283 -18.71164322 -79.23532104 68.52548218 83.69716644 -73.16593933
		 40.89940262 85.80419922 -67.07901001 34.75505829 86.92481232 -64.19509888 28.31295967 80.5470047 -62.26082611
		 21.38773346 69.2357254 -65.055976868 12.12184906 66.21975708 -62.33309555 12.38527679 66.44248962 -60.4716835
		 21.95291901 69.58435822 -62.031578064 28.85283279 81.35079956 -58.061206818 36.074306488 88.095222473 -59.46146011
		 41.55646515 86.30224609 -62.71840286 51.97372055 86.36865234 -64.19281006 46.28977585 85.47354126 -60.79176331
		 37.11531067 80.26477814 -56.44581604 35.072254181 69.20805359 -54.95851135 32.54002762 63.66033173 -52.53458405
		 28.82241249 62.66146469 -47.6926384 25.83983421 59.010478973 -43.34635925 24.72459412 54.30667114 -40.7620697
		 22.27742767 50.23788071 -35.16812897 23.036758423 49.77580261 -34.068870544 23.45186996 50.25863266 -33.53078461
		 26.79458427 54.18354416 -38.18701553 28.058799744 58.87627792 -41.030487061 31.36985397 62.67944336 -45.70123672
		 35.24648285 64.15561676 -49.70607758 38.24124146 68.76119232 -51.29845047 40.61029434 77.60020447 -52.3379364
		 51.68133926 84.77766418 -57.39946747 63.22306824 85.50398254 -62.53291321 75.32726288 82.81451416 -67.10132599
		 87.03490448 78.37495422 -73.8462677 95.60309601 73.93261719 -78.60887909 103.81197357 61.55606461 -82.94099426
		 109.31162262 49.038406372 -87.87434387 114.58052063 31.069860458 -93.87207031 114.27194977 19.5123291 -95.56968689
		 109.91843414 6.55333853 -91.09602356 100.7638092 -9.26944065 -83.31988525 97.23195648 -18.71164322 -76.5294342
		 86.87251282 -18.71164322 -95.19378662 93.84183502 -10.064937592 -96.39155579 102.77025604 4.95957756 -103.79032898
		 106.43837738 17.77606964 -108.64151001 107.61219025 30.12909889 -105.40827942 103.75353241 45.85780334 -99.50414276
		 96.4737854 61.93791199 -94.090446472 86.88277435 75.50977325 -88.67745972 80.39732361 77.96821594 -82.094451904
		 63.54552841 81.95675659 -69.58200836 64.93076324 80.63969421 -67.0093307495 66.62126923 80.62171173 -65.21335602
		 69.14402008 83.9378891 -64.6678772 67.54575348 88.86444092 -65.82499695 65.16814423 89.54787445 -67.25656128
		 61.99146652 90.4471283 -69.065483093 41.32922745 90.17182922 -64.8561554;
	setAttr ".vt[1494:1659]" 35.1315918 89.97398376 -61.64149094 28.28836823 83.27520752 -59.61379242
		 21.82271576 71.42437744 -63.40584946 12.43771076 67.63780975 -61.39183044 11.76981354 66.13674927 -61.026996613
		 12.24816322 64.92482758 -61.15911484 21.72766685 67.045684814 -63.23207474 28.86306572 78.16465759 -59.90591431
		 35.89533234 84.13434601 -61.45284653 40.75867081 82.18502808 -64.65558624 120.99885559 51.62826157 -80.78596497
		 113.38922119 58.72825241 -82.042167664 113.064552307 58.096004486 -76.6426239 117.35414124 52.99237442 -74.87088013
		 115.77731323 75.28288269 -73.54094696 121.53816223 74.65341187 -70.50005341 114.54747772 75.11686707 -69.010398865
		 118.022171021 74.85539246 -66.41389465 101.48736572 93.95146179 -84.25247955 106.47808838 93.85739136 -82.033576965
		 101.46401978 94.33468628 -81.24454498 104.014762878 94.21017456 -79.27708435 89.71564484 109.43252563 -80.66149139
		 93.099365234 110.91007996 -78.42242432 89.50508118 107.97988129 -77.96772766 91.88309479 108.91925812 -76.18713379
		 66.30739594 111.94907379 -66.5313797 66.71841431 113.71022797 -63.38237762 67.82174683 110.22663879 -65.85715485
		 68.49619293 111.14942169 -63.84302902 96.69999695 102.90392303 -84.39533234 96.57738495 102.27720642 -81.32327271
		 99.27361298 102.81676483 -79.62522125 100.65242004 103.65377045 -82.33525085 109.72484589 84.19936371 -77.55207825
		 109.35277557 84.64484406 -73.99848175 111.7848053 84.44562531 -71.52455902 115.2929306 84.44424438 -75.31703949
		 115.85003662 67.036003113 -76.1049881 115.45863342 66.84370422 -71.3806076 119.37140656 63.97161102 -68.68618774
		 122.78338623 62.86068344 -73.36811829 110.29402161 52.033622742 -81.80908966 114.88082123 43.92370987 -83.21176147
		 119.49978638 43.19876862 -88.96668243 112.2610321 55.25988388 -85.62545013 117.49367523 40.76385498 -86.18328094
		 120.22263336 50.65568542 -77.69560242 122.13713074 62.8177948 -70.64105225 120.39267731 74.47079468 -67.82398224
		 114.4480896 84.56045532 -73.089553833 106.010177612 94.13824463 -80.29714966 100.54170227 103.33141327 -80.6072464
		 93.14467621 110.20451355 -77.028747559 67.791008 112.50937653 -63.73786545 67.20962524 111.1355896 -66.4655838
		 89.28025055 108.58031464 -79.58486938 96.21699524 102.49165344 -83.14024353 100.91648102 94.16452026 -83.015518188
		 109.076438904 84.50650024 -76.16465759 114.51994324 75.1680603 -71.58554077 114.75688171 67.23661041 -73.94355774
		 112.51165009 59.23736191 -79.60758972 110.68361664 54.72724533 -83.54478455 109.5013504 41.4237709 -102.88231659
		 113.67939758 42.62185669 -99.16403961 115.65106201 43.39383698 -94.29045105 116.7820816 50.13964844 -88.52352905
		 117.71966553 54.95966721 -82.80366516 119.90900421 65.17661285 -75.99125671 119.31165314 74.81942749 -73.16122437
		 112.8245697 84.119133 -77.20973206 104.18560791 93.70521545 -83.77637482 98.77163696 103.41857147 -84.027137756
		 91.48719025 110.53793335 -80.16882324 66.37195587 112.69475555 -64.79824066 66.57012939 111.70557404 -64.4887085
		 68.28701019 110.33039856 -64.69625854 90.56346893 108.19017792 -76.72103882 97.78703308 102.43077087 -80.037483215
		 102.7773819 94.38864136 -79.90824127 110.26088715 84.69464874 -72.21762085 115.96212769 75.0034255981 -67.11891174
		 117.23053741 65.52110291 -69.37579346 114.92761993 55.87276459 -74.8529129 112.17644501 48.02155304 -81.79684448
		 108.3238678 38.2348671 -89.19136047 104.84845734 36.79328918 -93.41864014 104.37454987 36.57192993 -99.38179779
		 106.48908234 38.58626556 -102.68930054 78.95687866 113.44460297 -74.76145935 79.018684387 112.4983139 -74.19477081
		 79.56310272 111.8453064 -73.051902771 80.37120056 112.0016403198 -71.91305542 81.096496582 112.7639389 -71.19801331
		 81.39613342 114.1930542 -71.40386963 80.96855164 115.12136841 -72.24482727 79.82830048 114.77134705 -73.83202362
		 32.041316986 68.30936432 -71.55358124 1.38605106 63.73695374 -77.83138275 24.5846138 92.78464508 -52.96808243
		 -6.070650578 88.2122345 -59.24588394 32.041316986 68.30936432 -71.55358124 1.38605106 63.73695374 -77.83138275
		 24.5846138 92.78464508 -52.96808243 -6.070650578 88.2122345 -59.24588394 27.22722244 70.79871368 -49.85890198
		 -3.42804193 66.22631073 -56.13670731 29.39870071 90.29529572 -74.66275024 -1.25656009 85.7228775 -80.94055939
		 27.22722244 70.79871368 -49.85890198 -3.42804193 66.22631073 -56.13670731 29.39870071 90.29529572 -74.66275024
		 -1.25656009 85.7228775 -80.94055939 37.43997955 53.70304871 -51.22244644 14.45453262 43.52345657 -42.7428093
		 27.38665581 78.16371155 -49.10925293 4.4012022 67.98412323 -40.62961578 37.43997955 53.70304871 -51.22244644
		 14.45453262 43.52345657 -42.7428093 27.38665581 78.16371155 -49.10925293 4.4012022 67.98412323 -40.62961578
		 36.72779465 66.62458801 -37.64097595 13.74234295 56.44499969 -29.16134262 28.09885788 65.24217224 -62.69071198
		 5.11339474 55.062587738 -54.21107864 36.72779465 66.62458801 -37.64097595 13.74234295 56.44499969 -29.16134262
		 28.09885788 65.24217224 -62.69071198 5.11339474 55.062587738 -54.21107864 40.16468811 66.023048401 -58.79825592
		 38.11937332 53.19365692 -35.66640091 41.055908203 89.17736053 -45.87760162 39.010604858 76.34796143 -22.74575233
		 40.16468811 66.023048401 -58.79825592 38.11937332 53.19365692 -35.66640091 41.055908203 89.17736053 -45.87760162
		 39.010604858 76.34796143 -22.74575233 53.82847595 76.71363068 -51.66090012 51.78317261 63.88423157 -28.5290432
		 27.39211845 78.48677826 -53.014965057 25.34680748 65.65737915 -29.88311005 53.82847595 76.71363068 -51.66090012
		 51.78317261 63.88423157 -28.5290432 27.39211845 78.48677826 -53.014965057 25.34680748 65.65737915 -29.88311005
		 72.048927307 101.72873688 -65.38095856 49.082256317 90.36443329 -58.50751877 61.38788986 125.69171906 -61.38380432
		 38.42121887 114.32741547 -54.51036453 72.048927307 101.72873688 -65.38095856 49.082256317 90.36443329 -58.50751877
		 61.38788986 125.69171906 -61.38380432 38.42121887 114.32741547 -54.51036453 70.6786499 113.36112976 -50.72697449
		 47.71198273 101.99682617 -43.8535347 62.75816345 114.059326172 -76.037796021 39.79150391 102.69502258 -69.16435242
		 70.6786499 113.36112976 -50.72697449 47.71198273 101.99682617 -43.8535347 62.75816345 114.059326172 -76.037796021
		 39.79150391 102.69502258 -69.16435242 88.82211304 101.26927948 -89.27676392 64.75997162 111.81630707 -92.96907043
		 94.1522522 119.80656433 -71.060890198 70.090118408 130.35359192 -74.75319672;
	setAttr ".vt[1660:1825]" 88.82211304 101.26927948 -89.27676392 64.75997162 111.81630707 -92.96907043
		 94.1522522 119.80656433 -71.060890198 70.090118408 130.35359192 -74.75319672 86.57642365 102.64823914 -70.70298767
		 62.51427841 113.19525146 -74.39529419 96.39794922 118.42761993 -89.63466644 72.3358078 128.97462463 -93.32696533
		 86.57642365 102.64823914 -70.70298767 62.51427841 113.19525146 -74.39529419 96.39794922 118.42761993 -89.63466644
		 72.3358078 128.97462463 -93.32696533 102.4153595 84.19591522 -70.72597504 91.25930023 100.83230591 -53.32964325
		 105.61415863 104.22442627 -87.82819366 94.45808411 120.86080933 -70.43186188 102.4153595 84.19591522 -70.72597504
		 91.25930023 100.83230591 -53.32964325 105.61415863 104.22442627 -87.82819366 94.45808411 120.86080933 -70.43186188
		 115.94339752 96.75718689 -74.06313324 104.78733063 113.39357758 -56.66680527 92.086135864 91.66316223 -84.49103546
		 80.93006897 108.29955292 -67.094703674 115.94339752 96.75718689 -74.06313324 104.78733063 113.39357758 -56.66680527
		 92.086135864 91.66316223 -84.49103546 80.93006897 108.29955292 -67.094703674 100.19160461 49.99108887 -87.41309357
		 88.26515961 71.11840057 -98.14881897 107.31545258 41.72452545 -111.59519196 95.38900757 62.85184097 -122.33091736
		 100.19160461 49.99108887 -87.41309357 88.26515961 71.11840057 -98.14881897 107.31545258 41.72452545 -111.59519196
		 95.38900757 62.85184097 -122.33091736 115.054748535 52.73458099 -98.52570343 103.12830353 73.8618927 -109.26142883
		 92.45231628 38.98104477 -100.48259735 80.52587128 60.10836029 -111.21832275 115.054748535 52.73458099 -98.52570343
		 103.12830353 73.8618927 -109.26142883 92.45231628 38.98104477 -100.48259735 80.52587128 60.10836029 -111.21832275
		 -109.40183258 29.0015678406 -35.67619705 -108.56863403 29.20908928 -32.0044631958
		 -113.65739441 26.8405838 -36.0068511963 -114.10702515 25.50138092 -32.37108231 -99.35003662 -6.93828869 -34.54036713
		 -100.86009979 -6.95765734 -28.092002869 -94.063613892 -4.63895702 -26.97138596 -93.15276337 -5.22554922 -33.55256653
		 -116.9407196 73.80256653 -32.40151978 -116.95230103 73.33772278 -31.24216843 -119.34312439 73.47329712 -30.94057083
		 -119.60424805 73.95059204 -32.36278152 -114.38942719 38.96949005 -36.14381409 -112.68100739 38.5959549 -32.50251389
		 -117.74867249 35.068096161 -32.94799042 -119.13906097 41.66726685 -37.19248581 -119.25233459 49.12971497 -42.56451035
		 -122.5980835 47.13474655 -42.76511383 -119.99508667 49.56412125 -41.0025672913 -122.92700958 47.76976395 -40.76737976
		 -125.32180023 55.19623947 -45.34529114 -127.51322174 54.067325592 -46.39118958 -126.41405487 54.67605591 -43.022441864
		 -128.27740479 54.11298752 -43.80686569 -124.27139282 64.99538422 -48.88144684 -125.74237061 64.63430023 -49.99098969
		 -125.75223541 65.54600525 -47.46477127 -127.37919617 64.60939789 -48.14266968 -115.60462952 66.24604797 -36.42189026
		 -115.93009949 65.84207153 -34.26229095 -119.45189667 64.1583786 -34.81014633 -119.81436157 64.36867523 -37.0084838867
		 -110.7022934 6.92134142 -40.89465714 -111.055076599 6.28494501 -35.26945877 -102.93392944 11.48403549 -34.60677338
		 -102.62696075 12.065093994 -40.54463959 -78.67507172 -21.28628349 -34.95679092 -79.36611938 -20.73704529 -27.54414558
		 -85.067756653 -27.056751251 -28.50012779 -84.5894165 -26.99864578 -35.9252243 -93.70372772 -17.20780754 -34.21663666
		 -94.51046753 -16.93803024 -27.14570618 -88.52401733 -11.64209747 -26.44705009 -88.66771698 -12.43482685 -33.38101959
		 -98.26504517 1.74438655 -30.11878967 -107.096099854 -2.95665407 -30.95025635 -107.83141327 -1.28956938 -38.243927
		 -97.6315918 1.26847172 -35.99716187 -109.85267639 15.59156704 -39.79341125 -110.75088501 14.2952528 -34.75342178
		 -105.61128998 19.38643265 -34.36743546 -105.6783905 20.35486412 -38.84019852 -119.23140717 48.28717804 -37.55218887
		 -122.30617523 49.72184753 -38.012886047 -121.73220825 45.51469803 -34.62337494 -117.36457825 48.069969177 -34.38957214
		 -119.50326538 59.14605331 -37.5120697 -119.21031189 59.011863708 -35.26392746 -122.35650635 57.7224617 -35.3801384
		 -123.4617157 57.23410034 -37.91603851 -115.015617371 70.44210815 -34.89315414 -118.065490723 69.89701843 -35.0010643005
		 -117.96086121 69.2039032 -33.35611725 -115.36753845 69.99247742 -33.21500015 -117.0207901 78.39292908 -29.52251244
		 -116.77626038 78.14668274 -28.20959663 -119.639534 78.81074524 -27.67280769 -119.79742432 79.041786194 -29.15035629
		 -115.34902954 82.038391113 -27.46943855 -115.28089905 81.94984436 -26.040309906 -117.89254761 83.0082015991 -25.34580803
		 -117.98800659 83.17421722 -26.83027267 -115.30337524 86.75187683 -24.38706017 -115.50312805 86.74357605 -23.49887276
		 -117.19960022 87.34954071 -23.33008766 -117.33552551 87.48926544 -24.36630821 -117.33621979 73.47329712 -50.028343201
		 -118.71208954 73.090080261 -51.93061829 -118.72678375 73.95059204 -49.53168106 -119.90982056 73.52310181 -51.1212883
		 -117.99908447 80.6894989 -54.8262291 -118.82501221 80.21219635 -55.7503891 -118.76673126 81.002166748 -54.42086792
		 -119.66461182 80.55806732 -55.29937363 -85.73233032 -28.026565552 -32.31436157 -94.97341919 -18.56776047 -30.84372711
		 -102.042449951 -8.68146515 -30.84649467 -109.95124054 -4.50337696 -34.056152344 -111.88689423 5.095157623 -38.18858719
		 -111.14138031 15.43108368 -37.19801712 -114.58778381 25.72273636 -34.37988663 -118.4161911 35.89956284 -34.60677338
		 -122.41876221 46.38905334 -36.16456604 -123.71766663 57.18291092 -36.74147415 -120.17493439 64.24692535 -36.0040817261
		 -118.48554993 69.6438446 -34.31486511 -119.83547211 73.74584961 -31.66412926 -120.13239288 79.01688385 -28.40743256
		 -118.42017365 83.36237335 -25.97943878 -117.41629028 87.54322052 -23.73267746 -114.9580307 86.63290405 -23.94573212
		 -114.97031403 81.87237549 -26.82612228 -116.501297 78.14529419 -29.010627747 -116.60817719 73.53694153 -31.88686752
		 -114.63326263 70.39645386 -33.98006058 -114.87346649 66.51028442 -35.15739822 -118.97944641 59.21384811 -36.37070465
		 -117.99803925 48.045066833 -35.72877121 -113.010787964 38.84912872 -34.021568298
		 -108.33362579 29.9008255 -33.55256653 -104.59270477 21.28870773 -36.56162262 -100.34994507 14.50692368 -37.62551117
		 -96.38404083 2.030765295 -32.86636734 -91.5062561 -3.69127798 -30.18104553 -87.95851898 -10.91577435 -29.80750656
		 -78.46755219 -20.20441055 -31.13010788 -111.3907547 27.41887474 -36.82863235 -120.84280396 47.99803543 -43.12066269
		 -126.23610687 54.606884 -46.34692383 -124.74507141 64.73252106 -49.75718689 -117.82770538 73.19384003 -51.23196411
		 -118.25968933 80.44600677 -55.37546921;
	setAttr ".vt[1826:1991]" -119.31804657 80.82784271 -54.76950836 -119.57191467 73.86343384 -50.3299408
		 -126.83324432 65.14202881 -47.66537094 -127.55230713 54.18630981 -42.8923912 -121.77855682 48.72850418 -40.4851532
		 -117.99406433 42.96496201 -37.059673309 -120.10316467 48.31761551 -37.48578262 -122.072891235 57.61732483 -38.36151886
		 -117.9413147 65.12404633 -37.30731583 -116.50215912 70.16403198 -35.38151932 -118.5033493 73.9962616 -32.7183342
		 -118.42899323 78.75402069 -29.71896553 -116.64811707 82.59592438 -27.54276276 -116.45443726 87.29973602 -24.62778473
		 -116.19554901 87.45330048 -23.71192551 -116.47743225 87.15723419 -23.28858376 -116.51461029 82.37872314 -25.28631783
		 -118.17304993 78.41091919 -27.56074715 -118.14486694 73.32388306 -30.71229935 -116.58534241 69.39482117 -32.87328339
		 -117.53474426 64.80584717 -34.03401947 -120.62854767 58.36024475 -34.69531631 -118.70845795 46.47483444 -33.44604111
		 -114.7698822 36.31184006 -31.53408241 -110.77510071 26.13916206 -31.32379341 -108.28312683 15.62892056 -33.4322052
		 -107.42519379 8.13049698 -33.48616028 -102.18701935 1.1743958 -30.22946739 -97.65407562 -5.73190069 -27.22594643
		 -91.61037445 -14.76459503 -25.88813019 -81.95269775 -23.98267555 -26.70022774 -81.51811218 -24.10441971 -36.79819489
		 -91.075309753 -14.73277473 -34.94987488 -96.092819214 -6.18844652 -34.8364296 -102.095191956 2.33789682 -38.90522385
		 -107.92375946 10.19602203 -42.48703766 -107.71555328 17.31537437 -40.36617279 -111.3336792 34.49672318 -35.25423813
		 -110.49858093 35.0044593811 -33.2399025 -110.37717438 34.39710999 -31.70424843 -112.3321991 31.54854202 -30.89491653
		 -115.83930969 30.43484688 -32.22996902 -116.42139435 31.054641724 -33.88875198 -117.32152557 32.35095596 -35.92383957
		 -123.74032593 47.064189911 -41.97653198 -128.45449829 53.976017 -45.15713882 -127.046478271 64.46828461 -49.051612854
		 -119.74121857 73.28514862 -51.8711319 -119.60857391 80.2786026 -55.79189301 -119.13473511 81.0049285889 -55.31597519
		 -118.20780945 80.96342468 -54.2963562 -117.70318604 73.78872681 -49.11248398 -124.60620117 65.6124115 -47.6722908
		 -125.25054932 55.086952209 -43.75291061 -118.79907227 49.88093567 -41.52275467 -102.78866577 -6.034881115 -17.24003983
		 -104.91539764 0.057933349 -20.82600021 -103.6855011 2.53988338 -17.69243622 -101.77768707 -1.23699737 -15.043086052
		 -114.8165741 10.92649555 -16.4293251 -116.38301086 6.12722921 -12.62615871 -114.27494049 11.68187237 -14.21853542
		 -115.21103668 8.92322731 -11.47649193 -122.83812714 22.4950943 -24.90309525 -123.48818207 20.42957115 -21.93139648
		 -122.67539215 23.85089874 -22.98145294 -122.94430542 22.80499268 -21.11099625 -130.94543457 33.017791748 -24.90863037
		 -131.95986938 31.69934082 -23.54314232 -129.74649048 34.48426819 -22.87769318 -130.47662354 33.51307297 -21.55509186
		 -132.39152527 53.76573181 -18.162817 -133.52856445 54.65392685 -16.20935249 -131.25032043 53.071231842 -17.25387383
		 -131.86700439 53.38389587 -15.87178612 -127.73059845 25.88045502 -25.85769272 -126.86610413 27.4991169 -23.9540329
		 -127.48399353 26.43660927 -22.19840622 -128.75454712 24.20368385 -23.32870293 -118.44507599 17.37209511 -20.10936356
		 -118.29566193 18.64488983 -18.23060608 -118.85320282 16.8685112 -16.84851837 -119.7251358 14.44466686 -17.7740612
		 -110.49616241 6.105093 -16.73507309 -109.83866119 7.55358887 -14.14106178 -108.9627533 4.079688549 -11.21778297
		 -109.79370117 0.32217652 -12.70501709 -99.25250244 -1.53444397 -21.7764473 -96.40479279 -7.032365322 -20.37637329
		 -98.68683624 -11.53695297 -22.18042183 -102.69803619 -3.1531074 -23.80876923 -96.32506561 -10.32641315 -20.94636536
		 -101.84824371 -5.35006237 -15.68501663 -109.42068481 1.085853219 -11.38241673 -115.85244751 6.91857529 -11.47511005
		 -119.58747864 15.10181618 -16.94120979 -123.36314392 21.35649681 -21.047357559 -128.22294617 25.091875076 -22.3616581
		 -131.46304321 32.27348328 -22.14998627 -132.77975464 53.85842896 -16.05578804 -131.88551331 53.23033142 -17.8197155
		 -130.23847961 33.87416077 -23.99830627 -127.19294739 26.84196854 -25.19777679 -122.6658783 23.43862343 -24.32203865
		 -118.35256195 18.20079613 -19.3844223 -114.37663269 11.68602276 -15.68916702 -110.10791779 7.55912352 -15.87316895
		 -104.64665985 2.091638088 -19.63206482 -101.49494171 -1.31308842 -22.7462616 -97.16155243 -12.095876694 -33.7573204
		 -98.96421814 -13.11964607 -30.18796349 -98.60762787 -11.96444607 -26.92850113 -101.43423462 -8.63165951 -24.1504879
		 -104.020645142 -4.1049366 -19.76349449 -110.60372162 2.51913142 -15.27412605 -115.73779297 7.98108149 -14.96837807
		 -118.91752625 15.9305172 -19.15338326 -123.27218628 20.90825272 -23.66073799 -128.46817017 24.67129898 -24.99855423
		 -131.7779541 32.089481354 -24.71494293 -132.84062195 54.35371017 -17.13766289 -132.12588501 54.34402466 -16.88587189
		 -131.30358887 53.20542908 -16.4293251 -129.89486694 34.30027008 -21.99365234 -127.0034103394 27.29021263 -22.85555649
		 -122.84658813 23.46629333 -21.76538086 -118.51234436 18.20079613 -17.32996559 -114.61890411 10.55849266 -12.60125637
		 -109.37346649 6.098175049 -12.34254646 -102.62298584 1.066484928 -16.018434525 -97.50033569 -3.72586489 -20.80524826
		 -91.34266663 -7.88458443 -26.12331963 -90.094421387 -7.35194683 -29.61105537 -91.30307007 -8.91942215 -33.054515839
		 -94.10718536 -10.66259766 -34.36051941 -133.51351929 43.28039169 -22.79330063 -132.90426636 43.42980576 -22.083580017
		 -132.47090149 43.49206161 -21.15388489 -132.56532288 43.41458893 -20.45661545 -133.016326904 43.23058701 -20.21865654
		 -133.9287262 42.97602463 -20.63923264 -134.50737 42.9691124 -21.50943756 -134.30918884 43.13236237 -22.52352333
		 -111.7351532 84.15411377 -17.43711472 -106.79316711 99.45489502 -12.86361599 -120.52037811 90.75688171 -30.033847809
		 -115.57839203 106.057662964 -25.46034622 -111.7351532 84.15411377 -17.43711472 -106.79316711 99.45489502 -12.86361599
		 -120.52037811 90.75688171 -30.033847809 -115.57839203 106.057662964 -25.46034622
		 -109.45973969 86.79527283 -28.73197746 -104.51773071 102.096061707 -24.15847588 -122.79579926 88.11572266 -18.73898506
		 -117.85380554 103.41650391 -14.1654911 -109.45973969 86.79527283 -28.73197746 -104.51773071 102.096061707 -24.15847588
		 -122.79579926 88.11572266 -18.73898506 -117.85380554 103.41650391 -14.1654911 -111.63024139 64.90938568 -31.91005898
		 -116.16641235 78.35072327 -23.066543579 -127.21790314 63.51535034 -37.78678131 -131.7540741 76.95668793 -28.94326591
		 -111.63024139 64.90938568 -31.91005898 -116.16641235 78.35072327 -23.066543579 -127.21790314 63.51535034 -37.78678131;
	setAttr ".vt[1992:2157]" -131.7540741 76.95668793 -28.94326591 -117.43018341 69.13276672 -41.30424881
		 -121.96635437 82.57411194 -32.46073151 -121.41794586 59.29196167 -28.39259338 -125.95413208 72.73330688 -19.54908752
		 -117.43018341 69.13276672 -41.30424881 -121.96635437 82.57411194 -32.46073151 -121.41794586 59.29196167 -28.39259338
		 -125.95413208 72.73330688 -19.54908752 -112.24194336 83.68164825 -51.38182449 -112.71472931 97.89984131 -60.16098022
		 -125.92253876 78.3090744 -59.34619141 -126.39530945 92.52727509 -68.12534332 -112.24194336 83.68164825 -51.38182449
		 -112.71472931 97.89984131 -60.16098022 -125.92253876 78.3090744 -59.34619141 -126.39530945 92.52727509 -68.12534332
		 -114.28453064 77.51568604 -61.25785065 -114.75730133 91.73388672 -70.037010193 -123.87995911 84.47503662 -49.47016525
		 -124.35273743 98.69324493 -58.2493248 -114.28453064 77.51568604 -61.25785065 -114.75730133 91.73388672 -70.037010193
		 -123.87995911 84.47503662 -49.47016525 -124.35273743 98.69324493 -58.2493248 -125.56735992 52.063774109 -15.9575634
		 -121.15973663 66.2549057 -8.29995155 -141.42550659 57.31766129 -16.5663681 -137.017868042 71.50878143 -8.90874958
		 -125.56735992 52.063774109 -15.9575634 -121.15973663 66.2549057 -8.29995155 -141.42550659 57.31766129 -16.5663681
		 -137.017868042 71.50878143 -8.90874958 -132.034683228 58.2425766 -23.68565369 -127.62705994 72.43370819 -16.028043747
		 -134.95817566 51.13885117 -8.83827591 -130.55055237 65.32998657 -1.18066895 -132.034683228 58.2425766 -23.68565369
		 -127.62705994 72.43370819 -16.028043747 -134.95817566 51.13885117 -8.83827591 -130.55055237 65.32998657 -1.18066895
		 -126.98712921 45.33996201 -18.68488693 -128.85946655 60.21022034 -26.08921814 -141.94186401 40.58706665 -24.44860268
		 -143.81419373 55.45732117 -31.85293961 -126.98712921 45.33996201 -18.68488693 -128.85946655 60.21022034 -26.08921814
		 -141.94186401 40.58706665 -24.44860268 -143.81419373 55.45732117 -31.85293961 -130.84840393 39.97437668 -28.48429108
		 -132.72073364 54.84462738 -35.8886261 -138.080596924 45.95265198 -14.64920425 -139.95294189 60.82289886 -22.053539276
		 -130.84840393 39.97437668 -28.48429108 -132.72073364 54.84462738 -35.8886261 -138.080596924 45.95265198 -14.64920425
		 -139.95294189 60.82289886 -22.053539276 -103.18206024 9.29219246 -38.070110321 -105.054397583 24.16245079 -45.47443771
		 -118.13679504 4.5392971 -43.83382416 -120.0091247559 19.40955162 -51.23815918 -103.18206024 9.29219246 -38.070110321
		 -105.054397583 24.16245079 -45.47443771 -118.13679504 4.5392971 -43.83382416 -120.0091247559 19.40955162 -51.23815918
		 -107.043319702 3.92660642 -47.86951065 -108.91566467 18.79685974 -55.27384949 -114.27552795 9.90488243 -34.034427643
		 -116.14787292 24.77513123 -41.43875885 -107.043319702 3.92660642 -47.86951065 -108.91566467 18.79685974 -55.27384949
		 -114.27552795 9.90488243 -34.034427643 -116.14787292 24.77513123 -41.43875885 -103.26551056 9.50290298 22.45861626
		 -103.3682251 9.58452797 20.30593109 -105.563797 8.46114731 23.3758564 -106.40114594 7.73067379 21.47911453
		 -99.36307526 -10.95105267 20.74449158 -101.17611694 -10.90678024 17.34391594 -97.51198578 -9.87678528 16.024082184
		 -96.015068054 -10.23510456 19.62111092 -105.15290833 35.29775238 23.30114937 -105.68035126 35.077091217 22.26907921
		 -107.7572937 35.66783142 22.41849327 -107.48267365 35.94936752 23.61519814 -105.31511688 15.26299191 24.044075012
		 -104.94469452 14.98560524 21.85541725 -107.72997284 13.21268463 22.91100883 -107.4352951 16.95359612 25.91729164
		 -105.53717041 20.93523026 31.22844505 -107.30524445 19.80562592 31.75139809 -106.053199768 21.18079567 30.60311699
		 -107.70333862 20.24141884 30.90471458 -108.056121826 22.96201706 34.15725708 -109.23484039 22.19349861 34.63455963
		 -108.65827942 22.9613266 32.91490173 -109.67686462 22.53729248 33.32579041 -110.033103943 26.66557312 33.810009
		 -110.71205139 25.97452927 34.30252075 -110.78052521 27.0072917938 32.53444672 -111.3826828 26.29826164 33.051864624
		 -103.30943298 31.02973938 23.37723923 -103.78361511 30.80769348 22.28568077 -105.86505127 30.01496315 22.98571587
		 -105.7720108 30.14155006 24.24606133 -104.13155365 -2.77265191 25.21863937 -105.18299866 -3.1164453 22.24279022
		 -100.71714783 -0.53004271 20.62412834 -99.64633942 -0.21391907 23.77568054 -87.65163422 -19.93947601 18.56967354
		 -89.10704041 -19.61089897 14.66551304 -92.26792908 -22.91740036 16.09740448 -90.90279388 -22.89803314 20.030620575
		 -96.54286194 -16.90206146 20.6130619 -98.020065308 -16.72428322 16.91365433 -94.70456696 -14.00022602081 15.59105492
		 -93.77902985 -14.43325329 19.36240196 -99.25585175 -6.14901733 17.57357216 -104.064109802 -8.43036461 19.36516762
		 -103.31358337 -7.46885061 23.37308884 -98.047737122 -6.43677998 20.69606972 -103.53598022 2.034915686 24.34152031
		 -104.82328796 1.34248781 21.75719452 -101.92630005 3.98699594 20.72789001 -101.26154327 4.53139305 23.13789749
		 -107.46572113 20.65092468 25.055393219 -109.017990112 21.57162857 25.67380142 -109.32822418 19.1989727 23.95829773
		 -106.92929077 20.45654869 23.11161423 -106.57650757 26.96924591 24.56011009 -106.64048767 26.92359161 23.27209663
		 -108.6676178 26.21801949 23.90434265 -109.068473816 25.9302597 25.48841476 -102.96183777 33.14506912 23.071491241
		 -104.74893188 32.9790535 23.88912392 -105.025978088 32.59237289 22.7809639 -103.5484314 32.86353302 22.094758987
		 -107.067634583 37.1578331 22.77127647 -107.57847595 37.099723816 21.733675 -109.47625732 38.29642868 21.49848366
		 -109.25871277 38.47489929 22.64400101 -108.21418762 39.21090698 21.81945038 -108.54310608 39.30360031 20.91465759
		 -109.32649231 39.9600563 20.26027679 -109.53470612 40.070041656 21.34353256 -107.7562561 42.26285172 20.51483345
		 -107.49616241 42.32510757 20.077655792 -107.86209106 43.16556549 19.61696053 -108.25845337 43.27416992 20.037536621
		 -111.54766846 31.84737396 31.0015544891 -112.35214996 31.024206161 31.62273598 -112.089981079 31.94836426 30.47445107
		 -112.80489349 31.21304893 30.91854668 -114.43185425 35.84353256 31.088712692 -114.97279358 35.3074379 31.33082199
		 -114.75386047 35.96804428 30.71517754 -115.30587006 35.45892715 30.91162872 -92.093612671 -23.43066978 18.26392365
		 -97.77934265 -17.61454773 18.99439621 -101.41234589 -11.82056427 19.22267151 -105.19683838 -9.18228149 21.47635078
		 -105.23971558 -3.74661684 23.95691681 -104.62960815 1.9934119 23.11714554 -106.36862946 7.87317133 22.57205772
		 -107.81505585 13.70312595 23.8835907 -109.44685364 19.71500778 24.83957291;
	setAttr ".vt[2158:2323]" -109.37664795 25.9143486 24.89075851 -106.11925507 30.084827423 23.75354195
		 -105.11035919 32.89258575 23.51143837 -107.88561249 35.94106674 23.11853218 -109.7232132 38.66028595 22.085075378
		 -109.58693695 40.3508873 20.64488029 -108.038482666 43.32604599 19.76084137 -107.5044632 42.094062805 20.40830803
		 -108.15296936 39.019294739 21.42930984 -106.98566437 36.9655304 22.23725891 -104.99933624 35.11928558 22.68135452
		 -102.94108582 33.090423584 22.4198761 -103.047950745 31.13557625 22.64400101 -106.36482239 27.019052505 23.83931923
		 -107.06867218 20.46899986 23.9389286 -104.8890152 15.14055443 22.71317101 -102.9697876 9.96290684 21.15676498
		 -100.98173523 5.010074615 21.73644257 -98.7647171 1.05887568 21.83605194 -97.82015991 -6.060475349 18.79102707
		 -95.59898376 -9.44514179 17.45044136 -93.87310791 -13.6149292 17.31209564 -88.069786072 -19.3466568 16.46125984
		 -104.22286987 8.69702911 23.39245796 -106.31121826 20.27808189 31.73894691 -108.55382538 22.50270462 34.64562225
		 -110.29354858 26.23185539 34.26101685 -111.95855713 31.39981842 31.44426537 -114.65563202 35.57721329 31.2948513
		 -115.090744019 35.72593689 30.75391388 -112.6136322 31.62186432 30.61833191 -111.24121857 26.662117 32.61745453
		 -109.29813385 22.71437454 32.86232758 -107.054138184 20.73186111 30.63216972 -106.7694931 17.63288116 25.73329353
		 -107.9461441 20.70280838 25.13840103 -108.15123749 26.1225605 25.49256516 -104.59778595 30.4977951 24.11739922
		 -103.73519897 33.041309357 23.71757507 -106.20088959 35.61111069 23.80888367 -108.073417664 37.80598831 23.027219772
		 -108.98477173 40.13575745 21.78763008 -108.1014328 42.89578247 20.38063812 -107.6476593 42.87987137 20.09979248
		 -107.64972687 42.837677 19.77882767 -108.98616028 39.52218628 20.31699753 -108.65136719 37.645504 21.30064774
		 -106.89089966 35.32196426 22.0449543 -104.32282257 32.59167862 22.13072968 -104.81845093 30.3034153 22.31749725
		 -107.64350891 26.56803894 23.2209053 -107.84064484 19.61677933 22.86120415 -106.29184723 13.79166794 21.69078827
		 -104.80876923 7.9554882 20.16204834 -103.64041901 1.9913367 20.66840172 -103.42633057 -2.22825551 20.7223568
		 -101.37948608 -6.31641769 18.18230057 -99.50522614 -10.34716511 16.49446297 -96.56533813 -15.62442303 15.78059101
		 -90.74507904 -21.32294846 14.63092518 -89.012275696 -21.40180588 20.016784668 -94.92696381 -15.62096405 20.59092522
		 -97.46148682 -10.65844727 20.69191933 -99.99359131 -5.66549397 22.84598923 -102.27700806 -1.050920129 25.63091469
		 -102.24173737 2.91411304 24.30139923 -103.97315216 12.6461525 23.14619827 -103.80782318 12.89586926 21.91905975
		 -104.0070419312 12.55138397 21.032253265 -105.31926727 11.036481857 20.79291344 -107.016090393 10.55157471 22.16670227
		 -107.047920227 10.92026997 23.18493843 -107.15789795 11.68048859 24.48540306 -108.0038986206 19.79040527 31.49683762
		 -109.74776459 22.26543999 33.98985672 -111.25714111 26.062379837 33.64813614 -112.78310394 30.957798 31.4041481
		 -115.28857422 35.27146912 31.13851738 -114.94339752 35.88503647 31.012624741 -114.45848846 36.045520782 30.787117
		 -111.53591156 32.10884857 30.5256424 -110.14759064 27.11520195 32.85817719 -108.010124207 23.13356972 33.32025528
		 -105.43132782 21.37309837 30.57821465 -103.54358673 -10.32226276 12.68161106 -103.92714691 -6.83591175 14.86611557
		 -103.63626862 -5.50086069 12.9832077 -103.14791107 -7.68467236 11.29398918 -111.84925842 -1.14707148 17.075519562
		 -112.73122406 -3.20360422 15.25210476 -111.48471832 -0.40691376 15.75707245 -112.02772522 -1.60154235 14.41925335
		 -115.81845093 1.5928961 22.9552803 -116.77372742 0.81400084 21.49848366 -116.26565552 2.24589539 22.090608597
		 -116.43721008 1.86059809 21.053005219 -120.7290802 4.75759029 25.96709633 -121.85868835 4.1025157 24.92811203
		 -120.24867249 5.30129528 24.81882095 -120.97810364 4.88417864 24.092496872 -117.13032532 12.44416523 21.61884499
		 -118.00018310547 12.98371983 20.72512245 -116.68865204 12.0062961578 20.97276306
		 -117.20951843 12.20689964 20.31146431 -118.48232269 2.1462853 25.058160782 -118.38098907 2.76884818 24.010871887
		 -119.000091552734 2.25212097 23.06180954 -119.34629822 1.37430787 23.7742939 -114.97383881 0.94197267 19.54225349
		 -115.094894409 1.72294247 18.45899391 -115.69185638 0.98762697 17.22078705 -116.13906097 -0.44219208 18.10205841
		 -107.78323364 -3.27831149 15.12067413 -107.59922791 -2.44476891 13.62513924 -107.28898621 -4.41690969 11.37007809
		 -107.69468689 -6.48035955 12.13790798 -100.82263947 -7.94476557 14.46352577 -99.67815399 -11.12606239 13.43698692
		 -100.82055664 -13.55059814 14.74160194 -102.47415924 -8.71328449 15.94522476 -99.67331696 -12.96607876 13.7676363
		 -103.24337006 -9.97708702 11.69657993 -107.62621307 -6.076385498 11.38252926 -112.36806488 -2.66958332 14.5243969
		 -116.1615448 0.068309329 17.23738861 -116.66754913 1.18408024 21.023952484 -119.28888702 1.71602535 23.20707321
		 -121.62522125 4.33286428 24.37887383 -117.65016937 12.51057243 20.5355854 -116.94078827 12.11974144 21.36843491
		 -120.38182831 5.083398342 25.50501633 -118.30108643 2.54818416 24.67908859 -115.94711304 2.021080971 22.7034893
		 -114.93994141 1.47391784 19.21298599 -111.44390869 -0.56117094 16.57608604 -107.65596008 -2.49388242 14.68764687
		 -103.87976837 -5.71253157 14.18544674 -101.87891388 -7.73309374 15.31021023 -120.18675995 9.57415199 24.21839142
		 -119.9408493 9.49114227 23.83516884 -119.8664856 9.42335224 23.24995804 -120.46310425 9.49875259 22.56929016
		 -120.86119843 9.59697914 22.8363018 -120.89302826 9.73255825 23.22367477 -97.95297241 -13.92655754 20.67877769
		 -96.1942215 -13.13970566 20.64142036 -94.89704895 -12.33417892 19.49175644 -94.73604584 -11.53003502 17.38126945
		 -96.108284 -11.93850613 15.80756855 -100.2503891 -9.53541374 13.95025635 -103.39208984 -6.59276628 12.13859844
		 -107.44409943 -3.4308393 12.49760818 -111.75621796 -1.0042281151 15.088162422 -115.39337921 1.35528469 17.83988953
		 -116.35142517 2.053246737 21.57180595 -118.6905365 2.5104847 23.53634071 -120.61338806 5.092736721 24.45565987
		 -120.16479492 9.46105194 22.9096241 -116.94908142 12.1065979 20.64211464 -117.29547882 12.31515598 20.95201111
		 -117.56525421 12.71394253 21.17198181 -120.5398941 9.65335464 23.7210331 -121.29388428 4.43005323 25.44760513
		 -118.91431427 1.76029658 24.41622734 -116.2960968 1.20344853 22.22688293 -115.55644226 0.24989028 18.822155;
	setAttr ".vt[2324:2489]" -112.29023743 -2.17533779 16.16381264 -107.7389679 -4.8793354 13.62929058
		 -103.73537445 -8.57908726 13.77386379 -101.64736176 -11.13194084 15.34341335 -99.5980835 -13.81553268 17.12878609
		 -99.59584045 -14.717556 19.10853386 -103.33358765 -4.054142952 8.72918797 -105.95574188 4.67117929 5.96835899
		 -111.2702179 -4.79226542 13.93441391 -113.89237213 3.93305898 11.17358112 -103.33358765 -4.054142952 8.72918797
		 -105.95574188 4.67117929 5.96835899 -111.2702179 -4.79226542 13.93441391 -113.89237213 3.93305898 11.17358112
		 -109.58024597 -6.29089594 7.59306335 -112.20240021 2.43442869 4.83223104 -105.023551941 -2.55551505 15.070537567
		 -107.64571381 6.1698122 12.30970669 -109.58024597 -6.29089594 7.59306335 -112.20240021 2.43442869 4.83223104
		 -105.023551941 -2.55551505 15.070537567 -107.64571381 6.1698122 12.30970669 -118.92948914 5.27563953 21.35113716
		 -123.67832947 13.43330288 20.11408615 -124.83164215 2.91443348 28.43765068 -129.58047485 11.072099686 27.20059776
		 -118.92948914 5.27563953 21.35113716 -123.67832947 13.43330288 20.11408615 -124.83164215 2.91443348 28.43765068
		 -129.58047485 11.072099686 27.20059776 -124.76338959 1.94408202 21.77669525 -129.51222229 10.10174274 20.53964043
		 -118.99775696 6.24599123 28.01209259 -123.74658203 14.40365219 26.77504349 -124.76338959 1.94408202 21.77669525
		 -129.51222229 10.10174274 20.53964043 -118.99775696 6.24599123 28.01209259 -123.74658203 14.40365219 26.77504349
		 -114.85936737 9.39609337 18.39577484 -110.052459717 16.13613319 13.69527054 -119.48999023 16.11662674 23.29689407
		 -114.68308258 22.85666466 18.59638596 -114.85936737 9.39609337 18.39577484 -110.052459717 16.13613319 13.69527054
		 -119.48999023 16.11662674 23.29689407 -114.68308258 22.85666466 18.59638596 -120.56880188 12.85052776 17.51041222
		 -115.76189423 19.59056664 12.80990696 -113.7805481 12.66219234 24.18225288 -108.97366333 19.40223694 19.48174858
		 -120.56880188 12.85052776 17.51041222 -115.76189423 19.59056664 12.80990696 -113.7805481 12.66219234 24.18225288
		 -108.97366333 19.40223694 19.48174858 -110.98734283 36.12647629 28.35887527 -112.32720947 45.47768021 27.18037415
		 -118.92713165 35.6480484 33.58955765 -120.26699066 44.99925232 32.41104889 -110.98734283 36.12647629 28.35887527
		 -112.32720947 45.47768021 27.18037415 -118.92713165 35.6480484 33.58955765 -120.26699066 44.99925232 32.41104889
		 -117.49661255 35.02772522 27.041013718 -118.83647156 44.37892914 25.86251068 -112.41785431 36.74679947 34.9074173
		 -113.75773621 46.098003387 33.72891235 -117.49661255 35.02772522 27.041013718 -118.83647156 44.37892914 25.86251068
		 -112.41785431 36.74679947 34.9074173 -113.75773621 46.098003387 33.72891235 -108.43605804 28.63000488 30.58002472
		 -109.21327972 36.76440048 35.46435165 -112.21560669 23.86948204 37.90680313 -112.99282837 32.0038833618 42.79112625
		 -108.43605804 28.63000488 30.58002472 -109.21327972 36.76440048 35.46435165 -112.21560669 23.86948204 37.90680313
		 -112.99282837 32.0038833618 42.79112625 -114.67726898 26.92023468 32.43434525 -115.45449066 35.05463028 37.31867218
		 -105.97439575 25.57925224 36.052474976 -106.75161743 33.71365356 40.93681335 -114.67726898 26.92023468 32.43434525
		 -115.45449066 35.05463028 37.31867218 -105.97439575 25.57925224 36.052474976 -106.75161743 33.71365356 40.93681335
		 -102.50276184 29.67839432 18.70173264 -99.25893402 36.66971588 13.11351585 -104.65432739 36.057132721 25.43313217
		 -101.41049957 43.04845047 19.84491539 -102.50276184 29.67839432 18.70173264 -99.25893402 36.66971588 13.11351585
		 -104.65432739 36.057132721 25.43313217 -101.41049957 43.04845047 19.84491539 -107.92243958 33.38311005 20.19064713
		 -104.67861176 40.3744278 14.60242653 -99.23465729 32.35241699 23.94421959 -95.99082947 39.34374619 18.3560009
		 -107.92243958 33.38311005 20.19064713 -104.67861176 40.3744278 14.60242653 -99.23465729 32.35241699 23.94421959
		 -95.99082947 39.34374619 18.3560009 -104.17937469 40.82365417 17.19979095 -100.54198456 49.42366028 15.34551239
		 -111.14286804 44.8643074 22.28034592 -107.50547791 53.46432114 20.42606735 -104.17937469 40.82365417 17.19979095
		 -100.54198456 49.42366028 15.34551239 -111.14286804 44.8643074 22.28034592 -107.50547791 53.46432114 20.42606735
		 -110.34944153 43.13640213 15.82283974 -106.71205902 51.73641205 13.96855736 -104.97279358 42.55155182 23.65729713
		 -101.33541107 51.15157318 21.80301666 -110.34944153 43.13640213 15.82283974 -106.71205902 51.73641205 13.96855736
		 -104.97279358 42.55155182 23.65729713 -101.33541107 51.15157318 21.80301666 -106.91770172 41.76226425 20.10154724
		 -113.37052917 48.30543137 22.58695221 -111.64414215 35.19549179 25.11826706 -118.096961975 41.73865891 27.60367203
		 -106.91770172 41.76226425 20.10154724 -113.37052917 48.30543137 22.58695221 -111.64414215 35.19549179 25.11826706
		 -118.096961975 41.73865891 27.60367203 -111.86215973 37.39562988 18.76008606 -118.31497955 43.93879318 21.24548912
		 -106.69968414 39.56212234 26.45972633 -113.15251923 46.10528946 28.94512749 -111.86215973 37.39562988 18.76008606
		 -118.31497955 43.93879318 21.24548912 -106.69968414 39.56212234 26.45972633 -113.15251923 46.10528946 28.94512749
		 -61.44472504 80.73653412 -69.31204224 -58.19910049 79.48863983 -73.89176178 -60.94281387 86.72006226 -68.89814758
		 -59.55620193 87.38550568 -74.51402283 -87.51789093 -8.089338303 -78.72634125 -81.53429413 -7.61342335 -87.65760803
		 -90.940979 -11.18278313 -92.90262604 -97.034957886 -11.70711899 -83.76628876 -101.33742523 49.69140625 -89.45895386
		 -95.85193634 52.0018081665 -98.53323364 -91.64788055 44.98068237 -95.52371216 -98.14035034 42.62324142 -87.041564941
		 -22.12339401 61.24754715 -45.15632629 -21.61375046 61.53116226 -47.0079231262 -19.13486862 63.74471664 -46.30355835
		 -19.57613373 63.7419548 -44.048355103 -51.28191376 84.091453552 -60.92170715 -49.71993256 81.96229553 -65.99378204
		 -49.83439636 89.87852478 -66.020774841 -46.23897552 88.6167984 -57.12226486 -42.77698135 83.24200439 -46.072177887
		 -43.077999115 88.5517807 -46.60636902 -40.6598053 83.49655914 -47.75375366 -40.27877045 88.7496109 -48.27905655
		 -37.58369064 84.72509003 -42.52742767 -37.71688461 89.1383667 -41.977211 -35.14163971 86.055984497 -44.88579178
		 -34.88219833 89.24489594 -44.37011719 -33.042045593 78.95877838 -37.28509903 -32.96303558 82.20025635 -37.15958405
		 -30.65531731 79.46927643 -39.16626358 -30.18055725 82.89199066 -38.93767166;
	setAttr ".vt[2490:2655]" -30.75112724 65.86558533 -47.51238251 -29.31170464 66.32905579 -50.37649536
		 -27.52577209 71.33306885 -49.36408997 -28.66897011 71.75778961 -46.20622253 -85.075508118 77.67630005 -81.000022888184
		 -81.23002625 77.89349365 -88.49697113 -77.15355682 69.057258606 -85.89707947 -81.50531006 68.71692657 -78.18991852
		 -104.54296875 17.34304237 -85.037086487 -98.51139832 19.60917282 -94.51136017 -108.6054306 19.68664551 -99.075996399
		 -114.16070557 18.68224335 -89.48123932 -79.72342682 -18.71164322 -72.2417984 -71.35673523 -18.71164322 -85.49407959
		 -86.93122864 -18.71164322 -93.81741333 -95.61135101 -18.71164322 -80.83385468 -110.87098694 31.12658119 -91.21551514
		 -105.76343536 32.33158875 -100.30130005 -96.59273529 30.78624725 -95.94339752 -103.32738495 29.50238609 -87.77159119
		 -98.65552521 5.92247438 -83.68060303 -92.52214813 6.92410898 -92.66399384 -102.028762817 5.6817503 -97.41171265
		 -107.66029358 4.69948483 -87.94225311 -86.20301819 56.23661041 -92.85435486 -91.3609848 64.96909332 -96.38941193
		 -94.91435242 66.907341 -87.4805603 -92.48989105 54.68712997 -85.47601318 -74.44307709 80.44877625 -76.02696991
		 -72.21550751 81.39506531 -82.83298492 -68.47949982 75.41985321 -80.51087189 -71.51000214 75.66333771 -74.1381073
		 -41.21024323 84.46499634 -53.85126114 -37.63022614 87.18075562 -51.34428406 -38.95180511 89.2255249 -57.74904251
		 -40.43045044 82.14215088 -58.59173965 -33.022850037 75.98430634 -48.94991684 -31.63336945 75.52084351 -52.027477264
		 -29.54161644 80.21912384 -50.93289185 -30.94886208 82.20025635 -47.46815872 -27.47354889 61.91438293 -46.12529755
		 -25.37666512 65.38690186 -45.1496582 -24.78231049 65.69680023 -47.81892014 -26.36122513 62.49682617 -48.40856552
		 -16.98200989 57.88847733 -44.41044617 -16.45552826 57.75151443 -46.31762314 -12.98355198 60.023181915 -45.28725433
		 -13.70627689 60.095115662 -43.24832535 -14.31376266 53.44200134 -44.5488739 -13.42139435 53.34930801 -46.39692688
		 -9.6852417 55.052364349 -45.42641068 -10.58653545 55.13537216 -43.39310074 -7.99672127 49.51431656 -45.014160156
		 -7.14298105 49.64160156 -46.065921783 -4.98299313 50.82585144 -45.15195847 -5.53769541 50.93791199 -43.68271637
		 -32.44438553 67.6654892 -29.78512192 -32.63837051 70.70082092 -29.77113533 -30.66194153 68.16492462 -31.14315414
		 -30.90811729 70.77276611 -31.22483444 -25.97504234 65.33848572 -22.6450634 -26.23218918 67.15636444 -22.69290924
		 -24.83235168 65.50035095 -23.36340904 -24.98245049 67.27534485 -23.48476601 -93.35366821 -18.71164322 -88.66443634
		 -94.87705231 -11.87313747 -89.11235046 -106.061393738 5.081323147 -93.36251831 -112.96564484 19.28405571 -95.078781128
		 -109.83815765 31.38667488 -96.4593811 -100.038848877 51.27686691 -95.19132996 -95.17878723 67.074737549 -93.88182831
		 -84.25818634 78.01524353 -85.47529602 -72.13756561 82.11309814 -78.4848175 -60.25346756 88.042655945 -71.85972595
		 -49.57194519 90.52876282 -63.16383362 -38.67725754 89.63780212 -55.064620972 -29.7507515 82.45343018 -48.82467651
		 -27.66290092 72.1410141 -47.39595795 -24.64128494 65.93338013 -46.071903229 -18.984478 64.062919617 -45.013755798
		 -12.89816189 60.39533234 -44.035823822 -9.42705822 55.36087799 -44.1309433 -4.92658186 50.92131042 -44.41762543
		 -8.064206123 49.22793961 -45.80208969 -14.32021236 53.151474 -45.62067413 -17.23779869 57.52186584 -45.48784637
		 -22.23294449 61.078769684 -46.16957855 -27.17166519 61.50349426 -47.44916916 -30.3268261 64.8252182 -49.15971756
		 -32.52832031 75.28842163 -50.59037781 -41.09910202 82.98329926 -56.69427872 -50.60564423 82.32476807 -63.9467659
		 -59.26591873 79.1026535 -71.51613617 -69.015197754 74.23974609 -76.60336304 -76.68565369 66.43696594 -80.16405487
		 -88.62249756 53.64952087 -88.79569244 -92.7769165 42.042186737 -89.95431519 -98.58613586 30.50125313 -91.22837067
		 -100.25747681 18.69192886 -89.26771545 -94.22294617 7.022335052 -87.57362366 -83.052711487 -7.40313578 -82.55715942
		 -73.49127197 -18.71164322 -77.88980865 -61.5338974 83.69716644 -67.79810333 -43.56359482 85.80419922 -45.95046997
		 -38.20362473 86.92481232 -41.78627014 -33.55444336 80.5470047 -36.9254837 -32.89931488 69.2357254 -29.48623276
		 -26.26503754 66.21975708 -22.46789742 -24.72634125 66.44248962 -23.54801559 -30.4615593 69.58435822 -31.36340332
		 -30.05818367 81.35079956 -39.31387329 -34.5855751 88.095222473 -45.11155319 -39.97713852 86.30224609 -48.5163765
		 -46.022079468 86.36865234 -57.12752533 -40.41048813 85.47354126 -53.60836792 -32.37172699 80.26477814 -47.40865707
		 -30.11875534 69.20805359 -46.26400375 -26.80916023 63.66033173 -45.10894012 -20.80694389 62.66146469 -43.99604416
		 -15.58016396 59.010478973 -43.31286621 -12.7712822 54.30667114 -43.49304581 -6.67613029 50.23788071 -43.85354614
		 -6.04167223 49.77580261 -45.029308319 -5.75082779 50.25863266 -45.64352417 -11.4173069 54.18354416 -46.50676727
		 -14.52476597 58.87627792 -46.34160233 -20.18980408 62.67944336 -47.17004395 -25.51846123 64.15561676 -48.80480957
		 -28.29729462 68.76119232 -50.74961853 -30.29937553 77.60020447 -52.3881073 -39.83705139 84.77766418 -59.95248413
		 -49.65257645 85.50398254 -67.90353394 -59.2201767 82.81451416 -76.61232758 -70.54673767 78.37495422 -83.97927094
		 -78.68135834 73.93261719 -89.44960785 -86.26921844 61.55606461 -94.79536438 -93.1622467 49.038406372 -97.45436859
		 -100.89871979 31.069860458 -99.42437744 -102.27099609 19.5123291 -98.37844086 -96.30806732 6.55333853 -96.53173828
		 -85.22234344 -9.26944065 -91.90764618 -77.56855774 -18.71164322 -91.84522247 -89.49163055 -18.71164322 -74.13882446
		 -93.72409821 -10.064937592 -79.80383301 -104.37089539 4.95957756 -84.39778137 -110.35884857 17.77606964 -85.46240234
		 -108.011482239 30.12909889 -87.97663879 -100.99888611 45.85780334 -87.22052765 -92.86943054 61.93791199 -83.19378662
		 -83.69084167 75.50977325 -77.10760498 -74.88039398 77.96821594 -74.31959534 -56.079113007 81.95675659 -64.98921204
		 -54.41625977 80.63969421 -67.39179993 -53.58401489 80.62171173 -69.71360016 -54.24385834 83.9378891 -72.20888519
		 -54.54882813 88.86444092 -70.2594223 -54.74432755 89.54787445 -67.49099731 -54.91310501 90.4471283 -63.8392868
		 -41.77846527 90.17182922 -47.34299469 -36.099609375 89.97398376 -43.28154373 -31.18502045 83.27520752 -38.10582352
		 -31.62677002 71.42437744 -30.62322807 -25.56991768 67.63780975 -23.17681122 -24.94153595 66.13674927 -22.74747849
		 -25.2765007 64.92482758 -23.11363792 -31.42878151 67.045684814 -30.6174736;
	setAttr ".vt[2656:2821]" -31.70628929 78.16465759 -38.48514938 -36.27842712 84.13434601 -44.047641754
		 -41.34063339 82.18502808 -46.92577744 -92.15536499 51.62826157 -111.086051941 -89.81832123 58.72825241 -103.73602295
		 -84.86037445 58.096004486 -105.89917755 -85.23019409 52.99237442 -110.52550507 -83.32917023 75.28288269 -109.72473907
		 -83.23652649 74.65341187 -116.23825073 -78.73429871 75.11686707 -110.68679047 -77.9992218 74.85539246 -114.96170807
		 -86.38183594 93.95146179 -92.12869263 -86.67169952 93.85739136 -97.58275604 -83.6914444 94.33468628 -93.47406006
		 -83.097129822 94.21017456 -96.64012909 -77.83603668 109.43252563 -83.27217865 -77.37807465 110.91007996 -87.30371094
		 -75.34050751 107.97988129 -84.30805969 -74.83422852 108.91925812 -87.23537445 -54.61569214 111.94907379 -68.83533478
		 -51.99691391 113.71022797 -70.63175201 -54.70283127 110.22663879 -70.49069977 -53.21474457 111.14942169 -72.006362915
		 -84.33472443 102.90392303 -87.79872131 -81.54212952 102.27720642 -89.084762573 -81.25392914 102.81676483 -92.25808716
		 -84.29453278 103.65377045 -92.25561523 -84.15374756 84.19936371 -102.51074982 -80.81884766 84.64484406 -103.79327393
		 -79.71941376 84.44562531 -107.083602905 -84.69150543 84.44424438 -108.48652649 -85.64652252 67.036003113 -108.62497711
		 -81.25976563 66.84370422 -110.42201996 -80.63642883 63.97161102 -115.13170624 -86.35725403 62.86068344 -116.04499054
		 -88.2048645 52.033622742 -101.084358215 -91.53777313 43.92370987 -104.53369141 -98.76273346 43.19876862 -106.034942627
		 -92.49828339 55.25988388 -101.10343933 -95.37185669 40.76385498 -105.51187134 -89.049591064 50.65568542 -111.79811859
		 -83.63417816 62.8177948 -116.70783234 -80.33213043 74.47079468 -116.4331665 -82.32330322 84.56045532 -108.7455368
		 -84.91220856 94.13824463 -97.9545517 -82.70476532 103.33141327 -92.94181824 -76.15702057 110.20451355 -87.97707367
		 -52.80076981 112.50937653 -71.4258728 -54.96686554 111.1355896 -69.66902161 -76.67912292 108.58031464 -83.37326813
		 -82.99718475 102.49165344 -87.93844604 -85.020530701 94.16452026 -92.18190765 -82.62319183 84.50650024 -102.56322479
		 -81.01599884 75.1680603 -109.49265289 -83.22438812 67.23661041 -108.63277435 -87.25075531 59.23736191 -104.059944153
		 -89.92816162 54.72724533 -100.64311218 -106.61910248 41.4237709 -90.80697632 -105.20410156 42.62185669 -96.21800995
		 -101.7576828 43.39383698 -100.18810272 -97.13358307 50.13964844 -103.81500244 -92.46357727 54.95966721 -107.2481842
		 -87.38873291 65.17661285 -112.29279327 -84.59612274 74.81942749 -113.045967102 -85.25662231 84.119133 -105.42781067
		 -87.1831665 93.70521545 -94.74881744 -84.94761658 103.41857147 -89.81158447 -78.20172119 110.53793335 -85.07421875
		 -53.10094833 112.69475555 -69.68002319 -52.91519547 111.70557404 -69.99716187 -53.87989426 110.33039856 -71.43247223
		 -74.71051788 108.19017792 -85.81720734 -80.9460144 102.43077087 -90.74643707 -83.097419739 94.38864136 -95.25107574
		 -79.64471436 84.69464874 -105.41116333 -77.69168091 75.0034255981 -112.80619049 -80.27845001 65.52110291 -112.91117859
		 -84.11209106 55.87276459 -108.37186432 -89.048927307 48.02155304 -102.76698303 -93.88695526 38.2348671 -95.97620392
		 -96.074569702 36.79328918 -90.95996094 -101.17195129 36.57192993 -87.82936859 -105.079025269 38.58626556 -88.21098328
		 -67.69315338 113.44460297 -76.36683655 -67.21636963 112.4983139 -76.67929077 -66.4454422 111.8453064 -77.68339539
		 -65.79785919 112.0016403198 -78.920578 -65.490242 112.7639389 -79.89151001 -65.80974579 114.1930542 -80.064964294
		 -66.36475372 115.12136841 -79.30207825 -67.26091003 114.77134705 -77.56533051 -43.5267868 68.30936432 -36.026451111
		 -35.19649506 63.73695374 -5.86418438 -23.58211136 92.78464508 -37.82452011 -15.25181866 88.2122345 -7.66225576
		 -43.5267868 68.30936432 -36.026451111 -35.19649506 63.73695374 -5.86418438 -23.58211136 92.78464508 -37.82452011
		 -15.25181866 88.2122345 -7.66225576 -22.012365341 70.79871368 -41.59098816 -13.68207645 66.22631073 -11.42872047
		 -45.096534729 90.29529572 -32.25997925 -36.7662468 85.7228775 -2.097714901 -22.012365341 70.79871368 -41.59098816
		 -13.68207645 66.22631073 -11.42872047 -45.096534729 90.29529572 -32.25997925 -36.7662468 85.7228775 -2.097714901
		 -27.86565971 53.70304871 -50.070293427 -9.87140179 43.52345657 -33.4437561 -21.41691208 78.16371155 -42.073505402
		 -3.42264652 67.98412323 -25.44696808 -27.86565971 53.70304871 -50.070293427 -9.87140179 43.52345657 -33.4437561
		 -21.41691208 78.16371155 -42.073505402 -3.42264652 67.98412323 -25.44696808 -15.44237804 66.62458801 -55.60433197
		 2.55187988 56.44499969 -38.97779465 -33.8401947 65.24217224 -36.53948975 -15.8459301 55.062587738 -19.91293716
		 -15.44237804 66.62458801 -55.60433197 2.55187988 56.44499969 -38.97779465 -33.8401947 65.24217224 -36.53948975
		 -15.8459301 55.062587738 -19.91293716 -35.85252762 66.023048401 -49.056919098 -14.31525421 53.19365692 -57.74092865
		 -24.74621582 89.17736053 -55.71930695 -3.20895028 76.34796143 -64.40332794 -35.85252762 66.023048401 -49.056919098
		 -14.31525421 53.19365692 -57.74092865 -24.74621582 89.17736053 -55.71930695 -3.20895028 76.34796143 -64.40332794
		 -35.6997261 76.71363068 -64.47177124 -14.16246128 63.88423157 -73.15579224 -24.89901543 78.48677826 -40.30445099
		 -3.3617456 65.65737915 -48.98846054 -35.6997261 76.71363068 -64.47177124 -14.16246128 63.88423157 -73.15579224
		 -24.89901543 78.48677826 -40.30445099 -3.3617456 65.65737915 -48.98846054 -56.19851685 101.72873688 -74.47299957
		 -39.64374924 90.36443329 -57.13368225 -47.79531097 125.69171906 -66.79048157 -31.24055672 114.32741547 -49.45115662
		 -56.19851685 101.72873688 -74.47299957 -39.64374924 90.36443329 -57.13368225 -47.79531097 125.69171906 -66.79048157
		 -31.24055672 114.32741547 -49.45115662 -42.52082062 113.36112976 -79.90786743 -25.96606445 101.99682617 -62.56855392
		 -61.4730072 114.059326172 -61.35560989 -44.91825104 102.69502258 -44.016300201 -42.52082062 113.36112976 -79.90786743
		 -25.96606445 101.99682617 -62.56855392 -61.4730072 114.059326172 -61.35560989 -44.91825104 102.69502258 -44.016300201
		 -85.10558319 101.26927948 -78.56317139 -77.46637726 111.81630707 -55.44906235 -71.29784393 119.80656433 -91.58525085
		 -63.65862274 130.35359192 -68.47114563 -85.10558319 101.26927948 -78.56317139 -77.46637726 111.81630707 -55.44906235
		 -71.29784393 119.80656433 -91.58525085 -63.65862274 130.35359192 -68.47114563 -67.53814697 102.64823914 -84.9984436
		 -59.89891434 113.19525146 -61.88433075 -88.86529541 118.42761993 -85.14997864;
	setAttr ".vt[2822:2987]" -81.22606659 128.97462463 -62.035877228 -67.53814697 102.64823914 -84.9984436
		 -59.89891434 113.19525146 -61.88433075 -88.86529541 118.42761993 -85.14997864 -81.22606659 128.97462463 -62.035877228
		 -74.75244904 84.19591522 -99.099021912 -54.18702316 100.83230591 -97.061203003 -91.44178009 104.22442627 -94.1812439
		 -70.8763504 120.86080933 -92.14340973 -74.75244904 84.19591522 -99.099021912 -54.18702316 100.83230591 -97.061203003
		 -91.44178009 104.22442627 -94.1812439 -70.8763504 120.86080933 -92.14340973 -83.86982727 96.75718689 -109.63553619
		 -63.30438614 113.39357758 -107.59771729 -82.32443237 91.66316223 -83.64472961 -61.75899506 108.29955292 -81.60691071
		 -83.86982727 96.75718689 -109.63553619 -63.30438614 113.39357758 -107.59771729 -82.32443237 91.66316223 -83.64472961
		 -61.75899506 108.29955292 -81.60691071 -88.60912323 49.99108887 -89.53878021 -92.75679779 71.11840057 -74.037406921
		 -113.38864899 41.72452545 -84.90226746 -117.53634644 62.85184097 -69.40088654 -88.60912323 49.99108887 -89.53878021
		 -92.75679779 71.11840057 -74.037406921 -113.38864899 41.72452545 -84.90226746 -117.53634644 62.85184097 -69.40088654
		 -105.26005554 52.73458099 -97.73324585 -109.40773773 73.8618927 -82.23187256 -96.7377243 38.98104477 -76.70780182
		 -100.88542175 60.10836029 -61.20642471 -105.26005554 52.73458099 -97.73324585 -109.40773773 73.8618927 -82.23187256
		 -96.7377243 38.98104477 -76.70780182 -100.88542175 60.10836029 -61.20642471 112.54982758 29.0015678406 -21.080039978
		 111.95560455 29.20908928 -24.79793549 116.7751236 26.8405838 -20.47510719 117.45874023 25.50138092 -24.074228287
		 102.59242249 -6.93828869 -22.86297798 104.51597595 -6.95765734 -29.20029831 97.8061142 -4.63895702 -30.75771713
		 96.47192383 -5.22554922 -24.24914551 120.28455353 73.80256653 -23.86075401 120.37101746 73.33772278 -25.016939163
		 122.77632904 73.47329712 -25.16342354 122.94500732 73.95059204 -23.727314 117.49678802 38.96949005 -20.29113197
		 116.02721405 38.5959549 -24.035209656 121.055511475 35.068096161 -23.26322174 122.16873169 41.66726685 -18.9377594
		 121.93466187 49.12971497 -13.56963825 125.26046753 47.13474655 -13.15327644 122.7767868 49.56412125 -15.080327034
		 125.71777344 47.76976395 -15.12558079 127.81175995 55.19623947 -10.40249729 129.93103027 54.067325592 -9.21718979
		 129.051818848 54.67605591 -12.64992142 130.86061096 54.11298752 -11.74673843 126.5350647 64.99538422 -6.94160652
		 127.93128204 64.63430023 -5.73933125 128.10437012 65.54600525 -8.25963879 129.68412781 64.60939789 -7.47802973
		 118.69148254 66.24604797 -19.93511772 119.15579987 65.84207153 -22.06917572 122.63484192 64.1583786 -21.29490662
		 122.85452271 64.36867523 -19.07774353 113.51038361 6.92134142 -15.78845501 114.22589874 6.28494501 -21.37910652
		 106.16452789 11.48403549 -22.56514168 105.47454071 12.065093994 -16.6595192 81.93374634 -21.28628349 -23.78330994
		 83.10232544 -20.73704529 -31.13581467 88.73027039 -27.056751251 -29.81342697 87.77316284 -26.99864578 -22.43475342
		 96.97882843 -17.20780754 -23.55086136 98.2407608 -16.93803024 -30.55488968 92.31196594 -11.64209747 -31.63889122
		 92.0073471069 -12.43482685 -24.71012688 101.79540253 1.74438655 -27.34542274 110.55426788 -2.95665407 -25.94508553
		 110.81678772 -1.28956938 -18.61914635 100.78344727 1.26847172 -21.52026176 112.73368835 15.59156704 -16.94229698
		 113.95569611 14.2952528 -21.91371536 108.85176086 19.38643265 -22.63098717 108.62971497 20.35486412 -18.16323471
		 122.23764038 48.28717804 -18.57283974 125.2762146 49.72184753 -17.91443443 124.92246246 45.51469803 -21.33395004
		 120.57907104 48.069969177 -21.84947205 122.51152039 59.14605331 -18.59531021 122.36445618 59.011863708 -20.85768318
		 125.49655914 57.7224617 -20.53842735 126.43560791 57.23410034 -17.93641663 118.20246887 70.44210815 -21.49871635
		 121.23900604 69.89701843 -21.19396973 121.24087524 69.2039032 -22.84223557 118.66208649 69.99247742 -23.15062523
		 120.55047607 78.39292908 -26.72857475 120.39128113 78.14668274 -28.054546356 123.28326416 78.81074524 -28.40520668
		 123.34535217 79.041786194 -26.92054367 119.01486969 82.038391113 -28.88537598 119.039215088 81.94984436 -30.31591988
		 121.69028473 83.0082015991 -30.84022522 121.6896286 83.17421722 -29.35269356 119.16847992 86.75187683 -31.96426201
		 119.42519379 86.74357605 -32.83769226 121.12903595 87.34954071 -32.89650345 121.19771576 87.48926544 -31.85366631
		 119.5402832 73.47329712 -6.24521017 120.79037476 73.090080261 -4.25801277 120.9600296 73.95059204 -6.65098619
		 122.037887573 73.52310181 -4.9882617 119.89175415 80.6894989 -1.41452146 120.65624237 80.21219635 -0.43892577
		 120.68399048 81.002166748 -1.76943362 121.52322388 80.55806732 -0.83475095 89.14700317 -28.026565552 -25.96422386
		 98.46380615 -18.56776047 -26.83468246 105.5178833 -8.68146515 -26.37516594 113.20276642 -4.50337696 -22.66119576
		 114.86736298 5.095157623 -18.41232872 114.18740845 15.43108368 -19.4489994 117.80870056 25.72273636 -22.038555145
		 121.61445618 35.89956284 -21.56477547 125.50799561 46.38905334 -19.75161743 126.76690674 57.18291092 -19.09198761
		 123.27922821 64.24692535 -20.056747437 121.70252228 69.6438446 -21.85159111 123.22090149 73.74584961 -24.40956497
		 123.72763062 79.01688385 -27.64027405 122.17585754 83.36237335 -30.17382622 121.31925964 87.54322052 -32.48075485
		 118.85236359 86.63290405 -32.42698288 118.67849731 81.87237549 -29.55181885 120.0651474 78.14529419 -27.27295685
		 119.98594666 73.53694153 -24.39582062 117.87992096 70.39645386 -22.43460655 118.043548584 66.51028442 -21.24420929
		 122.062545776 59.21384811 -19.76813507 121.12467957 48.045066833 -20.47213936 116.25815582 38.84912872 -22.49802208
		 111.62106323 29.9008255 -23.26825142 107.69354248 21.28870773 -20.50719643 103.39089966 14.50692368 -19.71967316
		 99.74079895 2.030765295 -24.72512436 95.046707153 -3.69127798 -27.72000694 91.53050995 -10.91577435 -28.32199669
		 81.97392273 -20.20441055 -27.61540794 114.46012878 27.41887474 -19.80149841 123.48587036 47.99803543 -12.9118824
		 128.65943909 54.606884 -9.34388447 126.9511795 64.73252106 -6.037089825 119.95298004 73.19384003 -5.01235342
		 120.11632538 80.44600677 -0.84958982 121.21162415 80.82784271 -1.38590336 121.7518158 73.86343384 -5.79978991
		 129.1701355 65.14202881 -7.98960924 130.1960907 54.18630981 -12.70615196 124.58995819 48.72850418 -15.48142338
		 121.034706116 42.96496201 -19.14427757 123.11187744 48.31761551 -18.58277893;
	setAttr ".vt[2988:3153]" 125.020896912 57.61732483 -17.581604 120.96606445 65.12404633 -18.90055847
		 119.65434265 70.16403198 -20.91532135 121.82344818 73.9962616 -23.44363785 121.94303894 78.75402069 -26.44154358
		 120.30649567 82.59592438 -28.72826576 120.30155945 87.29973602 -31.64966774 120.10240173 87.45330048 -32.58034134
		 120.41104126 87.15723419 -32.98458481 120.31906128 82.37872314 -30.98862267 121.82707214 78.41091919 -28.6117897
		 121.59531403 73.32388306 -25.46864319 119.89942169 69.39482117 -23.41293907 120.77185822 64.80584717 -22.1932869
		 123.81645203 58.36024475 -21.33346748 121.98109436 46.47483444 -22.70419884 118.17429352 36.31184006 -24.86664772
		 114.20144653 26.13916206 -25.3346138 111.57846069 15.62892056 -23.39162636 110.71882629 8.13049698 -23.39321709
		 105.70201874 1.1743958 -26.98156166 101.37260437 -5.73190069 -30.27169609 95.42798615 -14.76459503 -31.99722481
		 85.73800659 -23.98267555 -31.81084251 84.65187836 -24.10441971 -21.76205635 94.30853271 -14.73277473 -22.98898697
		 99.32288361 -6.18844652 -22.77799225 105.049827576 2.33789682 -18.32986832 110.63477325 10.19602203 -14.37893581
		 110.56403351 17.31537437 -16.50882149 114.50489044 34.49672318 -21.37629128 113.80171204 35.0044593811 -23.44037628
		 113.77977753 34.39710999 -24.98066711 115.78299713 31.54854202 -25.6619854 119.19651031 30.43484688 -24.10311508
		 119.67020416 31.054641724 -22.41018486 120.43697357 32.35095596 -20.32119179 126.45126343 47.064189911 -13.86640358
		 130.9500885 53.976017 -10.38784409 129.29336548 64.46828461 -6.59248543 121.82119751 73.28514862 -4.25087881
		 121.43548584 80.2786026 -0.34687987 120.99338531 81.0049285889 -0.85242188 120.13427734 80.96342468 -1.9297998
		 119.96566772 73.78872681 -7.13544416 126.9473114 65.6124115 -8.12660122 127.84355164 55.086952209 -11.99615765
		 121.54965973 49.88093567 -14.63850784 107.14170837 -6.034881115 -39.90497208 109.032295227 0.057933349 -36.18908691
		 108.0074310303 2.53988338 -39.39557266 106.27479553 -1.23699737 -42.16265488 119.1968689 10.92649555 -39.9368248
		 121.0057601929 6.12722921 -43.63082886 118.79921722 11.68187237 -42.17798996 119.91053009 8.92322731 -44.85381699
		 126.6541214 22.4950943 -30.96245766 127.49484253 20.42957115 -33.88594437 126.61589813 23.85089874 -32.89060211
		 127.0051040649 22.80499268 -34.7397728 134.74414063 33.017791748 -30.43309021 135.84469604 31.69934082 -31.73018074
		 133.67893982 34.48426819 -32.53725433 134.49298096 33.51307297 -33.80991364 136.62309265 53.76573181 -37.071372986
		 137.88397217 54.65392685 -38.9472847 135.54299927 53.071231842 -38.052154541 136.24768066 53.38389587 -39.39151001
		 131.47470093 25.88045502 -29.69373512 130.73501587 27.4991169 -31.64927483 131.46504211 26.43660927 -33.36130905
		 132.65992737 24.20368385 -32.15127945 122.58000183 17.37209511 -36.030025482 122.55230713 18.64488983 -37.91450882
		 123.19796753 16.8685112 -39.25768661 124.0082778931 14.44466686 -38.27774048 114.86573029 6.105093 -39.91087341
		 114.37719727 7.55358887 -42.5419426 113.69200897 4.079688549 -45.51571274 114.42512512 0.32217652 -43.97789383
		 103.31982422 -1.53444397 -35.60652924 100.56852722 -7.032365322 -37.18767548 102.72924042 -11.53695297 -35.23994446
		 106.62684631 -3.1531074 -33.35582352 100.45214081 -10.32641315 -36.62402725 106.30373383 -5.35006237 -41.51750946
		 114.13833618 1.085853219 -45.32183456 120.5506897 6.91857529 -44.81375504 123.92472839 15.10181618 -39.11774445
		 127.42718506 21.35649681 -34.7762146 132.19190979 25.091875076 -33.15065002 135.43891907 32.27348328 -33.15252686
		 137.14665222 53.85842896 -39.14891052 136.14030457 53.23033142 -37.44644928 134.097473145 33.87416077 -31.38719177
		 130.9808197 26.84196854 -30.38701248 126.51978302 23.43862343 -31.55343056 122.53451538 18.20079613 -36.75942993
		 118.80565643 11.68602276 -40.70386124 114.53397369 7.55912352 -40.79606247 108.84127045 2.091638088 -37.397892
		 105.49490356 -1.31308842 -34.49384689 100.45911407 -12.095876694 -23.78579521 102.4886322 -13.11964607 -27.23121643
		 102.34339142 -11.96444607 -30.50690842 105.34359741 -8.63165951 -33.096481323 108.20806885 -4.1049366 -37.30718613
		 115.067451477 2.51913142 -41.36181641 120.2105484 7.98108149 -41.33519363 123.11323547 15.9305172 -36.95347977
		 127.16755676 20.90825272 -32.17417526 132.26623535 24.67129898 -30.50341988 135.5874176 32.089481354 -30.57258224
		 137.13748169 54.35371017 -38.065364838 136.44052124 54.34402466 -38.36281204 135.64942932 53.20542908 -38.87153625
		 133.88412476 34.30027008 -33.4098587 130.94302368 27.29021263 -32.73658371 126.86532593 23.46629333 -34.093067169
		 122.82672119 18.20079613 -38.79926682 119.24695587 10.55849266 -43.76966858 114.029190063 6.098175049 -44.36676407
		 107.05531311 1.066484928 -41.13472748 101.63406372 -3.72586489 -36.68891144 95.14563751 -7.88458443 -31.7798214
		 93.67465973 -7.35194683 -28.38002968 94.65827942 -8.91942215 -24.86566925 97.37214661 -10.66259766 -23.38121033
		 137.44354248 43.28039169 -32.37806702 136.88140869 43.42980576 -33.1256752 136.50901794 43.49206161 -34.081424713
		 136.64831543 43.41458893 -34.77113724 137.11375427 43.23058701 -34.97945786 137.99707031 42.97602463 -34.5008049
		 138.51826477 42.9691124 -33.59502792 138.25497437 43.13236237 -32.59587097 116.056777954 84.15411377 -39.13024139
		 111.42060852 99.45489502 -44.013504028 124.0097198486 90.75688171 -25.99218559 119.37356567 106.057662964 -30.87545013
		 116.056777954 84.15411377 -39.13024139 111.42060852 99.45489502 -44.013504028 124.0097198486 90.75688171 -25.99218559
		 119.37356567 106.057662964 -30.87545013 113.056297302 86.79527283 -28.0060062408
		 108.4201355 102.096061707 -32.88927078 127.010177612 88.11572266 -37.11642075 122.37402344 103.41650391 -41.99967957
		 113.056297302 86.79527283 -28.0060062408 108.4201355 102.096061707 -32.88927078 127.010177612 88.11572266 -37.11642075
		 122.37402344 103.41650391 -41.99967957 115.016921997 64.90938568 -24.69432068 120.11502838 78.35072327 -33.22625732
		 130.19229126 63.51535034 -17.8227005 135.29040527 76.95668793 -26.35463905 115.016921997 64.90938568 -24.69432068
		 120.11502838 78.35072327 -33.22625732 130.19229126 63.51535034 -17.8227005 135.29040527 76.95668793 -26.35463905
		 120.19774628 69.13276672 -14.94500446 125.29585266 82.57411194 -23.47694397 125.011444092 59.29196167 -27.57201576
		 130.10955811 72.73330688 -36.10394287 120.19774628 69.13276672 -14.94500446 125.29585266 82.57411194 -23.47694397;
	setAttr ".vt[3154:3319]" 125.011444092 59.29196167 -27.57201576 130.10955811 72.73330688 -36.10394287
		 114.36920929 83.68164825 -5.22371578 114.27375031 97.89984131 3.5676415 127.50659943 78.3090744 3.60795903
		 127.41113281 92.52727509 12.39931107 114.36920929 83.68164825 -5.22371578 114.27375031 97.89984131 3.5676415
		 127.50659943 78.3090744 3.60795903 127.41113281 92.52727509 12.39931107 115.76939392 77.51568604 4.76364756
		 115.67392731 91.73388672 13.55500984 126.10642242 84.47503662 -6.37940931 126.010955811 98.69324493 2.41195321
		 115.76939392 77.51568604 4.76364756 115.67392731 91.73388672 13.55500984 126.10642242 84.47503662 -6.37940931
		 126.010955811 98.69324493 2.41195321 129.95565796 52.063774109 -39.71295166 126.0520401 66.2549057 -47.63935471
		 145.74134827 57.31766129 -38.080764771 141.83769226 71.50878143 -46.0071716309 129.95565796 52.063774109 -39.71295166
		 126.0520401 66.2549057 -47.63935471 145.74134827 57.31766129 -38.080764771 141.83769226 71.50878143 -46.0071716309
		 135.91014099 58.2425766 -31.58313179 132.0065155029 72.43370819 -39.50953674 139.78686523 51.13885117 -46.21058655
		 135.88323975 65.32998657 -54.13698196 135.91014099 58.2425766 -31.58313179 132.0065155029 72.43370819 -39.50953674
		 139.78686523 51.13885117 -46.21058655 135.88323975 65.32998657 -54.13698196 131.19624329 45.33996201 -36.89958954
		 132.58624268 60.21022034 -29.38975334 145.74731445 40.58706665 -30.1816349 147.13731384 55.45732117 -22.6717968
		 131.19624329 45.33996201 -36.89958954 132.58624268 60.21022034 -29.38975334 145.74731445 40.58706665 -30.1816349
		 147.13731384 55.45732117 -22.6717968 134.41627502 39.97437668 -26.87117195 135.80627441 54.84462738 -19.36133194
		 142.52729797 45.95265198 -40.21004868 143.91729736 60.82289886 -32.70020676 134.41627502 39.97437668 -26.87117195
		 135.80627441 54.84462738 -19.36133194 142.52729797 45.95265198 -40.21004868 143.91729736 60.82289886 -32.70020676
		 106.18836975 9.29219246 -19.093009949 107.57837677 24.16245079 -11.58317661 120.73943329 4.5392971 -12.37505817
		 122.12943268 19.40955162 -4.86521959 106.18836975 9.29219246 -19.093009949 107.57837677 24.16245079 -11.58317661
		 120.73943329 4.5392971 -12.37505817 122.12943268 19.40955162 -4.86521959 109.4083786 3.92660642 -9.064594269
		 110.79840088 18.79685974 -1.55475092 117.51941681 9.90488243 -22.40346718 118.90943146 24.77513123 -14.89363003
		 109.4083786 3.92660642 -9.064594269 110.79840088 18.79685974 -1.55475092 117.51941681 9.90488243 -22.40346718
		 118.90943146 24.77513123 -14.89363003 107.20611572 9.50290298 28.51173401 106.21644592 9.58452797 30.42619133
		 109.6546936 8.46114731 28.86943817 109.42903137 7.73067379 30.93047142 102.97000885 -10.95105267 28.039949417
		 102.83527374 -10.90678024 31.89129448 99.0029373169 -9.87678528 31.19767761 99.50969696 -10.23510456 27.33470154
		 109.26165771 35.29775238 28.72822571 109.20103455 35.077091217 29.88567352 111.073348999 35.66783142 30.796978
		 111.43525696 35.94936752 29.62372017 109.77427673 15.26299191 28.16654587 108.3571167 14.98560524 29.87508392
		 111.29645538 13.21268463 30.35704994 112.54767609 16.95359612 27.60768127 113.56603241 20.93523026 22.06023407
		 115.35819244 19.80562592 22.49351311 113.69931793 21.18079567 22.85995865 115.27849579 20.24141884 23.42571831
		 117.21342468 22.96201706 20.78762627 118.47267914 22.19349861 20.96512604 117.11210632 22.9613266 22.16449738
		 118.19948578 22.53729248 22.31924248 118.7503891 26.66557312 22.078672409 119.58472443 25.97452927 21.99261284
		 118.75814819 27.0072917938 23.55706215 119.53850555 26.29826164 23.4109726 107.70439148 31.02973938 27.73873711
		 107.56784821 30.80769348 28.92098236 109.71993256 30.01496315 29.35801315 110.27088165 30.14155006 28.22065926
		 109.33847046 -2.77265191 26.55704117 108.75743103 -3.1164453 29.659235 104.081565857 -0.53004271 28.82254601
		 104.73387909 -0.21391907 25.55859184 91.74493408 -19.93947601 24.054311752 91.048370361 -19.61089897 28.16229248
		 94.50132751 -22.91740036 28.50679207 95.29056549 -22.89803314 24.41889572 100.46347046 -16.90206146 26.74067879
		 99.8883667 -16.72428322 30.68238258 96.35636902 -14.00022602081 30.16583443 97.44495392 -14.43325329 26.43827629
		 101.28848267 -6.14901733 30.73043442 106.34733582 -8.43036461 31.58901787 107.70590973 -7.46885061 27.74440956
		 101.80740356 -6.43677998 27.42282867 108.38357544 2.034915686 27.017724991 108.20284271 1.34248781 29.89925957
		 105.17996979 3.98699594 29.33856964 105.81216431 4.53139305 26.91981506 112.14216614 20.65092468 28.36884117
		 113.79538727 21.57162857 28.61138344 113.20435333 19.1989727 30.25146675 110.7040329 20.45654869 29.78227234
		 111.12447357 26.96924591 28.35194778 110.53451538 26.92359161 29.49868965 112.60562134 26.21801949 29.96717834
		 113.74619293 25.9302597 28.79711723 107.25037384 33.14506912 27.82918167 109.20664978 32.9790535 28.016969681
		 108.89118958 32.59237289 29.11480904 107.2686615 32.86353302 28.96837616 110.65324402 37.1578331 30.1461277
		 110.57546997 37.099723816 31.30004692 112.10002899 38.29642868 32.45443344 112.48570251 38.47489929 31.35407257
		 111.16860199 39.21090698 31.54432678 110.99993896 39.30360031 32.49215698 111.35005188 39.9600563 33.45097733
		 112.072967529 40.070041656 32.61781693 110.11865997 42.26285172 32.44394302 109.6745224 42.32510757 32.69197083
		 109.76036835 43.16556549 33.27401352 110.31411743 43.27416992 33.10862732 118.65401459 31.84737396 25.26803207
		 119.66146851 31.024206161 25.1335125 118.85926056 31.94836426 25.99592018 119.70046234 31.21304893 25.96977806
		 121.19374847 35.84353256 26.63767052 121.78320313 35.3074379 26.69916725 121.28526306 35.96804428 27.12227058
		 121.86141968 35.45892715 27.22883034 95.43595886 -23.43066978 26.54448509 100.72254944 -17.61454773 28.76103783
		 103.98103333 -11.82056427 30.38372231 108.38540649 -9.18228149 30.32946777 109.66534424 -3.74661684 28.20419693
		 108.71659851 1.9934119 28.62527847 109.94849396 7.87317133 29.96831512 111.85738373 13.70312595 29.55797768
		 113.7485733 19.71500778 29.5482254 113.71347046 25.9143486 29.46875191 110.32463074 30.084827423 28.82087898
		 109.33020782 32.89258575 28.5249176 111.53512573 35.94106674 30.25543404 112.60764313 38.66028595 32.070510864
		 111.76812744 40.3508873 33.24861908 109.98513031 43.32604599 33.23787689;
	setAttr ".vt[3320:3485]" 109.84737396 42.094062805 32.40997696 110.92015839 39.019294739 31.85129166
		 110.31474304 36.9655304 30.56721115 108.81822205 35.11928558 29.18766785 106.90594482 33.090423584 28.38271523
		 107.1107254 31.13557625 28.2422905 110.58013916 27.019052505 28.86968231 111.23915863 20.46899986 29.13612747
		 108.73867798 15.14055443 29.1048584 106.29792786 9.96290684 29.49022675 104.86785126 5.010074615 27.99248505
		 102.99906921 1.05887568 26.79548264 100.65597534 -6.060475349 28.9574852 98.062034607 -9.44514179 29.0047950745
		 96.49908447 -13.6149292 28.25980377 91.050430298 -19.3466568 26.088502884 108.50254059 8.69702911 28.18322563
		 114.49169159 20.27808189 22.0062522888 117.88884735 22.50270462 20.61434555 119.20175171 26.23185539 21.81884193
		 119.23142242 31.39981842 25.090766907 121.49069214 35.57721329 26.57139206 121.59622955 35.72593689 27.25753593
		 119.38452911 31.62186432 26.13376617 119.19842529 26.662117 23.71604729 117.63950348 22.71437454 22.53058052
		 114.58011627 20.73186111 23.33631516 111.87928009 17.63288116 27.43333244 112.59951782 20.70280838 28.53770828
		 112.95448303 26.1225605 28.33396149 109.19020844 30.4977951 27.74368095 108.24337769 33.041309357 27.65752029
		 110.42301941 35.61111069 28.81388474 111.6519165 37.80598831 30.42855453 111.81955719 40.13575745 31.9579525
		 110.35014343 42.89578247 32.73302078 109.81671906 42.87987137 32.74871826 109.65769196 42.837677 33.027526855
		 111.08391571 39.52218628 33.23137283 111.28703308 37.645504 32.21235275 110.13638306 35.32196426 30.68615913
		 107.9568634 32.59167862 29.32524109 108.47936249 30.3034153 29.41193199 111.37690735 26.56803894 30.045534134
		 111.36728668 19.61677933 30.45560265 109.44049835 13.79166794 30.69252014 107.39105225 7.9554882 31.27247047
		 106.63362122 1.9913367 30.24887848 106.47537231 -2.22825551 30.094919205 103.43133545 -6.31641769 31.26762772
		 100.96364594 -10.34716511 31.78927231 98.061706543 -15.62442303 30.93410683 92.44865417 -21.32294846 29.012931824
		 93.64750671 -21.40180588 23.48366165 99.053916931 -15.62096405 25.95022202 101.297966 -10.65844727 27.13269234
		 104.56859589 -5.66549397 26.53716087 107.94005585 -1.050920129 25.27106476 107.24340057 2.91411304 26.40399361
		 108.16304016 12.6461525 28.2712307 107.40512848 12.89586926 29.25039482 107.13320923 12.55138397 30.1176815
		 108.14893341 11.036481857 30.98227692 110.3057251 10.55157471 30.64352036 110.84344482 10.92026997 29.77825356
		 111.59018707 11.68048859 28.70789719 115.83528137 19.79040527 23.063861847 118.59356689 22.26543999 21.78006363
		 119.72860718 26.062379837 22.83203888 119.92491913 30.957798 25.53860855 121.96013641 35.27146912 27.023809433
		 121.59832001 35.88503647 26.95981598 121.065696716 36.045520782 26.91202354 118.40540314 32.10884857 25.67401123
		 118.37256622 27.11520195 22.95977592 116.75426483 23.13356972 21.48894501 113.14865112 21.37309837 22.56993103
		 102.54819489 -10.32226276 37.11236954 103.97464752 -6.83591175 35.41400909 102.7795105 -5.50086069 36.89779663
		 101.51052856 -7.68467236 38.11501312 111.93765259 -1.14707148 37.47114182 111.78735352 -3.20360422 39.49107361
		 110.96159363 -0.40691376 38.42951965 110.7612381 -1.60154235 39.85937119 118.31864166 1.5928961 34.37130737
		 118.4154892 0.81400084 36.11068726 118.27245331 2.24589539 35.34368515 117.90103149 1.86059809 36.32761383
		 124.077461243 4.75759029 34.22517014 124.53451538 4.1025157 35.69030762 123.086387634 5.30129528 34.97822189
		 123.35375214 4.88417864 35.97227478 118.78438568 12.44416523 36.18518829 119.089401245 12.98371983 37.39447403
		 118.078460693 12.0062961578 36.52303696 118.19789886 12.20689964 37.35631561 121.67765808 2.1462853 33.88609695
		 121.065223694 2.76884818 34.74168015 121.1255188 2.25212097 35.87321472 121.78209686 1.37430787 35.43006897
		 115.87766266 0.94197267 36.90187073 115.43967438 1.72294247 37.90000534 115.3359375 0.98762697 39.27068329
		 116.16451263 -0.44219208 38.73207092 107.43936157 -3.27831149 37.12572098 106.5308075 -2.44476891 38.32781219
		 105.13246155 -4.41690969 40.12396622 105.8682785 -6.48035955 39.66273499 101.08618927 -7.94476557 34.2069664
		 99.58139801 -11.12606239 34.52194214 101.22372437 -13.55059814 33.965271 103.25785065 -8.71328449 33.75212479
		 99.7428894 -12.96607876 34.23336792 101.79485321 -9.97708702 37.81442642 105.43054962 -6.076385498 40.28215027
		 111.10845947 -2.66958332 39.93889999 115.75074005 0.068309329 39.491642 118.085830688 1.18408024 36.46816254
		 121.4482193 1.71602535 35.89219666 124.057273865 4.33286428 36.048660278 118.69153595 12.51057243 37.38312912
		 118.49489594 12.11974144 36.30693817 123.54541779 5.083398342 34.45108032 121.33087158 2.54818416 34.12334824
		 118.30384827 2.021080971 34.65368271 115.68335724 1.47391784 37.16984558 111.33662415 -0.56117094 37.70027161
		 107.11224365 -2.49388242 37.43671036 103.59259796 -5.71253157 35.9793396 102.42453766 -7.73309374 34.003452301
		 122.73197174 9.57415199 35.46683121 122.32714081 9.49114227 35.67527771 121.96958923 9.42335224 36.14447403
		 122.1448822 9.49875259 37.032470703 122.62319183 9.59697914 37.00085067749 122.84480286 9.73255825 36.68155289
		 101.71673584 -13.92655754 27.3903141 100.17593384 -13.13970566 26.54145432 98.47732544 -12.33417892 26.88648987
		 97.28055573 -11.53003502 28.63229942 97.67966461 -11.93850613 30.68175697 100.33378601 -9.53541374 34.36445236
		 102.14501953 -6.59276628 37.50640488 105.83161926 -3.4308393 39.2258873 110.86141968 -1.0042281151 39.14444733
		 115.38780975 1.35528469 38.58534622 118.086738586 2.053246737 35.83564377 121.095359802 2.5104847 35.30744553
		 123.22006989 5.092736721 35.47525024 122.057235718 9.46105194 36.58847046 118.13816071 12.1065979 36.93967438
		 118.59321594 12.31515598 36.84503555 118.93689728 12.71394253 36.78982925 122.78839111 9.65335464 36.074192047
		 124.30597687 4.43005323 34.95774078 121.72988129 1.76029658 34.65808487 118.36707306 1.20344853 35.24100113
		 116.021072388 0.24989028 37.81696701 111.86250305 -2.17533779 38.48110199 106.65383148 -4.8793354 38.39422989
		 103.26142883 -8.57908726 36.26318741 102.24079895 -11.13194084 33.8586998 101.36181641 -13.81553268 31.28683662
		 102.35177612 -14.717556 29.57237816 100.3861618 -4.054142952 40.42769623;
	setAttr ".vt[3486:3612]" 101.27220917 4.67117929 44.13078308 109.86273193 -4.79226542 39.89942932
		 110.7487793 3.93305898 43.60251999 100.3861618 -4.054142952 40.42769623 101.27220917 4.67117929 44.13078308
		 109.86273193 -4.79226542 39.89942932 110.7487793 3.93305898 43.60251999 105.22297668 -6.29089594 44.54069901
		 106.10902405 2.43442869 48.24378586 105.025939941 -2.55551505 35.78643036 105.91196442 6.1698122 39.48951721
		 105.22297668 -6.29089594 44.54069901 106.10902405 2.43442869 48.24378586 105.025939941 -2.55551505 35.78643036
		 105.91196442 6.1698122 39.48951721 120.20730591 5.27563953 37.31830978 123.69729614 13.43330288 40.76820374
		 128.86576843 2.91443348 34.14258575 132.35575867 11.072099686 37.59247971 120.20730591 5.27563953 37.31830978
		 123.69729614 13.43330288 40.76820374 128.86576843 2.91443348 34.14258575 132.35575867 11.072099686 37.59247971
		 125.46936798 1.94408202 39.87297821 128.95933533 10.10174274 43.32287216 123.60372925 6.24599123 31.58792305
		 127.093711853 14.40365219 35.037807465 125.46936798 1.94408202 39.87297821 128.95933533 10.10174274 43.32287216
		 123.60372925 6.24599123 31.58792305 127.093711853 14.40365219 35.037807465 115.20417023 9.39609337 37.83670807
		 108.68904114 16.13613319 39.4962616 121.66727448 16.11662674 35.91521835 115.15213013 22.85666466 37.5747757
		 115.20417023 9.39609337 37.83670807 108.68904114 16.13613319 39.4962616 121.66727448 16.11662674 35.91521835
		 115.15213013 22.85666466 37.5747757 119.70169067 12.85052776 41.46353149 113.18656158 19.59056664 43.12308121
		 117.1697464 12.66219234 32.28839874 110.65461731 19.40223694 33.9479599 119.70169067 12.85052776 41.46353149
		 113.18656158 19.59056664 43.12308121 117.1697464 12.66219234 32.28839874 110.65461731 19.40223694 33.9479599
		 116.84503937 36.12647629 27.27434731 117.41412354 45.47768021 28.96557045 126.33708954 35.6480484 26.72563171
		 126.90617371 44.99925232 28.41686058 116.84503937 36.12647629 27.27434731 117.41412354 45.47768021 28.96557045
		 126.33708954 35.6480484 26.72563171 126.90617371 44.99925232 28.41686058 121.8180542 35.02772522 31.67620659
		 122.38713837 44.37892914 33.36742783 121.36405945 36.74679947 22.32377434 121.9331665 46.098003387 24.015008926
		 121.8180542 35.02772522 31.67620659 122.38713837 44.37892914 33.36742783 121.36405945 36.74679947 22.32377434
		 121.9331665 46.098003387 24.015008926 115.74993896 28.63000488 24.073825836 118.86976624 36.76440048 20.23619843
		 122.69181824 23.86948204 19.62668419 125.81163788 32.0038833618 15.78905773 115.74993896 28.63000488 24.073825836
		 118.86976624 36.76440048 20.23619843 122.69181824 23.86948204 19.62668419 125.81163788 32.0038833618 15.78905773
		 122.080329895 26.92023468 25.59607697 125.20015717 35.05463028 21.75845146 116.36140442 25.57925224 18.10443687
		 119.48124695 33.71365356 14.26679897 122.080329895 26.92023468 25.59607697 125.20015717 35.05463028 21.75845146
		 116.36140442 25.57925224 18.10443687 119.48124695 33.71365356 14.26679897 104.66370392 29.67839432 31.38089371
		 99.056533813 36.66971588 34.59184647 109.89836884 36.057132721 26.63333702 104.29119873 43.04845047 29.84428978
		 104.66370392 29.67839432 31.38089371 99.056533813 36.66971588 34.59184647 109.89836884 36.057132721 26.63333702
		 104.29119873 43.04845047 29.84428978 110.10003662 33.38311005 32.80776215 104.49287415 40.3744278 36.018722534
		 104.46204376 32.35241699 25.20647049 98.85485077 39.34374619 28.41742134 110.10003662 33.38311005 32.80776215
		 104.49287415 40.3744278 36.018722534 104.46204376 32.35241699 25.20647049 98.85485077 39.34374619 28.41742134
		 105.36216736 40.82365417 33.52075195 101.28522491 49.42366028 33.30305481 113.93410492 44.8643074 32.61280823
		 109.85713959 53.46432114 32.3951149 105.36216736 40.82365417 33.52075195 101.28522491 49.42366028 33.30305481
		 113.93410492 44.8643074 32.61280823 109.85713959 53.46432114 32.3951149 110.012039185 43.13640213 37.80379486
		 105.93508911 51.73641205 37.58610916 109.28421783 42.55155182 28.32976151 105.20728302 51.15157318 28.11207008
		 110.012039185 43.13640213 37.80379486 105.93508911 51.73641205 37.58610916 109.28421783 42.55155182 28.32976151
		 105.20728302 51.15157318 28.11207008 109.18586731 41.76226425 32.38147354 116.015602112 48.30543137 33.46358871
		 115.78980255 35.19549179 30.40794182 122.61952209 41.73865891 31.4900589 109.18586731 41.76226425 32.38147354
		 116.015602112 48.30543137 33.46358871 115.78980255 35.19549179 30.40794182 122.61952209 41.73865891 31.4900589
		 112.79283905 37.39562988 36.019729614 119.62255859 43.93879318 37.10185242 112.18283081 39.56212234 26.76968002
		 119.012580872 46.10528946 27.85180664 112.79283905 37.39562988 36.019729614 119.62255859 43.93879318 37.10185242
		 112.18283081 39.56212234 26.76968002 119.012580872 46.10528946 27.85180664;
	setAttr -s 6549 ".ed";
	setAttr ".ed[0:165]"  2 251 0 4 255 0 0 111 0 1 306 0 2 246 0 3 243 0 4 149 0
		 5 152 0 6 9 0 7 4 0 8 5 0 6 227 0 7 254 0 9 221 0 10 7 0 11 8 0 9 228 0 10 253 0
		 12 45 0 13 43 0 14 42 0 15 41 0 16 40 0 12 308 0 13 245 0 14 15 0 15 16 0 16 150 0
		 17 7 0 18 10 0 19 2 0 20 13 0 21 3 0 17 18 0 18 247 0 19 250 0 20 44 0 22 238 0 23 237 0
		 24 222 0 25 304 0 26 302 0 22 23 0 23 292 0 24 300 0 25 46 0 27 58 0 27 47 0 28 56 0
		 29 49 0 31 78 0 32 311 0 28 51 0 29 73 0 30 163 0 31 232 0 32 33 0 33 258 0 34 39 0
		 36 279 0 37 38 0 38 70 0 39 147 0 40 41 0 41 42 0 42 244 0 43 44 0 44 307 0 45 303 0
		 46 110 0 38 54 0 49 71 0 48 280 0 49 74 0 37 53 0 55 48 0 51 36 0 52 53 0 53 54 0
		 54 69 0 55 51 0 48 36 0 50 30 0 56 55 0 57 47 0 58 122 0 57 58 0 60 57 0 59 61 0
		 61 288 0 62 296 0 63 64 0 64 60 0 60 65 0 65 66 0 66 67 0 67 68 0 68 59 0 64 99 0
		 47 65 0 69 55 0 70 48 0 69 70 0 70 281 0 72 50 0 71 75 0 74 195 0 75 196 0 73 74 0
		 74 75 0 76 87 0 72 241 0 76 230 0 78 76 0 50 242 0 78 231 0 88 6 0 87 89 0 89 88 0
		 99 57 0 100 0 0 99 100 0 79 80 0 80 81 0 81 82 0 82 79 0 79 92 0 92 94 0 94 80 0
		 83 84 0 84 297 0 86 85 0 85 298 0 83 290 0 95 96 0 96 289 0 86 99 0 100 85 0 88 87 0
		 87 240 0 91 90 0 90 239 0 91 104 0 93 105 0 93 92 0 92 98 0 98 97 0 97 93 0 95 97 0
		 98 96 0 47 82 0 90 22 0 97 106 0 95 107 0 83 108 0 85 109 0 81 283 0 80 282 0 86 63 0
		 79 67 0 68 92 0 96 61 0 62 84 0 98 59 0 82 66 0 80 71 0;
	setAttr ".ed[166:331]" 91 72 0 75 94 0 101 30 0 102 50 0 103 72 0 104 197 0
		 105 90 0 106 22 0 107 23 0 108 24 0 109 25 0 110 100 0 101 102 0 102 103 0 103 104 0
		 104 105 0 105 106 0 106 107 0 107 291 0 108 299 0 109 110 0 111 26 0 39 35 0 40 5 0
		 41 8 0 42 11 0 43 3 0 44 21 0 45 1 0 46 26 0 110 111 0 64 123 0 60 132 0 112 113 0
		 63 124 0 114 112 0 62 125 0 115 294 0 61 126 0 116 286 0 59 127 0 117 116 0 68 128 0
		 118 117 0 67 129 0 119 118 0 66 130 0 120 119 0 65 131 0 121 120 0 113 121 0 122 0 0
		 99 122 0 123 112 0 124 114 0 125 115 0 126 116 0 127 117 0 128 118 0 129 119 0 130 120 0
		 131 121 0 132 113 0 123 124 0 124 295 0 125 287 0 126 127 0 127 128 0 128 129 0 129 130 0
		 130 131 0 131 132 0 132 123 0 52 134 0 133 56 0 69 133 0 134 133 0 54 134 0 81 135 0
		 82 136 0 135 136 0 37 137 0 135 284 0 53 138 0 137 138 0 52 139 0 139 138 0 27 140 0
		 139 145 0 47 141 0 140 141 0 141 136 0 142 143 0 142 136 0 143 140 0 143 141 0 144 142 0
		 144 135 0 145 285 0 137 145 0 146 33 0 147 151 0 148 35 0 146 257 0 147 148 0 149 146 0
		 150 314 0 151 40 0 152 148 0 149 256 0 150 151 0 151 152 0 77 149 0 146 311 0 28 159 0
		 51 160 0 153 154 0 29 162 0 73 158 0 36 161 0 156 276 0 154 156 0 157 155 0 157 101 0
		 158 198 0 159 202 0 160 201 0 161 200 0 162 199 0 159 160 0 160 161 0 161 278 0 162 158 0
		 163 31 0 163 262 0 165 174 0 166 173 0 164 165 0 165 166 0 166 167 0 167 168 0 168 235 0
		 31 261 0 169 35 0 32 259 0 170 169 0 171 168 0 172 167 0 173 184 0 174 183 0 175 164 0
		 39 170 0 170 234 0 171 172 0 172 173 0 173 174 0 174 175 0 178 172 0 179 171 0 180 170 0
		 176 177 0 178 179 0 179 233 0 180 34 0 78 30 0 177 101 0;
	setAttr ".ed[332:497]" 176 157 0 181 265 0 181 176 0 182 175 0 183 264 0 184 263 0
		 182 183 0 183 184 0 184 178 0 177 163 0 156 185 0 182 186 0 185 186 0 175 187 0 186 187 0
		 154 188 0 187 188 0 188 185 0 164 189 0 187 189 0 153 190 0 190 189 0 190 188 0 157 191 0
		 155 192 0 191 192 0 176 193 0 193 191 0 181 194 0 194 193 0 192 194 0 194 266 0 185 267 0
		 195 102 0 196 103 0 197 94 0 158 195 0 195 196 0 196 197 0 197 93 0 198 157 0 199 155 0
		 200 156 0 201 154 0 202 153 0 198 199 0 199 277 0 200 201 0 201 202 0 198 102 0 156 211 0
		 155 212 0 203 272 0 192 213 0 204 205 0 185 214 0 206 271 0 203 206 0 207 215 0 208 218 0
		 209 217 0 210 216 0 207 274 0 208 209 0 209 269 0 210 207 0 211 207 0 212 208 0 213 209 0
		 214 210 0 211 275 0 212 213 0 213 268 0 214 211 0 215 203 0 216 206 0 217 205 0 218 204 0
		 215 216 0 216 270 0 217 218 0 218 273 0 219 12 0 220 19 0 222 293 0 221 229 0 220 249 0
		 219 305 0 223 301 0 25 223 0 224 236 0 23 224 0 225 248 0 18 225 0 226 309 0 20 226 0
		 227 17 0 228 18 0 229 225 0 227 228 0 228 229 0 227 89 0 230 77 0 231 311 0 232 32 0
		 233 180 0 234 171 0 235 169 0 230 231 0 231 232 0 232 260 0 233 234 0 234 235 0 230 89 0
		 236 221 0 237 9 0 238 6 0 239 88 0 240 91 0 241 76 0 242 78 0 236 237 0 237 238 0
		 238 239 0 239 240 0 240 241 0 241 242 0 243 11 0 244 43 0 245 14 0 246 10 0 247 19 0
		 248 220 0 243 244 0 244 245 0 245 252 0 246 247 0 247 248 0 249 226 0 250 20 0 251 13 0
		 252 246 0 253 14 0 254 15 0 255 16 0 256 150 0 257 315 0 258 34 0 259 180 0 260 233 0
		 261 179 0 262 178 0 263 177 0 264 176 0 265 182 0 266 186 0 267 192 0 268 214 0 269 210 0
		 270 217 0 271 205 0 272 204 0 273 215 0 274 208 0 275 212 0 276 155 0;
	setAttr ".ed[498:663]" 277 200 0 278 162 0 279 29 0 280 49 0 281 71 0 282 38 0
		 283 37 0 284 137 0 285 144 0 249 250 0 250 251 0 251 252 0 252 253 0 253 254 0 254 255 0
		 255 256 0 256 257 0 257 258 0 258 259 0 259 260 0 260 261 0 261 262 0 262 263 0 263 264 0
		 264 265 0 265 266 0 266 267 0 267 268 0 268 269 0 269 270 0 270 271 0 271 272 0 272 273 0
		 273 274 0 274 275 0 275 276 0 276 277 0 277 278 0 278 279 0 279 280 0 280 281 0 281 282 0
		 282 283 0 283 284 0 284 285 0 286 115 0 287 126 0 288 62 0 289 84 0 290 95 0 291 108 0
		 292 24 0 293 224 0 286 287 0 287 288 0 288 289 0 289 290 0 290 291 0 291 292 0 292 293 0
		 294 114 0 295 125 0 296 63 0 297 86 0 298 83 0 299 109 0 300 25 0 301 222 0 294 295 0
		 295 296 0 296 297 0 297 298 0 298 299 0 299 300 0 300 301 0 302 1 0 303 46 0 304 12 0
		 305 223 0 302 303 0 303 304 0 304 305 0 306 21 0 307 45 0 308 20 0 309 219 0 306 307 0
		 307 308 0 308 309 0 117 310 0 113 310 0 116 310 0 286 310 0 115 310 0 294 310 0 114 310 0
		 112 310 0 121 310 0 120 310 0 119 310 0 118 310 0 311 77 0 312 34 0 313 147 0 315 318 0
		 312 319 0 313 316 0 314 317 0 316 314 0 316 151 0 317 315 0 317 256 0 318 312 0 318 258 0
		 319 313 0 319 39 0 318 425 0 312 426 0 320 321 0 319 427 0 321 322 0 313 428 0 322 323 0
		 316 429 0 323 324 0 314 430 0 324 325 0 317 431 0 325 326 0 315 432 0 326 327 0 327 320 0
		 320 409 0 321 410 0 328 329 0 322 411 0 329 330 0 323 412 0 330 331 0 324 413 0 331 332 0
		 325 414 0 332 333 0 326 415 0 333 334 0 327 416 0 334 335 0 335 328 0 328 393 0 329 394 0
		 336 337 0 330 395 0 337 338 0 331 396 0 338 339 0 332 397 0 339 340 0 333 398 0 340 341 0
		 334 399 0 341 342 0 335 400 0 342 343 0 343 336 0 336 344 0 337 344 0;
	setAttr ".ed[664:829]" 338 344 0 339 344 0 340 344 0 341 344 0 342 344 0 343 344 0
		 345 417 0 346 424 0 347 423 0 348 422 0 349 421 0 350 420 0 351 419 0 352 418 0 345 346 0
		 346 347 0 347 348 0 348 349 0 349 350 0 350 351 0 351 352 0 352 345 0 353 401 0 354 408 0
		 355 407 0 356 406 0 357 405 0 358 404 0 359 403 0 360 402 0 353 354 0 354 355 0 355 356 0
		 356 357 0 357 358 0 358 359 0 359 360 0 360 353 0 361 385 0 362 386 0 363 387 0 364 388 0
		 365 389 0 366 390 0 367 391 0 368 392 0 361 362 0 362 363 0 363 364 0 364 365 0 365 366 0
		 366 367 0 367 368 0 368 361 0 369 377 0 370 378 0 371 379 0 372 380 0 373 381 0 374 382 0
		 375 383 0 376 384 0 369 370 0 370 371 0 371 372 0 372 373 0 373 374 0 374 375 0 375 376 0
		 376 369 0 377 336 0 378 343 0 379 342 0 380 341 0 381 340 0 382 339 0 383 338 0 384 337 0
		 377 378 0 378 379 0 379 380 0 380 381 0 381 382 0 382 383 0 383 384 0 384 377 0 385 369 0
		 386 376 0 387 375 0 388 374 0 389 373 0 390 372 0 391 371 0 392 370 0 385 386 0 386 387 0
		 387 388 0 388 389 0 389 390 0 390 391 0 391 392 0 392 385 0 393 361 0 394 362 0 395 363 0
		 396 364 0 397 365 0 398 366 0 399 367 0 400 368 0 393 394 0 394 395 0 395 396 0 396 397 0
		 397 398 0 398 399 0 399 400 0 400 393 0 401 328 0 402 335 0 403 334 0 404 333 0 405 332 0
		 406 331 0 407 330 0 408 329 0 401 402 0 402 403 0 403 404 0 404 405 0 405 406 0 406 407 0
		 407 408 0 408 401 0 409 353 0 410 354 0 411 355 0 412 356 0 413 357 0 414 358 0 415 359 0
		 416 360 0 409 410 0 410 411 0 411 412 0 412 413 0 413 414 0 414 415 0 415 416 0 416 409 0
		 417 320 0 418 327 0 419 326 0 420 325 0 421 324 0 422 323 0 423 322 0 424 321 0 417 418 0
		 418 419 0 419 420 0 420 421 0 421 422 0 422 423 0 423 424 0 424 417 0;
	setAttr ".ed[830:995]" 425 345 0 426 346 0 427 347 0 428 348 0 429 349 0 430 350 0
		 431 351 0 432 352 0 425 426 0 426 427 0 427 428 0 428 429 0 429 430 0 430 431 0 431 432 0
		 432 425 0 89 433 0 433 4 0 17 433 0 433 77 0 222 483 0 293 484 0 434 435 0 221 487 0
		 229 488 0 436 437 0 220 491 0 249 492 0 438 439 0 219 495 0 305 496 0 440 441 0 223 497 0
		 301 498 0 442 443 0 224 485 0 236 486 0 444 445 0 225 489 0 248 490 0 446 447 0 226 493 0
		 309 494 0 448 449 0 437 446 0 445 436 0 447 438 0 439 448 0 435 444 0 443 434 0 441 442 0
		 449 440 0 434 499 0 435 500 0 450 451 0 436 503 0 437 504 0 452 453 0 438 507 0 439 508 0
		 454 455 0 440 511 0 441 512 0 456 457 0 442 513 0 443 514 0 458 459 0 444 501 0 445 502 0
		 460 461 0 446 505 0 447 506 0 462 463 0 448 509 0 449 510 0 464 465 0 453 462 0 461 452 0
		 463 454 0 455 464 0 451 460 0 459 450 0 457 458 0 465 456 0 450 515 0 451 516 0 466 467 0
		 452 519 0 453 520 0 468 469 0 454 523 0 455 524 0 470 471 0 456 527 0 457 528 0 472 473 0
		 458 529 0 459 530 0 474 475 0 460 517 0 461 518 0 476 477 0 462 521 0 463 522 0 478 479 0
		 464 525 0 465 526 0 480 481 0 469 478 0 477 468 0 479 470 0 471 480 0 467 476 0 475 466 0
		 473 474 0 481 472 0 466 547 0 467 548 0 468 551 0 469 552 0 470 555 0 471 556 0 472 559 0
		 473 560 0 474 561 0 475 562 0 476 549 0 477 550 0 478 553 0 479 554 0 480 557 0 481 558 0
		 483 434 0 484 435 0 485 444 0 486 445 0 487 436 0 488 437 0 489 446 0 490 447 0 491 438 0
		 492 439 0 493 448 0 494 449 0 495 440 0 496 441 0 497 442 0 498 443 0 483 484 0 484 485 0
		 485 486 0 486 487 0 487 488 0 488 489 0 489 490 0 490 491 0 491 492 0 492 493 0 493 494 0
		 494 495 0 495 496 0 496 497 0 497 498 0 498 483 0 499 450 0 500 451 0;
	setAttr ".ed[996:1161]" 501 460 0 502 461 0 503 452 0 504 453 0 505 462 0 506 463 0
		 507 454 0 508 455 0 509 464 0 510 465 0 511 456 0 512 457 0 513 458 0 514 459 0 499 500 0
		 500 501 0 501 502 0 502 503 0 503 504 0 504 505 0 505 506 0 506 507 0 507 508 0 508 509 0
		 509 510 0 510 511 0 511 512 0 512 513 0 513 514 0 514 499 0 515 466 0 516 467 0 517 476 0
		 518 477 0 519 468 0 520 469 0 521 478 0 522 479 0 523 470 0 524 471 0 525 480 0 526 481 0
		 527 472 0 528 473 0 529 474 0 530 475 0 515 516 0 516 517 0 517 518 0 518 519 0 519 520 0
		 520 521 0 521 522 0 522 523 0 523 524 0 524 525 0 525 526 0 526 527 0 527 528 0 528 529 0
		 529 530 0 530 515 0 531 579 0 532 580 0 533 581 0 534 582 0 535 583 0 536 584 0 537 585 0
		 538 586 0 539 587 0 540 588 0 541 589 0 542 590 0 543 591 0 544 592 0 545 593 0 546 594 0
		 531 532 0 532 533 0 533 534 0 534 535 0 535 536 0 536 537 0 537 538 0 538 539 0 539 540 0
		 540 541 0 541 542 0 542 543 0 543 544 0 544 545 0 545 546 0 546 531 0 547 531 0 548 532 0
		 549 533 0 550 534 0 551 535 0 552 536 0 553 537 0 554 538 0 555 539 0 556 540 0 557 541 0
		 558 542 0 559 543 0 560 544 0 561 545 0 562 546 0 547 548 0 548 549 0 549 550 0 550 551 0
		 551 552 0 552 553 0 553 554 0 554 555 0 555 556 0 556 557 0 557 558 0 558 559 0 559 560 0
		 560 561 0 561 562 0 562 547 0 563 482 0 564 482 0 565 482 0 566 482 0 567 482 0 568 482 0
		 569 482 0 570 482 0 571 482 0 572 482 0 573 482 0 574 482 0 575 482 0 576 482 0 577 482 0
		 578 482 0 563 564 0 564 565 0 565 566 0 566 567 0 567 568 0 568 569 0 569 570 0 570 571 0
		 571 572 0 572 573 0 573 574 0 574 575 0 575 576 0 576 577 0 577 578 0 578 563 0 579 595 0
		 580 610 0 581 609 0 582 608 0 583 607 0 584 606 0 585 605 0 586 604 0;
	setAttr ".ed[1162:1327]" 587 603 0 588 602 0 589 601 0 590 600 0 591 599 0 592 598 0
		 593 597 0 594 596 0 579 580 0 580 581 0 581 582 0 582 583 0 583 584 0 584 585 0 585 586 0
		 586 587 0 587 588 0 588 589 0 589 590 0 590 591 0 591 592 0 592 593 0 593 594 0 594 579 0
		 595 563 0 596 564 0 597 565 0 598 566 0 599 567 0 600 568 0 601 569 0 602 570 0 603 571 0
		 604 572 0 605 573 0 606 574 0 607 575 0 608 576 0 609 577 0 610 578 0 595 596 0 596 597 0
		 597 598 0 598 599 0 599 600 0 600 601 0 601 602 0 602 603 0 603 604 0 604 605 0 605 606 0
		 606 607 0 607 608 0 608 609 0 609 610 0 610 595 0 611 612 0 612 613 0 614 613 0 611 614 0
		 615 616 0 616 617 0 618 617 0 615 618 0 619 620 0 620 621 0 621 622 0 619 622 0 624 623 0
		 625 624 0 626 625 0 626 623 0 627 615 0 628 618 0 627 628 0 629 624 0 629 630 0 625 630 0
		 631 632 0 632 627 0 631 628 0 633 1 0 302 634 0 633 634 0 635 3 0 636 21 0 635 636 0
		 637 11 0 243 638 0 637 638 0 639 8 0 639 637 0 640 5 0 640 639 0 641 642 0 622 642 0
		 621 641 0 306 643 0 636 643 0 644 111 0 645 644 0 645 26 0 646 647 0 648 647 0 649 648 0
		 646 649 0 651 650 0 648 651 0 650 647 0 652 148 0 653 652 0 653 35 0 654 655 0 656 655 0
		 656 657 0 657 654 0 617 640 0 618 639 0 628 637 0 638 631 0 613 635 0 614 636 0 643 658 0
		 658 614 0 659 633 0 634 660 0 660 659 0 28 661 0 662 661 0 56 662 0 655 663 0 664 663 0
		 664 656 0 665 648 0 666 665 0 649 666 0 668 667 0 669 668 0 669 670 0 670 667 0 662 656 0
		 671 664 0 671 662 0 661 657 0 27 672 0 673 672 0 673 58 0 675 674 0 675 673 0 672 674 0
		 668 664 0 667 671 0 677 676 0 677 678 0 678 679 0 676 679 0 676 680 0 679 681 0 680 681 0
		 682 683 0 684 683 0 685 684 0 685 682 0 650 685 0 686 685 0 686 651 0;
	setAttr ".ed[1328:1493]" 687 673 0 688 675 0 688 687 0 689 0 0 687 122 0 687 689 0
		 691 690 0 692 691 0 693 692 0 690 693 0 694 693 0 695 694 0 690 695 0 696 697 0 698 697 0
		 699 698 0 696 699 0 701 700 0 701 702 0 703 702 0 703 700 0 689 698 0 699 687 0 705 704 0
		 705 706 0 684 706 0 704 684 0 708 707 0 709 708 0 710 709 0 710 707 0 712 711 0 713 712 0
		 695 713 0 711 695 0 713 714 0 715 712 0 715 714 0 620 705 0 704 621 0 707 716 0 717 716 0
		 708 717 0 716 718 0 719 718 0 717 719 0 720 721 0 721 722 0 723 722 0 720 723 0 724 725 0
		 725 726 0 727 726 0 724 727 0 728 729 0 729 669 0 728 668 0 726 645 0 727 644 0 730 688 0
		 699 730 0 731 695 0 732 731 0 690 732 0 733 701 0 734 700 0 733 734 0 735 696 0 735 730 0
		 714 736 0 737 736 0 713 737 0 731 737 0 738 732 0 691 738 0 674 738 0 672 691 0 663 728 0
		 666 709 0 710 665 0 693 680 0 681 694 0 706 686 0 683 704 0 739 740 0 740 646 0 739 649 0
		 741 649 0 742 666 0 741 742 0 709 743 0 742 743 0 743 711 0 711 708 0 712 717 0 715 719 0
		 702 720 0 703 723 0 697 724 0 698 727 0 644 689 0 744 745 0 746 745 0 747 746 0 744 747 0
		 748 746 0 749 748 0 747 749 0 750 748 0 750 751 0 749 751 0 752 753 0 754 753 0 754 755 0
		 752 755 0 756 757 0 758 757 0 759 758 0 756 759 0 760 758 0 761 760 0 759 761 0 762 760 0
		 763 762 0 761 763 0 764 762 0 765 764 0 763 765 0 766 764 0 767 766 0 765 767 0 745 766 0
		 767 744 0 688 747 0 730 749 0 751 735 0 734 752 0 755 733 0 736 756 0 737 759 0 731 761 0
		 732 763 0 738 765 0 674 767 0 675 744 0 52 670 0 667 134 0 768 285 0 769 145 0 768 769 0
		 671 133 0 691 770 0 771 770 0 692 771 0 729 768 0 669 769 0 769 772 0 670 772 0 139 772 0
		 140 773 0 672 773 0 773 770 0 143 773 0 142 770 0 144 771 0 774 152 0;
	setAttr ".ed[1494:1659]" 652 774 0 616 775 0 775 776 0 617 776 0 776 774 0 774 640 0
		 777 202 0 778 777 0 159 778 0 779 780 0 739 780 0 781 739 0 779 781 0 782 783 0 784 783 0
		 784 785 0 782 785 0 783 777 0 778 782 0 661 778 0 657 782 0 785 654 0 677 779 0 678 781 0
		 787 786 0 788 787 0 789 788 0 786 789 0 790 791 0 792 791 0 792 793 0 790 793 0 794 792 0
		 794 795 0 793 795 0 796 794 0 797 796 0 795 797 0 798 796 0 799 798 0 797 799 0 800 801 0
		 802 801 0 803 802 0 800 803 0 804 653 0 803 804 0 653 802 0 802 169 0 801 235 0 796 167 0
		 798 168 0 166 794 0 165 792 0 791 164 0 805 787 0 805 806 0 788 806 0 807 808 0 808 809 0
		 809 810 0 810 807 0 811 812 0 812 646 0 811 740 0 813 814 0 795 814 0 813 797 0 815 813 0
		 815 799 0 816 817 0 817 800 0 816 803 0 818 804 0 818 816 0 819 650 0 647 820 0 820 819 0
		 821 822 0 786 822 0 821 789 0 823 824 0 824 790 0 793 823 0 814 823 0 812 820 0 790 789 0
		 791 788 0 825 787 0 826 786 0 825 826 0 164 806 0 153 805 0 153 825 0 827 807 0 740 810 0
		 740 827 0 811 809 0 828 808 0 828 811 0 824 821 0 829 830 0 830 831 0 831 832 0 829 832 0
		 781 741 0 679 741 0 681 742 0 743 694 0 780 827 0 783 826 0 826 833 0 833 784 0 777 825 0
		 834 835 0 836 835 0 836 837 0 834 837 0 838 839 0 840 839 0 841 840 0 838 841 0 842 843 0
		 844 843 0 845 844 0 842 845 0 835 844 0 845 834 0 846 834 0 837 847 0 846 847 0 848 838 0
		 849 841 0 848 849 0 850 842 0 851 845 0 850 851 0 851 846 0 826 846 0 847 833 0 827 848 0
		 807 849 0 822 850 0 786 851 0 844 830 0 835 829 0 843 831 0 839 852 0 852 853 0 840 853 0
		 832 836 0 721 854 0 855 854 0 722 855 0 642 856 0 857 856 0 622 857 0 614 858 0 859 858 0
		 859 611 0 660 860 0 861 860 0 861 659 0 725 862 0 863 862 0 726 863 0;
	setAttr ".ed[1660:1825]" 864 619 0 864 857 0 630 865 0 866 865 0 625 866 0 658 867 0
		 858 867 0 642 625 0 641 626 0 856 866 0 641 683 0 650 868 0 682 868 0 819 869 0 868 869 0
		 817 815 0 799 800 0 801 798 0 718 619 0 870 864 0 718 870 0 716 620 0 707 705 0 706 710 0
		 665 686 0 638 635 0 613 631 0 612 632 0 871 629 0 872 871 0 630 872 0 873 872 0 865 873 0
		 873 859 0 872 611 0 871 612 0 632 629 0 624 627 0 623 615 0 623 874 0 874 616 0 874 875 0
		 875 775 0 875 876 0 876 877 0 775 877 0 876 878 0 878 818 0 877 818 0 879 878 0 879 816 0
		 869 817 0 869 879 0 819 815 0 820 813 0 814 812 0 823 811 0 828 824 0 808 821 0 822 807 0
		 849 850 0 841 842 0 843 840 0 831 853 0 832 852 0 839 836 0 837 838 0 847 848 0 833 827 0
		 780 784 0 785 779 0 654 677 0 655 676 0 663 680 0 693 728 0 692 729 0 771 768 0 757 754 0
		 755 756 0 736 733 0 714 701 0 702 715 0 719 720 0 718 721 0 854 870 0 753 750 0 751 752 0
		 734 735 0 700 696 0 697 703 0 723 724 0 722 725 0 862 855 0 634 645 0 726 660 0 860 863 0
		 643 633 0 659 658 0 867 861 0 757 880 0 758 880 0 754 880 0 753 880 0 750 880 0 748 880 0
		 746 880 0 745 880 0 766 880 0 764 880 0 762 880 0 760 880 0 879 881 0 868 881 0 876 881 0
		 882 875 0 881 882 0 682 882 0 883 818 0 884 804 0 883 884 0 886 885 0 886 653 0 885 652 0
		 776 887 0 888 887 0 888 774 0 877 889 0 890 889 0 890 775 0 885 888 0 887 890 0 889 883 0
		 884 886 0 891 892 0 892 893 0 893 894 0 891 894 0 892 895 0 895 896 0 896 893 0 895 897 0
		 897 898 0 898 896 0 897 899 0 899 900 0 900 898 0 899 901 0 901 902 0 902 900 0 901 903 0
		 903 904 0 904 902 0 903 905 0 905 906 0 906 904 0 905 891 0 894 906 0 907 908 0 908 909 0
		 909 910 0 907 910 0 908 911 0 911 912 0 912 909 0 911 913 0 913 914 0;
	setAttr ".ed[1826:1991]" 914 912 0 913 915 0 915 916 0 916 914 0 915 917 0 917 918 0
		 918 916 0 917 919 0 919 920 0 920 918 0 919 921 0 921 922 0 922 920 0 921 907 0 910 922 0
		 923 924 0 924 925 0 925 926 0 923 926 0 924 927 0 927 928 0 928 925 0 927 929 0 929 930 0
		 930 928 0 929 931 0 931 932 0 932 930 0 931 933 0 933 934 0 934 932 0 933 935 0 935 936 0
		 936 934 0 935 937 0 937 938 0 938 936 0 937 923 0 926 938 0 939 940 0 940 941 0 939 941 0
		 940 942 0 942 941 0 942 943 0 943 941 0 943 944 0 944 941 0 944 945 0 945 941 0 945 946 0
		 946 941 0 946 947 0 947 941 0 947 939 0 948 949 0 949 892 0 948 891 0 949 950 0 950 895 0
		 950 951 0 951 897 0 951 952 0 952 899 0 952 953 0 953 901 0 953 954 0 954 903 0 954 955 0
		 955 905 0 955 948 0 956 957 0 957 908 0 956 907 0 957 958 0 958 911 0 958 959 0 959 913 0
		 959 960 0 960 915 0 960 961 0 961 917 0 961 962 0 962 919 0 962 963 0 963 921 0 963 956 0
		 964 965 0 965 966 0 967 966 0 964 967 0 965 968 0 968 969 0 966 969 0 968 970 0 970 971 0
		 969 971 0 970 972 0 972 973 0 971 973 0 972 974 0 974 975 0 973 975 0 974 976 0 976 977 0
		 975 977 0 976 978 0 978 979 0 977 979 0 978 964 0 979 967 0 926 980 0 980 981 0 938 981 0
		 981 982 0 936 982 0 982 983 0 934 983 0 983 984 0 932 984 0 984 985 0 930 985 0 985 986 0
		 928 986 0 986 987 0 925 987 0 987 980 0 980 939 0 981 947 0 982 946 0 983 945 0 984 944 0
		 985 943 0 986 942 0 987 940 0 966 924 0 967 923 0 969 927 0 971 929 0 973 931 0 975 933 0
		 977 935 0 979 937 0 988 989 0 989 965 0 988 964 0 989 990 0 990 968 0 990 991 0 991 970 0
		 991 992 0 992 972 0 992 993 0 993 974 0 993 994 0 994 976 0 994 995 0 995 978 0 995 988 0
		 910 988 0 922 995 0 920 994 0 918 993 0 916 992 0 914 991 0 912 990 0;
	setAttr ".ed[1992:2157]" 909 989 0 996 997 0 997 957 0 996 956 0 997 998 0 998 958 0
		 998 999 0 999 959 0 999 1000 0 1000 960 0 1000 1001 0 1001 961 0 1001 1002 0 1002 962 0
		 1002 1003 0 1003 963 0 1003 996 0 894 996 0 906 1003 0 904 1002 0 902 1001 0 900 1000 0
		 898 999 0 896 998 0 893 997 0 884 949 0 883 948 0 886 950 0 885 951 0 888 952 0 887 953 0
		 890 954 0 889 955 0 626 1004 0 1004 874 0 1004 882 0 683 1004 0 1005 1006 0 1006 1007 0
		 1008 1007 0 1005 1008 0 1009 1010 0 1010 1011 0 1012 1011 0 1009 1012 0 1013 1014 0
		 1014 1015 0 1016 1015 0 1013 1016 0 1017 1018 0 1018 1019 0 1020 1019 0 1017 1020 0
		 1021 1022 0 1022 1023 0 1024 1023 0 1021 1024 0 1025 1026 0 1026 1027 0 1028 1027 0
		 1025 1028 0 1029 1030 0 1030 1031 0 1032 1031 0 1029 1032 0 1033 1034 0 1034 1035 0
		 1036 1035 0 1033 1036 0 1010 1029 0 1011 1032 0 1026 1009 0 1027 1012 0 1030 1013 0
		 1031 1016 0 1014 1033 0 1015 1036 0 1006 1025 0 1007 1028 0 1022 1005 0 1023 1008 0
		 1018 1021 0 1019 1024 0 1034 1017 0 1035 1020 0 1037 1038 0 1038 1039 0 1040 1039 0
		 1037 1040 0 1041 1042 0 1042 1043 0 1044 1043 0 1041 1044 0 1045 1046 0 1046 1047 0
		 1048 1047 0 1045 1048 0 1049 1050 0 1050 1051 0 1052 1051 0 1049 1052 0 1053 1054 0
		 1054 1055 0 1056 1055 0 1053 1056 0 1057 1058 0 1058 1059 0 1060 1059 0 1057 1060 0
		 1061 1062 0 1062 1063 0 1064 1063 0 1061 1064 0 1065 1066 0 1066 1067 0 1068 1067 0
		 1065 1068 0 1042 1061 0 1043 1064 0 1058 1041 0 1059 1044 0 1062 1045 0 1063 1048 0
		 1046 1065 0 1047 1068 0 1038 1057 0 1039 1060 0 1054 1037 0 1055 1040 0 1050 1053 0
		 1051 1056 0 1066 1049 0 1067 1052 0 1069 1070 0 1070 1071 0 1072 1071 0 1069 1072 0
		 1073 1074 0 1074 1075 0 1076 1075 0 1073 1076 0 1077 1078 0 1078 1079 0 1080 1079 0
		 1077 1080 0 1081 1082 0 1082 1083 0 1084 1083 0 1081 1084 0 1085 1086 0 1086 1087 0
		 1088 1087 0 1085 1088 0 1089 1090 0 1090 1091 0 1092 1091 0 1089 1092 0 1093 1094 0
		 1094 1095 0 1096 1095 0 1093 1096 0 1097 1098 0 1098 1099 0 1100 1099 0 1097 1100 0
		 1074 1093 0;
	setAttr ".ed[2158:2323]" 1075 1096 0 1090 1073 0 1091 1076 0 1094 1077 0 1095 1080 0
		 1078 1097 0 1079 1100 0 1070 1089 0 1071 1092 0 1086 1069 0 1087 1072 0 1082 1085 0
		 1083 1088 0 1098 1081 0 1099 1084 0 1102 1101 0 1103 1102 0 1103 1101 0 1104 1101 0
		 1105 1104 0 1105 1101 0 1106 1101 0 1107 1106 0 1107 1101 0 1108 1101 0 1109 1108 0
		 1109 1101 0 1110 1101 0 1111 1110 0 1111 1101 0 1112 1101 0 1113 1112 0 1113 1101 0
		 1114 1101 0 1115 1114 0 1115 1101 0 1116 1101 0 1117 1116 0 1117 1101 0 1114 1105 0
		 1104 1113 0 1106 1115 0 1116 1107 0 1112 1103 0 1102 1111 0 1110 1109 0 1108 1117 0
		 1118 1119 0 1119 1120 0 1120 1121 0 1118 1121 0 1119 1122 0 1122 1123 0 1123 1120 0
		 1122 1124 0 1124 1125 0 1125 1123 0 1124 1126 0 1126 1127 0 1127 1125 0 1126 1128 0
		 1128 1129 0 1129 1127 0 1128 1130 0 1130 1131 0 1131 1129 0 1130 1132 0 1132 1133 0
		 1133 1131 0 1132 1134 0 1134 1135 0 1135 1133 0 1134 1136 0 1136 1137 0 1137 1135 0
		 1136 1138 0 1138 1139 0 1139 1137 0 1138 1140 0 1140 1141 0 1141 1139 0 1140 1142 0
		 1142 1143 0 1143 1141 0 1142 1144 0 1144 1145 0 1145 1143 0 1144 1146 0 1146 1147 0
		 1147 1145 0 1146 1148 0 1148 1149 0 1149 1147 0 1148 1118 0 1121 1149 0 854 1006 0
		 855 1005 0 870 1025 0 864 1026 0 857 1009 0 856 1010 0 866 1029 0 865 1030 0 873 1013 0
		 859 1014 0 858 1033 0 867 1034 0 861 1017 0 860 1018 0 863 1021 0 862 1022 0 1007 1038 0
		 1008 1037 0 1028 1057 0 1027 1058 0 1012 1041 0 1011 1042 0 1032 1061 0 1031 1062 0
		 1016 1045 0 1015 1046 0 1036 1065 0 1035 1066 0 1020 1049 0 1019 1050 0 1024 1053 0
		 1023 1054 0 1039 1070 0 1040 1069 0 1060 1089 0 1059 1090 0 1044 1073 0 1043 1074 0
		 1064 1093 0 1063 1094 0 1048 1077 0 1047 1078 0 1068 1097 0 1067 1098 0 1052 1081 0
		 1051 1082 0 1056 1085 0 1055 1086 0 1150 1151 0 1151 1152 0 1153 1152 0 1150 1153 0
		 1151 1154 0 1154 1155 0 1152 1155 0 1154 1156 0 1156 1157 0 1155 1157 0 1156 1158 0
		 1158 1159 0 1157 1159 0 1158 1160 0 1160 1161 0 1159 1161 0 1160 1162 0 1162 1163 0
		 1161 1163 0 1162 1164 0 1164 1165 0 1163 1165 0 1164 1166 0;
	setAttr ".ed[2324:2489]" 1166 1167 0 1165 1167 0 1166 1168 0 1168 1169 0 1167 1169 0
		 1168 1170 0 1170 1171 0 1169 1171 0 1170 1172 0 1172 1173 0 1171 1173 0 1172 1174 0
		 1174 1175 0 1173 1175 0 1174 1176 0 1176 1177 0 1175 1177 0 1176 1178 0 1178 1179 0
		 1177 1179 0 1178 1180 0 1180 1181 0 1179 1181 0 1180 1150 0 1181 1153 0 1071 1151 0
		 1072 1150 0 1092 1154 0 1091 1156 0 1076 1158 0 1075 1160 0 1096 1162 0 1095 1164 0
		 1080 1166 0 1079 1168 0 1100 1170 0 1099 1172 0 1084 1174 0 1083 1176 0 1088 1178 0
		 1087 1180 0 1152 1119 0 1153 1118 0 1155 1122 0 1157 1124 0 1159 1126 0 1161 1128 0
		 1163 1130 0 1165 1132 0 1167 1134 0 1169 1136 0 1171 1138 0 1173 1140 0 1175 1142 0
		 1177 1144 0 1179 1146 0 1181 1148 0 1121 1102 0 1149 1111 0 1147 1110 0 1145 1109 0
		 1143 1108 0 1141 1117 0 1139 1116 0 1137 1107 0 1135 1106 0 1133 1115 0 1131 1114 0
		 1129 1105 0 1127 1104 0 1125 1113 0 1123 1112 0 1120 1103 0 1182 1183 0 1183 1184 0
		 1184 1185 0 1185 1186 0 1186 1187 0 1187 1188 0 1188 1189 0 1189 1190 0 1190 1191 0
		 1191 1192 0 1192 1193 0 1193 1194 0 1194 1195 0 1195 1196 0 1196 1197 0 1197 1198 0
		 1198 1199 0 1199 1200 0 1200 1201 0 1201 1202 0 1202 1203 0 1203 1204 0 1204 1205 0
		 1205 1182 0 1206 1207 0 1207 1208 0 1208 1209 0 1209 1210 0 1210 1211 0 1211 1212 0
		 1212 1213 0 1213 1214 0 1214 1215 0 1215 1216 0 1216 1217 0 1217 1218 0 1218 1219 0
		 1219 1220 0 1220 1221 0 1221 1222 0 1222 1223 0 1223 1224 0 1224 1225 0 1225 1226 0
		 1226 1227 0 1227 1228 0 1228 1229 0 1229 1206 0 1182 1206 1 1183 1207 1 1184 1208 1
		 1185 1209 1 1186 1210 1 1187 1211 1 1188 1212 1 1189 1213 1 1190 1214 1 1191 1215 1
		 1192 1216 1 1193 1217 1 1194 1218 1 1195 1219 1 1196 1220 1 1197 1221 1 1198 1222 1
		 1199 1223 1 1200 1224 1 1201 1225 1 1202 1226 1 1203 1227 1 1204 1228 1 1205 1229 1
		 1206 1255 0 1207 1256 0 1208 1257 0 1209 1258 0 1210 1259 0 1211 1260 0 1212 1261 0
		 1213 1262 0 1214 1263 0 1215 1264 0 1216 1265 0 1217 1266 0 1218 1267 0 1219 1268 0
		 1220 1269 0 1221 1270 0 1222 1271 0 1223 1272 0 1224 1273 0 1225 1274 0 1226 1275 0;
	setAttr ".ed[2490:2655]" 1227 1276 0 1228 1277 0 1229 1278 0 1231 1230 0 1232 1230 0
		 1233 1230 0 1234 1230 0 1235 1230 0 1236 1230 0 1237 1230 0 1238 1230 0 1239 1230 0
		 1240 1230 0 1241 1230 0 1242 1230 0 1243 1230 0 1244 1230 0 1245 1230 0 1246 1230 0
		 1247 1230 0 1248 1230 0 1249 1230 0 1250 1230 0 1251 1230 0 1252 1230 0 1253 1230 0
		 1254 1230 0 1231 1232 0 1232 1233 0 1233 1234 0 1234 1235 0 1235 1236 0 1236 1237 0
		 1237 1238 0 1238 1239 0 1239 1240 0 1240 1241 0 1241 1242 0 1242 1243 0 1243 1244 0
		 1244 1245 0 1245 1246 0 1246 1247 0 1247 1248 0 1248 1249 0 1249 1250 0 1250 1251 0
		 1251 1252 0 1252 1253 0 1253 1254 0 1254 1231 0 1255 1238 0 1256 1237 0 1257 1236 0
		 1258 1235 0 1259 1234 0 1260 1233 0 1261 1232 0 1262 1231 0 1263 1254 0 1264 1253 0
		 1265 1252 0 1266 1251 0 1267 1250 0 1268 1249 0 1269 1248 0 1270 1247 0 1271 1246 0
		 1272 1245 0 1273 1244 0 1274 1243 0 1275 1242 0 1276 1241 0 1277 1240 0 1278 1239 0
		 1255 1256 0 1256 1257 0 1257 1258 0 1258 1259 0 1259 1260 0 1260 1261 0 1261 1262 0
		 1262 1263 0 1263 1264 0 1264 1265 0 1265 1266 0 1266 1267 0 1267 1268 0 1268 1269 0
		 1269 1270 0 1270 1271 0 1271 1272 0 1272 1273 0 1273 1274 0 1274 1275 0 1275 1276 0
		 1276 1277 0 1277 1278 0 1278 1255 0 1182 1279 0 1183 1280 0 1279 1280 0 1184 1281 0
		 1280 1281 0 1185 1282 0 1281 1282 0 1186 1283 0 1282 1283 0 1187 1284 0 1283 1284 0
		 1188 1285 0 1284 1285 0 1189 1286 0 1285 1286 0 1190 1287 0 1286 1287 0 1191 1288 0
		 1287 1288 0 1192 1289 0 1288 1289 0 1193 1290 0 1289 1290 0 1194 1291 0 1290 1291 0
		 1195 1292 0 1291 1292 0 1196 1293 0 1292 1293 0 1197 1294 0 1293 1294 0 1198 1295 0
		 1294 1295 0 1199 1296 0 1295 1296 0 1200 1297 0 1296 1297 0 1201 1298 0 1297 1298 0
		 1202 1299 0 1298 1299 0 1203 1300 0 1299 1300 0 1204 1301 0 1300 1301 0 1205 1302 0
		 1301 1302 0 1302 1279 0 1303 1427 0 1305 1408 0 1303 1437 0 1304 1467 0 1305 1363 0
		 1306 1364 0 1307 1355 0 1308 1356 0 1307 1435 0 1308 1475 0 1309 1400 0 1310 1478 0
		 1311 1558 0 1312 1560 0 1313 1359 0 1314 1362 0 1311 1404 0 1312 1471 0 1313 1431 0;
	setAttr ".ed[2656:2821]" 1314 1482 0 1303 1486 0 1304 1488 0 1306 1490 0 1305 1492 0
		 1315 1421 0 1316 1461 0 1318 1414 0 1315 1453 0 1319 1367 0 1320 1370 0 1321 1369 0
		 1322 1368 0 1319 1426 0 1320 1466 0 1321 1409 0 1322 1448 0 1323 1438 0 1323 1503 0
		 1326 1447 0 1324 1493 0 1327 1439 0 1327 1502 0 1330 1446 0 1328 1494 0 1331 1440 0
		 1331 1501 0 1334 1445 0 1332 1495 0 1335 1375 0 1336 1378 0 1337 1377 0 1338 1376 0
		 1335 1423 0 1336 1463 0 1337 1412 0 1338 1451 0 1339 1361 0 1340 1360 0 1341 1365 0
		 1342 1366 0 1339 1406 0 1340 1469 0 1341 1429 0 1342 1484 0 1343 1354 0 1344 1353 0
		 1345 1357 0 1346 1358 0 1343 1433 0 1344 1473 0 1345 1402 0 1346 1480 0 1347 1436 0
		 1348 1476 0 1349 1399 0 1350 1477 0 1351 1346 0 1352 1345 0 1353 1580 0 1354 1582 0
		 1351 1403 0 1352 1472 0 1353 1432 0 1354 1481 0 1355 1343 0 1356 1344 0 1357 1309 0
		 1358 1310 0 1355 1434 0 1356 1474 0 1357 1401 0 1358 1479 0 1309 1349 0 1348 1308 0
		 1347 1307 0 1310 1350 0 1359 1341 0 1360 1312 0 1361 1311 0 1362 1342 0 1359 1470 0
		 1360 1405 0 1361 1483 0 1362 1430 0 1363 1339 0 1364 1340 0 1365 1304 0 1366 1303 0
		 1363 1407 0 1364 1468 0 1365 1428 0 1366 1485 0 1367 1371 0 1368 1374 0 1369 1373 0
		 1370 1372 0 1367 1449 0 1368 1410 0 1369 1465 0 1370 1425 0 1371 1335 0 1372 1336 0
		 1373 1337 0 1374 1338 0 1371 1424 0 1372 1464 0 1373 1411 0 1374 1450 0 1375 1315 0
		 1376 1318 0 1377 1317 0 1378 1316 0 1375 1452 0 1376 1413 0 1377 1462 0 1378 1422 0
		 1327 1331 0 1329 1333 0 1330 1334 0 1328 1332 0 1323 1327 0 1325 1329 0 1326 1330 0
		 1324 1328 0 1303 1323 0 1319 1325 0 1322 1326 0 1305 1324 0 1315 1379 0 1316 1380 0
		 1379 1420 0 1317 1381 0 1380 1460 0 1318 1382 0 1382 1415 0 1379 1454 0 1379 1383 0
		 1380 1384 0 1383 1419 0 1381 1385 0 1384 1459 0 1382 1386 0 1386 1416 0 1383 1455 0
		 1383 1387 0 1384 1388 0 1387 1418 0 1385 1389 0 1388 1458 0 1386 1390 0 1390 1417 0
		 1387 1456 0 1331 1391 0 1332 1392 0 1391 1441 0 1333 1393 0 1391 1500 0 1334 1394 0
		 1394 1444 0 1392 1496 0 1391 1395 0 1392 1396 0 1395 1442 0 1393 1397 0 1395 1499 0;
	setAttr ".ed[2822:2987]" 1394 1398 0 1398 1443 0 1396 1497 0 1399 1350 0 1400 1310 0
		 1401 1358 0 1402 1346 0 1403 1352 0 1404 1312 0 1405 1361 0 1406 1340 0 1407 1364 0
		 1408 1306 0 1409 1322 0 1410 1369 0 1411 1374 0 1412 1338 0 1413 1377 0 1414 1317 0
		 1415 1381 0 1416 1385 0 1417 1389 0 1418 1388 0 1419 1384 0 1420 1380 0 1421 1316 0
		 1422 1375 0 1423 1336 0 1424 1372 0 1425 1367 0 1426 1320 0 1427 1304 0 1428 1366 0
		 1429 1342 0 1430 1359 0 1431 1314 0 1432 1354 0 1433 1344 0 1434 1356 0 1435 1308 0
		 1436 1348 0 1399 1400 0 1400 1401 0 1401 1402 0 1402 1403 0 1403 1559 0 1404 1405 0
		 1405 1406 0 1406 1407 0 1407 1408 0 1408 1491 0 1409 1410 0 1410 1411 0 1411 1412 0
		 1412 1413 0 1413 1414 0 1414 1415 0 1415 1416 0 1416 1417 0 1417 1457 0 1418 1419 0
		 1419 1420 0 1420 1421 0 1421 1422 0 1422 1423 0 1423 1424 0 1424 1425 0 1425 1426 0
		 1426 1487 0 1427 1428 0 1428 1429 0 1429 1430 0 1430 1431 0 1431 1581 0 1432 1433 0
		 1433 1434 0 1434 1435 0 1435 1436 0 1437 1305 0 1438 1324 0 1439 1328 0 1440 1332 0
		 1441 1392 0 1442 1396 0 1443 1397 0 1444 1393 0 1445 1333 0 1446 1329 0 1447 1325 0
		 1448 1319 0 1449 1368 0 1450 1371 0 1451 1335 0 1452 1376 0 1453 1318 0 1454 1382 0
		 1455 1386 0 1456 1390 0 1457 1418 0 1458 1389 0 1459 1385 0 1460 1381 0 1461 1317 0
		 1462 1378 0 1463 1337 0 1464 1373 0 1465 1370 0 1466 1321 0 1467 1306 0 1468 1365 0
		 1469 1341 0 1470 1360 0 1471 1313 0 1472 1353 0 1473 1345 0 1474 1357 0 1475 1309 0
		 1476 1349 0 1477 1347 0 1478 1307 0 1479 1355 0 1480 1343 0 1481 1351 0 1482 1311 0
		 1483 1362 0 1484 1339 0 1485 1363 0 1437 1438 0 1438 1439 0 1439 1440 0 1440 1441 0
		 1441 1442 0 1442 1498 0 1443 1444 0 1444 1445 0 1445 1446 0 1446 1447 0 1447 1448 0
		 1448 1449 0 1449 1450 0 1450 1451 0 1451 1452 0 1452 1453 0 1453 1454 0 1454 1455 0
		 1455 1456 0 1456 1457 0 1457 1458 0 1458 1459 0 1459 1460 0 1460 1461 0 1461 1462 0
		 1462 1463 0 1463 1464 0 1464 1465 0 1465 1466 0 1466 1489 0 1467 1468 0 1468 1469 0
		 1469 1470 0 1470 1471 0 1472 1473 0 1473 1474 0 1474 1475 0 1475 1476 0 1477 1478 0;
	setAttr ".ed[2988:3153]" 1478 1479 0 1479 1480 0 1480 1481 0 1481 1583 0 1482 1483 0
		 1483 1484 0 1484 1485 0 1485 1437 0 1486 1319 0 1487 1427 0 1488 1320 0 1489 1467 0
		 1490 1321 0 1491 1409 0 1492 1322 0 1493 1326 0 1494 1330 0 1495 1334 0 1496 1394 0
		 1497 1398 0 1498 1443 0 1499 1397 0 1500 1393 0 1501 1333 0 1502 1329 0 1503 1325 0
		 1486 1487 0 1487 1488 0 1488 1489 0 1489 1490 0 1490 1491 0 1491 1492 0 1492 1493 0
		 1493 1494 0 1494 1495 0 1495 1496 0 1496 1497 0 1497 1498 0 1498 1499 0 1499 1500 0
		 1500 1501 0 1501 1502 0 1502 1503 0 1503 1486 0 1352 1538 0 1312 1539 0 1505 1562 0
		 1313 1536 0 1505 1556 0 1353 1537 0 1507 1578 0 1504 1541 0 1505 1532 0 1504 1535 0
		 1508 1564 0 1506 1533 0 1508 1554 0 1507 1534 0 1511 1576 0 1509 1543 0 1508 1528 0
		 1509 1531 0 1512 1566 0 1510 1529 0 1512 1552 0 1511 1530 0 1515 1574 0 1513 1545 0
		 1512 1524 0 1513 1527 0 1516 1568 0 1514 1525 0 1516 1550 0 1515 1526 0 1519 1572 0
		 1517 1547 0 1516 1584 0 1517 1590 0 1520 1569 0 1518 1586 0 1520 1549 0 1519 1588 0
		 1523 1571 0 1521 1548 0 1524 1516 0 1525 1518 0 1526 1519 0 1527 1517 0 1524 1551 0
		 1525 1573 0 1526 1546 0 1527 1567 0 1528 1512 0 1529 1514 0 1530 1515 0 1531 1513 0
		 1528 1553 0 1529 1575 0 1530 1544 0 1531 1565 0 1532 1508 0 1533 1510 0 1534 1511 0
		 1535 1509 0 1532 1555 0 1533 1577 0 1534 1542 0 1535 1563 0 1536 1506 0 1537 1507 0
		 1536 1579 0 1538 1504 0 1539 1505 0 1537 1540 0 1538 1561 0 1539 1557 0 1540 1538 0
		 1541 1507 0 1542 1535 0 1543 1511 0 1544 1531 0 1545 1515 0 1546 1527 0 1547 1519 0
		 1548 1523 0 1549 1522 0 1550 1518 0 1551 1525 0 1552 1514 0 1553 1529 0 1554 1510 0
		 1555 1533 0 1556 1506 0 1557 1536 0 1540 1541 0 1541 1542 0 1542 1543 0 1543 1544 0
		 1544 1545 0 1545 1546 0 1546 1547 0 1547 1589 0 1548 1570 0 1549 1585 0 1550 1551 0
		 1551 1552 0 1552 1553 0 1553 1554 0 1554 1555 0 1555 1556 0 1556 1557 0 1540 1472 0
		 1471 1557 0 1558 1351 0 1559 1404 0 1560 1352 0 1561 1539 0 1562 1504 0 1563 1532 0
		 1564 1509 0 1565 1528 0 1566 1513 0 1567 1524 0 1568 1517 0 1569 1521 0 1570 1549 0;
	setAttr ".ed[3154:3319]" 1571 1522 0 1572 1518 0 1573 1526 0 1574 1514 0 1575 1530 0
		 1576 1510 0 1577 1534 0 1578 1506 0 1579 1537 0 1580 1313 0 1581 1432 0 1582 1314 0
		 1583 1482 0 1558 1559 0 1559 1560 0 1560 1561 0 1561 1562 0 1562 1563 0 1563 1564 0
		 1564 1565 0 1565 1566 0 1566 1567 0 1567 1568 0 1568 1591 0 1569 1570 0 1570 1571 0
		 1571 1587 0 1572 1573 0 1573 1574 0 1574 1575 0 1575 1576 0 1576 1577 0 1577 1578 0
		 1578 1579 0 1579 1580 0 1580 1581 0 1581 1582 0 1582 1583 0 1583 1558 0 1584 1520 0
		 1585 1550 0 1586 1522 0 1587 1572 0 1588 1523 0 1589 1548 0 1590 1521 0 1591 1569 0
		 1584 1585 0 1585 1586 0 1586 1587 0 1587 1588 0 1588 1589 0 1589 1590 0 1590 1591 0
		 1591 1584 0 1592 1593 0 1592 1594 0 1593 1595 0 1594 1595 0 1596 1597 0 1596 1598 0
		 1597 1599 0 1598 1599 0 1600 1601 0 1600 1602 0 1601 1603 0 1602 1603 0 1604 1605 0
		 1604 1606 0 1605 1607 0 1606 1607 0 1608 1609 0 1608 1610 0 1609 1611 0 1610 1611 0
		 1612 1613 0 1612 1614 0 1613 1615 0 1614 1615 0 1616 1617 0 1616 1618 0 1617 1619 0
		 1618 1619 0 1620 1621 0 1620 1622 0 1621 1623 0 1622 1623 0 1624 1625 0 1624 1626 0
		 1625 1627 0 1626 1627 0 1628 1629 0 1628 1630 0 1629 1631 0 1630 1631 0 1632 1633 0
		 1632 1634 0 1633 1635 0 1634 1635 0 1636 1637 0 1636 1638 0 1637 1639 0 1638 1639 0
		 1640 1641 0 1640 1642 0 1641 1643 0 1642 1643 0 1644 1645 0 1644 1646 0 1645 1647 0
		 1646 1647 0 1648 1649 0 1648 1650 0 1649 1651 0 1650 1651 0 1652 1653 0 1652 1654 0
		 1653 1655 0 1654 1655 0 1656 1657 0 1656 1658 0 1657 1659 0 1658 1659 0 1660 1661 0
		 1660 1662 0 1661 1663 0 1662 1663 0 1664 1665 0 1664 1666 0 1665 1667 0 1666 1667 0
		 1668 1669 0 1668 1670 0 1669 1671 0 1670 1671 0 1672 1673 0 1672 1674 0 1673 1675 0
		 1674 1675 0 1676 1677 0 1676 1678 0 1677 1679 0 1678 1679 0 1680 1681 0 1680 1682 0
		 1681 1683 0 1682 1683 0 1684 1685 0 1684 1686 0 1685 1687 0 1686 1687 0 1688 1689 0
		 1688 1690 0 1689 1691 0 1690 1691 0 1692 1693 0 1692 1694 0 1693 1695 0 1694 1695 0
		 1696 1697 0 1696 1698 0 1697 1699 0 1698 1699 0 1700 1701 0 1700 1702 0 1701 1703 0;
	setAttr ".ed[3320:3485]" 1702 1703 0 1704 1813 0 1706 1794 0 1704 1820 0 1705 1850 0
		 1706 1752 0 1707 1753 0 1708 1935 0 1709 1937 0 1710 1748 0 1711 1751 0 1708 1790 0
		 1709 1854 0 1710 1817 0 1711 1859 0 1704 1863 0 1705 1865 0 1707 1867 0 1706 1869 0
		 1712 1807 0 1713 1844 0 1715 1800 0 1712 1836 0 1716 1756 0 1717 1759 0 1718 1758 0
		 1719 1757 0 1716 1812 0 1717 1849 0 1718 1795 0 1719 1831 0 1720 1821 0 1720 1880 0
		 1723 1830 0 1721 1870 0 1724 1822 0 1724 1879 0 1727 1829 0 1725 1871 0 1728 1823 0
		 1728 1878 0 1731 1828 0 1729 1872 0 1732 1764 0 1733 1767 0 1734 1766 0 1735 1765 0
		 1732 1809 0 1733 1846 0 1734 1798 0 1735 1834 0 1736 1750 0 1737 1749 0 1738 1754 0
		 1739 1755 0 1736 1792 0 1737 1852 0 1738 1815 0 1739 1861 0 1740 1747 0 1741 1746 0
		 1740 1819 0 1741 1856 0 1742 1788 0 1743 1857 0 1744 1743 0 1745 1742 0 1746 1957 0
		 1747 1959 0 1744 1789 0 1745 1855 0 1746 1818 0 1747 1858 0 1748 1738 0 1749 1709 0
		 1750 1708 0 1751 1739 0 1748 1853 0 1749 1791 0 1750 1860 0 1751 1816 0 1752 1736 0
		 1753 1737 0 1754 1705 0 1755 1704 0 1752 1793 0 1753 1851 0 1754 1814 0 1755 1862 0
		 1756 1760 0 1757 1763 0 1758 1762 0 1759 1761 0 1756 1832 0 1757 1796 0 1758 1848 0
		 1759 1811 0 1760 1732 0 1761 1733 0 1762 1734 0 1763 1735 0 1760 1810 0 1761 1847 0
		 1762 1797 0 1763 1833 0 1764 1712 0 1765 1715 0 1766 1714 0 1767 1713 0 1764 1835 0
		 1765 1799 0 1766 1845 0 1767 1808 0 1724 1728 0 1726 1730 0 1727 1731 0 1725 1729 0
		 1720 1724 0 1722 1726 0 1723 1727 0 1721 1725 0 1704 1720 0 1716 1722 0 1719 1723 0
		 1706 1721 0 1712 1768 0 1713 1769 0 1768 1806 0 1714 1770 0 1769 1843 0 1715 1771 0
		 1771 1801 0 1768 1837 0 1768 1772 0 1769 1773 0 1772 1805 0 1770 1774 0 1773 1842 0
		 1771 1775 0 1775 1802 0 1772 1838 0 1772 1776 0 1773 1777 0 1776 1804 0 1774 1778 0
		 1777 1841 0 1775 1779 0 1779 1803 0 1776 1839 0 1728 1780 0 1729 1781 0 1780 1824 0
		 1730 1782 0 1780 1877 0 1731 1783 0 1783 1827 0 1781 1873 0 1780 1784 0 1781 1785 0
		 1784 1825 0 1782 1786 0 1784 1876 0 1783 1787 0 1787 1826 0 1785 1874 0 1788 1743 0;
	setAttr ".ed[3486:3651]" 1789 1745 0 1790 1709 0 1791 1750 0 1792 1737 0 1793 1753 0
		 1794 1707 0 1795 1719 0 1796 1758 0 1797 1763 0 1798 1735 0 1799 1766 0 1800 1714 0
		 1801 1770 0 1802 1774 0 1803 1778 0 1804 1777 0 1805 1773 0 1806 1769 0 1807 1713 0
		 1808 1764 0 1809 1733 0 1810 1761 0 1811 1756 0 1812 1717 0 1813 1705 0 1814 1755 0
		 1815 1739 0 1816 1748 0 1817 1711 0 1818 1747 0 1819 1741 0 1788 1789 0 1789 1936 0
		 1790 1791 0 1791 1792 0 1792 1793 0 1793 1794 0 1794 1868 0 1795 1796 0 1796 1797 0
		 1797 1798 0 1798 1799 0 1799 1800 0 1800 1801 0 1801 1802 0 1802 1803 0 1803 1840 0
		 1804 1805 0 1805 1806 0 1806 1807 0 1807 1808 0 1808 1809 0 1809 1810 0 1810 1811 0
		 1811 1812 0 1812 1864 0 1813 1814 0 1814 1815 0 1815 1816 0 1816 1817 0 1817 1958 0
		 1818 1819 0 1820 1706 0 1821 1721 0 1822 1725 0 1823 1729 0 1824 1781 0 1825 1785 0
		 1826 1786 0 1827 1782 0 1828 1730 0 1829 1726 0 1830 1722 0 1831 1716 0 1832 1757 0
		 1833 1760 0 1834 1732 0 1835 1765 0 1836 1715 0 1837 1771 0 1838 1775 0 1839 1779 0
		 1840 1804 0 1841 1778 0 1842 1774 0 1843 1770 0 1844 1714 0 1845 1767 0 1846 1734 0
		 1847 1762 0 1848 1759 0 1849 1718 0 1850 1707 0 1851 1754 0 1852 1738 0 1853 1749 0
		 1854 1710 0 1855 1746 0 1856 1742 0 1857 1740 0 1858 1744 0 1859 1708 0 1860 1751 0
		 1861 1736 0 1862 1752 0 1820 1821 0 1821 1822 0 1822 1823 0 1823 1824 0 1824 1825 0
		 1825 1875 0 1826 1827 0 1827 1828 0 1828 1829 0 1829 1830 0 1830 1831 0 1831 1832 0
		 1832 1833 0 1833 1834 0 1834 1835 0 1835 1836 0 1836 1837 0 1837 1838 0 1838 1839 0
		 1839 1840 0 1840 1841 0 1841 1842 0 1842 1843 0 1843 1844 0 1844 1845 0 1845 1846 0
		 1846 1847 0 1847 1848 0 1848 1849 0 1849 1866 0 1850 1851 0 1851 1852 0 1852 1853 0
		 1853 1854 0 1855 1856 0 1857 1858 0 1858 1960 0 1859 1860 0 1860 1861 0 1861 1862 0
		 1862 1820 0 1863 1716 0 1864 1813 0 1865 1717 0 1866 1850 0 1867 1718 0 1868 1795 0
		 1869 1719 0 1870 1723 0 1871 1727 0 1872 1731 0 1873 1783 0 1874 1787 0 1875 1826 0
		 1876 1786 0 1877 1782 0 1878 1730 0 1879 1726 0 1880 1722 0 1863 1864 0 1864 1865 0;
	setAttr ".ed[3652:3817]" 1865 1866 0 1866 1867 0 1867 1868 0 1868 1869 0 1869 1870 0
		 1870 1871 0 1871 1872 0 1872 1873 0 1873 1874 0 1874 1875 0 1875 1876 0 1876 1877 0
		 1877 1878 0 1878 1879 0 1879 1880 0 1880 1863 0 1745 1915 0 1709 1916 0 1882 1939 0
		 1710 1913 0 1882 1933 0 1746 1914 0 1884 1955 0 1881 1918 0 1882 1909 0 1881 1912 0
		 1885 1941 0 1883 1910 0 1885 1931 0 1884 1911 0 1888 1953 0 1886 1920 0 1885 1905 0
		 1886 1908 0 1889 1943 0 1887 1906 0 1889 1929 0 1888 1907 0 1892 1951 0 1890 1922 0
		 1889 1901 0 1890 1904 0 1893 1945 0 1891 1902 0 1893 1927 0 1892 1903 0 1896 1949 0
		 1894 1924 0 1893 1961 0 1894 1967 0 1897 1946 0 1895 1963 0 1897 1926 0 1896 1965 0
		 1900 1948 0 1898 1925 0 1901 1893 0 1902 1895 0 1903 1896 0 1904 1894 0 1901 1928 0
		 1902 1950 0 1903 1923 0 1904 1944 0 1905 1889 0 1906 1891 0 1907 1892 0 1908 1890 0
		 1905 1930 0 1906 1952 0 1907 1921 0 1908 1942 0 1909 1885 0 1910 1887 0 1911 1888 0
		 1912 1886 0 1909 1932 0 1910 1954 0 1911 1919 0 1912 1940 0 1913 1883 0 1914 1884 0
		 1913 1956 0 1915 1881 0 1916 1882 0 1914 1917 0 1915 1938 0 1916 1934 0 1917 1915 0
		 1918 1884 0 1919 1912 0 1920 1888 0 1921 1908 0 1922 1892 0 1923 1904 0 1924 1896 0
		 1925 1900 0 1926 1899 0 1927 1895 0 1928 1902 0 1929 1891 0 1930 1906 0 1931 1887 0
		 1932 1910 0 1933 1883 0 1934 1913 0 1917 1918 0 1918 1919 0 1919 1920 0 1920 1921 0
		 1921 1922 0 1922 1923 0 1923 1924 0 1924 1966 0 1925 1947 0 1926 1962 0 1927 1928 0
		 1928 1929 0 1929 1930 0 1930 1931 0 1931 1932 0 1932 1933 0 1933 1934 0 1917 1855 0
		 1854 1934 0 1935 1744 0 1936 1790 0 1937 1745 0 1938 1916 0 1939 1881 0 1940 1909 0
		 1941 1886 0 1942 1905 0 1943 1890 0 1944 1901 0 1945 1894 0 1946 1898 0 1947 1926 0
		 1948 1899 0 1949 1895 0 1950 1903 0 1951 1891 0 1952 1907 0 1953 1887 0 1954 1911 0
		 1955 1883 0 1956 1914 0 1957 1710 0 1958 1818 0 1959 1711 0 1960 1859 0 1935 1936 0
		 1936 1937 0 1937 1938 0 1938 1939 0 1939 1940 0 1940 1941 0 1941 1942 0 1942 1943 0
		 1943 1944 0 1944 1945 0 1945 1968 0 1946 1947 0 1947 1948 0 1948 1964 0 1949 1950 0;
	setAttr ".ed[3818:3983]" 1950 1951 0 1951 1952 0 1952 1953 0 1953 1954 0 1954 1955 0
		 1955 1956 0 1956 1957 0 1957 1958 0 1958 1959 0 1959 1960 0 1960 1935 0 1961 1897 0
		 1962 1927 0 1963 1899 0 1964 1949 0 1965 1900 0 1966 1925 0 1967 1898 0 1968 1946 0
		 1961 1962 0 1962 1963 0 1963 1964 0 1964 1965 0 1965 1966 0 1966 1967 0 1967 1968 0
		 1968 1961 0 1969 1970 0 1969 1971 0 1970 1972 0 1971 1972 0 1973 1974 0 1973 1975 0
		 1974 1976 0 1975 1976 0 1977 1978 0 1977 1979 0 1978 1980 0 1979 1980 0 1981 1982 0
		 1981 1983 0 1982 1984 0 1983 1984 0 1985 1986 0 1985 1987 0 1986 1988 0 1987 1988 0
		 1989 1990 0 1989 1991 0 1990 1992 0 1991 1992 0 1993 1994 0 1993 1995 0 1994 1996 0
		 1995 1996 0 1997 1998 0 1997 1999 0 1998 2000 0 1999 2000 0 2001 2002 0 2001 2003 0
		 2002 2004 0 2003 2004 0 2005 2006 0 2005 2007 0 2006 2008 0 2007 2008 0 2009 2010 0
		 2009 2011 0 2010 2012 0 2011 2012 0 2013 2014 0 2013 2015 0 2014 2016 0 2015 2016 0
		 2017 2018 0 2017 2019 0 2018 2020 0 2019 2020 0 2021 2022 0 2021 2023 0 2022 2024 0
		 2023 2024 0 2025 2026 0 2025 2027 0 2026 2028 0 2027 2028 0 2029 2030 0 2029 2031 0
		 2030 2032 0 2031 2032 0 2033 2034 0 2033 2035 0 2034 2036 0 2035 2036 0 2037 2038 0
		 2037 2039 0 2038 2040 0 2039 2040 0 2041 2042 0 2041 2043 0 2042 2044 0 2043 2044 0
		 2045 2046 0 2045 2047 0 2046 2048 0 2047 2048 0 2049 2050 0 2049 2051 0 2050 2052 0
		 2051 2052 0 2053 2054 0 2053 2055 0 2054 2056 0 2055 2056 0 2057 2058 0 2057 2059 0
		 2058 2060 0 2059 2060 0 2061 2062 0 2061 2063 0 2062 2064 0 2063 2064 0 2065 2174 0
		 2067 2155 0 2065 2181 0 2066 2211 0 2067 2113 0 2068 2114 0 2071 2109 0 2072 2112 0
		 2069 2151 0 2070 2215 0 2071 2178 0 2072 2220 0 2065 2224 0 2066 2226 0 2068 2228 0
		 2067 2230 0 2073 2168 0 2074 2205 0 2076 2161 0 2073 2197 0 2077 2117 0 2078 2120 0
		 2079 2119 0 2080 2118 0 2077 2173 0 2078 2210 0 2079 2156 0 2080 2192 0 2081 2182 0
		 2081 2241 0 2084 2191 0 2082 2231 0 2085 2183 0 2085 2240 0 2088 2190 0 2086 2232 0
		 2089 2184 0 2089 2239 0 2092 2189 0 2090 2233 0 2093 2125 0 2094 2128 0 2095 2127 0;
	setAttr ".ed[3984:4149]" 2096 2126 0 2093 2170 0 2094 2207 0 2095 2159 0 2096 2195 0
		 2097 2111 0 2098 2110 0 2099 2115 0 2100 2116 0 2097 2153 0 2098 2213 0 2099 2176 0
		 2100 2222 0 2101 2108 0 2102 2107 0 2101 2180 0 2102 2217 0 2103 2149 0 2104 2218 0
		 2105 2104 0 2106 2103 0 2105 2150 0 2106 2216 0 2107 2179 0 2108 2219 0 2109 2099 0
		 2110 2070 0 2111 2069 0 2112 2100 0 2109 2214 0 2110 2152 0 2111 2221 0 2112 2177 0
		 2113 2097 0 2114 2098 0 2115 2066 0 2116 2065 0 2113 2154 0 2114 2212 0 2115 2175 0
		 2116 2223 0 2117 2121 0 2118 2124 0 2119 2123 0 2120 2122 0 2117 2193 0 2118 2157 0
		 2119 2209 0 2120 2172 0 2121 2093 0 2122 2094 0 2123 2095 0 2124 2096 0 2121 2171 0
		 2122 2208 0 2123 2158 0 2124 2194 0 2125 2073 0 2126 2076 0 2127 2075 0 2128 2074 0
		 2125 2196 0 2126 2160 0 2127 2206 0 2128 2169 0 2085 2089 0 2087 2091 0 2088 2092 0
		 2086 2090 0 2081 2085 0 2083 2087 0 2084 2088 0 2082 2086 0 2065 2081 0 2077 2083 0
		 2080 2084 0 2067 2082 0 2073 2129 0 2074 2130 0 2129 2167 0 2075 2131 0 2130 2204 0
		 2076 2132 0 2132 2162 0 2129 2198 0 2129 2133 0 2130 2134 0 2133 2166 0 2131 2135 0
		 2134 2203 0 2132 2136 0 2136 2163 0 2133 2199 0 2133 2137 0 2134 2138 0 2137 2165 0
		 2135 2139 0 2138 2202 0 2136 2140 0 2140 2164 0 2137 2200 0 2089 2141 0 2090 2142 0
		 2141 2185 0 2091 2143 0 2141 2238 0 2092 2144 0 2144 2188 0 2142 2234 0 2141 2145 0
		 2142 2146 0 2145 2186 0 2143 2147 0 2145 2237 0 2144 2148 0 2148 2187 0 2146 2235 0
		 2149 2104 0 2150 2106 0 2151 2070 0 2152 2111 0 2153 2098 0 2154 2114 0 2155 2068 0
		 2156 2080 0 2157 2119 0 2158 2124 0 2159 2096 0 2160 2127 0 2161 2075 0 2162 2131 0
		 2163 2135 0 2164 2139 0 2165 2138 0 2166 2134 0 2167 2130 0 2168 2074 0 2169 2125 0
		 2170 2094 0 2171 2122 0 2172 2117 0 2173 2078 0 2174 2066 0 2175 2116 0 2176 2100 0
		 2177 2109 0 2178 2072 0 2179 2108 0 2180 2102 0 2149 2150 0 2151 2152 0 2152 2153 0
		 2153 2154 0 2154 2155 0 2155 2229 0 2156 2157 0 2157 2158 0 2158 2159 0 2159 2160 0
		 2160 2161 0 2161 2162 0 2162 2163 0 2163 2164 0 2164 2201 0 2165 2166 0 2166 2167 0;
	setAttr ".ed[4150:4315]" 2167 2168 0 2168 2169 0 2169 2170 0 2170 2171 0 2171 2172 0
		 2172 2173 0 2173 2225 0 2174 2175 0 2175 2176 0 2176 2177 0 2177 2178 0 2179 2180 0
		 2181 2067 0 2182 2082 0 2183 2086 0 2184 2090 0 2185 2142 0 2186 2146 0 2187 2147 0
		 2188 2143 0 2189 2091 0 2190 2087 0 2191 2083 0 2192 2077 0 2193 2118 0 2194 2121 0
		 2195 2093 0 2196 2126 0 2197 2076 0 2198 2132 0 2199 2136 0 2200 2140 0 2201 2165 0
		 2202 2139 0 2203 2135 0 2204 2131 0 2205 2075 0 2206 2128 0 2207 2095 0 2208 2123 0
		 2209 2120 0 2210 2079 0 2211 2068 0 2212 2115 0 2213 2099 0 2214 2110 0 2215 2071 0
		 2216 2107 0 2217 2103 0 2218 2101 0 2219 2105 0 2220 2069 0 2221 2112 0 2222 2097 0
		 2223 2113 0 2181 2182 0 2182 2183 0 2183 2184 0 2184 2185 0 2185 2186 0 2186 2236 0
		 2187 2188 0 2188 2189 0 2189 2190 0 2190 2191 0 2191 2192 0 2192 2193 0 2193 2194 0
		 2194 2195 0 2195 2196 0 2196 2197 0 2197 2198 0 2198 2199 0 2199 2200 0 2200 2201 0
		 2201 2202 0 2202 2203 0 2203 2204 0 2204 2205 0 2205 2206 0 2206 2207 0 2207 2208 0
		 2208 2209 0 2209 2210 0 2210 2227 0 2211 2212 0 2212 2213 0 2213 2214 0 2214 2215 0
		 2216 2217 0 2218 2219 0 2220 2221 0 2221 2222 0 2222 2223 0 2223 2181 0 2224 2077 0
		 2225 2174 0 2226 2078 0 2227 2211 0 2228 2079 0 2229 2156 0 2230 2080 0 2231 2084 0
		 2232 2088 0 2233 2092 0 2234 2144 0 2235 2148 0 2236 2187 0 2237 2147 0 2238 2143 0
		 2239 2091 0 2240 2087 0 2241 2083 0 2224 2225 0 2225 2226 0 2226 2227 0 2227 2228 0
		 2228 2229 0 2229 2230 0 2230 2231 0 2231 2232 0 2232 2233 0 2233 2234 0 2234 2235 0
		 2235 2236 0 2236 2237 0 2237 2238 0 2238 2239 0 2239 2240 0 2240 2241 0 2241 2224 0
		 2106 2276 0 2070 2277 0 2071 2274 0 2243 2294 0 2107 2275 0 2242 2279 0 2243 2270 0
		 2242 2273 0 2244 2271 0 2246 2292 0 2245 2272 0 2247 2281 0 2246 2266 0 2247 2269 0
		 2248 2267 0 2250 2290 0 2249 2268 0 2251 2283 0 2250 2262 0 2251 2265 0 2252 2263 0
		 2254 2288 0 2253 2264 0 2255 2285 0 2254 2296 0 2255 2301 0 2256 2298 0 2258 2287 0
		 2257 2299 0 2259 2286 0 2262 2254 0 2263 2256 0 2264 2257 0 2265 2255 0 2262 2289 0;
	setAttr ".ed[4316:4481]" 2264 2284 0 2266 2250 0 2267 2252 0 2268 2253 0 2269 2251 0
		 2266 2291 0 2268 2282 0 2270 2246 0 2271 2248 0 2272 2249 0 2273 2247 0 2270 2293 0
		 2272 2280 0 2274 2244 0 2275 2245 0 2276 2242 0 2277 2243 0 2275 2278 0 2277 2295 0
		 2278 2276 0 2279 2245 0 2280 2273 0 2281 2249 0 2282 2269 0 2283 2253 0 2284 2265 0
		 2285 2257 0 2286 2261 0 2287 2260 0 2288 2256 0 2289 2263 0 2290 2252 0 2291 2267 0
		 2292 2248 0 2293 2271 0 2294 2244 0 2295 2274 0 2278 2279 0 2279 2280 0 2280 2281 0
		 2281 2282 0 2282 2283 0 2283 2284 0 2284 2285 0 2285 2300 0 2287 2297 0 2288 2289 0
		 2289 2290 0 2290 2291 0 2291 2292 0 2292 2293 0 2293 2294 0 2294 2295 0 2278 2216 0
		 2215 2295 0 2069 2302 0 2150 2329 0 2070 2328 0 2276 2327 0 2243 2326 0 2273 2325 0
		 2246 2324 0 2269 2323 0 2250 2322 0 2265 2321 0 2254 2320 0 2258 2318 0 2286 2317 0
		 2261 2316 0 2257 2314 0 2263 2313 0 2253 2312 0 2267 2311 0 2249 2310 0 2271 2309 0
		 2245 2308 0 2274 2307 0 2107 2306 0 2178 2305 0 2108 2304 0 2219 2303 0 2296 2258 0
		 2297 2288 0 2298 2260 0 2299 2261 0 2300 2286 0 2301 2259 0 2296 2297 0 2297 2298 0
		 2298 2315 0 2299 2300 0 2300 2301 0 2301 2319 0 2302 2105 0 2303 2220 0 2304 2072 0
		 2305 2179 0 2306 2071 0 2307 2275 0 2308 2244 0 2309 2272 0 2310 2248 0 2311 2268 0
		 2312 2252 0 2313 2264 0 2314 2256 0 2315 2299 0 2316 2260 0 2317 2287 0 2318 2259 0
		 2319 2296 0 2320 2255 0 2321 2262 0 2322 2251 0 2323 2266 0 2324 2247 0 2325 2270 0
		 2326 2242 0 2327 2277 0 2328 2106 0 2329 2151 0 2302 2303 1 2303 2304 1 2304 2305 1
		 2305 2306 1 2306 2307 1 2307 2308 1 2308 2309 1 2309 2310 1 2310 2311 1 2311 2312 1
		 2312 2313 1 2313 2314 1 2314 2315 1 2315 2316 1 2316 2317 1 2317 2318 1 2318 2319 1
		 2319 2320 1 2320 2321 1 2321 2322 1 2322 2323 1 2323 2324 1 2324 2325 1 2325 2326 1
		 2326 2327 1 2327 2328 1 2328 2329 1 2329 2302 1 2330 2331 0 2330 2332 0 2331 2333 0
		 2332 2333 0 2334 2335 0 2334 2336 0 2335 2337 0 2336 2337 0 2338 2339 0 2338 2340 0
		 2339 2341 0 2340 2341 0 2342 2343 0 2342 2344 0 2343 2345 0 2344 2345 0 2346 2347 0;
	setAttr ".ed[4482:4647]" 2346 2348 0 2347 2349 0 2348 2349 0 2350 2351 0 2350 2352 0
		 2351 2353 0 2352 2353 0 2354 2355 0 2354 2356 0 2355 2357 0 2356 2357 0 2358 2359 0
		 2358 2360 0 2359 2361 0 2360 2361 0 2362 2363 0 2362 2364 0 2363 2365 0 2364 2365 0
		 2366 2367 0 2366 2368 0 2367 2369 0 2368 2369 0 2370 2371 0 2370 2372 0 2371 2373 0
		 2372 2373 0 2374 2375 0 2374 2376 0 2375 2377 0 2376 2377 0 2378 2379 0 2378 2380 0
		 2379 2381 0 2380 2381 0 2382 2383 0 2382 2384 0 2383 2385 0 2384 2385 0 2386 2387 0
		 2386 2388 0 2387 2389 0 2388 2389 0 2390 2391 0 2390 2392 0 2391 2393 0 2392 2393 0
		 2394 2395 0 2394 2396 0 2395 2397 0 2396 2397 0 2398 2399 0 2398 2400 0 2399 2401 0
		 2400 2401 0 2402 2403 0 2402 2404 0 2403 2405 0 2404 2405 0 2406 2407 0 2406 2408 0
		 2407 2409 0 2408 2409 0 2410 2411 0 2410 2412 0 2411 2413 0 2412 2413 0 2414 2415 0
		 2414 2416 0 2415 2417 0 2416 2417 0 2418 2419 0 2418 2420 0 2419 2421 0 2420 2421 0
		 2422 2423 0 2422 2424 0 2423 2425 0 2424 2425 0 2426 2427 0 2426 2428 0 2427 2429 0
		 2428 2429 0 2430 2431 0 2430 2432 0 2431 2433 0 2432 2433 0 2434 2435 0 2434 2436 0
		 2435 2437 0 2436 2437 0 2438 2439 0 2438 2440 0 2439 2441 0 2440 2441 0 2442 2443 0
		 2442 2444 0 2443 2445 0 2444 2445 0 2446 2447 0 2446 2448 0 2447 2449 0 2448 2449 0
		 2450 2451 0 2450 2452 0 2451 2453 0 2452 2453 0 2454 2455 0 2454 2456 0 2455 2457 0
		 2456 2457 0 2458 2582 0 2460 2563 0 2458 2592 0 2459 2622 0 2460 2518 0 2461 2519 0
		 2462 2510 0 2463 2511 0 2462 2590 0 2463 2630 0 2464 2555 0 2465 2633 0 2466 2713 0
		 2467 2715 0 2468 2514 0 2469 2517 0 2466 2559 0 2467 2626 0 2468 2586 0 2469 2637 0
		 2458 2641 0 2459 2643 0 2461 2645 0 2460 2647 0 2470 2576 0 2471 2616 0 2473 2569 0
		 2470 2608 0 2474 2522 0 2475 2525 0 2476 2524 0 2477 2523 0 2474 2581 0 2475 2621 0
		 2476 2564 0 2477 2603 0 2478 2593 0 2478 2658 0 2481 2602 0 2479 2648 0 2482 2594 0
		 2482 2657 0 2485 2601 0 2483 2649 0 2486 2595 0 2486 2656 0 2489 2600 0 2487 2650 0
		 2490 2530 0 2491 2533 0 2492 2532 0 2493 2531 0 2490 2578 0 2491 2618 0 2492 2567 0;
	setAttr ".ed[4648:4813]" 2493 2606 0 2494 2516 0 2495 2515 0 2496 2520 0 2497 2521 0
		 2494 2561 0 2495 2624 0 2496 2584 0 2497 2639 0 2498 2509 0 2499 2508 0 2500 2512 0
		 2501 2513 0 2498 2588 0 2499 2628 0 2500 2557 0 2501 2635 0 2502 2591 0 2503 2631 0
		 2504 2554 0 2505 2632 0 2506 2501 0 2507 2500 0 2508 2735 0 2509 2737 0 2506 2558 0
		 2507 2627 0 2508 2587 0 2509 2636 0 2510 2498 0 2511 2499 0 2512 2464 0 2513 2465 0
		 2510 2589 0 2511 2629 0 2512 2556 0 2513 2634 0 2464 2504 0 2503 2463 0 2502 2462 0
		 2465 2505 0 2514 2496 0 2515 2467 0 2516 2466 0 2517 2497 0 2514 2625 0 2515 2560 0
		 2516 2638 0 2517 2585 0 2518 2494 0 2519 2495 0 2520 2459 0 2521 2458 0 2518 2562 0
		 2519 2623 0 2520 2583 0 2521 2640 0 2522 2526 0 2523 2529 0 2524 2528 0 2525 2527 0
		 2522 2604 0 2523 2565 0 2524 2620 0 2525 2580 0 2526 2490 0 2527 2491 0 2528 2492 0
		 2529 2493 0 2526 2579 0 2527 2619 0 2528 2566 0 2529 2605 0 2530 2470 0 2531 2473 0
		 2532 2472 0 2533 2471 0 2530 2607 0 2531 2568 0 2532 2617 0 2533 2577 0 2482 2486 0
		 2484 2488 0 2485 2489 0 2483 2487 0 2478 2482 0 2480 2484 0 2481 2485 0 2479 2483 0
		 2458 2478 0 2474 2480 0 2477 2481 0 2460 2479 0 2470 2534 0 2471 2535 0 2534 2575 0
		 2472 2536 0 2535 2615 0 2473 2537 0 2537 2570 0 2534 2609 0 2534 2538 0 2535 2539 0
		 2538 2574 0 2536 2540 0 2539 2614 0 2537 2541 0 2541 2571 0 2538 2610 0 2538 2542 0
		 2539 2543 0 2542 2573 0 2540 2544 0 2543 2613 0 2541 2545 0 2545 2572 0 2542 2611 0
		 2486 2546 0 2487 2547 0 2546 2596 0 2488 2548 0 2546 2655 0 2489 2549 0 2549 2599 0
		 2547 2651 0 2546 2550 0 2547 2551 0 2550 2597 0 2548 2552 0 2550 2654 0 2549 2553 0
		 2553 2598 0 2551 2652 0 2554 2505 0 2555 2465 0 2556 2513 0 2557 2501 0 2558 2507 0
		 2559 2467 0 2560 2516 0 2561 2495 0 2562 2519 0 2563 2461 0 2564 2477 0 2565 2524 0
		 2566 2529 0 2567 2493 0 2568 2532 0 2569 2472 0 2570 2536 0 2571 2540 0 2572 2544 0
		 2573 2543 0 2574 2539 0 2575 2535 0 2576 2471 0 2577 2530 0 2578 2491 0 2579 2527 0
		 2580 2522 0 2581 2475 0 2582 2459 0 2583 2521 0 2584 2497 0 2585 2514 0 2586 2469 0;
	setAttr ".ed[4814:4979]" 2587 2509 0 2588 2499 0 2589 2511 0 2590 2463 0 2591 2503 0
		 2554 2555 0 2555 2556 0 2556 2557 0 2557 2558 0 2558 2714 0 2559 2560 0 2560 2561 0
		 2561 2562 0 2562 2563 0 2563 2646 0 2564 2565 0 2565 2566 0 2566 2567 0 2567 2568 0
		 2568 2569 0 2569 2570 0 2570 2571 0 2571 2572 0 2572 2612 0 2573 2574 0 2574 2575 0
		 2575 2576 0 2576 2577 0 2577 2578 0 2578 2579 0 2579 2580 0 2580 2581 0 2581 2642 0
		 2582 2583 0 2583 2584 0 2584 2585 0 2585 2586 0 2586 2736 0 2587 2588 0 2588 2589 0
		 2589 2590 0 2590 2591 0 2592 2460 0 2593 2479 0 2594 2483 0 2595 2487 0 2596 2547 0
		 2597 2551 0 2598 2552 0 2599 2548 0 2600 2488 0 2601 2484 0 2602 2480 0 2603 2474 0
		 2604 2523 0 2605 2526 0 2606 2490 0 2607 2531 0 2608 2473 0 2609 2537 0 2610 2541 0
		 2611 2545 0 2612 2573 0 2613 2544 0 2614 2540 0 2615 2536 0 2616 2472 0 2617 2533 0
		 2618 2492 0 2619 2528 0 2620 2525 0 2621 2476 0 2622 2461 0 2623 2520 0 2624 2496 0
		 2625 2515 0 2626 2468 0 2627 2508 0 2628 2500 0 2629 2512 0 2630 2464 0 2631 2504 0
		 2632 2502 0 2633 2462 0 2634 2510 0 2635 2498 0 2636 2506 0 2637 2466 0 2638 2517 0
		 2639 2494 0 2640 2518 0 2592 2593 0 2593 2594 0 2594 2595 0 2595 2596 0 2596 2597 0
		 2597 2653 0 2598 2599 0 2599 2600 0 2600 2601 0 2601 2602 0 2602 2603 0 2603 2604 0
		 2604 2605 0 2605 2606 0 2606 2607 0 2607 2608 0 2608 2609 0 2609 2610 0 2610 2611 0
		 2611 2612 0 2612 2613 0 2613 2614 0 2614 2615 0 2615 2616 0 2616 2617 0 2617 2618 0
		 2618 2619 0 2619 2620 0 2620 2621 0 2621 2644 0 2622 2623 0 2623 2624 0 2624 2625 0
		 2625 2626 0 2627 2628 0 2628 2629 0 2629 2630 0 2630 2631 0 2632 2633 0 2633 2634 0
		 2634 2635 0 2635 2636 0 2636 2738 0 2637 2638 0 2638 2639 0 2639 2640 0 2640 2592 0
		 2641 2474 0 2642 2582 0 2643 2475 0 2644 2622 0 2645 2476 0 2646 2564 0 2647 2477 0
		 2648 2481 0 2649 2485 0 2650 2489 0 2651 2549 0 2652 2553 0 2653 2598 0 2654 2552 0
		 2655 2548 0 2656 2488 0 2657 2484 0 2658 2480 0 2641 2642 0 2642 2643 0 2643 2644 0
		 2644 2645 0 2645 2646 0 2646 2647 0 2647 2648 0 2648 2649 0 2649 2650 0 2650 2651 0;
	setAttr ".ed[4980:5145]" 2651 2652 0 2652 2653 0 2653 2654 0 2654 2655 0 2655 2656 0
		 2656 2657 0 2657 2658 0 2658 2641 0 2507 2693 0 2467 2694 0 2660 2717 0 2468 2691 0
		 2660 2711 0 2508 2692 0 2662 2733 0 2659 2696 0 2660 2687 0 2659 2690 0 2663 2719 0
		 2661 2688 0 2663 2709 0 2662 2689 0 2666 2731 0 2664 2698 0 2663 2683 0 2664 2686 0
		 2667 2721 0 2665 2684 0 2667 2707 0 2666 2685 0 2670 2729 0 2668 2700 0 2667 2679 0
		 2668 2682 0 2671 2723 0 2669 2680 0 2671 2705 0 2670 2681 0 2674 2727 0 2672 2702 0
		 2671 2739 0 2672 2745 0 2675 2724 0 2673 2741 0 2675 2704 0 2674 2743 0 2678 2726 0
		 2676 2703 0 2679 2671 0 2680 2673 0 2681 2674 0 2682 2672 0 2679 2706 0 2680 2728 0
		 2681 2701 0 2682 2722 0 2683 2667 0 2684 2669 0 2685 2670 0 2686 2668 0 2683 2708 0
		 2684 2730 0 2685 2699 0 2686 2720 0 2687 2663 0 2688 2665 0 2689 2666 0 2690 2664 0
		 2687 2710 0 2688 2732 0 2689 2697 0 2690 2718 0 2691 2661 0 2692 2662 0 2691 2734 0
		 2693 2659 0 2694 2660 0 2692 2695 0 2693 2716 0 2694 2712 0 2695 2693 0 2696 2662 0
		 2697 2690 0 2698 2666 0 2699 2686 0 2700 2670 0 2701 2682 0 2702 2674 0 2703 2678 0
		 2704 2677 0 2705 2673 0 2706 2680 0 2707 2669 0 2708 2684 0 2709 2665 0 2710 2688 0
		 2711 2661 0 2712 2691 0 2695 2696 0 2696 2697 0 2697 2698 0 2698 2699 0 2699 2700 0
		 2700 2701 0 2701 2702 0 2702 2744 0 2703 2725 0 2704 2740 0 2705 2706 0 2706 2707 0
		 2707 2708 0 2708 2709 0 2709 2710 0 2710 2711 0 2711 2712 0 2695 2627 0 2626 2712 0
		 2713 2506 0 2714 2559 0 2715 2507 0 2716 2694 0 2717 2659 0 2718 2687 0 2719 2664 0
		 2720 2683 0 2721 2668 0 2722 2679 0 2723 2672 0 2724 2676 0 2725 2704 0 2726 2677 0
		 2727 2673 0 2728 2681 0 2729 2669 0 2730 2685 0 2731 2665 0 2732 2689 0 2733 2661 0
		 2734 2692 0 2735 2468 0 2736 2587 0 2737 2469 0 2738 2637 0 2713 2714 0 2714 2715 0
		 2715 2716 0 2716 2717 0 2717 2718 0 2718 2719 0 2719 2720 0 2720 2721 0 2721 2722 0
		 2722 2723 0 2723 2746 0 2724 2725 0 2725 2726 0 2726 2742 0 2727 2728 0 2728 2729 0
		 2729 2730 0 2730 2731 0 2731 2732 0 2732 2733 0 2733 2734 0 2734 2735 0 2735 2736 0;
	setAttr ".ed[5146:5311]" 2736 2737 0 2737 2738 0 2738 2713 0 2739 2675 0 2740 2705 0
		 2741 2677 0 2742 2727 0 2743 2678 0 2744 2703 0 2745 2676 0 2746 2724 0 2739 2740 0
		 2740 2741 0 2741 2742 0 2742 2743 0 2743 2744 0 2744 2745 0 2745 2746 0 2746 2739 0
		 2747 2748 0 2747 2749 0 2748 2750 0 2749 2750 0 2751 2752 0 2751 2753 0 2752 2754 0
		 2753 2754 0 2755 2756 0 2755 2757 0 2756 2758 0 2757 2758 0 2759 2760 0 2759 2761 0
		 2760 2762 0 2761 2762 0 2763 2764 0 2763 2765 0 2764 2766 0 2765 2766 0 2767 2768 0
		 2767 2769 0 2768 2770 0 2769 2770 0 2771 2772 0 2771 2773 0 2772 2774 0 2773 2774 0
		 2775 2776 0 2775 2777 0 2776 2778 0 2777 2778 0 2779 2780 0 2779 2781 0 2780 2782 0
		 2781 2782 0 2783 2784 0 2783 2785 0 2784 2786 0 2785 2786 0 2787 2788 0 2787 2789 0
		 2788 2790 0 2789 2790 0 2791 2792 0 2791 2793 0 2792 2794 0 2793 2794 0 2795 2796 0
		 2795 2797 0 2796 2798 0 2797 2798 0 2799 2800 0 2799 2801 0 2800 2802 0 2801 2802 0
		 2803 2804 0 2803 2805 0 2804 2806 0 2805 2806 0 2807 2808 0 2807 2809 0 2808 2810 0
		 2809 2810 0 2811 2812 0 2811 2813 0 2812 2814 0 2813 2814 0 2815 2816 0 2815 2817 0
		 2816 2818 0 2817 2818 0 2819 2820 0 2819 2821 0 2820 2822 0 2821 2822 0 2823 2824 0
		 2823 2825 0 2824 2826 0 2825 2826 0 2827 2828 0 2827 2829 0 2828 2830 0 2829 2830 0
		 2831 2832 0 2831 2833 0 2832 2834 0 2833 2834 0 2835 2836 0 2835 2837 0 2836 2838 0
		 2837 2838 0 2839 2840 0 2839 2841 0 2840 2842 0 2841 2842 0 2843 2844 0 2843 2845 0
		 2844 2846 0 2845 2846 0 2847 2848 0 2847 2849 0 2848 2850 0 2849 2850 0 2851 2852 0
		 2851 2853 0 2852 2854 0 2853 2854 0 2855 2856 0 2855 2857 0 2856 2858 0 2857 2858 0
		 2859 2968 0 2861 2949 0 2859 2975 0 2860 3005 0 2861 2907 0 2862 2908 0 2863 3090 0
		 2864 3092 0 2865 2903 0 2866 2906 0 2863 2945 0 2864 3009 0 2865 2972 0 2866 3014 0
		 2859 3018 0 2860 3020 0 2862 3022 0 2861 3024 0 2867 2962 0 2868 2999 0 2870 2955 0
		 2867 2991 0 2871 2911 0 2872 2914 0 2873 2913 0 2874 2912 0 2871 2967 0 2872 3004 0
		 2873 2950 0 2874 2986 0 2875 2976 0 2875 3035 0 2878 2985 0 2876 3025 0 2879 2977 0;
	setAttr ".ed[5312:5477]" 2879 3034 0 2882 2984 0 2880 3026 0 2883 2978 0 2883 3033 0
		 2886 2983 0 2884 3027 0 2887 2919 0 2888 2922 0 2889 2921 0 2890 2920 0 2887 2964 0
		 2888 3001 0 2889 2953 0 2890 2989 0 2891 2905 0 2892 2904 0 2893 2909 0 2894 2910 0
		 2891 2947 0 2892 3007 0 2893 2970 0 2894 3016 0 2895 2902 0 2896 2901 0 2895 2974 0
		 2896 3011 0 2897 2943 0 2898 3012 0 2899 2898 0 2900 2897 0 2901 3112 0 2902 3114 0
		 2899 2944 0 2900 3010 0 2901 2973 0 2902 3013 0 2903 2893 0 2904 2864 0 2905 2863 0
		 2906 2894 0 2903 3008 0 2904 2946 0 2905 3015 0 2906 2971 0 2907 2891 0 2908 2892 0
		 2909 2860 0 2910 2859 0 2907 2948 0 2908 3006 0 2909 2969 0 2910 3017 0 2911 2915 0
		 2912 2918 0 2913 2917 0 2914 2916 0 2911 2987 0 2912 2951 0 2913 3003 0 2914 2966 0
		 2915 2887 0 2916 2888 0 2917 2889 0 2918 2890 0 2915 2965 0 2916 3002 0 2917 2952 0
		 2918 2988 0 2919 2867 0 2920 2870 0 2921 2869 0 2922 2868 0 2919 2990 0 2920 2954 0
		 2921 3000 0 2922 2963 0 2879 2883 0 2881 2885 0 2882 2886 0 2880 2884 0 2875 2879 0
		 2877 2881 0 2878 2882 0 2876 2880 0 2859 2875 0 2871 2877 0 2874 2878 0 2861 2876 0
		 2867 2923 0 2868 2924 0 2923 2961 0 2869 2925 0 2924 2998 0 2870 2926 0 2926 2956 0
		 2923 2992 0 2923 2927 0 2924 2928 0 2927 2960 0 2925 2929 0 2928 2997 0 2926 2930 0
		 2930 2957 0 2927 2993 0 2927 2931 0 2928 2932 0 2931 2959 0 2929 2933 0 2932 2996 0
		 2930 2934 0 2934 2958 0 2931 2994 0 2883 2935 0 2884 2936 0 2935 2979 0 2885 2937 0
		 2935 3032 0 2886 2938 0 2938 2982 0 2936 3028 0 2935 2939 0 2936 2940 0 2939 2980 0
		 2937 2941 0 2939 3031 0 2938 2942 0 2942 2981 0 2940 3029 0 2943 2898 0 2944 2900 0
		 2945 2864 0 2946 2905 0 2947 2892 0 2948 2908 0 2949 2862 0 2950 2874 0 2951 2913 0
		 2952 2918 0 2953 2890 0 2954 2921 0 2955 2869 0 2956 2925 0 2957 2929 0 2958 2933 0
		 2959 2932 0 2960 2928 0 2961 2924 0 2962 2868 0 2963 2919 0 2964 2888 0 2965 2916 0
		 2966 2911 0 2967 2872 0 2968 2860 0 2969 2910 0 2970 2894 0 2971 2903 0 2972 2866 0
		 2973 2902 0 2974 2896 0 2943 2944 0 2944 3091 0 2945 2946 0 2946 2947 0 2947 2948 0;
	setAttr ".ed[5478:5643]" 2948 2949 0 2949 3023 0 2950 2951 0 2951 2952 0 2952 2953 0
		 2953 2954 0 2954 2955 0 2955 2956 0 2956 2957 0 2957 2958 0 2958 2995 0 2959 2960 0
		 2960 2961 0 2961 2962 0 2962 2963 0 2963 2964 0 2964 2965 0 2965 2966 0 2966 2967 0
		 2967 3019 0 2968 2969 0 2969 2970 0 2970 2971 0 2971 2972 0 2972 3113 0 2973 2974 0
		 2975 2861 0 2976 2876 0 2977 2880 0 2978 2884 0 2979 2936 0 2980 2940 0 2981 2941 0
		 2982 2937 0 2983 2885 0 2984 2881 0 2985 2877 0 2986 2871 0 2987 2912 0 2988 2915 0
		 2989 2887 0 2990 2920 0 2991 2870 0 2992 2926 0 2993 2930 0 2994 2934 0 2995 2959 0
		 2996 2933 0 2997 2929 0 2998 2925 0 2999 2869 0 3000 2922 0 3001 2889 0 3002 2917 0
		 3003 2914 0 3004 2873 0 3005 2862 0 3006 2909 0 3007 2893 0 3008 2904 0 3009 2865 0
		 3010 2901 0 3011 2897 0 3012 2895 0 3013 2899 0 3014 2863 0 3015 2906 0 3016 2891 0
		 3017 2907 0 2975 2976 0 2976 2977 0 2977 2978 0 2978 2979 0 2979 2980 0 2980 3030 0
		 2981 2982 0 2982 2983 0 2983 2984 0 2984 2985 0 2985 2986 0 2986 2987 0 2987 2988 0
		 2988 2989 0 2989 2990 0 2990 2991 0 2991 2992 0 2992 2993 0 2993 2994 0 2994 2995 0
		 2995 2996 0 2996 2997 0 2997 2998 0 2998 2999 0 2999 3000 0 3000 3001 0 3001 3002 0
		 3002 3003 0 3003 3004 0 3004 3021 0 3005 3006 0 3006 3007 0 3007 3008 0 3008 3009 0
		 3010 3011 0 3012 3013 0 3013 3115 0 3014 3015 0 3015 3016 0 3016 3017 0 3017 2975 0
		 3018 2871 0 3019 2968 0 3020 2872 0 3021 3005 0 3022 2873 0 3023 2950 0 3024 2874 0
		 3025 2878 0 3026 2882 0 3027 2886 0 3028 2938 0 3029 2942 0 3030 2981 0 3031 2941 0
		 3032 2937 0 3033 2885 0 3034 2881 0 3035 2877 0 3018 3019 0 3019 3020 0 3020 3021 0
		 3021 3022 0 3022 3023 0 3023 3024 0 3024 3025 0 3025 3026 0 3026 3027 0 3027 3028 0
		 3028 3029 0 3029 3030 0 3030 3031 0 3031 3032 0 3032 3033 0 3033 3034 0 3034 3035 0
		 3035 3018 0 2900 3070 0 2864 3071 0 3037 3094 0 2865 3068 0 3037 3088 0 2901 3069 0
		 3039 3110 0 3036 3073 0 3037 3064 0 3036 3067 0 3040 3096 0 3038 3065 0 3040 3086 0
		 3039 3066 0 3043 3108 0 3041 3075 0 3040 3060 0 3041 3063 0 3044 3098 0 3042 3061 0;
	setAttr ".ed[5644:5809]" 3044 3084 0 3043 3062 0 3047 3106 0 3045 3077 0 3044 3056 0
		 3045 3059 0 3048 3100 0 3046 3057 0 3048 3082 0 3047 3058 0 3051 3104 0 3049 3079 0
		 3048 3116 0 3049 3122 0 3052 3101 0 3050 3118 0 3052 3081 0 3051 3120 0 3055 3103 0
		 3053 3080 0 3056 3048 0 3057 3050 0 3058 3051 0 3059 3049 0 3056 3083 0 3057 3105 0
		 3058 3078 0 3059 3099 0 3060 3044 0 3061 3046 0 3062 3047 0 3063 3045 0 3060 3085 0
		 3061 3107 0 3062 3076 0 3063 3097 0 3064 3040 0 3065 3042 0 3066 3043 0 3067 3041 0
		 3064 3087 0 3065 3109 0 3066 3074 0 3067 3095 0 3068 3038 0 3069 3039 0 3068 3111 0
		 3070 3036 0 3071 3037 0 3069 3072 0 3070 3093 0 3071 3089 0 3072 3070 0 3073 3039 0
		 3074 3067 0 3075 3043 0 3076 3063 0 3077 3047 0 3078 3059 0 3079 3051 0 3080 3055 0
		 3081 3054 0 3082 3050 0 3083 3057 0 3084 3046 0 3085 3061 0 3086 3042 0 3087 3065 0
		 3088 3038 0 3089 3068 0 3072 3073 0 3073 3074 0 3074 3075 0 3075 3076 0 3076 3077 0
		 3077 3078 0 3078 3079 0 3079 3121 0 3080 3102 0 3081 3117 0 3082 3083 0 3083 3084 0
		 3084 3085 0 3085 3086 0 3086 3087 0 3087 3088 0 3088 3089 0 3072 3010 0 3009 3089 0
		 3090 2899 0 3091 2945 0 3092 2900 0 3093 3071 0 3094 3036 0 3095 3064 0 3096 3041 0
		 3097 3060 0 3098 3045 0 3099 3056 0 3100 3049 0 3101 3053 0 3102 3081 0 3103 3054 0
		 3104 3050 0 3105 3058 0 3106 3046 0 3107 3062 0 3108 3042 0 3109 3066 0 3110 3038 0
		 3111 3069 0 3112 2865 0 3113 2973 0 3114 2866 0 3115 3014 0 3090 3091 0 3091 3092 0
		 3092 3093 0 3093 3094 0 3094 3095 0 3095 3096 0 3096 3097 0 3097 3098 0 3098 3099 0
		 3099 3100 0 3100 3123 0 3101 3102 0 3102 3103 0 3103 3119 0 3104 3105 0 3105 3106 0
		 3106 3107 0 3107 3108 0 3108 3109 0 3109 3110 0 3110 3111 0 3111 3112 0 3112 3113 0
		 3113 3114 0 3114 3115 0 3115 3090 0 3116 3052 0 3117 3082 0 3118 3054 0 3119 3104 0
		 3120 3055 0 3121 3080 0 3122 3053 0 3123 3101 0 3116 3117 0 3117 3118 0 3118 3119 0
		 3119 3120 0 3120 3121 0 3121 3122 0 3122 3123 0 3123 3116 0 3124 3125 0 3124 3126 0
		 3125 3127 0 3126 3127 0 3128 3129 0 3128 3130 0 3129 3131 0 3130 3131 0 3132 3133 0;
	setAttr ".ed[5810:5975]" 3132 3134 0 3133 3135 0 3134 3135 0 3136 3137 0 3136 3138 0
		 3137 3139 0 3138 3139 0 3140 3141 0 3140 3142 0 3141 3143 0 3142 3143 0 3144 3145 0
		 3144 3146 0 3145 3147 0 3146 3147 0 3148 3149 0 3148 3150 0 3149 3151 0 3150 3151 0
		 3152 3153 0 3152 3154 0 3153 3155 0 3154 3155 0 3156 3157 0 3156 3158 0 3157 3159 0
		 3158 3159 0 3160 3161 0 3160 3162 0 3161 3163 0 3162 3163 0 3164 3165 0 3164 3166 0
		 3165 3167 0 3166 3167 0 3168 3169 0 3168 3170 0 3169 3171 0 3170 3171 0 3172 3173 0
		 3172 3174 0 3173 3175 0 3174 3175 0 3176 3177 0 3176 3178 0 3177 3179 0 3178 3179 0
		 3180 3181 0 3180 3182 0 3181 3183 0 3182 3183 0 3184 3185 0 3184 3186 0 3185 3187 0
		 3186 3187 0 3188 3189 0 3188 3190 0 3189 3191 0 3190 3191 0 3192 3193 0 3192 3194 0
		 3193 3195 0 3194 3195 0 3196 3197 0 3196 3198 0 3197 3199 0 3198 3199 0 3200 3201 0
		 3200 3202 0 3201 3203 0 3202 3203 0 3204 3205 0 3204 3206 0 3205 3207 0 3206 3207 0
		 3208 3209 0 3208 3210 0 3209 3211 0 3210 3211 0 3212 3213 0 3212 3214 0 3213 3215 0
		 3214 3215 0 3216 3217 0 3216 3218 0 3217 3219 0 3218 3219 0 3220 3329 0 3222 3310 0
		 3220 3336 0 3221 3366 0 3222 3268 0 3223 3269 0 3226 3264 0 3227 3267 0 3224 3306 0
		 3225 3370 0 3226 3333 0 3227 3375 0 3220 3379 0 3221 3381 0 3223 3383 0 3222 3385 0
		 3228 3323 0 3229 3360 0 3231 3316 0 3228 3352 0 3232 3272 0 3233 3275 0 3234 3274 0
		 3235 3273 0 3232 3328 0 3233 3365 0 3234 3311 0 3235 3347 0 3236 3337 0 3236 3396 0
		 3239 3346 0 3237 3386 0 3240 3338 0 3240 3395 0 3243 3345 0 3241 3387 0 3244 3339 0
		 3244 3394 0 3247 3344 0 3245 3388 0 3248 3280 0 3249 3283 0 3250 3282 0 3251 3281 0
		 3248 3325 0 3249 3362 0 3250 3314 0 3251 3350 0 3252 3266 0 3253 3265 0 3254 3270 0
		 3255 3271 0 3252 3308 0 3253 3368 0 3254 3331 0 3255 3377 0 3256 3263 0 3257 3262 0
		 3256 3335 0 3257 3372 0 3258 3304 0 3259 3373 0 3260 3259 0 3261 3258 0 3260 3305 0
		 3261 3371 0 3262 3334 0 3263 3374 0 3264 3254 0 3265 3225 0 3266 3224 0 3267 3255 0
		 3264 3369 0 3265 3307 0 3266 3376 0 3267 3332 0 3268 3252 0 3269 3253 0 3270 3221 0;
	setAttr ".ed[5976:6141]" 3271 3220 0 3268 3309 0 3269 3367 0 3270 3330 0 3271 3378 0
		 3272 3276 0 3273 3279 0 3274 3278 0 3275 3277 0 3272 3348 0 3273 3312 0 3274 3364 0
		 3275 3327 0 3276 3248 0 3277 3249 0 3278 3250 0 3279 3251 0 3276 3326 0 3277 3363 0
		 3278 3313 0 3279 3349 0 3280 3228 0 3281 3231 0 3282 3230 0 3283 3229 0 3280 3351 0
		 3281 3315 0 3282 3361 0 3283 3324 0 3240 3244 0 3242 3246 0 3243 3247 0 3241 3245 0
		 3236 3240 0 3238 3242 0 3239 3243 0 3237 3241 0 3220 3236 0 3232 3238 0 3235 3239 0
		 3222 3237 0 3228 3284 0 3229 3285 0 3284 3322 0 3230 3286 0 3285 3359 0 3231 3287 0
		 3287 3317 0 3284 3353 0 3284 3288 0 3285 3289 0 3288 3321 0 3286 3290 0 3289 3358 0
		 3287 3291 0 3291 3318 0 3288 3354 0 3288 3292 0 3289 3293 0 3292 3320 0 3290 3294 0
		 3293 3357 0 3291 3295 0 3295 3319 0 3292 3355 0 3244 3296 0 3245 3297 0 3296 3340 0
		 3246 3298 0 3296 3393 0 3247 3299 0 3299 3343 0 3297 3389 0 3296 3300 0 3297 3301 0
		 3300 3341 0 3298 3302 0 3300 3392 0 3299 3303 0 3303 3342 0 3301 3390 0 3304 3259 0
		 3305 3261 0 3306 3225 0 3307 3266 0 3308 3253 0 3309 3269 0 3310 3223 0 3311 3235 0
		 3312 3274 0 3313 3279 0 3314 3251 0 3315 3282 0 3316 3230 0 3317 3286 0 3318 3290 0
		 3319 3294 0 3320 3293 0 3321 3289 0 3322 3285 0 3323 3229 0 3324 3280 0 3325 3249 0
		 3326 3277 0 3327 3272 0 3328 3233 0 3329 3221 0 3330 3271 0 3331 3255 0 3332 3264 0
		 3333 3227 0 3334 3263 0 3335 3257 0 3304 3305 0 3306 3307 0 3307 3308 0 3308 3309 0
		 3309 3310 0 3310 3384 0 3311 3312 0 3312 3313 0 3313 3314 0 3314 3315 0 3315 3316 0
		 3316 3317 0 3317 3318 0 3318 3319 0 3319 3356 0 3320 3321 0 3321 3322 0 3322 3323 0
		 3323 3324 0 3324 3325 0 3325 3326 0 3326 3327 0 3327 3328 0 3328 3380 0 3329 3330 0
		 3330 3331 0 3331 3332 0 3332 3333 0 3334 3335 0 3336 3222 0 3337 3237 0 3338 3241 0
		 3339 3245 0 3340 3297 0 3341 3301 0 3342 3302 0 3343 3298 0 3344 3246 0 3345 3242 0
		 3346 3238 0 3347 3232 0 3348 3273 0 3349 3276 0 3350 3248 0 3351 3281 0 3352 3231 0
		 3353 3287 0 3354 3291 0 3355 3295 0 3356 3320 0 3357 3294 0 3358 3290 0 3359 3286 0;
	setAttr ".ed[6142:6307]" 3360 3230 0 3361 3283 0 3362 3250 0 3363 3278 0 3364 3275 0
		 3365 3234 0 3366 3223 0 3367 3270 0 3368 3254 0 3369 3265 0 3370 3226 0 3371 3262 0
		 3372 3258 0 3373 3256 0 3374 3260 0 3375 3224 0 3376 3267 0 3377 3252 0 3378 3268 0
		 3336 3337 0 3337 3338 0 3338 3339 0 3339 3340 0 3340 3341 0 3341 3391 0 3342 3343 0
		 3343 3344 0 3344 3345 0 3345 3346 0 3346 3347 0 3347 3348 0 3348 3349 0 3349 3350 0
		 3350 3351 0 3351 3352 0 3352 3353 0 3353 3354 0 3354 3355 0 3355 3356 0 3356 3357 0
		 3357 3358 0 3358 3359 0 3359 3360 0 3360 3361 0 3361 3362 0 3362 3363 0 3363 3364 0
		 3364 3365 0 3365 3382 0 3366 3367 0 3367 3368 0 3368 3369 0 3369 3370 0 3371 3372 0
		 3373 3374 0 3375 3376 0 3376 3377 0 3377 3378 0 3378 3336 0 3379 3232 0 3380 3329 0
		 3381 3233 0 3382 3366 0 3383 3234 0 3384 3311 0 3385 3235 0 3386 3239 0 3387 3243 0
		 3388 3247 0 3389 3299 0 3390 3303 0 3391 3342 0 3392 3302 0 3393 3298 0 3394 3246 0
		 3395 3242 0 3396 3238 0 3379 3380 0 3380 3381 0 3381 3382 0 3382 3383 0 3383 3384 0
		 3384 3385 0 3385 3386 0 3386 3387 0 3387 3388 0 3388 3389 0 3389 3390 0 3390 3391 0
		 3391 3392 0 3392 3393 0 3393 3394 0 3394 3395 0 3395 3396 0 3396 3379 0 3261 3431 0
		 3225 3432 0 3226 3429 0 3398 3449 0 3262 3430 0 3397 3434 0 3398 3425 0 3397 3428 0
		 3399 3426 0 3401 3447 0 3400 3427 0 3402 3436 0 3401 3421 0 3402 3424 0 3403 3422 0
		 3405 3445 0 3404 3423 0 3406 3438 0 3405 3417 0 3406 3420 0 3407 3418 0 3409 3443 0
		 3408 3419 0 3410 3440 0 3409 3451 0 3410 3456 0 3411 3453 0 3413 3442 0 3412 3454 0
		 3414 3441 0 3417 3409 0 3418 3411 0 3419 3412 0 3420 3410 0 3417 3444 0 3419 3439 0
		 3421 3405 0 3422 3407 0 3423 3408 0 3424 3406 0 3421 3446 0 3423 3437 0 3425 3401 0
		 3426 3403 0 3427 3404 0 3428 3402 0 3425 3448 0 3427 3435 0 3429 3399 0 3430 3400 0
		 3431 3397 0 3432 3398 0 3430 3433 0 3432 3450 0 3433 3431 0 3434 3400 0 3435 3428 0
		 3436 3404 0 3437 3424 0 3438 3408 0 3439 3420 0 3440 3412 0 3441 3416 0 3442 3415 0
		 3443 3411 0 3444 3418 0 3445 3407 0 3446 3422 0 3447 3403 0 3448 3426 0 3449 3399 0;
	setAttr ".ed[6308:6473]" 3450 3429 0 3433 3434 0 3434 3435 0 3435 3436 0 3436 3437 0
		 3437 3438 0 3438 3439 0 3439 3440 0 3440 3455 0 3442 3452 0 3443 3444 0 3444 3445 0
		 3445 3446 0 3446 3447 0 3447 3448 0 3448 3449 0 3449 3450 0 3433 3371 0 3370 3450 0
		 3224 3457 0 3305 3484 0 3225 3483 0 3431 3482 0 3398 3481 0 3428 3480 0 3401 3479 0
		 3424 3478 0 3405 3477 0 3420 3476 0 3409 3475 0 3413 3473 0 3441 3472 0 3416 3471 0
		 3412 3469 0 3418 3468 0 3408 3467 0 3422 3466 0 3404 3465 0 3426 3464 0 3400 3463 0
		 3429 3462 0 3262 3461 0 3333 3460 0 3263 3459 0 3374 3458 0 3451 3413 0 3452 3443 0
		 3453 3415 0 3454 3416 0 3455 3441 0 3456 3414 0 3451 3452 0 3452 3453 0 3453 3470 0
		 3454 3455 0 3455 3456 0 3456 3474 0 3457 3260 0 3458 3375 0 3459 3227 0 3460 3334 0
		 3461 3226 0 3462 3430 0 3463 3399 0 3464 3427 0 3465 3403 0 3466 3423 0 3467 3407 0
		 3468 3419 0 3469 3411 0 3470 3454 0 3471 3415 0 3472 3442 0 3473 3414 0 3474 3451 0
		 3475 3410 0 3476 3417 0 3477 3406 0 3478 3421 0 3479 3402 0 3480 3425 0 3481 3397 0
		 3482 3432 0 3483 3261 0 3484 3306 0 3457 3458 1 3458 3459 1 3459 3460 1 3460 3461 1
		 3461 3462 1 3462 3463 1 3463 3464 1 3464 3465 1 3465 3466 1 3466 3467 1 3467 3468 1
		 3468 3469 1 3469 3470 1 3470 3471 1 3471 3472 1 3472 3473 1 3473 3474 1 3474 3475 1
		 3475 3476 1 3476 3477 1 3477 3478 1 3478 3479 1 3479 3480 1 3480 3481 1 3481 3482 1
		 3482 3483 1 3483 3484 1 3484 3457 1 3485 3486 0 3485 3487 0 3486 3488 0 3487 3488 0
		 3489 3490 0 3489 3491 0 3490 3492 0 3491 3492 0 3493 3494 0 3493 3495 0 3494 3496 0
		 3495 3496 0 3497 3498 0 3497 3499 0 3498 3500 0 3499 3500 0 3501 3502 0 3501 3503 0
		 3502 3504 0 3503 3504 0 3505 3506 0 3505 3507 0 3506 3508 0 3507 3508 0 3509 3510 0
		 3509 3511 0 3510 3512 0 3511 3512 0 3513 3514 0 3513 3515 0 3514 3516 0 3515 3516 0
		 3517 3518 0 3517 3519 0 3518 3520 0 3519 3520 0 3521 3522 0 3521 3523 0 3522 3524 0
		 3523 3524 0 3525 3526 0 3525 3527 0 3526 3528 0 3527 3528 0 3529 3530 0 3529 3531 0
		 3530 3532 0 3531 3532 0 3533 3534 0 3533 3535 0 3534 3536 0 3535 3536 0 3537 3538 0;
	setAttr ".ed[6474:6548]" 3537 3539 0 3538 3540 0 3539 3540 0 3541 3542 0 3541 3543 0
		 3542 3544 0 3543 3544 0 3545 3546 0 3545 3547 0 3546 3548 0 3547 3548 0 3549 3550 0
		 3549 3551 0 3550 3552 0 3551 3552 0 3553 3554 0 3553 3555 0 3554 3556 0 3555 3556 0
		 3557 3558 0 3557 3559 0 3558 3560 0 3559 3560 0 3561 3562 0 3561 3563 0 3562 3564 0
		 3563 3564 0 3565 3566 0 3565 3567 0 3566 3568 0 3567 3568 0 3569 3570 0 3569 3571 0
		 3570 3572 0 3571 3572 0 3573 3574 0 3573 3575 0 3574 3576 0 3575 3576 0 3577 3578 0
		 3577 3579 0 3578 3580 0 3579 3580 0 3581 3582 0 3581 3583 0 3582 3584 0 3583 3584 0
		 3585 3586 0 3585 3587 0 3586 3588 0 3587 3588 0 3589 3590 0 3589 3591 0 3590 3592 0
		 3591 3592 0 3593 3594 0 3593 3595 0 3594 3596 0 3595 3596 0 3597 3598 0 3597 3599 0
		 3598 3600 0 3599 3600 0 3601 3602 0 3601 3603 0 3602 3604 0 3603 3604 0 3605 3606 0
		 3605 3607 0 3606 3608 0 3607 3608 0 3609 3610 0 3609 3611 0 3610 3612 0 3611 3612 0;
	setAttr -s 3112 -ch 12348 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 508 472 -32 -472
		mu 0 4 0 1 2 3
		f 4 512 476 -27 -476
		mu 0 4 4 5 6 7
		f 4 454 448 8 -448
		mu 0 4 8 9 10 11
		f 4 -15 -30 -34 28
		mu 0 4 12 13 14 15
		f 4 511 475 -26 -475
		mu 0 4 16 4 7 17
		f 4 -463 468 -35 29
		mu 0 4 13 18 19 14
		f 4 467 510 474 -462
		mu 0 4 20 21 16 17
		f 4 194 -574 577 -69
		mu 0 4 22 23 24 25
		f 4 192 -33 -194 -67
		mu 0 4 26 27 28 29
		f 4 191 -460 465 -66
		mu 0 4 30 31 32 33
		f 4 190 -16 -192 -65
		mu 0 4 34 35 31 30
		f 4 189 -11 -191 -64
		mu 0 4 36 37 35 34
		f 4 431 -17 -9 11
		mu 0 4 38 39 11 10
		f 4 -581 584 -68 193
		mu 0 4 28 40 41 29
		f 4 -188 -197 -70 195
		mu 0 4 42 43 44 45
		f 4 168 -83 -170 -179
		mu 0 4 46 47 48 49
		f 4 -453 -115 82 -331
		mu 0 4 50 51 48 47
		f 4 -269 -271 -63 188
		mu 0 4 52 53 54 55
		f 4 537 -73 81 59
		mu 0 4 56 57 58 59
		f 4 22 63 -22 26
		mu 0 4 6 36 34 7
		f 4 21 64 -21 25
		mu 0 4 7 34 30 17
		f 4 20 65 466 461
		mu 0 4 17 30 33 20
		f 4 19 66 -37 31
		mu 0 4 2 26 29 3
		f 4 585 582 36 67
		mu 0 4 41 60 3 29
		f 4 18 68 578 575
		mu 0 4 61 22 25 62
		f 4 -49 52 -81 -84
		mu 0 4 63 64 65 66
		f 4 538 -104 101 72
		mu 0 4 57 67 68 58
		f 4 169 -105 -171 -180
		mu 0 4 49 48 69 70
		f 4 -71 -61 74 78
		mu 0 4 71 72 73 74
		f 4 75 -102 -103 100
		mu 0 4 66 58 68 75
		f 4 76 -82 -76 80
		mu 0 4 65 59 58 66
		f 4 -47 47 -85 86
		mu 0 4 76 77 78 79
		f 4 -94 87 84 99
		mu 0 4 80 81 79 78
		f 4 -62 70 79 102
		mu 0 4 68 72 71 75
		f 4 -50 53 108 -74
		mu 0 4 82 83 84 85
		f 4 -72 73 109 -106
		mu 0 4 86 82 85 87
		f 4 445 -118 -111 112
		mu 0 4 88 89 90 91
		f 4 113 -452 458 452
		mu 0 4 50 91 92 51
		f 4 119 -88 -93 98
		mu 0 4 93 79 81 94
		f 4 120 -218 -219 121
		mu 0 4 95 96 97 93
		f 4 -126 -125 -124 -123
		mu 0 4 98 99 100 101
		f 4 -129 -128 -127 122
		mu 0 4 101 102 103 98
		f 4 569 -133 -132 -562
		mu 0 4 104 105 106 107
		f 4 -547 554 -134 129
		mu 0 4 108 109 110 111
		f 4 -138 -122 -137 131
		mu 0 4 106 95 93 107
		f 4 -450 456 -140 -139
		mu 0 4 112 113 114 90
		f 4 -173 -182 -143 140
		mu 0 4 115 116 117 118
		f 4 -148 -147 -146 -145
		mu 0 4 119 120 121 103
		f 4 -150 146 -149 134
		mu 0 4 122 121 120 123
		f 4 455 449 116 -449
		mu 0 4 9 113 112 10
		f 4 172 151 -174 -183
		mu 0 4 116 115 124 125
		f 4 173 42 -175 -184
		mu 0 4 125 124 126 127
		f 4 556 549 -176 -549
		mu 0 4 128 129 130 131
		f 4 571 564 -177 -564
		mu 0 4 132 133 134 135
		f 4 540 504 60 -504
		mu 0 4 136 137 73 72
		f 4 176 45 69 -187
		mu 0 4 135 134 45 44
		f 4 136 -99 -92 -159
		mu 0 4 107 93 94 138
		f 4 126 -161 -97 -160
		mu 0 4 98 103 139 140
		f 4 553 546 -163 -546
		mu 0 4 141 109 108 142
		f 4 568 561 158 -561
		mu 0 4 143 104 107 138
		f 4 149 161 -89 -164
		mu 0 4 121 122 144 145
		f 4 145 163 -98 160
		mu 0 4 103 121 145 139
		f 4 125 159 -96 -165
		mu 0 4 99 98 140 146
		f 4 -95 -100 150 164
		mu 0 4 146 80 78 99
		f 4 539 503 61 103
		mu 0 4 67 136 72 68
		f 4 142 -181 170 -167
		mu 0 4 118 117 70 69
		f 4 128 165 105 167
		mu 0 4 102 101 86 87
		f 4 110 139 457 451
		mu 0 4 91 90 114 92
		f 3 117 118 138
		mu 0 3 90 89 112
		f 4 372 289 178 -382
		mu 0 4 147 148 46 49
		f 4 365 179 -367 -370
		mu 0 4 149 49 70 150
		f 4 171 -371 366 180
		mu 0 4 117 151 150 70
		f 4 -372 -172 181 -144
		mu 0 4 119 151 117 116
		f 4 147 143 182 -153
		mu 0 4 120 119 116 125
		f 4 148 152 183 -154
		mu 0 4 123 120 125 127
		f 4 133 555 548 -155
		mu 0 4 111 110 128 131
		f 4 570 563 -156 132
		mu 0 4 105 132 135 106
		f 4 155 186 177 137
		mu 0 4 106 135 44 95
		f 4 -3 -121 -178 196
		mu 0 4 43 96 95 44
		f 4 228 -200 -220 -239
		mu 0 4 152 153 154 155
		f 4 219 -202 -221 -230
		mu 0 4 155 154 156 157
		f 4 220 -559 566 -231
		mu 0 4 157 156 158 159
		f 4 221 -544 551 -232
		mu 0 4 160 161 162 163
		f 4 222 -208 -224 -233
		mu 0 4 164 165 166 167
		f 4 223 -210 -225 -234
		mu 0 4 167 166 168 169
		f 4 224 -212 -226 -235
		mu 0 4 169 168 170 171
		f 4 225 -214 -227 -236
		mu 0 4 171 170 172 173
		f 4 226 -216 -228 -237
		mu 0 4 173 172 174 175
		f 4 227 -217 -229 -238
		mu 0 4 175 174 153 152
		f 4 -86 -87 -120 218
		mu 0 4 97 76 79 93
		f 4 197 229 -201 91
		mu 0 4 94 155 157 138
		f 4 200 230 567 560
		mu 0 4 138 157 159 143
		f 4 202 231 552 545
		mu 0 4 142 160 163 141
		f 4 204 232 -207 88
		mu 0 4 144 164 167 145
		f 4 206 233 -209 97
		mu 0 4 145 167 169 139
		f 4 208 234 -211 96
		mu 0 4 139 169 171 140
		f 4 210 235 -213 95
		mu 0 4 140 171 173 146
		f 4 212 236 -215 94
		mu 0 4 146 173 175 80
		f 4 214 237 -199 93
		mu 0 4 80 175 152 81
		f 4 198 238 -198 92
		mu 0 4 81 152 155 94
		f 4 -78 239 -244 -79
		mu 0 4 74 176 177 71
		f 4 542 -265 -266 -506
		mu 0 4 178 179 180 181
		f 4 240 83 -101 241
		mu 0 4 182 63 66 75
		f 4 242 -242 -80 243
		mu 0 4 177 182 75 71
		f 4 245 -247 -245 124
		mu 0 4 99 183 184 100
		f 4 541 505 -248 -505
		mu 0 4 137 178 181 73
		f 4 247 250 -250 -75
		mu 0 4 73 181 185 74
		f 4 249 -253 -252 77
		mu 0 4 74 185 186 176
		f 4 253 256 -256 -48
		mu 0 4 77 187 188 78
		f 4 255 257 -246 -151
		mu 0 4 78 188 183 99
		f 4 -258 -262 -259 259
		mu 0 4 183 188 189 190
		f 3 -257 -261 261
		mu 0 3 188 187 189
		f 4 -260 -263 263 246
		mu 0 4 183 190 191 184
		f 4 -255 252 -251 265
		mu 0 4 180 186 185 181
		f 4 -275 -278 -268 270
		mu 0 4 53 192 193 54
		f 4 513 477 -28 -477
		mu 0 4 5 194 195 6
		f 4 -23 27 276 273
		mu 0 4 36 6 195 196
		f 4 -8 -190 -274 277
		mu 0 4 197 37 36 196
		f 4 291 -381 -293 -296
		mu 0 4 198 199 200 201
		f 4 294 -378 -291 -299
		mu 0 4 202 203 147 204
		f 4 293 -499 535 -298
		mu 0 4 205 206 207 208
		f 4 292 -380 -294 -297
		mu 0 4 201 200 206 205
		f 4 280 295 -282 -53
		mu 0 4 64 198 201 65
		f 4 281 296 -286 -77
		mu 0 4 65 201 205 59
		f 4 285 297 536 -60
		mu 0 4 59 205 208 56
		f 4 283 298 -285 -54
		mu 0 4 83 202 204 84
		f 4 -350 -349 -347 -345
		mu 0 4 209 210 211 212
		f 4 335 -323 315 -339
		mu 0 4 213 214 215 216
		f 4 -316 -322 314 -340
		mu 0 4 216 215 217 218
		f 4 -315 -321 -324 -341
		mu 0 4 218 217 219 220
		f 4 323 -320 -325 -328
		mu 0 4 220 219 221 222
		f 4 443 -319 -326 -438
		mu 0 4 223 224 225 226
		f 4 -59 -330 325 -318
		mu 0 4 55 227 226 225
		f 4 309 -189 317 311
		mu 0 4 228 52 55 225
		f 4 444 439 -312 318
		mu 0 4 224 229 228 225
		f 4 313 306 -313 319
		mu 0 4 219 230 231 221
		f 4 -303 305 -314 320
		mu 0 4 217 232 230 219
		f 4 -302 304 302 321
		mu 0 4 215 233 232 217
		f 4 316 303 301 322
		mu 0 4 214 234 233 215
		f 4 -355 353 -352 348
		mu 0 4 210 235 236 211
		f 4 362 361 359 357
		mu 0 4 237 238 239 240
		f 4 326 331 -290 -333
		mu 0 4 241 242 46 148
		f 4 520 -338 340 -484
		mu 0 4 243 244 218 220
		f 4 519 483 327 -483
		mu 0 4 245 243 220 222
		f 4 517 481 437 -481
		mu 0 4 246 247 223 226
		f 4 -480 516 480 329
		mu 0 4 227 248 246 226
		f 4 50 330 54 299
		mu 0 4 249 50 47 250
		f 4 524 -365 344 -488
		mu 0 4 251 252 209 212
		f 4 522 486 338 336
		mu 0 4 253 254 213 216
		f 4 521 -337 339 337
		mu 0 4 244 253 216 218
		f 4 341 -55 -169 -332
		mu 0 4 242 250 47 46
		f 4 343 346 -346 -336
		mu 0 4 213 212 211 214
		f 4 347 349 -343 -288
		mu 0 4 255 256 257 258
		f 4 345 351 -351 -317
		mu 0 4 214 211 236 234
		f 4 352 354 -348 -283
		mu 0 4 259 235 256 255
		f 4 356 -358 -356 288
		mu 0 4 260 237 240 148
		f 4 355 -360 -359 332
		mu 0 4 148 240 239 241
		f 4 358 -362 -361 334
		mu 0 4 241 239 238 261
		f 4 523 487 -344 -487
		mu 0 4 254 251 212 213
		f 4 389 388 529 -385
		mu 0 4 262 263 264 265
		f 4 368 -107 -109 284
		mu 0 4 204 149 85 84
		f 4 106 369 -108 -110
		mu 0 4 85 149 150 87
		f 4 367 -168 107 370
		mu 0 4 151 102 87 150
		f 4 144 127 -368 371
		mu 0 4 119 103 102 151
		f 4 373 -289 -373 377
		mu 0 4 203 260 148 147
		f 4 374 286 534 498
		mu 0 4 206 258 266 207
		f 4 375 287 -375 379
		mu 0 4 200 255 258 206
		f 4 376 282 -376 380
		mu 0 4 199 259 255 200
		f 4 290 381 -366 -369
		mu 0 4 204 147 49 149
		f 4 390 -495 531 -395
		mu 0 4 267 268 269 270
		f 4 391 -413 -393 -396
		mu 0 4 271 272 273 274
		f 4 527 -412 -394 -491
		mu 0 4 275 276 277 278
		f 4 393 -411 -391 -398
		mu 0 4 278 277 279 280
		f 4 398 394 532 -403
		mu 0 4 281 267 270 282
		f 4 399 395 -401 -404
		mu 0 4 283 271 274 284
		f 4 526 490 -402 -490
		mu 0 4 285 275 278 286
		f 4 401 397 -399 -406
		mu 0 4 286 278 280 287
		f 4 382 402 533 -287
		mu 0 4 288 281 282 289
		f 4 383 403 -386 -357
		mu 0 4 290 283 284 291
		f 4 525 489 -388 364
		mu 0 4 292 285 286 293
		f 4 387 405 -383 342
		mu 0 4 293 286 287 294
		f 4 407 -390 -407 410
		mu 0 4 277 263 295 279
		f 4 528 -389 -408 411
		mu 0 4 276 264 263 277
		f 4 409 386 -409 412
		mu 0 4 272 296 297 273
		f 4 406 384 530 494
		mu 0 4 268 262 265 269
		f 4 557 -417 -40 -550
		mu 0 4 298 299 300 301
		f 4 432 -418 -14 16
		mu 0 4 302 303 304 305
		f 4 427 -471 507 471
		mu 0 4 306 307 308 309
		f 4 579 -420 414 -576
		mu 0 4 310 311 312 313
		f 4 572 -421 -422 -565
		mu 0 4 314 315 316 317
		f 4 453 447 13 -447
		mu 0 4 318 319 305 304
		f 4 469 -425 -426 34
		mu 0 4 320 321 322 323
		f 4 586 -427 -428 -583
		mu 0 4 324 325 307 306
		f 4 -430 -432 428 33
		mu 0 4 14 39 38 15
		f 4 425 -431 -433 429
		mu 0 4 323 322 303 302
		f 4 -434 -12 -117 -119
		mu 0 4 89 38 10 112
		f 4 -114 115 -441 -113
		mu 0 4 91 50 326 88
		f 4 -51 55 -442 -116
		mu 0 4 50 249 327 326
		f 4 518 482 328 -482
		mu 0 4 247 245 222 223
		f 4 324 -439 -444 -329
		mu 0 4 222 221 224 223
		f 4 312 307 -445 438
		mu 0 4 221 231 229 224
		f 4 38 -454 -423 -424
		mu 0 4 328 329 330 331
		f 4 37 -455 -39 -43
		mu 0 4 124 9 8 126
		f 4 141 -456 -38 -152
		mu 0 4 115 113 9 124
		f 4 -457 -142 -141 -451
		mu 0 4 114 113 115 118
		f 4 -458 450 166 111
		mu 0 4 92 114 118 69
		f 4 -459 -112 104 114
		mu 0 4 51 92 69 48
		f 4 -466 -6 -193 -461
		mu 0 4 33 32 27 26
		f 4 -467 460 -20 24
		mu 0 4 20 33 26 2
		f 4 509 -468 -25 -473
		mu 0 4 1 21 20 2
		f 4 -469 -5 -31 -464
		mu 0 4 19 18 332 333
		f 4 -416 -465 -470 463
		mu 0 4 334 335 321 320
		f 4 -508 -419 415 35
		mu 0 4 309 308 335 334
		f 4 30 0 -509 -36
		mu 0 4 333 332 1 0
		f 4 4 -474 -510 -1
		mu 0 4 332 18 21 1
		f 4 -511 473 462 17
		mu 0 4 16 21 18 13
		f 4 14 12 -512 -18
		mu 0 4 13 12 4 16
		f 4 9 1 -513 -13
		mu 0 4 12 336 5 4
		f 4 6 275 -514 -2
		mu 0 4 336 337 194 5
		f 4 271 269 -515 -276
		mu 0 4 337 338 339 194
		f 4 266 57 -516 -270
		mu 0 4 338 340 248 339
		f 4 -517 -58 -57 310
		mu 0 4 246 248 340 341
		f 4 442 -518 -311 -437
		mu 0 4 327 247 246 341
		f 4 308 -519 -443 -56
		mu 0 4 249 245 247 327
		f 4 -300 300 -520 -309
		mu 0 4 249 250 243 245
		f 4 -485 -521 -301 -342
		mu 0 4 242 244 243 250
		f 4 -486 -522 484 -327
		mu 0 4 241 253 244 242
		f 4 333 -523 485 -335
		mu 0 4 261 254 253 241
		f 4 360 363 -524 -334
		mu 0 4 261 238 251 254
		f 4 -489 -525 -364 -363
		mu 0 4 237 252 251 238
		f 4 385 404 -526 488
		mu 0 4 291 284 285 292
		f 4 400 396 -527 -405
		mu 0 4 284 274 275 285
		f 4 392 -492 -528 -397
		mu 0 4 274 273 276 275
		f 4 408 -493 -529 491
		mu 0 4 273 297 264 276
		f 4 -530 492 -387 -494
		mu 0 4 265 264 297 342
		f 4 -531 493 -410 413
		mu 0 4 269 265 342 343
		f 4 -532 -414 -392 -496
		mu 0 4 270 269 343 344
		f 4 -533 495 -400 -497
		mu 0 4 282 270 344 345
		f 4 -534 496 -384 -498
		mu 0 4 289 282 345 346
		f 4 -535 497 -374 378
		mu 0 4 207 266 260 203
		f 4 -536 -379 -295 -500
		mu 0 4 208 207 203 202
		f 4 -537 499 -284 -501
		mu 0 4 56 208 202 83
		f 4 49 -502 -538 500
		mu 0 4 83 82 57 56
		f 4 71 -503 -539 501
		mu 0 4 82 86 67 57
		f 4 -166 157 -540 502
		mu 0 4 86 101 136 67
		f 4 123 156 -541 -158
		mu 0 4 101 100 137 136
		f 4 244 248 -542 -157
		mu 0 4 100 184 178 137
		f 4 -507 -543 -249 -264
		mu 0 4 191 179 178 184
		f 4 -552 -206 -223 -545
		mu 0 4 163 162 165 164
		f 4 -553 544 -205 89
		mu 0 4 141 163 164 144
		f 4 135 -554 -90 -162
		mu 0 4 122 109 141 144
		f 4 -555 -136 -135 -548
		mu 0 4 110 109 122 123
		f 4 -556 547 153 184
		mu 0 4 128 110 123 127
		f 4 174 43 -557 -185
		mu 0 4 127 126 129 128
		f 4 423 -551 -558 -44
		mu 0 4 328 331 299 298
		f 4 -567 -204 -222 -560
		mu 0 4 159 158 161 160
		f 4 -568 559 -203 90
		mu 0 4 143 159 160 142
		f 4 130 -569 -91 162
		mu 0 4 108 104 143 142
		f 4 -563 -570 -131 -130
		mu 0 4 111 105 104 108
		f 4 154 185 -571 562
		mu 0 4 111 131 132 105
		f 4 175 44 -572 -186
		mu 0 4 131 130 133 132
		f 4 39 -566 -573 -45
		mu 0 4 301 300 315 314
		f 4 -578 -42 -196 -575
		mu 0 4 25 24 42 45
		f 4 -579 574 -46 40
		mu 0 4 62 25 45 134
		f 4 421 -577 -580 -41
		mu 0 4 317 316 311 310
		f 4 -585 -4 -195 -582
		mu 0 4 41 40 23 22
		f 4 -19 23 -586 581
		mu 0 4 22 61 60 41
		f 4 -584 -587 -24 -415
		mu 0 4 312 325 324 313
		f 3 207 589 -588
		mu 0 3 166 165 347
		f 3 205 590 -590
		mu 0 3 165 162 347
		f 3 543 591 -591
		mu 0 3 162 161 347
		f 3 203 592 -592
		mu 0 3 161 158 347
		f 3 558 593 -593
		mu 0 3 158 156 347
		f 3 201 594 -594
		mu 0 3 156 154 347
		f 3 199 588 -595
		mu 0 3 154 153 347
		f 3 216 595 -589
		mu 0 3 153 174 347
		f 3 215 596 -596
		mu 0 3 174 172 347
		f 3 213 597 -597
		mu 0 3 172 170 347
		f 3 211 598 -598
		mu 0 3 170 168 347
		f 3 209 587 -599
		mu 0 3 168 166 347
		f 4 436 51 -436 441
		mu 0 4 327 341 348 326
		f 4 -267 279 -52 56
		mu 0 4 340 338 348 341
		f 4 -279 -600 -280 -272
		mu 0 4 337 349 348 338
		f 4 599 -435 440 435
		mu 0 4 348 349 88 326
		f 4 611 479 -601 -611
		mu 0 4 350 351 352 353
		f 4 -613 613 62 -602
		mu 0 4 354 355 356 357
		f 4 272 -607 607 -277
		mu 0 4 358 359 360 361
		f 4 514 478 -609 609
		mu 0 4 362 363 364 365
		f 4 -608 -605 601 267
		mu 0 4 361 360 366 367
		f 4 -610 -606 -273 -478
		mu 0 4 362 365 359 358
		f 4 515 -612 -603 -479
		mu 0 4 363 351 350 364
		f 4 -614 -604 600 58
		mu 0 4 356 355 353 352
		f 4 678 671 829 -671
		mu 0 4 368 369 370 371
		f 4 679 672 828 -672
		mu 0 4 369 372 373 370
		f 4 680 673 827 -673
		mu 0 4 372 374 375 373
		f 4 681 674 826 -674
		mu 0 4 376 377 378 379
		f 4 682 675 825 -675
		mu 0 4 377 380 381 378
		f 4 683 676 824 -676
		mu 0 4 380 382 383 381
		f 4 684 677 823 -677
		mu 0 4 382 384 385 383
		f 4 685 670 822 -678
		mu 0 4 384 368 371 385
		f 4 694 687 797 -687
		mu 0 4 386 387 388 389
		f 4 695 688 796 -688
		mu 0 4 387 390 391 388
		f 4 696 689 795 -689
		mu 0 4 390 392 393 391
		f 4 697 690 794 -690
		mu 0 4 394 395 396 397
		f 4 698 691 793 -691
		mu 0 4 395 398 399 396
		f 4 699 692 792 -692
		mu 0 4 398 400 401 399
		f 4 700 693 791 -693
		mu 0 4 400 402 403 401
		f 4 701 686 790 -694
		mu 0 4 402 386 389 403
		f 4 758 751 733 -751
		mu 0 4 404 405 406 407
		f 4 759 752 732 -752
		mu 0 4 405 408 409 406
		f 4 760 753 731 -753
		mu 0 4 408 410 411 409
		f 4 761 754 730 -754
		mu 0 4 412 413 414 415
		f 4 762 755 729 -755
		mu 0 4 413 416 417 414
		f 4 763 756 728 -756
		mu 0 4 416 418 419 417
		f 4 764 757 727 -757
		mu 0 4 418 420 421 419
		f 4 765 750 726 -758
		mu 0 4 420 404 407 421
		f 3 648 663 -663
		mu 0 3 422 423 424
		f 3 650 664 -664
		mu 0 3 423 425 424
		f 3 652 665 -665
		mu 0 3 425 426 424
		f 3 654 666 -666
		mu 0 3 427 428 424
		f 3 656 667 -667
		mu 0 3 428 429 424
		f 3 658 668 -668
		mu 0 3 429 430 424
		f 3 660 669 -669
		mu 0 3 430 431 424
		f 3 661 662 -670
		mu 0 3 431 422 424
		f 4 838 831 -679 -831
		mu 0 4 432 433 369 368
		f 4 839 832 -680 -832
		mu 0 4 433 434 372 369
		f 4 840 833 -681 -833
		mu 0 4 434 435 374 372
		f 4 841 834 -682 -834
		mu 0 4 436 437 377 376
		f 4 842 835 -683 -835
		mu 0 4 437 438 380 377
		f 4 843 836 -684 -836
		mu 0 4 438 439 382 380
		f 4 844 837 -685 -837
		mu 0 4 439 440 384 382
		f 4 845 830 -686 -838
		mu 0 4 440 432 368 384
		f 4 806 799 -695 -799
		mu 0 4 441 442 387 386
		f 4 807 800 -696 -800
		mu 0 4 442 443 390 387
		f 4 808 801 -697 -801
		mu 0 4 443 444 392 390
		f 4 809 802 -698 -802
		mu 0 4 445 446 395 394
		f 4 810 803 -699 -803
		mu 0 4 446 447 398 395
		f 4 811 804 -700 -804
		mu 0 4 447 448 400 398
		f 4 812 805 -701 -805
		mu 0 4 448 449 402 400
		f 4 813 798 -702 -806
		mu 0 4 449 441 386 402
		f 4 774 767 -711 -767
		mu 0 4 450 451 452 453
		f 4 775 768 -712 -768
		mu 0 4 451 454 455 452
		f 4 776 769 -713 -769
		mu 0 4 454 456 457 455
		f 4 777 770 -714 -770
		mu 0 4 458 459 460 461
		f 4 778 771 -715 -771
		mu 0 4 459 462 463 460
		f 4 779 772 -716 -772
		mu 0 4 462 464 465 463
		f 4 780 773 -717 -773
		mu 0 4 464 466 467 465
		f 4 781 766 -718 -774
		mu 0 4 466 450 453 467
		f 4 -727 718 742 -720
		mu 0 4 421 407 468 469
		f 4 -728 719 743 -721
		mu 0 4 419 421 469 470
		f 4 -729 720 744 -722
		mu 0 4 417 419 470 471
		f 4 -730 721 745 -723
		mu 0 4 414 417 471 472
		f 4 -731 722 746 -724
		mu 0 4 415 414 472 473
		f 4 -732 723 747 -725
		mu 0 4 409 411 474 475
		f 4 -733 724 748 -726
		mu 0 4 406 409 475 476
		f 4 -734 725 749 -719
		mu 0 4 407 406 476 468
		f 4 -743 734 -662 -736
		mu 0 4 469 468 422 431
		f 4 -744 735 -661 -737
		mu 0 4 470 469 431 430
		f 4 -745 736 -659 -738
		mu 0 4 471 470 430 429
		f 4 -746 737 -657 -739
		mu 0 4 472 471 429 428
		f 4 -747 738 -655 -740
		mu 0 4 473 472 428 427
		f 4 -748 739 -653 -741
		mu 0 4 475 474 426 425
		f 4 -749 740 -651 -742
		mu 0 4 476 475 425 423
		f 4 -750 741 -649 -735
		mu 0 4 468 476 423 422
		f 4 710 703 -759 -703
		mu 0 4 453 452 405 404
		f 4 711 704 -760 -704
		mu 0 4 452 455 408 405
		f 4 712 705 -761 -705
		mu 0 4 455 457 410 408
		f 4 713 706 -762 -706
		mu 0 4 461 460 413 412
		f 4 714 707 -763 -707
		mu 0 4 460 463 416 413
		f 4 715 708 -764 -708
		mu 0 4 463 465 418 416
		f 4 716 709 -765 -709
		mu 0 4 465 467 420 418
		f 4 717 702 -766 -710
		mu 0 4 467 453 404 420
		f 4 632 647 -775 -647
		mu 0 4 477 478 451 450
		f 4 634 649 -776 -648
		mu 0 4 478 479 454 451
		f 4 636 651 -777 -650
		mu 0 4 479 480 456 454
		f 4 638 653 -778 -652
		mu 0 4 481 482 459 458
		f 4 640 655 -779 -654
		mu 0 4 482 483 462 459
		f 4 642 657 -780 -656
		mu 0 4 483 484 464 462
		f 4 644 659 -781 -658
		mu 0 4 484 485 466 464
		f 4 645 646 -782 -660
		mu 0 4 485 477 450 466
		f 4 -791 782 -646 -784
		mu 0 4 403 389 477 485
		f 4 -792 783 -645 -785
		mu 0 4 401 403 485 484
		f 4 -793 784 -643 -786
		mu 0 4 399 401 484 483
		f 4 -794 785 -641 -787
		mu 0 4 396 399 483 482
		f 4 -795 786 -639 -788
		mu 0 4 397 396 482 481
		f 4 -796 787 -637 -789
		mu 0 4 391 393 480 479
		f 4 -797 788 -635 -790
		mu 0 4 388 391 479 478
		f 4 -798 789 -633 -783
		mu 0 4 389 388 478 477
		f 4 616 631 -807 -631
		mu 0 4 486 487 442 441
		f 4 618 633 -808 -632
		mu 0 4 487 488 443 442
		f 4 620 635 -809 -634
		mu 0 4 488 489 444 443
		f 4 622 637 -810 -636
		mu 0 4 490 491 446 445
		f 4 624 639 -811 -638
		mu 0 4 491 492 447 446
		f 4 626 641 -812 -640
		mu 0 4 492 493 448 447
		f 4 628 643 -813 -642
		mu 0 4 493 494 449 448
		f 4 629 630 -814 -644
		mu 0 4 494 486 441 449
		f 4 -823 814 -630 -816
		mu 0 4 385 371 486 494
		f 4 -824 815 -629 -817
		mu 0 4 383 385 494 493
		f 4 -825 816 -627 -818
		mu 0 4 381 383 493 492
		f 4 -826 817 -625 -819
		mu 0 4 378 381 492 491
		f 4 -827 818 -623 -820
		mu 0 4 379 378 491 490
		f 4 -828 819 -621 -821
		mu 0 4 373 375 489 488
		f 4 -829 820 -619 -822
		mu 0 4 370 373 488 487
		f 4 -830 821 -617 -815
		mu 0 4 371 370 487 486
		f 4 610 615 -839 -615
		mu 0 4 350 353 433 432
		f 4 603 617 -840 -616
		mu 0 4 353 355 434 433
		f 4 612 619 -841 -618
		mu 0 4 355 354 435 434
		f 4 604 621 -842 -620
		mu 0 4 366 360 437 436
		f 4 606 623 -843 -622
		mu 0 4 360 359 438 437
		f 4 605 625 -844 -624
		mu 0 4 359 365 439 438
		f 4 608 627 -845 -626
		mu 0 4 365 364 440 439
		f 4 602 614 -846 -628
		mu 0 4 364 350 432 440
		f 4 848 847 -10 -29
		mu 0 4 15 495 336 12
		f 4 -7 -848 849 278
		mu 0 4 337 336 495 349
		f 4 846 -849 -429 433
		mu 0 4 89 495 15 38
		f 4 -850 -847 -446 434
		mu 0 4 349 495 89 88
		f 4 978 963 -853 -963
		mu 0 4 496 497 498 499
		f 4 982 967 -856 -967
		mu 0 4 500 501 502 503
		f 4 986 971 -859 -971
		mu 0 4 504 505 506 507
		f 4 990 975 -862 -975
		mu 0 4 508 509 510 511
		f 4 992 977 -865 -977
		mu 0 4 512 513 514 515
		f 4 980 965 -868 -965
		mu 0 4 516 517 518 519
		f 4 984 969 -871 -969
		mu 0 4 520 521 522 523
		f 4 988 973 -874 -973
		mu 0 4 524 525 526 527
		f 4 983 968 -875 -968
		mu 0 4 501 520 523 502
		f 4 981 966 -876 -966
		mu 0 4 528 500 503 529
		f 4 985 970 -877 -970
		mu 0 4 521 504 507 522
		f 4 987 972 -878 -972
		mu 0 4 505 524 527 506
		f 4 979 964 -879 -964
		mu 0 4 497 516 519 498
		f 4 993 962 -880 -978
		mu 0 4 513 496 499 514
		f 4 991 976 -881 -976
		mu 0 4 509 512 515 510
		f 4 989 974 -882 -974
		mu 0 4 525 508 511 526
		f 4 1010 995 -885 -995
		mu 0 4 530 531 532 533
		f 4 1014 999 -888 -999
		mu 0 4 534 535 536 537
		f 4 1018 1003 -891 -1003
		mu 0 4 538 539 540 541
		f 4 1022 1007 -894 -1007
		mu 0 4 542 543 544 545
		f 4 1024 1009 -897 -1009
		mu 0 4 546 547 548 549
		f 4 1012 997 -900 -997
		mu 0 4 550 551 552 553
		f 4 1016 1001 -903 -1001
		mu 0 4 554 555 556 557
		f 4 1020 1005 -906 -1005
		mu 0 4 558 559 560 561
		f 4 1015 1000 -907 -1000
		mu 0 4 535 554 557 536
		f 4 1013 998 -908 -998
		mu 0 4 562 534 537 563
		f 4 1017 1002 -909 -1002
		mu 0 4 555 538 541 556
		f 4 1019 1004 -910 -1004
		mu 0 4 539 558 561 540
		f 4 1011 996 -911 -996
		mu 0 4 531 550 553 532
		f 4 1025 994 -912 -1010
		mu 0 4 547 530 533 548
		f 4 1023 1008 -913 -1008
		mu 0 4 543 546 549 544
		f 4 1021 1006 -914 -1006
		mu 0 4 559 542 545 560
		f 4 1042 1027 -917 -1027
		mu 0 4 564 565 566 567
		f 4 1046 1031 -920 -1031
		mu 0 4 568 569 570 571
		f 4 1050 1035 -923 -1035
		mu 0 4 572 573 574 575
		f 4 1054 1039 -926 -1039
		mu 0 4 576 577 578 579
		f 4 1056 1041 -929 -1041
		mu 0 4 580 581 582 583
		f 4 1044 1029 -932 -1029
		mu 0 4 584 585 586 587
		f 4 1048 1033 -935 -1033
		mu 0 4 588 589 590 591
		f 4 1052 1037 -938 -1037
		mu 0 4 592 593 594 595
		f 4 1047 1032 -939 -1032
		mu 0 4 569 588 591 570
		f 4 1045 1030 -940 -1030
		mu 0 4 596 568 571 597
		f 4 1049 1034 -941 -1034
		mu 0 4 589 572 575 590
		f 4 1051 1036 -942 -1036
		mu 0 4 573 592 595 574
		f 4 1043 1028 -943 -1028
		mu 0 4 565 584 587 566
		f 4 1057 1026 -944 -1042
		mu 0 4 581 564 567 582
		f 4 1055 1040 -945 -1040
		mu 0 4 577 580 583 578
		f 4 1053 1038 -946 -1038
		mu 0 4 593 576 579 594
		f 3 -1123 -1154 1137
		mu 0 3 598 599 600
		f 3 -1135 -1150 1133
		mu 0 3 598 601 602
		f 3 -1131 -1146 1129
		mu 0 3 598 603 604
		f 3 -1127 -1142 1125
		mu 0 3 598 605 606
		f 3 -1125 -1140 1123
		mu 0 3 598 607 608
		f 3 -1137 -1152 1135
		mu 0 3 598 609 610
		f 3 -1133 -1148 1131
		mu 0 3 598 611 612
		f 3 -1129 -1144 1127
		mu 0 3 598 613 614
		f 3 -1134 -1149 1132
		mu 0 3 598 602 611
		f 3 -1136 -1151 1134
		mu 0 3 598 615 601
		f 3 -1132 -1147 1130
		mu 0 3 598 612 603
		f 3 -1130 -1145 1128
		mu 0 3 598 604 613
		f 3 -1138 -1153 1136
		mu 0 3 598 600 609
		f 3 -1124 -1139 1122
		mu 0 3 598 608 599
		f 3 -1126 -1141 1124
		mu 0 3 598 606 607
		f 3 -1128 -1143 1126
		mu 0 3 598 614 605
		f 4 1170 1155 1217 -1155
		mu 0 4 616 617 618 619
		f 4 1171 1156 1216 -1156
		mu 0 4 617 620 621 618
		f 4 1172 1157 1215 -1157
		mu 0 4 620 622 623 621
		f 4 1173 1158 1214 -1158
		mu 0 4 624 625 626 627
		f 4 1174 1159 1213 -1159
		mu 0 4 625 628 629 626
		f 4 1175 1160 1212 -1160
		mu 0 4 628 630 631 629
		f 4 1176 1161 1211 -1161
		mu 0 4 630 632 633 631
		f 4 1177 1162 1210 -1162
		mu 0 4 632 634 635 633
		f 4 1178 1163 1209 -1163
		mu 0 4 634 636 637 635
		f 4 1179 1164 1208 -1164
		mu 0 4 636 638 639 637
		f 4 1180 1165 1207 -1165
		mu 0 4 638 640 641 639
		f 4 1181 1166 1206 -1166
		mu 0 4 640 642 643 641
		f 4 1182 1167 1205 -1167
		mu 0 4 642 644 645 643
		f 4 1183 1168 1204 -1168
		mu 0 4 644 646 647 645
		f 4 1184 1169 1203 -1169
		mu 0 4 646 648 649 647
		f 4 1185 1154 1202 -1170
		mu 0 4 648 616 619 649
		f 4 416 851 -979 -851
		mu 0 4 300 299 497 496
		f 4 550 865 -980 -852
		mu 0 4 299 331 516 497
		f 4 422 866 -981 -866
		mu 0 4 331 330 517 516
		f 4 446 853 -982 -867
		mu 0 4 318 304 500 528;
	setAttr ".fc[500:999]"
		f 4 417 854 -983 -854
		mu 0 4 304 303 501 500
		f 4 430 868 -984 -855
		mu 0 4 303 322 520 501
		f 4 424 869 -985 -869
		mu 0 4 322 321 521 520
		f 4 464 856 -986 -870
		mu 0 4 321 335 504 521
		f 4 418 857 -987 -857
		mu 0 4 335 308 505 504
		f 4 470 871 -988 -858
		mu 0 4 308 307 524 505
		f 4 426 872 -989 -872
		mu 0 4 307 325 525 524
		f 4 583 859 -990 -873
		mu 0 4 325 312 508 525
		f 4 419 860 -991 -860
		mu 0 4 312 311 509 508
		f 4 576 862 -992 -861
		mu 0 4 311 316 512 509
		f 4 420 863 -993 -863
		mu 0 4 316 315 513 512
		f 4 565 850 -994 -864
		mu 0 4 315 300 496 513
		f 4 852 883 -1011 -883
		mu 0 4 499 498 531 530
		f 4 878 897 -1012 -884
		mu 0 4 498 519 550 531
		f 4 867 898 -1013 -898
		mu 0 4 519 518 551 550
		f 4 875 885 -1014 -899
		mu 0 4 529 503 534 562
		f 4 855 886 -1015 -886
		mu 0 4 503 502 535 534
		f 4 874 900 -1016 -887
		mu 0 4 502 523 554 535
		f 4 870 901 -1017 -901
		mu 0 4 523 522 555 554
		f 4 876 888 -1018 -902
		mu 0 4 522 507 538 555
		f 4 858 889 -1019 -889
		mu 0 4 507 506 539 538
		f 4 877 903 -1020 -890
		mu 0 4 506 527 558 539
		f 4 873 904 -1021 -904
		mu 0 4 527 526 559 558
		f 4 881 891 -1022 -905
		mu 0 4 526 511 542 559
		f 4 861 892 -1023 -892
		mu 0 4 511 510 543 542
		f 4 880 894 -1024 -893
		mu 0 4 510 515 546 543
		f 4 864 895 -1025 -895
		mu 0 4 515 514 547 546
		f 4 879 882 -1026 -896
		mu 0 4 514 499 530 547
		f 4 884 915 -1043 -915
		mu 0 4 533 532 565 564
		f 4 910 929 -1044 -916
		mu 0 4 532 553 584 565
		f 4 899 930 -1045 -930
		mu 0 4 553 552 585 584
		f 4 907 917 -1046 -931
		mu 0 4 563 537 568 596
		f 4 887 918 -1047 -918
		mu 0 4 537 536 569 568
		f 4 906 932 -1048 -919
		mu 0 4 536 557 588 569
		f 4 902 933 -1049 -933
		mu 0 4 557 556 589 588
		f 4 908 920 -1050 -934
		mu 0 4 556 541 572 589
		f 4 890 921 -1051 -921
		mu 0 4 541 540 573 572
		f 4 909 935 -1052 -922
		mu 0 4 540 561 592 573
		f 4 905 936 -1053 -936
		mu 0 4 561 560 593 592
		f 4 913 923 -1054 -937
		mu 0 4 560 545 576 593
		f 4 893 924 -1055 -924
		mu 0 4 545 544 577 576
		f 4 912 926 -1056 -925
		mu 0 4 544 549 580 577
		f 4 896 927 -1057 -927
		mu 0 4 549 548 581 580
		f 4 911 914 -1058 -928
		mu 0 4 548 533 564 581
		f 4 1106 1091 -1075 -1091
		mu 0 4 650 651 652 653
		f 4 1107 1092 -1076 -1092
		mu 0 4 651 654 655 652
		f 4 1108 1093 -1077 -1093
		mu 0 4 654 656 657 655
		f 4 1109 1094 -1078 -1094
		mu 0 4 658 659 660 661
		f 4 1110 1095 -1079 -1095
		mu 0 4 659 662 663 660
		f 4 1111 1096 -1080 -1096
		mu 0 4 662 664 665 663
		f 4 1112 1097 -1081 -1097
		mu 0 4 664 666 667 665
		f 4 1113 1098 -1082 -1098
		mu 0 4 666 668 669 667
		f 4 1114 1099 -1083 -1099
		mu 0 4 668 670 671 669
		f 4 1115 1100 -1084 -1100
		mu 0 4 670 672 673 671
		f 4 1116 1101 -1085 -1101
		mu 0 4 672 674 675 673
		f 4 1117 1102 -1086 -1102
		mu 0 4 674 676 677 675
		f 4 1118 1103 -1087 -1103
		mu 0 4 676 678 679 677
		f 4 1119 1104 -1088 -1104
		mu 0 4 678 680 681 679
		f 4 1120 1105 -1089 -1105
		mu 0 4 680 682 683 681
		f 4 1121 1090 -1090 -1106
		mu 0 4 682 650 653 683
		f 4 916 947 -1107 -947
		mu 0 4 567 566 651 650
		f 4 942 956 -1108 -948
		mu 0 4 566 587 654 651
		f 4 931 957 -1109 -957
		mu 0 4 587 586 656 654
		f 4 939 948 -1110 -958
		mu 0 4 597 571 659 658
		f 4 919 949 -1111 -949
		mu 0 4 571 570 662 659
		f 4 938 958 -1112 -950
		mu 0 4 570 591 664 662
		f 4 934 959 -1113 -959
		mu 0 4 591 590 666 664
		f 4 940 950 -1114 -960
		mu 0 4 590 575 668 666
		f 4 922 951 -1115 -951
		mu 0 4 575 574 670 668
		f 4 941 960 -1116 -952
		mu 0 4 574 595 672 670
		f 4 937 961 -1117 -961
		mu 0 4 595 594 674 672
		f 4 945 952 -1118 -962
		mu 0 4 594 579 676 674
		f 4 925 953 -1119 -953
		mu 0 4 579 578 678 676
		f 4 944 954 -1120 -954
		mu 0 4 578 583 680 678
		f 4 928 955 -1121 -955
		mu 0 4 583 582 682 680
		f 4 943 946 -1122 -956
		mu 0 4 582 567 650 682
		f 4 1074 1059 -1171 -1059
		mu 0 4 653 652 617 616
		f 4 1075 1060 -1172 -1060
		mu 0 4 652 655 620 617
		f 4 1076 1061 -1173 -1061
		mu 0 4 655 657 622 620
		f 4 1077 1062 -1174 -1062
		mu 0 4 661 660 625 624
		f 4 1078 1063 -1175 -1063
		mu 0 4 660 663 628 625
		f 4 1079 1064 -1176 -1064
		mu 0 4 663 665 630 628
		f 4 1080 1065 -1177 -1065
		mu 0 4 665 667 632 630
		f 4 1081 1066 -1178 -1066
		mu 0 4 667 669 634 632
		f 4 1082 1067 -1179 -1067
		mu 0 4 669 671 636 634
		f 4 1083 1068 -1180 -1068
		mu 0 4 671 673 638 636
		f 4 1084 1069 -1181 -1069
		mu 0 4 673 675 640 638
		f 4 1085 1070 -1182 -1070
		mu 0 4 675 677 642 640
		f 4 1086 1071 -1183 -1071
		mu 0 4 677 679 644 642
		f 4 1087 1072 -1184 -1072
		mu 0 4 679 681 646 644
		f 4 1088 1073 -1185 -1073
		mu 0 4 681 683 648 646
		f 4 1089 1058 -1186 -1074
		mu 0 4 683 653 616 648
		f 4 -1203 1186 1138 -1188
		mu 0 4 649 619 599 608
		f 4 -1204 1187 1139 -1189
		mu 0 4 647 649 608 607
		f 4 -1205 1188 1140 -1190
		mu 0 4 645 647 607 606
		f 4 -1206 1189 1141 -1191
		mu 0 4 643 645 606 605
		f 4 -1207 1190 1142 -1192
		mu 0 4 641 643 605 614
		f 4 -1208 1191 1143 -1193
		mu 0 4 639 641 614 613
		f 4 -1209 1192 1144 -1194
		mu 0 4 637 639 613 604
		f 4 -1210 1193 1145 -1195
		mu 0 4 635 637 604 603
		f 4 -1211 1194 1146 -1196
		mu 0 4 633 635 603 612
		f 4 -1212 1195 1147 -1197
		mu 0 4 631 633 612 611
		f 4 -1213 1196 1148 -1198
		mu 0 4 629 631 611 602
		f 4 -1214 1197 1149 -1199
		mu 0 4 626 629 602 601
		f 4 -1215 1198 1150 -1200
		mu 0 4 627 626 601 615
		f 4 -1216 1199 1151 -1201
		mu 0 4 621 623 610 609
		f 4 -1217 1200 1152 -1202
		mu 0 4 618 621 609 600
		f 4 -1218 1201 1153 -1187
		mu 0 4 619 618 600 599
		f 4 1221 1220 -1220 -1219
		mu 0 4 684 687 686 685
		f 4 1225 1224 -1224 -1223
		mu 0 4 688 691 690 689
		f 4 1229 -1229 -1228 -1227
		mu 0 4 692 695 694 693
		f 4 -1234 1232 1231 1230
		mu 0 4 696 699 698 697
		f 4 1236 1235 -1226 -1235
		mu 0 4 700 701 691 688
		f 4 -1232 1239 -1239 1237
		mu 0 4 697 698 703 702
		f 4 1242 -1237 -1242 -1241
		mu 0 4 704 701 700 705
		f 4 1245 -1245 573 -1244
		mu 0 4 706 709 708 707
		f 4 1248 1247 32 -1247
		mu 0 4 710 713 712 711
		f 4 1251 -1251 459 -1250
		mu 0 4 714 717 716 715
		f 4 1253 1249 15 -1253
		mu 0 4 718 714 715 719
		f 4 1255 1252 10 -1255
		mu 0 4 720 718 719 721
		f 4 -1259 1228 1257 -1257
		mu 0 4 722 694 695 723
		f 4 -1248 1260 -1260 580
		mu 0 4 712 713 725 724
		f 4 -1264 1262 1261 187
		mu 0 4 726 729 728 727
		f 4 1267 1266 1265 -1265
		mu 0 4 730 733 732 731
		f 4 1270 -1266 1269 1268
		mu 0 4 734 731 732 735
		f 4 -1274 1272 1271 268
		mu 0 4 736 739 738 737
		f 4 -1278 -1277 1275 -1275
		mu 0 4 740 743 742 741
		f 4 -1225 1279 -1256 -1279
		mu 0 4 690 691 718 720
		f 4 -1236 1280 -1254 -1280
		mu 0 4 691 701 714 718
		f 4 -1243 -1282 -1252 -1281
		mu 0 4 701 704 717 714
		f 4 -1221 1283 -1249 -1283
		mu 0 4 686 687 713 710
		f 4 -1261 -1284 -1286 -1285
		mu 0 4 725 713 687 744
		f 4 -1289 -1288 -1246 -1287
		mu 0 4 745 746 709 706
		f 4 1291 1290 -1290 48
		mu 0 4 747 750 749 748
		f 4 -1276 -1295 1293 -1293
		mu 0 4 741 742 752 751
		f 4 1297 1296 1295 -1267
		mu 0 4 733 754 753 732
		f 4 -1302 -1301 1299 1298
		mu 0 4 755 758 757 756
		f 4 -1305 1303 1294 -1303
		mu 0 4 750 759 752 742
		f 4 -1291 1302 1276 -1306
		mu 0 4 749 750 742 743
		f 4 -1309 1307 -1307 46
		mu 0 4 760 763 762 761
		f 4 -1312 -1308 -1311 1309
		mu 0 4 764 762 763 765
		f 4 -1304 -1314 -1299 1312
		mu 0 4 752 759 755 756
		f 4 1317 -1317 -1316 1314
		mu 0 4 766 769 768 767
		f 4 1320 -1320 -1318 1318
		mu 0 4 770 771 769 766
		f 4 -1325 1323 1322 -1322
		mu 0 4 772 775 774 773
		f 4 -1269 -1328 1326 -1326
		mu 0 4 734 735 776 775
		f 4 -1331 1329 1310 -1329
		mu 0 4 777 778 765 763
		f 4 -1334 1332 217 -1332
		mu 0 4 779 777 781 780
		f 4 1337 1336 1335 1334
		mu 0 4 782 785 784 783
		f 4 -1338 1340 1339 1338
		mu 0 4 785 782 787 786
		f 4 1344 1343 1342 -1342
		mu 0 4 788 791 790 789
		f 4 -1349 1347 -1347 1345
		mu 0 4 792 795 794 793
		f 4 -1344 1350 1333 1349
		mu 0 4 790 791 777 779
		f 4 1354 1353 -1353 1351
		mu 0 4 796 774 798 797
		f 4 -1359 1357 1356 1355
		mu 0 4 799 802 801 800
		f 4 1362 1361 1360 1359
		mu 0 4 803 787 805 804
		f 4 -1366 1364 -1361 1363
		mu 0 4 806 807 804 805
		f 4 1227 -1368 -1352 -1367
		mu 0 4 693 694 796 797
		f 4 1370 1369 -1369 -1356
		mu 0 4 800 809 808 799
		f 4 1373 1372 -1372 -1370
		mu 0 4 809 811 810 808
		f 4 1377 1376 -1376 -1375
		mu 0 4 812 815 814 813
		f 4 1381 1380 -1380 -1379
		mu 0 4 816 819 818 817
		f 4 1384 -1300 -1384 -1383
		mu 0 4 820 756 757 821
		f 4 1386 -1263 -1386 -1381
		mu 0 4 819 728 729 818
		f 4 1388 1387 1330 -1351
		mu 0 4 791 822 778 777
		f 4 1391 1390 1389 -1341
		mu 0 4 782 824 823 787
		f 4 1394 1393 -1346 -1393
		mu 0 4 825 826 792 793
		f 4 1396 -1389 -1345 -1396
		mu 0 4 827 822 791 788
		f 4 1399 1398 -1398 -1364
		mu 0 4 805 829 828 806
		f 4 -1390 1400 -1400 -1362
		mu 0 4 787 823 829 805
		f 4 1402 1401 -1392 -1335
		mu 0 4 783 830 824 782
		f 4 -1403 -1405 1311 1403
		mu 0 4 830 783 762 764
		f 4 -1294 -1313 -1385 -1406
		mu 0 4 751 752 756 820
		f 4 1407 -1297 1406 -1358
		mu 0 4 802 753 754 801
		f 4 -1410 -1321 -1409 -1339
		mu 0 4 786 771 770 785
		f 4 -1327 -1411 -1354 -1324
		mu 0 4 775 776 798 774
		f 3 -1355 -1412 -1323
		mu 0 3 774 796 773
		f 4 1414 -1268 -1414 -1413
		mu 0 4 831 733 730 832
		f 4 1417 1416 -1298 -1416
		mu 0 4 833 834 754 733
		f 4 -1407 -1417 1419 -1419
		mu 0 4 801 754 834 835
		f 4 1421 -1357 1418 1420
		mu 0 4 803 800 801 835
		f 4 1422 -1371 -1422 -1360
		mu 0 4 804 809 800 803
		f 4 1423 -1374 -1423 -1365
		mu 0 4 807 811 809 804
		f 4 1425 -1378 -1425 -1348
		mu 0 4 795 815 812 794
		f 4 -1343 1427 -1382 -1427
		mu 0 4 789 790 819 816
		f 4 -1350 -1429 -1387 -1428
		mu 0 4 790 779 728 819
		f 4 -1262 1428 1331 2
		mu 0 4 727 728 779 780
		f 4 1432 1431 1430 -1430
		mu 0 4 836 839 838 837
		f 4 1435 1434 1433 -1432
		mu 0 4 839 841 840 838
		f 4 1438 -1438 1436 -1435
		mu 0 4 841 843 842 840
		f 4 1442 -1442 1440 -1440
		mu 0 4 844 847 846 845
		f 4 1446 1445 1444 -1444
		mu 0 4 848 851 850 849
		f 4 1449 1448 1447 -1446
		mu 0 4 851 853 852 850
		f 4 1452 1451 1450 -1449
		mu 0 4 853 855 854 852
		f 4 1455 1454 1453 -1452
		mu 0 4 855 857 856 854
		f 4 1458 1457 1456 -1455
		mu 0 4 857 859 858 856
		f 4 1460 1429 1459 -1458
		mu 0 4 859 836 837 858
		f 4 -1333 1328 1308 85
		mu 0 4 781 777 763 760
		f 4 -1388 1462 -1436 -1462
		mu 0 4 778 822 841 839
		f 4 -1397 -1464 -1439 -1463
		mu 0 4 822 827 843 841
		f 4 -1395 -1466 -1443 -1465
		mu 0 4 826 825 847 844
		f 4 -1399 1467 -1447 -1467
		mu 0 4 828 829 851 848
		f 4 -1401 1468 -1450 -1468
		mu 0 4 829 823 853 851
		f 4 -1391 1469 -1453 -1469
		mu 0 4 823 824 855 853
		f 4 -1402 1470 -1456 -1470
		mu 0 4 824 830 857 855
		f 4 -1404 1471 -1459 -1471
		mu 0 4 830 764 859 857
		f 4 -1310 1472 -1461 -1472
		mu 0 4 764 765 836 859
		f 4 -1330 1461 -1433 -1473
		mu 0 4 765 778 839 836
		f 4 1301 1474 -240 1473
		mu 0 4 758 755 861 860
		f 4 1477 1476 264 -1476
		mu 0 4 862 865 864 863
		f 4 -1479 1304 -1292 -241
		mu 0 4 866 759 750 747
		f 4 -1475 1313 1478 -243
		mu 0 4 861 755 759 866
		f 4 -1336 1481 1480 -1480
		mu 0 4 783 784 868 867
		f 4 1383 1483 -1478 -1483
		mu 0 4 821 757 865 862
		f 4 1300 1485 -1485 -1484
		mu 0 4 757 758 869 865
		f 4 -1474 251 1486 -1486
		mu 0 4 758 860 870 869
		f 4 1306 1488 -1488 -254
		mu 0 4 761 762 872 871
		f 4 1404 1479 -1490 -1489
		mu 0 4 762 783 867 872
		f 4 -1492 258 1490 1489
		mu 0 4 867 874 873 872
		f 3 -1491 260 1487
		mu 0 3 872 873 871
		f 4 -1481 -1493 262 1491
		mu 0 4 867 868 875 874
		f 4 -1477 1484 -1487 254
		mu 0 4 864 865 869 870
		f 4 -1272 1494 1493 274
		mu 0 4 737 738 877 876
		f 4 1223 1497 -1497 -1496
		mu 0 4 689 690 879 878
		f 4 -1500 -1499 -1498 1278
		mu 0 4 720 880 879 690
		f 4 -1494 1499 1254 7
		mu 0 4 881 880 720 721
		f 4 1502 1501 1500 -292
		mu 0 4 882 885 884 883
		f 4 1506 1505 1504 -1504
		mu 0 4 886 888 831 887
		f 4 1510 -1510 1508 -1508
		mu 0 4 889 892 891 890
		f 4 1512 1507 1511 -1502
		mu 0 4 885 889 890 884
		f 4 1289 1513 -1503 -281
		mu 0 4 748 749 885 882
		f 4 1305 1514 -1513 -1514
		mu 0 4 749 743 889 885
		f 4 1277 -1516 -1511 -1515
		mu 0 4 743 740 892 889
		f 4 1315 1517 -1507 -1517
		mu 0 4 767 768 888 886
		f 4 1521 1520 1519 1518
		mu 0 4 893 896 895 894
		f 4 1525 -1525 1523 -1523
		mu 0 4 897 900 899 898
		f 4 1528 -1528 1526 1524
		mu 0 4 900 902 901 899
		f 4 1531 1530 1529 1527
		mu 0 4 902 904 903 901
		f 4 1534 1533 1532 -1531
		mu 0 4 904 906 905 903
		f 4 1538 1537 1536 -1536
		mu 0 4 907 910 909 908
		f 4 1541 -1538 1540 1539
		mu 0 4 739 909 910 911
		f 4 -1543 -1542 1273 -310
		mu 0 4 912 909 739 736
		f 4 -1537 1542 -440 -1544
		mu 0 4 908 909 912 913
		f 4 -1533 1545 -307 -1545
		mu 0 4 903 905 915 914
		f 4 -1530 1544 -306 1546
		mu 0 4 901 903 914 916
		f 4 -1527 -1547 -305 1547
		mu 0 4 899 901 916 917
		f 4 -1524 -1548 -304 -1549
		mu 0 4 898 899 917 918
		f 4 -1520 1551 -1551 1549
		mu 0 4 894 895 920 919
		f 4 -1556 -1555 -1554 -1553
		mu 0 4 921 924 923 922
		f 4 1558 1413 -1558 -1557
		mu 0 4 925 832 730 926
		f 4 1561 -1532 1560 -1560
		mu 0 4 927 904 902 928
		f 4 1563 -1535 -1562 -1563
		mu 0 4 929 906 904 927
		f 4 1566 -1539 -1566 -1565
		mu 0 4 930 910 907 931
		f 4 -1541 -1567 -1569 1567
		mu 0 4 911 910 930 932
		f 4 -1572 -1571 -1271 -1570
		mu 0 4 933 934 731 734
		f 4 1574 -1522 1573 -1573
		mu 0 4 935 896 893 936
		f 4 -1578 -1526 -1577 -1576
		mu 0 4 937 900 897 938
		f 4 -1561 -1529 1577 -1579
		mu 0 4 928 902 900 937
		f 4 1557 1264 1570 -1580
		mu 0 4 926 730 731 934
		f 4 1522 1581 -1521 -1581
		mu 0 4 897 898 895 896
		f 4 1584 1583 -1519 -1583
		mu 0 4 939 942 941 940
		f 4 1548 1585 -1552 -1582
		mu 0 4 898 918 920 895
		f 4 1587 1582 -1550 -1587
		mu 0 4 943 939 940 919
		f 4 -1591 1589 1555 -1589
		mu 0 4 944 832 924 921
		f 4 -1559 1591 1554 -1590
		mu 0 4 832 925 923 924
		f 4 -1594 1592 1553 -1592
		mu 0 4 925 945 922 923
		f 4 1576 1580 -1575 -1595
		mu 0 4 938 897 896 935
		f 4 1598 -1598 -1597 -1596
		mu 0 4 946 949 948 947
		f 4 -1518 1316 1600 -1600
		mu 0 4 888 768 769 833
		f 4 1319 1601 -1418 -1601
		mu 0 4 769 771 834 833
		f 4 -1420 -1602 1409 -1603
		mu 0 4 835 834 771 786
		f 4 -1421 1602 -1340 -1363
		mu 0 4 803 835 786 787
		f 4 -1505 1412 1590 -1604
		mu 0 4 887 831 832 944
		f 4 -1509 -1607 -1606 -1605
		mu 0 4 890 891 950 942
		f 4 -1512 1604 -1585 -1608
		mu 0 4 884 890 942 939
		f 4 -1501 1607 -1588 -377
		mu 0 4 883 884 939 943
		f 4 1599 1415 -1415 -1506
		mu 0 4 888 833 733 831
		f 4 1611 -1611 1609 -1609
		mu 0 4 951 954 953 952
		f 4 1615 1614 1613 -1613
		mu 0 4 955 958 957 956
		f 4 1619 1618 1617 -1617
		mu 0 4 959 962 961 960
		f 4 1621 1608 1620 -1619
		mu 0 4 962 964 963 961
		f 4 1624 -1624 -1612 -1623
		mu 0 4 965 966 954 951
		f 4 1627 1626 -1616 -1626
		mu 0 4 967 968 958 955
		f 4 1630 1629 -1620 -1629
		mu 0 4 969 970 962 959
		f 4 1631 1622 -1622 -1630
		mu 0 4 970 971 964 962
		f 4 1605 -1634 -1625 -1633
		mu 0 4 972 973 966 965
		f 4 1588 1635 -1628 -1635
		mu 0 4 974 975 968 967
		f 4 -1574 1637 -1631 -1637
		mu 0 4 976 977 970 969
		f 4 -1584 1632 -1632 -1638
		mu 0 4 977 978 971 970
		f 4 -1621 1639 1595 -1639
		mu 0 4 961 963 979 947
		f 4 -1618 1638 1596 -1641
		mu 0 4 960 961 947 948
		f 4 -1614 1643 -1643 -1642
		mu 0 4 956 957 981 980
		f 4 -1610 -1645 -1599 -1640
		mu 0 4 952 953 949 946
		f 4 1375 1647 1646 -1646
		mu 0 4 982 985 984 983
		f 4 -1258 1650 1649 -1649
		mu 0 4 986 989 988 987
		f 4 -1222 -1654 1652 -1652
		mu 0 4 990 993 992 991
		f 4 1288 -1657 1655 -1655
		mu 0 4 994 997 996 995
		f 4 1379 1659 1658 -1658
		mu 0 4 998 1001 1000 999
		f 4 1661 -1651 -1230 -1661
		mu 0 4 1002 988 989 1003
		f 4 -1240 1664 1663 -1663
		mu 0 4 1004 1007 1006 1005
		f 4 1285 1651 1666 -1666
		mu 0 4 1008 990 991 1009
		f 4 -1233 -1669 1256 1667
		mu 0 4 698 699 722 723
		f 4 -1668 1648 1669 -1665
		mu 0 4 1007 986 987 1006
		f 4 1411 1367 1258 1670
		mu 0 4 773 796 694 722
		f 4 1324 1672 -1672 1325
		mu 0 4 775 772 1010 734
		f 4 1671 1674 -1674 1569
		mu 0 4 734 1010 1011 933
		f 4 1565 -1677 -1564 -1676
		mu 0 4 931 907 906 929
		f 4 1676 1535 1677 -1534
		mu 0 4 906 907 908 905
		f 4 -1678 1543 -308 -1546
		mu 0 4 905 908 913 915
		f 4 1680 1679 1660 -1679
		mu 0 4 1012 1015 1014 1013
		f 4 1371 1678 1226 -1682
		mu 0 4 808 810 692 693
		f 4 1368 1681 1366 -1683
		mu 0 4 799 808 693 797
		f 4 1683 1358 1682 1352
		mu 0 4 798 802 799 797
		f 4 -1685 -1408 -1684 1410
		mu 0 4 776 753 802 798
		f 4 -1270 -1296 1684 1327
		mu 0 4 735 732 753 776
		f 4 1685 1246 5 1250
		mu 0 4 717 710 711 716
		f 4 -1687 1282 -1686 1281
		mu 0 4 704 686 710 717
		f 4 1219 1686 1240 -1688
		mu 0 4 685 686 704 705
		f 4 1690 1689 1688 1238
		mu 0 4 703 1017 1016 702
		f 4 -1691 1662 1692 1691
		mu 0 4 1018 1004 1005 1019
		f 4 -1695 -1692 1693 1653
		mu 0 4 993 1018 1019 992
		f 4 1694 1218 -1696 -1690
		mu 0 4 1017 684 685 1016
		f 4 1695 1687 1696 -1689
		mu 0 4 1016 685 705 702
		f 4 -1698 -1238 -1697 1241
		mu 0 4 700 697 702 705
		f 4 1697 1234 -1699 -1231
		mu 0 4 697 700 688 696
		f 4 1698 1222 -1701 -1700
		mu 0 4 696 688 689 1020
		f 4 1700 1495 -1703 -1702
		mu 0 4 1020 689 878 1021
		f 4 1702 1705 -1705 -1704
		mu 0 4 1021 878 1023 1022
		f 4 1704 1708 -1708 -1707
		mu 0 4 1022 1023 932 1024
		f 4 -1711 1709 1707 1568
		mu 0 4 930 1025 1024 932
		f 4 1712 1710 1564 -1712
		mu 0 4 1011 1025 930 931
		f 4 1673 1711 1675 -1714
		mu 0 4 933 1011 931 929
		f 4 1713 1562 -1715 1571
		mu 0 4 933 929 927 934
		f 4 1579 1714 1559 1715
		mu 0 4 926 934 927 928
		f 4 1556 -1716 1578 1716
		mu 0 4 925 926 928 937
		f 4 1593 -1717 1575 -1718
		mu 0 4 945 925 937 938
		f 4 1717 1594 -1719 -1593
		mu 0 4 945 938 935 922
		f 4 1552 1718 1572 1719
		mu 0 4 921 922 935 936
		f 4 -1720 1636 -1721 -1636
		mu 0 4 975 976 969 968
		f 4 1720 1628 -1722 -1627
		mu 0 4 968 969 959 958
		f 4 1721 1616 1722 -1615
		mu 0 4 958 959 960 957
		f 4 -1723 1640 1723 -1644
		mu 0 4 957 960 948 981
		f 4 1724 1642 -1724 1597
		mu 0 4 949 1026 981 948
		f 4 -1726 1641 -1725 1644
		mu 0 4 953 1027 1026 949
		f 4 1726 1612 1725 1610
		mu 0 4 954 1028 1027 953
		f 4 1727 1625 -1727 1623
		mu 0 4 966 1029 1028 954
		f 4 1728 1634 -1728 1633
		mu 0 4 973 1030 1029 966
		f 4 -1730 1603 -1729 1606
		mu 0 4 891 887 944 950
		f 4 1730 1503 1729 1509
		mu 0 4 892 886 887 891
		f 4 1731 1516 -1731 1515
		mu 0 4 740 767 886 892
		f 4 -1732 1274 1732 -1315
		mu 0 4 767 740 741 766
		f 4 -1733 1292 1733 -1319
		mu 0 4 766 741 751 770
		f 4 -1734 1405 -1735 1408
		mu 0 4 770 751 820 785
		f 4 1734 1382 -1736 -1337
		mu 0 4 785 820 821 784
		f 4 1735 1482 -1737 -1482
		mu 0 4 784 821 862 868
		f 4 1492 1736 1475 506
		mu 0 4 875 868 862 863
		f 4 1738 1443 1737 1441
		mu 0 4 847 848 849 846
		f 4 -1740 1466 -1739 1465
		mu 0 4 825 828 848 847
		f 4 1397 1739 1392 -1741
		mu 0 4 806 828 825 793
		f 4 1741 1365 1740 1346
		mu 0 4 794 807 806 793
		f 4 -1743 -1424 -1742 1424
		mu 0 4 812 811 807 794
		f 4 1742 1374 -1744 -1373
		mu 0 4 811 812 813 810
		f 4 1743 1645 1744 -1681
		mu 0 4 1012 982 983 1015
		f 4 1746 1439 1745 1437
		mu 0 4 843 844 845 842
		f 4 -1748 1464 -1747 1463
		mu 0 4 827 826 844 843
		f 4 -1394 1747 1395 -1749
		mu 0 4 792 826 827 788
		f 4 1348 1748 1341 1749
		mu 0 4 795 792 788 789
		f 4 -1750 1426 -1751 -1426
		mu 0 4 795 789 816 815
		f 4 1750 1378 -1752 -1377
		mu 0 4 815 816 817 814
		f 4 1751 1657 1752 -1648
		mu 0 4 985 998 999 984
		f 4 1753 1263 41 1244
		mu 0 4 709 729 726 708
		f 4 -1755 1385 -1754 1287
		mu 0 4 746 818 729 709
		f 4 1754 1654 1755 -1660
		mu 0 4 1001 994 995 1000
		f 4 1756 1243 3 1259
		mu 0 4 725 706 707 724
		f 4 -1757 1284 -1758 1286
		mu 0 4 706 725 744 745
		f 4 1656 1757 1665 1758
		mu 0 4 996 997 1008 1009
		f 3 1760 -1760 -1445
		mu 0 3 850 1031 849
		f 3 1759 -1762 -1738
		mu 0 3 849 1031 846
		f 3 1761 -1763 -1441
		mu 0 3 846 1031 845
		f 3 1762 -1764 -1746
		mu 0 3 845 1031 842
		f 3 1763 -1765 -1437
		mu 0 3 842 1031 840
		f 3 1764 -1766 -1434
		mu 0 3 840 1031 838
		f 3 1765 -1767 -1431
		mu 0 3 838 1031 837
		f 3 1766 -1768 -1460
		mu 0 3 837 1031 858
		f 3 1767 -1769 -1457
		mu 0 3 858 1031 856
		f 3 1768 -1770 -1454
		mu 0 3 856 1031 854
		f 3 1769 -1771 -1451
		mu 0 3 854 1031 852
		f 3 1770 -1761 -1448
		mu 0 3 852 1031 850
		f 4 -1675 1772 -1772 -1713
		mu 0 4 1011 1010 1032 1025
		f 4 -1710 1771 -1774 1706
		mu 0 4 1024 1025 1032 1022
		f 4 1703 1773 1775 1774
		mu 0 4 1021 1022 1032 1033
		f 4 -1773 -1673 1776 -1776
		mu 0 4 1032 1010 772 1033
		f 4 1779 1778 -1568 -1778
		mu 0 4 1034 1037 1036 1035
		f 4 1782 -1273 -1782 1780
		mu 0 4 1038 1041 1040 1039
		f 4 1498 -1786 1784 -1784
		mu 0 4 1042 1045 1044 1043
		f 4 -1789 1787 -1787 -1706
		mu 0 4 1046 1049 1048 1047
		f 4 -1495 -1783 1789 1785
		mu 0 4 1045 1051 1050 1044
		f 4 1496 1783 1790 1788
		mu 0 4 1046 1042 1043 1049
		f 4 1786 1791 1777 -1709
		mu 0 4 1047 1048 1034 1035
		f 4 -1540 -1779 1792 1781
		mu 0 4 1040 1036 1037 1039
		f 4 1796 -1796 -1795 -1794
		mu 0 4 1052 1055 1054 1053
		f 4 1794 -1800 -1799 -1798
		mu 0 4 1053 1054 1057 1056
		f 4 1798 -1803 -1802 -1801
		mu 0 4 1056 1057 1059 1058
		f 4 1801 -1806 -1805 -1804
		mu 0 4 1060 1063 1062 1061
		f 4 1804 -1809 -1808 -1807
		mu 0 4 1061 1062 1065 1064
		f 4 1807 -1812 -1811 -1810
		mu 0 4 1064 1065 1067 1066
		f 4 1810 -1815 -1814 -1813
		mu 0 4 1066 1067 1069 1068
		f 4 1813 -1817 -1797 -1816
		mu 0 4 1068 1069 1055 1052
		f 4 1820 -1820 -1819 -1818
		mu 0 4 1070 1073 1072 1071
		f 4 1818 -1824 -1823 -1822
		mu 0 4 1071 1072 1075 1074
		f 4 1822 -1827 -1826 -1825
		mu 0 4 1074 1075 1077 1076
		f 4 1825 -1830 -1829 -1828
		mu 0 4 1078 1081 1080 1079
		f 4 1828 -1833 -1832 -1831
		mu 0 4 1079 1080 1083 1082
		f 4 1831 -1836 -1835 -1834
		mu 0 4 1082 1083 1085 1084
		f 4 1834 -1839 -1838 -1837
		mu 0 4 1084 1085 1087 1086
		f 4 1837 -1841 -1821 -1840
		mu 0 4 1086 1087 1073 1070
		f 4 1844 -1844 -1843 -1842
		mu 0 4 1088 1091 1090 1089
		f 4 1842 -1848 -1847 -1846
		mu 0 4 1089 1090 1093 1092
		f 4 1846 -1851 -1850 -1849
		mu 0 4 1092 1093 1095 1094
		f 4 1849 -1854 -1853 -1852
		mu 0 4 1096 1099 1098 1097
		f 4 1852 -1857 -1856 -1855
		mu 0 4 1097 1098 1101 1100
		f 4 1855 -1860 -1859 -1858
		mu 0 4 1100 1101 1103 1102
		f 4 1858 -1863 -1862 -1861
		mu 0 4 1102 1103 1105 1104
		f 4 1861 -1865 -1845 -1864
		mu 0 4 1104 1105 1091 1088
		f 3 1867 -1867 -1866
		mu 0 3 1106 1108 1107
		f 3 1866 -1870 -1869
		mu 0 3 1107 1108 1109
		f 3 1869 -1872 -1871
		mu 0 3 1109 1108 1110
		f 3 1871 -1874 -1873
		mu 0 3 1111 1108 1112
		f 3 1873 -1876 -1875
		mu 0 3 1112 1108 1113
		f 3 1875 -1878 -1877
		mu 0 3 1113 1108 1114
		f 3 1877 -1880 -1879
		mu 0 3 1114 1108 1115
		f 3 1879 -1868 -1881
		mu 0 3 1115 1108 1106
		f 4 1883 1793 -1883 -1882
		mu 0 4 1116 1052 1053 1117
		f 4 1882 1797 -1886 -1885
		mu 0 4 1117 1053 1056 1118
		f 4 1885 1800 -1888 -1887
		mu 0 4 1118 1056 1058 1119
		f 4 1887 1803 -1890 -1889
		mu 0 4 1120 1060 1061 1121
		f 4 1889 1806 -1892 -1891
		mu 0 4 1121 1061 1064 1122
		f 4 1891 1809 -1894 -1893
		mu 0 4 1122 1064 1066 1123
		f 4 1893 1812 -1896 -1895
		mu 0 4 1123 1066 1068 1124
		f 4 1895 1815 -1884 -1897
		mu 0 4 1124 1068 1052 1116
		f 4 1899 1817 -1899 -1898
		mu 0 4 1125 1070 1071 1126
		f 4 1898 1821 -1902 -1901
		mu 0 4 1126 1071 1074 1127
		f 4 1901 1824 -1904 -1903
		mu 0 4 1127 1074 1076 1128
		f 4 1903 1827 -1906 -1905
		mu 0 4 1129 1078 1079 1130
		f 4 1905 1830 -1908 -1907
		mu 0 4 1130 1079 1082 1131
		f 4 1907 1833 -1910 -1909
		mu 0 4 1131 1082 1084 1132
		f 4 1909 1836 -1912 -1911
		mu 0 4 1132 1084 1086 1133
		f 4 1911 1839 -1900 -1913
		mu 0 4 1133 1086 1070 1125
		f 4 1916 1915 -1915 -1914
		mu 0 4 1134 1137 1136 1135
		f 4 1914 1919 -1919 -1918
		mu 0 4 1135 1136 1139 1138
		f 4 1918 1922 -1922 -1921
		mu 0 4 1138 1139 1141 1140
		f 4 1921 1925 -1925 -1924
		mu 0 4 1142 1145 1144 1143
		f 4 1924 1928 -1928 -1927
		mu 0 4 1143 1144 1147 1146
		f 4 1927 1931 -1931 -1930
		mu 0 4 1146 1147 1149 1148
		f 4 1930 1934 -1934 -1933
		mu 0 4 1148 1149 1151 1150
		f 4 1933 1936 -1917 -1936
		mu 0 4 1150 1151 1137 1134
		f 4 1939 -1939 -1938 1864
		mu 0 4 1105 1153 1152 1091
		f 4 1941 -1941 -1940 1862
		mu 0 4 1103 1154 1153 1105
		f 4 1943 -1943 -1942 1859
		mu 0 4 1101 1155 1154 1103
		f 4 1945 -1945 -1944 1856
		mu 0 4 1098 1156 1155 1101
		f 4 1947 -1947 -1946 1853
		mu 0 4 1099 1157 1156 1098
		f 4 1949 -1949 -1948 1850
		mu 0 4 1093 1159 1158 1095
		f 4 1951 -1951 -1950 1847
		mu 0 4 1090 1160 1159 1093
		f 4 1937 -1953 -1952 1843
		mu 0 4 1091 1152 1160 1090
		f 4 1954 1880 -1954 1938
		mu 0 4 1153 1115 1106 1152
		f 4 1955 1878 -1955 1940
		mu 0 4 1154 1114 1115 1153
		f 4 1956 1876 -1956 1942
		mu 0 4 1155 1113 1114 1154
		f 4 1957 1874 -1957 1944
		mu 0 4 1156 1112 1113 1155
		f 4 1958 1872 -1958 1946
		mu 0 4 1157 1111 1112 1156
		f 4 1959 1870 -1959 1948
		mu 0 4 1159 1109 1110 1158
		f 4 1960 1868 -1960 1950
		mu 0 4 1160 1107 1109 1159
		f 4 1953 1865 -1961 1952
		mu 0 4 1152 1106 1107 1160
		f 4 1962 1841 -1962 -1916
		mu 0 4 1137 1088 1089 1136
		f 4 1961 1845 -1964 -1920
		mu 0 4 1136 1089 1092 1139
		f 4 1963 1848 -1965 -1923
		mu 0 4 1139 1092 1094 1141
		f 4 1964 1851 -1966 -1926
		mu 0 4 1145 1096 1097 1144
		f 4 1965 1854 -1967 -1929
		mu 0 4 1144 1097 1100 1147
		f 4 1966 1857 -1968 -1932
		mu 0 4 1147 1100 1102 1149
		f 4 1967 1860 -1969 -1935
		mu 0 4 1149 1102 1104 1151
		f 4 1968 1863 -1963 -1937
		mu 0 4 1151 1104 1088 1137
		f 4 1971 1913 -1971 -1970
		mu 0 4 1161 1134 1135 1162
		f 4 1970 1917 -1974 -1973
		mu 0 4 1162 1135 1138 1163
		f 4 1973 1920 -1976 -1975
		mu 0 4 1163 1138 1140 1164
		f 4 1975 1923 -1978 -1977
		mu 0 4 1165 1142 1143 1166
		f 4 1977 1926 -1980 -1979
		mu 0 4 1166 1143 1146 1167
		f 4 1979 1929 -1982 -1981
		mu 0 4 1167 1146 1148 1168
		f 4 1981 1932 -1984 -1983
		mu 0 4 1168 1148 1150 1169
		f 4 1983 1935 -1972 -1985
		mu 0 4 1169 1150 1134 1161
		f 4 1986 1984 -1986 1840
		mu 0 4 1087 1169 1161 1073
		f 4 1987 1982 -1987 1838
		mu 0 4 1085 1168 1169 1087
		f 4 1988 1980 -1988 1835
		mu 0 4 1083 1167 1168 1085
		f 4 1989 1978 -1989 1832
		mu 0 4 1080 1166 1167 1083
		f 4 1990 1976 -1990 1829
		mu 0 4 1081 1165 1166 1080
		f 4 1991 1974 -1991 1826
		mu 0 4 1075 1163 1164 1077
		f 4 1992 1972 -1992 1823
		mu 0 4 1072 1162 1163 1075
		f 4 1985 1969 -1993 1819
		mu 0 4 1073 1161 1162 1072
		f 4 1995 1897 -1995 -1994
		mu 0 4 1170 1125 1126 1171
		f 4 1994 1900 -1998 -1997
		mu 0 4 1171 1126 1127 1172
		f 4 1997 1902 -2000 -1999
		mu 0 4 1172 1127 1128 1173
		f 4 1999 1904 -2002 -2001
		mu 0 4 1174 1129 1130 1175;
	setAttr ".fc[1000:1499]"
		f 4 2001 1906 -2004 -2003
		mu 0 4 1175 1130 1131 1176
		f 4 2003 1908 -2006 -2005
		mu 0 4 1176 1131 1132 1177
		f 4 2005 1910 -2008 -2007
		mu 0 4 1177 1132 1133 1178
		f 4 2007 1912 -1996 -2009
		mu 0 4 1178 1133 1125 1170
		f 4 2010 2008 -2010 1816
		mu 0 4 1069 1178 1170 1055
		f 4 2011 2006 -2011 1814
		mu 0 4 1067 1177 1178 1069
		f 4 2012 2004 -2012 1811
		mu 0 4 1065 1176 1177 1067
		f 4 2013 2002 -2013 1808
		mu 0 4 1062 1175 1176 1065
		f 4 2014 2000 -2014 1805
		mu 0 4 1063 1174 1175 1062
		f 4 2015 1998 -2015 1802
		mu 0 4 1057 1172 1173 1059
		f 4 2016 1996 -2016 1799
		mu 0 4 1054 1171 1172 1057
		f 4 2009 1993 -2017 1795
		mu 0 4 1055 1170 1171 1054
		f 4 2018 1881 -2018 -1780
		mu 0 4 1034 1116 1117 1037
		f 4 2017 1884 -2020 -1793
		mu 0 4 1037 1117 1118 1039
		f 4 2019 1886 -2021 -1781
		mu 0 4 1039 1118 1119 1038
		f 4 2020 1888 -2022 -1790
		mu 0 4 1050 1120 1121 1044
		f 4 2021 1890 -2023 -1785
		mu 0 4 1044 1121 1122 1043
		f 4 2022 1892 -2024 -1791
		mu 0 4 1043 1122 1123 1049
		f 4 2023 1894 -2025 -1788
		mu 0 4 1049 1123 1124 1048
		f 4 2024 1896 -2019 -1792
		mu 0 4 1048 1124 1116 1034
		f 4 1233 1699 -2027 -2026
		mu 0 4 699 696 1020 1179
		f 4 -1775 -2028 2026 1701
		mu 0 4 1021 1033 1179 1020
		f 4 -1671 1668 2025 -2029
		mu 0 4 773 722 699 1179
		f 4 -1777 1321 2028 2027
		mu 0 4 1033 772 773 1179
		f 4 2032 2031 -2031 -2030
		mu 0 4 1180 1183 1182 1181
		f 4 2036 2035 -2035 -2034
		mu 0 4 1184 1187 1186 1185
		f 4 2040 2039 -2039 -2038
		mu 0 4 1188 1191 1190 1189
		f 4 2044 2043 -2043 -2042
		mu 0 4 1192 1195 1194 1193
		f 4 2048 2047 -2047 -2046
		mu 0 4 1196 1199 1198 1197
		f 4 2052 2051 -2051 -2050
		mu 0 4 1200 1203 1202 1201
		f 4 2056 2055 -2055 -2054
		mu 0 4 1204 1207 1206 1205
		f 4 2060 2059 -2059 -2058
		mu 0 4 1208 1211 1210 1209
		f 4 2034 2062 -2057 -2062
		mu 0 4 1185 1186 1207 1204
		f 4 2050 2064 -2037 -2064
		mu 0 4 1212 1213 1187 1184
		f 4 2054 2066 -2041 -2066
		mu 0 4 1205 1206 1191 1188
		f 4 2038 2068 -2061 -2068
		mu 0 4 1189 1190 1211 1208
		f 4 2030 2070 -2053 -2070
		mu 0 4 1181 1182 1203 1200
		f 4 2046 2072 -2033 -2072
		mu 0 4 1197 1198 1183 1180
		f 4 2042 2074 -2049 -2074
		mu 0 4 1193 1194 1199 1196
		f 4 2058 2076 -2045 -2076
		mu 0 4 1209 1210 1195 1192
		f 4 2080 2079 -2079 -2078
		mu 0 4 1214 1217 1216 1215
		f 4 2084 2083 -2083 -2082
		mu 0 4 1218 1221 1220 1219
		f 4 2088 2087 -2087 -2086
		mu 0 4 1222 1225 1224 1223
		f 4 2092 2091 -2091 -2090
		mu 0 4 1226 1229 1228 1227
		f 4 2096 2095 -2095 -2094
		mu 0 4 1230 1233 1232 1231
		f 4 2100 2099 -2099 -2098
		mu 0 4 1234 1237 1236 1235
		f 4 2104 2103 -2103 -2102
		mu 0 4 1238 1241 1240 1239
		f 4 2108 2107 -2107 -2106
		mu 0 4 1242 1245 1244 1243
		f 4 2082 2110 -2105 -2110
		mu 0 4 1219 1220 1241 1238
		f 4 2098 2112 -2085 -2112
		mu 0 4 1246 1247 1221 1218
		f 4 2102 2114 -2089 -2114
		mu 0 4 1239 1240 1225 1222
		f 4 2086 2116 -2109 -2116
		mu 0 4 1223 1224 1245 1242
		f 4 2078 2118 -2101 -2118
		mu 0 4 1215 1216 1237 1234
		f 4 2094 2120 -2081 -2120
		mu 0 4 1231 1232 1217 1214
		f 4 2090 2122 -2097 -2122
		mu 0 4 1227 1228 1233 1230
		f 4 2106 2124 -2093 -2124
		mu 0 4 1243 1244 1229 1226
		f 4 2128 2127 -2127 -2126
		mu 0 4 1248 1251 1250 1249
		f 4 2132 2131 -2131 -2130
		mu 0 4 1252 1255 1254 1253
		f 4 2136 2135 -2135 -2134
		mu 0 4 1256 1259 1258 1257
		f 4 2140 2139 -2139 -2138
		mu 0 4 1260 1263 1262 1261
		f 4 2144 2143 -2143 -2142
		mu 0 4 1264 1267 1266 1265
		f 4 2148 2147 -2147 -2146
		mu 0 4 1268 1271 1270 1269
		f 4 2152 2151 -2151 -2150
		mu 0 4 1272 1275 1274 1273
		f 4 2156 2155 -2155 -2154
		mu 0 4 1276 1279 1278 1277
		f 4 2130 2158 -2153 -2158
		mu 0 4 1253 1254 1275 1272
		f 4 2146 2160 -2133 -2160
		mu 0 4 1280 1281 1255 1252
		f 4 2150 2162 -2137 -2162
		mu 0 4 1273 1274 1259 1256
		f 4 2134 2164 -2157 -2164
		mu 0 4 1257 1258 1279 1276
		f 4 2126 2166 -2149 -2166
		mu 0 4 1249 1250 1271 1268
		f 4 2142 2168 -2129 -2168
		mu 0 4 1265 1266 1251 1248
		f 4 2138 2170 -2145 -2170
		mu 0 4 1261 1262 1267 1264
		f 4 2154 2172 -2141 -2172
		mu 0 4 1277 1278 1263 1260
		f 3 -2176 2174 2173
		mu 0 3 1282 1284 1283
		f 3 -2179 2177 2176
		mu 0 3 1282 1286 1285
		f 3 -2182 2180 2179
		mu 0 3 1282 1288 1287
		f 3 -2185 2183 2182
		mu 0 3 1282 1290 1289
		f 3 -2188 2186 2185
		mu 0 3 1282 1292 1291
		f 3 -2191 2189 2188
		mu 0 3 1282 1294 1293
		f 3 -2194 2192 2191
		mu 0 3 1282 1296 1295
		f 3 -2197 2195 2194
		mu 0 3 1282 1298 1297
		f 3 -2192 2197 2178
		mu 0 3 1282 1295 1286
		f 3 -2177 2198 2190
		mu 0 3 1282 1285 1299
		f 3 -2180 2199 2193
		mu 0 3 1282 1287 1296
		f 3 -2195 2200 2181
		mu 0 3 1282 1297 1288
		f 3 -2189 2201 2175
		mu 0 3 1282 1293 1284
		f 3 -2174 2202 2187
		mu 0 3 1282 1283 1292
		f 3 -2186 2203 2184
		mu 0 3 1282 1291 1290
		f 3 -2183 2204 2196
		mu 0 3 1282 1289 1298
		f 4 2208 -2208 -2207 -2206
		mu 0 4 1300 1303 1302 1301
		f 4 2206 -2212 -2211 -2210
		mu 0 4 1301 1302 1305 1304
		f 4 2210 -2215 -2214 -2213
		mu 0 4 1304 1305 1307 1306
		f 4 2213 -2218 -2217 -2216
		mu 0 4 1308 1311 1310 1309
		f 4 2216 -2221 -2220 -2219
		mu 0 4 1309 1310 1313 1312
		f 4 2219 -2224 -2223 -2222
		mu 0 4 1312 1313 1315 1314
		f 4 2222 -2227 -2226 -2225
		mu 0 4 1314 1315 1317 1316
		f 4 2225 -2230 -2229 -2228
		mu 0 4 1316 1317 1319 1318
		f 4 2228 -2233 -2232 -2231
		mu 0 4 1318 1319 1321 1320
		f 4 2231 -2236 -2235 -2234
		mu 0 4 1320 1321 1323 1322
		f 4 2234 -2239 -2238 -2237
		mu 0 4 1322 1323 1325 1324
		f 4 2237 -2242 -2241 -2240
		mu 0 4 1324 1325 1327 1326
		f 4 2240 -2245 -2244 -2243
		mu 0 4 1326 1327 1329 1328
		f 4 2243 -2248 -2247 -2246
		mu 0 4 1328 1329 1331 1330
		f 4 2246 -2251 -2250 -2249
		mu 0 4 1330 1331 1333 1332
		f 4 2249 -2253 -2209 -2252
		mu 0 4 1332 1333 1303 1300
		f 4 2254 2029 -2254 -1647
		mu 0 4 984 1180 1181 983
		f 4 2253 2069 -2256 -1745
		mu 0 4 983 1181 1200 1015
		f 4 2255 2049 -2257 -1680
		mu 0 4 1015 1200 1201 1014
		f 4 2256 2063 -2258 -1662
		mu 0 4 1002 1212 1184 988
		f 4 2257 2033 -2259 -1650
		mu 0 4 988 1184 1185 987
		f 4 2258 2061 -2260 -1670
		mu 0 4 987 1185 1204 1006
		f 4 2259 2053 -2261 -1664
		mu 0 4 1006 1204 1205 1005
		f 4 2260 2065 -2262 -1693
		mu 0 4 1005 1205 1188 1019
		f 4 2261 2037 -2263 -1694
		mu 0 4 1019 1188 1189 992
		f 4 2262 2067 -2264 -1653
		mu 0 4 992 1189 1208 991
		f 4 2263 2057 -2265 -1667
		mu 0 4 991 1208 1209 1009
		f 4 2264 2075 -2266 -1759
		mu 0 4 1009 1209 1192 996
		f 4 2265 2041 -2267 -1656
		mu 0 4 996 1192 1193 995
		f 4 2266 2073 -2268 -1756
		mu 0 4 995 1193 1196 1000
		f 4 2267 2045 -2269 -1659
		mu 0 4 1000 1196 1197 999
		f 4 2268 2071 -2255 -1753
		mu 0 4 999 1197 1180 984
		f 4 2270 2077 -2270 -2032
		mu 0 4 1183 1214 1215 1182
		f 4 2269 2117 -2272 -2071
		mu 0 4 1182 1215 1234 1203
		f 4 2271 2097 -2273 -2052
		mu 0 4 1203 1234 1235 1202
		f 4 2272 2111 -2274 -2065
		mu 0 4 1213 1246 1218 1187
		f 4 2273 2081 -2275 -2036
		mu 0 4 1187 1218 1219 1186
		f 4 2274 2109 -2276 -2063
		mu 0 4 1186 1219 1238 1207
		f 4 2275 2101 -2277 -2056
		mu 0 4 1207 1238 1239 1206
		f 4 2276 2113 -2278 -2067
		mu 0 4 1206 1239 1222 1191
		f 4 2277 2085 -2279 -2040
		mu 0 4 1191 1222 1223 1190
		f 4 2278 2115 -2280 -2069
		mu 0 4 1190 1223 1242 1211
		f 4 2279 2105 -2281 -2060
		mu 0 4 1211 1242 1243 1210
		f 4 2280 2123 -2282 -2077
		mu 0 4 1210 1243 1226 1195
		f 4 2281 2089 -2283 -2044
		mu 0 4 1195 1226 1227 1194
		f 4 2282 2121 -2284 -2075
		mu 0 4 1194 1227 1230 1199
		f 4 2283 2093 -2285 -2048
		mu 0 4 1199 1230 1231 1198
		f 4 2284 2119 -2271 -2073
		mu 0 4 1198 1231 1214 1183
		f 4 2286 2125 -2286 -2080
		mu 0 4 1217 1248 1249 1216
		f 4 2285 2165 -2288 -2119
		mu 0 4 1216 1249 1268 1237
		f 4 2287 2145 -2289 -2100
		mu 0 4 1237 1268 1269 1236
		f 4 2288 2159 -2290 -2113
		mu 0 4 1247 1280 1252 1221
		f 4 2289 2129 -2291 -2084
		mu 0 4 1221 1252 1253 1220
		f 4 2290 2157 -2292 -2111
		mu 0 4 1220 1253 1272 1241
		f 4 2291 2149 -2293 -2104
		mu 0 4 1241 1272 1273 1240
		f 4 2292 2161 -2294 -2115
		mu 0 4 1240 1273 1256 1225
		f 4 2293 2133 -2295 -2088
		mu 0 4 1225 1256 1257 1224
		f 4 2294 2163 -2296 -2117
		mu 0 4 1224 1257 1276 1245
		f 4 2295 2153 -2297 -2108
		mu 0 4 1245 1276 1277 1244
		f 4 2296 2171 -2298 -2125
		mu 0 4 1244 1277 1260 1229
		f 4 2297 2137 -2299 -2092
		mu 0 4 1229 1260 1261 1228
		f 4 2298 2169 -2300 -2123
		mu 0 4 1228 1261 1264 1233
		f 4 2299 2141 -2301 -2096
		mu 0 4 1233 1264 1265 1232
		f 4 2300 2167 -2287 -2121
		mu 0 4 1232 1265 1248 1217
		f 4 2304 2303 -2303 -2302
		mu 0 4 1334 1337 1336 1335
		f 4 2302 2307 -2307 -2306
		mu 0 4 1335 1336 1339 1338
		f 4 2306 2310 -2310 -2309
		mu 0 4 1338 1339 1341 1340
		f 4 2309 2313 -2313 -2312
		mu 0 4 1342 1345 1344 1343
		f 4 2312 2316 -2316 -2315
		mu 0 4 1343 1344 1347 1346
		f 4 2315 2319 -2319 -2318
		mu 0 4 1346 1347 1349 1348
		f 4 2318 2322 -2322 -2321
		mu 0 4 1348 1349 1351 1350
		f 4 2321 2325 -2325 -2324
		mu 0 4 1350 1351 1353 1352
		f 4 2324 2328 -2328 -2327
		mu 0 4 1352 1353 1355 1354
		f 4 2327 2331 -2331 -2330
		mu 0 4 1354 1355 1357 1356
		f 4 2330 2334 -2334 -2333
		mu 0 4 1356 1357 1359 1358
		f 4 2333 2337 -2337 -2336
		mu 0 4 1358 1359 1361 1360
		f 4 2336 2340 -2340 -2339
		mu 0 4 1360 1361 1363 1362
		f 4 2339 2343 -2343 -2342
		mu 0 4 1362 1363 1365 1364
		f 4 2342 2346 -2346 -2345
		mu 0 4 1364 1365 1367 1366
		f 4 2345 2348 -2305 -2348
		mu 0 4 1366 1367 1337 1334
		f 4 2350 2301 -2350 -2128
		mu 0 4 1251 1334 1335 1250
		f 4 2349 2305 -2352 -2167
		mu 0 4 1250 1335 1338 1271
		f 4 2351 2308 -2353 -2148
		mu 0 4 1271 1338 1340 1270
		f 4 2352 2311 -2354 -2161
		mu 0 4 1281 1342 1343 1255
		f 4 2353 2314 -2355 -2132
		mu 0 4 1255 1343 1346 1254
		f 4 2354 2317 -2356 -2159
		mu 0 4 1254 1346 1348 1275
		f 4 2355 2320 -2357 -2152
		mu 0 4 1275 1348 1350 1274
		f 4 2356 2323 -2358 -2163
		mu 0 4 1274 1350 1352 1259
		f 4 2357 2326 -2359 -2136
		mu 0 4 1259 1352 1354 1258
		f 4 2358 2329 -2360 -2165
		mu 0 4 1258 1354 1356 1279
		f 4 2359 2332 -2361 -2156
		mu 0 4 1279 1356 1358 1278
		f 4 2360 2335 -2362 -2173
		mu 0 4 1278 1358 1360 1263
		f 4 2361 2338 -2363 -2140
		mu 0 4 1263 1360 1362 1262
		f 4 2362 2341 -2364 -2171
		mu 0 4 1262 1362 1364 1267
		f 4 2363 2344 -2365 -2144
		mu 0 4 1267 1364 1366 1266
		f 4 2364 2347 -2351 -2169
		mu 0 4 1266 1366 1334 1251
		f 4 2366 2205 -2366 -2304
		mu 0 4 1337 1300 1301 1336
		f 4 2365 2209 -2368 -2308
		mu 0 4 1336 1301 1304 1339
		f 4 2367 2212 -2369 -2311
		mu 0 4 1339 1304 1306 1341
		f 4 2368 2215 -2370 -2314
		mu 0 4 1345 1308 1309 1344
		f 4 2369 2218 -2371 -2317
		mu 0 4 1344 1309 1312 1347
		f 4 2370 2221 -2372 -2320
		mu 0 4 1347 1312 1314 1349
		f 4 2371 2224 -2373 -2323
		mu 0 4 1349 1314 1316 1351
		f 4 2372 2227 -2374 -2326
		mu 0 4 1351 1316 1318 1353
		f 4 2373 2230 -2375 -2329
		mu 0 4 1353 1318 1320 1355
		f 4 2374 2233 -2376 -2332
		mu 0 4 1355 1320 1322 1357
		f 4 2375 2236 -2377 -2335
		mu 0 4 1357 1322 1324 1359
		f 4 2376 2239 -2378 -2338
		mu 0 4 1359 1324 1326 1361
		f 4 2377 2242 -2379 -2341
		mu 0 4 1361 1326 1328 1363
		f 4 2378 2245 -2380 -2344
		mu 0 4 1363 1328 1330 1365
		f 4 2379 2248 -2381 -2347
		mu 0 4 1365 1330 1332 1367
		f 4 2380 2251 -2367 -2349
		mu 0 4 1367 1332 1300 1337
		f 4 2382 -2203 -2382 2252
		mu 0 4 1333 1292 1283 1303
		f 4 2383 -2187 -2383 2250
		mu 0 4 1331 1291 1292 1333
		f 4 2384 -2204 -2384 2247
		mu 0 4 1329 1290 1291 1331
		f 4 2385 -2184 -2385 2244
		mu 0 4 1327 1289 1290 1329
		f 4 2386 -2205 -2386 2241
		mu 0 4 1325 1298 1289 1327
		f 4 2387 -2196 -2387 2238
		mu 0 4 1323 1297 1298 1325
		f 4 2388 -2201 -2388 2235
		mu 0 4 1321 1288 1297 1323
		f 4 2389 -2181 -2389 2232
		mu 0 4 1319 1287 1288 1321
		f 4 2390 -2200 -2390 2229
		mu 0 4 1317 1296 1287 1319
		f 4 2391 -2193 -2391 2226
		mu 0 4 1315 1295 1296 1317
		f 4 2392 -2198 -2392 2223
		mu 0 4 1313 1286 1295 1315
		f 4 2393 -2178 -2393 2220
		mu 0 4 1310 1285 1286 1313
		f 4 2394 -2199 -2394 2217
		mu 0 4 1311 1299 1285 1310
		f 4 2395 -2190 -2395 2214
		mu 0 4 1305 1293 1294 1307
		f 4 2396 -2202 -2396 2211
		mu 0 4 1302 1284 1293 1305
		f 4 2381 -2175 -2397 2207
		mu 0 4 1303 1283 1284 1302
		f 4 2397 2446 -2422 -2446
		mu 0 4 1368 1369 1370 1371
		f 4 2398 2447 -2423 -2447
		mu 0 4 1369 1372 1373 1370
		f 4 2399 2448 -2424 -2448
		mu 0 4 1372 1374 1375 1373
		f 4 2400 2449 -2425 -2449
		mu 0 4 1374 1376 1377 1375
		f 4 2401 2450 -2426 -2450
		mu 0 4 1376 1378 1379 1377
		f 4 2402 2451 -2427 -2451
		mu 0 4 1378 1380 1381 1379
		f 4 2403 2452 -2428 -2452
		mu 0 4 1380 1382 1383 1381
		f 4 2404 2453 -2429 -2453
		mu 0 4 1382 1384 1385 1383
		f 4 2405 2454 -2430 -2454
		mu 0 4 1384 1386 1387 1385
		f 4 2406 2455 -2431 -2455
		mu 0 4 1386 1388 1389 1387
		f 4 2407 2456 -2432 -2456
		mu 0 4 1388 1390 1391 1389
		f 4 2408 2457 -2433 -2457
		mu 0 4 1390 1392 1393 1391
		f 4 2409 2458 -2434 -2458
		mu 0 4 1392 1394 1395 1393
		f 4 2410 2459 -2435 -2459
		mu 0 4 1394 1396 1397 1395
		f 4 2411 2460 -2436 -2460
		mu 0 4 1396 1398 1399 1397
		f 4 2412 2461 -2437 -2461
		mu 0 4 1398 1400 1401 1399
		f 4 2413 2462 -2438 -2462
		mu 0 4 1400 1402 1403 1401
		f 4 2414 2463 -2439 -2463
		mu 0 4 1402 1404 1405 1403
		f 4 2415 2464 -2440 -2464
		mu 0 4 1404 1406 1407 1405
		f 4 2416 2465 -2441 -2465
		mu 0 4 1406 1408 1409 1407
		f 4 2417 2466 -2442 -2466
		mu 0 4 1408 1410 1411 1409
		f 4 2418 2467 -2443 -2467
		mu 0 4 1410 1412 1413 1411
		f 4 2419 2468 -2444 -2468
		mu 0 4 1412 1414 1415 1413
		f 4 2420 2445 -2445 -2469
		mu 0 4 1414 1368 1371 1415
		f 4 2565 2542 2523 -2542
		mu 0 4 1416 1417 1418 1419
		f 4 2566 2543 2522 -2543
		mu 0 4 1417 1420 1421 1418
		f 4 2567 2544 2521 -2544
		mu 0 4 1420 1422 1423 1421
		f 4 2568 2545 2520 -2545
		mu 0 4 1422 1424 1425 1423
		f 4 2569 2546 2519 -2546
		mu 0 4 1424 1426 1427 1425
		f 4 2570 2547 2518 -2547
		mu 0 4 1426 1428 1429 1427
		f 4 2571 2548 2517 -2548
		mu 0 4 1428 1430 1431 1429
		f 4 2572 2549 2540 -2549
		mu 0 4 1430 1432 1433 1431
		f 4 2573 2550 2539 -2550
		mu 0 4 1432 1434 1435 1433
		f 4 2574 2551 2538 -2551
		mu 0 4 1434 1436 1437 1435
		f 4 2575 2552 2537 -2552
		mu 0 4 1436 1438 1439 1437
		f 4 2576 2553 2536 -2553
		mu 0 4 1438 1440 1441 1439
		f 4 2577 2554 2535 -2554
		mu 0 4 1440 1442 1443 1441
		f 4 2578 2555 2534 -2555
		mu 0 4 1442 1444 1445 1443
		f 4 2579 2556 2533 -2556
		mu 0 4 1444 1446 1447 1445
		f 4 2580 2557 2532 -2557
		mu 0 4 1446 1448 1449 1447
		f 4 2581 2558 2531 -2558
		mu 0 4 1448 1450 1451 1449
		f 4 2582 2559 2530 -2559
		mu 0 4 1450 1452 1453 1451
		f 4 2583 2560 2529 -2560
		mu 0 4 1452 1454 1455 1453
		f 4 2584 2561 2528 -2561
		mu 0 4 1454 1456 1457 1455
		f 4 2585 2562 2527 -2562
		mu 0 4 1456 1458 1459 1457
		f 4 2586 2563 2526 -2563
		mu 0 4 1458 1460 1461 1459
		f 4 2587 2564 2525 -2564
		mu 0 4 1460 1462 1463 1461
		f 4 2588 2541 2524 -2565
		mu 0 4 1462 1416 1419 1463
		f 3 -2518 2493 -2495
		mu 0 3 1429 1431 1464
		f 3 -2519 2494 -2496
		mu 0 3 1427 1429 1464
		f 3 -2520 2495 -2497
		mu 0 3 1425 1427 1464
		f 3 -2521 2496 -2498
		mu 0 3 1423 1425 1464
		f 3 -2522 2497 -2499
		mu 0 3 1421 1423 1464
		f 3 -2523 2498 -2500
		mu 0 3 1418 1421 1464
		f 3 -2524 2499 -2501
		mu 0 3 1419 1418 1464
		f 3 -2525 2500 -2502
		mu 0 3 1463 1419 1464
		f 3 -2526 2501 -2503
		mu 0 3 1461 1463 1464
		f 3 -2527 2502 -2504
		mu 0 3 1459 1461 1464
		f 3 -2528 2503 -2505
		mu 0 3 1457 1459 1464
		f 3 -2529 2504 -2506
		mu 0 3 1455 1457 1464
		f 3 -2530 2505 -2507
		mu 0 3 1453 1455 1464
		f 3 -2531 2506 -2508
		mu 0 3 1451 1453 1464
		f 3 -2532 2507 -2509
		mu 0 3 1449 1451 1464
		f 3 -2533 2508 -2510
		mu 0 3 1447 1449 1464
		f 3 -2534 2509 -2511
		mu 0 3 1445 1447 1464
		f 3 -2535 2510 -2512
		mu 0 3 1443 1445 1464
		f 3 -2536 2511 -2513
		mu 0 3 1441 1443 1464
		f 3 -2537 2512 -2514
		mu 0 3 1439 1441 1464
		f 3 -2538 2513 -2515
		mu 0 3 1437 1439 1464
		f 3 -2539 2514 -2516
		mu 0 3 1435 1437 1464
		f 3 -2540 2515 -2517
		mu 0 3 1433 1435 1464
		f 3 -2541 2516 -2494
		mu 0 3 1431 1433 1464
		f 4 2421 2470 -2566 -2470
		mu 0 4 1371 1370 1417 1416
		f 4 2422 2471 -2567 -2471
		mu 0 4 1370 1373 1420 1417
		f 4 2423 2472 -2568 -2472
		mu 0 4 1373 1375 1422 1420
		f 4 2424 2473 -2569 -2473
		mu 0 4 1375 1377 1424 1422
		f 4 2425 2474 -2570 -2474
		mu 0 4 1377 1379 1426 1424
		f 4 2426 2475 -2571 -2475
		mu 0 4 1379 1381 1428 1426
		f 4 2427 2476 -2572 -2476
		mu 0 4 1381 1383 1430 1428
		f 4 2428 2477 -2573 -2477
		mu 0 4 1383 1385 1432 1430
		f 4 2429 2478 -2574 -2478
		mu 0 4 1385 1387 1434 1432
		f 4 2430 2479 -2575 -2479
		mu 0 4 1387 1389 1436 1434
		f 4 2431 2480 -2576 -2480
		mu 0 4 1389 1391 1438 1436
		f 4 2432 2481 -2577 -2481
		mu 0 4 1391 1393 1440 1438
		f 4 2433 2482 -2578 -2482
		mu 0 4 1393 1395 1442 1440
		f 4 2434 2483 -2579 -2483
		mu 0 4 1395 1397 1444 1442
		f 4 2435 2484 -2580 -2484
		mu 0 4 1397 1399 1446 1444
		f 4 2436 2485 -2581 -2485
		mu 0 4 1399 1401 1448 1446
		f 4 2437 2486 -2582 -2486
		mu 0 4 1401 1403 1450 1448
		f 4 2438 2487 -2583 -2487
		mu 0 4 1403 1405 1452 1450
		f 4 2439 2488 -2584 -2488
		mu 0 4 1405 1407 1454 1452
		f 4 2440 2489 -2585 -2489
		mu 0 4 1407 1409 1456 1454
		f 4 2441 2490 -2586 -2490
		mu 0 4 1409 1411 1458 1456
		f 4 2442 2491 -2587 -2491
		mu 0 4 1411 1413 1460 1458
		f 4 2443 2492 -2588 -2492
		mu 0 4 1413 1415 1462 1460
		f 4 2444 2469 -2589 -2493
		mu 0 4 1415 1371 1416 1462
		f 4 -2398 2589 2591 -2591
		mu 0 4 1465 1466 1467 1468
		f 4 -2399 2590 2593 -2593
		mu 0 4 1469 1465 1468 1470
		f 4 -2400 2592 2595 -2595
		mu 0 4 1471 1469 1470 1472
		f 4 -2401 2594 2597 -2597
		mu 0 4 1473 1471 1472 1474
		f 4 -2402 2596 2599 -2599
		mu 0 4 1475 1473 1474 1476
		f 4 -2403 2598 2601 -2601
		mu 0 4 1477 1475 1476 1478
		f 4 -2404 2600 2603 -2603
		mu 0 4 1479 1477 1478 1480
		f 4 -2405 2602 2605 -2605
		mu 0 4 1481 1479 1480 1482
		f 4 -2406 2604 2607 -2607
		mu 0 4 1483 1481 1482 1484
		f 4 -2407 2606 2609 -2609
		mu 0 4 1485 1483 1484 1486
		f 4 -2408 2608 2611 -2611
		mu 0 4 1487 1485 1486 1488
		f 4 -2409 2610 2613 -2613
		mu 0 4 1489 1487 1488 1490
		f 4 -2410 2612 2615 -2615
		mu 0 4 1491 1489 1490 1492
		f 4 -2411 2614 2617 -2617
		mu 0 4 1493 1491 1492 1494
		f 4 -2412 2616 2619 -2619
		mu 0 4 1495 1493 1494 1496
		f 4 -2413 2618 2621 -2621
		mu 0 4 1497 1495 1496 1498
		f 4 -2414 2620 2623 -2623
		mu 0 4 1499 1497 1498 1500
		f 4 -2415 2622 2625 -2625
		mu 0 4 1501 1499 1500 1502
		f 4 -2416 2624 2627 -2627
		mu 0 4 1503 1501 1502 1504
		f 4 -2417 2626 2629 -2629
		mu 0 4 1505 1503 1504 1506
		f 4 -2418 2628 2631 -2631
		mu 0 4 1507 1505 1506 1508
		f 4 -2419 2630 2633 -2633
		mu 0 4 1509 1507 1508 1510
		f 4 -2420 2632 2635 -2635
		mu 0 4 1511 1509 1510 1512
		f 4 -2421 2634 2636 -2590
		mu 0 4 1466 1511 1512 1467
		f 4 2896 2859 2702 2719
		mu 0 4 1513 1514 1515 1516
		f 4 2881 2969 2921 -2844
		mu 0 4 1517 1518 1519 1520
		f 4 2866 2829 2714 2707
		mu 0 4 1521 1522 1523 1524
		f 4 2983 2936 -2715 2718
		mu 0 4 1525 1526 1524 1523
		f 4 2708 2990 2944 2713
		mu 0 4 1527 1528 1529 1530
		f 4 2899 2862 2730 -2862
		mu 0 4 1531 1532 1533 1534
		f 4 2986 2939 -2730 -2939
		mu 0 4 1535 1536 1537 1538
		f 4 2729 2711 2863 -2648
		mu 0 4 1538 1537 1539 1540
		f 4 2732 2712 2987 -2649
		mu 0 4 1541 1542 1543 1544
		f 4 2869 2832 2694 2738
		mu 0 4 1545 1546 1547 1548
		f 4 2981 2933 -2695 2698
		mu 0 4 1549 1550 1548 1547
		f 4 2893 2856 2733 2699
		mu 0 4 1551 1552 1553 1554
		f 4 2739 2993 2947 2693
		mu 0 4 1555 1556 1557 1558
		f 4 2889 2852 2666 2756
		mu 0 4 1559 1560 1561 1562
		f 4 2977 2929 2667 2755
		mu 0 4 1563 1564 1565 1566
		f 4 2671 2873 2836 -2668
		mu 0 4 1565 1567 1568 1566
		f 4 2672 2960 2912 -2669
		mu 0 4 1569 1570 1571 1572
		f 4 2886 2849 2686 2772
		mu 0 4 1573 1574 1575 1576
		f 4 2974 2926 2687 2771
		mu 0 4 1577 1578 1579 1580
		f 4 2691 2876 2839 -2688
		mu 0 4 1579 1581 1582 1580
		f 4 2692 2963 2915 -2689
		mu 0 4 1583 1584 1585 1586
		f 4 2890 3015 2998 -2853
		mu 0 4 1560 1587 1588 1561
		f 4 2978 3017 3000 -2930
		mu 0 4 1564 1589 1590 1565
		f 4 3018 3001 -2672 -3001
		mu 0 4 1590 1591 1567 1565
		f 4 3025 3008 -2824 -3008
		mu 0 4 1592 1593 1594 1595
		f 4 2949 2901 -2785 -2901
		mu 0 4 1596 1597 1598 1599
		f 4 2782 -3014 3031 2996
		mu 0 4 1600 1601 1602 1603
		f 4 2783 2675 2959 -2673
		mu 0 4 1604 1605 1606 1607
		f 4 3020 3003 -2784 -3003
		mu 0 4 1608 1609 1605 1604
		f 4 2950 2902 -2781 -2902
		mu 0 4 1597 1610 1611 1598
		f 4 2778 -3013 3030 3013
		mu 0 4 1601 1612 1613 1602
		f 4 2779 2679 2958 -2676
		mu 0 4 1605 1614 1615 1606
		f 4 3021 3004 -2780 -3004
		mu 0 4 1609 1616 1614 1605
		f 4 2951 2903 -2777 -2903
		mu 0 4 1610 1617 1618 1611
		f 4 2774 -3012 3029 3012
		mu 0 4 1612 1619 1620 1613
		f 4 2775 2683 2957 -2680
		mu 0 4 1614 1621 1622 1615
		f 4 3022 3005 -2776 -3005
		mu 0 4 1616 1623 1621 1614
		f 4 2887 2850 2758 -2850
		mu 0 4 1574 1624 1625 1575
		f 4 2975 2927 2759 -2927
		mu 0 4 1578 1626 1627 1579
		f 4 2763 2875 -2692 -2760
		mu 0 4 1627 1628 1581 1579
		f 4 2764 2962 -2693 -2761
		mu 0 4 1629 1630 1584 1583
		f 4 2870 2833 2742 -2833
		mu 0 4 1546 1631 1632 1547
		f 4 2980 -2699 -2743 2746
		mu 0 4 1633 1549 1547 1632
		f 4 2892 -2700 2695 2747
		mu 0 4 1634 1551 1554 1635
		f 4 -2948 2994 2948 2741
		mu 0 4 1558 1557 1636 1637
		f 4 2897 2860 2722 -2860
		mu 0 4 1514 1638 1639 1515
		f 4 2984 2937 -2704 -2937
		mu 0 4 1526 1640 1641 1524
		f 4 2865 -2708 2703 2727
		mu 0 4 1642 1521 1524 1641
		f 4 2728 2989 -2709 2704
		mu 0 4 1643 1644 1528 1527
		f 4 2867 3168 3143 -2830
		mu 0 4 1522 1645 1646 1523
		f 4 3130 3179 -3071 -3113
		mu 0 4 1647 1648 1649 1650
		f 4 3189 3164 -2720 2715
		mu 0 4 1651 1652 1513 1516
		f 4 -2945 2991 3192 3141
		mu 0 4 1530 1529 1653 1654
		f 4 2898 2861 2644 -2861
		mu 0 4 1638 1531 1534 1639
		f 4 2985 2938 -2724 -2938
		mu 0 4 1640 1535 1538 1641
		f 4 2864 -2728 2723 2647
		mu 0 4 1540 1642 1641 1538
		f 4 2648 2988 -2729 2724
		mu 0 4 1541 1544 1644 1643
		f 4 2982 -2655 -2735 -2934
		mu 0 4 1550 1655 1656 1548
		f 4 2868 -2739 2734 -2831
		mu 0 4 1657 1545 1548 1656
		f 4 -2946 2992 -2740 2735
		mu 0 4 1658 1659 1556 1555
		f 4 2894 -2656 2651 -2857
		mu 0 4 1552 1660 1661 1553
		f 4 2871 2834 2642 -2834
		mu 0 4 1631 1662 1663 1632
		f 4 2979 -2747 -2643 -2931
		mu 0 4 1664 1633 1632 1663
		f 4 2891 -2748 2743 -2854
		mu 0 4 1665 1634 1635 1666
		f 4 -2949 2995 2900 2641
		mu 0 4 1637 1636 1667 1668
		f 4 -2751 -2913 2961 -2765
		mu 0 4 1629 1572 1571 1630
		f 4 -2752 -2837 2874 -2764
		mu 0 4 1627 1566 1568 1628
		f 4 -2851 2888 -2757 2752
		mu 0 4 1625 1624 1559 1562
		f 4 -2928 2976 -2756 2751
		mu 0 4 1627 1626 1563 1566
		f 4 -2916 2964 2916 -2767
		mu 0 4 1586 1585 1669 1670
		f 4 -2840 2877 2840 -2768
		mu 0 4 1580 1582 1671 1672
		f 4 2973 -2772 2767 -2925
		mu 0 4 1673 1577 1580 1672
		f 4 2885 -2773 2768 -2848
		mu 0 4 1674 1573 1576 1675
		f 4 2884 2847 2786 -2847
		mu 0 4 1676 1674 1675 1677
		f 4 2972 2924 2788 -2924
		mu 0 4 1678 1673 1672 1679
		f 4 -2841 2878 2841 -2789
		mu 0 4 1672 1671 1680 1679
		f 4 -2917 2965 2917 -2791
		mu 0 4 1670 1669 1681 1682
		f 4 2883 2846 2794 -2846
		mu 0 4 1683 1676 1677 1684
		f 4 2971 2923 2796 -2923
		mu 0 4 1685 1678 1679 1686
		f 4 -2842 2879 2842 -2797
		mu 0 4 1679 1680 1687 1686
		f 4 -2918 2966 2918 -2799
		mu 0 4 1682 1681 1688 1689
		f 4 2882 2845 2802 -2845
		mu 0 4 1690 1683 1684 1691
		f 4 2970 2922 2804 -2922
		mu 0 4 1519 1685 1686 1520
		f 4 -2843 2880 2843 -2805
		mu 0 4 1686 1687 1517 1520
		f 4 -2919 2967 2919 -2807
		mu 0 4 1689 1688 1692 1693
		f 4 -2904 2952 2904 -2811
		mu 0 4 1618 1617 1694 1695
		f 4 3028 3011 2812 -3011
		mu 0 4 1696 1620 1619 1697
		f 4 2956 -2684 2814 2815
		mu 0 4 1698 1622 1621 1699
		f 4 -3006 3023 3006 -2815
		mu 0 4 1621 1623 1700 1699
		f 4 -2905 2953 2905 -2819
		mu 0 4 1695 1694 1701 1702
		f 4 3027 3010 2820 -3010
		mu 0 4 1703 1696 1697 1704
		f 4 2955 -2816 2822 2823
		mu 0 4 1594 1698 1699 1595
		f 4 -3007 3024 3007 -2823
		mu 0 4 1699 1700 1592 1595
		f 4 -2864 2825 -2733 -2827
		mu 0 4 1540 1539 1542 1541
		f 4 -2828 -2865 2826 -2725
		mu 0 4 1643 1642 1540 1541
		f 4 -2829 -2866 2827 -2705
		mu 0 4 1527 1521 1642 1643
		f 4 2717 -2867 2828 -2714
		mu 0 4 1530 1522 1521 1527
		f 4 3167 -2868 -2718 -3142
		mu 0 4 1654 1645 1522 1530
		f 4 -2832 -2869 -2654 -2736
		mu 0 4 1555 1545 1657 1658
		f 4 2697 -2870 2831 -2694
		mu 0 4 1558 1546 1545 1555
		f 4 2745 -2871 -2698 -2742
		mu 0 4 1637 1631 1546 1558
		f 4 2638 -2872 -2746 -2642
		mu 0 4 1668 1662 1631 1637
		f 4 -3002 3019 3002 -2836
		mu 0 4 1567 1591 1705 1569
		f 4 -2874 2835 2668 2754
		mu 0 4 1568 1567 1569 1572
		f 4 -2875 -2755 2750 -2838
		mu 0 4 1628 1568 1572 1629
		f 4 -2876 2837 2760 -2839
		mu 0 4 1581 1628 1629 1583
		f 4 -2877 2838 2688 2770
		mu 0 4 1582 1581 1583 1586
		f 4 -2878 -2771 2766 2663
		mu 0 4 1671 1582 1586 1670
		f 4 -2879 -2664 2790 2791
		mu 0 4 1680 1671 1670 1682
		f 4 -2880 -2792 2798 2799
		mu 0 4 1687 1680 1682 1689
		f 4 -2881 -2800 2806 2807
		mu 0 4 1517 1687 1689 1693
		f 4 2968 -2882 -2808 -2920
		mu 0 4 1692 1518 1517 1693
		f 4 2795 -2883 -2804 -2802
		mu 0 4 1706 1707 1708 1709
		f 4 2787 -2884 -2796 -2794
		mu 0 4 1710 1711 1707 1706
		f 4 2661 -2885 -2788 -2786
		mu 0 4 1712 1713 1711 1710
		f 4 -2849 -2886 -2662 -2766
		mu 0 4 1714 1715 1713 1712
		f 4 2689 -2887 2848 -2686
		mu 0 4 1716 1717 1715 1714
		f 4 2761 -2888 -2690 -2758
		mu 0 4 1718 1719 1717 1716
		f 4 -2889 -2762 -2750 -2852
		mu 0 4 1720 1719 1718 1721
		f 4 2669 -2890 2851 -2666
		mu 0 4 1722 1723 1720 1721
		f 4 3014 -2891 -2670 -2997
		mu 0 4 1724 1725 1723 1722
		f 4 -2855 -2892 -2638 -2745
		mu 0 4 1726 1727 1728 1729
		f 4 -2856 -2893 2854 -2697
		mu 0 4 1730 1731 1727 1726
		f 4 2740 -2894 2855 -2737
		mu 0 4 1732 1733 1731 1730
		f 4 -2858 -2895 -2741 -2653
		mu 0 4 1734 1735 1733 1732
		f 4 -2859 -3165 3190 -2717
		mu 0 4 1736 1737 1738 1739
		f 4 2705 -2897 2858 -2702
		mu 0 4 1740 1741 1737 1736
		f 4 2725 -2898 -2706 -2722
		mu 0 4 1742 1743 1741 1740
		f 4 2645 -2899 -2726 -2644
		mu 0 4 1744 1745 1743 1742
		f 4 2709 -2900 -2646 -2732
		mu 0 4 1746 1747 1745 1744
		f 4 2781 2673 -2950 -2640
		mu 0 4 1748 1749 1597 1596
		f 4 2777 2677 -2951 -2674
		mu 0 4 1749 1750 1610 1597
		f 4 2773 2681 -2952 -2678
		mu 0 4 1750 1751 1617 1610
		f 4 -2953 -2682 2809 2811
		mu 0 4 1694 1617 1751 1752
		f 4 -2954 -2812 2817 2819
		mu 0 4 1701 1694 1752 1753
		f 4 -3009 3026 3009 -2907
		mu 0 4 1594 1593 1703 1704
		f 4 -2908 -2956 2906 -2821
		mu 0 4 1754 1698 1594 1704
		f 4 -2909 -2957 2907 -2813
		mu 0 4 1755 1622 1698 1754
		f 4 -2958 2908 -2775 -2910
		mu 0 4 1615 1622 1755 1756
		f 4 -2959 2909 -2779 -2911
		mu 0 4 1606 1615 1756 1757
		f 4 -2960 2910 -2783 -2912
		mu 0 4 1607 1606 1757 1758
		f 4 -2961 2911 2665 2753
		mu 0 4 1571 1570 1722 1721
		f 4 -2962 -2754 2749 -2914
		mu 0 4 1630 1571 1721 1718
		f 4 -2963 2913 2757 -2915
		mu 0 4 1584 1630 1718 1716
		f 4 -2964 2914 2685 2769
		mu 0 4 1585 1584 1716 1714
		f 4 -2965 -2770 2765 2664
		mu 0 4 1669 1585 1714 1712
		f 4 -2966 -2665 2785 2792
		mu 0 4 1681 1669 1712 1710
		f 4 -2967 -2793 2793 2800
		mu 0 4 1688 1681 1710 1706
		f 4 -2968 -2801 2801 2808
		mu 0 4 1692 1688 1706 1709
		f 4 2803 -2921 -2969 -2809
		mu 0 4 1709 1708 1518 1692
		f 4 -2970 2920 2844 2805
		mu 0 4 1519 1518 1690 1691
		f 4 2797 -2971 -2806 -2803
		mu 0 4 1684 1685 1519 1691
		f 4 2789 -2972 -2798 -2795
		mu 0 4 1677 1678 1685 1684
		f 4 2662 -2973 -2790 -2787
		mu 0 4 1675 1673 1678 1677
		f 4 -2926 -2974 -2663 -2769
		mu 0 4 1576 1577 1673 1675
		f 4 2690 -2975 2925 -2687
		mu 0 4 1575 1578 1577 1576
		f 4 2762 -2976 -2691 -2759
		mu 0 4 1625 1626 1578 1575
		f 4 -2977 -2763 -2753 -2929
		mu 0 4 1563 1626 1625 1562
		f 4 2670 -2978 2928 -2667
		mu 0 4 1561 1564 1563 1562
		f 4 3016 -2979 -2671 -2999
		mu 0 4 1588 1589 1564 1561
		f 4 -2932 -2980 -2641 -2744
		mu 0 4 1635 1633 1664 1666
		f 4 -2933 -2981 2931 -2696
		mu 0 4 1554 1549 1633 1635
		f 4 2737 -2982 2932 -2734
		mu 0 4 1553 1550 1549 1554
		f 4 -2935 -2983 -2738 -2652
		mu 0 4 1661 1655 1550 1553;
	setAttr ".fc[1500:1999]"
		f 4 2706 -2984 2935 -2703
		mu 0 4 1515 1526 1525 1516
		f 4 2726 -2985 -2707 -2723
		mu 0 4 1639 1640 1526 1515
		f 4 2646 -2986 -2727 -2645
		mu 0 4 1534 1535 1640 1639
		f 4 2710 -2987 -2647 -2731
		mu 0 4 1533 1536 1535 1534
		f 4 -2988 2940 2731 -2942
		mu 0 4 1544 1543 1746 1744
		f 4 -2989 2941 2643 -2943
		mu 0 4 1644 1544 1744 1742
		f 4 -2990 2942 2721 -2944
		mu 0 4 1528 1644 1742 1740
		f 4 -2991 2943 2701 2720
		mu 0 4 1529 1528 1740 1736
		f 4 3191 -2992 -2721 2716
		mu 0 4 1739 1653 1529 1736
		f 4 -2993 -2657 2652 -2947
		mu 0 4 1556 1659 1734 1732
		f 4 -2994 2946 2736 2700
		mu 0 4 1557 1556 1732 1730
		f 4 -2995 -2701 2696 2748
		mu 0 4 1636 1557 1730 1726
		f 4 -2996 -2749 2744 2639
		mu 0 4 1667 1636 1726 1729
		f 4 2637 -2998 -3015 -2658
		mu 0 4 1729 1728 1725 1724
		f 4 -3016 2997 2853 2658
		mu 0 4 1588 1587 1665 1666
		f 4 2640 -3000 -3017 -2659
		mu 0 4 1666 1664 1589 1588
		f 4 -3018 2999 2930 2659
		mu 0 4 1590 1589 1664 1663
		f 4 -2835 2872 -3019 -2660
		mu 0 4 1663 1662 1591 1590
		f 4 -3020 -2873 -2639 2660
		mu 0 4 1705 1591 1662 1668
		f 4 2784 2676 -3021 -2661
		mu 0 4 1599 1598 1609 1608
		f 4 2780 2680 -3022 -2677
		mu 0 4 1598 1611 1616 1609
		f 4 2776 2684 -3023 -2681
		mu 0 4 1611 1618 1623 1616
		f 4 -3024 -2685 2810 2816
		mu 0 4 1700 1623 1618 1695
		f 4 -3025 -2817 2818 2824
		mu 0 4 1592 1700 1695 1702
		f 4 -2906 2954 -3026 -2825
		mu 0 4 1702 1701 1593 1592
		f 4 -3027 -2955 -2820 2821
		mu 0 4 1703 1593 1701 1753
		f 4 2813 -3028 -2822 -2818
		mu 0 4 1752 1696 1703 1753
		f 4 2682 -3029 -2814 -2810
		mu 0 4 1751 1620 1696 1752
		f 4 -3030 -2683 -2774 2678
		mu 0 4 1613 1620 1751 1750
		f 4 -3031 -2679 -2778 2674
		mu 0 4 1602 1613 1750 1749
		f 4 -3032 -2675 -2782 2657
		mu 0 4 1603 1602 1749 1748
		f 4 3102 3170 3145 -3100
		mu 0 4 1759 1760 1761 1762
		f 4 3138 3121 3096 -3121
		mu 0 4 1763 1764 1765 1766
		f 4 3187 3162 3097 3038
		mu 0 4 1767 1768 1769 1770
		f 4 3122 3105 -3098 3101
		mu 0 4 1771 1772 1770 1769
		f 4 3095 3172 3147 -3092
		mu 0 4 1773 1774 1775 1776
		f 4 3136 3119 3089 -3119
		mu 0 4 1777 1778 1779 1780
		f 4 3185 3160 3090 3046
		mu 0 4 1781 1782 1783 1784
		f 4 3094 3124 3107 -3091
		mu 0 4 1783 1785 1786 1784
		f 4 3087 3174 3149 -3084
		mu 0 4 1787 1788 1789 1790
		f 4 3134 3117 3081 -3117
		mu 0 4 1791 1792 1793 1794
		f 4 3183 3158 3082 3054
		mu 0 4 1795 1796 1797 1798
		f 4 3086 3126 3109 -3083
		mu 0 4 1797 1799 1800 1798
		f 4 3079 3176 3151 -3076
		mu 0 4 1801 1802 1803 1804
		f 4 3132 3115 3073 -3115
		mu 0 4 1805 1806 1807 1808
		f 4 3181 3156 3074 3062
		mu 0 4 1809 1810 1811 1812
		f 4 3078 3128 3111 -3075
		mu 0 4 1811 1813 1814 1812
		f 4 3207 3200 3152 -3200
		mu 0 4 1815 1816 1817 1818
		f 4 3131 3202 3195 -3114
		mu 0 4 1819 1820 1821 1822
		f 4 3180 3204 3197 3070
		mu 0 4 1649 1823 1824 1650
		f 4 3205 3198 3112 -3198
		mu 0 4 1824 1825 1647 1650
		f 4 3133 3116 3059 -3116
		mu 0 4 1806 1791 1794 1807
		f 4 3182 -3055 3061 -3157
		mu 0 4 1810 1795 1798 1811
		f 4 -3110 3127 -3079 -3062
		mu 0 4 1798 1800 1813 1811
		f 4 -3150 3175 -3080 -3058
		mu 0 4 1790 1789 1802 1801
		f 4 3135 3118 3051 -3118
		mu 0 4 1792 1777 1780 1793
		f 4 3184 -3047 3053 -3159
		mu 0 4 1796 1781 1784 1797
		f 4 -3108 3125 -3087 -3054
		mu 0 4 1784 1786 1799 1797
		f 4 -3148 3173 -3088 -3050
		mu 0 4 1776 1775 1788 1787
		f 4 3137 3120 3043 -3120
		mu 0 4 1778 1763 1766 1779
		f 4 3186 -3039 3045 -3161
		mu 0 4 1782 1767 1770 1783
		f 4 -3106 3123 -3095 -3046
		mu 0 4 1770 1772 1785 1783
		f 4 -3146 3171 -3096 -3042
		mu 0 4 1762 1761 1774 1773
		f 4 3188 -2716 3037 -3163
		mu 0 4 1768 1826 1827 1769
		f 4 -3105 3139 -2719 3032
		mu 0 4 1759 1771 1828 1829
		f 4 -3144 3169 -3103 -3033
		mu 0 4 1829 1830 1760 1759
		f 4 3140 -3104 -3034 2654
		mu 0 4 1831 1764 1832 1833
		f 4 3039 -3123 3104 3099
		mu 0 4 1762 1772 1771 1759
		f 4 -3124 -3040 3041 -3107
		mu 0 4 1785 1772 1762 1773
		f 4 -3125 3106 3091 3047
		mu 0 4 1786 1785 1773 1776
		f 4 -3126 -3048 3049 -3109
		mu 0 4 1799 1786 1776 1787
		f 4 -3127 3108 3083 3055
		mu 0 4 1800 1799 1787 1790
		f 4 -3128 -3056 3057 -3111
		mu 0 4 1813 1800 1790 1801
		f 4 -3129 3110 3075 3063
		mu 0 4 1814 1813 1801 1804
		f 4 -3199 3206 3199 3071
		mu 0 4 1647 1825 1815 1818
		f 4 -3153 3178 -3131 -3072
		mu 0 4 1818 1817 1648 1647
		f 4 3201 -3132 -3069 -3194
		mu 0 4 1834 1820 1819 1835
		f 4 3076 -3133 -3061 -3073
		mu 0 4 1836 1806 1805 1837
		f 4 3052 -3134 -3077 -3057
		mu 0 4 1838 1791 1806 1836
		f 4 3084 -3135 -3053 -3081
		mu 0 4 1839 1792 1791 1838
		f 4 3044 -3136 -3085 -3049
		mu 0 4 1840 1777 1792 1839
		f 4 3092 -3137 -3045 -3089
		mu 0 4 1841 1778 1777 1840
		f 4 3036 -3138 -3093 -3041
		mu 0 4 1842 1763 1778 1841
		f 4 -3101 3103 -3139 -3037
		mu 0 4 1842 1832 1764 1763
		f 4 -3140 -3102 -3038 -2936
		mu 0 4 1828 1771 1769 1827
		f 4 -3122 -3141 2934 3035
		mu 0 4 1765 1764 1831 1843
		f 4 2653 -3143 -3168 -2650
		mu 0 4 1658 1657 1645 1654
		f 4 -3169 3142 2830 2650
		mu 0 4 1646 1645 1657 1656
		f 4 -3170 -2651 3033 -3145
		mu 0 4 1760 1830 1833 1832
		f 4 -3171 3144 3100 3034
		mu 0 4 1761 1760 1832 1842
		f 4 -3172 -3035 3040 -3147
		mu 0 4 1774 1761 1842 1841
		f 4 -3173 3146 3088 3042
		mu 0 4 1775 1774 1841 1840
		f 4 -3174 -3043 3048 -3149
		mu 0 4 1788 1775 1840 1839
		f 4 -3175 3148 3080 3050
		mu 0 4 1789 1788 1839 1838
		f 4 -3176 -3051 3056 -3151
		mu 0 4 1802 1789 1838 1836
		f 4 -3177 3150 3072 3058
		mu 0 4 1803 1802 1836 1837
		f 4 -3201 3208 3193 3066
		mu 0 4 1817 1816 1834 1835
		f 4 -3179 -3067 3068 -3154
		mu 0 4 1648 1817 1835 1819
		f 4 -3180 3153 3113 -3155
		mu 0 4 1649 1648 1819 1822
		f 4 3203 -3181 3154 -3196
		mu 0 4 1844 1823 1649 1822
		f 4 3077 -3182 3155 -3074
		mu 0 4 1845 1810 1809 1846
		f 4 -3158 -3183 -3078 -3060
		mu 0 4 1847 1795 1810 1845
		f 4 3085 -3184 3157 -3082
		mu 0 4 1848 1796 1795 1847
		f 4 -3160 -3185 -3086 -3052
		mu 0 4 1849 1781 1796 1848
		f 4 3093 -3186 3159 -3090
		mu 0 4 1850 1782 1781 1849
		f 4 -3162 -3187 -3094 -3044
		mu 0 4 1851 1767 1782 1850
		f 4 3098 -3188 3161 -3097
		mu 0 4 1852 1768 1767 1851
		f 4 -3164 -3189 -3099 -3036
		mu 0 4 1853 1826 1768 1852
		f 4 2895 -3190 3163 2655
		mu 0 4 1660 1652 1651 1661
		f 4 -3191 -2896 2857 -3166
		mu 0 4 1739 1738 1735 1734
		f 4 -3167 -3192 3165 2656
		mu 0 4 1659 1653 1739 1734
		f 4 -3193 3166 2945 2649
		mu 0 4 1654 1653 1659 1658
		f 4 3060 -3195 -3202 -3065
		mu 0 4 1837 1805 1820 1834
		f 4 -3203 3194 3114 3067
		mu 0 4 1821 1820 1805 1808
		f 4 -3156 -3197 -3204 -3068
		mu 0 4 1846 1809 1823 1844
		f 4 -3205 3196 -3063 3069
		mu 0 4 1824 1823 1809 1812
		f 4 -3112 3129 -3206 -3070
		mu 0 4 1812 1814 1825 1824
		f 4 -3207 -3130 -3064 3065
		mu 0 4 1815 1825 1814 1804
		f 4 -3152 3177 -3208 -3066
		mu 0 4 1804 1803 1816 1815
		f 4 -3209 -3178 -3059 3064
		mu 0 4 1834 1816 1803 1837
		f 4 3209 3211 -3213 -3211
		mu 0 4 1854 1855 1856 1857
		f 4 3214 3216 -3216 -3214
		mu 0 4 1858 1859 1860 1861
		f 4 3217 3219 -3221 -3219
		mu 0 4 1862 1863 1864 1865
		f 4 3222 3224 -3224 -3222
		mu 0 4 1866 1867 1868 1869
		f 4 3225 3227 -3229 -3227
		mu 0 4 1870 1871 1872 1873
		f 4 3230 3232 -3232 -3230
		mu 0 4 1874 1875 1876 1877
		f 4 3233 3235 -3237 -3235
		mu 0 4 1878 1879 1880 1881
		f 4 3238 3240 -3240 -3238
		mu 0 4 1882 1883 1884 1885
		f 4 3241 3243 -3245 -3243
		mu 0 4 1886 1887 1888 1889
		f 4 3246 3248 -3248 -3246
		mu 0 4 1890 1891 1892 1893
		f 4 3249 3251 -3253 -3251
		mu 0 4 1894 1895 1896 1897
		f 4 3254 3256 -3256 -3254
		mu 0 4 1898 1899 1900 1901
		f 4 3257 3259 -3261 -3259
		mu 0 4 1902 1903 1904 1905
		f 4 3262 3264 -3264 -3262
		mu 0 4 1906 1907 1908 1909
		f 4 3265 3267 -3269 -3267
		mu 0 4 1910 1911 1912 1913
		f 4 3270 3272 -3272 -3270
		mu 0 4 1914 1915 1916 1917
		f 4 3273 3275 -3277 -3275
		mu 0 4 1918 1919 1920 1921
		f 4 3278 3280 -3280 -3278
		mu 0 4 1922 1923 1924 1925
		f 4 3281 3283 -3285 -3283
		mu 0 4 1926 1927 1928 1929
		f 4 3286 3288 -3288 -3286
		mu 0 4 1930 1931 1932 1933
		f 4 3289 3291 -3293 -3291
		mu 0 4 1934 1935 1936 1937
		f 4 3294 3296 -3296 -3294
		mu 0 4 1938 1939 1940 1941
		f 4 3297 3299 -3301 -3299
		mu 0 4 1942 1943 1944 1945
		f 4 3302 3304 -3304 -3302
		mu 0 4 1946 1947 1948 1949
		f 4 3305 3307 -3309 -3307
		mu 0 4 1950 1951 1952 1953
		f 4 3310 3312 -3312 -3310
		mu 0 4 1954 1955 1956 1957
		f 4 3313 3315 -3317 -3315
		mu 0 4 1958 1959 1960 1961
		f 4 3318 3320 -3320 -3318
		mu 0 4 1962 1963 1964 1965
		f 4 -3392 -3381 -3517 -3548
		mu 0 4 1966 1967 1968 1969
		f 4 3500 -3570 -3612 -3533
		mu 0 4 1970 1971 1972 1973
		f 4 -3384 -3387 -3487 -3518
		mu 0 4 1974 1975 1976 1977
		f 4 -3391 3386 -3585 -3626
		mu 0 4 1978 1976 1975 1979
		f 4 -3386 -3587 -3627 -3385
		mu 0 4 1980 1981 1982 1983
		f 4 -3399 -3373 -3490 -3521
		mu 0 4 1984 1985 1986 1987
		f 4 -3377 3372 -3582 -3624
		mu 0 4 1988 1986 1985 1989
		f 4 -3378 -3394 -3514 -3545
		mu 0 4 1990 1991 1992 1993
		f 4 -3372 -3590 -3630 -3400
		mu 0 4 1994 1995 1996 1997
		f 4 -3417 -3345 -3510 -3541
		mu 0 4 1998 1999 2000 2001
		f 4 -3416 -3346 -3578 -3620
		mu 0 4 2002 2003 2004 2005
		f 4 3345 -3494 -3525 -3350
		mu 0 4 2004 2003 2006 2007
		f 4 3346 -3561 -3603 -3351
		mu 0 4 2008 2009 2010 2011
		f 4 -3433 -3365 -3507 -3538
		mu 0 4 2012 2013 2014 2015
		f 4 -3432 -3366 -3575 -3617
		mu 0 4 2016 2017 2018 2019
		f 4 3365 -3497 -3528 -3370
		mu 0 4 2018 2017 2020 2021
		f 4 3366 -3564 -3606 -3371
		mu 0 4 2022 2023 2024 2025
		f 4 3509 -3635 -3652 -3542
		mu 0 4 2001 2000 2026 2027
		f 4 3577 -3637 -3654 -3621
		mu 0 4 2005 2004 2028 2029
		f 4 3636 3349 -3638 -3655
		mu 0 4 2028 2004 2007 2030
		f 4 3643 3483 -3645 -3662
		mu 0 4 2031 2032 2033 2034
		f 4 3548 3444 -3550 -3592
		mu 0 4 2035 2036 2037 2038
		f 4 -3633 -3668 3649 -3443
		mu 0 4 2039 2040 2041 2042
		f 4 3350 -3602 -3354 -3444
		mu 0 4 2043 2044 2045 2046
		f 4 3638 3443 -3640 -3657
		mu 0 4 2047 2043 2046 2048
		f 4 3549 3440 -3551 -3593
		mu 0 4 2038 2037 2049 2050
		f 4 -3650 -3667 3648 -3439
		mu 0 4 2042 2041 2051 2052
		f 4 3353 -3601 -3358 -3440
		mu 0 4 2046 2045 2053 2054
		f 4 3639 3439 -3641 -3658
		mu 0 4 2048 2046 2054 2055
		f 4 3550 3436 -3552 -3594
		mu 0 4 2050 2049 2056 2057
		f 4 -3649 -3666 3647 -3435
		mu 0 4 2052 2051 2058 2059
		f 4 3357 -3600 -3362 -3436
		mu 0 4 2054 2053 2060 2061
		f 4 3640 3435 -3642 -3659
		mu 0 4 2055 2054 2061 2062
		f 4 3506 -3419 -3508 -3539
		mu 0 4 2015 2014 2063 2064
		f 4 3574 -3420 -3576 -3618
		mu 0 4 2019 2018 2065 2066
		f 4 3419 3369 -3527 -3424
		mu 0 4 2065 2018 2021 2067
		f 4 3420 3370 -3605 -3425
		mu 0 4 2068 2022 2025 2069
		f 4 3489 -3403 -3491 -3522
		mu 0 4 1987 1986 2070 2071
		f 4 -3407 3402 3376 -3623
		mu 0 4 2072 2070 1986 1988
		f 4 -3408 -3374 3377 -3544
		mu 0 4 2073 2074 1991 1990
		f 4 -3402 -3591 -3631 3589
		mu 0 4 1995 2075 2076 1996
		f 4 3486 -3780 -3805 -3519
		mu 0 4 1977 1976 2077 2078
		f 4 3748 3706 -3816 -3767
		mu 0 4 2079 2080 2081 2082
		f 4 -3388 3391 -3801 -3826
		mu 0 4 2083 1967 1966 2084
		f 4 -3778 -3829 -3628 3586
		mu 0 4 1981 2085 2086 1982
		f 4 3581 3394 3332 -3625
		mu 0 4 1989 1985 2087 2088
		f 4 3487 -3395 3398 -3520
		mu 0 4 2089 2087 1985 1984
		f 4 -3396 3399 -3629 3587
		mu 0 4 2090 1994 1997 2091
		f 4 3513 -3330 3333 -3546
		mu 0 4 1993 1992 2092 2093
		f 4 3490 -3327 -3492 -3523
		mu 0 4 2071 2070 2094 2095
		f 4 3578 3326 3406 -3622
		mu 0 4 2096 2094 2070 2072
		f 4 3510 -3404 3407 -3543
		mu 0 4 2097 2098 2074 2073
		f 4 -3326 -3549 -3632 3590
		mu 0 4 2075 2099 2100 2076
		f 4 3424 -3604 3560 3410
		mu 0 4 2068 2069 2010 2009
		f 4 3423 -3526 3493 3411
		mu 0 4 2065 2067 2006 2003
		f 4 -3413 3416 -3540 3507
		mu 0 4 2063 1999 1998 2064
		f 4 -3412 3415 -3619 3575
		mu 0 4 2065 2003 2002 2066
		f 4 3426 -3565 -3607 3563
		mu 0 4 2023 2101 2102 2024
		f 4 3427 -3498 -3529 3496
		mu 0 4 2017 2103 2104 2020
		f 4 3572 -3428 3431 -3616
		mu 0 4 2105 2103 2017 2016
		f 4 3504 -3429 3432 -3537
		mu 0 4 2106 2107 2013 2012
		f 4 3503 -3447 -3505 -3536
		mu 0 4 2108 2109 2107 2106
		f 4 3571 -3449 -3573 -3615
		mu 0 4 2110 2111 2103 2105
		f 4 3448 -3499 -3530 3497
		mu 0 4 2103 2111 2112 2104
		f 4 3450 -3566 -3608 3564
		mu 0 4 2101 2113 2114 2102
		f 4 3502 -3455 -3504 -3535
		mu 0 4 2115 2116 2109 2108
		f 4 3570 -3457 -3572 -3614
		mu 0 4 2117 2118 2111 2110
		f 4 3456 -3500 -3531 3498
		mu 0 4 2111 2118 2119 2112
		f 4 3458 -3567 -3609 3565
		mu 0 4 2113 2120 2121 2114
		f 4 3501 -3463 -3503 -3534
		mu 0 4 2122 2123 2116 2115
		f 4 3569 -3465 -3571 -3613
		mu 0 4 1972 1971 2118 2117
		f 4 3464 -3501 -3532 3499
		mu 0 4 2118 1971 1970 2119
		f 4 3466 -3568 -3610 3566
		mu 0 4 2120 2124 2125 2121
		f 4 3470 -3553 -3595 3551
		mu 0 4 2056 2126 2127 2057
		f 4 3646 -3473 -3648 -3665
		mu 0 4 2128 2129 2059 2058
		f 4 -3476 -3475 3361 -3599
		mu 0 4 2130 2131 2061 2060
		f 4 3474 -3643 -3660 3641
		mu 0 4 2061 2131 2132 2062
		f 4 3478 -3554 -3596 3552
		mu 0 4 2126 2133 2134 2127
		f 4 3645 -3481 -3647 -3664
		mu 0 4 2135 2136 2129 2128
		f 4 -3484 -3483 3475 -3598
		mu 0 4 2033 2032 2131 2130
		f 4 3482 -3644 -3661 3642
		mu 0 4 2131 2032 2031 2132
		f 4 3385 -3486 3517 -3390
		mu 0 4 1981 1980 1974 1977
		f 4 3777 3389 3518 -3804
		mu 0 4 2085 1981 1977 2078
		f 4 3395 3331 3519 3488
		mu 0 4 1994 2090 2089 1984
		f 4 3371 -3489 3520 -3376
		mu 0 4 1995 1994 1984 1987
		f 4 3401 3375 3521 -3406
		mu 0 4 2075 1995 1987 2071
		f 4 3325 3405 3522 -3323
		mu 0 4 2099 2075 2071 2095
		f 4 3492 -3639 -3656 3637
		mu 0 4 2007 2008 2137 2030
		f 4 -3415 -3347 -3493 3524
		mu 0 4 2006 2009 2008 2007
		f 4 3494 -3411 3414 3525
		mu 0 4 2067 2068 2009 2006
		f 4 3495 -3421 -3495 3526
		mu 0 4 2021 2022 2068 2067
		f 4 -3431 -3367 -3496 3527
		mu 0 4 2020 2023 2022 2021
		f 4 -3342 -3427 3430 3528
		mu 0 4 2104 2101 2023 2020
		f 4 -3452 -3451 3341 3529
		mu 0 4 2112 2113 2101 2104
		f 4 -3460 -3459 3451 3530
		mu 0 4 2119 2120 2113 2112
		f 4 -3468 -3467 3459 3531
		mu 0 4 1970 2124 2120 2119
		f 4 3567 3467 3532 -3611
		mu 0 4 2125 2124 1970 1973
		f 4 3461 3463 3533 -3456
		mu 0 4 2138 2139 2140 2141
		f 4 3453 3455 3534 -3448
		mu 0 4 2142 2138 2141 2143
		f 4 3445 3447 3535 -3340
		mu 0 4 2144 2142 2143 2145
		f 4 3425 3339 3536 3505
		mu 0 4 2146 2144 2145 2147
		f 4 3363 -3506 3537 -3368
		mu 0 4 2148 2146 2147 2149
		f 4 3417 3367 3538 -3422
		mu 0 4 2150 2148 2149 2151
		f 4 3508 3409 3421 3539
		mu 0 4 2152 2153 2150 2151
		f 4 3343 -3509 3540 -3348
		mu 0 4 2154 2153 2152 2155
		f 4 3632 3347 3541 -3651
		mu 0 4 2156 2154 2155 2157
		f 4 3404 3321 3542 3511
		mu 0 4 2158 2159 2160 2161
		f 4 3374 -3512 3543 3512
		mu 0 4 2162 2158 2161 2163
		f 4 3396 -3513 3544 -3401
		mu 0 4 2164 2162 2163 2165
		f 4 3330 3400 3545 3514
		mu 0 4 2166 2164 2165 2167
		f 4 3388 -3827 3800 3515
		mu 0 4 2168 2169 2170 2171
		f 4 3379 -3516 3547 -3382
		mu 0 4 2172 2168 2171 2173
		f 4 3323 3591 -3352 -3442
		mu 0 4 2174 2035 2038 2175
		f 4 3351 3592 -3356 -3438
		mu 0 4 2175 2038 2050 2176
		f 4 3355 3593 -3360 -3434
		mu 0 4 2176 2050 2057 2177
		f 4 -3472 -3470 3359 3594
		mu 0 4 2127 2178 2177 2057
		f 4 -3480 -3478 3471 3595
		mu 0 4 2134 2179 2178 2127
		f 4 3554 -3646 -3663 3644
		mu 0 4 2180 2136 2135 2034
		f 4 3480 -3555 3597 3555
		mu 0 4 2129 2136 2180 2181
		f 4 3472 -3556 3598 3556
		mu 0 4 2059 2129 2181 2182
		f 4 3557 3434 -3557 3599
		mu 0 4 2183 2052 2059 2182
		f 4 3558 3438 -3558 3600
		mu 0 4 2184 2042 2052 2183
		f 4 3559 3442 -3559 3601
		mu 0 4 2185 2039 2042 2184
		f 4 -3414 -3344 -3560 3602
		mu 0 4 2010 2153 2154 2011
		f 4 3561 -3410 3413 3603
		mu 0 4 2069 2150 2153 2010
		f 4 3562 -3418 -3562 3604
		mu 0 4 2025 2148 2150 2069
		f 4 -3430 -3364 -3563 3605
		mu 0 4 2024 2146 2148 2025
		f 4 -3343 -3426 3429 3606
		mu 0 4 2102 2144 2146 2024
		f 4 -3453 -3446 3342 3607
		mu 0 4 2114 2142 2144 2102
		f 4 -3461 -3454 3452 3608
		mu 0 4 2121 2138 2142 2114
		f 4 -3469 -3462 3460 3609
		mu 0 4 2125 2139 2138 2121
		f 4 3468 3610 3568 -3464
		mu 0 4 2139 2125 1973 2140
		f 4 -3466 -3502 -3569 3611
		mu 0 4 1972 2123 2122 1973
		f 4 3462 3465 3612 -3458
		mu 0 4 2116 2123 1972 2117
		f 4 3454 3457 3613 -3450
		mu 0 4 2109 2116 2117 2110
		f 4 3446 3449 3614 -3341
		mu 0 4 2107 2109 2110 2105
		f 4 3428 3340 3615 3573
		mu 0 4 2013 2107 2105 2016
		f 4 3364 -3574 3616 -3369
		mu 0 4 2014 2013 2016 2019
		f 4 3418 3368 3617 -3423
		mu 0 4 2063 2014 2019 2066
		f 4 3576 3412 3422 3618
		mu 0 4 2002 1999 2063 2066
		f 4 3344 -3577 3619 -3349
		mu 0 4 2000 1999 2002 2005
		f 4 3634 3348 3620 -3653
		mu 0 4 2026 2000 2005 2029
		f 4 3403 3324 3621 3579
		mu 0 4 2074 2098 2096 2072
		f 4 3373 -3580 3622 3580
		mu 0 4 1991 2074 2072 1988
		f 4 3393 -3581 3623 -3398
		mu 0 4 1992 1991 1988 1989
		f 4 3329 3397 3624 3582
		mu 0 4 2092 1992 1989 2088
		f 4 3380 -3584 3625 -3383
		mu 0 4 1968 1967 1978 1979
		f 4 -3393 -3380 -3586 3626
		mu 0 4 1982 2168 2172 1983
		f 4 -3389 3392 3627 -3828
		mu 0 4 2169 2168 1982 2086
		f 4 3588 -3331 3334 3628
		mu 0 4 1997 2164 2166 2091
		f 4 -3379 -3397 -3589 3629
		mu 0 4 1996 2162 2164 1997
		f 4 -3409 -3375 3378 3630
		mu 0 4 2076 2158 2162 1996
		f 4 -3324 -3405 3408 3631
		mu 0 4 2100 2159 2158 2076
		f 4 3335 3650 3633 -3322
		mu 0 4 2159 2156 2157 2160
		f 4 -3337 -3511 -3634 3651
		mu 0 4 2026 2098 2097 2027
		f 4 3336 3652 3635 -3325
		mu 0 4 2098 2026 2029 2096
		f 4 -3338 -3579 -3636 3653
		mu 0 4 2028 2094 2096 2029
		f 4 3337 3654 -3524 3491
		mu 0 4 2094 2028 2030 2095
		f 4 -3339 3322 3523 3655
		mu 0 4 2137 2099 2095 2030
		f 4 3338 3656 -3355 -3445
		mu 0 4 2036 2047 2048 2037
		f 4 3354 3657 -3359 -3441
		mu 0 4 2037 2048 2055 2049
		f 4 3358 3658 -3363 -3437
		mu 0 4 2049 2055 2062 2056
		f 4 -3477 -3471 3362 3659
		mu 0 4 2132 2126 2056 2062
		f 4 -3485 -3479 3476 3660
		mu 0 4 2031 2133 2126 2132
		f 4 3484 3661 -3597 3553
		mu 0 4 2133 2031 2034 2134
		f 4 -3482 3479 3596 3662
		mu 0 4 2135 2179 2134 2034
		f 4 3477 3481 3663 -3474
		mu 0 4 2178 2179 2135 2128
		f 4 3469 3473 3664 -3361
		mu 0 4 2177 2178 2128 2058
		f 4 -3357 3433 3360 3665
		mu 0 4 2051 2176 2177 2058
		f 4 -3353 3437 3356 3666
		mu 0 4 2041 2175 2176 2051
		f 4 -3336 3441 3352 3667
		mu 0 4 2040 2174 2175 2041
		f 4 3735 -3782 -3807 -3739
		mu 0 4 2186 2187 2188 2189
		f 4 3756 -3733 -3758 -3775
		mu 0 4 2190 2191 2192 2193
		f 4 -3675 -3734 -3799 -3824
		mu 0 4 2194 2195 2196 2197
		f 4 -3738 3733 -3742 -3759
		mu 0 4 2198 2196 2195 2199
		f 4 3727 -3784 -3809 -3732
		mu 0 4 2200 2201 2202 2203
		f 4 3754 -3726 -3756 -3773
		mu 0 4 2204 2205 2206 2207
		f 4 -3683 -3727 -3797 -3822
		mu 0 4 2208 2209 2210 2211
		f 4 3726 -3744 -3761 -3731
		mu 0 4 2210 2209 2212 2213
		f 4 3719 -3786 -3811 -3724
		mu 0 4 2214 2215 2216 2217
		f 4 3752 -3718 -3754 -3771
		mu 0 4 2218 2219 2220 2221
		f 4 -3691 -3719 -3795 -3820
		mu 0 4 2222 2223 2224 2225
		f 4 3718 -3746 -3763 -3723
		mu 0 4 2224 2223 2226 2227
		f 4 3711 -3788 -3813 -3716
		mu 0 4 2228 2229 2230 2231
		f 4 3750 -3710 -3752 -3769
		mu 0 4 2232 2233 2234 2235
		f 4 -3699 -3711 -3793 -3818
		mu 0 4 2236 2237 2238 2239
		f 4 3710 -3748 -3765 -3715
		mu 0 4 2238 2237 2240 2241
		f 4 3835 -3789 -3837 -3844
		mu 0 4 2242 2243 2244 2245
		f 4 3749 -3832 -3839 -3768
		mu 0 4 2246 2247 2248 2249
		f 4 -3707 -3834 -3841 -3817
		mu 0 4 2081 2080 2250 2251
		f 4 3833 -3749 -3835 -3842
		mu 0 4 2250 2080 2079 2252
		f 4 3751 -3696 -3753 -3770
		mu 0 4 2235 2234 2219 2218
		f 4 3792 -3698 3690 -3819
		mu 0 4 2239 2238 2223 2222
		f 4 3697 3714 -3764 3745
		mu 0 4 2223 2238 2241 2226
		f 4 3693 3715 -3812 3785
		mu 0 4 2215 2228 2231 2216
		f 4 3753 -3688 -3755 -3772
		mu 0 4 2221 2220 2205 2204
		f 4 3794 -3690 3682 -3821
		mu 0 4 2225 2224 2209 2208
		f 4 3689 3722 -3762 3743
		mu 0 4 2209 2224 2227 2212
		f 4 3685 3723 -3810 3783
		mu 0 4 2201 2214 2217 2202
		f 4 3755 -3680 -3757 -3774
		mu 0 4 2207 2206 2191 2190
		f 4 3796 -3682 3674 -3823
		mu 0 4 2211 2210 2195 2194
		f 4 3681 3730 -3760 3741
		mu 0 4 2195 2210 2213 2199
		f 4 3677 3731 -3808 3781
		mu 0 4 2187 2200 2203 2188
		f 4 3798 -3674 3387 -3825
		mu 0 4 2197 2196 2253 2254
		f 4 -3669 3390 -3776 3740
		mu 0 4 2186 2255 2256 2198
		f 4 3668 3738 -3806 3779
		mu 0 4 2255 2186 2189 2257
		f 4 -3333 3669 3739 -3777
		mu 0 4 2258 2259 2260 2261
		f 4 -3736 -3741 3758 -3676
		mu 0 4 2187 2186 2198 2199
		f 4 3742 -3678 3675 3759
		mu 0 4 2213 2200 2187 2199
		f 4 -3684 -3728 -3743 3760
		mu 0 4 2212 2201 2200 2213
		f 4 3744 -3686 3683 3761
		mu 0 4 2227 2214 2201 2212
		f 4 -3692 -3720 -3745 3762
		mu 0 4 2226 2215 2214 2227
		f 4 3746 -3694 3691 3763
		mu 0 4 2241 2228 2215 2226
		f 4 -3700 -3712 -3747 3764
		mu 0 4 2240 2229 2228 2241
		f 4 -3708 -3836 -3843 3834
		mu 0 4 2079 2243 2242 2252
		f 4 3707 3766 -3815 3788
		mu 0 4 2243 2079 2082 2244
		f 4 3829 3704 3767 -3838
		mu 0 4 2262 2263 2264 2265
		f 4 3708 3696 3768 -3713
		mu 0 4 2266 2267 2268 2269
		f 4 3692 3712 3769 -3689
		mu 0 4 2270 2266 2269 2271
		f 4 3716 3688 3770 -3721
		mu 0 4 2272 2270 2271 2273
		f 4 3684 3720 3771 -3681
		mu 0 4 2274 2272 2273 2275
		f 4 3724 3680 3772 -3729
		mu 0 4 2276 2274 2275 2277
		f 4 3676 3728 3773 -3673
		mu 0 4 2278 2276 2277 2279
		f 4 3672 3774 -3740 3736
		mu 0 4 2278 2279 2261 2260
		f 4 3583 3673 3737 3775
		mu 0 4 2256 2253 2196 2198
		f 4 -3672 -3583 3776 3757
		mu 0 4 2192 2280 2281 2193
		f 4 3327 3803 3778 -3332
		mu 0 4 2090 2085 2078 2089
		f 4 -3329 -3488 -3779 3804
		mu 0 4 2077 2087 2089 2078
		f 4 3780 -3670 3328 3805
		mu 0 4 2189 2260 2259 2257
		f 4 -3671 -3737 -3781 3806
		mu 0 4 2188 2278 2260 2189
		f 4 3782 -3677 3670 3807
		mu 0 4 2203 2276 2278 2188
		f 4 -3679 -3725 -3783 3808
		mu 0 4 2202 2274 2276 2203
		f 4 3784 -3685 3678 3809
		mu 0 4 2217 2272 2274 2202
		f 4 -3687 -3717 -3785 3810
		mu 0 4 2216 2270 2272 2217
		f 4 3786 -3693 3686 3811
		mu 0 4 2231 2266 2270 2216
		f 4 -3695 -3709 -3787 3812
		mu 0 4 2230 2267 2266 2231
		f 4 -3703 -3830 -3845 3836
		mu 0 4 2244 2263 2262 2245
		f 4 3789 -3705 3702 3814
		mu 0 4 2082 2264 2263 2244
		f 4 3790 -3750 -3790 3815
		mu 0 4 2081 2247 2246 2082
		f 4 3831 -3791 3816 -3840
		mu 0 4 2248 2247 2081 2251
		f 4 3709 -3792 3817 -3714
		mu 0 4 2234 2233 2236 2239
		f 4 3695 3713 3818 3793
		mu 0 4 2219 2234 2239 2222
		f 4 3717 -3794 3819 -3722
		mu 0 4 2220 2219 2222 2225
		f 4 3687 3721 3820 3795
		mu 0 4 2205 2220 2225 2208
		f 4 3725 -3796 3821 -3730
		mu 0 4 2206 2205 2208 2211
		f 4 3679 3729 3822 3797
		mu 0 4 2191 2206 2211 2194
		f 4 3732 -3798 3823 -3735
		mu 0 4 2192 2191 2194 2197
		f 4 3671 3734 3824 3799
		mu 0 4 2280 2192 2197 2254
		f 4 -3334 -3800 3825 -3547
		mu 0 4 2093 2092 2083 2084
		f 4 3801 -3515 3546 3826
		mu 0 4 2169 2166 2167 2170
		f 4 -3335 -3802 3827 3802
		mu 0 4 2091 2166 2169 2086
		f 4 -3328 -3588 -3803 3828
		mu 0 4 2085 2090 2091 2086
		f 4 3700 3837 3830 -3697
		mu 0 4 2267 2262 2265 2268
		f 4 -3704 -3751 -3831 3838
		mu 0 4 2248 2233 2232 2249
		f 4 3703 3839 3832 3791
		mu 0 4 2233 2248 2251 2236
		f 4 -3706 3698 -3833 3840
		mu 0 4 2250 2237 2236 2251
		f 4 3705 3841 -3766 3747
		mu 0 4 2237 2250 2252 2240
		f 4 -3702 3699 3765 3842
		mu 0 4 2242 2229 2240 2252
		f 4 3701 3843 -3814 3787
		mu 0 4 2229 2242 2245 2230
		f 4 -3701 3694 3813 3844
		mu 0 4 2262 2267 2230 2245
		f 4 3845 3847 -3849 -3847
		mu 0 4 2282 2283 2284 2285
		f 4 3850 3852 -3852 -3850
		mu 0 4 2286 2287 2288 2289
		f 4 3853 3855 -3857 -3855
		mu 0 4 2290 2291 2292 2293
		f 4 3858 3860 -3860 -3858
		mu 0 4 2294 2295 2296 2297
		f 4 3861 3863 -3865 -3863
		mu 0 4 2298 2299 2300 2301
		f 4 3866 3868 -3868 -3866
		mu 0 4 2302 2303 2304 2305
		f 4 3869 3871 -3873 -3871
		mu 0 4 2306 2307 2308 2309
		f 4 3874 3876 -3876 -3874
		mu 0 4 2310 2311 2312 2313
		f 4 3877 3879 -3881 -3879
		mu 0 4 2314 2315 2316 2317
		f 4 3882 3884 -3884 -3882
		mu 0 4 2318 2319 2320 2321
		f 4 3885 3887 -3889 -3887
		mu 0 4 2322 2323 2324 2325
		f 4 3890 3892 -3892 -3890
		mu 0 4 2326 2327 2328 2329
		f 4 3893 3895 -3897 -3895
		mu 0 4 2330 2331 2332 2333
		f 4 3898 3900 -3900 -3898
		mu 0 4 2334 2335 2336 2337
		f 4 3901 3903 -3905 -3903
		mu 0 4 2338 2339 2340 2341
		f 4 3906 3908 -3908 -3906
		mu 0 4 2342 2343 2344 2345
		f 4 3909 3911 -3913 -3911
		mu 0 4 2346 2347 2348 2349
		f 4 3914 3916 -3916 -3914
		mu 0 4 2350 2351 2352 2353
		f 4 3917 3919 -3921 -3919
		mu 0 4 2354 2355 2356 2357
		f 4 3922 3924 -3924 -3922
		mu 0 4 2358 2359 2360 2361
		f 4 3925 3927 -3929 -3927
		mu 0 4 2362 2363 2364 2365
		f 4 3930 3932 -3932 -3930
		mu 0 4 2366 2367 2368 2369
		f 4 3933 3935 -3937 -3935
		mu 0 4 2370 2371 2372 2373
		f 4 3938 3940 -3940 -3938
		mu 0 4 2374 2375 2376 2377
		f 4 4161 4132 3998 4007
		mu 0 4 2378 2379 2380 2381
		f 4 4147 4225 4183 -4117
		mu 0 4 2382 2383 2384 2385
		f 4 4133 4102 4004 4001
		mu 0 4 2386 2387 2388 2389
		f 4 4239 4198 -4005 4006
		mu 0 4 2390 2391 2389 2388
		f 4 4002 4240 4200 4003
		mu 0 4 2392 2393 2394 2395
		f 4 4135 4105 3990 4014
		mu 0 4 2396 2397 2398 2399
		f 4 4237 4195 -3991 3994
		mu 0 4 2400 2401 2399 2398
		f 4 4159 4129 4009 3995
		mu 0 4 2402 2403 2404 2405
		f 4 4015 4242 4203 3989
		mu 0 4 2406 2407 2408 2409
		f 4 4155 4125 3962 4032
		mu 0 4 2410 2411 2412 2413
		f 4 4233 4191 3963 4031
		mu 0 4 2414 2415 2416 2417
		f 4 3967 4139 4109 -3964
		mu 0 4 2416 2418 2419 2417
		f 4 3968 4216 4174 -3965
		mu 0 4 2420 2421 2422 2423
		f 4 4152 4122 3982 4048
		mu 0 4 2424 2425 2426 2427
		f 4 4230 4188 3983 4047
		mu 0 4 2428 2429 2430 2431
		f 4 3987 4142 4112 -3984
		mu 0 4 2430 2432 2433 2431
		f 4 3988 4219 4177 -3985
		mu 0 4 2434 2435 2436 2437
		f 4 4156 4264 4247 -4126
		mu 0 4 2411 2438 2439 2412
		f 4 4234 4266 4249 -4192
		mu 0 4 2415 2440 2441 2416
		f 4 4267 4250 -3968 -4250
		mu 0 4 2441 2442 2418 2416
		f 4 4274 4257 -4100 -4257
		mu 0 4 2443 2444 2445 2446
		f 4 4205 4163 -4061 -4163
		mu 0 4 2447 2448 2449 2450
		f 4 4058 -4263 4280 4245
		mu 0 4 2451 2452 2453 2454
		f 4 4059 3971 4215 -3969
		mu 0 4 2455 2456 2457 2458
		f 4 4269 4252 -4060 -4252
		mu 0 4 2459 2460 2456 2455
		f 4 4206 4164 -4057 -4164
		mu 0 4 2448 2461 2462 2449
		f 4 4054 -4262 4279 4262
		mu 0 4 2452 2463 2464 2453
		f 4 4055 3975 4214 -3972
		mu 0 4 2456 2465 2466 2457
		f 4 4270 4253 -4056 -4253
		mu 0 4 2460 2467 2465 2456
		f 4 4207 4165 -4053 -4165
		mu 0 4 2461 2468 2469 2462
		f 4 4050 -4261 4278 4261
		mu 0 4 2463 2470 2471 2464
		f 4 4051 3979 4213 -3976
		mu 0 4 2465 2472 2473 2466
		f 4 4271 4254 -4052 -4254
		mu 0 4 2467 2474 2472 2465
		f 4 4153 4123 4034 -4123
		mu 0 4 2425 2475 2476 2426
		f 4 4231 4189 4035 -4189
		mu 0 4 2429 2477 2478 2430
		f 4 4039 4141 -3988 -4036
		mu 0 4 2478 2479 2432 2430
		f 4 4040 4218 -3989 -4037
		mu 0 4 2480 2481 2435 2434
		f 4 4136 4106 4018 -4106
		mu 0 4 2397 2482 2483 2398
		f 4 4236 -3995 -4019 4022
		mu 0 4 2484 2400 2398 2483
		f 4 4158 -3996 3991 4023
		mu 0 4 2485 2402 2405 2486
		f 4 -4204 4243 4204 4017
		mu 0 4 2409 2408 2487 2488
		f 4 4238 -3951 -4011 -4196
		mu 0 4 2401 2489 2490 2399
		f 4 4134 -4015 4010 -4104
		mu 0 4 2491 2396 2399 2490
		f 4 -4202 4241 -4016 4011
		mu 0 4 2492 2493 2407 2406
		f 4 4160 -3952 3947 -4130
		mu 0 4 2403 2494 2495 2404
		f 4 4137 4107 3946 -4107
		mu 0 4 2482 2496 2497 2483
		f 4 4235 -4023 -3947 -4193
		mu 0 4 2498 2484 2483 2497
		f 4 4157 -4024 4019 -4127
		mu 0 4 2499 2485 2486 2500
		f 4 -4205 4244 4162 3945
		mu 0 4 2488 2487 2501 2502
		f 4 -4027 -4175 4217 -4041
		mu 0 4 2480 2423 2422 2481
		f 4 -4028 -4110 4140 -4040
		mu 0 4 2478 2417 2419 2479
		f 4 -4124 4154 -4033 4028
		mu 0 4 2476 2475 2410 2413
		f 4 -4190 4232 -4032 4027
		mu 0 4 2478 2477 2414 2417
		f 4 -4178 4220 4178 -4043
		mu 0 4 2437 2436 2503 2504
		f 4 -4113 4143 4113 -4044
		mu 0 4 2431 2433 2505 2506
		f 4 4229 -4048 4043 -4187
		mu 0 4 2507 2428 2431 2506
		f 4 4151 -4049 4044 -4121
		mu 0 4 2508 2424 2427 2509
		f 4 4150 4120 4062 -4120
		mu 0 4 2510 2508 2509 2511
		f 4 4228 4186 4064 -4186
		mu 0 4 2512 2507 2506 2513
		f 4 -4114 4144 4114 -4065
		mu 0 4 2506 2505 2514 2513
		f 4 -4179 4221 4179 -4067
		mu 0 4 2504 2503 2515 2516
		f 4 4149 4119 4070 -4119
		mu 0 4 2517 2510 2511 2518
		f 4 4227 4185 4072 -4185
		mu 0 4 2519 2512 2513 2520
		f 4 -4115 4145 4115 -4073
		mu 0 4 2513 2514 2521 2520
		f 4 -4180 4222 4180 -4075
		mu 0 4 2516 2515 2522 2523
		f 4 4148 4118 4078 -4118
		mu 0 4 2524 2517 2518 2525
		f 4 4226 4184 4080 -4184
		mu 0 4 2384 2519 2520 2385
		f 4 -4116 4146 4116 -4081
		mu 0 4 2520 2521 2382 2385;
	setAttr ".fc[2000:2499]"
		f 4 -4181 4223 4181 -4083
		mu 0 4 2523 2522 2526 2527
		f 4 -4166 4208 4166 -4087
		mu 0 4 2469 2468 2528 2529
		f 4 4277 4260 4088 -4260
		mu 0 4 2530 2471 2470 2531
		f 4 4212 -3980 4090 4091
		mu 0 4 2532 2473 2472 2533
		f 4 -4255 4272 4255 -4091
		mu 0 4 2472 2474 2534 2533
		f 4 -4167 4209 4167 -4095
		mu 0 4 2529 2528 2535 2536
		f 4 4276 4259 4096 -4259
		mu 0 4 2537 2530 2531 2538
		f 4 4211 -4092 4098 4099
		mu 0 4 2445 2532 2533 2446
		f 4 -4256 4273 4256 -4099
		mu 0 4 2533 2534 2443 2446
		f 4 4005 -4134 4101 -4004
		mu 0 4 2395 2387 2386 2392
		f 4 -4105 -4135 -3950 -4012
		mu 0 4 2406 2396 2491 2492
		f 4 3993 -4136 4104 -3990
		mu 0 4 2409 2397 2396 2406
		f 4 4021 -4137 -3994 -4018
		mu 0 4 2488 2482 2397 2409
		f 4 3942 -4138 -4022 -3946
		mu 0 4 2502 2496 2482 2488
		f 4 -4251 4268 4251 -4109
		mu 0 4 2418 2442 2539 2420
		f 4 -4140 4108 3964 4030
		mu 0 4 2419 2418 2420 2423
		f 4 -4141 -4031 4026 -4111
		mu 0 4 2479 2419 2423 2480
		f 4 -4142 4110 4036 -4112
		mu 0 4 2432 2479 2480 2434
		f 4 -4143 4111 3984 4046
		mu 0 4 2433 2432 2434 2437
		f 4 -4144 -4047 4042 3959
		mu 0 4 2505 2433 2437 2504
		f 4 -4145 -3960 4066 4067
		mu 0 4 2514 2505 2504 2516
		f 4 -4146 -4068 4074 4075
		mu 0 4 2521 2514 2516 2523
		f 4 -4147 -4076 4082 4083
		mu 0 4 2382 2521 2523 2527
		f 4 4224 -4148 -4084 -4182
		mu 0 4 2526 2383 2382 2527
		f 4 4071 -4149 -4080 -4078
		mu 0 4 2540 2541 2542 2543
		f 4 4063 -4150 -4072 -4070
		mu 0 4 2544 2545 2541 2540
		f 4 3957 -4151 -4064 -4062
		mu 0 4 2546 2547 2545 2544
		f 4 -4122 -4152 -3958 -4042
		mu 0 4 2548 2549 2547 2546
		f 4 3985 -4153 4121 -3982
		mu 0 4 2550 2551 2549 2548
		f 4 4037 -4154 -3986 -4034
		mu 0 4 2552 2553 2551 2550
		f 4 -4155 -4038 -4026 -4125
		mu 0 4 2554 2553 2552 2555
		f 4 3965 -4156 4124 -3962
		mu 0 4 2556 2557 2554 2555
		f 4 4263 -4157 -3966 -4246
		mu 0 4 2558 2559 2557 2556
		f 4 -4128 -4158 -3942 -4021
		mu 0 4 2560 2561 2562 2563
		f 4 -4129 -4159 4127 -3993
		mu 0 4 2564 2565 2561 2560
		f 4 4016 -4160 4128 -4013
		mu 0 4 2566 2567 2565 2564
		f 4 -4131 -4161 -4017 -3949
		mu 0 4 2568 2569 2567 2566
		f 4 3999 -4162 4131 -3998
		mu 0 4 2570 2571 2572 2573
		f 4 4057 3969 -4206 -3944
		mu 0 4 2574 2575 2448 2447
		f 4 4053 3973 -4207 -3970
		mu 0 4 2575 2576 2461 2448
		f 4 4049 3977 -4208 -3974
		mu 0 4 2576 2577 2468 2461
		f 4 -4209 -3978 4085 4087
		mu 0 4 2528 2468 2577 2578
		f 4 -4210 -4088 4093 4095
		mu 0 4 2535 2528 2578 2579
		f 4 -4258 4275 4258 -4169
		mu 0 4 2580 2444 2537 2538
		f 4 -4170 -4212 4168 -4097
		mu 0 4 2531 2581 2580 2538
		f 4 -4171 -4213 4169 -4089
		mu 0 4 2470 2582 2581 2531
		f 4 -4214 4170 -4051 -4172
		mu 0 4 2583 2582 2470 2463
		f 4 -4215 4171 -4055 -4173
		mu 0 4 2584 2583 2463 2452
		f 4 -4216 4172 -4059 -4174
		mu 0 4 2585 2584 2452 2451
		f 4 -4217 4173 3961 4029
		mu 0 4 2422 2421 2556 2555
		f 4 -4218 -4030 4025 -4176
		mu 0 4 2481 2422 2555 2552
		f 4 -4219 4175 4033 -4177
		mu 0 4 2435 2481 2552 2550
		f 4 -4220 4176 3981 4045
		mu 0 4 2436 2435 2550 2548
		f 4 -4221 -4046 4041 3960
		mu 0 4 2503 2436 2548 2546
		f 4 -4222 -3961 4061 4068
		mu 0 4 2515 2503 2546 2544
		f 4 -4223 -4069 4069 4076
		mu 0 4 2522 2515 2544 2540
		f 4 -4224 -4077 4077 4084
		mu 0 4 2526 2522 2540 2543
		f 4 4079 -4183 -4225 -4085
		mu 0 4 2543 2542 2383 2526
		f 4 -4226 4182 4117 4081
		mu 0 4 2384 2383 2524 2525
		f 4 4073 -4227 -4082 -4079
		mu 0 4 2518 2519 2384 2525
		f 4 4065 -4228 -4074 -4071
		mu 0 4 2511 2512 2519 2518
		f 4 3958 -4229 -4066 -4063
		mu 0 4 2509 2507 2512 2511
		f 4 -4188 -4230 -3959 -4045
		mu 0 4 2427 2428 2507 2509
		f 4 3986 -4231 4187 -3983
		mu 0 4 2426 2429 2428 2427
		f 4 4038 -4232 -3987 -4035
		mu 0 4 2476 2477 2429 2426
		f 4 -4233 -4039 -4029 -4191
		mu 0 4 2414 2477 2476 2413
		f 4 3966 -4234 4190 -3963
		mu 0 4 2412 2415 2414 2413
		f 4 4265 -4235 -3967 -4248
		mu 0 4 2439 2440 2415 2412
		f 4 -4194 -4236 -3945 -4020
		mu 0 4 2486 2484 2498 2500
		f 4 -4195 -4237 4193 -3992
		mu 0 4 2405 2400 2484 2486
		f 4 4013 -4238 4194 -4010
		mu 0 4 2404 2401 2400 2405
		f 4 -4197 -4239 -4014 -3948
		mu 0 4 2495 2489 2401 2404
		f 4 4000 -4240 4197 -3999
		mu 0 4 2380 2391 2390 2381
		f 4 -4241 4199 3997 4008
		mu 0 4 2394 2393 2570 2573
		f 4 -4242 -3953 3948 -4203
		mu 0 4 2407 2493 2568 2566
		f 4 -4243 4202 4012 3996
		mu 0 4 2408 2407 2566 2564
		f 4 -4244 -3997 3992 4024
		mu 0 4 2487 2408 2564 2560
		f 4 -4245 -4025 4020 3943
		mu 0 4 2501 2487 2560 2563
		f 4 3941 -4247 -4264 -3954
		mu 0 4 2563 2562 2559 2558
		f 4 -4265 4246 4126 3954
		mu 0 4 2439 2438 2499 2500
		f 4 3944 -4249 -4266 -3955
		mu 0 4 2500 2498 2440 2439
		f 4 -4267 4248 4192 3955
		mu 0 4 2441 2440 2498 2497
		f 4 -4108 4138 -4268 -3956
		mu 0 4 2497 2496 2442 2441
		f 4 -4269 -4139 -3943 3956
		mu 0 4 2539 2442 2496 2502
		f 4 4060 3972 -4270 -3957
		mu 0 4 2450 2449 2460 2459
		f 4 4056 3976 -4271 -3973
		mu 0 4 2449 2462 2467 2460
		f 4 4052 3980 -4272 -3977
		mu 0 4 2462 2469 2474 2467
		f 4 -4273 -3981 4086 4092
		mu 0 4 2534 2474 2469 2529
		f 4 -4274 -4093 4094 4100
		mu 0 4 2443 2534 2529 2536
		f 4 -4168 4210 -4275 -4101
		mu 0 4 2536 2535 2444 2443
		f 4 -4276 -4211 -4096 4097
		mu 0 4 2537 2444 2535 2579
		f 4 4089 -4277 -4098 -4094
		mu 0 4 2578 2530 2537 2579
		f 4 3978 -4278 -4090 -4086
		mu 0 4 2577 2471 2530 2578
		f 4 -4279 -3979 -4050 3974
		mu 0 4 2464 2471 2577 2576
		f 4 -4280 -3975 -4054 3970
		mu 0 4 2453 2464 2576 2575
		f 4 -4281 -3971 -4058 3953
		mu 0 4 2454 2453 2575 2574
		f 4 4368 4352 4329 -4352
		mu 0 4 2586 2587 2588 2589
		f 4 4353 4336 -4331 4333
		mu 0 4 2590 2591 2592 2593
		f 4 4366 4350 4324 -4350
		mu 0 4 2594 2595 2596 2597
		f 4 4328 4355 4338 -4326
		mu 0 4 2598 2599 2600 2601
		f 4 4364 4348 4318 -4348
		mu 0 4 2602 2603 2604 2605
		f 4 4322 4357 4340 -4320
		mu 0 4 2606 2607 2608 2609
		f 4 4362 4346 4312 -4346
		mu 0 4 2610 2611 2612 2613
		f 4 4316 4359 4342 -4314
		mu 0 4 2614 2615 2616 2617
		f 4 4361 4404 4399 -4345
		mu 0 4 2618 2619 2620 2621
		f 4 4406 4401 4343 -4401
		mu 0 4 2622 2623 2624 2625
		f 4 4363 4347 4301 -4347
		mu 0 4 2611 2602 2605 2612
		f 4 -4341 4358 -4317 -4304
		mu 0 4 2609 2608 2615 2614
		f 4 4365 4349 4295 -4349
		mu 0 4 2603 2594 2597 2604
		f 4 -4339 4356 -4323 -4298
		mu 0 4 2601 2600 2607 2606
		f 4 4367 4351 4289 -4351
		mu 0 4 2595 2586 2589 2596
		f 4 -4337 4354 -4329 -4292
		mu 0 4 2592 2591 2599 2598
		f 4 -4336 4369 -4007 4281
		mu 0 4 2626 2590 2627 2628
		f 4 4370 -4335 -4283 3950
		mu 0 4 2629 2630 2631 2632
		f 4 4286 -4354 4335 4331
		mu 0 4 2633 2591 2590 2626
		f 4 -4355 -4287 4288 -4338
		mu 0 4 2599 2591 2633 2634
		f 4 -4356 4337 4326 4292
		mu 0 4 2600 2599 2634 2635
		f 4 -4357 -4293 4294 -4340
		mu 0 4 2607 2600 2635 2636
		f 4 -4358 4339 4320 4298
		mu 0 4 2608 2607 2636 2637
		f 4 -4359 -4299 4300 -4342
		mu 0 4 2615 2608 2637 2638
		f 4 -4360 4341 4314 4304
		mu 0 4 2616 2615 2638 2639
		f 4 -4402 4407 4402 4310
		mu 0 4 2624 2623 2640 2641
		f 4 4403 -4362 -4309 -4398
		mu 0 4 2642 2643 2644 2645
		f 4 4315 -4363 -4303 -4312
		mu 0 4 2646 2647 2648 2649
		f 4 4296 -4364 -4316 -4300
		mu 0 4 2650 2651 2647 2646
		f 4 4321 -4365 -4297 -4318
		mu 0 4 2652 2653 2651 2650
		f 4 4290 -4366 -4322 -4294
		mu 0 4 2654 2655 2653 2652
		f 4 4327 -4367 -4291 -4324
		mu 0 4 2656 2657 2655 2654
		f 4 4284 -4368 -4328 -4288
		mu 0 4 2658 2659 2657 2656
		f 4 -4333 4334 -4369 -4285
		mu 0 4 2658 2631 2630 2659
		f 4 -4370 -4334 -4286 -4198
		mu 0 4 2627 2590 2593 2660
		f 4 -4353 -4371 4196 4283
		mu 0 4 2588 2587 2661 2662
		f 4 4464 -4372 3949 -4437
		mu 0 4 2663 2664 2492 2491
		f 4 4373 4463 4436 4103
		mu 0 4 2490 2665 2663 2491
		f 4 4462 -4374 4282 -4435
		mu 0 4 2666 2667 2632 2631
		f 4 4375 4461 4434 4332
		mu 0 4 2658 2668 2666 2631
		f 4 4460 -4376 4287 -4433
		mu 0 4 2669 2668 2658 2656
		f 4 4377 4459 4432 4323
		mu 0 4 2654 2670 2669 2656
		f 4 4458 -4378 4293 -4431
		mu 0 4 2671 2670 2654 2652
		f 4 4379 4457 4430 4317
		mu 0 4 2650 2672 2671 2652
		f 4 4456 -4380 4299 -4429
		mu 0 4 2673 2672 2650 2646
		f 4 4381 4455 4428 4311
		mu 0 4 2649 2674 2673 2646
		f 4 4382 4453 4426 4397
		mu 0 4 2645 2675 2676 2642
		f 4 4452 -4383 4308 -4425
		mu 0 4 2677 2675 2645 2644
		f 4 4451 4424 4344 -4424
		mu 0 4 2678 2679 2618 2621
		f 4 4405 4450 4423 -4400
		mu 0 4 2620 2680 2678 2621
		f 4 4386 4448 4421 -4313
		mu 0 4 2612 2681 2682 2613
		f 4 4447 -4387 -4302 -4420
		mu 0 4 2683 2681 2612 2605
		f 4 4388 4446 4419 -4319
		mu 0 4 2604 2684 2683 2605
		f 4 4445 -4389 -4296 -4418
		mu 0 4 2685 2684 2604 2597
		f 4 4390 4444 4417 -4325
		mu 0 4 2596 2686 2685 2597
		f 4 4443 -4391 -4290 -4416
		mu 0 4 2687 2686 2596 2589
		f 4 4392 4442 4415 -4330
		mu 0 4 2588 2688 2687 2589
		f 4 4441 -4393 -4284 -4414
		mu 0 4 2689 2688 2588 2662
		f 4 4394 4440 4413 3951
		mu 0 4 2494 2690 2691 2495
		f 4 4439 -4395 4130 -4412
		mu 0 4 2692 2693 2569 2568
		f 4 4438 4411 3952 -4411
		mu 0 4 2694 2692 2568 2493
		f 4 4371 4437 4410 4201
		mu 0 4 2492 2664 2694 2493
		f 4 4302 -4399 -4404 -4306
		mu 0 4 2649 2648 2643 2642
		f 4 -4405 4398 4345 4307
		mu 0 4 2620 2619 2610 2613
		f 4 4449 -4406 -4308 -4422
		mu 0 4 2682 2680 2620 2613
		f 4 -4343 4360 -4407 -4310
		mu 0 4 2617 2616 2623 2622
		f 4 -4408 -4361 -4305 4306
		mu 0 4 2640 2623 2616 2639
		f 4 4454 -4382 4305 -4427
		mu 0 4 2676 2674 2649 2642
		f 4 -4438 4409 -4201 4396
		mu 0 4 2694 2664 2395 2394
		f 4 -4009 4395 -4439 -4397
		mu 0 4 2394 2573 2692 2694
		f 4 -4132 -4413 -4440 -4396
		mu 0 4 2573 2572 2693 2692
		f 4 -4441 4412 -4008 4393
		mu 0 4 2691 2690 2378 2381
		f 4 4285 -4415 -4442 -4394
		mu 0 4 2660 2593 2688 2689
		f 4 -4443 4414 4330 4391
		mu 0 4 2687 2688 2593 2592
		f 4 4291 -4417 -4444 -4392
		mu 0 4 2592 2598 2686 2687
		f 4 -4445 4416 4325 4389
		mu 0 4 2685 2686 2598 2601
		f 4 4297 -4419 -4446 -4390
		mu 0 4 2601 2606 2684 2685
		f 4 -4447 4418 4319 4387
		mu 0 4 2683 2684 2606 2609
		f 4 4303 -4421 -4448 -4388
		mu 0 4 2609 2614 2681 2683
		f 4 -4449 4420 4313 4385
		mu 0 4 2682 2681 2614 2617
		f 4 4309 -4423 -4450 -4386
		mu 0 4 2617 2622 2680 2682
		f 4 -4451 4422 4400 4384
		mu 0 4 2678 2680 2622 2625
		f 4 -4344 4383 -4452 -4385
		mu 0 4 2625 2624 2679 2678
		f 4 -4311 -4426 -4453 -4384
		mu 0 4 2624 2641 2675 2677
		f 4 -4454 4425 -4403 4408
		mu 0 4 2676 2675 2641 2640
		f 4 -4307 -4428 -4455 -4409
		mu 0 4 2640 2639 2674 2676
		f 4 -4456 4427 -4315 4380
		mu 0 4 2673 2674 2639 2638
		f 4 -4301 -4430 -4457 -4381
		mu 0 4 2638 2637 2672 2673
		f 4 -4458 4429 -4321 4378
		mu 0 4 2671 2672 2637 2636
		f 4 -4295 -4432 -4459 -4379
		mu 0 4 2636 2635 2670 2671
		f 4 -4460 4431 -4327 4376
		mu 0 4 2669 2670 2635 2634
		f 4 -4289 -4434 -4461 -4377
		mu 0 4 2634 2633 2668 2669
		f 4 -4462 4433 -4332 4374
		mu 0 4 2666 2668 2633 2626
		f 4 -4282 -4436 -4463 -4375
		mu 0 4 2626 2628 2667 2666
		f 4 -4464 4435 -4103 4372
		mu 0 4 2663 2665 2388 2387
		f 4 -4006 -4410 -4465 -4373
		mu 0 4 2387 2395 2664 2663
		f 4 4465 4467 -4469 -4467
		mu 0 4 2695 2696 2697 2698
		f 4 4470 4472 -4472 -4470
		mu 0 4 2699 2700 2701 2702
		f 4 4473 4475 -4477 -4475
		mu 0 4 2703 2704 2705 2706
		f 4 4478 4480 -4480 -4478
		mu 0 4 2707 2708 2709 2710
		f 4 4481 4483 -4485 -4483
		mu 0 4 2711 2712 2713 2714
		f 4 4486 4488 -4488 -4486
		mu 0 4 2715 2716 2717 2718
		f 4 4489 4491 -4493 -4491
		mu 0 4 2719 2720 2721 2722
		f 4 4494 4496 -4496 -4494
		mu 0 4 2723 2724 2725 2726
		f 4 4497 4499 -4501 -4499
		mu 0 4 2727 2728 2729 2730
		f 4 4502 4504 -4504 -4502
		mu 0 4 2731 2732 2733 2734
		f 4 4505 4507 -4509 -4507
		mu 0 4 2735 2736 2737 2738
		f 4 4510 4512 -4512 -4510
		mu 0 4 2739 2740 2741 2742
		f 4 4513 4515 -4517 -4515
		mu 0 4 2743 2744 2745 2746
		f 4 4518 4520 -4520 -4518
		mu 0 4 2747 2748 2749 2750
		f 4 4521 4523 -4525 -4523
		mu 0 4 2751 2752 2753 2754
		f 4 4526 4528 -4528 -4526
		mu 0 4 2755 2756 2757 2758
		f 4 4529 4531 -4533 -4531
		mu 0 4 2759 2760 2761 2762
		f 4 4534 4536 -4536 -4534
		mu 0 4 2763 2764 2765 2766
		f 4 4537 4539 -4541 -4539
		mu 0 4 2767 2768 2769 2770
		f 4 4542 4544 -4544 -4542
		mu 0 4 2771 2772 2773 2774
		f 4 4545 4547 -4549 -4547
		mu 0 4 2775 2776 2777 2778
		f 4 4550 4552 -4552 -4550
		mu 0 4 2779 2780 2781 2782
		f 4 4553 4555 -4557 -4555
		mu 0 4 2783 2784 2785 2786
		f 4 4558 4560 -4560 -4558
		mu 0 4 2787 2788 2789 2790
		f 4 4561 4563 -4565 -4563
		mu 0 4 2791 2792 2793 2794
		f 4 4566 4568 -4568 -4566
		mu 0 4 2795 2796 2797 2798
		f 4 4569 4571 -4573 -4571
		mu 0 4 2799 2800 2801 2802
		f 4 4574 4576 -4576 -4574
		mu 0 4 2803 2804 2805 2806
		f 4 4577 4579 -4581 -4579
		mu 0 4 2807 2808 2809 2810
		f 4 4582 4584 -4584 -4582
		mu 0 4 2811 2812 2813 2814
		f 4 4585 4587 -4589 -4587
		mu 0 4 2815 2816 2817 2818
		f 4 4590 4592 -4592 -4590
		mu 0 4 2819 2820 2821 2822
		f 4 4852 4815 4658 4675
		mu 0 4 2823 2824 2825 2826
		f 4 4837 4925 4877 -4800
		mu 0 4 2827 2828 2829 2830
		f 4 4822 4785 4670 4663
		mu 0 4 2831 2832 2833 2834
		f 4 4939 4892 -4671 4674
		mu 0 4 2835 2836 2834 2833
		f 4 4664 4946 4900 4669
		mu 0 4 2837 2838 2839 2840
		f 4 4855 4818 4686 -4818
		mu 0 4 2841 2842 2843 2844
		f 4 4942 4895 -4686 -4895
		mu 0 4 2845 2846 2847 2848
		f 4 4685 4667 4819 -4604
		mu 0 4 2848 2847 2849 2850
		f 4 4688 4668 4943 -4605
		mu 0 4 2851 2852 2853 2854
		f 4 4825 4788 4650 4694
		mu 0 4 2855 2856 2857 2858
		f 4 4937 4889 -4651 4654
		mu 0 4 2859 2860 2858 2857
		f 4 4849 4812 4689 4655
		mu 0 4 2861 2862 2863 2864
		f 4 4695 4949 4903 4649
		mu 0 4 2865 2866 2867 2868
		f 4 4845 4808 4622 4712
		mu 0 4 2869 2870 2871 2872
		f 4 4933 4885 4623 4711
		mu 0 4 2873 2874 2875 2876
		f 4 4627 4829 4792 -4624
		mu 0 4 2875 2877 2878 2876
		f 4 4628 4916 4868 -4625
		mu 0 4 2879 2880 2881 2882
		f 4 4842 4805 4642 4728
		mu 0 4 2883 2884 2885 2886
		f 4 4930 4882 4643 4727
		mu 0 4 2887 2888 2889 2890
		f 4 4647 4832 4795 -4644
		mu 0 4 2889 2891 2892 2890
		f 4 4648 4919 4871 -4645
		mu 0 4 2893 2894 2895 2896
		f 4 4846 4971 4954 -4809
		mu 0 4 2870 2897 2898 2871
		f 4 4934 4973 4956 -4886
		mu 0 4 2874 2899 2900 2875
		f 4 4974 4957 -4628 -4957
		mu 0 4 2900 2901 2877 2875
		f 4 4981 4964 -4780 -4964
		mu 0 4 2902 2903 2904 2905
		f 4 4905 4857 -4741 -4857
		mu 0 4 2906 2907 2908 2909
		f 4 4738 -4970 4987 4952
		mu 0 4 2910 2911 2912 2913
		f 4 4739 4631 4915 -4629
		mu 0 4 2914 2915 2916 2917
		f 4 4976 4959 -4740 -4959
		mu 0 4 2918 2919 2915 2914
		f 4 4906 4858 -4737 -4858
		mu 0 4 2907 2920 2921 2908
		f 4 4734 -4969 4986 4969
		mu 0 4 2911 2922 2923 2912
		f 4 4735 4635 4914 -4632
		mu 0 4 2915 2924 2925 2916
		f 4 4977 4960 -4736 -4960
		mu 0 4 2919 2926 2924 2915
		f 4 4907 4859 -4733 -4859
		mu 0 4 2920 2927 2928 2921
		f 4 4730 -4968 4985 4968
		mu 0 4 2922 2929 2930 2923
		f 4 4731 4639 4913 -4636
		mu 0 4 2924 2931 2932 2925
		f 4 4978 4961 -4732 -4961
		mu 0 4 2926 2933 2931 2924
		f 4 4843 4806 4714 -4806
		mu 0 4 2884 2934 2935 2885
		f 4 4931 4883 4715 -4883
		mu 0 4 2888 2936 2937 2889
		f 4 4719 4831 -4648 -4716
		mu 0 4 2937 2938 2891 2889
		f 4 4720 4918 -4649 -4717
		mu 0 4 2939 2940 2894 2893
		f 4 4826 4789 4698 -4789
		mu 0 4 2856 2941 2942 2857
		f 4 4936 -4655 -4699 4702
		mu 0 4 2943 2859 2857 2942
		f 4 4848 -4656 4651 4703
		mu 0 4 2944 2861 2864 2945
		f 4 -4904 4950 4904 4697
		mu 0 4 2868 2867 2946 2947
		f 4 4853 4816 4678 -4816
		mu 0 4 2824 2948 2949 2825
		f 4 4940 4893 -4660 -4893
		mu 0 4 2836 2950 2951 2834
		f 4 4821 -4664 4659 4683
		mu 0 4 2952 2831 2834 2951
		f 4 4684 4945 -4665 4660
		mu 0 4 2953 2954 2838 2837
		f 4 4823 5124 5099 -4786
		mu 0 4 2832 2955 2956 2833
		f 4 5086 5135 -5027 -5069
		mu 0 4 2957 2958 2959 2960
		f 4 5145 5120 -4676 4671
		mu 0 4 2961 2962 2823 2826
		f 4 -4901 4947 5148 5097
		mu 0 4 2840 2839 2963 2964
		f 4 4854 4817 4600 -4817
		mu 0 4 2948 2841 2844 2949
		f 4 4941 4894 -4680 -4894
		mu 0 4 2950 2845 2848 2951
		f 4 4820 -4684 4679 4603
		mu 0 4 2850 2952 2951 2848
		f 4 4604 4944 -4685 4680
		mu 0 4 2851 2854 2954 2953
		f 4 4938 -4611 -4691 -4890
		mu 0 4 2860 2965 2966 2858
		f 4 4824 -4695 4690 -4787
		mu 0 4 2967 2855 2858 2966
		f 4 -4902 4948 -4696 4691
		mu 0 4 2968 2969 2866 2865
		f 4 4850 -4612 4607 -4813
		mu 0 4 2862 2970 2971 2863
		f 4 4827 4790 4598 -4790
		mu 0 4 2941 2972 2973 2942
		f 4 4935 -4703 -4599 -4887
		mu 0 4 2974 2943 2942 2973
		f 4 4847 -4704 4699 -4810
		mu 0 4 2975 2944 2945 2976
		f 4 -4905 4951 4856 4597
		mu 0 4 2947 2946 2977 2978
		f 4 -4707 -4869 4917 -4721
		mu 0 4 2939 2882 2881 2940
		f 4 -4708 -4793 4830 -4720
		mu 0 4 2937 2876 2878 2938
		f 4 -4807 4844 -4713 4708
		mu 0 4 2935 2934 2869 2872
		f 4 -4884 4932 -4712 4707
		mu 0 4 2937 2936 2873 2876
		f 4 -4872 4920 4872 -4723
		mu 0 4 2896 2895 2979 2980
		f 4 -4796 4833 4796 -4724
		mu 0 4 2890 2892 2981 2982
		f 4 4929 -4728 4723 -4881
		mu 0 4 2983 2887 2890 2982
		f 4 4841 -4729 4724 -4804
		mu 0 4 2984 2883 2886 2985
		f 4 4840 4803 4742 -4803
		mu 0 4 2986 2984 2985 2987
		f 4 4928 4880 4744 -4880
		mu 0 4 2988 2983 2982 2989
		f 4 -4797 4834 4797 -4745
		mu 0 4 2982 2981 2990 2989
		f 4 -4873 4921 4873 -4747
		mu 0 4 2980 2979 2991 2992
		f 4 4839 4802 4750 -4802
		mu 0 4 2993 2986 2987 2994
		f 4 4927 4879 4752 -4879
		mu 0 4 2995 2988 2989 2996
		f 4 -4798 4835 4798 -4753
		mu 0 4 2989 2990 2997 2996
		f 4 -4874 4922 4874 -4755
		mu 0 4 2992 2991 2998 2999
		f 4 4838 4801 4758 -4801
		mu 0 4 3000 2993 2994 3001
		f 4 4926 4878 4760 -4878
		mu 0 4 2829 2995 2996 2830
		f 4 -4799 4836 4799 -4761
		mu 0 4 2996 2997 2827 2830
		f 4 -4875 4923 4875 -4763
		mu 0 4 2999 2998 3002 3003
		f 4 -4860 4908 4860 -4767
		mu 0 4 2928 2927 3004 3005
		f 4 4984 4967 4768 -4967
		mu 0 4 3006 2930 2929 3007
		f 4 4912 -4640 4770 4771
		mu 0 4 3008 2932 2931 3009
		f 4 -4962 4979 4962 -4771
		mu 0 4 2931 2933 3010 3009
		f 4 -4861 4909 4861 -4775
		mu 0 4 3005 3004 3011 3012
		f 4 4983 4966 4776 -4966
		mu 0 4 3013 3006 3007 3014
		f 4 4911 -4772 4778 4779
		mu 0 4 2904 3008 3009 2905
		f 4 -4963 4980 4963 -4779
		mu 0 4 3009 3010 2902 2905
		f 4 -4820 4781 -4689 -4783
		mu 0 4 2850 2849 2852 2851
		f 4 -4784 -4821 4782 -4681
		mu 0 4 2953 2952 2850 2851
		f 4 -4785 -4822 4783 -4661
		mu 0 4 2837 2831 2952 2953
		f 4 4673 -4823 4784 -4670
		mu 0 4 2840 2832 2831 2837
		f 4 5123 -4824 -4674 -5098
		mu 0 4 2964 2955 2832 2840
		f 4 -4788 -4825 -4610 -4692
		mu 0 4 2865 2855 2967 2968
		f 4 4653 -4826 4787 -4650
		mu 0 4 2868 2856 2855 2865
		f 4 4701 -4827 -4654 -4698
		mu 0 4 2947 2941 2856 2868
		f 4 4594 -4828 -4702 -4598
		mu 0 4 2978 2972 2941 2947
		f 4 -4958 4975 4958 -4792
		mu 0 4 2877 2901 3015 2879
		f 4 -4830 4791 4624 4710
		mu 0 4 2878 2877 2879 2882
		f 4 -4831 -4711 4706 -4794
		mu 0 4 2938 2878 2882 2939
		f 4 -4832 4793 4716 -4795
		mu 0 4 2891 2938 2939 2893
		f 4 -4833 4794 4644 4726
		mu 0 4 2892 2891 2893 2896
		f 4 -4834 -4727 4722 4619
		mu 0 4 2981 2892 2896 2980
		f 4 -4835 -4620 4746 4747
		mu 0 4 2990 2981 2980 2992
		f 4 -4836 -4748 4754 4755
		mu 0 4 2997 2990 2992 2999
		f 4 -4837 -4756 4762 4763
		mu 0 4 2827 2997 2999 3003
		f 4 4924 -4838 -4764 -4876
		mu 0 4 3002 2828 2827 3003
		f 4 4751 -4839 -4760 -4758
		mu 0 4 3016 3017 3018 3019
		f 4 4743 -4840 -4752 -4750
		mu 0 4 3020 3021 3017 3016
		f 4 4617 -4841 -4744 -4742
		mu 0 4 3022 3023 3021 3020
		f 4 -4805 -4842 -4618 -4722
		mu 0 4 3024 3025 3023 3022
		f 4 4645 -4843 4804 -4642
		mu 0 4 3026 3027 3025 3024
		f 4 4717 -4844 -4646 -4714
		mu 0 4 3028 3029 3027 3026
		f 4 -4845 -4718 -4706 -4808
		mu 0 4 3030 3029 3028 3031
		f 4 4625 -4846 4807 -4622
		mu 0 4 3032 3033 3030 3031
		f 4 4970 -4847 -4626 -4953
		mu 0 4 3034 3035 3033 3032
		f 4 -4811 -4848 -4594 -4701
		mu 0 4 3036 3037 3038 3039
		f 4 -4812 -4849 4810 -4653
		mu 0 4 3040 3041 3037 3036
		f 4 4696 -4850 4811 -4693
		mu 0 4 3042 3043 3041 3040
		f 4 -4814 -4851 -4697 -4609
		mu 0 4 3044 3045 3043 3042
		f 4 -4815 -5121 5146 -4673
		mu 0 4 3046 3047 3048 3049
		f 4 4661 -4853 4814 -4658
		mu 0 4 3050 3051 3047 3046
		f 4 4681 -4854 -4662 -4678
		mu 0 4 3052 3053 3051 3050
		f 4 4601 -4855 -4682 -4600
		mu 0 4 3054 3055 3053 3052
		f 4 4665 -4856 -4602 -4688
		mu 0 4 3056 3057 3055 3054
		f 4 4737 4629 -4906 -4596
		mu 0 4 3058 3059 2907 2906
		f 4 4733 4633 -4907 -4630
		mu 0 4 3059 3060 2920 2907
		f 4 4729 4637 -4908 -4634
		mu 0 4 3060 3061 2927 2920
		f 4 -4909 -4638 4765 4767
		mu 0 4 3004 2927 3061 3062
		f 4 -4910 -4768 4773 4775
		mu 0 4 3011 3004 3062 3063
		f 4 -4965 4982 4965 -4863
		mu 0 4 2904 2903 3013 3014
		f 4 -4864 -4912 4862 -4777
		mu 0 4 3064 3008 2904 3014
		f 4 -4865 -4913 4863 -4769
		mu 0 4 3065 2932 3008 3064
		f 4 -4914 4864 -4731 -4866
		mu 0 4 2925 2932 3065 3066
		f 4 -4915 4865 -4735 -4867
		mu 0 4 2916 2925 3066 3067
		f 4 -4916 4866 -4739 -4868
		mu 0 4 2917 2916 3067 3068
		f 4 -4917 4867 4621 4709
		mu 0 4 2881 2880 3032 3031
		f 4 -4918 -4710 4705 -4870
		mu 0 4 2940 2881 3031 3028
		f 4 -4919 4869 4713 -4871
		mu 0 4 2894 2940 3028 3026
		f 4 -4920 4870 4641 4725
		mu 0 4 2895 2894 3026 3024
		f 4 -4921 -4726 4721 4620
		mu 0 4 2979 2895 3024 3022
		f 4 -4922 -4621 4741 4748
		mu 0 4 2991 2979 3022 3020
		f 4 -4923 -4749 4749 4756
		mu 0 4 2998 2991 3020 3016
		f 4 -4924 -4757 4757 4764
		mu 0 4 3002 2998 3016 3019
		f 4 4759 -4877 -4925 -4765
		mu 0 4 3019 3018 2828 3002
		f 4 -4926 4876 4800 4761
		mu 0 4 2829 2828 3000 3001
		f 4 4753 -4927 -4762 -4759
		mu 0 4 2994 2995 2829 3001
		f 4 4745 -4928 -4754 -4751
		mu 0 4 2987 2988 2995 2994
		f 4 4618 -4929 -4746 -4743
		mu 0 4 2985 2983 2988 2987
		f 4 -4882 -4930 -4619 -4725
		mu 0 4 2886 2887 2983 2985
		f 4 4646 -4931 4881 -4643
		mu 0 4 2885 2888 2887 2886
		f 4 4718 -4932 -4647 -4715
		mu 0 4 2935 2936 2888 2885
		f 4 -4933 -4719 -4709 -4885
		mu 0 4 2873 2936 2935 2872
		f 4 4626 -4934 4884 -4623
		mu 0 4 2871 2874 2873 2872
		f 4 4972 -4935 -4627 -4955
		mu 0 4 2898 2899 2874 2871
		f 4 -4888 -4936 -4597 -4700
		mu 0 4 2945 2943 2974 2976
		f 4 -4889 -4937 4887 -4652
		mu 0 4 2864 2859 2943 2945
		f 4 4693 -4938 4888 -4690
		mu 0 4 2863 2860 2859 2864
		f 4 -4891 -4939 -4694 -4608
		mu 0 4 2971 2965 2860 2863
		f 4 4662 -4940 4891 -4659
		mu 0 4 2825 2836 2835 2826
		f 4 4682 -4941 -4663 -4679
		mu 0 4 2949 2950 2836 2825
		f 4 4602 -4942 -4683 -4601
		mu 0 4 2844 2845 2950 2949
		f 4 4666 -4943 -4603 -4687
		mu 0 4 2843 2846 2845 2844
		f 4 -4944 4896 4687 -4898
		mu 0 4 2854 2853 3056 3054
		f 4 -4945 4897 4599 -4899
		mu 0 4 2954 2854 3054 3052
		f 4 -4946 4898 4677 -4900
		mu 0 4 2838 2954 3052 3050
		f 4 -4947 4899 4657 4676
		mu 0 4 2839 2838 3050 3046
		f 4 5147 -4948 -4677 4672
		mu 0 4 3049 2963 2839 3046
		f 4 -4949 -4613 4608 -4903
		mu 0 4 2866 2969 3044 3042
		f 4 -4950 4902 4692 4656
		mu 0 4 2867 2866 3042 3040
		f 4 -4951 -4657 4652 4704
		mu 0 4 2946 2867 3040 3036
		f 4 -4952 -4705 4700 4595
		mu 0 4 2977 2946 3036 3039
		f 4 4593 -4954 -4971 -4614
		mu 0 4 3039 3038 3035 3034
		f 4 -4972 4953 4809 4614
		mu 0 4 2898 2897 2975 2976
		f 4 4596 -4956 -4973 -4615
		mu 0 4 2976 2974 2899 2898
		f 4 -4974 4955 4886 4615
		mu 0 4 2900 2899 2974 2973
		f 4 -4791 4828 -4975 -4616
		mu 0 4 2973 2972 2901 2900
		f 4 -4976 -4829 -4595 4616
		mu 0 4 3015 2901 2972 2978
		f 4 4740 4632 -4977 -4617
		mu 0 4 2909 2908 2919 2918
		f 4 4736 4636 -4978 -4633
		mu 0 4 2908 2921 2926 2919
		f 4 4732 4640 -4979 -4637
		mu 0 4 2921 2928 2933 2926
		f 4 -4980 -4641 4766 4772
		mu 0 4 3010 2933 2928 3005
		f 4 -4981 -4773 4774 4780
		mu 0 4 2902 3010 3005 3012
		f 4 -4862 4910 -4982 -4781
		mu 0 4 3012 3011 2903 2902
		f 4 -4983 -4911 -4776 4777
		mu 0 4 3013 2903 3011 3063
		f 4 4769 -4984 -4778 -4774
		mu 0 4 3062 3006 3013 3063
		f 4 4638 -4985 -4770 -4766
		mu 0 4 3061 2930 3006 3062
		f 4 -4986 -4639 -4730 4634
		mu 0 4 2923 2930 3061 3060
		f 4 -4987 -4635 -4734 4630
		mu 0 4 2912 2923 3060 3059
		f 4 -4988 -4631 -4738 4613
		mu 0 4 2913 2912 3059 3058
		f 4 5058 5126 5101 -5056
		mu 0 4 3069 3070 3071 3072
		f 4 5094 5077 5052 -5077
		mu 0 4 3073 3074 3075 3076
		f 4 5143 5118 5053 4994
		mu 0 4 3077 3078 3079 3080
		f 4 5078 5061 -5054 5057
		mu 0 4 3081 3082 3080 3079
		f 4 5051 5128 5103 -5048
		mu 0 4 3083 3084 3085 3086
		f 4 5092 5075 5045 -5075
		mu 0 4 3087 3088 3089 3090
		f 4 5141 5116 5046 5002
		mu 0 4 3091 3092 3093 3094
		f 4 5050 5080 5063 -5047
		mu 0 4 3093 3095 3096 3094
		f 4 5043 5130 5105 -5040
		mu 0 4 3097 3098 3099 3100
		f 4 5090 5073 5037 -5073
		mu 0 4 3101 3102 3103 3104
		f 4 5139 5114 5038 5010
		mu 0 4 3105 3106 3107 3108
		f 4 5042 5082 5065 -5039
		mu 0 4 3107 3109 3110 3108
		f 4 5035 5132 5107 -5032
		mu 0 4 3111 3112 3113 3114
		f 4 5088 5071 5029 -5071
		mu 0 4 3115 3116 3117 3118
		f 4 5137 5112 5030 5018
		mu 0 4 3119 3120 3121 3122
		f 4 5034 5084 5067 -5031
		mu 0 4 3121 3123 3124 3122
		f 4 5163 5156 5108 -5156
		mu 0 4 3125 3126 3127 3128
		f 4 5087 5158 5151 -5070
		mu 0 4 3129 3130 3131 3132
		f 4 5136 5160 5153 5026
		mu 0 4 2959 3133 3134 2960
		f 4 5161 5154 5068 -5154
		mu 0 4 3134 3135 2957 2960
		f 4 5089 5072 5015 -5072
		mu 0 4 3116 3101 3104 3117
		f 4 5138 -5011 5017 -5113
		mu 0 4 3120 3105 3108 3121
		f 4 -5066 5083 -5035 -5018
		mu 0 4 3108 3110 3123 3121
		f 4 -5106 5131 -5036 -5014
		mu 0 4 3100 3099 3112 3111
		f 4 5091 5074 5007 -5074
		mu 0 4 3102 3087 3090 3103
		f 4 5140 -5003 5009 -5115
		mu 0 4 3106 3091 3094 3107
		f 4 -5064 5081 -5043 -5010
		mu 0 4 3094 3096 3109 3107
		f 4 -5104 5129 -5044 -5006
		mu 0 4 3086 3085 3098 3097
		f 4 5093 5076 4999 -5076
		mu 0 4 3088 3073 3076 3089
		f 4 5142 -4995 5001 -5117
		mu 0 4 3092 3077 3080 3093
		f 4 -5062 5079 -5051 -5002
		mu 0 4 3080 3082 3095 3093
		f 4 -5102 5127 -5052 -4998
		mu 0 4 3072 3071 3084 3083
		f 4 5144 -4672 4993 -5119
		mu 0 4 3078 3136 3137 3079
		f 4 -5061 5095 -4675 4988
		mu 0 4 3069 3081 3138 3139
		f 4 -5100 5125 -5059 -4989
		mu 0 4 3139 3140 3070 3069
		f 4 5096 -5060 -4990 4610
		mu 0 4 3141 3074 3142 3143
		f 4 4995 -5079 5060 5055
		mu 0 4 3072 3082 3081 3069
		f 4 -5080 -4996 4997 -5063
		mu 0 4 3095 3082 3072 3083
		f 4 -5081 5062 5047 5003
		mu 0 4 3096 3095 3083 3086
		f 4 -5082 -5004 5005 -5065
		mu 0 4 3109 3096 3086 3097
		f 4 -5083 5064 5039 5011
		mu 0 4 3110 3109 3097 3100
		f 4 -5084 -5012 5013 -5067
		mu 0 4 3123 3110 3100 3111
		f 4 -5085 5066 5031 5019
		mu 0 4 3124 3123 3111 3114
		f 4 -5155 5162 5155 5027
		mu 0 4 2957 3135 3125 3128
		f 4 -5109 5134 -5087 -5028
		mu 0 4 3128 3127 2958 2957
		f 4 5157 -5088 -5025 -5150
		mu 0 4 3144 3130 3129 3145
		f 4 5032 -5089 -5017 -5029
		mu 0 4 3146 3116 3115 3147
		f 4 5008 -5090 -5033 -5013
		mu 0 4 3148 3101 3116 3146
		f 4 5040 -5091 -5009 -5037
		mu 0 4 3149 3102 3101 3148
		f 4 5000 -5092 -5041 -5005
		mu 0 4 3150 3087 3102 3149
		f 4 5048 -5093 -5001 -5045
		mu 0 4 3151 3088 3087 3150
		f 4 4992 -5094 -5049 -4997
		mu 0 4 3152 3073 3088 3151
		f 4 -5057 5059 -5095 -4993
		mu 0 4 3152 3142 3074 3073
		f 4 -5096 -5058 -4994 -4892
		mu 0 4 3138 3081 3079 3137
		f 4 -5078 -5097 4890 4991
		mu 0 4 3075 3074 3141 3153
		f 4 4609 -5099 -5124 -4606
		mu 0 4 2968 2967 2955 2964
		f 4 -5125 5098 4786 4606
		mu 0 4 2956 2955 2967 2966
		f 4 -5126 -4607 4989 -5101
		mu 0 4 3070 3140 3143 3142
		f 4 -5127 5100 5056 4990
		mu 0 4 3071 3070 3142 3152
		f 4 -5128 -4991 4996 -5103
		mu 0 4 3084 3071 3152 3151
		f 4 -5129 5102 5044 4998
		mu 0 4 3085 3084 3151 3150
		f 4 -5130 -4999 5004 -5105
		mu 0 4 3098 3085 3150 3149
		f 4 -5131 5104 5036 5006
		mu 0 4 3099 3098 3149 3148
		f 4 -5132 -5007 5012 -5107
		mu 0 4 3112 3099 3148 3146
		f 4 -5133 5106 5028 5014
		mu 0 4 3113 3112 3146 3147
		f 4 -5157 5164 5149 5022
		mu 0 4 3127 3126 3144 3145
		f 4 -5135 -5023 5024 -5110
		mu 0 4 2958 3127 3145 3129
		f 4 -5136 5109 5069 -5111
		mu 0 4 2959 2958 3129 3132
		f 4 5159 -5137 5110 -5152
		mu 0 4 3154 3133 2959 3132
		f 4 5033 -5138 5111 -5030
		mu 0 4 3155 3120 3119 3156
		f 4 -5114 -5139 -5034 -5016
		mu 0 4 3157 3105 3120 3155
		f 4 5041 -5140 5113 -5038
		mu 0 4 3158 3106 3105 3157
		f 4 -5116 -5141 -5042 -5008
		mu 0 4 3159 3091 3106 3158
		f 4 5049 -5142 5115 -5046
		mu 0 4 3160 3092 3091 3159
		f 4 -5118 -5143 -5050 -5000
		mu 0 4 3161 3077 3092 3160
		f 4 5054 -5144 5117 -5053
		mu 0 4 3162 3078 3077 3161
		f 4 -5120 -5145 -5055 -4992
		mu 0 4 3163 3136 3078 3162
		f 4 4851 -5146 5119 4611
		mu 0 4 2970 2962 2961 2971
		f 4 -5147 -4852 4813 -5122
		mu 0 4 3049 3048 3045 3044
		f 4 -5123 -5148 5121 4612
		mu 0 4 2969 2963 3049 3044
		f 4 -5149 5122 4901 4605
		mu 0 4 2964 2963 2969 2968;
	setAttr ".fc[2500:2999]"
		f 4 5016 -5151 -5158 -5021
		mu 0 4 3147 3115 3130 3144
		f 4 -5159 5150 5070 5023
		mu 0 4 3131 3130 3115 3118
		f 4 -5112 -5153 -5160 -5024
		mu 0 4 3156 3119 3133 3154
		f 4 -5161 5152 -5019 5025
		mu 0 4 3134 3133 3119 3122
		f 4 -5068 5085 -5162 -5026
		mu 0 4 3122 3124 3135 3134
		f 4 -5163 -5086 -5020 5021
		mu 0 4 3125 3135 3124 3114
		f 4 -5108 5133 -5164 -5022
		mu 0 4 3114 3113 3126 3125
		f 4 -5165 -5134 -5015 5020
		mu 0 4 3144 3126 3113 3147
		f 4 5165 5167 -5169 -5167
		mu 0 4 3164 3165 3166 3167
		f 4 5170 5172 -5172 -5170
		mu 0 4 3168 3169 3170 3171
		f 4 5173 5175 -5177 -5175
		mu 0 4 3172 3173 3174 3175
		f 4 5178 5180 -5180 -5178
		mu 0 4 3176 3177 3178 3179
		f 4 5181 5183 -5185 -5183
		mu 0 4 3180 3181 3182 3183
		f 4 5186 5188 -5188 -5186
		mu 0 4 3184 3185 3186 3187
		f 4 5189 5191 -5193 -5191
		mu 0 4 3188 3189 3190 3191
		f 4 5194 5196 -5196 -5194
		mu 0 4 3192 3193 3194 3195
		f 4 5197 5199 -5201 -5199
		mu 0 4 3196 3197 3198 3199
		f 4 5202 5204 -5204 -5202
		mu 0 4 3200 3201 3202 3203
		f 4 5205 5207 -5209 -5207
		mu 0 4 3204 3205 3206 3207
		f 4 5210 5212 -5212 -5210
		mu 0 4 3208 3209 3210 3211
		f 4 5213 5215 -5217 -5215
		mu 0 4 3212 3213 3214 3215
		f 4 5218 5220 -5220 -5218
		mu 0 4 3216 3217 3218 3219
		f 4 5221 5223 -5225 -5223
		mu 0 4 3220 3221 3222 3223
		f 4 5226 5228 -5228 -5226
		mu 0 4 3224 3225 3226 3227
		f 4 5229 5231 -5233 -5231
		mu 0 4 3228 3229 3230 3231
		f 4 5234 5236 -5236 -5234
		mu 0 4 3232 3233 3234 3235
		f 4 5237 5239 -5241 -5239
		mu 0 4 3236 3237 3238 3239
		f 4 5242 5244 -5244 -5242
		mu 0 4 3240 3241 3242 3243
		f 4 5245 5247 -5249 -5247
		mu 0 4 3244 3245 3246 3247
		f 4 5250 5252 -5252 -5250
		mu 0 4 3248 3249 3250 3251
		f 4 5253 5255 -5257 -5255
		mu 0 4 3252 3253 3254 3255
		f 4 5258 5260 -5260 -5258
		mu 0 4 3256 3257 3258 3259
		f 4 5261 5263 -5265 -5263
		mu 0 4 3260 3261 3262 3263
		f 4 5266 5268 -5268 -5266
		mu 0 4 3264 3265 3266 3267
		f 4 5269 5271 -5273 -5271
		mu 0 4 3268 3269 3270 3271
		f 4 5274 5276 -5276 -5274
		mu 0 4 3272 3273 3274 3275
		f 4 -5348 -5337 -5473 -5504
		mu 0 4 3276 3277 3278 3279
		f 4 5456 -5526 -5568 -5489
		mu 0 4 3280 3281 3282 3283
		f 4 -5340 -5343 -5443 -5474
		mu 0 4 3284 3285 3286 3287
		f 4 -5347 5342 -5541 -5582
		mu 0 4 3288 3286 3285 3289
		f 4 -5342 -5543 -5583 -5341
		mu 0 4 3290 3291 3292 3293
		f 4 -5355 -5329 -5446 -5477
		mu 0 4 3294 3295 3296 3297
		f 4 -5333 5328 -5538 -5580
		mu 0 4 3298 3296 3295 3299
		f 4 -5334 -5350 -5470 -5501
		mu 0 4 3300 3301 3302 3303
		f 4 -5328 -5546 -5586 -5356
		mu 0 4 3304 3305 3306 3307
		f 4 -5373 -5301 -5466 -5497
		mu 0 4 3308 3309 3310 3311
		f 4 -5372 -5302 -5534 -5576
		mu 0 4 3312 3313 3314 3315
		f 4 5301 -5450 -5481 -5306
		mu 0 4 3314 3313 3316 3317
		f 4 5302 -5517 -5559 -5307
		mu 0 4 3318 3319 3320 3321
		f 4 -5389 -5321 -5463 -5494
		mu 0 4 3322 3323 3324 3325
		f 4 -5388 -5322 -5531 -5573
		mu 0 4 3326 3327 3328 3329
		f 4 5321 -5453 -5484 -5326
		mu 0 4 3328 3327 3330 3331
		f 4 5322 -5520 -5562 -5327
		mu 0 4 3332 3333 3334 3335
		f 4 5465 -5591 -5608 -5498
		mu 0 4 3311 3310 3336 3337
		f 4 5533 -5593 -5610 -5577
		mu 0 4 3315 3314 3338 3339
		f 4 5592 5305 -5594 -5611
		mu 0 4 3338 3314 3317 3340
		f 4 5599 5439 -5601 -5618
		mu 0 4 3341 3342 3343 3344
		f 4 5504 5400 -5506 -5548
		mu 0 4 3345 3346 3347 3348
		f 4 -5589 -5624 5605 -5399
		mu 0 4 3349 3350 3351 3352
		f 4 5306 -5558 -5310 -5400
		mu 0 4 3353 3354 3355 3356
		f 4 5594 5399 -5596 -5613
		mu 0 4 3357 3353 3356 3358
		f 4 5505 5396 -5507 -5549
		mu 0 4 3348 3347 3359 3360
		f 4 -5606 -5623 5604 -5395
		mu 0 4 3352 3351 3361 3362
		f 4 5309 -5557 -5314 -5396
		mu 0 4 3356 3355 3363 3364
		f 4 5595 5395 -5597 -5614
		mu 0 4 3358 3356 3364 3365
		f 4 5506 5392 -5508 -5550
		mu 0 4 3360 3359 3366 3367
		f 4 -5605 -5622 5603 -5391
		mu 0 4 3362 3361 3368 3369
		f 4 5313 -5556 -5318 -5392
		mu 0 4 3364 3363 3370 3371
		f 4 5596 5391 -5598 -5615
		mu 0 4 3365 3364 3371 3372
		f 4 5462 -5375 -5464 -5495
		mu 0 4 3325 3324 3373 3374
		f 4 5530 -5376 -5532 -5574
		mu 0 4 3329 3328 3375 3376
		f 4 5375 5325 -5483 -5380
		mu 0 4 3375 3328 3331 3377
		f 4 5376 5326 -5561 -5381
		mu 0 4 3378 3332 3335 3379
		f 4 5445 -5359 -5447 -5478
		mu 0 4 3297 3296 3380 3381
		f 4 -5363 5358 5332 -5579
		mu 0 4 3382 3380 3296 3298
		f 4 -5364 -5330 5333 -5500
		mu 0 4 3383 3384 3301 3300
		f 4 -5358 -5547 -5587 5545
		mu 0 4 3305 3385 3386 3306
		f 4 5442 -5736 -5761 -5475
		mu 0 4 3287 3286 3387 3388
		f 4 5704 5662 -5772 -5723
		mu 0 4 3389 3390 3391 3392
		f 4 -5344 5347 -5757 -5782
		mu 0 4 3393 3277 3276 3394
		f 4 -5734 -5785 -5584 5542
		mu 0 4 3291 3395 3396 3292
		f 4 5537 5350 5288 -5581
		mu 0 4 3299 3295 3397 3398
		f 4 5443 -5351 5354 -5476
		mu 0 4 3399 3397 3295 3294
		f 4 -5352 5355 -5585 5543
		mu 0 4 3400 3304 3307 3401
		f 4 5469 -5286 5289 -5502
		mu 0 4 3303 3302 3402 3403
		f 4 5446 -5283 -5448 -5479
		mu 0 4 3381 3380 3404 3405
		f 4 5534 5282 5362 -5578
		mu 0 4 3406 3404 3380 3382
		f 4 5466 -5360 5363 -5499
		mu 0 4 3407 3408 3384 3383
		f 4 -5282 -5505 -5588 5546
		mu 0 4 3385 3409 3410 3386
		f 4 5380 -5560 5516 5366
		mu 0 4 3378 3379 3320 3319
		f 4 5379 -5482 5449 5367
		mu 0 4 3375 3377 3316 3313
		f 4 -5369 5372 -5496 5463
		mu 0 4 3373 3309 3308 3374
		f 4 -5368 5371 -5575 5531
		mu 0 4 3375 3313 3312 3376
		f 4 5382 -5521 -5563 5519
		mu 0 4 3333 3411 3412 3334
		f 4 5383 -5454 -5485 5452
		mu 0 4 3327 3413 3414 3330
		f 4 5528 -5384 5387 -5572
		mu 0 4 3415 3413 3327 3326
		f 4 5460 -5385 5388 -5493
		mu 0 4 3416 3417 3323 3322
		f 4 5459 -5403 -5461 -5492
		mu 0 4 3418 3419 3417 3416
		f 4 5527 -5405 -5529 -5571
		mu 0 4 3420 3421 3413 3415
		f 4 5404 -5455 -5486 5453
		mu 0 4 3413 3421 3422 3414
		f 4 5406 -5522 -5564 5520
		mu 0 4 3411 3423 3424 3412
		f 4 5458 -5411 -5460 -5491
		mu 0 4 3425 3426 3419 3418
		f 4 5526 -5413 -5528 -5570
		mu 0 4 3427 3428 3421 3420
		f 4 5412 -5456 -5487 5454
		mu 0 4 3421 3428 3429 3422
		f 4 5414 -5523 -5565 5521
		mu 0 4 3423 3430 3431 3424
		f 4 5457 -5419 -5459 -5490
		mu 0 4 3432 3433 3426 3425
		f 4 5525 -5421 -5527 -5569
		mu 0 4 3282 3281 3428 3427
		f 4 5420 -5457 -5488 5455
		mu 0 4 3428 3281 3280 3429
		f 4 5422 -5524 -5566 5522
		mu 0 4 3430 3434 3435 3431
		f 4 5426 -5509 -5551 5507
		mu 0 4 3366 3436 3437 3367
		f 4 5602 -5429 -5604 -5621
		mu 0 4 3438 3439 3369 3368
		f 4 -5432 -5431 5317 -5555
		mu 0 4 3440 3441 3371 3370
		f 4 5430 -5599 -5616 5597
		mu 0 4 3371 3441 3442 3372
		f 4 5434 -5510 -5552 5508
		mu 0 4 3436 3443 3444 3437
		f 4 5601 -5437 -5603 -5620
		mu 0 4 3445 3446 3439 3438
		f 4 -5440 -5439 5431 -5554
		mu 0 4 3343 3342 3441 3440
		f 4 5438 -5600 -5617 5598
		mu 0 4 3441 3342 3341 3442
		f 4 5341 -5442 5473 -5346
		mu 0 4 3291 3290 3284 3287
		f 4 5733 5345 5474 -5760
		mu 0 4 3395 3291 3287 3388
		f 4 5351 5287 5475 5444
		mu 0 4 3304 3400 3399 3294
		f 4 5327 -5445 5476 -5332
		mu 0 4 3305 3304 3294 3297
		f 4 5357 5331 5477 -5362
		mu 0 4 3385 3305 3297 3381
		f 4 5281 5361 5478 -5279
		mu 0 4 3409 3385 3381 3405
		f 4 5448 -5595 -5612 5593
		mu 0 4 3317 3318 3447 3340
		f 4 -5371 -5303 -5449 5480
		mu 0 4 3316 3319 3318 3317
		f 4 5450 -5367 5370 5481
		mu 0 4 3377 3378 3319 3316
		f 4 5451 -5377 -5451 5482
		mu 0 4 3331 3332 3378 3377
		f 4 -5387 -5323 -5452 5483
		mu 0 4 3330 3333 3332 3331
		f 4 -5298 -5383 5386 5484
		mu 0 4 3414 3411 3333 3330
		f 4 -5408 -5407 5297 5485
		mu 0 4 3422 3423 3411 3414
		f 4 -5416 -5415 5407 5486
		mu 0 4 3429 3430 3423 3422
		f 4 -5424 -5423 5415 5487
		mu 0 4 3280 3434 3430 3429
		f 4 5523 5423 5488 -5567
		mu 0 4 3435 3434 3280 3283
		f 4 5417 5419 5489 -5412
		mu 0 4 3448 3449 3450 3451
		f 4 5409 5411 5490 -5404
		mu 0 4 3452 3448 3451 3453
		f 4 5401 5403 5491 -5296
		mu 0 4 3454 3452 3453 3455
		f 4 5381 5295 5492 5461
		mu 0 4 3456 3454 3455 3457
		f 4 5319 -5462 5493 -5324
		mu 0 4 3458 3456 3457 3459
		f 4 5373 5323 5494 -5378
		mu 0 4 3460 3458 3459 3461
		f 4 5464 5365 5377 5495
		mu 0 4 3462 3463 3460 3461
		f 4 5299 -5465 5496 -5304
		mu 0 4 3464 3463 3462 3465
		f 4 5588 5303 5497 -5607
		mu 0 4 3466 3464 3465 3467
		f 4 5360 5277 5498 5467
		mu 0 4 3468 3469 3470 3471
		f 4 5330 -5468 5499 5468
		mu 0 4 3472 3468 3471 3473
		f 4 5352 -5469 5500 -5357
		mu 0 4 3474 3472 3473 3475
		f 4 5286 5356 5501 5470
		mu 0 4 3476 3474 3475 3477
		f 4 5344 -5783 5756 5471
		mu 0 4 3478 3479 3480 3481
		f 4 5335 -5472 5503 -5338
		mu 0 4 3482 3478 3481 3483
		f 4 5279 5547 -5308 -5398
		mu 0 4 3484 3345 3348 3485
		f 4 5307 5548 -5312 -5394
		mu 0 4 3485 3348 3360 3486
		f 4 5311 5549 -5316 -5390
		mu 0 4 3486 3360 3367 3487
		f 4 -5428 -5426 5315 5550
		mu 0 4 3437 3488 3487 3367
		f 4 -5436 -5434 5427 5551
		mu 0 4 3444 3489 3488 3437
		f 4 5510 -5602 -5619 5600
		mu 0 4 3490 3446 3445 3344
		f 4 5436 -5511 5553 5511
		mu 0 4 3439 3446 3490 3491
		f 4 5428 -5512 5554 5512
		mu 0 4 3369 3439 3491 3492
		f 4 5513 5390 -5513 5555
		mu 0 4 3493 3362 3369 3492
		f 4 5514 5394 -5514 5556
		mu 0 4 3494 3352 3362 3493
		f 4 5515 5398 -5515 5557
		mu 0 4 3495 3349 3352 3494
		f 4 -5370 -5300 -5516 5558
		mu 0 4 3320 3463 3464 3321
		f 4 5517 -5366 5369 5559
		mu 0 4 3379 3460 3463 3320
		f 4 5518 -5374 -5518 5560
		mu 0 4 3335 3458 3460 3379
		f 4 -5386 -5320 -5519 5561
		mu 0 4 3334 3456 3458 3335
		f 4 -5299 -5382 5385 5562
		mu 0 4 3412 3454 3456 3334
		f 4 -5409 -5402 5298 5563
		mu 0 4 3424 3452 3454 3412
		f 4 -5417 -5410 5408 5564
		mu 0 4 3431 3448 3452 3424
		f 4 -5425 -5418 5416 5565
		mu 0 4 3435 3449 3448 3431
		f 4 5424 5566 5524 -5420
		mu 0 4 3449 3435 3283 3450
		f 4 -5422 -5458 -5525 5567
		mu 0 4 3282 3433 3432 3283
		f 4 5418 5421 5568 -5414
		mu 0 4 3426 3433 3282 3427
		f 4 5410 5413 5569 -5406
		mu 0 4 3419 3426 3427 3420
		f 4 5402 5405 5570 -5297
		mu 0 4 3417 3419 3420 3415
		f 4 5384 5296 5571 5529
		mu 0 4 3323 3417 3415 3326
		f 4 5320 -5530 5572 -5325
		mu 0 4 3324 3323 3326 3329
		f 4 5374 5324 5573 -5379
		mu 0 4 3373 3324 3329 3376
		f 4 5532 5368 5378 5574
		mu 0 4 3312 3309 3373 3376
		f 4 5300 -5533 5575 -5305
		mu 0 4 3310 3309 3312 3315
		f 4 5590 5304 5576 -5609
		mu 0 4 3336 3310 3315 3339
		f 4 5359 5280 5577 5535
		mu 0 4 3384 3408 3406 3382
		f 4 5329 -5536 5578 5536
		mu 0 4 3301 3384 3382 3298
		f 4 5349 -5537 5579 -5354
		mu 0 4 3302 3301 3298 3299
		f 4 5285 5353 5580 5538
		mu 0 4 3402 3302 3299 3398
		f 4 5336 -5540 5581 -5339
		mu 0 4 3278 3277 3288 3289
		f 4 -5349 -5336 -5542 5582
		mu 0 4 3292 3478 3482 3293
		f 4 -5345 5348 5583 -5784
		mu 0 4 3479 3478 3292 3396
		f 4 5544 -5287 5290 5584
		mu 0 4 3307 3474 3476 3401
		f 4 -5335 -5353 -5545 5585
		mu 0 4 3306 3472 3474 3307
		f 4 -5365 -5331 5334 5586
		mu 0 4 3386 3468 3472 3306
		f 4 -5280 -5361 5364 5587
		mu 0 4 3410 3469 3468 3386
		f 4 5291 5606 5589 -5278
		mu 0 4 3469 3466 3467 3470
		f 4 -5293 -5467 -5590 5607
		mu 0 4 3336 3408 3407 3337
		f 4 5292 5608 5591 -5281
		mu 0 4 3408 3336 3339 3406
		f 4 -5294 -5535 -5592 5609
		mu 0 4 3338 3404 3406 3339
		f 4 5293 5610 -5480 5447
		mu 0 4 3404 3338 3340 3405
		f 4 -5295 5278 5479 5611
		mu 0 4 3447 3409 3405 3340
		f 4 5294 5612 -5311 -5401
		mu 0 4 3346 3357 3358 3347
		f 4 5310 5613 -5315 -5397
		mu 0 4 3347 3358 3365 3359
		f 4 5314 5614 -5319 -5393
		mu 0 4 3359 3365 3372 3366
		f 4 -5433 -5427 5318 5615
		mu 0 4 3442 3436 3366 3372
		f 4 -5441 -5435 5432 5616
		mu 0 4 3341 3443 3436 3442
		f 4 5440 5617 -5553 5509
		mu 0 4 3443 3341 3344 3444
		f 4 -5438 5435 5552 5618
		mu 0 4 3445 3489 3444 3344
		f 4 5433 5437 5619 -5430
		mu 0 4 3488 3489 3445 3438
		f 4 5425 5429 5620 -5317
		mu 0 4 3487 3488 3438 3368
		f 4 -5313 5389 5316 5621
		mu 0 4 3361 3486 3487 3368
		f 4 -5309 5393 5312 5622
		mu 0 4 3351 3485 3486 3361
		f 4 -5292 5397 5308 5623
		mu 0 4 3350 3484 3485 3351
		f 4 5691 -5738 -5763 -5695
		mu 0 4 3496 3497 3498 3499
		f 4 5712 -5689 -5714 -5731
		mu 0 4 3500 3501 3502 3503
		f 4 -5631 -5690 -5755 -5780
		mu 0 4 3504 3505 3506 3507
		f 4 -5694 5689 -5698 -5715
		mu 0 4 3508 3506 3505 3509
		f 4 5683 -5740 -5765 -5688
		mu 0 4 3510 3511 3512 3513
		f 4 5710 -5682 -5712 -5729
		mu 0 4 3514 3515 3516 3517
		f 4 -5639 -5683 -5753 -5778
		mu 0 4 3518 3519 3520 3521
		f 4 5682 -5700 -5717 -5687
		mu 0 4 3520 3519 3522 3523
		f 4 5675 -5742 -5767 -5680
		mu 0 4 3524 3525 3526 3527
		f 4 5708 -5674 -5710 -5727
		mu 0 4 3528 3529 3530 3531
		f 4 -5647 -5675 -5751 -5776
		mu 0 4 3532 3533 3534 3535
		f 4 5674 -5702 -5719 -5679
		mu 0 4 3534 3533 3536 3537
		f 4 5667 -5744 -5769 -5672
		mu 0 4 3538 3539 3540 3541
		f 4 5706 -5666 -5708 -5725
		mu 0 4 3542 3543 3544 3545
		f 4 -5655 -5667 -5749 -5774
		mu 0 4 3546 3547 3548 3549
		f 4 5666 -5704 -5721 -5671
		mu 0 4 3548 3547 3550 3551
		f 4 5791 -5745 -5793 -5800
		mu 0 4 3552 3553 3554 3555
		f 4 5705 -5788 -5795 -5724
		mu 0 4 3556 3557 3558 3559
		f 4 -5663 -5790 -5797 -5773
		mu 0 4 3391 3390 3560 3561
		f 4 5789 -5705 -5791 -5798
		mu 0 4 3560 3390 3389 3562
		f 4 5707 -5652 -5709 -5726
		mu 0 4 3545 3544 3529 3528
		f 4 5748 -5654 5646 -5775
		mu 0 4 3549 3548 3533 3532
		f 4 5653 5670 -5720 5701
		mu 0 4 3533 3548 3551 3536
		f 4 5649 5671 -5768 5741
		mu 0 4 3525 3538 3541 3526
		f 4 5709 -5644 -5711 -5728
		mu 0 4 3531 3530 3515 3514
		f 4 5750 -5646 5638 -5777
		mu 0 4 3535 3534 3519 3518
		f 4 5645 5678 -5718 5699
		mu 0 4 3519 3534 3537 3522
		f 4 5641 5679 -5766 5739
		mu 0 4 3511 3524 3527 3512
		f 4 5711 -5636 -5713 -5730
		mu 0 4 3517 3516 3501 3500
		f 4 5752 -5638 5630 -5779
		mu 0 4 3521 3520 3505 3504
		f 4 5637 5686 -5716 5697
		mu 0 4 3505 3520 3523 3509
		f 4 5633 5687 -5764 5737
		mu 0 4 3497 3510 3513 3498
		f 4 5754 -5630 5343 -5781
		mu 0 4 3507 3506 3563 3564
		f 4 -5625 5346 -5732 5696
		mu 0 4 3496 3565 3566 3508
		f 4 5624 5694 -5762 5735
		mu 0 4 3565 3496 3499 3567
		f 4 -5289 5625 5695 -5733
		mu 0 4 3568 3569 3570 3571
		f 4 -5692 -5697 5714 -5632
		mu 0 4 3497 3496 3508 3509
		f 4 5698 -5634 5631 5715
		mu 0 4 3523 3510 3497 3509
		f 4 -5640 -5684 -5699 5716
		mu 0 4 3522 3511 3510 3523
		f 4 5700 -5642 5639 5717
		mu 0 4 3537 3524 3511 3522
		f 4 -5648 -5676 -5701 5718
		mu 0 4 3536 3525 3524 3537
		f 4 5702 -5650 5647 5719
		mu 0 4 3551 3538 3525 3536
		f 4 -5656 -5668 -5703 5720
		mu 0 4 3550 3539 3538 3551
		f 4 -5664 -5792 -5799 5790
		mu 0 4 3389 3553 3552 3562
		f 4 5663 5722 -5771 5744
		mu 0 4 3553 3389 3392 3554
		f 4 5785 5660 5723 -5794
		mu 0 4 3572 3573 3574 3575
		f 4 5664 5652 5724 -5669
		mu 0 4 3576 3577 3578 3579
		f 4 5648 5668 5725 -5645
		mu 0 4 3580 3576 3579 3581
		f 4 5672 5644 5726 -5677
		mu 0 4 3582 3580 3581 3583
		f 4 5640 5676 5727 -5637
		mu 0 4 3584 3582 3583 3585
		f 4 5680 5636 5728 -5685
		mu 0 4 3586 3584 3585 3587
		f 4 5632 5684 5729 -5629
		mu 0 4 3588 3586 3587 3589
		f 4 5628 5730 -5696 5692
		mu 0 4 3588 3589 3571 3570
		f 4 5539 5629 5693 5731
		mu 0 4 3566 3563 3506 3508
		f 4 -5628 -5539 5732 5713
		mu 0 4 3502 3590 3591 3503
		f 4 5283 5759 5734 -5288
		mu 0 4 3400 3395 3388 3399
		f 4 -5285 -5444 -5735 5760
		mu 0 4 3387 3397 3399 3388
		f 4 5736 -5626 5284 5761
		mu 0 4 3499 3570 3569 3567
		f 4 -5627 -5693 -5737 5762
		mu 0 4 3498 3588 3570 3499
		f 4 5738 -5633 5626 5763
		mu 0 4 3513 3586 3588 3498
		f 4 -5635 -5681 -5739 5764
		mu 0 4 3512 3584 3586 3513
		f 4 5740 -5641 5634 5765
		mu 0 4 3527 3582 3584 3512
		f 4 -5643 -5673 -5741 5766
		mu 0 4 3526 3580 3582 3527
		f 4 5742 -5649 5642 5767
		mu 0 4 3541 3576 3580 3526
		f 4 -5651 -5665 -5743 5768
		mu 0 4 3540 3577 3576 3541
		f 4 -5659 -5786 -5801 5792
		mu 0 4 3554 3573 3572 3555
		f 4 5745 -5661 5658 5770
		mu 0 4 3392 3574 3573 3554
		f 4 5746 -5706 -5746 5771
		mu 0 4 3391 3557 3556 3392
		f 4 5787 -5747 5772 -5796
		mu 0 4 3558 3557 3391 3561
		f 4 5665 -5748 5773 -5670
		mu 0 4 3544 3543 3546 3549
		f 4 5651 5669 5774 5749
		mu 0 4 3529 3544 3549 3532
		f 4 5673 -5750 5775 -5678
		mu 0 4 3530 3529 3532 3535
		f 4 5643 5677 5776 5751
		mu 0 4 3515 3530 3535 3518
		f 4 5681 -5752 5777 -5686
		mu 0 4 3516 3515 3518 3521
		f 4 5635 5685 5778 5753
		mu 0 4 3501 3516 3521 3504
		f 4 5688 -5754 5779 -5691
		mu 0 4 3502 3501 3504 3507
		f 4 5627 5690 5780 5755
		mu 0 4 3590 3502 3507 3564
		f 4 -5290 -5756 5781 -5503
		mu 0 4 3403 3402 3393 3394
		f 4 5757 -5471 5502 5782
		mu 0 4 3479 3476 3477 3480
		f 4 -5291 -5758 5783 5758
		mu 0 4 3401 3476 3479 3396
		f 4 -5284 -5544 -5759 5784
		mu 0 4 3395 3400 3401 3396
		f 4 5656 5793 5786 -5653
		mu 0 4 3577 3572 3575 3578
		f 4 -5660 -5707 -5787 5794
		mu 0 4 3558 3543 3542 3559
		f 4 5659 5795 5788 5747
		mu 0 4 3543 3558 3561 3546
		f 4 -5662 5654 -5789 5796
		mu 0 4 3560 3547 3546 3561
		f 4 5661 5797 -5722 5703
		mu 0 4 3547 3560 3562 3550
		f 4 -5658 5655 5721 5798
		mu 0 4 3552 3539 3550 3562
		f 4 5657 5799 -5770 5743
		mu 0 4 3539 3552 3555 3540
		f 4 -5657 5650 5769 5800
		mu 0 4 3572 3577 3540 3555
		f 4 5801 5803 -5805 -5803
		mu 0 4 3592 3593 3594 3595
		f 4 5806 5808 -5808 -5806
		mu 0 4 3596 3597 3598 3599
		f 4 5809 5811 -5813 -5811
		mu 0 4 3600 3601 3602 3603
		f 4 5814 5816 -5816 -5814
		mu 0 4 3604 3605 3606 3607
		f 4 5817 5819 -5821 -5819
		mu 0 4 3608 3609 3610 3611
		f 4 5822 5824 -5824 -5822
		mu 0 4 3612 3613 3614 3615
		f 4 5825 5827 -5829 -5827
		mu 0 4 3616 3617 3618 3619
		f 4 5830 5832 -5832 -5830
		mu 0 4 3620 3621 3622 3623
		f 4 5833 5835 -5837 -5835
		mu 0 4 3624 3625 3626 3627
		f 4 5838 5840 -5840 -5838
		mu 0 4 3628 3629 3630 3631
		f 4 5841 5843 -5845 -5843
		mu 0 4 3632 3633 3634 3635
		f 4 5846 5848 -5848 -5846
		mu 0 4 3636 3637 3638 3639
		f 4 5849 5851 -5853 -5851
		mu 0 4 3640 3641 3642 3643
		f 4 5854 5856 -5856 -5854
		mu 0 4 3644 3645 3646 3647
		f 4 5857 5859 -5861 -5859
		mu 0 4 3648 3649 3650 3651
		f 4 5862 5864 -5864 -5862
		mu 0 4 3652 3653 3654 3655
		f 4 5865 5867 -5869 -5867
		mu 0 4 3656 3657 3658 3659
		f 4 5870 5872 -5872 -5870
		mu 0 4 3660 3661 3662 3663
		f 4 5873 5875 -5877 -5875
		mu 0 4 3664 3665 3666 3667
		f 4 5878 5880 -5880 -5878
		mu 0 4 3668 3669 3670 3671
		f 4 5881 5883 -5885 -5883
		mu 0 4 3672 3673 3674 3675
		f 4 5886 5888 -5888 -5886
		mu 0 4 3676 3677 3678 3679
		f 4 5889 5891 -5893 -5891
		mu 0 4 3680 3681 3682 3683
		f 4 5894 5896 -5896 -5894
		mu 0 4 3684 3685 3686 3687
		f 4 6117 6088 5954 5963
		mu 0 4 3688 3689 3690 3691
		f 4 6103 6181 6139 -6073
		mu 0 4 3692 3693 3694 3695
		f 4 6089 6058 5960 5957
		mu 0 4 3696 3697 3698 3699
		f 4 6195 6154 -5961 5962
		mu 0 4 3700 3701 3699 3698
		f 4 5958 6196 6156 5959
		mu 0 4 3702 3703 3704 3705
		f 4 6091 6061 5946 5970
		mu 0 4 3706 3707 3708 3709
		f 4 6193 6151 -5947 5950
		mu 0 4 3710 3711 3709 3708
		f 4 6115 6085 5965 5951
		mu 0 4 3712 3713 3714 3715
		f 4 5971 6198 6159 5945
		mu 0 4 3716 3717 3718 3719
		f 4 6111 6081 5918 5988
		mu 0 4 3720 3721 3722 3723
		f 4 6189 6147 5919 5987
		mu 0 4 3724 3725 3726 3727
		f 4 5923 6095 6065 -5920
		mu 0 4 3726 3728 3729 3727
		f 4 5924 6172 6130 -5921
		mu 0 4 3730 3731 3732 3733
		f 4 6108 6078 5938 6004
		mu 0 4 3734 3735 3736 3737
		f 4 6186 6144 5939 6003
		mu 0 4 3738 3739 3740 3741
		f 4 5943 6098 6068 -5940
		mu 0 4 3740 3742 3743 3741
		f 4 5944 6175 6133 -5941
		mu 0 4 3744 3745 3746 3747
		f 4 6112 6220 6203 -6082
		mu 0 4 3721 3748 3749 3722
		f 4 6190 6222 6205 -6148
		mu 0 4 3725 3750 3751 3726
		f 4 6223 6206 -5924 -6206
		mu 0 4 3751 3752 3728 3726
		f 4 6230 6213 -6056 -6213
		mu 0 4 3753 3754 3755 3756
		f 4 6161 6119 -6017 -6119
		mu 0 4 3757 3758 3759 3760
		f 4 6014 -6219 6236 6201
		mu 0 4 3761 3762 3763 3764
		f 4 6015 5927 6171 -5925
		mu 0 4 3765 3766 3767 3768
		f 4 6225 6208 -6016 -6208
		mu 0 4 3769 3770 3766 3765
		f 4 6162 6120 -6013 -6120
		mu 0 4 3758 3771 3772 3759
		f 4 6010 -6218 6235 6218
		mu 0 4 3762 3773 3774 3763
		f 4 6011 5931 6170 -5928
		mu 0 4 3766 3775 3776 3767
		f 4 6226 6209 -6012 -6209
		mu 0 4 3770 3777 3775 3766
		f 4 6163 6121 -6009 -6121
		mu 0 4 3771 3778 3779 3772
		f 4 6006 -6217 6234 6217
		mu 0 4 3773 3780 3781 3774
		f 4 6007 5935 6169 -5932
		mu 0 4 3775 3782 3783 3776
		f 4 6227 6210 -6008 -6210
		mu 0 4 3777 3784 3782 3775
		f 4 6109 6079 5990 -6079
		mu 0 4 3735 3785 3786 3736
		f 4 6187 6145 5991 -6145
		mu 0 4 3739 3787 3788 3740
		f 4 5995 6097 -5944 -5992
		mu 0 4 3788 3789 3742 3740
		f 4 5996 6174 -5945 -5993
		mu 0 4 3790 3791 3745 3744
		f 4 6092 6062 5974 -6062
		mu 0 4 3707 3792 3793 3708
		f 4 6192 -5951 -5975 5978
		mu 0 4 3794 3710 3708 3793
		f 4 6114 -5952 5947 5979
		mu 0 4 3795 3712 3715 3796
		f 4 -6160 6199 6160 5973
		mu 0 4 3719 3718 3797 3798
		f 4 6194 -5907 -5967 -6152
		mu 0 4 3711 3799 3800 3709
		f 4 6090 -5971 5966 -6060
		mu 0 4 3801 3706 3709 3800
		f 4 -6158 6197 -5972 5967
		mu 0 4 3802 3803 3717 3716
		f 4 6116 -5908 5903 -6086
		mu 0 4 3713 3804 3805 3714
		f 4 6093 6063 5902 -6063
		mu 0 4 3792 3806 3807 3793
		f 4 6191 -5979 -5903 -6149
		mu 0 4 3808 3794 3793 3807
		f 4 6113 -5980 5975 -6083
		mu 0 4 3809 3795 3796 3810
		f 4 -6161 6200 6118 5901
		mu 0 4 3798 3797 3811 3812
		f 4 -5983 -6131 6173 -5997
		mu 0 4 3790 3733 3732 3791
		f 4 -5984 -6066 6096 -5996
		mu 0 4 3788 3727 3729 3789
		f 4 -6080 6110 -5989 5984
		mu 0 4 3786 3785 3720 3723
		f 4 -6146 6188 -5988 5983
		mu 0 4 3788 3787 3724 3727
		f 4 -6134 6176 6134 -5999
		mu 0 4 3747 3746 3813 3814
		f 4 -6069 6099 6069 -6000
		mu 0 4 3741 3743 3815 3816
		f 4 6185 -6004 5999 -6143
		mu 0 4 3817 3738 3741 3816
		f 4 6107 -6005 6000 -6077
		mu 0 4 3818 3734 3737 3819
		f 4 6106 6076 6018 -6076
		mu 0 4 3820 3818 3819 3821
		f 4 6184 6142 6020 -6142
		mu 0 4 3822 3817 3816 3823
		f 4 -6070 6100 6070 -6021
		mu 0 4 3816 3815 3824 3823
		f 4 -6135 6177 6135 -6023
		mu 0 4 3814 3813 3825 3826
		f 4 6105 6075 6026 -6075
		mu 0 4 3827 3820 3821 3828
		f 4 6183 6141 6028 -6141
		mu 0 4 3829 3822 3823 3830
		f 4 -6071 6101 6071 -6029
		mu 0 4 3823 3824 3831 3830
		f 4 -6136 6178 6136 -6031
		mu 0 4 3826 3825 3832 3833
		f 4 6104 6074 6034 -6074
		mu 0 4 3834 3827 3828 3835
		f 4 6182 6140 6036 -6140
		mu 0 4 3694 3829 3830 3695
		f 4 -6072 6102 6072 -6037
		mu 0 4 3830 3831 3692 3695
		f 4 -6137 6179 6137 -6039
		mu 0 4 3833 3832 3836 3837
		f 4 -6122 6164 6122 -6043
		mu 0 4 3779 3778 3838 3839
		f 4 6233 6216 6044 -6216
		mu 0 4 3840 3781 3780 3841
		f 4 6168 -5936 6046 6047
		mu 0 4 3842 3783 3782 3843
		f 4 -6211 6228 6211 -6047
		mu 0 4 3782 3784 3844 3843
		f 4 -6123 6165 6123 -6051
		mu 0 4 3839 3838 3845 3846
		f 4 6232 6215 6052 -6215
		mu 0 4 3847 3840 3841 3848
		f 4 6167 -6048 6054 6055
		mu 0 4 3755 3842 3843 3756
		f 4 -6212 6229 6212 -6055
		mu 0 4 3843 3844 3753 3756
		f 4 5961 -6090 6057 -5960
		mu 0 4 3705 3697 3696 3702
		f 4 -6061 -6091 -5906 -5968
		mu 0 4 3716 3706 3801 3802
		f 4 5949 -6092 6060 -5946
		mu 0 4 3719 3707 3706 3716
		f 4 5977 -6093 -5950 -5974
		mu 0 4 3798 3792 3707 3719
		f 4 5898 -6094 -5978 -5902
		mu 0 4 3812 3806 3792 3798
		f 4 -6207 6224 6207 -6065
		mu 0 4 3728 3752 3849 3730
		f 4 -6096 6064 5920 5986
		mu 0 4 3729 3728 3730 3733
		f 4 -6097 -5987 5982 -6067
		mu 0 4 3789 3729 3733 3790
		f 4 -6098 6066 5992 -6068
		mu 0 4 3742 3789 3790 3744
		f 4 -6099 6067 5940 6002
		mu 0 4 3743 3742 3744 3747
		f 4 -6100 -6003 5998 5915
		mu 0 4 3815 3743 3747 3814
		f 4 -6101 -5916 6022 6023
		mu 0 4 3824 3815 3814 3826
		f 4 -6102 -6024 6030 6031
		mu 0 4 3831 3824 3826 3833
		f 4 -6103 -6032 6038 6039
		mu 0 4 3692 3831 3833 3837
		f 4 6180 -6104 -6040 -6138
		mu 0 4 3836 3693 3692 3837
		f 4 6027 -6105 -6036 -6034
		mu 0 4 3850 3851 3852 3853
		f 4 6019 -6106 -6028 -6026
		mu 0 4 3854 3855 3851 3850
		f 4 5913 -6107 -6020 -6018
		mu 0 4 3856 3857 3855 3854
		f 4 -6078 -6108 -5914 -5998
		mu 0 4 3858 3859 3857 3856
		f 4 5941 -6109 6077 -5938
		mu 0 4 3860 3861 3859 3858
		f 4 5993 -6110 -5942 -5990
		mu 0 4 3862 3863 3861 3860
		f 4 -6111 -5994 -5982 -6081
		mu 0 4 3864 3863 3862 3865
		f 4 5921 -6112 6080 -5918
		mu 0 4 3866 3867 3864 3865
		f 4 6219 -6113 -5922 -6202
		mu 0 4 3868 3869 3867 3866
		f 4 -6084 -6114 -5898 -5977
		mu 0 4 3870 3871 3872 3873
		f 4 -6085 -6115 6083 -5949
		mu 0 4 3874 3875 3871 3870
		f 4 5972 -6116 6084 -5969
		mu 0 4 3876 3877 3875 3874
		f 4 -6087 -6117 -5973 -5905
		mu 0 4 3878 3879 3877 3876
		f 4 5955 -6118 6087 -5954
		mu 0 4 3880 3881 3882 3883
		f 4 6013 5925 -6162 -5900
		mu 0 4 3884 3885 3758 3757
		f 4 6009 5929 -6163 -5926
		mu 0 4 3885 3886 3771 3758
		f 4 6005 5933 -6164 -5930
		mu 0 4 3886 3887 3778 3771
		f 4 -6165 -5934 6041 6043
		mu 0 4 3838 3778 3887 3888
		f 4 -6166 -6044 6049 6051
		mu 0 4 3845 3838 3888 3889
		f 4 -6214 6231 6214 -6125
		mu 0 4 3890 3754 3847 3848
		f 4 -6126 -6168 6124 -6053
		mu 0 4 3841 3891 3890 3848
		f 4 -6127 -6169 6125 -6045
		mu 0 4 3780 3892 3891 3841
		f 4 -6170 6126 -6007 -6128
		mu 0 4 3893 3892 3780 3773
		f 4 -6171 6127 -6011 -6129
		mu 0 4 3894 3893 3773 3762
		f 4 -6172 6128 -6015 -6130
		mu 0 4 3895 3894 3762 3761
		f 4 -6173 6129 5917 5985
		mu 0 4 3732 3731 3866 3865
		f 4 -6174 -5986 5981 -6132
		mu 0 4 3791 3732 3865 3862
		f 4 -6175 6131 5989 -6133
		mu 0 4 3745 3791 3862 3860
		f 4 -6176 6132 5937 6001
		mu 0 4 3746 3745 3860 3858
		f 4 -6177 -6002 5997 5916
		mu 0 4 3813 3746 3858 3856
		f 4 -6178 -5917 6017 6024
		mu 0 4 3825 3813 3856 3854
		f 4 -6179 -6025 6025 6032
		mu 0 4 3832 3825 3854 3850
		f 4 -6180 -6033 6033 6040
		mu 0 4 3836 3832 3850 3853
		f 4 6035 -6139 -6181 -6041
		mu 0 4 3853 3852 3693 3836
		f 4 -6182 6138 6073 6037
		mu 0 4 3694 3693 3834 3835
		f 4 6029 -6183 -6038 -6035
		mu 0 4 3828 3829 3694 3835
		f 4 6021 -6184 -6030 -6027
		mu 0 4 3821 3822 3829 3828
		f 4 5914 -6185 -6022 -6019
		mu 0 4 3819 3817 3822 3821
		f 4 -6144 -6186 -5915 -6001
		mu 0 4 3737 3738 3817 3819
		f 4 5942 -6187 6143 -5939
		mu 0 4 3736 3739 3738 3737
		f 4 5994 -6188 -5943 -5991
		mu 0 4 3786 3787 3739 3736
		f 4 -6189 -5995 -5985 -6147
		mu 0 4 3724 3787 3786 3723
		f 4 5922 -6190 6146 -5919
		mu 0 4 3722 3725 3724 3723
		f 4 6221 -6191 -5923 -6204
		mu 0 4 3749 3750 3725 3722
		f 4 -6150 -6192 -5901 -5976
		mu 0 4 3796 3794 3808 3810
		f 4 -6151 -6193 6149 -5948
		mu 0 4 3715 3710 3794 3796
		f 4 5969 -6194 6150 -5966
		mu 0 4 3714 3711 3710 3715
		f 4 -6153 -6195 -5970 -5904
		mu 0 4 3805 3799 3711 3714
		f 4 5956 -6196 6153 -5955
		mu 0 4 3690 3701 3700 3691
		f 4 -6197 6155 5953 5964
		mu 0 4 3704 3703 3880 3883
		f 4 -6198 -5909 5904 -6159
		mu 0 4 3717 3803 3878 3876
		f 4 -6199 6158 5968 5952
		mu 0 4 3718 3717 3876 3874
		f 4 -6200 -5953 5948 5980
		mu 0 4 3797 3718 3874 3870
		f 4 -6201 -5981 5976 5899
		mu 0 4 3811 3797 3870 3873
		f 4 5897 -6203 -6220 -5910
		mu 0 4 3873 3872 3869 3868
		f 4 -6221 6202 6082 5910
		mu 0 4 3749 3748 3809 3810
		f 4 5900 -6205 -6222 -5911
		mu 0 4 3810 3808 3750 3749
		f 4 -6223 6204 6148 5911
		mu 0 4 3751 3750 3808 3807
		f 4 -6064 6094 -6224 -5912
		mu 0 4 3807 3806 3752 3751
		f 4 -6225 -6095 -5899 5912
		mu 0 4 3849 3752 3806 3812
		f 4 6016 5928 -6226 -5913
		mu 0 4 3760 3759 3770 3769
		f 4 6012 5932 -6227 -5929
		mu 0 4 3759 3772 3777 3770
		f 4 6008 5936 -6228 -5933
		mu 0 4 3772 3779 3784 3777
		f 4 -6229 -5937 6042 6048
		mu 0 4 3844 3784 3779 3839
		f 4 -6230 -6049 6050 6056
		mu 0 4 3753 3844 3839 3846
		f 4 -6124 6166 -6231 -6057
		mu 0 4 3846 3845 3754 3753
		f 4 -6232 -6167 -6052 6053
		mu 0 4 3847 3754 3845 3889
		f 4 6045 -6233 -6054 -6050
		mu 0 4 3888 3840 3847 3889
		f 4 5934 -6234 -6046 -6042
		mu 0 4 3887 3781 3840 3888
		f 4 -6235 -5935 -6006 5930
		mu 0 4 3774 3781 3887 3886
		f 4 -6236 -5931 -6010 5926
		mu 0 4 3763 3774 3886 3885
		f 4 -6237 -5927 -6014 5909
		mu 0 4 3764 3763 3885 3884
		f 4 6324 6308 6285 -6308
		mu 0 4 3896 3897 3898 3899
		f 4 6309 6292 -6287 6289
		mu 0 4 3900 3901 3902 3903
		f 4 6322 6306 6280 -6306
		mu 0 4 3904 3905 3906 3907
		f 4 6284 6311 6294 -6282
		mu 0 4 3908 3909 3910 3911
		f 4 6320 6304 6274 -6304
		mu 0 4 3912 3913 3914 3915
		f 4 6278 6313 6296 -6276
		mu 0 4 3916 3917 3918 3919
		f 4 6318 6302 6268 -6302
		mu 0 4 3920 3921 3922 3923
		f 4 6272 6315 6298 -6270
		mu 0 4 3924 3925 3926 3927
		f 4 6317 6360 6355 -6301
		mu 0 4 3928 3929 3930 3931
		f 4 6362 6357 6299 -6357
		mu 0 4 3932 3933 3934 3935
		f 4 6319 6303 6257 -6303
		mu 0 4 3921 3912 3915 3922
		f 4 -6297 6314 -6273 -6260
		mu 0 4 3919 3918 3925 3924
		f 4 6321 6305 6251 -6305
		mu 0 4 3913 3904 3907 3914
		f 4 -6295 6312 -6279 -6254
		mu 0 4 3911 3910 3917 3916
		f 4 6323 6307 6245 -6307
		mu 0 4 3905 3896 3899 3906
		f 4 -6293 6310 -6285 -6248
		mu 0 4 3902 3901 3909 3908;
	setAttr ".fc[3000:3111]"
		f 4 -6292 6325 -5963 6237
		mu 0 4 3936 3900 3937 3938
		f 4 6326 -6291 -6239 5906
		mu 0 4 3939 3940 3941 3942
		f 4 6242 -6310 6291 6287
		mu 0 4 3943 3901 3900 3936
		f 4 -6311 -6243 6244 -6294
		mu 0 4 3909 3901 3943 3944
		f 4 -6312 6293 6282 6248
		mu 0 4 3910 3909 3944 3945
		f 4 -6313 -6249 6250 -6296
		mu 0 4 3917 3910 3945 3946
		f 4 -6314 6295 6276 6254
		mu 0 4 3918 3917 3946 3947
		f 4 -6315 -6255 6256 -6298
		mu 0 4 3925 3918 3947 3948
		f 4 -6316 6297 6270 6260
		mu 0 4 3926 3925 3948 3949
		f 4 -6358 6363 6358 6266
		mu 0 4 3934 3933 3950 3951
		f 4 6359 -6318 -6265 -6354
		mu 0 4 3952 3953 3954 3955
		f 4 6271 -6319 -6259 -6268
		mu 0 4 3956 3957 3958 3959
		f 4 6252 -6320 -6272 -6256
		mu 0 4 3960 3961 3957 3956
		f 4 6277 -6321 -6253 -6274
		mu 0 4 3962 3963 3961 3960
		f 4 6246 -6322 -6278 -6250
		mu 0 4 3964 3965 3963 3962
		f 4 6283 -6323 -6247 -6280
		mu 0 4 3966 3967 3965 3964
		f 4 6240 -6324 -6284 -6244
		mu 0 4 3968 3969 3967 3966
		f 4 -6289 6290 -6325 -6241
		mu 0 4 3968 3941 3940 3969
		f 4 -6326 -6290 -6242 -6154
		mu 0 4 3937 3900 3903 3970
		f 4 -6309 -6327 6152 6239
		mu 0 4 3898 3897 3971 3972
		f 4 6420 -6328 5905 -6393
		mu 0 4 3973 3974 3802 3801
		f 4 6329 6419 6392 6059
		mu 0 4 3800 3975 3973 3801
		f 4 6418 -6330 6238 -6391
		mu 0 4 3976 3977 3942 3941
		f 4 6331 6417 6390 6288
		mu 0 4 3968 3978 3976 3941
		f 4 6416 -6332 6243 -6389
		mu 0 4 3979 3978 3968 3966
		f 4 6333 6415 6388 6279
		mu 0 4 3964 3980 3979 3966
		f 4 6414 -6334 6249 -6387
		mu 0 4 3981 3980 3964 3962
		f 4 6335 6413 6386 6273
		mu 0 4 3960 3982 3981 3962
		f 4 6412 -6336 6255 -6385
		mu 0 4 3983 3982 3960 3956
		f 4 6337 6411 6384 6267
		mu 0 4 3959 3984 3983 3956
		f 4 6338 6409 6382 6353
		mu 0 4 3955 3985 3986 3952
		f 4 6408 -6339 6264 -6381
		mu 0 4 3987 3985 3955 3954
		f 4 6407 6380 6300 -6380
		mu 0 4 3988 3989 3928 3931
		f 4 6361 6406 6379 -6356
		mu 0 4 3930 3990 3988 3931
		f 4 6342 6404 6377 -6269
		mu 0 4 3922 3991 3992 3923
		f 4 6403 -6343 -6258 -6376
		mu 0 4 3993 3991 3922 3915
		f 4 6344 6402 6375 -6275
		mu 0 4 3914 3994 3993 3915
		f 4 6401 -6345 -6252 -6374
		mu 0 4 3995 3994 3914 3907
		f 4 6346 6400 6373 -6281
		mu 0 4 3906 3996 3995 3907
		f 4 6399 -6347 -6246 -6372
		mu 0 4 3997 3996 3906 3899
		f 4 6348 6398 6371 -6286
		mu 0 4 3898 3998 3997 3899
		f 4 6397 -6349 -6240 -6370
		mu 0 4 3999 3998 3898 3972
		f 4 6350 6396 6369 5907
		mu 0 4 3804 4000 4001 3805
		f 4 6395 -6351 6086 -6368
		mu 0 4 4002 4003 3879 3878
		f 4 6394 6367 5908 -6367
		mu 0 4 4004 4002 3878 3803
		f 4 6327 6393 6366 6157
		mu 0 4 3802 3974 4004 3803
		f 4 6258 -6355 -6360 -6262
		mu 0 4 3959 3958 3953 3952
		f 4 -6361 6354 6301 6263
		mu 0 4 3930 3929 3920 3923
		f 4 6405 -6362 -6264 -6378
		mu 0 4 3992 3990 3930 3923
		f 4 -6299 6316 -6363 -6266
		mu 0 4 3927 3926 3933 3932
		f 4 -6364 -6317 -6261 6262
		mu 0 4 3950 3933 3926 3949
		f 4 6410 -6338 6261 -6383
		mu 0 4 3986 3984 3959 3952
		f 4 -6394 6365 -6157 6352
		mu 0 4 4004 3974 3705 3704
		f 4 -5965 6351 -6395 -6353
		mu 0 4 3704 3883 4002 4004
		f 4 -6088 -6369 -6396 -6352
		mu 0 4 3883 3882 4003 4002
		f 4 -6397 6368 -5964 6349
		mu 0 4 4001 4000 3688 3691
		f 4 6241 -6371 -6398 -6350
		mu 0 4 3970 3903 3998 3999
		f 4 -6399 6370 6286 6347
		mu 0 4 3997 3998 3903 3902
		f 4 6247 -6373 -6400 -6348
		mu 0 4 3902 3908 3996 3997
		f 4 -6401 6372 6281 6345
		mu 0 4 3995 3996 3908 3911
		f 4 6253 -6375 -6402 -6346
		mu 0 4 3911 3916 3994 3995
		f 4 -6403 6374 6275 6343
		mu 0 4 3993 3994 3916 3919
		f 4 6259 -6377 -6404 -6344
		mu 0 4 3919 3924 3991 3993
		f 4 -6405 6376 6269 6341
		mu 0 4 3992 3991 3924 3927
		f 4 6265 -6379 -6406 -6342
		mu 0 4 3927 3932 3990 3992
		f 4 -6407 6378 6356 6340
		mu 0 4 3988 3990 3932 3935
		f 4 -6300 6339 -6408 -6341
		mu 0 4 3935 3934 3989 3988
		f 4 -6267 -6382 -6409 -6340
		mu 0 4 3934 3951 3985 3987
		f 4 -6410 6381 -6359 6364
		mu 0 4 3986 3985 3951 3950
		f 4 -6263 -6384 -6411 -6365
		mu 0 4 3950 3949 3984 3986
		f 4 -6412 6383 -6271 6336
		mu 0 4 3983 3984 3949 3948
		f 4 -6257 -6386 -6413 -6337
		mu 0 4 3948 3947 3982 3983
		f 4 -6414 6385 -6277 6334
		mu 0 4 3981 3982 3947 3946
		f 4 -6251 -6388 -6415 -6335
		mu 0 4 3946 3945 3980 3981
		f 4 -6416 6387 -6283 6332
		mu 0 4 3979 3980 3945 3944
		f 4 -6245 -6390 -6417 -6333
		mu 0 4 3944 3943 3978 3979
		f 4 -6418 6389 -6288 6330
		mu 0 4 3976 3978 3943 3936
		f 4 -6238 -6392 -6419 -6331
		mu 0 4 3936 3938 3977 3976
		f 4 -6420 6391 -6059 6328
		mu 0 4 3973 3975 3698 3697
		f 4 -5962 -6366 -6421 -6329
		mu 0 4 3697 3705 3974 3973
		f 4 6421 6423 -6425 -6423
		mu 0 4 4005 4006 4007 4008
		f 4 6426 6428 -6428 -6426
		mu 0 4 4009 4010 4011 4012
		f 4 6429 6431 -6433 -6431
		mu 0 4 4013 4014 4015 4016
		f 4 6434 6436 -6436 -6434
		mu 0 4 4017 4018 4019 4020
		f 4 6437 6439 -6441 -6439
		mu 0 4 4021 4022 4023 4024
		f 4 6442 6444 -6444 -6442
		mu 0 4 4025 4026 4027 4028
		f 4 6445 6447 -6449 -6447
		mu 0 4 4029 4030 4031 4032
		f 4 6450 6452 -6452 -6450
		mu 0 4 4033 4034 4035 4036
		f 4 6453 6455 -6457 -6455
		mu 0 4 4037 4038 4039 4040
		f 4 6458 6460 -6460 -6458
		mu 0 4 4041 4042 4043 4044
		f 4 6461 6463 -6465 -6463
		mu 0 4 4045 4046 4047 4048
		f 4 6466 6468 -6468 -6466
		mu 0 4 4049 4050 4051 4052
		f 4 6469 6471 -6473 -6471
		mu 0 4 4053 4054 4055 4056
		f 4 6474 6476 -6476 -6474
		mu 0 4 4057 4058 4059 4060
		f 4 6477 6479 -6481 -6479
		mu 0 4 4061 4062 4063 4064
		f 4 6482 6484 -6484 -6482
		mu 0 4 4065 4066 4067 4068
		f 4 6485 6487 -6489 -6487
		mu 0 4 4069 4070 4071 4072
		f 4 6490 6492 -6492 -6490
		mu 0 4 4073 4074 4075 4076
		f 4 6493 6495 -6497 -6495
		mu 0 4 4077 4078 4079 4080
		f 4 6498 6500 -6500 -6498
		mu 0 4 4081 4082 4083 4084
		f 4 6501 6503 -6505 -6503
		mu 0 4 4085 4086 4087 4088
		f 4 6506 6508 -6508 -6506
		mu 0 4 4089 4090 4091 4092
		f 4 6509 6511 -6513 -6511
		mu 0 4 4093 4094 4095 4096
		f 4 6514 6516 -6516 -6514
		mu 0 4 4097 4098 4099 4100
		f 4 6517 6519 -6521 -6519
		mu 0 4 4101 4102 4103 4104
		f 4 6522 6524 -6524 -6522
		mu 0 4 4105 4106 4107 4108
		f 4 6525 6527 -6529 -6527
		mu 0 4 4109 4110 4111 4112
		f 4 6530 6532 -6532 -6530
		mu 0 4 4113 4114 4115 4116
		f 4 6533 6535 -6537 -6535
		mu 0 4 4117 4118 4119 4120
		f 4 6538 6540 -6540 -6538
		mu 0 4 4121 4122 4123 4124
		f 4 6541 6543 -6545 -6543
		mu 0 4 4125 4126 4127 4128
		f 4 6546 6548 -6548 -6546
		mu 0 4 4129 4130 4131 4132;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".bw" 3;
createNode transform -n "polySurface177" -p "polySurface_crane";
	rename -uid "6F005F84-414D-C8AC-EBC6-C2AB156644F6";
	setAttr ".t" -type "double3" -0.67572599831428304 0.70278541654068705 1.299335579392664 ;
	setAttr ".r" -type "double3" -44.007027195636276 -10.545290589499547 -10.728583121609057 ;
	setAttr ".s" -type "double3" 1.6879408932786528 1.6879408932786528 1.6879408932786528 ;
	setAttr ".rp" -type "double3" -107.288984375 -4.416909790039063 11.370078125000001 ;
	setAttr ".sp" -type "double3" -107.288984375 -4.416909790039063 11.370078125000001 ;
createNode mesh -n "polySurfaceShape177" -p "polySurface177";
	rename -uid "9F1B89BF-42A8-F259-45E6-589EBE5A0336";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.59486234 0.18634742
		 0.75213081 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -103.33358765 -4.054142952 8.72918797 -105.95574188 4.67117929 5.96835899
		 -111.2702179 -4.79226542 13.93441391 -113.89237213 3.93305898 11.17358112;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface178" -p "polySurface_crane";
	rename -uid "747EF9C2-4606-D429-8EA3-D2BCD027DC0E";
	setAttr ".t" -type "double3" -0.67572599831428304 0.70278541654068705 1.299335579392664 ;
	setAttr ".r" -type "double3" -44.007027195636276 -10.545290589499547 -10.728583121609057 ;
	setAttr ".s" -type "double3" 1.6879408932786528 1.6879408932786528 1.6879408932786528 ;
	setAttr ".rp" -type "double3" -107.288984375 -4.416909790039063 11.370078125000001 ;
	setAttr ".sp" -type "double3" -107.288984375 -4.416909790039063 11.370078125000001 ;
createNode mesh -n "polySurfaceShape178" -p "polySurface178";
	rename -uid "74ED0C4F-46D8-618F-9A12-2D83AEC88F75";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.59486234 0.18634742
		 0.75213081 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -109.58024597 -6.29089594 7.59306335 -112.20240021 2.43442869 4.83223104
		 -105.023551941 -2.55551505 15.070537567 -107.64571381 6.1698122 12.30970669;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface179" -p "polySurface_crane";
	rename -uid "0AE86769-49E4-B9EF-6D28-81B45017972D";
	setAttr ".t" -type "double3" 0.69768626098000819 0.6953626331802707 0.34794483855940145 ;
	setAttr ".r" -type "double3" 0 0 60.000000000000007 ;
	setAttr ".s" -type "double3" 1.1010457678279391 1.1010457678279391 1.1010457678279391 ;
	setAttr ".rp" -type "double3" -121.85869140625 4.1025155639648441 24.928112792968751 ;
	setAttr ".sp" -type "double3" -121.85869140625 4.1025155639648441 24.928112792968751 ;
createNode mesh -n "polySurfaceShape179" -p "polySurface179";
	rename -uid "9395E49A-43D5-9E9F-43D2-13BE8C1F69A4";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.59486234 0.18634742
		 0.75213081 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -118.92948914 5.27563953 21.35113716 -123.67832947 13.43330288 20.11408615
		 -124.83164215 2.91443348 28.43765068 -129.58047485 11.072099686 27.20059776;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface180" -p "polySurface_crane";
	rename -uid "7FA3A058-4C8C-FBAD-BB37-489B1F7CB482";
	setAttr ".t" -type "double3" 0.69768626098000819 0.6953626331802707 0.34794483855940145 ;
	setAttr ".r" -type "double3" 0 0 60.000000000000007 ;
	setAttr ".s" -type "double3" 1.1010457678279391 1.1010457678279391 1.1010457678279391 ;
	setAttr ".rp" -type "double3" -121.85869140625 4.1025155639648441 24.928112792968751 ;
	setAttr ".sp" -type "double3" -121.85869140625 4.1025155639648441 24.928112792968751 ;
createNode mesh -n "polySurfaceShape180" -p "polySurface180";
	rename -uid "EF310A93-4B40-A491-D0D7-98A52A261F5F";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.59486234 0.18634742
		 0.59486234 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -118.92948914 5.27563953 21.35113716 -123.67832947 13.43330288 20.11408615
		 -124.83164215 2.91443348 28.43765068 -129.58047485 11.072099686 27.20059776;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 1 3 -3 -1
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface181" -p "polySurface_crane";
	rename -uid "A13E7B4D-4C84-CBC4-F929-798B5431BCDA";
	setAttr ".t" -type "double3" 0.69768626098000819 0.6953626331802707 0.34794483855940145 ;
	setAttr ".r" -type "double3" 0 0 60.000000000000007 ;
	setAttr ".s" -type "double3" 1.1010457678279391 1.1010457678279391 1.1010457678279391 ;
	setAttr ".rp" -type "double3" -121.85869140625 4.1025155639648441 24.928112792968751 ;
	setAttr ".sp" -type "double3" -121.85869140625 4.1025155639648441 24.928112792968751 ;
createNode mesh -n "polySurfaceShape181" -p "polySurface181";
	rename -uid "899C3236-4E58-8DC4-8A04-CDA68C0B712F";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.59486234 0.18634742
		 0.75213081 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -124.76338959 1.94408202 21.77669525 -129.51222229 10.10174274 20.53964043
		 -118.99775696 6.24599123 28.01209259 -123.74658203 14.40365219 26.77504349;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface182" -p "polySurface_crane";
	rename -uid "FCDA62BE-4F6E-2821-072A-A28673BD03A8";
	setAttr ".t" -type "double3" 0.69768626098000819 0.6953626331802707 0.34794483855940145 ;
	setAttr ".r" -type "double3" 0 0 60.000000000000007 ;
	setAttr ".s" -type "double3" 1.1010457678279391 1.1010457678279391 1.1010457678279391 ;
	setAttr ".rp" -type "double3" -121.85869140625 4.1025155639648441 24.928112792968751 ;
	setAttr ".sp" -type "double3" -121.85869140625 4.1025155639648441 24.928112792968751 ;
createNode mesh -n "polySurfaceShape182" -p "polySurface182";
	rename -uid "BF010FA4-4D06-A73B-29B5-059DCC5F8740";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.59486234 0.18634742
		 0.59486234 0.34361553 0.75213081 0.34361553 0.75213081 0.18634742;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -124.76338959 1.94408202 21.77669525 -129.51222229 10.10174274 20.53964043
		 -118.99775696 6.24599123 28.01209259 -123.74658203 14.40365219 26.77504349;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 1 3 -3 -1
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface183" -p "polySurface_crane";
	rename -uid "B88C516F-4C39-4D73-C793-689271D3CF96";
	setAttr ".t" -type "double3" -0.67572599831428304 0.70278541654068705 1.299335579392664 ;
	setAttr ".r" -type "double3" -44.007027195636276 -10.545290589499547 -10.728583121609057 ;
	setAttr ".s" -type "double3" 1.6879408932786528 1.6879408932786528 1.6879408932786528 ;
	setAttr ".rp" -type "double3" -107.288984375 -4.416909790039063 11.370078125000001 ;
	setAttr ".sp" -type "double3" -107.288984375 -4.416909790039063 11.370078125000001 ;
createNode mesh -n "polySurfaceShape183" -p "polySurface183";
	rename -uid "E6113CD3-4053-C6E4-7E1D-23B0810171AC";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.67349657416343689 0.2649814784526825 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape185" -p "polySurface183";
	rename -uid "06018F35-4970-EA14-EC56-9FA5FB1AE224";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.59486234 0.18634742
		 0.75213081 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -109.58024597 -6.29089594 7.59306335 -112.20240021 2.43442869 4.83223104
		 -105.023551941 -2.55551505 15.070537567 -107.64571381 6.1698122 12.30970669;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface184" -p "polySurface_crane";
	rename -uid "5C61F649-47FB-480A-09C7-C69A29268E2B";
	setAttr ".t" -type "double3" -0.67572599831428304 0.70278541654068705 1.299335579392664 ;
	setAttr ".r" -type "double3" -44.007027195636276 -10.545290589499547 -10.728583121609057 ;
	setAttr ".s" -type "double3" 1.6879408932786528 1.6879408932786528 1.6879408932786528 ;
	setAttr ".rp" -type "double3" -107.288984375 -4.416909790039063 11.370078125000001 ;
	setAttr ".sp" -type "double3" -107.288984375 -4.416909790039063 11.370078125000001 ;
createNode mesh -n "polySurfaceShape184" -p "polySurface184";
	rename -uid "FA376ED0-4E8E-A6C5-270A-4E9509976163";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape186" -p "polySurface184";
	rename -uid "B8E239E4-4C2B-EFAD-B1C8-379AEABCEC4E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.59486234 0.18634742
		 0.75213081 0.18634742 0.75213081 0.34361553 0.59486234 0.34361553;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -103.33358765 -4.054142952 8.72918797 -105.95574188 4.67117929 5.96835899
		 -111.2702179 -4.79226542 13.93441391 -113.89237213 3.93305898 11.17358112;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "back";
	rename -uid "615F9B59-4A93-04A5-6F1A-159293504347";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 -516.92347656250001 ;
	setAttr ".r" -type "double3" 0 180 0 ;
createNode camera -n "backShape" -p "back";
	rename -uid "5D3DFBEB-435F-A052-5E4C-239AAFDEEFEE";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 516.92347656250001;
	setAttr ".ow" 324.72004905858125;
	setAttr ".imn" -type "string" "back1";
	setAttr ".den" -type "string" "back1_depth";
	setAttr ".man" -type "string" "back1_mask";
	setAttr ".hc" -type "string" "viewSet -b %camera";
	setAttr ".o" yes;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
	rename -uid "76450BDB-4D52-EE0A-E2A1-F18028DBC0FC";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
	rename -uid "C988B536-4ED4-1EBA-FC21-C0B72EC1168F";
createNode mentalrayOptions -s -n "miDefaultOptions";
	rename -uid "FFF46EA1-4B5A-7087-961B-ADA890455D8A";
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
	rename -uid "C932750B-4792-249A-B2A1-91BB3E7D03A4";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "B1B6E823-431A-5644-509A-7B8F8C1F83B3";
	setAttr -s 9 ".lnk";
	setAttr -s 9 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "D28EAA33-4AA8-9BB5-F817-4B9FC0FE8D76";
createNode displayLayer -n "defaultLayer";
	rename -uid "0AA8B2D2-4966-F7D4-9606-35A377D36C0A";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "82E7B97E-44ED-D92B-F21D-2E9F21C22E7C";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "094699AF-4938-BA23-1E88-29A083B265F6";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "00D6E205-4A21-ABF7-05F5-A38C895502DF";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 933\n                -height 342\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 933\n            -height 342\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 933\n                -height 342\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 933\n            -height 342\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 933\n                -height 342\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 933\n            -height 342\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"flat\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 1\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 0\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1437\n                -height 729\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"flat\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 1\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1437\n            -height 729\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n"
		+ "                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n"
		+ "                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n"
		+ "                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n"
		+ "                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n"
		+ "                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n"
		+ "                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n"
		+ "                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n"
		+ "            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n"
		+ "                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n"
		+ "                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n"
		+ "                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"flat\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 1\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1437\\n    -height 729\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"flat\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 1\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1437\\n    -height 729\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "D8D9A8EF-4DF0-B33D-F489-08B0E33CFC44";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode lambert -n "lambert2";
	rename -uid "50BE9E50-40B7-73C3-C5B2-4284F01AF551";
createNode shadingEngine -n "lambert2SG";
	rename -uid "93396CD8-4298-1803-2105-A784626EAB08";
	setAttr ".ihi" 0;
	setAttr -s 185 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 184 ".gn";
createNode materialInfo -n "materialInfo1";
	rename -uid "BE80A454-4E30-D367-BB88-D1B3657065E4";
createNode groupId -n "groupId6";
	rename -uid "4A32B06A-42C2-F084-DCC7-0C8C9A841D38";
	setAttr ".ihi" 0;
createNode nodeGraphEditorInfo -n "Pillar_hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "06184740-4346-0329-73FD-7B91B143ED1B";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -351.19046223542108 -323.80951094248991 ;
	setAttr ".tgi[0].vh" -type "double2" 335.71427237419914 339.2857008037119 ;
createNode groupId -n "chibi_template_01_groupId6";
	rename -uid "139E1DBF-4C97-CFDE-1014-E88F6092F581";
	setAttr ".ihi" 0;
createNode groupId -n "groupId61";
	rename -uid "08075348-411E-92DE-1CB1-6D92DC7A89E1";
	setAttr ".ihi" 0;
createNode psdFileTex -n "psdFileTex1";
	rename -uid "982563E9-49FC-295C-3406-138BC9CFCEF8";
	setAttr ".ftn" -type "string" "C:/Users/Etudiant 2/Desktop/Arene_02/sourceimages/Lilith_Arena.psd";
	setAttr ".cs" -type "string" "sRGB";
	setAttr ".alp" -type "string" "Alpha 1";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "238D8AA1-4D9E-1242-76DB-B198F1CBD662";
createNode lambert -n "lambert3";
	rename -uid "FB609AF6-4E07-D273-CBB2-7AB059232699";
createNode shadingEngine -n "lambert3SG";
	rename -uid "4929A040-4D0A-D47D-E450-B5ADDB308217";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "materialInfo2";
	rename -uid "77C24194-4B03-B164-3DBB-A19046CD22FC";
createNode psdFileTex -n "psdFileTex2";
	rename -uid "8F969840-452A-0818-65A5-0CB452EB3995";
	setAttr ".ftn" -type "string" "C:/Users/Etudiant 2/Documents/GitHub/ProjetFinal_Creajeux_2016-2017/Asset/texture/MAP/LilithArena_blood.psd";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture2";
	rename -uid "C4C77F5E-4821-FACD-95E6-45B04741EAB3";
createNode groupId -n "chibi_template_01_0001:groupId6";
	rename -uid "FF60B196-4F2B-8892-5BB1-0086BDC39077";
	setAttr ".ihi" 0;
createNode lambert -n "scene_arena_lilith_03_lambert2";
	rename -uid "FC19149F-486E-B857-F525-D7BD6B4155C1";
	setAttr ".c" -type "float3" 0 0 0 ;
createNode shadingEngine -n "scene_arena_lilith_03_lambert2SG";
	rename -uid "5BABF474-4151-7402-5090-3B927F24317A";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "scene_arena_lilith_03_materialInfo1";
	rename -uid "1904BFB0-4BA5-6D0F-7743-DA8CDCE35C54";
createNode groupId -n "scene_arena_lilith_03_groupId6";
	rename -uid "79E0EE38-4656-102F-39AD-429E691D6C56";
	setAttr ".ihi" 0;
createNode nodeGraphEditorInfo -n "scene_arena_lilith_03_Pillar_hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "2AC27A3F-45AF-2009-5D9F-EBBCDA3CED3B";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -351.19046223542108 -323.80951094248991 ;
	setAttr ".tgi[0].vh" -type "double2" 335.71427237419914 339.2857008037119 ;
createNode groupId -n "scene_arena_lilith_03_chibi_template_01_groupId6";
	rename -uid "805A0250-4E85-DB2E-D637-0F96494828EA";
	setAttr ".ihi" 0;
createNode groupId -n "scene_arena_lilith_03_groupId61";
	rename -uid "1FBA2082-45FC-6225-09A0-7CBA1117784C";
	setAttr ".ihi" 0;
createNode nodeGraphEditorInfo -n "cerisier_hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "A4DC690A-4740-40F4-E9E9-C0A608925120";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -307.14284493809708 -323.80951094248991 ;
	setAttr ".tgi[0].vh" -type "double2" 294.04760736321703 339.2857008037119 ;
createNode lambert -n "cerisier_lambert2";
	rename -uid "696FCAED-4622-F394-DBD0-84AC5CE47E4B";
	setAttr ".c" -type "float3" 0 0 0 ;
createNode shadingEngine -n "cerisier_lambert2SG";
	rename -uid "3E00BCD3-4F22-E1C4-BCF7-5783592E79CC";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "cerisier_materialInfo1";
	rename -uid "9171AEB7-42A0-1392-6FE6-DF9652F8538D";
createNode nodeGraphEditorInfo -n "scene_arena_lilith_03_scene_arena_lilith_03_hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "C26847FA-4BBD-C5C6-EC9F-5AB406C0EAAC";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -1507.6359086185657 -1913.588273439849 ;
	setAttr ".tgi[0].vh" -type "double2" 897.12590058668934 738.79257354495724 ;
	setAttr -s 2 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 1.4285714626312256;
	setAttr ".tgi[0].ni[0].y" -1.4285714626312256;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" 262.85714721679687;
	setAttr ".tgi[0].ni[1].y" -65.714286804199219;
	setAttr ".tgi[0].ni[1].nvs" 1923;
createNode groupId -n "scene_arena_lilith_03_scene_arena_lilith_03_groupId6";
	rename -uid "D91C5908-403D-C3A3-E03B-5F8CDC276C7E";
	setAttr ".ihi" 0;
createNode nodeGraphEditorInfo -n "cerisier_Pillar_hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "D9E2FE6D-4B0A-0FFE-7335-F8BC3AB49D8E";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -351.19046223542108 -323.80951094248991 ;
	setAttr ".tgi[0].vh" -type "double2" 335.71427237419914 339.2857008037119 ;
createNode groupId -n "cerisier_chibi_template_01_groupId6";
	rename -uid "5BDD877C-4ADD-C6E7-52AE-459407860D2A";
	setAttr ".ihi" 0;
createNode groupId -n "scene_arena_lilith_03_scene_arena_lilith_03_groupId61";
	rename -uid "BE85B01A-4FD3-1B91-95CD-A19BB635D41D";
	setAttr ".ihi" 0;
createNode lambert -n "scene_arena_lilith_03_scene_arena_lilith_03_lambert2";
	rename -uid "71059F25-4F9B-D50F-FE9E-51AF3B571095";
	setAttr ".c" -type "float3" 0 0 0 ;
createNode shadingEngine -n "scene_arena_lilith_03_scene_arena_lilith_03_lambert2SG";
	rename -uid "845B72BD-4407-41E9-916C-C88BD319815C";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "scene_arena_lilith_03_scene_arena_lilith_03_materialInfo1";
	rename -uid "2F696448-4BF3-F68D-E6BC-1FB04F127082";
createNode nodeGraphEditorInfo -n "scene_arena_lilith_03_hyperShadePrimaryNodeEditorSavedTabsInfo1";
	rename -uid "22EEBBF7-4ACF-FDA2-8A33-D19B09C7DCBA";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -1507.6359086185657 -1913.588273439849 ;
	setAttr ".tgi[0].vh" -type "double2" 897.12590058668934 738.79257354495724 ;
	setAttr -s 2 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 1.4285714626312256;
	setAttr ".tgi[0].ni[0].y" -1.4285714626312256;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" 262.85714721679687;
	setAttr ".tgi[0].ni[1].y" -65.714286804199219;
	setAttr ".tgi[0].ni[1].nvs" 1923;
createNode groupId -n "cerisier_groupId6";
	rename -uid "146428F1-4278-E90B-28CA-BAAFE7E4FA6E";
	setAttr ".ihi" 0;
createNode nodeGraphEditorInfo -n "scene_arena_lilith_03_scene_arena_lilith_03_Pillar_hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "1951326F-4EF2-D886-1492-8896CB3AEAB2";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -351.19046223542108 -323.80951094248991 ;
	setAttr ".tgi[0].vh" -type "double2" 335.71427237419914 339.2857008037119 ;
createNode groupId -n "scene_arena_lilith_03_scene_arena_lilith_03_chibi_template_01_groupId6";
	rename -uid "2C230350-4A79-5AC4-5D8A-B0BB0084E0E8";
	setAttr ".ihi" 0;
createNode groupId -n "cerisier_groupId61";
	rename -uid "1B4BE2D5-4AA5-5A24-252F-8C8078BC654E";
	setAttr ".ihi" 0;
createNode lambert -n "skull_02_lambert2";
	rename -uid "69B8F0BC-42D3-99F9-E8B3-01950BF443A4";
	setAttr ".c" -type "float3" 0 0 0 ;
createNode shadingEngine -n "skull_02_lambert2SG";
	rename -uid "FB15AC45-4699-CC5C-BC3B-ECAF991A89E2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "skull_02_materialInfo1";
	rename -uid "1AA9BCF5-45E8-0275-0D83-F3BD9D5B1B37";
createNode nodeGraphEditorInfo -n "skull_02_hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "54E3A9FD-49B8-AA92-7959-E48330924173";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -1507.6359086185657 -1913.588273439849 ;
	setAttr ".tgi[0].vh" -type "double2" 897.12590058668934 738.79257354495724 ;
	setAttr -s 2 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 1.4285714626312256;
	setAttr ".tgi[0].ni[0].y" -1.4285714626312256;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" 262.85714721679687;
	setAttr ".tgi[0].ni[1].y" -65.714286804199219;
	setAttr ".tgi[0].ni[1].nvs" 1923;
createNode groupId -n "skull_02_groupId6";
	rename -uid "B07E6031-4884-C8BF-6C64-C2AB46FFD6BE";
	setAttr ".ihi" 0;
createNode lambert -n "scene_arena_lilith_03_lambert3";
	rename -uid "7340DBF4-4C89-D62B-8933-EFAC7250C417";
	setAttr ".c" -type "float3" 0 0 0 ;
createNode shadingEngine -n "scene_arena_lilith_03_lambert2SG1";
	rename -uid "866C340C-4674-11F8-075D-859399D0860C";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "scene_arena_lilith_03_materialInfo2";
	rename -uid "6DDAF7FA-4C09-2DED-3ED5-FF986F632225";
createNode nodeGraphEditorInfo -n "scene_arena_lilith_03_hyperShadePrimaryNodeEditorSavedTabsInfo2";
	rename -uid "7A2BF142-40C7-ECFC-338B-2D8B1FEFAC42";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -1507.6359086185657 -1913.588273439849 ;
	setAttr ".tgi[0].vh" -type "double2" 897.12590058668934 738.79257354495724 ;
	setAttr -s 2 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 1.4285714626312256;
	setAttr ".tgi[0].ni[0].y" -1.4285714626312256;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" 262.85714721679687;
	setAttr ".tgi[0].ni[1].y" -65.714286804199219;
	setAttr ".tgi[0].ni[1].nvs" 1923;
createNode groupId -n "scene_arena_lilith_03_groupId62";
	rename -uid "91FFA9C0-4026-C8F6-8895-9B9233F2E14C";
	setAttr ".ihi" 0;
createNode nodeGraphEditorInfo -n "scene_arena_lilith_03_Pillar_hyperShadePrimaryNodeEditorSavedTabsInfo1";
	rename -uid "FA9B841C-4D6D-F4D9-FB8E-1F9ED4801B03";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -351.19046223542108 -323.80951094248991 ;
	setAttr ".tgi[0].vh" -type "double2" 335.71427237419914 339.2857008037119 ;
createNode groupId -n "scene_arena_lilith_03_chibi_template_01_groupId7";
	rename -uid "C2763D3A-4147-D91F-B2BC-E09A1889CE93";
	setAttr ".ihi" 0;
createNode groupId -n "scene_arena_lilith_03_groupId63";
	rename -uid "0DE3ABD3-4530-5DD7-80C5-A385CF0FC2C5";
	setAttr ".ihi" 0;
createNode groupId -n "chibi_template_01_groupId7";
	rename -uid "57791064-4F76-4C7C-63A4-0BB6AC2D8208";
	setAttr ".ihi" 0;
createNode nodeGraphEditorInfo -n "scene_arena_lilith_03_hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "EB2E12F8-435D-582B-A178-8C8A51A5EDF4";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -1507.1427972543831 48.528993828349485 ;
	setAttr ".tgi[0].vh" -type "double2" -921.13857725862761 739.34697675017503 ;
	setAttr -s 2 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 1.4285714626312256;
	setAttr ".tgi[0].ni[0].y" -1.4285714626312256;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" 262.85714721679687;
	setAttr ".tgi[0].ni[1].y" -65.714286804199219;
	setAttr ".tgi[0].ni[1].nvs" 1923;
createNode groupId -n "groupId62";
	rename -uid "D0F8091B-401F-D705-1174-0EA411D4CB2B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId63";
	rename -uid "E40C38F9-46B0-C23D-DFDE-4CB59953C252";
	setAttr ".ihi" 0;
createNode groupId -n "groupId64";
	rename -uid "5CBC4746-4893-9BBF-6DAC-B3802F1D1895";
	setAttr ".ihi" 0;
createNode polySeparate -n "polySeparate1";
	rename -uid "E15C85F5-498E-1D6F-13C4-66A3AB568519";
	setAttr ".ic" 176;
	setAttr -s 174 ".out";
createNode groupId -n "groupId65";
	rename -uid "47ECD0DA-4F42-9AEA-0842-3D85FD854B95";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "A2C9ED95-4BB2-FB61-7EBA-4EA1CDF38B18";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1215]";
createNode groupId -n "groupId66";
	rename -uid "5A95A453-4DA7-6104-E1C9-5D860654E8BF";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "B2171136-4446-032A-BF13-649F04B52B3D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:95]";
createNode groupId -n "groupId67";
	rename -uid "FC848417-497D-6D33-F426-78BA29B77E08";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "5D05BA1E-425A-7254-0898-5485902BDEC4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[96:119]";
createNode groupId -n "groupId68";
	rename -uid "45072BE7-4CBA-09E0-2D2B-75BDE0F3CB2A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "0C0A75BD-4362-C07E-25AF-05AE4165342A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:283]";
createNode groupId -n "groupId69";
	rename -uid "301527D2-40C0-A356-E027-F79C583C312F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "3A7F4181-4C93-6056-3156-82BFFCD02207";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId70";
	rename -uid "5ED10863-4C70-E247-2833-95A184B38558";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "D44F6F72-4163-503E-06CE-57BED5C1C697";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId71";
	rename -uid "06FE8639-4BDF-6E93-6B1E-1693E28577D1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	rename -uid "CDBA75B3-45B5-7C50-27E9-E0996526EBA1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId72";
	rename -uid "E3C5BC93-4299-7B45-2B52-158BDB37CFDE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	rename -uid "8F6BD143-42F3-BD61-9E4D-FE94F55F8D9C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId73";
	rename -uid "F339B98C-4173-2A79-775F-D798979CAEFF";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	rename -uid "4BBEA4BD-4315-C29A-4259-78AE06C5C051";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId74";
	rename -uid "55BD2C11-47D2-4259-580E-398CA79EDE33";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	rename -uid "E8DA4C55-4721-C7A7-81A9-A9BE196E73D6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId75";
	rename -uid "8FA8B6FA-4DA2-DE2F-3B7F-A398152C3E0D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts11";
	rename -uid "43D65D20-4FA3-574E-7653-B9840B993136";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId76";
	rename -uid "D6168C74-4698-BAAC-D56A-80898B6F1162";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts12";
	rename -uid "D11F080B-4987-478D-2390-F5B8EDE05195";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId77";
	rename -uid "A60AF4C7-4591-FF6B-7235-0C82A8533CFC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts13";
	rename -uid "400A6EBB-4F7F-9E68-B2D7-E6AF0580EEF6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId78";
	rename -uid "93B7DC9D-40C8-4001-C028-68BD4AB2EB2B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts14";
	rename -uid "DD8ECB56-45E8-A644-AB27-68A28F78C7A1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId79";
	rename -uid "DC6B37A9-46F3-B915-74F0-F9AD6A7E776F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts15";
	rename -uid "6A039396-48B6-7D00-38FD-A6912A659C05";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId80";
	rename -uid "F32D41A1-4637-DBAD-00F0-7B9662816DD3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts16";
	rename -uid "776E00B7-4C39-9704-044A-198368E272F3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId81";
	rename -uid "AACE5455-44B5-DB3E-305B-00A698C878AF";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts17";
	rename -uid "3819DB79-4430-3031-12D9-589B5ACB0B1E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId82";
	rename -uid "A80882EF-4E9C-0F98-F923-2192FEBE0F75";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts18";
	rename -uid "9746DE48-4B36-91B5-A4E5-AA892EF9B560";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId83";
	rename -uid "E1E547B5-4244-95D0-50B7-17BF62B5E1F1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts19";
	rename -uid "F8FFE8D4-48AA-D58A-2AA7-2190E9656F78";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId84";
	rename -uid "15F5C502-4AB7-BBD5-B1D2-589630D7D4BE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts20";
	rename -uid "62D9C978-481A-16AC-AD23-1D81A6C0FE55";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId85";
	rename -uid "C1D39F60-487C-E07A-6346-2087F72659E7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts21";
	rename -uid "435DF1C8-442D-208B-4A0C-D2A94E7EE137";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId86";
	rename -uid "54FE5AD4-411C-23EA-8985-97960317D222";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts22";
	rename -uid "56B47560-4F8D-D06B-CD4B-FF954FB8C6E0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId87";
	rename -uid "3333B79E-4830-C74F-6137-68883E55B705";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts23";
	rename -uid "B8819AE6-49D2-1864-9AAC-9E813C037105";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId88";
	rename -uid "AFCF4815-4257-D1BD-A1A2-10BC38736C5A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts24";
	rename -uid "ADA9CDE6-4140-8C7B-E799-C49E1C878EB7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId89";
	rename -uid "5A64772A-41B6-C2D6-EAA9-7E982FCFA39B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts25";
	rename -uid "B016967A-4976-6EAA-597C-02860F20A862";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId90";
	rename -uid "310D44D9-4510-E7E8-5BEA-659E73271B10";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts26";
	rename -uid "6640E389-441F-6551-4C88-DF8C5048E4A0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId91";
	rename -uid "98F863B8-40A8-FE96-526D-50B0F60F1945";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts27";
	rename -uid "DD9B3909-4A5B-566C-1A7F-13A8066C7A26";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId92";
	rename -uid "C93845B9-4F63-3CA7-8A33-E3B5055285D0";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts28";
	rename -uid "021FED50-446B-B115-3403-2C843E8C0B7F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId93";
	rename -uid "C938F846-459A-0870-3302-65969A3B11B4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts29";
	rename -uid "8A18085F-4C4A-0F78-17A1-2BBDCDF6918B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId94";
	rename -uid "505B9663-479F-E600-EE56-4086A83ACC8D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts30";
	rename -uid "ACB66F5E-4339-BAD5-7EE4-5090466ACF4C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId95";
	rename -uid "C2C35401-4247-7B05-8DF5-0E8A1D945B6E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts31";
	rename -uid "E770578D-4BBF-6108-9F7C-1AB2432C1EFC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId96";
	rename -uid "5050725A-477E-584E-C69F-B4BB2E86D836";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts32";
	rename -uid "A2FC79E0-47A9-B907-264F-C480EEB6F189";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId97";
	rename -uid "41E56606-44A4-DBE0-B1B3-73900EAD81B1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts33";
	rename -uid "0F0A759B-40C4-ADCC-D4BC-9C9DBFF7C30E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:259]";
createNode groupId -n "groupId98";
	rename -uid "334FB642-4DAE-0916-F877-5C85419EB389";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts34";
	rename -uid "D99A5857-4D53-8020-5682-14A1AFE206BC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId99";
	rename -uid "DC77B46E-44E3-6925-C69D-90AB9D760CE8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts35";
	rename -uid "FA1C344D-42AB-7AC2-D50D-A0A95E54236F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId100";
	rename -uid "859B8CC9-4304-C78B-06B4-AE848496B49F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts36";
	rename -uid "4DCB6331-4E47-5170-E33D-DEB5EB8457BC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId101";
	rename -uid "1E41D9C6-43B8-DB06-6A0E-DF9B8ECA1445";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts37";
	rename -uid "110D6B70-4F21-E7A3-9392-1B8DEE861F7C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId102";
	rename -uid "17371E67-4A72-8C1C-9F3B-23AA8C0D663E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts38";
	rename -uid "AF2D3E6B-466B-A959-995A-58A7EA82B046";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId103";
	rename -uid "339BC318-4676-56A0-45AF-55BE116D84D2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts39";
	rename -uid "3FC11CD1-4361-2C5E-E9B0-A6AEFE3254B6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId104";
	rename -uid "D45470C6-4AAB-8596-DB6A-8FB747C9D77A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts40";
	rename -uid "9458843B-4B62-8895-271C-518C7915D677";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId105";
	rename -uid "D6B2B4DE-44D7-C9A4-9792-9AA29137C1E6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts41";
	rename -uid "55C59AE8-4FD6-7818-0DB0-78B25A1AB2A2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId106";
	rename -uid "B241CFB1-4EB6-80E9-9469-CF8C18A011C0";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts42";
	rename -uid "AA1E5D8C-4E6C-8F84-F207-65AC3D59A8D0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId107";
	rename -uid "6A78A259-4E1F-9D97-A243-60A659EDDF5D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts43";
	rename -uid "E701413C-4288-364C-6B02-C7B4C03B76CA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId108";
	rename -uid "821DE551-4B00-6477-A338-1AA19BC01091";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts44";
	rename -uid "84C3DBFB-47E2-E487-347C-F3A41DB4F55E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId109";
	rename -uid "F9669737-469F-072C-CF5A-79AE6F80AE9C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts45";
	rename -uid "779B92B6-4EEA-458C-FFF0-E8AE8365F48E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId110";
	rename -uid "775D2347-45E1-E695-3CCA-D6B19E87D869";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts46";
	rename -uid "5D461BA0-4014-B423-D09D-1489D0ED782D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId111";
	rename -uid "D6E07884-4C35-B2C9-1FAB-6189F14063CF";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts47";
	rename -uid "322ECE7F-4D33-9AFE-A364-E599737FB067";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId112";
	rename -uid "B19093EA-4D21-A0BF-696F-3B8111390842";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts48";
	rename -uid "6D73A9C7-4AB3-6D36-B2A2-E6B4CFE2E48A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId113";
	rename -uid "5A9A41CB-47CA-051D-BE35-97B7ED990587";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts49";
	rename -uid "33EE5C26-4A9B-1FDC-A427-39AA43659E8A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId114";
	rename -uid "B8BF99A3-417D-5212-B7B7-6A87F3985586";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts50";
	rename -uid "33FBC993-495B-0FFD-CB52-FDAAF6339C9B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId115";
	rename -uid "6EA0C9D8-49C1-840C-0467-818A0655A598";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts51";
	rename -uid "2F767D67-426F-2CB0-A6AB-1DA9ECEEAF4F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId116";
	rename -uid "F38C3776-4003-BB88-C3DC-A3AD966F0789";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts52";
	rename -uid "67628AFF-419E-A961-DFBB-FCA0511B460C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId117";
	rename -uid "01B04D49-4B5A-58FE-ED4C-AD859E46EC70";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts53";
	rename -uid "F25F91B7-4012-01A8-3194-7C822FF766A3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId118";
	rename -uid "10916D14-4865-AA09-DA20-64A4D2D60D19";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts54";
	rename -uid "C450EE17-4836-5B93-0ED3-1B87121A8D43";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId119";
	rename -uid "B1219212-4D45-6D0C-7B07-FFB66587656A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts55";
	rename -uid "F2B718CB-4BD4-F842-D7ED-8B80CF0261C5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId120";
	rename -uid "B5D73EBF-4C75-3286-B9F5-F6BB89065A3A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts56";
	rename -uid "5A5D0F06-4BBF-317F-F127-3EB12A998E98";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId121";
	rename -uid "BF8BFA2B-4593-7421-F337-21B0F82CA390";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts57";
	rename -uid "3BD55A86-429F-B10C-D7DF-B1A3B7763551";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId122";
	rename -uid "3133E66D-4A72-F589-5E0B-3FA3A30E252B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts58";
	rename -uid "B12376F2-4252-4E6C-CA14-1498281DAF94";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:259]";
createNode groupId -n "groupId123";
	rename -uid "9A4E620E-4BF1-2A37-B4E8-A3985636B0BD";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts59";
	rename -uid "180E4590-4EF9-4AAC-043F-6F840B4BBD35";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId125";
	rename -uid "CAE16093-4D5B-E997-C665-0A90986EC168";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts61";
	rename -uid "AA4DE4EE-47E1-B5EA-D041-69B0791FB33E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId127";
	rename -uid "AA0D51AC-4E26-38A5-E6BD-08B77098DAB7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts63";
	rename -uid "3BADB52D-4266-E4F1-B4A4-829F18EE090E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId128";
	rename -uid "548C2D0A-4B8C-0637-D43E-9390CC3E9B33";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts64";
	rename -uid "BE5EE485-46B3-4C4C-4AEF-AC82295EE822";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId129";
	rename -uid "5A3D6390-4205-7815-4592-D2809225DA14";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts65";
	rename -uid "60EE5D4E-4A48-A9EE-6E4F-6ABA6400CF49";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId130";
	rename -uid "B4CC6079-4D45-FCD6-5478-18B9F821FBC1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts66";
	rename -uid "E25F2A76-465E-6A9C-63C4-F1BCFEED7616";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId131";
	rename -uid "0756A7F9-4C38-FA02-E401-99959E1F1745";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts67";
	rename -uid "67F24E75-4DA7-BEC9-11BA-4EBAC724DD44";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId132";
	rename -uid "F4CE5348-4F3D-4245-4212-D3ABEDBF3048";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts68";
	rename -uid "6E545C30-4320-2E53-97D3-F59FB31BD13C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId133";
	rename -uid "55E93237-44F4-A334-654E-3C9DCD30EE88";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts69";
	rename -uid "E4F842D5-4412-E180-67B3-7889D5A9A58A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId134";
	rename -uid "61B70F8A-4D0C-C24C-9F15-A287AF250036";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts70";
	rename -uid "75FE44CF-410A-B16B-CA53-BEAC9F549B00";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId135";
	rename -uid "00187AE7-4FCA-73EF-B077-0C8081320068";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts71";
	rename -uid "2E14864F-4A73-8F6E-E334-5BBC6BBFAD6D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId136";
	rename -uid "23B34FA1-4D8D-7C0A-BC80-F2ACAF1C7E61";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts72";
	rename -uid "D8DC9530-494A-6007-AFB8-74B7B50D1238";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId137";
	rename -uid "4E1509EC-432A-EDC5-C0DB-C8A50D259EBC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts73";
	rename -uid "7EEB3BD1-4BB6-5A4F-8B80-A0A40B05A886";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId138";
	rename -uid "1B247C86-46A7-DDAB-8E47-A3A774924B78";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts74";
	rename -uid "974092BD-4115-827B-B49E-E4A276EF8434";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId139";
	rename -uid "1A7914FC-4AC8-173F-709E-B58BDA00CEE8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts75";
	rename -uid "0A7F420D-4BB9-1320-1631-5D9BBF8DC235";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId140";
	rename -uid "7F677F58-4A65-E506-E73A-A7A38D2F8E5D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts76";
	rename -uid "23F83DC2-4B9A-6DB6-A957-91887DFD3E27";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId141";
	rename -uid "A36DD0BC-4D95-CFB5-BF40-B788799D5659";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts77";
	rename -uid "0DFC21D2-4451-3511-5298-E38B15A5E4F5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId142";
	rename -uid "8EC20FF1-44EC-D71D-C902-7D8CE9FE58F5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts78";
	rename -uid "0B3190CA-4255-A53C-9C93-768125F80B91";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId143";
	rename -uid "7A2A5D7D-4C20-0F4D-F601-2EBB1D03F763";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts79";
	rename -uid "F01C5139-4342-B84B-749A-3793A8837E28";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId144";
	rename -uid "3299A136-419C-BCF3-E36C-3EBD5F21F930";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts80";
	rename -uid "DDD71E05-4CC3-1562-39E1-A8A64062C746";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId145";
	rename -uid "604C006B-495E-0889-86BF-64AC8931F499";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts81";
	rename -uid "A6745A29-4D71-C173-52C7-D6A8C6844CDA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId146";
	rename -uid "5A1E9C4A-4970-2F5F-F299-F39B4072E051";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts82";
	rename -uid "83A7EB03-4BE9-7298-D32B-90B7539D6EF6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId147";
	rename -uid "85C9430E-4E8F-AAB3-4D0E-988A719F4C2D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts83";
	rename -uid "4B00FDE5-4C8B-A840-DAAF-128409F16DD6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId148";
	rename -uid "87C7FF85-45B4-5AAE-9D1A-F4A7EAD56C47";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts84";
	rename -uid "823C40F0-455F-B896-378D-45A361F1BE8B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId149";
	rename -uid "24A50295-426E-62D7-9AD1-958444342EFF";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts85";
	rename -uid "AA54AFC7-45C4-67A5-2E7C-93B9E454ABFC";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId150";
	rename -uid "A3AB766F-4826-0079-4F55-91BF3AF72040";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts86";
	rename -uid "63A50A5E-4B40-8BB9-E26F-55AB51C75396";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId151";
	rename -uid "EC76A70B-4651-1277-C1C8-1E8914CAAB0B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts87";
	rename -uid "A637A9DA-4A2C-057F-698C-909230CB34AB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId152";
	rename -uid "B9FE268D-4662-28C7-3DBE-92B59101EFCC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts88";
	rename -uid "14272048-4A1A-CE4A-B3F5-75BC2C013DB7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId153";
	rename -uid "C5D14294-4AF8-7891-6B20-6AADEAB859A6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts89";
	rename -uid "A693044D-4FE4-9AEC-6D92-DDB77762439F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId154";
	rename -uid "A7310123-47F5-96C0-8E3F-53A4BB7495B7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts90";
	rename -uid "E16F13D3-4CDC-BA89-EB78-18A45EABE519";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId155";
	rename -uid "21D1D7B3-40B6-FCCD-8652-C28FB7E2256A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts91";
	rename -uid "78B94AD8-43F7-F753-4E06-D6A4D9903C0C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:283]";
createNode groupId -n "groupId156";
	rename -uid "1FE27ED1-48E5-FF61-8924-6F96102BB9EE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts92";
	rename -uid "2F50EC79-448B-7D26-0F67-37950FE33939";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId157";
	rename -uid "85687E47-4387-A9E6-2799-FDB6E465A8F5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts93";
	rename -uid "69714992-466C-33C8-0E08-02A0B39180E3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId158";
	rename -uid "B30F2ED8-4E5B-A8D3-CD87-CAAC6EDD987D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts94";
	rename -uid "0170B990-4832-242D-5211-FE9BCCBD351D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId159";
	rename -uid "D1961EB6-4F3D-6B4C-93C9-5B9DDE756723";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts95";
	rename -uid "F79FB9A1-474D-601F-4417-26911A5D5E3E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId160";
	rename -uid "6BBE3562-4F7B-7557-4B35-919AE2C316CE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts96";
	rename -uid "81E3D9C9-4CCA-82ED-CE78-8497198BC74E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId161";
	rename -uid "6023EF62-449F-5896-3487-D8953DBA0D84";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts97";
	rename -uid "D5544970-49D5-7A89-AA17-F78671B6D8FE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId162";
	rename -uid "7420CF7C-4491-0309-2D0B-0E99BC80B3F2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts98";
	rename -uid "CD077520-402C-6DAA-59DC-2290A491D43C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId163";
	rename -uid "1A7E3596-4913-10E4-D495-59A64F59256D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts99";
	rename -uid "CB1795F3-4CEC-2E7F-A7C6-369E28B31675";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId164";
	rename -uid "A592CDA9-4AC9-4B1E-3501-268FA00155E5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts100";
	rename -uid "1E9E2510-4BB4-ED17-D0B0-3AA1B80276F8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId165";
	rename -uid "FF0CB744-460B-0D53-B2D1-46B559FD3058";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts101";
	rename -uid "C63EC98B-416B-FA65-07BF-10863AC0CCD0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId166";
	rename -uid "585D7603-4FCE-C61C-DEFC-80B0C2E33DE7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts102";
	rename -uid "E43C1243-4E73-F780-D12D-3EBDB01D23F7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId167";
	rename -uid "0046AADE-4DF7-A7FC-E7DB-CCBEEB5E0E9E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts103";
	rename -uid "FB56E070-440E-8074-1DA9-F98140DC3672";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId168";
	rename -uid "4D09D876-4F4E-18AB-1F28-2DB72763B909";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts104";
	rename -uid "DADFFD3F-464F-E2A4-C9E2-AE869716DABF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId169";
	rename -uid "731B22C5-4211-7FD5-BAF0-79AE146AC69F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts105";
	rename -uid "A059907F-452B-B314-28A5-B3A4DB282456";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId170";
	rename -uid "E2BCE348-4372-2EDA-B8F2-0D9B4FCE872E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts106";
	rename -uid "6AA6BD53-4F3B-4CB9-8A71-70BA490B8871";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId171";
	rename -uid "38282A10-4007-77D9-7908-2CB100EB1F26";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts107";
	rename -uid "0D697544-4B7C-94CF-D58F-E4B5A76681E2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId172";
	rename -uid "51AF6F6E-4916-11DB-618E-8FB4AF23CD8A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts108";
	rename -uid "20A6EC08-4010-2016-1343-B3A5E3939EF6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId173";
	rename -uid "BCECE7BF-4F31-8AC7-1605-2DB1C5F6E6E9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts109";
	rename -uid "08B89C6B-45EF-60A8-E252-16B258006D08";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId174";
	rename -uid "690868FF-4E6A-B749-2E48-579B7103139B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts110";
	rename -uid "7AC33C45-47E0-C262-DD6C-92B1AC011481";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId175";
	rename -uid "57BCC705-4BD5-9429-2CEF-3B8A257F482E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts111";
	rename -uid "363D675A-435E-7E0C-5CD2-759BA230A960";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId176";
	rename -uid "56E7E451-40B9-8FAB-5ACF-1D921D7D55DA";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts112";
	rename -uid "BD5F046F-4DBD-4365-5EB2-DA815950D71E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId177";
	rename -uid "1B3F3B57-4DD1-9F52-FE01-5385075CB6D6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts113";
	rename -uid "EAF9CCB6-4184-ED7E-7ACC-32BF09074044";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId178";
	rename -uid "AB09F21C-4E14-FEC0-2A1A-9FAB7FD465A9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts114";
	rename -uid "A853EEA8-4EA4-3EBD-46C1-3CB7275663C3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId179";
	rename -uid "D8B76B88-4850-2092-2CEA-53A6CAB9AAE6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts115";
	rename -uid "E3B6713E-4BF0-018B-07E8-94996DCB945D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId180";
	rename -uid "9777183F-44E3-3050-971A-49865F119BA7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts116";
	rename -uid "645384F3-434A-8C00-A5E5-86AEF2C873C4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId181";
	rename -uid "FD32B671-48A1-4CF4-14EE-6A833CC1EB58";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts117";
	rename -uid "D3002306-4FFB-AD57-951D-CA913D275BB7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId182";
	rename -uid "95546FAB-4A31-A64B-4E2D-C4BE6108044F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts118";
	rename -uid "BB2A3718-40A8-951A-FAC1-3E8B4DA42FCA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId183";
	rename -uid "0FB2FFC2-412B-8FB0-DCA6-949CC09BA7A7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts119";
	rename -uid "9ACAC459-4533-EC18-F391-5EACCA526466";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId184";
	rename -uid "F7F5F19F-41A8-BBD0-226E-798C82E1E3DB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts120";
	rename -uid "11AB1A29-4A44-C809-951E-84B45AA86A2A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:259]";
createNode groupId -n "groupId185";
	rename -uid "C9EBED72-4794-AFA7-A690-70BA4BB679C3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts121";
	rename -uid "C179EBDA-4843-5C63-3DA8-D1883BE4EF71";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId186";
	rename -uid "9B4E47CA-4B94-ED56-1B2F-5EA94A74BE4A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts122";
	rename -uid "FFEC21C0-42EC-0EC6-8397-39A9392B4B58";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId187";
	rename -uid "167F0CC5-4D5B-4E42-D5B6-C19502612827";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts123";
	rename -uid "DC6A5062-4A09-FEA3-21A3-788883456AE4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId188";
	rename -uid "50517A66-4224-FCDE-4F61-26B81FE93F90";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts124";
	rename -uid "DF9E812D-4C0B-D121-16B2-899AB7D5D888";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId189";
	rename -uid "5CF0E4A7-4B91-4C5B-1961-55B4CE06F1A8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts125";
	rename -uid "99D532E3-4920-F0AC-C048-64995A1C414E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId190";
	rename -uid "FD3B3CE5-4AA6-7539-E202-67B4AC41A152";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts126";
	rename -uid "066A85E2-4A1F-2C90-4C13-56B0628E4C89";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId191";
	rename -uid "AEA8B7AC-4852-ADA8-62D7-B6B74AA45E2E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts127";
	rename -uid "1D7F4705-409D-5F36-E136-B0A81B271320";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId192";
	rename -uid "6E6B77A1-4347-B696-6DF6-98AD0A700D81";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts128";
	rename -uid "00053413-4089-8F3B-834D-53B6BF86590D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId193";
	rename -uid "8D957F60-4038-73E2-5E34-7288BF9482FA";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts129";
	rename -uid "6DE928A4-4FA5-6C55-6E05-45B4441A927F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId194";
	rename -uid "B29FF58F-4CEB-9392-1D56-9FA10F3141DC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts130";
	rename -uid "DC96B307-47FF-3994-D862-C28F5548543C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId195";
	rename -uid "2824C399-4B80-73E3-D984-0F86D2A11C00";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts131";
	rename -uid "EFD97728-4EAC-B52D-EAEE-8889B9015F8E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId196";
	rename -uid "EE202ADA-4CB3-9A5A-0D4E-3FA7587979BE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts132";
	rename -uid "2BAFF3F2-4062-0622-1A65-AF9F79FDFB07";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId197";
	rename -uid "EAC0D2C0-4797-576F-5553-9DB8477F8E9C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts133";
	rename -uid "33FF9470-4814-8584-8C0A-258B78C0409C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId198";
	rename -uid "C612D3E2-40BF-D419-CAD0-BF9F2B91389F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts134";
	rename -uid "479BB24C-4DEC-AF1C-CEE8-1C9465FCA2A8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId199";
	rename -uid "6F801287-4B50-12F7-5031-8CB6239168C7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts135";
	rename -uid "B02C83ED-4EF6-12E2-189E-BFB40CDA8069";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId200";
	rename -uid "65E19ACD-4A9B-A469-57B3-D889B9235FEC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts136";
	rename -uid "BE24BB39-429F-95AC-62A6-358021D3DB22";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId201";
	rename -uid "96C382CE-463E-A940-5C37-0FA03C448D83";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts137";
	rename -uid "08C6D668-47F8-D86D-06F7-9C84BC7C5BFA";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId202";
	rename -uid "4EB186CE-43BC-0B97-9339-00AB4A0BB4D8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts138";
	rename -uid "37EF9E95-460D-C4BA-FB72-A98A67BF10B4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId203";
	rename -uid "03A7CB1E-4F63-CF24-FD08-8795F1A7E5B8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts139";
	rename -uid "02B86F95-4DA4-1713-7BF2-94B74FC7F5DB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId204";
	rename -uid "B8BD7CDF-484D-8EED-EA70-5CBDEDC18916";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts140";
	rename -uid "668FBC85-434B-88C8-3CCF-84B591E11F6D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId205";
	rename -uid "76BEB7EB-4525-9E35-69BA-92B8912FCD75";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts141";
	rename -uid "65BD0616-4C10-354B-3DC1-FE8D2A18D144";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId206";
	rename -uid "BC348F4D-45CA-86A2-A079-8992C7EE1243";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts142";
	rename -uid "5031D899-4D55-4397-B491-849B3E5191C7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId207";
	rename -uid "16C21F0B-4EE1-1877-D0A4-649987C31C45";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts143";
	rename -uid "EE3FEF7A-4774-F0E3-081B-AF865A2B56C1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId208";
	rename -uid "569B49C0-4A7A-27AD-CE6A-5A8D9FE8CA1B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts144";
	rename -uid "4EDECBAF-4AED-2813-C42E-89AF47EF47AD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId209";
	rename -uid "339A7032-41CF-AFBA-398D-DC9194780470";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts145";
	rename -uid "B5D53729-4EE7-A276-6886-9D8241CA3189";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:259]";
createNode groupId -n "groupId210";
	rename -uid "48F92E89-4713-A6BE-D693-ABA3462C6268";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts146";
	rename -uid "486227F8-43EF-A8ED-C6A8-FA8BCAB96E57";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId211";
	rename -uid "D94132BE-438B-2F2E-5A70-509329BF29AE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts147";
	rename -uid "76AE1798-4FA0-B41B-7AD7-8DA5C9401E54";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId212";
	rename -uid "C58CE1CB-4031-B37C-8C4A-E4BCCA4E769B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts148";
	rename -uid "391D0880-456D-5062-D8BD-C9BCA37F983D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId213";
	rename -uid "98381F8C-4318-B45A-674A-998AEFAFE6C8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts149";
	rename -uid "3C151A9C-4FCA-3BC7-690B-98B63C868531";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId214";
	rename -uid "6D174663-491E-81A0-2AF0-19841FA57D5C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts150";
	rename -uid "2BA70FFC-4706-435E-EB65-C4A00AC6CA5D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId215";
	rename -uid "26C1B73C-42E3-EC06-8AD2-3CADA3565D8A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts151";
	rename -uid "937B6874-4C0A-40E8-C3CE-F6859AB6E81C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId216";
	rename -uid "D7D1EA39-47A6-0DFB-3B6B-87B5C439C513";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts152";
	rename -uid "D637805E-4DA2-86C3-0904-3CAD9F98C387";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId217";
	rename -uid "28BB6628-46CA-4D30-A3A4-90B97446C06C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts153";
	rename -uid "3FC62A3F-4A5B-FCFA-2698-9A82EF7EA3AD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId218";
	rename -uid "E250F2AD-4B2B-6F3A-2805-ADA5346C6F36";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts154";
	rename -uid "22CDEFE6-4CE1-D2D6-D355-999089D3DF13";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId219";
	rename -uid "B5FA5EB7-49E1-0F89-E566-01955D802524";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts155";
	rename -uid "86D99B9C-4A3C-226C-874D-3A9365DEDE55";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId220";
	rename -uid "FF628C72-46CD-70A9-D024-49B676541E9B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts156";
	rename -uid "D0B6E481-4944-E8F8-41CC-469705A77B63";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId221";
	rename -uid "F29312D7-444B-6D0C-E7D7-148AADD7BFD3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts157";
	rename -uid "DBCE048D-47BD-F75B-3E48-C0874AC1ABE8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId222";
	rename -uid "ADE25BC1-4335-C1A1-1A63-D3BD0FF8F62F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts158";
	rename -uid "7F44133B-4C2F-14D8-DC6F-28ACCEAD555E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId223";
	rename -uid "84741822-4132-F23E-4D3F-209135F2FA69";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts159";
	rename -uid "FDEA804C-407D-CECF-F183-BC9F183493B1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId224";
	rename -uid "955AF7D7-4C05-F1CC-C7A7-E28E99A2B1B6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts160";
	rename -uid "1289AB1E-49C8-8F4C-D853-6AB75B1E81F9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId225";
	rename -uid "969476CE-4AA8-5961-958B-52B69CA5E962";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts161";
	rename -uid "52F64B4D-4F51-3400-EFFB-5AA4B5D5764B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId226";
	rename -uid "20BA42C8-41C1-1AEC-89C1-F1AC02725DD6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts162";
	rename -uid "C5E38F90-4A0A-6BBC-4656-69A0C8BD2C04";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId227";
	rename -uid "571F6C6B-4A01-9EFB-2795-3FAD6BA83AC9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts163";
	rename -uid "A1DEC09C-40FF-BD74-3BB2-509CD6C1CF48";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId228";
	rename -uid "2F1A43DF-4F41-4CD2-B5AF-33A7020B0136";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts164";
	rename -uid "DB4D9658-4CC0-9CEE-AAC0-71AF30A44DD2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId229";
	rename -uid "402BD10B-42D5-DE29-8BE5-FE9D41C369F7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts165";
	rename -uid "EBE01BE5-48B8-F92F-C3A0-55BBAD2D3A90";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId230";
	rename -uid "1DAF978E-430F-D535-6877-4CAB6372E955";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts166";
	rename -uid "063F663A-4F3E-0EC5-CFDF-DF9400D58FE3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId231";
	rename -uid "DD6B7FB8-44F0-DB13-4BC5-5992D2EB6469";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts167";
	rename -uid "9017ACE6-4325-8DDA-4D5C-98807B6B3720";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId232";
	rename -uid "43D921DA-4FC2-FF98-6DCB-6096B3CA9551";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts168";
	rename -uid "5A3FBBBC-4230-FEC1-6E1B-DFAC01F1662D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId233";
	rename -uid "F231E049-4FD7-0251-8134-C8B68F67BE86";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts169";
	rename -uid "2B4D5B75-4C89-739F-472E-049DFB2D7D44";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId234";
	rename -uid "C85B3383-4798-1482-2819-76AC1AAF682D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts170";
	rename -uid "C4818CF1-4C2C-9EA2-D2C7-93A66639A326";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId235";
	rename -uid "C2E89AE6-459D-1FE0-E215-C8B14FD2BDE7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts171";
	rename -uid "33C38993-4319-A28B-FEA9-76BD134ACD81";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId236";
	rename -uid "19F9F5D7-4B93-ED96-1AC5-A8B304443C64";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts172";
	rename -uid "18DC9FBE-4372-0FBC-C8F7-AB90B9CF9C69";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId237";
	rename -uid "2EC69B37-4346-3B88-4EBD-D2AABFEF29EC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts173";
	rename -uid "FEB0A7E3-42CC-D2E3-4813-B1B10EB2FE2D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId238";
	rename -uid "5DEFFD45-4A41-FCF1-9324-2A83E8C2ADC6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts174";
	rename -uid "789BDACB-4D2E-3BBD-6C41-E29706BA7327";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId239";
	rename -uid "A3CB708C-4785-D6AA-A655-94BA1E6E9D55";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts175";
	rename -uid "270ACE0D-4ADC-4608-47CE-B0975087DBA7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId240";
	rename -uid "F3C5896B-4F44-FC99-D9A6-CF98819C3EAC";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts176";
	rename -uid "EE01E251-4755-7388-7B9E-F18F78C27FC1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode groupId -n "groupId241";
	rename -uid "F20A67DB-4733-D1EE-5DE9-3A86EA132752";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts177";
	rename -uid "FBF51570-4BC0-2CBB-7D98-0A91247F89B0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode polyMapCut -n "polyMapCut1";
	rename -uid "66AD640B-4165-02FA-BD99-E784B065FF1F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[13]" "e[506]" "e[532]";
createNode polyMapCut -n "polyMapCut2";
	rename -uid "D23574D0-4348-E4BC-238C-B6935B644F8E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[13]" "e[506]" "e[532]";
createNode polyMapCut -n "polyMapCut3";
	rename -uid "B776849F-41D0-5BF2-A28A-A4A1A8C3F891";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[533]";
createNode polyMapCut -n "polyMapCut4";
	rename -uid "C6CE4D4D-4876-ECDA-601E-A8916A5A4EEC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[533]";
createNode polyMapCut -n "polyMapCut5";
	rename -uid "52F3D49A-4E2D-F8D2-8780-DDA300317AD1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[534]";
createNode polyMapCut -n "polyMapCut6";
	rename -uid "8D8E3B0E-4249-0B4B-D8A0-2E8113250F70";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[534]";
createNode polyMapCut -n "polyMapCut7";
	rename -uid "983FD49B-4ADC-BDF5-6420-AB9569B649F1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[535:536]";
createNode polyMapCut -n "polyMapCut8";
	rename -uid "A79CD8C0-40CA-50C8-825F-019CBB92B67E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[536]";
createNode polyMapCut -n "polyMapCut9";
	rename -uid "031997B0-478D-D0B5-EE89-7F8E770085B4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[537]";
createNode polyMapCut -n "polyMapCut10";
	rename -uid "3508A8E3-4AA1-572B-1D80-5B86797A3477";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[537]";
createNode polyMapCut -n "polyMapCut11";
	rename -uid "BFEBE355-4743-F073-7BF5-6793E6B2433D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[538]";
createNode polyMapCut -n "polyMapCut12";
	rename -uid "E10AAAF9-440C-BA0A-5E54-0BA7BFE061AD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[538]";
createNode polyMapCut -n "polyMapCut13";
	rename -uid "DC9D5835-46C3-83B9-1C6F-B3B31368A31C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[539]";
createNode polyMapCut -n "polyMapCut14";
	rename -uid "E0560692-403F-781E-7296-FCA624CEFE52";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[539]";
createNode polyMapCut -n "polyMapCut15";
	rename -uid "E6B80A92-445D-DE55-A6E9-6A9D0B36928D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[540]";
createNode polyMapCut -n "polyMapCut16";
	rename -uid "1A2B6FB6-4473-6721-E482-E89EEF872DD3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[540]";
createNode polyMapCut -n "polyMapCut17";
	rename -uid "8D84C8CD-41B4-327B-A821-EE8EF567E76F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[563]";
createNode polyMapCut -n "polyMapCut18";
	rename -uid "CCBB6879-417A-FF5D-3F22-6B8DA4C761BE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[563]";
createNode polyMapCut -n "polyMapCut19";
	rename -uid "1C123ACA-4B3F-C8E2-9693-B9933FB19E08";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[398]" "e[406]" "e[414]" "e[422]" "e[430]" "e[436]" "e[444]" "e[452]" "e[459]" "e[558]";
createNode groupId -n "groupId242";
	rename -uid "1DB6DB7E-4F35-22AC-3FFC-FB8BC7837647";
	setAttr ".ihi" 0;
createNode groupId -n "groupId243";
	rename -uid "3401396B-49CA-DABB-4FF8-95BCED221D75";
	setAttr ".ihi" 0;
createNode groupId -n "groupId244";
	rename -uid "9324A355-4EFB-64FD-9EDA-FF9F7D186DA3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId245";
	rename -uid "19B6F0D2-4FA9-868A-59C1-7789447731D3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId246";
	rename -uid "EC95BC5B-4E15-AA7B-18DB-71AA1639D434";
	setAttr ".ihi" 0;
createNode groupId -n "groupId247";
	rename -uid "9E5997C3-49F8-92D2-FEC6-8ABB4819FB53";
	setAttr ".ihi" 0;
createNode polyNormal -n "polyNormal1";
	rename -uid "1DDC111D-4BE3-5159-7CF7-E5B4C69A2F40";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".unm" no;
createNode groupId -n "groupId250";
	rename -uid "2EE95C26-4E7E-2A30-A12F-B597ACA63C66";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts178";
	rename -uid "0EFEBDB2-4082-C614-A05D-C2B94AB43086";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode polyNormal -n "polyNormal2";
	rename -uid "1B858B63-46BD-2CC9-A608-D696CFD538BC";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".unm" no;
createNode groupId -n "groupId251";
	rename -uid "93F547AE-4F74-0693-FADE-1680E8CB4B9B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts179";
	rename -uid "914083AB-437D-521A-0BEE-ABA9EFE71B69";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0]";
createNode polyNormal -n "polyNormal3";
	rename -uid "FB405C9D-4F33-4849-20E3-50BE7777D764";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".unm" no;
createNode polyNormal -n "polyNormal4";
	rename -uid "9EB6CC2E-4032-F912-AE07-A4B2DF440B15";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".unm" no;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "02FF2FE4-40EA-0E82-8FD6-159715B60F46";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -2772.6189374450705 -2314.8148537978145 ;
	setAttr ".tgi[0].vh" -type "double2" -1294.0475676267893 -683.99455084972976 ;
	setAttr -s 8 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -292.247314453125;
	setAttr ".tgi[0].ni[0].y" -252.408935546875;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" 32.893844604492188;
	setAttr ".tgi[0].ni[1].y" -342.3023681640625;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" -203.87773132324219;
	setAttr ".tgi[0].ni[2].y" -426.51467895507812;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" 262.85714721679687;
	setAttr ".tgi[0].ni[3].y" -65.714286804199219;
	setAttr ".tgi[0].ni[3].nvs" 1923;
	setAttr ".tgi[0].ni[4].x" -514.01373291015625;
	setAttr ".tgi[0].ni[4].y" -616.99224853515625;
	setAttr ".tgi[0].ni[4].nvs" 1923;
	setAttr ".tgi[0].ni[5].x" 1.4285714626312256;
	setAttr ".tgi[0].ni[5].y" -1.4285714626312256;
	setAttr ".tgi[0].ni[5].nvs" 1923;
	setAttr ".tgi[0].ni[6].x" -224.85458374023437;
	setAttr ".tgi[0].ni[6].y" -22.405420303344727;
	setAttr ".tgi[0].ni[6].nvs" 1923;
	setAttr ".tgi[0].ni[7].x" 270.27359008789063;
	setAttr ".tgi[0].ni[7].y" -407.44784545898437;
	setAttr ".tgi[0].ni[7].nvs" 1923;
select -ne :time1;
	setAttr ".o" 107;
	setAttr ".unw" 107;
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
	setAttr -s 9 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 11 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 2 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
	setAttr -s 18 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "groupParts1.og" "polySurfaceShape1.i";
connectAttr "groupId65.id" "polySurfaceShape1.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape1.iog.og[0].gco";
connectAttr "groupParts3.og" "polySurfaceShape2.i";
connectAttr "groupId66.id" "polySurfaceShape2.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape2.iog.og[0].gco";
connectAttr "groupId67.id" "polySurfaceShape2.iog.og[1].gid";
connectAttr "lambert3SG.mwc" "polySurfaceShape2.iog.og[1].gco";
connectAttr "polyMapCut19.out" "polySurfaceShape3.i";
connectAttr "groupId68.id" "polySurfaceShape3.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape3.iog.og[0].gco";
connectAttr "groupParts5.og" "polySurfaceShape4.i";
connectAttr "groupId69.id" "polySurfaceShape4.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape4.iog.og[0].gco";
connectAttr "groupParts6.og" "polySurfaceShape5.i";
connectAttr "groupId70.id" "polySurfaceShape5.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape5.iog.og[0].gco";
connectAttr "groupParts7.og" "polySurfaceShape6.i";
connectAttr "groupId71.id" "polySurfaceShape6.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape6.iog.og[0].gco";
connectAttr "groupParts8.og" "polySurfaceShape7.i";
connectAttr "groupId72.id" "polySurfaceShape7.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape7.iog.og[0].gco";
connectAttr "groupParts9.og" "polySurfaceShape8.i";
connectAttr "groupId73.id" "polySurfaceShape8.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape8.iog.og[0].gco";
connectAttr "groupParts10.og" "polySurfaceShape9.i";
connectAttr "groupId74.id" "polySurfaceShape9.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape9.iog.og[0].gco";
connectAttr "groupParts11.og" "polySurfaceShape10.i";
connectAttr "groupId75.id" "polySurfaceShape10.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape10.iog.og[0].gco";
connectAttr "groupParts12.og" "polySurfaceShape11.i";
connectAttr "groupId76.id" "polySurfaceShape11.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape11.iog.og[0].gco";
connectAttr "groupParts13.og" "polySurfaceShape12.i";
connectAttr "groupId77.id" "polySurfaceShape12.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape12.iog.og[0].gco";
connectAttr "groupParts14.og" "polySurfaceShape13.i";
connectAttr "groupId78.id" "polySurfaceShape13.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape13.iog.og[0].gco";
connectAttr "groupParts15.og" "polySurfaceShape14.i";
connectAttr "groupId79.id" "polySurfaceShape14.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape14.iog.og[0].gco";
connectAttr "groupParts16.og" "polySurfaceShape15.i";
connectAttr "groupId80.id" "polySurfaceShape15.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape15.iog.og[0].gco";
connectAttr "groupParts17.og" "polySurfaceShape16.i";
connectAttr "groupId81.id" "polySurfaceShape16.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape16.iog.og[0].gco";
connectAttr "groupParts18.og" "polySurfaceShape17.i";
connectAttr "groupId82.id" "polySurfaceShape17.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape17.iog.og[0].gco";
connectAttr "groupParts19.og" "polySurfaceShape18.i";
connectAttr "groupId83.id" "polySurfaceShape18.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape18.iog.og[0].gco";
connectAttr "groupParts20.og" "polySurfaceShape19.i";
connectAttr "groupId84.id" "polySurfaceShape19.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape19.iog.og[0].gco";
connectAttr "groupParts21.og" "polySurfaceShape20.i";
connectAttr "groupId85.id" "polySurfaceShape20.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape20.iog.og[0].gco";
connectAttr "groupParts22.og" "polySurfaceShape21.i";
connectAttr "groupId86.id" "polySurfaceShape21.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape21.iog.og[0].gco";
connectAttr "groupParts23.og" "polySurfaceShape22.i";
connectAttr "groupId87.id" "polySurfaceShape22.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape22.iog.og[0].gco";
connectAttr "groupParts24.og" "polySurfaceShape23.i";
connectAttr "groupId88.id" "polySurfaceShape23.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape23.iog.og[0].gco";
connectAttr "groupParts25.og" "polySurfaceShape24.i";
connectAttr "groupId89.id" "polySurfaceShape24.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape24.iog.og[0].gco";
connectAttr "groupParts26.og" "polySurfaceShape25.i";
connectAttr "groupId90.id" "polySurfaceShape25.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape25.iog.og[0].gco";
connectAttr "groupParts27.og" "polySurfaceShape26.i";
connectAttr "groupId91.id" "polySurfaceShape26.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape26.iog.og[0].gco";
connectAttr "groupParts28.og" "polySurfaceShape27.i";
connectAttr "groupId92.id" "polySurfaceShape27.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape27.iog.og[0].gco";
connectAttr "groupParts29.og" "polySurfaceShape28.i";
connectAttr "groupId93.id" "polySurfaceShape28.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape28.iog.og[0].gco";
connectAttr "groupParts30.og" "polySurfaceShape29.i";
connectAttr "groupId94.id" "polySurfaceShape29.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape29.iog.og[0].gco";
connectAttr "groupParts31.og" "polySurfaceShape30.i";
connectAttr "groupId95.id" "polySurfaceShape30.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape30.iog.og[0].gco";
connectAttr "groupParts32.og" "polySurfaceShape31.i";
connectAttr "groupId96.id" "polySurfaceShape31.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape31.iog.og[0].gco";
connectAttr "groupParts33.og" "polySurfaceShape32.i";
connectAttr "groupId97.id" "polySurfaceShape32.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape32.iog.og[0].gco";
connectAttr "groupParts34.og" "polySurfaceShape33.i";
connectAttr "groupId98.id" "polySurfaceShape33.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape33.iog.og[0].gco";
connectAttr "groupParts35.og" "polySurfaceShape34.i";
connectAttr "groupId99.id" "polySurfaceShape34.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape34.iog.og[0].gco";
connectAttr "groupParts36.og" "polySurfaceShape35.i";
connectAttr "groupId100.id" "polySurfaceShape35.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape35.iog.og[0].gco";
connectAttr "groupParts37.og" "polySurfaceShape36.i";
connectAttr "groupId101.id" "polySurfaceShape36.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape36.iog.og[0].gco";
connectAttr "groupParts38.og" "polySurfaceShape37.i";
connectAttr "groupId102.id" "polySurfaceShape37.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape37.iog.og[0].gco";
connectAttr "groupParts39.og" "polySurfaceShape38.i";
connectAttr "groupId103.id" "polySurfaceShape38.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape38.iog.og[0].gco";
connectAttr "groupParts40.og" "polySurfaceShape39.i";
connectAttr "groupId104.id" "polySurfaceShape39.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape39.iog.og[0].gco";
connectAttr "groupParts41.og" "polySurfaceShape40.i";
connectAttr "groupId105.id" "polySurfaceShape40.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape40.iog.og[0].gco";
connectAttr "groupParts42.og" "polySurfaceShape41.i";
connectAttr "groupId106.id" "polySurfaceShape41.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape41.iog.og[0].gco";
connectAttr "groupParts43.og" "polySurfaceShape42.i";
connectAttr "groupId107.id" "polySurfaceShape42.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape42.iog.og[0].gco";
connectAttr "groupParts44.og" "polySurfaceShape43.i";
connectAttr "groupId108.id" "polySurfaceShape43.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape43.iog.og[0].gco";
connectAttr "groupParts45.og" "polySurfaceShape44.i";
connectAttr "groupId109.id" "polySurfaceShape44.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape44.iog.og[0].gco";
connectAttr "groupParts46.og" "polySurfaceShape45.i";
connectAttr "groupId110.id" "polySurfaceShape45.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape45.iog.og[0].gco";
connectAttr "groupParts47.og" "polySurfaceShape46.i";
connectAttr "groupId111.id" "polySurfaceShape46.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape46.iog.og[0].gco";
connectAttr "groupParts48.og" "polySurfaceShape47.i";
connectAttr "groupId112.id" "polySurfaceShape47.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape47.iog.og[0].gco";
connectAttr "groupParts49.og" "polySurfaceShape48.i";
connectAttr "groupId113.id" "polySurfaceShape48.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape48.iog.og[0].gco";
connectAttr "groupParts50.og" "polySurfaceShape49.i";
connectAttr "groupId114.id" "polySurfaceShape49.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape49.iog.og[0].gco";
connectAttr "groupParts51.og" "polySurfaceShape50.i";
connectAttr "groupId115.id" "polySurfaceShape50.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape50.iog.og[0].gco";
connectAttr "groupParts52.og" "polySurfaceShape51.i";
connectAttr "groupId116.id" "polySurfaceShape51.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape51.iog.og[0].gco";
connectAttr "groupParts53.og" "polySurfaceShape52.i";
connectAttr "groupId117.id" "polySurfaceShape52.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape52.iog.og[0].gco";
connectAttr "groupParts54.og" "polySurfaceShape53.i";
connectAttr "groupId118.id" "polySurfaceShape53.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape53.iog.og[0].gco";
connectAttr "groupParts55.og" "polySurfaceShape54.i";
connectAttr "groupId119.id" "polySurfaceShape54.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape54.iog.og[0].gco";
connectAttr "groupParts56.og" "polySurfaceShape55.i";
connectAttr "groupId120.id" "polySurfaceShape55.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape55.iog.og[0].gco";
connectAttr "groupParts57.og" "polySurfaceShape56.i";
connectAttr "groupId121.id" "polySurfaceShape56.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape56.iog.og[0].gco";
connectAttr "groupParts58.og" "polySurfaceShape57.i";
connectAttr "groupId122.id" "polySurfaceShape57.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape57.iog.og[0].gco";
connectAttr "groupParts59.og" "polySurfaceShape58.i";
connectAttr "groupId123.id" "polySurfaceShape58.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape58.iog.og[0].gco";
connectAttr "groupParts61.og" "polySurfaceShape60.i";
connectAttr "groupId125.id" "polySurfaceShape60.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape60.iog.og[0].gco";
connectAttr "polyNormal4.out" "polySurfaceShape62.i";
connectAttr "groupId127.id" "polySurfaceShape62.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape62.iog.og[0].gco";
connectAttr "groupParts64.og" "polySurfaceShape63.i";
connectAttr "groupId128.id" "polySurfaceShape63.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape63.iog.og[0].gco";
connectAttr "polyNormal3.out" "polySurfaceShape64.i";
connectAttr "groupId129.id" "polySurfaceShape64.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape64.iog.og[0].gco";
connectAttr "groupParts66.og" "polySurfaceShape65.i";
connectAttr "groupId130.id" "polySurfaceShape65.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape65.iog.og[0].gco";
connectAttr "groupParts67.og" "polySurfaceShape66.i";
connectAttr "groupId131.id" "polySurfaceShape66.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape66.iog.og[0].gco";
connectAttr "groupParts68.og" "polySurfaceShape67.i";
connectAttr "groupId132.id" "polySurfaceShape67.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape67.iog.og[0].gco";
connectAttr "groupParts69.og" "polySurfaceShape68.i";
connectAttr "groupId133.id" "polySurfaceShape68.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape68.iog.og[0].gco";
connectAttr "groupParts70.og" "polySurfaceShape69.i";
connectAttr "groupId134.id" "polySurfaceShape69.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape69.iog.og[0].gco";
connectAttr "groupParts71.og" "polySurfaceShape70.i";
connectAttr "groupId135.id" "polySurfaceShape70.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape70.iog.og[0].gco";
connectAttr "groupParts72.og" "polySurfaceShape71.i";
connectAttr "groupId136.id" "polySurfaceShape71.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape71.iog.og[0].gco";
connectAttr "groupParts73.og" "polySurfaceShape72.i";
connectAttr "groupId137.id" "polySurfaceShape72.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape72.iog.og[0].gco";
connectAttr "groupParts74.og" "polySurfaceShape73.i";
connectAttr "groupId138.id" "polySurfaceShape73.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape73.iog.og[0].gco";
connectAttr "groupParts75.og" "polySurfaceShape74.i";
connectAttr "groupId139.id" "polySurfaceShape74.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape74.iog.og[0].gco";
connectAttr "groupParts76.og" "polySurfaceShape75.i";
connectAttr "groupId140.id" "polySurfaceShape75.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape75.iog.og[0].gco";
connectAttr "groupParts77.og" "polySurfaceShape76.i";
connectAttr "groupId141.id" "polySurfaceShape76.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape76.iog.og[0].gco";
connectAttr "groupParts78.og" "polySurfaceShape77.i";
connectAttr "groupId142.id" "polySurfaceShape77.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape77.iog.og[0].gco";
connectAttr "groupParts79.og" "polySurfaceShape78.i";
connectAttr "groupId143.id" "polySurfaceShape78.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape78.iog.og[0].gco";
connectAttr "groupParts80.og" "polySurfaceShape79.i";
connectAttr "groupId144.id" "polySurfaceShape79.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape79.iog.og[0].gco";
connectAttr "groupParts81.og" "polySurfaceShape80.i";
connectAttr "groupId145.id" "polySurfaceShape80.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape80.iog.og[0].gco";
connectAttr "groupParts82.og" "polySurfaceShape81.i";
connectAttr "groupId146.id" "polySurfaceShape81.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape81.iog.og[0].gco";
connectAttr "groupParts83.og" "polySurfaceShape82.i";
connectAttr "groupId147.id" "polySurfaceShape82.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape82.iog.og[0].gco";
connectAttr "groupParts84.og" "polySurfaceShape83.i";
connectAttr "groupId148.id" "polySurfaceShape83.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape83.iog.og[0].gco";
connectAttr "groupParts85.og" "polySurfaceShape84.i";
connectAttr "groupId149.id" "polySurfaceShape84.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape84.iog.og[0].gco";
connectAttr "groupParts86.og" "polySurfaceShape85.i";
connectAttr "groupId150.id" "polySurfaceShape85.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape85.iog.og[0].gco";
connectAttr "groupParts87.og" "polySurfaceShape86.i";
connectAttr "groupId151.id" "polySurfaceShape86.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape86.iog.og[0].gco";
connectAttr "groupParts88.og" "polySurfaceShape87.i";
connectAttr "groupId152.id" "polySurfaceShape87.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape87.iog.og[0].gco";
connectAttr "groupParts89.og" "polySurfaceShape88.i";
connectAttr "groupId153.id" "polySurfaceShape88.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape88.iog.og[0].gco";
connectAttr "groupParts90.og" "polySurfaceShape89.i";
connectAttr "groupId154.id" "polySurfaceShape89.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape89.iog.og[0].gco";
connectAttr "polyMapCut17.out" "polySurfaceShape90.i";
connectAttr "groupId155.id" "polySurfaceShape90.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape90.iog.og[0].gco";
connectAttr "groupParts92.og" "polySurfaceShape91.i";
connectAttr "groupId156.id" "polySurfaceShape91.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape91.iog.og[0].gco";
connectAttr "groupParts93.og" "polySurfaceShape92.i";
connectAttr "groupId157.id" "polySurfaceShape92.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape92.iog.og[0].gco";
connectAttr "groupParts94.og" "polySurfaceShape93.i";
connectAttr "groupId158.id" "polySurfaceShape93.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape93.iog.og[0].gco";
connectAttr "groupParts95.og" "polySurfaceShape94.i";
connectAttr "groupId159.id" "polySurfaceShape94.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape94.iog.og[0].gco";
connectAttr "groupParts96.og" "polySurfaceShape95.i";
connectAttr "groupId160.id" "polySurfaceShape95.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape95.iog.og[0].gco";
connectAttr "groupParts97.og" "polySurfaceShape96.i";
connectAttr "groupId161.id" "polySurfaceShape96.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape96.iog.og[0].gco";
connectAttr "groupParts98.og" "polySurfaceShape97.i";
connectAttr "groupId162.id" "polySurfaceShape97.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape97.iog.og[0].gco";
connectAttr "groupParts99.og" "polySurfaceShape98.i";
connectAttr "groupId163.id" "polySurfaceShape98.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape98.iog.og[0].gco";
connectAttr "groupParts100.og" "polySurfaceShape99.i";
connectAttr "groupId164.id" "polySurfaceShape99.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape99.iog.og[0].gco";
connectAttr "groupParts101.og" "polySurfaceShape100.i";
connectAttr "groupId165.id" "polySurfaceShape100.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape100.iog.og[0].gco";
connectAttr "groupParts102.og" "polySurfaceShape101.i";
connectAttr "groupId166.id" "polySurfaceShape101.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape101.iog.og[0].gco";
connectAttr "groupParts103.og" "polySurfaceShape102.i";
connectAttr "groupId167.id" "polySurfaceShape102.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape102.iog.og[0].gco";
connectAttr "groupParts104.og" "polySurfaceShape103.i";
connectAttr "groupId168.id" "polySurfaceShape103.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape103.iog.og[0].gco";
connectAttr "groupParts105.og" "polySurfaceShape104.i";
connectAttr "groupId169.id" "polySurfaceShape104.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape104.iog.og[0].gco";
connectAttr "groupParts106.og" "polySurfaceShape105.i";
connectAttr "groupId170.id" "polySurfaceShape105.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape105.iog.og[0].gco";
connectAttr "groupParts107.og" "polySurfaceShape106.i";
connectAttr "groupId171.id" "polySurfaceShape106.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape106.iog.og[0].gco";
connectAttr "groupParts108.og" "polySurfaceShape107.i";
connectAttr "groupId172.id" "polySurfaceShape107.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape107.iog.og[0].gco";
connectAttr "groupParts109.og" "polySurfaceShape108.i";
connectAttr "groupId173.id" "polySurfaceShape108.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape108.iog.og[0].gco";
connectAttr "groupParts110.og" "polySurfaceShape109.i";
connectAttr "groupId174.id" "polySurfaceShape109.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape109.iog.og[0].gco";
connectAttr "groupParts111.og" "polySurfaceShape110.i";
connectAttr "groupId175.id" "polySurfaceShape110.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape110.iog.og[0].gco";
connectAttr "groupParts112.og" "polySurfaceShape111.i";
connectAttr "groupId176.id" "polySurfaceShape111.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape111.iog.og[0].gco";
connectAttr "groupParts113.og" "polySurfaceShape112.i";
connectAttr "groupId177.id" "polySurfaceShape112.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape112.iog.og[0].gco";
connectAttr "groupParts114.og" "polySurfaceShape113.i";
connectAttr "groupId178.id" "polySurfaceShape113.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape113.iog.og[0].gco";
connectAttr "groupParts115.og" "polySurfaceShape114.i";
connectAttr "groupId179.id" "polySurfaceShape114.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape114.iog.og[0].gco";
connectAttr "groupParts116.og" "polySurfaceShape115.i";
connectAttr "groupId180.id" "polySurfaceShape115.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape115.iog.og[0].gco";
connectAttr "groupParts117.og" "polySurfaceShape116.i";
connectAttr "groupId181.id" "polySurfaceShape116.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape116.iog.og[0].gco";
connectAttr "groupParts118.og" "polySurfaceShape117.i";
connectAttr "groupId182.id" "polySurfaceShape117.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape117.iog.og[0].gco";
connectAttr "groupParts119.og" "polySurfaceShape118.i";
connectAttr "groupId183.id" "polySurfaceShape118.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape118.iog.og[0].gco";
connectAttr "groupParts120.og" "polySurfaceShape119.i";
connectAttr "groupId184.id" "polySurfaceShape119.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape119.iog.og[0].gco";
connectAttr "groupParts121.og" "polySurfaceShape120.i";
connectAttr "groupId185.id" "polySurfaceShape120.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape120.iog.og[0].gco";
connectAttr "groupParts122.og" "polySurfaceShape121.i";
connectAttr "groupId186.id" "polySurfaceShape121.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape121.iog.og[0].gco";
connectAttr "groupParts123.og" "polySurfaceShape122.i";
connectAttr "groupId187.id" "polySurfaceShape122.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape122.iog.og[0].gco";
connectAttr "groupParts124.og" "polySurfaceShape123.i";
connectAttr "groupId188.id" "polySurfaceShape123.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape123.iog.og[0].gco";
connectAttr "groupParts125.og" "polySurfaceShape124.i";
connectAttr "groupId189.id" "polySurfaceShape124.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape124.iog.og[0].gco";
connectAttr "groupParts126.og" "polySurfaceShape125.i";
connectAttr "groupId190.id" "polySurfaceShape125.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape125.iog.og[0].gco";
connectAttr "groupParts127.og" "polySurfaceShape126.i";
connectAttr "groupId191.id" "polySurfaceShape126.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape126.iog.og[0].gco";
connectAttr "groupParts128.og" "polySurfaceShape127.i";
connectAttr "groupId192.id" "polySurfaceShape127.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape127.iog.og[0].gco";
connectAttr "groupParts129.og" "polySurfaceShape128.i";
connectAttr "groupId193.id" "polySurfaceShape128.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape128.iog.og[0].gco";
connectAttr "groupParts130.og" "polySurfaceShape129.i";
connectAttr "groupId194.id" "polySurfaceShape129.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape129.iog.og[0].gco";
connectAttr "groupParts131.og" "polySurfaceShape130.i";
connectAttr "groupId195.id" "polySurfaceShape130.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape130.iog.og[0].gco";
connectAttr "groupParts132.og" "polySurfaceShape131.i";
connectAttr "groupId196.id" "polySurfaceShape131.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape131.iog.og[0].gco";
connectAttr "groupParts133.og" "polySurfaceShape132.i";
connectAttr "groupId197.id" "polySurfaceShape132.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape132.iog.og[0].gco";
connectAttr "groupParts134.og" "polySurfaceShape133.i";
connectAttr "groupId198.id" "polySurfaceShape133.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape133.iog.og[0].gco";
connectAttr "groupParts135.og" "polySurfaceShape134.i";
connectAttr "groupId199.id" "polySurfaceShape134.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape134.iog.og[0].gco";
connectAttr "groupParts136.og" "polySurfaceShape135.i";
connectAttr "groupId200.id" "polySurfaceShape135.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape135.iog.og[0].gco";
connectAttr "groupParts137.og" "polySurfaceShape136.i";
connectAttr "groupId201.id" "polySurfaceShape136.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape136.iog.og[0].gco";
connectAttr "groupParts138.og" "polySurfaceShape137.i";
connectAttr "groupId202.id" "polySurfaceShape137.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape137.iog.og[0].gco";
connectAttr "groupParts139.og" "polySurfaceShape138.i";
connectAttr "groupId203.id" "polySurfaceShape138.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape138.iog.og[0].gco";
connectAttr "groupParts140.og" "polySurfaceShape139.i";
connectAttr "groupId204.id" "polySurfaceShape139.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape139.iog.og[0].gco";
connectAttr "groupParts141.og" "polySurfaceShape140.i";
connectAttr "groupId205.id" "polySurfaceShape140.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape140.iog.og[0].gco";
connectAttr "groupParts142.og" "polySurfaceShape141.i";
connectAttr "groupId206.id" "polySurfaceShape141.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape141.iog.og[0].gco";
connectAttr "groupParts143.og" "polySurfaceShape142.i";
connectAttr "groupId207.id" "polySurfaceShape142.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape142.iog.og[0].gco";
connectAttr "groupParts144.og" "polySurfaceShape143.i";
connectAttr "groupId208.id" "polySurfaceShape143.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape143.iog.og[0].gco";
connectAttr "groupParts145.og" "polySurfaceShape144.i";
connectAttr "groupId209.id" "polySurfaceShape144.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape144.iog.og[0].gco";
connectAttr "groupParts146.og" "polySurfaceShape145.i";
connectAttr "groupId210.id" "polySurfaceShape145.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape145.iog.og[0].gco";
connectAttr "groupParts147.og" "polySurfaceShape146.i";
connectAttr "groupId211.id" "polySurfaceShape146.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape146.iog.og[0].gco";
connectAttr "groupParts148.og" "polySurfaceShape147.i";
connectAttr "groupId212.id" "polySurfaceShape147.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape147.iog.og[0].gco";
connectAttr "groupParts149.og" "polySurfaceShape148.i";
connectAttr "groupId213.id" "polySurfaceShape148.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape148.iog.og[0].gco";
connectAttr "groupParts150.og" "polySurfaceShape149.i";
connectAttr "groupId214.id" "polySurfaceShape149.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape149.iog.og[0].gco";
connectAttr "groupParts151.og" "polySurfaceShape150.i";
connectAttr "groupId215.id" "polySurfaceShape150.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape150.iog.og[0].gco";
connectAttr "groupParts152.og" "polySurfaceShape151.i";
connectAttr "groupId216.id" "polySurfaceShape151.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape151.iog.og[0].gco";
connectAttr "groupParts153.og" "polySurfaceShape152.i";
connectAttr "groupId217.id" "polySurfaceShape152.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape152.iog.og[0].gco";
connectAttr "groupParts154.og" "polySurfaceShape153.i";
connectAttr "groupId218.id" "polySurfaceShape153.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape153.iog.og[0].gco";
connectAttr "groupParts155.og" "polySurfaceShape154.i";
connectAttr "groupId219.id" "polySurfaceShape154.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape154.iog.og[0].gco";
connectAttr "groupParts156.og" "polySurfaceShape155.i";
connectAttr "groupId220.id" "polySurfaceShape155.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape155.iog.og[0].gco";
connectAttr "groupParts157.og" "polySurfaceShape156.i";
connectAttr "groupId221.id" "polySurfaceShape156.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape156.iog.og[0].gco";
connectAttr "groupParts158.og" "polySurfaceShape157.i";
connectAttr "groupId222.id" "polySurfaceShape157.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape157.iog.og[0].gco";
connectAttr "groupParts159.og" "polySurfaceShape158.i";
connectAttr "groupId223.id" "polySurfaceShape158.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape158.iog.og[0].gco";
connectAttr "groupParts160.og" "polySurfaceShape159.i";
connectAttr "groupId224.id" "polySurfaceShape159.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape159.iog.og[0].gco";
connectAttr "groupParts161.og" "polySurfaceShape160.i";
connectAttr "groupId225.id" "polySurfaceShape160.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape160.iog.og[0].gco";
connectAttr "groupParts162.og" "polySurfaceShape161.i";
connectAttr "groupId226.id" "polySurfaceShape161.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape161.iog.og[0].gco";
connectAttr "groupParts163.og" "polySurfaceShape162.i";
connectAttr "groupId227.id" "polySurfaceShape162.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape162.iog.og[0].gco";
connectAttr "groupParts164.og" "polySurfaceShape163.i";
connectAttr "groupId228.id" "polySurfaceShape163.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape163.iog.og[0].gco";
connectAttr "groupParts165.og" "polySurfaceShape164.i";
connectAttr "groupId229.id" "polySurfaceShape164.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape164.iog.og[0].gco";
connectAttr "groupParts166.og" "polySurfaceShape165.i";
connectAttr "groupId230.id" "polySurfaceShape165.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape165.iog.og[0].gco";
connectAttr "groupParts167.og" "polySurfaceShape166.i";
connectAttr "groupId231.id" "polySurfaceShape166.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape166.iog.og[0].gco";
connectAttr "groupParts168.og" "polySurfaceShape167.i";
connectAttr "groupId232.id" "polySurfaceShape167.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape167.iog.og[0].gco";
connectAttr "groupParts169.og" "polySurfaceShape168.i";
connectAttr "groupId233.id" "polySurfaceShape168.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape168.iog.og[0].gco";
connectAttr "groupParts170.og" "polySurfaceShape169.i";
connectAttr "groupId234.id" "polySurfaceShape169.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape169.iog.og[0].gco";
connectAttr "groupParts171.og" "polySurfaceShape170.i";
connectAttr "groupId235.id" "polySurfaceShape170.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape170.iog.og[0].gco";
connectAttr "groupParts172.og" "polySurfaceShape171.i";
connectAttr "groupId236.id" "polySurfaceShape171.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape171.iog.og[0].gco";
connectAttr "groupParts173.og" "polySurfaceShape172.i";
connectAttr "groupId237.id" "polySurfaceShape172.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape172.iog.og[0].gco";
connectAttr "groupParts174.og" "polySurfaceShape173.i";
connectAttr "groupId238.id" "polySurfaceShape173.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape173.iog.og[0].gco";
connectAttr "groupParts175.og" "polySurfaceShape174.i";
connectAttr "groupId239.id" "polySurfaceShape174.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape174.iog.og[0].gco";
connectAttr "groupParts176.og" "polySurfaceShape175.i";
connectAttr "groupId240.id" "polySurfaceShape175.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape175.iog.og[0].gco";
connectAttr "groupParts177.og" "polySurfaceShape176.i";
connectAttr "groupId241.id" "polySurfaceShape176.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape176.iog.og[0].gco";
connectAttr "groupId62.id" "polySurface_craneShape.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurface_craneShape.iog.og[0].gco";
connectAttr "groupId64.id" "polySurface_craneShape.iog.og[1].gid";
connectAttr "lambert3SG.mwc" "polySurface_craneShape.iog.og[1].gco";
connectAttr "groupId63.id" "polySurface_craneShape.ciog.cog[0].cgid";
connectAttr "groupId242.id" "polySurfaceShape177.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape177.iog.og[0].gco";
connectAttr "groupId243.id" "polySurfaceShape178.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape178.iog.og[0].gco";
connectAttr "groupId244.id" "polySurfaceShape179.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape179.iog.og[0].gco";
connectAttr "groupId245.id" "polySurfaceShape180.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape180.iog.og[0].gco";
connectAttr "groupId246.id" "polySurfaceShape181.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape181.iog.og[0].gco";
connectAttr "groupId247.id" "polySurfaceShape182.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape182.iog.og[0].gco";
connectAttr "polyNormal1.out" "polySurfaceShape183.i";
connectAttr "groupId250.id" "polySurfaceShape183.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape183.iog.og[0].gco";
connectAttr "polyNormal2.out" "polySurfaceShape184.i";
connectAttr "groupId251.id" "polySurfaceShape184.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape184.iog.og[0].gco";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "scene_arena_lilith_03_lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "cerisier_lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "scene_arena_lilith_03_scene_arena_lilith_03_lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "skull_02_lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "scene_arena_lilith_03_lambert2SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "scene_arena_lilith_03_lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "cerisier_lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "scene_arena_lilith_03_scene_arena_lilith_03_lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "skull_02_lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "scene_arena_lilith_03_lambert2SG1.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "psdFileTex1.oc" "lambert2.c";
connectAttr "psdFileTex1.ot" "lambert2.it";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "polySurface_craneShape.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurface_craneShape.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape1.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape2.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape3.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape4.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape5.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape6.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape7.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape8.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape9.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape10.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape11.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape12.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape13.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape14.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape15.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape16.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape17.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape18.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape19.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape20.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape21.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape22.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape23.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape24.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape25.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape26.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape27.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape28.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape29.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape30.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape31.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape32.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape33.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape34.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape35.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape36.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape37.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape38.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape39.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape40.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape41.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape42.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape43.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape44.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape45.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape46.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape47.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape48.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape49.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape50.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape51.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape52.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape53.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape54.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape55.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape56.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape57.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape58.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape60.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape62.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape63.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape64.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape65.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape66.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape67.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape68.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape69.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape70.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape71.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape72.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape73.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape74.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape75.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape76.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape77.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape78.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape79.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape80.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape81.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape82.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape83.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape84.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape85.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape86.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape87.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape88.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape89.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape90.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape91.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape92.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape93.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape94.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape95.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape96.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape97.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape98.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape99.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape100.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape101.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape102.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape103.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape104.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape105.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape106.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape107.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape108.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape109.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape110.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape111.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape112.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape113.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape114.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape115.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape116.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape117.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape118.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape119.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape120.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape121.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape122.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape123.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape124.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape125.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape126.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape127.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape128.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape129.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape130.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape131.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape132.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape133.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape134.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape135.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape136.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape137.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape138.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape139.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape140.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape141.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape142.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape143.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape144.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape145.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape146.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape147.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape148.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape149.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape150.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape151.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape152.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape153.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape154.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape155.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape156.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape157.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape158.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape159.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape160.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape161.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape162.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape163.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape164.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape165.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape166.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape167.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape168.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape169.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape170.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape171.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape172.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape173.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape174.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape175.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape176.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape177.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape178.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape179.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape180.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape181.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape182.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape183.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape184.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "groupId62.msg" "lambert2SG.gn" -na;
connectAttr "groupId63.msg" "lambert2SG.gn" -na;
connectAttr "groupId65.msg" "lambert2SG.gn" -na;
connectAttr "groupId66.msg" "lambert2SG.gn" -na;
connectAttr "groupId68.msg" "lambert2SG.gn" -na;
connectAttr "groupId69.msg" "lambert2SG.gn" -na;
connectAttr "groupId70.msg" "lambert2SG.gn" -na;
connectAttr "groupId71.msg" "lambert2SG.gn" -na;
connectAttr "groupId72.msg" "lambert2SG.gn" -na;
connectAttr "groupId73.msg" "lambert2SG.gn" -na;
connectAttr "groupId74.msg" "lambert2SG.gn" -na;
connectAttr "groupId75.msg" "lambert2SG.gn" -na;
connectAttr "groupId76.msg" "lambert2SG.gn" -na;
connectAttr "groupId77.msg" "lambert2SG.gn" -na;
connectAttr "groupId78.msg" "lambert2SG.gn" -na;
connectAttr "groupId79.msg" "lambert2SG.gn" -na;
connectAttr "groupId80.msg" "lambert2SG.gn" -na;
connectAttr "groupId81.msg" "lambert2SG.gn" -na;
connectAttr "groupId82.msg" "lambert2SG.gn" -na;
connectAttr "groupId83.msg" "lambert2SG.gn" -na;
connectAttr "groupId84.msg" "lambert2SG.gn" -na;
connectAttr "groupId85.msg" "lambert2SG.gn" -na;
connectAttr "groupId86.msg" "lambert2SG.gn" -na;
connectAttr "groupId87.msg" "lambert2SG.gn" -na;
connectAttr "groupId88.msg" "lambert2SG.gn" -na;
connectAttr "groupId89.msg" "lambert2SG.gn" -na;
connectAttr "groupId90.msg" "lambert2SG.gn" -na;
connectAttr "groupId91.msg" "lambert2SG.gn" -na;
connectAttr "groupId92.msg" "lambert2SG.gn" -na;
connectAttr "groupId93.msg" "lambert2SG.gn" -na;
connectAttr "groupId94.msg" "lambert2SG.gn" -na;
connectAttr "groupId95.msg" "lambert2SG.gn" -na;
connectAttr "groupId96.msg" "lambert2SG.gn" -na;
connectAttr "groupId97.msg" "lambert2SG.gn" -na;
connectAttr "groupId98.msg" "lambert2SG.gn" -na;
connectAttr "groupId99.msg" "lambert2SG.gn" -na;
connectAttr "groupId100.msg" "lambert2SG.gn" -na;
connectAttr "groupId101.msg" "lambert2SG.gn" -na;
connectAttr "groupId102.msg" "lambert2SG.gn" -na;
connectAttr "groupId103.msg" "lambert2SG.gn" -na;
connectAttr "groupId104.msg" "lambert2SG.gn" -na;
connectAttr "groupId105.msg" "lambert2SG.gn" -na;
connectAttr "groupId106.msg" "lambert2SG.gn" -na;
connectAttr "groupId107.msg" "lambert2SG.gn" -na;
connectAttr "groupId108.msg" "lambert2SG.gn" -na;
connectAttr "groupId109.msg" "lambert2SG.gn" -na;
connectAttr "groupId110.msg" "lambert2SG.gn" -na;
connectAttr "groupId111.msg" "lambert2SG.gn" -na;
connectAttr "groupId112.msg" "lambert2SG.gn" -na;
connectAttr "groupId113.msg" "lambert2SG.gn" -na;
connectAttr "groupId114.msg" "lambert2SG.gn" -na;
connectAttr "groupId115.msg" "lambert2SG.gn" -na;
connectAttr "groupId116.msg" "lambert2SG.gn" -na;
connectAttr "groupId117.msg" "lambert2SG.gn" -na;
connectAttr "groupId118.msg" "lambert2SG.gn" -na;
connectAttr "groupId119.msg" "lambert2SG.gn" -na;
connectAttr "groupId120.msg" "lambert2SG.gn" -na;
connectAttr "groupId121.msg" "lambert2SG.gn" -na;
connectAttr "groupId122.msg" "lambert2SG.gn" -na;
connectAttr "groupId123.msg" "lambert2SG.gn" -na;
connectAttr "groupId125.msg" "lambert2SG.gn" -na;
connectAttr "groupId127.msg" "lambert2SG.gn" -na;
connectAttr "groupId128.msg" "lambert2SG.gn" -na;
connectAttr "groupId129.msg" "lambert2SG.gn" -na;
connectAttr "groupId130.msg" "lambert2SG.gn" -na;
connectAttr "groupId131.msg" "lambert2SG.gn" -na;
connectAttr "groupId132.msg" "lambert2SG.gn" -na;
connectAttr "groupId133.msg" "lambert2SG.gn" -na;
connectAttr "groupId134.msg" "lambert2SG.gn" -na;
connectAttr "groupId135.msg" "lambert2SG.gn" -na;
connectAttr "groupId136.msg" "lambert2SG.gn" -na;
connectAttr "groupId137.msg" "lambert2SG.gn" -na;
connectAttr "groupId138.msg" "lambert2SG.gn" -na;
connectAttr "groupId139.msg" "lambert2SG.gn" -na;
connectAttr "groupId140.msg" "lambert2SG.gn" -na;
connectAttr "groupId141.msg" "lambert2SG.gn" -na;
connectAttr "groupId142.msg" "lambert2SG.gn" -na;
connectAttr "groupId143.msg" "lambert2SG.gn" -na;
connectAttr "groupId144.msg" "lambert2SG.gn" -na;
connectAttr "groupId145.msg" "lambert2SG.gn" -na;
connectAttr "groupId146.msg" "lambert2SG.gn" -na;
connectAttr "groupId147.msg" "lambert2SG.gn" -na;
connectAttr "groupId148.msg" "lambert2SG.gn" -na;
connectAttr "groupId149.msg" "lambert2SG.gn" -na;
connectAttr "groupId150.msg" "lambert2SG.gn" -na;
connectAttr "groupId151.msg" "lambert2SG.gn" -na;
connectAttr "groupId152.msg" "lambert2SG.gn" -na;
connectAttr "groupId153.msg" "lambert2SG.gn" -na;
connectAttr "groupId154.msg" "lambert2SG.gn" -na;
connectAttr "groupId155.msg" "lambert2SG.gn" -na;
connectAttr "groupId156.msg" "lambert2SG.gn" -na;
connectAttr "groupId157.msg" "lambert2SG.gn" -na;
connectAttr "groupId158.msg" "lambert2SG.gn" -na;
connectAttr "groupId159.msg" "lambert2SG.gn" -na;
connectAttr "groupId160.msg" "lambert2SG.gn" -na;
connectAttr "groupId161.msg" "lambert2SG.gn" -na;
connectAttr "groupId162.msg" "lambert2SG.gn" -na;
connectAttr "groupId163.msg" "lambert2SG.gn" -na;
connectAttr "groupId164.msg" "lambert2SG.gn" -na;
connectAttr "groupId165.msg" "lambert2SG.gn" -na;
connectAttr "groupId166.msg" "lambert2SG.gn" -na;
connectAttr "groupId167.msg" "lambert2SG.gn" -na;
connectAttr "groupId168.msg" "lambert2SG.gn" -na;
connectAttr "groupId169.msg" "lambert2SG.gn" -na;
connectAttr "groupId170.msg" "lambert2SG.gn" -na;
connectAttr "groupId171.msg" "lambert2SG.gn" -na;
connectAttr "groupId172.msg" "lambert2SG.gn" -na;
connectAttr "groupId173.msg" "lambert2SG.gn" -na;
connectAttr "groupId174.msg" "lambert2SG.gn" -na;
connectAttr "groupId175.msg" "lambert2SG.gn" -na;
connectAttr "groupId176.msg" "lambert2SG.gn" -na;
connectAttr "groupId177.msg" "lambert2SG.gn" -na;
connectAttr "groupId178.msg" "lambert2SG.gn" -na;
connectAttr "groupId179.msg" "lambert2SG.gn" -na;
connectAttr "groupId180.msg" "lambert2SG.gn" -na;
connectAttr "groupId181.msg" "lambert2SG.gn" -na;
connectAttr "groupId182.msg" "lambert2SG.gn" -na;
connectAttr "groupId183.msg" "lambert2SG.gn" -na;
connectAttr "groupId184.msg" "lambert2SG.gn" -na;
connectAttr "groupId185.msg" "lambert2SG.gn" -na;
connectAttr "groupId186.msg" "lambert2SG.gn" -na;
connectAttr "groupId187.msg" "lambert2SG.gn" -na;
connectAttr "groupId188.msg" "lambert2SG.gn" -na;
connectAttr "groupId189.msg" "lambert2SG.gn" -na;
connectAttr "groupId190.msg" "lambert2SG.gn" -na;
connectAttr "groupId191.msg" "lambert2SG.gn" -na;
connectAttr "groupId192.msg" "lambert2SG.gn" -na;
connectAttr "groupId193.msg" "lambert2SG.gn" -na;
connectAttr "groupId194.msg" "lambert2SG.gn" -na;
connectAttr "groupId195.msg" "lambert2SG.gn" -na;
connectAttr "groupId196.msg" "lambert2SG.gn" -na;
connectAttr "groupId197.msg" "lambert2SG.gn" -na;
connectAttr "groupId198.msg" "lambert2SG.gn" -na;
connectAttr "groupId199.msg" "lambert2SG.gn" -na;
connectAttr "groupId200.msg" "lambert2SG.gn" -na;
connectAttr "groupId201.msg" "lambert2SG.gn" -na;
connectAttr "groupId202.msg" "lambert2SG.gn" -na;
connectAttr "groupId203.msg" "lambert2SG.gn" -na;
connectAttr "groupId204.msg" "lambert2SG.gn" -na;
connectAttr "groupId205.msg" "lambert2SG.gn" -na;
connectAttr "groupId206.msg" "lambert2SG.gn" -na;
connectAttr "groupId207.msg" "lambert2SG.gn" -na;
connectAttr "groupId208.msg" "lambert2SG.gn" -na;
connectAttr "groupId209.msg" "lambert2SG.gn" -na;
connectAttr "groupId210.msg" "lambert2SG.gn" -na;
connectAttr "groupId211.msg" "lambert2SG.gn" -na;
connectAttr "groupId212.msg" "lambert2SG.gn" -na;
connectAttr "groupId213.msg" "lambert2SG.gn" -na;
connectAttr "groupId214.msg" "lambert2SG.gn" -na;
connectAttr "groupId215.msg" "lambert2SG.gn" -na;
connectAttr "groupId216.msg" "lambert2SG.gn" -na;
connectAttr "groupId217.msg" "lambert2SG.gn" -na;
connectAttr "groupId218.msg" "lambert2SG.gn" -na;
connectAttr "groupId219.msg" "lambert2SG.gn" -na;
connectAttr "groupId220.msg" "lambert2SG.gn" -na;
connectAttr "groupId221.msg" "lambert2SG.gn" -na;
connectAttr "groupId222.msg" "lambert2SG.gn" -na;
connectAttr "groupId223.msg" "lambert2SG.gn" -na;
connectAttr "groupId224.msg" "lambert2SG.gn" -na;
connectAttr "groupId225.msg" "lambert2SG.gn" -na;
connectAttr "groupId226.msg" "lambert2SG.gn" -na;
connectAttr "groupId227.msg" "lambert2SG.gn" -na;
connectAttr "groupId228.msg" "lambert2SG.gn" -na;
connectAttr "groupId229.msg" "lambert2SG.gn" -na;
connectAttr "groupId230.msg" "lambert2SG.gn" -na;
connectAttr "groupId231.msg" "lambert2SG.gn" -na;
connectAttr "groupId232.msg" "lambert2SG.gn" -na;
connectAttr "groupId233.msg" "lambert2SG.gn" -na;
connectAttr "groupId234.msg" "lambert2SG.gn" -na;
connectAttr "groupId235.msg" "lambert2SG.gn" -na;
connectAttr "groupId236.msg" "lambert2SG.gn" -na;
connectAttr "groupId237.msg" "lambert2SG.gn" -na;
connectAttr "groupId238.msg" "lambert2SG.gn" -na;
connectAttr "groupId239.msg" "lambert2SG.gn" -na;
connectAttr "groupId240.msg" "lambert2SG.gn" -na;
connectAttr "groupId241.msg" "lambert2SG.gn" -na;
connectAttr "groupId242.msg" "lambert2SG.gn" -na;
connectAttr "groupId243.msg" "lambert2SG.gn" -na;
connectAttr "groupId244.msg" "lambert2SG.gn" -na;
connectAttr "groupId245.msg" "lambert2SG.gn" -na;
connectAttr "groupId246.msg" "lambert2SG.gn" -na;
connectAttr "groupId247.msg" "lambert2SG.gn" -na;
connectAttr "groupId250.msg" "lambert2SG.gn" -na;
connectAttr "groupId251.msg" "lambert2SG.gn" -na;
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
connectAttr "psdFileTex2.oc" "lambert3.c";
connectAttr "psdFileTex2.ot" "lambert3.it";
connectAttr "lambert3.oc" "lambert3SG.ss";
connectAttr "polySurface_craneShape.iog.og[1]" "lambert3SG.dsm" -na;
connectAttr "polySurfaceShape2.iog.og[1]" "lambert3SG.dsm" -na;
connectAttr "groupId64.msg" "lambert3SG.gn" -na;
connectAttr "groupId67.msg" "lambert3SG.gn" -na;
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
connectAttr "scene_arena_lilith_03_lambert2.oc" "scene_arena_lilith_03_lambert2SG.ss"
		;
connectAttr "scene_arena_lilith_03_lambert2SG.msg" "scene_arena_lilith_03_materialInfo1.sg"
		;
connectAttr "scene_arena_lilith_03_lambert2.msg" "scene_arena_lilith_03_materialInfo1.m"
		;
connectAttr "cerisier_lambert2.oc" "cerisier_lambert2SG.ss";
connectAttr "cerisier_lambert2SG.msg" "cerisier_materialInfo1.sg";
connectAttr "cerisier_lambert2.msg" "cerisier_materialInfo1.m";
connectAttr "cerisier_lambert2.msg" "scene_arena_lilith_03_scene_arena_lilith_03_hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "cerisier_lambert2SG.msg" "scene_arena_lilith_03_scene_arena_lilith_03_hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "scene_arena_lilith_03_scene_arena_lilith_03_lambert2.oc" "scene_arena_lilith_03_scene_arena_lilith_03_lambert2SG.ss"
		;
connectAttr "scene_arena_lilith_03_scene_arena_lilith_03_lambert2SG.msg" "scene_arena_lilith_03_scene_arena_lilith_03_materialInfo1.sg"
		;
connectAttr "scene_arena_lilith_03_scene_arena_lilith_03_lambert2.msg" "scene_arena_lilith_03_scene_arena_lilith_03_materialInfo1.m"
		;
connectAttr "scene_arena_lilith_03_scene_arena_lilith_03_lambert2.msg" "scene_arena_lilith_03_hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[0].dn"
		;
connectAttr "scene_arena_lilith_03_scene_arena_lilith_03_lambert2SG.msg" "scene_arena_lilith_03_hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[1].dn"
		;
connectAttr "skull_02_lambert2.oc" "skull_02_lambert2SG.ss";
connectAttr "skull_02_lambert2SG.msg" "skull_02_materialInfo1.sg";
connectAttr "skull_02_lambert2.msg" "skull_02_materialInfo1.m";
connectAttr "skull_02_lambert2.msg" "skull_02_hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "skull_02_lambert2SG.msg" "skull_02_hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "scene_arena_lilith_03_lambert3.oc" "scene_arena_lilith_03_lambert2SG1.ss"
		;
connectAttr "scene_arena_lilith_03_lambert2SG1.msg" "scene_arena_lilith_03_materialInfo2.sg"
		;
connectAttr "scene_arena_lilith_03_lambert3.msg" "scene_arena_lilith_03_materialInfo2.m"
		;
connectAttr "scene_arena_lilith_03_lambert3.msg" "scene_arena_lilith_03_hyperShadePrimaryNodeEditorSavedTabsInfo2.tgi[0].ni[0].dn"
		;
connectAttr "scene_arena_lilith_03_lambert2SG1.msg" "scene_arena_lilith_03_hyperShadePrimaryNodeEditorSavedTabsInfo2.tgi[0].ni[1].dn"
		;
connectAttr "scene_arena_lilith_03_lambert2.msg" "scene_arena_lilith_03_hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "scene_arena_lilith_03_lambert2SG.msg" "scene_arena_lilith_03_hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "polySurface_craneShape.o" "polySeparate1.ip";
connectAttr "polySeparate1.out[0]" "groupParts1.ig";
connectAttr "groupId65.id" "groupParts1.gi";
connectAttr "polySeparate1.out[1]" "groupParts2.ig";
connectAttr "groupId66.id" "groupParts2.gi";
connectAttr "groupParts2.og" "groupParts3.ig";
connectAttr "groupId67.id" "groupParts3.gi";
connectAttr "polySeparate1.out[2]" "groupParts4.ig";
connectAttr "groupId68.id" "groupParts4.gi";
connectAttr "polySeparate1.out[3]" "groupParts5.ig";
connectAttr "groupId69.id" "groupParts5.gi";
connectAttr "polySeparate1.out[4]" "groupParts6.ig";
connectAttr "groupId70.id" "groupParts6.gi";
connectAttr "polySeparate1.out[5]" "groupParts7.ig";
connectAttr "groupId71.id" "groupParts7.gi";
connectAttr "polySeparate1.out[6]" "groupParts8.ig";
connectAttr "groupId72.id" "groupParts8.gi";
connectAttr "polySeparate1.out[7]" "groupParts9.ig";
connectAttr "groupId73.id" "groupParts9.gi";
connectAttr "polySeparate1.out[8]" "groupParts10.ig";
connectAttr "groupId74.id" "groupParts10.gi";
connectAttr "polySeparate1.out[9]" "groupParts11.ig";
connectAttr "groupId75.id" "groupParts11.gi";
connectAttr "polySeparate1.out[10]" "groupParts12.ig";
connectAttr "groupId76.id" "groupParts12.gi";
connectAttr "polySeparate1.out[11]" "groupParts13.ig";
connectAttr "groupId77.id" "groupParts13.gi";
connectAttr "polySeparate1.out[12]" "groupParts14.ig";
connectAttr "groupId78.id" "groupParts14.gi";
connectAttr "polySeparate1.out[13]" "groupParts15.ig";
connectAttr "groupId79.id" "groupParts15.gi";
connectAttr "polySeparate1.out[14]" "groupParts16.ig";
connectAttr "groupId80.id" "groupParts16.gi";
connectAttr "polySeparate1.out[15]" "groupParts17.ig";
connectAttr "groupId81.id" "groupParts17.gi";
connectAttr "polySeparate1.out[16]" "groupParts18.ig";
connectAttr "groupId82.id" "groupParts18.gi";
connectAttr "polySeparate1.out[17]" "groupParts19.ig";
connectAttr "groupId83.id" "groupParts19.gi";
connectAttr "polySeparate1.out[18]" "groupParts20.ig";
connectAttr "groupId84.id" "groupParts20.gi";
connectAttr "polySeparate1.out[19]" "groupParts21.ig";
connectAttr "groupId85.id" "groupParts21.gi";
connectAttr "polySeparate1.out[20]" "groupParts22.ig";
connectAttr "groupId86.id" "groupParts22.gi";
connectAttr "polySeparate1.out[21]" "groupParts23.ig";
connectAttr "groupId87.id" "groupParts23.gi";
connectAttr "polySeparate1.out[22]" "groupParts24.ig";
connectAttr "groupId88.id" "groupParts24.gi";
connectAttr "polySeparate1.out[23]" "groupParts25.ig";
connectAttr "groupId89.id" "groupParts25.gi";
connectAttr "polySeparate1.out[24]" "groupParts26.ig";
connectAttr "groupId90.id" "groupParts26.gi";
connectAttr "polySeparate1.out[25]" "groupParts27.ig";
connectAttr "groupId91.id" "groupParts27.gi";
connectAttr "polySeparate1.out[26]" "groupParts28.ig";
connectAttr "groupId92.id" "groupParts28.gi";
connectAttr "polySeparate1.out[27]" "groupParts29.ig";
connectAttr "groupId93.id" "groupParts29.gi";
connectAttr "polySeparate1.out[28]" "groupParts30.ig";
connectAttr "groupId94.id" "groupParts30.gi";
connectAttr "polySeparate1.out[29]" "groupParts31.ig";
connectAttr "groupId95.id" "groupParts31.gi";
connectAttr "polySeparate1.out[30]" "groupParts32.ig";
connectAttr "groupId96.id" "groupParts32.gi";
connectAttr "polySeparate1.out[31]" "groupParts33.ig";
connectAttr "groupId97.id" "groupParts33.gi";
connectAttr "polySeparate1.out[32]" "groupParts34.ig";
connectAttr "groupId98.id" "groupParts34.gi";
connectAttr "polySeparate1.out[33]" "groupParts35.ig";
connectAttr "groupId99.id" "groupParts35.gi";
connectAttr "polySeparate1.out[34]" "groupParts36.ig";
connectAttr "groupId100.id" "groupParts36.gi";
connectAttr "polySeparate1.out[35]" "groupParts37.ig";
connectAttr "groupId101.id" "groupParts37.gi";
connectAttr "polySeparate1.out[36]" "groupParts38.ig";
connectAttr "groupId102.id" "groupParts38.gi";
connectAttr "polySeparate1.out[37]" "groupParts39.ig";
connectAttr "groupId103.id" "groupParts39.gi";
connectAttr "polySeparate1.out[38]" "groupParts40.ig";
connectAttr "groupId104.id" "groupParts40.gi";
connectAttr "polySeparate1.out[39]" "groupParts41.ig";
connectAttr "groupId105.id" "groupParts41.gi";
connectAttr "polySeparate1.out[40]" "groupParts42.ig";
connectAttr "groupId106.id" "groupParts42.gi";
connectAttr "polySeparate1.out[41]" "groupParts43.ig";
connectAttr "groupId107.id" "groupParts43.gi";
connectAttr "polySeparate1.out[42]" "groupParts44.ig";
connectAttr "groupId108.id" "groupParts44.gi";
connectAttr "polySeparate1.out[43]" "groupParts45.ig";
connectAttr "groupId109.id" "groupParts45.gi";
connectAttr "polySeparate1.out[44]" "groupParts46.ig";
connectAttr "groupId110.id" "groupParts46.gi";
connectAttr "polySeparate1.out[45]" "groupParts47.ig";
connectAttr "groupId111.id" "groupParts47.gi";
connectAttr "polySeparate1.out[46]" "groupParts48.ig";
connectAttr "groupId112.id" "groupParts48.gi";
connectAttr "polySeparate1.out[47]" "groupParts49.ig";
connectAttr "groupId113.id" "groupParts49.gi";
connectAttr "polySeparate1.out[48]" "groupParts50.ig";
connectAttr "groupId114.id" "groupParts50.gi";
connectAttr "polySeparate1.out[49]" "groupParts51.ig";
connectAttr "groupId115.id" "groupParts51.gi";
connectAttr "polySeparate1.out[50]" "groupParts52.ig";
connectAttr "groupId116.id" "groupParts52.gi";
connectAttr "polySeparate1.out[51]" "groupParts53.ig";
connectAttr "groupId117.id" "groupParts53.gi";
connectAttr "polySeparate1.out[52]" "groupParts54.ig";
connectAttr "groupId118.id" "groupParts54.gi";
connectAttr "polySeparate1.out[53]" "groupParts55.ig";
connectAttr "groupId119.id" "groupParts55.gi";
connectAttr "polySeparate1.out[54]" "groupParts56.ig";
connectAttr "groupId120.id" "groupParts56.gi";
connectAttr "polySeparate1.out[55]" "groupParts57.ig";
connectAttr "groupId121.id" "groupParts57.gi";
connectAttr "polySeparate1.out[56]" "groupParts58.ig";
connectAttr "groupId122.id" "groupParts58.gi";
connectAttr "polySeparate1.out[57]" "groupParts59.ig";
connectAttr "groupId123.id" "groupParts59.gi";
connectAttr "polySeparate1.out[59]" "groupParts61.ig";
connectAttr "groupId125.id" "groupParts61.gi";
connectAttr "polySeparate1.out[61]" "groupParts63.ig";
connectAttr "groupId127.id" "groupParts63.gi";
connectAttr "polySeparate1.out[62]" "groupParts64.ig";
connectAttr "groupId128.id" "groupParts64.gi";
connectAttr "polySeparate1.out[63]" "groupParts65.ig";
connectAttr "groupId129.id" "groupParts65.gi";
connectAttr "polySeparate1.out[64]" "groupParts66.ig";
connectAttr "groupId130.id" "groupParts66.gi";
connectAttr "polySeparate1.out[65]" "groupParts67.ig";
connectAttr "groupId131.id" "groupParts67.gi";
connectAttr "polySeparate1.out[66]" "groupParts68.ig";
connectAttr "groupId132.id" "groupParts68.gi";
connectAttr "polySeparate1.out[67]" "groupParts69.ig";
connectAttr "groupId133.id" "groupParts69.gi";
connectAttr "polySeparate1.out[68]" "groupParts70.ig";
connectAttr "groupId134.id" "groupParts70.gi";
connectAttr "polySeparate1.out[69]" "groupParts71.ig";
connectAttr "groupId135.id" "groupParts71.gi";
connectAttr "polySeparate1.out[70]" "groupParts72.ig";
connectAttr "groupId136.id" "groupParts72.gi";
connectAttr "polySeparate1.out[71]" "groupParts73.ig";
connectAttr "groupId137.id" "groupParts73.gi";
connectAttr "polySeparate1.out[72]" "groupParts74.ig";
connectAttr "groupId138.id" "groupParts74.gi";
connectAttr "polySeparate1.out[73]" "groupParts75.ig";
connectAttr "groupId139.id" "groupParts75.gi";
connectAttr "polySeparate1.out[74]" "groupParts76.ig";
connectAttr "groupId140.id" "groupParts76.gi";
connectAttr "polySeparate1.out[75]" "groupParts77.ig";
connectAttr "groupId141.id" "groupParts77.gi";
connectAttr "polySeparate1.out[76]" "groupParts78.ig";
connectAttr "groupId142.id" "groupParts78.gi";
connectAttr "polySeparate1.out[77]" "groupParts79.ig";
connectAttr "groupId143.id" "groupParts79.gi";
connectAttr "polySeparate1.out[78]" "groupParts80.ig";
connectAttr "groupId144.id" "groupParts80.gi";
connectAttr "polySeparate1.out[79]" "groupParts81.ig";
connectAttr "groupId145.id" "groupParts81.gi";
connectAttr "polySeparate1.out[80]" "groupParts82.ig";
connectAttr "groupId146.id" "groupParts82.gi";
connectAttr "polySeparate1.out[81]" "groupParts83.ig";
connectAttr "groupId147.id" "groupParts83.gi";
connectAttr "polySeparate1.out[82]" "groupParts84.ig";
connectAttr "groupId148.id" "groupParts84.gi";
connectAttr "polySeparate1.out[83]" "groupParts85.ig";
connectAttr "groupId149.id" "groupParts85.gi";
connectAttr "polySeparate1.out[84]" "groupParts86.ig";
connectAttr "groupId150.id" "groupParts86.gi";
connectAttr "polySeparate1.out[85]" "groupParts87.ig";
connectAttr "groupId151.id" "groupParts87.gi";
connectAttr "polySeparate1.out[86]" "groupParts88.ig";
connectAttr "groupId152.id" "groupParts88.gi";
connectAttr "polySeparate1.out[87]" "groupParts89.ig";
connectAttr "groupId153.id" "groupParts89.gi";
connectAttr "polySeparate1.out[88]" "groupParts90.ig";
connectAttr "groupId154.id" "groupParts90.gi";
connectAttr "polySeparate1.out[89]" "groupParts91.ig";
connectAttr "groupId155.id" "groupParts91.gi";
connectAttr "polySeparate1.out[90]" "groupParts92.ig";
connectAttr "groupId156.id" "groupParts92.gi";
connectAttr "polySeparate1.out[91]" "groupParts93.ig";
connectAttr "groupId157.id" "groupParts93.gi";
connectAttr "polySeparate1.out[92]" "groupParts94.ig";
connectAttr "groupId158.id" "groupParts94.gi";
connectAttr "polySeparate1.out[93]" "groupParts95.ig";
connectAttr "groupId159.id" "groupParts95.gi";
connectAttr "polySeparate1.out[94]" "groupParts96.ig";
connectAttr "groupId160.id" "groupParts96.gi";
connectAttr "polySeparate1.out[95]" "groupParts97.ig";
connectAttr "groupId161.id" "groupParts97.gi";
connectAttr "polySeparate1.out[96]" "groupParts98.ig";
connectAttr "groupId162.id" "groupParts98.gi";
connectAttr "polySeparate1.out[97]" "groupParts99.ig";
connectAttr "groupId163.id" "groupParts99.gi";
connectAttr "polySeparate1.out[98]" "groupParts100.ig";
connectAttr "groupId164.id" "groupParts100.gi";
connectAttr "polySeparate1.out[99]" "groupParts101.ig";
connectAttr "groupId165.id" "groupParts101.gi";
connectAttr "polySeparate1.out[100]" "groupParts102.ig";
connectAttr "groupId166.id" "groupParts102.gi";
connectAttr "polySeparate1.out[101]" "groupParts103.ig";
connectAttr "groupId167.id" "groupParts103.gi";
connectAttr "polySeparate1.out[102]" "groupParts104.ig";
connectAttr "groupId168.id" "groupParts104.gi";
connectAttr "polySeparate1.out[103]" "groupParts105.ig";
connectAttr "groupId169.id" "groupParts105.gi";
connectAttr "polySeparate1.out[104]" "groupParts106.ig";
connectAttr "groupId170.id" "groupParts106.gi";
connectAttr "polySeparate1.out[105]" "groupParts107.ig";
connectAttr "groupId171.id" "groupParts107.gi";
connectAttr "polySeparate1.out[106]" "groupParts108.ig";
connectAttr "groupId172.id" "groupParts108.gi";
connectAttr "polySeparate1.out[107]" "groupParts109.ig";
connectAttr "groupId173.id" "groupParts109.gi";
connectAttr "polySeparate1.out[108]" "groupParts110.ig";
connectAttr "groupId174.id" "groupParts110.gi";
connectAttr "polySeparate1.out[109]" "groupParts111.ig";
connectAttr "groupId175.id" "groupParts111.gi";
connectAttr "polySeparate1.out[110]" "groupParts112.ig";
connectAttr "groupId176.id" "groupParts112.gi";
connectAttr "polySeparate1.out[111]" "groupParts113.ig";
connectAttr "groupId177.id" "groupParts113.gi";
connectAttr "polySeparate1.out[112]" "groupParts114.ig";
connectAttr "groupId178.id" "groupParts114.gi";
connectAttr "polySeparate1.out[113]" "groupParts115.ig";
connectAttr "groupId179.id" "groupParts115.gi";
connectAttr "polySeparate1.out[114]" "groupParts116.ig";
connectAttr "groupId180.id" "groupParts116.gi";
connectAttr "polySeparate1.out[115]" "groupParts117.ig";
connectAttr "groupId181.id" "groupParts117.gi";
connectAttr "polySeparate1.out[116]" "groupParts118.ig";
connectAttr "groupId182.id" "groupParts118.gi";
connectAttr "polySeparate1.out[117]" "groupParts119.ig";
connectAttr "groupId183.id" "groupParts119.gi";
connectAttr "polySeparate1.out[118]" "groupParts120.ig";
connectAttr "groupId184.id" "groupParts120.gi";
connectAttr "polySeparate1.out[119]" "groupParts121.ig";
connectAttr "groupId185.id" "groupParts121.gi";
connectAttr "polySeparate1.out[120]" "groupParts122.ig";
connectAttr "groupId186.id" "groupParts122.gi";
connectAttr "polySeparate1.out[121]" "groupParts123.ig";
connectAttr "groupId187.id" "groupParts123.gi";
connectAttr "polySeparate1.out[122]" "groupParts124.ig";
connectAttr "groupId188.id" "groupParts124.gi";
connectAttr "polySeparate1.out[123]" "groupParts125.ig";
connectAttr "groupId189.id" "groupParts125.gi";
connectAttr "polySeparate1.out[124]" "groupParts126.ig";
connectAttr "groupId190.id" "groupParts126.gi";
connectAttr "polySeparate1.out[125]" "groupParts127.ig";
connectAttr "groupId191.id" "groupParts127.gi";
connectAttr "polySeparate1.out[126]" "groupParts128.ig";
connectAttr "groupId192.id" "groupParts128.gi";
connectAttr "polySeparate1.out[127]" "groupParts129.ig";
connectAttr "groupId193.id" "groupParts129.gi";
connectAttr "polySeparate1.out[128]" "groupParts130.ig";
connectAttr "groupId194.id" "groupParts130.gi";
connectAttr "polySeparate1.out[129]" "groupParts131.ig";
connectAttr "groupId195.id" "groupParts131.gi";
connectAttr "polySeparate1.out[130]" "groupParts132.ig";
connectAttr "groupId196.id" "groupParts132.gi";
connectAttr "polySeparate1.out[131]" "groupParts133.ig";
connectAttr "groupId197.id" "groupParts133.gi";
connectAttr "polySeparate1.out[132]" "groupParts134.ig";
connectAttr "groupId198.id" "groupParts134.gi";
connectAttr "polySeparate1.out[133]" "groupParts135.ig";
connectAttr "groupId199.id" "groupParts135.gi";
connectAttr "polySeparate1.out[134]" "groupParts136.ig";
connectAttr "groupId200.id" "groupParts136.gi";
connectAttr "polySeparate1.out[135]" "groupParts137.ig";
connectAttr "groupId201.id" "groupParts137.gi";
connectAttr "polySeparate1.out[136]" "groupParts138.ig";
connectAttr "groupId202.id" "groupParts138.gi";
connectAttr "polySeparate1.out[137]" "groupParts139.ig";
connectAttr "groupId203.id" "groupParts139.gi";
connectAttr "polySeparate1.out[138]" "groupParts140.ig";
connectAttr "groupId204.id" "groupParts140.gi";
connectAttr "polySeparate1.out[139]" "groupParts141.ig";
connectAttr "groupId205.id" "groupParts141.gi";
connectAttr "polySeparate1.out[140]" "groupParts142.ig";
connectAttr "groupId206.id" "groupParts142.gi";
connectAttr "polySeparate1.out[141]" "groupParts143.ig";
connectAttr "groupId207.id" "groupParts143.gi";
connectAttr "polySeparate1.out[142]" "groupParts144.ig";
connectAttr "groupId208.id" "groupParts144.gi";
connectAttr "polySeparate1.out[143]" "groupParts145.ig";
connectAttr "groupId209.id" "groupParts145.gi";
connectAttr "polySeparate1.out[144]" "groupParts146.ig";
connectAttr "groupId210.id" "groupParts146.gi";
connectAttr "polySeparate1.out[145]" "groupParts147.ig";
connectAttr "groupId211.id" "groupParts147.gi";
connectAttr "polySeparate1.out[146]" "groupParts148.ig";
connectAttr "groupId212.id" "groupParts148.gi";
connectAttr "polySeparate1.out[147]" "groupParts149.ig";
connectAttr "groupId213.id" "groupParts149.gi";
connectAttr "polySeparate1.out[148]" "groupParts150.ig";
connectAttr "groupId214.id" "groupParts150.gi";
connectAttr "polySeparate1.out[149]" "groupParts151.ig";
connectAttr "groupId215.id" "groupParts151.gi";
connectAttr "polySeparate1.out[150]" "groupParts152.ig";
connectAttr "groupId216.id" "groupParts152.gi";
connectAttr "polySeparate1.out[151]" "groupParts153.ig";
connectAttr "groupId217.id" "groupParts153.gi";
connectAttr "polySeparate1.out[152]" "groupParts154.ig";
connectAttr "groupId218.id" "groupParts154.gi";
connectAttr "polySeparate1.out[153]" "groupParts155.ig";
connectAttr "groupId219.id" "groupParts155.gi";
connectAttr "polySeparate1.out[154]" "groupParts156.ig";
connectAttr "groupId220.id" "groupParts156.gi";
connectAttr "polySeparate1.out[155]" "groupParts157.ig";
connectAttr "groupId221.id" "groupParts157.gi";
connectAttr "polySeparate1.out[156]" "groupParts158.ig";
connectAttr "groupId222.id" "groupParts158.gi";
connectAttr "polySeparate1.out[157]" "groupParts159.ig";
connectAttr "groupId223.id" "groupParts159.gi";
connectAttr "polySeparate1.out[158]" "groupParts160.ig";
connectAttr "groupId224.id" "groupParts160.gi";
connectAttr "polySeparate1.out[159]" "groupParts161.ig";
connectAttr "groupId225.id" "groupParts161.gi";
connectAttr "polySeparate1.out[160]" "groupParts162.ig";
connectAttr "groupId226.id" "groupParts162.gi";
connectAttr "polySeparate1.out[161]" "groupParts163.ig";
connectAttr "groupId227.id" "groupParts163.gi";
connectAttr "polySeparate1.out[162]" "groupParts164.ig";
connectAttr "groupId228.id" "groupParts164.gi";
connectAttr "polySeparate1.out[163]" "groupParts165.ig";
connectAttr "groupId229.id" "groupParts165.gi";
connectAttr "polySeparate1.out[164]" "groupParts166.ig";
connectAttr "groupId230.id" "groupParts166.gi";
connectAttr "polySeparate1.out[165]" "groupParts167.ig";
connectAttr "groupId231.id" "groupParts167.gi";
connectAttr "polySeparate1.out[166]" "groupParts168.ig";
connectAttr "groupId232.id" "groupParts168.gi";
connectAttr "polySeparate1.out[167]" "groupParts169.ig";
connectAttr "groupId233.id" "groupParts169.gi";
connectAttr "polySeparate1.out[168]" "groupParts170.ig";
connectAttr "groupId234.id" "groupParts170.gi";
connectAttr "polySeparate1.out[169]" "groupParts171.ig";
connectAttr "groupId235.id" "groupParts171.gi";
connectAttr "polySeparate1.out[170]" "groupParts172.ig";
connectAttr "groupId236.id" "groupParts172.gi";
connectAttr "polySeparate1.out[171]" "groupParts173.ig";
connectAttr "groupId237.id" "groupParts173.gi";
connectAttr "polySeparate1.out[172]" "groupParts174.ig";
connectAttr "groupId238.id" "groupParts174.gi";
connectAttr "polySeparate1.out[173]" "groupParts175.ig";
connectAttr "groupId239.id" "groupParts175.gi";
connectAttr "polySeparate1.out[174]" "groupParts176.ig";
connectAttr "groupId240.id" "groupParts176.gi";
connectAttr "polySeparate1.out[175]" "groupParts177.ig";
connectAttr "groupId241.id" "groupParts177.gi";
connectAttr "groupParts91.og" "polyMapCut1.ip";
connectAttr "groupParts4.og" "polyMapCut2.ip";
connectAttr "polyMapCut1.out" "polyMapCut3.ip";
connectAttr "polyMapCut2.out" "polyMapCut4.ip";
connectAttr "polyMapCut3.out" "polyMapCut5.ip";
connectAttr "polyMapCut4.out" "polyMapCut6.ip";
connectAttr "polyMapCut5.out" "polyMapCut7.ip";
connectAttr "polyMapCut6.out" "polyMapCut8.ip";
connectAttr "polyMapCut7.out" "polyMapCut9.ip";
connectAttr "polyMapCut8.out" "polyMapCut10.ip";
connectAttr "polyMapCut9.out" "polyMapCut11.ip";
connectAttr "polyMapCut10.out" "polyMapCut12.ip";
connectAttr "polyMapCut11.out" "polyMapCut13.ip";
connectAttr "polyMapCut12.out" "polyMapCut14.ip";
connectAttr "polyMapCut13.out" "polyMapCut15.ip";
connectAttr "polyMapCut14.out" "polyMapCut16.ip";
connectAttr "polyMapCut15.out" "polyMapCut17.ip";
connectAttr "polyMapCut16.out" "polyMapCut18.ip";
connectAttr "polyMapCut18.out" "polyMapCut19.ip";
connectAttr "groupParts178.og" "polyNormal1.ip";
connectAttr "polySurfaceShape185.o" "groupParts178.ig";
connectAttr "groupId250.id" "groupParts178.gi";
connectAttr "groupParts179.og" "polyNormal2.ip";
connectAttr "polySurfaceShape186.o" "groupParts179.ig";
connectAttr "groupId251.id" "groupParts179.gi";
connectAttr "groupParts65.og" "polyNormal3.ip";
connectAttr "groupParts63.og" "polyNormal4.ip";
connectAttr "place2dTexture1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "lambert3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "psdFileTex2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "lambert2SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "place2dTexture2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "lambert2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "psdFileTex1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "lambert3SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "scene_arena_lilith_03_lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "cerisier_lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "scene_arena_lilith_03_scene_arena_lilith_03_lambert2SG.pa" ":renderPartition.st"
		 -na;
connectAttr "skull_02_lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "scene_arena_lilith_03_lambert2SG1.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "scene_arena_lilith_03_lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "cerisier_lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "scene_arena_lilith_03_scene_arena_lilith_03_lambert2.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "skull_02_lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "scene_arena_lilith_03_lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "psdFileTex1.msg" ":defaultTextureList1.tx" -na;
connectAttr "psdFileTex2.msg" ":defaultTextureList1.tx" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "chibi_template_01_groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId61.msg" ":initialShadingGroup.gn" -na;
connectAttr "chibi_template_01_0001:groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "scene_arena_lilith_03_groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "scene_arena_lilith_03_chibi_template_01_groupId6.msg" ":initialShadingGroup.gn"
		 -na;
connectAttr "scene_arena_lilith_03_groupId61.msg" ":initialShadingGroup.gn" -na;
connectAttr "scene_arena_lilith_03_scene_arena_lilith_03_groupId6.msg" ":initialShadingGroup.gn"
		 -na;
connectAttr "cerisier_chibi_template_01_groupId6.msg" ":initialShadingGroup.gn" 
		-na;
connectAttr "scene_arena_lilith_03_scene_arena_lilith_03_groupId61.msg" ":initialShadingGroup.gn"
		 -na;
connectAttr "cerisier_groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "scene_arena_lilith_03_scene_arena_lilith_03_chibi_template_01_groupId6.msg" ":initialShadingGroup.gn"
		 -na;
connectAttr "cerisier_groupId61.msg" ":initialShadingGroup.gn" -na;
connectAttr "skull_02_groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "scene_arena_lilith_03_groupId62.msg" ":initialShadingGroup.gn" -na;
connectAttr "scene_arena_lilith_03_chibi_template_01_groupId7.msg" ":initialShadingGroup.gn"
		 -na;
connectAttr "scene_arena_lilith_03_groupId63.msg" ":initialShadingGroup.gn" -na;
connectAttr "chibi_template_01_groupId7.msg" ":initialShadingGroup.gn" -na;
// End of scene_arena_lilith_final.ma
