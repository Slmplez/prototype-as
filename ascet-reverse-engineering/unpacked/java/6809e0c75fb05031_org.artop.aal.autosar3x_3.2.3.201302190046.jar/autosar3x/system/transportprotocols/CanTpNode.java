/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.transportprotocols;

import autosar3x.system.transportprotocols.TpNode;

public interface CanTpNode
extends TpNode {
    public Integer getRxWftMax();

    public void setRxWftMax(Integer var1);

    public void unsetRxWftMax();

    public boolean isSetRxWftMax();

    public Double getTimeoutAr();

    public void setTimeoutAr(Double var1);

    public void unsetTimeoutAr();

    public boolean isSetTimeoutAr();
}

