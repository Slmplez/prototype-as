/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd620.core.ComponentMain;

import com.etas.amd620.core.ComponentMain.RealizedMethodT;

public interface RealizedRunnableT
extends RealizedMethodT {
    public boolean isCanBeInvokedConcurrently();

    public void setCanBeInvokedConcurrently(boolean var1);

    public void unsetCanBeInvokedConcurrently();

    public boolean isSetCanBeInvokedConcurrently();

    public double getMinimumStartTime();

    public void setMinimumStartTime(double var1);

    public void unsetMinimumStartTime();

    public boolean isSetMinimumStartTime();
}

