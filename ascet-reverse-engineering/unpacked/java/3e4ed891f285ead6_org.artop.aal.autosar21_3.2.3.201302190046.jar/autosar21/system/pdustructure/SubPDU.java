/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.system.pdustructure;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.system.communication.Timing;
import autosar21.system.pdustructure.SignalPosition;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SubPDU
extends ARObject {
    public EList<Timing> getDynamicSubPDUTimings();

    public EList<SignalPosition> getIncludedSignals();

    public Integer getSelectorFieldCode();

    public void setSelectorFieldCode(Integer var1);

    public void unsetSelectorFieldCode();

    public boolean isSetSelectorFieldCode();

    public Integer getStartPosition();

    public void setStartPosition(Integer var1);

    public void unsetStartPosition();

    public boolean isSetStartPosition();

    public Integer getSubPDUSize();

    public void setSubPDUSize(Integer var1);

    public void unsetSubPDUSize();

    public boolean isSetSubPDUSize();
}

