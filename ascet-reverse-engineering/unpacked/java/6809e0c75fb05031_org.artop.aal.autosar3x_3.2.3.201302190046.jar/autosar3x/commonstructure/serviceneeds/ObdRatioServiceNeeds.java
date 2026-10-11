/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.commonstructure.serviceneeds;

import autosar3x.commonstructure.serviceneeds.DiagnosticEventNeeds;
import autosar3x.commonstructure.serviceneeds.FunctionInhibitionNeeds;
import autosar3x.commonstructure.serviceneeds.ObdRatioConnectionKind;
import autosar3x.commonstructure.serviceneeds.ServiceNeeds;

public interface ObdRatioServiceNeeds
extends ServiceNeeds {
    public ObdRatioConnectionKind getConnectionType();

    public void setConnectionType(ObdRatioConnectionKind var1);

    public void unsetConnectionType();

    public boolean isSetConnectionType();

    public String getIumprGroup();

    public void setIumprGroup(String var1);

    public void unsetIumprGroup();

    public boolean isSetIumprGroup();

    public DiagnosticEventNeeds getRateBasedMonitoredEvent();

    public void setRateBasedMonitoredEvent(DiagnosticEventNeeds var1);

    public FunctionInhibitionNeeds getUsedFid();

    public void setUsedFid(FunctionInhibitionNeeds var1);
}

