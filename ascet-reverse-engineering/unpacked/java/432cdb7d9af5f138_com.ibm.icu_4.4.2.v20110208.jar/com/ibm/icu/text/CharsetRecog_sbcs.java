/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.text;

import com.ibm.icu.text.ArabicShaping;
import com.ibm.icu.text.CharsetDetector;
import com.ibm.icu.text.CharsetRecognizer;
import java.nio.ByteBuffer;

abstract class CharsetRecog_sbcs
extends CharsetRecognizer {
    protected boolean haveC1Bytes = false;

    CharsetRecog_sbcs() {
    }

    abstract String getName();

    abstract int match(CharsetDetector var1);

    int match(CharsetDetector det, int[] ngrams, byte[] byteMap) {
        return this.match(det, ngrams, byteMap, (byte)32);
    }

    int match(CharsetDetector det, int[] ngrams, byte[] byteMap, byte spaceChar) {
        NGramParser parser = new NGramParser(ngrams, byteMap);
        this.haveC1Bytes = det.fC1Bytes;
        return parser.parse(det, spaceChar);
    }

    static abstract class CharsetRecog_8859_1
    extends CharsetRecog_sbcs {
        protected static byte[] byteMap;

        static {
            byte[] byArray = new byte[256];
            byArray[0] = 32;
            byArray[1] = 32;
            byArray[2] = 32;
            byArray[3] = 32;
            byArray[4] = 32;
            byArray[5] = 32;
            byArray[6] = 32;
            byArray[7] = 32;
            byArray[8] = 32;
            byArray[9] = 32;
            byArray[10] = 32;
            byArray[11] = 32;
            byArray[12] = 32;
            byArray[13] = 32;
            byArray[14] = 32;
            byArray[15] = 32;
            byArray[16] = 32;
            byArray[17] = 32;
            byArray[18] = 32;
            byArray[19] = 32;
            byArray[20] = 32;
            byArray[21] = 32;
            byArray[22] = 32;
            byArray[23] = 32;
            byArray[24] = 32;
            byArray[25] = 32;
            byArray[26] = 32;
            byArray[27] = 32;
            byArray[28] = 32;
            byArray[29] = 32;
            byArray[30] = 32;
            byArray[31] = 32;
            byArray[32] = 32;
            byArray[33] = 32;
            byArray[34] = 32;
            byArray[35] = 32;
            byArray[36] = 32;
            byArray[37] = 32;
            byArray[38] = 32;
            byArray[40] = 32;
            byArray[41] = 32;
            byArray[42] = 32;
            byArray[43] = 32;
            byArray[44] = 32;
            byArray[45] = 32;
            byArray[46] = 32;
            byArray[47] = 32;
            byArray[48] = 32;
            byArray[49] = 32;
            byArray[50] = 32;
            byArray[51] = 32;
            byArray[52] = 32;
            byArray[53] = 32;
            byArray[54] = 32;
            byArray[55] = 32;
            byArray[56] = 32;
            byArray[57] = 32;
            byArray[58] = 32;
            byArray[59] = 32;
            byArray[60] = 32;
            byArray[61] = 32;
            byArray[62] = 32;
            byArray[63] = 32;
            byArray[64] = 32;
            byArray[65] = 97;
            byArray[66] = 98;
            byArray[67] = 99;
            byArray[68] = 100;
            byArray[69] = 101;
            byArray[70] = 102;
            byArray[71] = 103;
            byArray[72] = 104;
            byArray[73] = 105;
            byArray[74] = 106;
            byArray[75] = 107;
            byArray[76] = 108;
            byArray[77] = 109;
            byArray[78] = 110;
            byArray[79] = 111;
            byArray[80] = 112;
            byArray[81] = 113;
            byArray[82] = 114;
            byArray[83] = 115;
            byArray[84] = 116;
            byArray[85] = 117;
            byArray[86] = 118;
            byArray[87] = 119;
            byArray[88] = 120;
            byArray[89] = 121;
            byArray[90] = 122;
            byArray[91] = 32;
            byArray[92] = 32;
            byArray[93] = 32;
            byArray[94] = 32;
            byArray[95] = 32;
            byArray[96] = 32;
            byArray[97] = 97;
            byArray[98] = 98;
            byArray[99] = 99;
            byArray[100] = 100;
            byArray[101] = 101;
            byArray[102] = 102;
            byArray[103] = 103;
            byArray[104] = 104;
            byArray[105] = 105;
            byArray[106] = 106;
            byArray[107] = 107;
            byArray[108] = 108;
            byArray[109] = 109;
            byArray[110] = 110;
            byArray[111] = 111;
            byArray[112] = 112;
            byArray[113] = 113;
            byArray[114] = 114;
            byArray[115] = 115;
            byArray[116] = 116;
            byArray[117] = 117;
            byArray[118] = 118;
            byArray[119] = 119;
            byArray[120] = 120;
            byArray[121] = 121;
            byArray[122] = 122;
            byArray[123] = 32;
            byArray[124] = 32;
            byArray[125] = 32;
            byArray[126] = 32;
            byArray[127] = 32;
            byArray[128] = 32;
            byArray[129] = 32;
            byArray[130] = 32;
            byArray[131] = 32;
            byArray[132] = 32;
            byArray[133] = 32;
            byArray[134] = 32;
            byArray[135] = 32;
            byArray[136] = 32;
            byArray[137] = 32;
            byArray[138] = 32;
            byArray[139] = 32;
            byArray[140] = 32;
            byArray[141] = 32;
            byArray[142] = 32;
            byArray[143] = 32;
            byArray[144] = 32;
            byArray[145] = 32;
            byArray[146] = 32;
            byArray[147] = 32;
            byArray[148] = 32;
            byArray[149] = 32;
            byArray[150] = 32;
            byArray[151] = 32;
            byArray[152] = 32;
            byArray[153] = 32;
            byArray[154] = 32;
            byArray[155] = 32;
            byArray[156] = 32;
            byArray[157] = 32;
            byArray[158] = 32;
            byArray[159] = 32;
            byArray[160] = 32;
            byArray[161] = 32;
            byArray[162] = 32;
            byArray[163] = 32;
            byArray[164] = 32;
            byArray[165] = 32;
            byArray[166] = 32;
            byArray[167] = 32;
            byArray[168] = 32;
            byArray[169] = 32;
            byArray[170] = -86;
            byArray[171] = 32;
            byArray[172] = 32;
            byArray[173] = 32;
            byArray[174] = 32;
            byArray[175] = 32;
            byArray[176] = 32;
            byArray[177] = 32;
            byArray[178] = 32;
            byArray[179] = 32;
            byArray[180] = 32;
            byArray[181] = -75;
            byArray[182] = 32;
            byArray[183] = 32;
            byArray[184] = 32;
            byArray[185] = 32;
            byArray[186] = -70;
            byArray[187] = 32;
            byArray[188] = 32;
            byArray[189] = 32;
            byArray[190] = 32;
            byArray[191] = 32;
            byArray[192] = -32;
            byArray[193] = -31;
            byArray[194] = -30;
            byArray[195] = -29;
            byArray[196] = -28;
            byArray[197] = -27;
            byArray[198] = -26;
            byArray[199] = -25;
            byArray[200] = -24;
            byArray[201] = -23;
            byArray[202] = -22;
            byArray[203] = -21;
            byArray[204] = -20;
            byArray[205] = -19;
            byArray[206] = -18;
            byArray[207] = -17;
            byArray[208] = -16;
            byArray[209] = -15;
            byArray[210] = -14;
            byArray[211] = -13;
            byArray[212] = -12;
            byArray[213] = -11;
            byArray[214] = -10;
            byArray[215] = 32;
            byArray[216] = -8;
            byArray[217] = -7;
            byArray[218] = -6;
            byArray[219] = -5;
            byArray[220] = -4;
            byArray[221] = -3;
            byArray[222] = -2;
            byArray[223] = -33;
            byArray[224] = -32;
            byArray[225] = -31;
            byArray[226] = -30;
            byArray[227] = -29;
            byArray[228] = -28;
            byArray[229] = -27;
            byArray[230] = -26;
            byArray[231] = -25;
            byArray[232] = -24;
            byArray[233] = -23;
            byArray[234] = -22;
            byArray[235] = -21;
            byArray[236] = -20;
            byArray[237] = -19;
            byArray[238] = -18;
            byArray[239] = -17;
            byArray[240] = -16;
            byArray[241] = -15;
            byArray[242] = -14;
            byArray[243] = -13;
            byArray[244] = -12;
            byArray[245] = -11;
            byArray[246] = -10;
            byArray[247] = 32;
            byArray[248] = -8;
            byArray[249] = -7;
            byArray[250] = -6;
            byArray[251] = -5;
            byArray[252] = -4;
            byArray[253] = -3;
            byArray[254] = -2;
            byArray[255] = -1;
            byteMap = byArray;
        }

        CharsetRecog_8859_1() {
        }

        public String getName() {
            return this.haveC1Bytes ? "windows-1252" : "ISO-8859-1";
        }
    }

    static class CharsetRecog_8859_1_da
    extends CharsetRecog_8859_1 {
        private static int[] ngrams = new int[]{2122086, 2122100, 2122853, 2123118, 2123122, 2123375, 2123873, 2124064, 2125157, 2125671, 2126053, 2126697, 2126708, 2126953, 2127465, 6383136, 6385184, 6385252, 6386208, 6386720, 6579488, 6579566, 6579570, 6579572, 6627443, 6644768, 0x656465, 6647328, 6647396, 6648352, 6648421, 6648608, 6648864, 6713202, 6776096, 6776174, 6776178, 6907749, 6908960, 6909543, 7038240, 0x6B6B65, 7103858, 7104871, 0x6C6C65, 7169380, 7234661, 7234848, 7235360, 7235429, 7300896, 7302432, 7303712, 7398688, 7479396, 7479397, 7479411, 7496992, 7566437, 7610483, 7628064, 7628146, 7629164, 7759218};

        CharsetRecog_8859_1_da() {
        }

        public String getLanguage() {
            return "da";
        }

        public int match(CharsetDetector det) {
            return this.match(det, ngrams, byteMap);
        }
    }

    static class CharsetRecog_8859_1_de
    extends CharsetRecog_8859_1 {
        private static int[] ngrams = new int[]{2122094, 2122101, 2122341, 2122849, 2122853, 2122857, 2123113, 2123621, 2123873, 2124142, 2125161, 2126691, 2126693, 2127214, 2127461, 2127471, 2127717, 2128501, 6448498, 6514720, 6514789, 6514804, 6578547, 6579566, 6579570, 6580581, 6627428, 6627443, 6646126, 6646132, 6647328, 6648352, 6648608, 6776174, 6841710, 6845472, 6906728, 6907168, 6909472, 6909541, 6911008, 7104867, 0x6C6C65, 7217249, 7217252, 7217267, 7234592, 7234661, 7234848, 7235360, 7235429, 7238757, 7479396, 7496805, 7497065, 7562088, 7566437, 7610468, 7628064, 7628142, 7628146, 7695972, 7695975, 7759218};

        CharsetRecog_8859_1_de() {
        }

        public String getLanguage() {
            return "de";
        }

        public int match(CharsetDetector det) {
            return this.match(det, ngrams, byteMap);
        }
    }

    static class CharsetRecog_8859_1_en
    extends CharsetRecog_8859_1 {
        private static int[] ngrams = new int[]{2122016, 2122094, 2122341, 2122607, 2123375, 2123873, 2123877, 2124142, 2125153, 2125670, 0x207072, 2126437, 2126689, 2126708, 2126952, 2126959, 2127720, 6383972, 6384672, 6385184, 6385252, 6386464, 6386720, 6386789, 6386793, 6561889, 6561908, 6627425, 6627443, 6627444, 6644768, 6647412, 6648352, 6648608, 6713202, 6840692, 6841632, 6841714, 6906912, 6909472, 6909543, 6909806, 6910752, 7217249, 7217268, 7234592, 7235360, 7238688, 7300640, 7302688, 7303712, 7496992, 7500576, 7544929, 7544948, 7561577, 7566368, 7610484, 7628146, 7628897, 7628901, 7629167, 7630624, 7631648};

        CharsetRecog_8859_1_en() {
        }

        public String getLanguage() {
            return "en";
        }

        public int match(CharsetDetector det) {
            return this.match(det, ngrams, byteMap);
        }
    }

    static class CharsetRecog_8859_1_es
    extends CharsetRecog_8859_1 {
        private static int[] ngrams = new int[]{2122016, 2122593, 2122607, 2122853, 2123116, 2123118, 2123123, 2124142, 2124897, 2124911, 2125921, 2125935, 0x207072, 2126197, 2126437, 2126693, 2127214, 2128160, 6365283, 6365284, 6365285, 6365292, 6365296, 6382441, 6382703, 6384672, 6386208, 6386464, 6515187, 6516590, 6579488, 6579564, 6582048, 6627428, 6627429, 6627436, 6646816, 6647328, 6647412, 6648608, 6648692, 6907246, 6943598, 7102752, 7106419, 7217253, 7238757, 7282788, 7282789, 7302688, 7303712, 7303968, 7364978, 7435621, 7495968, 7497075, 7544932, 7544933, 7544944, 7562528, 7628064, 7630624, 7693600, 15953440};

        CharsetRecog_8859_1_es() {
        }

        public String getLanguage() {
            return "es";
        }

        public int match(CharsetDetector det) {
            return this.match(det, ngrams, byteMap);
        }
    }

    static class CharsetRecog_8859_1_fr
    extends CharsetRecog_8859_1 {
        private static int[] ngrams = new int[]{2122101, 2122607, 2122849, 2122853, 2122869, 2123118, 2123124, 2124897, 2124901, 2125921, 2125935, 0x207072, 2126197, 2126693, 2126703, 2127214, 0x20E020, 6385268, 6386793, 6513952, 6516590, 6579488, 6579571, 6583584, 6627425, 6627427, 6627428, 6627429, 6627436, 6627440, 6627443, 6647328, 6647412, 6648352, 6648608, 6648864, 6649202, 6909806, 6910752, 6911008, 7102752, 7103776, 7103859, 7169390, 7217252, 7234848, 7238432, 7238688, 7302688, 7302772, 7304562, 7435621, 7479404, 7496992, 7544929, 7544932, 7544933, 7544940, 7544944, 7610468, 7628064, 7629167, 7693600, 7696928};

        CharsetRecog_8859_1_fr() {
        }

        public String getLanguage() {
            return "fr";
        }

        public int match(CharsetDetector det) {
            return this.match(det, ngrams, byteMap);
        }
    }

    static class CharsetRecog_8859_1_it
    extends CharsetRecog_8859_1 {
        private static int[] ngrams = new int[]{2122092, 2122600, 2122607, 2122853, 2122857, 2123040, 2124140, 2124142, 2124897, 2125925, 0x207072, 2127214, 6365283, 6365284, 6365296, 6365299, 6386799, 6514789, 6516590, 6579564, 6580512, 6627425, 6627427, 6627428, 6627433, 6627436, 6627440, 6627443, 6646816, 0x656C6C, 6647412, 6648352, 6841632, 6889569, 6889571, 6889572, 6889587, 6906144, 6908960, 6909472, 6909806, 7102752, 7103776, 7104800, 0x6C6C61, 7234848, 7235872, 7237408, 7238757, 7282785, 7282788, 7282793, 7282803, 7302688, 7302757, 7366002, 7495968, 7496992, 7563552, 7627040, 7628064, 7629088, 7630624, 8022383};

        CharsetRecog_8859_1_it() {
        }

        public String getLanguage() {
            return "it";
        }

        public int match(CharsetDetector det) {
            return this.match(det, ngrams, byteMap);
        }
    }

    static class CharsetRecog_8859_1_nl
    extends CharsetRecog_8859_1 {
        private static int[] ngrams = new int[]{2122092, 2122341, 2122849, 2122853, 2122857, 2123109, 2123118, 2123621, 2123877, 2124142, 2125153, 2125157, 2125680, 2126949, 2127457, 2127461, 2127471, 2127717, 2128489, 0x61616E, 6381938, 6385184, 6385252, 6386208, 6386720, 6514804, 6579488, 6579566, 6579570, 6627426, 6627446, 0x65656E, 6645106, 6647328, 6648352, 6648435, 6648864, 6776174, 6841716, 6907168, 6909472, 6909543, 6910752, 7217250, 7217252, 7217253, 7217256, 7217263, 7217270, 7234661, 7235360, 7302756, 7303026, 7303200, 7303712, 7562088, 7566437, 7610468, 7628064, 7628142, 7628146, 7758190, 7759218, 0x766F6F};

        CharsetRecog_8859_1_nl() {
        }

        public String getLanguage() {
            return "nl";
        }

        public int match(CharsetDetector det) {
            return this.match(det, ngrams, byteMap);
        }
    }

    static class CharsetRecog_8859_1_no
    extends CharsetRecog_8859_1 {
        private static int[] ngrams = new int[]{2122100, 2122102, 2122853, 2123118, 2123122, 2123375, 2123873, 2124064, 2125157, 2125671, 2126053, 2126693, 2126699, 2126703, 2126708, 2126953, 2127465, 2155808, 6385252, 6386208, 6386720, 6579488, 6579566, 6579572, 6627443, 6644768, 6647328, 0x656E65, 6648352, 6648421, 6648864, 6648948, 6713202, 6776174, 0x696B6B, 6908960, 6909543, 7038240, 0x6B6B65, 7103776, 0x6C6C65, 7169380, 7169390, 7217267, 7234848, 7235360, 7235429, 0x6E6E65, 7300896, 7302432, 7303712, 7398688, 7479411, 7496992, 7565165, 7566437, 7610483, 7628064, 7628142, 7628146, 7629164, 7631904, 7631973, 7759218};

        CharsetRecog_8859_1_no() {
        }

        public String getLanguage() {
            return "no";
        }

        public int match(CharsetDetector det) {
            return this.match(det, ngrams, byteMap);
        }
    }

    static class CharsetRecog_8859_1_pt
    extends CharsetRecog_8859_1 {
        private static int[] ngrams = new int[]{2122016, 2122607, 2122849, 2122853, 2122863, 2123040, 2123123, 2125153, 2125423, 2125600, 2125921, 2125935, 0x207072, 2126197, 2126437, 2126693, 2127213, 6365281, 6365283, 6365284, 6365296, 6382693, 6382703, 6384672, 6386208, 6386273, 6386464, 6516589, 6516590, 6578464, 6579488, 6582048, 6582131, 6627425, 6627428, 6647072, 6647412, 6648608, 6648692, 6906144, 6906721, 7169390, 7238757, 7238767, 7282785, 7282787, 7282788, 7282789, 7282800, 7303968, 7364978, 7435621, 7495968, 7497075, 7544929, 7544932, 7544933, 7544944, 7566433, 7628064, 7630624, 7693600, 14905120, 15197039};

        CharsetRecog_8859_1_pt() {
        }

        public String getLanguage() {
            return "pt";
        }

        public int match(CharsetDetector det) {
            return this.match(det, ngrams, byteMap);
        }
    }

    static class CharsetRecog_8859_1_sv
    extends CharsetRecog_8859_1 {
        private static int[] ngrams = new int[]{2122100, 2122102, 2122853, 2123118, 2123510, 2123873, 2124064, 2124142, 2124655, 2125157, 2125667, 2126053, 2126699, 2126703, 2126708, 2126953, 2127457, 2127465, 2155634, 6382693, 6385184, 6385252, 6386208, 6386804, 6514720, 6579488, 6579566, 6579570, 6579572, 6644768, 6647328, 6648352, 6648864, 6747762, 6776174, 0x696C6C, 6909543, 7037216, 7105568, 7169380, 7217267, 7233824, 7234661, 7235360, 7235429, 0x6E696E, 7299944, 7302432, 7302688, 7398688, 7479393, 7479411, 7495968, 7564129, 7565165, 7610483, 7627040, 7628064, 7628146, 7629164, 7631904, 7758194, 14971424, 16151072};

        CharsetRecog_8859_1_sv() {
        }

        public String getLanguage() {
            return "sv";
        }

        public int match(CharsetDetector det) {
            return this.match(det, ngrams, byteMap);
        }
    }

    static abstract class CharsetRecog_8859_2
    extends CharsetRecog_sbcs {
        protected static byte[] byteMap;

        static {
            byte[] byArray = new byte[256];
            byArray[0] = 32;
            byArray[1] = 32;
            byArray[2] = 32;
            byArray[3] = 32;
            byArray[4] = 32;
            byArray[5] = 32;
            byArray[6] = 32;
            byArray[7] = 32;
            byArray[8] = 32;
            byArray[9] = 32;
            byArray[10] = 32;
            byArray[11] = 32;
            byArray[12] = 32;
            byArray[13] = 32;
            byArray[14] = 32;
            byArray[15] = 32;
            byArray[16] = 32;
            byArray[17] = 32;
            byArray[18] = 32;
            byArray[19] = 32;
            byArray[20] = 32;
            byArray[21] = 32;
            byArray[22] = 32;
            byArray[23] = 32;
            byArray[24] = 32;
            byArray[25] = 32;
            byArray[26] = 32;
            byArray[27] = 32;
            byArray[28] = 32;
            byArray[29] = 32;
            byArray[30] = 32;
            byArray[31] = 32;
            byArray[32] = 32;
            byArray[33] = 32;
            byArray[34] = 32;
            byArray[35] = 32;
            byArray[36] = 32;
            byArray[37] = 32;
            byArray[38] = 32;
            byArray[40] = 32;
            byArray[41] = 32;
            byArray[42] = 32;
            byArray[43] = 32;
            byArray[44] = 32;
            byArray[45] = 32;
            byArray[46] = 32;
            byArray[47] = 32;
            byArray[48] = 32;
            byArray[49] = 32;
            byArray[50] = 32;
            byArray[51] = 32;
            byArray[52] = 32;
            byArray[53] = 32;
            byArray[54] = 32;
            byArray[55] = 32;
            byArray[56] = 32;
            byArray[57] = 32;
            byArray[58] = 32;
            byArray[59] = 32;
            byArray[60] = 32;
            byArray[61] = 32;
            byArray[62] = 32;
            byArray[63] = 32;
            byArray[64] = 32;
            byArray[65] = 97;
            byArray[66] = 98;
            byArray[67] = 99;
            byArray[68] = 100;
            byArray[69] = 101;
            byArray[70] = 102;
            byArray[71] = 103;
            byArray[72] = 104;
            byArray[73] = 105;
            byArray[74] = 106;
            byArray[75] = 107;
            byArray[76] = 108;
            byArray[77] = 109;
            byArray[78] = 110;
            byArray[79] = 111;
            byArray[80] = 112;
            byArray[81] = 113;
            byArray[82] = 114;
            byArray[83] = 115;
            byArray[84] = 116;
            byArray[85] = 117;
            byArray[86] = 118;
            byArray[87] = 119;
            byArray[88] = 120;
            byArray[89] = 121;
            byArray[90] = 122;
            byArray[91] = 32;
            byArray[92] = 32;
            byArray[93] = 32;
            byArray[94] = 32;
            byArray[95] = 32;
            byArray[96] = 32;
            byArray[97] = 97;
            byArray[98] = 98;
            byArray[99] = 99;
            byArray[100] = 100;
            byArray[101] = 101;
            byArray[102] = 102;
            byArray[103] = 103;
            byArray[104] = 104;
            byArray[105] = 105;
            byArray[106] = 106;
            byArray[107] = 107;
            byArray[108] = 108;
            byArray[109] = 109;
            byArray[110] = 110;
            byArray[111] = 111;
            byArray[112] = 112;
            byArray[113] = 113;
            byArray[114] = 114;
            byArray[115] = 115;
            byArray[116] = 116;
            byArray[117] = 117;
            byArray[118] = 118;
            byArray[119] = 119;
            byArray[120] = 120;
            byArray[121] = 121;
            byArray[122] = 122;
            byArray[123] = 32;
            byArray[124] = 32;
            byArray[125] = 32;
            byArray[126] = 32;
            byArray[127] = 32;
            byArray[128] = 32;
            byArray[129] = 32;
            byArray[130] = 32;
            byArray[131] = 32;
            byArray[132] = 32;
            byArray[133] = 32;
            byArray[134] = 32;
            byArray[135] = 32;
            byArray[136] = 32;
            byArray[137] = 32;
            byArray[138] = 32;
            byArray[139] = 32;
            byArray[140] = 32;
            byArray[141] = 32;
            byArray[142] = 32;
            byArray[143] = 32;
            byArray[144] = 32;
            byArray[145] = 32;
            byArray[146] = 32;
            byArray[147] = 32;
            byArray[148] = 32;
            byArray[149] = 32;
            byArray[150] = 32;
            byArray[151] = 32;
            byArray[152] = 32;
            byArray[153] = 32;
            byArray[154] = 32;
            byArray[155] = 32;
            byArray[156] = 32;
            byArray[157] = 32;
            byArray[158] = 32;
            byArray[159] = 32;
            byArray[160] = 32;
            byArray[161] = -79;
            byArray[162] = 32;
            byArray[163] = -77;
            byArray[164] = 32;
            byArray[165] = -75;
            byArray[166] = -74;
            byArray[167] = 32;
            byArray[168] = 32;
            byArray[169] = -71;
            byArray[170] = -70;
            byArray[171] = -69;
            byArray[172] = -68;
            byArray[173] = 32;
            byArray[174] = -66;
            byArray[175] = -65;
            byArray[176] = 32;
            byArray[177] = -79;
            byArray[178] = 32;
            byArray[179] = -77;
            byArray[180] = 32;
            byArray[181] = -75;
            byArray[182] = -74;
            byArray[183] = -73;
            byArray[184] = 32;
            byArray[185] = -71;
            byArray[186] = -70;
            byArray[187] = -69;
            byArray[188] = -68;
            byArray[189] = 32;
            byArray[190] = -66;
            byArray[191] = -65;
            byArray[192] = -32;
            byArray[193] = -31;
            byArray[194] = -30;
            byArray[195] = -29;
            byArray[196] = -28;
            byArray[197] = -27;
            byArray[198] = -26;
            byArray[199] = -25;
            byArray[200] = -24;
            byArray[201] = -23;
            byArray[202] = -22;
            byArray[203] = -21;
            byArray[204] = -20;
            byArray[205] = -19;
            byArray[206] = -18;
            byArray[207] = -17;
            byArray[208] = -16;
            byArray[209] = -15;
            byArray[210] = -14;
            byArray[211] = -13;
            byArray[212] = -12;
            byArray[213] = -11;
            byArray[214] = -10;
            byArray[215] = 32;
            byArray[216] = -8;
            byArray[217] = -7;
            byArray[218] = -6;
            byArray[219] = -5;
            byArray[220] = -4;
            byArray[221] = -3;
            byArray[222] = -2;
            byArray[223] = -33;
            byArray[224] = -32;
            byArray[225] = -31;
            byArray[226] = -30;
            byArray[227] = -29;
            byArray[228] = -28;
            byArray[229] = -27;
            byArray[230] = -26;
            byArray[231] = -25;
            byArray[232] = -24;
            byArray[233] = -23;
            byArray[234] = -22;
            byArray[235] = -21;
            byArray[236] = -20;
            byArray[237] = -19;
            byArray[238] = -18;
            byArray[239] = -17;
            byArray[240] = -16;
            byArray[241] = -15;
            byArray[242] = -14;
            byArray[243] = -13;
            byArray[244] = -12;
            byArray[245] = -11;
            byArray[246] = -10;
            byArray[247] = 32;
            byArray[248] = -8;
            byArray[249] = -7;
            byArray[250] = -6;
            byArray[251] = -5;
            byArray[252] = -4;
            byArray[253] = -3;
            byArray[254] = -2;
            byArray[255] = 32;
            byteMap = byArray;
        }

        CharsetRecog_8859_2() {
        }

        public String getName() {
            return this.haveC1Bytes ? "windows-1250" : "ISO-8859-2";
        }
    }

    static class CharsetRecog_8859_2_cs
    extends CharsetRecog_8859_2 {
        private static int[] ngrams = new int[]{2122016, 2122361, 2122863, 2124389, 2125409, 2125413, 2125600, 2125668, 2125935, 0x207072, 2126072, 2126447, 2126693, 2126703, 2126708, 2126959, 2127392, 2127481, 2128481, 6365296, 6513952, 6514720, 6627440, 6627443, 6627446, 6647072, 6647533, 6844192, 6844260, 6910836, 6972704, 7042149, 7103776, 7104800, 7233824, 7268640, 7269408, 7269664, 7282800, 7300206, 7301737, 7304052, 7304480, 7304801, 7368548, 7368554, 7369327, 7403621, 7562528, 7565173, 7566433, 7566441, 7566446, 7628146, 7630573, 7630624, 7676016, 12477728, 14773997, 15296623, 15540336, 15540339, 15559968, 16278884};

        CharsetRecog_8859_2_cs() {
        }

        public String getLanguage() {
            return "cs";
        }

        public int match(CharsetDetector det) {
            return this.match(det, ngrams, byteMap);
        }
    }

    static class CharsetRecog_8859_2_hu
    extends CharsetRecog_8859_2 {
        private static int[] ngrams = new int[]{2122016, 2122106, 2122341, 2123111, 2123116, 2123365, 2123873, 2123887, 2124147, 2124645, 2124649, 2124790, 2124901, 2125153, 2125157, 2125161, 2125413, 2126714, 2126949, 2156915, 6365281, 6365291, 6365293, 6365299, 6384416, 6385184, 6388256, 6447470, 6448494, 6645625, 6646560, 6646816, 0x656C65, 6647072, 6647328, 6648421, 6648864, 6648933, 6648948, 6781216, 6844263, 6909556, 6910752, 7020641, 7075450, 7169383, 7170414, 7217249, 7233899, 7234923, 7234925, 7238688, 7300985, 7544929, 7567973, 7567988, 7568097, 7596391, 7610465, 7631904, 7659891, 8021362, 14773792, 15299360};

        CharsetRecog_8859_2_hu() {
        }

        public String getLanguage() {
            return "hu";
        }

        public int match(CharsetDetector det) {
            return this.match(det, ngrams, byteMap);
        }
    }

    static class CharsetRecog_8859_2_pl
    extends CharsetRecog_8859_2 {
        private static int[] ngrams = new int[]{2122618, 2122863, 2124064, 2124389, 2124655, 2125153, 2125161, 2125409, 2125417, 2125668, 2125935, 0x207072, 2126697, 0x207720, 2127721, 2127737, 2128416, 2128481, 6365296, 6365303, 6385257, 6514720, 6519397, 6519417, 6582048, 6584937, 6627440, 6627443, 6627447, 6627450, 6645615, 6646304, 6647072, 6647401, 6778656, 6906144, 6907168, 6907242, 7037216, 7039264, 7039333, 7170405, 7233824, 7235937, 7235941, 7282800, 7305057, 7305065, 7368556, 7369313, 7369327, 7369338, 7502437, 7502457, 7563754, 7564137, 7566433, 7825765, 7955304, 7957792, 8021280, 8022373, 8026400, 15955744};

        CharsetRecog_8859_2_pl() {
        }

        public String getLanguage() {
            return "pl";
        }

        public int match(CharsetDetector det) {
            return this.match(det, ngrams, byteMap);
        }
    }

    static class CharsetRecog_8859_2_ro
    extends CharsetRecog_8859_2 {
        private static int[] ngrams = new int[]{2122016, 2122083, 2122593, 2122597, 2122607, 2122613, 2122853, 2122857, 2124897, 2125153, 2125925, 0x207072, 2126693, 2126819, 2127214, 2144873, 2158190, 6365283, 6365284, 6386277, 6386720, 6386789, 6386976, 6513010, 6516590, 6518048, 6546208, 6579488, 6627425, 6627427, 6627428, 6627440, 6627443, 6644000, 6646048, 0x656C65, 6647412, 6648692, 6889569, 6889571, 6889572, 6889584, 6907168, 6908192, 6909472, 7102752, 7103776, 7106418, 7107945, 7234848, 7238770, 7303712, 7365998, 7496992, 7497057, 7501088, 7594784, 7628064, 7631477, 7660320, 7694624, 7695392, 12216608, 15625760};

        CharsetRecog_8859_2_ro() {
        }

        public String getLanguage() {
            return "ro";
        }

        public int match(CharsetDetector det) {
            return this.match(det, ngrams, byteMap);
        }
    }

    static abstract class CharsetRecog_8859_5
    extends CharsetRecog_sbcs {
        protected static byte[] byteMap;

        static {
            byte[] byArray = new byte[256];
            byArray[0] = 32;
            byArray[1] = 32;
            byArray[2] = 32;
            byArray[3] = 32;
            byArray[4] = 32;
            byArray[5] = 32;
            byArray[6] = 32;
            byArray[7] = 32;
            byArray[8] = 32;
            byArray[9] = 32;
            byArray[10] = 32;
            byArray[11] = 32;
            byArray[12] = 32;
            byArray[13] = 32;
            byArray[14] = 32;
            byArray[15] = 32;
            byArray[16] = 32;
            byArray[17] = 32;
            byArray[18] = 32;
            byArray[19] = 32;
            byArray[20] = 32;
            byArray[21] = 32;
            byArray[22] = 32;
            byArray[23] = 32;
            byArray[24] = 32;
            byArray[25] = 32;
            byArray[26] = 32;
            byArray[27] = 32;
            byArray[28] = 32;
            byArray[29] = 32;
            byArray[30] = 32;
            byArray[31] = 32;
            byArray[32] = 32;
            byArray[33] = 32;
            byArray[34] = 32;
            byArray[35] = 32;
            byArray[36] = 32;
            byArray[37] = 32;
            byArray[38] = 32;
            byArray[40] = 32;
            byArray[41] = 32;
            byArray[42] = 32;
            byArray[43] = 32;
            byArray[44] = 32;
            byArray[45] = 32;
            byArray[46] = 32;
            byArray[47] = 32;
            byArray[48] = 32;
            byArray[49] = 32;
            byArray[50] = 32;
            byArray[51] = 32;
            byArray[52] = 32;
            byArray[53] = 32;
            byArray[54] = 32;
            byArray[55] = 32;
            byArray[56] = 32;
            byArray[57] = 32;
            byArray[58] = 32;
            byArray[59] = 32;
            byArray[60] = 32;
            byArray[61] = 32;
            byArray[62] = 32;
            byArray[63] = 32;
            byArray[64] = 32;
            byArray[65] = 97;
            byArray[66] = 98;
            byArray[67] = 99;
            byArray[68] = 100;
            byArray[69] = 101;
            byArray[70] = 102;
            byArray[71] = 103;
            byArray[72] = 104;
            byArray[73] = 105;
            byArray[74] = 106;
            byArray[75] = 107;
            byArray[76] = 108;
            byArray[77] = 109;
            byArray[78] = 110;
            byArray[79] = 111;
            byArray[80] = 112;
            byArray[81] = 113;
            byArray[82] = 114;
            byArray[83] = 115;
            byArray[84] = 116;
            byArray[85] = 117;
            byArray[86] = 118;
            byArray[87] = 119;
            byArray[88] = 120;
            byArray[89] = 121;
            byArray[90] = 122;
            byArray[91] = 32;
            byArray[92] = 32;
            byArray[93] = 32;
            byArray[94] = 32;
            byArray[95] = 32;
            byArray[96] = 32;
            byArray[97] = 97;
            byArray[98] = 98;
            byArray[99] = 99;
            byArray[100] = 100;
            byArray[101] = 101;
            byArray[102] = 102;
            byArray[103] = 103;
            byArray[104] = 104;
            byArray[105] = 105;
            byArray[106] = 106;
            byArray[107] = 107;
            byArray[108] = 108;
            byArray[109] = 109;
            byArray[110] = 110;
            byArray[111] = 111;
            byArray[112] = 112;
            byArray[113] = 113;
            byArray[114] = 114;
            byArray[115] = 115;
            byArray[116] = 116;
            byArray[117] = 117;
            byArray[118] = 118;
            byArray[119] = 119;
            byArray[120] = 120;
            byArray[121] = 121;
            byArray[122] = 122;
            byArray[123] = 32;
            byArray[124] = 32;
            byArray[125] = 32;
            byArray[126] = 32;
            byArray[127] = 32;
            byArray[128] = 32;
            byArray[129] = 32;
            byArray[130] = 32;
            byArray[131] = 32;
            byArray[132] = 32;
            byArray[133] = 32;
            byArray[134] = 32;
            byArray[135] = 32;
            byArray[136] = 32;
            byArray[137] = 32;
            byArray[138] = 32;
            byArray[139] = 32;
            byArray[140] = 32;
            byArray[141] = 32;
            byArray[142] = 32;
            byArray[143] = 32;
            byArray[144] = 32;
            byArray[145] = 32;
            byArray[146] = 32;
            byArray[147] = 32;
            byArray[148] = 32;
            byArray[149] = 32;
            byArray[150] = 32;
            byArray[151] = 32;
            byArray[152] = 32;
            byArray[153] = 32;
            byArray[154] = 32;
            byArray[155] = 32;
            byArray[156] = 32;
            byArray[157] = 32;
            byArray[158] = 32;
            byArray[159] = 32;
            byArray[160] = 32;
            byArray[161] = -15;
            byArray[162] = -14;
            byArray[163] = -13;
            byArray[164] = -12;
            byArray[165] = -11;
            byArray[166] = -10;
            byArray[167] = -9;
            byArray[168] = -8;
            byArray[169] = -7;
            byArray[170] = -6;
            byArray[171] = -5;
            byArray[172] = -4;
            byArray[173] = 32;
            byArray[174] = -2;
            byArray[175] = -1;
            byArray[176] = -48;
            byArray[177] = -47;
            byArray[178] = -46;
            byArray[179] = -45;
            byArray[180] = -44;
            byArray[181] = -43;
            byArray[182] = -42;
            byArray[183] = -41;
            byArray[184] = -40;
            byArray[185] = -39;
            byArray[186] = -38;
            byArray[187] = -37;
            byArray[188] = -36;
            byArray[189] = -35;
            byArray[190] = -34;
            byArray[191] = -33;
            byArray[192] = -32;
            byArray[193] = -31;
            byArray[194] = -30;
            byArray[195] = -29;
            byArray[196] = -28;
            byArray[197] = -27;
            byArray[198] = -26;
            byArray[199] = -25;
            byArray[200] = -24;
            byArray[201] = -23;
            byArray[202] = -22;
            byArray[203] = -21;
            byArray[204] = -20;
            byArray[205] = -19;
            byArray[206] = -18;
            byArray[207] = -17;
            byArray[208] = -48;
            byArray[209] = -47;
            byArray[210] = -46;
            byArray[211] = -45;
            byArray[212] = -44;
            byArray[213] = -43;
            byArray[214] = -42;
            byArray[215] = -41;
            byArray[216] = -40;
            byArray[217] = -39;
            byArray[218] = -38;
            byArray[219] = -37;
            byArray[220] = -36;
            byArray[221] = -35;
            byArray[222] = -34;
            byArray[223] = -33;
            byArray[224] = -32;
            byArray[225] = -31;
            byArray[226] = -30;
            byArray[227] = -29;
            byArray[228] = -28;
            byArray[229] = -27;
            byArray[230] = -26;
            byArray[231] = -25;
            byArray[232] = -24;
            byArray[233] = -23;
            byArray[234] = -22;
            byArray[235] = -21;
            byArray[236] = -20;
            byArray[237] = -19;
            byArray[238] = -18;
            byArray[239] = -17;
            byArray[240] = 32;
            byArray[241] = -15;
            byArray[242] = -14;
            byArray[243] = -13;
            byArray[244] = -12;
            byArray[245] = -11;
            byArray[246] = -10;
            byArray[247] = -9;
            byArray[248] = -8;
            byArray[249] = -7;
            byArray[250] = -6;
            byArray[251] = -5;
            byArray[252] = -4;
            byArray[253] = 32;
            byArray[254] = -2;
            byArray[255] = -1;
            byteMap = byArray;
        }

        CharsetRecog_8859_5() {
        }

        public String getName() {
            return "ISO-8859-5";
        }
    }

    static class CharsetRecog_8859_5_ru
    extends CharsetRecog_8859_5 {
        private static int[] ngrams = new int[]{0x20D220, 2151134, 2151646, 2152400, 2152480, 2153168, 2153182, 0x20DDD0, 2153941, 2154193, 2154462, 2154464, 2154704, 2154974, 2154978, 2155230, 2156514, 2158050, 0xD0DDD8, 13689580, 13884960, 14015468, 0xD5DDD8, 14016994, 14017056, 14164191, 14210336, 14211104, 14216992, 0xDBD5DD, 14407712, 14413021, 0xDDD020, 14538016, 0xDDD8D5, 14538991, 14540320, 0xDDDED2, 14557394, 14557407, 14557409, 14602784, 14602960, 0xDED3DE, 14604576, 14605292, 14605344, 14606818, 14671579, 14672085, 14672088, 14672094, 14733522, 14734804, 14803664, 14803666, 14803672, 14806816, 14865883, 14868000, 14868192, 14871584, 15196894, 15459616};

        CharsetRecog_8859_5_ru() {
        }

        public String getLanguage() {
            return "ru";
        }

        public int match(CharsetDetector det) {
            return this.match(det, ngrams, byteMap);
        }
    }

    static abstract class CharsetRecog_8859_6
    extends CharsetRecog_sbcs {
        protected static byte[] byteMap;

        static {
            byte[] byArray = new byte[256];
            byArray[0] = 32;
            byArray[1] = 32;
            byArray[2] = 32;
            byArray[3] = 32;
            byArray[4] = 32;
            byArray[5] = 32;
            byArray[6] = 32;
            byArray[7] = 32;
            byArray[8] = 32;
            byArray[9] = 32;
            byArray[10] = 32;
            byArray[11] = 32;
            byArray[12] = 32;
            byArray[13] = 32;
            byArray[14] = 32;
            byArray[15] = 32;
            byArray[16] = 32;
            byArray[17] = 32;
            byArray[18] = 32;
            byArray[19] = 32;
            byArray[20] = 32;
            byArray[21] = 32;
            byArray[22] = 32;
            byArray[23] = 32;
            byArray[24] = 32;
            byArray[25] = 32;
            byArray[26] = 32;
            byArray[27] = 32;
            byArray[28] = 32;
            byArray[29] = 32;
            byArray[30] = 32;
            byArray[31] = 32;
            byArray[32] = 32;
            byArray[33] = 32;
            byArray[34] = 32;
            byArray[35] = 32;
            byArray[36] = 32;
            byArray[37] = 32;
            byArray[38] = 32;
            byArray[40] = 32;
            byArray[41] = 32;
            byArray[42] = 32;
            byArray[43] = 32;
            byArray[44] = 32;
            byArray[45] = 32;
            byArray[46] = 32;
            byArray[47] = 32;
            byArray[48] = 32;
            byArray[49] = 32;
            byArray[50] = 32;
            byArray[51] = 32;
            byArray[52] = 32;
            byArray[53] = 32;
            byArray[54] = 32;
            byArray[55] = 32;
            byArray[56] = 32;
            byArray[57] = 32;
            byArray[58] = 32;
            byArray[59] = 32;
            byArray[60] = 32;
            byArray[61] = 32;
            byArray[62] = 32;
            byArray[63] = 32;
            byArray[64] = 32;
            byArray[65] = 97;
            byArray[66] = 98;
            byArray[67] = 99;
            byArray[68] = 100;
            byArray[69] = 101;
            byArray[70] = 102;
            byArray[71] = 103;
            byArray[72] = 104;
            byArray[73] = 105;
            byArray[74] = 106;
            byArray[75] = 107;
            byArray[76] = 108;
            byArray[77] = 109;
            byArray[78] = 110;
            byArray[79] = 111;
            byArray[80] = 112;
            byArray[81] = 113;
            byArray[82] = 114;
            byArray[83] = 115;
            byArray[84] = 116;
            byArray[85] = 117;
            byArray[86] = 118;
            byArray[87] = 119;
            byArray[88] = 120;
            byArray[89] = 121;
            byArray[90] = 122;
            byArray[91] = 32;
            byArray[92] = 32;
            byArray[93] = 32;
            byArray[94] = 32;
            byArray[95] = 32;
            byArray[96] = 32;
            byArray[97] = 97;
            byArray[98] = 98;
            byArray[99] = 99;
            byArray[100] = 100;
            byArray[101] = 101;
            byArray[102] = 102;
            byArray[103] = 103;
            byArray[104] = 104;
            byArray[105] = 105;
            byArray[106] = 106;
            byArray[107] = 107;
            byArray[108] = 108;
            byArray[109] = 109;
            byArray[110] = 110;
            byArray[111] = 111;
            byArray[112] = 112;
            byArray[113] = 113;
            byArray[114] = 114;
            byArray[115] = 115;
            byArray[116] = 116;
            byArray[117] = 117;
            byArray[118] = 118;
            byArray[119] = 119;
            byArray[120] = 120;
            byArray[121] = 121;
            byArray[122] = 122;
            byArray[123] = 32;
            byArray[124] = 32;
            byArray[125] = 32;
            byArray[126] = 32;
            byArray[127] = 32;
            byArray[128] = 32;
            byArray[129] = 32;
            byArray[130] = 32;
            byArray[131] = 32;
            byArray[132] = 32;
            byArray[133] = 32;
            byArray[134] = 32;
            byArray[135] = 32;
            byArray[136] = 32;
            byArray[137] = 32;
            byArray[138] = 32;
            byArray[139] = 32;
            byArray[140] = 32;
            byArray[141] = 32;
            byArray[142] = 32;
            byArray[143] = 32;
            byArray[144] = 32;
            byArray[145] = 32;
            byArray[146] = 32;
            byArray[147] = 32;
            byArray[148] = 32;
            byArray[149] = 32;
            byArray[150] = 32;
            byArray[151] = 32;
            byArray[152] = 32;
            byArray[153] = 32;
            byArray[154] = 32;
            byArray[155] = 32;
            byArray[156] = 32;
            byArray[157] = 32;
            byArray[158] = 32;
            byArray[159] = 32;
            byArray[160] = 32;
            byArray[161] = 32;
            byArray[162] = 32;
            byArray[163] = 32;
            byArray[164] = 32;
            byArray[165] = 32;
            byArray[166] = 32;
            byArray[167] = 32;
            byArray[168] = 32;
            byArray[169] = 32;
            byArray[170] = 32;
            byArray[171] = 32;
            byArray[172] = 32;
            byArray[173] = 32;
            byArray[174] = 32;
            byArray[175] = 32;
            byArray[176] = 32;
            byArray[177] = 32;
            byArray[178] = 32;
            byArray[179] = 32;
            byArray[180] = 32;
            byArray[181] = 32;
            byArray[182] = 32;
            byArray[183] = 32;
            byArray[184] = 32;
            byArray[185] = 32;
            byArray[186] = 32;
            byArray[187] = 32;
            byArray[188] = 32;
            byArray[189] = 32;
            byArray[190] = 32;
            byArray[191] = 32;
            byArray[192] = 32;
            byArray[193] = -63;
            byArray[194] = -62;
            byArray[195] = -61;
            byArray[196] = -60;
            byArray[197] = -59;
            byArray[198] = -58;
            byArray[199] = -57;
            byArray[200] = -56;
            byArray[201] = -55;
            byArray[202] = -54;
            byArray[203] = -53;
            byArray[204] = -52;
            byArray[205] = -51;
            byArray[206] = -50;
            byArray[207] = -49;
            byArray[208] = -48;
            byArray[209] = -47;
            byArray[210] = -46;
            byArray[211] = -45;
            byArray[212] = -44;
            byArray[213] = -43;
            byArray[214] = -42;
            byArray[215] = -41;
            byArray[216] = -40;
            byArray[217] = -39;
            byArray[218] = -38;
            byArray[219] = 32;
            byArray[220] = 32;
            byArray[221] = 32;
            byArray[222] = 32;
            byArray[223] = 32;
            byArray[224] = -32;
            byArray[225] = -31;
            byArray[226] = -30;
            byArray[227] = -29;
            byArray[228] = -28;
            byArray[229] = -27;
            byArray[230] = -26;
            byArray[231] = -25;
            byArray[232] = -24;
            byArray[233] = -23;
            byArray[234] = -22;
            byArray[235] = 32;
            byArray[236] = 32;
            byArray[237] = 32;
            byArray[238] = 32;
            byArray[239] = 32;
            byArray[240] = 32;
            byArray[241] = 32;
            byArray[242] = 32;
            byArray[243] = 32;
            byArray[244] = 32;
            byArray[245] = 32;
            byArray[246] = 32;
            byArray[247] = 32;
            byArray[248] = 32;
            byArray[249] = 32;
            byArray[250] = 32;
            byArray[251] = 32;
            byArray[252] = 32;
            byArray[253] = 32;
            byArray[254] = 32;
            byArray[255] = 32;
            byteMap = byArray;
        }

        CharsetRecog_8859_6() {
        }

        public String getName() {
            return "ISO-8859-6";
        }
    }

    static class CharsetRecog_8859_6_ar
    extends CharsetRecog_8859_6 {
        private static int[] ngrams = new int[]{2148324, 2148326, 2148551, 2152932, 2154986, 2155748, 2156006, 2156743, 13050055, 13091104, 13093408, 13095200, 13100064, 13100227, 13100231, 13100232, 13100234, 13100236, 13100237, 13100239, 13100243, 13100249, 13100258, 13100261, 13100264, 13100266, 13100320, 13100576, 13100746, 13115591, 13181127, 13181153, 13181156, 13181157, 13181160, 13246663, 13574343, 13617440, 13705415, 13748512, 13836487, 14229703, 14279913, 14805536, 14950599, 14993696, 15001888, 15002144, 15016135, 15058720, 15059232, 15066656, 15081671, 15147207, 15189792, 15255524, 15263264, 15278279, 15343815, 15343845, 15343848, 15386912, 15388960, 15394336};

        CharsetRecog_8859_6_ar() {
        }

        public String getLanguage() {
            return "ar";
        }

        public int match(CharsetDetector det) {
            return this.match(det, ngrams, byteMap);
        }
    }

    static abstract class CharsetRecog_8859_7
    extends CharsetRecog_sbcs {
        protected static byte[] byteMap;

        static {
            byte[] byArray = new byte[256];
            byArray[0] = 32;
            byArray[1] = 32;
            byArray[2] = 32;
            byArray[3] = 32;
            byArray[4] = 32;
            byArray[5] = 32;
            byArray[6] = 32;
            byArray[7] = 32;
            byArray[8] = 32;
            byArray[9] = 32;
            byArray[10] = 32;
            byArray[11] = 32;
            byArray[12] = 32;
            byArray[13] = 32;
            byArray[14] = 32;
            byArray[15] = 32;
            byArray[16] = 32;
            byArray[17] = 32;
            byArray[18] = 32;
            byArray[19] = 32;
            byArray[20] = 32;
            byArray[21] = 32;
            byArray[22] = 32;
            byArray[23] = 32;
            byArray[24] = 32;
            byArray[25] = 32;
            byArray[26] = 32;
            byArray[27] = 32;
            byArray[28] = 32;
            byArray[29] = 32;
            byArray[30] = 32;
            byArray[31] = 32;
            byArray[32] = 32;
            byArray[33] = 32;
            byArray[34] = 32;
            byArray[35] = 32;
            byArray[36] = 32;
            byArray[37] = 32;
            byArray[38] = 32;
            byArray[40] = 32;
            byArray[41] = 32;
            byArray[42] = 32;
            byArray[43] = 32;
            byArray[44] = 32;
            byArray[45] = 32;
            byArray[46] = 32;
            byArray[47] = 32;
            byArray[48] = 32;
            byArray[49] = 32;
            byArray[50] = 32;
            byArray[51] = 32;
            byArray[52] = 32;
            byArray[53] = 32;
            byArray[54] = 32;
            byArray[55] = 32;
            byArray[56] = 32;
            byArray[57] = 32;
            byArray[58] = 32;
            byArray[59] = 32;
            byArray[60] = 32;
            byArray[61] = 32;
            byArray[62] = 32;
            byArray[63] = 32;
            byArray[64] = 32;
            byArray[65] = 97;
            byArray[66] = 98;
            byArray[67] = 99;
            byArray[68] = 100;
            byArray[69] = 101;
            byArray[70] = 102;
            byArray[71] = 103;
            byArray[72] = 104;
            byArray[73] = 105;
            byArray[74] = 106;
            byArray[75] = 107;
            byArray[76] = 108;
            byArray[77] = 109;
            byArray[78] = 110;
            byArray[79] = 111;
            byArray[80] = 112;
            byArray[81] = 113;
            byArray[82] = 114;
            byArray[83] = 115;
            byArray[84] = 116;
            byArray[85] = 117;
            byArray[86] = 118;
            byArray[87] = 119;
            byArray[88] = 120;
            byArray[89] = 121;
            byArray[90] = 122;
            byArray[91] = 32;
            byArray[92] = 32;
            byArray[93] = 32;
            byArray[94] = 32;
            byArray[95] = 32;
            byArray[96] = 32;
            byArray[97] = 97;
            byArray[98] = 98;
            byArray[99] = 99;
            byArray[100] = 100;
            byArray[101] = 101;
            byArray[102] = 102;
            byArray[103] = 103;
            byArray[104] = 104;
            byArray[105] = 105;
            byArray[106] = 106;
            byArray[107] = 107;
            byArray[108] = 108;
            byArray[109] = 109;
            byArray[110] = 110;
            byArray[111] = 111;
            byArray[112] = 112;
            byArray[113] = 113;
            byArray[114] = 114;
            byArray[115] = 115;
            byArray[116] = 116;
            byArray[117] = 117;
            byArray[118] = 118;
            byArray[119] = 119;
            byArray[120] = 120;
            byArray[121] = 121;
            byArray[122] = 122;
            byArray[123] = 32;
            byArray[124] = 32;
            byArray[125] = 32;
            byArray[126] = 32;
            byArray[127] = 32;
            byArray[128] = 32;
            byArray[129] = 32;
            byArray[130] = 32;
            byArray[131] = 32;
            byArray[132] = 32;
            byArray[133] = 32;
            byArray[134] = 32;
            byArray[135] = 32;
            byArray[136] = 32;
            byArray[137] = 32;
            byArray[138] = 32;
            byArray[139] = 32;
            byArray[140] = 32;
            byArray[141] = 32;
            byArray[142] = 32;
            byArray[143] = 32;
            byArray[144] = 32;
            byArray[145] = 32;
            byArray[146] = 32;
            byArray[147] = 32;
            byArray[148] = 32;
            byArray[149] = 32;
            byArray[150] = 32;
            byArray[151] = 32;
            byArray[152] = 32;
            byArray[153] = 32;
            byArray[154] = 32;
            byArray[155] = 32;
            byArray[156] = 32;
            byArray[157] = 32;
            byArray[158] = 32;
            byArray[159] = 32;
            byArray[160] = 32;
            byArray[161] = -95;
            byArray[162] = -94;
            byArray[163] = 32;
            byArray[164] = 32;
            byArray[165] = 32;
            byArray[166] = 32;
            byArray[167] = 32;
            byArray[168] = 32;
            byArray[169] = 32;
            byArray[170] = 32;
            byArray[171] = 32;
            byArray[172] = 32;
            byArray[173] = 32;
            byArray[174] = 32;
            byArray[175] = 32;
            byArray[176] = 32;
            byArray[177] = 32;
            byArray[178] = 32;
            byArray[179] = 32;
            byArray[180] = 32;
            byArray[181] = 32;
            byArray[182] = -36;
            byArray[183] = 32;
            byArray[184] = -35;
            byArray[185] = -34;
            byArray[186] = -33;
            byArray[187] = 32;
            byArray[188] = -4;
            byArray[189] = 32;
            byArray[190] = -3;
            byArray[191] = -2;
            byArray[192] = -64;
            byArray[193] = -31;
            byArray[194] = -30;
            byArray[195] = -29;
            byArray[196] = -28;
            byArray[197] = -27;
            byArray[198] = -26;
            byArray[199] = -25;
            byArray[200] = -24;
            byArray[201] = -23;
            byArray[202] = -22;
            byArray[203] = -21;
            byArray[204] = -20;
            byArray[205] = -19;
            byArray[206] = -18;
            byArray[207] = -17;
            byArray[208] = -16;
            byArray[209] = -15;
            byArray[210] = 32;
            byArray[211] = -13;
            byArray[212] = -12;
            byArray[213] = -11;
            byArray[214] = -10;
            byArray[215] = -9;
            byArray[216] = -8;
            byArray[217] = -7;
            byArray[218] = -6;
            byArray[219] = -5;
            byArray[220] = -36;
            byArray[221] = -35;
            byArray[222] = -34;
            byArray[223] = -33;
            byArray[224] = -32;
            byArray[225] = -31;
            byArray[226] = -30;
            byArray[227] = -29;
            byArray[228] = -28;
            byArray[229] = -27;
            byArray[230] = -26;
            byArray[231] = -25;
            byArray[232] = -24;
            byArray[233] = -23;
            byArray[234] = -22;
            byArray[235] = -21;
            byArray[236] = -20;
            byArray[237] = -19;
            byArray[238] = -18;
            byArray[239] = -17;
            byArray[240] = -16;
            byArray[241] = -15;
            byArray[242] = -14;
            byArray[243] = -13;
            byArray[244] = -12;
            byArray[245] = -11;
            byArray[246] = -10;
            byArray[247] = -9;
            byArray[248] = -8;
            byArray[249] = -7;
            byArray[250] = -6;
            byArray[251] = -5;
            byArray[252] = -4;
            byArray[253] = -3;
            byArray[254] = -2;
            byArray[255] = 32;
            byteMap = byArray;
        }

        CharsetRecog_8859_7() {
        }

        public String getName() {
            return this.haveC1Bytes ? "windows-1253" : "ISO-8859-7";
        }
    }

    static class CharsetRecog_8859_7_el
    extends CharsetRecog_8859_7 {
        private static int[] ngrams = new int[]{2154989, 2154992, 2155497, 2155753, 2156016, 2156320, 2157281, 2157797, 2158049, 2158368, 2158817, 2158831, 2158833, 2159604, 2159605, 2159847, 2159855, 14672160, 14754017, 14754036, 14805280, 14806304, 14807292, 14807584, 14936545, 15067424, 15069728, 15147252, 15199520, 15200800, 15278324, 15327520, 15330014, 15331872, 15393257, 15393268, 15525152, 15540449, 15540453, 15540464, 15589664, 15725088, 15725856, 15790069, 15790575, 15793184, 15868129, 15868133, 15868138, 0xF220F0, 15868148, 15983904, 15984416, 15987951, 16048416, 16048617, 16050157, 16050162, 16050666, 16052000, 16052213, 16054765, 16379168, 16706848};

        CharsetRecog_8859_7_el() {
        }

        public String getLanguage() {
            return "el";
        }

        public int match(CharsetDetector det) {
            return this.match(det, ngrams, byteMap);
        }
    }

    static abstract class CharsetRecog_8859_8
    extends CharsetRecog_sbcs {
        protected static byte[] byteMap;

        static {
            byte[] byArray = new byte[256];
            byArray[0] = 32;
            byArray[1] = 32;
            byArray[2] = 32;
            byArray[3] = 32;
            byArray[4] = 32;
            byArray[5] = 32;
            byArray[6] = 32;
            byArray[7] = 32;
            byArray[8] = 32;
            byArray[9] = 32;
            byArray[10] = 32;
            byArray[11] = 32;
            byArray[12] = 32;
            byArray[13] = 32;
            byArray[14] = 32;
            byArray[15] = 32;
            byArray[16] = 32;
            byArray[17] = 32;
            byArray[18] = 32;
            byArray[19] = 32;
            byArray[20] = 32;
            byArray[21] = 32;
            byArray[22] = 32;
            byArray[23] = 32;
            byArray[24] = 32;
            byArray[25] = 32;
            byArray[26] = 32;
            byArray[27] = 32;
            byArray[28] = 32;
            byArray[29] = 32;
            byArray[30] = 32;
            byArray[31] = 32;
            byArray[32] = 32;
            byArray[33] = 32;
            byArray[34] = 32;
            byArray[35] = 32;
            byArray[36] = 32;
            byArray[37] = 32;
            byArray[38] = 32;
            byArray[40] = 32;
            byArray[41] = 32;
            byArray[42] = 32;
            byArray[43] = 32;
            byArray[44] = 32;
            byArray[45] = 32;
            byArray[46] = 32;
            byArray[47] = 32;
            byArray[48] = 32;
            byArray[49] = 32;
            byArray[50] = 32;
            byArray[51] = 32;
            byArray[52] = 32;
            byArray[53] = 32;
            byArray[54] = 32;
            byArray[55] = 32;
            byArray[56] = 32;
            byArray[57] = 32;
            byArray[58] = 32;
            byArray[59] = 32;
            byArray[60] = 32;
            byArray[61] = 32;
            byArray[62] = 32;
            byArray[63] = 32;
            byArray[64] = 32;
            byArray[65] = 97;
            byArray[66] = 98;
            byArray[67] = 99;
            byArray[68] = 100;
            byArray[69] = 101;
            byArray[70] = 102;
            byArray[71] = 103;
            byArray[72] = 104;
            byArray[73] = 105;
            byArray[74] = 106;
            byArray[75] = 107;
            byArray[76] = 108;
            byArray[77] = 109;
            byArray[78] = 110;
            byArray[79] = 111;
            byArray[80] = 112;
            byArray[81] = 113;
            byArray[82] = 114;
            byArray[83] = 115;
            byArray[84] = 116;
            byArray[85] = 117;
            byArray[86] = 118;
            byArray[87] = 119;
            byArray[88] = 120;
            byArray[89] = 121;
            byArray[90] = 122;
            byArray[91] = 32;
            byArray[92] = 32;
            byArray[93] = 32;
            byArray[94] = 32;
            byArray[95] = 32;
            byArray[96] = 32;
            byArray[97] = 97;
            byArray[98] = 98;
            byArray[99] = 99;
            byArray[100] = 100;
            byArray[101] = 101;
            byArray[102] = 102;
            byArray[103] = 103;
            byArray[104] = 104;
            byArray[105] = 105;
            byArray[106] = 106;
            byArray[107] = 107;
            byArray[108] = 108;
            byArray[109] = 109;
            byArray[110] = 110;
            byArray[111] = 111;
            byArray[112] = 112;
            byArray[113] = 113;
            byArray[114] = 114;
            byArray[115] = 115;
            byArray[116] = 116;
            byArray[117] = 117;
            byArray[118] = 118;
            byArray[119] = 119;
            byArray[120] = 120;
            byArray[121] = 121;
            byArray[122] = 122;
            byArray[123] = 32;
            byArray[124] = 32;
            byArray[125] = 32;
            byArray[126] = 32;
            byArray[127] = 32;
            byArray[128] = 32;
            byArray[129] = 32;
            byArray[130] = 32;
            byArray[131] = 32;
            byArray[132] = 32;
            byArray[133] = 32;
            byArray[134] = 32;
            byArray[135] = 32;
            byArray[136] = 32;
            byArray[137] = 32;
            byArray[138] = 32;
            byArray[139] = 32;
            byArray[140] = 32;
            byArray[141] = 32;
            byArray[142] = 32;
            byArray[143] = 32;
            byArray[144] = 32;
            byArray[145] = 32;
            byArray[146] = 32;
            byArray[147] = 32;
            byArray[148] = 32;
            byArray[149] = 32;
            byArray[150] = 32;
            byArray[151] = 32;
            byArray[152] = 32;
            byArray[153] = 32;
            byArray[154] = 32;
            byArray[155] = 32;
            byArray[156] = 32;
            byArray[157] = 32;
            byArray[158] = 32;
            byArray[159] = 32;
            byArray[160] = 32;
            byArray[161] = 32;
            byArray[162] = 32;
            byArray[163] = 32;
            byArray[164] = 32;
            byArray[165] = 32;
            byArray[166] = 32;
            byArray[167] = 32;
            byArray[168] = 32;
            byArray[169] = 32;
            byArray[170] = 32;
            byArray[171] = 32;
            byArray[172] = 32;
            byArray[173] = 32;
            byArray[174] = 32;
            byArray[175] = 32;
            byArray[176] = 32;
            byArray[177] = 32;
            byArray[178] = 32;
            byArray[179] = 32;
            byArray[180] = 32;
            byArray[181] = -75;
            byArray[182] = 32;
            byArray[183] = 32;
            byArray[184] = 32;
            byArray[185] = 32;
            byArray[186] = 32;
            byArray[187] = 32;
            byArray[188] = 32;
            byArray[189] = 32;
            byArray[190] = 32;
            byArray[191] = 32;
            byArray[192] = 32;
            byArray[193] = 32;
            byArray[194] = 32;
            byArray[195] = 32;
            byArray[196] = 32;
            byArray[197] = 32;
            byArray[198] = 32;
            byArray[199] = 32;
            byArray[200] = 32;
            byArray[201] = 32;
            byArray[202] = 32;
            byArray[203] = 32;
            byArray[204] = 32;
            byArray[205] = 32;
            byArray[206] = 32;
            byArray[207] = 32;
            byArray[208] = 32;
            byArray[209] = 32;
            byArray[210] = 32;
            byArray[211] = 32;
            byArray[212] = 32;
            byArray[213] = 32;
            byArray[214] = 32;
            byArray[215] = 32;
            byArray[216] = 32;
            byArray[217] = 32;
            byArray[218] = 32;
            byArray[219] = 32;
            byArray[220] = 32;
            byArray[221] = 32;
            byArray[222] = 32;
            byArray[223] = 32;
            byArray[224] = -32;
            byArray[225] = -31;
            byArray[226] = -30;
            byArray[227] = -29;
            byArray[228] = -28;
            byArray[229] = -27;
            byArray[230] = -26;
            byArray[231] = -25;
            byArray[232] = -24;
            byArray[233] = -23;
            byArray[234] = -22;
            byArray[235] = -21;
            byArray[236] = -20;
            byArray[237] = -19;
            byArray[238] = -18;
            byArray[239] = -17;
            byArray[240] = -16;
            byArray[241] = -15;
            byArray[242] = -14;
            byArray[243] = -13;
            byArray[244] = -12;
            byArray[245] = -11;
            byArray[246] = -10;
            byArray[247] = -9;
            byArray[248] = -8;
            byArray[249] = -7;
            byArray[250] = -6;
            byArray[251] = 32;
            byArray[252] = 32;
            byArray[253] = 32;
            byArray[254] = 32;
            byArray[255] = 32;
            byteMap = byArray;
        }

        CharsetRecog_8859_8() {
        }

        public String getName() {
            return this.haveC1Bytes ? "windows-1255" : "ISO-8859-8";
        }
    }

    static class CharsetRecog_8859_8_I_he
    extends CharsetRecog_8859_8 {
        private static int[] ngrams = new int[]{2154725, 2154727, 2154729, 2154746, 2154985, 2154990, 2155744, 2155749, 2155753, 2155758, 2155762, 2155769, 2155770, 2157792, 2157796, 0x20EEE0, 2159340, 2161132, 14744096, 14950624, 14950625, 14950628, 14950636, 14950638, 14950649, 15001056, 15065120, 15068448, 15068960, 15071264, 15071776, 15278308, 15328288, 15328762, 0xE9E9ED, 15330592, 15331104, 15333408, 15333920, 15474912, 15474916, 15523872, 15524896, 15540448, 15540449, 15540452, 15540460, 15540462, 15540473, 15655968, 15671524, 15787040, 15788320, 15788525, 15920160, 16261348, 16312813, 16378912, 16392416, 16392417, 16392420, 16392428, 16392430, 16392441};

        CharsetRecog_8859_8_I_he() {
        }

        public String getName() {
            return this.haveC1Bytes ? "windows-1255" : "ISO-8859-8";
        }

        public String getLanguage() {
            return "he";
        }

        public int match(CharsetDetector det) {
            return this.match(det, ngrams, byteMap);
        }
    }

    static class CharsetRecog_8859_8_he
    extends CharsetRecog_8859_8 {
        private static int[] ngrams = new int[]{2154725, 2154732, 2155753, 2155756, 2155758, 2155760, 2157040, 2157810, 2157817, 2158053, 2158057, 2158565, 2158569, 2160869, 2160873, 2161376, 2161381, 2161385, 14688484, 14688492, 14688493, 14688506, 14738464, 14738916, 14740512, 0xE0EE20, 14754020, 14754029, 14754042, 14950628, 14950633, 14950636, 14950637, 14950639, 14950648, 14950650, 15002656, 15065120, 15066144, 15196192, 15327264, 15327520, 15328288, 15474916, 15474925, 15474938, 15528480, 15530272, 0xEDE9E9, 15591920, 15591928, 15605988, 15605997, 15606010, 15655200, 15655968, 15918112, 16326884, 16326893, 16326906, 16376864, 16441376, 16442400, 16442857};

        CharsetRecog_8859_8_he() {
        }

        public String getLanguage() {
            return "he";
        }

        public int match(CharsetDetector det) {
            return this.match(det, ngrams, byteMap);
        }
    }

    static abstract class CharsetRecog_8859_9
    extends CharsetRecog_sbcs {
        protected static byte[] byteMap;

        static {
            byte[] byArray = new byte[256];
            byArray[0] = 32;
            byArray[1] = 32;
            byArray[2] = 32;
            byArray[3] = 32;
            byArray[4] = 32;
            byArray[5] = 32;
            byArray[6] = 32;
            byArray[7] = 32;
            byArray[8] = 32;
            byArray[9] = 32;
            byArray[10] = 32;
            byArray[11] = 32;
            byArray[12] = 32;
            byArray[13] = 32;
            byArray[14] = 32;
            byArray[15] = 32;
            byArray[16] = 32;
            byArray[17] = 32;
            byArray[18] = 32;
            byArray[19] = 32;
            byArray[20] = 32;
            byArray[21] = 32;
            byArray[22] = 32;
            byArray[23] = 32;
            byArray[24] = 32;
            byArray[25] = 32;
            byArray[26] = 32;
            byArray[27] = 32;
            byArray[28] = 32;
            byArray[29] = 32;
            byArray[30] = 32;
            byArray[31] = 32;
            byArray[32] = 32;
            byArray[33] = 32;
            byArray[34] = 32;
            byArray[35] = 32;
            byArray[36] = 32;
            byArray[37] = 32;
            byArray[38] = 32;
            byArray[40] = 32;
            byArray[41] = 32;
            byArray[42] = 32;
            byArray[43] = 32;
            byArray[44] = 32;
            byArray[45] = 32;
            byArray[46] = 32;
            byArray[47] = 32;
            byArray[48] = 32;
            byArray[49] = 32;
            byArray[50] = 32;
            byArray[51] = 32;
            byArray[52] = 32;
            byArray[53] = 32;
            byArray[54] = 32;
            byArray[55] = 32;
            byArray[56] = 32;
            byArray[57] = 32;
            byArray[58] = 32;
            byArray[59] = 32;
            byArray[60] = 32;
            byArray[61] = 32;
            byArray[62] = 32;
            byArray[63] = 32;
            byArray[64] = 32;
            byArray[65] = 97;
            byArray[66] = 98;
            byArray[67] = 99;
            byArray[68] = 100;
            byArray[69] = 101;
            byArray[70] = 102;
            byArray[71] = 103;
            byArray[72] = 104;
            byArray[73] = 105;
            byArray[74] = 106;
            byArray[75] = 107;
            byArray[76] = 108;
            byArray[77] = 109;
            byArray[78] = 110;
            byArray[79] = 111;
            byArray[80] = 112;
            byArray[81] = 113;
            byArray[82] = 114;
            byArray[83] = 115;
            byArray[84] = 116;
            byArray[85] = 117;
            byArray[86] = 118;
            byArray[87] = 119;
            byArray[88] = 120;
            byArray[89] = 121;
            byArray[90] = 122;
            byArray[91] = 32;
            byArray[92] = 32;
            byArray[93] = 32;
            byArray[94] = 32;
            byArray[95] = 32;
            byArray[96] = 32;
            byArray[97] = 97;
            byArray[98] = 98;
            byArray[99] = 99;
            byArray[100] = 100;
            byArray[101] = 101;
            byArray[102] = 102;
            byArray[103] = 103;
            byArray[104] = 104;
            byArray[105] = 105;
            byArray[106] = 106;
            byArray[107] = 107;
            byArray[108] = 108;
            byArray[109] = 109;
            byArray[110] = 110;
            byArray[111] = 111;
            byArray[112] = 112;
            byArray[113] = 113;
            byArray[114] = 114;
            byArray[115] = 115;
            byArray[116] = 116;
            byArray[117] = 117;
            byArray[118] = 118;
            byArray[119] = 119;
            byArray[120] = 120;
            byArray[121] = 121;
            byArray[122] = 122;
            byArray[123] = 32;
            byArray[124] = 32;
            byArray[125] = 32;
            byArray[126] = 32;
            byArray[127] = 32;
            byArray[128] = 32;
            byArray[129] = 32;
            byArray[130] = 32;
            byArray[131] = 32;
            byArray[132] = 32;
            byArray[133] = 32;
            byArray[134] = 32;
            byArray[135] = 32;
            byArray[136] = 32;
            byArray[137] = 32;
            byArray[138] = 32;
            byArray[139] = 32;
            byArray[140] = 32;
            byArray[141] = 32;
            byArray[142] = 32;
            byArray[143] = 32;
            byArray[144] = 32;
            byArray[145] = 32;
            byArray[146] = 32;
            byArray[147] = 32;
            byArray[148] = 32;
            byArray[149] = 32;
            byArray[150] = 32;
            byArray[151] = 32;
            byArray[152] = 32;
            byArray[153] = 32;
            byArray[154] = 32;
            byArray[155] = 32;
            byArray[156] = 32;
            byArray[157] = 32;
            byArray[158] = 32;
            byArray[159] = 32;
            byArray[160] = 32;
            byArray[161] = 32;
            byArray[162] = 32;
            byArray[163] = 32;
            byArray[164] = 32;
            byArray[165] = 32;
            byArray[166] = 32;
            byArray[167] = 32;
            byArray[168] = 32;
            byArray[169] = 32;
            byArray[170] = -86;
            byArray[171] = 32;
            byArray[172] = 32;
            byArray[173] = 32;
            byArray[174] = 32;
            byArray[175] = 32;
            byArray[176] = 32;
            byArray[177] = 32;
            byArray[178] = 32;
            byArray[179] = 32;
            byArray[180] = 32;
            byArray[181] = -75;
            byArray[182] = 32;
            byArray[183] = 32;
            byArray[184] = 32;
            byArray[185] = 32;
            byArray[186] = -70;
            byArray[187] = 32;
            byArray[188] = 32;
            byArray[189] = 32;
            byArray[190] = 32;
            byArray[191] = 32;
            byArray[192] = -32;
            byArray[193] = -31;
            byArray[194] = -30;
            byArray[195] = -29;
            byArray[196] = -28;
            byArray[197] = -27;
            byArray[198] = -26;
            byArray[199] = -25;
            byArray[200] = -24;
            byArray[201] = -23;
            byArray[202] = -22;
            byArray[203] = -21;
            byArray[204] = -20;
            byArray[205] = -19;
            byArray[206] = -18;
            byArray[207] = -17;
            byArray[208] = -16;
            byArray[209] = -15;
            byArray[210] = -14;
            byArray[211] = -13;
            byArray[212] = -12;
            byArray[213] = -11;
            byArray[214] = -10;
            byArray[215] = 32;
            byArray[216] = -8;
            byArray[217] = -7;
            byArray[218] = -6;
            byArray[219] = -5;
            byArray[220] = -4;
            byArray[221] = 105;
            byArray[222] = -2;
            byArray[223] = -33;
            byArray[224] = -32;
            byArray[225] = -31;
            byArray[226] = -30;
            byArray[227] = -29;
            byArray[228] = -28;
            byArray[229] = -27;
            byArray[230] = -26;
            byArray[231] = -25;
            byArray[232] = -24;
            byArray[233] = -23;
            byArray[234] = -22;
            byArray[235] = -21;
            byArray[236] = -20;
            byArray[237] = -19;
            byArray[238] = -18;
            byArray[239] = -17;
            byArray[240] = -16;
            byArray[241] = -15;
            byArray[242] = -14;
            byArray[243] = -13;
            byArray[244] = -12;
            byArray[245] = -11;
            byArray[246] = -10;
            byArray[247] = 32;
            byArray[248] = -8;
            byArray[249] = -7;
            byArray[250] = -6;
            byArray[251] = -5;
            byArray[252] = -4;
            byArray[253] = -3;
            byArray[254] = -2;
            byArray[255] = -1;
            byteMap = byArray;
        }

        CharsetRecog_8859_9() {
        }

        public String getName() {
            return this.haveC1Bytes ? "windows-1254" : "ISO-8859-9";
        }
    }

    static class CharsetRecog_8859_9_tr
    extends CharsetRecog_8859_9 {
        private static int[] ngrams = new int[]{2122337, 2122345, 2122357, 2122849, 2122853, 2123621, 2123873, 2124140, 2124641, 2124655, 2125153, 2125676, 2126689, 2126945, 2127461, 2128225, 6365282, 6384416, 0x616C61, 0x616D61, 6385184, 6385405, 6386208, 6386273, 6386429, 6386685, 6388065, 6449522, 6578464, 6579488, 6580512, 6627426, 6627435, 6644841, 6647328, 6648352, 6648425, 6648681, 6909029, 6909472, 0x696E69, 6910496, 7102830, 7102834, 7103776, 7103858, 7217249, 7217250, 7217259, 7234657, 7234661, 7234848, 7235872, 0x6E696E, 7273760, 7498094, 7535982, 7759136, 7954720, 7958386, 16608800, 16608868, 16609021, 0xFDF0FD};

        CharsetRecog_8859_9_tr() {
        }

        public String getLanguage() {
            return "tr";
        }

        public int match(CharsetDetector det) {
            return this.match(det, ngrams, byteMap);
        }
    }

    static abstract class CharsetRecog_IBM420_ar
    extends CharsetRecog_sbcs {
        protected static ArabicShaping as = new ArabicShaping(16);
        protected byte[] prev_fInputBytes = null;
        protected static byte[] byteMap = new byte[]{64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 66, 67, 68, 69, 70, 71, 72, 73, 64, 64, 64, 64, 64, 64, 64, 81, 82, 64, 64, 85, 86, 87, 88, 89, 64, 64, 64, 64, 64, 64, 64, 64, 98, 99, 100, 101, 102, 103, 104, 105, 64, 64, 64, 64, 64, 64, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 64, 64, 64, 64, 64, 64, -128, -127, -126, -125, -124, -123, -122, -121, -120, -119, -118, -117, -116, -115, -114, -113, -112, -111, -110, -109, -108, -107, -106, -105, -104, -103, -102, -101, -100, -99, -98, -97, -96, 64, -94, -93, -92, -91, -90, -89, -88, -87, -86, -85, -84, -83, -82, -81, -80, -79, -78, -77, -76, -75, 64, 64, -72, -71, -70, -69, -68, -67, -66, -65, 64, -127, -126, -125, -124, -123, -122, -121, -120, -119, 64, -53, 64, -51, 64, -49, 64, -111, -110, -109, -108, -107, -106, -105, -104, -103, -38, -37, -36, -35, -34, -33, 64, 64, -94, -93, -92, -91, -90, -89, -88, -87, -22, -21, 64, -19, -18, -17, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, -5, -4, -3, -2, 64};
        protected static byte[] unshapeMap = new byte[]{64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 66, 66, 68, 69, 70, 71, 71, 73, 74, 75, 76, 77, 78, 79, 80, 73, 82, 83, 84, 85, 86, 86, 88, 88, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 99, 101, 101, 103, 103, 105, 106, 107, 108, 109, 110, 111, 105, 113, 113, 115, 116, 117, 118, 119, 119, 121, 122, 123, 124, 125, 126, 127, -128, -127, -126, -125, -124, -123, -122, -121, -120, -119, -128, -117, -117, -115, -115, -113, -112, -111, -110, -109, -108, -107, -106, -105, -104, -103, -102, -102, -102, -102, -98, -98, -98, -95, -94, -93, -92, -91, -90, -89, -88, -87, -98, -85, -85, -83, -83, -81, -81, -79, -78, -77, -76, -75, -74, -73, -72, -71, -79, -69, -69, -67, -67, -65, -64, -63, -62, -61, -60, -59, -58, -57, -56, -55, -54, -65, -52, -65, -50, -49, -48, -47, -46, -45, -44, -43, -42, -41, -40, -39, -38, -38, -36, -36, -36, -33, -32, -31, -30, -29, -28, -27, -26, -25, -24, -23, -22, -21, -20, -19, -18, -17, -16, -15, -14, -13, -12, -11, -10, -9, -8, -7, -6, -5, -4, -3, -2, -1};

        CharsetRecog_IBM420_ar() {
        }

        public String getLanguage() {
            return "ar";
        }

        protected void matchInit(CharsetDetector det) {
            this.prev_fInputBytes = (byte[])det.fInputBytes.clone();
            byte[] bb = this.unshape(det.fInputBytes);
            det.setText(bb);
        }

        private byte[] unshape(byte[] inputBytes) {
            byte[] resultByteArr = this.unshapeLamAlef(inputBytes);
            int i = 0;
            while (i < inputBytes.length) {
                resultByteArr[i] = unshapeMap[resultByteArr[i] & 0xFF];
                ++i;
            }
            return resultByteArr;
        }

        private byte[] unshapeLamAlef(byte[] inputBytes) {
            ByteBuffer resultBigBuffer = ByteBuffer.allocate(inputBytes.length * 2);
            byte[] unshapedLamAlef = new byte[]{-79, 86};
            int i = 0;
            while (i < inputBytes.length) {
                if (this.isLamAlef(inputBytes[i])) {
                    resultBigBuffer.put(unshapedLamAlef);
                } else {
                    resultBigBuffer.put(inputBytes[i]);
                }
                ++i;
            }
            ByteBuffer resultBuffer = ByteBuffer.allocate(resultBigBuffer.position());
            resultBuffer.put(resultBigBuffer.array(), 0, resultBigBuffer.position());
            return resultBuffer.array();
        }

        private boolean isLamAlef(byte b) {
            byte[] shapedLamAlef = new byte[]{-78, -77, -76, -75, -73, -72};
            int i = 0;
            while (i < shapedLamAlef.length) {
                if (b == shapedLamAlef[i]) {
                    return true;
                }
                ++i;
            }
            return false;
        }

        protected void matchFinish(CharsetDetector det) {
            if (this.prev_fInputBytes != null) {
                det.setText(this.prev_fInputBytes);
            }
        }
    }

    static class CharsetRecog_IBM420_ar_ltr
    extends CharsetRecog_IBM420_ar {
        private static int[] ngrams = new int[]{4212310, 4216507, 4216511, 4219507, 4219509, 4219569, 4219579, 4219612, 4219734, 4224342, 4224476, 4239702, 4242262, 4242774, 4242875, 4242895, 4242908, 4250289, 4250795, 4250801, 4829526, 5652566, 5652568, 5652578, 5652579, 5652595, 5652597, 5652600, 5652634, 5652657, 5652667, 5652669, 5652671, 5652698, 5652700, 5658688, 5681494, 5689152, 5812566, 6533462, 6536534, 6795606, 6926678, 7582038, 7909718, 10137942, 11223138, 11383126, 11616354, 11621952, 11622095, 11639360, 11645248, 12271714, 12271836, 12300630, 12408384, 12434240, 13582434, 13582556, 13611350, 14332314, 14461760, 14463318};

        CharsetRecog_IBM420_ar_ltr() {
        }

        public String getName() {
            return "IBM420_ltr";
        }

        public int match(CharsetDetector det) {
            this.matchInit(det);
            int result = this.match(det, ngrams, byteMap, (byte)64);
            this.matchFinish(det);
            return result;
        }
    }

    static class CharsetRecog_IBM420_ar_rtl
    extends CharsetRecog_IBM420_ar {
        private static int[] ngrams = new int[]{4216497, 4216509, 4216918, 4233905, 4238300, 4239793, 4242365, 4247382, 5652566, 5654080, 5661504, 5666112, 5681472, 5681481, 5681494, 5681496, 5681507, 5681511, 5681513, 5681523, 5681528, 5681562, 5681581, 5681595, 5681615, 5681628, 5684032, 5684544, 5684579, 5783638, 6438998, 6439083, 6439089, 6439099, 6439119, 6504534, 7553110, 7561792, 7684182, 7692864, 7880790, 10109014, 10138074, 11263040, 11616342, 11625024, 11655744, 11656256, 12271702, 12277312, 12280384, 12303680, 12402774, 12533846, 12539456, 13588145, 13614400, 14303318, 14434390, 14434491, 14434511, 14443072, 14447936, 14466368};

        CharsetRecog_IBM420_ar_rtl() {
        }

        public String getName() {
            return "IBM420_rtl";
        }

        public int match(CharsetDetector det) {
            this.matchInit(det);
            int result = this.match(det, ngrams, byteMap, (byte)64);
            this.matchFinish(det);
            return result;
        }
    }

    static abstract class CharsetRecog_IBM424_he
    extends CharsetRecog_sbcs {
        protected static byte[] byteMap;

        static {
            byte[] byArray = new byte[256];
            byArray[0] = 64;
            byArray[1] = 64;
            byArray[2] = 64;
            byArray[3] = 64;
            byArray[4] = 64;
            byArray[5] = 64;
            byArray[6] = 64;
            byArray[7] = 64;
            byArray[8] = 64;
            byArray[9] = 64;
            byArray[10] = 64;
            byArray[11] = 64;
            byArray[12] = 64;
            byArray[13] = 64;
            byArray[14] = 64;
            byArray[15] = 64;
            byArray[16] = 64;
            byArray[17] = 64;
            byArray[18] = 64;
            byArray[19] = 64;
            byArray[20] = 64;
            byArray[21] = 64;
            byArray[22] = 64;
            byArray[23] = 64;
            byArray[24] = 64;
            byArray[25] = 64;
            byArray[26] = 64;
            byArray[27] = 64;
            byArray[28] = 64;
            byArray[29] = 64;
            byArray[30] = 64;
            byArray[31] = 64;
            byArray[32] = 64;
            byArray[33] = 64;
            byArray[34] = 64;
            byArray[35] = 64;
            byArray[36] = 64;
            byArray[37] = 64;
            byArray[38] = 64;
            byArray[39] = 64;
            byArray[40] = 64;
            byArray[41] = 64;
            byArray[42] = 64;
            byArray[43] = 64;
            byArray[44] = 64;
            byArray[45] = 64;
            byArray[46] = 64;
            byArray[47] = 64;
            byArray[48] = 64;
            byArray[49] = 64;
            byArray[50] = 64;
            byArray[51] = 64;
            byArray[52] = 64;
            byArray[53] = 64;
            byArray[54] = 64;
            byArray[55] = 64;
            byArray[56] = 64;
            byArray[57] = 64;
            byArray[58] = 64;
            byArray[59] = 64;
            byArray[60] = 64;
            byArray[61] = 64;
            byArray[62] = 64;
            byArray[63] = 64;
            byArray[64] = 64;
            byArray[65] = 65;
            byArray[66] = 66;
            byArray[67] = 67;
            byArray[68] = 68;
            byArray[69] = 69;
            byArray[70] = 70;
            byArray[71] = 71;
            byArray[72] = 72;
            byArray[73] = 73;
            byArray[74] = 64;
            byArray[75] = 64;
            byArray[76] = 64;
            byArray[77] = 64;
            byArray[78] = 64;
            byArray[79] = 64;
            byArray[80] = 64;
            byArray[81] = 81;
            byArray[82] = 82;
            byArray[83] = 83;
            byArray[84] = 84;
            byArray[85] = 85;
            byArray[86] = 86;
            byArray[87] = 87;
            byArray[88] = 88;
            byArray[89] = 89;
            byArray[90] = 64;
            byArray[91] = 64;
            byArray[92] = 64;
            byArray[93] = 64;
            byArray[94] = 64;
            byArray[95] = 64;
            byArray[96] = 64;
            byArray[97] = 64;
            byArray[98] = 98;
            byArray[99] = 99;
            byArray[100] = 100;
            byArray[101] = 101;
            byArray[102] = 102;
            byArray[103] = 103;
            byArray[104] = 104;
            byArray[105] = 105;
            byArray[106] = 64;
            byArray[107] = 64;
            byArray[108] = 64;
            byArray[109] = 64;
            byArray[110] = 64;
            byArray[111] = 64;
            byArray[112] = 64;
            byArray[113] = 113;
            byArray[114] = 64;
            byArray[115] = 64;
            byArray[116] = 64;
            byArray[117] = 64;
            byArray[118] = 64;
            byArray[119] = 64;
            byArray[120] = 64;
            byArray[121] = 64;
            byArray[122] = 64;
            byArray[123] = 64;
            byArray[124] = 64;
            byArray[126] = 64;
            byArray[127] = 64;
            byArray[128] = 64;
            byArray[129] = -127;
            byArray[130] = -126;
            byArray[131] = -125;
            byArray[132] = -124;
            byArray[133] = -123;
            byArray[134] = -122;
            byArray[135] = -121;
            byArray[136] = -120;
            byArray[137] = -119;
            byArray[138] = 64;
            byArray[139] = 64;
            byArray[140] = 64;
            byArray[141] = 64;
            byArray[142] = 64;
            byArray[143] = 64;
            byArray[144] = 64;
            byArray[145] = -111;
            byArray[146] = -110;
            byArray[147] = -109;
            byArray[148] = -108;
            byArray[149] = -107;
            byArray[150] = -106;
            byArray[151] = -105;
            byArray[152] = -104;
            byArray[153] = -103;
            byArray[154] = 64;
            byArray[155] = 64;
            byArray[156] = 64;
            byArray[157] = 64;
            byArray[158] = 64;
            byArray[159] = 64;
            byArray[160] = -96;
            byArray[161] = 64;
            byArray[162] = -94;
            byArray[163] = -93;
            byArray[164] = -92;
            byArray[165] = -91;
            byArray[166] = -90;
            byArray[167] = -89;
            byArray[168] = -88;
            byArray[169] = -87;
            byArray[170] = 64;
            byArray[171] = 64;
            byArray[172] = 64;
            byArray[173] = 64;
            byArray[174] = 64;
            byArray[175] = 64;
            byArray[176] = 64;
            byArray[177] = 64;
            byArray[178] = 64;
            byArray[179] = 64;
            byArray[180] = 64;
            byArray[181] = 64;
            byArray[182] = 64;
            byArray[183] = 64;
            byArray[184] = 64;
            byArray[185] = 64;
            byArray[186] = 64;
            byArray[187] = 64;
            byArray[188] = 64;
            byArray[189] = 64;
            byArray[190] = 64;
            byArray[191] = 64;
            byArray[192] = 64;
            byArray[193] = -127;
            byArray[194] = -126;
            byArray[195] = -125;
            byArray[196] = -124;
            byArray[197] = -123;
            byArray[198] = -122;
            byArray[199] = -121;
            byArray[200] = -120;
            byArray[201] = -119;
            byArray[202] = 64;
            byArray[203] = 64;
            byArray[204] = 64;
            byArray[205] = 64;
            byArray[206] = 64;
            byArray[207] = 64;
            byArray[208] = 64;
            byArray[209] = -111;
            byArray[210] = -110;
            byArray[211] = -109;
            byArray[212] = -108;
            byArray[213] = -107;
            byArray[214] = -106;
            byArray[215] = -105;
            byArray[216] = -104;
            byArray[217] = -103;
            byArray[218] = 64;
            byArray[219] = 64;
            byArray[220] = 64;
            byArray[221] = 64;
            byArray[222] = 64;
            byArray[223] = 64;
            byArray[224] = 64;
            byArray[225] = 64;
            byArray[226] = -94;
            byArray[227] = -93;
            byArray[228] = -92;
            byArray[229] = -91;
            byArray[230] = -90;
            byArray[231] = -89;
            byArray[232] = -88;
            byArray[233] = -87;
            byArray[234] = 64;
            byArray[235] = 64;
            byArray[236] = 64;
            byArray[237] = 64;
            byArray[238] = 64;
            byArray[239] = 64;
            byArray[240] = 64;
            byArray[241] = 64;
            byArray[242] = 64;
            byArray[243] = 64;
            byArray[244] = 64;
            byArray[245] = 64;
            byArray[246] = 64;
            byArray[247] = 64;
            byArray[248] = 64;
            byArray[249] = 64;
            byArray[250] = 64;
            byArray[251] = 64;
            byArray[252] = 64;
            byArray[253] = 64;
            byArray[254] = 64;
            byArray[255] = 64;
            byteMap = byArray;
        }

        CharsetRecog_IBM424_he() {
        }

        public String getLanguage() {
            return "he";
        }
    }

    static class CharsetRecog_IBM424_he_ltr
    extends CharsetRecog_IBM424_he {
        private static int[] ngrams = new int[]{4211014, 4211028, 4212049, 0x404554, 4212054, 4212056, 4215128, 4215906, 4215913, 4216134, 4216145, 4216646, 4216657, 4220998, 4221009, 4223297, 4223302, 4223313, 4276293, 4276308, 4276309, 4276337, 4277568, 4277829, 4281408, 4281920, 4341829, 4341845, 4341873, 0x454045, 4538449, 0x454054, 0x454055, 4538455, 4538472, 4538481, 0x455440, 4604224, 4605248, 4735296, 5325120, 5325376, 5326144, 0x544045, 0x544055, 5521521, 5530176, 5531968, 0x555151, 0x555158, 5591400, 5652549, 5652565, 5652593, 5653056, 5653824, 6440256, 6897733, 6897749, 6897777, 6899008, 7422272, 7423296, 7423569};

        CharsetRecog_IBM424_he_ltr() {
        }

        public String getName() {
            return "IBM424_ltr";
        }

        public int match(CharsetDetector det) {
            return this.match(det, ngrams, byteMap, (byte)64);
        }
    }

    static class CharsetRecog_IBM424_he_rtl
    extends CharsetRecog_IBM424_he {
        private static int[] ngrams = new int[]{4211014, 4211016, 4211025, 4211057, 4211281, 4211286, 4212033, 4212038, 4212049, 4212054, 4212066, 4212073, 4212081, 4215873, 0x405445, 4216385, 4219476, 4221268, 4288832, 4538433, 4538434, 0x454045, 0x454054, 4538454, 4538473, 4539969, 4604224, 4609344, 4609856, 4614208, 4616512, 5324869, 5326144, 5326449, 0x515155, 5330240, 5330752, 5335104, 5337408, 5521473, 0x544045, 5521728, 0x544540, 5587009, 5587010, 0x554045, 0x554054, 5587030, 5587049, 5653824, 5718085, 5784896, 5787968, 0x585155, 6444096, 6832197, 6836565, 6902848, 7422017, 7422018, 7422021, 7422036, 7422038, 7422057};

        CharsetRecog_IBM424_he_rtl() {
        }

        public String getName() {
            return "IBM424_rtl";
        }

        public int match(CharsetDetector det) {
            return this.match(det, ngrams, byteMap, (byte)64);
        }
    }

    static class CharsetRecog_KOI8_R
    extends CharsetRecog_sbcs {
        private static int[] ngrams = new int[]{2147535, 2148640, 2149313, 2149327, 2150081, 2150085, 2150338, 2150607, 0x20D0D2, 2151105, 2151375, 2151380, 2151631, 2152224, 2152399, 2153153, 2153684, 2154196, 12701385, 12702936, 12963032, 12963529, 12964820, 12964896, 13094688, 13181136, 13223200, 13224224, 13226272, 0xCCC5CE, 13420832, 13424846, 13549856, 13550880, 13552069, 13552081, 13553440, 13553623, 13574352, 13574355, 13574359, 0xCFC7CF, 13617696, 13618392, 13618464, 13620180, 13621024, 13621185, 13684684, 13685445, 13685449, 13685455, 13812183, 13813188, 13881632, 13882561, 13882569, 13882583, 13944268, 13946656, 13946834, 13948960, 14272544, 14603471};
        private static byte[] byteMap;

        static {
            byte[] byArray = new byte[256];
            byArray[0] = 32;
            byArray[1] = 32;
            byArray[2] = 32;
            byArray[3] = 32;
            byArray[4] = 32;
            byArray[5] = 32;
            byArray[6] = 32;
            byArray[7] = 32;
            byArray[8] = 32;
            byArray[9] = 32;
            byArray[10] = 32;
            byArray[11] = 32;
            byArray[12] = 32;
            byArray[13] = 32;
            byArray[14] = 32;
            byArray[15] = 32;
            byArray[16] = 32;
            byArray[17] = 32;
            byArray[18] = 32;
            byArray[19] = 32;
            byArray[20] = 32;
            byArray[21] = 32;
            byArray[22] = 32;
            byArray[23] = 32;
            byArray[24] = 32;
            byArray[25] = 32;
            byArray[26] = 32;
            byArray[27] = 32;
            byArray[28] = 32;
            byArray[29] = 32;
            byArray[30] = 32;
            byArray[31] = 32;
            byArray[32] = 32;
            byArray[33] = 32;
            byArray[34] = 32;
            byArray[35] = 32;
            byArray[36] = 32;
            byArray[37] = 32;
            byArray[38] = 32;
            byArray[40] = 32;
            byArray[41] = 32;
            byArray[42] = 32;
            byArray[43] = 32;
            byArray[44] = 32;
            byArray[45] = 32;
            byArray[46] = 32;
            byArray[47] = 32;
            byArray[48] = 32;
            byArray[49] = 32;
            byArray[50] = 32;
            byArray[51] = 32;
            byArray[52] = 32;
            byArray[53] = 32;
            byArray[54] = 32;
            byArray[55] = 32;
            byArray[56] = 32;
            byArray[57] = 32;
            byArray[58] = 32;
            byArray[59] = 32;
            byArray[60] = 32;
            byArray[61] = 32;
            byArray[62] = 32;
            byArray[63] = 32;
            byArray[64] = 32;
            byArray[65] = 97;
            byArray[66] = 98;
            byArray[67] = 99;
            byArray[68] = 100;
            byArray[69] = 101;
            byArray[70] = 102;
            byArray[71] = 103;
            byArray[72] = 104;
            byArray[73] = 105;
            byArray[74] = 106;
            byArray[75] = 107;
            byArray[76] = 108;
            byArray[77] = 109;
            byArray[78] = 110;
            byArray[79] = 111;
            byArray[80] = 112;
            byArray[81] = 113;
            byArray[82] = 114;
            byArray[83] = 115;
            byArray[84] = 116;
            byArray[85] = 117;
            byArray[86] = 118;
            byArray[87] = 119;
            byArray[88] = 120;
            byArray[89] = 121;
            byArray[90] = 122;
            byArray[91] = 32;
            byArray[92] = 32;
            byArray[93] = 32;
            byArray[94] = 32;
            byArray[95] = 32;
            byArray[96] = 32;
            byArray[97] = 97;
            byArray[98] = 98;
            byArray[99] = 99;
            byArray[100] = 100;
            byArray[101] = 101;
            byArray[102] = 102;
            byArray[103] = 103;
            byArray[104] = 104;
            byArray[105] = 105;
            byArray[106] = 106;
            byArray[107] = 107;
            byArray[108] = 108;
            byArray[109] = 109;
            byArray[110] = 110;
            byArray[111] = 111;
            byArray[112] = 112;
            byArray[113] = 113;
            byArray[114] = 114;
            byArray[115] = 115;
            byArray[116] = 116;
            byArray[117] = 117;
            byArray[118] = 118;
            byArray[119] = 119;
            byArray[120] = 120;
            byArray[121] = 121;
            byArray[122] = 122;
            byArray[123] = 32;
            byArray[124] = 32;
            byArray[125] = 32;
            byArray[126] = 32;
            byArray[127] = 32;
            byArray[128] = 32;
            byArray[129] = 32;
            byArray[130] = 32;
            byArray[131] = 32;
            byArray[132] = 32;
            byArray[133] = 32;
            byArray[134] = 32;
            byArray[135] = 32;
            byArray[136] = 32;
            byArray[137] = 32;
            byArray[138] = 32;
            byArray[139] = 32;
            byArray[140] = 32;
            byArray[141] = 32;
            byArray[142] = 32;
            byArray[143] = 32;
            byArray[144] = 32;
            byArray[145] = 32;
            byArray[146] = 32;
            byArray[147] = 32;
            byArray[148] = 32;
            byArray[149] = 32;
            byArray[150] = 32;
            byArray[151] = 32;
            byArray[152] = 32;
            byArray[153] = 32;
            byArray[154] = 32;
            byArray[155] = 32;
            byArray[156] = 32;
            byArray[157] = 32;
            byArray[158] = 32;
            byArray[159] = 32;
            byArray[160] = 32;
            byArray[161] = 32;
            byArray[162] = 32;
            byArray[163] = -93;
            byArray[164] = 32;
            byArray[165] = 32;
            byArray[166] = 32;
            byArray[167] = 32;
            byArray[168] = 32;
            byArray[169] = 32;
            byArray[170] = 32;
            byArray[171] = 32;
            byArray[172] = 32;
            byArray[173] = 32;
            byArray[174] = 32;
            byArray[175] = 32;
            byArray[176] = 32;
            byArray[177] = 32;
            byArray[178] = 32;
            byArray[179] = -93;
            byArray[180] = 32;
            byArray[181] = 32;
            byArray[182] = 32;
            byArray[183] = 32;
            byArray[184] = 32;
            byArray[185] = 32;
            byArray[186] = 32;
            byArray[187] = 32;
            byArray[188] = 32;
            byArray[189] = 32;
            byArray[190] = 32;
            byArray[191] = 32;
            byArray[192] = -64;
            byArray[193] = -63;
            byArray[194] = -62;
            byArray[195] = -61;
            byArray[196] = -60;
            byArray[197] = -59;
            byArray[198] = -58;
            byArray[199] = -57;
            byArray[200] = -56;
            byArray[201] = -55;
            byArray[202] = -54;
            byArray[203] = -53;
            byArray[204] = -52;
            byArray[205] = -51;
            byArray[206] = -50;
            byArray[207] = -49;
            byArray[208] = -48;
            byArray[209] = -47;
            byArray[210] = -46;
            byArray[211] = -45;
            byArray[212] = -44;
            byArray[213] = -43;
            byArray[214] = -42;
            byArray[215] = -41;
            byArray[216] = -40;
            byArray[217] = -39;
            byArray[218] = -38;
            byArray[219] = -37;
            byArray[220] = -36;
            byArray[221] = -35;
            byArray[222] = -34;
            byArray[223] = -33;
            byArray[224] = -64;
            byArray[225] = -63;
            byArray[226] = -62;
            byArray[227] = -61;
            byArray[228] = -60;
            byArray[229] = -59;
            byArray[230] = -58;
            byArray[231] = -57;
            byArray[232] = -56;
            byArray[233] = -55;
            byArray[234] = -54;
            byArray[235] = -53;
            byArray[236] = -52;
            byArray[237] = -51;
            byArray[238] = -50;
            byArray[239] = -49;
            byArray[240] = -48;
            byArray[241] = -47;
            byArray[242] = -46;
            byArray[243] = -45;
            byArray[244] = -44;
            byArray[245] = -43;
            byArray[246] = -42;
            byArray[247] = -41;
            byArray[248] = -40;
            byArray[249] = -39;
            byArray[250] = -38;
            byArray[251] = -37;
            byArray[252] = -36;
            byArray[253] = -35;
            byArray[254] = -34;
            byArray[255] = -33;
            byteMap = byArray;
        }

        CharsetRecog_KOI8_R() {
        }

        public String getName() {
            return "KOI8-R";
        }

        public String getLanguage() {
            return "ru";
        }

        public int match(CharsetDetector det) {
            return this.match(det, ngrams, byteMap);
        }
    }

    static class CharsetRecog_windows_1251
    extends CharsetRecog_sbcs {
        private static int[] ngrams = new int[]{0x20E220, 0x20E2EE, 2155758, 2156512, 2156576, 2157280, 2157294, 2158048, 2158053, 2158305, 2158574, 2158576, 2158816, 2159086, 2159090, 2159342, 2160626, 2162162, 14740968, 14742268, 14937632, 15068156, 15068648, 15069682, 15069728, 15212783, 15263008, 15263776, 15269664, 15459821, 15460384, 15465709, 15589408, 15590688, 15591653, 15591679, 15592992, 0xEDEEE2, 0xEE20E2, 15605999, 15606001, 0xEEE220, 0xEEE2E0, 0xEEE3EE, 15657248, 15657980, 15658016, 15659506, 0xEFEEEB, 15724773, 15724776, 0xEFF0EE, 15786210, 15787492, 15856352, 15856354, 15856360, 15859488, 15918571, 15920672, 15920880, 15924256, 16249582, 16512288};
        private static byte[] byteMap;

        static {
            byte[] byArray = new byte[256];
            byArray[0] = 32;
            byArray[1] = 32;
            byArray[2] = 32;
            byArray[3] = 32;
            byArray[4] = 32;
            byArray[5] = 32;
            byArray[6] = 32;
            byArray[7] = 32;
            byArray[8] = 32;
            byArray[9] = 32;
            byArray[10] = 32;
            byArray[11] = 32;
            byArray[12] = 32;
            byArray[13] = 32;
            byArray[14] = 32;
            byArray[15] = 32;
            byArray[16] = 32;
            byArray[17] = 32;
            byArray[18] = 32;
            byArray[19] = 32;
            byArray[20] = 32;
            byArray[21] = 32;
            byArray[22] = 32;
            byArray[23] = 32;
            byArray[24] = 32;
            byArray[25] = 32;
            byArray[26] = 32;
            byArray[27] = 32;
            byArray[28] = 32;
            byArray[29] = 32;
            byArray[30] = 32;
            byArray[31] = 32;
            byArray[32] = 32;
            byArray[33] = 32;
            byArray[34] = 32;
            byArray[35] = 32;
            byArray[36] = 32;
            byArray[37] = 32;
            byArray[38] = 32;
            byArray[40] = 32;
            byArray[41] = 32;
            byArray[42] = 32;
            byArray[43] = 32;
            byArray[44] = 32;
            byArray[45] = 32;
            byArray[46] = 32;
            byArray[47] = 32;
            byArray[48] = 32;
            byArray[49] = 32;
            byArray[50] = 32;
            byArray[51] = 32;
            byArray[52] = 32;
            byArray[53] = 32;
            byArray[54] = 32;
            byArray[55] = 32;
            byArray[56] = 32;
            byArray[57] = 32;
            byArray[58] = 32;
            byArray[59] = 32;
            byArray[60] = 32;
            byArray[61] = 32;
            byArray[62] = 32;
            byArray[63] = 32;
            byArray[64] = 32;
            byArray[65] = 97;
            byArray[66] = 98;
            byArray[67] = 99;
            byArray[68] = 100;
            byArray[69] = 101;
            byArray[70] = 102;
            byArray[71] = 103;
            byArray[72] = 104;
            byArray[73] = 105;
            byArray[74] = 106;
            byArray[75] = 107;
            byArray[76] = 108;
            byArray[77] = 109;
            byArray[78] = 110;
            byArray[79] = 111;
            byArray[80] = 112;
            byArray[81] = 113;
            byArray[82] = 114;
            byArray[83] = 115;
            byArray[84] = 116;
            byArray[85] = 117;
            byArray[86] = 118;
            byArray[87] = 119;
            byArray[88] = 120;
            byArray[89] = 121;
            byArray[90] = 122;
            byArray[91] = 32;
            byArray[92] = 32;
            byArray[93] = 32;
            byArray[94] = 32;
            byArray[95] = 32;
            byArray[96] = 32;
            byArray[97] = 97;
            byArray[98] = 98;
            byArray[99] = 99;
            byArray[100] = 100;
            byArray[101] = 101;
            byArray[102] = 102;
            byArray[103] = 103;
            byArray[104] = 104;
            byArray[105] = 105;
            byArray[106] = 106;
            byArray[107] = 107;
            byArray[108] = 108;
            byArray[109] = 109;
            byArray[110] = 110;
            byArray[111] = 111;
            byArray[112] = 112;
            byArray[113] = 113;
            byArray[114] = 114;
            byArray[115] = 115;
            byArray[116] = 116;
            byArray[117] = 117;
            byArray[118] = 118;
            byArray[119] = 119;
            byArray[120] = 120;
            byArray[121] = 121;
            byArray[122] = 122;
            byArray[123] = 32;
            byArray[124] = 32;
            byArray[125] = 32;
            byArray[126] = 32;
            byArray[127] = 32;
            byArray[128] = -112;
            byArray[129] = -125;
            byArray[130] = 32;
            byArray[131] = -125;
            byArray[132] = 32;
            byArray[133] = 32;
            byArray[134] = 32;
            byArray[135] = 32;
            byArray[136] = 32;
            byArray[137] = 32;
            byArray[138] = -102;
            byArray[139] = 32;
            byArray[140] = -100;
            byArray[141] = -99;
            byArray[142] = -98;
            byArray[143] = -97;
            byArray[144] = -112;
            byArray[145] = 32;
            byArray[146] = 32;
            byArray[147] = 32;
            byArray[148] = 32;
            byArray[149] = 32;
            byArray[150] = 32;
            byArray[151] = 32;
            byArray[152] = 32;
            byArray[153] = 32;
            byArray[154] = -102;
            byArray[155] = 32;
            byArray[156] = -100;
            byArray[157] = -99;
            byArray[158] = -98;
            byArray[159] = -97;
            byArray[160] = 32;
            byArray[161] = -94;
            byArray[162] = -94;
            byArray[163] = -68;
            byArray[164] = 32;
            byArray[165] = -76;
            byArray[166] = 32;
            byArray[167] = 32;
            byArray[168] = -72;
            byArray[169] = 32;
            byArray[170] = -70;
            byArray[171] = 32;
            byArray[172] = 32;
            byArray[173] = 32;
            byArray[174] = 32;
            byArray[175] = -65;
            byArray[176] = 32;
            byArray[177] = 32;
            byArray[178] = -77;
            byArray[179] = -77;
            byArray[180] = -76;
            byArray[181] = -75;
            byArray[182] = 32;
            byArray[183] = 32;
            byArray[184] = -72;
            byArray[185] = 32;
            byArray[186] = -70;
            byArray[187] = 32;
            byArray[188] = -68;
            byArray[189] = -66;
            byArray[190] = -66;
            byArray[191] = -65;
            byArray[192] = -32;
            byArray[193] = -31;
            byArray[194] = -30;
            byArray[195] = -29;
            byArray[196] = -28;
            byArray[197] = -27;
            byArray[198] = -26;
            byArray[199] = -25;
            byArray[200] = -24;
            byArray[201] = -23;
            byArray[202] = -22;
            byArray[203] = -21;
            byArray[204] = -20;
            byArray[205] = -19;
            byArray[206] = -18;
            byArray[207] = -17;
            byArray[208] = -16;
            byArray[209] = -15;
            byArray[210] = -14;
            byArray[211] = -13;
            byArray[212] = -12;
            byArray[213] = -11;
            byArray[214] = -10;
            byArray[215] = -9;
            byArray[216] = -8;
            byArray[217] = -7;
            byArray[218] = -6;
            byArray[219] = -5;
            byArray[220] = -4;
            byArray[221] = -3;
            byArray[222] = -2;
            byArray[223] = -1;
            byArray[224] = -32;
            byArray[225] = -31;
            byArray[226] = -30;
            byArray[227] = -29;
            byArray[228] = -28;
            byArray[229] = -27;
            byArray[230] = -26;
            byArray[231] = -25;
            byArray[232] = -24;
            byArray[233] = -23;
            byArray[234] = -22;
            byArray[235] = -21;
            byArray[236] = -20;
            byArray[237] = -19;
            byArray[238] = -18;
            byArray[239] = -17;
            byArray[240] = -16;
            byArray[241] = -15;
            byArray[242] = -14;
            byArray[243] = -13;
            byArray[244] = -12;
            byArray[245] = -11;
            byArray[246] = -10;
            byArray[247] = -9;
            byArray[248] = -8;
            byArray[249] = -7;
            byArray[250] = -6;
            byArray[251] = -5;
            byArray[252] = -4;
            byArray[253] = -3;
            byArray[254] = -2;
            byArray[255] = -1;
            byteMap = byArray;
        }

        CharsetRecog_windows_1251() {
        }

        public String getName() {
            return "windows-1251";
        }

        public String getLanguage() {
            return "ru";
        }

        public int match(CharsetDetector det) {
            return this.match(det, ngrams, byteMap);
        }
    }

    static class CharsetRecog_windows_1256
    extends CharsetRecog_sbcs {
        private static int[] ngrams = new int[]{2148321, 2148324, 2148551, 2153185, 2153965, 2154977, 2155492, 2156231, 13050055, 13091104, 13093408, 13095200, 13099296, 13099459, 13099463, 13099464, 13099466, 13099468, 13099469, 13099471, 13099475, 13099482, 13099486, 13099491, 13099494, 13099501, 13099808, 13100064, 13100234, 13115591, 13181127, 13181149, 13181153, 13181155, 13181158, 13246663, 13574343, 13617440, 13705415, 13748512, 13836487, 14295239, 14344684, 14544160, 14753991, 14797088, 14806048, 14806304, 14885063, 14927648, 14928160, 14935072, 14950599, 15016135, 15058720, 15124449, 15131680, 15474887, 15540423, 15540451, 15540454, 15583520, 15585568, 15590432};
        private static byte[] byteMap;

        static {
            byte[] byArray = new byte[256];
            byArray[0] = 32;
            byArray[1] = 32;
            byArray[2] = 32;
            byArray[3] = 32;
            byArray[4] = 32;
            byArray[5] = 32;
            byArray[6] = 32;
            byArray[7] = 32;
            byArray[8] = 32;
            byArray[9] = 32;
            byArray[10] = 32;
            byArray[11] = 32;
            byArray[12] = 32;
            byArray[13] = 32;
            byArray[14] = 32;
            byArray[15] = 32;
            byArray[16] = 32;
            byArray[17] = 32;
            byArray[18] = 32;
            byArray[19] = 32;
            byArray[20] = 32;
            byArray[21] = 32;
            byArray[22] = 32;
            byArray[23] = 32;
            byArray[24] = 32;
            byArray[25] = 32;
            byArray[26] = 32;
            byArray[27] = 32;
            byArray[28] = 32;
            byArray[29] = 32;
            byArray[30] = 32;
            byArray[31] = 32;
            byArray[32] = 32;
            byArray[33] = 32;
            byArray[34] = 32;
            byArray[35] = 32;
            byArray[36] = 32;
            byArray[37] = 32;
            byArray[38] = 32;
            byArray[40] = 32;
            byArray[41] = 32;
            byArray[42] = 32;
            byArray[43] = 32;
            byArray[44] = 32;
            byArray[45] = 32;
            byArray[46] = 32;
            byArray[47] = 32;
            byArray[48] = 32;
            byArray[49] = 32;
            byArray[50] = 32;
            byArray[51] = 32;
            byArray[52] = 32;
            byArray[53] = 32;
            byArray[54] = 32;
            byArray[55] = 32;
            byArray[56] = 32;
            byArray[57] = 32;
            byArray[58] = 32;
            byArray[59] = 32;
            byArray[60] = 32;
            byArray[61] = 32;
            byArray[62] = 32;
            byArray[63] = 32;
            byArray[64] = 32;
            byArray[65] = 97;
            byArray[66] = 98;
            byArray[67] = 99;
            byArray[68] = 100;
            byArray[69] = 101;
            byArray[70] = 102;
            byArray[71] = 103;
            byArray[72] = 104;
            byArray[73] = 105;
            byArray[74] = 106;
            byArray[75] = 107;
            byArray[76] = 108;
            byArray[77] = 109;
            byArray[78] = 110;
            byArray[79] = 111;
            byArray[80] = 112;
            byArray[81] = 113;
            byArray[82] = 114;
            byArray[83] = 115;
            byArray[84] = 116;
            byArray[85] = 117;
            byArray[86] = 118;
            byArray[87] = 119;
            byArray[88] = 120;
            byArray[89] = 121;
            byArray[90] = 122;
            byArray[91] = 32;
            byArray[92] = 32;
            byArray[93] = 32;
            byArray[94] = 32;
            byArray[95] = 32;
            byArray[96] = 32;
            byArray[97] = 97;
            byArray[98] = 98;
            byArray[99] = 99;
            byArray[100] = 100;
            byArray[101] = 101;
            byArray[102] = 102;
            byArray[103] = 103;
            byArray[104] = 104;
            byArray[105] = 105;
            byArray[106] = 106;
            byArray[107] = 107;
            byArray[108] = 108;
            byArray[109] = 109;
            byArray[110] = 110;
            byArray[111] = 111;
            byArray[112] = 112;
            byArray[113] = 113;
            byArray[114] = 114;
            byArray[115] = 115;
            byArray[116] = 116;
            byArray[117] = 117;
            byArray[118] = 118;
            byArray[119] = 119;
            byArray[120] = 120;
            byArray[121] = 121;
            byArray[122] = 122;
            byArray[123] = 32;
            byArray[124] = 32;
            byArray[125] = 32;
            byArray[126] = 32;
            byArray[127] = 32;
            byArray[128] = 32;
            byArray[129] = -127;
            byArray[130] = 32;
            byArray[131] = -125;
            byArray[132] = 32;
            byArray[133] = 32;
            byArray[134] = 32;
            byArray[135] = 32;
            byArray[136] = -120;
            byArray[137] = 32;
            byArray[138] = -118;
            byArray[139] = 32;
            byArray[140] = -100;
            byArray[141] = -115;
            byArray[142] = -114;
            byArray[143] = -113;
            byArray[144] = -112;
            byArray[145] = 32;
            byArray[146] = 32;
            byArray[147] = 32;
            byArray[148] = 32;
            byArray[149] = 32;
            byArray[150] = 32;
            byArray[151] = 32;
            byArray[152] = -104;
            byArray[153] = 32;
            byArray[154] = -102;
            byArray[155] = 32;
            byArray[156] = -100;
            byArray[157] = 32;
            byArray[158] = 32;
            byArray[159] = -97;
            byArray[160] = 32;
            byArray[161] = 32;
            byArray[162] = 32;
            byArray[163] = 32;
            byArray[164] = 32;
            byArray[165] = 32;
            byArray[166] = 32;
            byArray[167] = 32;
            byArray[168] = 32;
            byArray[169] = 32;
            byArray[170] = -86;
            byArray[171] = 32;
            byArray[172] = 32;
            byArray[173] = 32;
            byArray[174] = 32;
            byArray[175] = 32;
            byArray[176] = 32;
            byArray[177] = 32;
            byArray[178] = 32;
            byArray[179] = 32;
            byArray[180] = 32;
            byArray[181] = -75;
            byArray[182] = 32;
            byArray[183] = 32;
            byArray[184] = 32;
            byArray[185] = 32;
            byArray[186] = 32;
            byArray[187] = 32;
            byArray[188] = 32;
            byArray[189] = 32;
            byArray[190] = 32;
            byArray[191] = 32;
            byArray[192] = -64;
            byArray[193] = -63;
            byArray[194] = -62;
            byArray[195] = -61;
            byArray[196] = -60;
            byArray[197] = -59;
            byArray[198] = -58;
            byArray[199] = -57;
            byArray[200] = -56;
            byArray[201] = -55;
            byArray[202] = -54;
            byArray[203] = -53;
            byArray[204] = -52;
            byArray[205] = -51;
            byArray[206] = -50;
            byArray[207] = -49;
            byArray[208] = -48;
            byArray[209] = -47;
            byArray[210] = -46;
            byArray[211] = -45;
            byArray[212] = -44;
            byArray[213] = -43;
            byArray[214] = -42;
            byArray[215] = 32;
            byArray[216] = -40;
            byArray[217] = -39;
            byArray[218] = -38;
            byArray[219] = -37;
            byArray[220] = -36;
            byArray[221] = -35;
            byArray[222] = -34;
            byArray[223] = -33;
            byArray[224] = -32;
            byArray[225] = -31;
            byArray[226] = -30;
            byArray[227] = -29;
            byArray[228] = -28;
            byArray[229] = -27;
            byArray[230] = -26;
            byArray[231] = -25;
            byArray[232] = -24;
            byArray[233] = -23;
            byArray[234] = -22;
            byArray[235] = -21;
            byArray[236] = -20;
            byArray[237] = -19;
            byArray[238] = -18;
            byArray[239] = -17;
            byArray[240] = 32;
            byArray[241] = 32;
            byArray[242] = 32;
            byArray[243] = 32;
            byArray[244] = -12;
            byArray[245] = 32;
            byArray[246] = 32;
            byArray[247] = 32;
            byArray[248] = 32;
            byArray[249] = -7;
            byArray[250] = 32;
            byArray[251] = -5;
            byArray[252] = -4;
            byArray[253] = 32;
            byArray[254] = 32;
            byArray[255] = -1;
            byteMap = byArray;
        }

        CharsetRecog_windows_1256() {
        }

        public String getName() {
            return "windows-1256";
        }

        public String getLanguage() {
            return "ar";
        }

        public int match(CharsetDetector det) {
            return this.match(det, ngrams, byteMap);
        }
    }

    static class NGramParser {
        private static final int N_GRAM_MASK = 0xFFFFFF;
        private int byteIndex = 0;
        private int ngram = 0;
        private int[] ngramList;
        private byte[] byteMap;
        private int ngramCount;
        private int hitCount;
        private byte spaceChar;

        public NGramParser(int[] theNgramList, byte[] theByteMap) {
            this.ngramList = theNgramList;
            this.byteMap = theByteMap;
            this.ngram = 0;
            this.hitCount = 0;
            this.ngramCount = 0;
        }

        private static int search(int[] table, int value) {
            int index = 0;
            if (table[index + 32] <= value) {
                index += 32;
            }
            if (table[index + 16] <= value) {
                index += 16;
            }
            if (table[index + 8] <= value) {
                index += 8;
            }
            if (table[index + 4] <= value) {
                index += 4;
            }
            if (table[index + 2] <= value) {
                index += 2;
            }
            if (table[index + 1] <= value) {
                ++index;
            }
            if (table[index] > value) {
                --index;
            }
            if (index < 0 || table[index] != value) {
                return -1;
            }
            return index;
        }

        private void lookup(int thisNgram) {
            ++this.ngramCount;
            if (NGramParser.search(this.ngramList, thisNgram) >= 0) {
                ++this.hitCount;
            }
        }

        private void addByte(int b) {
            this.ngram = (this.ngram << 8) + (b & 0xFF) & 0xFFFFFF;
            this.lookup(this.ngram);
        }

        private int nextByte(CharsetDetector det) {
            if (this.byteIndex >= det.fInputLen) {
                return -1;
            }
            return det.fInputBytes[this.byteIndex++] & 0xFF;
        }

        public int parse(CharsetDetector det) {
            return this.parse(det, (byte)32);
        }

        public int parse(CharsetDetector det, byte spaceCh) {
            int b;
            boolean ignoreSpace = false;
            this.spaceChar = spaceCh;
            while ((b = this.nextByte(det)) >= 0) {
                byte mb = this.byteMap[b];
                if (mb == 0) continue;
                if (mb != this.spaceChar || !ignoreSpace) {
                    this.addByte(mb);
                }
                boolean bl = ignoreSpace = mb == this.spaceChar;
            }
            this.addByte(this.spaceChar);
            double rawPercent = (double)this.hitCount / (double)this.ngramCount;
            if (rawPercent > 0.33) {
                return 98;
            }
            return (int)(rawPercent * 300.0);
        }
    }
}

