/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.implementation;

import autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.Xfile;
import autosar21.swcomponent.implementation.Dependency;

public interface DependencyOnFile
extends Dependency {
    public Xfile getXfile();

    public void setXfile(Xfile var1);
}

