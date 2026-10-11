/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd620.core.ComponentMain;

import com.etas.amd620.core.ComponentMain.ItemT;
import com.etas.amd620.core.ComponentMain.MethodSignaturesType;

public interface MethodInterfaceT
extends ItemT {
    public MethodSignaturesType getMethodSignatures();

    public void setMethodSignatures(MethodSignaturesType var1);

    public double getChecksumGeneral();

    public void setChecksumGeneral(double var1);

    public void unsetChecksumGeneral();

    public boolean isSetChecksumGeneral();

    public double getChecksumPublicInterface();

    public void setChecksumPublicInterface(double var1);

    public void unsetChecksumPublicInterface();

    public boolean isSetChecksumPublicInterface();
}

