/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.DataFormatException
 *  org.eclipse.jface.resource.StringConverter
 *  org.eclipse.swt.graphics.RGB
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.ui.themes;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import org.eclipse.jface.resource.DataFormatException;
import org.eclipse.jface.resource.StringConverter;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.widgets.Display;

public final class ColorUtil {
    private static Field[] cachedFields;
    static /* synthetic */ Class class$0;

    private static RGB process(String value) {
        Field[] fields = ColorUtil.getFields();
        try {
            int i = 0;
            while (i < fields.length) {
                Field field = fields[i];
                if (field.getName().equals(value)) {
                    return ColorUtil.getSystemColor(field.getInt(null));
                }
                ++i;
            }
        }
        catch (IllegalArgumentException illegalArgumentException) {
        }
        catch (IllegalAccessException illegalAccessException) {}
        return ColorUtil.getSystemColor(2);
    }

    private static Field[] getFields() {
        if (cachedFields == null) {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.swt.SWT");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            Class<?> clazz2 = clazz;
            Field[] allFields = clazz2.getDeclaredFields();
            ArrayList<Field> applicableFields = new ArrayList<Field>(allFields.length);
            int i = 0;
            while (i < allFields.length) {
                Field field = allFields[i];
                if (field.getType() == Integer.TYPE && Modifier.isStatic(field.getModifiers()) && Modifier.isPublic(field.getModifiers()) && Modifier.isFinal(field.getModifiers()) && field.getName().startsWith("COLOR")) {
                    applicableFields.add(field);
                }
                ++i;
            }
            cachedFields = applicableFields.toArray(new Field[applicableFields.size()]);
        }
        return cachedFields;
    }

    public static RGB blend(RGB c1, RGB c2, int ratio) {
        int r = ColorUtil.blend(c1.red, c2.red, ratio);
        int g = ColorUtil.blend(c1.green, c2.green, ratio);
        int b = ColorUtil.blend(c1.blue, c2.blue, ratio);
        return new RGB(r, g, b);
    }

    private static int blend(int v1, int v2, int ratio) {
        int b = (ratio * v1 + (100 - ratio) * v2) / 100;
        return Math.min(255, b);
    }

    public static RGB blend(RGB val1, RGB val2) {
        int red = ColorUtil.blend(val1.red, val2.red);
        int green = ColorUtil.blend(val1.green, val2.green);
        int blue = ColorUtil.blend(val1.blue, val2.blue);
        return new RGB(red, green, blue);
    }

    private static int blend(int temp1, int temp2) {
        return Math.abs(temp1 - temp2) / 2 + Math.min(temp1, temp2);
    }

    private static RGB getSystemColor(int colorId) {
        return Display.getCurrent().getSystemColor(colorId).getRGB();
    }

    public static RGB getColorValue(String rawValue) throws DataFormatException {
        if (rawValue == null) {
            return null;
        }
        if (!ColorUtil.isDirectValue(rawValue = rawValue.trim())) {
            return ColorUtil.process(rawValue);
        }
        return StringConverter.asRGB((String)rawValue);
    }

    public static RGB[] getColorValues(String[] rawValues) {
        RGB[] values = new RGB[rawValues.length];
        int i = 0;
        while (i < rawValues.length) {
            values[i] = ColorUtil.getColorValue(rawValues[i]);
            ++i;
        }
        return values;
    }

    private static boolean isDirectValue(String rawValue) {
        return rawValue.indexOf(44) >= 0;
    }

    private ColorUtil() {
    }
}

