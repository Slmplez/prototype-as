/*
 * Decompiled with CFR 0.152.
 */
package autosar40.genericstructure.generaltemplateclasses.primitivetypes;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;

public interface FloatContainer
extends ARObject {
    public Double getValue();

    public void setValue(Double var1);

    public void unsetValue();

    public boolean isSetValue();
}

