/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.genericstructure.commonpatterns.primitivetypes;

import autosar3x.genericstructure.infrastructure.ARObject;

public interface FloatContainer
extends ARObject {
    public Double getValue();

    public void setValue(Double var1);

    public void unsetValue();

    public boolean isSetValue();
}

