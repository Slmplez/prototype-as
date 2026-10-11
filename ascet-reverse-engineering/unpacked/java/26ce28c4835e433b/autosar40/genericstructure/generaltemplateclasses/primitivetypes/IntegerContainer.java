/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 */
package autosar40.genericstructure.generaltemplateclasses.primitivetypes;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import org.artop.aal.common.datatypes.IntegerDatatype;

public interface IntegerContainer
extends ARObject {
    public Integer getValue();

    public void setValue(Integer var1);

    public void unsetValue();

    public boolean isSetValue();

    public IntegerDatatype getValueData();

    public void setValueData(IntegerDatatype var1);
}

