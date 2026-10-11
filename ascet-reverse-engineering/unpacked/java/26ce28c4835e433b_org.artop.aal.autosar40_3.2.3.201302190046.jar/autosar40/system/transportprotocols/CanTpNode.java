/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 */
package autosar40.system.transportprotocols;

import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationConnector;
import autosar40.system.transportprotocols.CanTpAddress;
import autosar40.system.transportprotocols.CanTpConfig;
import org.artop.aal.common.datatypes.IntegerDatatype;

public interface CanTpNode
extends Identifiable {
    public CanTpConfig getCanTpConfig();

    public void setCanTpConfig(CanTpConfig var1);

    public CommunicationConnector getConnector();

    public void setConnector(CommunicationConnector var1);

    public Integer getMaxFcWait();

    public void setMaxFcWait(Integer var1);

    public void unsetMaxFcWait();

    public boolean isSetMaxFcWait();

    public Double getStMin();

    public void setStMin(Double var1);

    public void unsetStMin();

    public boolean isSetStMin();

    public Double getTimeoutAr();

    public void setTimeoutAr(Double var1);

    public void unsetTimeoutAr();

    public boolean isSetTimeoutAr();

    public Double getTimeoutAs();

    public void setTimeoutAs(Double var1);

    public void unsetTimeoutAs();

    public boolean isSetTimeoutAs();

    public CanTpAddress getTpAddress();

    public void setTpAddress(CanTpAddress var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);

    public IntegerDatatype getMaxFcWaitData();

    public void setMaxFcWaitData(IntegerDatatype var1);
}

