/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.util;

import java.util.concurrent.ConcurrentHashMap;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class VersionInfo
implements Comparable<VersionInfo> {
    public static final VersionInfo UNICODE_1_0;
    public static final VersionInfo UNICODE_1_0_1;
    public static final VersionInfo UNICODE_1_1_0;
    public static final VersionInfo UNICODE_1_1_5;
    public static final VersionInfo UNICODE_2_0;
    public static final VersionInfo UNICODE_2_1_2;
    public static final VersionInfo UNICODE_2_1_5;
    public static final VersionInfo UNICODE_2_1_8;
    public static final VersionInfo UNICODE_2_1_9;
    public static final VersionInfo UNICODE_3_0;
    public static final VersionInfo UNICODE_3_0_1;
    public static final VersionInfo UNICODE_3_1_0;
    public static final VersionInfo UNICODE_3_1_1;
    public static final VersionInfo UNICODE_3_2;
    public static final VersionInfo UNICODE_4_0;
    public static final VersionInfo UNICODE_4_0_1;
    public static final VersionInfo UNICODE_4_1;
    public static final VersionInfo UNICODE_5_0;
    public static final VersionInfo UNICODE_5_1;
    public static final VersionInfo UNICODE_5_2;
    public static final VersionInfo ICU_VERSION;
    public static final String ICU_DATA_VERSION_PATH = "44b";
    public static final VersionInfo ICU_DATA_VERSION;
    public static final VersionInfo UCOL_RUNTIME_VERSION;
    public static final VersionInfo UCOL_BUILDER_VERSION;
    public static final VersionInfo UCOL_TAILORINGS_VERSION;
    private static VersionInfo javaVersion;
    private int m_version_;
    private static final ConcurrentHashMap<Integer, VersionInfo> MAP_;
    private static final int LAST_BYTE_MASK_ = 255;
    private static final String INVALID_VERSION_NUMBER_ = "Invalid version number: Version number may be negative or greater than 255";

    static {
        MAP_ = new ConcurrentHashMap();
        UNICODE_1_0 = VersionInfo.getInstance(1, 0, 0, 0);
        UNICODE_1_0_1 = VersionInfo.getInstance(1, 0, 1, 0);
        UNICODE_1_1_0 = VersionInfo.getInstance(1, 1, 0, 0);
        UNICODE_1_1_5 = VersionInfo.getInstance(1, 1, 5, 0);
        UNICODE_2_0 = VersionInfo.getInstance(2, 0, 0, 0);
        UNICODE_2_1_2 = VersionInfo.getInstance(2, 1, 2, 0);
        UNICODE_2_1_5 = VersionInfo.getInstance(2, 1, 5, 0);
        UNICODE_2_1_8 = VersionInfo.getInstance(2, 1, 8, 0);
        UNICODE_2_1_9 = VersionInfo.getInstance(2, 1, 9, 0);
        UNICODE_3_0 = VersionInfo.getInstance(3, 0, 0, 0);
        UNICODE_3_0_1 = VersionInfo.getInstance(3, 0, 1, 0);
        UNICODE_3_1_0 = VersionInfo.getInstance(3, 1, 0, 0);
        UNICODE_3_1_1 = VersionInfo.getInstance(3, 1, 1, 0);
        UNICODE_3_2 = VersionInfo.getInstance(3, 2, 0, 0);
        UNICODE_4_0 = VersionInfo.getInstance(4, 0, 0, 0);
        UNICODE_4_0_1 = VersionInfo.getInstance(4, 0, 1, 0);
        UNICODE_4_1 = VersionInfo.getInstance(4, 1, 0, 0);
        UNICODE_5_0 = VersionInfo.getInstance(5, 0, 0, 0);
        UNICODE_5_1 = VersionInfo.getInstance(5, 1, 0, 0);
        UNICODE_5_2 = VersionInfo.getInstance(5, 2, 0, 0);
        ICU_VERSION = VersionInfo.getInstance(4, 4, 2, 1);
        ICU_DATA_VERSION = VersionInfo.getInstance(4, 4, 0, 1);
        UCOL_RUNTIME_VERSION = VersionInfo.getInstance(6);
        UCOL_BUILDER_VERSION = VersionInfo.getInstance(7);
        UCOL_TAILORINGS_VERSION = VersionInfo.getInstance(1);
    }

    public static VersionInfo getInstance(String version) {
        int length = version.length();
        int[] array = new int[4];
        int count = 0;
        int index = 0;
        while (count < 4 && index < length) {
            char c = version.charAt(index);
            if (c == '.') {
                ++count;
            } else {
                if ((c = (char)(c - 48)) < '\u0000' || c > '\t') {
                    throw new IllegalArgumentException(INVALID_VERSION_NUMBER_);
                }
                int n = count;
                array[n] = array[n] * 10;
                int n2 = count;
                array[n2] = array[n2] + c;
            }
            ++index;
        }
        if (index != length) {
            throw new IllegalArgumentException("Invalid version number: String '" + version + "' exceeds version format");
        }
        int i = 0;
        while (i < 4) {
            if (array[i] < 0 || array[i] > 255) {
                throw new IllegalArgumentException(INVALID_VERSION_NUMBER_);
            }
            ++i;
        }
        return VersionInfo.getInstance(array[0], array[1], array[2], array[3]);
    }

    public static VersionInfo getInstance(int major, int minor, int milli, int micro) {
        VersionInfo tmpvi;
        if (major < 0 || major > 255 || minor < 0 || minor > 255 || milli < 0 || milli > 255 || micro < 0 || micro > 255) {
            throw new IllegalArgumentException(INVALID_VERSION_NUMBER_);
        }
        int version = VersionInfo.getInt(major, minor, milli, micro);
        Integer key = new Integer(version);
        VersionInfo result = MAP_.get(key);
        if (result == null && (tmpvi = MAP_.putIfAbsent(key, result = new VersionInfo(version))) != null) {
            result = tmpvi;
        }
        return result;
    }

    public static VersionInfo getInstance(int major, int minor, int milli) {
        return VersionInfo.getInstance(major, minor, milli, 0);
    }

    public static VersionInfo getInstance(int major, int minor) {
        return VersionInfo.getInstance(major, minor, 0, 0);
    }

    public static VersionInfo getInstance(int major) {
        return VersionInfo.getInstance(major, 0, 0, 0);
    }

    public static VersionInfo javaVersion() {
        if (javaVersion == null) {
            String s = System.getProperty("java.version");
            char[] chars = s.toCharArray();
            int r = 0;
            int w = 0;
            int count = 0;
            boolean numeric = false;
            while (r < chars.length) {
                char c;
                if ((c = chars[r++]) < '0' || c > '9') {
                    if (!numeric) continue;
                    if (count == 3) break;
                    numeric = false;
                    chars[w++] = 46;
                    ++count;
                    continue;
                }
                numeric = true;
                chars[w++] = c;
            }
            while (w > 0 && chars[w - 1] == '.') {
                --w;
            }
            String vs = new String(chars, 0, w);
            javaVersion = VersionInfo.getInstance(vs);
        }
        return javaVersion;
    }

    public String toString() {
        StringBuilder result = new StringBuilder(7);
        result.append(this.getMajor());
        result.append('.');
        result.append(this.getMinor());
        result.append('.');
        result.append(this.getMilli());
        result.append('.');
        result.append(this.getMicro());
        return result.toString();
    }

    public int getMajor() {
        return this.m_version_ >> 24 & 0xFF;
    }

    public int getMinor() {
        return this.m_version_ >> 16 & 0xFF;
    }

    public int getMilli() {
        return this.m_version_ >> 8 & 0xFF;
    }

    public int getMicro() {
        return this.m_version_ & 0xFF;
    }

    public boolean equals(Object other) {
        return other == this;
    }

    @Override
    public int compareTo(VersionInfo other) {
        return this.m_version_ - other.m_version_;
    }

    private VersionInfo(int compactversion) {
        this.m_version_ = compactversion;
    }

    private static int getInt(int major, int minor, int milli, int micro) {
        return major << 24 | minor << 16 | milli << 8 | micro;
    }
}

