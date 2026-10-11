/*
 * Decompiled with CFR 0.152.
 */
package autosar40.genericstructure.generaltemplateclasses.primitivetypes;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;

public interface StringContainer
extends ARObject {
    public String getValue();

    public void setValue(String var1);

    public void unsetValue();

    public boolean isSetValue();
}

