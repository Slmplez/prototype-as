/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.iproduct;

import org.eclipse.pde.internal.core.iproduct.IProductObject;

public interface IConfigurationFileInfo
extends IProductObject {
    public static final String P_USE = "use";
    public static final String P_PATH = "path";
    public static final String P_OS = "os";

    public void setUse(String var1, String var2);

    public String getUse(String var1);

    public void setPath(String var1, String var2);

    public String getPath(String var1);
}

