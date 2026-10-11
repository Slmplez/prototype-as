/*
 * Decompiled with CFR 0.152.
 */
package autosar40.genericstructure.generaltemplateclasses.primitivetypes;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;

public interface BooleanContainer
extends ARObject {
    public Boolean getValue();

    public void setValue(Boolean var1);

    public void unsetValue();

    public boolean isSetValue();
}

