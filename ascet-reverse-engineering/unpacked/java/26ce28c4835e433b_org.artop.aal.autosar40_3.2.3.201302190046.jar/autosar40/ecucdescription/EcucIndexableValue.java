/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 */
package autosar40.ecucdescription;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;

public interface EcucIndexableValue
extends ARObject {
    public Long getIndex();

    public void setIndex(Long var1);

    public void unsetIndex();

    public boolean isSetIndex();

    public PositiveIntegerDatatype getIndexData();

    public void setIndexData(PositiveIntegerDatatype var1);
}

