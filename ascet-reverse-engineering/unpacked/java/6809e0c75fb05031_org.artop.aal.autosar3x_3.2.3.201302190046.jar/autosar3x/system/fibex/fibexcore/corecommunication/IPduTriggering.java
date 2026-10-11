/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.system.fibex.fibexcore.corecommunication;

import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.system.fibex.fibexcore.corecommunication.IPduPort;
import autosar3x.system.fibex.fibexcore.corecommunication.IPduTiming;
import autosar3x.system.fibex.fibexcore.corecommunication.ISignalTriggering;
import autosar3x.system.fibex.fibexcore.corecommunication.Pdu;
import autosar3x.system.fibex.fibexcore.coretopology.PhysicalChannel;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IPduTriggering
extends Identifiable {
    public PhysicalChannel getPhysicalChannel();

    public void setPhysicalChannel(PhysicalChannel var1);

    public EList<IPduPort> getIPduPorts();

    public Pdu getIPdu();

    public void setIPdu(Pdu var1);

    public EList<ISignalTriggering> getISignalTriggerings();

    public IPduTiming getTimingRequirement();

    public void setTimingRequirement(IPduTiming var1);
}

