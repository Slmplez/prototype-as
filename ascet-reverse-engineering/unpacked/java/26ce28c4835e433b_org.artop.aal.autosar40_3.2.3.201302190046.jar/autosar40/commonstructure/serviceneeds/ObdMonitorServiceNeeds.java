/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 */
package autosar40.commonstructure.serviceneeds;

import autosar40.commonstructure.serviceneeds.DiagnosticCapabilityElement;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;

public interface ObdMonitorServiceNeeds
extends DiagnosticCapabilityElement {
    public Long getOnBoardMonitorId();

    public void setOnBoardMonitorId(Long var1);

    public void unsetOnBoardMonitorId();

    public boolean isSetOnBoardMonitorId();

    public Long getTestId();

    public void setTestId(Long var1);

    public void unsetTestId();

    public boolean isSetTestId();

    public Long getUnitAndScalingId();

    public void setUnitAndScalingId(Long var1);

    public void unsetUnitAndScalingId();

    public boolean isSetUnitAndScalingId();

    public PositiveIntegerDatatype getOnBoardMonitorIdData();

    public void setOnBoardMonitorIdData(PositiveIntegerDatatype var1);

    public PositiveIntegerDatatype getTestIdData();

    public void setTestIdData(PositiveIntegerDatatype var1);

    public PositiveIntegerDatatype getUnitAndScalingIdData();

    public void setUnitAndScalingIdData(PositiveIntegerDatatype var1);
}

