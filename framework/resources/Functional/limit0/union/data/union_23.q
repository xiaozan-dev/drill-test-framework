SELECT sum(c1),c3 FROM `union_01_v` group BY c3 UNION SELECT sum(c1),c3 FROM `union_02_v` group BY c3;