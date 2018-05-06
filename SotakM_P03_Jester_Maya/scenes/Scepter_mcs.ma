//Maya ASCII 2017ff05 scene
//Name: Scepter_005_mcs.ma
//Last modified: Mon, Apr 30, 2018 02:07:23 PM
//Codeset: 1252
requires maya "2017ff05";
requires -nodeType "gameFbxExporter" "gameFbxExporter" "1.0";
requires "stereoCamera" "10.0";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOptions" -nodeType "mentalrayGlobals"
		 -nodeType "mentalrayItemsList" -dataType "byteArray" "Mayatomr" "2017.11  (3.14.3.41 - 268000.18294) ";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2017";
fileInfo "version" "2017";
fileInfo "cutIdentifier" "201706020738-1017329";
fileInfo "osv" "Microsoft Windows 8 Enterprise Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "F11124F7-40CE-D083-E5F0-07BF2C6EAC3C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -4.4645353528331091 1.7004999048677909 5.7436103498978657 ;
	setAttr ".r" -type "double3" -357.93835293529395 5360.9999999638076 1.2789403635352903e-016 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "B4AD6A01-42B7-731F-C2D4-1B9DC8CEBE52";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 7.1720995579531568;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 4.8583697533067394 0.0085240007451714561 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "6993A180-48CE-B0D9-C50A-1DA7E39870C9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "656D24FB-465B-0664-3C27-90AB101A793F";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "E70641B1-41C9-6B38-0DE1-B39A53FC7BB4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.11668056008964639 2.7720314145028673 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "A8A7BABC-4932-1CEA-DCE7-5F9ECCA3CDCE";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 18.313358821967253;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "69C20A50-4D61-7037-CC1F-568A1CDCA7A7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "647F474C-4E1A-8A9E-75F2-F0958BD2DD9A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCube2";
	rename -uid "C9FA6105-4E2A-3986-A5F6-32ACCC163E28";
	setAttr ".t" -type "double3" 0 2.4741757142464786 0 ;
	setAttr ".s" -type "double3" 0.8031792029722733 0.8031792029722733 0.8031792029722733 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	rename -uid "38F4199B-4CA4-00CA-FA54-3B98AA43129F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50126215815544128 0.5003797858953476 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode transform -n "Sotak_p02_BaseMesh_08:front1";
	rename -uid "4B590E83-473E-4625-B373-B399B47504A1";
	setAttr ".t" -type "double3" 1.647951748554902 8.3056768127166745 1000.1 ;
createNode camera -n "Sotak_p02_BaseMesh_08:front1Shape" -p "Sotak_p02_BaseMesh_08:front1";
	rename -uid "B6BA63E1-4743-C585-FE58-918976406745";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 85.817872430774671;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "4FB04903-4DDF-3AF6-105C-9880CA33F399";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "635B4F78-4E6D-5C39-807A-7E810A1469B1";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "035E3ED1-4EC0-03D9-3C12-6DBAC4E77C9B";
createNode displayLayerManager -n "layerManager";
	rename -uid "9FDC30E0-4B1C-B960-12B7-D7B1139E0E09";
createNode displayLayer -n "defaultLayer";
	rename -uid "9D5F4EBB-470F-5AED-6F8F-89A38274E753";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "3A3F27E5-4075-1ADD-5C03-28A32B7D806B";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "0AC88DBD-4ED2-3197-B3FC-7C8425683962";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "4F466F68-472D-3086-704F-B991E743C40E";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n"
		+ "            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"hwRender_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1690\n            -height 1070\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n"
		+ "            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n"
		+ "                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n"
		+ "                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n"
		+ "                -displayNormalized 1\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n"
		+ "                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n"
		+ "                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n"
		+ "                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n"
		+ "                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n"
		+ "                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n"
		+ "                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n"
		+ "            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n"
		+ "            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n"
		+ "            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"hwRender_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1690\\n    -height 1070\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"hwRender_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1690\\n    -height 1070\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "389C18E2-4CF0-3DD3-A131-19BACC7883CC";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyCube -n "polyCube2";
	rename -uid "9B324774-4F25-A56F-DDEA-9FAE77226F1C";
	setAttr ".sw" 5;
	setAttr ".sh" 5;
	setAttr ".sd" 5;
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace53";
	rename -uid "57771C75-4794-C0C4-D316-07945F971A04";
	setAttr ".ics" -type "componentList" 1 "f[75:99]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 8.7563127465678701 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 8.2563124 0 ;
	setAttr ".rs" 60586;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.5 8.2563127465678701 -0.5 ;
	setAttr ".cbx" -type "double3" 0.5 8.2563127465678701 0.5 ;
createNode polyTweak -n "polyTweak85";
	rename -uid "EA64C5A0-4189-5D1A-D8DA-309D9CC5C9A6";
	setAttr ".uopa" yes;
	setAttr -s 152 ".tk[0:151]" -type "float3"  0.12760636 0 -0.12760636 0.068017066
		 0 -0.036921784 0.087768443 0 0 -0.087768443 0 0 -0.068017066 0 -0.036921784 -0.12760636
		 0 -0.12760636 0.12760636 0 -0.12760636 0.068017066 0 -0.036921784 0.087768443 0 0
		 -0.087768443 0 0 -0.068017066 0 -0.036921784 -0.12760636 0 -0.12760636 0.12760636
		 0 -0.12760636 0.068017066 0 -0.036921784 0.087768443 0 0 -0.087768443 0 0 -0.068017066
		 0 -0.036921784 -0.12760636 0 -0.12760636 0.12760636 0 -0.12760636 0.068017066 0 -0.036921784
		 0.087768443 0 0 -0.087768443 0 0 -0.068017066 0 -0.036921784 -0.12760636 0 -0.12760636
		 0.12760636 0 -0.12760636 0.068017066 0 -0.036921784 0.087768443 0 0 -0.087768443
		 0 0 -0.068017066 0 -0.036921784 -0.12760636 0 -0.12760636 0.12760636 0 -0.12760636
		 0.068017066 0 -0.036921784 0.087768443 0 0 -0.087768443 0 0 -0.068017066 0 -0.036921784
		 -0.12760636 0 -0.12760636 0.033801783 0 -0.064154841 0.082398355 0 -0.080256097 0.087768443
		 0 -0.047054842 -0.087768443 0 -0.047054842 -0.082398355 0 -0.080256097 -0.033801783
		 0 -0.064154841 0 0 -0.088415995 0.049520772 0 -0.088415995 0.087768443 0 -0.088415995
		 -0.087768443 0 -0.088415995 -0.049520772 0 -0.088415995 0 0 -0.088415995 0 0 0.08841598
		 0.049520772 0 0.08841598 0.087768443 0 0.08841598 -0.087768443 0 0.08841598 -0.049520772
		 0 0.08841598 0 0 0.08841598 0.033801783 0 0.064154841 0.082398355 0 0.080256097 0.087768443
		 0 0.047054842 -0.087768443 0 0.047054842 -0.082398355 0 0.080256097 -0.033801783
		 0 0.064154841 0.12760636 0 0.12760636 0.068017066 0 0.036921784 0.087768443 0 0 -0.087768443
		 0 0 -0.068017066 0 0.036921784 -0.12760636 0 0.12760636 0.12760636 0 0.12760636 0.068017066
		 0 0.036921784 0.087768443 0 0 -0.087768443 0 0 -0.068017066 0 0.036921784 -0.12760636
		 0 0.12760636 0.12760636 0 0.12760636 0.068017066 0 0.036921784 0.087768443 0 0 -0.087768443
		 0 0 -0.068017066 0 0.036921769 -0.12760636 0 0.12760636 0.12760636 0 0.12760636 0.068017066
		 0 0.036921784 0.087768443 0 0 -0.087768443 0 0 -0.068017066 0 0.036921769 -0.12760636
		 0 0.12760636 0.12760636 0 0.12760636 0.068017066 0 0.036921784 0.087768443 0 0 -0.087768443
		 0 0 -0.068017066 0 0.036921784 -0.12760636 0 0.12760636 0.12760636 0 0.12760636 0.068017066
		 0 0.036921784 0.087768443 0 0 -0.087768443 0 0 -0.068017066 0 0.036921784 -0.12760636
		 0 0.12760636 0.033801783 0 0.064154841 0.049520772 0 0.047054842 0.087768443 0 0.047054842
		 -0.087768443 0 0.047054842 -0.049520772 0 0.047054842 -0.033801783 0 0.064154841
		 0 0 0.088415995 0.049520772 0 0.088415995 0.087768443 0 0.088415995 -0.087768443
		 0 0.088415995 -0.049520772 0 0.088415995 0 0 0.088415995 0 0 -0.08841598 0.049520772
		 0 -0.08841598 0.087768443 0 -0.08841598 -0.087768443 0 -0.08841598 -0.049520772 0
		 -0.08841598 0 0 -0.08841598 0.033801783 0 -0.064154841 0.049520772 0 -0.047054842
		 0.087768443 0 -0.047054842 -0.087768443 0 -0.047054842 -0.049520772 0 -0.047054842
		 -0.033801783 0 -0.064154841 -0.033801783 0 0.064154841 0 0 0.088415995 0 0 -0.08841598
		 -0.033801783 0 -0.064154841 -0.033801783 0 0.064154841 0 0 0.088415995 0 0 -0.08841598
		 -0.033801783 0 -0.064154841 -0.033801783 0 0.064154841 0 0 0.088415995 0 0 -0.08841598
		 -0.033801783 0 -0.064154841 -0.033801783 0 0.064154841 0 0 0.088415995 0 0 -0.08841598
		 -0.033801783 0 -0.064154841 0.033801783 0 0.064154841 0 0 0.088415995 0 0 -0.08841598
		 0.033801783 0 -0.064154841 0.033801783 0 0.064154841 0 0 0.088415995 0 0 -0.08841598
		 0.033801783 0 -0.064154841 0.033801783 0 0.064154841 0 0 0.088415995 0 0 -0.08841598
		 0.033801783 0 -0.064154841 0.033801783 0 0.064154841 0 0 0.088415995 0 0 -0.08841598
		 0.033801783 0 -0.064154841;
createNode polyExtrudeFace -n "polyExtrudeFace54";
	rename -uid "102CC84D-40E5-D4DB-92A3-F384AE98A774";
	setAttr ".ics" -type "componentList" 1 "f[75:99]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 8.7563127465678701 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 8.2563124 0 ;
	setAttr ".rs" 64373;
	setAttr ".lt" -type "double3" 0 -4.4626583391522003e-017 -0.79901973566712314 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.44273456931114197 8.2563127465678701 -0.44273456931114197 ;
	setAttr ".cbx" -type "double3" 0.44273456931114197 8.2563127465678701 0.44273456931114197 ;
createNode polyTweak -n "polyTweak86";
	rename -uid "CDDC2579-439D-AB1F-5314-7B96FB2027B9";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk[136:171]" -type "float3"  0.042650554 0 0.042650554
		 0.026569208 0 0.053036742 0.028687613 0 0.028970035 0.053394087 0 0.027011551 0.001400892
		 0 0.057265438 0.001400892 0 0.028970035 -0.0014008901 0 0.057265438 -0.0014008901
		 0 0.028970035 -0.026569208 0 0.053036742 -0.028687613 0 0.028970035 -0.042650554
		 0 0.042650554 -0.053394087 0 0.027011551 0.028687613 0 0.001326727 0.057265438 0
		 0.001326727 0.001400892 0 0.001326727 -0.0014008901 0 0.001326727 -0.028687613 0
		 0.001326727 -0.057265438 0 0.001326727 0.028687613 0 -0.001326727 0.057265438 0 -0.001326727
		 0.001400892 0 -0.001326727 -0.0014008901 0 -0.001326727 -0.028687613 0 -0.001326727
		 -0.057265438 0 -0.001326727 0.028687613 0 -0.028970035 0.053394087 0 -0.027011551
		 0.001400892 0 -0.028970035 -0.0014008901 0 -0.028970035 -0.028687613 0 -0.028970035
		 -0.053394087 0 -0.027011551 0.026569208 0 -0.053036742 0.042650554 0 -0.042650554
		 0.001400892 0 -0.057265438 -0.0014008901 0 -0.057265438 -0.026569208 0 -0.053036742
		 -0.042650554 0 -0.042650554;
createNode deleteComponent -n "deleteComponent20";
	rename -uid "00C4159C-43D8-F30E-E4E5-BFBE51646130";
	setAttr ".dc" -type "componentList" 4 "e[5:9]" "e[70:74]" "e[180:184]" "e[220:224]";
createNode deleteComponent -n "deleteComponent21";
	rename -uid "810298E8-4283-8DF6-0F14-618B17997C10";
	setAttr ".dc" -type "componentList" 4 "e[10:14]" "e[55:59]" "e[175:179]" "e[210:214]";
createNode deleteComponent -n "deleteComponent22";
	rename -uid "980F487A-4CB0-E43D-599D-20B0BAA08887";
	setAttr ".dc" -type "componentList" 4 "e[10:14]" "e[45:49]" "e[165:169]" "e[195:199]";
createNode deleteComponent -n "deleteComponent23";
	rename -uid "C04C0E00-4F86-E993-D353-D791774DF9E0";
	setAttr ".dc" -type "componentList" 1 "vtx[0:191]";
createNode polyExtrudeFace -n "polyExtrudeFace55";
	rename -uid "46425BAC-4AEE-84F4-C982-FE8E04D219C5";
	setAttr ".ics" -type "componentList" 6 "f[10:11]" "f[13:16]" "f[18:19]" "f[25:26]" "f[28:31]" "f[33:34]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 8.7563127465678701 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 9.2563124 0 ;
	setAttr ".rs" 64406;
	setAttr ".lt" -type "double3" 0 -5.3943669632328079e-017 0.25705930954485012 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.5 9.2563127465678701 -0.5 ;
	setAttr ".cbx" -type "double3" 0.5 9.2563127465678701 0.5 ;
createNode polyTweak -n "polyTweak87";
	rename -uid "9BB55427-45B5-4158-9FF4-02811DFB4595";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk";
	setAttr ".tk[6]" -type "float3" 0 0.10153764 0 ;
	setAttr ".tk[7]" -type "float3" 0 0.10153764 0 ;
	setAttr ".tk[8]" -type "float3" 0 0.10153764 0 ;
	setAttr ".tk[9]" -type "float3" 0 0.10153764 0 ;
	setAttr ".tk[10]" -type "float3" 0 0.10153764 0 ;
	setAttr ".tk[11]" -type "float3" 0 0.10153764 0 ;
	setAttr ".tk[48]" -type "float3" 0 0.10153764 0 ;
	setAttr ".tk[49]" -type "float3" 0 0.10153764 0 ;
	setAttr ".tk[50]" -type "float3" 0 0.10153764 0 ;
	setAttr ".tk[51]" -type "float3" 0 0.10153764 0 ;
	setAttr ".tk[52]" -type "float3" 0 0.10153764 0 ;
	setAttr ".tk[53]" -type "float3" 0 0.10153764 0 ;
	setAttr ".tk[68]" -type "float3" 0 0.10153764 0 ;
	setAttr ".tk[69]" -type "float3" 0 0.10153764 0 ;
	setAttr ".tk[70]" -type "float3" 0 0.10153764 0 ;
	setAttr ".tk[71]" -type "float3" 0 0.10153764 0 ;
	setAttr ".tk[72]" -type "float3" 0 0.10153764 0 ;
	setAttr ".tk[73]" -type "float3" 0 0.10153764 0 ;
	setAttr ".tk[74]" -type "float3" 0 0.10153764 0 ;
	setAttr ".tk[75]" -type "float3" 0 0.10153764 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace56";
	rename -uid "ACEC54A8-4FD9-517F-8D08-738D12B82961";
	setAttr ".ics" -type "componentList" 2 "f[13:14]" "f[18:19]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 8.7563127465678701 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.26070765 9.5202408 0.23022136 ;
	setAttr ".rs" 52706;
	setAttr ".lt" -type "double3" -1.0408340855860843e-017 2.0816681711721685e-017 0.21886575269364072 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.052737347781658173 9.448479551835204 0.032346367835998535 ;
	setAttr ".cbx" -type "double3" 0.46867796778678894 9.5920027084781179 0.42809635400772095 ;
createNode polyTweak -n "polyTweak88";
	rename -uid "64333874-4C71-271A-A9E7-C2A0ECA3B1D3";
	setAttr ".uopa" yes;
	setAttr -s 33 ".tk";
	setAttr ".tk[129]" -type "float3" 0.0019753801 0 -0.045017153 ;
	setAttr ".tk[130]" -type "float3" -0.012405762 0 -0.0048845923 ;
	setAttr ".tk[131]" -type "float3" 0.026348688 0 -0.020985797 ;
	setAttr ".tk[132]" -type "float3" -0.040777776 0 -0.10545816 ;
	setAttr ".tk[133]" -type "float3" 0 0 -0.038085762 ;
	setAttr ".tk[134]" -type "float3" 0.020471765 0 0.0023774276 ;
	setAttr ".tk[135]" -type "float3" 0.078834929 0 0.043849904 ;
	setAttr ".tk[136]" -type "float3" -0.027005211 0 0.030794255 ;
	setAttr ".tk[137]" -type "float3" 0.080170043 0.003225673 -0.086628787 ;
	setAttr ".tk[138]" -type "float3" 0.032583408 -0.041762948 -0.034981713 ;
	setAttr ".tk[139]" -type "float3" 0.046964567 -0.00066883146 0.0093499394 ;
	setAttr ".tk[140]" -type "float3" 0.040505797 0.048832357 -0.013629458 ;
	setAttr ".tk[141]" -type "float3" 0.030670542 -0.064892292 0.004295676 ;
	setAttr ".tk[142]" -type "float3" 0.0024797714 -0.048366681 -0.016600654 ;
	setAttr ".tk[143]" -type "float3" 0.014087033 0.039959524 0.020762498 ;
	setAttr ".tk[144]" -type "float3" 0.066773556 0.07863085 0.052435812 ;
	setAttr ".tk[145]" -type "float3" -0.049496248 -0.011877797 0.052402943 ;
	setAttr ".tk[146]" -type "float3" 0.078834929 0 -0.043849904 ;
	setAttr ".tk[147]" -type "float3" 0.020471765 0 -0.0023774276 ;
	setAttr ".tk[148]" -type "float3" -0.012405762 0 0.004884596 ;
	setAttr ".tk[149]" -type "float3" 0.026348688 0 0.020985806 ;
	setAttr ".tk[150]" -type "float3" -0.027005211 0 -0.030794255 ;
	setAttr ".tk[151]" -type "float3" 0 0 0.038085755 ;
	setAttr ".tk[152]" -type "float3" 0.0019753801 0 0.045017153 ;
	setAttr ".tk[154]" -type "float3" -0.040777776 0 0.10545816 ;
	setAttr ".tk[155]" -type "float3" 0.027005211 0 -0.025575547 ;
	setAttr ".tk[156]" -type "float3" -0.020471765 0 -0.0023773808 ;
	setAttr ".tk[157]" -type "float3" 0.012405768 0 0.0048842831 ;
	setAttr ".tk[158]" -type "float3" 0 0 0.038085543 ;
	setAttr ".tk[159]" -type "float3" -0.078834929 0 -0.04384945 ;
	setAttr ".tk[160]" -type "float3" -0.026348688 0 0.020985438 ;
	setAttr ".tk[161]" -type "float3" -0.0019753876 0 0.045017112 ;
	setAttr ".tk[162]" -type "float3" 0.040777776 0 0.10545813 ;
createNode polyExtrudeFace -n "polyExtrudeFace57";
	rename -uid "C342079E-4AD5-9D6B-2FBF-C2BFE5D20C73";
	setAttr ".ics" -type "componentList" 2 "f[13:14]" "f[18:19]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 8.7563127465678701 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.3556771 9.7317505 0.30153519 ;
	setAttr ".rs" 34408;
	setAttr ".lt" -type "double3" -3.5908775952719907e-016 1.7347234759768071e-016 0.15093532165356296 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.2202567458152771 9.6505224295093068 0.17353758215904236 ;
	setAttr ".cbx" -type "double3" 0.49109745025634766 9.8129779286815175 0.42953276634216309 ;
createNode polyTweak -n "polyTweak89";
	rename -uid "8804F06B-436F-805D-A0D2-3CAE07D7B888";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[140]" -type "float3" -0.020107849 0 -0.021210596 ;
	setAttr ".tk[163]" -type "float3" 0.099374443 -0.0040411898 -0.028751541 ;
	setAttr ".tk[164]" -type "float3" 0.038855352 -0.0070149004 -0.041617166 ;
	setAttr ".tk[165]" -type "float3" 0.042825013 0.0022976436 0.028658275 ;
	setAttr ".tk[166]" -type "float3" 0.11672142 0.0046304371 0.034479883 ;
	setAttr ".tk[167]" -type "float3" -0.0085675279 -0.0064470125 -0.02962992 ;
	setAttr ".tk[168]" -type "float3" -0.028379379 5.011262e-005 0.023048583 ;
	setAttr ".tk[169]" -type "float3" 0.046749566 0.011504837 0.098137252 ;
	setAttr ".tk[170]" -type "float3" 0.12666605 0.012485225 0.10244517 ;
	setAttr ".tk[171]" -type "float3" -0.018924912 0.0075570242 0.078685127 ;
createNode polyExtrudeFace -n "polyExtrudeFace58";
	rename -uid "BD9DB4CA-4301-6780-37F9-19B7B5CD45F3";
	setAttr ".ics" -type "componentList" 2 "f[13:14]" "f[18:19]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 8.7563127465678701 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.47914308 9.8612289 0.40203995 ;
	setAttr ".rs" 38403;
	setAttr ".lt" -type "double3" 1.5751289161869408e-015 -1.5681900222830336e-015 0.17110161466909876 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.39919424057006836 9.7748335786296376 0.3152059018611908 ;
	setAttr ".cbx" -type "double3" 0.55909192562103271 9.9476249404384145 0.48887401819229126 ;
createNode polyTweak -n "polyTweak90";
	rename -uid "D28ADAFA-4EC0-CE7D-F2A9-EA9628D7B88A";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[166]" -type "float3" -0.0096930815 0 -0.0078312131 ;
	setAttr ".tk[171]" -type "float3" 0.10176998 0.0048801475 0.0084950337 ;
	setAttr ".tk[172]" -type "float3" 0.052782763 -0.0019382427 -0.0062148105 ;
	setAttr ".tk[173]" -type "float3" 0.063548133 0.0025730487 0.04494489 ;
	setAttr ".tk[174]" -type "float3" 0.12156777 0.010229697 0.055050384 ;
	setAttr ".tk[175]" -type "float3" 0.016996196 -0.0059552602 -0.0015906683 ;
	setAttr ".tk[176]" -type "float3" 0.007660985 -0.0047684149 0.035228699 ;
	setAttr ".tk[177]" -type "float3" 0.074180186 0.0070654587 0.095516458 ;
	setAttr ".tk[178]" -type "float3" 0.11753954 0.0083917091 0.094598688 ;
	setAttr ".tk[179]" -type "float3" 0.02163076 -0.00047985988 0.076772697 ;
createNode polyExtrudeFace -n "polyExtrudeFace59";
	rename -uid "346B1F2B-45FA-8B03-B571-90AED382F86A";
	setAttr ".ics" -type "componentList" 2 "f[13:14]" "f[18:19]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 8.7563127465678701 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.58368319 9.8944635 0.49286807 ;
	setAttr ".rs" 49640;
	setAttr ".lt" -type "double3" -4.0245584642661925e-016 7.2858385991025898e-017 0.080220351059161255 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.54931879043579102 9.8488785214854726 0.45049607753753662 ;
	setAttr ".cbx" -type "double3" 0.61804759502410889 9.9400491900874623 0.5352400541305542 ;
createNode polyTweak -n "polyTweak91";
	rename -uid "1C646348-4A02-2A5D-4127-038DBF215990";
	setAttr ".uopa" yes;
	setAttr -s 53 ".tk";
	setAttr ".tk[6]" -type "float3" -0.017056933 0 0.017056933 ;
	setAttr ".tk[7]" -type "float3" -0.010625631 0 0.021210605 ;
	setAttr ".tk[8]" -type "float3" -0.00056024856 0 0.022901753 ;
	setAttr ".tk[9]" -type "float3" 0.00056024792 0 0.022901753 ;
	setAttr ".tk[10]" -type "float3" 0.010625631 0 0.021210605 ;
	setAttr ".tk[11]" -type "float3" 0.017056933 0 0.017056933 ;
	setAttr ".tk[12]" -type "float3" 0.046173286 0 -0.046173286 ;
	setAttr ".tk[13]" -type "float3" 0.028763685 0 -0.057417303 ;
	setAttr ".tk[14]" -type "float3" 0.001516599 0 -0.061995279 ;
	setAttr ".tk[15]" -type "float3" -0.0015165963 0 -0.061995279 ;
	setAttr ".tk[16]" -type "float3" -0.028763685 0 -0.057417303 ;
	setAttr ".tk[17]" -type "float3" -0.046173286 0 -0.046173286 ;
	setAttr ".tk[18]" -type "float3" 0.057804149 0 -0.029242564 ;
	setAttr ".tk[21]" -type "float3" -0.057804149 0 -0.029242564 ;
	setAttr ".tk[22]" -type "float3" 0.061995279 0 -0.0014363077 ;
	setAttr ".tk[27]" -type "float3" -0.061995279 0 -0.0014363077 ;
	setAttr ".tk[28]" -type "float3" 0.061995279 0 0.0014363077 ;
	setAttr ".tk[33]" -type "float3" -0.061995279 0 0.0014363077 ;
	setAttr ".tk[34]" -type "float3" 0.057804149 0 0.029242564 ;
	setAttr ".tk[37]" -type "float3" -0.057804149 0 0.029242564 ;
	setAttr ".tk[38]" -type "float3" 0.046173286 0 0.046173286 ;
	setAttr ".tk[39]" -type "float3" 0.028763685 0 0.057417303 ;
	setAttr ".tk[40]" -type "float3" 0.001516599 0 0.061995279 ;
	setAttr ".tk[41]" -type "float3" -0.0015165963 0 0.061995279 ;
	setAttr ".tk[42]" -type "float3" -0.028763685 0 0.057417303 ;
	setAttr ".tk[43]" -type "float3" -0.046173286 0 0.046173286 ;
	setAttr ".tk[44]" -type "float3" -0.017056933 0 -0.017056933 ;
	setAttr ".tk[45]" -type "float3" -0.010625631 0 -0.021210605 ;
	setAttr ".tk[46]" -type "float3" -0.00056024856 0 -0.022901753 ;
	setAttr ".tk[47]" -type "float3" 0.00056024792 0 -0.022901753 ;
	setAttr ".tk[48]" -type "float3" 0.010625631 0 -0.021210605 ;
	setAttr ".tk[49]" -type "float3" 0.017056933 0 -0.017056933 ;
	setAttr ".tk[64]" -type "float3" 0.021353509 0 -0.010802535 ;
	setAttr ".tk[65]" -type "float3" 0.022901753 0 -0.00053058838 ;
	setAttr ".tk[66]" -type "float3" 0.022901753 0 0.00053058838 ;
	setAttr ".tk[67]" -type "float3" 0.021353509 0 0.010802535 ;
	setAttr ".tk[68]" -type "float3" -0.021353509 0 -0.010802535 ;
	setAttr ".tk[69]" -type "float3" -0.022901753 0 -0.00053058838 ;
	setAttr ".tk[70]" -type "float3" -0.022901753 0 0.00053058838 ;
	setAttr ".tk[71]" -type "float3" -0.021353509 0 0.010802535 ;
	setAttr ".tk[137]" -type "float3" 0.021251859 0 -0.020734511 ;
	setAttr ".tk[138]" -type "float3" 0.013963419 0 -0.014287718 ;
	setAttr ".tk[141]" -type "float3" -0.01396342 0 0.014287719 ;
	setAttr ".tk[144]" -type "float3" -0.021251861 0 0.020734511 ;
	setAttr ".tk[179]" -type "float3" 0.044650488 -0.064629234 -0.045324616 ;
	setAttr ".tk[180]" -type "float3" 0.0018666598 -0.038704742 -0.049447395 ;
	setAttr ".tk[181]" -type "float3" -0.00035687693 -0.059483487 0.00026119928 ;
	setAttr ".tk[182]" -type "float3" 0.051271837 -0.086895451 -0.003224758 ;
	setAttr ".tk[183]" -type "float3" -0.032879017 -0.024859171 -0.036544617 ;
	setAttr ".tk[184]" -type "float3" -0.050008591 -0.033071 0.0037207762 ;
	setAttr ".tk[185]" -type "float3" -0.0025144804 -0.079964839 0.049445719 ;
	setAttr ".tk[186]" -type "float3" 0.03512679 -0.099206306 0.035544463 ;
	setAttr ".tk[187]" -type "float3" -0.046272781 -0.052856635 0.043586355 ;
createNode polyExtrudeFace -n "polyExtrudeFace60";
	rename -uid "F623EA4D-4AAE-E664-1530-D5A57447B762";
	setAttr ".ics" -type "componentList" 2 "f[13:14]" "f[18:19]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 8.7563127465678701 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.64492053 9.8924427 0.54297799 ;
	setAttr ".rs" 45116;
	setAttr ".lt" -type "double3" -1.457167719820518e-016 3.4867941867133823e-016 0.050802550275271141 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.63026547431945801 9.8737081475688466 0.52371573448181152 ;
	setAttr ".cbx" -type "double3" 0.65957564115524292 9.9111772962047109 0.56224024295806885 ;
createNode polyTweak -n "polyTweak92";
	rename -uid "836A3126-4774-0C13-A629-AAB018861F9D";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk[187:195]" -type "float3"  0.019657757 -0.011478713 -0.023132704
		 0.0040412797 0.0048356727 -0.017225785 -0.00019335077 -0.012265112 0.00010887879
		 0.018993514 -0.02814834 -0.010060924 -0.0096810237 0.012046804 -0.0068339035 -0.018596303
		 0.0029580647 0.0099744992 -0.0043212371 -0.029181914 0.017295629 0.0094516994 -0.037474446
		 0.0050287503 -0.019745057 -0.013179238 0.023067575;
createNode polyExtrudeFace -n "polyExtrudeFace61";
	rename -uid "C17E0C41-4F1E-3E11-286C-18A8E8C621A1";
	setAttr ".ics" -type "componentList" 2 "f[13:14]" "f[18:19]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 8.7563127465678701 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.68448871 9.8452768 0.57548285 ;
	setAttr ".rs" 43151;
	setAttr ".lt" -type "double3" -4.5916461621851095e-017 1.2811041793231781e-016 0.0032902423314518808 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.67308503389358521 9.8452767320109853 0.56252580881118774 ;
	setAttr ".cbx" -type "double3" 0.69589239358901978 9.8452768512202748 0.58843988180160522 ;
createNode polyTweak -n "polyTweak93";
	rename -uid "99FE7C0B-4019-5A8D-AC79-C698CF76E5DB";
	setAttr ".uopa" yes;
	setAttr -s 17 ".tk";
	setAttr ".tk[179]" -type "float3" 0.0016339663 0 -0.0046442803 ;
	setAttr ".tk[180]" -type "float3" 0.00033238358 0 -0.0030138157 ;
	setAttr ".tk[181]" -type "float3" 0.0016339663 0 -0.0046442803 ;
	setAttr ".tk[182]" -type "float3" 0.0016339663 0 -0.0046442803 ;
	setAttr ".tk[183]" -type "float3" 0.0016339663 0 -0.0046442803 ;
	setAttr ".tk[184]" -type "float3" 0.0016339663 0 -0.0046442803 ;
	setAttr ".tk[185]" -type "float3" 0.0016339663 0 -0.0046442803 ;
	setAttr ".tk[186]" -type "float3" 0.0016339663 0 -0.0046442803 ;
	setAttr ".tk[195]" -type "float3" 0.0068673268 -0.034217268 -0.0039118803 ;
	setAttr ".tk[196]" -type "float3" -0.00083844247 -0.021555355 -0.0020805867 ;
	setAttr ".tk[197]" -type "float3" 0.0002903736 -0.034024656 0.002933424 ;
	setAttr ".tk[198]" -type "float3" 0.0075022508 -0.045733806 0.0017811044 ;
	setAttr ".tk[199]" -type "float3" -0.0055340962 -0.015913513 -0.00032234623 ;
	setAttr ".tk[200]" -type "float3" -0.0065653245 -0.022943951 0.0041036848 ;
	setAttr ".tk[201]" -type "float3" 0.0014737241 -0.046470098 0.0079367263 ;
	setAttr ".tk[202]" -type "float3" 0.0055522807 -0.050736781 0.0053328387 ;
	setAttr ".tk[203]" -type "float3" -0.0057090675 -0.035426509 0.009986354 ;
createNode polyExtrudeFace -n "polyExtrudeFace62";
	rename -uid "A3028603-435E-8F15-E8CE-068AB43C1FF1";
	setAttr ".ics" -type "componentList" 2 "f[13:14]" "f[18:19]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 8.7563127465678701 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.68448877 9.8419867 0.57548302 ;
	setAttr ".rs" 46369;
	setAttr ".lt" -type "double3" -5.6152461051447739e-017 -4.2410622031667598e-017 
		0.011551083392347042 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.66499876976013184 9.8419857211543569 0.55333822965621948 ;
	setAttr ".cbx" -type "double3" 0.70397883653640747 9.8419873900844106 0.59762781858444214 ;
createNode polyTweak -n "polyTweak94";
	rename -uid "A5ED814D-452E-B5D0-33AE-1FB44C31DFC5";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk[203:211]" -type "float3"  -0.0056412034 3.3590956e-007
		 0.0088016819 -0.008086171 3.3590956e-007 0.0022718103 3.6115478e-005 -3.3590956e-007
		 -0.00018875052 6.1390456e-005 3.3590956e-007 0.0091875913 -0.0065798424 -3.3590956e-007
		 -0.0046183513 6.3079657e-005 -3.3590956e-007 -0.0091875913 0.008086171 3.3590956e-007
		 -0.0026073058 0.0061006546 3.3590956e-007 0.0046328511 0.0062116398 3.3590956e-007
		 -0.0086434018;
createNode polyExtrudeFace -n "polyExtrudeFace63";
	rename -uid "4F6AE907-4BA8-81FD-7804-92A3D7C692C2";
	setAttr ".ics" -type "componentList" 2 "f[13:14]" "f[18:19]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 8.7563127465678701 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.68448895 9.8304358 0.57548314 ;
	setAttr ".rs" 51792;
	setAttr ".lt" -type "double3" -3.4365714851258777e-018 -3.1974805544580194e-017 
		0.010782733322636743 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.65425533056259155 9.8304349370433339 0.54113185405731201 ;
	setAttr ".cbx" -type "double3" 0.71472257375717163 9.8304363675548085 0.60983443260192871 ;
createNode polyTweak -n "polyTweak95";
	rename -uid "74B063CE-44F2-C856-21D0-FBA8AC0485F1";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk[211:219]" -type "float3"  -0.0074949139 2.6140631e-007
		 0.011693789 -0.010743178 2.6140631e-007 0.003018324 4.7999936e-005 -2.6140631e-007
		 -0.00025077566 8.1542879e-005 2.6140631e-007 0.01220635 -0.0087419292 -2.6140631e-007
		 -0.0061358316 8.3811887e-005 -2.6140631e-007 -0.01220635 0.010743178 2.6140631e-007
		 -0.003464024 0.0081052789 2.6140631e-007 0.0061549521 0.0082527949 2.6140631e-007
		 -0.011483354;
createNode polyExtrudeFace -n "polyExtrudeFace64";
	rename -uid "BD53AB5F-4A80-4968-43DB-ECB1C4DDFC03";
	setAttr ".ics" -type "componentList" 2 "f[13:14]" "f[18:19]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 8.7563127465678701 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.68448907 9.8196526 0.5754832 ;
	setAttr ".rs" 38984;
	setAttr ".lt" -type "double3" 1.0494139999612012e-016 1.2048805446676007e-016 0.012390363062077381 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.64970463514328003 9.819651860757018 0.53596127033233643 ;
	setAttr ".cbx" -type "double3" 0.71927344799041748 9.8196540065242299 0.61500513553619385 ;
createNode polyTweak -n "polyTweak96";
	rename -uid "7B3BD563-4731-E225-E10B-EA87961453B3";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk[219:227]" -type "float3"  -0.0031746968 1.4299528e-007
		 0.0049532494 -0.0045505879 1.4299528e-007 0.0012785068 2.0333382e-005 -1.4299528e-007
		 -0.00010621061 3.453442e-005 1.4299528e-007 0.0051703639 -0.0037028999 0 -0.0025989979
		 3.5502748e-005 0 -0.0051703639 0.0045505879 1.4299528e-007 -0.0014672974 0.0034332233
		 1.4299528e-007 0.002607137 0.003495727 1.4299528e-007 -0.0048641558;
createNode polyExtrudeFace -n "polyExtrudeFace65";
	rename -uid "74C653D1-4BA1-27B5-DF67-CCB945A7C1EA";
	setAttr ".ics" -type "componentList" 2 "f[13:14]" "f[18:19]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 8.7563127465678701 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.68448919 9.8072624 0.57548332 ;
	setAttr ".rs" 56839;
	setAttr ".lt" -type "double3" -1.7094474834351467e-016 -2.2876792894386232e-016 
		0.013124261665891129 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.64970427751541138 9.8072618432475576 0.53596091270446777 ;
	setAttr ".cbx" -type "double3" 0.71927404403686523 9.8072637505961904 0.6150057315826416 ;
createNode polyExtrudeFace -n "polyExtrudeFace66";
	rename -uid "67931A5A-4F34-6C5B-3E77-01A08A9ADCE8";
	setAttr ".ics" -type "componentList" 2 "f[13:14]" "f[18:19]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 8.7563127465678701 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.68448931 9.794138 0.57548368 ;
	setAttr ".rs" 36764;
	setAttr ".lt" -type "double3" -2.5541892065746302e-016 2.0778776987332055e-018 0.012947142633317421 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.65581178665161133 9.7941374965144643 0.54290056228637695 ;
	setAttr ".cbx" -type "double3" 0.71316677331924438 9.794139165444518 0.60806673765182495 ;
createNode polyTweak -n "polyTweak97";
	rename -uid "C82A0835-4EAF-9085-D31E-C384AD389CB8";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk[235:243]" -type "float3"  0.0042611714 -1.6787018e-007
		 -0.0066482387 0.0061078491 -1.6787018e-007 -0.001715965 -2.7289767e-005 1.6787018e-007
		 0.00014254688 -4.6347541e-005 -1.6787018e-007 -0.0069396696 0.004970103 0 0.0034884505
		 -4.7655562e-005 0 0.0069396696 -0.0061078491 -1.6787018e-007 0.0019693521 -0.0046081538
		 -1.6787018e-007 -0.0034994092 -0.0046920474 -1.6787018e-007 0.0065286886;
createNode polyExtrudeFace -n "polyExtrudeFace67";
	rename -uid "8CF08A3D-43FB-A169-ED84-1F8319C39873";
	setAttr ".ics" -type "componentList" 2 "f[28:29]" "f[33:34]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 8.7563127465678701 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.25074619 9.5133715 -0.2262926 ;
	setAttr ".rs" 58887;
	setAttr ".lt" -type "double3" 0 5.3373332716616579e-018 0.17624547107034524 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.05612211674451828 9.5133718438579091 -0.41021254658699036 ;
	setAttr ".cbx" -type "double3" 0.44537025690078735 9.5133718438579091 -0.042372651398181915 ;
createNode polyTweak -n "polyTweak98";
	rename -uid "676D5AF4-4AC1-1354-08D5-1FAAA61DACC8";
	setAttr ".uopa" yes;
	setAttr -s 66 ".tk";
	setAttr ".tk[154]" -type "float3" 0.055722993 0 -0.04000441 ;
	setAttr ".tk[155]" -type "float3" 0.024349712 0 -0.028411116 ;
	setAttr ".tk[156]" -type "float3" 0.024349712 0 -0.01038468 ;
	setAttr ".tk[157]" -type "float3" 0.043890566 0 -0.01038468 ;
	setAttr ".tk[158]" -type "float3" -0.014344448 0 -0.0053739301 ;
	setAttr ".tk[159]" -type "float3" 0.0055207452 0 -0.010384666 ;
	setAttr ".tk[160]" -type "float3" 0.024349712 0 0.0078484183 ;
	setAttr ".tk[161]" -type "float3" 0.04023163 0 0.0057380674 ;
	setAttr ".tk[162]" -type "float3" 0.011573512 0 0.0037507028 ;
	setAttr ".tk[195]" -type "float3" 0.0013928068 0.00024589369 -0.0031410612 ;
	setAttr ".tk[196]" -type "float3" 0.00071040698 0.00010628466 -0.0012976392 ;
	setAttr ".tk[197]" -type "float3" 0.00099064526 0.00019182196 -0.0025034696 ;
	setAttr ".tk[198]" -type "float3" -0.00033494708 -8.6843924e-005 0.0011963111 ;
	setAttr ".tk[199]" -type "float3" -0.001477475 -0.00027819775 0.0036081832 ;
	setAttr ".tk[200]" -type "float3" -0.001232397 -0.00019984739 0.0024972337 ;
	setAttr ".tk[201]" -type "float3" -0.00010191558 7.6008778e-006 -0.00017741244 ;
	setAttr ".tk[202]" -type "float3" -0.0018938519 -0.00033321584 0.004252959 ;
	setAttr ".tk[203]" -type "float3" -0.011115712 -0.011884646 0.01342135 ;
	setAttr ".tk[204]" -type "float3" -0.021094522 -0.012421095 0.00085722061 ;
	setAttr ".tk[205]" -type "float3" 0.0044974438 -0.012092441 0.017032437 ;
	setAttr ".tk[206]" -type "float3" -0.020579018 -0.013164444 -0.010291309 ;
	setAttr ".tk[207]" -type "float3" -0.0049816268 -0.013899788 -0.014771528 ;
	setAttr ".tk[208]" -type "float3" 0.020100765 -0.013597494 0.00075885031 ;
	setAttr ".tk[209]" -type "float3" 0.018470734 -0.012800314 0.012265771 ;
	setAttr ".tk[210]" -type "float3" 0.011918666 -0.014110016 -0.01065624 ;
	setAttr ".tk[211]" -type "float3" -0.016810484 -0.025656611 0.019743154 ;
	setAttr ".tk[212]" -type "float3" -0.032289688 -0.026488747 0.00025340726 ;
	setAttr ".tk[213]" -type "float3" 0.0074092709 -0.025978923 0.025344627 ;
	setAttr ".tk[214]" -type "float3" -0.031490143 -0.027641151 -0.017040474 ;
	setAttr ".tk[215]" -type "float3" -0.0072946837 -0.028781783 -0.023990113 ;
	setAttr ".tk[216]" -type "float3" 0.031613871 -0.028313585 0.00010079946 ;
	setAttr ".tk[217]" -type "float3" 0.029085128 -0.027077023 0.017950319 ;
	setAttr ".tk[218]" -type "float3" 0.018921856 -0.029108573 -0.017606309 ;
	setAttr ".tk[219]" -type "float3" -0.019117393 -0.038823515 0.022180893 ;
	setAttr ".tk[220]" -type "float3" -0.036926378 -0.039780952 -0.0002424992 ;
	setAttr ".tk[221]" -type "float3" 0.00874798 -0.039194353 0.02862547 ;
	setAttr ".tk[222]" -type "float3" -0.036006518 -0.041106679 -0.020139426 ;
	setAttr ".tk[223]" -type "float3" -0.0081691341 -0.042418949 -0.028135229 ;
	setAttr ".tk[224]" -type "float3" 0.036595866 -0.041880444 -0.00041813948 ;
	setAttr ".tk[225]" -type "float3" 0.033686627 -0.040457737 0.020118365 ;
	setAttr ".tk[226]" -type "float3" 0.021993598 -0.042795133 -0.020790737 ;
	setAttr ".tk[227]" -type "float3" -0.018896198 -0.054251265 0.021675933 ;
	setAttr ".tk[228]" -type "float3" -0.03670539 -0.05520872 -0.0007477795 ;
	setAttr ".tk[229]" -type "float3" 0.0089697381 -0.05462211 0.028120656 ;
	setAttr ".tk[230]" -type "float3" -0.035785481 -0.056534395 -0.020645026 ;
	setAttr ".tk[231]" -type "float3" -0.0079476032 -0.057846736 -0.028640673 ;
	setAttr ".tk[232]" -type "float3" 0.036818083 -0.057308223 -0.00092313037 ;
	setAttr ".tk[233]" -type "float3" 0.033908993 -0.055885497 0.019613728 ;
	setAttr ".tk[234]" -type "float3" 0.022215677 -0.058222931 -0.02129611 ;
	setAttr ".tk[235]" -type "float3" -0.01530681 -0.070940636 0.01727937 ;
	setAttr ".tk[236]" -type "float3" -0.029988915 -0.07173001 -0.0012072192 ;
	setAttr ".tk[237]" -type "float3" 0.0076666344 -0.071246423 0.02259264 ;
	setAttr ".tk[238]" -type "float3" -0.029230768 -0.072823174 -0.017610975 ;
	setAttr ".tk[239]" -type "float3" -0.0062803496 -0.073905088 -0.024202619 ;
	setAttr ".tk[240]" -type "float3" 0.030625524 -0.073460869 -0.001351604 ;
	setAttr ".tk[241]" -type "float3" 0.028227298 -0.072287984 0.015579513 ;
	setAttr ".tk[242]" -type "float3" 0.018587127 -0.074214987 -0.018147552 ;
	setAttr ".tk[243]" -type "float3" -0.0019570843 -0.078446187 -0.0012849425 ;
	setAttr ".tk[244]" -type "float3" -0.0080243889 -0.078944348 -0.0044088117 ;
	setAttr ".tk[245]" -type "float3" 0.00055692182 -0.079494692 -0.0012517211 ;
	setAttr ".tk[246]" -type "float3" 0.0050808028 -0.078639157 0.0015635387 ;
	setAttr ".tk[247]" -type "float3" -0.0095164999 -0.079633854 -0.0057468666 ;
	setAttr ".tk[248]" -type "float3" -0.0037233953 -0.08031664 -0.0039290721 ;
	setAttr ".tk[249]" -type "float3" 0.0090714833 -0.080036767 0.001883392 ;
	setAttr ".tk[250]" -type "float3" 0.010155525 -0.079296507 0.0030964164 ;
	setAttr ".tk[251]" -type "float3" 0.0039262702 -0.080512665 -0.00081953953 ;
createNode polyExtrudeFace -n "polyExtrudeFace68";
	rename -uid "06C1D671-4575-72DB-2A82-4AB02562E566";
	setAttr ".ics" -type "componentList" 2 "f[28:29]" "f[33:34]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 8.7563127465678701 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.35830522 9.6973696 -0.33917528 ;
	setAttr ".rs" 61107;
	setAttr ".lt" -type "double3" -1.2490009027033011e-016 4.9960036108132044e-016 0.18829646690693005 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.23940825462341309 9.5706345625354299 -0.47194963693618774 ;
	setAttr ".cbx" -type "double3" 0.47720217704772949 9.8241044469310292 -0.20640094578266144 ;
createNode polyTweak -n "polyTweak99";
	rename -uid "B8308F23-4607-A496-826C-0186EE479F48";
	setAttr ".uopa" yes;
	setAttr -s 17 ".tk";
	setAttr ".tk[154]" -type "float3" 0.0034452085 0.039613765 -0.0017119348 ;
	setAttr ".tk[155]" -type "float3" 0.0030494779 0.027219027 -0.0021113381 ;
	setAttr ".tk[156]" -type "float3" 0.0012101242 0.02167036 -1.1972152e-005 ;
	setAttr ".tk[157]" -type "float3" 0.001807332 0.0075980648 -0.0018997043 ;
	setAttr ".tk[158]" -type "float3" -0.015665671 -0.021355547 -0.0048723537 ;
	setAttr ".tk[159]" -type "float3" -0.0030937716 -0.028017327 0.0021114503 ;
	setAttr ".tk[160]" -type "float3" -0.0017489344 -0.0069933645 0.001865678 ;
	setAttr ".tk[161]" -type "float3" -0.003193751 -0.036101572 0.0016342257 ;
	setAttr ".tk[251]" -type "float3" 0.18815042 0.13448785 -0.19147938 ;
	setAttr ".tk[252]" -type "float3" 0.13082322 0.07539323 -0.17723811 ;
	setAttr ".tk[253]" -type "float3" 0.10615447 -7.6851611e-005 -0.11350153 ;
	setAttr ".tk[254]" -type "float3" 0.18328613 0.091273367 -0.14629275 ;
	setAttr ".tk[255]" -type "float3" 0.069013759 -0.0024722433 -0.14559273 ;
	setAttr ".tk[256]" -type "float3" 0.031831916 -0.088098198 -0.081903949 ;
	setAttr ".tk[257]" -type "float3" 0.081201926 -0.076411292 -0.049033318 ;
	setAttr ".tk[258]" -type "float3" 0.14677937 0.0066689192 -0.083146684 ;
	setAttr ".tk[259]" -type "float3" 0.036379218 -0.118982 -0.042081933 ;
createNode polyExtrudeFace -n "polyExtrudeFace69";
	rename -uid "CCE7D187-47F2-347C-7BEB-2F8488EA8B48";
	setAttr ".ics" -type "componentList" 2 "f[28:29]" "f[33:34]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 8.7563127465678701 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.55677992 9.8157005 -0.50633633 ;
	setAttr ".rs" 33534;
	setAttr ".lt" -type "double3" -3.3306690738754696e-016 2.643718577388654e-015 0.29245270651330024 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.47903668880462646 9.6984780617190847 -0.61049824953079224 ;
	setAttr ".cbx" -type "double3" 0.63452315330505371 9.9329234548045644 -0.40217438340187073 ;
createNode polyTweak -n "polyTweak100";
	rename -uid "BE38488C-4544-63D0-21D7-17A625B9F796";
	setAttr ".uopa" yes;
	setAttr -s 17 ".tk[251:267]" -type "float3"  0.0086488668 0 0.0082939649
		 0.0086488668 0 0.0082939649 0.0086488668 0 0.0082939649 0.0086488668 0 0.0082939649
		 0.0086488668 0 0.0082939649 0.0086488668 0 0.0082939649 0.0086488668 0 0.0082939649
		 0.0086488668 0 0.0082939649 0.16688497 -0.0065910961 -0.14838387 0.10837824 0.0015160063
		 -0.13230555 0.08387997 0.0037469289 -0.069700629 0.16243818 -0.0068625198 -0.10450928
		 0.04548946 0.0099007236 -0.099223457 0.0081837652 0.013970707 -0.036160346 0.059100911
		 0.0060043451 -0.0063782739 0.12581743 -0.0028799737 -0.041998386 0.013306771 0.012433959
		 0.0021493987;
createNode polyExtrudeFace -n "polyExtrudeFace70";
	rename -uid "AF649B56-412E-3E71-6E52-31A04F31D3DF";
	setAttr ".ics" -type "componentList" 2 "f[28:29]" "f[33:34]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 8.7563127465678701 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.78370452 9.7928715 -0.68737596 ;
	setAttr ".rs" 35278;
	setAttr ".lt" -type "double3" 1.6150275561344074e-015 -1.1934897514720433e-015 0.14724604367920052 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.74769794940948486 9.7625613398982534 -0.72917068004608154 ;
	setAttr ".cbx" -type "double3" 0.81971108913421631 9.8231822438670644 -0.64558124542236328 ;
createNode polyTweak -n "polyTweak101";
	rename -uid "34E559A6-4141-3DAE-775C-B3B027E9E9E6";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk[267:275]" -type "float3"  0.014246451 -0.087162226 -0.027099909
		 -0.020906527 -0.046273306 -0.056571223 -0.0075403964 0.00514217 -0.0074533187 0.03301524
		 -0.057873737 0.01757681 -0.050750796 0.0073758131 -0.070870638 -0.04661848 0.065864153
		 -0.031571481 0.0059791529 0.05714843 0.042227622 0.037376117 -8.7996334e-005 0.056820553
		 -0.0235753 0.086662434 0.01469727;
createNode polyExtrudeFace -n "polyExtrudeFace71";
	rename -uid "645A17E2-4D9B-1C5A-8990-C092E5EC86EA";
	setAttr ".ics" -type "componentList" 2 "f[28:29]" "f[33:34]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 8.7563127465678701 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.86227179 9.678709 -0.73768121 ;
	setAttr ".rs" 39418;
	setAttr ".lt" -type "double3" -5.6662374885694828e-017 -6.8846837952829532e-017 
		0.012687768603352852 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.84418535232543945 9.6777767725421437 -0.75680679082870483 ;
	setAttr ".cbx" -type "double3" 0.88035827875137329 9.6796409674121389 -0.71855568885803223 ;
createNode polyTweak -n "polyTweak102";
	rename -uid "618E228B-42BE-0926-AC66-4A883CA01330";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk[275:283]" -type "float3"  -0.012184626 -0.031717274
		 0.014135469 -0.018800313 -0.020921286 -0.0054880404 -0.00098296092 0.0005534197 7.0634444e-005
		 0.0030291332 -0.017953454 0.023159532 -0.021179175 -0.0045225075 -0.023965692 -0.0048482479
		 0.018385658 -0.022177607 0.017039046 0.022274287 0.0056927227 0.019303197 0.0047188303
		 0.02508712 0.010365939 0.029492261 -0.010666706;
createNode polyExtrudeFace -n "polyExtrudeFace72";
	rename -uid "0C5899C5-48E5-E3B4-F7D2-3E9B7871B038";
	setAttr ".ics" -type "componentList" 2 "f[28:29]" "f[33:34]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 8.7563127465678701 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.86247641 9.6660357 -0.73713493 ;
	setAttr ".rs" 55403;
	setAttr ".lt" -type "double3" 1.243571421511401e-016 1.6263032587282567e-017 0.028599050044599325 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.82601606845855713 9.6641544290019521 -0.77569007873535156 ;
	setAttr ".cbx" -type "double3" 0.89893674850463867 9.6679166741801748 -0.69857972860336304 ;
createNode polyTweak -n "polyTweak103";
	rename -uid "010742CA-4A0F-1F3E-06CF-B184066603A8";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk[283:291]" -type "float3"  0.015278239 -0.00033858616
		 -0.01290507 0.018373676 0.00036959222 0.0022427023 0.00010475713 1.5017711e-005 0.00036048886
		 0.0021591128 -0.00078133523 -0.019429347 0.01250348 0.00094798143 0.014397657 -0.0018747626
		 0.00078328454 0.019429347 -0.018373676 -0.00034343984 -0.001543228 -0.012088707 -0.00094798143
		 -0.014496595 -0.015577947 0.00025722149 0.011806167;
createNode polyExtrudeFace -n "polyExtrudeFace73";
	rename -uid "2BA63A0E-4212-3868-9F4E-E0A6F25E1731";
	setAttr ".ics" -type "componentList" 2 "f[28:29]" "f[33:34]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 8.7563127465678701 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.86295736 9.6467438 -0.73587495 ;
	setAttr ".rs" 48946;
	setAttr ".lt" -type "double3" 2.5758356629297999e-016 -7.1340502949546192e-017 0.02584264946773504 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.81344342231750488 9.6441873498393544 -0.78823745250701904 ;
	setAttr ".cbx" -type "double3" 0.91247129440307617 9.6492996402217397 -0.68351244926452637 ;
createNode polyTweak -n "polyTweak104";
	rename -uid "8DD8188A-4F3A-1D2E-FB89-329D90634D7B";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk[291:299]" -type "float3"  0.01127855 0.0090284133 -0.009593131
		 0.013057015 0.0095332377 0.0015954777 7.44602e-005 0.009280826 0.00025619025 0.0015330167
		 0.0087148705 -0.013808186 0.0093850344 0.0099454978 0.010816609 -0.0013309193 0.0098269824
		 0.013808186 -0.013057015 0.0090260273 -0.0010983646 -0.0090492237 0.0085973693 -0.010844435
		 -0.011089135 0.0094519518 0.0083675282;
createNode polyExtrudeFace -n "polyExtrudeFace74";
	rename -uid "A1852DF4-4857-5074-4FB4-46A3524233B6";
	setAttr ".ics" -type "componentList" 2 "f[28:29]" "f[33:34]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 8.7563127465678701 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.86339211 9.6209335 -0.73473603 ;
	setAttr ".rs" 59312;
	setAttr ".lt" -type "double3" -8.3758111835412642e-017 2.0599841277224584e-017 0.034056663934961991 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.80798298120498657 9.6180725880099782 -0.79333555698394775 ;
	setAttr ".cbx" -type "double3" 0.91880130767822266 9.6237942762805471 -0.67613649368286133 ;
createNode polyTweak -n "polyTweak105";
	rename -uid "5E7EACB3-45F5-018B-F6B0-78A68AEBEDBF";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk[299:307]" -type "float3"  0.0050881715 -0.00011071283
		 -0.0043396177 0.005898207 0.0001177569 0.0007212077 3.3632703e-005 3.8067928e-006
		 0.00011573303 0.00069211173 -0.00025193099 -0.0062378161 0.0042459918 0.00030453363
		 0.0048932144 -0.00060081179 0.00025045397 0.0062378161 -0.005898207 -0.0001112806
		 -0.00049662625 -0.0040819393 -0.00030453363 -0.0048929509 -0.0050149518 8.0605132e-005
		 0.0037731281;
createNode polyExtrudeFace -n "polyExtrudeFace75";
	rename -uid "381E3F49-45DD-0379-98FC-30B102086B0E";
	setAttr ".ics" -type "componentList" 2 "f[28:29]" "f[33:34]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 8.7563127465678701 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.86396509 9.594346 -0.73323536 ;
	setAttr ".rs" 35855;
	setAttr ".lt" -type "double3" 2.9532428392819781e-016 1.9949319973733282e-017 0.025111220092517868 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.81365668773651123 9.5917488522960195 -0.78644293546676636 ;
	setAttr ".cbx" -type "double3" 0.91427344083786011 9.5969436355067739 -0.68002778291702271 ;
createNode polyTweak -n "polyTweak106";
	rename -uid "7819880E-4D4A-B208-0A6D-B9828493C48B";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk[307:315]" -type "float3"  -0.0043900334 0.0075231125
		 0.0037561886 -0.0050967955 0.0073251943 -0.00062371494 -2.9057326e-005 0.0074237143
		 -0.00010001744 -0.00059765636 0.0076447059 0.0053905174 -0.0036757104 0.0071634208
		 -0.0042355116 0.000518755 0.0072105317 -0.0053905174 0.0050967955 0.0075232 0.00042963488
		 0.0035213826 0.0076897112 0.0042222324 0.0043393145 0.0073577422 -0.0032535847;
createNode polyTweak -n "polyTweak107";
	rename -uid "7C566F47-42C8-D231-E414-D49D50E6E39F";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk[315:323]" -type "float3"  -0.016500181 0.0037611183
		 0.014154172 -0.01918068 0.0030602026 -0.002348756 -0.00010933699 0.0034091226 -0.00037642749
		 -0.0022478402 0.0041903509 0.020286633 -0.013853015 0.0024870983 -0.015960896 0.001950897
		 0.0026548919 -0.020286633 0.01918068 0.0037607772 0.0016183321 0.01323392 0.004348577
		 0.015871458 0.016347604 0.0031770787 -0.012223152;
createNode deleteComponent -n "deleteComponent24";
	rename -uid "F973CECD-40D9-0FF7-1E49-F68801D2C6FB";
	setAttr ".dc" -type "componentList" 26 "f[0:1]" "f[5:6]" "f[10:11]" "f[15:16]" "f[20:21]" "f[25:26]" "f[30:31]" "f[35:36]" "f[40:41]" "f[45:46]" "f[50:51]" "f[55:56]" "f[60:61]" "f[65:66]" "f[80:92]" "f[97]" "f[99]" "f[101]" "f[103:105]" "f[110:112]" "f[117]" "f[119]" "f[121]" "f[123:125]" "f[130:137]" "f[146:153]";
createNode polyMirror -n "polyMirror3";
	rename -uid "61AEDA00-4E3D-B83B-7670-088BB5DDEF81";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.0094961573876823357 8.7563127465678701 0 1;
	setAttr ".ws" yes;
	setAttr ".mtt" 1;
	setAttr ".mt" 0.77055841684341431;
	setAttr ".cm" yes;
	setAttr ".fnf" 250;
	setAttr ".lnf" 499;
createNode polyTweak -n "polyTweak108";
	rename -uid "FEE65EFE-47BB-425D-6C4A-399BBEEF3A41";
	setAttr ".uopa" yes;
	setAttr -s 18 ".tk";
	setAttr ".tk[0]" -type "float3" 0.0027354043 0 0 ;
	setAttr ".tk[4]" -type "float3" 0.003295647 0 0 ;
	setAttr ".tk[8]" -type "float3" 0.0012188196 0 0 ;
	setAttr ".tk[12]" -type "float3" 0.0027354043 0 0 ;
	setAttr ".tk[15]" -type "float3" 0.0027354043 0 0 ;
	setAttr ".tk[19]" -type "float3" 0.0027354043 0 0 ;
	setAttr ".tk[23]" -type "float3" 0.0027354043 0 0 ;
	setAttr ".tk[26]" -type "float3" 0.0012188196 0 0 ;
	setAttr ".tk[30]" -type "float3" 0.003295647 0 0 ;
	setAttr ".tk[34]" -type "float3" 0.0027354043 0 0 ;
	setAttr ".tk[46]" -type "float3" 0.0013345259 0 0 ;
	setAttr ".tk[54]" -type "float3" 0.0013345259 0 0 ;
	setAttr ".tk[58]" -type "float3" 0.0013345259 0 0 ;
	setAttr ".tk[59]" -type "float3" 0.0013345259 0 0 ;
	setAttr ".tk[66]" -type "float3" 0.0013345259 0 0 ;
	setAttr ".tk[70]" -type "float3" 0.0013345259 0 0 ;
	setAttr ".tk[74]" -type "float3" 0.0013345259 0 0 ;
	setAttr ".tk[78]" -type "float3" 0.0013345259 0 0 ;
createNode polySplitRing -n "polySplitRing20";
	rename -uid "8F6EC576-4944-A84C-E130-8780BEC239C7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "e[40:43]" "e[60]" "e[65]" "e[88]" "e[122:123]" "e[125]" "e[128]" "e[540]" "e[543]" "e[546]" "e[593]" "e[595]" "e[597]" "e[617:618]" "e[644]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.0094961573876823357 8.7563127465678701 0 1;
	setAttr ".wt" 0.54256963729858398;
	setAttr ".dr" no;
	setAttr ".re" 40;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak109";
	rename -uid "C816AC8B-4789-EE43-DA3D-EFB5EAC08E7C";
	setAttr ".uopa" yes;
	setAttr -s 242 ".tk";
	setAttr ".tk[8]" -type "float3" 0 -0.027040284 0 ;
	setAttr ".tk[12]" -type "float3" 0 -0.027040284 0 ;
	setAttr ".tk[15]" -type "float3" 0 -0.027040284 0.014255247 ;
	setAttr ".tk[16]" -type "float3" 0 0 0.014255247 ;
	setAttr ".tk[17]" -type "float3" 0 0 0.014255247 ;
	setAttr ".tk[18]" -type "float3" 0 0 0.012487724 ;
	setAttr ".tk[19]" -type "float3" 0 -0.027040284 -0.014255247 ;
	setAttr ".tk[20]" -type "float3" 0 0 -0.014255247 ;
	setAttr ".tk[21]" -type "float3" 0 0 -0.014255247 ;
	setAttr ".tk[22]" -type "float3" 0 0 -0.012487724 ;
	setAttr ".tk[23]" -type "float3" 0 -0.027040284 0 ;
	setAttr ".tk[26]" -type "float3" 0 -0.027040284 0 ;
	setAttr ".tk[39]" -type "float3" 0 0 -0.014255248 ;
	setAttr ".tk[40]" -type "float3" 0 0 0.014255248 ;
	setAttr ".tk[43]" -type "float3" 0 0 -0.014908202 ;
	setAttr ".tk[44]" -type "float3" 0 0 0.014908202 ;
	setAttr ".tk[51]" -type "float3" 0 0 -0.012622593 ;
	setAttr ".tk[52]" -type "float3" 0 0 0.012622593 ;
	setAttr ".tk[58]" -type "float3" 3.7252903e-009 -0.084817909 0.081381455 ;
	setAttr ".tk[59]" -type "float3" 3.7252903e-009 -0.084817909 0.041170079 ;
	setAttr ".tk[60]" -type "float3" -0.0037363842 -0.08481773 0.081381477 ;
	setAttr ".tk[61]" -type "float3" -0.0037363842 -0.084817909 0.04117009 ;
	setAttr ".tk[62]" -type "float3" -0.039503776 -0.084817909 0.07537204 ;
	setAttr ".tk[63]" -type "float3" -0.042514302 -0.084817909 0.041170016 ;
	setAttr ".tk[64]" -type "float3" -0.062357448 -0.084817909 0.060611989 ;
	setAttr ".tk[65]" -type "float3" -0.077625312 -0.084817909 0.03838671 ;
	setAttr ".tk[66]" -type "float3" 3.7252903e-009 -0.084817909 -0.0084169097 ;
	setAttr ".tk[67]" -type "float3" -0.0037363842 -0.084817909 -0.0084169097 ;
	setAttr ".tk[68]" -type "float3" -0.042514302 -0.084817909 -0.0084164515 ;
	setAttr ".tk[69]" -type "float3" -0.083127007 -0.084817909 -0.0084159952 ;
	setAttr ".tk[70]" -type "float3" 3.7252903e-009 -0.084817909 0.0084169097 ;
	setAttr ".tk[71]" -type "float3" -0.0037363842 -0.084817909 0.0084169097 ;
	setAttr ".tk[72]" -type "float3" -0.042514302 -0.084817909 0.0084164515 ;
	setAttr ".tk[73]" -type "float3" -0.083127007 -0.084817909 0.0084159952 ;
	setAttr ".tk[74]" -type "float3" 3.7252903e-009 -0.084817909 -0.041170079 ;
	setAttr ".tk[75]" -type "float3" -0.0037363842 -0.084817909 -0.04117009 ;
	setAttr ".tk[76]" -type "float3" -0.042514302 -0.084817909 -0.041170016 ;
	setAttr ".tk[77]" -type "float3" -0.077625312 -0.084817909 -0.03838671 ;
	setAttr ".tk[78]" -type "float3" 3.7252903e-009 -0.084817909 -0.081381455 ;
	setAttr ".tk[79]" -type "float3" -0.0037363842 -0.08481773 -0.081381477 ;
	setAttr ".tk[80]" -type "float3" -0.039503776 -0.08481773 -0.07537204 ;
	setAttr ".tk[81]" -type "float3" -0.062357448 -0.08481773 -0.060611989 ;
	setAttr ".tk[271]" -type "float3" 0 0 0.014255247 ;
	setAttr ".tk[272]" -type "float3" 0 0 0.014255247 ;
	setAttr ".tk[273]" -type "float3" 0 0 0.012487724 ;
	setAttr ".tk[274]" -type "float3" 0 0 -0.014255247 ;
	setAttr ".tk[275]" -type "float3" 0 0 -0.014255247 ;
	setAttr ".tk[276]" -type "float3" 0 0 -0.012487724 ;
	setAttr ".tk[289]" -type "float3" 0 0 -0.014255248 ;
	setAttr ".tk[290]" -type "float3" 0 0 0.014255248 ;
	setAttr ".tk[293]" -type "float3" 0 0 -0.014908202 ;
	setAttr ".tk[294]" -type "float3" 0 0 0.014908202 ;
	setAttr ".tk[300]" -type "float3" 0 0 -0.012622593 ;
	setAttr ".tk[301]" -type "float3" 0 0 0.012622593 ;
	setAttr ".tk[306]" -type "float3" 0.0037363842 -0.08481773 0.081381477 ;
	setAttr ".tk[307]" -type "float3" 0.0037363842 -0.084817909 0.04117009 ;
	setAttr ".tk[308]" -type "float3" 0.039503776 -0.084817909 0.07537204 ;
	setAttr ".tk[309]" -type "float3" 0.042514294 -0.084817909 0.041170016 ;
	setAttr ".tk[310]" -type "float3" 0.062357455 -0.084817909 0.060611989 ;
	setAttr ".tk[311]" -type "float3" 0.077625304 -0.084817909 0.03838671 ;
	setAttr ".tk[312]" -type "float3" 0.0037363842 -0.084817909 -0.0084169097 ;
	setAttr ".tk[313]" -type "float3" 0.042514294 -0.084817909 -0.0084164515 ;
	setAttr ".tk[314]" -type "float3" 0.083127007 -0.084817909 -0.0084159952 ;
	setAttr ".tk[315]" -type "float3" 0.0037363842 -0.084817909 0.0084169097 ;
	setAttr ".tk[316]" -type "float3" 0.042514294 -0.084817909 0.0084164515 ;
	setAttr ".tk[317]" -type "float3" 0.083127007 -0.084817909 0.0084159952 ;
	setAttr ".tk[318]" -type "float3" 0.0037363842 -0.084817909 -0.04117009 ;
	setAttr ".tk[319]" -type "float3" 0.042514294 -0.084817909 -0.041170016 ;
	setAttr ".tk[320]" -type "float3" 0.077625304 -0.084817909 -0.03838671 ;
	setAttr ".tk[321]" -type "float3" 0.0037363842 -0.08481773 -0.081381477 ;
	setAttr ".tk[322]" -type "float3" 0.039503776 -0.08481773 -0.07537204 ;
	setAttr ".tk[323]" -type "float3" 0.062357455 -0.08481773 -0.060611989 ;
	setAttr ".tk[324]" -type "float3" 0.013671067 -0.00035560643 0.016548967 ;
	setAttr ".tk[325]" -type "float3" -0.0024208534 -0.0047464939 0.018615348 ;
	setAttr ".tk[326]" -type "float3" 0.019616477 0.0040955958 0.00158485 ;
	setAttr ".tk[327]" -type "float3" -0.012612881 -0.0070039285 0.012922325 ;
	setAttr ".tk[328]" -type "float3" -0.019616477 -0.0053909705 0.0010203579 ;
	setAttr ".tk[329]" -type "float3" -0.0010580152 0.0032296872 -0.018615348 ;
	setAttr ".tk[330]" -type "float3" 0.017052742 0.0070039285 -0.01552402 ;
	setAttr ".tk[331]" -type "float3" -0.017131325 -0.0018296917 -0.01350357 ;
	setAttr ".tk[340]" -type "float3" 0.023991324 -0.0022704357 0.02675622 ;
	setAttr ".tk[341]" -type "float3" -0.016397811 -0.012444354 0.046586696 ;
	setAttr ".tk[342]" -type "float3" 0.028725298 0.0092428643 0.0032483779 ;
	setAttr ".tk[343]" -type "float3" -0.033660565 -0.017230002 0.036563911 ;
	setAttr ".tk[344]" -type "float3" -0.04543215 -0.012346242 0.016002074 ;
	setAttr ".tk[345]" -type "float3" -0.0013654281 0.0088192653 -0.027150786 ;
	setAttr ".tk[346]" -type "float3" 0.021043986 0.017229995 -0.019518446 ;
	setAttr ".tk[347]" -type "float3" -0.026875682 -0.0030140623 -0.024565425 ;
	setAttr ".tk[348]" -type "float3" 0.0035175707 -0.0012777614 0.041466378 ;
	setAttr ".tk[349]" -type "float3" -0.012379337 -0.015176114 0.038206734 ;
	setAttr ".tk[350]" -type "float3" 0.0035767897 0.013341376 0.025742676 ;
	setAttr ".tk[351]" -type "float3" -0.026406394 -0.021919146 0.029379319 ;
	setAttr ".tk[352]" -type "float3" -0.035658386 -0.015776884 0.01214035 ;
	setAttr ".tk[353]" -type "float3" -0.02039092 0.012031912 -0.00034986902 ;
	setAttr ".tk[354]" -type "float3" -0.0051685655 0.021919144 0.0091275256 ;
	setAttr ".tk[355]" -type "float3" -0.036990482 -0.0035269721 -0.0025945576 ;
	setAttr ".tk[356]" -type "float3" 0.023712544 0.050154537 0.042245273 ;
	setAttr ".tk[357]" -type "float3" 0.010427489 0.029506 0.031291343 ;
	setAttr ".tk[358]" -type "float3" 0.017917398 0.072810844 0.029301511 ;
	setAttr ".tk[359]" -type "float3" -0.0051962072 0.020383999 0.014488955 ;
	setAttr ".tk[360]" -type "float3" -0.019008143 0.031840995 -0.0053087091 ;
	setAttr ".tk[361]" -type "float3" -0.011162056 0.074076183 -0.0065624444 ;
	setAttr ".tk[362]" -type "float3" 0.0035884567 0.085560486 0.011464873 ;
	setAttr ".tk[363]" -type "float3" -0.025420243 0.052234605 -0.018336458 ;
	setAttr ".tk[364]" -type "float3" -0.032986473 0.051149871 0.064867243 ;
	setAttr ".tk[365]" -type "float3" -0.03603984 0.042132884 0.056976382 ;
	setAttr ".tk[366]" -type "float3" -0.038490888 0.060363196 0.061368778 ;
	setAttr ".tk[367]" -type "float3" -0.040924963 0.038134359 0.048774589 ;
	setAttr ".tk[368]" -type "float3" -0.048356172 0.043125544 0.040993769 ;
	setAttr ".tk[369]" -type "float3" -0.050897438 0.060889587 0.04506835 ;
	setAttr ".tk[370]" -type "float3" -0.046182636 0.06492009 0.054419961 ;
	setAttr ".tk[371]" -type "float3" -0.053939741 0.052014373 0.037326846 ;
	setAttr ".tk[372]" -type "float3" -0.068533592 0.012332565 0.07885889 ;
	setAttr ".tk[373]" -type "float3" -0.066517197 0.012264124 0.075263016 ;
	setAttr ".tk[374]" -type "float3" -0.07226333 0.012306022 0.079435751 ;
	setAttr ".tk[375]" -type "float3" -0.067043833 0.012169608 0.071736708 ;
	setAttr ".tk[376]" -type "float3" -0.07105957 0.012076025 0.069768243 ;
	setAttr ".tk[377]" -type "float3" -0.076702937 0.012115146 0.073756523 ;
	setAttr ".tk[378]" -type "float3" -0.075887956 0.012216165 0.07743533 ;
	setAttr ".tk[379]" -type "float3" -0.075089395 0.012049955 0.070457973 ;
	setAttr ".tk[380]" -type "float3" -0.059672941 0.0048041833 0.091241479 ;
	setAttr ".tk[381]" -type "float3" -0.051924381 0.0045420662 0.077424079 ;
	setAttr ".tk[382]" -type "float3" -0.074005395 0.0047026887 0.093458481 ;
	setAttr ".tk[383]" -type "float3" -0.053948551 0.0041789222 0.063873954 ;
	setAttr ".tk[384]" -type "float3" -0.069379777 0.0038199569 0.056310222 ;
	setAttr ".tk[385]" -type "float3" -0.091065556 0.0039680102 0.071634911 ;
	setAttr ".tk[386]" -type "float3" -0.087933362 0.0043572295 0.085771926 ;
	setAttr ".tk[387]" -type "float3" -0.084865205 0.0037179948 0.058959588 ;
	setAttr ".tk[388]" -type "float3" -0.053233728 -0.007558269 0.10003679 ;
	setAttr ".tk[389]" -type "float3" -0.041214161 -0.0079642637 0.078603014 ;
	setAttr ".tk[390]" -type "float3" -0.075466707 -0.0077156383 0.10347555 ;
	setAttr ".tk[391]" -type "float3" -0.044353951 -0.0085276058 0.057583604 ;
	setAttr ".tk[392]" -type "float3" -0.068291567 -0.009084438 0.045850713 ;
	setAttr ".tk[393]" -type "float3" -0.10193099 -0.0088553661 0.069622561 ;
	setAttr ".tk[394]" -type "float3" -0.097072408 -0.0082515096 0.091551967 ;
	setAttr ".tk[395]" -type "float3" -0.092313372 -0.0092436681 0.049960565 ;
	setAttr ".tk[396]" -type "float3" -0.05055758 -0.019249819 0.10364525 ;
	setAttr ".tk[397]" -type "float3" -0.036728922 -0.019717261 0.078985222 ;
	setAttr ".tk[398]" -type "float3" -0.076137118 -0.019430961 0.10760146 ;
	setAttr ".tk[399]" -type "float3" -0.040341329 -0.020365331 0.054801911 ;
	setAttr ".tk[400]" -type "float3" -0.067882016 -0.02100601 0.041302845 ;
	setAttr ".tk[401]" -type "float3" -0.1065851 -0.020742476 0.068652928 ;
	setAttr ".tk[402]" -type "float3" -0.1009951 -0.020047836 0.093883328 ;
	setAttr ".tk[403]" -type "float3" -0.095519803 -0.021188937 0.046031039 ;
	setAttr ".tk[404]" -type "float3" -0.050665312 -0.032830711 0.10339897 ;
	setAttr ".tk[405]" -type "float3" -0.036836632 -0.033298101 0.078738533 ;
	setAttr ".tk[406]" -type "float3" -0.076245531 -0.033011343 0.10735548 ;
	setAttr ".tk[407]" -type "float3" -0.040449031 -0.033945784 0.054554924 ;
	setAttr ".tk[408]" -type "float3" -0.067990176 -0.0345864 0.041055892 ;
	setAttr ".tk[409]" -type "float3" -0.10669366 -0.034322869 0.068406485 ;
	setAttr ".tk[410]" -type "float3" -0.10110386 -0.033628248 0.093637258 ;
	setAttr ".tk[411]" -type "float3" -0.095628485 -0.034769386 0.045784142 ;
	setAttr ".tk[412]" -type "float3" -0.05449776 -0.047385521 0.098007329 ;
	setAttr ".tk[413]" -type "float3" -0.04309722 -0.047770608 0.077676699 ;
	setAttr ".tk[414]" -type "float3" -0.075586759 -0.047534622 0.10126913 ;
	setAttr ".tk[415]" -type "float3" -0.046075176 -0.048305079 0.057739161 ;
	setAttr ".tk[416]" -type "float3" -0.068780847 -0.048832972 0.046610381 ;
	setAttr ".tk[417]" -type "float3" -0.10068904 -0.048615608 0.069158904 ;
	setAttr ".tk[418]" -type "float3" -0.096080653 -0.048042964 0.089959823 ;
	setAttr ".tk[419]" -type "float3" -0.091566697 -0.048983861 0.050508495 ;
	setAttr ".tk[420]" -type "float3" -0.061014745 -0.057370365 0.08894442 ;
	setAttr ".tk[421]" -type "float3" -0.053819921 -0.057613291 0.076113962 ;
	setAttr ".tk[422]" -type "float3" -0.072072208 -0.057882976 0.073395148 ;
	setAttr ".tk[423]" -type "float3" -0.074324377 -0.057464406 0.091003045 ;
	setAttr ".tk[424]" -type "float3" -0.055699326 -0.057950485 0.063531414 ;
	setAttr ".tk[425]" -type "float3" -0.070029348 -0.058283802 0.05650796 ;
	setAttr ".tk[426]" -type "float3" -0.090166859 -0.058146935 0.070738174 ;
	setAttr ".tk[427]" -type "float3" -0.087258607 -0.057785202 0.083865806 ;
	setAttr ".tk[428]" -type "float3" -0.084409736 -0.058379244 0.058967944 ;
	setAttr ".tk[429]" -type "float3" 0.019954182 0 0.025909163 ;
	setAttr ".tk[430]" -type "float3" 0.019954182 0 0.025909163 ;
	setAttr ".tk[431]" -type "float3" 0.019954182 0 0.025909163 ;
	setAttr ".tk[432]" -type "float3" 0.019954182 0 0.025909163 ;
	setAttr ".tk[433]" -type "float3" 0.019954182 0 0.025909163 ;
	setAttr ".tk[434]" -type "float3" 0.019954182 0 0.025909163 ;
	setAttr ".tk[435]" -type "float3" 0.019954182 0 0.025909163 ;
	setAttr ".tk[436]" -type "float3" 0.019954182 0 0.025909163 ;
	setAttr ".tk[437]" -type "float3" 0.055556819 0 0.06919539 ;
	setAttr ".tk[438]" -type "float3" 0.055556819 0 0.06919539 ;
	setAttr ".tk[439]" -type "float3" 0.055556819 0 0.06919539 ;
	setAttr ".tk[440]" -type "float3" 0.055556819 0 0.06919539 ;
	setAttr ".tk[441]" -type "float3" 0.055556819 0 0.06919539 ;
	setAttr ".tk[442]" -type "float3" 0.055556819 0 0.06919539 ;
	setAttr ".tk[443]" -type "float3" 0.055556819 0 0.06919539 ;
	setAttr ".tk[444]" -type "float3" 0.055556819 0 0.06919539 ;
	setAttr ".tk[445]" -type "float3" 0.15514214 0 0.16012383 ;
	setAttr ".tk[446]" -type "float3" 0.15514214 0 0.16012383 ;
	setAttr ".tk[447]" -type "float3" 0.15514214 0 0.16012383 ;
	setAttr ".tk[448]" -type "float3" 0.15514214 0 0.16012383 ;
	setAttr ".tk[449]" -type "float3" 0.16634251 0 0.15024941 ;
	setAttr ".tk[450]" -type "float3" 0.15514214 0 0.16012383 ;
	setAttr ".tk[451]" -type "float3" 0.15514214 0 0.16012383 ;
	setAttr ".tk[452]" -type "float3" 0.16634251 0 0.15024941 ;
	setAttr ".tk[453]" -type "float3" 0.15514214 0 0.16012383 ;
	setAttr ".tk[454]" -type "float3" 0.15514214 0 0.16012383 ;
	setAttr ".tk[455]" -type "float3" 0.15514214 0 0.16012383 ;
	setAttr ".tk[456]" -type "float3" 0.15514214 0 0.16012383 ;
	setAttr ".tk[457]" -type "float3" 0.15514214 0 0.16012383 ;
	setAttr ".tk[458]" -type "float3" 0.15514214 0 0.16012383 ;
	setAttr ".tk[459]" -type "float3" 0.15514214 0 0.16012383 ;
	setAttr ".tk[460]" -type "float3" 0.15514214 0 0.16012383 ;
	setAttr ".tk[461]" -type "float3" 0.15514214 0 0.16012383 ;
	setAttr ".tk[462]" -type "float3" 0.15514214 0 0.16012383 ;
	setAttr ".tk[463]" -type "float3" 0.15514214 0 0.16012383 ;
	setAttr ".tk[464]" -type "float3" 0.15514214 0 0.16012383 ;
	setAttr ".tk[465]" -type "float3" 0.15514214 0 0.16012383 ;
	setAttr ".tk[466]" -type "float3" 0.15514214 0 0.16012383 ;
	setAttr ".tk[467]" -type "float3" 0.15514214 0 0.16012383 ;
	setAttr ".tk[468]" -type "float3" 0.15514214 0 0.16012383 ;
	setAttr ".tk[469]" -type "float3" 0.15514214 0 0.16012383 ;
	setAttr ".tk[470]" -type "float3" 0.15514214 0 0.16012383 ;
	setAttr ".tk[471]" -type "float3" 0.15514214 0 0.16012383 ;
	setAttr ".tk[472]" -type "float3" 0.15514214 0 0.16012383 ;
	setAttr ".tk[473]" -type "float3" 0.15514214 0 0.16012383 ;
	setAttr ".tk[474]" -type "float3" 0.15514214 0 0.16012383 ;
	setAttr ".tk[475]" -type "float3" 0.15514214 0 0.16012383 ;
	setAttr ".tk[476]" -type "float3" 0.15514214 0 0.16012383 ;
	setAttr ".tk[477]" -type "float3" 0.15514214 0 0.16012383 ;
	setAttr ".tk[478]" -type "float3" 0.15514214 0 0.16012383 ;
	setAttr ".tk[479]" -type "float3" 0.15514214 0 0.16012383 ;
	setAttr ".tk[480]" -type "float3" 0.15514214 0 0.16012383 ;
	setAttr ".tk[481]" -type "float3" 0.15514214 0 0.16012383 ;
	setAttr ".tk[482]" -type "float3" 0.15514214 0 0.16012383 ;
	setAttr ".tk[483]" -type "float3" 0.15514214 0 0.16012383 ;
	setAttr ".tk[484]" -type "float3" 0.15514214 0 0.16012383 ;
	setAttr ".tk[485]" -type "float3" 0.15514214 0 0.16012383 ;
	setAttr ".tk[486]" -type "float3" 0.15514214 0 0.16012383 ;
	setAttr ".tk[487]" -type "float3" 0.15514214 0 0.16012383 ;
	setAttr ".tk[488]" -type "float3" 0.15514214 0 0.16012383 ;
	setAttr ".tk[489]" -type "float3" 0.15514214 0 0.16012383 ;
	setAttr ".tk[490]" -type "float3" 0.15514214 0 0.16012383 ;
	setAttr ".tk[491]" -type "float3" 0.15514214 0 0.16012383 ;
	setAttr ".tk[492]" -type "float3" 0.15514214 0 0.16012383 ;
	setAttr ".tk[493]" -type "float3" 0.15514214 0 0.16012383 ;
	setAttr ".tk[494]" -type "float3" 0.15514214 0 0.16012383 ;
	setAttr ".tk[495]" -type "float3" 0.15514214 0 0.16012383 ;
	setAttr ".tk[496]" -type "float3" 0.15514214 0 0.16012383 ;
	setAttr ".tk[497]" -type "float3" 0.15514214 0 0.16012383 ;
	setAttr ".tk[498]" -type "float3" 0.15514214 0 0.16012383 ;
	setAttr ".tk[499]" -type "float3" 0.15514214 0 0.16012383 ;
	setAttr ".tk[500]" -type "float3" 0.15514214 0 0.16012383 ;
	setAttr ".tk[501]" -type "float3" 0.15514214 0 0.16012383 ;
createNode polyTweak -n "polyTweak110";
	rename -uid "4856907A-48BB-2A31-19CC-E699F1F358E7";
	setAttr ".uopa" yes;
	setAttr -s 118 ".tk";
	setAttr ".tk[0]" -type "float3" 8.5768601e-011 0.65841687 -0.029530047 ;
	setAttr ".tk[1]" -type "float3" -0.00037130565 0.65841687 -0.029530047 ;
	setAttr ".tk[2]" -type "float3" -0.0041266484 0.64910668 -0.0080116335 ;
	setAttr ".tk[3]" -type "float3" 0.00025338895 0.53936201 0.034517098 ;
	setAttr ".tk[4]" -type "float3" 0 0.34793618 -0.03251829 ;
	setAttr ".tk[5]" -type "float3" 0 0.34793618 -0.03251829 ;
	setAttr ".tk[6]" -type "float3" 0 0.34793618 -0.03251829 ;
	setAttr ".tk[7]" -type "float3" 0 0.34793618 -0.03251829 ;
	setAttr ".tk[34]" -type "float3" 4.9188359e-010 2.3314684e-015 -0.040936731 ;
	setAttr ".tk[35]" -type "float3" -0.0021899294 2.3314684e-015 -0.040936731 ;
	setAttr ".tk[36]" -type "float3" -0.024338616 2.3314684e-015 -0.036047764 ;
	setAttr ".tk[37]" -type "float3" -0.038490571 2.3314684e-015 -0.024039857 ;
	setAttr ".tk[38]" -type "float3" -0.047945112 0.068181559 -0.0059589315 ;
	setAttr ".tk[39]" -type "float3" -0.0087068193 0.19599979 -0.034361072 ;
	setAttr ".tk[40]" -type "float3" -0.0087068193 0.23336558 -0.041000061 ;
	setAttr ".tk[41]" -type "float3" -0.008129172 0.5668292 -0.0064513762 ;
	setAttr ".tk[43]" -type "float3" 0 0.062947124 -0.030402195 ;
	setAttr ".tk[44]" -type "float3" 0 0.083912596 -0.034634393 ;
	setAttr ".tk[45]" -type "float3" 0 0.34793618 -0.03251829 ;
	setAttr ".tk[46]" -type "float3" 4.9188364e-010 2.3314684e-015 -0.033353984 ;
	setAttr ".tk[47]" -type "float3" -0.0020487348 2.3314684e-015 -0.033353984 ;
	setAttr ".tk[48]" -type "float3" -0.021660713 2.3314684e-015 -0.029024953 ;
	setAttr ".tk[49]" -type "float3" -0.034191836 2.3314684e-015 -0.018392341 ;
	setAttr ".tk[50]" -type "float3" -0.042563532 0.068181559 -0.0023822319 ;
	setAttr ".tk[51]" -type "float3" -0.0077282107 0.19813955 -0.034741227 ;
	setAttr ".tk[52]" -type "float3" -0.0077282107 0.23122583 -0.040619913 ;
	setAttr ".tk[53]" -type "float3" -0.0072167162 0.5668292 -0.010028079 ;
	setAttr ".tk[54]" -type "float3" 8.5768656e-011 0.65841687 -0.037112802 ;
	setAttr ".tk[55]" -type "float3" -0.00034736644 0.65841687 -0.037112802 ;
	setAttr ".tk[56]" -type "float3" -0.0036726098 0.64910668 -0.015034436 ;
	setAttr ".tk[57]" -type "float3" 0.00022508879 0.53936201 0.028869601 ;
	setAttr ".tk[58]" -type "float3" 0 0.094950534 0 ;
	setAttr ".tk[59]" -type "float3" 0 0.094950534 -5.5511151e-017 ;
	setAttr ".tk[60]" -type "float3" 0 0.094951309 0 ;
	setAttr ".tk[61]" -type "float3" 0 0.094950534 -5.5511151e-017 ;
	setAttr ".tk[62]" -type "float3" 0 0.094950534 0 ;
	setAttr ".tk[63]" -type "float3" 0 0.094950534 -5.5511151e-017 ;
	setAttr ".tk[64]" -type "float3" 0 0.094950534 0 ;
	setAttr ".tk[65]" -type "float3" 0 0.094950534 -5.5511151e-017 ;
	setAttr ".tk[66]" -type "float3" 0 0.094950609 -0.03251829 ;
	setAttr ".tk[67]" -type "float3" 0 0.094950609 -0.03251829 ;
	setAttr ".tk[68]" -type "float3" 0 0.094950609 -0.03251829 ;
	setAttr ".tk[69]" -type "float3" 0 0.094950609 -0.03251829 ;
	setAttr ".tk[70]" -type "float3" 0 0.094950609 -0.03251829 ;
	setAttr ".tk[71]" -type "float3" 0 0.094950609 -0.03251829 ;
	setAttr ".tk[72]" -type "float3" 0 0.094950609 -0.03251829 ;
	setAttr ".tk[73]" -type "float3" 0 0.094950609 -0.03251829 ;
	setAttr ".tk[74]" -type "float3" 0 0.094950609 -0.03251829 ;
	setAttr ".tk[75]" -type "float3" 0 0.094950609 -0.03251829 ;
	setAttr ".tk[76]" -type "float3" 0 0.094950609 -0.03251829 ;
	setAttr ".tk[77]" -type "float3" 0 0.094950609 -0.03251829 ;
	setAttr ".tk[78]" -type "float3" 0 0.094950609 -0.03251829 ;
	setAttr ".tk[79]" -type "float3" 0 0.094951384 -0.03251829 ;
	setAttr ".tk[80]" -type "float3" 0 0.094951384 -0.03251829 ;
	setAttr ".tk[81]" -type "float3" 0 0.094951384 -0.03251829 ;
	setAttr ".tk[260]" -type "float3" 0.00037130626 0.65841687 -0.029530047 ;
	setAttr ".tk[261]" -type "float3" 0.0041266484 0.64910668 -0.0080116335 ;
	setAttr ".tk[262]" -type "float3" -0.00025338895 0.60482961 0.034517098 ;
	setAttr ".tk[263]" -type "float3" 0 0.34793618 -0.03251829 ;
	setAttr ".tk[264]" -type "float3" 0 0.34793618 -0.03251829 ;
	setAttr ".tk[265]" -type "float3" 0 0.34793618 -0.03251829 ;
	setAttr ".tk[285]" -type "float3" 0.0021899303 2.3314684e-015 -0.040936731 ;
	setAttr ".tk[286]" -type "float3" 0.024338616 2.3314684e-015 -0.036047764 ;
	setAttr ".tk[287]" -type "float3" 0.038490571 2.3314684e-015 -0.024039857 ;
	setAttr ".tk[288]" -type "float3" 0.047945112 0.068181559 -0.0059589315 ;
	setAttr ".tk[289]" -type "float3" 0.0087068193 0.19599979 -0.034361072 ;
	setAttr ".tk[290]" -type "float3" 0.0087068193 0.23336558 -0.041000061 ;
	setAttr ".tk[291]" -type "float3" 0.008129172 0.5668292 -0.0064513762 ;
	setAttr ".tk[293]" -type "float3" 0 0.062947124 -0.030402195 ;
	setAttr ".tk[294]" -type "float3" 0 0.083912596 -0.034634393 ;
	setAttr ".tk[295]" -type "float3" 0 0.34793618 -0.03251829 ;
	setAttr ".tk[296]" -type "float3" 0.0020487355 2.3314684e-015 -0.033353984 ;
	setAttr ".tk[297]" -type "float3" 0.021660713 2.3314684e-015 -0.029024953 ;
	setAttr ".tk[298]" -type "float3" 0.034191836 2.3314684e-015 -0.018392341 ;
	setAttr ".tk[299]" -type "float3" 0.042563532 0.068181559 -0.0023822319 ;
	setAttr ".tk[300]" -type "float3" 0.0077282107 0.19813955 -0.034741227 ;
	setAttr ".tk[301]" -type "float3" 0.0077282107 0.23122583 -0.040619913 ;
	setAttr ".tk[302]" -type "float3" 0.0072167162 0.5668292 -0.010028079 ;
	setAttr ".tk[303]" -type "float3" 0.00034736673 0.65841687 -0.037112802 ;
	setAttr ".tk[304]" -type "float3" 0.0036726098 0.64910668 -0.015034436 ;
	setAttr ".tk[305]" -type "float3" -0.00022508879 0.60482961 0.028869601 ;
	setAttr ".tk[306]" -type "float3" 0 0.094951309 0 ;
	setAttr ".tk[307]" -type "float3" 0 0.094950534 -5.5511151e-017 ;
	setAttr ".tk[308]" -type "float3" 0 0.094950534 0 ;
	setAttr ".tk[309]" -type "float3" 0 0.094950534 -5.5511151e-017 ;
	setAttr ".tk[310]" -type "float3" 0 0.094950534 0 ;
	setAttr ".tk[311]" -type "float3" 0 0.094950534 -5.5511151e-017 ;
	setAttr ".tk[312]" -type "float3" 0 0.094950609 -0.03251829 ;
	setAttr ".tk[313]" -type "float3" 0 0.094950609 -0.03251829 ;
	setAttr ".tk[314]" -type "float3" 0 0.094950609 -0.03251829 ;
	setAttr ".tk[315]" -type "float3" 0 0.094950609 -0.03251829 ;
	setAttr ".tk[316]" -type "float3" 0 0.094950609 -0.03251829 ;
	setAttr ".tk[317]" -type "float3" 0 0.094950609 -0.03251829 ;
	setAttr ".tk[318]" -type "float3" 0 0.094950609 -0.03251829 ;
	setAttr ".tk[319]" -type "float3" 0 0.094950609 -0.03251829 ;
	setAttr ".tk[320]" -type "float3" 0 0.094950609 -0.03251829 ;
	setAttr ".tk[321]" -type "float3" 0 0.094951384 -0.03251829 ;
	setAttr ".tk[322]" -type "float3" 0 0.094951384 -0.03251829 ;
	setAttr ".tk[323]" -type "float3" 0 0.094951384 -0.03251829 ;
	setAttr ".tk[503]" -type "float3" 0 -0.024030391 0 ;
	setAttr ".tk[504]" -type "float3" 0 -0.024030391 0 ;
	setAttr ".tk[505]" -type "float3" 0 -0.024030391 0 ;
	setAttr ".tk[506]" -type "float3" 0 0.072537377 -0.032338109 ;
	setAttr ".tk[507]" -type "float3" 0.0087068193 0.21309203 -0.037397943 ;
	setAttr ".tk[508]" -type "float3" 0.0077282107 0.2132742 -0.037430335 ;
	setAttr ".tk[509]" -type "float3" 0 0.094950609 -0.03251829 ;
	setAttr ".tk[510]" -type "float3" 0 0.094950609 -0.03251829 ;
	setAttr ".tk[511]" -type "float3" 0 0.094950609 -0.03251829 ;
	setAttr ".tk[512]" -type "float3" 0 0.094950609 -0.03251829 ;
	setAttr ".tk[513]" -type "float3" 0 0.094950609 -0.03251829 ;
	setAttr ".tk[514]" -type "float3" 0 0.094950609 -0.03251829 ;
	setAttr ".tk[515]" -type "float3" 0 0.094950609 -0.03251829 ;
	setAttr ".tk[516]" -type "float3" -0.0077282107 0.2132742 -0.037430335 ;
	setAttr ".tk[517]" -type "float3" -0.0087068193 0.21309203 -0.037397943 ;
	setAttr ".tk[518]" -type "float3" 0 0.072537377 -0.032338109 ;
	setAttr ".tk[519]" -type "float3" 0 -0.024030391 0 ;
	setAttr ".tk[520]" -type "float3" 0 -0.024030391 0 ;
	setAttr ".tk[521]" -type "float3" 0 -0.024030391 0 ;
createNode deleteComponent -n "deleteComponent25";
	rename -uid "8A6A2911-4455-90F6-8E5B-55A1C5F293FD";
	setAttr ".dc" -type "componentList" 2 "f[0:249]" "f[510:519]";
createNode polyMirror -n "polyMirror4";
	rename -uid "2D435C62-44FA-965F-E402-8BA662D12E84";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 1.3434817221299036 0 0 0 0 1.3434817221299036 0 0 0 0 1.3434817221299036 0
		 0.0094961573876823357 6.3506848212241493 0.33160916970587095 1;
	setAttr ".ws" yes;
	setAttr ".ad" 0;
	setAttr ".mtt" 1;
	setAttr ".mt" 0.55187654495239258;
	setAttr ".cm" yes;
	setAttr ".fnf" 260;
	setAttr ".lnf" 519;
createNode polySplitRing -n "polySplitRing21";
	rename -uid "65BE5735-40CB-2BB6-0F08-919389766A9D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 24 "e[0]" "e[8]" "e[18]" "e[21]" "e[24]" "e[81]" "e[83]" "e[85]" "e[122]" "e[125]" "e[128]" "e[131]" "e[519]" "e[532]" "e[535]" "e[538]" "e[595]" "e[597]" "e[599]" "e[636]" "e[639]" "e[642]" "e[644]" "e[646]";
	setAttr ".ix" -type "matrix" 1.3434817221299036 0 0 0 0 1.3434817221299036 0 0 0 0 1.3434817221299036 0
		 0.0094961573876823357 6.3506848212241493 0.33160916970587095 1;
	setAttr ".wt" 0.5345037579536438;
	setAttr ".dr" no;
	setAttr ".re" 122;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak111";
	rename -uid "A4B8C4F7-4A2F-8D29-2692-9F939F32853B";
	setAttr ".uopa" yes;
	setAttr -s 30 ".tk";
	setAttr ".tk[0]" -type "float3" 0 -0.061313283 0 ;
	setAttr ".tk[9]" -type "float3" 0 -0.19697426 0.016729362 ;
	setAttr ".tk[10]" -type "float3" 0 -0.19697426 0.016729362 ;
	setAttr ".tk[11]" -type "float3" 0 -0.061313283 0 ;
	setAttr ".tk[18]" -type "float3" 0 -0.061313283 0 ;
	setAttr ".tk[19]" -type "float3" 0 -0.030261589 0 ;
	setAttr ".tk[20]" -type "float3" 0.017802591 -0.080102935 0 ;
	setAttr ".tk[43]" -type "float3" 0 -0.19697426 0.016729362 ;
	setAttr ".tk[44]" -type "float3" 0 -0.19697426 0.016729362 ;
	setAttr ".tk[45]" -type "float3" 0 -0.19697426 0.016729362 ;
	setAttr ".tk[46]" -type "float3" 0 -0.2275389 -2.7755576e-017 ;
	setAttr ".tk[47]" -type "float3" 0.090392441 -0.19954756 0 ;
	setAttr ".tk[48]" -type "float3" 0.090392441 -0.19954756 0 ;
	setAttr ".tk[49]" -type "float3" 0.019514395 -0.35546869 0 ;
	setAttr ".tk[54]" -type "float3" 0 -0.19697426 0.016729362 ;
	setAttr ".tk[55]" -type "float3" 0 -0.19697426 0.016729362 ;
	setAttr ".tk[56]" -type "float3" 0 -0.19697426 0.016729362 ;
	setAttr ".tk[57]" -type "float3" 0 -0.2275389 -2.7755576e-017 ;
	setAttr ".tk[58]" -type "float3" 0.090392441 -0.19954756 0 ;
	setAttr ".tk[59]" -type "float3" 0.090392441 -0.19954756 0 ;
	setAttr ".tk[60]" -type "float3" 0.019514395 -0.35546869 0 ;
	setAttr ".tk[61]" -type "float3" 0 -0.061313283 0 ;
	setAttr ".tk[62]" -type "float3" 0 -0.030261589 0 ;
	setAttr ".tk[63]" -type "float3" 0.017802591 -0.080102935 0 ;
	setAttr ".tk[265]" -type "float3" 0.090392441 -0.19954756 0 ;
	setAttr ".tk[266]" -type "float3" 0.090392441 -0.19954756 0 ;
	setAttr ".tk[271]" -type "float3" 0 -0.061313283 0 ;
	setAttr ".tk[296]" -type "float3" 0 -0.19697426 0.016729362 ;
	setAttr ".tk[307]" -type "float3" 0 -0.19697426 0.016729362 ;
	setAttr ".tk[314]" -type "float3" 0 -0.061313283 0 ;
createNode polySplitRing -n "polySplitRing22";
	rename -uid "67B82159-4877-2641-8E4A-25B607701CCB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 20 "e[9:10]" "e[142]" "e[144]" "e[146]" "e[148]" "e[150]" "e[152]" "e[154]" "e[157]" "e[159:160]" "e[521]" "e[661]" "e[663]" "e[665]" "e[667]" "e[669:670]" "e[672]" "e[674:675]" "e[677]" "e[680]";
	setAttr ".ix" -type "matrix" 1.3434817221299036 0 0 0 0 1.3434817221299036 0 0 0 0 1.3434817221299036 0
		 0.0094961573876823357 6.3506848212241493 0.33160916970587095 1;
	setAttr ".wt" 0.49445649981498718;
	setAttr ".dr" no;
	setAttr ".re" 10;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak112";
	rename -uid "C362911F-4D1B-E0F7-0E5B-1FA6A5E653BD";
	setAttr ".uopa" yes;
	setAttr -s 29 ".tk";
	setAttr ".tk[9]" -type "float3" 0 0.047500528 0.10815547 ;
	setAttr ".tk[10]" -type "float3" 0 0.047500528 0.10815547 ;
	setAttr ".tk[42]" -type "float3" 0 0.031216437 0 ;
	setAttr ".tk[43]" -type "float3" 0 0.047500528 0.10815547 ;
	setAttr ".tk[44]" -type "float3" 0 0.047500528 0.12583514 ;
	setAttr ".tk[45]" -type "float3" 0.039766863 0.047500528 0.10855052 ;
	setAttr ".tk[46]" -type "float3" 0.075883999 0.047500528 0.073304668 ;
	setAttr ".tk[50]" -type "float3" 0.011992702 0.080371432 0 ;
	setAttr ".tk[51]" -type "float3" 0.012536976 0.083880767 -0.0014910321 ;
	setAttr ".tk[52]" -type "float3" 0.012536976 0.085281648 4.5075605e-005 ;
	setAttr ".tk[53]" -type "float3" 0.016032292 -0.051013637 0 ;
	setAttr ".tk[54]" -type "float3" 0 0.047500528 0.10815547 ;
	setAttr ".tk[55]" -type "float3" 0 0.047500528 0.12583514 ;
	setAttr ".tk[56]" -type "float3" 0.039766863 0.047500528 0.10855052 ;
	setAttr ".tk[57]" -type "float3" 0.075883999 0.047500528 0.073304668 ;
	setAttr ".tk[84]" -type "float3" -0.004895173 0 0.0068240678 ;
	setAttr ".tk[88]" -type "float3" -0.026866857 0 0.035045415 ;
	setAttr ".tk[264]" -type "float3" 0.012536976 0.085337959 -3.7551945e-006 ;
	setAttr ".tk[296]" -type "float3" 0 0.047500528 0.10815547 ;
	setAttr ".tk[307]" -type "float3" 0 0.047500528 0.10815547 ;
	setAttr ".tk[522]" -type "float3" 0 0 0.025257491 ;
	setAttr ".tk[523]" -type "float3" 0 -0.19006273 0.035153672 ;
	setAttr ".tk[524]" -type "float3" 0 -0.19006273 0.035153672 ;
	setAttr ".tk[525]" -type "float3" 0 -0.19006273 0.035153672 ;
	setAttr ".tk[526]" -type "float3" 0 -0.19006273 0.035153672 ;
	setAttr ".tk[527]" -type "float3" 0 -0.19006273 0.035153672 ;
	setAttr ".tk[528]" -type "float3" 0 0 0.025257491 ;
	setAttr ".tk[529]" -type "float3" 0 0 0.025257491 ;
	setAttr ".tk[530]" -type "float3" 0 0 0.025257491 ;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
	rename -uid "CBDD24A3-4B18-5C9B-2DAA-62A630202FC5";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
	rename -uid "B683DC9E-4D50-B677-6370-7FA96CA8A6B1";
createNode mentalrayOptions -s -n "miDefaultOptions";
	rename -uid "4FAD3131-471E-C255-30D2-E4B476C7D801";
	setAttr ".miSamplesMax" 50;
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
	rename -uid "1D004B7F-498A-4642-FB73-9DA3AF31F4B1";
createNode renderLayerManager -n "Sotak_p02_BaseMesh_08:renderLayerManager";
	rename -uid "59046FCD-4AF8-AD24-ACC1-F5AF31028966";
createNode renderLayer -n "Sotak_p02_BaseMesh_08:defaultRenderLayer";
	rename -uid "127650EB-46F5-7429-4A59-328B883FA8D4";
	setAttr ".g" yes;
createNode gameFbxExporter -n "Sotak_p02_BaseMesh_08:gameExporterPreset1";
	rename -uid "A920DCA7-4575-7EB0-DD8A-F783AD975187";
	setAttr ".pn" -type "string" "Model Default";
	setAttr ".ils" yes;
	setAttr ".ilu" yes;
	setAttr ".ski" no;
	setAttr ".bsh" no;
	setAttr ".ebm" yes;
	setAttr ".inc" yes;
	setAttr ".fv" -type "string" "FBX201600";
	setAttr ".exp" -type "string" "C:/Users/mcs2906/Documents/maya/projects/default//scenes";
	setAttr ".exf" -type "string" "Sotak_Character5";
createNode gameFbxExporter -n "Sotak_p02_BaseMesh_08:gameExporterPreset2";
	rename -uid "7FB3A5A7-4A02-B519-A0D9-358D6EDB9E02";
	setAttr ".pn" -type "string" "Anim Default";
	setAttr ".ils" yes;
	setAttr ".eti" 2;
	setAttr ".spt" 2;
	setAttr ".ic" no;
	setAttr ".ebm" yes;
	setAttr ".fv" -type "string" "FBX201600";
createNode gameFbxExporter -n "Sotak_p02_BaseMesh_08:gameExporterPreset3";
	rename -uid "AD080598-4539-219B-EAC4-97BA841D7DC3";
	setAttr ".pn" -type "string" "TE Anim Default";
	setAttr ".ils" yes;
	setAttr ".eti" 3;
	setAttr ".ebm" yes;
	setAttr ".fv" -type "string" "FBX201600";
createNode polyTweak -n "polyTweak133";
	rename -uid "FB9A3915-41F5-407A-022A-C7B88E72462F";
	setAttr ".uopa" yes;
	setAttr -s 39 ".tk";
	setAttr ".tk[8]" -type "float3" 0 0.11602107 -0.025703393 ;
	setAttr ".tk[20]" -type "float3" -0.019035919 0 -0.026987322 ;
	setAttr ".tk[40]" -type "float3" 0 0.11602107 -0.025703393 ;
	setAttr ".tk[41]" -type "float3" 0 0.11602107 -0.025703393 ;
	setAttr ".tk[42]" -type "float3" 0 0.075662404 0 ;
	setAttr ".tk[49]" -type "float3" -0.010937454 0.032015078 0 ;
	setAttr ".tk[50]" -type "float3" 0 0.036938988 0 ;
	setAttr ".tk[52]" -type "float3" 0 -0.0056001544 0 ;
	setAttr ".tk[60]" -type "float3" -0.010937454 0.032015078 0 ;
	setAttr ".tk[63]" -type "float3" -0.019035919 0 -0.026987322 ;
	setAttr ".tk[264]" -type "float3" 0 -0.0055710254 0 ;
	setAttr ".tk[293]" -type "float3" 0 0.11602107 -0.025703393 ;
	setAttr ".tk[522]" -type "float3" 0 -0.012146671 0 ;
	setAttr ".tk[523]" -type "float3" 0 0.088586755 0 ;
	setAttr ".tk[541]" -type "float3" -0.0087161418 0 0 ;
	setAttr ".tk[546]" -type "float3" 0 -0.020601388 0 ;
	setAttr ".tk[547]" -type "float3" 0 -0.020601388 0 ;
	setAttr ".tk[548]" -type "float3" 0 -0.020601388 0 ;
	setAttr ".tk[549]" -type "float3" 0 -0.020601388 0 ;
	setAttr ".tk[550]" -type "float3" 0 -0.020601388 0 ;
	setAttr ".tk[551]" -type "float3" 0 -0.020601388 0 ;
	setAttr ".tk[552]" -type "float3" 0 -0.020601388 0 ;
	setAttr ".tk[553]" -type "float3" 0 -0.020601388 0 ;
	setAttr ".tk[554]" -type "float3" 0 -0.020601388 0 ;
	setAttr ".tk[555]" -type "float3" 0 -0.020601388 0 ;
	setAttr ".tk[556]" -type "float3" 0 -0.020601388 0 ;
	setAttr ".tk[557]" -type "float3" 0 -0.020601388 0 ;
	setAttr ".tk[558]" -type "float3" 0 -0.020601388 0 ;
	setAttr ".tk[559]" -type "float3" 0 -0.020601388 0 ;
	setAttr ".tk[560]" -type "float3" 0 -0.020601388 0 ;
	setAttr ".tk[561]" -type "float3" 0 -0.020601388 0 ;
	setAttr ".tk[562]" -type "float3" 0 -0.020601388 0 ;
	setAttr ".tk[563]" -type "float3" 0 -0.020601388 0 ;
	setAttr ".tk[564]" -type "float3" 0 -0.020601388 0 ;
	setAttr ".tk[565]" -type "float3" 0 -0.020601388 0 ;
	setAttr ".tk[566]" -type "float3" -0.010937454 0.01141369 0 ;
	setAttr ".tk[567]" -type "float3" -0.019035919 -0.020601388 -0.026987322 ;
	setAttr ".tk[568]" -type "float3" 0 -0.020601388 0 ;
	setAttr ".tk[569]" -type "float3" 0 -0.020601388 0 ;
createNode deleteComponent -n "deleteComponent32";
	rename -uid "B577A27C-40DA-EC08-D02A-03907F130CFC";
	setAttr ".dc" -type "componentList" 4 "f[260:311]" "f[313:519]" "f[524:535]" "f[544:554]";
createNode deleteComponent -n "deleteComponent33";
	rename -uid "FC125156-4E69-7AFF-B617-11857D51B69A";
	setAttr ".dc" -type "componentList" 1 "f[260]";
createNode deleteComponent -n "deleteComponent34";
	rename -uid "5365333D-4AEB-87A6-64A7-5C97BEE40D6D";
	setAttr ".dc" -type "componentList" 1 "f[272]";
createNode polyMirror -n "polyMirror6";
	rename -uid "E876F53D-48D7-35A7-792C-3E97EC9C51D5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 1.3434817221299036 0 0 0 0 1.3434817221299036 0 0 0 0 1.3434817221299036 0
		 0.0094961573876823357 6.3506848212241493 0.33160916970587095 1;
	setAttr ".ws" yes;
	setAttr ".ad" 0;
	setAttr ".mtt" 1;
	setAttr ".mt" 0.55857527256011963;
	setAttr ".cm" yes;
	setAttr ".fnf" 284;
	setAttr ".lnf" 567;
createNode polySoftEdge -n "polySoftEdge40";
	rename -uid "3F79E1E0-4F14-E9EC-73F6-BF9B66F805BA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 44 "e[20]" "e[23]" "e[26]" "e[82]" "e[84]" "e[86]" "e[120]" "e[123]" "e[126]" "e[129]" "e[132]" "e[518]" "e[558]" "e[560]" "e[562]" "e[564]" "e[566]" "e[568]" "e[570]" "e[572]" "e[574]" "e[576]" "e[578:580]" "e[583]" "e[586]" "e[648]" "e[651]" "e[654]" "e[694]" "e[697]" "e[701]" "e[704]" "e[706]" "e[721]" "e[723]" "e[725]" "e[727]" "e[729]" "e[732]" "e[734]" "e[737]" "e[739:740]" "e[742]" "e[1108:1109]";
	setAttr ".ix" -type "matrix" 1.3434817221299036 0 0 0 0 1.3434817221299036 0 0 0 0 1.3434817221299036 0
		 0.0094961573876823357 6.3506848212241493 0.33160916970587095 1;
	setAttr ".a" 180;
createNode polySoftEdge -n "polySoftEdge41";
	rename -uid "947547A0-4C47-2942-B795-E3B4E424E8CB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 24 "e[24]" "e[31]" "e[160]" "e[172]" "e[178]" "e[210]" "e[226]" "e[242]" "e[258]" "e[274]" "e[544]" "e[573]" "e[588]" "e[597]" "e[741]" "e[762]" "e[771]" "e[805]" "e[821]" "e[837]" "e[853]" "e[869]" "e[1120]" "e[1133]";
	setAttr ".ix" -type "matrix" 1.3434817221299036 0 0 0 0 1.3434817221299036 0 0 0 0 1.3434817221299036 0
		 0.0094961573876823357 6.3506848212241493 0.33160916970587095 1;
	setAttr ".a" 180;
createNode polySoftEdge -n "polySoftEdge42";
	rename -uid "A82E767F-49C2-81FD-29A7-03A988972053";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 24 "e[511]" "e[513]" "e[515]" "e[517]" "e[519]" "e[521]" "e[523]" "e[525]" "e[527]" "e[529]" "e[550]" "e[567]" "e[614]" "e[616]" "e[619]" "e[673]" "e[676]" "e[679]" "e[700]" "e[714]" "e[731]" "e[753]" "e[1123]" "e[1130]";
	setAttr ".ix" -type "matrix" 1.3434817221299036 0 0 0 0 1.3434817221299036 0 0 0 0 1.3434817221299036 0
		 0.0094961573876823357 6.3506848212241493 0.33160916970587095 1;
	setAttr ".a" 180;
createNode polySoftEdge -n "polySoftEdge43";
	rename -uid "A103207B-4478-2404-544B-6E903F46FF3D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 22 "e[78]" "e[85]" "e[146]" "e[165]" "e[202]" "e[386]" "e[402]" "e[418]" "e[434]" "e[531]" "e[561]" "e[646]" "e[655]" "e[726]" "e[747]" "e[797]" "e[981]" "e[997]" "e[1013]" "e[1029]" "e[1115]" "e[1127]";
	setAttr ".ix" -type "matrix" 1.3434817221299036 0 0 0 0 1.3434817221299036 0 0 0 0 1.3434817221299036 0
		 0.0094961573876823357 6.3506848212241493 0.33160916970587095 1;
	setAttr ".a" 180;
createNode polySoftEdge -n "polySoftEdge44";
	rename -uid "2D49CBC9-44DC-C2AE-52B1-D394BBFBBD82";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[67]" "e[198]" "e[382]" "e[398]" "e[414]" "e[430]" "e[632]" "e[794]" "e[978]" "e[994]" "e[1010]" "e[1026]";
	setAttr ".ix" -type "matrix" 1.3434817221299036 0 0 0 0 1.3434817221299036 0 0 0 0 1.3434817221299036 0
		 0.0094961573876823357 6.3506848212241493 0.33160916970587095 1;
	setAttr ".a" 180;
createNode polySoftEdge -n "polySoftEdge45";
	rename -uid "601B7E70-4971-5DB2-D04D-A185383D7EF8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 22 "e[182]" "e[191]" "e[214]" "e[230]" "e[246]" "e[262]" "e[278]" "e[375]" "e[391]" "e[407]" "e[423]" "e[776]" "e[781]" "e[810]" "e[826]" "e[842]" "e[858]" "e[874]" "e[967]" "e[983]" "e[999]" "e[1015]";
	setAttr ".ix" -type "matrix" 1.3434817221299036 0 0 0 0 1.3434817221299036 0 0 0 0 1.3434817221299036 0
		 0.0094961573876823357 6.3506848212241493 0.33160916970587095 1;
	setAttr ".a" 180;
createNode polySoftEdge -n "polySoftEdge46";
	rename -uid "05DC44C3-4C33-001B-B4EC-B18916E466F3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "e[55]" "e[186]" "e[194]" "e[218]" "e[234]" "e[250]" "e[266]" "e[282]" "e[378]" "e[394]" "e[410]" "e[426]" "e[514]";
	setAttr ".ix" -type "matrix" 1.3434817221299036 0 0 0 0 1.3434817221299036 0 0 0 0 1.3434817221299036 0
		 0.0094961573876823357 6.3506848212241493 0.33160916970587095 1;
	setAttr ".a" 180;
createNode polySoftEdge -n "polySoftEdge47";
	rename -uid "FD8E882E-4117-D6E5-32C5-ECA1D469A843";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 27 "e[28]" "e[175]" "e[207]" "e[223]" "e[239]" "e[255]" "e[271]" "e[590]" "e[620]" "e[765]" "e[779]" "e[788]" "e[799]" "e[813]" "e[815]" "e[829]" "e[831]" "e[845]" "e[847]" "e[861]" "e[863]" "e[877]" "e[973]" "e[989]" "e[1005]" "e[1021]" "e[1105]";
	setAttr ".ix" -type "matrix" 1.3434817221299036 0 0 0 0 1.3434817221299036 0 0 0 0 1.3434817221299036 0
		 0.0094961573876823357 6.3506848212241493 0.33160916970587095 1;
	setAttr ".a" 180;
createNode polySoftEdge -n "polySoftEdge48";
	rename -uid "92A5A285-4E8C-8CC4-FEF4-66B7B0305EA0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[33]" "e[42]" "e[51]" "e[53:54]" "e[56:57]" "e[66]" "e[618]" "e[621]" "e[623]" "e[633]" "e[784]" "e[789]";
	setAttr ".ix" -type "matrix" 1.3434817221299036 0 0 0 0 1.3434817221299036 0 0 0 0 1.3434817221299036 0
		 0.0094961573876823357 6.3506848212241493 0.33160916970587095 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak134";
	rename -uid "0C7F2AA0-42B8-B42A-E6E9-8683B39D9BA0";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[27]" -type "float3" 0.015789628 -3.7747583e-015 0 ;
	setAttr ".tk[30]" -type "float3" 0 -5.495604e-015 -0.016946234 ;
	setAttr ".tk[33]" -type "float3" 0 -5.495604e-015 0.016946234 ;
	setAttr ".tk[35]" -type "float3" 0.015549177 -3.0531133e-015 0 ;
	setAttr ".tk[306]" -type "float3" -0.015789628 -3.7747583e-015 0 ;
	setAttr ".tk[309]" -type "float3" 0 -2.1094237e-015 -0.018080808 ;
	setAttr ".tk[312]" -type "float3" 0 -2.1094237e-015 0.018080808 ;
	setAttr ".tk[314]" -type "float3" -0.015549177 -3.0531133e-015 0 ;
createNode deleteComponent -n "deleteComponent35";
	rename -uid "7D79307A-4687-D489-0FCA-46B30611B05E";
	setAttr ".dc" -type "componentList" 2 "f[260:271]" "f[544:555]";
createNode deleteComponent -n "deleteComponent36";
	rename -uid "50C0F095-45DE-0DC3-DE07-63A9AE21ACA9";
	setAttr ".dc" -type "componentList" 5 "f[45]" "f[63:73]" "f[256]" "f[335:345]" "f[528]";
createNode deleteComponent -n "deleteComponent37";
	rename -uid "A86170B2-4931-F42A-BCA8-939021B77FFC";
	setAttr ".dc" -type "componentList" 12 "f[24:26]" "f[42:45]" "f[51:57]" "f[60]" "f[242:243]" "f[247:255]" "f[283:285]" "f[301:305]" "f[311:317]" "f[320]" "f[502:503]" "f[507:515]";
createNode deleteComponent -n "deleteComponent38";
	rename -uid "8BE26AAB-46BA-36C2-E455-CC94EAEEFE1C";
	setAttr ".dc" -type "componentList" 5 "f[0:2]" "f[44:46]" "f[230:235]" "f[277:279]" "f[463:465]";
createNode polyTweak -n "polyTweak135";
	rename -uid "CDE87FCD-4866-68F5-D816-6D8D7CA37AE5";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0.064109482 0 ;
	setAttr ".tk[7]" -type "float3" 0 0.29602218 0 ;
	setAttr ".tk[14]" -type "float3" 0 0.064109482 0 ;
	setAttr ".tk[15]" -type "float3" 0 0.064109482 0 ;
	setAttr ".tk[16]" -type "float3" 0 0.064109482 0 ;
	setAttr ".tk[33]" -type "float3" 0 0.29602218 0 ;
	setAttr ".tk[34]" -type "float3" 0 0.29602218 0 ;
	setAttr ".tk[35]" -type "float3" 0 0.30516449 0 ;
	setAttr ".tk[36]" -type "float3" 0 0.29473281 0 ;
	setAttr ".tk[37]" -type "float3" 0 0.26521549 0 ;
	setAttr ".tk[38]" -type "float3" 0 0.24844956 0 ;
	setAttr ".tk[39]" -type "float3" 0 0.1151229 0 ;
	setAttr ".tk[240]" -type "float3" 0 0.25973907 0 ;
	setAttr ".tk[245]" -type "float3" 0 0.064109482 0 ;
	setAttr ".tk[246]" -type "float3" 0 0.064109482 0 ;
	setAttr ".tk[247]" -type "float3" 0 0.064109482 0 ;
	setAttr ".tk[264]" -type "float3" 0 0.29602218 0 ;
	setAttr ".tk[265]" -type "float3" 0 0.29602218 0 ;
	setAttr ".tk[266]" -type "float3" 0 0.30516449 0 ;
	setAttr ".tk[267]" -type "float3" 0 0.29473281 0 ;
	setAttr ".tk[268]" -type "float3" 0 0.26521549 0 ;
	setAttr ".tk[269]" -type "float3" 0 0.24844956 0 ;
	setAttr ".tk[270]" -type "float3" 0 0.1151229 0 ;
	setAttr ".tk[470]" -type "float3" 0 0.25973907 0 ;
createNode deleteComponent -n "deleteComponent39";
	rename -uid "4CD48EF1-47C7-8EED-F297-EBB73D683CCF";
	setAttr ".dc" -type "componentList" 4 "f[21:35]" "f[221:223]" "f[245:259]" "f[445:447]";
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	rename -uid "C831FAA5-42E4-70AB-72A8-A48A432A86E5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 18 "e[7:9]" "e[57]" "e[59]" "e[62]" "e[64:68]" "e[420]" "e[422]" "e[425]" "e[428]" "e[472]" "e[475]" "e[478]" "e[482]" "e[485]" "e[488]" "e[491]" "e[493]" "e[835]";
	setAttr ".ix" -type "matrix" 1.3434817221299036 0 0 0 0 1.3434817221299036 0 0 0 0 1.3434817221299036 0
		 0.0094961573876823357 6.3506848212241493 0.33160916970587095 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.2847598e-008 6.8763709 0.32236126 ;
	setAttr ".rs" 59309;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.54882658131783346 6.8763697505267416 -0.22352871669443808 ;
	setAttr ".cbx" -type "double3" 0.5488265356226385 6.8763722729758925 0.86825121772951652 ;
createNode polyTweak -n "polyTweak136";
	rename -uid "E0AAC3B5-46A6-43A6-3DDC-CEB1548708F6";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk";
	setAttr ".tk[0]" -type "float3" -3.6531389e-009 -0.022295579 -0.090942234 ;
	setAttr ".tk[7]" -type "float3" -3.6531389e-009 -0.022295073 0.13539676 ;
	setAttr ".tk[8]" -type "float3" 0.0053842235 -0.022295579 -0.090942234 ;
	setAttr ".tk[9]" -type "float3" 0.055448763 -0.022295579 -0.082530558 ;
	setAttr ".tk[10]" -type "float3" 0.087437667 -0.022295579 -0.061870474 ;
	setAttr ".tk[27]" -type "float3" 0.0053842235 -0.022295073 0.13539676 ;
	setAttr ".tk[28]" -type "float3" 0.055448763 -0.022295073 0.1269851 ;
	setAttr ".tk[29]" -type "float3" 0.087437667 -0.022295058 0.10072575 ;
	setAttr ".tk[30]" -type "float3" 0.10619602 -0.022295073 0.069616698 ;
	setAttr ".tk[31]" -type "float3" 0.11377828 -0.022295147 0.028720248 ;
	setAttr ".tk[32]" -type "float3" 0.11377828 -0.022295177 0.017533952 ;
	setAttr ".tk[33]" -type "float3" 0.10531601 -0.022295468 -0.030761536 ;
	setAttr ".tk[216]" -type "float3" 0.11377828 -0.022295162 0.023432359 ;
	setAttr ".tk[217]" -type "float3" -0.0053842315 -0.022295579 -0.090942234 ;
	setAttr ".tk[218]" -type "float3" -0.055448763 -0.022295579 -0.082530558 ;
	setAttr ".tk[219]" -type "float3" -0.087437667 -0.022295579 -0.061870474 ;
	setAttr ".tk[236]" -type "float3" -0.0053842315 -0.022295073 0.13539676 ;
	setAttr ".tk[237]" -type "float3" -0.055448763 -0.022295073 0.1269851 ;
	setAttr ".tk[238]" -type "float3" -0.087437667 -0.022295058 0.10072575 ;
	setAttr ".tk[239]" -type "float3" -0.10619608 -0.022295073 0.069616698 ;
	setAttr ".tk[240]" -type "float3" -0.11377828 -0.022295147 0.028720248 ;
	setAttr ".tk[241]" -type "float3" -0.11377828 -0.022295177 0.017533952 ;
	setAttr ".tk[242]" -type "float3" -0.10531607 -0.022295468 -0.030761536 ;
	setAttr ".tk[424]" -type "float3" -0.11377828 -0.022295162 0.023432359 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge2";
	rename -uid "A5C3B102-4CE8-E0D6-6AAE-0980F3DF844D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 20 "e[838]" "e[840]" "e[842]" "e[845]" "e[847]" "e[849]" "e[851]" "e[853]" "e[855]" "e[858:860]" "e[862]" "e[864]" "e[866]" "e[868]" "e[870]" "e[872]" "e[874]" "e[876]" "e[879]" "e[881:883]";
	setAttr ".ix" -type "matrix" 1.3434817221299036 0 0 0 0 1.3434817221299036 0 0 0 0 1.3434817221299036 0
		 0.0094961573876823357 6.3506848212241493 0.33160916970587095 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.2847598e-008 6.7635489 0.3223612 ;
	setAttr ".rs" 43519;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.31885983706711662 6.7635479271387107 0.0052074927790224379 ;
	setAttr ".cbx" -type "double3" 0.31885979137192183 6.7635494085771004 0.63951488813942992 ;
createNode polyTweak -n "polyTweak137";
	rename -uid "5FB6EAAF-498D-9C4A-CE0A-E6B43F866F0D";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk[425:448]" -type "float3"  -5.2599916e-009 -0.0839779
		 -0.17025635 0.0081002256 -0.0839779 -0.17025635 0.083419144 -0.0839779 -0.15760157
		 0.13154434 -0.0839779 -0.12651965 -5.2599916e-009 -0.083977111 0.17025635 0.0081002256
		 -0.083977111 0.17025635 0.083419144 -0.083977111 0.15760162 0.13154434 -0.083977111
		 0.1180959 0.15976509 -0.083977111 0.071294457 0.17117225 -0.083977267 0.0097682197
		 0.17117225 -0.083977267 0.0018129542 0.17117225 -0.083977267 -0.0070607821 0.15844122
		 -0.083977722 -0.079718262 -0.0081002302 -0.0839779 -0.17025635 -0.083419189 -0.0839779
		 -0.15760157 -0.13154438 -0.0839779 -0.12651965 -0.0081002302 -0.083977111 0.17025635
		 -0.083419189 -0.083977111 0.15760162 -0.13154438 -0.083977111 0.1180959 -0.15976514
		 -0.083977111 0.071294457 -0.17117225 -0.083977267 0.0097682197 -0.17117225 -0.083977267
		 0.0018129542 -0.17117225 -0.083977267 -0.0070607821 -0.15844123 -0.083977722 -0.079718262;
createNode polyExtrudeEdge -n "polyExtrudeEdge3";
	rename -uid "F7A5501D-41A4-2640-CF57-B2AFB65FF5B9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 20 "e[886]" "e[888]" "e[890]" "e[893]" "e[895]" "e[897]" "e[899]" "e[901]" "e[903]" "e[906:908]" "e[910]" "e[912]" "e[914]" "e[916]" "e[918]" "e[920]" "e[922]" "e[924]" "e[927]" "e[929:931]";
	setAttr ".ix" -type "matrix" 1.3434817221299036 0 0 0 0 1.3434817221299036 0 0 0 0 1.3434817221299036 0
		 0.0094961573876823357 6.3506848212241493 0.33160916970587095 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -3.2857315e-008 6.7122512 0.32236117 ;
	setAttr ".rs" 36664;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.12336746541470808 6.7122508406697206 0.19965376873372739 ;
	setAttr ".cbx" -type "double3" 0.12336739970007558 6.7122514812917276 0.44506859216528716 ;
createNode polyTweak -n "polyTweak138";
	rename -uid "049F6E54-4C4D-3F80-1DF7-958BD753519B";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk[449:472]" -type "float3"  -8.8477039e-009 -0.03818303
		 -0.14473312 0.0068859067 -0.03818303 -0.14473312 0.070913821 -0.03818303 -0.13397546
		 0.11182445 -0.03818303 -0.1075531 -8.8477039e-009 -0.038182091 0.14473312 0.0068859067
		 -0.038182091 0.14473312 0.070913821 -0.038182091 0.13397546 0.11182445 -0.038182091
		 0.1003922 0.13581465 -0.038182091 0.060606658 0.14551175 -0.038182434 0.0083038565
		 0.14551175 -0.038182434 0.0015411801 0.14551175 -0.038182434 -0.0060022883 0.13468912
		 -0.038182683 -0.067767672 -0.0068859314 -0.03818303 -0.14473312 -0.070913821 -0.03818303
		 -0.13397546 -0.1118245 -0.03818303 -0.1075531 -0.0068859314 -0.038182091 0.14473312
		 -0.070913821 -0.038182091 0.13397546 -0.1118245 -0.038182091 0.1003922 -0.13581467
		 -0.038182091 0.060606658 -0.14551175 -0.038182434 0.0083038565 -0.14551175 -0.038182434
		 0.0015411801 -0.14551175 -0.038182434 -0.0060022883 -0.13468917 -0.038182683 -0.067767672;
createNode polyTweak -n "polyTweak139";
	rename -uid "7DF968AA-4910-409F-DD5D-BFAAEB43BD03";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk[473:496]" -type "float3"  0 -0.033769637 0 0 -0.033769637
		 0 0 -0.033769637 0 0 -0.033769637 0 0 -0.033769637 0 0 -0.033769637 0 0 -0.033769637
		 0 0 -0.033769637 0 0 -0.033769637 0 0 -0.033769637 0 0 -0.033769637 0 0 -0.033769637
		 0 0 -0.033769637 0 0 -0.033769637 0 0 -0.033769637 0 0 -0.033769637 0 0 -0.033769637
		 0 0 -0.033769637 0 0 -0.033769637 0 0 -0.033769637 0 0 -0.033769637 0 0 -0.033769637
		 0 0 -0.033769637 0 0 -0.033769637 0;
createNode deleteComponent -n "deleteComponent40";
	rename -uid "03656A53-4355-D1F0-7C79-69A8E815BB9A";
	setAttr ".dc" -type "componentList" 1 "e[952]";
createNode deleteComponent -n "deleteComponent41";
	rename -uid "288A5C7D-411E-1E54-4926-AD8F166C35B9";
	setAttr ".dc" -type "componentList" 1 "e[948]";
createNode deleteComponent -n "deleteComponent42";
	rename -uid "639B8F80-4482-B723-9689-AB97451B24E9";
	setAttr ".dc" -type "componentList" 1 "e[955]";
createNode deleteComponent -n "deleteComponent43";
	rename -uid "36E108C9-440B-3BFF-0084-018EB85DBD35";
	setAttr ".dc" -type "componentList" 1 "e[933]";
createNode deleteComponent -n "deleteComponent44";
	rename -uid "18C9D86D-4033-1EE7-CCA1-6CB969C05524";
	setAttr ".dc" -type "componentList" 1 "e[970]";
createNode deleteComponent -n "deleteComponent45";
	rename -uid "1F992772-4A77-97E8-6106-D8BAA0F6A602";
	setAttr ".dc" -type "componentList" 1 "e[967]";
createNode deleteComponent -n "deleteComponent46";
	rename -uid "76C1486F-438F-13D6-C9C0-0D80E8ADF8E0";
	setAttr ".dc" -type "componentList" 1 "e[959]";
createNode deleteComponent -n "deleteComponent47";
	rename -uid "96638C73-459D-69B7-4AB2-5286D0256B85";
	setAttr ".dc" -type "componentList" 1 "e[939]";
createNode polyCloseBorder -n "polyCloseBorder1";
	rename -uid "476AD1CB-42B9-D098-EEE4-10B8FD4F99A8";
	setAttr ".ics" -type "componentList" 16 "e[933]" "e[935]" "e[937]" "e[939]" "e[941]" "e[943]" "e[945:946]" "e[948]" "e[950:953]" "e[955]" "e[957:958]" "e[960]" "e[962]" "e[964:965]" "e[967]" "e[969:971]";
createNode polyTweak -n "polyTweak140";
	rename -uid "007E4C1A-4201-0F3A-D326-38B5730652C9";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk[473:496]" -type "float3"  0 -3.33278823 0 0 -3.33278823
		 0 0 -3.33278823 0 0 -3.33278823 0 0 -3.33278823 0 0 -3.33278823 0 0 -3.33278823 0
		 0 -3.33278823 0 0 -3.33278823 0 0 -3.33278823 0 0 -3.33278823 0 0 -3.33278823 0 0
		 -3.33278823 0 0 -3.33278823 0 0 -3.33278823 0 0 -3.33278823 0 0 -3.33278823 0 0 -3.33278823
		 0 0 -3.33278823 0 0 -3.33278823 0 0 -3.33278823 0 0 -3.33278823 0 0 -3.33278823 0
		 0 -3.33278823 0;
createNode polySplit -n "polySplit1";
	rename -uid "BA49DB29-4FA3-9120-9EE6-42A275D12D50";
	setAttr ".v[0]" -type "float3"  -0.0074439999 -3.0974319 -0.097263001;
	setAttr -s 4 ".e[0:3]"  0 476 0.086812198 0;
	setAttr -s 4 ".d[0:3]"  -2147482690 0 -2147482709 -2147482715;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	rename -uid "E19D7A0F-4DCC-B2E6-428A-1FA52FE4E039";
	setAttr ".v[0]" -type "float3"  0.081979997 -3.0974319 -0.009509;
	setAttr -s 4 ".e[0:3]"  1 478 0.49829701 0.63818902;
	setAttr -s 4 ".d[0:3]"  -2147482677 0 -2147482673 -2147482696;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit3";
	rename -uid "6B74E389-41A8-845B-D29A-EDABD664FC53";
	setAttr -s 4 ".e[0:3]"  1 0.99948698 0.99972802 1;
	setAttr -s 4 ".d[0:3]"  -2147482707 -2147482673 -2147482669 -2147482693;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit4";
	rename -uid "36FB055F-434E-90A0-A336-45914ED9D836";
	setAttr -s 4 ".e[0:3]"  1 1 0.000127476 1;
	setAttr -s 4 ".d[0:3]"  -2147482684 -2147482669 -2147482672 -2147482698;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit5";
	rename -uid "C150353B-496A-F0ED-4CBD-D4B5727D35B9";
	setAttr -s 4 ".e[0:3]"  1 1 0.00036778901 1;
	setAttr -s 4 ".d[0:3]"  -2147482688 -2147482661 -2147482662 -2147482713;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit6";
	rename -uid "32CF0622-49A4-5C9F-1AE7-3FA590337E33";
	setAttr -s 5 ".e[0:4]"  1 0.99974501 0.99982297 1 1;
	setAttr -s 5 ".d[0:4]"  -2147482691 -2147482669 -2147482657 -2147482673 -2147482705;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit7";
	rename -uid "85D75EBB-49F0-6D51-D8F6-F1BAC53DB2ED";
	setAttr -s 6 ".e[0:5]"  1 0.52705401 0.697281 0.42098501 1 1;
	setAttr -s 6 ".d[0:5]"  -2147482703 -2147482667 -2147482664 -2147482653 -2147482669 -2147482679;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySoftEdge -n "polySoftEdge49";
	rename -uid "5AF0A95A-454E-F1B8-053D-179245249C1D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 38 "e[7:9]" "e[57]" "e[59]" "e[62]" "e[64:68]" "e[420]" "e[422]" "e[425]" "e[428]" "e[472]" "e[475]" "e[478]" "e[482]" "e[485]" "e[488]" "e[491]" "e[493]" "e[835]" "e[838]" "e[840]" "e[842]" "e[845]" "e[847]" "e[849]" "e[851]" "e[853]" "e[855]" "e[858:860]" "e[862]" "e[864]" "e[866]" "e[868]" "e[870]" "e[872]" "e[874]" "e[876]" "e[879]" "e[881:883]";
	setAttr ".ix" -type "matrix" 0.8031792029722733 0 0 0 0 0.8031792029722733 0 0 0 0 0.8031792029722733 0
		 0 2.4741757142464786 0 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak141";
	rename -uid "4D09AD78-4890-76DD-6A29-C6AF2C63AAD9";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk[425:448]" -type "float3"  3.1584477e-009 0.014087241
		 0.051661998 -0.0024579014 0.014087241 0.051661998 -0.025312426 0.014087241 0.047822084
		 -0.039915398 0.014087241 0.038390741 3.1584477e-009 0.014086928 -0.051661994 -0.0024579014
		 0.014086928 -0.051661994 -0.025312426 0.014086928 -0.047822084 -0.039915398 0.014086928
		 -0.035834603 -0.048478592 0.014086928 -0.021633344 -0.051939931 0.014087033 -0.0029640323
		 -0.051939931 0.014087033 -0.00055012101 -0.051939931 0.014087033 0.0021424927 -0.048076857
		 0.014087137 0.024189431 0.0024579086 0.014087241 0.051661998 0.025312426 0.014087241
		 0.047822084 0.039915398 0.014087241 0.038390741 0.0024579086 0.014086928 -0.051661994
		 0.025312426 0.014086928 -0.047822084 0.039915398 0.014086928 -0.035834603 0.048478592
		 0.014086928 -0.021633344 0.051939931 0.014087033 -0.0029640323 0.051939931 0.014087033
		 -0.00055012101 0.051939931 0.014087033 0.0021424927 0.048076864 0.014087137 0.024189431;
createNode polyCut -n "polyCut1";
	rename -uid "5E7CD09D-4D58-8B99-81DC-F4A56126DB9A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[460:475]";
	setAttr ".ix" -type "matrix" 0.8031792029722733 0 0 0 0 0.8031792029722733 0 0 0 0 0.8031792029722733 0
		 0 2.4741757142464786 0 1;
	setAttr ".pc" -type "double3" -0.63632997999999996 1.5433093099999999 1000 ;
	setAttr ".ro" -type "double3" 89.838147950000007 -90 0 ;
createNode polyCut -n "polyCut2";
	rename -uid "44B5AA44-44B4-CF8F-2C7C-0087B77ADB99";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "f[461]" "f[463:464]" "f[467]" "f[469]" "f[471:472]" "f[475]" "f[497]" "f[499]" "f[502:503]" "f[505]" "f[507]" "f[510:511]";
	setAttr ".ix" -type "matrix" 0.8031792029722733 0 0 0 0 0.8031792029722733 0 0 0 0 0.8031792029722733 0
		 0 2.4741757142464786 0 1;
	setAttr ".pc" -type "double3" -0.10217459 2.6862863199999998 1000 ;
	setAttr ".ro" -type "double3" 89.801745499999996 -90 0 ;
createNode polyCut -n "polyCut3";
	rename -uid "C28E8647-40CD-6C9C-E2C8-2AB9C201EE62";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "f[460]" "f[462]" "f[465:466]" "f[468]" "f[470]" "f[473:474]" "f[498]" "f[500:501]" "f[504]" "f[506]" "f[508:509]" "f[512]";
	setAttr ".ix" -type "matrix" 0.8031792029722733 0 0 0 0 0.8031792029722733 0 0 0 0 0.8031792029722733 0
		 0 2.4741757142464786 0 1;
	setAttr ".pc" -type "double3" -0.10306463 -0.00071378000000000001 1000 ;
	setAttr ".ro" -type "double3" 89.758247089999998 -90 0 ;
createNode polyTweak -n "polyTweak142";
	rename -uid "F603365E-4286-F41F-190C-96BE72340693";
	setAttr ".uopa" yes;
	setAttr -s 481 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0.090340473 0 ;
	setAttr ".tk[1]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[2]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[3]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[4]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[5]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[6]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[7]" -type "float3" 0 0.090340473 0 ;
	setAttr ".tk[8]" -type "float3" 0 0.090340473 0 ;
	setAttr ".tk[9]" -type "float3" 0 0.090340473 0 ;
	setAttr ".tk[10]" -type "float3" 0 0.090340473 0 ;
	setAttr ".tk[11]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[12]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[13]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[14]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[15]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[16]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[17]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[18]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[19]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[20]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[21]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[22]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[23]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[24]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[25]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[26]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[27]" -type "float3" 0 0.090340473 0 ;
	setAttr ".tk[28]" -type "float3" 0 0.090340473 0 ;
	setAttr ".tk[29]" -type "float3" 0 0.090340473 0 ;
	setAttr ".tk[30]" -type "float3" 0 0.090340473 0 ;
	setAttr ".tk[31]" -type "float3" 0 0.090340473 0 ;
	setAttr ".tk[32]" -type "float3" 0 0.090340473 0 ;
	setAttr ".tk[33]" -type "float3" 0 0.090340473 0 ;
	setAttr ".tk[34]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[35]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[36]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[37]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[38]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[39]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[40]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[41]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[42]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[43]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[44]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[45]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[46]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[47]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[48]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[49]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[50]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[51]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[52]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[53]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[54]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[55]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[56]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[57]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[58]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[59]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[60]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[61]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[62]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[63]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[64]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[65]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[66]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[67]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[68]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[69]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[70]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[71]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[72]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[73]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[74]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[75]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[76]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[77]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[78]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[79]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[80]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[81]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[82]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[83]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[84]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[85]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[86]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[87]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[88]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[89]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[90]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[91]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[92]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[93]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[94]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[95]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[96]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[97]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[98]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[99]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[100]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[101]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[102]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[103]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[104]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[105]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[106]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[107]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[108]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[109]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[110]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[111]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[112]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[113]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[114]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[115]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[116]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[117]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[118]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[119]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[120]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[121]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[122]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[123]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[124]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[125]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[126]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[127]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[128]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[129]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[130]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[131]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[132]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[133]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[134]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[135]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[136]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[137]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[138]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[139]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[140]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[141]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[142]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[143]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[144]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[145]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[146]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[147]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[148]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[149]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[150]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[151]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[152]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[153]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[154]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[155]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[156]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[157]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[158]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[159]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[160]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[161]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[162]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[163]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[164]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[165]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[166]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[167]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[168]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[169]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[170]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[171]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[172]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[173]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[174]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[175]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[176]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[177]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[178]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[179]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[180]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[181]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[182]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[183]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[184]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[185]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[186]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[187]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[188]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[189]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[190]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[191]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[192]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[193]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[194]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[195]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[196]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[197]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[198]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[199]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[200]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[201]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[202]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[203]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[204]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[205]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[206]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[207]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[208]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[209]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[210]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[211]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[212]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[213]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[214]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[215]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[216]" -type "float3" 0 0.090340473 0 ;
	setAttr ".tk[217]" -type "float3" 0 0.090340473 0 ;
	setAttr ".tk[218]" -type "float3" 0 0.090340473 0 ;
	setAttr ".tk[219]" -type "float3" 0 0.090340473 0 ;
	setAttr ".tk[220]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[221]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[222]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[223]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[224]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[225]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[226]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[227]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[228]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[229]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[230]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[231]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[232]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[233]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[234]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[235]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[236]" -type "float3" 0 0.090340473 0 ;
	setAttr ".tk[237]" -type "float3" 0 0.090340473 0 ;
	setAttr ".tk[238]" -type "float3" 0 0.090340473 0 ;
	setAttr ".tk[239]" -type "float3" 0 0.090340473 0 ;
	setAttr ".tk[240]" -type "float3" 0 0.090340473 0 ;
	setAttr ".tk[241]" -type "float3" 0 0.090340473 0 ;
	setAttr ".tk[242]" -type "float3" 0 0.090340473 0 ;
	setAttr ".tk[243]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[244]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[245]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[246]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[247]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[248]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[249]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[250]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[251]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[252]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[253]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[254]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[255]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[256]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[257]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[258]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[259]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[260]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[261]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[262]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[263]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[264]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[265]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[266]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[267]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[268]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[269]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[270]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[271]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[272]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[273]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[274]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[275]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[276]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[277]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[278]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[279]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[280]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[281]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[282]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[283]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[284]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[285]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[286]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[287]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[288]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[289]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[290]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[291]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[292]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[293]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[294]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[295]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[296]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[297]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[298]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[299]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[300]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[301]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[302]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[303]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[304]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[305]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[306]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[307]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[308]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[309]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[310]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[311]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[312]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[313]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[314]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[315]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[316]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[317]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[318]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[319]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[320]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[321]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[322]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[323]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[324]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[325]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[326]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[327]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[328]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[329]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[330]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[331]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[332]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[333]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[334]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[335]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[336]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[337]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[338]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[339]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[340]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[341]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[342]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[343]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[344]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[345]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[346]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[347]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[348]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[349]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[350]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[351]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[352]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[353]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[354]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[355]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[356]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[357]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[358]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[359]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[360]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[361]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[362]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[363]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[364]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[365]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[366]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[367]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[368]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[369]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[370]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[371]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[372]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[373]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[374]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[375]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[376]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[377]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[378]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[379]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[380]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[381]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[382]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[383]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[384]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[385]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[386]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[387]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[388]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[389]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[390]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[391]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[392]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[393]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[394]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[395]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[396]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[397]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[398]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[399]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[400]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[401]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[402]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[403]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[404]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[405]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[406]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[407]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[408]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[409]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[410]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[411]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[412]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[413]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[414]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[415]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[416]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[417]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[418]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[419]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[420]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[421]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[422]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[423]" -type "float3" 0 0.15638791 0 ;
	setAttr ".tk[424]" -type "float3" 0 0.090340473 0 ;
	setAttr ".tk[449]" -type "float3" 0 -0.044147663 0 ;
	setAttr ".tk[450]" -type "float3" 0 -0.044147663 0 ;
	setAttr ".tk[451]" -type "float3" 0 -0.044147663 0 ;
	setAttr ".tk[452]" -type "float3" 0 -0.044147663 0 ;
	setAttr ".tk[453]" -type "float3" 0 -0.044147663 0 ;
	setAttr ".tk[454]" -type "float3" 0 -0.044147663 0 ;
	setAttr ".tk[455]" -type "float3" 0 -0.044147663 0 ;
	setAttr ".tk[456]" -type "float3" 0 -0.044147663 0 ;
	setAttr ".tk[457]" -type "float3" 0 -0.044147663 0 ;
	setAttr ".tk[458]" -type "float3" 0 -0.044147663 0 ;
	setAttr ".tk[459]" -type "float3" 0 -0.044147663 0 ;
	setAttr ".tk[460]" -type "float3" 0 -0.044147663 0 ;
	setAttr ".tk[461]" -type "float3" 0 -0.044147663 0 ;
	setAttr ".tk[462]" -type "float3" 0 -0.044147663 0 ;
	setAttr ".tk[463]" -type "float3" 0 -0.044147663 0 ;
	setAttr ".tk[464]" -type "float3" 0 -0.044147663 0 ;
	setAttr ".tk[465]" -type "float3" 0 -0.044147663 0 ;
	setAttr ".tk[466]" -type "float3" 0 -0.044147663 0 ;
	setAttr ".tk[467]" -type "float3" 0 -0.044147663 0 ;
	setAttr ".tk[468]" -type "float3" 0 -0.044147663 0 ;
	setAttr ".tk[469]" -type "float3" 0 -0.044147663 0 ;
	setAttr ".tk[470]" -type "float3" 0 -0.044147663 0 ;
	setAttr ".tk[471]" -type "float3" 0 -0.044147663 0 ;
	setAttr ".tk[472]" -type "float3" 0 -0.044147663 0 ;
	setAttr ".tk[511]" -type "float3" 0 -0.044147663 0 ;
	setAttr ".tk[512]" -type "float3" 0 -0.044147663 0 ;
	setAttr ".tk[513]" -type "float3" 0 -0.044147663 0 ;
	setAttr ".tk[514]" -type "float3" 0 -0.044147663 0 ;
	setAttr ".tk[515]" -type "float3" 0 -0.044147663 0 ;
	setAttr ".tk[516]" -type "float3" 0 -0.044147663 0 ;
	setAttr ".tk[517]" -type "float3" 0 -0.044147663 0 ;
	setAttr ".tk[518]" -type "float3" 0 -0.044147663 0 ;
	setAttr ".tk[519]" -type "float3" 0 -0.044147663 0 ;
	setAttr ".tk[520]" -type "float3" 0 -0.044147663 0 ;
	setAttr ".tk[521]" -type "float3" 0 -0.044147663 0 ;
	setAttr ".tk[522]" -type "float3" 0 -0.044147663 0 ;
	setAttr ".tk[523]" -type "float3" 0 -0.044147663 0 ;
	setAttr ".tk[524]" -type "float3" 0 -0.044147663 0 ;
	setAttr ".tk[525]" -type "float3" 0 -0.044147663 0 ;
	setAttr ".tk[526]" -type "float3" 0 -0.044147663 0 ;
	setAttr ".tk[527]" -type "float3" 0 -0.044147663 0 ;
	setAttr ".tk[528]" -type "float3" 0 -0.044147663 0 ;
	setAttr ".tk[529]" -type "float3" 0 -0.044147663 0 ;
	setAttr ".tk[530]" -type "float3" 0 -0.044147663 0 ;
	setAttr ".tk[531]" -type "float3" 0 -0.044147663 0 ;
	setAttr ".tk[532]" -type "float3" 0 -0.044147663 0 ;
	setAttr ".tk[533]" -type "float3" 0 -0.044147663 0 ;
	setAttr ".tk[534]" -type "float3" 0 -0.044147663 0 ;
	setAttr ".tk[535]" -type "float3" 0 -0.044147663 0 ;
	setAttr ".tk[536]" -type "float3" 0 -0.044147663 0 ;
	setAttr ".tk[537]" -type "float3" 0 -0.044147663 0 ;
	setAttr ".tk[538]" -type "float3" 0 -0.044147663 0 ;
	setAttr ".tk[539]" -type "float3" 0 -0.044147663 0 ;
	setAttr ".tk[540]" -type "float3" 0 -0.044147663 0 ;
	setAttr ".tk[541]" -type "float3" 0 -0.044147663 0 ;
	setAttr ".tk[542]" -type "float3" 0 -0.044147663 0 ;
createNode polyPlanarProj -n "polyPlanarProj1";
	rename -uid "00FEF303-46D1-85A6-4412-79A3394AADB3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:544]";
	setAttr ".ix" -type "matrix" 0.8031792029722733 0 0 0 0 0.8031792029722733 0 0 0 0 0.8031792029722733 0
		 0 2.4741757142464786 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.0056770443916320801 1.8028193712234497 0.047395765781402588 ;
	setAttr ".ps" -type "double2" 1.4050973653793335 3.6328732967376709 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyMapCut -n "polyMapCut1";
	rename -uid "FBA040E4-4E87-A2FF-BB38-57814EC726CA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 20 "e[886]" "e[888]" "e[890]" "e[893]" "e[895]" "e[897]" "e[899]" "e[901]" "e[903]" "e[906:908]" "e[910]" "e[912]" "e[914]" "e[916]" "e[918]" "e[920]" "e[922]" "e[924]" "e[927]" "e[929:931]";
createNode polyMapCut -n "polyMapCut2";
	rename -uid "9D88E3F9-4908-6AE4-D0E8-989C14F35466";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[938]" "e[1009]" "e[1041]" "e[1073]";
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "FCFEA33A-4191-F7A1-CC48-FCB5859D1AD0";
	setAttr ".uopa" yes;
	setAttr -s 137 ".uvtk[450:586]" -type "float2" -0.72133756 0.25459868 -0.70926964
		 0.25607669 -0.70350182 0.25703716 -0.63334626 0.24620759 -0.80508149 0.26533419 -0.76992774
		 0.26317608 -0.74535656 0.26191694 -0.7280249 0.26085913 -0.71462595 0.25985974 -0.71334529
		 0.25971389 0 0 -0.70397055 0.25804353 -0.72250217 0.25446516 -0.73330069 0.25297922
		 -0.73878646 0.25189149 0 0 -0.67214656 0.24664396 -0.69673532 0.24748141 -0.71401113
		 0.248353 0 0 0 0 -0.72902185 0.24948359 -0.73844934 0.25096256 -0.82841724 0.032125
		 -0.83011413 0.032011315 -0.83002895 0.03165736 -0.81323057 0.032743677 -0.81277704
		 0.033173971 -0.70376623 0.25666863 -0.70931172 0.25565833 -0.837143 0.0047749029
		 -0.83756465 0.012790916 -0.85098195 0.014585299 -0.78080392 -0.0034387112 -0.83132172
		 0.0033997938 -0.83234167 0.003770628 -0.77045357 0.26285928 -0.74574041 0.26155955
		 -0.72833318 0.26049632 -0.80490494 0.027028464 -0.80420429 0.027455125 -0.8063913
		 0.027464436 -0.81680965 0.023516819 -0.81371248 0.023538789 -0.80326998 0.027742218
		 -0.80011714 0.030405235 -0.80174434 0.029729176 -0.80360383 0.027627928 -0.70419216
		 0.25764513 -0.83183193 0.031837989 -0.84750128 0.030594617 -0.84687829 0.030226879
		 -0.73335707 0.25253499 -0.73891962 0.25144506 -0.83121574 0.0039493227 -0.8141489
		 0.00401814 -0.82683337 0.0066442518 -0.69697094 0.24705708 -0.67222881 0.24622011
		 -0.71438169 0.24795318 -0.85790813 0.021770917 -0.84977865 0.017368879 -0.84579325
		 0.015646184 -0.8552177 0.021107659 -0.85843062 0.022182364 -0.85890853 0.022700351
		 -0.85872102 0.026527625 -0.86047435 0.026994757 -0.73849893 0.25050896 -0.83251035
		 0.012709788 -0.82513237 0.019247342 -0.83178842 0.0036067581 -0.83250874 0.01271322
		 -0.83251417 0.012715004 -0.83251572 0.012717577 -0.83250797 0.012717371 -0.83250785
		 0.012719681 -0.83252203 0.012715053 -0.85645366 0.029536823 -0.83252132 0.012719967
		 -0.85735625 0.021641128 -0.8325069 0.01272783 -0.80356669 0.032548144 -0.83251524
		 0.012715384 -0.83898973 0.012692751 -0.75776702 0.14764673 -0.76950896 0.14609909
		 -0.72132361 0.2541762 -0.75242579 0.14853185 -0.80449688 0.031858683 -0.85944402
		 0.15235519 -0.82020187 0.15175021 -0.63310111 0.24558961 -0.79530758 0.15129125 -0.83060765
		 0.019684575 -0.7777254 0.15085125 -0.76268768 0.15018696 -0.71352565 0.259314 -0.75305051
		 0.14924502 -0.78128397 0.14430475 -0.78668821 0.14294934 -0.85576248 0.028886631
		 -0.71976936 0.13374621 -0.74445117 0.13559955 -0.83314961 0.010444578 -0.7618618
		 0.13721967 -0.7766971 0.13926828 -0.72917449 0.24900997 -0.78614998 0.14156079 -0.72770917
		 0.24944687 0 0 0 0 0 0 -0.73044181 0.24974561 0 0 0 0 0 0 -0.63705564 0.24608928
		 0 0 0 0 0 0 0 0 0 0 -0.71191287 0.25954854 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.72013974
		 0.2548362 -0.88494825 0.0075917011 -0.80945504 0.26510161 -0.68081558 0.13124985
		 -0.80887419 0.26546001;
createNode polyMapCut -n "polyMapCut3";
	rename -uid "391A1E52-4EA2-6BA5-39D2-2393DD2D6078";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 18 "e[0:6]" "e[413]" "e[415]" "e[417]" "e[419]" "e[421]" "e[447]" "e[449]" "e[452]" "e[487]" "e[836]" "e[843]" "e[854]" "e[877]" "e[884]" "e[891]" "e[902]" "e[925]";
createNode polyMapCut -n "polyMapCut4";
	rename -uid "D2450262-4276-9769-C75C-B6AEC6EE8C03";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 18 "e[0:6]" "e[413]" "e[415]" "e[417]" "e[419]" "e[421]" "e[447]" "e[449]" "e[452]" "e[487]" "e[836]" "e[843]" "e[854]" "e[877]" "e[884]" "e[891]" "e[902]" "e[925]";
createNode polyMapCut -n "polyMapCut5";
	rename -uid "343D8101-4C92-F6E1-9BA3-29B0AB943861";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "e[510]" "e[696]" "e[712]" "e[728]" "e[744:745]" "e[748:749]" "e[751]" "e[754]" "e[756:757]" "e[759]" "e[774]" "e[790]" "e[806]" "e[822]" "e[831]";
createNode polyMapCut -n "polyMapCut6";
	rename -uid "DA028988-4699-600D-ED26-F7B86164E2C0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[832]";
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "477F08CD-45A9-0EC1-22B0-E4A0067A26C0";
	setAttr ".uopa" yes;
	setAttr -s 83 ".uvtk";
	setAttr ".uvtk[27]" -type "float2" 1.5603633 -0.01000157 ;
	setAttr ".uvtk[28]" -type "float2" 1.4186788 -0.034873351 ;
	setAttr ".uvtk[37]" -type "float2" 1.3176012 -0.059364796 ;
	setAttr ".uvtk[42]" -type "float2" 1.3032674 -0.11933902 ;
	setAttr ".uvtk[234]" -type "float2" 0.62416267 -0.13501826 ;
	setAttr ".uvtk[236]" -type "float2" 0.638632 -0.10754162 ;
	setAttr ".uvtk[238]" -type "float2" 0.63775635 -0.093095541 ;
	setAttr ".uvtk[239]" -type "float2" 1.5420961 0.007000789 ;
	setAttr ".uvtk[240]" -type "float2" 1.4093448 -0.022928104 ;
	setAttr ".uvtk[247]" -type "float2" 1.2951379 -0.043341324 ;
	setAttr ".uvtk[251]" -type "float2" 1.2806627 -0.11461094 ;
	setAttr ".uvtk[252]" -type "float2" 1.0644174 -0.0091352761 ;
	setAttr ".uvtk[253]" -type "float2" 1.0716028 -0.079428971 ;
	setAttr ".uvtk[254]" -type "float2" 0.90154207 -0.0021551996 ;
	setAttr ".uvtk[255]" -type "float2" 0.91944939 -0.07945627 ;
	setAttr ".uvtk[256]" -type "float2" 0.8069104 -0.098366201 ;
	setAttr ".uvtk[257]" -type "float2" 0.76525414 -0.020960733 ;
	setAttr ".uvtk[258]" -type "float2" 0.71129727 -0.14260593 ;
	setAttr ".uvtk[259]" -type "float2" 0.64120412 -0.076740265 ;
	setAttr ".uvtk[272]" -type "float2" 0.63703817 -0.096919596 ;
	setAttr ".uvtk[273]" -type "float2" 0.61749047 0.019377038 ;
	setAttr ".uvtk[274]" -type "float2" 0.60247642 0.010087177 ;
	setAttr ".uvtk[275]" -type "float2" 1.3468726 0.091824144 ;
	setAttr ".uvtk[276]" -type "float2" 0.63005996 0.03828606 ;
	setAttr ".uvtk[277]" -type "float2" 0.72601068 0.082449406 ;
	setAttr ".uvtk[278]" -type "float2" 1.2197613 0.074952811 ;
	setAttr ".uvtk[279]" -type "float2" 1.0174205 0.095191091 ;
	setAttr ".uvtk[280]" -type "float2" 0.85035121 0.10486695 ;
	setAttr ".uvtk[361]" -type "float2" 0.59228224 0.14106408 ;
	setAttr ".uvtk[362]" -type "float2" 0.5724951 0.15332898 ;
	setAttr ".uvtk[363]" -type "float2" 1.148092 0.20325495 ;
	setAttr ".uvtk[364]" -type "float2" 0.61377746 0.134599 ;
	setAttr ".uvtk[365]" -type "float2" 0.70071733 0.14467624 ;
	setAttr ".uvtk[366]" -type "float2" 1.0769162 0.17619345 ;
	setAttr ".uvtk[367]" -type "float2" 0.94158268 0.16593042 ;
	setAttr ".uvtk[368]" -type "float2" 0.82026505 0.15474012 ;
	setAttr ".uvtk[369]" -type "float2" 0.5553453 0.27234298 ;
	setAttr ".uvtk[370]" -type "float2" 0.53211176 0.29572845 ;
	setAttr ".uvtk[371]" -type "float2" 0.89789468 0.31346554 ;
	setAttr ".uvtk[372]" -type "float2" 0.58195996 0.25341964 ;
	setAttr ".uvtk[373]" -type "float2" 0.66006267 0.2474184 ;
	setAttr ".uvtk[374]" -type "float2" 0.8823899 0.28440487 ;
	setAttr ".uvtk[375]" -type "float2" 0.81804812 0.26588553 ;
	setAttr ".uvtk[376]" -type "float2" 0.74977517 0.25003135 ;
	setAttr ".uvtk[377]" -type "float2" 0.55853921 0.37548405 ;
	setAttr ".uvtk[378]" -type "float2" 0.54499793 0.38942748 ;
	setAttr ".uvtk[379]" -type "float2" 0.70604157 0.39302611 ;
	setAttr ".uvtk[380]" -type "float2" 0.57614243 0.3622914 ;
	setAttr ".uvtk[381]" -type "float2" 0.63487911 0.35307819 ;
	setAttr ".uvtk[382]" -type "float2" 0.71084976 0.37554163 ;
	setAttr ".uvtk[383]" -type "float2" 0.69095361 0.36148632 ;
	setAttr ".uvtk[384]" -type "float2" 0.6794551 0.35261291 ;
	setAttr ".uvtk[429]" -type "float2" 1.2594067 -0.20515686 ;
	setAttr ".uvtk[441]" -type "float2" 1.2438111 -0.20092767 ;
	setAttr ".uvtk[442]" -type "float2" 1.0969155 -0.17078283 ;
	setAttr ".uvtk[443]" -type "float2" 0.98736566 -0.17162088 ;
	setAttr ".uvtk[444]" -type "float2" 0.90692306 -0.18696082 ;
	setAttr ".uvtk[445]" -type "float2" 0.84037989 -0.22191632 ;
	setAttr ".uvtk[465]" -type "float2" 1.1786895 -0.30489194 ;
	setAttr ".uvtk[469]" -type "float2" 1.0459061 -0.31185383 ;
	setAttr ".uvtk[564]" -type "float2" 1.0674895 -0.2997629 ;
	setAttr ".uvtk[565]" -type "float2" 1.0945055 -0.29440308 ;
	setAttr ".uvtk[566]" -type "float2" 1.1311572 -0.29434872 ;
	setAttr ".uvtk[568]" -type "float2" 1.1835632 -0.30639195 ;
	setAttr ".uvtk[587]" -type "float2" 0.833709 -0.22748187 ;
	setAttr ".uvtk[588]" -type "float2" 1.043895 -0.31376022 ;
	setAttr ".uvtk[595]" -type "float2" 0.70124316 -0.14951721 ;
	setAttr ".uvtk[604]" -type "float2" 1.5756927 -0.010655314 ;
	setAttr ".uvtk[618]" -type "float2" 0.59871435 0.46664369 ;
	setAttr ".uvtk[620]" -type "float2" 0.60614061 0.47105026 ;
	setAttr ".uvtk[621]" -type "float2" 0.58318502 0.46947616 ;
	setAttr ".uvtk[622]" -type "float2" 0.60156465 0.48872948 ;
	setAttr ".uvtk[623]" -type "float2" 0.60782981 0.47914439 ;
	setAttr ".uvtk[624]" -type "float2" 0.56811684 0.47678119 ;
	setAttr ".uvtk[625]" -type "float2" 0.56057137 0.48439151 ;
	setAttr ".uvtk[626]" -type "float2" 0.55438995 0.49210829 ;
	setAttr ".uvtk[627]" -type "float2" 0.59750664 0.49754834 ;
	setAttr ".uvtk[628]" -type "float2" 0.70168704 0.40932986 ;
	setAttr ".uvtk[629]" -type "float2" 0.90677279 0.34668404 ;
	setAttr ".uvtk[630]" -type "float2" 1.1873834 0.23796076 ;
	setAttr ".uvtk[631]" -type "float2" 1.416469 0.12329754 ;
	setAttr ".uvtk[632]" -type "float2" 1.562521 0.004446134 ;
	setAttr ".uvtk[633]" -type "float2" 0.62059176 -0.11889189 ;
createNode polyMapCut -n "polyMapCut7";
	rename -uid "56AE424E-4BEB-A5E4-A711-2D9C76404F08";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 17 "e[440]" "e[505]" "e[539]" "e[555]" "e[571]" "e[587]" "e[593]" "e[596:597]" "e[599]" "e[602:605]" "e[607]" "e[614]" "e[630]" "e[646]" "e[662]" "e[678]" "e[691]";
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "D41AF2A7-46BB-CE05-FA67-5FAB752DD47E";
	setAttr ".uopa" yes;
	setAttr -s 209 ".uvtk";
	setAttr ".uvtk[2]" -type "float2" 1.8315377 0.0020489097 ;
	setAttr ".uvtk[8]" -type "float2" 1.7308273 0.029661193 ;
	setAttr ".uvtk[16]" -type "float2" 1.5966578 0.058404237 ;
	setAttr ".uvtk[21]" -type "float2" 2.5023789 -0.1210579 ;
	setAttr ".uvtk[217]" -type "float2" 1.8465903 -0.05091542 ;
	setAttr ".uvtk[218]" -type "float2" 1.8280296 0.016234219 ;
	setAttr ".uvtk[219]" -type "float2" 1.8467379 -0.024584323 ;
	setAttr ".uvtk[220]" -type "float2" 1.836158 0.039788872 ;
	setAttr ".uvtk[221]" -type "float2" 1.8582444 -0.026220828 ;
	setAttr ".uvtk[222]" -type "float2" 1.856168 0.039103717 ;
	setAttr ".uvtk[223]" -type "float2" 1.7306523 0.040187597 ;
	setAttr ".uvtk[224]" -type "float2" 1.8900559 -0.34643766 ;
	setAttr ".uvtk[225]" -type "float2" 1.9040201 -0.36455178 ;
	setAttr ".uvtk[226]" -type "float2" 1.89658 -0.35967839 ;
	setAttr ".uvtk[227]" -type "float2" 1.8788702 -0.33581135 ;
	setAttr ".uvtk[228]" -type "float2" 1.922152 -0.38696817 ;
	setAttr ".uvtk[229]" -type "float2" 1.9229321 -0.36477673 ;
	setAttr ".uvtk[230]" -type "float2" 1.5876091 0.073693097 ;
	setAttr ".uvtk[231]" -type "float2" 1.8807585 -0.33695328 ;
	setAttr ".uvtk[232]" -type "float2" 1.8719661 -0.33236423 ;
	setAttr ".uvtk[233]" -type "float2" 1.9010065 -0.3481203 ;
	setAttr ".uvtk[235]" -type "float2" 2.2024617 -0.067133933 ;
	setAttr ".uvtk[237]" -type "float2" 1.9845792 -0.038763791 ;
	setAttr ".uvtk[241]" -type "float2" 0.41082242 -0.28114212 ;
	setAttr ".uvtk[242]" -type "float2" 0.42232987 -0.28626931 ;
	setAttr ".uvtk[243]" -type "float2" 0.4457716 -0.26104349 ;
	setAttr ".uvtk[244]" -type "float2" 0.41790631 -0.26843566 ;
	setAttr ".uvtk[245]" -type "float2" 0.44152132 -0.28565741 ;
	setAttr ".uvtk[246]" -type "float2" 0.46698228 -0.27219146 ;
	setAttr ".uvtk[248]" -type "float2" 0.45310751 -0.24219257 ;
	setAttr ".uvtk[249]" -type "float2" 0.43363503 -0.25194955 ;
	setAttr ".uvtk[250]" -type "float2" 0.47883371 -0.24129099 ;
	setAttr ".uvtk[260]" -type "float2" 1.9596355 -0.10221902 ;
	setAttr ".uvtk[261]" -type "float2" 1.9695717 -0.11029032 ;
	setAttr ".uvtk[262]" -type "float2" 1.8906889 -0.048015654 ;
	setAttr ".uvtk[263]" -type "float2" 1.8969841 0.016958922 ;
	setAttr ".uvtk[264]" -type "float2" 1.8275312 0.12772894 ;
	setAttr ".uvtk[265]" -type "float2" 1.8140969 0.12432212 ;
	setAttr ".uvtk[266]" -type "float2" 1.7476104 0.14963397 ;
	setAttr ".uvtk[267]" -type "float2" 1.842543 0.11933887 ;
	setAttr ".uvtk[268]" -type "float2" 1.8902023 0.10014769 ;
	setAttr ".uvtk[269]" -type "float2" 1.6269729 0.1931003 ;
	setAttr ".uvtk[270]" -type "float2" 2.2256556 0.040013045 ;
	setAttr ".uvtk[271]" -type "float2" 2.005074 0.060381293 ;
	setAttr ".uvtk[281]" -type "float2" 1.81517 0.21877912 ;
	setAttr ".uvtk[282]" -type "float2" 1.8038818 0.21419993 ;
	setAttr ".uvtk[283]" -type "float2" 1.7381425 0.23898584 ;
	setAttr ".uvtk[284]" -type "float2" 1.827889 0.21100131 ;
	setAttr ".uvtk[285]" -type "float2" 1.8716258 0.19503906 ;
	setAttr ".uvtk[286]" -type "float2" 1.6441474 0.28230137 ;
	setAttr ".uvtk[287]" -type "float2" 2.1524563 0.14812031 ;
	setAttr ".uvtk[288]" -type "float2" 1.9741392 0.16025475 ;
	setAttr ".uvtk[289]" -type "float2" 1.8000261 0.29112652 ;
	setAttr ".uvtk[290]" -type "float2" 1.7879103 0.29954171 ;
	setAttr ".uvtk[291]" -type "float2" 1.7393936 0.32295871 ;
	setAttr ".uvtk[292]" -type "float2" 1.8088861 0.28166753 ;
	setAttr ".uvtk[293]" -type "float2" 1.8413961 0.27028051 ;
	setAttr ".uvtk[294]" -type "float2" 1.672649 0.35797322 ;
	setAttr ".uvtk[295]" -type "float2" 2.0027218 0.26270786 ;
	setAttr ".uvtk[296]" -type "float2" 1.892698 0.25834173 ;
	setAttr ".uvtk[297]" -type "float2" 1.7855928 0.35640609 ;
	setAttr ".uvtk[298]" -type "float2" 1.7664503 0.36473584 ;
	setAttr ".uvtk[299]" -type "float2" 1.7308154 0.38003564 ;
	setAttr ".uvtk[300]" -type "float2" 1.8011613 0.3478533 ;
	setAttr ".uvtk[301]" -type "float2" 1.8249588 0.33899426 ;
	setAttr ".uvtk[302]" -type "float2" 1.6864271 0.40263879 ;
	setAttr ".uvtk[303]" -type "float2" 1.9099979 0.34017855 ;
	setAttr ".uvtk[304]" -type "float2" 1.8544469 0.33219284 ;
	setAttr ".uvtk[305]" -type "float2" 1.7569265 0.43313688 ;
	setAttr ".uvtk[306]" -type "float2" 1.7438796 0.43541086 ;
	setAttr ".uvtk[307]" -type "float2" 1.7223697 0.43983257 ;
	setAttr ".uvtk[308]" -type "float2" 1.7669888 0.43026358 ;
	setAttr ".uvtk[309]" -type "float2" 1.7763073 0.42497653 ;
	setAttr ".uvtk[310]" -type "float2" 1.7005165 0.44915521 ;
	setAttr ".uvtk[311]" -type "float2" 1.8068227 0.4208824 ;
	setAttr ".uvtk[312]" -type "float2" 1.7855742 0.41947365 ;
	setAttr ".uvtk[313]" -type "float2" 1.8748779 -0.25615931 ;
	setAttr ".uvtk[314]" -type "float2" 1.8853948 -0.25784719 ;
	setAttr ".uvtk[315]" -type "float2" 1.8953042 -0.26062536 ;
	setAttr ".uvtk[316]" -type "float2" 1.9851975 -0.26807582 ;
	setAttr ".uvtk[317]" -type "float2" 1.9670873 -0.26981223 ;
	setAttr ".uvtk[318]" -type "float2" 1.9088545 -0.26128685 ;
	setAttr ".uvtk[319]" -type "float2" 1.9255784 -0.26303637 ;
	setAttr ".uvtk[320]" -type "float2" 1.9451084 -0.26590407 ;
	setAttr ".uvtk[321]" -type "float2" 1.8634322 -0.27719545 ;
	setAttr ".uvtk[322]" -type "float2" 1.8767204 -0.27842319 ;
	setAttr ".uvtk[323]" -type "float2" 1.8786459 -0.27662373 ;
	setAttr ".uvtk[324]" -type "float2" 2.0496907 -0.30029902 ;
	setAttr ".uvtk[325]" -type "float2" 1.9911683 -0.29888555 ;
	setAttr ".uvtk[326]" -type "float2" 1.8834226 -0.27725196 ;
	setAttr ".uvtk[327]" -type "float2" 1.9047592 -0.28186786 ;
	setAttr ".uvtk[328]" -type "float2" 1.9408631 -0.29047108 ;
	setAttr ".uvtk[329]" -type "float2" 1.8650842 -0.3034873 ;
	setAttr ".uvtk[330]" -type "float2" 1.8770931 -0.29538906 ;
	setAttr ".uvtk[331]" -type "float2" 1.8685913 -0.28854522 ;
	setAttr ".uvtk[332]" -type "float2" 2.0772834 -0.34269282 ;
	setAttr ".uvtk[333]" -type "float2" 1.9990942 -0.325948 ;
	setAttr ".uvtk[334]" -type "float2" 1.8641827 -0.2890971 ;
	setAttr ".uvtk[335]" -type "float2" 1.8857849 -0.2961086 ;
	setAttr ".uvtk[336]" -type "float2" 1.9299505 -0.31015861 ;
	setAttr ".uvtk[337]" -type "float2" 1.8717721 -0.32343709 ;
	setAttr ".uvtk[338]" -type "float2" 1.8796577 -0.30782378 ;
	setAttr ".uvtk[339]" -type "float2" 1.8644967 -0.29817569 ;
	setAttr ".uvtk[340]" -type "float2" 2.0732965 -0.3705115 ;
	setAttr ".uvtk[341]" -type "float2" 1.9943573 -0.34465817 ;
	setAttr ".uvtk[342]" -type "float2" 1.8549929 -0.29764271 ;
	setAttr ".uvtk[343]" -type "float2" 1.8750944 -0.30559611 ;
	setAttr ".uvtk[344]" -type "float2" 1.9203327 -0.32179868 ;
	setAttr ".uvtk[345]" -type "float2" 1.8807404 -0.34270072 ;
	setAttr ".uvtk[346]" -type "float2" 1.8819304 -0.32046196 ;
	setAttr ".uvtk[347]" -type "float2" 1.8645442 -0.3094871 ;
	setAttr ".uvtk[348]" -type "float2" 2.0487404 -0.3929067 ;
	setAttr ".uvtk[349]" -type "float2" 1.9783864 -0.35950831 ;
	setAttr ".uvtk[350]" -type "float2" 1.852561 -0.30701458 ;
	setAttr ".uvtk[351]" -type "float2" 1.8700778 -0.31513929 ;
	setAttr ".uvtk[352]" -type "float2" 1.9107828 -0.33113444 ;
	setAttr ".uvtk[353]" -type "float2" 1.8927639 -0.36008561 ;
	setAttr ".uvtk[354]" -type "float2" 1.8852608 -0.3349165 ;
	setAttr ".uvtk[355]" -type "float2" 1.8693624 -0.32300559 ;
	setAttr ".uvtk[356]" -type "float2" 1.9932358 -0.40187606 ;
	setAttr ".uvtk[357]" -type "float2" 1.9505327 -0.36682415 ;
	setAttr ".uvtk[358]" -type "float2" 1.8590214 -0.31883454 ;
	setAttr ".uvtk[359]" -type "float2" 1.8720632 -0.32616469 ;
	setAttr ".uvtk[360]" -type "float2" 1.9050972 -0.34085301 ;
	setAttr ".uvtk[385]" -type "float2" 0.38516793 -0.39284194 ;
	setAttr ".uvtk[386]" -type "float2" 0.35748562 -0.37554261 ;
	setAttr ".uvtk[387]" -type "float2" 0.34625283 -0.35019264 ;
	setAttr ".uvtk[388]" -type "float2" 0.4136571 -0.40485451 ;
	setAttr ".uvtk[389]" -type "float2" 0.4482272 -0.41012022 ;
	setAttr ".uvtk[390]" -type "float2" 0.33845952 -0.32535136 ;
	setAttr ".uvtk[391]" -type "float2" 0.33152482 -0.30340981 ;
	setAttr ".uvtk[392]" -type "float2" 0.31942591 -0.29195452 ;
	setAttr ".uvtk[393]" -type "float2" 0.38401076 -0.37822604 ;
	setAttr ".uvtk[394]" -type "float2" 0.35885796 -0.3597548 ;
	setAttr ".uvtk[395]" -type "float2" 0.35484865 -0.33539283 ;
	setAttr ".uvtk[396]" -type "float2" 0.41890171 -0.38722026 ;
	setAttr ".uvtk[397]" -type "float2" 0.46601143 -0.39104855 ;
	setAttr ".uvtk[398]" -type "float2" 0.35747138 -0.30596328 ;
	setAttr ".uvtk[399]" -type "float2" 0.35507479 -0.28022432 ;
	setAttr ".uvtk[400]" -type "float2" 0.33771303 -0.25841224 ;
	setAttr ".uvtk[401]" -type "float2" 0.38662419 -0.36109421 ;
	setAttr ".uvtk[402]" -type "float2" 0.36282298 -0.34282896 ;
	setAttr ".uvtk[403]" -type "float2" 0.3643795 -0.31883276 ;
	setAttr ".uvtk[404]" -type "float2" 0.42422923 -0.36639056 ;
	setAttr ".uvtk[405]" -type "float2" 0.48055837 -0.36610067 ;
	setAttr ".uvtk[406]" -type "float2" 0.37689695 -0.28724575 ;
	setAttr ".uvtk[407]" -type "float2" 0.38021329 -0.25747156 ;
	setAttr ".uvtk[408]" -type "float2" 0.36736354 -0.2279222 ;
	setAttr ".uvtk[409]" -type "float2" 0.39330414 -0.33884212 ;
	setAttr ".uvtk[410]" -type "float2" 0.37199482 -0.322411 ;
	setAttr ".uvtk[411]" -type "float2" 0.37769696 -0.29982793 ;
	setAttr ".uvtk[412]" -type "float2" 0.42883483 -0.34050021 ;
	setAttr ".uvtk[413]" -type "float2" 0.48831925 -0.33417201 ;
	setAttr ".uvtk[414]" -type "float2" 0.39857635 -0.27069771 ;
	setAttr ".uvtk[415]" -type "float2" 0.40948948 -0.23821163 ;
	setAttr ".uvtk[416]" -type "float2" 0.40765342 -0.20975882 ;
	setAttr ".uvtk[417]" -type "float2" 0.40494367 -0.312644 ;
	setAttr ".uvtk[418]" -type "float2" 0.38661918 -0.30247778 ;
	setAttr ".uvtk[419]" -type "float2" 0.39624158 -0.28238952 ;
	setAttr ".uvtk[420]" -type "float2" 0.43519869 -0.31418777 ;
	setAttr ".uvtk[421]" -type "float2" 0.48378226 -0.30090517 ;
	setAttr ".uvtk[422]" -type "float2" 0.41679272 -0.25723648 ;
	setAttr ".uvtk[423]" -type "float2" 0.43665573 -0.23307931 ;
	setAttr ".uvtk[424]" -type "float2" 0.44721171 -0.20933101 ;
	setAttr ".uvtk[438]" -type "float2" 1.8832542 -0.13193479 ;
	setAttr ".uvtk[439]" -type "float2" 1.8817939 -0.10854188 ;
	setAttr ".uvtk[440]" -type "float2" 1.8903143 -0.10786954 ;
	setAttr ".uvtk[446]" -type "float2" 1.958496 -0.16882494 ;
	setAttr ".uvtk[447]" -type "float2" 1.9650061 -0.17506781 ;
	setAttr ".uvtk[448]" -type "float2" 1.9126146 -0.12615529 ;
	setAttr ".uvtk[470]" -type "float2" 1.9756442 -0.24402243 ;
	setAttr ".uvtk[560]" -type "float2" 1.9775995 -0.24613386 ;
	setAttr ".uvtk[561]" -type "float2" 1.9606394 -0.22933674 ;
	setAttr ".uvtk[562]" -type "float2" 1.9523259 -0.22292465 ;
	setAttr ".uvtk[569]" -type "float2" 1.9481754 -0.22304386 ;
	setAttr ".uvtk[570]" -type "float2" 1.947858 -0.23137999 ;
	setAttr ".uvtk[593]" -type "float2" 1.8836098 -0.13541678 ;
	setAttr ".uvtk[594]" -type "float2" 1.9480317 -0.23263186 ;
	setAttr ".uvtk[598]" -type "float2" 1.8466518 -0.054773033 ;
	setAttr ".uvtk[599]" -type "float2" 1.986986 -0.055817872 ;
	setAttr ".uvtk[600]" -type "float2" 2.199693 -0.077300817 ;
	setAttr ".uvtk[601]" -type "float2" 2.4760349 -0.11398152 ;
	setAttr ".uvtk[614]" -type "float2" 0.53064781 -0.28102803 ;
	setAttr ".uvtk[615]" -type "float2" 0.54591638 -0.32791623 ;
	setAttr ".uvtk[616]" -type "float2" 0.53368038 -0.37128663 ;
	setAttr ".uvtk[617]" -type "float2" 0.50610429 -0.40104967 ;
	setAttr ".uvtk[619]" -type "float2" 0.4704186 -0.41919547 ;
	setAttr ".uvtk[634]" -type "float2" 1.8829503 -0.3856779 ;
	setAttr ".uvtk[635]" -type "float2" 1.8510208 -0.36833894 ;
	setAttr ".uvtk[636]" -type "float2" 1.8325944 -0.33989286 ;
	setAttr ".uvtk[637]" -type "float2" 1.8259501 -0.30774188 ;
	setAttr ".uvtk[638]" -type "float2" 1.8369977 -0.2681787 ;
	setAttr ".uvtk[639]" -type "float2" 1.7420368 0.50233799 ;
	setAttr ".uvtk[640]" -type "float2" 1.8673451 -0.25113451 ;
	setAttr ".uvtk[641]" -type "float2" 1.7403564 0.51428068 ;
	setAttr ".uvtk[642]" -type "float2" 1.7397525 0.50890964 ;
	setAttr ".uvtk[643]" -type "float2" 1.7417517 0.50403577 ;
	setAttr ".uvtk[644]" -type "float2" 1.7245162 0.51911616 ;
	setAttr ".uvtk[645]" -type "float2" 1.7144716 0.52557272 ;
	setAttr ".uvtk[646]" -type "float2" 1.7470257 0.51862711 ;
	setAttr ".uvtk[647]" -type "float2" 1.8273978 0.42684251 ;
	setAttr ".uvtk[648]" -type "float2" 1.7386867 0.50618368 ;
	setAttr ".uvtk[649]" -type "float2" 1.732486 0.51270336 ;
	setAttr ".uvtk[650]" -type "float2" 1.9612629 0.35429507 ;
	setAttr ".uvtk[651]" -type "float2" 2.1008134 0.27722001 ;
	setAttr ".uvtk[652]" -type "float2" 2.311476 0.15401068 ;
	setAttr ".uvtk[653]" -type "float2" 2.4421778 0.036014736 ;
	setAttr ".uvtk[654]" -type "float2" 2.4814472 -0.097770631 ;
	setAttr ".uvtk[655]" -type "float2" 2.5112751 -0.10665226 ;
createNode polyMapCut -n "polyMapCut8";
	rename -uid "26DC2746-4F10-9C4D-42F9-C3861E8B060B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 16 "e[33]" "e[95]" "e[279]" "e[295]" "e[311]" "e[326:328]" "e[331]" "e[333]" "e[335]" "e[337]" "e[339:340]" "e[354]" "e[370]" "e[386]" "e[402]" "e[412]";
createNode polyTweakUV -n "polyTweakUV4";
	rename -uid "06E17A04-4AF1-F984-2ED0-BBA79923E8D5";
	setAttr ".uopa" yes;
	setAttr -s 137 ".uvtk";
	setAttr ".uvtk[22]" -type "float2" 2.4474907 -1.1884817 ;
	setAttr ".uvtk[23]" -type "float2" 2.4337363 -1.1537946 ;
	setAttr ".uvtk[25]" -type "float2" 2.4348693 -1.1342515 ;
	setAttr ".uvtk[29]" -type "float2" 1.6648982 -1.0389057 ;
	setAttr ".uvtk[30]" -type "float2" 2.4520383 -1.1724122 ;
	setAttr ".uvtk[31]" -type "float2" 2.6444814 -1.3345528 ;
	setAttr ".uvtk[32]" -type "float2" 2.6365499 -1.32354 ;
	setAttr ".uvtk[33]" -type "float2" 2.6123219 -1.3172085 ;
	setAttr ".uvtk[34]" -type "float2" 2.6349235 -1.3389536 ;
	setAttr ".uvtk[35]" -type "float2" 2.5937738 -1.3268362 ;
	setAttr ".uvtk[36]" -type "float2" 2.6177211 -1.3384414 ;
	setAttr ".uvtk[38]" -type "float2" 1.7785308 -1.064468 ;
	setAttr ".uvtk[39]" -type "float2" 2.6210241 -1.3092871 ;
	setAttr ".uvtk[40]" -type "float2" 2.6034968 -1.3009444 ;
	setAttr ".uvtk[41]" -type "float2" 2.5817301 -1.3001901 ;
	setAttr ".uvtk[43]" -type "float2" 1.7877969 -1.1369169 ;
	setAttr ".uvtk[44]" -type "float2" 2.0113468 -1.035919 ;
	setAttr ".uvtk[45]" -type "float2" 1.9989476 -1.1067076 ;
	setAttr ".uvtk[46]" -type "float2" 2.1749129 -1.0333519 ;
	setAttr ".uvtk[47]" -type "float2" 2.1514287 -1.1108863 ;
	setAttr ".uvtk[48]" -type "float2" 2.2633421 -1.1334213 ;
	setAttr ".uvtk[49]" -type "float2" 2.3106527 -1.0565144 ;
	setAttr ".uvtk[50]" -type "float2" 2.3571227 -1.1816797 ;
	setAttr ".uvtk[51]" -type "float2" 2.4324675 -1.1176469 ;
	setAttr ".uvtk[53]" -type "float2" 2.3668797 -1.1891032 ;
	setAttr ".uvtk[64]" -type "float2" 1.6676558 -0.88877243 ;
	setAttr ".uvtk[65]" -type "float2" 2.4641981 -1.0268738 ;
	setAttr ".uvtk[66]" -type "float2" 2.4361143 -1.143007 ;
	setAttr ".uvtk[67]" -type "float2" 1.7359062 -0.92483085 ;
	setAttr ".uvtk[68]" -type "float2" 2.4519525 -1.0032493 ;
	setAttr ".uvtk[69]" -type "float2" 2.3573997 -0.95379609 ;
	setAttr ".uvtk[70]" -type "float2" 2.0658171 -0.93195397 ;
	setAttr ".uvtk[71]" -type "float2" 1.8623136 -0.94693583 ;
	setAttr ".uvtk[72]" -type "float2" 2.2336125 -0.92670113 ;
	setAttr ".uvtk[153]" -type "float2" 1.9055648 -0.77968109 ;
	setAttr ".uvtk[154]" -type "float2" 2.4974005 -0.90259409 ;
	setAttr ".uvtk[155]" -type "float2" 1.9429808 -0.81762618 ;
	setAttr ".uvtk[156]" -type "float2" 2.474508 -0.90567303 ;
	setAttr ".uvtk[157]" -type "float2" 2.3868239 -0.89145565 ;
	setAttr ".uvtk[158]" -type "float2" 2.1465027 -0.86247599 ;
	setAttr ".uvtk[159]" -type "float2" 2.0122349 -0.84824562 ;
	setAttr ".uvtk[160]" -type "float2" 2.2671089 -0.87722605 ;
	setAttr ".uvtk[161]" -type "float2" 2.1930459 -0.67743266 ;
	setAttr ".uvtk[162]" -type "float2" 2.5415778 -0.76766747 ;
	setAttr ".uvtk[163]" -type "float2" 2.2000134 -0.71255136 ;
	setAttr ".uvtk[164]" -type "float2" 2.5131752 -0.78470027 ;
	setAttr ".uvtk[165]" -type "float2" 2.4337187 -0.78805226 ;
	setAttr ".uvtk[166]" -type "float2" 2.2762659 -0.76444924 ;
	setAttr ".uvtk[167]" -type "float2" 2.2134142 -0.74351215 ;
	setAttr ".uvtk[168]" -type "float2" 2.3435705 -0.7825886 ;
	setAttr ".uvtk[169]" -type "float2" 2.4004002 -0.62038285 ;
	setAttr ".uvtk[170]" -type "float2" 2.5423305 -0.6609633 ;
	setAttr ".uvtk[171]" -type "float2" 2.3951635 -0.63735384 ;
	setAttr ".uvtk[172]" -type "float2" 2.5238707 -0.67343622 ;
	setAttr ".uvtk[173]" -type "float2" 2.4643273 -0.68107539 ;
	setAttr ".uvtk[174]" -type "float2" 2.4084535 -0.67069918 ;
	setAttr ".uvtk[175]" -type "float2" 2.3893292 -0.65555698 ;
	setAttr ".uvtk[176]" -type "float2" 2.4195042 -0.68020815 ;
	setAttr ".uvtk[177]" -type "float2" 2.6894441 -1.4190195 ;
	setAttr ".uvtk[178]" -type "float2" 2.6657619 -1.4339457 ;
	setAttr ".uvtk[179]" -type "float2" 2.6979709 -1.3971834 ;
	setAttr ".uvtk[180]" -type "float2" 2.6408794 -1.4443151 ;
	setAttr ".uvtk[181]" -type "float2" 2.6098835 -1.4488485 ;
	setAttr ".uvtk[182]" -type "float2" 2.7090306 -1.3569585 ;
	setAttr ".uvtk[183]" -type "float2" 2.703444 -1.3758068 ;
	setAttr ".uvtk[184]" -type "float2" 2.5897095 -1.4566504 ;
	setAttr ".uvtk[185]" -type "float2" 2.6894732 -1.40504 ;
	setAttr ".uvtk[186]" -type "float2" 2.6682141 -1.4209967 ;
	setAttr ".uvtk[187]" -type "float2" 2.6907382 -1.3840371 ;
	setAttr ".uvtk[188]" -type "float2" 2.6373541 -1.4287807 ;
	setAttr ".uvtk[189]" -type "float2" 2.5944223 -1.4320678 ;
	setAttr ".uvtk[190]" -type "float2" 2.687315 -1.3366001 ;
	setAttr ".uvtk[191]" -type "float2" 2.6861224 -1.3587072 ;
	setAttr ".uvtk[192]" -type "float2" 2.5577481 -1.4406481 ;
	setAttr ".uvtk[193]" -type "float2" 2.6869819 -1.3898743 ;
	setAttr ".uvtk[194]" -type "float2" 2.6670246 -1.4056709 ;
	setAttr ".uvtk[195]" -type "float2" 2.682678 -1.3691691 ;
	setAttr ".uvtk[196]" -type "float2" 2.6335409 -1.4102769 ;
	setAttr ".uvtk[197]" -type "float2" 2.5818174 -1.4100085 ;
	setAttr ".uvtk[198]" -type "float2" 2.6646888 -1.3164045 ;
	setAttr ".uvtk[199]" -type "float2" 2.6687224 -1.3419819 ;
	setAttr ".uvtk[200]" -type "float2" 2.5331466 -1.4144284 ;
	setAttr ".uvtk[201]" -type "float2" 2.6795197 -1.3715081 ;
	setAttr ".uvtk[202]" -type "float2" 2.6617632 -1.3857309 ;
	setAttr ".uvtk[203]" -type "float2" 2.6712856 -1.3519988 ;
	setAttr ".uvtk[204]" -type "float2" 2.6299438 -1.3871982 ;
	setAttr ".uvtk[205]" -type "float2" 2.5751162 -1.3817242 ;
	setAttr ".uvtk[206]" -type "float2" 2.6390607 -1.29901 ;
	setAttr ".uvtk[207]" -type "float2" 2.6497796 -1.3269297 ;
	setAttr ".uvtk[208]" -type "float2" 2.5222387 -1.3762813 ;
	setAttr ".uvtk[209]" -type "float2" 2.6666207 -1.353544 ;
	setAttr ".uvtk[210]" -type "float2" 2.651376 -1.3623555 ;
	setAttr ".uvtk[211]" -type "float2" 2.6553116 -1.3361742 ;
	setAttr ".uvtk[212]" -type "float2" 2.6242187 -1.3637115 ;
	setAttr ".uvtk[213]" -type "float2" 2.5791125 -1.3522496 ;
	setAttr ".uvtk[214]" -type "float2" 2.6161213 -1.2937574 ;
	setAttr ".uvtk[215]" -type "float2" 2.6344354 -1.3145214 ;
	setAttr ".uvtk[216]" -type "float2" 2.5357776 -1.335078 ;
	setAttr ".uvtk[430]" -type "float2" 1.8189452 -1.2256001 ;
	setAttr ".uvtk[431]" -type "float2" 1.9675696 -1.1989075 ;
	setAttr ".uvtk[432]" -type "float2" 2.0773151 -1.2027798 ;
	setAttr ".uvtk[433]" -type "float2" 2.1572175 -1.2207347 ;
	setAttr ".uvtk[434]" -type "float2" 2.2222824 -1.2584949 ;
	setAttr ".uvtk[435]" -type "float2" 2.2287099 -1.2644029 ;
	setAttr ".uvtk[572]" -type "float2" 2.0129786 -1.3463995 ;
	setAttr ".uvtk[576]" -type "float2" 2.0110519 -1.3443891 ;
	setAttr ".uvtk[577]" -type "float2" 1.9899838 -1.3313819 ;
	setAttr ".uvtk[578]" -type "float2" 1.9631579 -1.3251178 ;
	setAttr ".uvtk[579]" -type "float2" 1.9264278 -1.3240094 ;
	setAttr ".uvtk[580]" -type "float2" 1.8782967 -1.333416 ;
	setAttr ".uvtk[591]" -type "float2" 1.803117 -1.2294711 ;
	setAttr ".uvtk[592]" -type "float2" 1.8733418 -1.3348064 ;
	setAttr ".uvtk[597]" -type "float2" 1.7649214 -1.1411072 ;
	setAttr ".uvtk[603]" -type "float2" 2.4472983 -1.1960161 ;
	setAttr ".uvtk[608]" -type "float2" 2.4552352 -1.1828119 ;
	setAttr ".uvtk[609]" -type "float2" 1.7549775 -1.0801156 ;
	setAttr ".uvtk[610]" -type "float2" 1.6546901 -1.0507067 ;
	setAttr ".uvtk[656]" -type "float2" 2.6076727 -1.2733461 ;
	setAttr ".uvtk[657]" -type "float2" 2.6413593 -1.274572 ;
	setAttr ".uvtk[658]" -type "float2" 2.6763971 -1.2910366 ;
	setAttr ".uvtk[659]" -type "float2" 2.7027369 -1.3178872 ;
	setAttr ".uvtk[660]" -type "float2" 2.5048892 -0.56691635 ;
	setAttr ".uvtk[661]" -type "float2" 2.7196741 -1.3471351 ;
	setAttr ".uvtk[662]" -type "float2" 2.4976459 -0.56221467 ;
	setAttr ".uvtk[663]" -type "float2" 2.5205874 -0.56444633 ;
	setAttr ".uvtk[664]" -type "float2" 2.5030355 -0.54413623 ;
	setAttr ".uvtk[665]" -type "float2" 2.4963202 -0.55387801 ;
	setAttr ".uvtk[666]" -type "float2" 2.5360289 -0.55741078 ;
	setAttr ".uvtk[667]" -type "float2" 2.5439506 -0.55001092 ;
	setAttr ".uvtk[668]" -type "float2" 2.507504 -0.53509092 ;
	setAttr ".uvtk[669]" -type "float2" 2.5505197 -0.54260975 ;
	setAttr ".uvtk[670]" -type "float2" 2.5567117 -0.64783376 ;
	setAttr ".uvtk[671]" -type "float2" 2.5666382 -0.74643713 ;
	setAttr ".uvtk[672]" -type "float2" 2.5186841 -0.89393508 ;
	setAttr ".uvtk[673]" -type "float2" 2.4792924 -1.0412346 ;
	setAttr ".uvtk[674]" -type "float2" 1.5330468 -1.0020944 ;
	setAttr ".uvtk[675]" -type "float2" 1.5136573 -1.0189484 ;
createNode polyMapCut -n "polyMapCut9";
	rename -uid "3B41F829-4D6C-4E67-ACE8-E3A3E2E321B0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 18 "e[32]" "e[86]" "e[118]" "e[134]" "e[150]" "e[166]" "e[174]" "e[176]" "e[179]" "e[181:183]" "e[185]" "e[187:188]" "e[194]" "e[210]" "e[226]" "e[242]" "e[258]" "e[272]";
createNode polyTweakUV -n "polyTweakUV5";
	rename -uid "880B13FB-4283-8DA6-D692-18A5D30397B5";
	setAttr ".uopa" yes;
	setAttr -s 698 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" 0.06693317 -0.088040784 0.061572243
		 -0.087680176 -1.51939678 -0.49398333 0.056130782 -0.075824335 0.11827739 -0.095830068
		 0.10841186 -0.087777808 0.14946759 -0.11130786 0.13814348 -0.10534056 -1.3828938
		 -0.48938498 0.090965003 -0.044878438 0.30152988 -0.39794579 0.32362658 -0.38891977
		 0.3048321 -0.39360437 0.2815249 -0.4049297 0.28967053 -0.38701016 0.26729515 -0.4061814
		 -1.20416164 -0.47321343 -0.2161088 -0.25213981 0.34080005 -0.38145667 0.33822531
		 -0.37802643 0.31964213 -0.37878662 -2.40505028 -0.60057837 -2.71097302 0.80830616
		 -2.4950254 0.72615021 -0.02147007 -0.21102124 -2.34125829 0.6754635 0.13023591 -0.1771892
		 -1.14309144 -0.21365765 -1.050209641 -0.14783418 -1.59175861 0.42022046 -2.72209549
		 0.7774294 -2.095811367 0.88331497 -2.096201658 0.86405653 -2.059516191 0.86935431
		 -2.081125259 0.89736778 -2.041667223 0.89403087 -2.062864542 0.90452033 -0.98623574
		 -0.096050642 -1.74363148 0.47976837 -2.084995508 0.84427714 -2.061840296 0.83990854
		 -2.025832415 0.85484248 -1.0073935986 -0.024951236 -1.73758209 0.64726925 -1.93206584
		 0.46233156 -1.90497267 0.6244328 -2.071295977 0.47752237 -2.033267975 0.64834702
		 -2.1378696 0.69682938 -2.1986053 0.53006768 -2.24437356 0.78455138 -2.34215331 0.64237452
		 0.14799875 -0.17526132 -2.25737286 0.79758185 0.15916532 -0.13433918 0.14977658 -0.13209558
		 0.058824666 -0.06576255 0.11102416 -0.080551669 0.062389504 -0.040973473 0.14292046
		 -0.096630737 0.14906991 -0.12518355 -0.06027703 -0.20529038 -0.21439406 -0.23432347
		 0.094424665 -0.16685563 -1.55334651 0.088069007 -2.5742085 0.44139016 -2.50184393
		 0.7026875 -1.68162251 0.16629906 -2.43135619 0.39258811 -2.28157687 0.3068248 -2.0037493706
		 0.23788415 -1.83479667 0.23038919 -2.14391971 0.25184244 0.074957147 -0.060844485
		 0.11918545 -0.070470631 0.088584378 -0.042157337 0.14706558 -0.083851025 0.15034351
		 -0.11012655 -0.026715882 -0.18068287 -0.14175345 -0.20025191 0.099965304 -0.14887449
		 0.11579362 -0.055214889 0.13950315 -0.061554465 0.13004984 -0.04413785 0.16048628
		 -0.071028143 0.16108152 -0.091042697 0.060325675 -0.13370785 -0.012338243 -0.14361835
		 0.13975002 -0.11428669 0.15063506 -0.046478793 0.15569383 -0.051350992 0.165847 -0.040896583
		 0.16300079 -0.059610996 0.16320905 -0.075100973 0.11446777 -0.10105188 0.076393217
		 -0.10396118 0.15398109 -0.091415584 0.18991925 -0.025446359 0.18768504 -0.02713472
		 0.20198354 -0.023471769 0.18778242 -0.03046507 0.18968299 -0.038026635 0.17682561
		 -0.051538389 0.16245461 -0.052720468 0.18986207 -0.046327218 0.36210132 -0.3847844
		 0.3650955 -0.38932413 0.36066759 -0.37976378 0.37065372 -0.38966173 0.3258203 -0.3572765
		 0.35150456 -0.36638266 0.35837862 -0.37252444 0.34058344 -0.36126071 0.3471165 -0.39954227
		 0.34527764 -0.40899402 0.36143667 -0.38862509 0.36174589 -0.41363782 0.30093083 -0.35827976
		 0.36556214 -0.36950594 0.37318593 -0.37781376 0.34083778 -0.36349171 0.33093154 -0.40591437
		 0.32071713 -0.42154381 0.35948724 -0.39159948 0.33864421 -0.43572754 0.28300723 -0.3623361
		 0.37587595 -0.37049001 0.38282761 -0.37910539 0.3422218 -0.36591846 0.31951097 -0.40735871
		 0.3029021 -0.42576343 0.35528627 -0.39216644 0.31673786 -0.44476533 0.27450663 -0.36760503
		 0.3784748 -0.3708052 0.38443735 -0.37897295 0.34208226 -0.36766583 0.3104724 -0.40643916
		 0.2885583 -0.42512015 0.34767687 -0.39152521 0.29497126 -0.44445151 0.27229005 -0.37449473
		 0.37365213 -0.37133163 0.37859637 -0.37845105 0.33924463 -0.36981577 0.30382419 -0.40306836
		 0.27961463 -0.41815993 0.33622235 -0.39015704 0.27704307 -0.43046811 0.27843088 -0.3819837
		 0.35897994 -0.37358028 0.36270699 -0.37865454 0.33026636 -0.37316042 -1.7942344 -0.13505433
		 -2.56001639 0.17594005 -1.87735999 -0.051686656 -2.44475555 0.19089545 -2.31221271
		 0.1798737 -2.0816257 0.10044454 -1.96979201 0.035722297 -2.18400002 0.15108733 -2.04706502
		 -0.29179919 -2.50773287 -0.074852288 -2.08924675 -0.2182342 -2.43527818 -0.035694975
		 -2.34329247 -0.015899062 -2.19121623 -0.073752731 -2.1298492 -0.13874501 -2.25284457
		 -0.025712252 -2.23588753 -0.31560525 -2.43111229 -0.22397554 -2.24897861 -0.28333828
		 -2.40216756 -0.20373844 -2.34757137 -0.19191667 -2.28925133 -0.2139587 -2.26246834
		 -0.2462558 -2.30494857 -0.19517824 -2.21228528 0.93666077 -2.18639207 0.97463745
		 -2.22179222 0.89401048 -2.16090131 1.0044602156 -2.13187075 1.025937438 -2.22751355
		 0.82042068 -2.22814202 0.85352397 -2.11910939 1.045771718 -2.19206834 0.92648512
		 -2.16769719 0.96529448 -2.20253229 0.88502949 -2.1365757 0.99294978 -2.10135913 1.01516211
		 -2.19937301 0.80269176 -2.20342636 0.84017819 -2.076651812 1.042101026 -2.1714983
		 0.91692525 -2.14730668 0.95517212 -2.18216014 0.87602288 -2.1131804 0.97846442 -2.071779251
		 0.99733227 -2.16635442 0.79004437 -2.1770072 0.83074754 -2.035081625 1.022648931
		 -2.14768624 0.9057197 -2.1248765 0.94046724 -2.15707159 0.86756581 -2.092350721 0.95742285
		 -2.047023773 0.96897089 -2.1259203 0.78824168 -2.14631486 0.82862967 -2.0013380051
		 0.98116273 -2.12410283 0.8953377 -2.10185599 0.92037922 -2.12724757 0.86378807 -2.074796438
		 0.93466979 -2.036111832 0.93259126 -2.088388443 0.80667961 -2.11621642 0.83097059
		 -1.99325407 0.92278284 -1.5852294 -0.39717114 -1.52335262 -0.52282852 -1.70352817
		 -0.46999317 -1.66180134 -0.59810895 -1.80053377 -0.49789453 -1.77487564 -0.6323064
		 -1.38224268 -0.51178735 -2.011168242 -0.17813154 -2.0052647591 -0.16865627 -2.018903255
		 -0.16215439 -2.020869732 -0.17897208 -2.0075786114 -0.14982308 -2.028136492 -0.15128879
		 -1.20185208 -0.50162303 -2.034749031 -0.16753213 -2.029700756 -0.17490806 -2.035666227
		 -0.15829049 -0.52567577 0.18800071 -2.19454956 -0.61721057 -0.6240896 0.11727291
		 -2.045288801 -0.60968596 -0.69521618 0.070895888 -1.13211107 -0.22857854 -1.040975809
		 -0.15915406 -0.54095507 -0.051831186 -0.56344664 -0.052195013 -0.55859554 -0.090986043
		 -0.52567393 -0.066525489 -0.58334249 -0.060808599 -0.59178072 -0.085550576 -0.97196674
		 -0.10855479 -0.53379273 -0.11219004 -0.51907825 -0.090672046;
	setAttr ".uvtk[250:499]" -0.57366067 -0.12856451 -0.9975282 -0.024414556 -0.87407315
		 -0.092097409 -0.90958035 -0.013527589 -0.80551541 -0.065704241 -0.84773493 0.01582025
		 -0.80120206 0.054445729 -0.74802423 -0.021974282 -0.75895894 0.11322188 -0.69033504
		 0.054232582 -2.024186611 -0.46330383 -2.039729595 -0.45707914 -1.89534402 -0.49750498
		 -1.89311695 -0.63871843 -1.65432668 -0.77998173 -1.50543094 -0.74400133 -1.36403012
		 -0.74988782 -1.76034236 -0.79374611 -1.8819921 -0.81075484 -1.22994995 -0.77765936
		 -2.16698527 -0.8463071 -2.017509937 -0.81052804 -0.61754715 0.10641866 -0.54566085
		 -0.016398983 -0.47215372 0.024190767 -0.96129405 -0.27584854 -0.61151993 -0.060387865
		 -0.67594337 -0.12400755 -0.89223194 -0.22277603 -0.80756414 -0.19628525 -0.73835993
		 -0.17038095 -1.65094161 -0.96230632 -1.52508664 -0.93453139 -1.40840077 -0.95214128
		 -1.74262023 -0.97186059 -1.84907198 -0.99152732 -1.30161262 -0.99210304 -2.08411026
		 -1.036924243 -1.96656132 -0.99654227 -1.66731358 -1.10451019 -1.58693814 -1.1118561
		 -1.51084542 -1.14215779 -1.73439741 -1.10231066 -1.80945826 -1.11922956 -1.44110918
		 -1.18127882 -1.94823742 -1.193591 -1.87767291 -1.14240408 -1.67538118 -1.22818923
		 -1.6212368 -1.23777139 -1.5760529 -1.26114249 -1.72678113 -1.22582102 -1.78123856
		 -1.23893154 -1.53375626 -1.28821731 -1.86486125 -1.29721558 -1.82749271 -1.25880206
		 -1.68678093 -1.34599245 -1.66251707 -1.34811711 -1.64146662 -1.3543241 -1.70965314
		 -1.34625995 -1.73504353 -1.35053432 -1.62278891 -1.36459875 -1.77544165 -1.37038267
		 -1.75648642 -1.35611677 -2.057995319 -0.24741019 -2.064280033 -0.24153675 -2.071313381
		 -0.23423861 -2.10819554 -0.20135246 -2.10209823 -0.20448492 -2.080790758 -0.22670786
		 -2.08902812 -0.21926229 -2.096171856 -0.21179537 -2.030440331 -0.24786793 -2.043193102
		 -0.23767482 -2.05700469 -0.22880588 -2.11503839 -0.16786192 -2.099954605 -0.179864
		 -2.070931911 -0.21789043 -2.082304239 -0.20581959 -2.091537476 -0.19238006 -2.0095586777
		 -0.23699333 -2.028737068 -0.22919284 -2.045994043 -0.22157155 -2.10195971 -0.13895454
		 -2.089992046 -0.16015662 -2.061957836 -0.20911603 -2.074017525 -0.1946172 -2.082282305
		 -0.17770086 -1.99893796 -0.22373842 -2.02036953 -0.21999295 -2.038228273 -0.21403746
		 -2.083646297 -0.12537315 -2.077658892 -0.14901547 -2.054844856 -0.20188041 -2.066430807
		 -0.18697174 -2.073193073 -0.16950469 -1.99316061 -0.20650123 -2.013703585 -0.20842208
		 -2.030951262 -0.20392053 -2.060304165 -0.11871191 -2.061251163 -0.14295073 -2.047053576
		 -0.19360994 -2.05731082 -0.17955078 -2.061925411 -0.16382314 -1.99459815 -0.1849135
		 -2.0098443031 -0.19291253 -2.024330854 -0.19117008 -2.0311656 -0.12608078 -2.042161465
		 -0.14422236 -2.038150311 -0.18388186 -2.045691967 -0.17248686 -2.048697472 -0.15897413
		 -0.51716101 -0.15291846 -0.45270246 -0.14454044 -0.83274448 -0.36009619 -0.57761502
		 -0.16084301 -0.64334416 -0.18425429 -0.797616 -0.30335626 -0.74960148 -0.25551435
		 -0.70449257 -0.21608174 -0.50995481 -0.28712121 -0.46378356 -0.29558387 -0.70291007
		 -0.41607979 -0.55195963 -0.27701017 -0.60126734 -0.27934107 -0.69300115 -0.37031785
		 -0.67061388 -0.32911649 -0.64581692 -0.29647508 -0.52876902 -0.37304381 -0.51016319
		 -0.37838975 -0.61315632 -0.42762622 -0.54616654 -0.3666729 -0.57544184 -0.36801782
		 -0.61129832 -0.40701005 -0.60205567 -0.38703361 -0.59661877 -0.37540081 -0.5413633
		 0.090362355 -0.49147618 0.080840871 -0.45074958 0.054868512 -0.58456516 0.093821272
		 -0.62403035 0.087995574 -0.41417962 0.028105259 -0.38884914 0.0016583502 -0.36781067
		 -0.009398967 -0.54867363 0.06846337 -0.49933118 0.057101898 -0.45878756 0.032818317
		 -0.59459567 0.06584321 -0.63948566 0.055774383 -0.42310119 -0.0016255975 -0.39706272
		 -0.034169406 -0.36532414 -0.058282405 -0.55671501 0.044635594 -0.50796616 0.033572078
		 -0.4676913 0.0098931789 -0.60159224 0.03626883 -0.64872348 0.01876837 -0.43643194
		 -0.029612631 -0.4130832 -0.069814175 -0.38526875 -0.10801855 -0.56278414 0.015630603
		 -0.51786643 0.0062180758 -0.48071718 -0.016267538 -0.6014834 0.0035673976 -0.64598781
		 -0.022716761 -0.45882446 -0.055200905 -0.44336164 -0.10273042 -0.43249226 -0.14541116
		 -0.56513488 -0.018041551 -0.52823126 -0.020317614 -0.50111234 -0.042473584 -0.59748381
		 -0.02791661 -0.62617797 -0.059692204 -0.48423392 -0.076823801 -0.48712981 -0.11752394
		 -0.49574119 -0.15964374 0.070886567 -0.11147612 0.067093059 -0.11161816 0.10704379
		 -0.11455601 0.12861426 -0.12476319 -1.017137527 0.07661704 -1.76341069 0.83887076
		 -1.88169062 0.81463265 -1.974985 0.83328593 -2.049621344 0.87072158 -2.12231016 0.93790126
		 -2.13066554 0.9479987 0.13056898 -0.17257679 0.13633299 -0.14222929 -1.67218614 -0.26471087
		 -1.75216031 -0.32160002 -1.82060719 -0.34378943 -1.010146976 0.076227464 -0.94691396
		 0.079807498 -0.90210605 0.10178719 -0.86927903 0.13078737 -0.84142733 0.17460835
		 -1.97723603 -0.30897489 -1.98779011 -0.3037042 -1.88800955 -0.33968934 0.061915267
		 -0.15590245 0.33878314 0.00053123385 0.33870831 -0.00055583566 0.33866033 -0.0012786612
		 0.33917215 0.0075934902 0.3382014 -0.0064218864 0.33833522 -0.0054411516 0.33840439
		 -0.0046493635 0.33846113 -0.0039499626 0.33850929 -0.0031545982 0.33851683 -0.0030514225
		 0.07928066 -0.1764645 0.33860782 -0.0019805655 0.33878961 0.0006371513 0.33886898
		 0.0016281381 0.3389262 0.0023750439 -1.0022375584 0.18970275 0.33917952 0.0065430179
		 0.33914402 0.0057552233 0.339102 0.0050626174 -0.94540632 0.22274676 -1.89514089
		 -0.1512807 0.33904845 0.0041381493 0.33897296 0.0030655041 0.41551253 0.0041243378
		 0.41551909 0.004188044 0.41527265 0.0041552559 0.4152106 0.0034466833 0.4154526 0.0035215374
		 0.33878246 -0.0012801513 0.3388353 -0.00053884834 0.41772321 0.0037848605 0.41715845
		 0.0018233079 0.41678026 0.00069527514 0.41791666 0.0084954202 0.41780648 0.0044588996
		 0.41778085 0.0043564951 0.33845565 -0.0054636821 0.33852604 -0.0046603903 0.33858207
		 -0.0039550886 0.41600382 0.0020955279 0.41596752 0.0021454357 0.41569248 0.0019273888
		 0.41603008 0.0014309138 0.41629925 0.001720557 0.41594166 0.0022156425 0.41570657
		 0.0027392991 0.41548496 0.002574306 0.41595182 0.0021906961 0.33873138 -0.0019783005
		 0.4155305 0.004250804;
	setAttr ".uvtk[500:697]" 0.41560602 0.0048537552 0.4153623 0.0048642233 0.33900356
		 0.0016453043 0.33906278 0.0023863092 0.41775435 0.0046565449 0.41734961 0.0077867694
		 0.41745159 0.0067940317 0.3392792 0.005758144 0.33931255 0.0065577999 0.33923653
		 0.0050546899 0.41625765 0.0062711015 0.41659418 0.0066936053 0.41645089 0.0069876369
		 0.41603437 0.0064493567 0.41622648 0.006224554 0.41618663 0.0061801262 0.41562495
		 0.0057943948 0.41586134 0.0056928173 0.33911076 0.0030836239 0.41706756 0.0042372132
		 0.41665059 0.0015568845 0.41779214 0.0044024074 0.41706729 0.0042372979 0.41706714
		 0.0042376295 0.41706693 0.0042377692 0.41706696 0.0042372597 0.41706675 0.0042372439
		 0.41706711 0.0042376705 0.41567191 0.0053261425 0.41706669 0.0042383289 0.41627127
		 0.0061908737 0.41706613 0.0042372318 0.41552025 0.0030911118 0.41706708 0.004238084
		 0.41696057 0.0069221836 0.37275276 0.0010476487 0.37283435 0.0021616595 0.33891305
		 0.00055304915 0.37271085 0.00029174262 0.41529855 0.0029815733 0.37262189 -0.0050270185
		 0.3726244 -0.0039398293 0.33931693 0.0076362863 0.37262741 -0.0031329612 0.41635346
		 0.0010736063 0.37263328 -0.002421699 0.37264916 -0.0015011649 0.33863994 -0.0030459985
		 0.37268153 -0.00041874475 0.37293574 0.0032761469 0.37301537 0.0040330663 0.41545245
		 0.005345894 0.37358221 0.0082735196 0.37346724 0.0074655786 0.41685218 0.0073694028
		 0.37336662 0.0067528263 0.37323961 0.005830504 0.33918861 0.0041484609 0.37309888
		 0.0047453423 0.33904722 0.0042423382 -1.89840269 -0.14940247 -1.8658247 -0.16228467
		 -1.84265113 -0.16386575 0.33903208 0.0040224567 -0.95423913 0.20796901 -0.96555233
		 0.19791067 -0.98118949 0.19044852 0.33918551 0.0074981824 -1.0044552088 0.18996513
		 -1.81908131 -0.15637863 -1.79307246 -0.13687983 0.06071173 -0.15602529 -1.95660937
		 1.080696702 0.33852547 -0.0029361472 0.081091061 -0.16623282 0.079080954 -0.1601786
		 -1.95415354 1.077313662 -1.93067145 1.054385662 -1.90491974 1.041364551 -1.8724643
		 1.035237193 -1.83331108 1.044125438 0.07286711 -0.15661955 0.3387683 0.00042644888
		 0.4173685 0.00012251083 0.33832225 -0.0065527782 0.37373653 0.0093621388 0.33819556
		 -0.0065268502 -0.83854413 0.18084979 -0.94461453 0.2247918 0.12882844 -0.17663449
		 0.078802928 -0.17778975 -1.75071847 0.84299695 -1.8293525 1.045689702 -1.66420841
		 -0.25746304 -1.79067302 -0.13441962 -0.75411284 0.12157284 0.14506513 -0.18079847
		 -1.71913981 0.65109146 -1.57300162 -0.38808835 -2.056975603 -0.58268386 -2.19709945
		 -0.59680194 -2.38638806 -0.6053825 0.1539754 -0.0034929942 -2.72955251 0.82327759
		 -1.15427446 -0.21838763 0.13343471 -0.18241298 -0.01719588 -0.21227092 0.16483119
		 0.0024048835 -2.74404931 0.80525589 -1.72343862 0.50977093 -1.58026874 0.44558698
		 0.14640027 -0.0068914108 0.091410905 -0.045459405 0.051292405 -0.077131495 -0.65211213
		 -0.10076961 -0.69127685 -0.048781097 -0.69720274 0.0099767447 -0.67983985 0.057595722
		 -0.54777682 -0.43592724 -0.64948684 0.093566105 -0.55050719 -0.44096652 -0.54118133
		 -0.43538055 -0.5495348 -0.45590571 -0.5509932 -0.44817057 -0.53424287 -0.43851963
		 -0.5281316 -0.44217733 -0.52041364 -0.4451417 -0.54940069 -0.46365044 -0.61545932
		 -0.44574699 -0.71441674 -0.45905009 -0.86369741 -0.41353682 -1.015832782 -0.33274791
		 -1.14938378 -0.22987774 -0.51585329 0.17388088 -1.98295546 -0.17386226 -1.97225809
		 -0.20218186 -1.97671604 -0.2273369 -1.99138331 -0.24688251 -2.022380352 -0.26044339
		 -1.69775867 -1.4247787 -2.056545019 -0.25223175 -1.71206117 -1.44552946 -1.7098968
		 -1.43744063 -1.70550799 -1.42942584 -1.68068814 -1.44257963 -1.67354846 -1.44912112
		 -1.71690392 -1.45308042 -1.78992248 -1.3859731 -1.69091082 -1.4280051 -1.68500662
		 -1.4351629 -1.89578629 -1.33450043 -2.0072243214 -1.24659014 -2.18489075 -1.090860248
		 -2.30910015 -0.89784288 -2.38479471 -0.6343661 -2.41057062 -0.6220234 -2.056021929
		 0.78511423 -2.10572028 0.75389344 -2.15988421 0.74777853 -2.20439601 0.76697868 -2.36538959
		 -0.33056107 -2.2339685 0.79991877 -2.35789943 -0.33851379 -2.37780881 -0.33277464
		 -2.3523972 -0.36651728 -2.3534863 -0.35155132 -2.38906097 -0.34194741 -2.39853621
		 -0.35167161 -2.34886265 -0.38085404 -2.41131043 -0.3609027 -2.46278572 -0.24291377
		 -2.58867002 -0.11301251 -2.68288231 0.15985925 -2.72947526 0.48027721 -1.38992977
		 0.33678052 -1.37697375 0.3696031 0.22451726 -0.3957693 0.20250851 -0.38038844 0.2039535
		 -0.36708313 0.21981919 -0.35586315 0.26032752 -0.34709615 0.2062887 0.0068953596
		 0.31484157 -0.35239488 0.21401712 0.0094062649 0.21377888 0.0076615177 0.20994832
		 0.0064137541 0.2159614 0.016015705 0.20938823 0.010325726 0.22273701 0.019671077
		 0.21538603 -0.018438812 0.20654841 0.0094084702 0.21002005 0.012834903 0.19104147
		 -0.029699493 0.1652289 -0.025476743 0.13453615 -0.015020173 0.12303466 -0.0078644268
		 0.15399638 -0.0041865539 -0.20958334 -0.25550103;
createNode polySoftEdge -n "polySoftEdge50";
	rename -uid "8D8EBAFF-4F03-6199-C87F-20929050193C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:1101]";
	setAttr ".ix" -type "matrix" 0.8031792029722733 0 0 0 0 0.8031792029722733 0 0 0 0 0.8031792029722733 0
		 0 2.4741757142464786 0 1;
	setAttr ".a" 180;
createNode deleteComponent -n "deleteComponent48";
	rename -uid "BCD97C9F-4683-6785-1547-6CA385B107F9";
	setAttr ".dc" -type "componentList" 23 "e[10]" "e[56]" "e[72:73]" "e[424]" "e[473]" "e[483]" "e[486]" "e[837]" "e[844]" "e[852]" "e[856]" "e[861]" "e[867]" "e[875]" "e[878]" "e[885]" "e[892]" "e[900]" "e[904]" "e[909]" "e[915]" "e[923]" "e[926]";
createNode deleteComponent -n "deleteComponent49";
	rename -uid "8F6BE223-487C-875D-889C-C782FDCCA172";
	setAttr ".dc" -type "componentList" 4 "vtx[0:33]" "vtx[212:242]" "vtx[421:472]" "vtx[527:542]";
createNode blinn -n "Scepter_mat";
	rename -uid "14925DDD-488F-EDB8-D76A-35BA0D9650C5";
	setAttr ".sc" -type "float3" 0 0 0 ;
	setAttr ".rfl" 0;
	setAttr ".ec" 0;
	setAttr ".sro" 0;
createNode shadingEngine -n "blinn1SG";
	rename -uid "219092B6-4E34-07CE-5EC8-2E98A38FDD91";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "CFF98A7C-4D39-E782-9796-69A54B70FD60";
createNode file -n "file1";
	rename -uid "33BDF911-4E83-DE8B-C818-5A8C9AF3FD80";
	setAttr ".ftn" -type "string" "R:/MollySotak_P03/sourceimages/Scepter_texture.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "A235221B-4613-413C-8645-A2AEA95B4C76";
createNode file -n "file2";
	rename -uid "6B832B87-444D-6C02-5128-DF83ED09DBCF";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "R:/MollySotak_P03/sourceimages/seamless-wood-texture-free-6.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture2";
	rename -uid "398587D7-406D-723A-4CAF-A88F69093392";
createNode bump2d -n "bump2d1";
	rename -uid "98BA40B0-405C-5653-9AE8-749817F0D7E2";
	setAttr ".bd" 0.05000000074505806;
	setAttr ".vc1" -type "float3" 0 3.9999999e-005 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-006 9.9999997e-006 0 ;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "DECB9875-423D-32FA-5AC0-AC96FF3D39E6";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -346.57393060827383 -229.97447641095644 ;
	setAttr ".tgi[0].vh" -type "double2" 326.04509028329488 456.2203412325523 ;
	setAttr -s 7 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -410;
	setAttr ".tgi[0].ni[0].y" 111.42857360839844;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" -102.85713958740234;
	setAttr ".tgi[0].ni[1].y" 134.28572082519531;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" -717.14288330078125;
	setAttr ".tgi[0].ni[2].y" 90;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" 204.28572082519531;
	setAttr ".tgi[0].ni[3].y" 290;
	setAttr ".tgi[0].ni[3].nvs" 1923;
	setAttr ".tgi[0].ni[4].x" -102.85713958740234;
	setAttr ".tgi[0].ni[4].y" 310;
	setAttr ".tgi[0].ni[4].nvs" 1923;
	setAttr ".tgi[0].ni[5].x" -410;
	setAttr ".tgi[0].ni[5].y" 288.57144165039063;
	setAttr ".tgi[0].ni[5].nvs" 1923;
	setAttr ".tgi[0].ni[6].x" 511.42855834960937;
	setAttr ".tgi[0].ni[6].y" 290;
	setAttr ".tgi[0].ni[6].nvs" 1923;
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
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 3 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "deleteComponent49.og" "pCubeShape2.i";
connectAttr "polyTweakUV5.uvtk[0]" "pCubeShape2.uvst[0].uvtw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyTweak85.out" "polyExtrudeFace53.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace53.mp";
connectAttr "polyCube2.out" "polyTweak85.ip";
connectAttr "polyTweak86.out" "polyExtrudeFace54.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace54.mp";
connectAttr "polyExtrudeFace53.out" "polyTweak86.ip";
connectAttr "polyExtrudeFace54.out" "deleteComponent20.ig";
connectAttr "deleteComponent20.og" "deleteComponent21.ig";
connectAttr "deleteComponent21.og" "deleteComponent22.ig";
connectAttr "deleteComponent22.og" "deleteComponent23.ig";
connectAttr "polyTweak87.out" "polyExtrudeFace55.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace55.mp";
connectAttr "deleteComponent23.og" "polyTweak87.ip";
connectAttr "polyTweak88.out" "polyExtrudeFace56.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace56.mp";
connectAttr "polyExtrudeFace55.out" "polyTweak88.ip";
connectAttr "polyTweak89.out" "polyExtrudeFace57.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace57.mp";
connectAttr "polyExtrudeFace56.out" "polyTweak89.ip";
connectAttr "polyTweak90.out" "polyExtrudeFace58.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace58.mp";
connectAttr "polyExtrudeFace57.out" "polyTweak90.ip";
connectAttr "polyTweak91.out" "polyExtrudeFace59.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace59.mp";
connectAttr "polyExtrudeFace58.out" "polyTweak91.ip";
connectAttr "polyTweak92.out" "polyExtrudeFace60.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace60.mp";
connectAttr "polyExtrudeFace59.out" "polyTweak92.ip";
connectAttr "polyTweak93.out" "polyExtrudeFace61.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace61.mp";
connectAttr "polyExtrudeFace60.out" "polyTweak93.ip";
connectAttr "polyTweak94.out" "polyExtrudeFace62.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace62.mp";
connectAttr "polyExtrudeFace61.out" "polyTweak94.ip";
connectAttr "polyTweak95.out" "polyExtrudeFace63.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace63.mp";
connectAttr "polyExtrudeFace62.out" "polyTweak95.ip";
connectAttr "polyTweak96.out" "polyExtrudeFace64.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace64.mp";
connectAttr "polyExtrudeFace63.out" "polyTweak96.ip";
connectAttr "polyExtrudeFace64.out" "polyExtrudeFace65.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace65.mp";
connectAttr "polyTweak97.out" "polyExtrudeFace66.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace66.mp";
connectAttr "polyExtrudeFace65.out" "polyTweak97.ip";
connectAttr "polyTweak98.out" "polyExtrudeFace67.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace67.mp";
connectAttr "polyExtrudeFace66.out" "polyTweak98.ip";
connectAttr "polyTweak99.out" "polyExtrudeFace68.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace68.mp";
connectAttr "polyExtrudeFace67.out" "polyTweak99.ip";
connectAttr "polyTweak100.out" "polyExtrudeFace69.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace69.mp";
connectAttr "polyExtrudeFace68.out" "polyTweak100.ip";
connectAttr "polyTweak101.out" "polyExtrudeFace70.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace70.mp";
connectAttr "polyExtrudeFace69.out" "polyTweak101.ip";
connectAttr "polyTweak102.out" "polyExtrudeFace71.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace71.mp";
connectAttr "polyExtrudeFace70.out" "polyTweak102.ip";
connectAttr "polyTweak103.out" "polyExtrudeFace72.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace72.mp";
connectAttr "polyExtrudeFace71.out" "polyTweak103.ip";
connectAttr "polyTweak104.out" "polyExtrudeFace73.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace73.mp";
connectAttr "polyExtrudeFace72.out" "polyTweak104.ip";
connectAttr "polyTweak105.out" "polyExtrudeFace74.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace74.mp";
connectAttr "polyExtrudeFace73.out" "polyTweak105.ip";
connectAttr "polyTweak106.out" "polyExtrudeFace75.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace75.mp";
connectAttr "polyExtrudeFace74.out" "polyTweak106.ip";
connectAttr "polyExtrudeFace75.out" "polyTweak107.ip";
connectAttr "polyTweak107.out" "deleteComponent24.ig";
connectAttr "polyTweak108.out" "polyMirror3.ip";
connectAttr "pCube2.sp" "polyMirror3.sp";
connectAttr "pCubeShape2.wm" "polyMirror3.mp";
connectAttr "deleteComponent24.og" "polyTweak108.ip";
connectAttr "polyTweak109.out" "polySplitRing20.ip";
connectAttr "pCubeShape2.wm" "polySplitRing20.mp";
connectAttr "polyMirror3.out" "polyTweak109.ip";
connectAttr "polySplitRing20.out" "polyTweak110.ip";
connectAttr "polyTweak110.out" "deleteComponent25.ig";
connectAttr "deleteComponent25.og" "polyMirror4.ip";
connectAttr "pCube2.sp" "polyMirror4.sp";
connectAttr "pCubeShape2.wm" "polyMirror4.mp";
connectAttr "polyTweak111.out" "polySplitRing21.ip";
connectAttr "pCubeShape2.wm" "polySplitRing21.mp";
connectAttr "polyMirror4.out" "polyTweak111.ip";
connectAttr "polyTweak112.out" "polySplitRing22.ip";
connectAttr "pCubeShape2.wm" "polySplitRing22.mp";
connectAttr "polySplitRing21.out" "polyTweak112.ip";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
connectAttr "Sotak_p02_BaseMesh_08:renderLayerManager.rlmi[0]" "Sotak_p02_BaseMesh_08:defaultRenderLayer.rlid"
		;
connectAttr "polySplitRing22.out" "polyTweak133.ip";
connectAttr "polyTweak133.out" "deleteComponent32.ig";
connectAttr "deleteComponent32.og" "deleteComponent33.ig";
connectAttr "deleteComponent33.og" "deleteComponent34.ig";
connectAttr "deleteComponent34.og" "polyMirror6.ip";
connectAttr "pCube2.sp" "polyMirror6.sp";
connectAttr "pCubeShape2.wm" "polyMirror6.mp";
connectAttr "polyMirror6.out" "polySoftEdge40.ip";
connectAttr "pCubeShape2.wm" "polySoftEdge40.mp";
connectAttr "polySoftEdge40.out" "polySoftEdge41.ip";
connectAttr "pCubeShape2.wm" "polySoftEdge41.mp";
connectAttr "polySoftEdge41.out" "polySoftEdge42.ip";
connectAttr "pCubeShape2.wm" "polySoftEdge42.mp";
connectAttr "polySoftEdge42.out" "polySoftEdge43.ip";
connectAttr "pCubeShape2.wm" "polySoftEdge43.mp";
connectAttr "polySoftEdge43.out" "polySoftEdge44.ip";
connectAttr "pCubeShape2.wm" "polySoftEdge44.mp";
connectAttr "polySoftEdge44.out" "polySoftEdge45.ip";
connectAttr "pCubeShape2.wm" "polySoftEdge45.mp";
connectAttr "polySoftEdge45.out" "polySoftEdge46.ip";
connectAttr "pCubeShape2.wm" "polySoftEdge46.mp";
connectAttr "polySoftEdge46.out" "polySoftEdge47.ip";
connectAttr "pCubeShape2.wm" "polySoftEdge47.mp";
connectAttr "polySoftEdge47.out" "polySoftEdge48.ip";
connectAttr "pCubeShape2.wm" "polySoftEdge48.mp";
connectAttr "polySoftEdge48.out" "polyTweak134.ip";
connectAttr "polyTweak134.out" "deleteComponent35.ig";
connectAttr "deleteComponent35.og" "deleteComponent36.ig";
connectAttr "deleteComponent36.og" "deleteComponent37.ig";
connectAttr "deleteComponent37.og" "deleteComponent38.ig";
connectAttr "deleteComponent38.og" "polyTweak135.ip";
connectAttr "polyTweak135.out" "deleteComponent39.ig";
connectAttr "polyTweak136.out" "polyExtrudeEdge1.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeEdge1.mp";
connectAttr "deleteComponent39.og" "polyTweak136.ip";
connectAttr "polyTweak137.out" "polyExtrudeEdge2.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeEdge2.mp";
connectAttr "polyExtrudeEdge1.out" "polyTweak137.ip";
connectAttr "polyTweak138.out" "polyExtrudeEdge3.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeEdge3.mp";
connectAttr "polyExtrudeEdge2.out" "polyTweak138.ip";
connectAttr "polyExtrudeEdge3.out" "polyTweak139.ip";
connectAttr "polyTweak139.out" "deleteComponent40.ig";
connectAttr "deleteComponent40.og" "deleteComponent41.ig";
connectAttr "deleteComponent41.og" "deleteComponent42.ig";
connectAttr "deleteComponent42.og" "deleteComponent43.ig";
connectAttr "deleteComponent43.og" "deleteComponent44.ig";
connectAttr "deleteComponent44.og" "deleteComponent45.ig";
connectAttr "deleteComponent45.og" "deleteComponent46.ig";
connectAttr "deleteComponent46.og" "deleteComponent47.ig";
connectAttr "polyTweak140.out" "polyCloseBorder1.ip";
connectAttr "deleteComponent47.og" "polyTweak140.ip";
connectAttr "polyCloseBorder1.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polySplit3.ip";
connectAttr "polySplit3.out" "polySplit4.ip";
connectAttr "polySplit4.out" "polySplit5.ip";
connectAttr "polySplit5.out" "polySplit6.ip";
connectAttr "polySplit6.out" "polySplit7.ip";
connectAttr "polyTweak141.out" "polySoftEdge49.ip";
connectAttr "pCubeShape2.wm" "polySoftEdge49.mp";
connectAttr "polySplit7.out" "polyTweak141.ip";
connectAttr "polySoftEdge49.out" "polyCut1.ip";
connectAttr "pCubeShape2.wm" "polyCut1.mp";
connectAttr "polyCut1.out" "polyCut2.ip";
connectAttr "pCubeShape2.wm" "polyCut2.mp";
connectAttr "polyTweak142.out" "polyCut3.ip";
connectAttr "pCubeShape2.wm" "polyCut3.mp";
connectAttr "polyCut2.out" "polyTweak142.ip";
connectAttr "polyCut3.out" "polyPlanarProj1.ip";
connectAttr "pCubeShape2.wm" "polyPlanarProj1.mp";
connectAttr "polyPlanarProj1.out" "polyMapCut1.ip";
connectAttr "polyMapCut1.out" "polyMapCut2.ip";
connectAttr "polyMapCut2.out" "polyTweakUV1.ip";
connectAttr "polyTweakUV1.out" "polyMapCut3.ip";
connectAttr "polyMapCut3.out" "polyMapCut4.ip";
connectAttr "polyMapCut4.out" "polyMapCut5.ip";
connectAttr "polyMapCut5.out" "polyMapCut6.ip";
connectAttr "polyMapCut6.out" "polyTweakUV2.ip";
connectAttr "polyTweakUV2.out" "polyMapCut7.ip";
connectAttr "polyMapCut7.out" "polyTweakUV3.ip";
connectAttr "polyTweakUV3.out" "polyMapCut8.ip";
connectAttr "polyMapCut8.out" "polyTweakUV4.ip";
connectAttr "polyTweakUV4.out" "polyMapCut9.ip";
connectAttr "polyMapCut9.out" "polyTweakUV5.ip";
connectAttr "polyTweakUV5.out" "polySoftEdge50.ip";
connectAttr "pCubeShape2.wm" "polySoftEdge50.mp";
connectAttr "polySoftEdge50.out" "deleteComponent48.ig";
connectAttr "deleteComponent48.og" "deleteComponent49.ig";
connectAttr "file1.oc" "Scepter_mat.c";
connectAttr "bump2d1.o" "Scepter_mat.n";
connectAttr "Scepter_mat.oc" "blinn1SG.ss";
connectAttr "pCubeShape2.iog" "blinn1SG.dsm" -na;
connectAttr "blinn1SG.msg" "materialInfo1.sg";
connectAttr "Scepter_mat.msg" "materialInfo1.m";
connectAttr "file1.msg" "materialInfo1.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file2.ws";
connectAttr "place2dTexture2.c" "file2.c";
connectAttr "place2dTexture2.tf" "file2.tf";
connectAttr "place2dTexture2.rf" "file2.rf";
connectAttr "place2dTexture2.mu" "file2.mu";
connectAttr "place2dTexture2.mv" "file2.mv";
connectAttr "place2dTexture2.s" "file2.s";
connectAttr "place2dTexture2.wu" "file2.wu";
connectAttr "place2dTexture2.wv" "file2.wv";
connectAttr "place2dTexture2.re" "file2.re";
connectAttr "place2dTexture2.of" "file2.of";
connectAttr "place2dTexture2.r" "file2.ro";
connectAttr "place2dTexture2.n" "file2.n";
connectAttr "place2dTexture2.vt1" "file2.vt1";
connectAttr "place2dTexture2.vt2" "file2.vt2";
connectAttr "place2dTexture2.vt3" "file2.vt3";
connectAttr "place2dTexture2.vc1" "file2.vc1";
connectAttr "place2dTexture2.o" "file2.uv";
connectAttr "place2dTexture2.ofs" "file2.fs";
connectAttr "file2.oa" "bump2d1.bv";
connectAttr "file2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "bump2d1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "place2dTexture2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "Scepter_mat.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "file1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "place2dTexture1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "blinn1SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "Scepter_mat.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "Sotak_p02_BaseMesh_08:defaultRenderLayer.msg" ":defaultRenderingList1.r"
		 -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
// End of Scepter_005_mcs.ma
