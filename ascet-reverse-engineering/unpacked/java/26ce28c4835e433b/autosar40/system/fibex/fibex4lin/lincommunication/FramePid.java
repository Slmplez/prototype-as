/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 */
package autosar40.system.fibex.fibex4lin.lincommunication;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.system.fibex.fibex4lin.lincommunication.AssignFrameIdRange;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;

public interface FramePid
extends ARObject {
    public AssignFrameIdRange getAssignFrameIdRange();

    public void setAssignFrameIdRange(AssignFrameIdRange var1);

    public Integer getIndex();

    public void setIndex(Integer var1);

    public void unsetIndex();

    public boolean isSetIndex();

    public Long getPid();

    public void setPid(Long var1);

    public void unsetPid();

    public boolean isSetPid();

    public IntegerDatatype getIndexData();

    public void setIndexData(IntegerDatatype var1);

    public PositiveIntegerDatatype getPidData();

    public void setPidData(PositiveIntegerDatatype var1);
}

