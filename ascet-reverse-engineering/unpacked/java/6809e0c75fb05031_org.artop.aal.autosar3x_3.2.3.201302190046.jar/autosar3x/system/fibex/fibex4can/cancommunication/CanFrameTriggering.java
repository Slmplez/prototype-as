/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.fibex.fibex4can.cancommunication;

import autosar3x.system.fibex.fibex4can.cancommunication.CanAddressingModeType;
import autosar3x.system.fibex.fibex4can.cancommunication.RxIdentifierRange;
import autosar3x.system.fibex.fibexcore.corecommunication.FrameTriggering;

public interface CanFrameTriggering
extends FrameTriggering {
    public CanAddressingModeType getCanAddressingMode();

    public void setCanAddressingMode(CanAddressingModeType var1);

    public void unsetCanAddressingMode();

    public boolean isSetCanAddressingMode();

    public Integer getIdentifier();

    public void setIdentifier(Integer var1);

    public void unsetIdentifier();

    public boolean isSetIdentifier();

    public RxIdentifierRange getRxIdentifierRange();

    public void setRxIdentifierRange(RxIdentifierRange var1);
}

