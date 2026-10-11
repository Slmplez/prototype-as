/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 */
package autosar40.system.networkmanagement;

import autosar40.system.networkmanagement.NmNode;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;

public interface FlexrayNmNode
extends NmNode {
    public Long getNmInstanceId();

    public void setNmInstanceId(Long var1);

    public void unsetNmInstanceId();

    public boolean isSetNmInstanceId();

    public PositiveIntegerDatatype getNmInstanceIdData();

    public void setNmInstanceIdData(PositiveIntegerDatatype var1);
}

