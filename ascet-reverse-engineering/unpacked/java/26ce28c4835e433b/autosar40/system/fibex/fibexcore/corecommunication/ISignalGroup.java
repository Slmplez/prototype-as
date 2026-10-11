/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system.fibex.fibexcore.corecommunication;

import autosar40.system.fibex.fibexcore.FibexElement;
import autosar40.system.fibex.fibexcore.corecommunication.ISignal;
import autosar40.system.fibex.fibexcore.corecommunication.SystemSignalGroup;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ISignalGroup
extends FibexElement {
    public EList<ISignal> getISignals();

    public SystemSignalGroup getSystemSignalGroup();

    public void setSystemSignalGroup(SystemSignalGroup var1);
}

