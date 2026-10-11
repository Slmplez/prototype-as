/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.GetSetPortBaseT;
import com.etas.amd620.core.ComponentSpecification.SequenceCallT;

public interface MemberSetPortT
extends GetSetPortBaseT {
    public SequenceCallT getSequenceCall();

    public void setSequenceCall(SequenceCallT var1);
}

