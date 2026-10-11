/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.system.fibex.fibexcore.corecommunication;

import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.system.fibex.fibexcore.corecommunication.ISignal;
import autosar3x.system.fibex.fibexcore.corecommunication.SignalPort;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.CyclicTiming;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.EventControlledTiming;
import autosar3x.system.fibex.fibexcore.coretopology.PhysicalChannel;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ISignalTriggering
extends Identifiable {
    public PhysicalChannel getPhysicalChannel();

    public void setPhysicalChannel(PhysicalChannel var1);

    public CyclicTiming getCyclicTiming();

    public void setCyclicTiming(CyclicTiming var1);

    public EventControlledTiming getEventControlledTiming();

    public void setEventControlledTiming(EventControlledTiming var1);

    public EList<SignalPort> getISignalPorts();

    public ISignal getSignal();

    public void setSignal(ISignal var1);
}

