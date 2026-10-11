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
import autosar40.system.transportprotocols.LinTpConfig;
import autosar40.system.transportprotocols.TpAddress;
import org.artop.aal.common.datatypes.IntegerDatatype;

public interface LinTpNode
extends Identifiable {
    public LinTpConfig getLinTpConfig();

    public void setLinTpConfig(LinTpConfig var1);

    public CommunicationConnector getConnector();

    public void setConnector(CommunicationConnector var1);

    public Integer getMaxNumberOfRespPendingFrames();

    public void setMaxNumberOfRespPendingFrames(Integer var1);

    public void unsetMaxNumberOfRespPendingFrames();

    public boolean isSetMaxNumberOfRespPendingFrames();

    public Double getP2Max();

    public void setP2Max(Double var1);

    public void unsetP2Max();

    public boolean isSetP2Max();

    public Double getP2Timing();

    public void setP2Timing(Double var1);

    public void unsetP2Timing();

    public boolean isSetP2Timing();

    public TpAddress getTpAddress();

    public void setTpAddress(TpAddress var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);

    public IntegerDatatype getMaxNumberOfRespPendingFramesData();

    public void setMaxNumberOfRespPendingFramesData(IntegerDatatype var1);
}

