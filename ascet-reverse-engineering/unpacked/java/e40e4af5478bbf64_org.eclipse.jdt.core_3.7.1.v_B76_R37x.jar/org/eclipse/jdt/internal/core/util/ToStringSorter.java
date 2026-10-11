/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.util;

public class ToStringSorter {
    Object[] sortedObjects;
    String[] sortedStrings;

    public boolean compare(String stringOne, String stringTwo) {
        return stringOne.compareTo(stringTwo) < 0;
    }

    private void quickSort(int left, int right) {
        int originalLeft = left;
        int originalRight = right;
        int midIndex = left + (right - left) / 2;
        String midToString = this.sortedStrings[midIndex];
        while (true) {
            if (this.compare(this.sortedStrings[left], midToString)) {
                ++left;
                continue;
            }
            while (this.compare(midToString, this.sortedStrings[right])) {
                --right;
            }
            if (left <= right) {
                Object tmp = this.sortedObjects[left];
                this.sortedObjects[left] = this.sortedObjects[right];
                this.sortedObjects[right] = tmp;
                String tmpToString = this.sortedStrings[left];
                this.sortedStrings[left] = this.sortedStrings[right];
                this.sortedStrings[right] = tmpToString;
                ++left;
                --right;
            }
            if (left > right) break;
        }
        if (originalLeft < right) {
            this.quickSort(originalLeft, right);
        }
        if (left < originalRight) {
            this.quickSort(left, originalRight);
        }
    }

    public void sort(Object[] unSortedObjects, String[] unsortedStrings) {
        int size = unSortedObjects.length;
        this.sortedObjects = new Object[size];
        this.sortedStrings = new String[size];
        System.arraycopy(unSortedObjects, 0, this.sortedObjects, 0, size);
        System.arraycopy(unsortedStrings, 0, this.sortedStrings, 0, size);
        if (size > 1) {
            this.quickSort(0, size - 1);
        }
    }
}

