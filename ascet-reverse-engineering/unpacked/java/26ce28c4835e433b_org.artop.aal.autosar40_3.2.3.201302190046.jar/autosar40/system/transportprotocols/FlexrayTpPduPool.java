/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system.transportprotocols;

import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibexcore.corecommunication.NPdu;
import autosar40.system.transportprotocols.FlexrayTpConfig;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface FlexrayTpPduPool
extends Identifiable {
    public FlexrayTpConfig getFlexrayTpConfig();

    public void setFlexrayTpConfig(FlexrayTpConfig var1);

    public EList<NPdu> getNPdus();

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

