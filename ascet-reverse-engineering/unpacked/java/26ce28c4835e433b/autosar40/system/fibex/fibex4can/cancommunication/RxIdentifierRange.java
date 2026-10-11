/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 */
package autosar40.system.fibex.fibex4can.cancommunication;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.system.fibex.fibex4can.cancommunication.CanFrameTriggering;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;

public interface RxIdentifierRange
extends ARObject {
    public CanFrameTriggering getCanFrameTriggering();

    public void setCanFrameTriggering(CanFrameTriggering var1);

    public Long getLowerCanId();

    public void setLowerCanId(Long var1);

    public void unsetLowerCanId();

    public boolean isSetLowerCanId();

    public Long getUpperCanId();

    public void setUpperCanId(Long var1);

    public void unsetUpperCanId();

    public boolean isSetUpperCanId();

    public PositiveIntegerDatatype getLowerCanIdData();

    public void setLowerCanIdData(PositiveIntegerDatatype var1);

    public PositiveIntegerDatatype getUpperCanIdData();

    public void setUpperCanIdData(PositiveIntegerDatatype var1);
}

