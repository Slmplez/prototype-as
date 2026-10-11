/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.win32;

public class LRESULT {
    public int value;
    public static final LRESULT ONE = new LRESULT(1);
    public static final LRESULT ZERO = new LRESULT(0);

    public LRESULT(int value) {
        this.value = value;
    }
}

