/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.TransitionT;
import java.math.BigInteger;

public interface TransitionType
extends TransitionT {
    public BigInteger getPriority();

    public void setPriority(BigInteger var1);

    public String getTriggerName();

    public void setTriggerName(String var1);

    public String getTriggerOID();

    public void setTriggerOID(String var1);
}

