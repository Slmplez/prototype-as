/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.system.systemsignal;

import autosar21.genericstructure.infrastructure.identifiable.ARElement;
import autosar21.system.systemsignal.SystemSignal;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SystemSignalGroup
extends ARElement {
    public EList<SystemSignal> getContainedSignals();
}

