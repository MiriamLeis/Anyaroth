; Script generated by the HM NIS Edit Script Wizard.

; HM NIS Edit Wizard helper defines
!define PRODUCT_NAME "Anyaroth"
!define PRODUCT_VERSION "1.0"
!define PRODUCT_PUBLISHER "YggdraSeed"
!define PRODUCT_WEB_SITE "https://pablojor.github.io/Anyaroth/"
!define PRODUCT_DIR_REGKEY "Software\Microsoft\Windows\CurrentVersion\App Paths\AnyarothRelease"
!define PRODUCT_UNINST_KEY "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT_NAME}"
!define PRODUCT_UNINST_ROOT_KEY "HKLM"

; MUI 1.67 compatible ------
!include "MUI.nsh"

; MUI Settings
!define MUI_ABORTWARNING
!define MUI_ICON "assets\sprites\icon.ico"
!define MUI_UNICON "${NSISDIR}\Contrib\Graphics\Icons\modern-uninstall.ico"

; Welcome page
!insertmacro MUI_PAGE_WELCOME
; License page
!insertmacro MUI_PAGE_LICENSE "Licencia de Software.txt"
; Directory page
!insertmacro MUI_PAGE_DIRECTORY
; Instfiles page
!insertmacro MUI_PAGE_INSTFILES
; Finish page
!define MUI_FINISHPAGE_RUN "$INSTDIR\bin\AnyarothRelease.exe"
!insertmacro MUI_PAGE_FINISH

; Uninstaller pages
!insertmacro MUI_UNPAGE_INSTFILES

; Language files
!insertmacro MUI_LANGUAGE "Spanish"

; MUI end ------

Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
OutFile "AnyarothSetup.exe"
InstallDir "$PROGRAMFILES\Anyaroth"
InstallDirRegKey HKLM "${PRODUCT_DIR_REGKEY}" ""
ShowInstDetails show
ShowUnInstDetails show

Section "Principal" SEC01
  SetOutPath "$INSTDIR\assets\fonts"
  SetOverwrite try
  File "assets\fonts\arial.ttf"
  SetOutPath "$INSTDIR\assets\sounds"
  File "assets\sounds\alarm.ogg"
  File "assets\sounds\angraGrunt.wav"
  File "assets\sounds\azuraCutScene.ogg"
  File "assets\sounds\beeDeath.wav"
  File "assets\sounds\bgMusic.wav"
  File "assets\sounds\blackHole.wav"
  File "assets\sounds\bomberDeath.wav"
  File "assets\sounds\bombexplosion.wav"
  File "assets\sounds\bombthrow.wav"
  File "assets\sounds\boss1Battle.ogg"
  File "assets\sounds\boss1Die.wav"
  File "assets\sounds\boss1Hit.wav"
  File "assets\sounds\boss1Interfase1.wav"
  File "assets\sounds\boss1Interfase2.wav"
  File "assets\sounds\boss1Interfase3.wav"
  File "assets\sounds\boss2Battle.ogg"
  File "assets\sounds\boss2Die.wav"
  File "assets\sounds\boss2Hit.wav"
  File "assets\sounds\boss2Interfase.wav"
  File "assets\sounds\boss2Jump.wav"
  File "assets\sounds\boss2Land.wav"
  File "assets\sounds\boss2Melee.wav"
  File "assets\sounds\boss3Battle.ogg"
  File "assets\sounds\boss3Teleport.wav"
  File "assets\sounds\bossVoice.wav"
  File "assets\sounds\boton.wav"
  File "assets\sounds\buddyHit1.wav"
  File "assets\sounds\buddyHit2.wav"
  File "assets\sounds\buddyHit3.wav"
  File "assets\sounds\bulletGround.wav"
  File "assets\sounds\bullseyeHit.wav"
  File "assets\sounds\capsuleOpen.wav"
  File "assets\sounds\closeDialogue.wav"
  File "assets\sounds\cutScene(Spenta-Queen).ogg"
  File "assets\sounds\dash.wav"
  File "assets\sounds\die1.wav"
  File "assets\sounds\die2.wav"
  File "assets\sounds\doorClose.wav"
  File "assets\sounds\doorOpen.wav"
  File "assets\sounds\duringBH.wav"
  File "assets\sounds\emptyGun.wav"
  File "assets\sounds\endGame-Credits.ogg"
  File "assets\sounds\example.wav"
  File "assets\sounds\example1.wav"
  File "assets\sounds\exampleVoice.wav"
  File "assets\sounds\flySpenta.wav"
  File "assets\sounds\helmetDown.wav"
  File "assets\sounds\helmetSpark.wav"
  File "assets\sounds\itempick1.wav"
  File "assets\sounds\jump.wav"
  File "assets\sounds\mainMenu.ogg"
  File "assets\sounds\martyrDie.wav"
  File "assets\sounds\martyrExplosion.wav"
  File "assets\sounds\martyrHit.wav"
  File "assets\sounds\martyrMeleeHit.wav"
  File "assets\sounds\melee.wav"
  File "assets\sounds\meleeDeath.wav"
  File "assets\sounds\meleeEnemyAttack.wav"
  File "assets\sounds\meleeEnemyHit.wav"
  File "assets\sounds\meleeHit.wav"
  File "assets\sounds\openDialogue.wav"
  File "assets\sounds\orb.wav"
  File "assets\sounds\orbBounce.wav"
  File "assets\sounds\pain1.wav"
  File "assets\sounds\pain2.wav"
  File "assets\sounds\pain3.wav"
  File "assets\sounds\pain4.wav"
  File "assets\sounds\pain5.wav"
  File "assets\sounds\pain6.wav"
  File "assets\sounds\pistolShot.wav"
  File "assets\sounds\plasmaSniper.wav"
  File "assets\sounds\reload.wav"
  File "assets\sounds\rifle1.wav"
  File "assets\sounds\rifle2.wav"
  File "assets\sounds\rocketLaunch.wav"
  File "assets\sounds\rocketLuncherUp.wav"
  File "assets\sounds\safe_zone.ogg"
  File "assets\sounds\shop.ogg"
  File "assets\sounds\shotgun1.wav"
  File "assets\sounds\shotgun2.wav"
  File "assets\sounds\spawnerDeath.wav"
  File "assets\sounds\spawnerHit.wav"
  File "assets\sounds\spawnerSpawn.wav"
  File "assets\sounds\spentaSword.wav"
  File "assets\sounds\staticSpawnerDeath.wav"
  File "assets\sounds\staticSpawnerSpawn.wav"
  File "assets\sounds\step.wav"
  File "assets\sounds\turretDeath.wav"
  File "assets\sounds\turretHit.wav"
  File "assets\sounds\turretMeleeHit.wav"
  File "assets\sounds\turretShot.wav"
  File "assets\sounds\tutorial.ogg"
  File "assets\sounds\zona1.ogg"
  File "assets\sounds\zona2.ogg"
  File "assets\sounds\zona3.ogg"
  SetOutPath "$INSTDIR\assets\sprites"
  File "assets\sprites\abeja_spritesheet.png"
  File "assets\sprites\AgraMechaBullet.png"
  File "assets\sprites\airturret_spritesheet.png"
  File "assets\sprites\ammo.png"
  File "assets\sprites\ammo_icon.png"
  File "assets\sprites\angrasoldier_spritesheet.png"
  File "assets\sprites\angra_arm_improvedsubfusil_spritesheet.png"
  File "assets\sprites\angra_bouncecannon_spritesheet.png"
  File "assets\sprites\angra_corpse.png"
  File "assets\sprites\angra_spritesheet.png"
  File "assets\sprites\anyaroth_logo.png"
  File "assets\sprites\azuraparticle1.png"
  File "assets\sprites\azuraparticle2.png"
  File "assets\sprites\azuraparticle3.png"
  File "assets\sprites\azuraparticle4.png"
  File "assets\sprites\azuraparticle5.png"
  File "assets\sprites\azuraparticle6.png"
  File "assets\sprites\azuraparticle7.png"
  File "assets\sprites\azuraparticle8.png"
  File "assets\sprites\AzuraShotgunBullet.png"
  File "assets\sprites\azura_idle.png"
  File "assets\sprites\azura_spritesheet.png"
  File "assets\sprites\basicweapon_frame.png"
  File "assets\sprites\bg_boss1.png"
  File "assets\sprites\bg_boss2.png"
  File "assets\sprites\bg_boss3.png"
  File "assets\sprites\bg_menu.png"
  File "assets\sprites\bg_optionsmenu.png"
  File "assets\sprites\bg_pausemenu.png"
  File "assets\sprites\bg_z1_l1.png"
  File "assets\sprites\bg_z1_l2.png"
  File "assets\sprites\bg_z1_l3.png"
  File "assets\sprites\bg_z2_l1.png"
  File "assets\sprites\bg_z2_l2.png"
  File "assets\sprites\bg_z2_l3.png"
  File "assets\sprites\bg_z3_l1.png"
  File "assets\sprites\bg_z3_l2.png"
  File "assets\sprites\bg_z3_l3.png"
  File "assets\sprites\bHCannonIcon.png"
  File "assets\sprites\bHCannon_area.png"
  File "assets\sprites\bHCannon_bullet_spritesheet.png"
  File "assets\sprites\blood.png"
  File "assets\sprites\bomber_spritesheet.png"
  File "assets\sprites\bomb_spritesheet.png"
  File "assets\sprites\boss1_tileset.png"
  File "assets\sprites\boss2_tileset.png"
  File "assets\sprites\boss3_life_bar.png"
  File "assets\sprites\boss3_tileset.png"
  File "assets\sprites\boss_life_bar.png"
  File "assets\sprites\bouncecannonbullet_spritesheet.png"
  File "assets\sprites\bounceCannonIcon.png"
  File "assets\sprites\box.png"
  File "assets\sprites\button.png"
  File "assets\sprites\buy_button.png"
  File "assets\sprites\cadence_icon.png"
  File "assets\sprites\capsule_spritesheet.png"
  File "assets\sprites\changeweapons_button.png"
  File "assets\sprites\clip_icon.png"
  File "assets\sprites\coin_icon.png"
  File "assets\sprites\coin_spritesheet.png"
  File "assets\sprites\commonweapon_frame.png"
  File "assets\sprites\controlsBG.png"
  File "assets\sprites\credits.png"
  File "assets\sprites\current_weapon.png"
  File "assets\sprites\dashbacktrail.png"
  File "assets\sprites\dashbacktrailflip.png"
  File "assets\sprites\dashdowntrail.png"
  File "assets\sprites\dashdowntrailflip.png"
  File "assets\sprites\dashtrail.png"
  File "assets\sprites\dashtrailflip.png"
  File "assets\sprites\dash_spritesheet.png"
  File "assets\sprites\demo_credits.png"
  File "assets\sprites\demo_twitter.png"
  File "assets\sprites\depot_panel.png"
  File "assets\sprites\dialogueBg.png"
  File "assets\sprites\dialogueFaces_angra.png"
  File "assets\sprites\dialogueFaces_angrasoldier.png"
  File "assets\sprites\dialogueFaces_azura.png"
  File "assets\sprites\dialogueFaces_azuraBoss.png"
  File "assets\sprites\dialogueFaces_helmet.png"
  File "assets\sprites\dialogueFaces_kartya.png"
  File "assets\sprites\dialogueFaces_kheismani.png"
  File "assets\sprites\dialogueFaces_npc1.png"
  File "assets\sprites\dialogueFaces_npc2.png"
  File "assets\sprites\dialogueFaces_npc3.png"
  File "assets\sprites\dialogueFaces_spenta.png"
  File "assets\sprites\dialogueIndicator.png"
  File "assets\sprites\dust.png"
  File "assets\sprites\dust1.png"
  File "assets\sprites\dust2.png"
  File "assets\sprites\dust3.png"
  File "assets\sprites\enemymartyr_spritesheet.png"
  File "assets\sprites\enemymelee_spritesheet.png"
  File "assets\sprites\equip_depot_namePanel.png"
  File "assets\sprites\equip_panel.png"
  File "assets\sprites\exit_button.png"
  File "assets\sprites\first_aid_kit.png"
  File "assets\sprites\flyinghead_spritesheet.png"
  File "assets\sprites\gunCursor.png"
  File "assets\sprites\halberdIcon.png"
  File "assets\sprites\head_life_bar.png"
  File "assets\sprites\hive_spritesheet.png"
  File "assets\sprites\icon.ico"
  File "assets\sprites\icon.png"
  File "assets\sprites\improvedRifleIcon.png"
  File "assets\sprites\improvedShotgunIcon.png"
  File "assets\sprites\infoIcon.png"
  File "assets\sprites\info_panel.png"
  File "assets\sprites\interactIndicator.png"
  File "assets\sprites\interactIndicatorController.png"
  File "assets\sprites\item_frame.png"
  File "assets\sprites\kartya_idle.png"
  File "assets\sprites\kheismani_idle.png"
  File "assets\sprites\knifeIcon.png"
  File "assets\sprites\laser.png"
  File "assets\sprites\laserContainer.png"
  File "assets\sprites\life_bar.png"
  File "assets\sprites\life_bar_mask.png"
  File "assets\sprites\life_bar_mask_boss3.png"
  File "assets\sprites\life_bar_mask_head.png"
  File "assets\sprites\mask_boss_life_bar_1.png"
  File "assets\sprites\mask_boss_life_bar_2.png"
  File "assets\sprites\mask_boss_life_bar_3.png"
  File "assets\sprites\melee_frame.png"
  File "assets\sprites\menu_backButton.png"
  File "assets\sprites\menu_buttons.png"
  File "assets\sprites\menu_fullScreenButton.png"
  File "assets\sprites\menu_lessbutton.png"
  File "assets\sprites\menu_plusbutton.png"
  File "assets\sprites\missileturret_spritesheet.png"
  File "assets\sprites\mk_arm.png"
  File "assets\sprites\mk_armback.png"
  File "assets\sprites\mk_arm_improvedsubfusil_spritesheet.png"
  File "assets\sprites\mk_arm_improveshotgun_spritesheet.png"
  File "assets\sprites\mk_arm_up.png"
  File "assets\sprites\mk_bHCannon_spritesheet.png"
  File "assets\sprites\mk_bouncecannon_spritesheet.png"
  File "assets\sprites\mk_pistol_spritesheet.png"
  File "assets\sprites\mk_shotgun_spritesheet.png"
  File "assets\sprites\mk_sniper_spritesheet.png"
  File "assets\sprites\mk_spritesheet.png"
  File "assets\sprites\nameBg.png"
  File "assets\sprites\npc1_idle.png"
  File "assets\sprites\npc2_idle.png"
  File "assets\sprites\npc3_idle.png"
  File "assets\sprites\pistolbullet.png"
  File "assets\sprites\pistolIcon.png"
  File "assets\sprites\power_icon.png"
  File "assets\sprites\properties_bar.png"
  File "assets\sprites\rareweapon_frame.png"
  File "assets\sprites\return_button.png"
  File "assets\sprites\riflebullet.png"
  File "assets\sprites\rifleIcon.png"
  File "assets\sprites\safe1_tileset.png"
  File "assets\sprites\safe2_tileset.png"
  File "assets\sprites\safe3_tileset.png"
  File "assets\sprites\safeZone_decoration.png"
  File "assets\sprites\shopDoor_spritesheet.png"
  File "assets\sprites\shop_background.png"
  File "assets\sprites\shop_menubuttons.png"
  File "assets\sprites\shop_panel.png"
  File "assets\sprites\shop_spritesheet.png"
  File "assets\sprites\shotgunbullet.png"
  File "assets\sprites\shotgunIcon.png"
  File "assets\sprites\smoke.png"
  File "assets\sprites\sniperbullet_spritesheet.png"
  File "assets\sprites\sniperIcon.png"
  File "assets\sprites\sparks.png"
  File "assets\sprites\spawner_spritesheet.png"
  File "assets\sprites\SpentaBullets.png"
  File "assets\sprites\spenta_misil_spritesheet.png"
  File "assets\sprites\spenta_orb_spritesheet.png"
  File "assets\sprites\spenta_spritesheet.png"
  File "assets\sprites\subfusil_spritesheet.png"
  File "assets\sprites\swordIcon.png"
  File "assets\sprites\throne_empty.png"
  File "assets\sprites\throne_spritesheet.png"
  File "assets\sprites\trooperarm.png"
  File "assets\sprites\trooper_spritesheet.png"
  File "assets\sprites\turret_arm_spritesheet.png"
  File "assets\sprites\turret_bullet_spritesheet.png"
  File "assets\sprites\turret_spritesheet.png"
  File "assets\sprites\tutorial_buddy.png"
  File "assets\sprites\tutorial_bullseye.png"
  File "assets\sprites\tutorial_sign.png"
  File "assets\sprites\tutorial_tileset.png"
  File "assets\sprites\void_icon.png"
  File "assets\sprites\yggdraSeed_logo.png"
  File "assets\sprites\zona1_tileset.png"
  File "assets\sprites\zona2_tileset.png"
  File "assets\sprites\zona3_tileset.png"
  SetOutPath "$INSTDIR\bin"
  File "bin\AnyarothRelease.exe"
  CreateDirectory "$SMPROGRAMS\Anyaroth"
  CreateShortCut "$SMPROGRAMS\Anyaroth\Anyaroth.lnk" "$INSTDIR\bin\AnyarothRelease.exe"
  CreateShortCut "$DESKTOP\Anyaroth.lnk" "$INSTDIR\bin\AnyarothRelease.exe"
  File "bin\AnyarothRelease.exe"
  File "bin\AnyarothRelease.iobj"
  File "bin\AnyarothRelease.ipdb"
  File "bin\AnyarothRelease.pdb"
  File "bin\libFLAC-8.dll"
  File "bin\libfreetype-6.dll"
  File "bin\libjpeg-9.dll"
  File "bin\libmodplug-1.dll"
  File "bin\libmpg123-0.dll"
  File "bin\libogg-0.dll"
  File "bin\libopus-0.dll"
  File "bin\libopusfile-0.dll"
  File "bin\libpng16-16.dll"
  File "bin\libtiff-5.dll"
  File "bin\libvorbis-0.dll"
  File "bin\libvorbisfile-3.dll"
  File "bin\libwebp-4.dll"
  File "bin\SDL2.dll"
  File "bin\SDL2_image.dll"
  File "bin\SDL2_mixer.dll"
  File "bin\SDL2_ttf.dll"
  File "bin\zlib1.dll"
  SetOutPath "$INSTDIR\files\info"
  File "files\info\assets.json"
  File "files\info\dialogues.json"
  File "files\info\weapon_info.json"
  SetOutPath "$INSTDIR\files\tilemaps"
  File "files\tilemaps\boss1_tileset.tsx"
  File "files\tilemaps\Final.json"
  File "files\tilemaps\Nivel1-1.json"
  File "files\tilemaps\Nivel1-2.json"
  File "files\tilemaps\Nivel1-3.json"
  File "files\tilemaps\Nivel2-1.json"
  File "files\tilemaps\Nivel2-2.json"
  File "files\tilemaps\Nivel2-3.json"
  File "files\tilemaps\Nivel3-1.json"
  File "files\tilemaps\Nivel3-2.json"
  File "files\tilemaps\Nivel3-3.json"
  File "files\tilemaps\NivelDemo.json"
  File "files\tilemaps\Safe1-1.json"
  File "files\tilemaps\Safe1-2.json"
  File "files\tilemaps\Safe1-3.json"
  File "files\tilemaps\safe1_tileset.tsx"
  File "files\tilemaps\Safe2-1.json"
  File "files\tilemaps\Safe2-2.json"
  File "files\tilemaps\Safe2-3.json"
  File "files\tilemaps\safe2_tileset.tsx"
  File "files\tilemaps\Safe3-1.json"
  File "files\tilemaps\Safe3-2.json"
  File "files\tilemaps\Safe3-3.json"
  File "files\tilemaps\safe3_tileset.tsx"
  File "files\tilemaps\SafeDemo1.json"
  File "files\tilemaps\SafeDemo2.json"
  File "files\tilemaps\Tutorial.json"
  File "files\tilemaps\tutorial_tileset.tsx"
  File "files\tilemaps\zona1_tileset.tsx"
  File "files\tilemaps\zona2_tileset.tsx"
  File "files\tilemaps\zona3_tileset.tsx"
SectionEnd

Section -AdditionalIcons
  SetOutPath $INSTDIR
  WriteIniStr "$INSTDIR\${PRODUCT_NAME}.url" "InternetShortcut" "URL" "${PRODUCT_WEB_SITE}"
  CreateShortCut "$SMPROGRAMS\Anyaroth\Website.lnk" "$INSTDIR\${PRODUCT_NAME}.url"
  CreateShortCut "$SMPROGRAMS\Anyaroth\Uninstall.lnk" "$INSTDIR\uninst.exe"
SectionEnd

Section -Post
  WriteUninstaller "$INSTDIR\uninst.exe"
  WriteRegStr HKLM "${PRODUCT_DIR_REGKEY}" "" "$INSTDIR\bin\AnyarothDebug.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayName" "$(^Name)"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "UninstallString" "$INSTDIR\uninst.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayIcon" "$INSTDIR\bin\AnyarothDebug.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayVersion" "${PRODUCT_VERSION}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "URLInfoAbout" "${PRODUCT_WEB_SITE}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "Publisher" "${PRODUCT_PUBLISHER}"
SectionEnd


Function un.onUninstSuccess
  HideWindow
  MessageBox MB_ICONINFORMATION|MB_OK "La desinstalaci�n de Anyaroth finaliz� satisfactoriamente."
FunctionEnd

Function un.onInit
  MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "�Est� completamente seguro que desea desinstalar Anyaroth junto con todos sus componentes?" IDYES +2
  Abort
FunctionEnd

Section Uninstall
  Delete "$INSTDIR\${PRODUCT_NAME}.url"
  Delete "$INSTDIR\uninst.exe"
  Delete "$INSTDIR\files\tilemaps\zona3_tileset.tsx"
  Delete "$INSTDIR\files\tilemaps\zona2_tileset.tsx"
  Delete "$INSTDIR\files\tilemaps\zona1_tileset.tsx"
  Delete "$INSTDIR\files\tilemaps\tutorial_tileset.tsx"
  Delete "$INSTDIR\files\tilemaps\Tutorial.json"
  Delete "$INSTDIR\files\tilemaps\SafeDemo2.json"
  Delete "$INSTDIR\files\tilemaps\SafeDemo1.json"
  Delete "$INSTDIR\files\tilemaps\safe3_tileset.tsx"
  Delete "$INSTDIR\files\tilemaps\Safe3-3.json"
  Delete "$INSTDIR\files\tilemaps\Safe3-2.json"
  Delete "$INSTDIR\files\tilemaps\Safe3-1.json"
  Delete "$INSTDIR\files\tilemaps\safe2_tileset.tsx"
  Delete "$INSTDIR\files\tilemaps\Safe2-3.json"
  Delete "$INSTDIR\files\tilemaps\Safe2-2.json"
  Delete "$INSTDIR\files\tilemaps\Safe2-1.json"
  Delete "$INSTDIR\files\tilemaps\safe1_tileset.tsx"
  Delete "$INSTDIR\files\tilemaps\Safe1-3.json"
  Delete "$INSTDIR\files\tilemaps\Safe1-2.json"
  Delete "$INSTDIR\files\tilemaps\Safe1-1.json"
  Delete "$INSTDIR\files\tilemaps\NivelDemo.json"
  Delete "$INSTDIR\files\tilemaps\Nivel3-3.json"
  Delete "$INSTDIR\files\tilemaps\Nivel3-2.json"
  Delete "$INSTDIR\files\tilemaps\Nivel3-1.json"
  Delete "$INSTDIR\files\tilemaps\Nivel2-3.json"
  Delete "$INSTDIR\files\tilemaps\Nivel2-2.json"
  Delete "$INSTDIR\files\tilemaps\Nivel2-1.json"
  Delete "$INSTDIR\files\tilemaps\Nivel1-3.json"
  Delete "$INSTDIR\files\tilemaps\Nivel1-2.json"
  Delete "$INSTDIR\files\tilemaps\Nivel1-1.json"
  Delete "$INSTDIR\files\tilemaps\Final.json"
  Delete "$INSTDIR\files\tilemaps\boss1_tileset.tsx"
  Delete "$INSTDIR\files\info\weapon_info.json"
  Delete "$INSTDIR\files\info\save.json"
  Delete "$INSTDIR\files\info\dialogues.json"
  Delete "$INSTDIR\files\info\assets.json"
  Delete "$INSTDIR\bin\zlib1.dll"
  Delete "$INSTDIR\bin\SDL2_ttf.dll"
  Delete "$INSTDIR\bin\SDL2_mixer.dll"
  Delete "$INSTDIR\bin\SDL2_image.dll"
  Delete "$INSTDIR\bin\SDL2.dll"
  Delete "$INSTDIR\bin\libwebp-4.dll"
  Delete "$INSTDIR\bin\libvorbisfile-3.dll"
  Delete "$INSTDIR\bin\libvorbis-0.dll"
  Delete "$INSTDIR\bin\libtiff-5.dll"
  Delete "$INSTDIR\bin\libpng16-16.dll"
  Delete "$INSTDIR\bin\libopusfile-0.dll"
  Delete "$INSTDIR\bin\libopus-0.dll"
  Delete "$INSTDIR\bin\libogg-0.dll"
  Delete "$INSTDIR\bin\libmpg123-0.dll"
  Delete "$INSTDIR\bin\libmodplug-1.dll"
  Delete "$INSTDIR\bin\libjpeg-9.dll"
  Delete "$INSTDIR\bin\libfreetype-6.dll"
  Delete "$INSTDIR\bin\libFLAC-8.dll"
  Delete "$INSTDIR\bin\AnyarothRelease.pdb"
  Delete "$INSTDIR\bin\AnyarothRelease.ipdb"
  Delete "$INSTDIR\bin\AnyarothRelease.iobj"
  Delete "$INSTDIR\bin\AnyarothRelease.exe"
  Delete "$INSTDIR\bin\AnyarothDebug.pdb"
  Delete "$INSTDIR\bin\AnyarothDebug.ilk"
  Delete "$INSTDIR\bin\AnyarothDebug.exe"
  Delete "$INSTDIR\assets\sprites\zona3_tileset.png"
  Delete "$INSTDIR\assets\sprites\zona2_tileset.png"
  Delete "$INSTDIR\assets\sprites\zona1_tileset.png"
  Delete "$INSTDIR\assets\sprites\yggdraSeed_logo.png"
  Delete "$INSTDIR\assets\sprites\void_icon.png"
  Delete "$INSTDIR\assets\sprites\tutorial_tileset.png"
  Delete "$INSTDIR\assets\sprites\tutorial_sign.png"
  Delete "$INSTDIR\assets\sprites\tutorial_bullseye.png"
  Delete "$INSTDIR\assets\sprites\tutorial_buddy.png"
  Delete "$INSTDIR\assets\sprites\turret_spritesheet.png"
  Delete "$INSTDIR\assets\sprites\turret_bullet_spritesheet.png"
  Delete "$INSTDIR\assets\sprites\turret_arm_spritesheet.png"
  Delete "$INSTDIR\assets\sprites\trooper_spritesheet.png"
  Delete "$INSTDIR\assets\sprites\trooperarm.png"
  Delete "$INSTDIR\assets\sprites\throne_spritesheet.png"
  Delete "$INSTDIR\assets\sprites\throne_empty.png"
  Delete "$INSTDIR\assets\sprites\swordIcon.png"
  Delete "$INSTDIR\assets\sprites\subfusil_spritesheet.png"
  Delete "$INSTDIR\assets\sprites\spenta_spritesheet.png"
  Delete "$INSTDIR\assets\sprites\spenta_orb_spritesheet.png"
  Delete "$INSTDIR\assets\sprites\spenta_misil_spritesheet.png"
  Delete "$INSTDIR\assets\sprites\SpentaBullets.png"
  Delete "$INSTDIR\assets\sprites\spawner_spritesheet.png"
  Delete "$INSTDIR\assets\sprites\sparks.png"
  Delete "$INSTDIR\assets\sprites\sniperIcon.png"
  Delete "$INSTDIR\assets\sprites\sniperbullet_spritesheet.png"
  Delete "$INSTDIR\assets\sprites\smoke.png"
  Delete "$INSTDIR\assets\sprites\shotgunIcon.png"
  Delete "$INSTDIR\assets\sprites\shotgunbullet.png"
  Delete "$INSTDIR\assets\sprites\shop_spritesheet.png"
  Delete "$INSTDIR\assets\sprites\shop_panel.png"
  Delete "$INSTDIR\assets\sprites\shop_menubuttons.png"
  Delete "$INSTDIR\assets\sprites\shop_background.png"
  Delete "$INSTDIR\assets\sprites\shopDoor_spritesheet.png"
  Delete "$INSTDIR\assets\sprites\safeZone_decoration.png"
  Delete "$INSTDIR\assets\sprites\safe3_tileset.png"
  Delete "$INSTDIR\assets\sprites\safe2_tileset.png"
  Delete "$INSTDIR\assets\sprites\safe1_tileset.png"
  Delete "$INSTDIR\assets\sprites\rifleIcon.png"
  Delete "$INSTDIR\assets\sprites\riflebullet.png"
  Delete "$INSTDIR\assets\sprites\return_button.png"
  Delete "$INSTDIR\assets\sprites\rareweapon_frame.png"
  Delete "$INSTDIR\assets\sprites\properties_bar.png"
  Delete "$INSTDIR\assets\sprites\power_icon.png"
  Delete "$INSTDIR\assets\sprites\pistolIcon.png"
  Delete "$INSTDIR\assets\sprites\pistolbullet.png"
  Delete "$INSTDIR\assets\sprites\npc3_idle.png"
  Delete "$INSTDIR\assets\sprites\npc2_idle.png"
  Delete "$INSTDIR\assets\sprites\npc1_idle.png"
  Delete "$INSTDIR\assets\sprites\nameBg.png"
  Delete "$INSTDIR\assets\sprites\mk_spritesheet.png"
  Delete "$INSTDIR\assets\sprites\mk_sniper_spritesheet.png"
  Delete "$INSTDIR\assets\sprites\mk_shotgun_spritesheet.png"
  Delete "$INSTDIR\assets\sprites\mk_pistol_spritesheet.png"
  Delete "$INSTDIR\assets\sprites\mk_bouncecannon_spritesheet.png"
  Delete "$INSTDIR\assets\sprites\mk_bHCannon_spritesheet.png"
  Delete "$INSTDIR\assets\sprites\mk_arm_up.png"
  Delete "$INSTDIR\assets\sprites\mk_arm_improveshotgun_spritesheet.png"
  Delete "$INSTDIR\assets\sprites\mk_arm_improvedsubfusil_spritesheet.png"
  Delete "$INSTDIR\assets\sprites\mk_armback.png"
  Delete "$INSTDIR\assets\sprites\mk_arm.png"
  Delete "$INSTDIR\assets\sprites\missileturret_spritesheet.png"
  Delete "$INSTDIR\assets\sprites\menu_plusbutton.png"
  Delete "$INSTDIR\assets\sprites\menu_lessbutton.png"
  Delete "$INSTDIR\assets\sprites\menu_fullScreenButton.png"
  Delete "$INSTDIR\assets\sprites\menu_buttons.png"
  Delete "$INSTDIR\assets\sprites\menu_backButton.png"
  Delete "$INSTDIR\assets\sprites\melee_frame.png"
  Delete "$INSTDIR\assets\sprites\mask_boss_life_bar_3.png"
  Delete "$INSTDIR\assets\sprites\mask_boss_life_bar_2.png"
  Delete "$INSTDIR\assets\sprites\mask_boss_life_bar_1.png"
  Delete "$INSTDIR\assets\sprites\life_bar_mask_head.png"
  Delete "$INSTDIR\assets\sprites\life_bar_mask_boss3.png"
  Delete "$INSTDIR\assets\sprites\life_bar_mask.png"
  Delete "$INSTDIR\assets\sprites\life_bar.png"
  Delete "$INSTDIR\assets\sprites\laserContainer.png"
  Delete "$INSTDIR\assets\sprites\laser.png"
  Delete "$INSTDIR\assets\sprites\knifeIcon.png"
  Delete "$INSTDIR\assets\sprites\kheismani_idle.png"
  Delete "$INSTDIR\assets\sprites\kartya_idle.png"
  Delete "$INSTDIR\assets\sprites\item_frame.png"
  Delete "$INSTDIR\assets\sprites\interactIndicatorController.png"
  Delete "$INSTDIR\assets\sprites\interactIndicator.png"
  Delete "$INSTDIR\assets\sprites\info_panel.png"
  Delete "$INSTDIR\assets\sprites\infoIcon.png"
  Delete "$INSTDIR\assets\sprites\improvedShotgunIcon.png"
  Delete "$INSTDIR\assets\sprites\improvedRifleIcon.png"
  Delete "$INSTDIR\assets\sprites\icon.png"
  Delete "$INSTDIR\assets\sprites\icon.ico"
  Delete "$INSTDIR\assets\sprites\hive_spritesheet.png"
  Delete "$INSTDIR\assets\sprites\head_life_bar.png"
  Delete "$INSTDIR\assets\sprites\halberdIcon.png"
  Delete "$INSTDIR\assets\sprites\gunCursor.png"
  Delete "$INSTDIR\assets\sprites\flyinghead_spritesheet.png"
  Delete "$INSTDIR\assets\sprites\first_aid_kit.png"
  Delete "$INSTDIR\assets\sprites\exit_button.png"
  Delete "$INSTDIR\assets\sprites\equip_panel.png"
  Delete "$INSTDIR\assets\sprites\equip_depot_namePanel.png"
  Delete "$INSTDIR\assets\sprites\enemymelee_spritesheet.png"
  Delete "$INSTDIR\assets\sprites\enemymartyr_spritesheet.png"
  Delete "$INSTDIR\assets\sprites\dust3.png"
  Delete "$INSTDIR\assets\sprites\dust2.png"
  Delete "$INSTDIR\assets\sprites\dust1.png"
  Delete "$INSTDIR\assets\sprites\dust.png"
  Delete "$INSTDIR\assets\sprites\dialogueIndicator.png"
  Delete "$INSTDIR\assets\sprites\dialogueFaces_spenta.png"
  Delete "$INSTDIR\assets\sprites\dialogueFaces_npc3.png"
  Delete "$INSTDIR\assets\sprites\dialogueFaces_npc2.png"
  Delete "$INSTDIR\assets\sprites\dialogueFaces_npc1.png"
  Delete "$INSTDIR\assets\sprites\dialogueFaces_kheismani.png"
  Delete "$INSTDIR\assets\sprites\dialogueFaces_kartya.png"
  Delete "$INSTDIR\assets\sprites\dialogueFaces_helmet.png"
  Delete "$INSTDIR\assets\sprites\dialogueFaces_azuraBoss.png"
  Delete "$INSTDIR\assets\sprites\dialogueFaces_azura.png"
  Delete "$INSTDIR\assets\sprites\dialogueFaces_angrasoldier.png"
  Delete "$INSTDIR\assets\sprites\dialogueFaces_angra.png"
  Delete "$INSTDIR\assets\sprites\dialogueBg.png"
  Delete "$INSTDIR\assets\sprites\depot_panel.png"
  Delete "$INSTDIR\assets\sprites\demo_twitter.png"
  Delete "$INSTDIR\assets\sprites\demo_credits.png"
  Delete "$INSTDIR\assets\sprites\dash_spritesheet.png"
  Delete "$INSTDIR\assets\sprites\dashtrailflip.png"
  Delete "$INSTDIR\assets\sprites\dashtrail.png"
  Delete "$INSTDIR\assets\sprites\dashdowntrailflip.png"
  Delete "$INSTDIR\assets\sprites\dashdowntrail.png"
  Delete "$INSTDIR\assets\sprites\dashbacktrailflip.png"
  Delete "$INSTDIR\assets\sprites\dashbacktrail.png"
  Delete "$INSTDIR\assets\sprites\current_weapon.png"
  Delete "$INSTDIR\assets\sprites\credits.png"
  Delete "$INSTDIR\assets\sprites\controlsBG.png"
  Delete "$INSTDIR\assets\sprites\commonweapon_frame.png"
  Delete "$INSTDIR\assets\sprites\coin_spritesheet.png"
  Delete "$INSTDIR\assets\sprites\coin_icon.png"
  Delete "$INSTDIR\assets\sprites\clip_icon.png"
  Delete "$INSTDIR\assets\sprites\changeweapons_button.png"
  Delete "$INSTDIR\assets\sprites\capsule_spritesheet.png"
  Delete "$INSTDIR\assets\sprites\cadence_icon.png"
  Delete "$INSTDIR\assets\sprites\buy_button.png"
  Delete "$INSTDIR\assets\sprites\button.png"
  Delete "$INSTDIR\assets\sprites\box.png"
  Delete "$INSTDIR\assets\sprites\bounceCannonIcon.png"
  Delete "$INSTDIR\assets\sprites\bouncecannonbullet_spritesheet.png"
  Delete "$INSTDIR\assets\sprites\boss_life_bar.png"
  Delete "$INSTDIR\assets\sprites\boss3_tileset.png"
  Delete "$INSTDIR\assets\sprites\boss3_life_bar.png"
  Delete "$INSTDIR\assets\sprites\boss2_tileset.png"
  Delete "$INSTDIR\assets\sprites\boss1_tileset.png"
  Delete "$INSTDIR\assets\sprites\bomb_spritesheet.png"
  Delete "$INSTDIR\assets\sprites\bomber_spritesheet.png"
  Delete "$INSTDIR\assets\sprites\blood.png"
  Delete "$INSTDIR\assets\sprites\bHCannon_bullet_spritesheet.png"
  Delete "$INSTDIR\assets\sprites\bHCannon_area.png"
  Delete "$INSTDIR\assets\sprites\bHCannonIcon.png"
  Delete "$INSTDIR\assets\sprites\bg_z3_l3.png"
  Delete "$INSTDIR\assets\sprites\bg_z3_l2.png"
  Delete "$INSTDIR\assets\sprites\bg_z3_l1.png"
  Delete "$INSTDIR\assets\sprites\bg_z2_l3.png"
  Delete "$INSTDIR\assets\sprites\bg_z2_l2.png"
  Delete "$INSTDIR\assets\sprites\bg_z2_l1.png"
  Delete "$INSTDIR\assets\sprites\bg_z1_l3.png"
  Delete "$INSTDIR\assets\sprites\bg_z1_l2.png"
  Delete "$INSTDIR\assets\sprites\bg_z1_l1.png"
  Delete "$INSTDIR\assets\sprites\bg_pausemenu.png"
  Delete "$INSTDIR\assets\sprites\bg_optionsmenu.png"
  Delete "$INSTDIR\assets\sprites\bg_menu.png"
  Delete "$INSTDIR\assets\sprites\bg_boss3.png"
  Delete "$INSTDIR\assets\sprites\bg_boss2.png"
  Delete "$INSTDIR\assets\sprites\bg_boss1.png"
  Delete "$INSTDIR\assets\sprites\basicweapon_frame.png"
  Delete "$INSTDIR\assets\sprites\azura_spritesheet.png"
  Delete "$INSTDIR\assets\sprites\azura_idle.png"
  Delete "$INSTDIR\assets\sprites\AzuraShotgunBullet.png"
  Delete "$INSTDIR\assets\sprites\azuraparticle8.png"
  Delete "$INSTDIR\assets\sprites\azuraparticle7.png"
  Delete "$INSTDIR\assets\sprites\azuraparticle6.png"
  Delete "$INSTDIR\assets\sprites\azuraparticle5.png"
  Delete "$INSTDIR\assets\sprites\azuraparticle4.png"
  Delete "$INSTDIR\assets\sprites\azuraparticle3.png"
  Delete "$INSTDIR\assets\sprites\azuraparticle2.png"
  Delete "$INSTDIR\assets\sprites\azuraparticle1.png"
  Delete "$INSTDIR\assets\sprites\anyaroth_logo.png"
  Delete "$INSTDIR\assets\sprites\angra_spritesheet.png"
  Delete "$INSTDIR\assets\sprites\angra_corpse.png"
  Delete "$INSTDIR\assets\sprites\angra_bouncecannon_spritesheet.png"
  Delete "$INSTDIR\assets\sprites\angra_arm_improvedsubfusil_spritesheet.png"
  Delete "$INSTDIR\assets\sprites\angrasoldier_spritesheet.png"
  Delete "$INSTDIR\assets\sprites\ammo_icon.png"
  Delete "$INSTDIR\assets\sprites\ammo.png"
  Delete "$INSTDIR\assets\sprites\airturret_spritesheet.png"
  Delete "$INSTDIR\assets\sprites\AgraMechaBullet.png"
  Delete "$INSTDIR\assets\sprites\abeja_spritesheet.png"
  Delete "$INSTDIR\assets\sounds\zona3.ogg"
  Delete "$INSTDIR\assets\sounds\zona2.ogg"
  Delete "$INSTDIR\assets\sounds\zona1.ogg"
  Delete "$INSTDIR\assets\sounds\tutorial.ogg"
  Delete "$INSTDIR\assets\sounds\turretShot.wav"
  Delete "$INSTDIR\assets\sounds\turretMeleeHit.wav"
  Delete "$INSTDIR\assets\sounds\turretHit.wav"
  Delete "$INSTDIR\assets\sounds\turretDeath.wav"
  Delete "$INSTDIR\assets\sounds\step.wav"
  Delete "$INSTDIR\assets\sounds\staticSpawnerSpawn.wav"
  Delete "$INSTDIR\assets\sounds\staticSpawnerDeath.wav"
  Delete "$INSTDIR\assets\sounds\spentaSword.wav"
  Delete "$INSTDIR\assets\sounds\spawnerSpawn.wav"
  Delete "$INSTDIR\assets\sounds\spawnerHit.wav"
  Delete "$INSTDIR\assets\sounds\spawnerDeath.wav"
  Delete "$INSTDIR\assets\sounds\shotgun2.wav"
  Delete "$INSTDIR\assets\sounds\shotgun1.wav"
  Delete "$INSTDIR\assets\sounds\shop.ogg"
  Delete "$INSTDIR\assets\sounds\safe_zone.ogg"
  Delete "$INSTDIR\assets\sounds\rocketLuncherUp.wav"
  Delete "$INSTDIR\assets\sounds\rocketLaunch.wav"
  Delete "$INSTDIR\assets\sounds\rifle2.wav"
  Delete "$INSTDIR\assets\sounds\rifle1.wav"
  Delete "$INSTDIR\assets\sounds\reload.wav"
  Delete "$INSTDIR\assets\sounds\plasmaSniper.wav"
  Delete "$INSTDIR\assets\sounds\pistolShot.wav"
  Delete "$INSTDIR\assets\sounds\pain6.wav"
  Delete "$INSTDIR\assets\sounds\pain5.wav"
  Delete "$INSTDIR\assets\sounds\pain4.wav"
  Delete "$INSTDIR\assets\sounds\pain3.wav"
  Delete "$INSTDIR\assets\sounds\pain2.wav"
  Delete "$INSTDIR\assets\sounds\pain1.wav"
  Delete "$INSTDIR\assets\sounds\orbBounce.wav"
  Delete "$INSTDIR\assets\sounds\orb.wav"
  Delete "$INSTDIR\assets\sounds\openDialogue.wav"
  Delete "$INSTDIR\assets\sounds\meleeHit.wav"
  Delete "$INSTDIR\assets\sounds\meleeEnemyHit.wav"
  Delete "$INSTDIR\assets\sounds\meleeEnemyAttack.wav"
  Delete "$INSTDIR\assets\sounds\meleeDeath.wav"
  Delete "$INSTDIR\assets\sounds\melee.wav"
  Delete "$INSTDIR\assets\sounds\martyrMeleeHit.wav"
  Delete "$INSTDIR\assets\sounds\martyrHit.wav"
  Delete "$INSTDIR\assets\sounds\martyrExplosion.wav"
  Delete "$INSTDIR\assets\sounds\martyrDie.wav"
  Delete "$INSTDIR\assets\sounds\mainMenu.ogg"
  Delete "$INSTDIR\assets\sounds\jump.wav"
  Delete "$INSTDIR\assets\sounds\itempick1.wav"
  Delete "$INSTDIR\assets\sounds\helmetSpark.wav"
  Delete "$INSTDIR\assets\sounds\helmetDown.wav"
  Delete "$INSTDIR\assets\sounds\flySpenta.wav"
  Delete "$INSTDIR\assets\sounds\exampleVoice.wav"
  Delete "$INSTDIR\assets\sounds\example1.wav"
  Delete "$INSTDIR\assets\sounds\example.wav"
  Delete "$INSTDIR\assets\sounds\endGame-Credits.ogg"
  Delete "$INSTDIR\assets\sounds\emptyGun.wav"
  Delete "$INSTDIR\assets\sounds\duringBH.wav"
  Delete "$INSTDIR\assets\sounds\doorOpen.wav"
  Delete "$INSTDIR\assets\sounds\doorClose.wav"
  Delete "$INSTDIR\assets\sounds\die2.wav"
  Delete "$INSTDIR\assets\sounds\die1.wav"
  Delete "$INSTDIR\assets\sounds\dash.wav"
  Delete "$INSTDIR\assets\sounds\cutScene(Spenta-Queen).ogg"
  Delete "$INSTDIR\assets\sounds\closeDialogue.wav"
  Delete "$INSTDIR\assets\sounds\capsuleOpen.wav"
  Delete "$INSTDIR\assets\sounds\bullseyeHit.wav"
  Delete "$INSTDIR\assets\sounds\bulletGround.wav"
  Delete "$INSTDIR\assets\sounds\buddyHit3.wav"
  Delete "$INSTDIR\assets\sounds\buddyHit2.wav"
  Delete "$INSTDIR\assets\sounds\buddyHit1.wav"
  Delete "$INSTDIR\assets\sounds\boton.wav"
  Delete "$INSTDIR\assets\sounds\bossVoice.wav"
  Delete "$INSTDIR\assets\sounds\boss3Teleport.wav"
  Delete "$INSTDIR\assets\sounds\boss3Battle.ogg"
  Delete "$INSTDIR\assets\sounds\boss2Melee.wav"
  Delete "$INSTDIR\assets\sounds\boss2Land.wav"
  Delete "$INSTDIR\assets\sounds\boss2Jump.wav"
  Delete "$INSTDIR\assets\sounds\boss2Interfase.wav"
  Delete "$INSTDIR\assets\sounds\boss2Hit.wav"
  Delete "$INSTDIR\assets\sounds\boss2Die.wav"
  Delete "$INSTDIR\assets\sounds\boss2Battle.ogg"
  Delete "$INSTDIR\assets\sounds\boss1Interfase3.wav"
  Delete "$INSTDIR\assets\sounds\boss1Interfase2.wav"
  Delete "$INSTDIR\assets\sounds\boss1Interfase1.wav"
  Delete "$INSTDIR\assets\sounds\boss1Hit.wav"
  Delete "$INSTDIR\assets\sounds\boss1Die.wav"
  Delete "$INSTDIR\assets\sounds\boss1Battle.ogg"
  Delete "$INSTDIR\assets\sounds\bombthrow.wav"
  Delete "$INSTDIR\assets\sounds\bombexplosion.wav"
  Delete "$INSTDIR\assets\sounds\bomberDeath.wav"
  Delete "$INSTDIR\assets\sounds\blackHole.wav"
  Delete "$INSTDIR\assets\sounds\bgMusic.wav"
  Delete "$INSTDIR\assets\sounds\beeDeath.wav"
  Delete "$INSTDIR\assets\sounds\azuraCutScene.ogg"
  Delete "$INSTDIR\assets\sounds\angraGrunt.wav"
  Delete "$INSTDIR\assets\sounds\alarm.ogg"
  Delete "$INSTDIR\assets\fonts\arial.ttf"

  Delete "$SMPROGRAMS\Anyaroth\Uninstall.lnk"
  Delete "$SMPROGRAMS\Anyaroth\Website.lnk"
  Delete "$DESKTOP\Anyaroth.lnk"
  Delete "$SMPROGRAMS\Anyaroth\Anyaroth.lnk"

  RMDir "$SMPROGRAMS\Anyaroth"
  RMDir "$INSTDIR\files\tilemaps"
  RMDir "$INSTDIR\files\info"
  RMDir "$INSTDIR\bin"
  RMDir "$INSTDIR\assets\sprites"
  RMDir "$INSTDIR\assets\sounds"
  RMDir "$INSTDIR\assets\fonts"

  DeleteRegKey ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}"
  DeleteRegKey HKLM "${PRODUCT_DIR_REGKEY}"
  SetAutoClose true
SectionEnd