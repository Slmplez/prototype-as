/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system.transportprotocols;

import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayCommunicationConnector;
import autosar40.system.transportprotocols.FlexrayArTpConfig;
import autosar40.system.transportprotocols.TpAddress;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface FlexrayArTpNode
extends Identifiable {
    public FlexrayArTpConfig getFlexrayArTpConfig();

    public void setFlexrayArTpConfig(FlexrayArTpConfig var1);

    public EList<FlexrayCommunicationConnector> getConnectors();

    public TpAddress getTpAddress();

    public void setTpAddress(TpAddress var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

