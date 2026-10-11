/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system.fibex.fibexcore.coretopology;

import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibexcore.corecommunication.FrameTriggering;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalTriggering;
import autosar40.system.fibex.fibexcore.corecommunication.PduTriggering;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationClusterContent;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationConnectorRefConditional;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface PhysicalChannel
extends Identifiable {
    public CommunicationClusterContent getCommunicationClusterContent();

    public void setCommunicationClusterContent(CommunicationClusterContent var1);

    public EList<CommunicationConnectorRefConditional> getCommConnectors();

    public EList<FrameTriggering> getFrameTriggerings();

    public EList<ISignalTriggering> getISignalTriggerings();

    public EList<PduTriggering> getPduTriggerings();

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

