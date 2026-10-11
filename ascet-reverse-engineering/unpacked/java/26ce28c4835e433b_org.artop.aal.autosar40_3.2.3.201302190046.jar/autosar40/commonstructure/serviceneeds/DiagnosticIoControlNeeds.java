/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 */
package autosar40.commonstructure.serviceneeds;

import autosar40.commonstructure.serviceneeds.DiagnosticCapabilityElement;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;

public interface DiagnosticIoControlNeeds
extends DiagnosticCapabilityElement {
    public Long getDidNumber();

    public void setDidNumber(Long var1);

    public void unsetDidNumber();

    public boolean isSetDidNumber();

    public Boolean getFreezeCurrentStateSupported();

    public void setFreezeCurrentStateSupported(Boolean var1);

    public void unsetFreezeCurrentStateSupported();

    public boolean isSetFreezeCurrentStateSupported();

    public Boolean getShortTermAdjustmentSupported();

    public void setShortTermAdjustmentSupported(Boolean var1);

    public void unsetShortTermAdjustmentSupported();

    public boolean isSetShortTermAdjustmentSupported();

    public PositiveIntegerDatatype getDidNumberData();

    public void setDidNumberData(PositiveIntegerDatatype var1);
}

