/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd620.core.ComponentMain;

import com.etas.amd620.core.ComponentMain.ArgumentsComplexType;
import com.etas.amd620.core.ComponentMain.MethodBaseT;
import com.etas.amd620.core.ComponentMain.ReturnT;

public interface MethodSignatureT
extends MethodBaseT {
    public ArgumentsComplexType getArguments();

    public void setArguments(ArgumentsComplexType var1);

    public ReturnT getReturn();

    public void setReturn(ReturnT var1);
}

