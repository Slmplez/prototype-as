/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.system.signalpaths;

import autosar21.system.signalpaths.SignalPathConstraint;
import autosar21.system.signalpaths.SwcToSwcOperationArguments;
import autosar21.system.signalpaths.SwcToSwcSignal;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SeparateSignalPath
extends SignalPathConstraint {
    public EList<SwcToSwcOperationArguments> getOperations();

    public EList<SwcToSwcSignal> getSignals();
}

