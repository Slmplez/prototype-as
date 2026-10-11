/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system.signalpaths;

import autosar40.system.fibex.fibexcore.coretopology.PhysicalChannel;
import autosar40.system.signalpaths.SignalPathConstraint;
import autosar40.system.signalpaths.SwcToSwcOperationArguments;
import autosar40.system.signalpaths.SwcToSwcSignal;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface PermissibleSignalPath
extends SignalPathConstraint {
    public EList<SwcToSwcOperationArguments> getOperations();

    public EList<PhysicalChannel> getPhysicalChannels();

    public EList<SwcToSwcSignal> getSignals();
}

