/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.genericstructure.commonpatterns.primitivetypes;

import autosar3x.genericstructure.infrastructure.ARObject;

public interface BooleanContainer
extends ARObject {
    public Boolean getValue();

    public void setValue(Boolean var1);

    public void unsetValue();

    public boolean isSetValue();
}

