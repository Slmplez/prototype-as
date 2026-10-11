/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.system.systemsignal;

import autosar21.genericstructure.infrastructure.identifiable.ARElement;
import autosar21.system.communication.Timing;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SystemSignal
extends ARElement {
    public Boolean getNeedsUpdateIndication();

    public void setNeedsUpdateIndication(Boolean var1);

    public void unsetNeedsUpdateIndication();

    public boolean isSetNeedsUpdateIndication();

    public Integer getSignalLength();

    public void setSignalLength(Integer var1);

    public void unsetSignalLength();

    public boolean isSetSignalLength();

    public EList<Timing> getSignalTimingRequirements();
}

