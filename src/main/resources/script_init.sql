INSERT INTO `jobDescription` (`id`, `createDate`, `createdBy`, `name`, `updatedBy`, `updatedDate`) VALUES 
(NULL, NOW(), 'System', 'หน่วยงานภาครัฐ', NULL, NULL),
(NULL, NOW(), 'System','มหาวิทยาลัย', NULL, NULL),
(NULL, NOW(), 'System', 'นักศึกษา', NULL, NULL),
(NULL, NOW(), 'System','โรงงาน', NULL, NULL),
(NULL, NOW(), 'System', 'เอกชน/ตลาด/อื่น ๆ', NULL, NULL);

INSERT INTO `useraccount` (`id`, `createDate`, `createdBy`, `email`, `fax`, `firstName`, `isActive`, `isStaff`, `isSuperuser`, `lastName`, `lastlogin`, `organization`, `password`, `phone`, `position`, `title`, `updatedBy`, `updatedDate`, `username`, `workaddress`, `jobDescriptionId`) VALUES 
(NULL, NOW(), 'System', 'tentsut19@gmail.com', '', 'ธนารัตน์', '1', '0', '1', 'สุวรรณนันท์', NOW(), 'อื่น', '008cd8004262c0bf', '-', 'ผู้ดูแลระบบ', 'นาย', NULL, NULL, 'admin', '-', '5');


INSERT INTO `crossreference` (`id`, `characterCode`, `commodity`, `commodityProduct`, `ingredient`, `ingredientGroup`, `numericCode`) VALUES
(NULL, 'CG', 'Cereal grains', '0', 'ธัญพืช', '01', '010xxx'),
(NULL, 'CP', 'Cereal products', '9', 'ผลิตภัณฑ์จากธัญพืช', '01', '019xxx'),
(NULL, 'RT', 'Root and tuber', '0', 'พืชหัว', '02', '020xxx'),
(NULL, 'RP', 'Root and tuber products', '9', 'ผลิตภัณฑ์จากพืชหัว', '02', '029xxx'),
(NULL, 'BL', 'Dried bean, legume', '0', 'ถั่วเมล็ดแห้ง', '03', '030xxx'),
(NULL, 'BP', 'Bean and legume products', '9', 'ผลิตภัณฑ์จากถั่วเมล็ดแห้ง', '03', '039xxx'),
(NULL, 'SV', 'Seed vegetables', '0', 'เมล็ดพืช', '04', '040xxx'),
(NULL, 'SP', 'Seed products', '9', 'ผลิตภัณฑ์จากเมล็ดพืช', '04', '049xxx'),
(NULL, 'OS', 'Oilseeds', '0', 'เมล็ดพืชที่สร้างน้ำมันได้', '05', '050xxx'),
(NULL, 'OP', 'Oilseed products', '9', 'ผลิตภัณฑ์จากเมล็ดพืชที่สร้างน้ำมันได้', '05', '059xxx'),
(NULL, 'VB', 'Bulb vegetables', '0', 'ผัก หัว เช่น หัวหอม กระเทียม', '06', '0601xx'),
(NULL, 'VC', 'Flower vegetables', '0', 'ผักกินดอก', '06', '0602xx'),
(NULL, 'VF', 'Fruiting vegetables', '0', 'ผัก ผล', '06', '0603xx'),
(NULL, 'VM', 'Mushroom', '0', 'ผัก เห็ด', '06', '0604xx'),
(NULL, 'VL', 'Leafy vegetables', '0', 'ผัก ใบ', '06', '0605xx'),
(NULL, 'VS', 'Stalk and stem vegetables', '0', 'ผัก ลำต้น', '06', '0606xx'),
(NULL, 'VT', 'Sprout vegetables', '0', 'ผักที่ได้จากพืชที่งอก', '06', '0607xx'),
(NULL, 'VW', 'Seaweed and freshwater- weed', '0', 'สาหร่ายทะเล สาหร่ายน้ำจืด', '06', '0608xx'),
(NULL, 'VP', 'Vegetable products', '9', 'ผลิตภัณฑ์จากผัก', '06', '069xxx'),
(NULL, 'FF', 'Fruits', '0', 'ผลไม้', '07', '070xxx'),
(NULL, 'FP', 'Fruit products', '9', 'ผลิตภัณฑ์จากผลไม้ ผลไม้แปรรูป', '07', '079xxx'),
(NULL, 'TN', 'Tree nut', '0', 'ผลไม้จำพวกเปลือกแข็ง', '08', '080xxx'),
(NULL, 'TP', 'Tree nut products', '9', 'ผลิตภัณฑ์จากผลไม้เปลือกแข็ง', '08', '089xxx'),
(NULL, 'MM', 'Meat', '0', 'เนื้อสัตว์', '09', '090xxx'),
(NULL, 'MP', 'Meat products', '9', 'ผลิตภัณฑ์จากเนื้อสัตว์', '09', '099xxx'),
(NULL, 'PM', 'Poultry meat', '0', 'เนื้อสัตว์ปีก', '10', '100xxx'),
(NULL, 'PP', 'Poultry products', '9', 'ผลิตภัณฑ์จากเนื้อสัตว์ปีก', '10', '109xxx'),
(NULL, 'IN', 'Insect', '0', 'แมลง', '11', '110xxx'),
(NULL, 'WF', 'Freshwater aquatic animal', '0', 'สัตว์น้ำจืด', '12', '120xxx'),
(NULL, 'WP', 'Freshwater aquatic animal products', '9', 'ผลิตภัณฑ์จากสัตว์น้ำจืด', '12', '129xxx'),
(NULL, 'WS', 'Marine aquatic animal', '0', 'สัตว์น้ำเค็ม', '13', '130xxx'),
(NULL, 'AP', 'Marine aquatic animal products', '9', 'ผลิตภัณฑ์จากสัตว์น้ำเค็ม', '13', '139xxx'),
(NULL, 'PE', 'Poultry eggs', '0', 'ไข่', '14', '140xxx'),
(NULL, 'EP', 'Egg products', '9', 'ผลิตภัณฑ์จากไข่', '14', '149xxx'),
(NULL, 'DM', 'Milks/ Dairy', '0', 'นม', '15', '150xxx'),
(NULL, 'DP', 'Dairy products', '9', 'ผลิตภัณฑ์จากนม', '15', '159xxx'),
(NULL, 'OE', 'Edible oils and fats', '0', 'น้ำมัน ไขมัน', '16', '160xxx'),
(NULL, 'SH', 'Spices and herbs ', '0', 'เครื่องเทศ สมุนไพร', '17', '170xxx'),
(NULL, 'SC', 'Seasoning and condiments', '0', 'เครื่องปรุงรส', '18', '180xxx'),
(NULL, 'AL', 'Alcoholic/ liquor', '0', 'เครื่องดื่มที่มีอัลกอฮอล์', '19', '190xxx'),
(NULL, 'GS', 'Grasses for sugar or syrup production', '0', 'อ้อย พืชที่ใช้ผลิตน้ำตาล', '20', '200xxx'),
(NULL, 'GP', 'Grasses for sugar or syrup production products', '9', 'ผลิตภัณฑ์จากอ้อยหรือจากพืชที่ผลิตน้ำตาล', '20', '209xxx'),
(NULL, 'DT', 'Teas', '0', 'ชา (ใบ ยอด)', '21', '210xxx'),
(NULL, 'FS', 'Food supplement', '9', 'ผลิตภัณฑ์เสริมอาหาร', '22', '229xxx'),
(NULL, 'WA', 'Water', '0', 'น้ำ', '00', '000000');

INSERT INTO `unit` (`id`, `createDate`, `createdBy`, `updatedBy`, `updatedDate`) VALUES 
(NULL, NOW(), 'System', NULL, NULL);

INSERT INTO `unitLanguages` (`id`, `createDate`, `createdBy`, `locale`, `unitName`, `updatedBy`, `updatedDate`, `unitId`) VALUES 
(NULL, NOW(), 'System', 'TH', '(กรัม/คน/วัน)', NULL, NULL, 1);
-- 
INSERT INTO `unit` (`id`, `createDate`, `createdBy`, `updatedBy`, `updatedDate`) VALUES 
(NULL, NOW(), 'System', NULL, NULL);

INSERT INTO `unitLanguages` (`id`, `createDate`, `createdBy`, `locale`, `unitName`, `updatedBy`, `updatedDate`, `unitId`) VALUES 
(NULL, NOW(), 'System', 'TH', '(กรัม/กิโลกรัมน้ำหนักตัว/วัน)', NULL, NULL, 2);

INSERT INTO bodyWeight (id, ageGroup, male, female, boths) VALUES
(NULL, '0-2.9 ปี', '10.85', '10.24', '10.55'),
(NULL, '3-5.9 ปี', '17.47', '17.02', '17.25'),
(NULL, '6-12.9 ปี', '32.57', '34.31', '33.38'),
(NULL, '13-17.9 ปี', '56.28', '50.79', '53.42'),
(NULL, '18-34.9 ปี', '67.1', '59.63', '63.12'),
(NULL, '35-64.9 ปี', '65.88', '61.75', '63.53'),
(NULL, '65 ปีขึ้นไป', '58.54', '53.06', '55.77'),
(NULL, 'เฉลี่ยสำหรับอายุ 3 ปีขึ้นไป', '59.35', '56.03', '57.57'),
(NULL, 'เฉลี่ยทุกช่วงอายุ (ประชากรไทย)', '56.93', '54.16', '55.45');

INSERT INTO `measureType` (`id`, `createDate`, `createdBy`, `measureTypeName`, `updatedBy`, `updatedDate`) VALUES 
(NULL, NOW(), 'System', 'Per Capita', NULL, NULL),
(NULL, NOW(), 'System', 'Eater Only', NULL, NULL);

INSERT INTO `valueType` (`id`, `createDate`, `createdBy`, `updatedBy`, `updatedDate`, `valueTypeName`) VALUES 
(NULL, NOW(), 'System', NULL, NULL, 'Average'),
(NULL, NOW(), 'System', NULL, NULL, 'P99'),
(NULL, NOW(), 'System', NULL, NULL, 'P97d5'),
(NULL, NOW(), 'System', NULL, NULL, 'P95'),
(NULL, NOW(), 'System', NULL, NULL, 'P50'),
(NULL, NOW(), 'System', NULL, NULL, 'P10'),
(NULL, NOW(), 'System', NULL, NULL, 'P5');

INSERT INTO `ageRange` (`id`, `ageRange`, `createDate`, `createdBy`, `updatedBy`, `updatedDate`) VALUES 
(NULL, '3to6', NOW(), 'System', NULL, NULL),
(NULL, '6to13', NOW(), 'System', NULL, NULL),
(NULL, '13to18', NOW(), 'System', NULL, NULL),
(NULL, '18to35', NOW(), 'System', NULL, NULL),
(NULL, '35to65', NOW(), 'System', NULL, NULL),
(NULL, '65up', NOW(), 'System', NULL, NULL),
(NULL, '3up', NOW(), 'System', NULL, NULL);

INSERT INTO codeSettingCriteria (`id`, `code`, `foodGroup`, `locale`) VALUES
(NULL, '01xxx', 'ธัญพืชและผลิตภัณฑ์', 'TH'),
(NULL, '02xxx', 'พืชหัวและผลิตภัณฑ์', 'TH'),
(NULL, '03xxx', 'ถั่วเมล็ดแห้ง เมล็ดพืช และผลิตภัณฑ์', 'TH'),
(NULL, '04xxx', 'ผัก และผักแปรรูป', 'TH'),
(NULL, '05xxx', 'ผลไม้ และผลไม้แปรรูป', 'TH'),
(NULL, '06xxx', 'ไข่ และผลิตภัณฑ์', 'TH'),
(NULL, '07xxx', 'เนื้อสัตว์ และผลิตภัณฑ์', 'TH'),
(NULL, '08xxx', 'นม และผลิตภัณฑ์', 'TH'),
(NULL, '09xxx', 'ไอศกรีม', 'TH'),
(NULL, '10xxx', 'เครื่องดืมประเภทแอลกอฮอล์', 'TH'),
(NULL, '11xxx', 'เครื่องดืม', 'TH'),
(NULL, '12xxx', 'ขนมขบเคี้ยว', 'TH'),
(NULL, '13xxx', 'ขนมไทย', 'TH'),
(NULL, '14xxx', 'น้ำตาล และผลิตภัณฑ์', 'TH'),
(NULL, '15xxx', 'สารให้ความหวานแทนน้ำตาล', 'TH'),
(NULL, '16xxx', 'น้ำมัน ไขมัน และผลิตภัณฑ์', 'TH'),
(NULL, '17xxx', 'เครื่องปรุงรส', 'TH'),
(NULL, '18xxx', 'น้ำพริก', 'TH'),
(NULL, '19xxx', 'ผลิตภัณฑ์เสริมอาหาร', 'TH'),
(NULL, '20xxx', 'น้ำดืม', 'TH');

INSERT INTO codeSettingCriteria (`id`, `code`, `foodGroup`, `locale`) VALUES
(NULL, '01xxx', 'Cereal grains and their products', 'EN'),
(NULL, '02xxx', 'Tubers and their products', 'EN'),
(NULL, '03xxx', 'Beans, seeds and their products', 'EN'),
(NULL, '04xxx', 'Vegetables and their products', 'EN'),
(NULL, '05xxx', 'Fruits and their products', 'EN'),
(NULL, '06xxx', 'Eggs and their products', 'EN'),
(NULL, '07xxx', 'Meat, aquatic animals and their products', 'EN'),
(NULL, '08xxx', 'Milk and their products', 'EN'),
(NULL, '09xxx', 'Ice cream', 'EN'),
(NULL, '10xxx', 'Alcoholic beverages', 'EN'),
(NULL, '11xxx', 'Soft drinks/ non-alcoholic beverages', 'EN'),
(NULL, '12xxx', 'Snacks', 'EN'),
(NULL, '13xxx', 'Thai desserts', 'EN'),
(NULL, '14xxx', 'Sugars and their products', 'EN'),
(NULL, '15xxx', 'Artificial sweeteners', 'EN'),
(NULL, '16xxx', 'Lipid (fat and oil) and their products', 'EN'),
(NULL, '17xxx', 'Seasonings', 'EN'),
(NULL, '18xxx', 'Chili pastes', 'EN'),
(NULL, '19xxx', 'Food supplement products', 'EN'),
(NULL, '20xxx', 'Water', 'EN');

INSERT INTO `foodCategory` (`id`, `createDate`, `createdBy`, `parent`, `seq`, `templateCode`, `updatedBy`, `updatedDate`, `unitId`) VALUES 
(NULL, CURRENT_TIMESTAMP, 'System', '1', '01', '01xxx', NULL, NULL, NULL),
(NULL, CURRENT_TIMESTAMP, 'System', '1', '02', '02xxx', NULL, NULL, NULL),
(NULL, CURRENT_TIMESTAMP, 'System', '1', '03', '03xxx', NULL, NULL, NULL),
(NULL, CURRENT_TIMESTAMP, 'System', '1', '04', '04xxx', NULL, NULL, NULL),
(NULL, CURRENT_TIMESTAMP, 'System', '1', '05', '05xxx', NULL, NULL, NULL),
(NULL, CURRENT_TIMESTAMP, 'System', '1', '06', '06xxx', NULL, NULL, NULL),
(NULL, CURRENT_TIMESTAMP, 'System', '1', '07', '07xxx', NULL, NULL, NULL),
(NULL, CURRENT_TIMESTAMP, 'System', '1', '08', '08xxx', NULL, NULL, NULL),
(NULL, CURRENT_TIMESTAMP, 'System', '1', '09', '09xxx', NULL, NULL, NULL),
(NULL, CURRENT_TIMESTAMP, 'System', '1', '10', '10xxx', NULL, NULL, NULL),
(NULL, CURRENT_TIMESTAMP, 'System', '1', '11', '11xxx', NULL, NULL, NULL),
(NULL, CURRENT_TIMESTAMP, 'System', '1', '12', '12xxx', NULL, NULL, NULL),
(NULL, CURRENT_TIMESTAMP, 'System', '1', '13', '13xxx', NULL, NULL, NULL),
(NULL, CURRENT_TIMESTAMP, 'System', '1', '14', '14xxx', NULL, NULL, NULL),
(NULL, CURRENT_TIMESTAMP, 'System', '1', '15', '15xxx', NULL, NULL, NULL),
(NULL, CURRENT_TIMESTAMP, 'System', '1', '16', '16xxx', NULL, NULL, NULL),
(NULL, CURRENT_TIMESTAMP, 'System', '1', '17', '17xxx', NULL, NULL, NULL),
(NULL, CURRENT_TIMESTAMP, 'System', '1', '18', '18xxx', NULL, NULL, NULL),
(NULL, CURRENT_TIMESTAMP, 'System', '1', '19', '19xxx', NULL, NULL, NULL),
(NULL, CURRENT_TIMESTAMP, 'System', '1', '20', '20xxx', NULL, NULL, NULL);

INSERT INTO `foodCategoryLanguages` (`id`, `createDate`, `createdBy`, `foodCategoryName`, `locale`, `updatedBy`, `updatedDate`, `foodCategoryId`) VALUES 
(NULL,CURRENT_TIMESTAMP, 'System', 'ธัญพืชและผลิตภัณฑ์', 'TH', NULL, NULL, '1'),
(NULL,CURRENT_TIMESTAMP, 'System', 'พืชหัวและผลิตภัณฑ์', 'TH', NULL, NULL, '2'),
(NULL,CURRENT_TIMESTAMP, 'System', 'ถั่วเมล็ดแห้ง เมล็ดพืช และผลิตภัณฑ์', 'TH', NULL, NULL, '3'),
(NULL,CURRENT_TIMESTAMP, 'System', 'ผัก และผักแปรรูป', 'TH', NULL, NULL, '4'),
(NULL,CURRENT_TIMESTAMP, 'System', 'ผลไม้ และผลไม้แปรรูป', 'TH', NULL, NULL, '5'),
(NULL,CURRENT_TIMESTAMP, 'System', 'ไข่ และผลิตภัณฑ์', 'TH', NULL, NULL, '6'),
(NULL,CURRENT_TIMESTAMP, 'System', 'เนื้อสัตว์ และผลิตภัณฑ์', 'TH', NULL, NULL, '7'),
(NULL,CURRENT_TIMESTAMP, 'System', 'นม และผลิตภัณฑ์', 'TH', NULL, NULL, '8'),
(NULL,CURRENT_TIMESTAMP, 'System', 'ไอศกรีม', 'TH', NULL, NULL, '9'),
(NULL,CURRENT_TIMESTAMP, 'System', 'เครื่องดืมประเภทแอลกอฮอล์', 'TH', NULL, NULL, '10'),
(NULL,CURRENT_TIMESTAMP, 'System', 'เครื่องดืม', 'TH', NULL, NULL, '11'),
(NULL,CURRENT_TIMESTAMP, 'System', 'ขนมขบเคี้ยว', 'TH', NULL, NULL, '12'),
(NULL,CURRENT_TIMESTAMP, 'System', 'ขนมไทย', 'TH', NULL, NULL, '13'),
(NULL,CURRENT_TIMESTAMP, 'System', 'น้ำตาล และผลิตภัณฑ์', 'TH', NULL, NULL, '14'),
(NULL,CURRENT_TIMESTAMP, 'System', 'สารให้ความหวานแทนน้ำตาล', 'TH', NULL, NULL, '15'),
(NULL,CURRENT_TIMESTAMP, 'System', 'น้ำมัน ไขมัน และผลิตภัณฑ์', 'TH', NULL, NULL, '16'),
(NULL,CURRENT_TIMESTAMP, 'System', 'เครื่องปรุงรส', 'TH', NULL, NULL, '17'),
(NULL,CURRENT_TIMESTAMP, 'System', 'น้ำพริก', 'TH', NULL, NULL, '18'),
(NULL,CURRENT_TIMESTAMP, 'System', 'ผลิตภัณฑ์เสริมอาหาร', 'TH', NULL, NULL, '19'),
(NULL,CURRENT_TIMESTAMP, 'System', 'น้ำดืม', 'TH', NULL, NULL, '20');


INSERT INTO `reference` (`id`, `reference`, `createDate`, `createdBy`, `updatedBy`, `updatedDate`) VALUES 
(NULL, 'USDA. (2015).  Food Composition Databases.  United States Department of Agriculture, Agricultural Research Service. National Nutrient Database for Standard Reference Release 28. Retrieved on Sept 15, 2016 from https://ndb.nal.usda.gov/ndb/search/list. ', NOW(), 'System', NULL, NULL),
(NULL, 'Judprasong, K., P. Puwastien, A. Nitithamyong, P. Sridonpai and A. Somjai. (2015).  Thai Food Composition Database. Institute of Nutrition, Mahidol University, Online version 1, January 2016, Thailand. Retrieved on May 15, 2016 from http://www.inmu.mahidol.ac.th/thaifcd..', NOW(), 'System', NULL, NULL),
(NULL, 'MyFCD. (2011). Malaysian Food Composition Database. Food Composition Database Programme. c/o Institute for Medical Research, Kuala Lumpur. Retrieved on April 19, 2016 from  http://myfcd.moh.gov.my/index.php/1997-food-compositon-database.', NOW(), 'System', NULL, NULL),
(NULL, 'Ciqual (2013). French food composition databank. Retrieved on April 18, 2016 from https://pro.anses.fr/TableCIQUAL/.', NOW(), 'System', NULL, NULL),
(NULL, 'อรพินท์ บรรจง, โสภา ธมโชติพงศ์, พัศมัย เอกก้านตรง และคณะ. (2549). Food Composition Database ND 3.3  for INMUCAL PROGRAM. นครปฐม: สถาบันวิจัยโภชนาการ มหาวิทยาลัยมหิดล', NOW(), 'System', NULL, NULL),
(NULL, 'ธรา วิริยะพานิช, อรพินท์ บรรจง, พัศมัย เอกก้านตรง และคณะ. (2549). Food Quantity Conversion and INMUCAL Food Code. นครปฐม:สถาบันวิจัยโภชนาการ มหาวิทยาลัยมหิดล.', NOW(), 'System', NULL, NULL),
(NULL, 'ธรา วิริยะพานิช, อรพินท์ บรรจง, พัศมัย เอกก้านตรง และคณะ. (2545). Food Composition Database ND.2 for INMUCAL PROGRAM. นครปฐม: สถาบันวิจัยโภชนาการ มหาวิทยาลัยมหิดล.', NOW(), 'System', NULL, NULL),
(NULL, 'USDA. (2006).  Food Composition Databases.  United States Department of Agriculture, Agricultural Research Service.USDA National Nutrient Database for Standard Reference, Release 19.  Retrieved on October 1, 2006 from http://www.ars.usda.gov/Services/docs.htm?docid=13726.', NOW(), 'System', NULL, NULL),
(NULL, 'กรมอนามัย. (2545). ตารางแสดงคุณค่าทางโภชนาการของอาหารไทย. กรุงเทพฯ: กระทรวงสาธารณสุข.', NOW(), 'System', NULL, NULL),
(NULL, 'Gebhardt S. E. and R. G. Thomas. 2002. Nutritive Value of Foods, Home and Garden Bulletin 72 (HG-72). Retrieved on October 5,2007 from http://www.nal.usda.gov/fnic/foodcomp/Data/HG72/hg72.html', NOW(), 'System', NULL, NULL),
(NULL, 'Gebhardt SE, Thomas RG. 2002. Nutritive Value of Foods. U.S. Department of Agriculture, Agricultural Research Service, Home and Garden Bulletin 72. Retrieved on October 5 , 2007 from http://www.nal.usda.gov/fnic/foodcomp/Data/HG72/hg72_2002.pdf.', NOW(), 'System', NULL, NULL),
(NULL, 'จากการทดลอง ปี 2549 ตามวิธีการของ AOAC. (1995). Official methods of analysis of AOAC international. 16th (ed.). The Association of Official Analytical Chemists, Arlington, VA', NOW(), 'System', NULL, NULL),
(NULL, 'อรพินท์ บรรจง, อุไรพร  จิตต์แจ้ง, พัศมัย เอกก้านตรง, ชญานิษฐ์ วานิจจะกูล, อทิตดา บุญประเดิม, พรรณี พรประชานุวัฒน์ และสุฑาทิพย์ อนันทสุข. (2556). Food Quantity Conversion and INMUCAL Food Code NB1. นครปฐม:  สถาบันวิจัยโภชนาการ มหาวิทยาลัยมหิดล', NOW(), 'System', NULL, NULL),
(NULL, 'Persennel communication จาก รศ.ธรา วิริยะพานิช', NOW(), 'System', NULL, NULL),
(NULL, 'Souci S.W., W. Fachmann and H. Kraut. 1994. Food Composition and Nutrition Tables. Germany: medpharm GmbH Scientific Publishers', NOW(), 'System', NULL, NULL),
(NULL, 'จากการทดลอง ปี 2559 ตามวิธีการของ AOAC. (1995). Official methods of analysis of AOAC international. 16th (ed.). The Association of Official Analytical Chemists, Arlington, VA.', NOW(), 'System', NULL, NULL),
(NULL, 'Brown, A. 2011. Understanding Food: Principles and preparation. 4th ed., Wadsworth, Australia.', NOW(), 'System', NULL, NULL),
(NULL, 'สำนักงานมาตรฐานสินค้าเกษตรและอาหารแห่งชาติ. (2550). ฐานข้อมูลบริมาณอาหารที่คนไทยบริโภค. เรียกจาก  http://consumption.acfs.go.th/index.php  เมื่อวันที่ 7 เมษายน 2559.', NOW(), 'System', NULL, NULL),
(NULL, 'ข้อมูลส่วนประกอบอาหารจากฉลากอาหารสำเร็จรูปต่างๆ ที่ใช้ในการสำรวจปริมาณการบริโภคอาหารของคนไทย', NOW(), 'System', NULL, NULL);
