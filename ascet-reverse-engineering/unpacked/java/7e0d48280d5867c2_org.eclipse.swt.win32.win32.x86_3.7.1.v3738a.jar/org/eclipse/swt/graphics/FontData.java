/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.graphics;

import org.eclipse.swt.SWT;
import org.eclipse.swt.internal.Callback;
import org.eclipse.swt.internal.win32.LOGFONT;
import org.eclipse.swt.internal.win32.LOGFONTA;
import org.eclipse.swt.internal.win32.LOGFONTW;
import org.eclipse.swt.internal.win32.OS;
import org.eclipse.swt.internal.win32.TCHAR;

public final class FontData {
    public LOGFONT data;
    public float height;
    String lang;
    String country;
    String variant;

    public FontData() {
        this.data = OS.IsUnicode ? new LOGFONTW() : new LOGFONTA();
        this.data.lfCharSet = 1;
        this.height = 12.0f;
    }

    FontData(LOGFONT data, float height) {
        this.data = data;
        this.height = height;
    }

    public FontData(String string) {
        if (string == null) {
            SWT.error(4);
        }
        int start = 0;
        int end = string.indexOf(124);
        if (end == -1) {
            SWT.error(5);
        }
        String version1 = string.substring(start, end);
        try {
            if (Integer.parseInt(version1) != 1) {
                SWT.error(5);
            }
        }
        catch (NumberFormatException numberFormatException) {
            SWT.error(5);
        }
        if ((end = string.indexOf(124, start = end + 1)) == -1) {
            SWT.error(5);
        }
        String name = string.substring(start, end);
        start = end + 1;
        if ((end = string.indexOf(124, start)) == -1) {
            SWT.error(5);
        }
        float height = 0.0f;
        try {
            height = Float.parseFloat(string.substring(start, end));
        }
        catch (NumberFormatException numberFormatException) {
            SWT.error(5);
        }
        start = end + 1;
        end = string.indexOf(124, start);
        if (end == -1) {
            SWT.error(5);
        }
        int style = 0;
        try {
            style = Integer.parseInt(string.substring(start, end));
        }
        catch (NumberFormatException numberFormatException) {
            SWT.error(5);
        }
        start = end + 1;
        end = string.indexOf(124, start);
        this.data = OS.IsUnicode ? new LOGFONTW() : new LOGFONTA();
        this.data.lfCharSet = 1;
        this.setName(name);
        this.setHeight(height);
        this.setStyle(style);
        if (end == -1) {
            return;
        }
        String platform = string.substring(start, end);
        start = end + 1;
        if ((end = string.indexOf(124, start)) == -1) {
            return;
        }
        String version2 = string.substring(start, end);
        if (platform.equals("WINDOWS") && version2.equals("1")) {
            LOGFONT newData = OS.IsUnicode ? new LOGFONTW() : new LOGFONTA();
            try {
                start = end + 1;
                end = string.indexOf(124, start);
                if (end == -1) {
                    return;
                }
                newData.lfHeight = Integer.parseInt(string.substring(start, end));
                start = end + 1;
                if ((end = string.indexOf(124, start)) == -1) {
                    return;
                }
                newData.lfWidth = Integer.parseInt(string.substring(start, end));
                start = end + 1;
                if ((end = string.indexOf(124, start)) == -1) {
                    return;
                }
                newData.lfEscapement = Integer.parseInt(string.substring(start, end));
                start = end + 1;
                if ((end = string.indexOf(124, start)) == -1) {
                    return;
                }
                newData.lfOrientation = Integer.parseInt(string.substring(start, end));
                start = end + 1;
                if ((end = string.indexOf(124, start)) == -1) {
                    return;
                }
                newData.lfWeight = Integer.parseInt(string.substring(start, end));
                start = end + 1;
                if ((end = string.indexOf(124, start)) == -1) {
                    return;
                }
                newData.lfItalic = Byte.parseByte(string.substring(start, end));
                start = end + 1;
                if ((end = string.indexOf(124, start)) == -1) {
                    return;
                }
                newData.lfUnderline = Byte.parseByte(string.substring(start, end));
                start = end + 1;
                if ((end = string.indexOf(124, start)) == -1) {
                    return;
                }
                newData.lfStrikeOut = Byte.parseByte(string.substring(start, end));
                start = end + 1;
                if ((end = string.indexOf(124, start)) == -1) {
                    return;
                }
                newData.lfCharSet = Byte.parseByte(string.substring(start, end));
                start = end + 1;
                if ((end = string.indexOf(124, start)) == -1) {
                    return;
                }
                newData.lfOutPrecision = Byte.parseByte(string.substring(start, end));
                start = end + 1;
                if ((end = string.indexOf(124, start)) == -1) {
                    return;
                }
                newData.lfClipPrecision = Byte.parseByte(string.substring(start, end));
                start = end + 1;
                if ((end = string.indexOf(124, start)) == -1) {
                    return;
                }
                newData.lfQuality = Byte.parseByte(string.substring(start, end));
                start = end + 1;
                if ((end = string.indexOf(124, start)) == -1) {
                    return;
                }
                newData.lfPitchAndFamily = Byte.parseByte(string.substring(start, end));
                start = end + 1;
            }
            catch (NumberFormatException numberFormatException) {
                this.setName(name);
                this.setHeight(height);
                this.setStyle(style);
                return;
            }
            TCHAR buffer = new TCHAR(0, string.substring(start), false);
            int length = Math.min(31, buffer.length());
            if (OS.IsUnicode) {
                char[] lfFaceName = newData.lfFaceName;
                System.arraycopy(buffer.chars, 0, lfFaceName, 0, length);
            } else {
                byte[] lfFaceName = ((LOGFONTA)newData).lfFaceName;
                System.arraycopy(buffer.bytes, 0, lfFaceName, 0, length);
            }
            this.data = newData;
        }
    }

    public FontData(String name, int height, int style) {
        if (name == null) {
            SWT.error(4);
        }
        this.data = OS.IsUnicode ? new LOGFONTW() : new LOGFONTA();
        this.setName(name);
        this.setHeight(height);
        this.setStyle(style);
        this.data.lfCharSet = 1;
    }

    FontData(String name, float height, int style) {
        if (name == null) {
            SWT.error(4);
        }
        this.data = OS.IsUnicode ? new LOGFONTW() : new LOGFONTA();
        this.setName(name);
        this.setHeight(height);
        this.setStyle(style);
        this.data.lfCharSet = 1;
    }

    public boolean equals(Object object) {
        if (object == this) {
            return true;
        }
        if (!(object instanceof FontData)) {
            return false;
        }
        FontData fd = (FontData)object;
        LOGFONT lf = fd.data;
        return this.data.lfCharSet == lf.lfCharSet && this.height == fd.height && this.data.lfWidth == lf.lfWidth && this.data.lfEscapement == lf.lfEscapement && this.data.lfOrientation == lf.lfOrientation && this.data.lfWeight == lf.lfWeight && this.data.lfItalic == lf.lfItalic && this.data.lfUnderline == lf.lfUnderline && this.data.lfStrikeOut == lf.lfStrikeOut && this.data.lfCharSet == lf.lfCharSet && this.data.lfOutPrecision == lf.lfOutPrecision && this.data.lfClipPrecision == lf.lfClipPrecision && this.data.lfQuality == lf.lfQuality && this.data.lfPitchAndFamily == lf.lfPitchAndFamily && this.getName().equals(fd.getName());
    }

    int EnumLocalesProc(int lpLocaleString) {
        int length = 8;
        TCHAR buffer = new TCHAR(0, length);
        int byteCount = length * TCHAR.sizeof;
        OS.MoveMemory(buffer, lpLocaleString, byteCount);
        int lcid = Integer.parseInt(buffer.toString(0, buffer.strlen()), 16);
        int size = OS.GetLocaleInfo(lcid, 89, buffer, length);
        if (size <= 0 || !this.lang.equals(buffer.toString(0, size - 1))) {
            return 1;
        }
        if (!(this.country == null || (size = OS.GetLocaleInfo(lcid, 90, buffer, length)) > 0 && this.country.equals(buffer.toString(0, size - 1)))) {
            return 1;
        }
        size = OS.GetLocaleInfo(lcid, 4100, buffer, length);
        if (size <= 0) {
            return 1;
        }
        int cp = Integer.parseInt(buffer.toString(0, size - 1));
        int[] lpCs = new int[8];
        OS.TranslateCharsetInfo(cp, lpCs, 2);
        this.data.lfCharSet = (byte)lpCs[0];
        return 0;
    }

    public int getHeight() {
        return (int)(0.5f + this.height);
    }

    float getHeightF() {
        return this.height;
    }

    public String getLocale() {
        String result;
        int length;
        StringBuffer buffer = new StringBuffer();
        char sep = '_';
        if (this.lang != null) {
            buffer.append(this.lang);
            buffer.append(sep);
        }
        if (this.country != null) {
            buffer.append(this.country);
            buffer.append(sep);
        }
        if (this.variant != null) {
            buffer.append(this.variant);
        }
        if ((length = (result = buffer.toString()).length()) > 0 && result.charAt(length - 1) == sep) {
            result = result.substring(0, length - 1);
        }
        return result;
    }

    public String getName() {
        char[] chars;
        if (OS.IsUnicode) {
            chars = ((LOGFONTW)this.data).lfFaceName;
        } else {
            chars = new char[32];
            byte[] bytes = ((LOGFONTA)this.data).lfFaceName;
            OS.MultiByteToWideChar(0, 1, bytes, bytes.length, chars, chars.length);
        }
        int index = 0;
        while (index < chars.length) {
            if (chars[index] == '\u0000') break;
            ++index;
        }
        return new String(chars, 0, index);
    }

    public int getStyle() {
        int style = 0;
        if (this.data.lfWeight == 700) {
            style |= 1;
        }
        if (this.data.lfItalic != 0) {
            style |= 2;
        }
        return style;
    }

    public int hashCode() {
        return this.data.lfCharSet ^ this.getHeight() << 8 ^ this.data.lfWidth ^ this.data.lfEscapement ^ this.data.lfOrientation ^ this.data.lfWeight ^ this.data.lfItalic ^ this.data.lfUnderline ^ this.data.lfStrikeOut ^ this.data.lfCharSet ^ this.data.lfOutPrecision ^ this.data.lfClipPrecision ^ this.data.lfQuality ^ this.data.lfPitchAndFamily ^ this.getName().hashCode();
    }

    public void setHeight(int height) {
        if (height < 0) {
            SWT.error(5);
        }
        this.height = height;
        this.data.lfWidth = 0;
    }

    void setHeight(float height) {
        if (height < 0.0f) {
            SWT.error(5);
        }
        this.height = height;
    }

    public void setLocale(String locale) {
        this.variant = null;
        this.country = null;
        this.lang = null;
        if (locale != null) {
            int secondSep;
            int sep = 95;
            int length = locale.length();
            int firstSep = locale.indexOf(sep);
            if (firstSep == -1) {
                firstSep = secondSep = length;
            } else {
                secondSep = locale.indexOf(sep, firstSep + 1);
                if (secondSep == -1) {
                    secondSep = length;
                }
            }
            if (firstSep > 0) {
                this.lang = locale.substring(0, firstSep);
            }
            if (secondSep > firstSep + 1) {
                this.country = locale.substring(firstSep + 1, secondSep);
            }
            if (length > secondSep + 1) {
                this.variant = locale.substring(secondSep + 1);
            }
        }
        if (this.lang == null) {
            this.data.lfCharSet = 1;
        } else {
            Callback callback = new Callback(this, "EnumLocalesProc", 1);
            int lpEnumLocalesProc = callback.getAddress();
            if (lpEnumLocalesProc == 0) {
                SWT.error(3);
            }
            OS.EnumSystemLocales(lpEnumLocalesProc, 2);
            callback.dispose();
        }
    }

    public void setName(String name) {
        if (name == null) {
            SWT.error(4);
        }
        TCHAR buffer = new TCHAR(0, name, true);
        int length = Math.min(31, buffer.length());
        if (OS.IsUnicode) {
            char[] lfFaceName = ((LOGFONTW)this.data).lfFaceName;
            int i = 0;
            while (i < lfFaceName.length) {
                lfFaceName[i] = '\u0000';
                ++i;
            }
            System.arraycopy(buffer.chars, 0, lfFaceName, 0, length);
        } else {
            byte[] lfFaceName = ((LOGFONTA)this.data).lfFaceName;
            int i = 0;
            while (i < lfFaceName.length) {
                lfFaceName[i] = 0;
                ++i;
            }
            System.arraycopy(buffer.bytes, 0, lfFaceName, 0, length);
        }
    }

    public void setStyle(int style) {
        this.data.lfWeight = (style & 1) == 1 ? 700 : 0;
        this.data.lfItalic = (style & 2) == 2 ? (byte)1 : 0;
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer(128);
        buffer.append("1|");
        String name = this.getName();
        buffer.append(name);
        buffer.append("|");
        buffer.append(this.getHeightF());
        buffer.append("|");
        buffer.append(this.getStyle());
        buffer.append("|");
        buffer.append("WINDOWS|1|");
        buffer.append(this.data.lfHeight);
        buffer.append("|");
        buffer.append(this.data.lfWidth);
        buffer.append("|");
        buffer.append(this.data.lfEscapement);
        buffer.append("|");
        buffer.append(this.data.lfOrientation);
        buffer.append("|");
        buffer.append(this.data.lfWeight);
        buffer.append("|");
        buffer.append(this.data.lfItalic);
        buffer.append("|");
        buffer.append(this.data.lfUnderline);
        buffer.append("|");
        buffer.append(this.data.lfStrikeOut);
        buffer.append("|");
        buffer.append(this.data.lfCharSet);
        buffer.append("|");
        buffer.append(this.data.lfOutPrecision);
        buffer.append("|");
        buffer.append(this.data.lfClipPrecision);
        buffer.append("|");
        buffer.append(this.data.lfQuality);
        buffer.append("|");
        buffer.append(this.data.lfPitchAndFamily);
        buffer.append("|");
        buffer.append(name);
        return buffer.toString();
    }

    public static FontData win32_new(LOGFONT data, float height) {
        return new FontData(data, height);
    }
}

