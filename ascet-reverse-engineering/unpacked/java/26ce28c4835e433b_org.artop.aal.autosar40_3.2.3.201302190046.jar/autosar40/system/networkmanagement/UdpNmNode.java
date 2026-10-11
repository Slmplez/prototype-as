/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.networkmanagement;

import autosar40.system.networkmanagement.NmNode;

public interface UdpNmNode
extends NmNode {
    public Double getNmMsgCycleOffset();

    public void setNmMsgCycleOffset(Double var1);

    public void unsetNmMsgCycleOffset();

    public boolean isSetNmMsgCycleOffset();
}

