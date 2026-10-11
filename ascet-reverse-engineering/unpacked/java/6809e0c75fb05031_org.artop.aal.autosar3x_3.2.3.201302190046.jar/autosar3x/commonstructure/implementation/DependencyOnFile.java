/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.commonstructure.implementation;

import autosar3x.commonstructure.implementation.Dependency;
import autosar3x.commonstructure.implementation.XfileSo;

public interface DependencyOnFile
extends Dependency {
    public XfileSo getXfile();

    public void setXfile(XfileSo var1);
}

