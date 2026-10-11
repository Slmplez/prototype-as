/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.system.fibex.fibex4can.cantopology;

import autosar3x.system.fibex.fibex4can.cantopology.AbstractCanCommunicationControllerAttributes;
import autosar3x.system.fibex.fibexcore.coretopology.CommunicationController;

public interface CanCommunicationController
extends CommunicationController {
    public AbstractCanCommunicationControllerAttributes getCanControllerAttributes();

    public void setCanControllerAttributes(AbstractCanCommunicationControllerAttributes var1);

    public Double getNmMsgCycleOffset();

    public void setNmMsgCycleOffset(Double var1);

    public void unsetNmMsgCycleOffset();

    public boolean isSetNmMsgCycleOffset();

    public Double getNmMsgReducedTime();

    public void setNmMsgReducedTime(Double var1);

    public void unsetNmMsgReducedTime();

    public boolean isSetNmMsgReducedTime();

    public Boolean getNmUserDataEnabled();

    public void setNmUserDataEnabled(Boolean var1);

    public void unsetNmUserDataEnabled();

    public boolean isSetNmUserDataEnabled();
}

