/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.content;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;
import org.eclipse.core.runtime.content.IContentDescription;

public class Util {
    public static String[] parseItems(String string) {
        return Util.parseItems(string, ",");
    }

    public static String[] parseItems(String string, String separator) {
        if (string == null) {
            return new String[0];
        }
        StringTokenizer tokenizer = new StringTokenizer(string, separator, true);
        if (!tokenizer.hasMoreTokens()) {
            return new String[]{string.trim()};
        }
        String first = tokenizer.nextToken().trim();
        boolean wasSeparator = false;
        if (first.equals(separator)) {
            first = "";
            wasSeparator = true;
        }
        if (!tokenizer.hasMoreTokens()) {
            String[] stringArray;
            if (wasSeparator) {
                String[] stringArray2 = new String[2];
                stringArray2[0] = first;
                stringArray = stringArray2;
                stringArray2[1] = first;
            } else {
                String[] stringArray3 = new String[1];
                stringArray = stringArray3;
                stringArray3[0] = first;
            }
            return stringArray;
        }
        ArrayList<String> items = new ArrayList<String>();
        items.add(first);
        do {
            String current;
            boolean isSeparator;
            if (isSeparator = (current = tokenizer.nextToken().trim()).equals(separator)) {
                if (wasSeparator) {
                    items.add("");
                }
            } else {
                items.add(current);
            }
            wasSeparator = isSeparator;
        } while (tokenizer.hasMoreTokens());
        if (wasSeparator) {
            items.add("");
        }
        return items.toArray(new String[items.size()]);
    }

    public static List parseItemsIntoList(String string) {
        return Util.parseItemsIntoList(string, ",");
    }

    public static List parseItemsIntoList(String string, String separator) {
        ArrayList<String> items = new ArrayList<String>(5);
        if (string == null) {
            return items;
        }
        StringTokenizer tokenizer = new StringTokenizer(string, separator, true);
        if (!tokenizer.hasMoreTokens()) {
            items.add(string.trim());
            return items;
        }
        String first = tokenizer.nextToken().trim();
        boolean wasSeparator = false;
        if (first.equals(separator)) {
            first = "";
            wasSeparator = true;
        }
        items.add(first);
        if (!tokenizer.hasMoreTokens()) {
            return items;
        }
        do {
            String current;
            boolean isSeparator;
            if (isSeparator = (current = tokenizer.nextToken().trim()).equals(separator)) {
                if (wasSeparator) {
                    items.add("");
                }
            } else {
                items.add(current);
            }
            wasSeparator = isSeparator;
        } while (tokenizer.hasMoreTokens());
        if (wasSeparator) {
            items.add("");
        }
        return items;
    }

    public static String toListString(Object[] list) {
        return Util.toListString(list, ",");
    }

    public static String toListString(Object[] list, String separator) {
        if (list == null || list.length == 0) {
            return null;
        }
        StringBuffer result = new StringBuffer();
        int i = 0;
        while (i < list.length) {
            result.append(list[i]);
            result.append(separator);
            ++i;
        }
        return result.substring(0, result.length() - 1);
    }

    public static byte[] getByteOrderMark(InputStream input) throws IOException {
        int first = input.read();
        if (first == 239) {
            int second = input.read();
            int third = input.read();
            if (second == 187 && third == 191) {
                return IContentDescription.BOM_UTF_8;
            }
        } else if (first == 254) {
            if (input.read() == 255) {
                return IContentDescription.BOM_UTF_16BE;
            }
        } else if (first == 255 && input.read() == 254) {
            return IContentDescription.BOM_UTF_16LE;
        }
        return null;
    }
}

