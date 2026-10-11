/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.ecore.xml.type.internal;

import java.io.IOException;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.Hashtable;

public final class DataValue {

    public static final class Base64 {
        private static final int BASELENGTH = 255;
        private static final int LOOKUPLENGTH = 64;
        private static final int TWENTYFOURBITGROUP = 24;
        private static final int EIGHTBIT = 8;
        private static final int SIXTEENBIT = 16;
        private static final int FOURBYTE = 4;
        private static final int SIGN = -128;
        private static final char PAD = '=';
        private static final boolean fDebug = false;
        private static final byte[] base64Alphabet = new byte[255];
        private static final char[] lookUpBase64Alphabet = new char[64];

        static {
            int i = 0;
            while (i < 255) {
                Base64.base64Alphabet[i] = -1;
                ++i;
            }
            i = 90;
            while (i >= 65) {
                Base64.base64Alphabet[i] = (byte)(i - 65);
                --i;
            }
            i = 122;
            while (i >= 97) {
                Base64.base64Alphabet[i] = (byte)(i - 97 + 26);
                --i;
            }
            i = 57;
            while (i >= 48) {
                Base64.base64Alphabet[i] = (byte)(i - 48 + 52);
                --i;
            }
            Base64.base64Alphabet[43] = 62;
            Base64.base64Alphabet[47] = 63;
            i = 0;
            while (i <= 25) {
                Base64.lookUpBase64Alphabet[i] = (char)(65 + i);
                ++i;
            }
            i = 26;
            int j = 0;
            while (i <= 51) {
                Base64.lookUpBase64Alphabet[i] = (char)(97 + j);
                ++i;
                ++j;
            }
            i = 52;
            j = 0;
            while (i <= 61) {
                Base64.lookUpBase64Alphabet[i] = (char)(48 + j);
                ++i;
                ++j;
            }
            Base64.lookUpBase64Alphabet[62] = 43;
            Base64.lookUpBase64Alphabet[63] = 47;
        }

        protected static boolean isWhiteSpace(char octect) {
            return octect == ' ' || octect == '\r' || octect == '\n' || octect == '\t';
        }

        protected static boolean isPad(char octect) {
            return octect == '=';
        }

        protected static boolean isData(char octect) {
            return base64Alphabet[octect] != -1;
        }

        protected static boolean isBase64(char octect) {
            return Base64.isWhiteSpace(octect) || Base64.isPad(octect) || Base64.isData(octect);
        }

        public static String encode(byte[] binaryData) {
            byte val1;
            if (binaryData == null) {
                return null;
            }
            int lengthDataBits = binaryData.length * 8;
            if (lengthDataBits == 0) {
                return "";
            }
            int fewerThan24bits = lengthDataBits % 24;
            int numberTriplets = lengthDataBits / 24;
            int numberQuartet = fewerThan24bits != 0 ? numberTriplets + 1 : numberTriplets;
            char[] encodedData = null;
            encodedData = new char[numberQuartet * 4];
            byte k = 0;
            byte l = 0;
            byte b1 = 0;
            byte b2 = 0;
            byte b3 = 0;
            int encodedIndex = 0;
            int dataIndex = 0;
            int i = 0;
            while (i < numberTriplets) {
                b1 = binaryData[dataIndex++];
                b2 = binaryData[dataIndex++];
                b3 = binaryData[dataIndex++];
                l = (byte)(b2 & 0xF);
                k = (byte)(b1 & 3);
                byte val12 = (b1 & 0xFFFFFF80) == 0 ? (byte)(b1 >> 2) : (byte)(b1 >> 2 ^ 0xC0);
                byte val2 = (b2 & 0xFFFFFF80) == 0 ? (byte)(b2 >> 4) : (byte)(b2 >> 4 ^ 0xF0);
                byte val3 = (b3 & 0xFFFFFF80) == 0 ? (byte)(b3 >> 6) : (byte)(b3 >> 6 ^ 0xFC);
                encodedData[encodedIndex++] = lookUpBase64Alphabet[val12];
                encodedData[encodedIndex++] = lookUpBase64Alphabet[val2 | k << 4];
                encodedData[encodedIndex++] = lookUpBase64Alphabet[l << 2 | val3];
                encodedData[encodedIndex++] = lookUpBase64Alphabet[b3 & 0x3F];
                ++i;
            }
            if (fewerThan24bits == 8) {
                b1 = binaryData[dataIndex];
                k = (byte)(b1 & 3);
                val1 = (b1 & 0xFFFFFF80) == 0 ? (byte)(b1 >> 2) : (byte)(b1 >> 2 ^ 0xC0);
                encodedData[encodedIndex++] = lookUpBase64Alphabet[val1];
                encodedData[encodedIndex++] = lookUpBase64Alphabet[k << 4];
                encodedData[encodedIndex++] = 61;
                encodedData[encodedIndex++] = 61;
            } else if (fewerThan24bits == 16) {
                b1 = binaryData[dataIndex];
                b2 = binaryData[dataIndex + 1];
                l = (byte)(b2 & 0xF);
                k = (byte)(b1 & 3);
                val1 = (b1 & 0xFFFFFF80) == 0 ? (byte)(b1 >> 2) : (byte)(b1 >> 2 ^ 0xC0);
                byte val2 = (b2 & 0xFFFFFF80) == 0 ? (byte)(b2 >> 4) : (byte)(b2 >> 4 ^ 0xF0);
                encodedData[encodedIndex++] = lookUpBase64Alphabet[val1];
                encodedData[encodedIndex++] = lookUpBase64Alphabet[val2 | k << 4];
                encodedData[encodedIndex++] = lookUpBase64Alphabet[l << 2];
                encodedData[encodedIndex++] = 61;
            }
            return new String(encodedData);
        }

        public static byte[] decode(String encoded) {
            if (encoded == null) {
                return null;
            }
            char[] base64Data = encoded.toCharArray();
            int len = Base64.removeWhiteSpace(base64Data);
            if (len % 4 != 0) {
                return null;
            }
            int numberQuadruple = len / 4;
            if (numberQuadruple == 0) {
                return new byte[0];
            }
            byte[] decodedData = null;
            byte b1 = 0;
            byte b2 = 0;
            byte b3 = 0;
            byte b4 = 0;
            char d1 = '\u0000';
            char d2 = '\u0000';
            char d3 = '\u0000';
            char d4 = '\u0000';
            int i = 0;
            int encodedIndex = 0;
            int dataIndex = 0;
            decodedData = new byte[numberQuadruple * 3];
            while (i < numberQuadruple - 1) {
                if (!(Base64.isData(d1 = base64Data[dataIndex++]) && Base64.isData(d2 = base64Data[dataIndex++]) && Base64.isData(d3 = base64Data[dataIndex++]) && Base64.isData(d4 = base64Data[dataIndex++]))) {
                    return null;
                }
                b1 = base64Alphabet[d1];
                b2 = base64Alphabet[d2];
                b3 = base64Alphabet[d3];
                b4 = base64Alphabet[d4];
                decodedData[encodedIndex++] = (byte)(b1 << 2 | b2 >> 4);
                decodedData[encodedIndex++] = (byte)((b2 & 0xF) << 4 | b3 >> 2 & 0xF);
                decodedData[encodedIndex++] = (byte)(b3 << 6 | b4);
                ++i;
            }
            if (!Base64.isData(d1 = base64Data[dataIndex++]) || !Base64.isData(d2 = base64Data[dataIndex++])) {
                return null;
            }
            b1 = base64Alphabet[d1];
            b2 = base64Alphabet[d2];
            d3 = base64Data[dataIndex++];
            d4 = base64Data[dataIndex++];
            if (!Base64.isData(d3) || !Base64.isData(d4)) {
                if (Base64.isPad(d3) && Base64.isPad(d4)) {
                    if ((b2 & 0xF) != 0) {
                        return null;
                    }
                    byte[] tmp = new byte[i * 3 + 1];
                    System.arraycopy(decodedData, 0, tmp, 0, i * 3);
                    tmp[encodedIndex] = (byte)(b1 << 2 | b2 >> 4);
                    return tmp;
                }
                if (!Base64.isPad(d3) && Base64.isPad(d4)) {
                    b3 = base64Alphabet[d3];
                    if ((b3 & 3) != 0) {
                        return null;
                    }
                    byte[] tmp = new byte[i * 3 + 2];
                    System.arraycopy(decodedData, 0, tmp, 0, i * 3);
                    tmp[encodedIndex++] = (byte)(b1 << 2 | b2 >> 4);
                    tmp[encodedIndex] = (byte)((b2 & 0xF) << 4 | b3 >> 2 & 0xF);
                    return tmp;
                }
                return null;
            }
            b3 = base64Alphabet[d3];
            b4 = base64Alphabet[d4];
            decodedData[encodedIndex++] = (byte)(b1 << 2 | b2 >> 4);
            decodedData[encodedIndex++] = (byte)((b2 & 0xF) << 4 | b3 >> 2 & 0xF);
            decodedData[encodedIndex++] = (byte)(b3 << 6 | b4);
            return decodedData;
        }

        protected static int removeWhiteSpace(char[] data) {
            if (data == null) {
                return 0;
            }
            int newSize = 0;
            int len = data.length;
            int i = 0;
            while (i < len) {
                if (!Base64.isWhiteSpace(data[i])) {
                    data[newSize++] = data[i];
                }
                ++i;
            }
            return newSize;
        }
    }

    public static class EncodingMap {
        protected static final Hashtable<String, String> fIANA2JavaMap = new Hashtable();
        protected static final Hashtable<String, String> fJava2IANAMap = new Hashtable();

        static {
            fIANA2JavaMap.put("BIG5", "Big5");
            fIANA2JavaMap.put("CSBIG5", "Big5");
            fIANA2JavaMap.put("CP037", "CP037");
            fIANA2JavaMap.put("IBM037", "CP037");
            fIANA2JavaMap.put("CSIBM037", "CP037");
            fIANA2JavaMap.put("EBCDIC-CP-US", "CP037");
            fIANA2JavaMap.put("EBCDIC-CP-CA", "CP037");
            fIANA2JavaMap.put("EBCDIC-CP-NL", "CP037");
            fIANA2JavaMap.put("EBCDIC-CP-WT", "CP037");
            fIANA2JavaMap.put("IBM273", "CP273");
            fIANA2JavaMap.put("CP273", "CP273");
            fIANA2JavaMap.put("CSIBM273", "CP273");
            fIANA2JavaMap.put("IBM277", "CP277");
            fIANA2JavaMap.put("CP277", "CP277");
            fIANA2JavaMap.put("CSIBM277", "CP277");
            fIANA2JavaMap.put("EBCDIC-CP-DK", "CP277");
            fIANA2JavaMap.put("EBCDIC-CP-NO", "CP277");
            fIANA2JavaMap.put("IBM278", "CP278");
            fIANA2JavaMap.put("CP278", "CP278");
            fIANA2JavaMap.put("CSIBM278", "CP278");
            fIANA2JavaMap.put("EBCDIC-CP-FI", "CP278");
            fIANA2JavaMap.put("EBCDIC-CP-SE", "CP278");
            fIANA2JavaMap.put("IBM280", "CP280");
            fIANA2JavaMap.put("CP280", "CP280");
            fIANA2JavaMap.put("CSIBM280", "CP280");
            fIANA2JavaMap.put("EBCDIC-CP-IT", "CP280");
            fIANA2JavaMap.put("IBM284", "CP284");
            fIANA2JavaMap.put("CP284", "CP284");
            fIANA2JavaMap.put("CSIBM284", "CP284");
            fIANA2JavaMap.put("EBCDIC-CP-ES", "CP284");
            fIANA2JavaMap.put("EBCDIC-CP-GB", "CP285");
            fIANA2JavaMap.put("IBM285", "CP285");
            fIANA2JavaMap.put("CP285", "CP285");
            fIANA2JavaMap.put("CSIBM285", "CP285");
            fIANA2JavaMap.put("EBCDIC-JP-KANA", "CP290");
            fIANA2JavaMap.put("IBM290", "CP290");
            fIANA2JavaMap.put("CP290", "CP290");
            fIANA2JavaMap.put("CSIBM290", "CP290");
            fIANA2JavaMap.put("EBCDIC-CP-FR", "CP297");
            fIANA2JavaMap.put("IBM297", "CP297");
            fIANA2JavaMap.put("CP297", "CP297");
            fIANA2JavaMap.put("CSIBM297", "CP297");
            fIANA2JavaMap.put("EBCDIC-CP-AR1", "CP420");
            fIANA2JavaMap.put("IBM420", "CP420");
            fIANA2JavaMap.put("CP420", "CP420");
            fIANA2JavaMap.put("CSIBM420", "CP420");
            fIANA2JavaMap.put("EBCDIC-CP-HE", "CP424");
            fIANA2JavaMap.put("IBM424", "CP424");
            fIANA2JavaMap.put("CP424", "CP424");
            fIANA2JavaMap.put("CSIBM424", "CP424");
            fIANA2JavaMap.put("IBM437", "CP437");
            fIANA2JavaMap.put("437", "CP437");
            fIANA2JavaMap.put("CP437", "CP437");
            fIANA2JavaMap.put("CSPC8CODEPAGE437", "CP437");
            fIANA2JavaMap.put("EBCDIC-CP-CH", "CP500");
            fIANA2JavaMap.put("IBM500", "CP500");
            fIANA2JavaMap.put("CP500", "CP500");
            fIANA2JavaMap.put("CSIBM500", "CP500");
            fIANA2JavaMap.put("EBCDIC-CP-CH", "CP500");
            fIANA2JavaMap.put("EBCDIC-CP-BE", "CP500");
            fIANA2JavaMap.put("IBM775", "CP775");
            fIANA2JavaMap.put("CP775", "CP775");
            fIANA2JavaMap.put("CSPC775BALTIC", "CP775");
            fIANA2JavaMap.put("IBM850", "CP850");
            fIANA2JavaMap.put("850", "CP850");
            fIANA2JavaMap.put("CP850", "CP850");
            fIANA2JavaMap.put("CSPC850MULTILINGUAL", "CP850");
            fIANA2JavaMap.put("IBM852", "CP852");
            fIANA2JavaMap.put("852", "CP852");
            fIANA2JavaMap.put("CP852", "CP852");
            fIANA2JavaMap.put("CSPCP852", "CP852");
            fIANA2JavaMap.put("IBM855", "CP855");
            fIANA2JavaMap.put("855", "CP855");
            fIANA2JavaMap.put("CP855", "CP855");
            fIANA2JavaMap.put("CSIBM855", "CP855");
            fIANA2JavaMap.put("IBM857", "CP857");
            fIANA2JavaMap.put("857", "CP857");
            fIANA2JavaMap.put("CP857", "CP857");
            fIANA2JavaMap.put("CSIBM857", "CP857");
            fIANA2JavaMap.put("IBM00858", "CP858");
            fIANA2JavaMap.put("CP00858", "CP858");
            fIANA2JavaMap.put("CCSID00858", "CP858");
            fIANA2JavaMap.put("IBM860", "CP860");
            fIANA2JavaMap.put("860", "CP860");
            fIANA2JavaMap.put("CP860", "CP860");
            fIANA2JavaMap.put("CSIBM860", "CP860");
            fIANA2JavaMap.put("IBM861", "CP861");
            fIANA2JavaMap.put("861", "CP861");
            fIANA2JavaMap.put("CP861", "CP861");
            fIANA2JavaMap.put("CP-IS", "CP861");
            fIANA2JavaMap.put("CSIBM861", "CP861");
            fIANA2JavaMap.put("IBM862", "CP862");
            fIANA2JavaMap.put("862", "CP862");
            fIANA2JavaMap.put("CP862", "CP862");
            fIANA2JavaMap.put("CSPC862LATINHEBREW", "CP862");
            fIANA2JavaMap.put("IBM863", "CP863");
            fIANA2JavaMap.put("863", "CP863");
            fIANA2JavaMap.put("CP863", "CP863");
            fIANA2JavaMap.put("CSIBM863", "CP863");
            fIANA2JavaMap.put("IBM864", "CP864");
            fIANA2JavaMap.put("CP864", "CP864");
            fIANA2JavaMap.put("CSIBM864", "CP864");
            fIANA2JavaMap.put("IBM865", "CP865");
            fIANA2JavaMap.put("865", "CP865");
            fIANA2JavaMap.put("CP865", "CP865");
            fIANA2JavaMap.put("CSIBM865", "CP865");
            fIANA2JavaMap.put("IBM866", "CP866");
            fIANA2JavaMap.put("866", "CP866");
            fIANA2JavaMap.put("CP866", "CP866");
            fIANA2JavaMap.put("CSIBM866", "CP866");
            fIANA2JavaMap.put("IBM868", "CP868");
            fIANA2JavaMap.put("CP868", "CP868");
            fIANA2JavaMap.put("CSIBM868", "CP868");
            fIANA2JavaMap.put("CP-AR", "CP868");
            fIANA2JavaMap.put("IBM869", "CP869");
            fIANA2JavaMap.put("CP869", "CP869");
            fIANA2JavaMap.put("CSIBM869", "CP869");
            fIANA2JavaMap.put("CP-GR", "CP869");
            fIANA2JavaMap.put("IBM870", "CP870");
            fIANA2JavaMap.put("CP870", "CP870");
            fIANA2JavaMap.put("CSIBM870", "CP870");
            fIANA2JavaMap.put("EBCDIC-CP-ROECE", "CP870");
            fIANA2JavaMap.put("EBCDIC-CP-YU", "CP870");
            fIANA2JavaMap.put("IBM871", "CP871");
            fIANA2JavaMap.put("CP871", "CP871");
            fIANA2JavaMap.put("CSIBM871", "CP871");
            fIANA2JavaMap.put("EBCDIC-CP-IS", "CP871");
            fIANA2JavaMap.put("IBM918", "CP918");
            fIANA2JavaMap.put("CP918", "CP918");
            fIANA2JavaMap.put("CSIBM918", "CP918");
            fIANA2JavaMap.put("EBCDIC-CP-AR2", "CP918");
            fIANA2JavaMap.put("IBM00924", "CP924");
            fIANA2JavaMap.put("CP00924", "CP924");
            fIANA2JavaMap.put("CCSID00924", "CP924");
            fIANA2JavaMap.put("EBCDIC-LATIN9--EURO", "CP924");
            fIANA2JavaMap.put("IBM1026", "CP1026");
            fIANA2JavaMap.put("CP1026", "CP1026");
            fIANA2JavaMap.put("CSIBM1026", "CP1026");
            fIANA2JavaMap.put("IBM01140", "Cp1140");
            fIANA2JavaMap.put("CP01140", "Cp1140");
            fIANA2JavaMap.put("CCSID01140", "Cp1140");
            fIANA2JavaMap.put("IBM01141", "Cp1141");
            fIANA2JavaMap.put("CP01141", "Cp1141");
            fIANA2JavaMap.put("CCSID01141", "Cp1141");
            fIANA2JavaMap.put("IBM01142", "Cp1142");
            fIANA2JavaMap.put("CP01142", "Cp1142");
            fIANA2JavaMap.put("CCSID01142", "Cp1142");
            fIANA2JavaMap.put("IBM01143", "Cp1143");
            fIANA2JavaMap.put("CP01143", "Cp1143");
            fIANA2JavaMap.put("CCSID01143", "Cp1143");
            fIANA2JavaMap.put("IBM01144", "Cp1144");
            fIANA2JavaMap.put("CP01144", "Cp1144");
            fIANA2JavaMap.put("CCSID01144", "Cp1144");
            fIANA2JavaMap.put("IBM01145", "Cp1145");
            fIANA2JavaMap.put("CP01145", "Cp1145");
            fIANA2JavaMap.put("CCSID01145", "Cp1145");
            fIANA2JavaMap.put("IBM01146", "Cp1146");
            fIANA2JavaMap.put("CP01146", "Cp1146");
            fIANA2JavaMap.put("CCSID01146", "Cp1146");
            fIANA2JavaMap.put("IBM01147", "Cp1147");
            fIANA2JavaMap.put("CP01147", "Cp1147");
            fIANA2JavaMap.put("CCSID01147", "Cp1147");
            fIANA2JavaMap.put("IBM01148", "Cp1148");
            fIANA2JavaMap.put("CP01148", "Cp1148");
            fIANA2JavaMap.put("CCSID01148", "Cp1148");
            fIANA2JavaMap.put("IBM01149", "Cp1149");
            fIANA2JavaMap.put("CP01149", "Cp1149");
            fIANA2JavaMap.put("CCSID01149", "Cp1149");
            fIANA2JavaMap.put("EUC-JP", "EUCJIS");
            fIANA2JavaMap.put("CSEUCPKDFMTJAPANESE", "EUCJIS");
            fIANA2JavaMap.put("EXTENDED_UNIX_CODE_PACKED_FORMAT_FOR_JAPANESE", "EUCJIS");
            fIANA2JavaMap.put("EUC-KR", "KSC5601");
            fIANA2JavaMap.put("GB2312", "GB2312");
            fIANA2JavaMap.put("CSGB2312", "GB2312");
            fIANA2JavaMap.put("ISO-2022-JP", "JIS");
            fIANA2JavaMap.put("CSISO2022JP", "JIS");
            fIANA2JavaMap.put("ISO-2022-KR", "ISO2022KR");
            fIANA2JavaMap.put("CSISO2022KR", "ISO2022KR");
            fIANA2JavaMap.put("ISO-2022-CN", "ISO2022CN");
            fIANA2JavaMap.put("X0201", "JIS0201");
            fIANA2JavaMap.put("CSISO13JISC6220JP", "JIS0201");
            fIANA2JavaMap.put("X0208", "JIS0208");
            fIANA2JavaMap.put("ISO-IR-87", "JIS0208");
            fIANA2JavaMap.put("X0208dbiJIS_X0208-1983", "JIS0208");
            fIANA2JavaMap.put("CSISO87JISX0208", "JIS0208");
            fIANA2JavaMap.put("X0212", "JIS0212");
            fIANA2JavaMap.put("ISO-IR-159", "JIS0212");
            fIANA2JavaMap.put("CSISO159JISX02121990", "JIS0212");
            fIANA2JavaMap.put("GB18030", "GB18030");
            fIANA2JavaMap.put("SHIFT_JIS", "SJIS");
            fIANA2JavaMap.put("CSSHIFTJIS", "SJIS");
            fIANA2JavaMap.put("MS_KANJI", "SJIS");
            fIANA2JavaMap.put("WINDOWS-31J", "MS932");
            fIANA2JavaMap.put("CSWINDOWS31J", "MS932");
            fIANA2JavaMap.put("WINDOWS-1250", "Cp1250");
            fIANA2JavaMap.put("WINDOWS-1251", "Cp1251");
            fIANA2JavaMap.put("WINDOWS-1252", "Cp1252");
            fIANA2JavaMap.put("WINDOWS-1253", "Cp1253");
            fIANA2JavaMap.put("WINDOWS-1254", "Cp1254");
            fIANA2JavaMap.put("WINDOWS-1255", "Cp1255");
            fIANA2JavaMap.put("WINDOWS-1256", "Cp1256");
            fIANA2JavaMap.put("WINDOWS-1257", "Cp1257");
            fIANA2JavaMap.put("WINDOWS-1258", "Cp1258");
            fIANA2JavaMap.put("TIS-620", "TIS620");
            fIANA2JavaMap.put("ISO-8859-1", "ISO8859_1");
            fIANA2JavaMap.put("ISO-IR-100", "ISO8859_1");
            fIANA2JavaMap.put("ISO_8859-1", "ISO8859_1");
            fIANA2JavaMap.put("LATIN1", "ISO8859_1");
            fIANA2JavaMap.put("CSISOLATIN1", "ISO8859_1");
            fIANA2JavaMap.put("L1", "ISO8859_1");
            fIANA2JavaMap.put("IBM819", "ISO8859_1");
            fIANA2JavaMap.put("CP819", "ISO8859_1");
            fIANA2JavaMap.put("ISO-8859-2", "ISO8859_2");
            fIANA2JavaMap.put("ISO-IR-101", "ISO8859_2");
            fIANA2JavaMap.put("ISO_8859-2", "ISO8859_2");
            fIANA2JavaMap.put("LATIN2", "ISO8859_2");
            fIANA2JavaMap.put("CSISOLATIN2", "ISO8859_2");
            fIANA2JavaMap.put("L2", "ISO8859_2");
            fIANA2JavaMap.put("ISO-8859-3", "ISO8859_3");
            fIANA2JavaMap.put("ISO-IR-109", "ISO8859_3");
            fIANA2JavaMap.put("ISO_8859-3", "ISO8859_3");
            fIANA2JavaMap.put("LATIN3", "ISO8859_3");
            fIANA2JavaMap.put("CSISOLATIN3", "ISO8859_3");
            fIANA2JavaMap.put("L3", "ISO8859_3");
            fIANA2JavaMap.put("ISO-8859-4", "ISO8859_4");
            fIANA2JavaMap.put("ISO-IR-110", "ISO8859_4");
            fIANA2JavaMap.put("ISO_8859-4", "ISO8859_4");
            fIANA2JavaMap.put("LATIN4", "ISO8859_4");
            fIANA2JavaMap.put("CSISOLATIN4", "ISO8859_4");
            fIANA2JavaMap.put("L4", "ISO8859_4");
            fIANA2JavaMap.put("ISO-8859-5", "ISO8859_5");
            fIANA2JavaMap.put("ISO-IR-144", "ISO8859_5");
            fIANA2JavaMap.put("ISO_8859-5", "ISO8859_5");
            fIANA2JavaMap.put("CYRILLIC", "ISO8859_5");
            fIANA2JavaMap.put("CSISOLATINCYRILLIC", "ISO8859_5");
            fIANA2JavaMap.put("ISO-8859-6", "ISO8859_6");
            fIANA2JavaMap.put("ISO-IR-127", "ISO8859_6");
            fIANA2JavaMap.put("ISO_8859-6", "ISO8859_6");
            fIANA2JavaMap.put("ECMA-114", "ISO8859_6");
            fIANA2JavaMap.put("ASMO-708", "ISO8859_6");
            fIANA2JavaMap.put("ARABIC", "ISO8859_6");
            fIANA2JavaMap.put("CSISOLATINARABIC", "ISO8859_6");
            fIANA2JavaMap.put("ISO-8859-7", "ISO8859_7");
            fIANA2JavaMap.put("ISO-IR-126", "ISO8859_7");
            fIANA2JavaMap.put("ISO_8859-7", "ISO8859_7");
            fIANA2JavaMap.put("ELOT_928", "ISO8859_7");
            fIANA2JavaMap.put("ECMA-118", "ISO8859_7");
            fIANA2JavaMap.put("GREEK", "ISO8859_7");
            fIANA2JavaMap.put("CSISOLATINGREEK", "ISO8859_7");
            fIANA2JavaMap.put("GREEK8", "ISO8859_7");
            fIANA2JavaMap.put("ISO-8859-8", "ISO8859_8");
            fIANA2JavaMap.put("ISO-8859-8-I", "ISO8859_8");
            fIANA2JavaMap.put("ISO-IR-138", "ISO8859_8");
            fIANA2JavaMap.put("ISO_8859-8", "ISO8859_8");
            fIANA2JavaMap.put("HEBREW", "ISO8859_8");
            fIANA2JavaMap.put("CSISOLATINHEBREW", "ISO8859_8");
            fIANA2JavaMap.put("ISO-8859-9", "ISO8859_9");
            fIANA2JavaMap.put("ISO-IR-148", "ISO8859_9");
            fIANA2JavaMap.put("ISO_8859-9", "ISO8859_9");
            fIANA2JavaMap.put("LATIN5", "ISO8859_9");
            fIANA2JavaMap.put("CSISOLATIN5", "ISO8859_9");
            fIANA2JavaMap.put("L5", "ISO8859_9");
            fIANA2JavaMap.put("KOI8-R", "KOI8_R");
            fIANA2JavaMap.put("CSKOI8R", "KOI8_R");
            fIANA2JavaMap.put("US-ASCII", "ASCII");
            fIANA2JavaMap.put("ISO-IR-6", "ASCII");
            fIANA2JavaMap.put("ANSI_X3.4-1986", "ASCII");
            fIANA2JavaMap.put("ISO_646.IRV:1991", "ASCII");
            fIANA2JavaMap.put("ASCII", "ASCII");
            fIANA2JavaMap.put("CSASCII", "ASCII");
            fIANA2JavaMap.put("ISO646-US", "ASCII");
            fIANA2JavaMap.put("US", "ASCII");
            fIANA2JavaMap.put("IBM367", "ASCII");
            fIANA2JavaMap.put("CP367", "ASCII");
            fIANA2JavaMap.put("UTF-8", "UTF8");
            fIANA2JavaMap.put("UTF-16", "Unicode");
            fIANA2JavaMap.put("UTF-16BE", "UnicodeBig");
            fIANA2JavaMap.put("UTF-16LE", "UnicodeLittle");
            fIANA2JavaMap.put("IBM-1047", "Cp1047");
            fIANA2JavaMap.put("IBM1047", "Cp1047");
            fIANA2JavaMap.put("CP1047", "Cp1047");
            fIANA2JavaMap.put("IBM-37", "CP037");
            fIANA2JavaMap.put("IBM-273", "CP273");
            fIANA2JavaMap.put("IBM-277", "CP277");
            fIANA2JavaMap.put("IBM-278", "CP278");
            fIANA2JavaMap.put("IBM-280", "CP280");
            fIANA2JavaMap.put("IBM-284", "CP284");
            fIANA2JavaMap.put("IBM-285", "CP285");
            fIANA2JavaMap.put("IBM-290", "CP290");
            fIANA2JavaMap.put("IBM-297", "CP297");
            fIANA2JavaMap.put("IBM-420", "CP420");
            fIANA2JavaMap.put("IBM-424", "CP424");
            fIANA2JavaMap.put("IBM-437", "CP437");
            fIANA2JavaMap.put("IBM-500", "CP500");
            fIANA2JavaMap.put("IBM-775", "CP775");
            fIANA2JavaMap.put("IBM-850", "CP850");
            fIANA2JavaMap.put("IBM-852", "CP852");
            fIANA2JavaMap.put("IBM-855", "CP855");
            fIANA2JavaMap.put("IBM-857", "CP857");
            fIANA2JavaMap.put("IBM-858", "CP858");
            fIANA2JavaMap.put("IBM-860", "CP860");
            fIANA2JavaMap.put("IBM-861", "CP861");
            fIANA2JavaMap.put("IBM-862", "CP862");
            fIANA2JavaMap.put("IBM-863", "CP863");
            fIANA2JavaMap.put("IBM-864", "CP864");
            fIANA2JavaMap.put("IBM-865", "CP865");
            fIANA2JavaMap.put("IBM-866", "CP866");
            fIANA2JavaMap.put("IBM-868", "CP868");
            fIANA2JavaMap.put("IBM-869", "CP869");
            fIANA2JavaMap.put("IBM-870", "CP870");
            fIANA2JavaMap.put("IBM-871", "CP871");
            fIANA2JavaMap.put("IBM-918", "CP918");
            fIANA2JavaMap.put("IBM-924", "CP924");
            fIANA2JavaMap.put("IBM-1026", "CP1026");
            fIANA2JavaMap.put("IBM-1140", "Cp1140");
            fIANA2JavaMap.put("IBM-1141", "Cp1141");
            fIANA2JavaMap.put("IBM-1142", "Cp1142");
            fIANA2JavaMap.put("IBM-1143", "Cp1143");
            fIANA2JavaMap.put("IBM-1144", "Cp1144");
            fIANA2JavaMap.put("IBM-1145", "Cp1145");
            fIANA2JavaMap.put("IBM-1146", "Cp1146");
            fIANA2JavaMap.put("IBM-1147", "Cp1147");
            fIANA2JavaMap.put("IBM-1148", "Cp1148");
            fIANA2JavaMap.put("IBM-1149", "Cp1149");
            fIANA2JavaMap.put("IBM-819", "ISO8859_1");
            fIANA2JavaMap.put("IBM-367", "ASCII");
            fJava2IANAMap.put("ISO8859_1", "ISO-8859-1");
            fJava2IANAMap.put("ISO8859_2", "ISO-8859-2");
            fJava2IANAMap.put("ISO8859_3", "ISO-8859-3");
            fJava2IANAMap.put("ISO8859_4", "ISO-8859-4");
            fJava2IANAMap.put("ISO8859_5", "ISO-8859-5");
            fJava2IANAMap.put("ISO8859_6", "ISO-8859-6");
            fJava2IANAMap.put("ISO8859_7", "ISO-8859-7");
            fJava2IANAMap.put("ISO8859_8", "ISO-8859-8");
            fJava2IANAMap.put("ISO8859_9", "ISO-8859-9");
            fJava2IANAMap.put("Big5", "BIG5");
            fJava2IANAMap.put("CP037", "EBCDIC-CP-US");
            fJava2IANAMap.put("CP273", "IBM273");
            fJava2IANAMap.put("CP277", "EBCDIC-CP-DK");
            fJava2IANAMap.put("CP278", "EBCDIC-CP-FI");
            fJava2IANAMap.put("CP280", "EBCDIC-CP-IT");
            fJava2IANAMap.put("CP284", "EBCDIC-CP-ES");
            fJava2IANAMap.put("CP285", "EBCDIC-CP-GB");
            fJava2IANAMap.put("CP290", "EBCDIC-JP-KANA");
            fJava2IANAMap.put("CP297", "EBCDIC-CP-FR");
            fJava2IANAMap.put("CP420", "EBCDIC-CP-AR1");
            fJava2IANAMap.put("CP424", "EBCDIC-CP-HE");
            fJava2IANAMap.put("CP437", "IBM437");
            fJava2IANAMap.put("CP500", "EBCDIC-CP-CH");
            fJava2IANAMap.put("CP775", "IBM775");
            fJava2IANAMap.put("CP850", "IBM850");
            fJava2IANAMap.put("CP852", "IBM852");
            fJava2IANAMap.put("CP855", "IBM855");
            fJava2IANAMap.put("CP857", "IBM857");
            fJava2IANAMap.put("CP858", "IBM00858");
            fJava2IANAMap.put("CP860", "IBM860");
            fJava2IANAMap.put("CP861", "IBM861");
            fJava2IANAMap.put("CP862", "IBM862");
            fJava2IANAMap.put("CP863", "IBM863");
            fJava2IANAMap.put("CP864", "IBM864");
            fJava2IANAMap.put("CP865", "IBM865");
            fJava2IANAMap.put("CP866", "IBM866");
            fJava2IANAMap.put("CP868", "IBM868");
            fJava2IANAMap.put("CP869", "IBM869");
            fJava2IANAMap.put("CP870", "EBCDIC-CP-ROECE");
            fJava2IANAMap.put("CP871", "EBCDIC-CP-IS");
            fJava2IANAMap.put("CP918", "EBCDIC-CP-AR2");
            fJava2IANAMap.put("CP924", "IBM00924");
            fJava2IANAMap.put("CP1026", "IBM1026");
            fJava2IANAMap.put("Cp01140", "IBM01140");
            fJava2IANAMap.put("Cp01141", "IBM01141");
            fJava2IANAMap.put("Cp01142", "IBM01142");
            fJava2IANAMap.put("Cp01143", "IBM01143");
            fJava2IANAMap.put("Cp01144", "IBM01144");
            fJava2IANAMap.put("Cp01145", "IBM01145");
            fJava2IANAMap.put("Cp01146", "IBM01146");
            fJava2IANAMap.put("Cp01147", "IBM01147");
            fJava2IANAMap.put("Cp01148", "IBM01148");
            fJava2IANAMap.put("Cp01149", "IBM01149");
            fJava2IANAMap.put("EUCJIS", "EUC-JP");
            fJava2IANAMap.put("GB2312", "GB2312");
            fJava2IANAMap.put("ISO2022KR", "ISO-2022-KR");
            fJava2IANAMap.put("ISO2022CN", "ISO-2022-CN");
            fJava2IANAMap.put("JIS", "ISO-2022-JP");
            fJava2IANAMap.put("KOI8_R", "KOI8-R");
            fJava2IANAMap.put("KSC5601", "EUC-KR");
            fJava2IANAMap.put("GB18030", "GB18030");
            fJava2IANAMap.put("SJIS", "SHIFT_JIS");
            fJava2IANAMap.put("MS932", "WINDOWS-31J");
            fJava2IANAMap.put("UTF8", "UTF-8");
            fJava2IANAMap.put("Unicode", "UTF-16");
            fJava2IANAMap.put("UnicodeBig", "UTF-16BE");
            fJava2IANAMap.put("UnicodeLittle", "UTF-16LE");
            fJava2IANAMap.put("JIS0201", "X0201");
            fJava2IANAMap.put("JIS0208", "X0208");
            fJava2IANAMap.put("JIS0212", "ISO-IR-159");
            fJava2IANAMap.put("CP1047", "IBM1047");
        }

        public static void putIANA2JavaMapping(String ianaEncoding, String javaEncoding) {
            fIANA2JavaMap.put(ianaEncoding, javaEncoding);
        }

        public static String getIANA2JavaMapping(String ianaEncoding) {
            return fIANA2JavaMap.get(ianaEncoding);
        }

        public static String removeIANA2JavaMapping(String ianaEncoding) {
            return fIANA2JavaMap.remove(ianaEncoding);
        }

        public static void putJava2IANAMapping(String javaEncoding, String ianaEncoding) {
            fJava2IANAMap.put(javaEncoding, ianaEncoding);
        }

        public static String getJava2IANAMapping(String javaEncoding) {
            return fJava2IANAMap.get(javaEncoding);
        }

        public static String removeJava2IANAMapping(String javaEncoding) {
            return fJava2IANAMap.remove(javaEncoding);
        }
    }

    public static final class HexBin {
        private static final int BASELENGTH = 255;
        private static final int LOOKUPLENGTH = 16;
        private static final byte[] hexNumberTable = new byte[255];
        private static final char[] lookUpHexAlphabet = new char[16];

        static {
            int i = 0;
            while (i < 255) {
                HexBin.hexNumberTable[i] = -1;
                ++i;
            }
            i = 57;
            while (i >= 48) {
                HexBin.hexNumberTable[i] = (byte)(i - 48);
                --i;
            }
            i = 70;
            while (i >= 65) {
                HexBin.hexNumberTable[i] = (byte)(i - 65 + 10);
                --i;
            }
            i = 102;
            while (i >= 97) {
                HexBin.hexNumberTable[i] = (byte)(i - 97 + 10);
                --i;
            }
            i = 0;
            while (i < 10) {
                HexBin.lookUpHexAlphabet[i] = (char)(48 + i);
                ++i;
            }
            i = 10;
            while (i <= 15) {
                HexBin.lookUpHexAlphabet[i] = (char)(65 + i - 10);
                ++i;
            }
        }

        public static String encode(byte[] binaryData) {
            if (binaryData == null) {
                return null;
            }
            int lengthData = binaryData.length;
            int lengthEncode = lengthData * 2;
            char[] encodedData = new char[lengthEncode];
            int i = 0;
            while (i < lengthData) {
                int temp = binaryData[i];
                if (temp < 0) {
                    temp += 256;
                }
                encodedData[i * 2] = lookUpHexAlphabet[temp >> 4];
                encodedData[i * 2 + 1] = lookUpHexAlphabet[temp & 0xF];
                ++i;
            }
            return new String(encodedData);
        }

        public static byte[] decode(String encoded) {
            if (encoded == null) {
                return null;
            }
            int lengthData = encoded.length();
            if (lengthData % 2 != 0) {
                return null;
            }
            char[] binaryData = encoded.toCharArray();
            int lengthDecode = lengthData / 2;
            byte[] decodedData = new byte[lengthDecode];
            int i = 0;
            while (i < lengthDecode) {
                byte temp1 = hexNumberTable[binaryData[i * 2]];
                if (temp1 == -1) {
                    return null;
                }
                byte temp2 = hexNumberTable[binaryData[i * 2 + 1]];
                if (temp2 == -1) {
                    return null;
                }
                decodedData[i] = (byte)(temp1 << 4 | temp2);
                ++i;
            }
            return decodedData;
        }
    }

    public static class TypeValidator {
        public static final short LESS_THAN = -1;
        public static final short EQUAL = 0;
        public static final short GREATER_THAN = 1;
        public static final short INDETERMINATE = 2;

        public static final boolean isDigit(char ch) {
            return ch >= '0' && ch <= '9';
        }

        public static final int getDigit(char ch) {
            return TypeValidator.isDigit(ch) ? ch - 48 : -1;
        }
    }

    public static final class URI
    implements Serializable {
        private static final long serialVersionUID = 1L;
        private static final byte[] fgLookupTable = new byte[128];
        private static final int RESERVED_CHARACTERS = 1;
        private static final int MARK_CHARACTERS = 2;
        private static final int SCHEME_CHARACTERS = 4;
        private static final int USERINFO_CHARACTERS = 8;
        private static final int ASCII_ALPHA_CHARACTERS = 16;
        private static final int ASCII_DIGIT_CHARACTERS = 32;
        private static final int ASCII_HEX_CHARACTERS = 64;
        private static final int PATH_CHARACTERS = 128;
        private static final int MASK_ALPHA_NUMERIC = 48;
        private static final int MASK_UNRESERVED_MASK = 50;
        private static final int MASK_URI_CHARACTER = 51;
        private static final int MASK_SCHEME_CHARACTER = 52;
        private static final int MASK_USERINFO_CHARACTER = 58;
        private static final int MASK_PATH_CHARACTER = 178;
        public static final URI BASE_URI;
        private String m_scheme = null;
        private String m_userinfo = null;
        private String m_host = null;
        private int m_port = -1;
        private String m_regAuthority = null;
        private String m_path = null;
        private String m_queryString = null;
        private String m_fragment = null;
        private static boolean[] gNeedEscaping;
        private static char[] gAfterEscaping1;
        private static char[] gAfterEscaping2;
        private static char[] gHexChs;

        static {
            int i = 48;
            while (i <= 57) {
                int n = i++;
                fgLookupTable[n] = (byte)(fgLookupTable[n] | 0x60);
            }
            i = 65;
            while (i <= 70) {
                int n = i;
                fgLookupTable[n] = (byte)(fgLookupTable[n] | 0x50);
                int n2 = i + 32;
                fgLookupTable[n2] = (byte)(fgLookupTable[n2] | 0x50);
                ++i;
            }
            i = 71;
            while (i <= 90) {
                int n = i;
                fgLookupTable[n] = (byte)(fgLookupTable[n] | 0x10);
                int n3 = i + 32;
                fgLookupTable[n3] = (byte)(fgLookupTable[n3] | 0x10);
                ++i;
            }
            fgLookupTable[59] = (byte)(fgLookupTable[59] | 1);
            fgLookupTable[47] = (byte)(fgLookupTable[47] | 1);
            fgLookupTable[63] = (byte)(fgLookupTable[63] | 1);
            fgLookupTable[58] = (byte)(fgLookupTable[58] | 1);
            fgLookupTable[64] = (byte)(fgLookupTable[64] | 1);
            fgLookupTable[38] = (byte)(fgLookupTable[38] | 1);
            fgLookupTable[61] = (byte)(fgLookupTable[61] | 1);
            fgLookupTable[43] = (byte)(fgLookupTable[43] | 1);
            fgLookupTable[36] = (byte)(fgLookupTable[36] | 1);
            fgLookupTable[44] = (byte)(fgLookupTable[44] | 1);
            fgLookupTable[91] = (byte)(fgLookupTable[91] | 1);
            fgLookupTable[93] = (byte)(fgLookupTable[93] | 1);
            fgLookupTable[45] = (byte)(fgLookupTable[45] | 2);
            fgLookupTable[95] = (byte)(fgLookupTable[95] | 2);
            fgLookupTable[46] = (byte)(fgLookupTable[46] | 2);
            fgLookupTable[33] = (byte)(fgLookupTable[33] | 2);
            fgLookupTable[126] = (byte)(fgLookupTable[126] | 2);
            fgLookupTable[42] = (byte)(fgLookupTable[42] | 2);
            fgLookupTable[39] = (byte)(fgLookupTable[39] | 2);
            fgLookupTable[40] = (byte)(fgLookupTable[40] | 2);
            fgLookupTable[41] = (byte)(fgLookupTable[41] | 2);
            fgLookupTable[43] = (byte)(fgLookupTable[43] | 4);
            fgLookupTable[45] = (byte)(fgLookupTable[45] | 4);
            fgLookupTable[46] = (byte)(fgLookupTable[46] | 4);
            fgLookupTable[59] = (byte)(fgLookupTable[59] | 8);
            fgLookupTable[58] = (byte)(fgLookupTable[58] | 8);
            fgLookupTable[38] = (byte)(fgLookupTable[38] | 8);
            fgLookupTable[61] = (byte)(fgLookupTable[61] | 8);
            fgLookupTable[43] = (byte)(fgLookupTable[43] | 8);
            fgLookupTable[36] = (byte)(fgLookupTable[36] | 8);
            fgLookupTable[44] = (byte)(fgLookupTable[44] | 8);
            fgLookupTable[59] = (byte)(fgLookupTable[59] | 0x80);
            fgLookupTable[47] = (byte)(fgLookupTable[47] | 0x80);
            fgLookupTable[58] = (byte)(fgLookupTable[58] | 0x80);
            fgLookupTable[64] = (byte)(fgLookupTable[64] | 0x80);
            fgLookupTable[38] = (byte)(fgLookupTable[38] | 0x80);
            fgLookupTable[61] = (byte)(fgLookupTable[61] | 0x80);
            fgLookupTable[43] = (byte)(fgLookupTable[43] | 0x80);
            fgLookupTable[36] = (byte)(fgLookupTable[36] | 0x80);
            fgLookupTable[44] = (byte)(fgLookupTable[44] | 0x80);
            URI uri = null;
            try {
                uri = new URI("abc://def.ghi.jkl");
            }
            catch (MalformedURIException malformedURIException) {
                // empty catch block
            }
            BASE_URI = uri;
            gNeedEscaping = new boolean[128];
            gAfterEscaping1 = new char[128];
            gAfterEscaping2 = new char[128];
            gHexChs = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
            i = 0;
            while (i <= 31) {
                URI.gNeedEscaping[i] = true;
                URI.gAfterEscaping1[i] = gHexChs[i >> 4];
                URI.gAfterEscaping2[i] = gHexChs[i & 0xF];
                ++i;
            }
            URI.gNeedEscaping[127] = true;
            URI.gAfterEscaping1[127] = 55;
            URI.gAfterEscaping2[127] = 70;
            char[] escChs = new char[]{' ', '<', '>', '\"', '{', '}', '|', '\\', '^', '~', '`'};
            int len = escChs.length;
            int i2 = 0;
            while (i2 < len) {
                char ch = escChs[i2];
                URI.gNeedEscaping[ch] = true;
                URI.gAfterEscaping1[ch] = gHexChs[ch >> 4];
                URI.gAfterEscaping2[ch] = gHexChs[ch & 0xF];
                ++i2;
            }
        }

        public URI() {
        }

        public URI(URI p_other) {
            this.initialize(p_other);
        }

        public URI(String p_uriSpec) throws MalformedURIException {
            this((URI)null, p_uriSpec);
        }

        public URI(URI p_base, String p_uriSpec) throws MalformedURIException {
            this.initialize(p_base, p_uriSpec);
        }

        public URI(String p_scheme, String p_schemeSpecificPart) throws MalformedURIException {
            if (p_scheme == null || p_scheme.trim().length() == 0) {
                throw new MalformedURIException("Cannot construct URI with null/empty scheme!");
            }
            if (p_schemeSpecificPart == null || p_schemeSpecificPart.trim().length() == 0) {
                throw new MalformedURIException("Cannot construct URI with null/empty scheme-specific part!");
            }
            this.setScheme(p_scheme);
            this.setPath(p_schemeSpecificPart);
        }

        public URI(String p_scheme, String p_host, String p_path, String p_queryString, String p_fragment) throws MalformedURIException {
            this(p_scheme, null, p_host, -1, p_path, p_queryString, p_fragment);
        }

        public URI(String p_scheme, String p_userinfo, String p_host, int p_port, String p_path, String p_queryString, String p_fragment) throws MalformedURIException {
            if (p_scheme == null || p_scheme.trim().length() == 0) {
                throw new MalformedURIException("Scheme is required!");
            }
            if (p_host == null) {
                if (p_userinfo != null) {
                    throw new MalformedURIException("Userinfo may not be specified if host is not specified!");
                }
                if (p_port != -1) {
                    throw new MalformedURIException("Port may not be specified if host is not specified!");
                }
            }
            if (p_path != null) {
                if (p_path.indexOf(63) != -1 && p_queryString != null) {
                    throw new MalformedURIException("Query string cannot be specified in path and query string!");
                }
                if (p_path.indexOf(35) != -1 && p_fragment != null) {
                    throw new MalformedURIException("Fragment cannot be specified in both the path and fragment!");
                }
            }
            this.setScheme(p_scheme);
            this.setHost(p_host);
            this.setPort(p_port);
            this.setUserinfo(p_userinfo);
            this.setPath(p_path);
            this.setQueryString(p_queryString);
            this.setFragment(p_fragment);
        }

        private void initialize(URI p_other) {
            this.m_scheme = p_other.getScheme();
            this.m_userinfo = p_other.getUserinfo();
            this.m_host = p_other.getHost();
            this.m_port = p_other.getPort();
            this.m_regAuthority = p_other.getRegBasedAuthority();
            this.m_path = p_other.getPath();
            this.m_queryString = p_other.getQueryString();
            this.m_fragment = p_other.getFragment();
        }

        private void initialize(URI p_base, String p_uriSpec) throws MalformedURIException {
            int uriSpecLen;
            String uriSpec = p_uriSpec;
            int n = uriSpecLen = uriSpec != null ? uriSpec.length() : 0;
            if (p_base == null && uriSpecLen == 0) {
                throw new MalformedURIException("Cannot initialize URI with empty parameters.");
            }
            if (uriSpecLen == 0) {
                this.initialize(p_base);
                return;
            }
            int index = 0;
            int colonIdx = uriSpec.indexOf(58);
            if (colonIdx != -1) {
                int searchFrom = colonIdx - 1;
                int slashIdx = uriSpec.lastIndexOf(47, searchFrom);
                int queryIdx = uriSpec.lastIndexOf(63, searchFrom);
                int fragmentIdx = uriSpec.lastIndexOf(35, searchFrom);
                if (colonIdx < 2 || slashIdx != -1 || queryIdx != -1 || fragmentIdx != -1) {
                    if (colonIdx == 0 || p_base == null && fragmentIdx != 0) {
                        throw new MalformedURIException("No scheme found in URI.");
                    }
                } else {
                    this.initializeScheme(uriSpec);
                    index = this.m_scheme.length() + 1;
                    if (colonIdx == uriSpecLen - 1 || uriSpec.charAt(colonIdx + 1) == '#') {
                        throw new MalformedURIException("Scheme specific part cannot be empty.");
                    }
                }
            } else if (p_base == null && uriSpec.indexOf(35) != 0) {
                throw new MalformedURIException("No scheme found in URI.");
            }
            if (index + 1 < uriSpecLen && uriSpec.charAt(index) == '/' && uriSpec.charAt(index + 1) == '/') {
                int startPos = index += 2;
                char testChar = '\u0000';
                while (index < uriSpecLen) {
                    testChar = uriSpec.charAt(index);
                    if (testChar == '/' || testChar == '?' || testChar == '#') break;
                    ++index;
                }
                if (index > startPos) {
                    if (!this.initializeAuthority(uriSpec.substring(startPos, index))) {
                        index = startPos - 2;
                    }
                } else {
                    this.m_host = "";
                }
            }
            this.initializePath(uriSpec, index);
            if (p_base != null) {
                if (this.m_path.length() == 0 && this.m_scheme == null && this.m_host == null && this.m_regAuthority == null) {
                    this.m_scheme = p_base.getScheme();
                    this.m_userinfo = p_base.getUserinfo();
                    this.m_host = p_base.getHost();
                    this.m_port = p_base.getPort();
                    this.m_regAuthority = p_base.getRegBasedAuthority();
                    this.m_path = p_base.getPath();
                    if (this.m_queryString == null) {
                        this.m_queryString = p_base.getQueryString();
                    }
                    return;
                }
                if (this.m_scheme != null) {
                    return;
                }
                this.m_scheme = p_base.getScheme();
                if (this.m_host != null || this.m_regAuthority != null) {
                    return;
                }
                this.m_userinfo = p_base.getUserinfo();
                this.m_host = p_base.getHost();
                this.m_port = p_base.getPort();
                this.m_regAuthority = p_base.getRegBasedAuthority();
                if (this.m_path.length() > 0 && this.m_path.startsWith("/")) {
                    return;
                }
                String path = "";
                String basePath = p_base.getPath();
                if (basePath != null && basePath.length() > 0) {
                    int lastSlash = basePath.lastIndexOf(47);
                    if (lastSlash != -1) {
                        path = basePath.substring(0, lastSlash + 1);
                    }
                } else if (this.m_path.length() > 0) {
                    path = "/";
                }
                path = path.concat(this.m_path);
                index = -1;
                while ((index = path.indexOf("/./")) != -1) {
                    path = path.substring(0, index + 1).concat(path.substring(index + 3));
                }
                if (path.endsWith("/.")) {
                    path = path.substring(0, path.length() - 1);
                }
                index = 1;
                int segIndex = -1;
                String tempString = null;
                while ((index = path.indexOf("/../", index)) > 0) {
                    tempString = path.substring(0, path.indexOf("/../"));
                    segIndex = tempString.lastIndexOf(47);
                    if (segIndex != -1) {
                        if (!tempString.substring(segIndex).equals("..")) {
                            path = path.substring(0, segIndex + 1).concat(path.substring(index + 4));
                            index = segIndex;
                            continue;
                        }
                        index += 4;
                        continue;
                    }
                    index += 4;
                }
                if (path.endsWith("/..") && (segIndex = (tempString = path.substring(0, path.length() - 3)).lastIndexOf(47)) != -1) {
                    path = path.substring(0, segIndex + 1);
                }
                this.m_path = path;
            }
        }

        private void initializeScheme(String p_uriSpec) throws MalformedURIException {
            int uriSpecLen = p_uriSpec.length();
            int index = 0;
            String scheme = null;
            char testChar = '\u0000';
            while (index < uriSpecLen) {
                testChar = p_uriSpec.charAt(index);
                if (testChar == ':' || testChar == '/' || testChar == '?' || testChar == '#') break;
                ++index;
            }
            if ((scheme = p_uriSpec.substring(0, index)).length() == 0) {
                throw new MalformedURIException("No scheme found in URI.");
            }
            this.setScheme(scheme);
        }

        private boolean initializeAuthority(String p_uriSpec) {
            int index = 0;
            int start = 0;
            int end = p_uriSpec.length();
            char testChar = '\u0000';
            String userinfo = null;
            if (p_uriSpec.indexOf(64, start) != -1) {
                while (index < end) {
                    testChar = p_uriSpec.charAt(index);
                    if (testChar == '@') break;
                    ++index;
                }
                userinfo = p_uriSpec.substring(start, index);
                ++index;
            }
            String host = null;
            start = index;
            boolean hasPort = false;
            if (index < end) {
                if (p_uriSpec.charAt(start) == '[') {
                    int bracketIndex = p_uriSpec.indexOf(93, start);
                    int n = index = bracketIndex != -1 ? bracketIndex : end;
                    if (index + 1 < end && p_uriSpec.charAt(index + 1) == ':') {
                        ++index;
                        hasPort = true;
                    } else {
                        index = end;
                    }
                } else {
                    int colonIndex = p_uriSpec.lastIndexOf(58, end);
                    index = colonIndex > start ? colonIndex : end;
                    hasPort = index != end;
                }
            }
            host = p_uriSpec.substring(start, index);
            int port = -1;
            if (host.length() > 0 && hasPort) {
                start = ++index;
                while (index < end) {
                    ++index;
                }
                String portStr = p_uriSpec.substring(start, index);
                if (portStr.length() > 0) {
                    try {
                        port = Integer.parseInt(portStr);
                        if (port == -1) {
                            --port;
                        }
                    }
                    catch (NumberFormatException nfe) {
                        port = -2;
                    }
                }
            }
            if (this.isValidServerBasedAuthority(host, port, userinfo)) {
                this.m_host = host;
                this.m_port = port;
                this.m_userinfo = userinfo;
                return true;
            }
            if (this.isValidRegistryBasedAuthority(p_uriSpec)) {
                this.m_regAuthority = p_uriSpec;
                return true;
            }
            return false;
        }

        private boolean isValidServerBasedAuthority(String host, int port, String userinfo) {
            if (!URI.isWellFormedAddress(host)) {
                return false;
            }
            if (port < -1 || port > 65535) {
                return false;
            }
            if (userinfo != null) {
                int index = 0;
                int end = userinfo.length();
                char testChar = '\u0000';
                while (index < end) {
                    testChar = userinfo.charAt(index);
                    if (testChar == '%') {
                        if (index + 2 >= end || !URI.isHex(userinfo.charAt(index + 1)) || !URI.isHex(userinfo.charAt(index + 2))) {
                            return false;
                        }
                        index += 2;
                    } else if (!URI.isUserinfoCharacter(testChar)) {
                        return false;
                    }
                    ++index;
                }
            }
            return true;
        }

        private boolean isValidRegistryBasedAuthority(String authority) {
            int index = 0;
            int end = authority.length();
            while (index < end) {
                char testChar = authority.charAt(index);
                if (testChar == '%') {
                    if (index + 2 >= end || !URI.isHex(authority.charAt(index + 1)) || !URI.isHex(authority.charAt(index + 2))) {
                        return false;
                    }
                    index += 2;
                } else if (!URI.isPathCharacter(testChar)) {
                    return false;
                }
                ++index;
            }
            return true;
        }

        /*
         * Unable to fully structure code
         */
        private void initializePath(String p_uriSpec, int p_nStartIndex) throws MalformedURIException {
            block24: {
                if (p_uriSpec == null) {
                    throw new MalformedURIException("Cannot initialize path from null string!");
                }
                index = p_nStartIndex;
                start = p_nStartIndex;
                end = p_uriSpec.length();
                testChar = '\u0000';
                if (start >= end) break block24;
                if (this.getScheme() != null && p_uriSpec.charAt(start) != '/') ** GOTO lbl32
                while (index < end) {
                    testChar = p_uriSpec.charAt(index);
                    if (testChar == '%') {
                        if (index + 2 >= end || !URI.isHex(p_uriSpec.charAt(index + 1)) || !URI.isHex(p_uriSpec.charAt(index + 2))) {
                            throw new MalformedURIException("Path contains invalid escape sequence!");
                        }
                        index += 2;
                    } else if (!URI.isPathCharacter(testChar)) {
                        if (testChar != '?' && testChar != '#') {
                            throw new MalformedURIException("Path contains invalid character: " + testChar);
                        }
                        break block24;
                    }
                    ++index;
                }
                break block24;
                while ((testChar = (char)p_uriSpec.charAt(index)) != '?' && testChar != '#') {
                    if (testChar == '%') {
                        if (index + 2 >= end || !URI.isHex(p_uriSpec.charAt(index + 1)) || !URI.isHex(p_uriSpec.charAt(index + 2))) {
                            throw new MalformedURIException("Opaque part contains invalid escape sequence!");
                        }
                        index += 2;
                    } else if (!URI.isURICharacter(testChar)) {
                        throw new MalformedURIException("Opaque part contains invalid character: " + testChar);
                    }
                    ++index;
lbl32:
                    // 2 sources

                    if (index < end) continue;
                }
            }
            this.m_path = p_uriSpec.substring(start, index);
            if (testChar == '?') {
                start = ++index;
                while (index < end) {
                    testChar = p_uriSpec.charAt(index);
                    if (testChar == '#') break;
                    if (testChar == '%') {
                        if (index + 2 >= end || !URI.isHex(p_uriSpec.charAt(index + 1)) || !URI.isHex(p_uriSpec.charAt(index + 2))) {
                            throw new MalformedURIException("Query string contains invalid escape sequence!");
                        }
                        index += 2;
                    } else if (!URI.isURICharacter(testChar)) {
                        throw new MalformedURIException("Query string contains invalid character: " + testChar);
                    }
                    ++index;
                }
                this.m_queryString = p_uriSpec.substring(start, index);
            }
            if (testChar == '#') {
                start = ++index;
                while (index < end) {
                    testChar = p_uriSpec.charAt(index);
                    if (testChar == '%') {
                        if (index + 2 >= end || !URI.isHex(p_uriSpec.charAt(index + 1)) || !URI.isHex(p_uriSpec.charAt(index + 2))) {
                            throw new MalformedURIException("Fragment contains invalid escape sequence!");
                        }
                        index += 2;
                    } else if (!URI.isURICharacter(testChar)) {
                        throw new MalformedURIException("Fragment contains invalid character: " + testChar);
                    }
                    ++index;
                }
                this.m_fragment = p_uriSpec.substring(start, index);
            }
        }

        public String getScheme() {
            return this.m_scheme;
        }

        public String getSchemeSpecificPart() {
            StringBuffer schemespec = new StringBuffer();
            if (this.m_host != null || this.m_regAuthority != null) {
                schemespec.append("//");
                if (this.m_host != null) {
                    if (this.m_userinfo != null) {
                        schemespec.append(this.m_userinfo);
                        schemespec.append('@');
                    }
                    schemespec.append(this.m_host);
                    if (this.m_port != -1) {
                        schemespec.append(':');
                        schemespec.append(this.m_port);
                    }
                } else {
                    schemespec.append(this.m_regAuthority);
                }
            }
            if (this.m_path != null) {
                schemespec.append(this.m_path);
            }
            if (this.m_queryString != null) {
                schemespec.append('?');
                schemespec.append(this.m_queryString);
            }
            if (this.m_fragment != null) {
                schemespec.append('#');
                schemespec.append(this.m_fragment);
            }
            return schemespec.toString();
        }

        public String getUserinfo() {
            return this.m_userinfo;
        }

        public String getHost() {
            return this.m_host;
        }

        public int getPort() {
            return this.m_port;
        }

        public String getRegBasedAuthority() {
            return this.m_regAuthority;
        }

        public String getPath(boolean p_includeQueryString, boolean p_includeFragment) {
            StringBuffer pathString = new StringBuffer(this.m_path);
            if (p_includeQueryString && this.m_queryString != null) {
                pathString.append('?');
                pathString.append(this.m_queryString);
            }
            if (p_includeFragment && this.m_fragment != null) {
                pathString.append('#');
                pathString.append(this.m_fragment);
            }
            return pathString.toString();
        }

        public String getPath() {
            return this.m_path;
        }

        public String getQueryString() {
            return this.m_queryString;
        }

        public String getFragment() {
            return this.m_fragment;
        }

        public void setScheme(String p_scheme) throws MalformedURIException {
            if (p_scheme == null) {
                throw new MalformedURIException("Cannot set scheme from null string!");
            }
            if (!URI.isConformantSchemeName(p_scheme)) {
                throw new MalformedURIException("The scheme is not conformant.");
            }
            this.m_scheme = p_scheme.toLowerCase();
        }

        public void setUserinfo(String p_userinfo) throws MalformedURIException {
            if (p_userinfo == null) {
                this.m_userinfo = null;
                return;
            }
            if (this.m_host == null) {
                throw new MalformedURIException("Userinfo cannot be set when host is null!");
            }
            int index = 0;
            int end = p_userinfo.length();
            char testChar = '\u0000';
            while (index < end) {
                testChar = p_userinfo.charAt(index);
                if (testChar == '%') {
                    if (index + 2 >= end || !URI.isHex(p_userinfo.charAt(index + 1)) || !URI.isHex(p_userinfo.charAt(index + 2))) {
                        throw new MalformedURIException("Userinfo contains invalid escape sequence!");
                    }
                } else if (!URI.isUserinfoCharacter(testChar)) {
                    throw new MalformedURIException("Userinfo contains invalid character:" + testChar);
                }
                ++index;
            }
            this.m_userinfo = p_userinfo;
        }

        public void setHost(String p_host) throws MalformedURIException {
            if (p_host == null || p_host.length() == 0) {
                if (p_host != null) {
                    this.m_regAuthority = null;
                }
                this.m_host = p_host;
                this.m_userinfo = null;
                this.m_port = -1;
                return;
            }
            if (!URI.isWellFormedAddress(p_host)) {
                throw new MalformedURIException("Host is not a well formed address!");
            }
            this.m_host = p_host;
            this.m_regAuthority = null;
        }

        public void setPort(int p_port) throws MalformedURIException {
            if (p_port >= 0 && p_port <= 65535) {
                if (this.m_host == null) {
                    throw new MalformedURIException("Port cannot be set when host is null!");
                }
            } else if (p_port != -1) {
                throw new MalformedURIException("Invalid port number!");
            }
            this.m_port = p_port;
        }

        public void setRegBasedAuthority(String authority) throws MalformedURIException {
            if (authority == null) {
                this.m_regAuthority = null;
                return;
            }
            if (authority.length() < 1 || !this.isValidRegistryBasedAuthority(authority) || authority.indexOf(47) != -1) {
                throw new MalformedURIException("Registry based authority is not well formed.");
            }
            this.m_regAuthority = authority;
            this.m_host = null;
            this.m_userinfo = null;
            this.m_port = -1;
        }

        public void setPath(String p_path) throws MalformedURIException {
            if (p_path == null) {
                this.m_path = null;
                this.m_queryString = null;
                this.m_fragment = null;
            } else {
                this.initializePath(p_path, 0);
            }
        }

        public void appendPath(String p_addToPath) throws MalformedURIException {
            if (p_addToPath == null || p_addToPath.trim().length() == 0) {
                return;
            }
            if (!URI.isURIString(p_addToPath)) {
                throw new MalformedURIException("Path contains invalid character!");
            }
            this.m_path = this.m_path == null || this.m_path.trim().length() == 0 ? (p_addToPath.startsWith("/") ? p_addToPath : "/" + p_addToPath) : (this.m_path.endsWith("/") ? (p_addToPath.startsWith("/") ? this.m_path.concat(p_addToPath.substring(1)) : this.m_path.concat(p_addToPath)) : (p_addToPath.startsWith("/") ? this.m_path.concat(p_addToPath) : this.m_path.concat("/" + p_addToPath)));
        }

        public void setQueryString(String p_queryString) throws MalformedURIException {
            if (p_queryString == null) {
                this.m_queryString = null;
            } else {
                if (!this.isGenericURI()) {
                    throw new MalformedURIException("Query string can only be set for a generic URI!");
                }
                if (this.getPath() == null) {
                    throw new MalformedURIException("Query string cannot be set when path is null!");
                }
                if (!URI.isURIString(p_queryString)) {
                    throw new MalformedURIException("Query string contains invalid character!");
                }
                this.m_queryString = p_queryString;
            }
        }

        public void setFragment(String p_fragment) throws MalformedURIException {
            if (p_fragment == null) {
                this.m_fragment = null;
            } else {
                if (!this.isGenericURI()) {
                    throw new MalformedURIException("Fragment can only be set for a generic URI!");
                }
                if (this.getPath() == null) {
                    throw new MalformedURIException("Fragment cannot be set when path is null!");
                }
                if (!URI.isURIString(p_fragment)) {
                    throw new MalformedURIException("Fragment contains invalid character!");
                }
                this.m_fragment = p_fragment;
            }
        }

        public boolean equals(Object p_test) {
            if (p_test instanceof URI) {
                URI testURI = (URI)p_test;
                if ((this.m_scheme == null && testURI.m_scheme == null || this.m_scheme != null && testURI.m_scheme != null && this.m_scheme.equals(testURI.m_scheme)) && (this.m_userinfo == null && testURI.m_userinfo == null || this.m_userinfo != null && testURI.m_userinfo != null && this.m_userinfo.equals(testURI.m_userinfo)) && (this.m_host == null && testURI.m_host == null || this.m_host != null && testURI.m_host != null && this.m_host.equals(testURI.m_host)) && this.m_port == testURI.m_port && (this.m_path == null && testURI.m_path == null || this.m_path != null && testURI.m_path != null && this.m_path.equals(testURI.m_path)) && (this.m_queryString == null && testURI.m_queryString == null || this.m_queryString != null && testURI.m_queryString != null && this.m_queryString.equals(testURI.m_queryString)) && (this.m_fragment == null && testURI.m_fragment == null || this.m_fragment != null && testURI.m_fragment != null && this.m_fragment.equals(testURI.m_fragment))) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            int prime = 31;
            int result = 1;
            result = 31 * result + (this.m_fragment == null ? 0 : this.m_fragment.hashCode());
            result = 31 * result + (this.m_host == null ? 0 : this.m_host.hashCode());
            result = 31 * result + (this.m_path == null ? 0 : this.m_path.hashCode());
            result = 31 * result + this.m_port;
            result = 31 * result + (this.m_queryString == null ? 0 : this.m_queryString.hashCode());
            result = 31 * result + (this.m_scheme == null ? 0 : this.m_scheme.hashCode());
            result = 31 * result + (this.m_userinfo == null ? 0 : this.m_userinfo.hashCode());
            return result;
        }

        public String toString() {
            StringBuffer uriSpecString = new StringBuffer();
            if (this.m_scheme != null) {
                uriSpecString.append(this.m_scheme);
                uriSpecString.append(':');
            }
            uriSpecString.append(this.getSchemeSpecificPart());
            return uriSpecString.toString();
        }

        public boolean isGenericURI() {
            return this.m_host != null;
        }

        public static boolean isConformantSchemeName(String p_scheme) {
            if (p_scheme == null || p_scheme.trim().length() == 0) {
                return false;
            }
            if (!URI.isAlpha(p_scheme.charAt(0))) {
                return false;
            }
            int schemeLength = p_scheme.length();
            int i = 1;
            while (i < schemeLength) {
                char testChar = p_scheme.charAt(i);
                if (!URI.isSchemeCharacter(testChar)) {
                    return false;
                }
                ++i;
            }
            return true;
        }

        public static boolean isWellFormedAddress(String address) {
            if (address == null) {
                return false;
            }
            int addrLength = address.length();
            if (addrLength == 0) {
                return false;
            }
            if (address.startsWith("[")) {
                return URI.isWellFormedIPv6Reference(address);
            }
            if (address.startsWith(".") || address.startsWith("-") || address.endsWith("-")) {
                return false;
            }
            int index = address.lastIndexOf(46);
            if (address.endsWith(".")) {
                index = address.substring(0, index).lastIndexOf(46);
            }
            if (index + 1 < addrLength && URI.isDigit(address.charAt(index + 1))) {
                return URI.isWellFormedIPv4Address(address);
            }
            if (addrLength > 255) {
                return false;
            }
            int labelCharCount = 0;
            int i = 0;
            while (i < addrLength) {
                char testChar = address.charAt(i);
                if (testChar == '.') {
                    if (!URI.isAlphanum(address.charAt(i - 1))) {
                        return false;
                    }
                    if (i + 1 < addrLength && !URI.isAlphanum(address.charAt(i + 1))) {
                        return false;
                    }
                    labelCharCount = 0;
                } else {
                    if (!URI.isAlphanum(testChar) && testChar != '-') {
                        return false;
                    }
                    if (++labelCharCount > 63) {
                        return false;
                    }
                }
                ++i;
            }
            return true;
        }

        public static boolean isWellFormedIPv4Address(String address) {
            int addrLength = address.length();
            int numDots = 0;
            int numDigits = 0;
            int i = 0;
            while (i < addrLength) {
                char testChar = address.charAt(i);
                if (testChar == '.') {
                    if (i > 0 && !URI.isDigit(address.charAt(i - 1)) || i + 1 < addrLength && !URI.isDigit(address.charAt(i + 1))) {
                        return false;
                    }
                    numDigits = 0;
                    if (++numDots > 3) {
                        return false;
                    }
                } else {
                    if (!URI.isDigit(testChar)) {
                        return false;
                    }
                    if (++numDigits > 3) {
                        return false;
                    }
                    if (numDigits == 3) {
                        char first = address.charAt(i - 2);
                        char second = address.charAt(i - 1);
                        if (first >= '2' && (first != '2' || second >= '5' && (second != '5' || testChar > '5'))) {
                            return false;
                        }
                    }
                }
                ++i;
            }
            return numDots == 3;
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        public static boolean isWellFormedIPv6Reference(String address) {
            int addrLength = address.length();
            int index = 1;
            int end = addrLength - 1;
            if (addrLength <= 2 || address.charAt(0) != '[' || address.charAt(end) != ']') {
                return false;
            }
            int[] counter = new int[1];
            if ((index = URI.scanHexSequence(address, index, end, counter)) == -1) {
                return false;
            }
            if (index == end) {
                return counter[0] == 8;
            }
            if (index + 1 >= end || address.charAt(index) != ':') return false;
            if (address.charAt(index + 1) != ':') return counter[0] == 6 && URI.isWellFormedIPv4Address(address.substring(index + 1, end));
            counter[0] = counter[0] + 1;
            if (counter[0] > 8) {
                return false;
            }
            if ((index += 2) == end) {
                return true;
            }
            int prevCount = counter[0];
            return (index = URI.scanHexSequence(address, index, end, counter)) == end || index != -1 && URI.isWellFormedIPv4Address(address.substring(counter[0] > prevCount ? index + 1 : index, end));
        }

        private static int scanHexSequence(String address, int index, int end, int[] counter) {
            int numDigits = 0;
            int start = index;
            while (index < end) {
                char testChar = address.charAt(index);
                if (testChar == ':') {
                    if (numDigits > 0 && (counter[0] = counter[0] + 1) > 8) {
                        return -1;
                    }
                    if (numDigits == 0 || index + 1 < end && address.charAt(index + 1) == ':') {
                        return index;
                    }
                    numDigits = 0;
                } else {
                    if (!URI.isHex(testChar)) {
                        if (testChar == '.' && numDigits < 4 && numDigits > 0 && counter[0] <= 6) {
                            int back = index - numDigits - 1;
                            return back >= start ? back : back + 1;
                        }
                        return -1;
                    }
                    if (++numDigits > 4) {
                        return -1;
                    }
                }
                ++index;
            }
            return numDigits > 0 && (counter[0] = counter[0] + 1) <= 8 ? end : -1;
        }

        private static boolean isDigit(char p_char) {
            return p_char >= '0' && p_char <= '9';
        }

        private static boolean isHex(char p_char) {
            return p_char <= 'f' && (fgLookupTable[p_char] & 0x40) != 0;
        }

        private static boolean isAlpha(char p_char) {
            return p_char >= 'a' && p_char <= 'z' || p_char >= 'A' && p_char <= 'Z';
        }

        private static boolean isAlphanum(char p_char) {
            return p_char <= 'z' && (fgLookupTable[p_char] & 0x30) != 0;
        }

        private static boolean isURICharacter(char p_char) {
            return p_char <= '~' && (fgLookupTable[p_char] & 0x33) != 0;
        }

        private static boolean isSchemeCharacter(char p_char) {
            return p_char <= 'z' && (fgLookupTable[p_char] & 0x34) != 0;
        }

        private static boolean isUserinfoCharacter(char p_char) {
            return p_char <= 'z' && (fgLookupTable[p_char] & 0x3A) != 0;
        }

        private static boolean isPathCharacter(char p_char) {
            return p_char <= '~' && (fgLookupTable[p_char] & 0xB2) != 0;
        }

        private static boolean isURIString(String p_uric) {
            if (p_uric == null) {
                return false;
            }
            int end = p_uric.length();
            char testChar = '\u0000';
            int i = 0;
            while (i < end) {
                testChar = p_uric.charAt(i);
                if (testChar == '%') {
                    if (i + 2 >= end || !URI.isHex(p_uric.charAt(i + 1)) || !URI.isHex(p_uric.charAt(i + 2))) {
                        return false;
                    }
                    i += 2;
                } else if (!URI.isURICharacter(testChar)) {
                    return false;
                }
                ++i;
            }
            return true;
        }

        public static String encode(String anyURI) {
            int ch;
            int len = anyURI.length();
            StringBuffer buffer = new StringBuffer(len * 3);
            int i = 0;
            while (i < len) {
                ch = anyURI.charAt(i);
                if (ch >= 128) break;
                if (gNeedEscaping[ch]) {
                    buffer.append('%');
                    buffer.append(gAfterEscaping1[ch]);
                    buffer.append(gAfterEscaping2[ch]);
                } else {
                    buffer.append((char)ch);
                }
                ++i;
            }
            if (i < len) {
                byte[] bytes = null;
                try {
                    bytes = anyURI.substring(i).getBytes("UTF-8");
                }
                catch (UnsupportedEncodingException e) {
                    return anyURI;
                }
                len = bytes.length;
                i = 0;
                while (i < len) {
                    byte b = bytes[i];
                    if (b < 0) {
                        ch = b + 256;
                        buffer.append('%');
                        buffer.append(gHexChs[ch >> 4]);
                        buffer.append(gHexChs[ch & 0xF]);
                    } else if (gNeedEscaping[b]) {
                        buffer.append('%');
                        buffer.append(gAfterEscaping1[b]);
                        buffer.append(gAfterEscaping2[b]);
                    } else {
                        buffer.append((char)b);
                    }
                    ++i;
                }
            }
            if (buffer.length() != len) {
                return buffer.toString();
            }
            return anyURI;
        }

        public static class MalformedURIException
        extends IOException {
            private static final long serialVersionUID = 1L;

            public MalformedURIException() {
            }

            public MalformedURIException(String p_msg) {
                super(p_msg);
            }
        }
    }

    static class ValidationContext {
        ValidationContext() {
        }
    }

    public static final class XMLChar {
        private static final byte[] CHARS = new byte[65536];
        public static final int MASK_VALID = 1;
        public static final int MASK_SPACE = 2;
        public static final int MASK_NAME_START = 4;
        public static final int MASK_NAME = 8;
        public static final int MASK_PUBID = 16;
        public static final int MASK_CONTENT = 32;
        public static final int MASK_NCNAME_START = 64;
        public static final int MASK_NCNAME = 128;

        static {
            XMLChar.CHARS[9] = 35;
            XMLChar.CHARS[10] = 19;
            XMLChar.CHARS[13] = 19;
            XMLChar.CHARS[32] = 51;
            XMLChar.CHARS[33] = 49;
            XMLChar.CHARS[34] = 33;
            Arrays.fill(CHARS, 35, 38, (byte)49);
            XMLChar.CHARS[38] = 1;
            Arrays.fill(CHARS, 39, 45, (byte)49);
            Arrays.fill(CHARS, 45, 47, (byte)-71);
            XMLChar.CHARS[47] = 49;
            Arrays.fill(CHARS, 48, 58, (byte)-71);
            XMLChar.CHARS[58] = 61;
            XMLChar.CHARS[59] = 49;
            XMLChar.CHARS[60] = 1;
            XMLChar.CHARS[61] = 49;
            XMLChar.CHARS[62] = 33;
            Arrays.fill(CHARS, 63, 65, (byte)49);
            Arrays.fill(CHARS, 65, 91, (byte)-3);
            Arrays.fill(CHARS, 91, 93, (byte)33);
            XMLChar.CHARS[93] = 1;
            XMLChar.CHARS[94] = 33;
            XMLChar.CHARS[95] = -3;
            XMLChar.CHARS[96] = 33;
            Arrays.fill(CHARS, 97, 123, (byte)-3);
            Arrays.fill(CHARS, 123, 183, (byte)33);
            XMLChar.CHARS[183] = -87;
            Arrays.fill(CHARS, 184, 192, (byte)33);
            Arrays.fill(CHARS, 192, 215, (byte)-19);
            XMLChar.CHARS[215] = 33;
            Arrays.fill(CHARS, 216, 247, (byte)-19);
            XMLChar.CHARS[247] = 33;
            Arrays.fill(CHARS, 248, 306, (byte)-19);
            Arrays.fill(CHARS, 306, 308, (byte)33);
            Arrays.fill(CHARS, 308, 319, (byte)-19);
            Arrays.fill(CHARS, 319, 321, (byte)33);
            Arrays.fill(CHARS, 321, 329, (byte)-19);
            XMLChar.CHARS[329] = 33;
            Arrays.fill(CHARS, 330, 383, (byte)-19);
            XMLChar.CHARS[383] = 33;
            Arrays.fill(CHARS, 384, 452, (byte)-19);
            Arrays.fill(CHARS, 452, 461, (byte)33);
            Arrays.fill(CHARS, 461, 497, (byte)-19);
            Arrays.fill(CHARS, 497, 500, (byte)33);
            Arrays.fill(CHARS, 500, 502, (byte)-19);
            Arrays.fill(CHARS, 502, 506, (byte)33);
            Arrays.fill(CHARS, 506, 536, (byte)-19);
            Arrays.fill(CHARS, 536, 592, (byte)33);
            Arrays.fill(CHARS, 592, 681, (byte)-19);
            Arrays.fill(CHARS, 681, 699, (byte)33);
            Arrays.fill(CHARS, 699, 706, (byte)-19);
            Arrays.fill(CHARS, 706, 720, (byte)33);
            Arrays.fill(CHARS, 720, 722, (byte)-87);
            Arrays.fill(CHARS, 722, 768, (byte)33);
            Arrays.fill(CHARS, 768, 838, (byte)-87);
            Arrays.fill(CHARS, 838, 864, (byte)33);
            Arrays.fill(CHARS, 864, 866, (byte)-87);
            Arrays.fill(CHARS, 866, 902, (byte)33);
            XMLChar.CHARS[902] = -19;
            XMLChar.CHARS[903] = -87;
            Arrays.fill(CHARS, 904, 907, (byte)-19);
            XMLChar.CHARS[907] = 33;
            XMLChar.CHARS[908] = -19;
            XMLChar.CHARS[909] = 33;
            Arrays.fill(CHARS, 910, 930, (byte)-19);
            XMLChar.CHARS[930] = 33;
            Arrays.fill(CHARS, 931, 975, (byte)-19);
            XMLChar.CHARS[975] = 33;
            Arrays.fill(CHARS, 976, 983, (byte)-19);
            Arrays.fill(CHARS, 983, 986, (byte)33);
            XMLChar.CHARS[986] = -19;
            XMLChar.CHARS[987] = 33;
            XMLChar.CHARS[988] = -19;
            XMLChar.CHARS[989] = 33;
            XMLChar.CHARS[990] = -19;
            XMLChar.CHARS[991] = 33;
            XMLChar.CHARS[992] = -19;
            XMLChar.CHARS[993] = 33;
            Arrays.fill(CHARS, 994, 1012, (byte)-19);
            Arrays.fill(CHARS, 1012, 1025, (byte)33);
            Arrays.fill(CHARS, 1025, 1037, (byte)-19);
            XMLChar.CHARS[1037] = 33;
            Arrays.fill(CHARS, 1038, 1104, (byte)-19);
            XMLChar.CHARS[1104] = 33;
            Arrays.fill(CHARS, 1105, 1117, (byte)-19);
            XMLChar.CHARS[1117] = 33;
            Arrays.fill(CHARS, 1118, 1154, (byte)-19);
            XMLChar.CHARS[1154] = 33;
            Arrays.fill(CHARS, 1155, 1159, (byte)-87);
            Arrays.fill(CHARS, 1159, 1168, (byte)33);
            Arrays.fill(CHARS, 1168, 1221, (byte)-19);
            Arrays.fill(CHARS, 1221, 1223, (byte)33);
            Arrays.fill(CHARS, 1223, 1225, (byte)-19);
            Arrays.fill(CHARS, 1225, 1227, (byte)33);
            Arrays.fill(CHARS, 1227, 1229, (byte)-19);
            Arrays.fill(CHARS, 1229, 1232, (byte)33);
            Arrays.fill(CHARS, 1232, 1260, (byte)-19);
            Arrays.fill(CHARS, 1260, 1262, (byte)33);
            Arrays.fill(CHARS, 1262, 1270, (byte)-19);
            Arrays.fill(CHARS, 1270, 1272, (byte)33);
            Arrays.fill(CHARS, 1272, 1274, (byte)-19);
            Arrays.fill(CHARS, 1274, 1329, (byte)33);
            Arrays.fill(CHARS, 1329, 1367, (byte)-19);
            Arrays.fill(CHARS, 1367, 1369, (byte)33);
            XMLChar.CHARS[1369] = -19;
            Arrays.fill(CHARS, 1370, 1377, (byte)33);
            Arrays.fill(CHARS, 1377, 1415, (byte)-19);
            Arrays.fill(CHARS, 1415, 1425, (byte)33);
            Arrays.fill(CHARS, 1425, 1442, (byte)-87);
            XMLChar.CHARS[1442] = 33;
            Arrays.fill(CHARS, 1443, 1466, (byte)-87);
            XMLChar.CHARS[1466] = 33;
            Arrays.fill(CHARS, 1467, 1470, (byte)-87);
            XMLChar.CHARS[1470] = 33;
            XMLChar.CHARS[1471] = -87;
            XMLChar.CHARS[1472] = 33;
            Arrays.fill(CHARS, 1473, 1475, (byte)-87);
            XMLChar.CHARS[1475] = 33;
            XMLChar.CHARS[1476] = -87;
            Arrays.fill(CHARS, 1477, 1488, (byte)33);
            Arrays.fill(CHARS, 1488, 1515, (byte)-19);
            Arrays.fill(CHARS, 1515, 1520, (byte)33);
            Arrays.fill(CHARS, 1520, 1523, (byte)-19);
            Arrays.fill(CHARS, 1523, 1569, (byte)33);
            Arrays.fill(CHARS, 1569, 1595, (byte)-19);
            Arrays.fill(CHARS, 1595, 1600, (byte)33);
            XMLChar.CHARS[1600] = -87;
            Arrays.fill(CHARS, 1601, 1611, (byte)-19);
            Arrays.fill(CHARS, 1611, 1619, (byte)-87);
            Arrays.fill(CHARS, 1619, 1632, (byte)33);
            Arrays.fill(CHARS, 1632, 1642, (byte)-87);
            Arrays.fill(CHARS, 1642, 1648, (byte)33);
            XMLChar.CHARS[1648] = -87;
            Arrays.fill(CHARS, 1649, 1720, (byte)-19);
            Arrays.fill(CHARS, 1720, 1722, (byte)33);
            Arrays.fill(CHARS, 1722, 1727, (byte)-19);
            XMLChar.CHARS[1727] = 33;
            Arrays.fill(CHARS, 1728, 1743, (byte)-19);
            XMLChar.CHARS[1743] = 33;
            Arrays.fill(CHARS, 1744, 1748, (byte)-19);
            XMLChar.CHARS[1748] = 33;
            XMLChar.CHARS[1749] = -19;
            Arrays.fill(CHARS, 1750, 1765, (byte)-87);
            Arrays.fill(CHARS, 1765, 1767, (byte)-19);
            Arrays.fill(CHARS, 1767, 1769, (byte)-87);
            XMLChar.CHARS[1769] = 33;
            Arrays.fill(CHARS, 1770, 1774, (byte)-87);
            Arrays.fill(CHARS, 1774, 1776, (byte)33);
            Arrays.fill(CHARS, 1776, 1786, (byte)-87);
            Arrays.fill(CHARS, 1786, 2305, (byte)33);
            Arrays.fill(CHARS, 2305, 2308, (byte)-87);
            XMLChar.CHARS[2308] = 33;
            Arrays.fill(CHARS, 2309, 2362, (byte)-19);
            Arrays.fill(CHARS, 2362, 2364, (byte)33);
            XMLChar.CHARS[2364] = -87;
            XMLChar.CHARS[2365] = -19;
            Arrays.fill(CHARS, 2366, 2382, (byte)-87);
            Arrays.fill(CHARS, 2382, 2385, (byte)33);
            Arrays.fill(CHARS, 2385, 2389, (byte)-87);
            Arrays.fill(CHARS, 2389, 2392, (byte)33);
            Arrays.fill(CHARS, 2392, 2402, (byte)-19);
            Arrays.fill(CHARS, 2402, 2404, (byte)-87);
            Arrays.fill(CHARS, 2404, 2406, (byte)33);
            Arrays.fill(CHARS, 2406, 2416, (byte)-87);
            Arrays.fill(CHARS, 2416, 2433, (byte)33);
            Arrays.fill(CHARS, 2433, 2436, (byte)-87);
            XMLChar.CHARS[2436] = 33;
            Arrays.fill(CHARS, 2437, 2445, (byte)-19);
            Arrays.fill(CHARS, 2445, 2447, (byte)33);
            Arrays.fill(CHARS, 2447, 2449, (byte)-19);
            Arrays.fill(CHARS, 2449, 2451, (byte)33);
            Arrays.fill(CHARS, 2451, 2473, (byte)-19);
            XMLChar.CHARS[2473] = 33;
            Arrays.fill(CHARS, 2474, 2481, (byte)-19);
            XMLChar.CHARS[2481] = 33;
            XMLChar.CHARS[2482] = -19;
            Arrays.fill(CHARS, 2483, 2486, (byte)33);
            Arrays.fill(CHARS, 2486, 2490, (byte)-19);
            Arrays.fill(CHARS, 2490, 2492, (byte)33);
            XMLChar.CHARS[2492] = -87;
            XMLChar.CHARS[2493] = 33;
            Arrays.fill(CHARS, 2494, 2501, (byte)-87);
            Arrays.fill(CHARS, 2501, 2503, (byte)33);
            Arrays.fill(CHARS, 2503, 2505, (byte)-87);
            Arrays.fill(CHARS, 2505, 2507, (byte)33);
            Arrays.fill(CHARS, 2507, 2510, (byte)-87);
            Arrays.fill(CHARS, 2510, 2519, (byte)33);
            XMLChar.CHARS[2519] = -87;
            Arrays.fill(CHARS, 2520, 2524, (byte)33);
            Arrays.fill(CHARS, 2524, 2526, (byte)-19);
            XMLChar.CHARS[2526] = 33;
            Arrays.fill(CHARS, 2527, 2530, (byte)-19);
            Arrays.fill(CHARS, 2530, 2532, (byte)-87);
            Arrays.fill(CHARS, 2532, 2534, (byte)33);
            Arrays.fill(CHARS, 2534, 2544, (byte)-87);
            Arrays.fill(CHARS, 2544, 2546, (byte)-19);
            Arrays.fill(CHARS, 2546, 2562, (byte)33);
            XMLChar.CHARS[2562] = -87;
            Arrays.fill(CHARS, 2563, 2565, (byte)33);
            Arrays.fill(CHARS, 2565, 2571, (byte)-19);
            Arrays.fill(CHARS, 2571, 2575, (byte)33);
            Arrays.fill(CHARS, 2575, 2577, (byte)-19);
            Arrays.fill(CHARS, 2577, 2579, (byte)33);
            Arrays.fill(CHARS, 2579, 2601, (byte)-19);
            XMLChar.CHARS[2601] = 33;
            Arrays.fill(CHARS, 2602, 2609, (byte)-19);
            XMLChar.CHARS[2609] = 33;
            Arrays.fill(CHARS, 2610, 2612, (byte)-19);
            XMLChar.CHARS[2612] = 33;
            Arrays.fill(CHARS, 2613, 2615, (byte)-19);
            XMLChar.CHARS[2615] = 33;
            Arrays.fill(CHARS, 2616, 2618, (byte)-19);
            Arrays.fill(CHARS, 2618, 2620, (byte)33);
            XMLChar.CHARS[2620] = -87;
            XMLChar.CHARS[2621] = 33;
            Arrays.fill(CHARS, 2622, 2627, (byte)-87);
            Arrays.fill(CHARS, 2627, 2631, (byte)33);
            Arrays.fill(CHARS, 2631, 2633, (byte)-87);
            Arrays.fill(CHARS, 2633, 2635, (byte)33);
            Arrays.fill(CHARS, 2635, 2638, (byte)-87);
            Arrays.fill(CHARS, 2638, 2649, (byte)33);
            Arrays.fill(CHARS, 2649, 2653, (byte)-19);
            XMLChar.CHARS[2653] = 33;
            XMLChar.CHARS[2654] = -19;
            Arrays.fill(CHARS, 2655, 2662, (byte)33);
            Arrays.fill(CHARS, 2662, 2674, (byte)-87);
            Arrays.fill(CHARS, 2674, 2677, (byte)-19);
            Arrays.fill(CHARS, 2677, 2689, (byte)33);
            Arrays.fill(CHARS, 2689, 2692, (byte)-87);
            XMLChar.CHARS[2692] = 33;
            Arrays.fill(CHARS, 2693, 2700, (byte)-19);
            XMLChar.CHARS[2700] = 33;
            XMLChar.CHARS[2701] = -19;
            XMLChar.CHARS[2702] = 33;
            Arrays.fill(CHARS, 2703, 2706, (byte)-19);
            XMLChar.CHARS[2706] = 33;
            Arrays.fill(CHARS, 2707, 2729, (byte)-19);
            XMLChar.CHARS[2729] = 33;
            Arrays.fill(CHARS, 2730, 2737, (byte)-19);
            XMLChar.CHARS[2737] = 33;
            Arrays.fill(CHARS, 2738, 2740, (byte)-19);
            XMLChar.CHARS[2740] = 33;
            Arrays.fill(CHARS, 2741, 2746, (byte)-19);
            Arrays.fill(CHARS, 2746, 2748, (byte)33);
            XMLChar.CHARS[2748] = -87;
            XMLChar.CHARS[2749] = -19;
            Arrays.fill(CHARS, 2750, 2758, (byte)-87);
            XMLChar.CHARS[2758] = 33;
            Arrays.fill(CHARS, 2759, 2762, (byte)-87);
            XMLChar.CHARS[2762] = 33;
            Arrays.fill(CHARS, 2763, 2766, (byte)-87);
            Arrays.fill(CHARS, 2766, 2784, (byte)33);
            XMLChar.CHARS[2784] = -19;
            Arrays.fill(CHARS, 2785, 2790, (byte)33);
            Arrays.fill(CHARS, 2790, 2800, (byte)-87);
            Arrays.fill(CHARS, 2800, 2817, (byte)33);
            Arrays.fill(CHARS, 2817, 2820, (byte)-87);
            XMLChar.CHARS[2820] = 33;
            Arrays.fill(CHARS, 2821, 2829, (byte)-19);
            Arrays.fill(CHARS, 2829, 2831, (byte)33);
            Arrays.fill(CHARS, 2831, 2833, (byte)-19);
            Arrays.fill(CHARS, 2833, 2835, (byte)33);
            Arrays.fill(CHARS, 2835, 2857, (byte)-19);
            XMLChar.CHARS[2857] = 33;
            Arrays.fill(CHARS, 2858, 2865, (byte)-19);
            XMLChar.CHARS[2865] = 33;
            Arrays.fill(CHARS, 2866, 2868, (byte)-19);
            Arrays.fill(CHARS, 2868, 2870, (byte)33);
            Arrays.fill(CHARS, 2870, 2874, (byte)-19);
            Arrays.fill(CHARS, 2874, 2876, (byte)33);
            XMLChar.CHARS[2876] = -87;
            XMLChar.CHARS[2877] = -19;
            Arrays.fill(CHARS, 2878, 2884, (byte)-87);
            Arrays.fill(CHARS, 2884, 2887, (byte)33);
            Arrays.fill(CHARS, 2887, 2889, (byte)-87);
            Arrays.fill(CHARS, 2889, 2891, (byte)33);
            Arrays.fill(CHARS, 2891, 2894, (byte)-87);
            Arrays.fill(CHARS, 2894, 2902, (byte)33);
            Arrays.fill(CHARS, 2902, 2904, (byte)-87);
            Arrays.fill(CHARS, 2904, 2908, (byte)33);
            Arrays.fill(CHARS, 2908, 2910, (byte)-19);
            XMLChar.CHARS[2910] = 33;
            Arrays.fill(CHARS, 2911, 2914, (byte)-19);
            Arrays.fill(CHARS, 2914, 2918, (byte)33);
            Arrays.fill(CHARS, 2918, 2928, (byte)-87);
            Arrays.fill(CHARS, 2928, 2946, (byte)33);
            Arrays.fill(CHARS, 2946, 2948, (byte)-87);
            XMLChar.CHARS[2948] = 33;
            Arrays.fill(CHARS, 2949, 2955, (byte)-19);
            Arrays.fill(CHARS, 2955, 2958, (byte)33);
            Arrays.fill(CHARS, 2958, 2961, (byte)-19);
            XMLChar.CHARS[2961] = 33;
            Arrays.fill(CHARS, 2962, 2966, (byte)-19);
            Arrays.fill(CHARS, 2966, 2969, (byte)33);
            Arrays.fill(CHARS, 2969, 2971, (byte)-19);
            XMLChar.CHARS[2971] = 33;
            XMLChar.CHARS[2972] = -19;
            XMLChar.CHARS[2973] = 33;
            Arrays.fill(CHARS, 2974, 2976, (byte)-19);
            Arrays.fill(CHARS, 2976, 2979, (byte)33);
            Arrays.fill(CHARS, 2979, 2981, (byte)-19);
            Arrays.fill(CHARS, 2981, 2984, (byte)33);
            Arrays.fill(CHARS, 2984, 2987, (byte)-19);
            Arrays.fill(CHARS, 2987, 2990, (byte)33);
            Arrays.fill(CHARS, 2990, 2998, (byte)-19);
            XMLChar.CHARS[2998] = 33;
            Arrays.fill(CHARS, 2999, 3002, (byte)-19);
            Arrays.fill(CHARS, 3002, 3006, (byte)33);
            Arrays.fill(CHARS, 3006, 3011, (byte)-87);
            Arrays.fill(CHARS, 3011, 3014, (byte)33);
            Arrays.fill(CHARS, 3014, 3017, (byte)-87);
            XMLChar.CHARS[3017] = 33;
            Arrays.fill(CHARS, 3018, 3022, (byte)-87);
            Arrays.fill(CHARS, 3022, 3031, (byte)33);
            XMLChar.CHARS[3031] = -87;
            Arrays.fill(CHARS, 3032, 3047, (byte)33);
            Arrays.fill(CHARS, 3047, 3056, (byte)-87);
            Arrays.fill(CHARS, 3056, 3073, (byte)33);
            Arrays.fill(CHARS, 3073, 3076, (byte)-87);
            XMLChar.CHARS[3076] = 33;
            Arrays.fill(CHARS, 3077, 3085, (byte)-19);
            XMLChar.CHARS[3085] = 33;
            Arrays.fill(CHARS, 3086, 3089, (byte)-19);
            XMLChar.CHARS[3089] = 33;
            Arrays.fill(CHARS, 3090, 3113, (byte)-19);
            XMLChar.CHARS[3113] = 33;
            Arrays.fill(CHARS, 3114, 3124, (byte)-19);
            XMLChar.CHARS[3124] = 33;
            Arrays.fill(CHARS, 3125, 3130, (byte)-19);
            Arrays.fill(CHARS, 3130, 3134, (byte)33);
            Arrays.fill(CHARS, 3134, 3141, (byte)-87);
            XMLChar.CHARS[3141] = 33;
            Arrays.fill(CHARS, 3142, 3145, (byte)-87);
            XMLChar.CHARS[3145] = 33;
            Arrays.fill(CHARS, 3146, 3150, (byte)-87);
            Arrays.fill(CHARS, 3150, 3157, (byte)33);
            Arrays.fill(CHARS, 3157, 3159, (byte)-87);
            Arrays.fill(CHARS, 3159, 3168, (byte)33);
            Arrays.fill(CHARS, 3168, 3170, (byte)-19);
            Arrays.fill(CHARS, 3170, 3174, (byte)33);
            Arrays.fill(CHARS, 3174, 3184, (byte)-87);
            Arrays.fill(CHARS, 3184, 3202, (byte)33);
            Arrays.fill(CHARS, 3202, 3204, (byte)-87);
            XMLChar.CHARS[3204] = 33;
            Arrays.fill(CHARS, 3205, 3213, (byte)-19);
            XMLChar.CHARS[3213] = 33;
            Arrays.fill(CHARS, 3214, 3217, (byte)-19);
            XMLChar.CHARS[3217] = 33;
            Arrays.fill(CHARS, 3218, 3241, (byte)-19);
            XMLChar.CHARS[3241] = 33;
            Arrays.fill(CHARS, 3242, 3252, (byte)-19);
            XMLChar.CHARS[3252] = 33;
            Arrays.fill(CHARS, 3253, 3258, (byte)-19);
            Arrays.fill(CHARS, 3258, 3262, (byte)33);
            Arrays.fill(CHARS, 3262, 3269, (byte)-87);
            XMLChar.CHARS[3269] = 33;
            Arrays.fill(CHARS, 3270, 3273, (byte)-87);
            XMLChar.CHARS[3273] = 33;
            Arrays.fill(CHARS, 3274, 3278, (byte)-87);
            Arrays.fill(CHARS, 3278, 3285, (byte)33);
            Arrays.fill(CHARS, 3285, 3287, (byte)-87);
            Arrays.fill(CHARS, 3287, 3294, (byte)33);
            XMLChar.CHARS[3294] = -19;
            XMLChar.CHARS[3295] = 33;
            Arrays.fill(CHARS, 3296, 3298, (byte)-19);
            Arrays.fill(CHARS, 3298, 3302, (byte)33);
            Arrays.fill(CHARS, 3302, 3312, (byte)-87);
            Arrays.fill(CHARS, 3312, 3330, (byte)33);
            Arrays.fill(CHARS, 3330, 3332, (byte)-87);
            XMLChar.CHARS[3332] = 33;
            Arrays.fill(CHARS, 3333, 3341, (byte)-19);
            XMLChar.CHARS[3341] = 33;
            Arrays.fill(CHARS, 3342, 3345, (byte)-19);
            XMLChar.CHARS[3345] = 33;
            Arrays.fill(CHARS, 3346, 3369, (byte)-19);
            XMLChar.CHARS[3369] = 33;
            Arrays.fill(CHARS, 3370, 3386, (byte)-19);
            Arrays.fill(CHARS, 3386, 3390, (byte)33);
            Arrays.fill(CHARS, 3390, 3396, (byte)-87);
            Arrays.fill(CHARS, 3396, 3398, (byte)33);
            Arrays.fill(CHARS, 3398, 3401, (byte)-87);
            XMLChar.CHARS[3401] = 33;
            Arrays.fill(CHARS, 3402, 3406, (byte)-87);
            Arrays.fill(CHARS, 3406, 3415, (byte)33);
            XMLChar.CHARS[3415] = -87;
            Arrays.fill(CHARS, 3416, 3424, (byte)33);
            Arrays.fill(CHARS, 3424, 3426, (byte)-19);
            Arrays.fill(CHARS, 3426, 3430, (byte)33);
            Arrays.fill(CHARS, 3430, 3440, (byte)-87);
            Arrays.fill(CHARS, 3440, 3585, (byte)33);
            Arrays.fill(CHARS, 3585, 3631, (byte)-19);
            XMLChar.CHARS[3631] = 33;
            XMLChar.CHARS[3632] = -19;
            XMLChar.CHARS[3633] = -87;
            Arrays.fill(CHARS, 3634, 3636, (byte)-19);
            Arrays.fill(CHARS, 3636, 3643, (byte)-87);
            Arrays.fill(CHARS, 3643, 3648, (byte)33);
            Arrays.fill(CHARS, 3648, 3654, (byte)-19);
            Arrays.fill(CHARS, 3654, 3663, (byte)-87);
            XMLChar.CHARS[3663] = 33;
            Arrays.fill(CHARS, 3664, 3674, (byte)-87);
            Arrays.fill(CHARS, 3674, 3713, (byte)33);
            Arrays.fill(CHARS, 3713, 3715, (byte)-19);
            XMLChar.CHARS[3715] = 33;
            XMLChar.CHARS[3716] = -19;
            Arrays.fill(CHARS, 3717, 3719, (byte)33);
            Arrays.fill(CHARS, 3719, 3721, (byte)-19);
            XMLChar.CHARS[3721] = 33;
            XMLChar.CHARS[3722] = -19;
            Arrays.fill(CHARS, 3723, 3725, (byte)33);
            XMLChar.CHARS[3725] = -19;
            Arrays.fill(CHARS, 3726, 3732, (byte)33);
            Arrays.fill(CHARS, 3732, 3736, (byte)-19);
            XMLChar.CHARS[3736] = 33;
            Arrays.fill(CHARS, 3737, 3744, (byte)-19);
            XMLChar.CHARS[3744] = 33;
            Arrays.fill(CHARS, 3745, 3748, (byte)-19);
            XMLChar.CHARS[3748] = 33;
            XMLChar.CHARS[3749] = -19;
            XMLChar.CHARS[3750] = 33;
            XMLChar.CHARS[3751] = -19;
            Arrays.fill(CHARS, 3752, 3754, (byte)33);
            Arrays.fill(CHARS, 3754, 3756, (byte)-19);
            XMLChar.CHARS[3756] = 33;
            Arrays.fill(CHARS, 3757, 3759, (byte)-19);
            XMLChar.CHARS[3759] = 33;
            XMLChar.CHARS[3760] = -19;
            XMLChar.CHARS[3761] = -87;
            Arrays.fill(CHARS, 3762, 3764, (byte)-19);
            Arrays.fill(CHARS, 3764, 3770, (byte)-87);
            XMLChar.CHARS[3770] = 33;
            Arrays.fill(CHARS, 3771, 3773, (byte)-87);
            XMLChar.CHARS[3773] = -19;
            Arrays.fill(CHARS, 3774, 3776, (byte)33);
            Arrays.fill(CHARS, 3776, 3781, (byte)-19);
            XMLChar.CHARS[3781] = 33;
            XMLChar.CHARS[3782] = -87;
            XMLChar.CHARS[3783] = 33;
            Arrays.fill(CHARS, 3784, 3790, (byte)-87);
            Arrays.fill(CHARS, 3790, 3792, (byte)33);
            Arrays.fill(CHARS, 3792, 3802, (byte)-87);
            Arrays.fill(CHARS, 3802, 3864, (byte)33);
            Arrays.fill(CHARS, 3864, 3866, (byte)-87);
            Arrays.fill(CHARS, 3866, 3872, (byte)33);
            Arrays.fill(CHARS, 3872, 3882, (byte)-87);
            Arrays.fill(CHARS, 3882, 3893, (byte)33);
            XMLChar.CHARS[3893] = -87;
            XMLChar.CHARS[3894] = 33;
            XMLChar.CHARS[3895] = -87;
            XMLChar.CHARS[3896] = 33;
            XMLChar.CHARS[3897] = -87;
            Arrays.fill(CHARS, 3898, 3902, (byte)33);
            Arrays.fill(CHARS, 3902, 3904, (byte)-87);
            Arrays.fill(CHARS, 3904, 3912, (byte)-19);
            XMLChar.CHARS[3912] = 33;
            Arrays.fill(CHARS, 3913, 3946, (byte)-19);
            Arrays.fill(CHARS, 3946, 3953, (byte)33);
            Arrays.fill(CHARS, 3953, 3973, (byte)-87);
            XMLChar.CHARS[3973] = 33;
            Arrays.fill(CHARS, 3974, 3980, (byte)-87);
            Arrays.fill(CHARS, 3980, 3984, (byte)33);
            Arrays.fill(CHARS, 3984, 3990, (byte)-87);
            XMLChar.CHARS[3990] = 33;
            XMLChar.CHARS[3991] = -87;
            XMLChar.CHARS[3992] = 33;
            Arrays.fill(CHARS, 3993, 4014, (byte)-87);
            Arrays.fill(CHARS, 4014, 4017, (byte)33);
            Arrays.fill(CHARS, 4017, 4024, (byte)-87);
            XMLChar.CHARS[4024] = 33;
            XMLChar.CHARS[4025] = -87;
            Arrays.fill(CHARS, 4026, 4256, (byte)33);
            Arrays.fill(CHARS, 4256, 4294, (byte)-19);
            Arrays.fill(CHARS, 4294, 4304, (byte)33);
            Arrays.fill(CHARS, 4304, 4343, (byte)-19);
            Arrays.fill(CHARS, 4343, 4352, (byte)33);
            XMLChar.CHARS[4352] = -19;
            XMLChar.CHARS[4353] = 33;
            Arrays.fill(CHARS, 4354, 4356, (byte)-19);
            XMLChar.CHARS[4356] = 33;
            Arrays.fill(CHARS, 4357, 4360, (byte)-19);
            XMLChar.CHARS[4360] = 33;
            XMLChar.CHARS[4361] = -19;
            XMLChar.CHARS[4362] = 33;
            Arrays.fill(CHARS, 4363, 4365, (byte)-19);
            XMLChar.CHARS[4365] = 33;
            Arrays.fill(CHARS, 4366, 4371, (byte)-19);
            Arrays.fill(CHARS, 4371, 4412, (byte)33);
            XMLChar.CHARS[4412] = -19;
            XMLChar.CHARS[4413] = 33;
            XMLChar.CHARS[4414] = -19;
            XMLChar.CHARS[4415] = 33;
            XMLChar.CHARS[4416] = -19;
            Arrays.fill(CHARS, 4417, 4428, (byte)33);
            XMLChar.CHARS[4428] = -19;
            XMLChar.CHARS[4429] = 33;
            XMLChar.CHARS[4430] = -19;
            XMLChar.CHARS[4431] = 33;
            XMLChar.CHARS[4432] = -19;
            Arrays.fill(CHARS, 4433, 4436, (byte)33);
            Arrays.fill(CHARS, 4436, 4438, (byte)-19);
            Arrays.fill(CHARS, 4438, 4441, (byte)33);
            XMLChar.CHARS[4441] = -19;
            Arrays.fill(CHARS, 4442, 4447, (byte)33);
            Arrays.fill(CHARS, 4447, 4450, (byte)-19);
            XMLChar.CHARS[4450] = 33;
            XMLChar.CHARS[4451] = -19;
            XMLChar.CHARS[4452] = 33;
            XMLChar.CHARS[4453] = -19;
            XMLChar.CHARS[4454] = 33;
            XMLChar.CHARS[4455] = -19;
            XMLChar.CHARS[4456] = 33;
            XMLChar.CHARS[4457] = -19;
            Arrays.fill(CHARS, 4458, 4461, (byte)33);
            Arrays.fill(CHARS, 4461, 4463, (byte)-19);
            Arrays.fill(CHARS, 4463, 4466, (byte)33);
            Arrays.fill(CHARS, 4466, 4468, (byte)-19);
            XMLChar.CHARS[4468] = 33;
            XMLChar.CHARS[4469] = -19;
            Arrays.fill(CHARS, 4470, 4510, (byte)33);
            XMLChar.CHARS[4510] = -19;
            Arrays.fill(CHARS, 4511, 4520, (byte)33);
            XMLChar.CHARS[4520] = -19;
            Arrays.fill(CHARS, 4521, 4523, (byte)33);
            XMLChar.CHARS[4523] = -19;
            Arrays.fill(CHARS, 4524, 4526, (byte)33);
            Arrays.fill(CHARS, 4526, 4528, (byte)-19);
            Arrays.fill(CHARS, 4528, 4535, (byte)33);
            Arrays.fill(CHARS, 4535, 4537, (byte)-19);
            XMLChar.CHARS[4537] = 33;
            XMLChar.CHARS[4538] = -19;
            XMLChar.CHARS[4539] = 33;
            Arrays.fill(CHARS, 4540, 4547, (byte)-19);
            Arrays.fill(CHARS, 4547, 4587, (byte)33);
            XMLChar.CHARS[4587] = -19;
            Arrays.fill(CHARS, 4588, 4592, (byte)33);
            XMLChar.CHARS[4592] = -19;
            Arrays.fill(CHARS, 4593, 4601, (byte)33);
            XMLChar.CHARS[4601] = -19;
            Arrays.fill(CHARS, 4602, 7680, (byte)33);
            Arrays.fill(CHARS, 7680, 7836, (byte)-19);
            Arrays.fill(CHARS, 7836, 7840, (byte)33);
            Arrays.fill(CHARS, 7840, 7930, (byte)-19);
            Arrays.fill(CHARS, 7930, 7936, (byte)33);
            Arrays.fill(CHARS, 7936, 7958, (byte)-19);
            Arrays.fill(CHARS, 7958, 7960, (byte)33);
            Arrays.fill(CHARS, 7960, 7966, (byte)-19);
            Arrays.fill(CHARS, 7966, 7968, (byte)33);
            Arrays.fill(CHARS, 7968, 8006, (byte)-19);
            Arrays.fill(CHARS, 8006, 8008, (byte)33);
            Arrays.fill(CHARS, 8008, 8014, (byte)-19);
            Arrays.fill(CHARS, 8014, 8016, (byte)33);
            Arrays.fill(CHARS, 8016, 8024, (byte)-19);
            XMLChar.CHARS[8024] = 33;
            XMLChar.CHARS[8025] = -19;
            XMLChar.CHARS[8026] = 33;
            XMLChar.CHARS[8027] = -19;
            XMLChar.CHARS[8028] = 33;
            XMLChar.CHARS[8029] = -19;
            XMLChar.CHARS[8030] = 33;
            Arrays.fill(CHARS, 8031, 8062, (byte)-19);
            Arrays.fill(CHARS, 8062, 8064, (byte)33);
            Arrays.fill(CHARS, 8064, 8117, (byte)-19);
            XMLChar.CHARS[8117] = 33;
            Arrays.fill(CHARS, 8118, 8125, (byte)-19);
            XMLChar.CHARS[8125] = 33;
            XMLChar.CHARS[8126] = -19;
            Arrays.fill(CHARS, 8127, 8130, (byte)33);
            Arrays.fill(CHARS, 8130, 8133, (byte)-19);
            XMLChar.CHARS[8133] = 33;
            Arrays.fill(CHARS, 8134, 8141, (byte)-19);
            Arrays.fill(CHARS, 8141, 8144, (byte)33);
            Arrays.fill(CHARS, 8144, 8148, (byte)-19);
            Arrays.fill(CHARS, 8148, 8150, (byte)33);
            Arrays.fill(CHARS, 8150, 8156, (byte)-19);
            Arrays.fill(CHARS, 8156, 8160, (byte)33);
            Arrays.fill(CHARS, 8160, 8173, (byte)-19);
            Arrays.fill(CHARS, 8173, 8178, (byte)33);
            Arrays.fill(CHARS, 8178, 8181, (byte)-19);
            XMLChar.CHARS[8181] = 33;
            Arrays.fill(CHARS, 8182, 8189, (byte)-19);
            Arrays.fill(CHARS, 8189, 8400, (byte)33);
            Arrays.fill(CHARS, 8400, 8413, (byte)-87);
            Arrays.fill(CHARS, 8413, 8417, (byte)33);
            XMLChar.CHARS[8417] = -87;
            Arrays.fill(CHARS, 8418, 8486, (byte)33);
            XMLChar.CHARS[8486] = -19;
            Arrays.fill(CHARS, 8487, 8490, (byte)33);
            Arrays.fill(CHARS, 8490, 8492, (byte)-19);
            Arrays.fill(CHARS, 8492, 8494, (byte)33);
            XMLChar.CHARS[8494] = -19;
            Arrays.fill(CHARS, 8495, 8576, (byte)33);
            Arrays.fill(CHARS, 8576, 8579, (byte)-19);
            Arrays.fill(CHARS, 8579, 12293, (byte)33);
            XMLChar.CHARS[12293] = -87;
            XMLChar.CHARS[12294] = 33;
            XMLChar.CHARS[12295] = -19;
            Arrays.fill(CHARS, 12296, 12321, (byte)33);
            Arrays.fill(CHARS, 12321, 12330, (byte)-19);
            Arrays.fill(CHARS, 12330, 12336, (byte)-87);
            XMLChar.CHARS[12336] = 33;
            Arrays.fill(CHARS, 12337, 12342, (byte)-87);
            Arrays.fill(CHARS, 12342, 12353, (byte)33);
            Arrays.fill(CHARS, 12353, 12437, (byte)-19);
            Arrays.fill(CHARS, 12437, 12441, (byte)33);
            Arrays.fill(CHARS, 12441, 12443, (byte)-87);
            Arrays.fill(CHARS, 12443, 12445, (byte)33);
            Arrays.fill(CHARS, 12445, 12447, (byte)-87);
            Arrays.fill(CHARS, 12447, 12449, (byte)33);
            Arrays.fill(CHARS, 12449, 12539, (byte)-19);
            XMLChar.CHARS[12539] = 33;
            Arrays.fill(CHARS, 12540, 12543, (byte)-87);
            Arrays.fill(CHARS, 12543, 12549, (byte)33);
            Arrays.fill(CHARS, 12549, 12589, (byte)-19);
            Arrays.fill(CHARS, 12589, 19968, (byte)33);
            Arrays.fill(CHARS, 19968, 40870, (byte)-19);
            Arrays.fill(CHARS, 40870, 44032, (byte)33);
            Arrays.fill(CHARS, 44032, 55204, (byte)-19);
            Arrays.fill(CHARS, 55204, 55296, (byte)33);
            Arrays.fill(CHARS, 57344, 65534, (byte)33);
        }

        public static boolean isSupplemental(int c) {
            return c >= 65536 && c <= 0x10FFFF;
        }

        public static int supplemental(char h, char l) {
            return (h - 55296) * 1024 + (l - 56320) + 65536;
        }

        public static char highSurrogate(int c) {
            return (char)((c - 65536 >> 10) + 55296);
        }

        public static char lowSurrogate(int c) {
            return (char)((c - 65536 & 0x3FF) + 56320);
        }

        public static boolean isHighSurrogate(int c) {
            return 55296 <= c && c <= 56319;
        }

        public static boolean isLowSurrogate(int c) {
            return 56320 <= c && c <= 57343;
        }

        public static boolean isValid(int c) {
            return c < 65536 && (CHARS[c] & 1) != 0 || 65536 <= c && c <= 0x10FFFF;
        }

        public static boolean isInvalid(int c) {
            return !XMLChar.isValid(c);
        }

        public static boolean isContent(int c) {
            return c < 65536 && (CHARS[c] & 0x20) != 0 || 65536 <= c && c <= 0x10FFFF;
        }

        public static boolean isMarkup(int c) {
            return c == 60 || c == 38 || c == 37;
        }

        public static boolean isSpace(int c) {
            return c <= 32 && (CHARS[c] & 2) != 0;
        }

        public static boolean isNameStart(int c) {
            return c < 65536 && (CHARS[c] & 4) != 0;
        }

        public static boolean isName(int c) {
            return c < 65536 && (CHARS[c] & 8) != 0;
        }

        public static boolean isNCNameStart(int c) {
            return c < 65536 && (CHARS[c] & 0x40) != 0;
        }

        public static boolean isNCName(int c) {
            return c < 65536 && (CHARS[c] & 0x80) != 0;
        }

        public static boolean isPubid(int c) {
            return c < 65536 && (CHARS[c] & 0x10) != 0;
        }

        public static boolean isValidName(String name) {
            if (name.length() == 0) {
                return false;
            }
            char ch = name.charAt(0);
            if (!XMLChar.isNameStart(ch)) {
                return false;
            }
            int i = 1;
            while (i < name.length()) {
                ch = name.charAt(i);
                if (!XMLChar.isName(ch)) {
                    return false;
                }
                ++i;
            }
            return true;
        }

        public static boolean isValidNCName(String ncName) {
            if (ncName.length() == 0) {
                return false;
            }
            char ch = ncName.charAt(0);
            if (!XMLChar.isNCNameStart(ch)) {
                return false;
            }
            int i = 1;
            while (i < ncName.length()) {
                ch = ncName.charAt(i);
                if (!XMLChar.isNCName(ch)) {
                    return false;
                }
                ++i;
            }
            return true;
        }

        public static boolean isValidNmtoken(String nmtoken) {
            if (nmtoken.length() == 0) {
                return false;
            }
            int i = 0;
            while (i < nmtoken.length()) {
                char ch = nmtoken.charAt(i);
                if (!XMLChar.isName(ch)) {
                    return false;
                }
                ++i;
            }
            return true;
        }

        public static boolean isValidIANAEncoding(String ianaEncoding) {
            char c;
            int length;
            if (ianaEncoding != null && (length = ianaEncoding.length()) > 0 && ((c = ianaEncoding.charAt(0)) >= 'A' && c <= 'Z' || c >= 'a' && c <= 'z')) {
                int i = 1;
                while (i < length) {
                    c = ianaEncoding.charAt(i);
                    if (!(c >= 'A' && c <= 'Z' || c >= 'a' && c <= 'z' || c >= '0' && c <= '9' || c == '.' || c == '_' || c == '-')) {
                        return false;
                    }
                    ++i;
                }
                return true;
            }
            return false;
        }

        public static boolean isValidJavaEncoding(String javaEncoding) {
            int length;
            if (javaEncoding != null && (length = javaEncoding.length()) > 0) {
                int i = 1;
                while (i < length) {
                    char c = javaEncoding.charAt(i);
                    if (!(c >= 'A' && c <= 'Z' || c >= 'a' && c <= 'z' || c >= '0' && c <= '9' || c == '.' || c == '_' || c == '-')) {
                        return false;
                    }
                    ++i;
                }
                return true;
            }
            return false;
        }
    }

    static class XSSimpleType {
        XSSimpleType() {
        }
    }
}

