/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.system.signalpaths;

import autosar3x.system.signalpaths.SignalPathConstraint;
import autosar3x.system.signalpaths.SwcToSwcOperationArguments;
import autosar3x.system.signalpaths.SwcToSwcSignal;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface CommonSignalPath
extends SignalPathConstraint {
    public EList<SwcToSwcOperationArguments> getOperations();

    public EList<SwcToSwcSignal> getSignals();
}

