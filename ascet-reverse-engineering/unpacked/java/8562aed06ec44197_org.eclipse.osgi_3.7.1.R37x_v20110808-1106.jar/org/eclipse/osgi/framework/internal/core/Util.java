/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.internal.core;

public class Util {
    public static void sortByString(Object[] array) {
        Util.qSortByString(array, 0, array.length - 1);
    }

    /*
     * Unable to fully structure code
     */
    public static void qSortByString(Object[] array, int start, int stop) {
        if (start >= stop) {
            return;
        }
        left = start;
        right = stop;
        mid = String.valueOf(array[(start + stop) / 2]);
        ** GOTO lbl19
        {
            ++left;
            do {
                if (left < stop && String.valueOf(array[left]).compareTo(mid) < 0) continue block0;
                while (right > start && mid.compareTo(String.valueOf(array[right])) < 0) {
                    --right;
                }
                if (left > right) continue;
                temp = array[left];
                array[left] = array[right];
                array[right] = temp;
                ++left;
                --right;
lbl19:
                // 3 sources

            } while (left <= right);
        }
        if (start < right) {
            Util.qSortByString(array, start, right);
        }
        if (left < stop) {
            Util.qSortByString(array, left, stop);
        }
    }

    public static void sort(Object[] array, int start, int end) {
        int middle = (start + end) / 2;
        if (start + 1 < middle) {
            Util.sort(array, start, middle);
        }
        if (middle + 1 < end) {
            Util.sort(array, middle, end);
        }
        if (start + 1 >= end) {
            return;
        }
        if (((Comparable)array[middle - 1]).compareTo(array[middle]) <= 0) {
            return;
        }
        if (start + 2 == end) {
            Object temp = array[start];
            array[start] = array[middle];
            array[middle] = temp;
            return;
        }
        int i1 = start;
        int i2 = middle;
        int i3 = 0;
        Object[] merge = new Object[end - start];
        while (i1 < middle && i2 < end) {
            Object object = merge[i3++] = ((Comparable)array[i1]).compareTo(array[i2]) <= 0 ? array[i1++] : array[i2++];
        }
        if (i1 < middle) {
            System.arraycopy(array, i1, merge, i3, middle - i1);
        }
        System.arraycopy(merge, 0, array, start, i2 - start);
    }

    public static void dsort(Object[] array, int start, int end) {
        Util.sort(array, start, end);
        Util.swap(array);
    }

    public static void swap(Object[] array) {
        int start = 0;
        int end = array.length - 1;
        while (start < end) {
            Object temp = array[start];
            array[start++] = array[end];
            array[end--] = temp;
        }
    }

    public static String toString(Object object, int length) {
        boolean onLeft = object instanceof Number;
        return Util.toString(object, length, ' ', onLeft);
    }

    public static String toString(Object object, int length, char pad, boolean onLeft) {
        String input = String.valueOf(object);
        int size = input.length();
        if (size >= length) {
            int start = onLeft ? size - length : 0;
            return input.substring(start, length);
        }
        StringBuffer padding = new StringBuffer(length - size);
        int i = size;
        while (i < length) {
            padding.append(pad);
            ++i;
        }
        StringBuffer stringBuffer = new StringBuffer(length);
        if (onLeft) {
            stringBuffer.append(padding.toString());
        }
        stringBuffer.append(input);
        if (!onLeft) {
            stringBuffer.append(padding.toString());
        }
        return stringBuffer.toString();
    }
}

