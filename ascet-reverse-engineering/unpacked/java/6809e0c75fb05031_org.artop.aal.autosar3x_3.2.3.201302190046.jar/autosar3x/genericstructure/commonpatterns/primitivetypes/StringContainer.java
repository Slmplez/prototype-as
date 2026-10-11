/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.genericstructure.commonpatterns.primitivetypes;

import autosar3x.genericstructure.infrastructure.ARObject;

public interface StringContainer
extends ARObject {
    public String getValue();

    public void setValue(String var1);

    public void unsetValue();

    public boolean isSetValue();
}

