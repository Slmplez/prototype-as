/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd620.core.ComponentMain;

import com.etas.amd620.core.ComponentMain.LocalsComplexType;
import com.etas.amd620.core.ComponentMain.MethodBaseT;

public interface RunnableT
extends MethodBaseT {
    public LocalsComplexType getLocals();

    public void setLocals(LocalsComplexType var1);

    public boolean isCanBeInvokedConcurrently();

    public void setCanBeInvokedConcurrently(boolean var1);

    public void unsetCanBeInvokedConcurrently();

    public boolean isSetCanBeInvokedConcurrently();

    public double getMinimumStartTime();

    public void setMinimumStartTime(double var1);

    public void unsetMinimumStartTime();

    public boolean isSetMinimumStartTime();
}

