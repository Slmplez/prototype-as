/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.iproduct;

import org.eclipse.pde.internal.core.iproduct.IProductObject;

public interface IPluginConfiguration
extends IProductObject {
    public static final String P_AUTO_START = "autoStart";
    public static final String P_START_LEVEL = "startLevel";

    public String getId();

    public void setId(String var1);

    public void setAutoStart(boolean var1);

    public boolean isAutoStart();

    public void setStartLevel(int var1);

    public int getStartLevel();
}

