/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.lang;

import com.ibm.icu.impl.ICUResourceBundle;
import com.ibm.icu.impl.UCharacterProperty;
import com.ibm.icu.lang.UCharacter;
import com.ibm.icu.util.ULocale;
import com.ibm.icu.util.UResourceBundle;
import java.util.Locale;
import java.util.MissingResourceException;

public final class UScript {
    public static final int INVALID_CODE = -1;
    public static final int COMMON = 0;
    public static final int INHERITED = 1;
    public static final int ARABIC = 2;
    public static final int ARMENIAN = 3;
    public static final int BENGALI = 4;
    public static final int BOPOMOFO = 5;
    public static final int CHEROKEE = 6;
    public static final int COPTIC = 7;
    public static final int CYRILLIC = 8;
    public static final int DESERET = 9;
    public static final int DEVANAGARI = 10;
    public static final int ETHIOPIC = 11;
    public static final int GEORGIAN = 12;
    public static final int GOTHIC = 13;
    public static final int GREEK = 14;
    public static final int GUJARATI = 15;
    public static final int GURMUKHI = 16;
    public static final int HAN = 17;
    public static final int HANGUL = 18;
    public static final int HEBREW = 19;
    public static final int HIRAGANA = 20;
    public static final int KANNADA = 21;
    public static final int KATAKANA = 22;
    public static final int KHMER = 23;
    public static final int LAO = 24;
    public static final int LATIN = 25;
    public static final int MALAYALAM = 26;
    public static final int MONGOLIAN = 27;
    public static final int MYANMAR = 28;
    public static final int OGHAM = 29;
    public static final int OLD_ITALIC = 30;
    public static final int ORIYA = 31;
    public static final int RUNIC = 32;
    public static final int SINHALA = 33;
    public static final int SYRIAC = 34;
    public static final int TAMIL = 35;
    public static final int TELUGU = 36;
    public static final int THAANA = 37;
    public static final int THAI = 38;
    public static final int TIBETAN = 39;
    public static final int CANADIAN_ABORIGINAL = 40;
    public static final int UCAS = 40;
    public static final int YI = 41;
    public static final int TAGALOG = 42;
    public static final int HANUNOO = 43;
    public static final int BUHID = 44;
    public static final int TAGBANWA = 45;
    public static final int BRAILLE = 46;
    public static final int CYPRIOT = 47;
    public static final int LIMBU = 48;
    public static final int LINEAR_B = 49;
    public static final int OSMANYA = 50;
    public static final int SHAVIAN = 51;
    public static final int TAI_LE = 52;
    public static final int UGARITIC = 53;
    public static final int KATAKANA_OR_HIRAGANA = 54;
    public static final int BUGINESE = 55;
    public static final int GLAGOLITIC = 56;
    public static final int KHAROSHTHI = 57;
    public static final int SYLOTI_NAGRI = 58;
    public static final int NEW_TAI_LUE = 59;
    public static final int TIFINAGH = 60;
    public static final int OLD_PERSIAN = 61;
    public static final int BALINESE = 62;
    public static final int BATAK = 63;
    public static final int BLISSYMBOLS = 64;
    public static final int BRAHMI = 65;
    public static final int CHAM = 66;
    public static final int CIRTH = 67;
    public static final int OLD_CHURCH_SLAVONIC_CYRILLIC = 68;
    public static final int DEMOTIC_EGYPTIAN = 69;
    public static final int HIERATIC_EGYPTIAN = 70;
    public static final int EGYPTIAN_HIEROGLYPHS = 71;
    public static final int KHUTSURI = 72;
    public static final int SIMPLIFIED_HAN = 73;
    public static final int TRADITIONAL_HAN = 74;
    public static final int PAHAWH_HMONG = 75;
    public static final int OLD_HUNGARIAN = 76;
    public static final int HARAPPAN_INDUS = 77;
    public static final int JAVANESE = 78;
    public static final int KAYAH_LI = 79;
    public static final int LATIN_FRAKTUR = 80;
    public static final int LATIN_GAELIC = 81;
    public static final int LEPCHA = 82;
    public static final int LINEAR_A = 83;
    public static final int MANDAEAN = 84;
    public static final int MAYAN_HIEROGLYPHS = 85;
    public static final int MEROITIC = 86;
    public static final int NKO = 87;
    public static final int ORKHON = 88;
    public static final int OLD_PERMIC = 89;
    public static final int PHAGS_PA = 90;
    public static final int PHOENICIAN = 91;
    public static final int PHONETIC_POLLARD = 92;
    public static final int RONGORONGO = 93;
    public static final int SARATI = 94;
    public static final int ESTRANGELO_SYRIAC = 95;
    public static final int WESTERN_SYRIAC = 96;
    public static final int EASTERN_SYRIAC = 97;
    public static final int TENGWAR = 98;
    public static final int VAI = 99;
    public static final int VISIBLE_SPEECH = 100;
    public static final int CUNEIFORM = 101;
    public static final int UNWRITTEN_LANGUAGES = 102;
    public static final int UNKNOWN = 103;
    public static final int CARIAN = 104;
    public static final int JAPANESE = 105;
    public static final int LANNA = 106;
    public static final int LYCIAN = 107;
    public static final int LYDIAN = 108;
    public static final int OL_CHIKI = 109;
    public static final int REJANG = 110;
    public static final int SAURASHTRA = 111;
    public static final int SIGN_WRITING = 112;
    public static final int SUNDANESE = 113;
    public static final int MOON = 114;
    public static final int MEITEI_MAYEK = 115;
    public static final int IMPERIAL_ARAMAIC = 116;
    public static final int AVESTAN = 117;
    public static final int CHAKMA = 118;
    public static final int KOREAN = 119;
    public static final int KAITHI = 120;
    public static final int MANICHAEAN = 121;
    public static final int INSCRIPTIONAL_PAHLAVI = 122;
    public static final int PSALTER_PAHLAVI = 123;
    public static final int BOOK_PAHLAVI = 124;
    public static final int INSCRIPTIONAL_PARTHIAN = 125;
    public static final int SAMARITAN = 126;
    public static final int TAI_VIET = 127;
    public static final int MATHEMATICAL_NOTATION = 128;
    public static final int SYMBOLS = 129;
    public static final int BAMUM = 130;
    public static final int LISU = 131;
    public static final int NAKHI_GEBA = 132;
    public static final int OLD_SOUTH_ARABIAN = 133;
    public static final int CODE_LIMIT = 134;
    private static final String kLocaleScript = "LocaleScript";

    private static int[] findCodeFromLocale(ULocale locale) {
        ICUResourceBundle rb;
        try {
            rb = (ICUResourceBundle)UResourceBundle.getBundleInstance("com/ibm/icu/impl/data/icudt44b", locale);
        }
        catch (MissingResourceException missingResourceException) {
            return null;
        }
        rb = (ICUResourceBundle)UResourceBundle.getBundleInstance("com/ibm/icu/impl/data/icudt44b", locale);
        if (rb.getLoadingStatus() == 3 && !locale.equals(ULocale.getDefault())) {
            return null;
        }
        UResourceBundle sub = rb.get(kLocaleScript);
        int[] result = new int[sub.getSize()];
        int w = 0;
        int i = 0;
        while (i < result.length) {
            int code = UCharacter.getPropertyValueEnum(4106, sub.getString(i));
            result[w++] = code;
            ++i;
        }
        if (w < result.length) {
            throw new IllegalStateException("bad locale data, listed " + result.length + " scripts but found only " + w);
        }
        return result;
    }

    public static final int[] getCode(Locale locale) {
        return UScript.findCodeFromLocale(ULocale.forLocale(locale));
    }

    public static final int[] getCode(ULocale locale) {
        return UScript.findCodeFromLocale(locale);
    }

    public static final int[] getCode(String nameOrAbbrOrLocale) {
        try {
            return new int[]{UCharacter.getPropertyValueEnum(4106, nameOrAbbrOrLocale)};
        }
        catch (IllegalArgumentException illegalArgumentException) {
            return UScript.findCodeFromLocale(new ULocale(nameOrAbbrOrLocale));
        }
    }

    public static final int getCodeFromName(String nameOrAbbr) {
        try {
            return UCharacter.getPropertyValueEnum(4106, nameOrAbbr);
        }
        catch (IllegalArgumentException illegalArgumentException) {
            return -1;
        }
    }

    public static final int getScript(int codepoint) {
        if (codepoint >= 0 & codepoint <= 0x10FFFF) {
            return UCharacterProperty.INSTANCE.getAdditional(codepoint, 0) & 0xFF;
        }
        throw new IllegalArgumentException(Integer.toString(codepoint));
    }

    public static final String getName(int scriptCode) {
        return UCharacter.getPropertyValueName(4106, scriptCode, 1);
    }

    public static final String getShortName(int scriptCode) {
        return UCharacter.getPropertyValueName(4106, scriptCode, 0);
    }

    private UScript() {
    }
}

