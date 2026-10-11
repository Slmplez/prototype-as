/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.swt.graphics.FontData
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.RGB
 *  org.eclipse.swt.graphics.Rectangle
 */
package org.eclipse.jface.resource;

import java.util.ArrayList;
import java.util.NoSuchElementException;
import java.util.StringTokenizer;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.resource.DataFormatException;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.swt.graphics.FontData;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.graphics.Rectangle;

public class StringConverter {
    private static final String REGULAR = "regular";
    private static final String BOLD = "bold";
    private static final String ITALIC = "italic";
    private static final String BOLD_ITALIC = "bold italic";
    private static final char SEPARATOR = '-';
    private static final String FONT_SEPARATOR = ";";

    private StringConverter() {
    }

    public static String[] asArray(String value) throws DataFormatException {
        ArrayList<String> list = new ArrayList<String>();
        StringTokenizer stok = new StringTokenizer(value);
        while (stok.hasMoreTokens()) {
            list.add(stok.nextToken());
        }
        String[] result = new String[list.size()];
        list.toArray(result);
        return result;
    }

    public static String[] asArray(String value, String[] dflt) {
        try {
            return StringConverter.asArray(value);
        }
        catch (DataFormatException dataFormatException) {
            return dflt;
        }
    }

    public static boolean asBoolean(String value) throws DataFormatException {
        String v = value.toLowerCase();
        if (v.equals("t") || v.equals("true")) {
            return true;
        }
        if (value.equals("f") || v.equals("false")) {
            return false;
        }
        throw new DataFormatException("Value " + value + "doesn't represent a boolean");
    }

    public static boolean asBoolean(String value, boolean dflt) {
        try {
            return StringConverter.asBoolean(value);
        }
        catch (DataFormatException dataFormatException) {
            return dflt;
        }
    }

    public static double asDouble(String value) throws DataFormatException {
        try {
            return Double.valueOf(value);
        }
        catch (NumberFormatException e) {
            throw new DataFormatException(e.getMessage());
        }
    }

    public static double asDouble(String value, double dflt) {
        try {
            return StringConverter.asDouble(value);
        }
        catch (DataFormatException dataFormatException) {
            return dflt;
        }
    }

    public static float asFloat(String value) throws DataFormatException {
        try {
            return Float.valueOf(value).floatValue();
        }
        catch (NumberFormatException e) {
            throw new DataFormatException(e.getMessage());
        }
    }

    public static float asFloat(String value, float dflt) {
        try {
            return StringConverter.asFloat(value);
        }
        catch (DataFormatException dataFormatException) {
            return dflt;
        }
    }

    public static FontData asFontData(String value) throws DataFormatException {
        if (value == null) {
            throw new DataFormatException("Null doesn't represent a valid font data");
        }
        String name = null;
        int height = 0;
        int style = 0;
        try {
            int length = value.length();
            int heightIndex = value.lastIndexOf(45);
            if (heightIndex == -1) {
                throw new DataFormatException("No correct font data format \"" + value + "\"");
            }
            height = StringConverter.asInt(value.substring(heightIndex + 1, length));
            int faceIndex = value.lastIndexOf(45, heightIndex - 1);
            if (faceIndex == -1) {
                throw new DataFormatException("No correct font data format \"" + value + "\"");
            }
            String s = value.substring(faceIndex + 1, heightIndex);
            if (BOLD_ITALIC.equals(s)) {
                style = 3;
            } else if (BOLD.equals(s)) {
                style = 1;
            } else if (ITALIC.equals(s)) {
                style = 2;
            } else if (REGULAR.equals(s)) {
                style = 0;
            } else {
                throw new DataFormatException("Unknown face name \"" + s + "\"");
            }
            name = value.substring(0, faceIndex);
        }
        catch (NoSuchElementException e) {
            throw new DataFormatException(e.getMessage());
        }
        return new FontData(name, height, style);
    }

    private static String[] getArrayFromList(String prop, String separator) {
        if (prop == null || prop.trim().equals("")) {
            return new String[0];
        }
        ArrayList<String> list = new ArrayList<String>();
        StringTokenizer tokens = new StringTokenizer(prop, separator);
        while (tokens.hasMoreTokens()) {
            String token = tokens.nextToken().trim();
            if (token.equals("")) continue;
            list.add(token);
        }
        return list.isEmpty() ? new String[]{} : list.toArray(new String[list.size()]);
    }

    public static FontData[] asFontDataArray(String value) {
        String[] strings = StringConverter.getArrayFromList(value, FONT_SEPARATOR);
        ArrayList<FontData> data = new ArrayList<FontData>(strings.length);
        int i = 0;
        while (i < strings.length) {
            try {
                data.add(StringConverter.asFontData(strings[i]));
            }
            catch (DataFormatException dataFormatException) {}
            ++i;
        }
        return data.toArray(new FontData[data.size()]);
    }

    public static FontData asFontData(String value, FontData dflt) {
        try {
            return StringConverter.asFontData(value);
        }
        catch (DataFormatException dataFormatException) {
            return dflt;
        }
    }

    public static int asInt(String value) throws DataFormatException {
        try {
            return Integer.parseInt(value);
        }
        catch (NumberFormatException e) {
            throw new DataFormatException(e.getMessage());
        }
    }

    public static int asInt(String value, int dflt) {
        try {
            return StringConverter.asInt(value);
        }
        catch (DataFormatException dataFormatException) {
            return dflt;
        }
    }

    public static long asLong(String value) throws DataFormatException {
        try {
            return Long.parseLong(value);
        }
        catch (NumberFormatException e) {
            throw new DataFormatException(e.getMessage());
        }
    }

    public static long asLong(String value, long dflt) {
        try {
            return StringConverter.asLong(value);
        }
        catch (DataFormatException dataFormatException) {
            return dflt;
        }
    }

    public static Point asPoint(String value) throws DataFormatException {
        if (value == null) {
            throw new DataFormatException("Null doesn't represent a valid point");
        }
        StringTokenizer stok = new StringTokenizer(value, ",");
        String x = stok.nextToken();
        String y = stok.nextToken();
        int xval = 0;
        int yval = 0;
        try {
            xval = Integer.parseInt(x);
            yval = Integer.parseInt(y);
        }
        catch (NumberFormatException e) {
            throw new DataFormatException(e.getMessage());
        }
        return new Point(xval, yval);
    }

    public static Point asPoint(String value, Point dflt) {
        try {
            return StringConverter.asPoint(value);
        }
        catch (DataFormatException dataFormatException) {
            return dflt;
        }
    }

    public static Rectangle asRectangle(String value) throws DataFormatException {
        if (value == null) {
            throw new DataFormatException("Null doesn't represent a valid rectangle");
        }
        StringTokenizer stok = new StringTokenizer(value, ",");
        String x = stok.nextToken();
        String y = stok.nextToken();
        String width = stok.nextToken();
        String height = stok.nextToken();
        int xval = 0;
        int yval = 0;
        int wval = 0;
        int hval = 0;
        try {
            xval = Integer.parseInt(x);
            yval = Integer.parseInt(y);
            wval = Integer.parseInt(width);
            hval = Integer.parseInt(height);
        }
        catch (NumberFormatException e) {
            throw new DataFormatException(e.getMessage());
        }
        return new Rectangle(xval, yval, wval, hval);
    }

    public static Rectangle asRectangle(String value, Rectangle dflt) {
        try {
            return StringConverter.asRectangle(value);
        }
        catch (DataFormatException dataFormatException) {
            return dflt;
        }
    }

    public static RGB asRGB(String value) throws DataFormatException {
        if (value == null) {
            throw new DataFormatException("Null doesn't represent a valid RGB");
        }
        StringTokenizer stok = new StringTokenizer(value, ",");
        try {
            String red = stok.nextToken().trim();
            String green = stok.nextToken().trim();
            String blue = stok.nextToken().trim();
            int rval = 0;
            int gval = 0;
            int bval = 0;
            try {
                rval = Integer.parseInt(red);
                gval = Integer.parseInt(green);
                bval = Integer.parseInt(blue);
            }
            catch (NumberFormatException e) {
                throw new DataFormatException(e.getMessage());
            }
            return new RGB(rval, gval, bval);
        }
        catch (NoSuchElementException e) {
            throw new DataFormatException(e.getMessage());
        }
    }

    public static RGB asRGB(String value, RGB dflt) {
        try {
            return StringConverter.asRGB(value);
        }
        catch (DataFormatException dataFormatException) {
            return dflt;
        }
    }

    public static String asString(double value) {
        return String.valueOf(value);
    }

    public static String asString(float value) {
        return String.valueOf(value);
    }

    public static String asString(int value) {
        return String.valueOf(value);
    }

    public static String asString(long value) {
        return String.valueOf(value);
    }

    public static String asString(Boolean value) {
        Assert.isNotNull((Object)value);
        return String.valueOf(value);
    }

    public static String asString(Double value) {
        Assert.isNotNull((Object)value);
        return String.valueOf(value);
    }

    public static String asString(Float value) {
        Assert.isNotNull((Object)value);
        return String.valueOf(value.floatValue());
    }

    public static String asString(Integer value) {
        Assert.isNotNull((Object)value);
        return String.valueOf(value);
    }

    public static String asString(Long value) {
        Assert.isNotNull((Object)value);
        return String.valueOf(value);
    }

    public static String asString(FontData[] value) {
        StringBuffer buffer = new StringBuffer();
        int i = 0;
        while (i < value.length) {
            buffer.append(StringConverter.asString(value[i]));
            if (i != value.length - 1) {
                buffer.append(FONT_SEPARATOR);
            }
            ++i;
        }
        return buffer.toString();
    }

    public static String asString(FontData value) {
        boolean italic;
        Assert.isNotNull((Object)value);
        StringBuffer buffer = new StringBuffer();
        buffer.append(value.getName());
        buffer.append('-');
        int style = value.getStyle();
        boolean bold = (style & 1) == 1;
        boolean bl = italic = (style & 2) == 2;
        if (bold && italic) {
            buffer.append(BOLD_ITALIC);
        } else if (bold) {
            buffer.append(BOLD);
        } else if (italic) {
            buffer.append(ITALIC);
        } else {
            buffer.append(REGULAR);
        }
        buffer.append('-');
        buffer.append(value.getHeight());
        return buffer.toString();
    }

    public static String asString(Point value) {
        Assert.isNotNull((Object)value);
        StringBuffer buffer = new StringBuffer();
        buffer.append(value.x);
        buffer.append(',');
        buffer.append(value.y);
        return buffer.toString();
    }

    public static String asString(Rectangle value) {
        Assert.isNotNull((Object)value);
        StringBuffer buffer = new StringBuffer();
        buffer.append(value.x);
        buffer.append(',');
        buffer.append(value.y);
        buffer.append(',');
        buffer.append(value.width);
        buffer.append(',');
        buffer.append(value.height);
        return buffer.toString();
    }

    public static String asString(RGB value) {
        Assert.isNotNull((Object)value);
        StringBuffer buffer = new StringBuffer();
        buffer.append(value.red);
        buffer.append(',');
        buffer.append(value.green);
        buffer.append(',');
        buffer.append(value.blue);
        return buffer.toString();
    }

    public static String asString(boolean value) {
        return String.valueOf(value);
    }

    public static String removeWhiteSpaces(String s) {
        boolean found = false;
        int wsIndex = -1;
        int size = s.length();
        int i = 0;
        while (i < size) {
            found = Character.isWhitespace(s.charAt(i));
            if (found) {
                wsIndex = i;
                break;
            }
            ++i;
        }
        if (!found) {
            return s;
        }
        StringBuffer result = new StringBuffer(s.substring(0, wsIndex));
        int i2 = wsIndex + 1;
        while (i2 < size) {
            char ch = s.charAt(i2);
            if (!Character.isWhitespace(ch)) {
                result.append(ch);
            }
            ++i2;
        }
        return result.toString();
    }

    public static String asDisplayableString(FontData value) {
        boolean italic;
        Assert.isNotNull((Object)value);
        StringBuffer buffer = new StringBuffer();
        buffer.append(value.getName());
        buffer.append('-');
        int style = value.getStyle();
        boolean bold = (style & 1) == 1;
        boolean bl = italic = (style & 2) == 2;
        if (bold && italic) {
            buffer.append(JFaceResources.getString("BoldItalicFont"));
        } else if (bold) {
            buffer.append(JFaceResources.getString("BoldFont"));
        } else if (italic) {
            buffer.append(JFaceResources.getString("ItalicFont"));
        } else {
            buffer.append(JFaceResources.getString("RegularFont"));
        }
        buffer.append('-');
        buffer.append(value.getHeight());
        return buffer.toString();
    }
}

