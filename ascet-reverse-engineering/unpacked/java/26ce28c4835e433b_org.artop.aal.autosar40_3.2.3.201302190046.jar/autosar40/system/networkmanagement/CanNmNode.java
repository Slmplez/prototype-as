/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.networkmanagement;

import autosar40.system.networkmanagement.CanNmRangeConfig;
import autosar40.system.networkmanagement.NmNode;

public interface CanNmNode
extends NmNode {
    public Double getNmMsgCycleOffset();

    public void setNmMsgCycleOffset(Double var1);

    public void unsetNmMsgCycleOffset();

    public boolean isSetNmMsgCycleOffset();

    public Double getNmMsgReducedTime();

    public void setNmMsgReducedTime(Double var1);

    public void unsetNmMsgReducedTime();

    public boolean isSetNmMsgReducedTime();

    public CanNmRangeConfig getNmRangeConfig();

    public void setNmRangeConfig(CanNmRangeConfig var1);
}

