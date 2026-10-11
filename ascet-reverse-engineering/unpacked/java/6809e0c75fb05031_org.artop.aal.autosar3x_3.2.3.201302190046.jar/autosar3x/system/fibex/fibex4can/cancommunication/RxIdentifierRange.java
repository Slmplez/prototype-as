/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.fibex.fibex4can.cancommunication;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.system.fibex.fibex4can.cancommunication.CanFrameTriggering;

public interface RxIdentifierRange
extends ARObject {
    public CanFrameTriggering getCanFrameTriggering();

    public void setCanFrameTriggering(CanFrameTriggering var1);

    public Integer getLowerCanId();

    public void setLowerCanId(Integer var1);

    public void unsetLowerCanId();

    public boolean isSetLowerCanId();

    public Integer getUpperCanId();

    public void setUpperCanId(Integer var1);

    public void unsetUpperCanId();

    public boolean isSetUpperCanId();
}

