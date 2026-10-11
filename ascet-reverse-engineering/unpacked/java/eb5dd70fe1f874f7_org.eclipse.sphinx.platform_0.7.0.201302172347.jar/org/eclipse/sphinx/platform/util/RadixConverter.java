/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.sphinx.platform.util;

import org.eclipse.osgi.util.NLS;
import org.eclipse.sphinx.platform.messages.PlatformMessages;

public class RadixConverter {
    public static float parseFloat(String value) {
        if (value.matches("-?[0-9]*(\\.[0-9]*)?(E([+\\-]?)[0-9]*)?")) {
            return Float.valueOf(value).floatValue();
        }
        if (value.matches("0b[0-1]*")) {
            return Float.valueOf(RadixConverter.binToDec(value)).floatValue();
        }
        if (value.matches("0[1-7][0-7]*")) {
            return Float.valueOf(RadixConverter.octToDec(value)).floatValue();
        }
        if (value.matches("0x[0-9a-zA-Z]*")) {
            return Float.valueOf(RadixConverter.hexToDec(value)).floatValue();
        }
        throw new NumberFormatException(NLS.bind((String)PlatformMessages.error_cantBeParsedToFloat, (Object)value));
    }

    public static int parseInt(String value) {
        if (value.matches("-?[0-9]*")) {
            return Integer.parseInt(value);
        }
        if (value.matches("0b[0-1]*")) {
            return RadixConverter.binToDec(value);
        }
        if (value.matches("0[1-7][0-7]*")) {
            return RadixConverter.octToDec(value);
        }
        if (value.matches("0x[0-9a-zA-Z]*")) {
            return RadixConverter.hexToDec(value);
        }
        throw new NumberFormatException(NLS.bind((String)PlatformMessages.error_cantBeParsedToInt, (Object)value));
    }

    public static int getRadix(String value) {
        if (value.matches("-?[0-9]*(\\.[0-9]*)?(E([+\\-]?)[0-9]*)?")) {
            return 10;
        }
        if (value.matches("0b[0-1]*")) {
            return 2;
        }
        if (value.matches("0[1-7][0-7]*")) {
            return 8;
        }
        if (value.matches("0x[0-9a-zA-Z]*")) {
            return 16;
        }
        return 0;
    }

    public static String convert(String value, int radix) {
        switch (radix) {
            case 2: {
                return RadixConverter.convertToBin(value);
            }
            case 8: {
                return RadixConverter.convertToOct(value);
            }
            case 10: {
                return RadixConverter.convertToDec(value);
            }
            case 16: {
                return RadixConverter.convertToHex(value);
            }
        }
        return value;
    }

    public static String convertToBin(String value) {
        if (value.matches("-?[0-9]*")) {
            return RadixConverter.decToBin(Integer.parseInt(value));
        }
        if (value.matches("-?[0-9]*(\\.[0-9]*)?(E([+\\-]?)[0-9]*)?")) {
            return RadixConverter.decToBin(Float.valueOf(value).intValue());
        }
        if (value.matches("0[1-7][0-7]*")) {
            return RadixConverter.decToBin(RadixConverter.octToDec(value));
        }
        if (value.matches("0x[0-9a-zA-Z]*")) {
            return RadixConverter.decToBin(RadixConverter.hexToDec(value));
        }
        if (value.matches("0b[0-1]*")) {
            return value;
        }
        throw new NumberFormatException(NLS.bind((String)PlatformMessages.error_cantBeConvertedToBinary, (Object)value));
    }

    public static String convertToOct(String value) {
        if (value.matches("-?[0-9]*")) {
            return RadixConverter.decToOct(Integer.parseInt(value));
        }
        if (value.matches("-?[0-9]*(\\.[0-9]*)?(E([+\\-]?)[0-9]*)?")) {
            return RadixConverter.decToOct(Float.valueOf(value).intValue());
        }
        if (value.matches("0b[0-1]*")) {
            return RadixConverter.binToOct(value);
        }
        if (value.matches("0x[0-9a-zA-Z]*")) {
            return RadixConverter.hexToOct(value);
        }
        if (value.matches("0[1-7][0-7]*")) {
            return value;
        }
        throw new NumberFormatException(NLS.bind((String)PlatformMessages.error_cantBeConvertedToOctal, (Object)value));
    }

    public static String convertToDec(String value) {
        if (value.matches("-?[0-9]*(\\.[0-9]*)?(E([+\\-]?)[0-9]*)?")) {
            return Float.valueOf(value).toString();
        }
        if (value.matches("0[1-7][0-7]*")) {
            return Integer.toString(RadixConverter.octToDec(value));
        }
        if (value.matches("0x[0-9a-zA-Z]*")) {
            return Integer.toString(RadixConverter.hexToDec(value));
        }
        if (value.matches("0b[0-1]*")) {
            return String.valueOf(RadixConverter.binToDec(value));
        }
        throw new NumberFormatException(NLS.bind((String)PlatformMessages.error_cantBeConvertedToDecimal, (Object)value));
    }

    public static String convertToHex(String value) {
        if (value.matches("-?[0-9]*")) {
            return RadixConverter.decToHex(Integer.parseInt(value));
        }
        if (value.matches("-?[0-9]*(\\.[0-9]*)?(E([+\\-]?)[0-9]*)?")) {
            return RadixConverter.decToHex(Float.valueOf(value).intValue());
        }
        if (value.matches("0[1-7][0-7]*")) {
            return RadixConverter.octToHex(value);
        }
        if (value.matches("0b[0-1]*")) {
            return RadixConverter.binToHex(value);
        }
        if (value.matches("0x[0-9a-zA-Z]*")) {
            return value;
        }
        throw new NumberFormatException(NLS.bind((String)PlatformMessages.error_cantBeConvertedToHex, (Object)value));
    }

    public static int binToDec(String bin) {
        if (bin.startsWith("0b")) {
            bin = bin.substring(2);
        }
        int nb = Integer.parseInt(bin, 2);
        return nb;
    }

    public static String binToOct(String bin) {
        int nb = RadixConverter.binToDec(bin);
        return RadixConverter.decToOct(nb);
    }

    public static String binToHex(String bin) {
        int nb = RadixConverter.binToDec(bin);
        return Integer.toHexString(nb).toUpperCase();
    }

    public static String octToBin(String oct) {
        if (oct.startsWith("0")) {
            oct = oct.substring(1);
        }
        int nb = Integer.parseInt(oct, 8);
        return RadixConverter.decToBin(nb);
    }

    public static int octToDec(String oct) {
        if (oct.startsWith("0")) {
            oct = oct.substring(1);
        }
        return Integer.parseInt(oct, 8);
    }

    public static String octToHex(String oct) {
        int nb = RadixConverter.octToDec(oct);
        return RadixConverter.decToHex(nb).toUpperCase();
    }

    public static String decToBin(int nb) {
        String str = Integer.toBinaryString(nb);
        return "0b".concat(str);
    }

    public static String decToOct(int dec) {
        return "0".concat(Integer.toOctalString(dec));
    }

    public static String decToHex(int dec) {
        return "0x".concat(Integer.toHexString(dec).toUpperCase());
    }

    public static String hexToBin(String hex) {
        if (hex.startsWith("0x")) {
            hex = hex.substring(2);
        }
        int nb = Integer.parseInt(hex, 16);
        return RadixConverter.decToBin(nb);
    }

    public static String hexToOct(String hex) {
        int nb = RadixConverter.hexToDec(hex);
        return RadixConverter.decToOct(nb);
    }

    public static int hexToDec(String hex) {
        if (hex.startsWith("0x")) {
            hex = hex.substring(2);
        }
        int ch = Integer.parseInt(hex, 16);
        return ch;
    }
}

