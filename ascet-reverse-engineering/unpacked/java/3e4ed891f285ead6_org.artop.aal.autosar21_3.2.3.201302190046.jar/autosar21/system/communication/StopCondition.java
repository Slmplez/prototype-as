/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.system.communication;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.system.communication.CyclicTiming;
import autosar21.system.communication.SignalTrigger;
import autosar21.system.communication.SystemStateTrigger;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface StopCondition
extends ARObject {
    public CyclicTiming getCyclicTiming();

    public void setCyclicTiming(CyclicTiming var1);

    public EList<SignalTrigger> getSignalStates();

    public EList<SystemStateTrigger> getSystemStates();
}

