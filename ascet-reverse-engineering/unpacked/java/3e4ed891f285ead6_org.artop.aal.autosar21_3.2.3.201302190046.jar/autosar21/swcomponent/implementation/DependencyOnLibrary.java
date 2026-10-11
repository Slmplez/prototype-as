/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.implementation;

import autosar21.swcomponent.implementation.DependencyOnFile;

public interface DependencyOnLibrary
extends DependencyOnFile {
    public String getMaxVersion();

    public void setMaxVersion(String var1);

    public void unsetMaxVersion();

    public boolean isSetMaxVersion();

    public String getMinVersion();

    public void setMinVersion(String var1);

    public void unsetMinVersion();

    public boolean isSetMinVersion();
}

