/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.commonstructure.implementation;

import autosar3x.commonstructure.implementation.DependencyOnFile;

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

