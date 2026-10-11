/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.PortT;
import com.etas.amd620.core.ComponentSpecification.SequenceCallT;

public interface SequencedPortT
extends PortT {
    public SequenceCallT getSequenceCall();

    public void setSequenceCall(SequenceCallT var1);
}

