/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdi.internal.jdwp;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.UTFDataFormatException;
import org.eclipse.jdi.internal.jdwp.JDWPMessages;

public class JdwpString {
    public static String read(DataInputStream in) throws IOException {
        int utfSize = in.readInt();
        byte[] utfBytes = new byte[utfSize];
        in.readFully(utfBytes);
        StringBuffer strBuffer = new StringBuffer(utfSize / 3 * 2);
        int i = 0;
        while (i < utfSize) {
            int a = utfBytes[i] & 0xFF;
            if (a >> 4 < 12) {
                strBuffer.append((char)a);
                ++i;
                continue;
            }
            int b = utfBytes[i + 1] & 0xFF;
            if (a >> 4 < 14) {
                if ((b & 0xBF) == 0) {
                    throw new UTFDataFormatException(JDWPMessages.JdwpString_Second_byte_input_does_not_match_UTF_Specification_1);
                }
                strBuffer.append((char)((a & 0x1F) << 6 | b & 0x3F));
                i += 2;
                continue;
            }
            int c = utfBytes[i + 2] & 0xFF;
            if ((a & 0xEF) > 0) {
                if ((b & 0xBF) == 0 || (c & 0xBF) == 0) {
                    throw new UTFDataFormatException(JDWPMessages.JdwpString_Second_or_third_byte_input_does_not_mach_UTF_Specification_2);
                }
                strBuffer.append((char)((a & 0xF) << 12 | (b & 0x3F) << 6 | c & 0x3F));
                i += 3;
                continue;
            }
            throw new UTFDataFormatException(JDWPMessages.JdwpString_Input_does_not_match_UTF_Specification_3);
        }
        return strBuffer.toString();
    }

    public static void write(String str, DataOutputStream out) throws IOException {
        if (str == null) {
            throw new NullPointerException(JDWPMessages.JdwpString_str_is_null_4);
        }
        int utfCount = 0;
        int i = 0;
        while (i < str.length()) {
            char charValue = str.charAt(i);
            utfCount = charValue > '\u0000' && charValue <= '\u007f' ? ++utfCount : (charValue <= '\u07ff' ? (utfCount += 2) : (utfCount += 3));
            ++i;
        }
        byte[] utfBytes = new byte[utfCount];
        int utfIndex = 0;
        int i2 = 0;
        while (i2 < str.length()) {
            char charValue = str.charAt(i2);
            if (charValue > '\u0000' && charValue <= '\u007f') {
                utfBytes[utfIndex++] = (byte)charValue;
            } else if (charValue <= '\u07ff') {
                utfBytes[utfIndex++] = (byte)(0xC0 | 0x1F & charValue >> 6);
                utfBytes[utfIndex++] = (byte)(0x80 | 0x3F & charValue);
            } else {
                utfBytes[utfIndex++] = (byte)(0xE0 | 0xF & charValue >> 12);
                utfBytes[utfIndex++] = (byte)(0x80 | 0x3F & charValue >> 6);
                utfBytes[utfIndex++] = (byte)(0x80 | 0x3F & charValue);
            }
            ++i2;
        }
        out.writeInt(utfCount);
        if (utfCount > 0) {
            out.write(utfBytes);
        }
    }
}

