/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 */
package autosar40.system.networkmanagement;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.system.networkmanagement.CanNmNode;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;

public interface CanNmRangeConfig
extends ARObject {
    public CanNmNode getCanNmNode();

    public void setCanNmNode(CanNmNode var1);

    public Long getLowerCanId();

    public void setLowerCanId(Long var1);

    public void unsetLowerCanId();

    public boolean isSetLowerCanId();

    public Long getUpperCanId();

    public void setUpperCanId(Long var1);

    public void unsetUpperCanId();

    public boolean isSetUpperCanId();

    public PositiveIntegerDatatype getLowerCanIdData();

    public void setLowerCanIdData(PositiveIntegerDatatype var1);

    public PositiveIntegerDatatype getUpperCanIdData();

    public void setUpperCanIdData(PositiveIntegerDatatype var1);
}

