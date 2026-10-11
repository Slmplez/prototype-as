/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.genericstructure.commonpatterns.primitivetypes;

import autosar3x.genericstructure.infrastructure.ARObject;

public interface IntegerContainer
extends ARObject {
    public Integer getValue();

    public void setValue(Integer var1);

    public void unsetValue();

    public boolean isSetValue();
}

