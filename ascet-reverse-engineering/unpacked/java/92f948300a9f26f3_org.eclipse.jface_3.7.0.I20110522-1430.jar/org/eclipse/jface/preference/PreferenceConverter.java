/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.SWTException
 *  org.eclipse.swt.graphics.FontData
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.RGB
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.jface.preference;

import java.util.Arrays;
import java.util.StringTokenizer;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.resource.StringConverter;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.graphics.FontData;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Display;

public class PreferenceConverter {
    public static final Point POINT_DEFAULT_DEFAULT = new Point(0, 0);
    public static final Rectangle RECTANGLE_DEFAULT_DEFAULT = new Rectangle(0, 0, 0, 0);
    public static final RGB COLOR_DEFAULT_DEFAULT = new RGB(0, 0, 0);
    private static final String ENTRY_SEPARATOR = ";";
    public static final FontData[] FONTDATA_ARRAY_DEFAULT_DEFAULT;
    public static final FontData FONTDATA_DEFAULT_DEFAULT;

    static {
        Display display = Display.getCurrent();
        if (display == null) {
            display = Display.getDefault();
        }
        FONTDATA_ARRAY_DEFAULT_DEFAULT = display.getSystemFont().getFontData();
        FONTDATA_DEFAULT_DEFAULT = FONTDATA_ARRAY_DEFAULT_DEFAULT[0];
    }

    private PreferenceConverter() {
    }

    private static RGB basicGetColor(String value) {
        if ("".equals(value)) {
            return COLOR_DEFAULT_DEFAULT;
        }
        RGB color = StringConverter.asRGB(value, null);
        if (color == null) {
            return COLOR_DEFAULT_DEFAULT;
        }
        return color;
    }

    public static FontData[] basicGetFontData(String value) {
        if ("".equals(value)) {
            return FONTDATA_ARRAY_DEFAULT_DEFAULT;
        }
        StringTokenizer tokenizer = new StringTokenizer(value, ENTRY_SEPARATOR);
        int numTokens = tokenizer.countTokens();
        FontData[] fontData = new FontData[numTokens];
        int i = 0;
        while (i < numTokens) {
            try {
                fontData[i] = new FontData(tokenizer.nextToken());
            }
            catch (SWTException sWTException) {
                return FONTDATA_ARRAY_DEFAULT_DEFAULT;
            }
            catch (IllegalArgumentException illegalArgumentException) {
                return FONTDATA_ARRAY_DEFAULT_DEFAULT;
            }
            ++i;
        }
        return fontData;
    }

    public static FontData[] readFontData(String fontDataValue) {
        return PreferenceConverter.basicGetFontData(fontDataValue);
    }

    private static Point basicGetPoint(String value) {
        Point dp = new Point(PreferenceConverter.POINT_DEFAULT_DEFAULT.x, PreferenceConverter.POINT_DEFAULT_DEFAULT.y);
        if ("".equals(value)) {
            return dp;
        }
        return StringConverter.asPoint(value, dp);
    }

    private static Rectangle basicGetRectangle(String value) {
        Rectangle dr = new Rectangle(PreferenceConverter.RECTANGLE_DEFAULT_DEFAULT.x, PreferenceConverter.RECTANGLE_DEFAULT_DEFAULT.y, PreferenceConverter.RECTANGLE_DEFAULT_DEFAULT.width, PreferenceConverter.RECTANGLE_DEFAULT_DEFAULT.height);
        if ("".equals(value)) {
            return dr;
        }
        return StringConverter.asRectangle(value, dr);
    }

    public static RGB getColor(IPreferenceStore store, String name) {
        return PreferenceConverter.basicGetColor(store.getString(name));
    }

    public static RGB getDefaultColor(IPreferenceStore store, String name) {
        return PreferenceConverter.basicGetColor(store.getDefaultString(name));
    }

    public static FontData[] getDefaultFontDataArray(IPreferenceStore store, String name) {
        return PreferenceConverter.basicGetFontData(store.getDefaultString(name));
    }

    public static FontData getDefaultFontData(IPreferenceStore store, String name) {
        return PreferenceConverter.getDefaultFontDataArray(store, name)[0];
    }

    public static Point getDefaultPoint(IPreferenceStore store, String name) {
        return PreferenceConverter.basicGetPoint(store.getDefaultString(name));
    }

    public static Rectangle getDefaultRectangle(IPreferenceStore store, String name) {
        return PreferenceConverter.basicGetRectangle(store.getDefaultString(name));
    }

    public static FontData[] getFontDataArray(IPreferenceStore store, String name) {
        return PreferenceConverter.basicGetFontData(store.getString(name));
    }

    public static FontData getFontData(IPreferenceStore store, String name) {
        return PreferenceConverter.getFontDataArray(store, name)[0];
    }

    public static Point getPoint(IPreferenceStore store, String name) {
        return PreferenceConverter.basicGetPoint(store.getString(name));
    }

    public static Rectangle getRectangle(IPreferenceStore store, String name) {
        return PreferenceConverter.basicGetRectangle(store.getString(name));
    }

    public static void setDefault(IPreferenceStore store, String name, FontData value) {
        FontData[] fontDatas = new FontData[]{value};
        PreferenceConverter.setDefault(store, name, fontDatas);
    }

    public static void setDefault(IPreferenceStore store, String name, FontData[] value) {
        store.setDefault(name, PreferenceConverter.getStoredRepresentation(value));
    }

    public static void setDefault(IPreferenceStore store, String name, Point value) {
        store.setDefault(name, StringConverter.asString(value));
    }

    public static void setDefault(IPreferenceStore store, String name, Rectangle value) {
        store.setDefault(name, StringConverter.asString(value));
    }

    public static void setDefault(IPreferenceStore store, String name, RGB value) {
        store.setDefault(name, StringConverter.asString(value));
    }

    public static void setValue(IPreferenceStore store, String name, FontData value) {
        PreferenceConverter.setValue(store, name, new FontData[]{value});
    }

    public static void setValue(IPreferenceStore store, String name, FontData[] value) {
        Object[] oldValue = PreferenceConverter.getFontDataArray(store, name);
        if (!Arrays.equals(oldValue, value)) {
            store.putValue(name, PreferenceConverter.getStoredRepresentation(value));
            JFaceResources.getFontRegistry().put(name, value);
            store.firePropertyChangeEvent(name, oldValue, value);
        }
    }

    public static void putValue(IPreferenceStore store, String name, FontData[] value) {
        Object[] oldValue = PreferenceConverter.getFontDataArray(store, name);
        if (!Arrays.equals(oldValue, value)) {
            store.putValue(name, PreferenceConverter.getStoredRepresentation(value));
        }
    }

    public static String getStoredRepresentation(FontData[] fontData) {
        StringBuffer buffer = new StringBuffer();
        int i = 0;
        while (i < fontData.length) {
            if (fontData[i] != null) {
                buffer.append(fontData[i].toString());
                buffer.append(ENTRY_SEPARATOR);
            }
            ++i;
        }
        return buffer.toString();
    }

    public static void setValue(IPreferenceStore store, String name, Point value) {
        Point oldValue = PreferenceConverter.getPoint(store, name);
        if (oldValue == null || !oldValue.equals((Object)value)) {
            store.putValue(name, StringConverter.asString(value));
            store.firePropertyChangeEvent(name, oldValue, value);
        }
    }

    public static void setValue(IPreferenceStore store, String name, Rectangle value) {
        Rectangle oldValue = PreferenceConverter.getRectangle(store, name);
        if (oldValue == null || !oldValue.equals((Object)value)) {
            store.putValue(name, StringConverter.asString(value));
            store.firePropertyChangeEvent(name, oldValue, value);
        }
    }

    public static void setValue(IPreferenceStore store, String name, RGB value) {
        RGB oldValue = PreferenceConverter.getColor(store, name);
        if (oldValue == null || !oldValue.equals((Object)value)) {
            store.putValue(name, StringConverter.asString(value));
            store.firePropertyChangeEvent(name, oldValue, value);
        }
    }
}

