/*
 * Decompiled with CFR 0.152.
 */
package autosar21.genericstructure.commonpatterns.primitivetypes;

import autosar21.genericstructure.infrastructure.ARObject;

public interface StringContainer
extends ARObject {
    public String getValue();

    public void setValue(String var1);

    public void unsetValue();

    public boolean isSetValue();
}

