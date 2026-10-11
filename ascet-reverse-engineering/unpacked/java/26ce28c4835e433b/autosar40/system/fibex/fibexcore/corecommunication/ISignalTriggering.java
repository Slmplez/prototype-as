/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system.fibex.fibexcore.corecommunication;

import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibexcore.corecommunication.ISignal;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalGroup;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalPort;
import autosar40.system.fibex.fibexcore.coretopology.PhysicalChannel;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ISignalTriggering
extends Identifiable {
    public PhysicalChannel getPhysicalChannel();

    public void setPhysicalChannel(PhysicalChannel var1);

    public ISignalGroup getISignalGroup();

    public void setISignalGroup(ISignalGroup var1);

    public EList<ISignalPort> getISignalPorts();

    public ISignal getISignal();

    public void setISignal(ISignal var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

