/*
 * Decompiled with CFR 0.152.
 */
package autosar40.bswmodule.bswbehavior;

import autosar40.bswmodule.bswbehavior.BswModeSenderPolicy;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;

public interface BswModeSwitchAckRequest
extends ARObject {
    public BswModeSenderPolicy getBswModeSenderPolicy();

    public void setBswModeSenderPolicy(BswModeSenderPolicy var1);

    public Double getTimeout();

    public void setTimeout(Double var1);

    public void unsetTimeout();

    public boolean isSetTimeout();
}

