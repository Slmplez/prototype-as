/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.system.transportprotocols;

import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.system.fibex.fibex4flexray.flexraytopology.FlexrayPhysicalChannel;
import autosar3x.system.fibex.fibexcore.corecommunication.NPdu;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface FlexrayIsoTpPduPool
extends Identifiable {
    public FlexrayPhysicalChannel getFlexrayPhysicalChannel();

    public void setFlexrayPhysicalChannel(FlexrayPhysicalChannel var1);

    public EList<NPdu> getNPdus();
}

