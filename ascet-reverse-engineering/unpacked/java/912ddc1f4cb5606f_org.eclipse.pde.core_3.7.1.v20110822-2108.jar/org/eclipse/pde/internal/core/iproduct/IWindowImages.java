/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.iproduct;

import org.eclipse.pde.internal.core.iproduct.IProductObject;

public interface IWindowImages
extends IProductObject {
    public static final String P_16 = "i16";
    public static final String P_32 = "i32";
    public static final String P_48 = "i48";
    public static final String P_64 = "i64";
    public static final String P_128 = "i128";
    public static final int TOTAL_IMAGES = 5;

    public String getImagePath(int var1);

    public void setImagePath(String var1, int var2);
}

