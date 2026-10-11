/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd620.core.ComponentMain;

import com.etas.amd620.core.ComponentMain.ArgumentsType;
import com.etas.amd620.core.ComponentMain.LocalsComplexType;
import com.etas.amd620.core.ComponentMain.RealizedMethodBaseT;
import com.etas.amd620.core.ComponentMain.RealizedReturnT;

public interface RealizedMethodT
extends RealizedMethodBaseT {
    public ArgumentsType getArguments();

    public void setArguments(ArgumentsType var1);

    public RealizedReturnT getReturn();

    public void setReturn(RealizedReturnT var1);

    public LocalsComplexType getLocals();

    public void setLocals(LocalsComplexType var1);
}

