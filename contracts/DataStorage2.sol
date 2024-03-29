// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract DataStorage2 {
    uint256 public constant gridWidth = 33;
    uint256 public constant gridHeight = 18;

    uint256[gridWidth][gridWidth] public initialValues;
    constructor() {
      initialValues[0] = [51,100,150,200,260,310,360,410,460,510,560,610,660,710,770,820,870,920,970,1000,1100,1100,1200,1200,1300,1300,1400,1400,1500,1500,1600,1600,1700];
      initialValues[1] = [54,110,160,220,270,320,380,430,490,540,590,650,700,760,810,860,920,15000,16000,1100,1100,1200,1200,1300,1400,1400,1500,1500,1600,1600,1700,1700,1800];
      initialValues[2] = [57,110,170,230,290,340,400,460,510,570,630,680,740,800,860,910,15000,16000,18000,1100,1200,1300,1300,1400,1400,1500,1500,1600,1700,1700,1800,1800,1900];
      initialValues[3] = [60,120,180,240,300,360,420,480,540,600,660,10000,11000,12000,13000,960,16000,1100,19000,1200,1300,1300,1400,1400,1500,1600,1600,1700,1700,1800,1900,1900,2000];
      initialValues[4] = [63,130,190,250,320,380,440,500,570,630,9500,11000,12000,13000,950,16000,17000,1100,20000,1300,1300,1400,1400,1500,1600,1600,1700,1800,1800,1900,2000,2000,2100];
      initialValues[5] = [66,130,200,260,330,400,460,530,590,660,10000,11000,860,14000,990,1100,18000,1200,22000,1300,1400,1500,1500,1600,1700,1700,1800,1800,1900,2000,2000,2100,2200];
      initialValues[6] = [69,140,210,280,350,410,480,550,620,690,760,12000,900,15000,1000,1100,19000,1200,23000,1400,1400,1500,1600,1700,1700,1800,1900,1900,2000,2100,2100,2200,2300];
      initialValues[7] = [72,140,220,290,360,430,500,580,650,720,790,860,14000,1000,17000,1200,1200,1300,25000,1400,1500,1600,1700,1700,1800,1900,1900,2000,2100,2200,2200,2300,2400];
      initialValues[8] = [75,150,230,300,380,450,530,600,680,750,830,900,980,17000,1100,20000,1300,1400,26000,1500,1600,1700,1700,1800,1900,2000,2000,2100,2200,2300,2300,2400,2500];
      initialValues[9] = [78,160,230,310,390,470,550,620,700,780,13000,14000,16000,18000,19000,1200,23000,1400,28000,30000,32000,35000,1800,1900,2000,2000,2100,2200,2300,2300,2400,2500,2600];
      initialValues[10] = [81,160,240,320,410,490,570,650,730,12000,13000,15000,17000,19000,21000,22000,24000,27000,29000,32000,35000,38000,40000,44000,2000,2100,2200,2300,2300,2400,2500,2600,2700];
      initialValues[11] = [84,170,250,340,420,500,590,670,11000,13000,920,1000,1100,1200,1300,24000,26000,28000,1600,1700,1800,1800,1900,47000,51000,2200,2300,2400,2400,2500,2600,2700,2800];
      initialValues[12] = [87,170,260,350,440,520,610,10000,12000,870,960,1000,1100,1200,1300,1400,27000,1600,1700,1700,1800,1900,2000,2100,54000,58000,2300,2400,2500,2600,2700,2800,2900];
      initialValues[13] = [90,180,270,360,450,540,630,11000,12000,900,990,1100,1200,1300,1300,1400,29000,1600,1700,1800,1900,2000,2100,2200,57000,62000,2400,2500,2600,2700,2800,2900,3000];
      initialValues[14] = [93,190,280,370,460,560,650,740,13000,15000,1000,1100,1200,1300,1400,28000,30000,33000,1800,1900,2000,2000,2100,56000,61000,2400,2500,2600,2700,2800,2900,3000,3100];
      initialValues[15] = [96,190,290,380,480,580,670,770,860,15000,17000,19000,22000,24000,27000,29000,1600,35000,39000,42000,46000,50000,54000,59000,2400,2500,2600,2700,2800,2900,3000,3100,3200];
      initialValues[16] = [99,200,300,400,500,590,690,790,890,990,18000,20000,23000,25000,28000,1600,1700,1800,41000,45000,49000,53000,57000,2400,2500,2600,2700,2800,2900,3000,3100,3200,3300];
      initialValues[17] = [100,200,310,410,510,610,710,820,920,1000,1100,1200,1300,1400,1500,1600,1700,1800,1900,2000,2100,2200,2300,2400,2600,2700,2800,2900,3000,3100,3200,3300,3400];
  }
  
  string[gridWidth][gridWidth] public colorValues = [
      ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""],
      ["","","","","","","","","","","","","","","","","","#c8abf1","#c6a8f0","","","","","","","","","","","","","",""],
      ["","","","","","","","","","","","","","","","","#c9acf1","#c7a9f1","#c5a6f0","","","","","","","","","","","","","",""],
      ["","","","","","","","","","","","#d2b9f3","#d0b6f3","#ceb3f2","#ccb0f2","","#c8aaf1","","#c4a4f0","","","","","","","","","","","","","",""],
      ["","","","","","","","","","","#d2baf3","#d0b7f3","#ceb4f2","#ccb1f2","","#c9abf1","#c7a8f0","","#c3a2ef","","","","","","","","","","","","","",""],
      ["","","","","","","","","","","#d1b8f3","#cfb5f3","","#cbaff2","","","#c5a6f0","","#c1a0ef","","","","","","","","","","","","","",""],
      ["","","","","","","","","","","","#ceb3f2","","#caadf1","","","#c4a5f0","","#c09eef","","","","","","","","","","","","","",""],
      ["","","","","","","","","","","","","#cbaff1","","#c7a8f0","","","","#bf9cee","","","","","","","","","","","","","",""],
      ["","","","","","","","","","","","","","#c7a9f1","","#c4a4f0","","","#be9bee","","","","","","","","","","","","","",""],
      ["","","","","","","","","","","#ccb0f2","#caaef1","#c8abf1","#c6a8f0","#c4a5f0","","#c09eef","","#bc98ee","#bb96ed","#b993ed","#b790ec","","","","","","","","","","",""],
      ["","","","","","","","","","#cdb2f2","#cbaff1","#c9abf1","#c7a8f0","#c5a5f0","#c3a2ef","#c1a0ef","#bf9def","#bd9aee","#bb97ee","#b994ed","#b791ed","#b58eec","#b48bec","#b288eb","","","","","","","","",""],
      ["","","","","","","","","#cdb2f2","#cbaff2","","","","","","#c09eef","#be9bee","#bc98ee","","","","","","#b086eb","#ae83ea","","","","","","","",""],
      ["","","","","","","","#ceb3f2","#ccb1f2","","","","","","","","#bd99ee","","","","","","","","#ad81ea","#ab7eea","","","","","","",""],
      ["","","","","","","","#cdb2f2","#cbaff1","","","","","","","","#bb97ee","","","","","","","","#ac7fea","#aa7ce9","","","","","","",""],
      ["","","","","","","","","#caadf1","#c8aaf1","","","","","","#bc98ee","#ba95ed","#b892ed","","","","","","#ad80ea","#ab7de9","","","","","","","",""],
      ["","","","","","","","","","#c6a8f0","#c4a5f0","#c3a2ef","#c19fef","#bf9cee","#bd99ee","#bb96ed","","#b790ec","#b58dec","#b38aec","#b187eb","#af84eb","#ad81ea","#ab7eea","","","","","","","","",""],
      ["","","","","","","","","","","#c3a3f0","#c1a0ef","#bf9def","#bd9aee","#bb97ee","","","","#b48bec","#b288eb","#b085eb","#ae82ea","#ac80ea","","","","","","","","","",""],
      ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
  ];
}
