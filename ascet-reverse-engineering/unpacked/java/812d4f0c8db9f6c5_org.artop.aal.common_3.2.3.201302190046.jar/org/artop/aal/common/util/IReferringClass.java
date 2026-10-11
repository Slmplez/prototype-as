/*
 * Decompiled with CFR 0.152.
 */
package org.artop.aal.common.util;

public interface IReferringClass {
    public static final int NO_INDEX = -1;

    public void eSetReferringDest(int var1, String var2);

    public void eSetReferringDest(int var1, int var2, String var3);

    public String eGetReferringDest(int var1);

    public String eGetReferringDest(int var1, int var2);
}

