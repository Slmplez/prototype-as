/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.custom;

class SashFormData {
    long weight;

    SashFormData() {
    }

    String getName() {
        String string = this.getClass().getName();
        int index = string.lastIndexOf(46);
        if (index == -1) {
            return string;
        }
        return string.substring(index + 1, string.length());
    }

    public String toString() {
        return String.valueOf(this.getName()) + " {weight=" + this.weight + "}";
    }
}

