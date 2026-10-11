/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.SWT
 */
package org.eclipse.jface.util;

import java.util.Collections;
import java.util.List;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import java.util.SortedSet;
import java.util.TreeSet;
import org.eclipse.swt.SWT;

public final class Util {
    public static final SortedSet EMPTY_SORTED_SET = Collections.unmodifiableSortedSet(new TreeSet());
    public static final String ZERO_LENGTH_STRING = "";
    public static final String WS_WIN32 = "win32";
    public static final String WS_MOTIF = "motif";
    public static final String WS_GTK = "gtk";
    public static final String WS_PHOTON = "photon";
    public static final String WS_CARBON = "carbon";
    public static final String WS_COCOA = "cocoa";
    public static final String WS_WPF = "wpf";
    public static final String WS_UNKNOWN = "unknown";

    public static final void assertInstance(Object object, Class c) {
        Util.assertInstance(object, c, false);
    }

    private static final void assertInstance(Object object, Class c, boolean allowNull) {
        if (object == null && allowNull) {
            return;
        }
        if (object == null || c == null) {
            throw new NullPointerException();
        }
        if (!c.isInstance(object)) {
            throw new IllegalArgumentException();
        }
    }

    public static final int compare(boolean left, boolean right) {
        return !left ? (right ? -1 : 0) : 1;
    }

    public static final int compare(int left, int right) {
        return left - right;
    }

    public static final int compare(Comparable left, Comparable right) {
        if (left == null && right == null) {
            return 0;
        }
        if (left == null) {
            return -1;
        }
        if (right == null) {
            return 1;
        }
        return left.compareTo(right);
    }

    public static final int compare(Comparable[] left, Comparable[] right) {
        if (left == null && right == null) {
            return 0;
        }
        if (left == null) {
            return -1;
        }
        if (right == null) {
            return 1;
        }
        int l = left.length;
        int r = right.length;
        if (l != r) {
            return l - r;
        }
        int i = 0;
        while (i < l) {
            int compareTo = Util.compare(left[i], right[i]);
            if (compareTo != 0) {
                return compareTo;
            }
            ++i;
        }
        return 0;
    }

    public static final int compare(List left, List right) {
        int r;
        if (left == null && right == null) {
            return 0;
        }
        if (left == null) {
            return -1;
        }
        if (right == null) {
            return 1;
        }
        int l = left.size();
        if (l != (r = right.size())) {
            return l - r;
        }
        int i = 0;
        while (i < l) {
            int compareTo = Util.compare((Comparable)left.get(i), (Comparable)right.get(i));
            if (compareTo != 0) {
                return compareTo;
            }
            ++i;
        }
        return 0;
    }

    public static final boolean endsWith(Object[] left, Object[] right, boolean equals) {
        if (left == null || right == null) {
            return false;
        }
        int r = right.length;
        int l = left.length;
        if (r > l || !equals && r == l) {
            return false;
        }
        int i = 0;
        while (i < r) {
            if (!Util.equals(left[l - i - 1], right[r - i - 1])) {
                return false;
            }
            ++i;
        }
        return true;
    }

    public static final boolean equals(Object left, Object right) {
        return left == null ? right == null : right != null && left.equals(right);
    }

    public static final boolean equals(Object[] leftArray, Object[] rightArray) {
        if (leftArray == rightArray) {
            return true;
        }
        if (leftArray == null) {
            return rightArray == null;
        }
        if (rightArray == null) {
            return false;
        }
        if (leftArray.length != rightArray.length) {
            return false;
        }
        int i = 0;
        while (i < leftArray.length) {
            boolean equal;
            Object left = leftArray[i];
            Object right = rightArray[i];
            boolean bl = left == null ? right == null : (equal = left.equals(right));
            if (!equal) {
                return false;
            }
            ++i;
        }
        return true;
    }

    public static final int hashCode(int i) {
        return i;
    }

    public static final int hashCode(Object object) {
        return object != null ? object.hashCode() : 0;
    }

    public static final int hashCode(Object[] objects) {
        if (objects == null) {
            return 0;
        }
        int hashCode = 89;
        int i = 0;
        while (i < objects.length) {
            Object object = objects[i];
            if (object != null) {
                hashCode = hashCode * 31 + object.hashCode();
            }
            ++i;
        }
        return hashCode;
    }

    public static final boolean startsWith(Object[] left, Object[] right, boolean equals) {
        if (left == null || right == null) {
            return false;
        }
        int r = right.length;
        int l = left.length;
        if (r > l || !equals && r == l) {
            return false;
        }
        int i = 0;
        while (i < r) {
            if (!Util.equals(left[i], right[i])) {
                return false;
            }
            ++i;
        }
        return true;
    }

    public static final String toString(Object[] array) {
        if (array == null) {
            return "null";
        }
        StringBuffer buffer = new StringBuffer();
        buffer.append('[');
        int length = array.length;
        int i = 0;
        while (i < length) {
            if (i != 0) {
                buffer.append(',');
            }
            Object object = array[i];
            String element = String.valueOf(object);
            buffer.append(element);
            ++i;
        }
        buffer.append(']');
        return buffer.toString();
    }

    public static final String translateString(ResourceBundle resourceBundle, String key, String defaultString) {
        if (resourceBundle != null && key != null) {
            try {
                String translatedString = resourceBundle.getString(key);
                if (translatedString != null) {
                    return translatedString;
                }
            }
            catch (MissingResourceException missingResourceException) {}
        }
        return defaultString;
    }

    public static final String replaceAll(String src, String find, String replacement) {
        int len = src.length();
        int findLen = find.length();
        int idx = src.indexOf(find);
        if (idx < 0) {
            return src;
        }
        StringBuffer buf = new StringBuffer();
        int beginIndex = 0;
        while (idx != -1 && idx < len) {
            buf.append(src.substring(beginIndex, idx));
            buf.append(replacement);
            beginIndex = idx + findLen;
            idx = beginIndex < len ? src.indexOf(find, beginIndex) : -1;
        }
        if (beginIndex < len) {
            buf.append(src.substring(beginIndex, idx == -1 ? len : idx));
        }
        return buf.toString();
    }

    public static final boolean isWindows() {
        String ws = SWT.getPlatform();
        return WS_WIN32.equals(ws) || WS_WPF.equals(ws);
    }

    public static final boolean isMac() {
        String ws = SWT.getPlatform();
        return WS_CARBON.equals(ws) || WS_COCOA.equals(ws);
    }

    public static final boolean isLinux() {
        String ws = SWT.getPlatform();
        return WS_GTK.equals(ws) || WS_MOTIF.equals(ws);
    }

    public static final boolean isGtk() {
        String ws = SWT.getPlatform();
        return WS_GTK.equals(ws);
    }

    public static final boolean isMotif() {
        String ws = SWT.getPlatform();
        return WS_MOTIF.equals(ws);
    }

    public static final boolean isPhoton() {
        String ws = SWT.getPlatform();
        return WS_PHOTON.equals(ws);
    }

    public static final boolean isCarbon() {
        String ws = SWT.getPlatform();
        return WS_CARBON.equals(ws);
    }

    public static final boolean isCocoa() {
        String ws = SWT.getPlatform();
        return WS_COCOA.equals(ws);
    }

    public static final boolean isWpf() {
        String ws = SWT.getPlatform();
        return WS_WPF.equals(ws);
    }

    public static final boolean isWin32() {
        String ws = SWT.getPlatform();
        return WS_WIN32.equals(ws);
    }

    public static final String getWS() {
        return SWT.getPlatform();
    }

    private Util() {
    }
}

