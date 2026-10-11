/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system.fibex.fibex4lin.lincommunication;

import autosar40.system.fibex.fibex4lin.lincommunication.FramePid;
import autosar40.system.fibex.fibex4lin.lincommunication.LinConfigurationEntry;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface AssignFrameIdRange
extends LinConfigurationEntry {
    public EList<FramePid> getFramePids();

    public Integer getStartIndex();

    public void setStartIndex(Integer var1);

    public void unsetStartIndex();

    public boolean isSetStartIndex();

    public IntegerDatatype getStartIndexData();

    public void setStartIndexData(IntegerDatatype var1);
}

