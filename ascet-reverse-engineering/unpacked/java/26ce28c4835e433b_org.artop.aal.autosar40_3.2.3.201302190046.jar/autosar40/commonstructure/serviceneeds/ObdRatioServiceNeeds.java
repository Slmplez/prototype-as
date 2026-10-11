/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.commonstructure.serviceneeds;

import autosar40.commonstructure.serviceneeds.DiagnosticCapabilityElement;
import autosar40.commonstructure.serviceneeds.DiagnosticEventNeeds;
import autosar40.commonstructure.serviceneeds.FunctionInhibitionNeeds;
import autosar40.commonstructure.serviceneeds.ObdRatioConnectionKindEnum;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ObdRatioServiceNeeds
extends DiagnosticCapabilityElement {
    public ObdRatioConnectionKindEnum getConnectionType();

    public void setConnectionType(ObdRatioConnectionKindEnum var1);

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

    public EList<FunctionInhibitionNeeds> getUsedSecondaryFids();
}

