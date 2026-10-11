/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.commonstructure.serviceprocesstask;

import autosar3x.commonstructure.serviceprocesstask.SwService;
import autosar3x.genericstructure.infrastructure.ARObject;

public interface SwServiceAccessedElementSet
extends ARObject {
    public SwService getSwService();

    public void setSwService(SwService var1);
}

