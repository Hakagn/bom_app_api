INSERT INTO part (partNumber, partName) VALUES
("II72176/S","MG-BREMS"),
("II72772/DELS","MAGNET MB67AS42-9"),
("II47650","SPORFORANKRING"),
("II46779","SPORFORANKRING MB72A84-57"),
("II18288","KONISK SKRUE ZE/L073"),
("II18305/AL","AKTIVERINGSSYLINDER BT110X145F30"),
("II70590","MEDBRINGERBELEGG"),
("450680","SKIVE"),
("468420","SEKSKANTSKRUE"),
("469650","SPENNSKIVE"),
("468354","SLANGEKLEMME"),
("394632","SILIKONSLANGE"),
("G05955","KLEMME"),
("467568","SEKSKANTSKRUE"),
("393253","SILIKONELEMENT E151I/9"),
("392519","KLIPSRØR"),
("392520","KLIPSRØR"),
("II70599/L","KIT FOR MSB"),
("II45856/DEL","SPOLEKJERNE NB.GL.100"),
("C136455/L","MELLOMLEDD NB.GL."),
("C136459/L","MELLOMLEDD NB.GL."),
("C136461/L","ENDESTYKKE NB.GL."),
("C136462/L","ENDESTYKKE NB.GL."),
("C136464/L","ENDESTYKKE NB.GL."),
("C136465/L","ENDESTYKKE NB.GL."),
("C135434","KANTLIST"),
("C135433","MELLOMLIST"),
("395440","SKJÆRERING"),
("468287","SYLINDERSKRUE"),
("468288","SYLINDERSKRUE"),
("466889","SPERREKANTRING"),
("394360","BOLT"),
("393057","PLUGG"),
("393118","SKILT"),
("467095","SEKSKANTSKRUE"),
("468387","SIKRINGSSKIVE"),
("II45975/E","KABELTILKOPLING"),
("393176","SKILT"),
("393131","TYPESKILT"),
("C90163","KABELFORSKRUNING"),
("II46345","LØSESKRUE 7228/DRIX1 M28X1"),
("B67874","O-RING"),
("393047","BESKYTTELSESHETTE"),
("467887","SEKSKANTMUTTER"),
("II45976/E","TILKOPLINGSKABEL"),
("C93067","SPORFORANKRING MB72A84-57"),
("C92900","BESKYTTELSESBOKS"),
("C92851","KABELBRØNN"),
("C92852","KABELBRØNN"),
("393243","KLEMME"),
("C20308/1","SEKSKANTMUTTER"),
("C20308/3","SEKSKANTMUTTER"),
("C20308/13","SEKSKANTMUTTER"),
("470588","SEKSKANTSKRUE"),
("474722","SEKSKANTSKRUE"),
("469394","SEKSKANTSKRUE"),
("476531","SKIVE"),
("476642","SKIVE"),
("476537","SKIVE"),
("469618","SEKSKANTSKRUE"),
("C59315","KONISK SKRUE"),
("467197","SEKSKANTMUTTER"),
("467196","SPENNSKIVE"),
("OPK00713","ORIGINALDEL-KIT"),
("II18306/L","SYLINDERLEGEME"),
("B31332","O-RING"),
("II18301","STEMPEL"),
("C75639","BAKKE"),
("467442","SPRENGRING"),
("C63424","BØSSING"),
("450953","SIKRINGSRING"),
("B65580/32","OVERGANGSBELG"),
("A52014/43","TØRRBØSSING"),
("B65582/48","TRYKKFJÆR"),
("B65582/49","TRYKKFJÆR"),
("B28546","SKIVE"),
("C63427/L","FLENS"),
("C63420","STYRERØR"),
("B38648/1","FLENSHYLSE"),
("I33758","STEMPELHYLSE"),
("450616","SPLINT"),
("A45396","SKIVE"),
("A28431/3","SLANGEKLEMME S63/9"),
("A28431/27","SLANGEKLEMME S124/9"),
("C105995","SKILT"),
("461300","KRONEMUTTER"),
("A39947/3","GJENGEHETTE"),
("C99570","BLIKKHYLSE"),
("II47168","MEDBRINGERBELEGG"),
("469361","SENKESKRUE"),
("469369","SEKSKANTMUTTER"),
("466059","SPERREKANTRING");

INSERT INTO supplier (supplierNumber, supplierName) VALUES 
("300000355", "Knorr Bremse"),
("300000885", "Faiveley");

INSERT INTO part_supplier (part_id, supplier_id) VALUES
(1, 1),
(2, 1),
(3, 1);

INSERT INTO bom (part_id, parentPart_id, quantity) VALUES
(1, NULL, 1),
(2, 1, 2),
(3, 1, 1),
(4, 1, 1),
(5, 1, 4),
(6, 1, 4),
(7, 1, 4),
(8, 1, 24),
(60, 1, 8),
(9, 1, 8),
(10, 1, 16),
(11, 1, 24),
(12, 1, 4),
(13, 1, 2),
(14, 1, 4),
(15, 1, 8),
(16, 1, 2),
(17, 1, 2),
(18, 2, 2);