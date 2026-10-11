/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.commonstructure.serviceprocesstask;

import autosar3x.commonstructure.serviceprocesstask.SwService;
import autosar3x.commonstructure.serviceprocesstask.SwServiceImplPolicyEnum;
import autosar3x.commonstructure.serviceprocesstask.SwServiceReentranceEnum;
import autosar3x.genericstructure.infrastructure.ARObject;

public interface SwServiceProps
extends ARObject {
    public SwService getSwService();

    public void setSwService(SwService var1);

    public SwServiceReentranceEnum getSwServiceReentrance();

    public void setSwServiceReentrance(SwServiceReentranceEnum var1);

    public void unsetSwServiceReentrance();

    public boolean isSetSwServiceReentrance();

    public SwServiceImplPolicyEnum getSwImplPolicy();

    public void setSwImplPolicy(SwServiceImplPolicyEnum var1);

    public void unsetSwImplPolicy();

    public boolean isSetSwImplPolicy();
}

